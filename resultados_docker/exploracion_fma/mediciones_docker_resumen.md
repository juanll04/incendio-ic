# Resultados de mediciones_docker

> Exploración histórica anterior a `-ffp-contract=off`, con diferencias de checksum entre compilaciones. [Explicación](README.md) · [Proyecto actual](../../README.md). Las cifras y tablas se conservan.

Entorno y fuente: [mediciones_docker_entorno.json](mediciones_docker_entorno.json).
[Gráficas SVG](mediciones_docker.svg) · [CSV completo](mediciones_docker.csv).

Mediana de tres ejecuciones; rango mínimo y máximo. Las filas de diagnóstico se separan de la medición habitual.

| Opciones | Modo | Terreno | Pasos | Mediana (s) | Rango (s) | Pasos con fuego | Quemado (% total) |
|---|---|---|---:|---:|---|---:|---:|
| -O2 | --measure | 400 × 400 | 160 | 0.391061 | 0.387135–0.394855 | 160 | 36.5162 |
| -O2 | --measure | 800 × 800 | 160 | 1.764401 | 1.761695–1.870919 | 160 | 9.5628 |
| -O2 | --measure | 1200 × 1200 | 160 | 4.087313 | 4.040600–4.221804 | 160 | 4.3147 |
| -O2 | --measure | 1600 × 1600 | 160 | 7.188373 | 7.076931–7.457293 | 160 | 2.4513 |
| -O2 | --measure | 1600 × 1600 | 40 | 1.763933 | 1.737338–1.788879 | 40 | 0.1232 |
| -O2 | --measure | 1600 × 1600 | 80 | 3.575827 | 3.519594–3.885518 | 80 | 0.5738 |
| -O2 | --measure | 1600 × 1600 | 120 | 5.431065 | 5.412155–6.138674 | 120 | 1.3498 |
| -O2 | --profile | 1600 × 1600 | 160 | 7.059746 | 6.953601–7.258621 | 160 | 2.4513 |
| -O0 | --measure | 1600 × 1600 | 160 | 26.675211 | 26.603878–26.951469 | 160 | 2.4513 |
| -O3 | --measure | 1600 × 1600 | 160 | 4.826638 | 4.779418–4.939200 | 160 | 2.4513 |
| -O3 -march=native | --measure | 1600 × 1600 | 160 | 4.441377 | 4.310896–4.493793 | 160 | 2.4513 |

## Ganancia de compilación respecto a -O0

| Opciones | Ganancia | Checksum de referencia |
|---|---:|---|
| -O2 | 3.711 | `d1ea3854e9271e2d` |
| -O0 | 1.000 | `94c0ea22a6a1fb35` |
| -O3 | 5.527 | `d1ea3854e9271e2d` |
| -O3 -march=native | 6.006 | `d1ea3854e9271e2d` |

La ganancia anterior compara compilaciones secuenciales, no procesadores ni una implementación paralela.
Los checksums se comprueban entre repeticiones y entre medición/diagnóstico con las mismas opciones. Diferencias entre compilaciones requieren revisar coma flotante; no se presupone igualdad entre plataformas.

## Fases de la referencia (-O2)

| Fase | Mediana (s) | Porcentaje del bucle de diagnóstico¹ |
|---|---:|---:|
| humedad | 3.161545 | 44.931% |
| fuego | 3.898147 | 55.068% |
| resto | 0.000054 | 0.001% |

¹ Medianas independientes: no tienen por qué sumar exactamente 100%. Resto incluye sobrecoste de instrumentación.

`sizeof(Cell) = 8` bytes; dos buffers de la referencia: 40960000 bytes. No representa la memoria total del proceso.

## Límites

Frecuencia de CPU sin fijar; entorno virtualizado si se usa Docker. La aceptación del contenedor como entorno de entrega debe confirmarse con el profesorado.
