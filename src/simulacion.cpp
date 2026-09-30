#include "simulacion.h"

#include <algorithm>
#include <cmath>
#include <random>
#include <stdexcept>

using namespace std;

Grid initialize(const Options& options) {
    Grid cells(options.rows * options.cols);
    mt19937 generator(options.seed);
    uniform_real_distribution<float> random_value(0, 1);

    for (size_t row = 0; row < options.rows; ++row) {
        for (size_t column = 0; column < options.cols; ++column) {
            // El lago es una elipse en coordenadas [0,1], independiente del tamaño del mapa.
            float x = (static_cast<float>(column) + 0.5f) / options.cols;
            float y = (static_cast<float>(row) + 0.5f) / options.rows;
            bool lake = pow((x - 0.72f) / 0.105f, 2) +
                        pow((y - 0.55f) / 0.16f, 2) < 1;

            // Mantener el orden de estas extracciones conserva el terreno de cada semilla.
            float terrain_random = random_value(generator);
            float moisture_random = random_value(generator);
            Cell& cell = cells[index(row, column, options.cols)];
            cell.state = lake ? WATER : (terrain_random < 0.12f ? EMPTY : TREE);
            cell.fuel = cell.state == TREE
                ? static_cast<uint8_t>(3 + static_cast<int>(random_value(generator) * 4))
                : 0;
            cell.moisture = cell.state == TREE
                ? clamp(options.moisture + (moisture_random - 0.5f) * 0.16f, 0.f, 1.f)
                : 0;
        }
    }

    Cell& focus = cells[index(options.fire_row, options.fire_col, options.cols)];
    if (!options.fire_set && focus.state != WATER) {
        focus.state = TREE;
        focus.fuel = 5;
        focus.moisture = options.moisture;
    }
    if (focus.state != TREE || !focus.fuel) {
        throw invalid_argument("El foco cae sobre agua o un claro: elige otra celda con vegetación");
    }
    focus.state = FIRE;
    return cells;
}

void update_moisture(const Grid& current, Grid& next,
                     size_t rows, size_t columns) {
    for (size_t row = 0; row < rows; ++row) {
        for (size_t column = 0; column < columns; ++column) {
            size_t position = index(row, column, columns);
            if (current[position].state != TREE && current[position].state != FIRE) {
                next[position].moisture = current[position].moisture;
                continue;
            }

            int burning_neighbors = 0;
            for (int row_offset = -1; row_offset <= 1; ++row_offset) {
                for (int column_offset = -1; column_offset <= 1; ++column_offset) {
                    if (row_offset == 0 && column_offset == 0) {
                        continue;
                    }
                    // Las coordenadas temporales son con signo: en el borde pueden ser -1.
                    auto neighbor_row = static_cast<long long>(row) + row_offset;
                    auto neighbor_column = static_cast<long long>(column) + column_offset;
                    if (neighbor_row >= 0 && neighbor_column >= 0 &&
                        static_cast<size_t>(neighbor_row) < rows &&
                        static_cast<size_t>(neighbor_column) < columns) {
                        size_t neighbor = index(static_cast<size_t>(neighbor_row),
                                                     static_cast<size_t>(neighbor_column), columns);
                        burning_neighbors += current[neighbor].state == FIRE;
                    }
                }
            }
            // Cada paso seca el terreno; los vecinos ardiendo aceleran esa pérdida.
            next[position].moisture = max(
                0.f, current[position].moisture - 0.006f - 0.012f * burning_neighbors);
        }
    }
}

size_t update_fire(const Grid& current, Grid& next, const Options& options) {
    size_t active_cells = 0;
    for (size_t row = 0; row < options.rows; ++row) {
        for (size_t column = 0; column < options.cols; ++column) {
            size_t position = index(row, column, options.cols);
            const Cell& current_cell = current[position];
            Cell& next_cell = next[position];
            next_cell.state = current_cell.state;
            next_cell.fuel = current_cell.fuel;

            // Una celda ardiendo consume una unidad de combustible por paso.
            if (current_cell.state == FIRE) {
                next_cell.fuel = static_cast<uint8_t>(current_cell.fuel - 1);
                if (!next_cell.fuel) {
                    next_cell.state = BURNT;
                }
            } else if (current_cell.state == TREE) {
                float influence = 0;
                for (int row_offset = -1; row_offset <= 1; ++row_offset) {
                    for (int column_offset = -1; column_offset <= 1; ++column_offset) {
                        if (row_offset == 0 && column_offset == 0) {
                            continue;
                        }
                        auto neighbor_row = static_cast<long long>(row) + row_offset;
                        auto neighbor_column = static_cast<long long>(column) + column_offset;
                        if (neighbor_row < 0 || neighbor_column < 0 ||
                            static_cast<size_t>(neighbor_row) >= options.rows ||
                            static_cast<size_t>(neighbor_column) >= options.cols) {
                            continue;
                        }
                        size_t neighbor = index(static_cast<size_t>(neighbor_row),
                                                     static_cast<size_t>(neighbor_column), options.cols);
                        if (current[neighbor].state != FIRE) {
                            continue;
                        }

                        float distance_weight = (row_offset && column_offset) ? 0.70710678f : 1.f;
                        // Los offsets apuntan a la fuente; su negativo apunta del fuego al destino.
                        float alignment = (-column_offset * options.dx - row_offset * options.dy) *
                                          distance_weight *
                                          ((options.dx && options.dy) ? 0.70710678f : 1.f);
                        influence += distance_weight * (1.f + options.wind * alignment);
                    }
                }
                // Se usa la humedad del paso actual; la recién calculada queda para el siguiente.
                if (influence >= 0.65f + 1.2f * current_cell.moisture) {
                    next_cell.state = FIRE;
                }
            }
            active_cells += next_cell.state == FIRE;
        }
    }
    return active_cells;
}
