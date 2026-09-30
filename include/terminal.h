#ifndef INCENDIO_TERMINAL_H
#define INCENDIO_TERMINAL_H

#include "estadisticas.h"
#include "modelo.h"
#include "opciones.h"

#include <termios.h>

// Estado que cambia con las teclas, separado de los parámetros de la simulación.
struct Playback {
    unsigned delay;
    bool keyboard = false;
    bool paused = false;
};

// Restaura la entrada y el cursor también al salir por excepción.
class Terminal {
public:
    explicit Terminal(bool visual);
    ~Terminal();
    Terminal(const Terminal&) = delete;
    Terminal& operator=(const Terminal&) = delete;

    bool output_is_terminal() const;
    bool input_enabled() const;
    void begin_display();
    void restore_cursor();

private:
    termios saved_input_{};
    bool output_is_terminal_ = false;
    bool input_enabled_ = false;
    bool cursor_hidden_ = false;
};

void install_signal_handlers();
bool interruption_requested();

void draw(const Grid& cells, const Options& options, const Playback& playback,
          std::size_t step, std::size_t initial_trees, bool tty);

// Resumen para la terminal interactiva; el formato de medición se mantiene en main.
void draw_summary(const Grid& cells, const Options& options, const Stats& stats,
                  std::size_t steps, std::size_t active_steps, double seconds,
                  std::size_t initial_trees, bool stopped_with_key);

// Devuelve false si se pulsa q o llega una señal; respeta pausa y avance manual.
bool wait_frame(Playback& playback, const Terminal& terminal, const Grid& cells,
                const Options& options, std::size_t step, std::size_t initial_trees);

#endif
