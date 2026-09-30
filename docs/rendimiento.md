# Rendimiento, mediciones y compilación

[Inicio](../README.md) · [Uso](uso.md) · [Funcionamiento](funcionamiento.md) · [Rendimiento](rendimiento.md) · [Paralelización](paralelizacion.md) · [Historial](historial.md)

## Estado y resultados disponibles

La campaña de 33 ejecuciones utiliza Linux ARM64 y GCC en Docker sobre un Apple M2 y corresponde a la versión monolítica previa a la refactorización. Los resultados de aquella campaña, con contracción desactivada, están en `resultados_docker/`; las tablas, gráficas y entorno originales de macOS se conservan como históricos.

- [Cuatro gráficas SVG](../resultados_docker/mediciones_docker.svg): tamaño, pasos, compilaciones y fases.
- [Tabla completa y ganancias de compilación](../resultados_docker/mediciones_docker_resumen.md).
- [CSV con cada ejecución](../resultados_docker/mediciones_docker.csv).
- [Entorno, recursos y hash de la fuente](../resultados_docker/mediciones_docker_entorno.json).
- [Análisis de vectorización](#autovectorización-en-gcc).

Las gráficas se abren en un navegador/visor SVG. La terminal muestra progreso y resúmenes; la animación del incendio sí permanece en terminal.

## Entorno Docker y referencia

Medido el 30-09-2026 sobre macOS/Apple M2, Docker Desktop 4.92.0, motor Docker 29.8.0, cliente 28.1.1. El contenedor ejecuta Ubuntu 24.04.5 LTS ARM64, kernel Linux `7.0.12-linuxkit` y GCC 13.3.0. No se emula x86. La VM de Docker usa 8 CPU y 8092 MiB según la configuración efectiva observada; el contenedor tiene cuota `200000/100000` (equivalente a 2 CPU) y límite de 2 GiB. Esa cuota no es afinidad ni reserva de núcleos exclusivos. No se fija frecuencia del M2 y la carga del anfitrión puede añadir ruido.

El caso de referencia se mantiene en 1600 × 1600 = 2 560 000 celdas y 160 pasos, semilla 42, humedad 0.28 y viento E 0.6. Su calentamiento inicial con GCC `-O2` tardó 7.580868 s, suficiente para mantener la referencia. `make run` reproduce los mismos parámetros mediante los valores por defecto de semilla/humedad/viento.

Estos resultados se obtuvieron con Linux y GCC dentro de Docker. Las tablas registran el entorno del contenedor y mantienen separados los tiempos de GCC y los de Clang.

## Qué se cronometra

`std::chrono::steady_clock` mide el bucle completo: humedad, fuego, intercambio de buffers y contadores. Inicialización, reservas, estadísticas, checksum, impresión de memoria y escritura de CSV/SVG quedan fuera. En modo medición no hay dibujo, esperas, salida ni archivos dentro del bucle y se completan todos los pasos aunque el fuego se extinga. Tampoco se incluye arranque de Docker ni compilación.

`--profile` añade lecturas de reloj por fase y acumula humedad/fuego; calcula el resto por diferencia. Sus filas se guardan separadas y solo se usan para localizar el coste. El resto incluye instrumentación, intercambio y contadores; no permite medir directamente una fracción secuencial real para Amdahl. Un perfil más rápido que una ejecución habitual no implica mejora: son ejecuciones distintas con ruido.

## Campaña reproducible

Se hacen tres repeticiones por configuración, precedidas de un calentamiento completo por compilación. Se presenta mediana y rango mínimo y máximo, sin atribuir a ese rango un intervalo de confianza. El CSV se escribe tras cada ejecución para conservar el trabajo si una campaña se interrumpe.

| Estudio | Parámetros variables | Parámetros fijos |
|---|---|---|
| Tamaño | Lados 400, 800, 1200, 1600 | 160 pasos, GCC `-O2` |
| Trabajo | 40, 80, 120, 160 pasos | 1600 × 1600, GCC `-O2` |
| Compilación | `-O0`, `-O2`, `-O3`, `-O3 -march=native` | Referencia completa |
| Fases | Humedad, fuego y resto mediante `--profile` | Referencia completa, GCC `-O2` |

Son 7 casos de escalado distintos (la referencia pertenece a ambos ejes), 3 compilaciones adicionales y 1 diagnóstico: 33 ejecuciones medidas, más 4 calentamientos. Los casos pequeños pueden durar menos de un segundo; la referencia satisface el coste de varios segundos. Semilla, humedad y viento se mantienen constantes. La proporción incendiada también depende de la geometría y del número de pasos: se registra junto a los tiempos.

Desde la carpeta del proyecto:

```sh
make docker-measure DOCKER_RESULTS=resultados_docker_actual
make docker-vectorization DOCKER_RESULTS=resultados_docker_actual
open resultados_docker_actual/mediciones_docker.svg
```

Para el Linux de la asignatura sin Docker:

```sh
uname -a
lscpu
g++ --version
python3 scripts/medir.py --linux --output-dir resultados_linux_actual
```

El script genera `mediciones_linux.csv`, `.svg`, `_entorno.json` y `_resumen.md`. Admite `--output-dir`, `--name`, `--reference-size` y `--reference-steps`. Los cuatro valores de cada eje se derivan de cuartos de la referencia. Deja el binario con `-O2` cuando termina correctamente. En Docker se compila en `/app` y se montan solo los resultados, así que el binario macOS se conserva.

## Opciones y coherencia del resultado

Estas son las compilaciones comparables; cada una va seguida del mismo comando de ejecución:

```sh
make -B CXX=g++ CXXFLAGS='-O0 -ffp-contract=off -std=c++17 -Wall -Wextra -pedantic'
make -B CXX=g++ CXXFLAGS='-O2 -ffp-contract=off -std=c++17 -Wall -Wextra -pedantic'
make -B CXX=g++ CXXFLAGS='-O3 -ffp-contract=off -std=c++17 -Wall -Wextra -pedantic'
make -B CXX=g++ CXXFLAGS='-O3 -march=native -ffp-contract=off -std=c++17 -Wall -Wextra -pedantic'
./incendio --measure --rows 1600 --cols 1600 --steps 160 --seed 42 --moisture .28 --wind-dir E --wind .6
```

`-O0` desactiva la mayoría de optimizaciones. `-O2` activa optimizaciones habituales, incluida vectorización con el modelo de costes de esta versión GCC. `-O3` añade transformaciones y usa un modelo de costes de vectorización diferente. `-march=native` permite instrucciones y ajuste para el procesador visible dentro de la VM; no garantiza representar todo el procesador físico ni portabilidad del ejecutable. La mejora de una opción no se atribuye automáticamente a SIMD.

`-ffp-contract=off` es común a todos los casos: evita fusionar multiplicación con suma/resta. La exploración inicial dio checksum distinto en `-O0` y compilaciones optimizadas, y el ensamblador mostraba `fmsub` en la actualización de humedad. Una ejecución `-O2 -ffp-contract=off` recuperó el checksum de `-O0`. Se conservó esa exploración en [exploracion_fma](../resultados_docker/exploracion_fma/README.md) y se repitió la campaña con la opción común. No se cambió el modelo ni se utilizó `-ffast-math`.

La campaña exige el mismo checksum por tamaño/pasos entre todas las compilaciones, repeticiones y modos. El checksum incorpora humedad bit a bit además de estados/combustible. Esa comprobación se realiza dentro de esta campaña y biblioteca; `std::uniform_real_distribution` no garantiza terreno idéntico entre bibliotecas estándar distintas.

La ganancia de compilación se calcula como `T(-O0)/T(opción)`. Compara programas secuenciales; no es ganancia paralela. Las tablas guardan comandos completos y fuente identificada por SHA-256. La base Ubuntu está fijada por digest, pero reconstruir la imagen puede resolver versiones nuevas de paquetes; conservar su identificador real en `imagen.txt` y las versiones registradas.

## Resultados históricos de macOS

La campaña original usó macOS 26.6.2, Apple M2, Apple Clang 21.0.0 invocado como `/usr/bin/g++`, con `-O2 -std=c++17 -Wall -Wextra -pedantic`, antes de fijar `-ffp-contract=off`.

| Terreno | Pasos | Tiempos (s) | Mediana (s) |
|---|---:|---|---:|
| 800 × 800 | 160 | 1.094133, 1.092452, 1.110109 | 1.094133 |
| 1600 × 1600 | 80 | 2.243074, 2.260969, 2.278895 | 2.260969 |
| 1600 × 1600 | 160 | 4.421328, 4.459444, 4.541479 | 4.459444 |

[CSV histórico](../mediciones_locales.csv) · [SVG histórico](../mediciones_locales.svg). No comparar directamente estos números con Docker para atribuir diferencias a GCC o virtualización: cambian compilador, entorno, opciones comunes y momento de ejecución.

## Fuentes técnicas

[GCC 13.3, opciones de optimización](https://gcc.gnu.org/onlinedocs/gcc-13.3.0/gcc/Optimize-Options.html), [GCC, informes de optimización](https://gcc.gnu.org/onlinedocs/gcc/Developer-Options.html), [Docker, máquina virtual de Desktop](https://docs.docker.com/desktop/features/vmm/), [Docker, límites de recursos](https://docs.docker.com/engine/containers/resource_constraints/).


## Interpretación de la campaña principal

| Opciones (siempre con -ffp-contract=off) | Mediana de referencia (s) | Ganancia respecto a -O0 |
|---|---:|---:|
| -O2 | 7.898868 | 3.447 |
| -O0 | 27.230527 | 1.000 |
| -O3 | 13.457733 | 2.023 |
| -O3 -march=native | 6.811265 | 3.998 |

El mismo caso terminó con checksum `94c0ea22a6a1fb35` en las cuatro compilaciones. Hubo 160 pasos con fuego al terminar, 2.451289% de celdas quemadas y 3.114394% del bosque inicial afectado; no se está midiendo una referencia con fuego ya extinguido.

Al multiplicar por cuatro los pasos, de 40 a 160, la mediana pasa de 1.926719 a 7.898868 s (4.10 veces). La tendencia es próxima a proporcional en esta campaña. Al pasar de 400 a 1600 de lado, hay 16 veces más celdas y la mediana pasa de 0.558601 a 7.898868 s (14.14 veces). El porcentaje quemado pasa de 36.5162% a 2.4513%: los terrenos no tienen la misma proporción de celdas recorriendo vecinos a lo largo de los pasos. Hay además efectos potenciales de caché y ruido; estos datos no identifican cuál domina.

En el diagnóstico `-O2`, humedad tiene mediana 3.695409 s y fuego 4.652535 s. La mediana de sus porcentajes por ejecución es 44.756% y 55.243%, respectivamente. Si se mejora solo una fase, la otra conserva casi la mitad del coste del bucle. Las ramas y el acceso a vecinos son candidatos estructurales de mejora, respaldados por el informe de vectorización; no se ha probado que el límite sea el ancho de banda de memoria.

En `-O0` se registraron 26.860217, 27.230527 y 79.618323 s; se conserva la ejecución larga y el rango completo. `-O3` tuvo 10.497823 a 13.753217 s. Se midió después de los otros grupos, sin aleatorizar el orden. Por eso las ganancias de la tabla son observaciones de esta campaña y no una garantía del efecto aislado de cada opción. En particular, `-O3` fue más lento que `-O2` aquí; no se puede atribuir esa diferencia a una transformación concreta sin una campaña más controlada. La mejor mediana observada fue `-O3 -march=native` (6.811265 s), con rangos próximos al de `-O2`.

La carga del anfitrión, frecuencia/temperatura y condiciones de virtualización son posibles fuentes de ruido, sin evidencia para asignar el valor largo a una de ellas. Para una conclusión definitiva de entrega, repetir en el entorno admitido por el profesorado y con el anfitrión sin otras cargas; la campaña actual se conserva íntegra. No se descartaron datos ni se multiplicaron repeticiones para obtener un resultado favorable.

## Separación de evidencia

| Categoría | Situación actual |
|---|---|
| Medido | 33 ejecuciones Linux/GCC Docker, cuatro gráficas, tiempos por fase, tamaño de Cell, recuentos y checksums. |
| Observado en compilación | Informes y ensamblador GCC: SIMD en inicialización; bucles principales sin vectorización en las opciones analizadas. |
| Estimado | Complejidad O(filas × columnas × pasos), memoria de una alternativa SoA y escenarios de ganancia/eficiencia paralela. |
| Pendiente del equipo | Medición de la versión de entrega, comunicación de tema/integrantes y memoria final. |
| Para prácticas posteriores | Implementación paralela, velocidad y eficiencia reales, y comparación medida de organizaciones de datos. |


## Refactorización modular: relación con las mediciones

El 30-09-2026 se separó el programa en cinco unidades de compilación y sus cabeceras, conservando reglas y salida en esa revisión. La presentación interactiva se cambió después, sin modificar el formato leído por la campaña. La fuente anterior se guarda exactamente en [fuente_medida.cpp](../resultados_docker/fuente_medida.cpp); su hash coincide con `sha256_main_cpp` del JSON histórico. CSV, SVG, entorno e informes anteriores se conservan sin modificarlos.

Una ejecución real de la referencia modular, con GCC `-O2 -ffp-contract=off`, tardó 6.989070 s y produjo checksum `94c0ea22a6a1fb35`, con los mismos recuentos y porcentajes de la campaña anterior. Es una comprobación de ejecución y equivalencia, no una nueva campaña ni evidencia de mejora de rendimiento. La comparación de salida pequeña pasó con Clang y GCC, y la vista interactiva de aquella refactorización coincidió byte a byte después de sustituir únicamente los números de los cronómetros. Esto no describe el panel coloreado añadido después.

`scripts/medir.py` registra ahora `sha256_fuentes` con todos los `.cpp` y `.h`; conserva `sha256_main_cpp` por compatibilidad del formato. La orden de compilación en Make incluye los cinco módulos. En nuevas campañas debe conservarse también la versión de Make/opciones y el entorno. Para no sobrescribir los datos previos: `make docker-measure DOCKER_RESULTS=resultados_docker_modular`.

Los informes de la primera revisión modular están en `resultados_docker/vectorizacion_modular/`. Generarlos no repite la campaña de tiempos.


## Scripts tras ordenar las carpetas

La campaña se ejecuta con `python3 scripts/medir.py --linux`, desde la raíz del proyecto. El script busca allí el Makefile y el ejecutable, y registra los hashes de `src/*.cpp` e `include/*.h` usando sus rutas relativas. Docker invoca el mismo script en `/app/scripts/medir.py`. Los CSV, SVG y JSON históricos conservan su contenido.


## Versión actual frente a la campaña histórica

El código actual usa carpetas, `using namespace std;` en sus `.cpp` y un panel y resumen final coloreados. La presentación humana se activa solo con `--visual` y salida a terminal; `--measure`, `--profile` y la salida redirigida siguen usando los campos que analiza el script. La animación muestra ms y KiB; el CSV conserva segundos y bytes. Los colores no forman parte del trabajo medido.

No se ha repetido la campaña completa de la versión actual. El caso visual 20 × 48 termina en 44 pasos con checksum `d7286f3b499e3e91`; verifica presentación y resultado, no rendimiento de la referencia grande. La comprobación modular de 6.989070 s también corresponde a una revisión anterior.

Los comandos anteriores guardan las campañas nuevas en carpetas separadas. Los valores por defecto de `make docker-measure` y `make docker-vectorization` apuntan a `resultados_docker/`; ejecutarlos sin cambiar `DOCKER_RESULTS` puede sobrescribir evidencia. Para entrega, conservar fuentes, Makefile, opciones, imagen y entorno junto a las mediciones de la versión que se entregue. Los comandos de ejecución y comprobación están en [uso](uso.md).

## Diagnóstico por fases

`--profile` ejecuta las mismas reglas y exactamente los pasos solicitados, sin animación. Acumula tiempos de `update_moisture` y `update_fire`, y presenta el resto del bucle por diferencia. Introduce lecturas adicionales del reloj: sus tiempos sirven para localizar el coste, no se mezclan con la comparación de compilaciones. `--profile --visual` se rechaza. `--measure` usa un cronómetro alrededor del bucle completo, sin lecturas adicionales por paso. Los dos modos ejecutan las mismas reglas, coeficientes, vecindad y terreno.

Fuera del cronómetro se añaden `cell_bytes`, `buffers_bytes`, porcentaje quemado sobre todas las celdas y porcentaje afectado sobre el bosque inicial. `scripts/check.py` es la comprobación breve del proyecto. Comprueba la equivalencia entre modos y la coherencia de los tiempos del diagnóstico; su ejecución local pasó. La campaña comprueba igualdad de checksum entre compilaciones, repeticiones y modos; usa `-ffp-contract=off` en todas las compilaciones para evitar cambios de redondeo debidos a operaciones fusionadas. No se usa `-ffast-math`.

## Autovectorización en GCC

### Informe histórico de la versión monolítica

Análisis real del 30-09-2026: GCC 13.3.0 en Ubuntu ARM64 dentro de Docker sobre Apple M2. Se usó la fuente conservada en [fuente_medida.cpp](../resultados_docker/fuente_medida.cpp), cuyo SHA-256 aparece en [el entorno de la campaña](../resultados_docker/mediciones_docker_entorno.json). Se analizaron `-O3` y `-O3 -march=native`, ambas con la opción común `-ffp-contract=off`.

- [Informe -O3](../resultados_docker/vectorizacion.txt) y [ensamblador -O3](../resultados_docker/main_O3.s).
- [Informe -O3 -march=native](../resultados_docker/vectorizacion_native.txt) y [ensamblador correspondiente](../resultados_docker/main_native.s).
- [Fuente numerada](../resultados_docker/main_numerado.txt).
- Ayuda real del compilador: [optimizers](../resultados_docker/optimizers.txt) y [target](../resultados_docker/target.txt).

Las referencias a `main.cpp` de este apartado corresponden al programa original; se mantienen los archivos de evidencia sin sobrescribirlos. La orden `make docker-vectorization` genera ahora informes independientes para la versión modular. En ambos casos, `-fverbose-asm` añade comentarios fuente para relacionar instrucciones y código.

### Qué ocurre en el trabajo medido

| Parte del código | Ubicación en main.cpp | Evidencia en ambos informes |
|---|---|---|
| Recorrido de humedad | 136 | `control flow in loop` |
| Recorrido de fuego | 152 | `unsupported data-type`, `multiple nested loops`, `control flow in loop` |
| Vecindad de fuego | 159 | `control flow in loop` |
| Copia de estado/combustible | 155 | `vectorization is not profitable` |

Extracto del informe `-O3`:

```text
main.cpp:136:48: missed: not vectorized: control flow in loop.
main.cpp:152:50: missed: not vectorized: multiple nested loops.
main.cpp:159:29: missed: not vectorized: control flow in loop.
```

El código correspondiente incluye la selección de estado y comprobaciones de límites/vecinos:

```cpp
if(current[i].state!=TREE && current[i].state!=FIRE) {
    next[i].moisture=current[i].moisture;
    continue;
}
// Vecinos: comprobar límites y consultar si el estado es FIRE.
```

La revisión del ensamblador se corresponde con recorridos escalares y ramas. No se ha encontrado vectorización de los bucles principales de humedad/fuego en estas dos compilaciones. Esto describe esta fuente, versión y arquitectura; no demuestra imposibilidad en otro compilador o tras otra organización de datos.

### Dónde sí existe SIMD

Los informes señalan los bucles de `std::mt19937` en `/usr/include/c++/13/bits/random.tcc`, líneas 404 y 412, como vectorizados con vectores de 16 bytes. El programa los usa desde `initialize`, al generar el terreno inicial.

```text
/usr/include/c++/13/bits/random.tcc:404:32: optimized: loop vectorized using 16 byte vectors
```

En `main_O3.s`, dentro de `mersenne_twister_engine::_M_gen_rand`, los comentarios relacionan las instrucciones con `random.tcc:406–409`. Hay, entre otras:

```asm
and  v0.16b, v0.16b, v6.16b
orr  v0.16b, v0.16b, v2.16b
ushr v0.2d, v0.2d, 1
eor  v0.16b, v1.16b, v0.16b
str  q0, [x1, -24]
```

Los operandos vectoriales `.16b` y `.2d`, junto al informe y al contexto del bucle, acreditan procesamiento SIMD de 128 bits. En esta biblioteca la implementación usa elementos internos `long unsigned int`; no se deduce el número de elementos de una instrucción únicamente del nombre `mt19937`.

GCC también informa de vectorización de bloques básicos en inicialización de parámetros, datos del foco y código de biblioteca. Son transformaciones SLP (agrupación de operaciones escalares de un bloque), distintas de vectorizar el recorrido del terreno.

La inicialización está fuera del cronómetro del bucle. Por ello esta evidencia positiva satisface el análisis de SIMD, pero no explica la ganancia medida en los pasos del incendio. No se introdujo un bucle artificial para obtener un aviso positivo.

### Contracción de coma flotante y conclusiones

La exploración inicial, conservada en `resultados_docker/exploracion_fma/`, mostraba `fmsub s0, s1, s2, s0` en la regla de humedad de la línea 146. Esa instrucción opera sobre un único `float`: es una operación fusionada escalar, no evidencia de paralelismo de datos SIMD. La opción común `-ffp-contract=off` evita esa contracción y la campaña definitiva produjo el mismo checksum en las cuatro compilaciones.

Las mejoras de tiempo pueden proceder de eliminar trabajo redundante, expandir bucles, ajustar instrucciones o ramas; los informes de vectorización no prueban cuál domina. No se midieron fallos de caché ni ancho de banda: atribuirles el resultado sería una hipótesis. La variación temporal observada también limita cualquier atribución causal.

Una futura comparación AoS/SoA o separar interior y bordes podría facilitar recorridos, pero se deja como propuesta hasta justificarla con medidas. El objetivo actual es estudiar y explicar la aplicación secuencial.

Fuentes sobre opciones e informes: [GCC 13.3, optimización](https://gcc.gnu.org/onlinedocs/gcc-13.3.0/gcc/Optimize-Options.html) y [GCC, informes del compilador](https://gcc.gnu.org/onlinedocs/gcc/Developer-Options.html). La evidencia concreta procede de los archivos generados enlazados arriba.


### Informe histórico de la primera versión modular

Se ejecutó `make docker-vectorization` con GCC 13.3 sobre el código reorganizado. Los nuevos archivos están en [vectorizacion_modular](../resultados_docker/vectorizacion_modular/), separados de los originales. Hay informes y ensamblador por módulo para `-O3` y `-O3 -march=native`, además de informes agregados y fuentes numeradas.

- [Informe agregado -O3](../resultados_docker/vectorizacion_modular/vectorizacion.txt).
- [Informe agregado -O3 -march=native](../resultados_docker/vectorizacion_modular/vectorizacion_native.txt).
- [Ensamblador de simulación -O3](../resultados_docker/vectorizacion_modular/simulacion_O3.s).
- [Fuente de simulación numerada](../resultados_docker/vectorizacion_modular/simulacion_numerado.txt).

En aquella revisión los bucles principales estaban en `simulacion.cpp` sin carpeta `src/`. Su informe señala:

```text
simulacion.cpp:50:45: missed: not vectorized: control flow in loop.
simulacion.cpp:84:45: missed: not vectorized: multiple nested loops.
simulacion.cpp:98:54: missed: not vectorized: control flow in loop.
```

Son las mismas clases de limitaciones estructurales observadas antes. Los bucles de `std::mt19937` siguen vectorizados con vectores de 16 bytes durante la inicialización. El traslado de archivos no permite atribuir un cambio de tiempo a SIMD; la ejecución de referencia modular se registra como comprobación, sin recalcular las ganancias de la campaña histórica.

La receta compila cada `.cpp` por separado, conserva su informe y luego agrega los informes. Esto evita perder mensajes al analizar varias unidades. Las cabeceras se copian al contenedor y participan en las dependencias de compilación. No se modifica el programa para forzar una vectorización positiva.

Los [hashes de la fuente y Makefile](../resultados_docker/vectorizacion_modular/fuentes.sha256) identifican los archivos de aquella revisión modular, anteriores al traslado a carpetas y a las estadísticas coloreadas; la [verificación de salida](../resultados_docker/vectorizacion_modular/verificacion_refactor.txt) queda conservada junto al informe.


### Rutas después de la reorganización

Las fuentes actuales están en `src/` y las cabeceras en `include/`. La receta añade `-Iinclude` y usa el nombre del módulo para los archivos de salida; por ejemplo, `src/simulacion.cpp` produce `simulacion_O3.s`. Los informes enlazados arriba son evidencia de revisiones anteriores, con las fuentes numeradas y hashes de aquellas revisiones. El uso de `using namespace std;` y los comentarios nuevos no modifican las reglas del modelo.


### Generar evidencia de la fuente actual

Desde `incendio/`, con Docker Desktop abierto:

```sh
make docker-vectorization DOCKER_RESULTS=resultados_docker_actual
```

La imagen se reconstruye antes del análisis. Los informes se guardan en `resultados_docker_actual/vectorizacion_modular/`; no sustituyen los archivos enlazados en este documento. En Linux con GCC puede usarse:

```sh
make vectorization CXX=g++ REPORT_DIR=resultados_vectorizacion_actual
```

Se analizan las cinco unidades de `src/`, incluidas las funciones de presentación. `draw_summary`, colores y formato están fuera del bucle medido: sus mensajes de optimización deben distinguirse de los de `update_moisture` y `update_fire`. Las numeraciones de los informes históricos no sirven para localizar líneas actuales.

La receta de carpetas se ejecutó en Docker en un directorio temporal antes del nuevo resumen visual. No hay un informe persistente de la revisión actual con colores. Generar informes no realiza una campaña de tiempos ni permite recalcular las ganancias históricas.
