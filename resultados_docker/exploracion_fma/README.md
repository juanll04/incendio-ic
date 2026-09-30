# Exploración inicial con contracción de coma flotante

Campaña real del 30-09-2026 anterior a fijar `-ffp-contract=off`. Se conserva para trazabilidad; la campaña definitiva se encuentra un nivel por encima.

`-O0` dio checksum `94c0ea22a6a1fb35`, mientras que `-O2`, `-O3` y `-O3 -march=native` dieron `d1ea3854e9271e2d`. Los recuentos finales coincidieron, pero el checksum también incluye los bits de humedad. En `main_O3.s`, línea 146 de C++, se observa `fmsub s0, s1, s2, s0`: una operación fusionada con redondeo diferente del producto y resta separados.

Una ejecución de diagnóstico de `-O2 -ffp-contract=off` produjo `94c0ea22a6a1fb35`, igual que `-O0`. Se adoptó esa opción en todas las compilaciones y se repitió la campaña. No se modificaron las reglas del modelo.


La fuente actual está modularizada en `src/` e `include/` y mantiene `-ffp-contract=off`. Los colores y el resumen interactivo son cambios posteriores. Esta carpeta conserva una exploración previa y no es una campaña de la versión actual. Consulta [Mediciones](../../docs/rendimiento.md) y el [README del proyecto](../../README.md) para ejecutar una nueva campaña sin sobrescribirla.
