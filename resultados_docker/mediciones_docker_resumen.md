# Resultados de mediciones_docker

> Campaña histórica de la fuente monolítica, con `-ffp-contract=off`; no mide la versión actual modular con colores. [Proyecto actual](../README.md) · [Procedencia y mediciones](../docs/rendimiento.md). Las cifras y tablas se conservan.

Entorno y fuente: [mediciones_docker_entorno.json](mediciones_docker_entorno.json).
[Gráficas SVG](mediciones_docker.svg) · [CSV completo](mediciones_docker.csv).

Mediana de tres ejecuciones; rango mínimo y máximo. Las filas de diagnóstico se separan de la medición habitual.

| Opciones | Modo | Terreno | Pasos | Mediana (s) | Rango (s) | Pasos con fuego | Quemado (% total) |
|---|---|---|---:|---:|---|---:|---:|
| -O2 | --measure | 400 × 400 | 160 | 0.558601 | 0.406227–0.580579 | 160 | 36.5162 |
| -O2 | --measure | 800 × 800 | 160 | 1.761835 | 1.728027–1.862614 | 160 | 9.5628 |
| -O2 | --measure | 1200 × 1200 | 160 | 4.280475 | 4.231625–4.541949 | 160 | 4.3147 |
| -O2 | --measure | 1600 × 1600 | 160 | 7.898868 | 7.028794–8.413422 | 160 | 2.4513 |
| -O2 | --measure | 1600 × 1600 | 40 | 1.926719 | 1.852116–2.160422 | 40 | 0.1232 |
| -O2 | --measure | 1600 × 1600 | 80 | 3.925022 | 3.858487–3.981139 | 80 | 0.5738 |
| -O2 | --measure | 1600 × 1600 | 120 | 5.881432 | 5.792179–6.073910 | 120 | 1.3498 |
| -O2 | --profile | 1600 × 1600 | 160 | 8.348025 | 7.754003–9.892627 | 160 | 2.4513 |
| -O0 | --measure | 1600 × 1600 | 160 | 27.230527 | 26.860217–79.618323 | 160 | 2.4513 |
| -O3 | --measure | 1600 × 1600 | 160 | 13.457733 | 10.497823–13.753217 | 160 | 2.4513 |
| -O3 -march=native | --measure | 1600 × 1600 | 160 | 6.811265 | 6.150856–7.060340 | 160 | 2.4513 |

## Ganancia de compilación respecto a -O0

| Opciones | Ganancia | Checksum de referencia |
|---|---:|---|
| -O2 | 3.447 | `94c0ea22a6a1fb35` |
| -O0 | 1.000 | `94c0ea22a6a1fb35` |
| -O3 | 2.023 | `94c0ea22a6a1fb35` |
| -O3 -march=native | 3.998 | `94c0ea22a6a1fb35` |

La ganancia anterior compara compilaciones secuenciales, no procesadores ni una implementación paralela.
Los checksums se comprueban entre todas las compilaciones, repeticiones y modos de esta campaña. Se usa -ffp-contract=off para evitar diferencias por operaciones fusionadas. No se presupone igualdad entre plataformas.

## Fases de la referencia (-O2)

| Fase | Mediana (s) | Porcentaje del bucle de diagnóstico¹ |
|---|---:|---:|
| humedad | 3.695409 | 44.756% |
| fuego | 4.652535 | 55.243% |
| resto | 0.000081 | 0.001% |

¹ Medianas independientes: no tienen por qué sumar exactamente 100%. Resto incluye sobrecoste de instrumentación.

`sizeof(Cell) = 8` bytes; dos buffers de la referencia: 40960000 bytes. No representa la memoria total del proceso.

## Límites

Frecuencia de CPU sin fijar; entorno virtualizado si se usa Docker. La aceptación del contenedor como entorno de entrega debe confirmarse con el profesorado.
