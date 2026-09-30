#include "estadisticas.h"
#include "opciones.h"
#include "simulacion.h"
#include "terminal.h"

#include <algorithm>
#include <chrono>
#include <exception>
#include <iomanip>
#include <iostream>
#include <new>
#include <stdexcept>

using namespace std;

namespace {

using Clock = chrono::steady_clock;
using Seconds = chrono::duration<double>;

struct Execution {
    size_t steps = 0;
    size_t active_steps = 0;
    bool stopped_with_key = false;
    Seconds total{0};
    Seconds moisture{0};
    Seconds fire{0};
};

Execution execute_steps(Grid& current, Grid& next, const Options& options,
                        Terminal& terminal, Playback& playback, size_t initial_trees) {
    Execution execution;
    Seconds visual_work{0};
    auto start = Clock::now();

    for (size_t step = 0; step < options.steps && !interruption_requested(); ++step) {
        if (options.visual && terminal.output_is_terminal() &&
            !wait_frame(playback, terminal, current, options, execution.steps, initial_trees)) {
            execution.stopped_with_key = !interruption_requested();
            break;
        }

        // En medición habitual solo se lee el reloj al empezar y terminar el bucle.
        auto work_start = (options.visual || options.profile) ? Clock::now() : Clock::time_point{};
        update_moisture(current, next, options.rows, options.cols);
        auto moisture_end = options.profile ? Clock::now() : Clock::time_point{};
        size_t active_cells = update_fire(current, next, options);
        if (options.profile) {
            auto fire_end = Clock::now();
            execution.moisture += moisture_end - work_start;
            execution.fire += fire_end - moisture_end;
        }

        // Solo tras completar ambas fases el resultado pasa a ser el estado actual.
        current.swap(next);
        if (options.visual) {
            visual_work += Clock::now() - work_start;
        }
        ++execution.steps;
        if (active_cells) {
            ++execution.active_steps;
        }

        if (options.visual) {
            if (terminal.output_is_terminal() || step + 1 == options.steps || !active_cells) {
                draw(current, options, playback, execution.steps, initial_trees,
                     terminal.output_is_terminal());
            }
            if (!active_cells) {
                break;
            }
        }
    }

    auto end = Clock::now();
    // En la animación se excluyen la espera entre fotogramas y el dibujo.
    execution.total = options.visual ? visual_work : Seconds(end - start);
    return execution;
}

void print_summary(const Grid& cells, const Options& options, const Stats& stats,
                   const Execution& execution, size_t initial_trees) {
    cout << fixed << setprecision(6)
         << "Resumen: " << options.rows << "x" << options.cols << "=" << cells.size()
         << " celdas; semilla=" << options.seed
         << "; humedad=" << options.moisture << "; viento=" << options.direction << ":" << options.wind
         << "; foco=(" << options.fire_row << "," << options.fire_col << ")\n"
         << "Iteraciones=" << execution.steps << "; con fuego al terminar=" << execution.active_steps
         << "; tiempo_bucle_s=" << execution.total.count() << "\n"
         << "Final: vegetación=" << stats.count[TREE] << " fuego=" << stats.count[FIRE]
         << " quemado=" << stats.count[BURNT] << " agua=" << stats.count[WATER]
         << " vacío=" << stats.count[EMPTY] << "; inicial_afectada=" << stats.affected << "/" << initial_trees
         << "; checksum=" << hex << checksum(cells) << dec << "\n"
         << "Memoria: cell_bytes=" << sizeof(Cell)
         << "; buffers_bytes=" << 2.0 * cells.size() * sizeof(Cell)
         << "; quemado_pct_total=" << 100.0 * stats.count[BURNT] / cells.size()
         << "; afectado_pct_bosque=" << 100.0 * stats.affected / initial_trees << "\n";
    if (options.profile) {
        cout << "Diagnóstico: humedad_s=" << execution.moisture.count()
             << "; fuego_s=" << execution.fire.count()
             << "; resto_s=" << max(0.0, execution.total.count() -
                                     execution.moisture.count() - execution.fire.count()) << "\n";
    }
}

int run_simulation(const Options& options) {
    Grid current = initialize(options);
    Grid next(current.size());
    // initialize ya ha encendido el foco: también pertenecía al bosque inicial.
    size_t initial_trees = 1;
    for (const Cell& cell : current) {
        initial_trees += cell.state == TREE;
    }

    Terminal terminal(options.visual);
    Playback playback{options.delay, terminal.input_enabled(), false};
    install_signal_handlers();
    if (options.visual) {
        terminal.begin_display();
        draw(current, options, playback, 0, initial_trees, terminal.output_is_terminal());
    }

    Execution execution = execute_steps(current, next, options, terminal, playback, initial_trees);
    terminal.restore_cursor();
    Stats stats = statistics(current, initial_trees);
    const bool visual_summary = options.visual && terminal.output_is_terminal();
    if (visual_summary) {
        draw_summary(current, options, stats, execution.steps, execution.active_steps,
                     execution.total.count(), initial_trees, execution.stopped_with_key);
    } else {
        print_summary(current, options, stats, execution, initial_trees);
    }

    if (interruption_requested()) {
        cerr << "Interrumpido tras " << execution.steps << " iteraciones\n";
        return 130;
    }
    if (!visual_summary && execution.stopped_with_key) {
        cout << "Fin visual: detenido con q.\n";
    }
    if (!visual_summary && options.visual && !stats.count[FIRE]) {
        cout << "Fin visual: fuego extinguido.\n";
    }
    return 0;
}

}  // namespace

int main(int argc, char** argv) {
    try {
        return run_simulation(parse_options(argc, argv));
    } catch (const bad_alloc&) {
        cerr << "Error: memoria insuficiente\n";
    } catch (const length_error&) {
        cerr << "Error: dimensiones demasiado grandes para reservar memoria\n";
    } catch (const exception& error) {
        cerr << "Error: " << error.what() << ". Usa --help.\n";
    }
    return 1;
}
