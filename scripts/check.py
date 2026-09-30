#!/usr/bin/env python3
"""Una comprobación pequeña de invariantes y repetibilidad."""
import argparse
from pathlib import Path
import re
import subprocess

root = Path(__file__).resolve().parent.parent

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--compare', type=Path, help='Ejecutable anterior con el que comparar la salida')
reference = parser.parse_args().compare

def normalize_times(output):
    # Solo el valor de los cronómetros varía entre ejecuciones; el formato se compara.
    return re.sub(r'((?:tiempo_bucle|humedad|fuego|resto)_s=)[0-9.]+', r'\1<TIEMPO>', output)

def execute(args):
    result = subprocess.run(args, cwd=root, text=True, capture_output=True, timeout=20)
    if reference:
        previous = subprocess.run([str(reference.resolve()), *args[1:]], text=True,
                                  capture_output=True, timeout=20)
        assert result.returncode == previous.returncode, args
        assert normalize_times(result.stdout) == normalize_times(previous.stdout), args
        assert result.stderr == previous.stderr, args
    return result

base = ['./incendio', '--rows', '12', '--cols', '28', '--seed', '42', '--steps', '8', '--delay', '0', '--ascii', '--no-color']
def run(mode, steps='8'):
    args = base.copy()
    args[args.index('--steps')+1] = steps
    result = execute(args + [mode])
    assert result.returncode == 0, result.stderr
    output = result.stdout
    def get(pattern):
        match = re.search(pattern, output)
        assert match, pattern
        return match.group(1)
    counts = [int(get(rf'{state}=(\d+)')) for state in ('vegetación','fuego','quemado','agua','vacío')]
    assert sum(counts) == 12*28
    affected, initial = map(int, re.search(r'inicial_afectada=(\d+)/(\d+)', output).groups())
    assert affected == initial-counts[0]
    assert get(r'Iteraciones=(\d+)') == steps
    if mode == '--profile':
        total = float(get(r'tiempo_bucle_s=([0-9.]+)'))
        phases = [float(get(rf'{name}_s=([0-9.]+)')) for name in ('humedad', 'fuego', 'resto')]
        assert phases[0] > 0 and phases[1] > 0
        assert abs(sum(phases)-total) <= 0.000003
    humidity = re.search(r'Humedad media: ([0-9.]+|no aplica)', output)
    if humidity and humidity.group(1) != 'no aplica':
        assert 0 <= float(humidity.group(1)) <= 1
    return get(r'checksum=([0-9a-f]+)'), counts

first, counts = run('--measure')
assert run('--measure')[0] == first
assert run('--visual')[0] == first
assert run('--profile')[0] == first
assert counts[2] > 0 and counts[3] > 0 and counts[4] > 0
_, early = run('--measure', '1')
assert counts[3:] == early[3:]  # agua y claros no cambian
invalid = execute(base + ['--measure', '--fire-row', '6', '--fire-col', '20'])
assert invalid.returncode and 'foco' in invalid.stderr.lower()
if reference:
    assert execute(['./incendio', '--help']).returncode == 0
    assert execute(['./incendio', '--rows', '0']).returncode == 1
    assert execute(base + ['--profile', '--visual']).returncode == 1
    assert execute(['./incendio', '--visual', '--rows', '23', '--cols', '31', '--steps', '20',
                    '--delay', '0', '--seed', '7', '--wind-dir', 'NW', '--wind', '.9',
                    '--moisture', '.6']).returncode == 0
    print('OK: salida idéntica al ejecutable anterior, salvo los valores medidos de tiempo')
print('OK: estados, agua, claros, repetibilidad y equivalencia visual/medición/diagnóstico')
