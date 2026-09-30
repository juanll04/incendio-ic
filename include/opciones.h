#ifndef INCENDIO_OPCIONES_H
#define INCENDIO_OPCIONES_H

#include <cstddef>
#include <cstdint>
#include <limits>
#include <string>

struct Options {
    std::size_t rows = 30;
    std::size_t cols = 60;
    std::size_t steps = 80;
    std::uint32_t seed = 42;
    float moisture = 0.28f;
    float wind = 0.6f;
    int dx = 1;
    int dy = 0;
    std::string direction = "E";

    // El valor máximo indica que la coordenada aún no se ha especificado.
    std::size_t fire_row = std::numeric_limits<std::size_t>::max();
    std::size_t fire_col = std::numeric_limits<std::size_t>::max();
    bool fire_set = false;

    bool visual = false;
    bool profile = false;
    bool ascii = false;
    bool color = true;
    unsigned delay = 180;
};

// Valida argumentos y completa las coordenadas por defecto; lanza una excepción
// si los parámetros son inválidos. --help imprime la ayuda y termina con éxito.
Options parse_options(int argc, char** argv);

#endif
