# Uso del programa

[Inicio](../README.md) · [Uso](uso.md) · [Funcionamiento](funcionamiento.md) · [Rendimiento](rendimiento.md) · [Paralelización](paralelizacion.md) · [Historial](historial.md)

Los comandos de esta guía se ejecutan desde la carpeta `incendio/`. Para la animación necesitas una terminal; para las campañas, Python 3.

## Compilar y ejecutar en local

Todos los comandos se ejecutan desde `incendio/`:

```sh
make CXX=g++
make visual                 # 20 × 48, hasta 70 pasos, 180 ms por fotograma
make visual VISUAL_DELAY=400
make run                    # referencia 1600 × 1600, 160 pasos
make check                  # comprobación breve existente
make clean                  # elimina solo el ejecutable
```

En macOS, `/usr/bin/g++` invoca Apple Clang. Las mediciones de la práctica se realizan con GCC en Linux. Si cambias las opciones de compilación, fuerza la reconstrucción con `make -B`; por ejemplo:

```sh
make -B CXX=g++ CXXFLAGS='-O3 -ffp-contract=off -std=c++17 -Wall -Wextra -pedantic'
```

## Argumentos

| Opción | Valor por defecto | Significado |
|---|---:|---|
| `--rows`, `--cols` | 30, 60 | Filas y columnas positivas. |
| `--steps` | 80 | Máximo de iteraciones positivo. |
| `--seed` | 42 | Semilla entera de 0 a 2³²−1, solo para el terreno inicial. |
| `--moisture` | 0.28 | Humedad central inicial, en [0,1]. |
| `--wind-dir` | E | N, NE, E, SE, S, SW, W o NW. |
| `--wind` | 0.6 | Intensidad normalizada, en [0,1]. |
| `--fire-row`, `--fire-col` | filas/2, columnas/5 | Foco inicial; índices desde 0. Si se indican, deben apuntar a vegetación. |
| `--visual`, `--measure`, `--profile` | medición | Animación, medición habitual o diagnóstico por fases. `--profile` no admite `--visual`. |
| `--delay` | 180 | Milisegundos entre fotogramas visuales, [0,60000]. |
| `--ascii`, `--no-color` | desactivados | Símbolos ASCII y ausencia de color. |
| `--help` | — | Ayuda. |

Ejemplos:

```sh
./incendio --visual --rows 20 --cols 48 --steps 70 --wind-dir SE --wind .5
./incendio --visual --rows 12 --cols 28 --steps 15 --ascii --no-color
./incendio --measure --rows 1600 --cols 1600 --steps 160 --seed 42
```

Durante la animación: `+` reduce la espera en 50 ms, `-` la aumenta en 50 ms, espacio pausa o reanuda, `n` avanza un fotograma si está pausada y `q` termina mostrando el resumen. Las teclas funcionan cuando la entrada y la salida son terminales. La cadencia actual aparece en el panel. También puedes fijarla al arrancar con `--delay 400`; no se piden datos interactivamente.

El modo medición completa siempre `--steps`, aunque se apague el fuego. El visual puede terminar antes. La salida contiene un *checksum* (identificador calculado a partir de todas las celdas) para comparar ejecuciones. En una terminal estrecha se recorta el mapa y se indican las filas y columnas visibles. Sin terminal interactiva no se envían secuencias de control ni colores.

Para entender reglas y código, ver [funcionamiento.md](funcionamiento.md) y el [grafo SVG de dependencias](figuras/dependencias.svg). Para repetir las mediciones, ver [rendimiento.md](rendimiento.md).

## Animación con Docker

Abre Docker Desktop y construye la imagen con el código actual:

```sh
make docker-build
docker run --rm -it --platform linux/arm64 \
  --cpus=2 --memory=2g \
  incendio-ic:practica2 \
  ./incendio --visual --rows 20 --cols 48 --steps 70 --delay 180
```

`-it` conecta la terminal para ver colores y usar el teclado. Amplía la ventana si aparece «Vista recortada». Añade `--ascii --no-color` para símbolos sencillos y estadísticas sin color. Después de modificar el código, ejecuta de nuevo `make docker-build`: la imagen contiene una copia de las fuentes, no un montaje del código local.

La imagen usa Ubuntu 24.04 ARM64 fijada por digest y compila con GCC dentro de `/app`. El ejecutable Linux no reemplaza al de macOS. Los comandos de Docker de esta guía usan cuota equivalente a 2 CPU y límite de 2 GiB; la cuota no reserva núcleos exclusivos. Las versiones concretas se registran en cada campaña.

## Estadísticas visuales

El panel interactivo colorea los estados y muestra humedad y viento como porcentajes con un decimal. La humedad media incluye solo vegetación sin encender; cuando no queda, muestra «sin vegetación».

El resumen final agrupa motivo de finalización, parámetros, estado final, bosque afectado, tiempo y memoria. Termina por extinción, límite de pasos, `q` o interrupción. El cálculo se expresa en milisegundos, sin dibujo ni esperas; los dos buffers se muestran en KiB y bytes. Los porcentajes de estado usan todas las celdas. El bosque afectado incluye árboles ardiendo y quemados y usa como base los árboles iniciales, incluido el foco.

En el ejemplo de `make visual`, con semilla 42 y los parámetros habituales, se observó extinción en el paso 44: 778 quemados, 52 celdas de agua y 130 vacías; checksum `d7286f3b499e3e91`. El tiempo depende de cada ejecución.

| Ejecución | Presentación |
|---|---|
| `--visual` con salida a terminal | Panel coloreado y resumen por secciones; `--no-color` desactiva colores. |
| `--visual` redirigido a un archivo o tubería | Mapas y resumen de texto anteriores, sin colores. |
| `--measure` | Campos de texto estables que leen los scripts; todos los pasos solicitados. |
| `--profile` | Mismo resumen de texto y tiempos adicionales de humedad, fuego y resto. |

## Mapa y controles de la terminal

| Estado | Símbolo / ASCII | Color |
|---|---|---|
| Vegetación | `♣` / `T` | verde |
| Fuego | `▓` / `*` | amarillo |
| Quemado | `░` / `#` | gris |
| Agua | `≈` / `~` | azul |
| Vacío | `·` / `.` | gris claro |

Cada símbolo ocupa dos columnas. El mapa tiene un marco fino (`╭─│╯` o `+-|`); el panel aparece al lado si cabe y debajo si la terminal es estrecha.

La vista recortada indica sus límites. Al redibujar, el programa limpia cada línea y el resto del panel para que una cifra nueva más corta no deje caracteres antiguos. Restaura el modo de entrada y el cursor al salir o recibir `SIGINT`/`SIGTERM`.

## Comprobar la salida

La modularización conservó reglas, mensajes y resultados, y se comparó con la versión monolítica. Después se autorizó cambiar el aspecto del panel y resumen interactivos. Por tanto, el formato visual actual difiere intencionadamente del original; la salida no interactiva, recuentos y checksum se conservan. Los valores de los cronómetros varían entre ejecuciones.

La comprobación existente puede comparar el formato no interactivo con un binario anterior, usando el mismo compilador y opciones:

```sh
g++ -O2 -ffp-contract=off -std=c++17 resultados_docker/fuente_medida.cpp -o /tmp/incendio_anterior
make -B CXX=g++
python3 scripts/check.py --compare /tmp/incendio_anterior
```

## Problemas habituales

Si ves «Vista recortada», amplía la ventana o reduce `--rows` y `--cols`. El mapa ocupa dos columnas de terminal por celda y deja espacio para las estadísticas.

En Docker, usa `-it` para conectar el teclado y ver la animación. El comando por defecto de la imagen inicia una campaña de mediciones; para animar debes indicar `./incendio --visual`. Si cambias las fuentes, reconstruye con `make docker-build`.

Si los caracteres se ven mal, añade `--ascii`; para desactivar los colores, añade `--no-color`. En una terminal se siguen usando controles de cursor para redibujar la pantalla.

Para guardar nuevas mediciones sin sustituir las anteriores, usa los comandos de [rendimiento](rendimiento.md).
