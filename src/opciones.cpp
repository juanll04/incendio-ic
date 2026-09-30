#include "opciones.h"
#include "modelo.h"

#include <cmath>
#include <cstdlib>
#include <exception>
#include <iostream>
#include <stdexcept>

using namespace std;

namespace {

size_t parse_integer(const string& text, const string& option) {
    if (text.empty() || text[0] == '-') {
        throw invalid_argument("Valor inválido para " + option);
    }

    try {
        size_t consumed = 0;
        unsigned long long value = stoull(text, &consumed);
        if (consumed != text.size() || value > numeric_limits<size_t>::max()) {
            throw invalid_argument("");
        }
        return static_cast<size_t>(value);
    } catch (const exception&) {
        throw invalid_argument("Valor inválido para " + option);
    }
}

float parse_decimal(const string& text, const string& option) {
    try {
        size_t consumed = 0;
        float value = stof(text, &consumed);
        if (consumed != text.size() || !isfinite(value)) {
            throw invalid_argument("");
        }
        return value;
    } catch (const exception&) {
        throw invalid_argument("Valor inválido para " + option);
    }
}

void print_help() {
    cout << "Incendio secuencial C++17. Coordenadas de base 0.\n"
         << "--rows N --cols N --steps N --seed N --moisture X [0,1]\n"
         << "--wind-dir N|NE|E|SE|S|SW|W|NW --wind X [0,1]\n"
         << "--fire-row N --fire-col N --visual|--measure|--profile --delay MS --ascii --no-color\n"
         << "--profile: diagnóstico de tiempos por fase, separado de la medición habitual.\n"
         << "En modo visual: + acelera, - frena, espacio pausa, n avanza un paso, q termina.\n"
         << "Por defecto: 30x60, 80 pasos, semilla 42, humedad .28, viento E .6, foco (filas/2,columnas/5), medición; pausa visual 180 ms.\n";
}

void set_wind_direction(Options& options, const string& direction) {
    const string directions[] = {"N", "NE", "E", "SE", "S", "SW", "W", "NW"};
    const int horizontal[] = {0, 1, 1, 1, 0, -1, -1, -1};
    // Las filas aumentan hacia abajo: norte corresponde a dy = -1.
    const int vertical[] = {-1, -1, 0, 1, 1, 1, 0, -1};

    for (int i = 0; i < 8; ++i) {
        if (direction == directions[i]) {
            options.direction = direction;
            options.dx = horizontal[i];
            options.dy = vertical[i];
            return;
        }
    }
    throw invalid_argument("Dirección de viento: N, NE, E, SE, S, SW, W o NW");
}

void validate_options(Options& options) {
    if (options.profile && options.visual) {
        throw invalid_argument("--profile no se combina con --visual");
    }
    if (!options.rows || !options.cols || !options.steps) {
        throw invalid_argument("Filas, columnas e iteraciones deben ser positivas");
    }

    // Comprobar antes de multiplicar evita desbordar el tamaño de la cuadrícula.
    if (options.rows > numeric_limits<size_t>::max() / options.cols ||
        options.rows * options.cols > numeric_limits<Grid::difference_type>::max() / 2) {
        throw invalid_argument("Dimensiones demasiado grandes");
    }
    if (options.moisture < 0 || options.moisture > 1 || options.wind < 0 || options.wind > 1) {
        throw invalid_argument("Humedad y viento deben estar en [0,1]");
    }

    // Si falta una coordenada, se completa con su valor por defecto.
    if (options.fire_row == numeric_limits<size_t>::max()) {
        options.fire_row = options.rows / 2;
    }
    if (options.fire_col == numeric_limits<size_t>::max()) {
        options.fire_col = options.cols / 5;
    }
    if (options.fire_row >= options.rows || options.fire_col >= options.cols) {
        throw invalid_argument("Foco fuera del terreno (coordenadas desde 0)");
    }
}

}  // namespace

Options parse_options(int argc, char** argv) {
    Options options;
    for (int i = 1; i < argc; ++i) {
        string argument = argv[i];
        if (argument == "--help") {
            print_help();
            exit(0);
        }
        if (argument == "--visual") {
            options.visual = true;
            continue;
        }
        if (argument == "--measure") {
            options.visual = false;
            continue;
        }
        if (argument == "--profile") {
            options.profile = true;
            continue;
        }
        if (argument == "--ascii") {
            options.ascii = true;
            continue;
        }
        if (argument == "--no-color") {
            options.color = false;
            continue;
        }
        if (i + 1 >= argc) {
            throw invalid_argument("Falta valor para " + argument);
        }

        string value = argv[++i];
        if (argument == "--rows") {
            options.rows = parse_integer(value, argument);
        } else if (argument == "--cols") {
            options.cols = parse_integer(value, argument);
        } else if (argument == "--steps") {
            options.steps = parse_integer(value, argument);
        } else if (argument == "--seed") {
            auto seed = parse_integer(value, argument);
            if (seed > UINT32_MAX) {
                throw invalid_argument("Semilla fuera de rango");
            }
            options.seed = static_cast<uint32_t>(seed);
        } else if (argument == "--moisture") {
            options.moisture = parse_decimal(value, argument);
        } else if (argument == "--wind") {
            options.wind = parse_decimal(value, argument);
        } else if (argument == "--fire-row") {
            options.fire_row = parse_integer(value, argument);
            options.fire_set = true;
        } else if (argument == "--fire-col") {
            options.fire_col = parse_integer(value, argument);
            options.fire_set = true;
        } else if (argument == "--delay") {
            auto delay = parse_integer(value, argument);
            if (delay > 60000) {
                throw invalid_argument("--delay debe estar en [0,60000]");
            }
            options.delay = static_cast<unsigned>(delay);
        } else if (argument == "--wind-dir") {
            set_wind_direction(options, value);
        } else {
            throw invalid_argument("Opción desconocida: " + argument);
        }
    }
    validate_options(options);
    return options;
}
