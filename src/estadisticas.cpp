#include "estadisticas.h"

#include <cstring>

using namespace std;

Stats statistics(const Grid& cells, size_t initial_trees) {
    Stats result;
    for (const Cell& cell : cells) {
        ++result.count[cell.state];
        if (cell.state == TREE) {
            result.mean += cell.moisture;
        }
    }
    // La media incluye solo la vegetación que aún no ha empezado a arder.
    if (result.count[TREE]) {
        result.mean /= result.count[TREE];
    }
    result.affected = initial_trees - result.count[TREE];
    return result;
}

uint64_t checksum(const Grid& cells) {
    uint64_t hash = 1469598103934665603ULL;
    for (const Cell& cell : cells) {
        // Se copian los bits del float: convertirlo a entero perdería información.
        uint32_t moisture_bits;
        static_assert(sizeof(moisture_bits) == sizeof(cell.moisture));
        memcpy(&moisture_bits, &cell.moisture, sizeof(moisture_bits));

        // El relleno de Cell no participa: solo estado, combustible y humedad.
        for (unsigned value : {static_cast<unsigned>(cell.state),
                               static_cast<unsigned>(cell.fuel), moisture_bits}) {
            for (int byte = 0; byte < 4; ++byte) {
                hash ^= (value >> (byte * 8)) & 255u;
                hash *= 1099511628211ULL;
            }
        }
    }
    return hash;
}
