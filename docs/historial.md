# Procedencia y desarrollo

[Inicio](../README.md) · [Uso](uso.md) · [Funcionamiento](funcionamiento.md) · [Rendimiento](rendimiento.md) · [Paralelización](paralelizacion.md) · [Historial](historial.md)

El código y la documentación se han preparado con asistencia de OpenAI Codex a partir de las instrucciones del usuario. El equipo debe comprender el programa y declarar esta ayuda según las normas de la asignatura.

## Qué exige la práctica

El PDF «Práctica 2 2026-27» pide una aplicación secuencial en C o C++, parámetros al inicio, coste del orden de segundos, análisis de tareas y dependencias, datos y memoria, variación de tamaño y trabajo, comparación de compilaciones en Linux/GCC, evidencia de autovectorización si existe, propuesta de arquitectura paralela y los cuatro ejercicios de los grifos. Pide código, Makefile y memoria con procedencia y bibliografía. También requiere comunicar el tema y equipo al profesorado, y respetar las normas de originalidad. Esa gestión corresponde al equipo.

## Decisiones del proyecto

| Decisión | Motivo |
|---|---|
| Autómata de cinco estados con ocho vecinos | Permite ver propagación y trabajo por celda. |
| Humedad normalizada y combustible entero | Reglas pequeñas que podemos explicar; sin pretensión física. |
| Viento global constante | Aísla el efecto de dirección sin meteorología adicional. |
| Semilla solo al inicio | Repetición exacta de un mismo caso en un mismo ejecutable. |
| Dos buffers y fases A/B separadas | El recorrido no modifica los datos que lee y muestra paralelismo funcional. |
| Vectores contiguos de `Cell` | Filas consecutivas y reserva única antes del bucle. |
| Animación ANSI con alternativa ASCII y cadencia regulable | Ver y detener cada fotograma sin dependencias. |
| 1600 × 1600, 160 pasos como referencia | Dio 4.3–4.5 s locales con Clang `-O2` y 7.58 s en el calentamiento Linux/GCC Docker; se mantiene; la campaña definitiva desactiva la contracción de coma flotante. |

No hemos implementado hebras, OpenMP, MPI, CUDA ni una versión paralela. No se modelan pendientes, regeneración ni tiempo atmosférico cambiante. El fuego se extingue al agotarse el combustible. En la versión didáctica, la humedad solo seca; el agua y los claros quedan fijos. Las reglas elegidas no equivalen a leyes físicas. La presentación visual nunca interviene en la actualización.

## Cómo mantenemos el proyecto

Documentamos los cambios y sus comprobaciones en este historial. Usamos humanizer para revisar la redacción sin alterar cifras, comandos ni términos del modelo. Si un error se repite dos veces, consultamos de tres a cinco soluciones antes de aplicar la más eficiente. Para comprobar el programa priorizamos ejecuciones y resultados visibles, y reutilizamos `scripts/check.py` cuando corresponde.

Los resultados históricos conservan sus datos y la fuente con la que se obtuvieron. Cada campaña nueva se guarda en otra carpeta y registra el entorno y los hashes de sus fuentes. Las instrucciones actuales están en [uso](uso.md) y [rendimiento](rendimiento.md).

## Cómo leer las entradas anteriores

Las entradas del 30 de septiembre describen el proyecto en aquel momento. Conservan los nombres antiguos de archivos y las decisiones sobre `memoria.md` para explicar el desarrollo. Desde el 1 de octubre se utiliza la distribución de documentos del [README](../README.md); `memoria.md` se ha eliminado por petición del usuario.

## Decisiones de la ampliación del 30-09-2026

- Linux/GCC mediante Docker ARM64; no emular x86 en el M2. Base Ubuntu fijada por digest, cuota de 2 CPU y límite de 2 GiB; guardar entorno, compilador e imagen. Confirmar con el profesorado que este entorno es válido para la entrega.
- Conservar los resultados locales anteriores. Guardar la nueva campaña en `resultados_docker/` y mantener separado el diagnóstico `--profile` de los tiempos habituales.
- Cuatro tamaños y cuatro cantidades de pasos, tres repeticiones y un calentamiento por compilación. SVG fuera de la terminal, con mediana y rango mínimo y máximo; CSV con cada ejecución.
- Analizar memoria, sincronización y estimaciones teóricas sin implementar hebras ni cambiar el modelo para favorecer vectorización.
- Reutilizar la comprobación existente y verificar mediante ejecuciones reales y gráficas. No añadir una batería de tests.
- Documentar las modificaciones en estos Markdown y en el resumen de resultados. No editar `memoria.md`: el usuario la lleva por separado.

- Se fija `-ffp-contract=off` como opción común y se conserva la exploración anterior; la comparación final exige el mismo checksum entre las cuatro compilaciones.
- Los rangos completos se muestran aunque haya ejecuciones muy largas. Las ganancias de compilación se describen como observaciones con dispersión, no como conclusiones causales definitivas.

## Refactorización didáctica del 30-09-2026

Para que otros estudiantes puedan seguir el código, se usan módulos por responsabilidad, nombres descriptivos, bloques explícitos y comentarios sobre invariantes. La refactorización conservó implementación secuencial, argumentos, errores, formato, símbolos, controles y resultados. El cambio posterior autorizado de estadísticas modifica la presentación interactiva; mantiene las reglas y la salida no interactiva. Los tiempos siguen siendo medidas reales y no se sustituyen por cifras fijas para simular una salida idéntica.

Se mantiene la declaración de asistencia de Codex y la obligación de comprender el código. Los datos medidos anteriormente se conservan como históricos con su fuente exacta. Las cabeceras no añaden bibliotecas externas. `memoria.md` sigue fuera del alcance, como indicó el usuario.

## Carpetas y comentarios del 30-09-2026

Se usa `using namespace std;` en los cinco archivos de implementación, como pidió el usuario. Las cabeceras conservan los nombres con `std::` para no importar el espacio de nombres en los archivos que las incluyan. El código se guarda en `src/` e `include/`, los scripts en `scripts/` y los Markdown de apoyo en `docs/`. README, Makefile, Dockerfile y `memoria.md` permanecen en la raíz.

Los comentarios explican decisiones que ayudan a seguir el modelo. Se revisó su redacción con humanizer, manteniendo términos, fórmulas y mensajes del programa. Los datos históricos y la memoria se conservan intactos.

## Estadísticas más legibles

El resumen interactivo agrupa los datos y usa colores ANSI, respetando `--no-color`. `--ascii` conserva una barra sin caracteres gráficos. La humedad sin árboles se explica como «sin vegetación». Se mantiene el formato anterior para medición, diagnóstico y salida redirigida, de modo que los scripts continúan leyendo los mismos campos.

## 30-09-2026: Enunciado y ubicación

Leí el PDF «Práctica 2 2026-27»: confirma aplicación secuencial, medición y propuesta posterior de paralelización. No encontré código previo de incendio. A petición del usuario, moví el proyecto nuevo de `la carpeta de la asignatura` a `una carpeta temporal fuera de la asignatura`, fuera de esa carpeta sincronizable. Pendiente: que el equipo acuerde el tema con el profesorado y registre sus integrantes.

## 30-09-2026: Modelo y primera animación

Implementé los dos buffers y las fases `update_moisture` y `update_fire` para separar lecturas y escrituras. La primera demo de 12 × 28 mostró avance durante varios pasos, árboles quemados detrás y agua intacta. En un mapa pequeño el foco por defecto cayó en un claro: corregí solo el foco automático, forzándolo a árbol, y mantuve el error para coordenadas explícitas inválidas. Ajusté también el alto del panel para terminales estrechas. La demo Unicode con colores mostró los cinco símbolos y el recorte indicado. `make visual` acabó al extinguirse el fuego en el paso 44: 778 celdas quemadas, 52 de agua intactas y 130 claros; no quedó vegetación en ese mapa pequeño.

## 30-09-2026: Referencia y comprobación

La prueba local de 1600 × 1600 × 80 tardó 2.348898 s; amplié la referencia a 160 pasos, que tardó 4.347110 s en esa ejecución. `check.py` confirmó suma de estados, bosque afectado, presencia de quemado/agua/claros, repetibilidad y el mismo checksum con visualización activada y desactivada. La campaña local breve de tres repeticiones por configuración quedó en `mediciones_locales.csv` y la gráfica en `mediciones_locales.svg`. Falta toda comparación exigida en Linux/GCC.

## 30-09-2026: Cadencia y limpieza de pantalla

El usuario observó restos de porcentajes anteriores al terminar la animación. La causa era redibujar desde el inicio sin borrar el final de líneas que se acortaban; ahora se limpia cada línea y el espacio sobrante de la pantalla. Subí la espera inicial de 80 a 180 ms y añadí `+`, `-`, espacio, `n` y `q` para controlar la animación. En una terminal comprobé pausa, avance, cambio de cadencia y salida con `q`; el resumen mostró las iteraciones ejecutadas y el cursor volvió a verse. Pendiente: que el equipo pruebe la presentación en su terminal concreta.

## 30-09-2026: Ubicación definitiva

A petición del usuario, trasladé el proyecto de `una carpeta temporal fuera de la asignatura` a `la carpeta `incendio/` de la asignatura`. Comprobé que el destino estaba libre y que `Makefile` y `main.cpp` llegaron a la nueva carpeta. No cambié el programa.

## 30-09-2026: Plan de análisis, Docker y diagnóstico

El usuario aprobó completar las mejoras del análisis dejando la memoria por separado y pidió documentar todos los cambios. Se mantiene `memoria.md` intacta. Archivos modificados: `main.cpp`, `check.py`, `medir.py`, `Makefile`, `README.md`, `Modelo_y_codigo.md`, `Mediciones.md`, `Normas_y_decisiones.md` y este diario. Archivos nuevos: `Dockerfile`, `.dockerignore`, `dependencias.svg`, resultados de campaña y análisis `Vectorizacion.md`.

`main.cpp` incorpora `--profile`, incompatible con animación, que acumula tiempos de humedad/fuego y obtiene el resto por diferencia. La medición habitual elimina una lectura de reloj innecesaria por paso. La salida incorpora tamaño efectivo de `Cell`, bytes de ambos buffers y porcentajes quemado/afectado. No se modificaron reglas, terreno ni orden de vecinos. GCC señaló una indentación ambigua en el dibujo: se separó el salto de línea de su `if`, sin cambiar comportamiento. La comprobación existente pasó en macOS y ahora cubre también coherencia de tiempos y checksum del diagnóstico; no se creó otra batería de tests.

Docker se bloqueó en dos consultas. Siguiendo la instrucción del usuario, se consultó documentación oficial y se valoraron cuatro vías: iniciar el motor, revisar contexto/variables/socket, reiniciar Desktop y revisar registros/diagnóstico. El contexto `desktop-linux` y socket eran correctos. El reinicio normal agotó su tiempo de espera; se cerraron los procesos bloqueados (TERM y KILL para el backend que permanecía), se volvió a abrir Docker y el motor respondió. No se borraron imágenes, volúmenes ni se restableció Docker de fábrica. Fuentes: [diagnóstico del daemon](https://docs.docker.com/engine/daemon/troubleshoot/), [solución de problemas Desktop](https://docs.docker.com/desktop/troubleshoot-and-support/troubleshoot/) y [reinicio CLI](https://docs.docker.com/reference/cli/docker/desktop/restart/).

La imagen usa Ubuntu 24.04 ARM64 fijada por digest, GCC 13.3 y herramientas estándar. El contenedor tiene cuota equivalente a 2 CPU y límite de 2 GiB; solo monta la carpeta de resultados. `docker-build`, `docker-measure` y `docker-vectorization` se añadieron a Make. Se registran imagen, versión Docker, arquitectura, distribución, cuota, memoria y SHA-256 del código. La compilación Linux no sobrescribe el binario de macOS. Las advertencias de instalación no interactiva de paquetes se resolvieron fijando `DEBIAN_FRONTEND` solo durante la instalación.

`medir.py` reutiliza la biblioteca estándar y genera CSV incremental, JSON de entorno, SVG de cuatro gráficas y resumen Markdown. Incluye cuatro tamaños, cuatro cantidades de pasos, cuatro compilaciones, diagnóstico de fases, calentamiento por compilación y tres repeticiones. Usa ejes proporcionales al número de celdas/pasos y barras mínimo y máximo. Admite parámetros para recalibrar la referencia. La referencia de 1600 × 1600 × 160 se mantuvo después de un calentamiento inicial Linux/GCC de 7.580868 s. Las gráficas se revisan visualmente fuera de la terminal.

## 30-09-2026: Coma flotante y trazabilidad

La primera campaña mostró checksum `94c0ea22a6a1fb35` en `-O0` y `d1ea3854e9271e2d` en compilaciones optimizadas, con recuentos de estados iguales. El checksum incluye los bits de humedad. El ensamblador de GCC mostró `fmsub` en la actualización de humedad y otras operaciones fusionadas. Una ejecución real `-O2 -ffp-contract=off` recuperó exactamente el checksum de `-O0`. Se añadió esta opción común al Makefile, a las cuatro compilaciones de la campaña y al análisis de vectorización para comparar el mismo resultado bit a bit. La campaña comprueba igualdad entre compilaciones, modos y repeticiones, sin asumir equivalencia entre bibliotecas estándar distintas.

Se conservaron íntegros los resultados iniciales en `resultados_docker/exploracion_fma/`, junto con una explicación y la salida de diagnóstico. La campaña se repitió por este cambio de opciones, no como batería de tests. Los históricos de Clang también se conservan. Fuentes: [GCC, contracción de coma flotante y optimizaciones](https://gcc.gnu.org/onlinedocs/gcc/Optimize-Options.html).

El análisis de memoria documenta 8 bytes por celda y 39.0625 MiB de elementos para los dos buffers de referencia. Arrays separados requerirían 25% menos bytes de elementos, sin afirmar mejora medida. Se concretó una propuesta futura por bloques de filas, reducción de fuego, barrera antes del intercambio y después de actualizar los punteros. Se añadieron escenarios teóricos de Amdahl, claramente separados de ganancias medidas de compilación, y un grafo SVG independiente de la memoria.

## 30-09-2026: Resultados y revisión final

La campaña principal completó 33 ejecuciones medidas y cuatro calentamientos, con `-ffp-contract=off`. En la referencia, las medianas fueron 27.230527 s (`-O0`), 7.898868 s (`-O2`), 13.457733 s (`-O3`) y 6.811265 s (`-O3 -march=native`). Los cuatro checksums de referencia coinciden: `94c0ea22a6a1fb35`; también se verificó repetibilidad por caso y equivalencia medición/diagnóstico durante la campaña. Se mantuvieron todos los valores: hubo una repetición `-O0` de 79.618323 s y dispersión apreciable en otros casos. Las conclusiones documentan el orden fijo y la falta de control de frecuencia/carga; no atribuyen causalmente las diferencias a SIMD o caché.

El diagnóstico situó las fases alrededor de 44.756% humedad y 55.243% fuego. Se añadió el límite teórico de aproximadamente 1.79 al solapar solo esas dos fases bajo supuestos ideales, junto a escenarios de Amdahl para reparto de datos. No se implementó paralelismo.

`make docker-vectorization` produjo informes y ensamblador para `-O3` y `-O3 -march=native`, con la opción común. Los dos informes indican ausencia de vectorización en los bucles principales por control de flujo, bucles anidados y tipos/coste. Sí hay SIMD de 128 bits en la generación de números de `std::mt19937`, durante inicialización, fuera del tiempo de bucle. `Vectorizacion.md` enlaza los archivos y muestra mensajes e instrucciones reales. Se registró además el anfitrión y recursos visibles en `anfitrion.txt`.

Se recompiló el binario local con las opciones nuevas y se ejecutó directamente la vista ASCII 12 × 28 × 8: 64 celdas con fuego, 17 quemadas, 17 de agua y 53 claros; la presentación siguió funcionando. Se revisaron visualmente las cuatro gráficas y el grafo completos mediante rasterización. Quick Look recortaba su miniatura e ImageMagick no interpretaba completamente sus estilos; se usó CairoSVG con Python ARM64 para la revisión, sin añadir dependencias al proyecto ni al generador de gráficas. Se sustituyeron flechas Unicode dentro de las etiquetas del grafo por texto para evitar glifos ausentes en el renderizador; las flechas del propio grafo son vectores.

La memoria mantiene exactamente su SHA-256 anterior: `f17019e3cd842a409f24249d57ffd2403bbf5cb1cec119ddf33bea8a93989f2d`. Pendiente del equipo: confirmar Docker como entorno permitido, repetir en el entorno de la asignatura si corresponde, gestionar tema/integrantes y elaborar la memoria por separado. La instrumentación, campaña, gráficos y análisis solicitados quedan implementados y documentados.

## 30-09-2026: Refactorización modular y legibilidad

El usuario pidió reorganizar `main.cpp` en varios archivos, con un estilo comprensible para estudiantes de tercero, comentarios útiles y la misma funcionalidad/salida. Se aplicó el criterio de refactorización segura: guardar antes el ejecutable y la fuente, reorganizar responsabilidades y comparar después. La fuente exacta de la campaña anterior se conserva en `resultados_docker/fuente_medida.cpp`; no se cambian los CSV/SVG ni se presenta su rendimiento como medido en la versión nueva.

Se añadieron `modelo.h`, `opciones.h/.cpp`, `simulacion.h/.cpp`, `estadisticas.h/.cpp` y `terminal.h/.cpp`. `main.cpp` pasó de 344 a 151 líneas y conserva coordinación, cronometraje y resumen, con funciones separadas para ejecutar pasos y presentar resultados. Se quitaron abreviaturas de variables, instrucciones múltiples en una línea y `using namespace std`. Los comentarios explican orden aleatorio, lectura del buffer actual, coordenadas con signo, dirección del viento, bits del checksum y restauración de entrada/cursor.

`Options` contiene parámetros iniciales; `Playback` reúne pausa, cadencia y teclado. La clase `Terminal` posee configuración de entrada y cursor, restaura ambos al salir de su ámbito y no se puede copiar. La bandera de interrupción queda privada en `terminal.cpp`. Se preservaron tipos y orden de campos de `Cell`, identificadores de estados, llamadas al generador, orden de operaciones y vecinos, mensajes, orden de validación, animación y criterio de parada.

Make compila cinco unidades y depende también de todas las cabeceras. Docker copia `.cpp` y `.h`; `.dockerignore` los admite. La receta de vectorización genera informes y ensamblador por módulo y los agrega, con resultados en una carpeta distinta de la histórica. `medir.py` añade hashes de todas las fuentes/cabeceras sin romper el campo anterior de `main.cpp`. `check.py` incorpora una opción `--compare` para usar un ejecutable anterior; se reutiliza la misma comprobación, sin añadir otro conjunto de tests.

La comparación local con Apple Clang pasó para medición, diagnóstico, mapas ASCII/Unicode, ayuda, foco inválido, dimensiones inválidas y combinación inválida de modos. Compara stdout, stderr y retorno; solo sustituye valores de cronómetros, cuya variación es inevitable. En pseudoterminales de 140 × 32, 50 × 20 y 100 × 40, la salida ANSI coincide byte a byte normalizando esos tiempos; también se conservaron pausa, +/-, avance n, salida q e interrupción SIGINT. El cursor volvió a mostrarse. La comprobación de atributos completos de la pseudoterminal detectó en ambos ejecutables el mismo bit de estado añadido por el sistema; no era una diferencia introducida por la refactorización. Los atributos de entrada observados tras cada ejecución fueron iguales entre las dos versiones.

Docker/GCC compiló sin advertencias y pasó la misma comparación contra la fuente anterior compilada en ese entorno. La referencia 1600 × 1600 × 160 ejecutada directamente produjo checksum `94c0ea22a6a1fb35`, idénticos recuentos/porcentajes y tiempo 6.989070 s. Ese tiempo es una sola ejecución, no una campaña nueva. Los informes SIMD modulares conservan la conclusión: humedad/fuego sin vectorización de sus bucles principales y SIMD en `std::mt19937` durante inicialización.

Se actualizaron README, Modelo_y_codigo, Mediciones, Vectorizacion, Normas_y_decisiones y este diario para explicar módulos, lectura del código, comparación de salida y procedencia de los datos históricos. La memoria mantiene su SHA-256 anterior y no se editó. No se implementaron funciones nuevas de simulación ni paralelismo.

La evidencia de salida y los hashes de las fuentes modulares se conservan en `resultados_docker/vectorizacion_modular/verificacion_refactor.txt` y `fuentes.sha256`. La copia histórica se contrastó con el hash de la campaña original y coincide.


## 30-09-2026: Carpetas, biblioteca estándar y comentarios

El usuario pidió `using namespace std;`, ordenar los archivos en carpetas y añadir comentarios con humanizer. Se movieron las cinco implementaciones a `src/`, las cinco cabeceras a `include/`, los dos scripts a `scripts/` y los cinco Markdown de apoyo y el grafo SVG a `docs/`. README, Makefile, Dockerfile, resultados históricos y memoria permanecen en la raíz del proyecto.

Cada `.cpp` usa `using namespace std;` y nombres de la biblioteca sin el prefijo. Las cabeceras conservan `std::`. Se añadieron comentarios sobre la elipse del lago, pérdida de humedad, consumo de combustible, humedad usada para encender, coordenadas del viento, media de vegetación, tiempos visuales y disposición y espera de la terminal. Humanizer se aplicó a la redacción de los comentarios y las explicaciones nuevas, conservando los términos del modelo.

Make añade `-Iinclude`, compila las rutas de `src/` y ejecuta `scripts/check.py`. La receta de vectorización toma el nombre del módulo sin su carpeta para crear y agregar los informes. Docker copia las tres carpetas; `.dockerignore` admite sus fuentes y el comando de inicio invoca `scripts/medir.py`. Ambos scripts encuentran la raíz desde su ubicación; las nuevas campañas registran hashes con rutas relativas de fuentes y cabeceras.

Se actualizaron README, Modelo_y_codigo, Mediciones, Vectorizacion y Normas_y_decisiones, además de este diario. Los enlaces de README y docs apuntan a sus destinos después del traslado. La tabla de localización del modelo usa funciones en vez de números de línea. Los informes anteriores siguen asociados a sus fuentes numeradas y hashes originales.

La compilación local terminó sin avisos. La única comprobación existente, ejecutada con `--compare` frente al binario guardado antes de estos cambios, confirmó los mismos mensajes, códigos de retorno, mapas y resultados, excluyendo solo los valores de cronómetros. Se ejecutó directamente el visual de 8 × 18 durante cuatro pasos en macOS y Linux/GCC Docker: ambos mostraron el mismo mapa, recuentos y checksum `1420c76a6e4428e`. La imagen Docker se reconstruyó y la receta de vectorización se ejecutó dentro del contenedor en una carpeta temporal, sin sobrescribir informes históricos. El script de medición muestra su ayuda desde la nueva ubicación; no se repitió la campaña completa.

Se verificó el SHA-256 de `memoria.md`: conserva exactamente su contenido. No se editaron los CSV, SVG, JSON ni fuentes de campañas históricas.


## 30-09-2026: Colores y resumen visual de estadísticas

El usuario pidió una presentación más agradable de las estadísticas de la animación. Se modificaron `src/terminal.cpp`, `include/terminal.h` y `src/main.cpp`. El panel interactivo incorpora colores por estado y porcentajes con un decimal, y explica la ausencia de humedad media cuando no queda vegetación. Se comparte la tabla de colores entre el mapa y las estadísticas.

Se añadió `draw_summary` al módulo de terminal. Presenta motivo de finalización, parámetros, estado final alineado, barra de bosque afectado, humedad restante, tiempo de cálculo en ms, tamaño de celda, memoria en KiB/bytes y checksum. El bosque afectado incluye ardiendo y quemado; los porcentajes de estado usan el total de celdas. `main` llama a este resumen solo en visualización con salida a terminal y evita repetir las líneas finales de extinción o tecla q. La medición, el diagnóstico y la salida redirigida conservan el formato anterior.

La compilación local terminó sin avisos. Se ejecutó directamente en terminal el caso de 20 × 48 y 70 pasos: terminó en el paso 44, con 778 quemados, 52 celdas de agua y 130 vacías; checksum `d7286f3b499e3e91`, igual al ejemplo del usuario. Se revisaron el resumen coloreado y una ejecución corta con `--ascii --no-color`. La comprobación existente con `--compare` confirmó que la salida no interactiva coincide con el ejecutable guardado antes, salvo los valores de tiempo. No se añadieron tests ni se repitieron campañas de rendimiento.

Se documentó el cambio en README, Modelo_y_codigo, Normas_y_decisiones y este diario. La memoria y los resultados históricos permanecen intactos.


## 30-09-2026: Documentación del estado actual

Se revisaron README y los cinco documentos de apoyo para describir carpetas, uso de la biblioteca estándar, estadísticas visuales y comandos Docker actuales. Se aclaró que la igualdad de salida de la refactorización precede al cambio autorizado del panel y resumen interactivos. La medición, el diagnóstico y la salida redirigida conservan el formato usado por los scripts.

README y la guía manual incluyen `make docker-build` seguido de `docker run -it` para animación. Las nuevas campañas e informes usan otra carpeta mediante DOCKER_RESULTS. Los documentos de mediciones y SIMD distinguen la fuente monolítica medida, la primera revisión modular y la versión actual. Se añadieron notas de procedencia a los tres Markdown de resultados; sus tablas y cifras no cambian.

La explicación de humedad aclara que las celdas quemadas pueden conservar su valor. Las decisiones reconocen la extinción por agotamiento del combustible. Se añadieron AGENTS.md, Repo_Current_State.md, Manual_Verification_Guide.md, Tickets.md y Prompt_Playbook.md para recoger reglas, estado, comprobaciones y la siguiente tarea de entrega. No se ejecutó esa tarea pendiente.

Se aplicó humanizer a la prosa: se quitaron énfasis decorativos y repeticiones, se ajustaron frases largas y se conservaron términos, cifras, comandos y enlaces. El diario mantiene sus entradas históricas, con una nota que remite al estado vigente. Se comprobaron destinos de enlaces locales y las rutas de los comandos contra Makefile y Dockerfile. Los hashes de código, configuración, datos y memoria se conservan. Esta revisión no recompila ni repite campañas.


## 30-09-2026: Documentación propia del proyecto

A petición del usuario, se eliminaron los cinco Markdown de organización añadidos por reflect-project-md: AGENTS.md, Repo_Current_State.md, Manual_Verification_Guide.md, Tickets.md y Prompt_Playbook.md. La documentación del proyecto en castellano queda en README, Modelo_y_codigo, Mediciones, Vectorizacion, Normas_y_decisiones y este diario, junto a los documentos de procedencia de los resultados históricos.

Se actualizaron sus enlaces. README concentra instrucciones de ejecución y comprobación; Normas_y_decisiones conserva las reglas de trabajo del usuario. Los nombres de los archivos eliminados aparecen en las entradas históricas del diario para explicar lo sucedido, sin enlaces a archivos inexistentes. La memoria, el código y los datos medidos no cambian.


## 30-09-2026: Guía PDF para estudiar la práctica y el código

Se creó output/pdf/Guia_practica_2_IC_paso_a_paso.pdf a petición del usuario. Se leyó el enunciado completo de la Práctica 2 y se contrastó la explicación con las fuentes C++ y los Markdown. La guía tiene 13 páginas con ejemplos de datos, doble buffer, secado, propagación, lectura de archivos, estadísticas, Docker, mediciones y propuesta de paralelización. También resuelve los cuatro ejercicios de los grifos y reúne preguntas de repaso.

Se aplicó humanizer a las explicaciones y se distinguieron ejemplos ilustrativos de resultados medidos. Los tiempos de la campaña archivada se muestran como históricos. Se generó el PDF con ReportLab en un entorno temporal, sin añadir dependencias al proyecto. Se renderizaron y revisaron las 13 páginas; se ajustó el tamaño del código y se comprobaron márgenes, tablas y numeración en la versión final. Los archivos temporales de generación y revisión se retiraron. Se añadió el enlace en README. No se modificaron el código, las mediciones ni memoria.md.


## 01-10-2026: Reorganización de la documentación

Se sustituyeron los cinco documentos anteriores por `uso.md`, `funcionamiento.md`, `rendimiento.md`, `paralelizacion.md` e `historial.md`. README queda como entrada breve con requisitos, arranque y enlaces. Los informes SIMD se reúnen con las mediciones; las dependencias y estimaciones paralelas tienen su propio documento. El grafo se trasladó a `docs/figuras/dependencias.svg`.

Se actualizaron los enlaces de la documentación, de los resúmenes de resultados y las referencias de la guía PDF. Su página de fuentes se volvió a renderizar para comprobar la disposición del texto. Las entradas antiguas mantienen los nombres que usaban entonces. Se revisó la prosa con humanizer y se eliminó `memoria.md` por petición expresa del usuario. El código, la configuración y los datos de las campañas conservan su contenido.

Se comprobaron los 91 enlaces locales y los hashes de los archivos conservados; las tablas de resultados mantienen las mismas filas. Al tratarse de cambios de documentación, no se repite la campaña ni se añaden tests del programa.


## 01-10-2026: Preparación para GitHub

Se eliminó la guía PDF por petición del usuario y se retiraron su enlace y su carpeta del README. Las entradas anteriores conservan el registro de su creación y revisión. Se añadió `.gitignore` para excluir el ejecutable compilado, los archivos de macOS y los temporales de compilación y Python. Se sustituyeron las rutas personales del historial por referencias a las carpetas del proyecto.

El repositorio se prepara desde `incendio/`, con el código, la documentación y la evidencia de mediciones. Los apuntes y enunciados de la asignatura quedan fuera. Se revisó la redacción con humanizer y se comprobaron los enlaces locales.

Se creó el repositorio privado [juanll04/incendio-ic](https://github.com/juanll04/incendio-ic) y se subió el proyecto en la rama `main`. El ejecutable local y los archivos de macOS quedan excluidos por `.gitignore`; los CSV se conservaron byte a byte en Git.

## 01-10-2026: Captura de la animación en GitHub

Se retiró del README el fragmento sobre la confirmación del entorno y los requisitos de Python indicado por el usuario. La descripción identifica directamente las mediciones Linux/GCC en Docker ARM64 sobre M2. El documento de rendimiento utiliza la misma descripción del entorno.

Se añadió `docs/figuras/animacion.png` y se insertó en README con una ruta relativa para mostrarla en GitHub. La imagen recoge el paso 18 de una ejecución real en pseudoterminal de 20 × 48 celdas y semilla 42, pausada con el teclado. Se renderizó el contenido ANSI de ese fotograma y se comprobó visualmente que aparecen el mapa completo y las estadísticas. Los recuentos son 126 celdas ardiendo y 306 quemadas. Se aplicó humanizer a las explicaciones nuevas. El código y los datos de mediciones se conservan.

## 01-10-2026: Acceso público al repositorio

Por petición del usuario, se cambió la visibilidad de [juanll04/incendio-ic](https://github.com/juanll04/incendio-ic) de privada a pública. Se comprobó sin autenticación que el repositorio y la imagen de la animación son accesibles. Los compañeros pueden consultar el proyecto con el enlace, sin invitación.

## 01-10-2026: GIF de la propagación

Se sustituyó la captura estática del README por `docs/figuras/animacion.gif`. La grabación recoge los 45 fotogramas de una ejecución real, desde el paso 0 hasta la extinción en el paso 44, con terreno de 20 × 48 y semilla 42. Se conservaron los colores y las estadísticas de la salida ANSI. El GIF se reproduce en bucle y mantiene más tiempo los fotogramas inicial y final.

Se revisaron visualmente el avance del fuego y el estado final, y se ajustó el ancho para mostrar el panel completo. Se eliminó el PNG sustituido y se actualizó el enlace del README. El código y los datos medidos se conservan.

## 04-10-2026: Presentación del proyecto y lenguajes en GitHub

Se reorganizó el README para mostrar primero la animación y explicar el modelo, los controles, la ejecución local y Docker, las mediciones y la organización del código. Se retiró el párrafo final sobre la campaña archivada; la procedencia de cada medición sigue explicada en el documento de rendimiento y en sus informes. Se revisó la redacción con humanizer.

Se añadió `.gitattributes` para identificar los resultados y las figuras como documentación, y los archivos `.s` como ensamblador generado por GCC. GitHub los excluye del cálculo de lenguajes; los informes se conservan para consultar la evidencia SIMD. No se cambió su contenido ni se reclasificó el ensamblador como C++.

## 04-10-2026: Declaración del uso de IA

Se añadió al README una sección de uso de IA. Identifica GPT-6 Astra como apoyo para la planificación y preparación de instrucciones, y GPT-6.1 Sol para implementación, refactorización, documentación y procesos de compilación, medición y comprobación con Docker. La declaración reconoce la generación de código y texto y distingue esa asistencia de las decisiones e indicaciones del equipo. También recoge su responsabilidad de comprender el programa y explicar las conclusiones. Se revisó la redacción con humanizer.

## 04-10-2026: Función de Python en el análisis

Se añadió al README una explicación del papel de cada lenguaje. C++ ejecuta la simulación y mide el bucle; Python automatiza las compilaciones y repeticiones, procesa los tiempos, genera tablas y gráficas y comprueba las salidas. Se aclaró que los porcentajes de GitHub representan el tamaño del código de cada lenguaje y que la evidencia generada se excluye mediante `.gitattributes`. Se contrastó la explicación con `scripts/medir.py` y `scripts/check.py` y se revisó la redacción con humanizer.
