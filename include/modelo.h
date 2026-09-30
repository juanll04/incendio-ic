#ifndef INCENDIO_MODELO_H
#define INCENDIO_MODELO_H

#include <cstdint>
#include <cstddef>
#include <vector>

// El orden de los estados coincide con las tablas de símbolos y los contadores.
enum State : std::uint8_t { EMPTY, TREE, FIRE, BURNT, WATER };

struct Cell {
    float moisture;
    std::uint8_t fuel;
    std::uint8_t state;
};

// Las filas se almacenan seguidas, sin reservar un vector por cada fila.
using Grid = std::vector<Cell>;

inline std::size_t index(std::size_t row, std::size_t column, std::size_t columns) {
    return row * columns + column;
}

#endif
