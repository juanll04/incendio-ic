	.arch armv8-a+crc+lse+rcpc+rdma+dotprod+aes+sha3+fp16fml+sb+i8mm+bf16+flagm+pauth
	.file	"estadisticas.cpp"
// GNU C++17 (Ubuntu 13.3.0-6ubuntu2~24.04.1) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -march=armv8-a+crc+lse+rcpc+rdma+dotprod+aes+sha3+fp16fml+sb+i8mm+bf16+flagm+pauth -O3 -std=c++17 -ffp-contract=off -fopt-info-vec-optimized-missed -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.p2align 4,,11
	.global	_Z10statisticsRKSt6vectorI4CellSaIS0_EEm
	.type	_Z10statisticsRKSt6vectorI4CellSaIS0_EEm, %function
_Z10statisticsRKSt6vectorI4CellSaIS0_EEm:
.LFB1284:
	.cfi_startproc
// /usr/include/c++/13/bits/stl_iterator.h:1077:       : _M_current(__i) { }
	ldp	x0, x5, [x0]	// _25, _21, MEM[(const struct Cell * const &)cells_19(D)]
// estadisticas.cpp:6:     Stats result;
	str	xzr, [x8, 48]	//, <retval>
	movi	v0.4s, 0	// tmp112
	stp	q0, q0, [x8]	// tmp112, tmp112, <retval>
	str	q0, [x8, 32]	// tmp112, <retval>
// estadisticas.cpp:7:     for (const Cell& cell : cells) {
	cmp	x5, x0	// _21, _25
	beq	.L2		//,
	movi	d1, #0	// R_mean_lsm.34
	mov	w6, 0	// R_mean_lsm_flag.35,
	.p2align 3,,7
.L4:
// estadisticas.cpp:8:         ++result.count[cell.state];
	ldrb	w4, [x0, 5]	//, MEM[(unsigned char *)_27 + 5B]
// estadisticas.cpp:8:         ++result.count[cell.state];
	ldr	x2, [x8, x4, lsl 3]	// <retval>.count[_2], <retval>.count[_2]
	add	x2, x2, 1	// tmp116, <retval>.count[_2],
	str	x2, [x8, x4, lsl 3]	// tmp116, <retval>.count[_2]
// estadisticas.cpp:9:         if (cell.state == TREE) {
	cmp	w4, 1	// _1,
	bne	.L3		//,
// estadisticas.cpp:10:             result.mean += cell.moisture;
	ldr	s0, [x0]	// MEM[(float *)_27], MEM[(float *)_27]
	mov	w6, w4	// R_mean_lsm_flag.35, _1
	fcvt	d0, s0	// tmp118, MEM[(float *)_27]
// estadisticas.cpp:10:             result.mean += cell.moisture;
	fadd	d1, d1, d0	// R_mean_lsm.34, R_mean_lsm.34, tmp118
.L3:
// estadisticas.cpp:7:     for (const Cell& cell : cells) {
	add	x0, x0, 8	// ivtmp.41, ivtmp.41,
	cmp	x5, x0	// _21, ivtmp.41
	bne	.L4		//,
// estadisticas.cpp:13:     if (result.count[TREE]) {
	ldr	x0, [x8, 8]	// pretmp_53, <retval>.count[1]
	cbz	w6, .L11	// R_mean_lsm_flag.35,
// estadisticas.cpp:16:     result.affected = initial_trees - result.count[TREE];
	sub	x1, x1, x0	// initial_trees, initial_trees, pretmp_53
	str	d1, [x8, 40]	// R_mean_lsm.34, <retval>.mean
.L6:
// estadisticas.cpp:13:     if (result.count[TREE]) {
	cbz	x0, .L2	// pretmp_53,
// estadisticas.cpp:14:         result.mean /= result.count[TREE];
	ucvtf	d0, x0	// tmp121, pretmp_53
	fdiv	d1, d1, d0	// tmp122, R_mean_lsm.34, tmp121
	str	d1, [x8, 40]	// tmp122, <retval>.mean
.L2:
// estadisticas.cpp:16:     result.affected = initial_trees - result.count[TREE];
	str	x1, [x8, 48]	// initial_trees, <retval>.affected
// estadisticas.cpp:18: }
	ret	
	.p2align 2,,3
.L11:
// estadisticas.cpp:16:     result.affected = initial_trees - result.count[TREE];
	movi	d1, #0	// R_mean_lsm.34
	sub	x1, x1, x0	// initial_trees, initial_trees, pretmp_53
	b	.L6		//
	.cfi_endproc
.LFE1284:
	.size	_Z10statisticsRKSt6vectorI4CellSaIS0_EEm, .-_Z10statisticsRKSt6vectorI4CellSaIS0_EEm
	.align	2
	.p2align 4,,11
	.global	_Z8checksumRKSt6vectorI4CellSaIS0_EE
	.type	_Z8checksumRKSt6vectorI4CellSaIS0_EE, %function
_Z8checksumRKSt6vectorI4CellSaIS0_EE:
.LFB1288:
	.cfi_startproc
// /usr/include/c++/13/bits/stl_iterator.h:1077:       : _M_current(__i) { }
	ldp	x1, x9, [x0]	// _20, _24, MEM[(const struct Cell * const &)cells_16(D)]
// estadisticas.cpp:21:     std::uint64_t hash = 1469598103934665603ULL;
	mov	x0, 899	// <retval>,
	movk	x0, 0x739d, lsl 16	// <retval>,,
	movk	x0, 0xfb0, lsl 32	// <retval>,,
	movk	x0, 0x1465, lsl 48	// <retval>,,
// estadisticas.cpp:22:     for (const Cell& cell : cells) {
	cmp	x1, x9	// _20, _24
	beq	.L12		//,
// estadisticas.cpp:33:                 hash *= 1099511628211ULL;
	mov	x8, 48273	// tmp126,
	mov	x7, 435	// tmp131,
	movk	x8, 0x5635, lsl 16	// tmp126,,
	movk	x7, 0x100, lsl 32	// tmp131,,
	movk	x8, 0xac08, lsl 32	// tmp126,,
	movk	x8, 0x9ffa, lsl 48	// tmp126,,
	.p2align 3,,7
.L14:
// estadisticas.cpp:32:                 hash ^= (value >> (byte * 8)) & 255u;
	ldrb	w2, [x1, 5]	// MEM[(unsigned char *)_154 + 5B], MEM[(unsigned char *)_154 + 5B]
// estadisticas.cpp:22:     for (const Cell& cell : cells) {
	add	x1, x1, 8	// ivtmp.52, ivtmp.52,
// estadisticas.cpp:32:                 hash ^= (value >> (byte * 8)) & 255u;
	ldrb	w5, [x1, -4]	// MEM[(unsigned char *)_154 + 4B], MEM[(unsigned char *)_154 + 4B]
// estadisticas.cpp:32:                 hash ^= (value >> (byte * 8)) & 255u;
	eor	x2, x2, x0	// hash, MEM[(unsigned char *)_154 + 5B], <retval>
// /usr/include/aarch64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	ldr	w0, [x1, -8]	//, MEM <unsigned int> [(char * {ref-all})_154]
// estadisticas.cpp:32:                 hash ^= (value >> (byte * 8)) & 255u;
	and	x4, x0, 255	// tmp130, _27
// estadisticas.cpp:33:                 hash *= 1099511628211ULL;
	mul	x6, x2, x8	// hash, hash, tmp126
// estadisticas.cpp:32:                 hash ^= (value >> (byte * 8)) & 255u;
	ubfx	x3, x0, 8, 8	// tmp134, _27,,
	ubfx	x2, x0, 16, 8	// tmp138, _27,,
	lsr	w0, w0, 24	// tmp141, _27,
// estadisticas.cpp:32:                 hash ^= (value >> (byte * 8)) & 255u;
	eor	x5, x5, x6	// hash, MEM[(unsigned char *)_154 + 4B], hash
// estadisticas.cpp:33:                 hash *= 1099511628211ULL;
	mul	x5, x5, x8	// hash, hash, tmp126
// estadisticas.cpp:32:                 hash ^= (value >> (byte * 8)) & 255u;
	eor	x4, x4, x5	// hash, tmp130, hash
// estadisticas.cpp:33:                 hash *= 1099511628211ULL;
	mul	x4, x4, x7	// hash, hash, tmp131
// estadisticas.cpp:32:                 hash ^= (value >> (byte * 8)) & 255u;
	eor	x3, x3, x4	// hash, tmp134, hash
// estadisticas.cpp:33:                 hash *= 1099511628211ULL;
	mul	x3, x3, x7	// hash, hash, tmp131
// estadisticas.cpp:32:                 hash ^= (value >> (byte * 8)) & 255u;
	eor	x2, x2, x3	// hash, tmp138, hash
// estadisticas.cpp:33:                 hash *= 1099511628211ULL;
	mul	x2, x2, x7	// hash, hash, tmp131
// estadisticas.cpp:32:                 hash ^= (value >> (byte * 8)) & 255u;
	eor	x0, x0, x2	// hash, tmp141, hash
// estadisticas.cpp:33:                 hash *= 1099511628211ULL;
	mul	x0, x0, x7	// <retval>, hash, tmp131
// estadisticas.cpp:22:     for (const Cell& cell : cells) {
	cmp	x9, x1	// _24, ivtmp.52
	bne	.L14		//,
.L12:
// estadisticas.cpp:38: }
	ret	
	.cfi_endproc
.LFE1288:
	.size	_Z8checksumRKSt6vectorI4CellSaIS0_EE, .-_Z8checksumRKSt6vectorI4CellSaIS0_EE
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
