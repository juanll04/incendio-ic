#ifndef INCENDIO_SIMULACION_H
#define INCENDIO_SIMULACION_H

#include "modelo.h"
#include "opciones.h"

Grid initialize(const Options& options);

// Ambas fases leen current y escriben campos distintos de next. La fase de fuego
// usa la humedad ACTUAL: cambiarla por next.moisture cambiaría el modelo.
void update_moisture(const Grid& current, Grid& next,
                     std::size_t rows, std::size_t columns);
std::size_t update_fire(const Grid& current, Grid& next, const Options& options);

#endif
