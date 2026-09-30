#ifndef INCENDIO_ESTADISTICAS_H
#define INCENDIO_ESTADISTICAS_H

#include "modelo.h"

struct Stats {
    std::size_t count[5] = {};
    double mean = 0;
    std::size_t affected = 0;
};

// mean incluye solo árboles vivos; affected cuenta fuego y quemado del bosque inicial.
Stats statistics(const Grid& cells, std::size_t initial_trees);
std::uint64_t checksum(const Grid& cells);

#endif
