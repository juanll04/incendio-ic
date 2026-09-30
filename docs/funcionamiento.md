# Funcionamiento y lectura del código

[Inicio](../README.md) · [Uso](uso.md) · [Funcionamiento](funcionamiento.md) · [Rendimiento](rendimiento.md) · [Paralelización](paralelizacion.md) · [Historial](historial.md)

El terreno es una cuadrícula de celdas. En cada paso calculamos cómo cambia su humedad y si el fuego se propaga. La versión actual ejecuta ambos cálculos de forma secuencial.

## Por dónde empezar

1. `include/modelo.h` define estados, `Cell`, `Grid` e índices; `include/opciones.h`, los parámetros.
2. `src/main.cpp` coordina `parse_options`, `run_simulation`, `execute_steps` y el resumen correspondiente al modo de salida.
3. `src/simulacion.cpp` contiene inicialización, humedad y fuego. Cada iteración lee `current`, escribe `next` y después intercambia ambos.
4. `src/estadisticas.cpp` calcula recuentos y checksum. `src/terminal.cpp` dibuja mapa, panel y `draw_summary`, y atiende teclado y señales.

Los cinco `.cpp` usan `using namespace std;`; las cabeceras conservan `std::`. Los auxiliares locales quedan en espacios de nombres anónimos. Los comentarios explican decisiones del modelo y de la terminal. Make compila cinco unidades y depende de las cabeceras con `-Iinclude`; Docker conserva `src/`, `include/` y `scripts/`. No se añadieron bibliotecas externas.

## Datos, terreno y parámetros

Cada `Cell` guarda `state` (estado), `fuel` (combustible entero) y `moisture` (humedad entre 0 y 1). Los estados son `TREE`, `FIRE`, `BURNT`, `WATER` y `EMPTY`: vegetación, ardiendo, quemado, agua y vacío. `current` y `next` son vectores unidimensionales; la celda `(r,c)` está en `r*cols+c`. Una fila se recorre de izquierda a derecha. El agua y el vacío mantienen sus valores; no se reserva memoria en cada paso.

`initialize` usa `std::mt19937` con `--seed` para crear claros (~12% fuera del lago), un lago elíptico, combustible entero entre 3 y 6 y humedad inicial en `clamp(moisture ± 0.08, 0, 1)`. Esas proporciones describen la receta aleatoria, no garantizan porcentajes exactos. El lago ocupa una elipse normalizada centrada en `(0.72,0.55)`, con radios `(0.105,0.16)`. El foco por defecto se fuerza a ser árbol con combustible 5 cuando no cae en agua; un foco explícito sobre agua o vacío causa error. Si las dimensiones son demasiado pequeñas y el foco por defecto cayera en agua, se comunica el problema.

| Parámetro | Rango y papel |
|---|---|
| `moisture` | [0,1], centro de la humedad inicial. |
| `wind` | [0,1], peso máximo de la dirección. 0 elimina efecto direccional. |
| `wind-dir` | Una de ocho direcciones de brújula, fija durante la ejecución. |
| `fuel` | 3–6 al inicio; se consume 1 por paso ardiendo. |
| 0.65 y 1.2 | Umbral base y sensibilidad a la humedad. |
| 0.006 y 0.012 | Secado basal y adicional por vecino ardiendo. |

No asignamos unidades físicas a estas magnitudes normalizadas. Una iteración es un paso del modelo, no un número de segundos reales.

## Una iteración

A (`update_moisture`) lee solo `current` y escribe la humedad de todas las celdas en `next`. Para árbol o fuego, si `b` de sus ocho vecinos arden:

`h_siguiente = max(0, h_actual − 0.006 − 0.012·b)`.

En agua, vacío y quemado copia `h_actual`. Agua y vacío parten de humedad 0; una celda quemada puede conservar la humedad que tenía al agotar su combustible. La humedad inicial está en [0,1] y la regla no la aumenta; por tanto siempre permanece en [0,1]. Cerca del fuego se seca más rápido.

B (`update_fire`) lee solo estado, combustible y humedad de `current`; escribe estado y combustible de todas las celdas en `next`. Un vecino ardiendo en `(r+dr,c+dc)` influye en la celda `(r,c)` siguiendo el vector `(-dc,-dr)`, desde el fuego hacia el destino. Sea `L=1` para vecinos horizontales/verticales y `L=1/√2` para diagonales. Sea `a` el producto escalar de las direcciones unitarias del viento y de ese vector. Su contribución es `L·(1 + wind·a)`. Se suman las contribuciones de los ocho vecinos que arden. Un árbol prende cuando `suma ≥ 0.65 + 1.2·h_actual`. El viento a favor aumenta la suma; más humedad sube el umbral. Como `wind≤1` y `a≥−1`, ninguna contribución es negativa.

Por ejemplo, con viento E de 0.6 y humedad 0.28, un único fuego directamente al oeste aporta `1·(1+0.6)=1.6`, frente al umbral `0.65+1.2·0.28=0.986`: prende. Un único fuego al este aporta 0.4 y no alcanza ese umbral. Una celda que ya arde pierde una unidad de combustible; al llegar a cero pasa a quemada. Agua, vacío y quemado jamás prenden; no hay regeneración.

Los ocho desplazamientos son `dr,dc ∈ {−1,0,1}` salvo `(0,0)`. En los bordes se descartan vecinos fuera de `0≤r<rows`, `0≤c<cols`: no hay conexión entre bordes opuestos. Así no se accede fuera de la matriz.

```text
current ──> update_moisture ──> next.moisture ──┐
       └──> update_fire ──────> next.state/fuel ─┤
                                                   └──> swap(current,next)
```

Las fases A y B leen el mismo buffer y escriben campos distintos del siguiente. B compara con la humedad actual, de modo que A y B podrían solaparse en otra práctica, siempre con barrera antes de `swap`. Ahora se ejecutan secuencialmente. `main` inicializa, mide el bucle con `std::chrono::steady_clock`, intercambia buffers y resume. `statistics`, `checksum` y `draw` se usan fuera del bucle de medición; `update_fire` devuelve el número de celdas que siguen ardiendo sin hacer un recuento completo adicional.

## Organización modular para el trabajo escolar

`include/modelo.h` define la estructura común `Cell` y el alias `Grid`. Se conserva el tipo y orden de los campos, el orden numérico de los estados y el almacenamiento de 8 bytes por celda en el entorno observado. `src/opciones.cpp` separa lectura de enteros/decimales, traducción del viento y validación final. Los mensajes y el orden de validación se conservan, incluida la posibilidad de proporcionar solo una coordenada del foco.

`src/simulacion.cpp` contiene las tres funciones de cálculo. No cambia el orden de extracción aleatoria ni de suma de vecinos, los coeficientes, las ramas de estado o el uso de humedad actual. `src/estadisticas.cpp` recorre el resultado y conserva el hash sobre campos, sin incluir relleno de la estructura.

`src/terminal.cpp` contiene presentación y entrada, y mantiene local la bandera de señal. El manejador solo marca interrupción; el flujo normal consulta esa bandera. `Terminal` guarda la configuración de entrada y el estado del cursor, y los restaura mediante su destructor cuando se abandona su ámbito, también por excepción. No se copia este objeto porque dos propietarios no deben restaurar la misma terminal. `Playback` contiene los datos que cambian con el teclado; `Options` conserva solo los parámetros iniciales.

`src/main.cpp` coordina la ejecución: `parse_options` → `run_simulation` → `execute_steps` → `draw_summary` (visual en terminal) o `print_summary` (resto de modos). La estructura `Execution`, privada de este archivo, agrupa pasos y tiempos sin añadir variables globales. La actualización es secuencial. El dibujo consulta el estado y no interviene en las reglas; el grafo muestra esas dependencias.

Empieza por `include/modelo.h` y `include/opciones.h`, continúa con `src/main.cpp` y consulta `src/simulacion.cpp` para las reglas. El dibujo está en `src/terminal.cpp` y los recuentos en `src/estadisticas.cpp`. Las referencias de la tabla usan funciones, en lugar de números de línea, para que añadir comentarios no las deje desactualizadas.

Los comentarios explican por qué el lago usa coordenadas normalizadas, cómo se consume el combustible y por qué el encendido consulta la humedad actual. También aclaran qué celdas entran en la media, cómo se representan las direcciones del viento y cómo se atiende el teclado durante la espera. Las expresiones y su orden se mantienen.


La comparación de la refactorización incluyó salida estándar, errores y código de retorno, excluyendo solo valores de cronómetros. Se verificó también el dibujo y los controles en terminales de varios tamaños. Posteriormente se cambió de forma intencionada la presentación interactiva; la comprobación de igualdad actual cubre la salida no interactiva. Las mediciones históricas no se reclasifican como mediciones de esta nueva organización.

## Presentación de estadísticas en terminal

`src/terminal.cpp` contiene `draw_summary`, el resumen visual final. Recibe los recuentos y tiempos de `main` y los presenta por secciones, con colores por estado, porcentajes con un decimal, milisegundos y memoria en KiB y bytes. La base de los porcentajes de estado es el total de celdas; la de bosque afectado es el bosque inicial. Afectado incluye árboles ardiendo y quemados.

`main` elige este resumen solo cuando se solicita visualización y la salida es una terminal. La salida de medición, diagnóstico o redirección conserva el formato usado por los scripts. El panel visual emplea los mismos colores y muestra humedad y viento como porcentajes. Las reglas, el orden de cálculo, los recuentos y el checksum no cambian.

## Memoria que usa la versión actual

En las ejecuciones observadas, `sizeof(Cell)=8`: 4 bytes de `float`, 1 de combustible, 1 de estado y 2 de relleno. El programa imprime el tamaño efectivo para no depender de una suposición sobre otra plataforma.

| Terreno | Celdas | Dos buffers de Cell (bytes) | MiB |
|---|---:|---:|---:|
| 400 × 400 | 160 000 | 2 560 000 | 2.4414 |
| 800 × 800 | 640 000 | 10 240 000 | 9.7656 |
| 1200 × 1200 | 1 440 000 | 23 040 000 | 21.9727 |
| 1600 × 1600 | 2 560 000 | 40 960 000 | 39.0625 |

`MiB = bytes / 2²⁰`. Son bytes de elementos de ambos buffers, sin metadatos de vectores, capacidad sobrante, pila, biblioteca, ejecutable ni memoria de Docker. No representan tráfico de memoria ni RSS. Cada buffer de referencia ocupa 19.53125 MiB; relacionar su tamaño con las cachés del procesador concreto requiere conocer esas cachés. El entorno virtualizado no acredita por sí solo el tamaño de la caché física del M2.


La organización actual es un array de estructuras (AoS): cada celda guarda juntos humedad, combustible y estado. La alternativa de arrays separados se estudia en [paralelización](paralelizacion.md).

## Dónde está cada tarea

| Tarea | Referencia en la versión modular |
|---|---|
| Inicialización | `src/simulacion.cpp`: `initialize` |
| Humedad | `src/simulacion.cpp`: `update_moisture` |
| Fuego | `src/simulacion.cpp`: `update_fire` |
| Estadísticas/checksum | `src/estadisticas.cpp`: `statistics` y `checksum` |
| Dependencia entre pasos | `src/main.cpp`: `execute_steps` y `current.swap(next)` |

Esta tabla localiza el código modular actual. Las líneas antiguas del informe de rendimiento/vectorización se consultan en `resultados_docker/fuente_medida.cpp`, copia exacta del programa medido anteriormente.

## Estadísticas y repetibilidad

Los recuentos y el checksum se calculan al terminar. El checksum incorpora el estado, el combustible y los bits de humedad de cada celda, sin incluir el relleno de `Cell`. Sirve para comparar resultados de ejecuciones con el mismo entorno y opciones. La distribución aleatoria puede producir terrenos diferentes entre bibliotecas estándar.

El detalle de qué se cronometra y la evidencia de igualdad entre compilaciones están en [rendimiento](rendimiento.md). El [grafo de tareas](figuras/dependencias.svg) y la propuesta de ejecución con varios trabajadores están en [paralelización](paralelizacion.md).
