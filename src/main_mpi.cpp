#include "estadisticas.h"
#include "opciones.h"
#include "simulacion.h"

#include <mpi.h>

#include <algorithm>
#include <climits>
#include <cstdint>
#include <exception>
#include <iomanip>
#include <iostream>
#include <stdexcept>
#include <string>
#include <type_traits>
#include <vector>

using namespace std;

int main(int argc, char** argv) {
    Options options;
    string synchronization = "allgather";
    try {
        vector<char*> common_arguments{argv[0]};
        for (int i = 1; i < argc; ++i) {
            if (string(argv[i]) == "--mpi-sync") {
                if (++i == argc) throw invalid_argument("Falta valor para --mpi-sync");
                synchronization = argv[i];
            } else {
                common_arguments.push_back(argv[i]);
            }
        }
        if (synchronization != "allgather" && synchronization != "gather-bcast") {
            throw invalid_argument("--mpi-sync admite allgather o gather-bcast");
        }
        options = parse_options(common_arguments.size(), common_arguments.data());
        if (options.visual) {
            throw invalid_argument("La versión MPI admite solo --measure");
        }
        if (options.rows * options.cols > static_cast<size_t>(INT_MAX) / sizeof(Cell)) {
            throw invalid_argument("La cuadrícula supera el límite de MPI_Allgatherv");
        }
    } catch (const exception& error) {
        cerr << "Error: " << error.what() << '\n';
        return 1;
    }

    MPI_Init(&argc, &argv);
    int rank = 0;
    int processes = 0;
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &processes);

    try {
        static_assert(is_trivially_copyable<Cell>::value, "Cell debe poder copiarse como bytes");
        const size_t total_cells = options.rows * options.cols;
        const int total_bytes = static_cast<int>(total_cells * sizeof(Cell));
        const auto first_row = [&](int process) {
            return (options.rows / processes) * process +
                   min(static_cast<size_t>(process), options.rows % processes);
        };
        const size_t first = first_row(rank);
        const size_t last = first_row(rank + 1);

        vector<int> counts(processes), displacements(processes);
        for (int process = 0; process < processes; ++process) {
            counts[process] = static_cast<int>((first_row(process + 1) - first_row(process)) *
                                               options.cols * sizeof(Cell));
            displacements[process] = static_cast<int>(first_row(process) * options.cols * sizeof(Cell));
        }

        Grid current = rank == 0 ? initialize(options) : Grid(total_cells);
        Grid next(total_cells);
        size_t initial_trees = 0;
        if (rank == 0) {
            for (const Cell& cell : current) {
                initial_trees += cell.state == TREE || cell.state == FIRE;
            }
        }
        MPI_Bcast(current.data(), total_bytes, MPI_BYTE, 0, MPI_COMM_WORLD);

        // Cada proceso conserva el mapa completo para leer vecinos de sus filas.
        // Solo escribe su bloque y Allgatherv publica el siguiente estado completo.
        MPI_Barrier(MPI_COMM_WORLD);
        const double start = MPI_Wtime();
        double compute_time = 0;
        double communication_time = 0;
        for (size_t step = 0; step < options.steps; ++step) {
            const double compute_start = MPI_Wtime();
            update_moisture_rows(current, next, options.rows, options.cols, first, last);
            update_fire_rows(current, next, options, first, last);
            compute_time += MPI_Wtime() - compute_start;

            const double communication_start = MPI_Wtime();
            if (synchronization == "allgather") {
                MPI_Allgatherv(MPI_IN_PLACE, 0, MPI_BYTE, next.data(),
                               counts.data(), displacements.data(), MPI_BYTE, MPI_COMM_WORLD);
            } else {
                char* own_rows = reinterpret_cast<char*>(next.data()) + displacements[rank];
                MPI_Gatherv(rank == 0 ? MPI_IN_PLACE : own_rows, counts[rank], MPI_BYTE,
                            next.data(), counts.data(), displacements.data(), MPI_BYTE,
                            0, MPI_COMM_WORLD);
                MPI_Bcast(next.data(), total_bytes, MPI_BYTE, 0, MPI_COMM_WORLD);
            }
            communication_time += MPI_Wtime() - communication_start;
            current.swap(next);
        }
        const double elapsed = MPI_Wtime() - start;
        double maximums[3] = {};
        const double local_times[3] = {elapsed, compute_time, communication_time};
        MPI_Reduce(local_times, maximums, 3, MPI_DOUBLE, MPI_MAX, 0, MPI_COMM_WORLD);
        vector<double> times_by_process(rank == 0 ? 3 * processes : 0);
        MPI_Gather(local_times, 3, MPI_DOUBLE, times_by_process.data(), 3, MPI_DOUBLE,
                   0, MPI_COMM_WORLD);

        if (rank == 0) {
            int slowest = 0;
            for (int process = 1; process < processes; ++process) {
                if (times_by_process[3 * process] > times_by_process[3 * slowest]) {
                    slowest = process;
                }
            }
            const Stats stats = statistics(current, initial_trees);
            cout << fixed << setprecision(6)
                 << "Resumen MPI: " << options.rows << 'x' << options.cols
                 << "; procesos=" << processes << "; sincronizacion=" << synchronization
                 << "; pasos=" << options.steps
                 << "; semilla=" << options.seed << '\n'
                 << "Iteraciones=" << options.steps << "; tiempo_bucle_s=" << maximums[0]
                 << "; computo_max_s=" << maximums[1]
                 << "; comunicacion_max_s=" << maximums[2]
                 << "; proceso_critico=" << slowest
                 << "; computo_critico_s=" << times_by_process[3 * slowest + 1]
                 << "; comunicacion_critica_s=" << times_by_process[3 * slowest + 2] << '\n'
                 << "Final: vegetación=" << stats.count[TREE]
                 << " fuego=" << stats.count[FIRE]
                 << " quemado=" << stats.count[BURNT]
                 << " agua=" << stats.count[WATER]
                 << " vacío=" << stats.count[EMPTY]
                 << "; inicial_afectada=" << stats.affected << '/' << initial_trees
                 << "; checksum=" << hex << checksum(current) << dec << '\n';
        }
        MPI_Finalize();
        return 0;
    } catch (const exception& error) {
        cerr << "Proceso " << rank << ": " << error.what() << '\n';
        MPI_Abort(MPI_COMM_WORLD, 1);
        return 1;
    }
}
