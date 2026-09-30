#include "terminal.h"
#include "estadisticas.h"

#include <algorithm>
#include <chrono>
#include <csignal>
#include <iostream>
#include <iomanip>
#include <sstream>
#include <string>
#include <thread>
#include <sys/ioctl.h>
#include <unistd.h>

using namespace std;

namespace {

volatile sig_atomic_t interrupted = 0;

void on_signal(int) {
    // El manejador solo modifica una bandera segura para señales. La salida
    // y la restauración de la terminal se realizan después, en el flujo normal.
    interrupted = 1;
}

const char* state_colors[] = {"\033[37m", "\033[32m", "\033[33;1m", "\033[90m", "\033[34;1m"};

string paint(const string& text, const char* color, bool enabled) {
    return enabled ? string(color) + text + "\033[0m" : text;
}

string decimal(double value, int precision = 1) {
    ostringstream output;
    output << fixed << setprecision(precision) << value;
    return output.str();
}

string percent(size_t count, size_t total) {
    return to_string((100 * count) / total) + "%";
}

string glyph(const Cell& cell, bool ascii, bool color) {
    const char* ascii_symbols[] = {". ", "T ", "* ", "# ", "~ "};
    const char* unicode_symbols[] = {"· ", "♣ ", "▓ ", "░ ", "≈ "};
    string symbol = ascii ? ascii_symbols[cell.state] : unicode_symbols[cell.state];
    return paint(symbol, state_colors[cell.state], color);
}

string wind_arrow(const Options& options) {
    if (options.ascii) {
        return options.direction;
    }
    const string directions[] = {"N", "NE", "E", "SE", "S", "SW", "W", "NW"};
    const string arrows[] = {"↑", "↗", "→", "↘", "↓", "↙", "←", "↖"};
    for (int i = 0; i < 8; ++i) {
        if (options.direction == directions[i]) {
            return arrows[i];
        }
    }
    return "";
}

vector<string> information_panel(const Grid& cells, const Options& options,
                                         const Playback& playback, size_t step,
                                         size_t initial_trees, bool tty) {
    Stats stats = statistics(cells, initial_trees);
    // El daño se mide sobre el bosque inicial; los estados, sobre todo el mapa.
    size_t filled = 10 * stats.affected / initial_trees;
    string bar = "[";
    for (size_t i = 0; i < 10; ++i) {
        bar += i < filled ? (options.ascii ? "#" : "█") : (options.ascii ? "-" : "░");
    }
    bar += "]";

    // Fuera de una terminal conservamos el texto que usan las comprobaciones.
    auto percentage = [tty](size_t count, size_t total) {
        return tty ? decimal(100.0 * count / total) + "%" : percent(count, total);
    };
    vector<string> information = {
        "Paso " + to_string(step) + " / " + to_string(options.steps),
        "Viento " + wind_arrow(options) + (options.ascii ? "" : " " + options.direction) + "  " + (tty ? decimal(100 * options.wind) + "%" : to_string(options.wind)),
        "Humedad media: " + (stats.count[TREE] ? (tty ? decimal(100 * stats.mean) + "%" : to_string(stats.mean)) : string(tty ? "sin vegetación" : "no aplica")),
        "Estados / total " + to_string(cells.size()),
        "Vegetación " + to_string(stats.count[TREE]) + " (" + percentage(stats.count[TREE], cells.size()) + ")",
        "Ardiendo   " + to_string(stats.count[FIRE]) + " (" + percentage(stats.count[FIRE], cells.size()) + ")",
        "Quemado    " + to_string(stats.count[BURNT]) + " (" + percentage(stats.count[BURNT], cells.size()) + ")",
        "Agua " + to_string(stats.count[WATER]) + " (" + percentage(stats.count[WATER], cells.size()) + ")  Vacío " + to_string(stats.count[EMPTY]) + " (" + percentage(stats.count[EMPTY], cells.size()) + ")",
        "Inicial afectada: " + to_string(stats.affected) + "/" + to_string(initial_trees) + " (" + percentage(stats.affected, initial_trees) + ")",
        bar + " del bosque inicial",
        "T vegetación  * fuego",
        "# quemado  ~ agua  . vacío"
    };
    if (playback.keyboard) {
        information.push_back(to_string(playback.delay) + " ms " +
                              (playback.paused ? "[PAUSA] " : "") + "+/- rapidez");
        information.push_back("espacio pausa  n paso  q salir");
    }
    if (tty) {
        const bool color = options.color;
        information[0] = paint(information[0], "\033[1;36m", color);
        information[4] = paint(information[4], state_colors[TREE], color);
        information[5] = paint(information[5], state_colors[FIRE], color);
        information[6] = paint(information[6], state_colors[BURNT], color);
        information[7] = paint(information[7], state_colors[WATER], color);
        information[8] = paint(information[8], "\033[1;31m", color);
        information[9] = paint(information[9], "\033[1;31m", color);
    }
    return information;
}

}  // namespace

Terminal::Terminal(bool visual) : output_is_terminal_(isatty(STDOUT_FILENO)) {
    if (!visual || !output_is_terminal_ || !isatty(STDIN_FILENO) ||
        tcgetattr(STDIN_FILENO, &saved_input_)) {
        return;
    }

    // Entrada no canónica: leer teclas sin esperar Intro y sin mostrarlas en pantalla.
    termios mode = saved_input_;
    mode.c_lflag &= static_cast<tcflag_t>(~(ICANON | ECHO));
    mode.c_cc[VMIN] = 0;
    mode.c_cc[VTIME] = 0;
    input_enabled_ = tcsetattr(STDIN_FILENO, TCSANOW, &mode) == 0;
}

Terminal::~Terminal() {
    if (input_enabled_) {
        tcsetattr(STDIN_FILENO, TCSANOW, &saved_input_);
    }
    restore_cursor();
}

bool Terminal::output_is_terminal() const {
    return output_is_terminal_;
}

bool Terminal::input_enabled() const {
    return input_enabled_;
}

void Terminal::begin_display() {
    if (output_is_terminal_) {
        cout << "\033[2J\033[H\033[?25l";
        cursor_hidden_ = true;
    }
}

void Terminal::restore_cursor() {
    if (cursor_hidden_) {
        cout << "\033[?25h";
        cursor_hidden_ = false;
    }
}

void install_signal_handlers() {
    signal(SIGINT, on_signal);
    signal(SIGTERM, on_signal);
}

bool interruption_requested() {
    return interrupted != 0;
}

void draw(const Grid& cells, const Options& options, const Playback& playback,
          size_t step, size_t initial_trees, bool tty) {
    winsize window{};
    if (tty) {
        ioctl(STDOUT_FILENO, TIOCGWINSZ, &window);
    }
    size_t width = window.ws_col ? window.ws_col : 100;
    size_t height = window.ws_row ? window.ws_row : 40;
    // Cada celda ocupa dos columnas; el panel va al lado si queda espacio.
    bool side_panel = width >= 2 * min(options.cols, size_t(35)) + 52;
    size_t shown_columns = min(
        options.cols, max(size_t(1), (width - (side_panel ? 52 : 4)) / 2));
    size_t shown_rows = min(
        options.rows, max(size_t(1), height - (side_panel ? 5 : (playback.keyboard ? 18 : 17))));
    size_t first_row = options.fire_row > shown_rows / 2
        ? min(options.fire_row - shown_rows / 2, options.rows - shown_rows) : 0;
    size_t first_column = options.fire_col > shown_columns / 2
        ? min(options.fire_col - shown_columns / 2, options.cols - shown_columns) : 0;
    auto information = information_panel(cells, options, playback, step, initial_trees, tty);

    string top_left = options.ascii ? "+" : "╭";
    string top_right = options.ascii ? "+" : "╮";
    string bottom_left = options.ascii ? "+" : "╰";
    string bottom_right = options.ascii ? "+" : "╯";
    string horizontal = options.ascii ? "-" : "─";
    string vertical = options.ascii ? "|" : "│";

    // Preparamos el fotograma completo antes de enviarlo a la terminal.
    ostringstream frame;
    frame << top_left;
    for (size_t column = 0; column < shown_columns * 2; ++column) {
        frame << horizontal;
    }
    frame << top_right;
    if (side_panel) {
        frame << "  Incendio forestal";
    }
    frame << '\n';
    for (size_t row = 0; row < shown_rows; ++row) {
        frame << vertical;
        for (size_t column = 0; column < shown_columns; ++column) {
            frame << glyph(cells[index(row + first_row, column + first_column, options.cols)],
                           options.ascii, options.color && tty);
        }
        frame << vertical;
        if (side_panel && row < information.size()) {
            frame << "  " << information[row];
        }
        frame << '\n';
    }
    frame << bottom_left;
    for (size_t column = 0; column < shown_columns * 2; ++column) {
        frame << horizontal;
    }
    frame << bottom_right << '\n';
    if (first_row || first_column || shown_rows < options.rows || shown_columns < options.cols) {
        if (tty && width < 60) {
            frame << "Vista: f" << first_row << "-" << first_row + shown_rows - 1
                  << " c" << first_column << "-" << first_column + shown_columns - 1 << '\n';
        } else {
            frame << "Vista recortada: filas " << first_row << ".." << first_row + shown_rows - 1
                  << ", columnas " << first_column << ".." << first_column + shown_columns - 1 << "\n";
        }
    }
    if (!side_panel) {
        for (const auto& line : information) {
            frame << line << '\n';
        }
    } else {
        for (size_t i = shown_rows; i < information.size(); ++i) {
            frame << information[i] << '\n';
        }
    }

    if (tty) {
        cout << "\033[H";
        for (char character : frame.str()) {
            if (character == '\n') {
                cout << "\033[K\n";
            } else {
                cout << character;
            }
        }
        // Borrar también lo que sobra cuando un panel se vuelve más corto.
        cout << "\033[J";
    } else {
        cout << frame.str();
    }
    cout.flush();
}

void draw_summary(const Grid& cells, const Options& options, const Stats& stats,
                  size_t steps, size_t active_steps, double seconds,
                  size_t initial_trees, bool stopped_with_key) {
    const bool color = options.color;
    const string separator(46, '-');
    string status = "Límite de pasos alcanzado";
    if (interruption_requested()) {
        status = "Simulación interrumpida";
    } else if (stopped_with_key) {
        status = "Simulación detenida con q";
    } else if (!stats.count[FIRE]) {
        status = "Fuego extinguido";
    }

    ostringstream report;
    report << "\n" << paint(separator, "\033[36m", color) << "\n"
           << paint("  RESUMEN DEL INCENDIO", "\033[1;36m", color) << "\n"
           << "  " << paint(status, stats.count[FIRE] ? "\033[1;33m" : "\033[1;32m", color)
           << "\n" << paint(separator, "\033[36m", color) << "\n\n"
           << "  Terreno: " << options.rows << " x " << options.cols
           << " (" << cells.size() << " celdas)\n"
           << "  Pasos realizados: " << steps << " de " << options.steps << "\n"
           << "  Semilla: " << options.seed << " | Foco: fila " << options.fire_row
           << ", columna " << options.fire_col << "\n"
           << "  Humedad inicial: " << decimal(100 * options.moisture) << "%\n"
           << "  Viento: " << wind_arrow(options) << (options.ascii ? "" : " " + options.direction)
           << " | Intensidad: " << decimal(100 * options.wind) << "%\n\n"
           << paint("  ESTADO FINAL", "\033[1m", color) << "\n";

    const State states[] = {TREE, FIRE, BURNT, WATER, EMPTY};
    const char* labels[] = {"Vegetación   ", "Ardiendo     ", "Quemado      ", "Agua         ", "Vacío        "};
    for (size_t i = 0; i < 5; ++i) {
        const size_t count = stats.count[states[i]];
        const double percentage = 100.0 * count / cells.size();
        report << "  " << paint(labels[i], state_colors[states[i]], color)
               << setw(8) << count << "  " << setw(6) << decimal(percentage) << "%\n";
    }

    // Afectado incluye tanto árboles ardiendo como quemados; su base es el bosque inicial.
    const size_t filled = 10 * stats.affected / initial_trees;
    string bar;
    for (size_t i = 0; i < 10; ++i) {
        bar += i < filled ? (options.ascii ? "#" : "█") : (options.ascii ? "-" : "░");
    }
    report << "\n  Bosque afectado: " << stats.affected << " de " << initial_trees << " árboles\n"
           << "  " << paint("[" + bar + "] " + decimal(100.0 * stats.affected / initial_trees) + "%",
                            "\033[1;31m", color)
           << "\n  (árboles ardiendo o quemados)\n"
           << "  Humedad de la vegetación: "
           << (stats.count[TREE] ? decimal(100 * stats.mean) + "%" : "sin vegetación restante")
           << "\n\n" << paint("  TIEMPO Y MEMORIA", "\033[1m", color) << "\n"
           << "  Cálculo: " << decimal(seconds * 1000, 3) << " ms\n"
           << "  (sin dibujo ni esperas de la animación)\n"
           << "  Pasos con fuego al terminar: " << active_steps << "\n"
           << "  Cada celda: " << sizeof(Cell) << " bytes\n";
    const size_t buffer_bytes = 2 * cells.size() * sizeof(Cell);
    report << "  Dos buffers: " << decimal(buffer_bytes / 1024.0) << " KiB"
           << " (" << buffer_bytes << " bytes)\n\n"
           << "  Checksum: " << hex << checksum(cells) << dec << "\n"
           << paint(separator, "\033[36m", color) << "\n";
    cout << report.str() << flush;
}

bool wait_frame(Playback& playback, const Terminal& terminal, const Grid& cells,
                const Options& options, size_t step, size_t initial_trees) {
    if (!terminal.input_enabled()) {
        if (playback.delay) {
            this_thread::sleep_for(chrono::milliseconds(playback.delay));
        }
        return !interruption_requested();
    }

    // La espera se divide en pausas cortas para seguir atendiendo el teclado.
    auto deadline = chrono::steady_clock::now() + chrono::milliseconds(playback.delay);
    while (!interruption_requested()) {
        char key;
        bool changed = false;
        while (read(STDIN_FILENO, &key, 1) == 1) {
            if (key == 'q' || key == 'Q') {
                return false;
            }
            if (key == ' ') {
                playback.paused = !playback.paused;
                changed = true;
                deadline = chrono::steady_clock::now() + chrono::milliseconds(playback.delay);
            }
            if ((key == 'n' || key == 'N') && playback.paused) {
                return true;
            }
            if (key == '+') {
                playback.delay = playback.delay > 50 ? playback.delay - 50 : 0;
                changed = true;
                deadline = chrono::steady_clock::now() + chrono::milliseconds(playback.delay);
            }
            if (key == '-') {
                playback.delay = min(60000u, playback.delay + 50);
                changed = true;
                deadline = chrono::steady_clock::now() + chrono::milliseconds(playback.delay);
            }
        }
        if (changed) {
            draw(cells, options, playback, step, initial_trees, true);
        }
        if (!playback.paused && chrono::steady_clock::now() >= deadline) {
            return true;
        }
        this_thread::sleep_for(chrono::milliseconds(15));
    }
    return false;
}
