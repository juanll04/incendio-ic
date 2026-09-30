#!/usr/bin/env python3
"""Mediciones reales, CSV incremental y gráficas SVG; solo biblioteca estándar."""
import argparse
import csv
import hashlib
from html import escape
import json
import os
from pathlib import Path
import platform
import re
import shlex
from statistics import median
import subprocess
from datetime import datetime, timezone

root = Path(__file__).resolve().parent.parent
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--linux', action='store_true')
parser.add_argument('--output-dir', type=Path, default=root)
parser.add_argument('--name', default=None)
parser.add_argument('--reference-size', type=int, default=1600)
parser.add_argument('--reference-steps', type=int, default=160)
args = parser.parse_args()
if args.reference_size < 4 or args.reference_steps < 4:
    parser.error('La referencia necesita al menos 4 celdas de lado y 4 pasos')
if args.name and not re.fullmatch(r'[A-Za-z0-9_-]+', args.name):
    parser.error('--name debe ser un nombre simple, sin rutas')
version = subprocess.run(['g++', '-v'], text=True, capture_output=True, check=True).stderr
if args.linux and (platform.system() != 'Linux' or 'gcc version' not in version.lower()):
    parser.error('--linux exige Linux y g++ de GCC')
name = args.name or ('mediciones_linux' if args.linux else 'mediciones_locales')
outdir = args.output_dir.resolve()
outdir.mkdir(parents=True, exist_ok=True)
compiler = subprocess.check_output(['g++', '--version'], text=True).splitlines()[0]

def read_if_exists(path):
    p = Path(path)
    return p.read_text().strip() if p.exists() else 'no disponible'

cpu = platform.machine()
if platform.system() == 'Linux':
    cpu = next((line.split(':', 1)[1].strip() for line in Path('/proc/cpuinfo').read_text().splitlines() if line.startswith('model name')), cpu)
else:
    cpu = subprocess.run(['sysctl', '-n', 'machdep.cpu.brand_string'], text=True, capture_output=True).stdout.strip() or cpu
metadata = {
    'fecha_utc': datetime.now(timezone.utc).isoformat(), 'sistema': platform.platform(),
    'arquitectura': platform.machine(), 'procesador_visible': cpu, 'compilador': compiler,
    'cpu_logicas_visibles': os.cpu_count(), 'cpu_max_cgroup': read_if_exists('/sys/fs/cgroup/cpu.max'),
    'memoria_max_cgroup': read_if_exists('/sys/fs/cgroup/memory.max'),
    'kernel': platform.release(), 'distribucion': read_if_exists('/etc/os-release'),
    'sha256_main_cpp': hashlib.sha256((root / 'src/main.cpp').read_bytes()).hexdigest(),
    'sha256_fuentes': {str(path.relative_to(root)): hashlib.sha256(path.read_bytes()).hexdigest()
                      for path in sorted([*(root / 'src').glob('*.cpp'), *(root / 'include').glob('*.h')])},
    'referencia': [args.reference_size, args.reference_size, args.reference_steps],
    'repeticiones': 3, 'opcion_comun': '-ffp-contract=off', 'calentamiento': 'una ejecución completa por compilación',
    'nota': 'Cronometra el bucle C++; no incluye arranque de Docker, compilación ni salida. No se fija frecuencia de CPU.'
}
(outdir / f'{name}_entorno.json').write_text(json.dumps(metadata, ensure_ascii=False, indent=2)+'\n')
size, steps = args.reference_size, args.reference_steps
sizes = [size*i//4 for i in range(1, 5)]
step_counts = [steps*i//4 for i in range(1, 5)]
configs = list(dict.fromkeys([(n, steps) for n in sizes]+[(size, n) for n in step_counts]))
flags = ['-O2', '-O0', '-O3', '-O3 -march=native'] if args.linux else ['-O2']
rows = []
checksums = {}
fields = ['sistema', 'procesador', 'compilador', 'opciones', 'modo', 'filas', 'columnas', 'iteraciones',
          'semilla', 'humedad', 'direccion', 'viento', 'repeticion', 'segundos', 'pasos_con_fuego',
          'quemado_pct_total', 'afectado_pct_bosque', 'cell_bytes', 'buffers_bytes',
          'humedad_s', 'fuego_s', 'resto_s', 'checksum', 'compilacion', 'ejecucion']

def execute(n, iterations, mode):
    command = ['./incendio', mode, '--rows', str(n), '--cols', str(n), '--steps', str(iterations),
               '--seed', '42', '--moisture', '.28', '--wind-dir', 'E', '--wind', '.6']
    output = subprocess.check_output(command, cwd=root, text=True)
    def value(pattern):
        match = re.search(pattern, output)
        if not match:
            raise ValueError(f'No se pudo leer {pattern}: {output}')
        return match.group(1)
    if int(value(r'Iteraciones=(\d+)')) != iterations:
        raise ValueError('Ejecución incompleta; no se guarda como medición')
    result = dict(zip(['segundos', 'pasos_con_fuego', 'quemado_pct_total', 'afectado_pct_bosque',
                      'cell_bytes', 'buffers_bytes', 'checksum'],
                     [value(r'tiempo_bucle_s=([0-9.]+)'), value(r'con fuego al terminar=(\d+)'),
                      value(r'quemado_pct_total=([0-9.]+)'), value(r'afectado_pct_bosque=([0-9.]+)'),
                      value(r'cell_bytes=(\d+)'), value(r'buffers_bytes=([0-9.]+)'), value(r'checksum=([0-9a-f]+)')]))
    for phase in ('humedad', 'fuego', 'resto'):
        result[f'{phase}_s'] = value(rf'{phase}_s=([0-9.]+)') if mode == '--profile' else ''
    return result, command

with (outdir / f'{name}.csv').open('w', newline='') as stream:
    writer = csv.DictWriter(stream, fieldnames=fields)
    writer.writeheader()
    for flag in flags:
        build = ['make', '-B', 'CXX=g++', f'CXXFLAGS={flag} -ffp-contract=off -std=c++17 -Wall -Wextra -pedantic']
        subprocess.run(build, cwd=root, check=True)
        warmup, _ = execute(size, steps, '--measure')
        print(f'Calentamiento {flag}: {warmup["segundos"]} s', flush=True)
        if flag == '-O2' and not 2 <= float(warmup['segundos']) <= 60:
            print('AVISO: reconsiderar la referencia con --reference-size/--reference-steps antes de la entrega.', flush=True)
        modes = ['--measure', '--profile'] if flag == '-O2' else ['--measure']
        for mode in modes:
            for n, iterations in (configs if mode == '--measure' and flag == '-O2' else [(size, steps)]):
                for repeat in range(1, 4):
                    result, command = execute(n, iterations, mode)
                    key = (n, iterations)
                    previous = checksums.setdefault(key, result['checksum'])
                    if previous != result['checksum']:
                        raise ValueError(f'Checksum diferente entre compilaciones, modos o repeticiones: {key}')
                    row = dict(sistema=platform.system(), procesador=cpu, compilador=compiler, opciones=flag,
                               modo=mode, filas=n, columnas=n, iteraciones=iterations, semilla=42,
                               humedad=.28, direccion='E', viento=.6, repeticion=repeat,
                               compilacion=shlex.join(build), ejecucion=shlex.join(command), **result)
                    rows.append(row)
                    writer.writerow(row)
                    stream.flush()
                    print(f'{flag} {mode} {n}x{n} x {iterations}, {repeat}/3: {result["segundos"]} s', flush=True)
    # Dejar el ejecutable con la compilación de referencia, también al ejecutar fuera de Docker.
    subprocess.run(['make', '-B', 'CXX=g++', 'CXXFLAGS=-O2 -ffp-contract=off -std=c++17 -Wall -Wextra -pedantic'], cwd=root, check=True)

# SVG autónomo: coordenadas proporcionales y barras mínimo-máximo.
parts = ['<svg xmlns="http://www.w3.org/2000/svg" width="1000" height="1530" viewBox="0 0 1000 1530">',
         '<rect width="100%" height="100%" fill="#f8fafc"/>',
         '<style>text{font:15px sans-serif;fill:#25344a}.title{font-size:20px;font-weight:600}.grid{stroke:#dce3ec}.series{stroke:#cf583c;stroke-width:3;fill:none}.range{stroke:#25344a;stroke-width:2}</style>']

def label(x, y, content, css='', anchor='start'):
    parts.append(f'<text x="{x}" y="{y}" class="{css}" text-anchor="{anchor}">{escape(str(content))}</text>')

label(40, 35, f'{name}: {platform.machine()} · {compiler}', 'title')
label(40, 63, '3 repeticiones · mediana y rango mínimo–máximo · bucle sin animación · -ffp-contract=off')

def selected(flag, n=size, iterations=steps, mode='--measure'):
    return [r for r in rows if r['opciones']==flag and r['filas']==n and r['iteraciones']==iterations and r['modo']==mode]

def chart(top, title, subtitle, groups, xlabel, bars=False, numeric=False):
    # Cada grupo: valor x, etiqueta, tiempos en segundos.
    label(55, top, title, 'title')
    label(55, top+26, subtitle)
    x0, x1, y0, y1 = 100, 935, top+58, top+258
    ymax = max(max(values) for _, _, values in groups)*1.22
    for i in range(5):
        value = ymax*i/4
        y = y1-(y1-y0)*i/4
        parts.append(f'<path class="grid" d="M{x0} {y}H{x1}"/>')
        label(x0-12, y+5, f'{value:.2f}', anchor='end')
    label(55, y0-10, 's')
    points = []
    for j, (x, text, values) in enumerate(groups):
        px = x0+45+(x1-x0-90)*((x-groups[0][0])/(groups[-1][0]-groups[0][0]) if numeric else j/max(1,len(groups)-1))
        med = median(values)
        py = y1-med/ymax*(y1-y0)
        lo, hi = y1-min(values)/ymax*(y1-y0), y1-max(values)/ymax*(y1-y0)
        if bars:
            parts.append(f'<rect x="{px-48}" y="{py}" width="96" height="{y1-py}" fill="#cf583c" rx="3"/>')
        else:
            points.append(f'{px},{py}')
            parts.append(f'<circle cx="{px}" cy="{py}" r="5" fill="#cf583c"/>')
        parts.append(f'<path class="range" d="M{px} {hi}V{lo} M{px-7} {hi}H{px+7} M{px-7} {lo}H{px+7}"/>')
        label(px, hi-12, f'{med:.3f}' if med >= .001 else f'{med:.2g}', anchor='middle')
        label(px, y1+25, text, anchor='middle')
    if points:
        parts.append(f'<polyline class="series" points="{" ".join(points)}"/>')
    label((x0+x1)/2, y1+55, xlabel, anchor='middle')

chart(110, '1. Tamaño del terreno', f'-O2 · {steps} iteraciones · humedad 0.28 · viento E 0.6',
      [(n*n, f'{n*n/1e6:g}', [float(r['segundos']) for r in selected('-O2', n)]) for n in sizes],
      'Millones de celdas (filas × columnas)', numeric=True)
chart(460, '2. Cantidad de iteraciones', f'-O2 · terreno {size} × {size}',
      [(n, n, [float(r['segundos']) for r in selected('-O2', iterations=n)]) for n in step_counts],
      'Iteraciones', numeric=True)
chart(810, '3. Opciones de compilación', f'Mismo terreno {size} × {size} · {steps} iteraciones · medición habitual',
      [(j, flag, [float(r['segundos']) for r in selected(flag)]) for j, flag in enumerate(flags)],
      'Opciones GCC' if args.linux else 'Opciones Clang (datos locales)', bars=True)
profile = selected('-O2', mode='--profile')
chart(1160, '4. Diagnóstico por fases', f'-O2 · referencia · cronometraje adicional; separado de las comparaciones anteriores',
      [(j, text, [float(r[f'{phase}_s']) for r in profile]) for j, (phase, text) in enumerate(
          [('humedad', 'Humedad'), ('fuego', 'Fuego'), ('resto', 'Resto del bucle')])],
      'Fases; resto incluye intercambio, contadores e instrumentación', bars=True)
parts.append('</svg>')
(outdir / f'{name}.svg').write_text('\n'.join(parts)+'\n')

summary = [f'# Resultados de {name}', '', f'Entorno y fuente: [{name}_entorno.json]({name}_entorno.json).',
           f'[Gráficas SVG]({name}.svg) · [CSV completo]({name}.csv).', '',
           'Mediana de tres ejecuciones; rango mínimo–máximo. Las filas de diagnóstico se separan de la medición habitual.', '',
           '| Opciones | Modo | Terreno | Pasos | Mediana (s) | Rango (s) | Pasos con fuego | Quemado (% total) |',
           '|---|---|---|---:|---:|---|---:|---:|']
for flag, mode, n, iterations in dict.fromkeys((r['opciones'],r['modo'],r['filas'],r['iteraciones']) for r in rows):
    group = selected(flag,n,iterations,mode)
    values = [float(r['segundos']) for r in group]
    summary.append(f'| {flag} | {mode} | {n} × {n} | {iterations} | {median(values):.6f} | {min(values):.6f}–{max(values):.6f} | {group[0]["pasos_con_fuego"]} | {float(group[0]["quemado_pct_total"]):.4f} |')
reference_flag = '-O0' if args.linux else '-O2'
reference_time = median(float(r['segundos']) for r in selected(reference_flag))
summary += ['', f'## Ganancia de compilación respecto a {reference_flag}', '', '| Opciones | Ganancia | Checksum de referencia |', '|---|---:|---|']
for flag in flags:
    group = selected(flag)
    summary.append(f'| {flag} | {reference_time/median(float(r["segundos"]) for r in group):.3f} | `{group[0]["checksum"]}` |')
summary += ['', 'La ganancia anterior compara compilaciones secuenciales, no procesadores ni una implementación paralela.',
            'Los checksums se comprueban entre todas las compilaciones, repeticiones y modos de esta campaña. Se usa -ffp-contract=off para evitar diferencias por operaciones fusionadas. No se presupone igualdad entre plataformas.',
            '', '## Fases de la referencia (-O2)', '', '| Fase | Mediana (s) | Porcentaje del bucle de diagnóstico¹ |', '|---|---:|---:|']
for phase in ('humedad','fuego','resto'):
    summary.append(f'| {phase} | {median(float(r[f"{phase}_s"]) for r in profile):.6f} | {median(100*float(r[f"{phase}_s"])/float(r["segundos"]) for r in profile):.3f}% |')
summary += ['', '¹ Medianas independientes: no tienen por qué sumar exactamente 100%. Resto incluye sobrecoste de instrumentación.',
            '', f'`sizeof(Cell) = {profile[0]["cell_bytes"]}` bytes; dos buffers de la referencia: {float(profile[0]["buffers_bytes"]):.0f} bytes. No representa la memoria total del proceso.',
            '', '## Límites', '', 'Frecuencia de CPU sin fijar; entorno virtualizado si se usa Docker. La aceptación del contenedor como entorno de entrega debe confirmarse con el profesorado.']
(outdir / f'{name}_resumen.md').write_text('\n'.join(summary)+'\n')
print(f'Resultados: {outdir / (name+".svg")}', flush=True)
