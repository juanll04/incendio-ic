	.arch armv8-a+crc+lse+rcpc+rdma+dotprod+aes+sha3+fp16fml+sb+i8mm+bf16+flagm+pauth
	.file	"simulacion.cpp"
// GNU C++17 (Ubuntu 13.3.0-6ubuntu2~24.04.1) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -march=armv8-a+crc+lse+rcpc+rdma+dotprod+aes+sha3+fp16fml+sb+i8mm+bf16+flagm+pauth -O3 -std=c++17 -ffp-contract=off -fopt-info-vec-optimized-missed -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.p2align 4,,11
	.global	_Z15update_moistureRKSt6vectorI4CellSaIS0_EERS2_mm
	.type	_Z15update_moistureRKSt6vectorI4CellSaIS0_EERS2_mm, %function
_Z15update_moistureRKSt6vectorI4CellSaIS0_EERS2_mm:
.LFB3380:
	.cfi_startproc
// simulacion.cpp:49:     for (std::size_t row = 0; row < rows; ++row) {
	cbz	x2, .L51	// rows,
	mov	x6, x3	// columns, tmp280
	cbz	x3, .L51	// columns,
// simulacion.cpp:48:                      std::size_t rows, std::size_t columns) {
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	lsl	x17, x3, 3	// _77, columns,
// /usr/include/c++/13/bits/stl_algobase.h:264:       return __a;
	movi	v4.2s, #0	// tmp267
// simulacion.cpp:48:                      std::size_t rows, std::size_t columns) {
	mov	x29, sp	//,
// /usr/include/c++/13/bits/stl_vector.h:1148: 	return *(this->_M_impl._M_start + __n);
	ldr	x18, [x0]	// _49, MEM[(const struct vector *)current_42(D)].D.69903._M_impl.D.69242._M_start
	mov	x30, 5	// tmp256,
// simulacion.cpp:76:                 0.f, current[position].moisture - 0.006f - 0.012f * burning_neighbors);
	mov	w0, 39846	// tmp282,
	mov	x13, x2	// rows, tmp279
// /usr/include/c++/13/bits/stl_vector.h:1129: 	return *(this->_M_impl._M_start + __n);
	mov	x15, x17	// ivtmp.126, _77
	sub	x30, x30, x17	// tmp255, tmp256, _77
	mov	x16, x3	// ivtmp.125, columns
// simulacion.cpp:48:                      std::size_t rows, std::size_t columns) {
	stp	x19, x20, [sp, 16]	//,,
	.cfi_offset 19, -48
	.cfi_offset 20, -40
// simulacion.cpp:71:                         burning_neighbors += current[neighbor].state == FIRE;
	sub	x20, x17, #8	// tmp275, _77,
// /usr/include/c++/13/bits/stl_vector.h:1129: 	return *(this->_M_impl._M_start + __n);
	ldr	x19, [x1]	// pretmp_74, MEM[(struct vector *)next_48(D)].D.69903._M_impl.D.69242._M_start
// simulacion.cpp:76:                 0.f, current[position].moisture - 0.006f - 0.012f * burning_neighbors);
	mov	w1, 39846	// tmp281,
// simulacion.cpp:48:                      std::size_t rows, std::size_t columns) {
	stp	x21, x22, [sp, 32]	//,,
	.cfi_offset 21, -32
	.cfi_offset 22, -24
// simulacion.cpp:71:                         burning_neighbors += current[neighbor].state == FIRE;
	add	x21, x17, 8	// tmp274, _77,
// simulacion.cpp:76:                 0.f, current[position].moisture - 0.006f - 0.012f * burning_neighbors);
	movk	w0, 0x3c44, lsl 16	// tmp282,,
// simulacion.cpp:76:                 0.f, current[position].moisture - 0.006f - 0.012f * burning_neighbors);
	movk	w1, 0x3bc4, lsl 16	// tmp281,,
// /usr/include/c++/13/bits/stl_vector.h:1129: 	return *(this->_M_impl._M_start + __n);
	mov	x7, -1	// ivtmp.131,
	mov	x14, 0	// ivtmp.121,
	mov	x11, 1	// ivtmp.120,
// simulacion.cpp:49:     for (std::size_t row = 0; row < rows; ++row) {
	mov	x8, 0	// row,
// simulacion.cpp:76:                 0.f, current[position].moisture - 0.006f - 0.012f * burning_neighbors);
	fmov	s2, w0	// tmp266, tmp282
// simulacion.cpp:76:                 0.f, current[position].moisture - 0.006f - 0.012f * burning_neighbors);
	fmov	s3, w1	// tmp265, tmp281
// simulacion.cpp:48:                      std::size_t rows, std::size_t columns) {
	stp	x23, x24, [sp, 48]	//,,
	.cfi_offset 23, -16
	.cfi_offset 24, -8
	.p2align 3,,7
.L3:
// simulacion.cpp:66:                     if (neighbor_row >= 0 && neighbor_column >= 0 &&
	mvn	x10, x11	// tmp268, ivtmp.120
	add	x4, x30, x14	// tmp257, tmp255, ivtmp.121
	add	x2, x18, x14	// ivtmp.108, _49, ivtmp.121
	lsr	x10, x10, 63	// tmp269, tmp268,
	add	x4, x18, x4	// ivtmp.113, _49, tmp257
	and	w10, w10, 255	// _258, tmp269
	add	x9, x19, x14	// tmp262, pretmp_74, ivtmp.121
// simulacion.cpp:48:                      std::size_t rows, std::size_t columns) {
	mov	x3, -1	// ivtmp.112,
	mov	x5, 1	// ivtmp.107,
// simulacion.cpp:50:         for (std::size_t column = 0; column < columns; ++column) {
	mov	x1, 0	// column,
	b	.L20		//
	.p2align 2,,3
.L4:
// simulacion.cpp:53:                 next[position].moisture = current[position].moisture;
	lsl	x0, x1, 3	// tmp254, column,
// simulacion.cpp:50:         for (std::size_t column = 0; column < columns; ++column) {
	add	x1, x1, 1	// column, column,
// simulacion.cpp:50:         for (std::size_t column = 0; column < columns; ++column) {
	add	x5, x5, 1	// ivtmp.107, ivtmp.107,
	add	x2, x2, 8	// ivtmp.108, ivtmp.108,
	add	x3, x3, 1	// ivtmp.112, ivtmp.112,
	add	x4, x4, 8	// ivtmp.113, ivtmp.113,
// simulacion.cpp:53:                 next[position].moisture = current[position].moisture;
	str	s0, [x9, x0]	// pretmp_156, MEM[(float *)_94 + _93 * 1]
// simulacion.cpp:50:         for (std::size_t column = 0; column < columns; ++column) {
	cmp	x6, x1	// columns, column
	beq	.L55		//,
.L20:
// simulacion.cpp:52:             if (current[position].state != TREE && current[position].state != FIRE) {
	ldrb	w0, [x2, 5]	//, MEM[(unsigned char *)_97 + 5B]
// simulacion.cpp:76:                 0.f, current[position].moisture - 0.006f - 0.012f * burning_neighbors);
	ldr	s0, [x2]	// pretmp_156, MEM[(float *)_97]
// simulacion.cpp:52:             if (current[position].state != TREE && current[position].state != FIRE) {
	sub	w0, w0, #1	// tmp188, MEM[(unsigned char *)_97 + 5B],
	and	w0, w0, 255	// tmp189, tmp188
	cmp	w0, 1	// tmp189,
	bhi	.L4		//,
// simulacion.cpp:66:                     if (neighbor_row >= 0 && neighbor_column >= 0 &&
	orr	x22, x11, x3	// _111, ivtmp.120, ivtmp.112
	orr	x12, x3, x8	// _47, ivtmp.112, row
	orr	x0, x3, x7	// tmp190, ivtmp.112, ivtmp.131
// simulacion.cpp:66:                     if (neighbor_row >= 0 && neighbor_column >= 0 &&
	tbnz	x0, #63, .L5	// tmp190,
// simulacion.cpp:67:                         static_cast<std::size_t>(neighbor_row) < rows &&
	cmp	x13, x7	// rows, ivtmp.131
	ccmp	x6, x3, 0, hi	// columns, ivtmp.112,,
	bls	.L6		//,
// simulacion.cpp:71:                         burning_neighbors += current[neighbor].state == FIRE;
	ldrb	w0, [x4, -8]	// MEM[(unsigned char *)_34 + -8B], MEM[(unsigned char *)_34 + -8B]
	cmp	w0, 2	// MEM[(unsigned char *)_34 + -8B],
	cset	w0, eq	// _179,
.L7:
	ldrb	w24, [x4]	// MEM[(unsigned char *)_269], MEM[(unsigned char *)_269]
// simulacion.cpp:71:                         burning_neighbors += current[neighbor].state == FIRE;
	mov	w23, 1	// _116,
// simulacion.cpp:71:                         burning_neighbors += current[neighbor].state == FIRE;
	cmp	w24, 2	// MEM[(unsigned char *)_269],
// simulacion.cpp:71:                         burning_neighbors += current[neighbor].state == FIRE;
	cinc	w0, w0, eq	// burning_neighbors, _179,
.L10:
// simulacion.cpp:67:                         static_cast<std::size_t>(neighbor_row) < rows &&
	cmp	w23, 0	// _116,
	ccmp	x6, x5, 0, ne	// columns, ivtmp.107,,
	bls	.L9		//,
// simulacion.cpp:71:                         burning_neighbors += current[neighbor].state == FIRE;
	ldrb	w23, [x4, 8]	// MEM[(unsigned char *)_284 + 8B], MEM[(unsigned char *)_284 + 8B]
	cmp	w23, 2	// MEM[(unsigned char *)_284 + 8B],
// simulacion.cpp:71:                         burning_neighbors += current[neighbor].state == FIRE;
	cinc	w0, w0, eq	// burning_neighbors, burning_neighbors,
	.p2align 3,,7
.L9:
// simulacion.cpp:66:                     if (neighbor_row >= 0 && neighbor_column >= 0 &&
	tbnz	x12, #63, .L11	// _47,
// simulacion.cpp:67:                         static_cast<std::size_t>(neighbor_row) < rows &&
	cmp	x6, x3	// columns, ivtmp.112
	bls	.L12		//,
// simulacion.cpp:71:                         burning_neighbors += current[neighbor].state == FIRE;
	ldrb	w12, [x2, -3]	// MEM[(unsigned char *)_97 + -3B], MEM[(unsigned char *)_97 + -3B]
	cmp	w12, 2	// MEM[(unsigned char *)_97 + -3B],
// simulacion.cpp:71:                         burning_neighbors += current[neighbor].state == FIRE;
	cinc	w0, w0, eq	// burning_neighbors, burning_neighbors,
.L12:
// simulacion.cpp:66:                     if (neighbor_row >= 0 && neighbor_column >= 0 &&
	tbz	x8, #63, .L21	// row,
// simulacion.cpp:66:                     if (neighbor_row >= 0 && neighbor_column >= 0 &&
	mvn	x12, x11	// tmp259, ivtmp.120
	lsr	x12, x12, 63	// tmp260, tmp259,
	and	w12, w12, 255	// _258, tmp260
.L22:
// simulacion.cpp:67:                         static_cast<std::size_t>(neighbor_row) < rows &&
	cmp	x13, x11	// rows, ivtmp.120
	ccmp	x6, x3, 0, hi	// columns, ivtmp.112,,
	bls	.L14		//,
// simulacion.cpp:71:                         burning_neighbors += current[neighbor].state == FIRE;
	add	x22, x15, x4	// tmp263, ivtmp.126, ivtmp.113
	add	x23, x20, x14	// tmp226, tmp275, ivtmp.121
// simulacion.cpp:71:                         burning_neighbors += current[neighbor].state == FIRE;
	ldrb	w23, [x22, x23]	// MEM[(unsigned char *)_194 + _213 * 1], MEM[(unsigned char *)_194 + _213 * 1]
	cmp	w23, 2	// MEM[(unsigned char *)_194 + _213 * 1],
// simulacion.cpp:71:                         burning_neighbors += current[neighbor].state == FIRE;
	cinc	w0, w0, eq	// burning_neighbors, burning_neighbors,
// simulacion.cpp:66:                     if (neighbor_row >= 0 && neighbor_column >= 0 &&
	tbz	x12, 0, .L17	// _258,,
.L15:
// simulacion.cpp:71:                         burning_neighbors += current[neighbor].state == FIRE;
	lsl	x12, x16, 3	// tmp233, ivtmp.125,
// simulacion.cpp:71:                         burning_neighbors += current[neighbor].state == FIRE;
	ldrb	w12, [x22, x12]	// MEM[(unsigned char *)_85 + _140 * 1], MEM[(unsigned char *)_85 + _140 * 1]
	cmp	w12, 2	// MEM[(unsigned char *)_85 + _140 * 1],
// simulacion.cpp:71:                         burning_neighbors += current[neighbor].state == FIRE;
	cinc	w0, w0, eq	// burning_neighbors, burning_neighbors,
// simulacion.cpp:67:                         static_cast<std::size_t>(neighbor_row) < rows &&
	cmp	x13, x11	// rows, ivtmp.120
	ccmp	x6, x5, 0, hi	// columns, ivtmp.107,,
	bls	.L17		//,
// simulacion.cpp:71:                         burning_neighbors += current[neighbor].state == FIRE;
	add	x12, x15, x4	// tmp242, ivtmp.126, ivtmp.113
	add	x22, x21, x14	// tmp244, tmp274, ivtmp.121
// simulacion.cpp:71:                         burning_neighbors += current[neighbor].state == FIRE;
	ldrb	w12, [x12, x22]	// MEM[(unsigned char *)_28 + _76 * 1], MEM[(unsigned char *)_28 + _76 * 1]
	cmp	w12, 2	// MEM[(unsigned char *)_28 + _76 * 1],
// simulacion.cpp:71:                         burning_neighbors += current[neighbor].state == FIRE;
	cinc	w0, w0, eq	// burning_neighbors, burning_neighbors,
	.p2align 3,,7
.L17:
// simulacion.cpp:76:                 0.f, current[position].moisture - 0.006f - 0.012f * burning_neighbors);
	scvtf	s1, w0	// tmp250, burning_neighbors
// simulacion.cpp:76:                 0.f, current[position].moisture - 0.006f - 0.012f * burning_neighbors);
	fsub	s0, s0, s3	// tmp248, pretmp_156, tmp265
// simulacion.cpp:76:                 0.f, current[position].moisture - 0.006f - 0.012f * burning_neighbors);
	fmul	s1, s1, s2	// tmp251, tmp250, tmp266
// simulacion.cpp:76:                 0.f, current[position].moisture - 0.006f - 0.012f * burning_neighbors);
	fsub	s0, s0, s1	// pretmp_156, tmp248, tmp251
// /usr/include/c++/13/bits/stl_algobase.h:264:       return __a;
	fcmpe	s0, #0.0	// pretmp_156
	fcsel	s0, s0, s4, gt	// pretmp_156, pretmp_156, tmp267,
	b	.L4		//
	.p2align 2,,3
.L11:
// simulacion.cpp:66:                     if (neighbor_row >= 0 && neighbor_column >= 0 &&
	tbnz	x8, #63, .L13	// row,
.L21:
// simulacion.cpp:67:                         static_cast<std::size_t>(neighbor_row) < rows &&
	cmp	x6, x5	// columns, ivtmp.107
	bls	.L13		//,
// simulacion.cpp:71:                         burning_neighbors += current[neighbor].state == FIRE;
	ldrb	w12, [x2, 13]	// MEM[(unsigned char *)_97 + 13B], MEM[(unsigned char *)_97 + 13B]
	cmp	w12, 2	// MEM[(unsigned char *)_97 + 13B],
// simulacion.cpp:71:                         burning_neighbors += current[neighbor].state == FIRE;
	cinc	w0, w0, eq	// burning_neighbors, burning_neighbors,
.L13:
// simulacion.cpp:66:                     if (neighbor_row >= 0 && neighbor_column >= 0 &&
	mov	w12, w10	// _258, _258
// simulacion.cpp:66:                     if (neighbor_row >= 0 && neighbor_column >= 0 &&
	tbz	x22, #63, .L22	// _111,
.L14:
	tbz	x12, 0, .L17	// _258,,
// simulacion.cpp:67:                         static_cast<std::size_t>(neighbor_row) < rows &&
	cmp	x13, x11	// rows, ivtmp.120
	bls	.L17		//,
	add	x22, x15, x4	// tmp263, ivtmp.126, ivtmp.113
	b	.L15		//
	.p2align 2,,3
.L5:
// simulacion.cpp:66:                     if (neighbor_row >= 0 && neighbor_column >= 0 &&
	orr	x0, x7, x1	// tmp198, ivtmp.131, column
// simulacion.cpp:66:                     if (neighbor_row >= 0 && neighbor_column >= 0 &&
	tbz	x0, #63, .L6	// tmp198,
	mov	w0, 0	// burning_neighbors,
	tbnz	x7, #63, .L9	// ivtmp.131,
// simulacion.cpp:67:                         static_cast<std::size_t>(neighbor_row) < rows &&
	cmp	x13, x7	// rows, ivtmp.131
	cset	w23, hi	// _116,
	b	.L10		//
	.p2align 2,,3
.L55:
// simulacion.cpp:49:     for (std::size_t row = 0; row < rows; ++row) {
	add	x8, x8, 1	// row, row,
// simulacion.cpp:49:     for (std::size_t row = 0; row < rows; ++row) {
	add	x11, x11, 1	// ivtmp.120, ivtmp.120,
	add	x14, x14, x17	// ivtmp.121, ivtmp.121, _77
	add	x16, x16, x6	// ivtmp.125, ivtmp.125, columns
	sub	x15, x15, x17	// ivtmp.126, ivtmp.126, _77
	add	x7, x7, 1	// ivtmp.131, ivtmp.131,
	cmp	x13, x8	// rows, row
	bne	.L3		//,
// simulacion.cpp:79: }
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x21, x22, [sp, 32]	//,,
	ldp	x23, x24, [sp, 48]	//,,
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret	
	.p2align 2,,3
.L6:
	.cfi_restore_state
// simulacion.cpp:67:                         static_cast<std::size_t>(neighbor_row) < rows &&
	mov	w0, 0	// burning_neighbors,
	cmp	x13, x7	// rows, ivtmp.131
	bls	.L9		//,
	b	.L7		//
	.p2align 2,,3
.L51:
	.cfi_def_cfa_offset 0
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 29
	.cfi_restore 30
	ret	
	.cfi_endproc
.LFE3380:
	.size	_Z15update_moistureRKSt6vectorI4CellSaIS0_EERS2_mm, .-_Z15update_moistureRKSt6vectorI4CellSaIS0_EERS2_mm
	.align	2
	.p2align 4,,11
	.global	_Z11update_fireRKSt6vectorI4CellSaIS0_EERS2_RK7Options
	.type	_Z11update_fireRKSt6vectorI4CellSaIS0_EERS2_RK7Options, %function
_Z11update_fireRKSt6vectorI4CellSaIS0_EERS2_RK7Options:
.LFB3381:
	.cfi_startproc
// simulacion.cpp:81: std::size_t update_fire(const Grid& current, Grid& next, const Options& options) {
	mov	x16, x0	// current, tmp278
// simulacion.cpp:83:     for (std::size_t row = 0; row < options.rows; ++row) {
	ldr	x0, [x2]	// <retval>, options_61(D)->rows
// simulacion.cpp:83:     for (std::size_t row = 0; row < options.rows; ++row) {
	cbz	x0, .L56	// <retval>,
// simulacion.cpp:124:                 if (influence >= 0.65f + 1.2f * current_cell.moisture) {
	mov	w0, 26214	// tmp285,
// simulacion.cpp:124:                 if (influence >= 0.65f + 1.2f * current_cell.moisture) {
	mov	w4, 39322	// tmp284,
// simulacion.cpp:124:                 if (influence >= 0.65f + 1.2f * current_cell.moisture) {
	movk	w0, 0x3f26, lsl 16	// tmp285,,
	fmov	s3, w0	// tmp274, tmp285
// simulacion.cpp:84:         for (std::size_t column = 0; column < options.cols; ++column) {
	ldr	x3, [x2, 8]	// _42, options_61(D)->cols
// simulacion.cpp:116:                         float distance_weight = (row_offset && column_offset) ? 0.70710678f : 1.f;
	mov	w0, 1267	// tmp286,
	movk	w0, 0x3f35, lsl 16	// tmp286,,
// simulacion.cpp:124:                 if (influence >= 0.65f + 1.2f * current_cell.moisture) {
	movk	w4, 0x3f99, lsl 16	// tmp284,,
// simulacion.cpp:116:                         float distance_weight = (row_offset && column_offset) ? 0.70710678f : 1.f;
	fmov	s5, w0	// tmp276, tmp286
// simulacion.cpp:124:                 if (influence >= 0.65f + 1.2f * current_cell.moisture) {
	fmov	s4, w4	// tmp273, tmp284
// simulacion.cpp:83:     for (std::size_t row = 0; row < options.rows; ++row) {
	mov	x10, 0	// row,
// simulacion.cpp:82:     std::size_t active_cells = 0;
	mov	x0, 0	// <retval>,
// simulacion.cpp:94:                     next_cell.state = BURNT;
	mov	w15, 3	// tmp272,
// simulacion.cpp:116:                         float distance_weight = (row_offset && column_offset) ? 0.70710678f : 1.f;
	fmov	s2, 1.0e+0	// tmp275,
	.p2align 3,,7
.L58:
// simulacion.cpp:84:         for (std::size_t column = 0; column < options.cols; ++column) {
	cbz	x3, .L56	// _42,
// /usr/include/c++/13/bits/stl_vector.h:1129: 	return *(this->_M_impl._M_start + __n);
	ldr	x12, [x1]	// _74, MEM[(struct vector *)next_66(D)].D.69903._M_impl.D.69242._M_start
	mov	x8, -1	// ivtmp.155,
// /usr/include/c++/13/bits/stl_vector.h:1148: 	return *(this->_M_impl._M_start + __n);
	ldr	x11, [x16]	// _65, MEM[(const struct vector *)current_64(D)].D.69903._M_impl.D.69242._M_start
// /usr/include/c++/13/bits/stl_vector.h:1129: 	return *(this->_M_impl._M_start + __n);
	mov	x9, 1	// ivtmp.154,
// simulacion.cpp:84:         for (std::size_t column = 0; column < options.cols; ++column) {
	mov	x4, 0	// column,
	b	.L84		//
	.p2align 2,,3
.L59:
// simulacion.cpp:96:             } else if (current_cell.state == TREE) {
	cmp	w6, 1	// _2,
	beq	.L119		//,
.L61:
// simulacion.cpp:84:         for (std::size_t column = 0; column < options.cols; ++column) {
	ldr	x3, [x2, 8]	// _42, options_61(D)->cols
// simulacion.cpp:84:         for (std::size_t column = 0; column < options.cols; ++column) {
	add	x4, x4, 1	// column, column,
// simulacion.cpp:84:         for (std::size_t column = 0; column < options.cols; ++column) {
	add	x9, x9, 1	// ivtmp.154, ivtmp.154,
	add	x8, x8, 1	// ivtmp.155, ivtmp.155,
	cmp	x3, x4	// _42, column
	bls	.L120		//,
.L84:
// modelo.h:21:     return row * columns + column;
	madd	x3, x10, x3, x4	// tmp188, row, _42, column
// /usr/include/c++/13/bits/stl_vector.h:1148: 	return *(this->_M_impl._M_start + __n);
	lsl	x3, x3, 3	// _63, tmp188,
// /usr/include/c++/13/bits/stl_vector.h:1148: 	return *(this->_M_impl._M_start + __n);
	add	x5, x11, x3	// _82, _65, _63
// /usr/include/c++/13/bits/stl_vector.h:1129: 	return *(this->_M_impl._M_start + __n);
	add	x7, x12, x3	// _67, _74, _63
// simulacion.cpp:88:             next_cell.state = current_cell.state;
	ldrb	w6, [x5, 5]	// _2, MEM[(const struct Cell &)_82].state
// simulacion.cpp:88:             next_cell.state = current_cell.state;
	strb	w6, [x7, 5]	// _2, MEM[(struct Cell &)_67].state
// simulacion.cpp:89:             next_cell.fuel = current_cell.fuel;
	ldrb	w5, [x5, 4]	// _3, MEM[(const struct Cell &)_82].fuel
// simulacion.cpp:89:             next_cell.fuel = current_cell.fuel;
	strb	w5, [x7, 4]	// _3, MEM[(struct Cell &)_67].fuel
// simulacion.cpp:91:             if (current_cell.state == FIRE) {
	cmp	w6, 2	// _2,
	bne	.L59		//,
// simulacion.cpp:92:                 next_cell.fuel = static_cast<std::uint8_t>(current_cell.fuel - 1);
	sub	w5, w5, #1	// tmp191, _3,
	and	w5, w5, 255	// _5, tmp191
// simulacion.cpp:92:                 next_cell.fuel = static_cast<std::uint8_t>(current_cell.fuel - 1);
	strb	w5, [x7, 4]	// _5, MEM[(struct Cell &)_67].fuel
// simulacion.cpp:93:                 if (!next_cell.fuel) {
	cbz	w5, .L60	// _5,
// simulacion.cpp:84:         for (std::size_t column = 0; column < options.cols; ++column) {
	ldr	x3, [x2, 8]	// _42, options_61(D)->cols
// simulacion.cpp:84:         for (std::size_t column = 0; column < options.cols; ++column) {
	add	x4, x4, 1	// column, column,
// simulacion.cpp:128:             active_cells += next_cell.state == FIRE;
	add	x0, x0, 1	// <retval>, <retval>,
// simulacion.cpp:84:         for (std::size_t column = 0; column < options.cols; ++column) {
	add	x9, x9, 1	// ivtmp.154, ivtmp.154,
	add	x8, x8, 1	// ivtmp.155, ivtmp.155,
	cmp	x3, x4	// _42, column
	bhi	.L84		//,
	.p2align 3,,7
.L120:
// simulacion.cpp:83:     for (std::size_t row = 0; row < options.rows; ++row) {
	ldr	x4, [x2]	// options_61(D)->rows, options_61(D)->rows
// simulacion.cpp:83:     for (std::size_t row = 0; row < options.rows; ++row) {
	add	x10, x10, 1	// row, row,
// simulacion.cpp:83:     for (std::size_t row = 0; row < options.rows; ++row) {
	cmp	x10, x4	// row, options_61(D)->rows
	bcc	.L58		//,
.L56:
// simulacion.cpp:132: }
	ret	
	.p2align 2,,3
.L60:
// simulacion.cpp:94:                     next_cell.state = BURNT;
	strb	w15, [x7, 5]	// tmp272, MEM[(struct Cell &)_67].state
	b	.L61		//
	.p2align 2,,3
.L119:
// simulacion.cpp:97:                 float influence = 0;
	movi	v1.2s, #0	// influence
	sub	x5, x10, #1	// ivtmp.150, row,
// simulacion.cpp:98:                 for (int row_offset = -1; row_offset <= 1; ++row_offset) {
	mov	w6, -1	// row_offset,
.L82:
// simulacion.cpp:105:                         if (neighbor_row < 0 || neighbor_column < 0 ||
	orr	x13, x5, x8	// tmp194, ivtmp.150, ivtmp.155
// simulacion.cpp:105:                         if (neighbor_row < 0 || neighbor_column < 0 ||
	tbnz	x13, #63, .L63	// tmp194,
.L124:
// simulacion.cpp:105:                         if (neighbor_row < 0 || neighbor_column < 0 ||
	ldr	x13, [x2]	// options_61(D)->rows, options_61(D)->rows
	cmp	x13, x5	// options_61(D)->rows, ivtmp.150
	bls	.L64		//,
// simulacion.cpp:107:                             static_cast<std::size_t>(neighbor_column) >= options.cols) {
	ldr	x13, [x2, 8]	// prephitmp_224, options_61(D)->cols
// simulacion.cpp:106:                             static_cast<std::size_t>(neighbor_row) >= options.rows ||
	cmp	x13, x8	// prephitmp_224, ivtmp.155
	bls	.L68		//,
// /usr/include/c++/13/bits/stl_vector.h:1148: 	return *(this->_M_impl._M_start + __n);
	madd	x14, x13, x5, x8	// tmp197, prephitmp_224, ivtmp.150, ivtmp.155
// simulacion.cpp:112:                         if (current[neighbor].state != FIRE) {
	add	x14, x11, x14, lsl 3	// tmp199, _65, tmp197,
// simulacion.cpp:112:                         if (current[neighbor].state != FIRE) {
	ldrb	w14, [x14, 5]	// _105->state, _105->state
	cmp	w14, 2	// _105->state,
	bne	.L68		//,
// simulacion.cpp:118:                         float alignment = (-column_offset * options.dx - row_offset * options.dy) *
	ldp	w17, w14, [x2, 36]	//,, options_61(D)->dx
// simulacion.cpp:116:                         float distance_weight = (row_offset && column_offset) ? 0.70710678f : 1.f;
	cmp	w6, 0	// row_offset,
	fcsel	s6, s2, s5, eq	// iftmp.25_110, tmp275, tmp276,
// simulacion.cpp:120:                                           ((options.dx && options.dy) ? 0.70710678f : 1.f);
	cmp	w17, 0	// _112,
	ccmp	w14, 0, 4, ne	// _114,,,
// simulacion.cpp:118:                         float alignment = (-column_offset * options.dx - row_offset * options.dy) *
	msub	w14, w14, w6, w17	// tmp202, _114, row_offset, _112
// simulacion.cpp:118:                         float alignment = (-column_offset * options.dx - row_offset * options.dy) *
	scvtf	s0, w14	// tmp203, tmp202
	fmul	s0, s0, s6	// _118, tmp203, iftmp.25_110
// simulacion.cpp:120:                                           ((options.dx && options.dy) ? 0.70710678f : 1.f);
	bne	.L121		//,
.L70:
// simulacion.cpp:121:                         influence += distance_weight * (1.f + options.wind * alignment);
	ldr	s7, [x2, 32]	// options_61(D)->wind, options_61(D)->wind
	fmul	s0, s0, s7	// tmp209, _118, options_61(D)->wind
// simulacion.cpp:121:                         influence += distance_weight * (1.f + options.wind * alignment);
	fadd	s0, s0, s2	// tmp211, tmp209, tmp275
// simulacion.cpp:121:                         influence += distance_weight * (1.f + options.wind * alignment);
	fmul	s0, s0, s6	// tmp213, tmp211, iftmp.25_110
// simulacion.cpp:121:                         influence += distance_weight * (1.f + options.wind * alignment);
	fadd	s1, s1, s0	// influence, influence, tmp213
// simulacion.cpp:100:                         if (row_offset == 0 && column_offset == 0) {
	cbz	w6, .L87	// row_offset,
.L88:
// simulacion.cpp:106:                             static_cast<std::size_t>(neighbor_row) >= options.rows ||
	cmp	x4, x13	// column, prephitmp_224
	bcs	.L87		//,
// /usr/include/c++/13/bits/stl_vector.h:1148: 	return *(this->_M_impl._M_start + __n);
	madd	x14, x13, x5, x4	// tmp220, prephitmp_224, ivtmp.150, column
// simulacion.cpp:112:                         if (current[neighbor].state != FIRE) {
	add	x14, x11, x14, lsl 3	// tmp222, _65, tmp220,
// simulacion.cpp:112:                         if (current[neighbor].state != FIRE) {
	ldrb	w14, [x14, 5]	// _148->state, _148->state
	cmp	w14, 2	// _148->state,
	bne	.L87		//,
// simulacion.cpp:118:                         float alignment = (-column_offset * options.dx - row_offset * options.dy) *
	ldp	w14, w17, [x2, 36]	//,, options_61(D)->dx
// simulacion.cpp:120:                                           ((options.dx && options.dy) ? 0.70710678f : 1.f);
	cmp	w14, 0	// options_61(D)->dx,
// simulacion.cpp:118:                         float alignment = (-column_offset * options.dx - row_offset * options.dy) *
	mneg	w14, w17, w6	// tmp225, _157, row_offset
// simulacion.cpp:120:                                           ((options.dx && options.dy) ? 0.70710678f : 1.f);
	ccmp	w17, 0, 4, ne	// _157,,,
// simulacion.cpp:118:                         float alignment = (-column_offset * options.dx - row_offset * options.dy) *
	scvtf	s0, w14	// _160, tmp225
// simulacion.cpp:120:                                           ((options.dx && options.dy) ? 0.70710678f : 1.f);
	bne	.L122		//,
.L77:
// simulacion.cpp:121:                         influence += distance_weight * (1.f + options.wind * alignment);
	ldr	s6, [x2, 32]	// options_61(D)->wind, options_61(D)->wind
	fmul	s0, s0, s6	// tmp233, _160, options_61(D)->wind
// simulacion.cpp:121:                         influence += distance_weight * (1.f + options.wind * alignment);
	fadd	s0, s0, s2	// tmp235, tmp233, tmp275
// simulacion.cpp:121:                         influence += distance_weight * (1.f + options.wind * alignment);
	fadd	s1, s1, s0	// influence, influence, tmp235
.L87:
// simulacion.cpp:106:                             static_cast<std::size_t>(neighbor_row) >= options.rows ||
	cmp	x13, x9	// prephitmp_224, ivtmp.154
	bls	.L72		//,
// /usr/include/c++/13/bits/stl_vector.h:1148: 	return *(this->_M_impl._M_start + __n);
	madd	x13, x13, x5, x9	// tmp240, prephitmp_224, ivtmp.150, ivtmp.154
// simulacion.cpp:112:                         if (current[neighbor].state != FIRE) {
	add	x13, x11, x13, lsl 3	// tmp242, _65, tmp240,
// simulacion.cpp:112:                         if (current[neighbor].state != FIRE) {
	ldrb	w13, [x13, 5]	// _191->state, _191->state
	cmp	w13, 2	// _191->state,
	bne	.L72		//,
// simulacion.cpp:118:                         float alignment = (-column_offset * options.dx - row_offset * options.dy) *
	ldp	w14, w13, [x2, 36]	//,, options_61(D)->dx
// simulacion.cpp:116:                         float distance_weight = (row_offset && column_offset) ? 0.70710678f : 1.f;
	cmp	w6, 0	// row_offset,
// simulacion.cpp:118:                         float alignment = (-column_offset * options.dx - row_offset * options.dy) *
	neg	w17, w14	// tmp244, _198
// simulacion.cpp:116:                         float distance_weight = (row_offset && column_offset) ? 0.70710678f : 1.f;
	fcsel	s6, s2, s5, eq	// iftmp.25_196, tmp275, tmp276,
// simulacion.cpp:120:                                           ((options.dx && options.dy) ? 0.70710678f : 1.f);
	cmp	w13, 0	// _200,
	ccmp	w14, 0, 4, ne	// _198,,,
// simulacion.cpp:118:                         float alignment = (-column_offset * options.dx - row_offset * options.dy) *
	msub	w13, w6, w13, w17	// tmp246, row_offset, _200, tmp244
// simulacion.cpp:118:                         float alignment = (-column_offset * options.dx - row_offset * options.dy) *
	scvtf	s0, w13	// tmp247, tmp246
	fmul	s0, s0, s6	// _204, tmp247, iftmp.25_196
// simulacion.cpp:120:                                           ((options.dx && options.dy) ? 0.70710678f : 1.f);
	bne	.L123		//,
.L80:
// simulacion.cpp:121:                         influence += distance_weight * (1.f + options.wind * alignment);
	ldr	s7, [x2, 32]	// options_61(D)->wind, options_61(D)->wind
	fmul	s0, s0, s7	// tmp253, _204, options_61(D)->wind
// simulacion.cpp:121:                         influence += distance_weight * (1.f + options.wind * alignment);
	fadd	s0, s0, s2	// tmp255, tmp253, tmp275
// simulacion.cpp:121:                         influence += distance_weight * (1.f + options.wind * alignment);
	fmul	s0, s0, s6	// tmp257, tmp255, iftmp.25_196
// simulacion.cpp:121:                         influence += distance_weight * (1.f + options.wind * alignment);
	fadd	s1, s1, s0	// influence, influence, tmp257
	.p2align 3,,7
.L72:
// simulacion.cpp:98:                 for (int row_offset = -1; row_offset <= 1; ++row_offset) {
	add	w6, w6, 1	// row_offset, row_offset,
// simulacion.cpp:98:                 for (int row_offset = -1; row_offset <= 1; ++row_offset) {
	cmp	w6, 2	// row_offset,
	beq	.L81		//,
	add	x5, x5, 1	// ivtmp.150, ivtmp.150,
// simulacion.cpp:105:                         if (neighbor_row < 0 || neighbor_column < 0 ||
	orr	x13, x5, x8	// tmp194, ivtmp.150, ivtmp.155
// simulacion.cpp:105:                         if (neighbor_row < 0 || neighbor_column < 0 ||
	tbz	x13, #63, .L124	// tmp194,
.L63:
// simulacion.cpp:105:                         if (neighbor_row < 0 || neighbor_column < 0 ||
	orr	x13, x9, x5	// _264, ivtmp.154, ivtmp.150
// simulacion.cpp:100:                         if (row_offset == 0 && column_offset == 0) {
	cbz	w6, .L74	// row_offset,
// simulacion.cpp:105:                         if (neighbor_row < 0 || neighbor_column < 0 ||
	cmp	x5, 0	// ivtmp.150,
// simulacion.cpp:105:                         if (neighbor_row < 0 || neighbor_column < 0 ||
	ccmp	x4, 0, 1, ge	// column,,,
	bge	.L125		//,
	tbnz	x13, #63, .L72	// _264,
// simulacion.cpp:105:                         if (neighbor_row < 0 || neighbor_column < 0 ||
	ldr	x13, [x2]	// options_61(D)->rows, options_61(D)->rows
	cmp	x13, x5	// options_61(D)->rows, ivtmp.150
	bls	.L72		//,
	ldr	x13, [x2, 8]	// prephitmp_224, options_61(D)->cols
	b	.L87		//
	.p2align 2,,3
.L81:
// simulacion.cpp:124:                 if (influence >= 0.65f + 1.2f * current_cell.moisture) {
	ldr	s0, [x11, x3]	// MEM[(const struct Cell &)_82].moisture, MEM[(const struct Cell &)_82].moisture
	fmul	s0, s0, s4	// tmp258, MEM[(const struct Cell &)_82].moisture, tmp273
// simulacion.cpp:124:                 if (influence >= 0.65f + 1.2f * current_cell.moisture) {
	fadd	s0, s0, s3	// tmp261, tmp258, tmp274
// simulacion.cpp:124:                 if (influence >= 0.65f + 1.2f * current_cell.moisture) {
	fcmpe	s0, s1	// tmp261, influence
	bls	.L91		//,
	b	.L61		//
	.p2align 2,,3
.L91:
// simulacion.cpp:128:             active_cells += next_cell.state == FIRE;
	add	x0, x0, 1	// <retval>, <retval>,
// simulacion.cpp:125:                     next_cell.state = FIRE;
	strb	w6, [x7, 5]	// row_offset, MEM[(struct Cell &)_67].state
	b	.L61		//
	.p2align 2,,3
.L68:
// simulacion.cpp:100:                         if (row_offset == 0 && column_offset == 0) {
	cbnz	w6, .L88	// row_offset,
	b	.L87		//
	.p2align 2,,3
.L74:
// simulacion.cpp:105:                         if (neighbor_row < 0 || neighbor_column < 0 ||
	tbz	x13, #63, .L126	// _264,
.L78:
// simulacion.cpp:98:                 for (int row_offset = -1; row_offset <= 1; ++row_offset) {
	add	x5, x5, 1	// ivtmp.150, ivtmp.150,
// simulacion.cpp:98:                 for (int row_offset = -1; row_offset <= 1; ++row_offset) {
	mov	w6, 1	// row_offset,
	b	.L82		//
	.p2align 2,,3
.L125:
// simulacion.cpp:105:                         if (neighbor_row < 0 || neighbor_column < 0 ||
	ldr	x13, [x2]	// options_61(D)->rows, options_61(D)->rows
	cmp	x13, x5	// options_61(D)->rows, ivtmp.150
	bls	.L72		//,
// simulacion.cpp:107:                             static_cast<std::size_t>(neighbor_column) >= options.cols) {
	ldr	x13, [x2, 8]	// prephitmp_224, options_61(D)->cols
	b	.L88		//
	.p2align 2,,3
.L64:
// simulacion.cpp:100:                         if (row_offset == 0 && column_offset == 0) {
	cbnz	w6, .L72	// row_offset,
	b	.L78		//
.L122:
// simulacion.cpp:118:                         float alignment = (-column_offset * options.dx - row_offset * options.dy) *
	mov	w14, 1267	// tmp282,
	movk	w14, 0x3f35, lsl 16	// tmp282,,
	fmov	s6, w14	// tmp232, tmp282
	fmul	s0, s0, s6	// _160, _160, tmp232
	b	.L77		//
.L121:
	mov	w14, 1267	// tmp283,
	movk	w14, 0x3f35, lsl 16	// tmp283,,
	fmov	s7, w14	// tmp208, tmp283
	fmul	s0, s0, s7	// _118, _118, tmp208
	b	.L70		//
.L123:
	mov	w13, 1267	// tmp281,
	movk	w13, 0x3f35, lsl 16	// tmp281,,
	fmov	s7, w13	// tmp252, tmp281
	fmul	s0, s0, s7	// _204, _204, tmp252
	b	.L80		//
.L126:
// simulacion.cpp:105:                         if (neighbor_row < 0 || neighbor_column < 0 ||
	ldr	x13, [x2]	// options_61(D)->rows, options_61(D)->rows
	cmp	x13, x5	// options_61(D)->rows, ivtmp.150
	bls	.L78		//,
	ldr	x13, [x2, 8]	// prephitmp_224, options_61(D)->cols
	b	.L87		//
	.cfi_endproc
.LFE3381:
	.size	_Z11update_fireRKSt6vectorI4CellSaIS0_EERS2_RK7Options, .-_Z11update_fireRKSt6vectorI4CellSaIS0_EERS2_RK7Options
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, %function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB4120:
	.cfi_startproc
// /usr/include/c++/13/bits/random.tcc:407: 			   | (_M_x[__k + 1] & __lower_mask));
	adrp	x2, .LC1	// tmp202,
// /usr/include/c++/13/bits/random.tcc:406: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	adrp	x1, .LC0	// tmp201,
	add	x5, x0, 1816	// _129, this,
// /usr/include/c++/13/bits/random.tcc:407: 			   | (_M_x[__k + 1] & __lower_mask));
	ldr	q5, [x2, #:lo12:.LC1]	// tmp150,
// /usr/include/c++/13/bits/random.tcc:409: 		       ^ ((__y & 0x01) ? __a : 0));
	adrp	x2, .LC2	// tmp203,
// /usr/include/c++/13/bits/random.tcc:406: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	ldr	q6, [x1, #:lo12:.LC0]	// tmp147,
	add	x1, x0, 8	// vectp_this.194, this,
// /usr/include/c++/13/bits/random.tcc:409: 		       ^ ((__y & 0x01) ? __a : 0));
	ldr	q4, [x2, #:lo12:.LC2]	// tmp155,
// /usr/include/c++/13/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	adrp	x2, .LC3	// tmp204,
	ldr	q2, [x2, #:lo12:.LC3]	// tmp158,
	.p2align 3,,7
.L128:
// /usr/include/c++/13/bits/random.tcc:404:       for (size_t __k = 0; __k < (__n - __m); ++__k)
	add	x1, x1, 16	// vectp_this.194, vectp_this.194,
// /usr/include/c++/13/bits/random.tcc:406: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	ldr	q0, [x1, -24]	// vect__1.191, MEM <vector(2) long unsigned int> [(long unsigned int *)vectp_this.193_153 + -8B]
// /usr/include/c++/13/bits/random.tcc:407: 			   | (_M_x[__k + 1] & __lower_mask));
	ldr	q1, [x1, -16]	// vect__4.195, MEM <vector(2) long unsigned int> [(long unsigned int *)vectp_this.193_153]
// /usr/include/c++/13/bits/random.tcc:406: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	and	v0.16b, v0.16b, v6.16b	// vect__2.192, vect__1.191, tmp147
// /usr/include/c++/13/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	ldr	q3, [x1, 3152]	// vect__7.200, MEM <vector(2) long unsigned int> [(long unsigned int *)vectp_this.193_153 + 3168B]
// /usr/include/c++/13/bits/random.tcc:407: 			   | (_M_x[__k + 1] & __lower_mask));
	and	v1.16b, v1.16b, v5.16b	// vect__5.196, vect__4.195, tmp150
// /usr/include/c++/13/bits/random.tcc:406: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	orr	v0.16b, v0.16b, v1.16b	// vect___y_46.197, vect__2.192, vect__5.196
// /usr/include/c++/13/bits/random.tcc:409: 		       ^ ((__y & 0x01) ? __a : 0));
	and	v1.16b, v0.16b, v4.16b	// vect__10.203, vect___y_46.197, tmp155
// /usr/include/c++/13/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	ushr	v0.2d, v0.2d, 1	// vect__8.201, vect___y_46.197,
// /usr/include/c++/13/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	neg	v1.2d, v1.2d	// vect__98.204, vect__10.203
	and	v1.16b, v1.16b, v2.16b	// vect__99.205, vect__98.204, tmp158
	eor3	v0.16b, v1.16b, v3.16b, v0.16b	// vect_prephitmp_86.206, vect__99.205, vect__7.200, vect__8.201
	str	q0, [x1, -24]	// vect_prephitmp_86.206, MEM <vector(2) long unsigned int> [(long unsigned int *)vectp_this.193_153 + -8B]
	cmp	x5, x1	// _129, vectp_this.194
	bne	.L128		//,
// /usr/include/c++/13/bits/random.tcc:406: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	ldr	x2, [x0, 1808]	// this_40(D)->_M_x[226], this_40(D)->_M_x[226]
// /usr/include/c++/13/bits/random.tcc:414: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	adrp	x7, .LC0	// tmp205,
// /usr/include/c++/13/bits/random.tcc:407: 			   | (_M_x[__k + 1] & __lower_mask));
	ldr	x1, [x0, 1816]	// this_40(D)->_M_x[227], this_40(D)->_M_x[227]
	add	x6, x0, 1824	// vectp_this.172, this,
// /usr/include/c++/13/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	ldr	x4, [x0, 4984]	// this_40(D)->_M_x[623], this_40(D)->_M_x[623]
// /usr/include/c++/13/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	mov	x3, 0	// ivtmp.215,
// /usr/include/c++/13/bits/random.tcc:414: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	ldr	q5, [x7, #:lo12:.LC0]	// tmp174,
// /usr/include/c++/13/bits/random.tcc:409: 		       ^ ((__y & 0x01) ? __a : 0));
	fmov	x7, d2	// tmp206, tmp158
// /usr/include/c++/13/bits/random.tcc:406: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	bfi	x2, x1, 0, 31	// __y, this_40(D)->_M_x[227],
// /usr/include/c++/13/bits/random.tcc:409: 		       ^ ((__y & 0x01) ? __a : 0));
	sbfx	x1, x1, 0, 1	// tmp165, this_40(D)->_M_x[227],,
// /usr/include/c++/13/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	eor	x2, x4, x2, lsr 1	// tmp169, this_40(D)->_M_x[623], __y,
// /usr/include/c++/13/bits/random.tcc:417: 		       ^ ((__y & 0x01) ? __a : 0));
	adrp	x4, .LC2	// tmp208,
// /usr/include/c++/13/bits/random.tcc:409: 		       ^ ((__y & 0x01) ? __a : 0));
	and	x1, x1, x7	// tmp166, tmp165, tmp206
// /usr/include/c++/13/bits/random.tcc:415: 			   | (_M_x[__k + 1] & __lower_mask));
	adrp	x7, .LC1	// tmp207,
// /usr/include/c++/13/bits/random.tcc:409: 		       ^ ((__y & 0x01) ? __a : 0));
	eor	x1, x1, x2	// tmp171, tmp166, tmp169
// /usr/include/c++/13/bits/random.tcc:416: 	  _M_x[__k] = (_M_x[__k + (__m - __n)] ^ (__y >> 1)
	adrp	x2, .LC3	// tmp209,
// /usr/include/c++/13/bits/random.tcc:415: 			   | (_M_x[__k + 1] & __lower_mask));
	ldr	q4, [x7, #:lo12:.LC1]	// tmp177,
// /usr/include/c++/13/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	str	x1, [x0, 1808]	// tmp171, this_40(D)->_M_x[226]
// /usr/include/c++/13/bits/random.tcc:417: 		       ^ ((__y & 0x01) ? __a : 0));
	ldr	q3, [x4, #:lo12:.LC2]	// tmp182,
// /usr/include/c++/13/bits/random.tcc:416: 	  _M_x[__k] = (_M_x[__k + (__m - __n)] ^ (__y >> 1)
	ldr	q2, [x2, #:lo12:.LC3]	// tmp185,
.L129:
// /usr/include/c++/13/bits/random.tcc:414: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	ldr	q0, [x5, x3]	// vect__12.169, MEM <vector(2) long unsigned int> [(long unsigned int *)_129 + ivtmp.215_133 * 1]
// /usr/include/c++/13/bits/random.tcc:415: 			   | (_M_x[__k + 1] & __lower_mask));
	ldr	q1, [x6, x3]	// vect__15.173, MEM <vector(2) long unsigned int> [(long unsigned int *)vectp_this.172_102 + ivtmp.215_133 * 1]
// /usr/include/c++/13/bits/random.tcc:414: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	and	v0.16b, v0.16b, v5.16b	// vect__13.170, vect__12.169, tmp174
// /usr/include/c++/13/bits/random.tcc:416: 	  _M_x[__k] = (_M_x[__k + (__m - __n)] ^ (__y >> 1)
	ldr	q6, [x0, x3]	// vect__18.178, MEM <vector(2) long unsigned int> [(long unsigned int *)this_40(D) + ivtmp.215_133 * 1]
// /usr/include/c++/13/bits/random.tcc:415: 			   | (_M_x[__k + 1] & __lower_mask));
	and	v1.16b, v1.16b, v4.16b	// vect__16.174, vect__15.173, tmp177
// /usr/include/c++/13/bits/random.tcc:414: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	orr	v0.16b, v0.16b, v1.16b	// vect___y_44.175, vect__13.170, vect__16.174
// /usr/include/c++/13/bits/random.tcc:417: 		       ^ ((__y & 0x01) ? __a : 0));
	and	v1.16b, v0.16b, v3.16b	// vect__21.181, vect___y_44.175, tmp182
// /usr/include/c++/13/bits/random.tcc:416: 	  _M_x[__k] = (_M_x[__k + (__m - __n)] ^ (__y >> 1)
	ushr	v0.2d, v0.2d, 1	// vect__19.179, vect___y_44.175,
// /usr/include/c++/13/bits/random.tcc:416: 	  _M_x[__k] = (_M_x[__k + (__m - __n)] ^ (__y >> 1)
	neg	v1.2d, v1.2d	// vect__61.182, vect__21.181
	and	v1.16b, v1.16b, v2.16b	// vect__60.183, vect__61.182, tmp185
	eor3	v0.16b, v1.16b, v6.16b, v0.16b	// vect_prephitmp_89.184, vect__60.183, vect__18.178, vect__19.179
	str	q0, [x5, x3]	// vect_prephitmp_89.184, MEM <vector(2) long unsigned int> [(long unsigned int *)_129 + ivtmp.215_133 * 1]
	add	x3, x3, 16	// ivtmp.215, ivtmp.215,
	cmp	x3, 3168	// ivtmp.215,
	bne	.L129		//,
// /usr/include/c++/13/bits/random.tcc:421: 		       | (_M_x[0] & __lower_mask));
	ldr	x2, [x0]	// this_40(D)->_M_x[0], this_40(D)->_M_x[0]
// /usr/include/c++/13/bits/random.tcc:424:       _M_p = 0;
	str	xzr, [x0, 4992]	//, this_40(D)->_M_p
// /usr/include/c++/13/bits/random.tcc:420:       _UIntType __y = ((_M_x[__n - 1] & __upper_mask)
	ldr	x1, [x0, 4984]	// this_40(D)->_M_x[623], this_40(D)->_M_x[623]
// /usr/include/c++/13/bits/random.tcc:422:       _M_x[__n - 1] = (_M_x[__m - 1] ^ (__y >> 1)
	ldr	x3, [x0, 3168]	// this_40(D)->_M_x[396], this_40(D)->_M_x[396]
// /usr/include/c++/13/bits/random.tcc:420:       _UIntType __y = ((_M_x[__n - 1] & __upper_mask)
	bfi	x1, x2, 0, 31	// __y, this_40(D)->_M_x[0],
// /usr/include/c++/13/bits/random.tcc:423: 		       ^ ((__y & 0x01) ? __a : 0));
	sbfx	x2, x1, 0, 1	// tmp195, __y,,
// /usr/include/c++/13/bits/random.tcc:422:       _M_x[__n - 1] = (_M_x[__m - 1] ^ (__y >> 1)
	eor	x1, x3, x1, lsr 1	// tmp192, this_40(D)->_M_x[396], __y,
// /usr/include/c++/13/bits/random.tcc:423: 		       ^ ((__y & 0x01) ? __a : 0));
	fmov	x3, d2	// tmp210, tmp185
	and	x2, x2, x3	// tmp196, tmp195, tmp210
	eor	x1, x1, x2	// tmp198, tmp192, tmp196
// /usr/include/c++/13/bits/random.tcc:422:       _M_x[__n - 1] = (_M_x[__m - 1] ^ (__y >> 1)
	str	x1, [x0, 4984]	// tmp198, this_40(D)->_M_x[623]
// /usr/include/c++/13/bits/random.tcc:425:     }
	ret	
	.cfi_endproc
.LFE4120:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC4:
	.string	"cannot create std::vector larger than max_size()"
	.align	3
.LC5:
	.string	"El foco cae sobre agua o un claro: elige otra celda con vegetaci\303\263n"
	.text
	.align	2
	.p2align 4,,11
	.global	_Z10initializeRK7Options
	.type	_Z10initializeRK7Options, %function
_Z10initializeRK7Options:
.LFB3370:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3370
	stp	x29, x30, [sp, -160]!	//,,,
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	mov	x13, 5024	//,
	mov	x29, sp	//,
	stp	x21, x22, [sp, 32]	//,,
	stp	x23, x24, [sp, 48]	//,,
	stp	x25, x26, [sp, 64]	//,,
	sub	sp, sp, x13	//,,
	.cfi_def_cfa_offset 5184
	.cfi_offset 21, -128
	.cfi_offset 22, -120
	.cfi_offset 23, -112
	.cfi_offset 24, -104
	.cfi_offset 25, -96
	.cfi_offset 26, -88
	str	xzr, [sp, 1024]	//,
	mov	x25, x0	// options, tmp345
	adrp	x0, :got:__stack_chk_guard	// tmp211,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp211,
// /usr/include/c++/13/bits/stl_vector.h:1909: 	if (__n > _S_max_size(_Tp_alloc_type(__a)))
	mov	x1, 1152921504606846975	// tmp212,
// simulacion.cpp:9:     Grid cells(options.rows * options.cols);
	ldp	x3, x24, [x25]	// prephitmp_448, _27, options_49(D)->rows
// simulacion.cpp:8: Grid initialize(const Options& options) {
	ldr	x2, [x0]	// tmp358,
	str	x2, [sp, 5016]	// tmp358, D.77930
	mov	x2, 0	// tmp358
// simulacion.cpp:9:     Grid cells(options.rows * options.cols);
	mul	x22, x3, x24	// _3, prephitmp_448, _27
// /usr/include/c++/13/bits/stl_vector.h:1909: 	if (__n > _S_max_size(_Tp_alloc_type(__a)))
	cmp	x22, x1	// _3, tmp212
	bhi	.L198		//,
	str	x19, [sp, 5040]	//,
	.cfi_offset 19, -144
	mov	x21, x8	// <retval>, tmp344
	str	x20, [sp, 5048]	//,
	.cfi_offset 20, -136
// /usr/include/c++/13/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	stp	xzr, xzr, [x8]	// MEM <vector(2) long unsigned int> [(struct Cell * *)cells_51(D)]
// /usr/include/c++/13/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	str	xzr, [x8, 16]	//, MEM[(struct _Vector_impl_data *)cells_51(D)]._M_end_of_storage
// /usr/include/c++/13/bits/stl_vector.h:381: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	cbz	x22, .L199	// _3,
// /usr/include/c++/13/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	lsl	x19, x22, 3	// _134, _3,
	mov	x0, x19	//, _134
.LEHB0:
	bl	_Znwm		//
.LEHE0:
	mov	x20, x0	// _135, tmp346
// /usr/include/c++/13/bits/stl_vector.h:400: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	add	x5, x0, x19	// __first, _135, _134
// simulacion.cpp:13:     for (std::size_t row = 0; row < options.rows; ++row) {
	ldr	x3, [x25]	// prephitmp_448, options_49(D)->rows
// /usr/include/c++/13/bits/stl_vector.h:398: 	this->_M_impl._M_start = this->_M_allocate(__n);
	str	x20, [x21]	// _135, MEM[(struct _Vector_base *)cells_51(D)]._M_impl.D.69242._M_start
// /usr/include/c++/13/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	str	wzr, [x20]	//, _135->moisture
// /usr/include/c++/13/bits/stl_uninitialized.h:667: 	      ++__first;
	add	x0, x0, 8	// __first, _135,
// /usr/include/c++/13/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	strh	wzr, [x20, 4]	//, MEM <vector(2) unsigned char> [(unsigned char *)_135 + 4B]
// /usr/include/c++/13/bits/stl_vector.h:400: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	str	x5, [x21, 16]	// __first, MEM[(struct _Vector_base *)cells_51(D)]._M_impl.D.69242._M_end_of_storage
// /usr/include/c++/13/bits/stl_algobase.h:1123:       if (__n <= 0)
	cmp	x22, 1	// _3,
	beq	.L137		//,
// simulacion.cpp:34:     Cell& focus = cells[index(options.fire_row, options.fire_col, options.cols)];
	ldr	x24, [x25, 8]	// _27, options_49(D)->cols
// /usr/include/c++/13/bits/stl_algobase.h:918:       for (; __first != __last; ++__first)
	cmp	x0, x5	// __first, __first
	beq	.L136		//,
	.p2align 3,,7
.L139:
// /usr/include/c++/13/bits/stl_algobase.h:919: 	*__first = __value;
	ldr	x1, [x20]	// MEM[(const struct Cell &)_135], MEM[(const struct Cell &)_135]
	str	x1, [x0], 8	// MEM[(const struct Cell &)_135], MEM[(struct Cell *)__first_169]
// /usr/include/c++/13/bits/stl_algobase.h:918:       for (; __first != __last; ++__first)
	cmp	x0, x5	// __first, __first
	bne	.L139		//,
.L136:
	add	x26, sp, 16	// tmp338,,
// simulacion.cpp:10:     std::mt19937 generator(options.seed);
	ldr	w1, [x25, 24]	// generator___M_x_I_lsm0.239, options_49(D)->seed
// /usr/include/c++/13/bits/random.tcc:337: 	  __x *= __f;
	mov	x4, 35173	// tmp221,
	add	x0, x26, 8	// ivtmp.263, tmp338,
// /usr/include/c++/13/bits/random.tcc:333:       for (size_t __i = 1; __i < state_size; ++__i)
	mov	x2, 1	// __i,
// /usr/include/c++/13/bits/random.tcc:337: 	  __x *= __f;
	movk	x4, 0x6c07, lsl 16	// tmp221,,
// /usr/include/c++/13/bits/stl_vector.h:1717: 	this->_M_impl._M_finish =
	str	x5, [x21, 8]	// __first, MEM[(struct vector *)cells_51(D)].D.69903._M_impl.D.69242._M_finish
// /usr/include/c++/13/bits/random.tcc:330:       _M_x[0] = __detail::__mod<_UIntType,
	str	x1, [sp, 16]	// generator___M_x_I_lsm0.239, MEM[(struct mersenne_twister_engine *)&generator]._M_x[0]
	.p2align 3,,7
.L140:
// /usr/include/c++/13/bits/random.tcc:336: 	  __x ^= __x >> (__w - 2);
	eor	x1, x1, x1, lsr 30	// __x, generator___M_x_I_lsm0.239, generator___M_x_I_lsm0.239,
// /usr/include/c++/13/bits/random.h:143: 	    __res %= __m;
	madd	w1, w1, w4, w2	// generator___M_x_I_lsm0.239, __x, tmp221, __i
// /usr/include/c++/13/bits/random.tcc:333:       for (size_t __i = 1; __i < state_size; ++__i)
	add	x2, x2, 1	// __i, __i,
// /usr/include/c++/13/bits/random.tcc:339: 	  _M_x[__i] = __detail::__mod<_UIntType,
	str	x1, [x0], 8	// generator___M_x_I_lsm0.239, MEM[(long unsigned int *)_365]
// /usr/include/c++/13/bits/random.tcc:333:       for (size_t __i = 1; __i < state_size; ++__i)
	cmp	x2, 624	// __i,
	bne	.L140		//,
// /usr/include/c++/13/bits/random.tcc:342:       _M_p = state_size;
	str	x2, [sp, 5008]	// __i, MEM[(struct mersenne_twister_engine *)&generator]._M_p
// simulacion.cpp:13:     for (std::size_t row = 0; row < options.rows; ++row) {
	mov	x19, 0	// row,
// simulacion.cpp:13:     for (std::size_t row = 0; row < options.rows; ++row) {
	cbz	x3, .L142	// prephitmp_448,
// simulacion.cpp:17:             bool lake = std::pow((x - 0.72f) / 0.105f, 2) +
	mov	w0, 2621	// tmp354,
// simulacion.cpp:17:             bool lake = std::pow((x - 0.72f) / 0.105f, 2) +
	mov	w1, 20972	// tmp353,
// simulacion.cpp:17:             bool lake = std::pow((x - 0.72f) / 0.105f, 2) +
	movk	w0, 0x3dd7, lsl 16	// tmp354,,
	str	d12, [sp, 5152]	//,
	.cfi_offset 76, -32
	fmov	s12, w0	// tmp340, tmp354
// simulacion.cpp:18:                         std::pow((y - 0.55f) / 0.16f, 2) < 1;
	mov	w0, 55050	// tmp356,
// simulacion.cpp:17:             bool lake = std::pow((x - 0.72f) / 0.105f, 2) +
	movk	w1, 0x3f38, lsl 16	// tmp353,,
// simulacion.cpp:18:                         std::pow((y - 0.55f) / 0.16f, 2) < 1;
	movk	w0, 0x3e23, lsl 16	// tmp356,,
	str	d9, [sp, 5128]	//,
	.cfi_offset 73, -56
	fmov	s9, w0	// tmp342, tmp356
// simulacion.cpp:24:             cell.state = lake ? WATER : (terrain_random < 0.12f ? EMPTY : TREE);
	mov	w0, 49807	// tmp357,
	str	d13, [sp, 5160]	//,
	.cfi_offset 77, -24
// simulacion.cpp:17:             bool lake = std::pow((x - 0.72f) / 0.105f, 2) +
	fmov	s13, w1	// tmp339, tmp353
// simulacion.cpp:18:                         std::pow((y - 0.55f) / 0.16f, 2) < 1;
	mov	w1, 52429	// tmp355,
	movk	w1, 0x3f0c, lsl 16	// tmp355,,
// simulacion.cpp:24:             cell.state = lake ? WATER : (terrain_random < 0.12f ? EMPTY : TREE);
	movk	w0, 0x3df5, lsl 16	// tmp357,,
	str	w0, [sp, 12]	// tmp357, %sfp
	str	x27, [sp, 5104]	//,
	.cfi_offset 27, -80
	str	d11, [sp, 5144]	//,
	.cfi_offset 75, -40
// simulacion.cpp:18:                         std::pow((y - 0.55f) / 0.16f, 2) < 1;
	fmov	s11, w1	// tmp341, tmp355
	str	d8, [sp, 5120]	//,
	.cfi_offset 72, -64
	str	d10, [sp, 5136]	//,
	.cfi_offset 74, -48
	str	d14, [sp, 5168]	//,
	.cfi_offset 78, -16
	str	d15, [sp, 5176]	//,
	.cfi_offset 79, -8
	.p2align 3,,7
.L141:
// simulacion.cpp:14:         for (std::size_t column = 0; column < options.cols; ++column) {
	cbz	x24, .L195	// _27,
// simulacion.cpp:16:             float y = (static_cast<float>(row) + 0.5f) / options.rows;
	ucvtf	s10, x19	// tmp224, row
// simulacion.cpp:16:             float y = (static_cast<float>(row) + 0.5f) / options.rows;
	fmov	s0, 5.0e-1	// tmp225,
// /usr/include/c++/13/bits/random.tcc:464:       __z ^= (__z << __s) & __b;
	mov	x27, 22144	// tmp248,
// /usr/include/c++/13/bits/random.tcc:3370:       __ret = __sum / __tmp;
	mov	w0, 796917760	// tmp352,
// /usr/include/c++/13/bits/random.tcc:458:       if (_M_p >= state_size)
	ldr	x2, [sp, 5008]	// prephitmp_510, generator._M_p
// simulacion.cpp:14:         for (std::size_t column = 0; column < options.cols; ++column) {
	mov	x23, 0	// column,
// simulacion.cpp:16:             float y = (static_cast<float>(row) + 0.5f) / options.rows;
	fadd	s10, s10, s0	// _446, tmp224, tmp225
// /usr/include/c++/13/bits/random.tcc:3370:       __ret = __sum / __tmp;
	fmov	s14, w0	// tmp255, tmp352
// /usr/include/c++/13/bits/random.tcc:464:       __z ^= (__z << __s) & __b;
	movk	x27, 0x9d2c, lsl 16	// tmp248,,
	b	.L157		//
	.p2align 2,,3
.L143:
// /usr/include/c++/13/bits/random.tcc:462:       result_type __z = _M_x[_M_p++];
	ldr	x1, [x26, x2, lsl 3]	// __z, generator._M_x[prephitmp_465]
// /usr/include/c++/13/bits/random.tcc:465:       __z ^= (__z << __t) & __c;
	mov	x0, 4022730752	// tmp250,
// /usr/include/c++/13/bits/random.tcc:3367: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	movi	v1.2s, #0	// tmp254
// /usr/include/c++/13/bits/random.tcc:3371:       if (__builtin_expect(__ret >= _RealType(1), 0))
	fmov	s3, 1.0e+0	// tmp256,
// /usr/include/c++/13/bits/random.tcc:462:       result_type __z = _M_x[_M_p++];
	add	x2, x2, 1	// _175, prephitmp_510,
	str	x2, [sp, 5008]	// _175, generator._M_p
// /usr/include/c++/13/bits/random.tcc:463:       __z ^= (__z >> __u) & __d;
	ubfx	x3, x1, 11, 32	// _178, __z,,
// /usr/include/c++/13/bits/random.tcc:463:       __z ^= (__z >> __u) & __d;
	eor	x1, x1, x3	// __z, __z, _178
// /usr/include/c++/13/bits/random.tcc:464:       __z ^= (__z << __s) & __b;
	and	x3, x27, x1, lsl 7	// _181, tmp248, __z,
// /usr/include/c++/13/bits/random.tcc:464:       __z ^= (__z << __s) & __b;
	eor	x1, x1, x3	// __z, __z, _181
// /usr/include/c++/13/bits/random.tcc:465:       __z ^= (__z << __t) & __c;
	and	x0, x0, x1, lsl 15	// _184, tmp250, __z,
// /usr/include/c++/13/bits/random.tcc:465:       __z ^= (__z << __t) & __c;
	eor	x1, x1, x0	// __z, __z, _184
// /usr/include/c++/13/bits/random.tcc:466:       __z ^= (__z >> __l);
	eor	x1, x1, x1, lsr 18	// __z, __z, __z,
// /usr/include/c++/13/bits/random.tcc:3367: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	ucvtf	s0, x1	// tmp252, __z
// /usr/include/c++/13/bits/random.tcc:3367: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	fadd	s0, s0, s1	// __sum, tmp252, tmp254
// /usr/include/c++/13/bits/random.tcc:3370:       __ret = __sum / __tmp;
	fmul	s0, s0, s14	// __ret, __sum, tmp255
// /usr/include/c++/13/bits/random.tcc:3371:       if (__builtin_expect(__ret >= _RealType(1), 0))
	fcmpe	s0, s3	// __ret, tmp256
	bge	.L172		//,
// /usr/include/c++/13/bits/random.h:1909: 	  return (__aurng() * (__p.b() - __p.a())) + __p.a();
	fadd	s1, s0, s1	// _467, __ret, tmp254
.L144:
// /usr/include/c++/13/bits/random.tcc:458:       if (_M_p >= state_size)
	cmp	x2, 623	// _175,
	bhi	.L200		//,
.L145:
// /usr/include/c++/13/bits/random.tcc:462:       result_type __z = _M_x[_M_p++];
	ldr	x1, [x26, x2, lsl 3]	// __z, generator._M_x[prephitmp_472]
// /usr/include/c++/13/bits/random.tcc:465:       __z ^= (__z << __t) & __c;
	mov	x3, 4022730752	// tmp265,
// /usr/include/c++/13/bits/random.tcc:3367: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	movi	v3.2s, #0	// tmp269
// /usr/include/c++/13/bits/random.tcc:3371:       if (__builtin_expect(__ret >= _RealType(1), 0))
	fmov	s4, 1.0e+0	// tmp271,
// /usr/include/c++/13/bits/random.tcc:462:       result_type __z = _M_x[_M_p++];
	add	x2, x2, 1	// prephitmp_510, _175,
	str	x2, [sp, 5008]	// prephitmp_510, generator._M_p
// /usr/include/c++/13/bits/random.tcc:463:       __z ^= (__z >> __u) & __d;
	ubfx	x0, x1, 11, 32	// _193, __z,,
// /usr/include/c++/13/bits/random.tcc:463:       __z ^= (__z >> __u) & __d;
	eor	x1, x1, x0	// __z, __z, _193
// /usr/include/c++/13/bits/random.tcc:464:       __z ^= (__z << __s) & __b;
	and	x0, x27, x1, lsl 7	// _196, tmp248, __z,
// /usr/include/c++/13/bits/random.tcc:464:       __z ^= (__z << __s) & __b;
	eor	x1, x1, x0	// __z, __z, _196
// /usr/include/c++/13/bits/random.tcc:465:       __z ^= (__z << __t) & __c;
	and	x3, x3, x1, lsl 15	// _199, tmp265, __z,
// /usr/include/c++/13/bits/random.tcc:465:       __z ^= (__z << __t) & __c;
	eor	x1, x1, x3	// __z, __z, _199
// /usr/include/c++/13/bits/random.tcc:466:       __z ^= (__z >> __l);
	eor	x1, x1, x1, lsr 18	// __z, __z, __z,
// /usr/include/c++/13/bits/random.tcc:3367: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	ucvtf	s0, x1	// tmp267, __z
// /usr/include/c++/13/bits/random.tcc:3367: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	fadd	s0, s0, s3	// __sum, tmp267, tmp269
// /usr/include/c++/13/bits/random.tcc:3370:       __ret = __sum / __tmp;
	fmul	s0, s0, s14	// __ret, __sum, tmp255
// /usr/include/c++/13/bits/random.tcc:3371:       if (__builtin_expect(__ret >= _RealType(1), 0))
	fcmpe	s0, s4	// __ret, tmp271
	bge	.L173		//,
// /usr/include/c++/13/bits/random.h:1909: 	  return (__aurng() * (__p.b() - __p.a())) + __p.a();
	fadd	s15, s0, s3	// _475, __ret, tmp269
.L146:
// simulacion.cpp:24:             cell.state = lake ? WATER : (terrain_random < 0.12f ? EMPTY : TREE);
	fmov	d0, 1.0e+0	// tmp276,
// modelo.h:21:     return row * columns + column;
	madd	x22, x19, x24, x23	// tmp274, row, _27, column
// simulacion.cpp:24:             cell.state = lake ? WATER : (terrain_random < 0.12f ? EMPTY : TREE);
	fcmpe	d8, d0	// _17, tmp276
// /usr/include/c++/13/bits/stl_vector.h:1129: 	return *(this->_M_impl._M_start + __n);
	add	x22, x20, x22, lsl 3	// _91, _135, tmp274,
// simulacion.cpp:24:             cell.state = lake ? WATER : (terrain_random < 0.12f ? EMPTY : TREE);
	bmi	.L178		//,
// simulacion.cpp:24:             cell.state = lake ? WATER : (terrain_random < 0.12f ? EMPTY : TREE);
	ldr	s0, [sp, 12]	// tmp343, %sfp
	fcmpe	s1, s0	// _467, tmp343
	cset	w0, mi	// tmp280,
// simulacion.cpp:24:             cell.state = lake ? WATER : (terrain_random < 0.12f ? EMPTY : TREE);
	eor	w0, w0, 1	// _19, tmp280,
// simulacion.cpp:24:             cell.state = lake ? WATER : (terrain_random < 0.12f ? EMPTY : TREE);
	strb	w0, [x22, 5]	// _19, MEM[(struct Cell &)_91].state
// simulacion.cpp:25:             cell.fuel = cell.state == TREE
	cbz	w0, .L149	// _19,
// /usr/include/c++/13/bits/random.tcc:458:       if (_M_p >= state_size)
	cmp	x2, 623	// prephitmp_510,
	bhi	.L153		//,
.L154:
// /usr/include/c++/13/bits/random.tcc:462:       result_type __z = _M_x[_M_p++];
	ldr	x0, [x26, x2, lsl 3]	// __z, generator._M_x[prephitmp_480]
// /usr/include/c++/13/bits/random.tcc:465:       __z ^= (__z << __t) & __c;
	mov	x1, 4022730752	// tmp291,
// /usr/include/c++/13/bits/random.tcc:3367: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	movi	v1.2s, #0	// tmp295
// /usr/include/c++/13/bits/random.tcc:3371:       if (__builtin_expect(__ret >= _RealType(1), 0))
	fmov	s3, 1.0e+0	// tmp297,
// /usr/include/c++/13/bits/random.tcc:462:       result_type __z = _M_x[_M_p++];
	add	x2, x2, 1	// prephitmp_510, pretmp_479,
	str	x2, [sp, 5008]	// prephitmp_510, generator._M_p
// /usr/include/c++/13/bits/random.tcc:463:       __z ^= (__z >> __u) & __d;
	ubfx	x3, x0, 11, 32	// _223, __z,,
// /usr/include/c++/13/bits/random.tcc:463:       __z ^= (__z >> __u) & __d;
	eor	x0, x0, x3	// __z, __z, _223
// /usr/include/c++/13/bits/random.tcc:464:       __z ^= (__z << __s) & __b;
	and	x3, x27, x0, lsl 7	// _226, tmp248, __z,
// /usr/include/c++/13/bits/random.tcc:464:       __z ^= (__z << __s) & __b;
	eor	x0, x0, x3	// __z, __z, _226
// /usr/include/c++/13/bits/random.tcc:465:       __z ^= (__z << __t) & __c;
	and	x1, x1, x0, lsl 15	// _229, tmp291, __z,
// /usr/include/c++/13/bits/random.tcc:465:       __z ^= (__z << __t) & __c;
	eor	x0, x0, x1	// __z, __z, _229
// /usr/include/c++/13/bits/random.tcc:466:       __z ^= (__z >> __l);
	eor	x0, x0, x0, lsr 18	// __z, __z, __z,
// /usr/include/c++/13/bits/random.tcc:3367: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	ucvtf	s0, x0	// tmp293, __z
// /usr/include/c++/13/bits/random.tcc:3367: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	fadd	s0, s0, s1	// __sum, tmp293, tmp295
// /usr/include/c++/13/bits/random.tcc:3370:       __ret = __sum / __tmp;
	fmul	s0, s0, s14	// __ret, __sum, tmp255
// /usr/include/c++/13/bits/random.tcc:3371:       if (__builtin_expect(__ret >= _RealType(1), 0))
	fcmpe	s0, s3	// __ret, tmp297
	bge	.L174		//,
// /usr/include/c++/13/bits/random.h:1909: 	  return (__aurng() * (__p.b() - __p.a())) + __p.a();
	fadd	s0, s0, s1	// tmp298, __ret, tmp295
// simulacion.cpp:26:                 ? static_cast<std::uint8_t>(3 + static_cast<int>(random_value(generator) * 4))
	fcvtzs	w0, s0, #2	// tmp302, tmp298
// simulacion.cpp:25:             cell.fuel = cell.state == TREE
	add	w0, w0, 3	// tmp304, tmp302,
	and	w0, w0, 255	// _494, tmp304
.L152:
// simulacion.cpp:29:                 ? std::clamp(options.moisture + (moisture_random - 0.5f) * 0.16f, 0.f, 1.f)
	fmov	s0, 5.0e-1	// tmp307,
// simulacion.cpp:29:                 ? std::clamp(options.moisture + (moisture_random - 0.5f) * 0.16f, 0.f, 1.f)
	ldr	s1, [x25, 28]	// options_49(D)->moisture, options_49(D)->moisture
// simulacion.cpp:25:             cell.fuel = cell.state == TREE
	strb	w0, [x22, 4]	// _494, MEM[(struct Cell &)_91].fuel
// simulacion.cpp:29:                 ? std::clamp(options.moisture + (moisture_random - 0.5f) * 0.16f, 0.f, 1.f)
	fsub	s0, s15, s0	// tmp306, _475, tmp307
// simulacion.cpp:29:                 ? std::clamp(options.moisture + (moisture_random - 0.5f) * 0.16f, 0.f, 1.f)
	fmul	s0, s0, s9	// tmp308, tmp306, tmp342
// simulacion.cpp:29:                 ? std::clamp(options.moisture + (moisture_random - 0.5f) * 0.16f, 0.f, 1.f)
	fadd	s0, s0, s1	// iftmp.2_41, tmp308, options_49(D)->moisture
// /usr/include/c++/13/bits/stl_algobase.h:262:       if (__a < __b)
	fcmpe	s0, #0.0	// iftmp.2_41
	bmi	.L175		//,
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	fmov	s1, 1.0e+0	// tmp311,
	fcmpe	s0, s1	// iftmp.2_41, tmp311
	bgt	.L179		//,
	.p2align 3,,7
.L151:
// simulacion.cpp:14:         for (std::size_t column = 0; column < options.cols; ++column) {
	ldp	x3, x24, [x25]	// prephitmp_448, _27, options_49(D)->rows
// simulacion.cpp:14:         for (std::size_t column = 0; column < options.cols; ++column) {
	add	x23, x23, 1	// column, column,
// simulacion.cpp:28:             cell.moisture = cell.state == TREE
	str	s0, [x22]	// iftmp.2_41, MEM[(struct Cell &)_91].moisture
// simulacion.cpp:14:         for (std::size_t column = 0; column < options.cols; ++column) {
	cmp	x24, x23	// _27, column
	bls	.L201		//,
	.p2align 3,,7
.L157:
// simulacion.cpp:15:             float x = (static_cast<float>(column) + 0.5f) / options.cols;
	ucvtf	s1, x23	// tmp226, column
// simulacion.cpp:15:             float x = (static_cast<float>(column) + 0.5f) / options.cols;
	fmov	s4, 5.0e-1	// tmp228,
// simulacion.cpp:15:             float x = (static_cast<float>(column) + 0.5f) / options.cols;
	ucvtf	s3, x24	// tmp229, _27
// simulacion.cpp:16:             float y = (static_cast<float>(row) + 0.5f) / options.rows;
	ucvtf	s0, x3	// tmp235, prephitmp_448
// simulacion.cpp:15:             float x = (static_cast<float>(column) + 0.5f) / options.cols;
	fadd	s1, s1, s4	// tmp227, tmp226, tmp228
// simulacion.cpp:16:             float y = (static_cast<float>(row) + 0.5f) / options.rows;
	fdiv	s0, s10, s0	// y, _446, tmp235
// simulacion.cpp:15:             float x = (static_cast<float>(column) + 0.5f) / options.cols;
	fdiv	s1, s1, s3	// x, tmp227, tmp229
// simulacion.cpp:18:                         std::pow((y - 0.55f) / 0.16f, 2) < 1;
	fsub	s0, s0, s11	// tmp237, y, tmp341
// simulacion.cpp:17:             bool lake = std::pow((x - 0.72f) / 0.105f, 2) +
	fsub	s1, s1, s13	// tmp231, x, tmp339
// simulacion.cpp:18:                         std::pow((y - 0.55f) / 0.16f, 2) < 1;
	fdiv	s0, s0, s9	// tmp239, tmp237, tmp342
// simulacion.cpp:17:             bool lake = std::pow((x - 0.72f) / 0.105f, 2) +
	fdiv	s1, s1, s12	// tmp233, tmp231, tmp340
// /usr/include/c++/13/cmath:1073:       return pow(__type(__x), __type(__y));
	fcvt	d0, s0	// _98, tmp239
	fcvt	d1, s1	// _100, tmp233
	fmul	d0, d0, d0	// tmp241, _98, _98
	fmul	d1, d1, d1	// tmp242, _100, _100
// simulacion.cpp:17:             bool lake = std::pow((x - 0.72f) / 0.105f, 2) +
	fadd	d8, d0, d1	// _17, tmp241, tmp242
// /usr/include/c++/13/bits/random.tcc:458:       if (_M_p >= state_size)
	cmp	x2, 623	// prephitmp_510,
	bls	.L143		//,
// /usr/include/c++/13/bits/random.tcc:459: 	_M_gen_rand();
	mov	x0, x26	//, tmp338
	bl	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv		//
// /usr/include/c++/13/bits/random.tcc:462:       result_type __z = _M_x[_M_p++];
	ldr	x2, [sp, 5008]	// prephitmp_510, generator._M_p
	b	.L143		//
	.p2align 2,,3
.L178:
// simulacion.cpp:24:             cell.state = lake ? WATER : (terrain_random < 0.12f ? EMPTY : TREE);
	mov	w0, 4	// tmp277,
	strb	w0, [x22, 5]	// tmp277, MEM[(struct Cell &)_91].state
.L149:
// simulacion.cpp:14:         for (std::size_t column = 0; column < options.cols; ++column) {
	ldp	x3, x24, [x25]	// prephitmp_448, _27, options_49(D)->rows
// simulacion.cpp:29:                 ? std::clamp(options.moisture + (moisture_random - 0.5f) * 0.16f, 0.f, 1.f)
	movi	v0.2s, #0	// iftmp.2_41
// simulacion.cpp:14:         for (std::size_t column = 0; column < options.cols; ++column) {
	add	x23, x23, 1	// column, column,
// simulacion.cpp:25:             cell.fuel = cell.state == TREE
	strb	wzr, [x22, 4]	//, MEM[(struct Cell &)_91].fuel
// simulacion.cpp:28:             cell.moisture = cell.state == TREE
	str	s0, [x22]	// iftmp.2_41, MEM[(struct Cell &)_91].moisture
// simulacion.cpp:14:         for (std::size_t column = 0; column < options.cols; ++column) {
	cmp	x24, x23	// _27, column
	bhi	.L157		//,
.L201:
// simulacion.cpp:13:     for (std::size_t row = 0; row < options.rows; ++row) {
	add	x19, x19, 1	// row, row,
// simulacion.cpp:13:     for (std::size_t row = 0; row < options.rows; ++row) {
	cmp	x19, x3	// row, prephitmp_448
	bcc	.L141		//,
.L195:
	ldr	x27, [sp, 5104]	//,
	.cfi_restore 27
	ldr	d8, [sp, 5120]	//,
	.cfi_restore 72
	ldr	d9, [sp, 5128]	//,
	.cfi_restore 73
	ldr	d10, [sp, 5136]	//,
	.cfi_restore 74
	ldr	d11, [sp, 5144]	//,
	.cfi_restore 75
	ldr	d12, [sp, 5152]	//,
	.cfi_restore 76
	ldr	d13, [sp, 5160]	//,
	.cfi_restore 77
	ldr	d14, [sp, 5168]	//,
	.cfi_restore 78
	ldr	d15, [sp, 5176]	//,
	.cfi_restore 79
.L142:
// modelo.h:21:     return row * columns + column;
	ldp	x1, x0, [x25, 80]	// options_49(D)->fire_row, options_49(D)->fire_col, options_49(D)->fire_row
// simulacion.cpp:35:     if (!options.fire_set && focus.state != WATER) {
	ldrb	w2, [x25, 96]	// options_49(D)->fire_set, options_49(D)->fire_set
// modelo.h:21:     return row * columns + column;
	madd	x1, x24, x1, x0	// tmp314, _27, options_49(D)->fire_row, options_49(D)->fire_col
// /usr/include/c++/13/bits/stl_vector.h:1129: 	return *(this->_M_impl._M_start + __n);
	add	x1, x20, x1, lsl 3	// _109, _135, tmp314,
// simulacion.cpp:35:     if (!options.fire_set && focus.state != WATER) {
	ldrb	w0, [x1, 5]	// pretmp_523, MEM[(struct Cell &)_109].state
// simulacion.cpp:35:     if (!options.fire_set && focus.state != WATER) {
	tbnz	x2, 0, .L160	// options_49(D)->fire_set,,
// simulacion.cpp:35:     if (!options.fire_set && focus.state != WATER) {
	cmp	w0, 4	// pretmp_523,
	beq	.L164		//,
// simulacion.cpp:38:         focus.moisture = options.moisture;
	ldr	s0, [x25, 28]	// options_49(D)->moisture, options_49(D)->moisture
// simulacion.cpp:37:         focus.fuel = 5;
	mov	w0, 261	// tmp322,
	strh	w0, [x1, 4]	// tmp322, MEM <vector(2) unsigned char> [(unsigned char *)_109 + 4B]
// simulacion.cpp:38:         focus.moisture = options.moisture;
	str	s0, [x1]	// options_49(D)->moisture, MEM[(struct Cell &)_109].moisture
.L163:
// simulacion.cpp:45: }
	adrp	x0, :got:__stack_chk_guard	// tmp336,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp336,
// simulacion.cpp:43:     focus.state = FIRE;
	mov	w2, 2	// tmp328,
	strb	w2, [x1, 5]	// tmp328, MEM[(struct Cell &)_109].state
// simulacion.cpp:45: }
	ldr	x2, [sp, 5016]	// tmp363, D.77930
	ldr	x1, [x0]	// tmp364,
	subs	x2, x2, x1	// tmp363, tmp364
	mov	x1, 0	// tmp364
	bne	.L197		//,
	ldr	x19, [sp, 5040]	//,
	.cfi_restore 19
	mov	x13, 5024	//,
	ldr	x20, [sp, 5048]	//,
	.cfi_restore 20
	add	sp, sp, x13	//,,
	.cfi_def_cfa_offset 160
	mov	x0, x21	//, <retval>
	ldp	x21, x22, [sp, 32]	//,,
	ldp	x23, x24, [sp, 48]	//,,
	ldp	x25, x26, [sp, 64]	//,,
	ldp	x29, x30, [sp], 160	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_def_cfa_offset 0
	ret	
	.p2align 2,,3
.L200:
	.cfi_def_cfa_offset 5184
	.cfi_offset 19, -144
	.cfi_offset 20, -136
	.cfi_offset 21, -128
	.cfi_offset 22, -120
	.cfi_offset 23, -112
	.cfi_offset 24, -104
	.cfi_offset 25, -96
	.cfi_offset 26, -88
	.cfi_offset 27, -80
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	.cfi_offset 72, -64
	.cfi_offset 73, -56
	.cfi_offset 74, -48
	.cfi_offset 75, -40
	.cfi_offset 76, -32
	.cfi_offset 77, -24
	.cfi_offset 78, -16
	.cfi_offset 79, -8
// /usr/include/c++/13/bits/random.tcc:459: 	_M_gen_rand();
	mov	x0, x26	//, tmp338
	str	s1, [sp, 8]	// _467, %sfp
	bl	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv		//
// /usr/include/c++/13/bits/random.tcc:462:       result_type __z = _M_x[_M_p++];
	ldr	s1, [sp, 8]	// _467, %sfp
	ldr	x2, [sp, 5008]	// _175, generator._M_p
	b	.L145		//
	.p2align 2,,3
.L179:
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	fmov	s0, s1	// iftmp.2_41, tmp311
	b	.L151		//
	.p2align 2,,3
.L175:
	movi	v0.2s, #0	// iftmp.2_41
	b	.L151		//
	.p2align 2,,3
.L173:
	mov	w1, 1065353215	// tmp350,
	fmov	s15, w1	// _475, tmp350
	b	.L146		//
	.p2align 2,,3
.L172:
	mov	w1, 1065353215	// tmp351,
	fmov	s1, w1	// _467, tmp351
	b	.L144		//
	.p2align 2,,3
.L153:
// /usr/include/c++/13/bits/random.tcc:459: 	_M_gen_rand();
	mov	x0, x26	//, tmp338
	bl	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv		//
// /usr/include/c++/13/bits/random.tcc:462:       result_type __z = _M_x[_M_p++];
	ldr	x2, [sp, 5008]	// pretmp_479, generator._M_p
	b	.L154		//
	.p2align 2,,3
.L174:
	mov	w0, 6	// _494,
	b	.L152		//
.L160:
	.cfi_restore 27
	.cfi_restore 72
	.cfi_restore 73
	.cfi_restore 74
	.cfi_restore 75
	.cfi_restore 76
	.cfi_restore 77
	.cfi_restore 78
	.cfi_restore 79
// simulacion.cpp:40:     if (focus.state != TREE || !focus.fuel) {
	cmp	w0, 1	// pretmp_523,
	bne	.L164		//,
// simulacion.cpp:40:     if (focus.state != TREE || !focus.fuel) {
	ldrb	w0, [x1, 4]	// MEM[(struct Cell &)_109].fuel, MEM[(struct Cell &)_109].fuel
	cbnz	w0, .L163	// MEM[(struct Cell &)_109].fuel,
.L164:
// simulacion.cpp:41:         throw std::invalid_argument("El foco cae sobre agua o un claro: elige otra celda con vegetación");
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// simulacion.cpp:41:         throw std::invalid_argument("El foco cae sobre agua o un claro: elige otra celda con vegetación");
	adrp	x1, .LC5	// tmp321,
// simulacion.cpp:41:         throw std::invalid_argument("El foco cae sobre agua o un claro: elige otra celda con vegetación");
	mov	x20, x0	// _61, tmp347
// simulacion.cpp:41:         throw std::invalid_argument("El foco cae sobre agua o un claro: elige otra celda con vegetación");
	add	x1, x1, :lo12:.LC5	//, tmp321,
.LEHB1:
	bl	_ZNSt16invalid_argumentC1EPKc		//
.LEHE1:
// simulacion.cpp:41:         throw std::invalid_argument("El foco cae sobre agua o un claro: elige otra celda con vegetación");
	adrp	x22, :got:__stack_chk_guard	// tmp337,
	ldr	x22, [x22, :got_lo12:__stack_chk_guard]	// tmp337,
	ldr	x0, [sp, 5016]	// tmp361, D.77930
	ldr	x1, [x22]	// tmp362,
	subs	x0, x0, x1	// tmp361, tmp362
	mov	x1, 0	// tmp362
	bne	.L197		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x20	//, _61
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB2:
	bl	__cxa_throw		//
.LEHE2:
	.p2align 2,,3
.L199:
// /usr/include/c++/13/bits/stl_vector.h:381: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	mov	x20, 0	// _135,
	mov	x5, 0	// __first,
// /usr/include/c++/13/bits/stl_vector.h:398: 	this->_M_impl._M_start = this->_M_allocate(__n);
	str	xzr, [x8]	//, MEM[(struct _Vector_base *)cells_51(D)]._M_impl.D.69242._M_start
// /usr/include/c++/13/bits/stl_vector.h:400: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	str	xzr, [x8, 16]	//, MEM[(struct _Vector_base *)cells_51(D)]._M_impl.D.69242._M_end_of_storage
	b	.L136		//
.L137:
// simulacion.cpp:34:     Cell& focus = cells[index(options.fire_row, options.fire_col, options.cols)];
	ldr	x24, [x25, 8]	// _27, options_49(D)->cols
// /usr/include/c++/13/bits/stl_algobase.h:1124: 	return __first;
	mov	x5, x0	// __first, __first
	b	.L136		//
.L198:
	.cfi_restore 19
	.cfi_restore 20
// /usr/include/c++/13/bits/stl_vector.h:1910: 	  __throw_length_error(
	adrp	x0, :got:__stack_chk_guard	// tmp213,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp213,
	ldr	x2, [sp, 5016]	// tmp359, D.77930
	ldr	x1, [x0]	// tmp360,
	subs	x2, x2, x1	// tmp359, tmp360
	mov	x1, 0	// tmp360
	str	x19, [sp, 5040]	//,
	.cfi_offset 19, -144
	str	x20, [sp, 5048]	//,
	.cfi_offset 20, -136
	str	x27, [sp, 5104]	//,
	.cfi_offset 27, -80
	str	d8, [sp, 5120]	//,
	.cfi_offset 72, -64
	str	d9, [sp, 5128]	//,
	.cfi_offset 73, -56
	str	d10, [sp, 5136]	//,
	.cfi_offset 74, -48
	str	d11, [sp, 5144]	//,
	.cfi_offset 75, -40
	str	d12, [sp, 5152]	//,
	.cfi_offset 76, -32
	str	d13, [sp, 5160]	//,
	.cfi_offset 77, -24
	str	d14, [sp, 5168]	//,
	.cfi_offset 78, -16
	str	d15, [sp, 5176]	//,
	.cfi_offset 79, -8
	bne	.L196		//,
	adrp	x0, .LC4	// tmp215,
	add	x0, x0, :lo12:.LC4	//, tmp215,
.LEHB3:
	bl	_ZSt20__throw_length_errorPKc		//
.L197:
	.cfi_restore 27
	.cfi_restore 72
	.cfi_restore 73
	.cfi_restore 74
	.cfi_restore 75
	.cfi_restore 76
	.cfi_restore 77
	.cfi_restore 78
	.cfi_restore 79
	str	x27, [sp, 5104]	//,
	.cfi_offset 27, -80
	str	d8, [sp, 5120]	//,
	.cfi_offset 72, -64
	str	d9, [sp, 5128]	//,
	.cfi_offset 73, -56
	str	d10, [sp, 5136]	//,
	.cfi_offset 74, -48
	str	d11, [sp, 5144]	//,
	.cfi_offset 75, -40
	str	d12, [sp, 5152]	//,
	.cfi_offset 76, -32
	str	d13, [sp, 5160]	//,
	.cfi_offset 77, -24
	str	d14, [sp, 5168]	//,
	.cfi_offset 78, -16
	str	d15, [sp, 5176]	//,
	.cfi_offset 79, -8
.L196:
// simulacion.cpp:41:         throw std::invalid_argument("El foco cae sobre agua o un claro: elige otra celda con vegetación");
	bl	__stack_chk_fail		//
.L177:
	.cfi_restore 27
	.cfi_restore 72
	.cfi_restore 73
	.cfi_restore 74
	.cfi_restore 75
	.cfi_restore 76
	.cfi_restore 77
	.cfi_restore 78
	.cfi_restore 79
	adrp	x22, :got:__stack_chk_guard	// tmp337,
	ldr	x22, [x22, :got_lo12:__stack_chk_guard]	// tmp337,
// simulacion.cpp:41:         throw std::invalid_argument("El foco cae sobre agua o un claro: elige otra celda con vegetación");
	mov	x19, x0	// tmp348,
	mov	x0, x20	//, _61
	bl	__cxa_free_exception		//
.L167:
// /usr/include/c++/13/bits/stl_vector.h:369: 	_M_deallocate(_M_impl._M_start,
	ldr	x0, [x21]	// _235, MEM[(struct _Vector_base *)cells_51(D)]._M_impl.D.69242._M_start
// /usr/include/c++/13/bits/stl_vector.h:370: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	ldr	x1, [x21, 16]	// MEM[(struct _Vector_base *)cells_51(D)]._M_impl.D.69242._M_end_of_storage, MEM[(struct _Vector_base *)cells_51(D)]._M_impl.D.69242._M_end_of_storage
	sub	x1, x1, x0	// _237, MEM[(struct _Vector_base *)cells_51(D)]._M_impl.D.69242._M_end_of_storage, _235
// /usr/include/c++/13/bits/stl_vector.h:389: 	if (__p)
	cbz	x0, .L168	// _235,
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	bl	_ZdlPvm		//
.L168:
	ldr	x0, [sp, 5016]	// tmp365, D.77930
	ldr	x1, [x22]	// tmp366,
	subs	x0, x0, x1	// tmp365, tmp366
	mov	x1, 0	// tmp366
	str	x27, [sp, 5104]	//,
	.cfi_offset 27, -80
	str	d8, [sp, 5120]	//,
	.cfi_offset 72, -64
	str	d9, [sp, 5128]	//,
	.cfi_offset 73, -56
	str	d10, [sp, 5136]	//,
	.cfi_offset 74, -48
	str	d11, [sp, 5144]	//,
	.cfi_offset 75, -40
	str	d12, [sp, 5152]	//,
	.cfi_offset 76, -32
	str	d13, [sp, 5160]	//,
	.cfi_offset 77, -24
	str	d14, [sp, 5168]	//,
	.cfi_offset 78, -16
	str	d15, [sp, 5176]	//,
	.cfi_offset 79, -8
	bne	.L196		//,
	mov	x0, x19	//, tmp330
	bl	_Unwind_Resume		//
.LEHE3:
.L176:
	.cfi_restore 27
	.cfi_restore 72
	.cfi_restore 73
	.cfi_restore 74
	.cfi_restore 75
	.cfi_restore 76
	.cfi_restore 77
	.cfi_restore 78
	.cfi_restore 79
// /usr/include/c++/13/bits/stl_vector.h:369: 	_M_deallocate(_M_impl._M_start,
	mov	x19, x0	// tmp330, tmp349
	b	.L167		//
	.cfi_endproc
.LFE3370:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA3370:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3370-.LLSDACSB3370
.LLSDACSB3370:
	.uleb128 .LEHB0-.LFB3370
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3370
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L177-.LFB3370
	.uleb128 0
	.uleb128 .LEHB2-.LFB3370
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L176-.LFB3370
	.uleb128 0
	.uleb128 .LEHB3-.LFB3370
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE3370:
	.text
	.size	_Z10initializeRK7Options, .-_Z10initializeRK7Options
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC0:
	.xword	-2147483648
	.xword	-2147483648
	.align	4
.LC1:
	.xword	2147483647
	.xword	2147483647
	.align	4
.LC2:
	.xword	1
	.xword	1
	.align	4
.LC3:
	.xword	2567483615
	.xword	2567483615
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align	3
	.type	DW.ref.__gxx_personality_v0, %object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.xword	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
