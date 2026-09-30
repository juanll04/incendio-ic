	.arch armv8-a
	.file	"main.cpp"
// GNU C++17 (Ubuntu 13.3.0-6ubuntu2~24.04.1) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -O3 -std=c++17 -ffp-contract=off -fopt-info-vec-optimized-missed -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.text._ZNSt6vectorI4CellSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI4CellSaIS0_EED5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorI4CellSaIS0_EED2Ev
	.type	_ZNSt6vectorI4CellSaIS0_EED2Ev, %function
_ZNSt6vectorI4CellSaIS0_EED2Ev:
.LFB3572:
	.cfi_startproc
// /usr/include/c++/13/bits/stl_vector.h:733:       ~vector() _GLIBCXX_NOEXCEPT
	mov	x2, x0	// this, tmp99
// /usr/include/c++/13/bits/stl_vector.h:369: 	_M_deallocate(_M_impl._M_start,
	ldr	x0, [x0]	// _6, MEM[(struct _Vector_base *)this_4(D)]._M_impl.D.77017._M_start
// /usr/include/c++/13/bits/stl_vector.h:389: 	if (__p)
	cbz	x0, .L1	// _6,
// /usr/include/c++/13/bits/stl_vector.h:370: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	ldr	x1, [x2, 16]	// MEM[(struct _Vector_base *)this_4(D)]._M_impl.D.77017._M_end_of_storage, MEM[(struct _Vector_base *)this_4(D)]._M_impl.D.77017._M_end_of_storage
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	sub	x1, x1, x0	//, MEM[(struct _Vector_base *)this_4(D)]._M_impl.D.77017._M_end_of_storage, _6
	b	_ZdlPvm		//
	.p2align 2,,3
.L1:
// /usr/include/c++/13/bits/stl_vector.h:738:       }
	ret	
	.cfi_endproc
.LFE3572:
	.size	_ZNSt6vectorI4CellSaIS0_EED2Ev, .-_ZNSt6vectorI4CellSaIS0_EED2Ev
	.weak	_ZNSt6vectorI4CellSaIS0_EED1Ev
	.set	_ZNSt6vectorI4CellSaIS0_EED1Ev,_ZNSt6vectorI4CellSaIS0_EED2Ev
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"cannot create std::vector larger than max_size()"
	.align	3
.LC1:
	.string	"Resumen: "
	.align	3
.LC2:
	.string	"x"
	.align	3
.LC3:
	.string	"="
	.align	3
.LC4:
	.string	" celdas; semilla="
	.align	3
.LC5:
	.string	"; humedad="
	.align	3
.LC6:
	.string	"; viento="
	.align	3
.LC7:
	.string	":"
	.align	3
.LC8:
	.string	"; foco=("
	.align	3
.LC9:
	.string	","
	.align	3
.LC10:
	.string	")\n"
	.align	3
.LC11:
	.string	"Iteraciones="
	.align	3
.LC12:
	.string	"; con fuego al terminar="
	.align	3
.LC13:
	.string	"; tiempo_bucle_s="
	.align	3
.LC14:
	.string	"\n"
	.align	3
.LC15:
	.string	"Final: vegetaci\303\263n="
	.align	3
.LC16:
	.string	" fuego="
	.align	3
.LC17:
	.string	" quemado="
	.align	3
.LC18:
	.string	" agua="
	.align	3
.LC19:
	.string	" vac\303\255o="
	.align	3
.LC20:
	.string	"; inicial_afectada="
	.align	3
.LC21:
	.string	"/"
	.align	3
.LC22:
	.string	"; checksum="
	.align	3
.LC23:
	.string	"Memoria: cell_bytes="
	.align	3
.LC24:
	.string	"; buffers_bytes="
	.align	3
.LC25:
	.string	"; quemado_pct_total="
	.align	3
.LC26:
	.string	"; afectado_pct_bosque="
	.align	3
.LC27:
	.string	"Diagn\303\263stico: humedad_s="
	.align	3
.LC28:
	.string	"; fuego_s="
	.align	3
.LC29:
	.string	"; resto_s="
	.align	3
.LC30:
	.string	"Interrumpido tras "
	.align	3
.LC31:
	.string	" iteraciones\n"
	.align	3
.LC32:
	.string	"Fin visual: detenido con q.\n"
	.align	3
.LC33:
	.string	"Fin visual: fuego extinguido.\n"
	.align	3
.LC34:
	.string	"Error: memoria insuficiente\n"
	.align	3
.LC35:
	.string	"Error: dimensiones demasiado grandes para reservar memoria\n"
	.align	3
.LC36:
	.string	"Error: "
	.align	3
.LC37:
	.string	". Usa --help.\n"
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 4,,11
	.global	main
	.type	main, %function
main:
.LFB3249:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3249
	sub	sp, sp, #464	//,,
	.cfi_def_cfa_offset 464
	adrp	x2, :got:__stack_chk_guard	// tmp286,
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]	// tmp286,
	stp	x29, x30, [sp, 336]	//,,
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	add	x29, sp, 336	//,,
	stp	x19, x20, [sp, 352]	//,,
	stp	x25, x26, [sp, 400]	//,,
	.cfi_offset 19, -112
	.cfi_offset 20, -104
	.cfi_offset 25, -64
	.cfi_offset 26, -56
// main.cpp:142:         return run_simulation(parse_options(argc, argv));
	add	x26, sp, 216	// tmp590,,
	mov	x8, x26	//, tmp590
// main.cpp:140: int main(int argc, char** argv) {
	stp	d8, d9, [sp, 432]	//,,
	stp	d10, d11, [sp, 448]	//,,
	ldr	x3, [x2]	// tmp657,
	str	x3, [sp, 328]	// tmp657, D.85091
	mov	x3, 0	// tmp657
.LEHB0:
	.cfi_offset 72, -32
	.cfi_offset 73, -24
	.cfi_offset 74, -16
	.cfi_offset 75, -8
// main.cpp:142:         return run_simulation(parse_options(argc, argv));
	bl	_Z13parse_optionsiPPc		//
.LEHE0:
	stp	x23, x24, [sp, 384]	//,,
	.cfi_offset 24, -72
	.cfi_offset 23, -80
// main.cpp:104:     Grid current = initialize(options);
	add	x23, sp, 32	// tmp586,,
	mov	x0, x26	//, tmp590
	mov	x8, x23	//, tmp586
	stp	x21, x22, [sp, 368]	//,,
	.cfi_offset 22, -88
	.cfi_offset 21, -96
.LEHB1:
	bl	_Z10initializeRK7Options		//
.LEHE1:
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ldp	x1, x19, [sp, 32]	// current.D.77709._M_impl.D.77017._M_start, current.D.77709._M_impl.D.77017._M_finish, current.D.77709._M_impl.D.77017._M_start
// /usr/include/c++/13/bits/stl_vector.h:1909: 	if (__n > _S_max_size(_Tp_alloc_type(__a)))
	mov	x0, 9223372036854775800	// tmp293,
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	x19, x19, x1	// _41, current.D.77709._M_impl.D.77017._M_finish, current.D.77709._M_impl.D.77017._M_start
	asr	x21, x19, 3	// _43, _41,
// /usr/include/c++/13/bits/stl_vector.h:1909: 	if (__n > _S_max_size(_Tp_alloc_type(__a)))
	cmp	x19, x0	// _41, tmp293
	bhi	.L110		//,
// /usr/include/c++/13/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	stp	xzr, xzr, [sp, 64]	// MEM <vector(2) long unsigned int> [(struct Cell * *)&next]
// /usr/include/c++/13/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	str	xzr, [sp, 80]	//, MEM[(struct _Vector_impl_data *)&next]._M_end_of_storage
// /usr/include/c++/13/bits/stl_vector.h:381: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	cbz	x21, .L111	// _43,
	adrp	x20, :got:__stack_chk_guard	// tmp585,
	ldr	x20, [x20, :got_lo12:__stack_chk_guard]	// tmp585,
// /usr/include/c++/13/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x0, x19	//, _41
.LEHB2:
	bl	_Znwm		//
.LEHE2:
	stp	x27, x28, [sp, 416]	//,,
	.cfi_offset 28, -40
	.cfi_offset 27, -48
// /usr/include/c++/13/bits/stl_vector.h:400: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	add	x19, x0, x19	// _73, _79, _41
// /usr/include/c++/13/bits/stl_uninitialized.h:667: 	      ++__first;
	add	x1, x0, 8	// __first, _79,
// /usr/include/c++/13/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	str	wzr, [x0]	//, _79->moisture
	strh	wzr, [x0, 4]	//, MEM <vector(2) unsigned char> [(unsigned char *)_79 + 4B]
// /usr/include/c++/13/bits/stl_vector.h:398: 	this->_M_impl._M_start = this->_M_allocate(__n);
	str	x0, [sp, 64]	// _79, MEM[(struct _Vector_base *)&next]._M_impl.D.77017._M_start
// /usr/include/c++/13/bits/stl_vector.h:400: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	str	x19, [sp, 80]	// _73, MEM[(struct _Vector_base *)&next]._M_impl.D.77017._M_end_of_storage
// /usr/include/c++/13/bits/stl_algobase.h:1123:       if (__n <= 0)
	cmp	x21, 1	// _43,
	bne	.L103		//,
	.p2align 3,,7
.L8:
// /usr/include/c++/13/bits/stl_iterator.h:1077:       : _M_current(__i) { }
	ldp	x0, x2, [sp, 32]	// SR.165, _45, MEM[(struct Cell * const &)&current]
// /usr/include/c++/13/bits/stl_vector.h:1717: 	this->_M_impl._M_finish =
	str	x1, [sp, 72]	// __first, MEM[(struct vector *)&next].D.77709._M_impl.D.77017._M_finish
// main.cpp:107:     std::size_t initial_trees = 1;
	mov	x25, 1	// initial_trees,
// main.cpp:108:     for (const Cell& cell : current) {
	cmp	x0, x2	// SR.165, _45
	beq	.L10		//,
	.p2align 3,,7
.L11:
// main.cpp:109:         initial_trees += cell.state == TREE;
	ldrb	w1, [x0, 5]	// MEM[(unsigned char *)SR.165_248 + 5B], MEM[(unsigned char *)SR.165_248 + 5B]
// /usr/include/c++/13/bits/stl_iterator.h:1111: 	++_M_current;
	add	x0, x0, 8	// SR.165, SR.165,
// main.cpp:109:         initial_trees += cell.state == TREE;
	cmp	w1, 1	// MEM[(unsigned char *)SR.165_248 + 5B],
// main.cpp:109:         initial_trees += cell.state == TREE;
	cinc	x25, x25, eq	// initial_trees, initial_trees,
// main.cpp:108:     for (const Cell& cell : current) {
	cmp	x2, x0	// _45, SR.165
	bne	.L11		//,
.L10:
// main.cpp:112:     Terminal terminal(options.visual);
	ldrb	w1, [sp, 313]	//, D.78433.visual
	add	x27, sp, 152	// tmp589,,
	mov	x0, x27	//, tmp589
.LEHB3:
	bl	_ZN8TerminalC1Eb		//
.LEHE3:
// main.cpp:113:     Playback playback{options.delay, terminal.input_enabled(), false};
	ldr	w1, [sp, 320]	//, D.78433.delay
	add	x24, sp, 64	// tmp587,,
// main.cpp:113:     Playback playback{options.delay, terminal.input_enabled(), false};
	mov	x0, x27	//, tmp589
// main.cpp:113:     Playback playback{options.delay, terminal.input_enabled(), false};
	stp	w1, wzr, [sp, 24]	// D.78433.delay,, playback.delay
.LEHB4:
// main.cpp:113:     Playback playback{options.delay, terminal.input_enabled(), false};
	bl	_ZNK8Terminal13input_enabledEv		//
// main.cpp:113:     Playback playback{options.delay, terminal.input_enabled(), false};
	strb	w0, [sp, 28]	// tmp596, playback.keyboard
// main.cpp:114:     install_signal_handlers();
	bl	_Z23install_signal_handlersv		//
// main.cpp:115:     if (options.visual) {
	ldrb	w0, [sp, 313]	// D.78433.visual, D.78433.visual
	tbz	x0, 0, .L12	// D.78433.visual,,
// main.cpp:116:         terminal.begin_display();
	mov	x0, x27	//, tmp589
	bl	_ZN8Terminal13begin_displayEv		//
// main.cpp:117:         draw(current, options, playback, 0, initial_trees, terminal.output_is_terminal());
	mov	x0, x27	//, tmp589
	bl	_ZNK8Terminal18output_is_terminalEv		//
// main.cpp:117:         draw(current, options, playback, 0, initial_trees, terminal.output_is_terminal());
	mov	w5, w0	//, tmp597
	mov	x4, x25	//, initial_trees
	add	x2, sp, 24	//,,
	mov	x1, x26	//, tmp590
	mov	x0, x23	//, tmp586
	mov	x3, 0	//,
	bl	_Z4drawRKSt6vectorI4CellSaIS0_EERK7OptionsRK8Playbackmmb		//
.L12:
// main.cpp:32:     auto start = Clock::now();
	bl	_ZNSt6chrono3_V212steady_clock3nowEv		//
	str	x0, [sp, 8]	// tmp598, %sfp
// main.cpp:34:     for (std::size_t step = 0; step < options.steps && !interruption_requested(); ++step) {
	ldr	x21, [sp, 232]	// execution$steps, D.78433.steps
// main.cpp:30:     Execution execution;
	movi	d10, #0	// execution$40$__r
// main.cpp:34:     for (std::size_t step = 0; step < options.steps && !interruption_requested(); ++step) {
	cbz	x21, .L112	// execution$steps,
// main.cpp:36:             !wait_frame(playback, terminal, current, options, execution.steps, initial_trees)) {
	add	x0, sp, 24	// tmp593,,
// main.cpp:30:     Execution execution;
	fmov	d11, d10	// execution$32$__r, execution$40$__r
// main.cpp:31:     Seconds visual_work{0};
	fmov	d9, d10	// SR.124, execution$40$__r
	add	x24, sp, 64	// tmp587,,
// main.cpp:36:             !wait_frame(playback, terminal, current, options, execution.steps, initial_trees)) {
	str	x0, [sp]	// tmp593, %sfp
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	mov	x0, 225833675390976	// tmp656,
	movk	x0, 0x41cd, lsl 48	// tmp656,,
// main.cpp:30:     Execution execution;
	mov	x28, 0	// execution$active_steps,
// main.cpp:34:     for (std::size_t step = 0; step < options.steps && !interruption_requested(); ++step) {
	mov	x21, 0	// execution$steps,
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	fmov	d8, x0	// tmp594, tmp656
	.p2align 3,,7
.L13:
// main.cpp:34:     for (std::size_t step = 0; step < options.steps && !interruption_requested(); ++step) {
	bl	_Z22interruption_requestedv		//
// main.cpp:34:     for (std::size_t step = 0; step < options.steps && !interruption_requested(); ++step) {
	tbnz	x0, 0, .L63	// tmp609,,
// main.cpp:35:         if (options.visual && terminal.output_is_terminal() &&
	ldrb	w0, [sp, 313]	// D.78433.visual, D.78433.visual
	tbnz	x0, 0, .L113	// D.78433.visual,,
.L16:
// main.cpp:42:         auto work_start = (options.visual || options.profile) ? Clock::now() : Clock::time_point{};
	ldrb	w0, [sp, 314]	// D.78433.profile, D.78433.profile
	tbnz	x0, 0, .L18	// D.78433.profile,,
// /usr/include/c++/13/bits/chrono.h:933: 	constexpr time_point() : __d(duration::zero())
	mov	x22, 0	// work_start$__d$__r,
.L17:
// main.cpp:43:         update_moisture(current, next, options.rows, options.cols);
	ldp	x2, x3, [sp, 216]	//,, D.78433.rows
	mov	x1, x24	//, tmp587
	mov	x0, x23	//, tmp586
	bl	_Z15update_moistureRKSt6vectorI4CellSaIS0_EERS2_mm		//
// main.cpp:44:         auto moisture_end = options.profile ? Clock::now() : Clock::time_point{};
	ldrb	w0, [sp, 314]	// D.78433.profile, D.78433.profile
// /usr/include/c++/13/bits/chrono.h:933: 	constexpr time_point() : __d(duration::zero())
	mov	x19, 0	// moisture_end$__d$__r,
// main.cpp:44:         auto moisture_end = options.profile ? Clock::now() : Clock::time_point{};
	tbnz	x0, 0, .L114	// D.78433.profile,,
.L19:
// main.cpp:45:         std::size_t active_cells = update_fire(current, next, options);
	mov	x2, x26	//, tmp590
	mov	x1, x24	//, tmp587
	mov	x0, x23	//, tmp586
	bl	_Z11update_fireRKSt6vectorI4CellSaIS0_EERS2_RK7Options		//
// main.cpp:46:         if (options.profile) {
	ldrb	w1, [sp, 314]	// D.78433.profile, D.78433.profile
// main.cpp:45:         std::size_t active_cells = update_fire(current, next, options);
	mov	x20, x0	// _99, tmp604
// main.cpp:46:         if (options.profile) {
	tbnz	x1, 0, .L115	// D.78433.profile,,
.L20:
// /usr/include/c++/13/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	ldr	q0, [sp, 32]	// vect__114.197, MEM <vector(2) long unsigned int> [(struct Cell * *)&current]
// main.cpp:57:         ++execution.steps;
	add	x21, x21, 1	// execution$steps, execution$steps,
// /usr/include/c++/13/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	ldr	q1, [sp, 64]	// MEM <vector(2) long unsigned int> [(struct Cell * *)&next], MEM <vector(2) long unsigned int> [(struct Cell * *)&next]
// main.cpp:54:         if (options.visual) {
	ldrb	w0, [sp, 313]	// D.78433.visual, D.78433.visual
// /usr/include/c++/13/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	ldr	x1, [sp, 48]	// _116, MEM[(const struct _Vector_impl_data &)&current]._M_end_of_storage
// /usr/include/c++/13/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	str	q1, [sp, 32]	// MEM <vector(2) long unsigned int> [(struct Cell * *)&next], MEM <vector(2) long unsigned int> [(struct Cell * *)&current]
// /usr/include/c++/13/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	ldr	x2, [sp, 80]	// MEM[(const struct _Vector_impl_data &)&next]._M_end_of_storage, MEM[(const struct _Vector_impl_data &)&next]._M_end_of_storage
	str	x2, [sp, 48]	// MEM[(const struct _Vector_impl_data &)&next]._M_end_of_storage, MEM[(struct _Vector_impl_data *)&current]._M_end_of_storage
	str	x1, [sp, 80]	// _116, MEM[(struct _Vector_impl_data *)&next]._M_end_of_storage
// /usr/include/c++/13/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	str	q0, [sp, 64]	// vect__114.197, MEM <vector(2) long unsigned int> [(struct Cell * *)&next]
// main.cpp:54:         if (options.visual) {
	tbnz	x0, 0, .L116	// D.78433.visual,,
// main.cpp:58:         if (active_cells) {
	cbz	x20, .L104	// _99,
// main.cpp:59:             ++execution.active_steps;
	add	x28, x28, 1	// execution$active_steps, execution$active_steps,
.L104:
// main.cpp:34:     for (std::size_t step = 0; step < options.steps && !interruption_requested(); ++step) {
	ldr	x0, [sp, 232]	// prephitmp_82, D.78433.steps
.L25:
// main.cpp:34:     for (std::size_t step = 0; step < options.steps && !interruption_requested(); ++step) {
	cmp	x0, x21	// prephitmp_82, execution$steps
	bhi	.L13		//,
.L63:
// main.cpp:30:     Execution execution;
	str	wzr, [sp]	//, %sfp
.L14:
// main.cpp:73:     auto end = Clock::now();
	bl	_ZNSt6chrono3_V212steady_clock3nowEv		//
// main.cpp:74:     execution.total = options.visual ? visual_work : Seconds(end - start);
	ldrb	w1, [sp, 313]	// D.78433.visual, D.78433.visual
	tbz	x1, 0, .L117	// D.78433.visual,,
.L28:
// main.cpp:121:     terminal.restore_cursor();
	mov	x0, x27	//, tmp589
	bl	_ZN8Terminal14restore_cursorEv		//
// main.cpp:122:     Stats stats = statistics(current, initial_trees);
	add	x8, sp, 96	//,,
	mov	x1, x25	//, initial_trees
	mov	x0, x23	//, tmp586
	bl	_Z10statisticsRKSt6vectorI4CellSaIS0_EEm		//
// /usr/include/c++/13/ostream:134: 	__pf(*this);
	adrp	x0, :got:_ZSt4cout	// tmp384,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	// tmp384,
// /usr/include/c++/13/bits/ios_base.h:84:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	mov	w5, -261	// tmp390,
// /usr/include/c++/13/bits/ios_base.h:744:       _M_precision = __prec;
	mov	x6, 6	// tmp392,
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC1	// tmp394,
	mov	x2, 9	//,
	add	x1, x1, :lo12:.LC1	//, tmp394,
// /usr/include/c++/13/ostream:134: 	__pf(*this);
	ldr	x3, [x0]	// cout._vptr.basic_ostream, cout._vptr.basic_ostream
	ldr	x3, [x3, -24]	// MEM[(long int *)_151 + -24B], MEM[(long int *)_151 + -24B]
	add	x3, x3, x0	// _154, MEM[(long int *)_151 + -24B], tmp384
// /usr/include/c++/13/bits/ios_base.h:84:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	ldr	w4, [x3, 24]	//, _154->_M_flags
// /usr/include/c++/13/bits/ios_base.h:744:       _M_precision = __prec;
	str	x6, [x3, 8]	// tmp392, _154->_M_precision
// /usr/include/c++/13/bits/ios_base.h:84:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	and	w4, w4, w5	// tmp388, _154->_M_flags, tmp390
// /usr/include/c++/13/bits/ios_base.h:88:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orr	w4, w4, 4	// tmp391, tmp388,
// /usr/include/c++/13/bits/ios_base.h:100:   { return __a = __a | __b; }
	str	w4, [x3, 24]	// tmp391, MEM[(_Ios_Fmtflags &)_154 + 24]
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	ldr	x1, [sp, 216]	//, D.78433.rows
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC2	// tmp399,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x19, x0	// _156, tmp611
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC2	//, tmp399,
	mov	x2, 1	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	ldr	x1, [sp, 224]	//, D.78433.cols
	mov	x0, x19	//, _156
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC3	// tmp402,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x19, x0	// _158, tmp612
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC3	//, tmp402,
	mov	x2, 1	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ldp	x2, x1, [sp, 32]	// current.D.77709._M_impl.D.77017._M_start, current.D.77709._M_impl.D.77017._M_finish, current.D.77709._M_impl.D.77017._M_start
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x0, x19	//, _158
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	x1, x1, x2	// tmp403, current.D.77709._M_impl.D.77017._M_finish, current.D.77709._M_impl.D.77017._M_start
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	asr	x1, x1, 3	//, tmp403,
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC4	// tmp409,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x19, x0	// _164, tmp613
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC4	//, tmp409,
	mov	x2, 17	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:198: 	return _M_insert(static_cast<unsigned long>(__n));
	ldr	w1, [sp, 240]	//, D.78433.seed
	mov	x0, x19	//, _164
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC5	// tmp412,
// /usr/include/c++/13/ostream:198: 	return _M_insert(static_cast<unsigned long>(__n));
	mov	x19, x0	// _167, tmp614
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC5	//, tmp412,
	mov	x2, 10	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:230: 	return _M_insert(static_cast<double>(__f));
	ldr	s0, [sp, 244]	// D.78433.moisture, D.78433.moisture
	mov	x0, x19	//, _167
	fcvt	d0, s0	//, D.78433.moisture
	bl	_ZNSo9_M_insertIdEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC6	// tmp416,
// /usr/include/c++/13/ostream:230: 	return _M_insert(static_cast<double>(__f));
	mov	x19, x0	// _170, tmp615
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC6	//, tmp416,
	mov	x2, 9	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	ldp	x1, x2, [sp, 264]	//,, MEM[(const struct basic_string *)&D.78433 + 48B]._M_dataplus._M_p
	mov	x0, x19	//, _170
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC7	// tmp420,
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	mov	x19, x0	// _174, tmp616
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC7	//, tmp420,
	mov	x2, 1	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:230: 	return _M_insert(static_cast<double>(__f));
	ldr	s0, [sp, 248]	// D.78433.wind, D.78433.wind
	mov	x0, x19	//, _174
	fcvt	d0, s0	//, D.78433.wind
	bl	_ZNSo9_M_insertIdEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC8	// tmp424,
// /usr/include/c++/13/ostream:230: 	return _M_insert(static_cast<double>(__f));
	mov	x19, x0	// _177, tmp617
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC8	//, tmp424,
	mov	x2, 8	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	ldr	x1, [sp, 296]	//, D.78433.fire_row
	mov	x0, x19	//, _177
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC9	// tmp427,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x19, x0	// _179, tmp618
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC9	//, tmp427,
	mov	x2, 1	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	ldr	x1, [sp, 304]	//, D.78433.fire_col
	mov	x0, x19	//, _179
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC10	// tmp430,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x19, x0	// _181, tmp619
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC10	//, tmp430,
	mov	x2, 2	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
	adrp	x1, .LC11	// tmp432,
	mov	x0, x19	//, _181
	add	x1, x1, :lo12:.LC11	//, tmp432,
	mov	x2, 12	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x1, x21	//, execution$steps
	mov	x0, x19	//, _181
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC12	// tmp434,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x19, x0	// _183, tmp620
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC12	//, tmp434,
	mov	x2, 24	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x1, x28	//, execution$active_steps
	mov	x0, x19	//, _183
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC13	// tmp436,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x19, x0	// _185, tmp621
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC13	//, tmp436,
	mov	x2, 17	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	fmov	d0, d9	//, SR.124
	mov	x0, x19	//, _185
	bl	_ZNSo9_M_insertIdEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x26, .LC14	// tmp588,
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	mov	x19, x0	// _187, tmp622
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x26, :lo12:.LC14	//, tmp588,
	mov	x2, 1	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
	adrp	x1, .LC15	// tmp440,
	mov	x0, x19	//, _187
	add	x1, x1, :lo12:.LC15	//, tmp440,
	mov	x2, 19	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	ldr	x1, [sp, 104]	//, stats.count[1]
	mov	x0, x19	//, _187
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC16	// tmp443,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x19, x0	// _189, tmp623
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC16	//, tmp443,
	mov	x2, 7	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// main.cpp:87:               << "Final: vegetación=" << stats.count[TREE] << " fuego=" << stats.count[FIRE]
	ldr	x28, [sp, 112]	// _190, stats.count[2]
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x0, x19	//, _189
	mov	x1, x28	//, _190
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC17	// tmp445,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x19, x0	// _191, tmp624
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC17	//, tmp445,
	mov	x2, 9	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// main.cpp:88:               << " quemado=" << stats.count[BURNT] << " agua=" << stats.count[WATER]
	ldr	x20, [sp, 120]	// _192, stats.count[3]
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x0, x19	//, _191
	mov	x1, x20	//, _192
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC18	// tmp447,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x19, x0	// _193, tmp625
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC18	//, tmp447,
	mov	x2, 6	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	ldr	x1, [sp, 128]	//, stats.count[4]
	mov	x0, x19	//, _193
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC19	// tmp450,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x19, x0	// _195, tmp626
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC19	//, tmp450,
	mov	x2, 8	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	ldr	x1, [sp, 96]	//, stats.count[0]
	mov	x0, x19	//, _195
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC20	// tmp453,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x22, x0	// _197, tmp627
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC20	//, tmp453,
	mov	x2, 19	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// main.cpp:89:               << " vacío=" << stats.count[EMPTY] << "; inicial_afectada=" << stats.affected << "/" << initial_trees
	ldr	x19, [sp, 144]	// _198, stats.affected
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x0, x22	//, _197
	mov	x1, x19	//, _198
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC21	// tmp455,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x22, x0	// _199, tmp628
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC21	//, tmp455,
	mov	x2, 1	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x1, x25	//, initial_trees
	mov	x0, x22	//, _199
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC22	// tmp457,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x22, x0	// _200, tmp629
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC22	//, tmp457,
	mov	x2, 11	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:134: 	__pf(*this);
	ldr	x1, [x22]	// MEM[(struct basic_ostream *)_200]._vptr.basic_ostream, MEM[(struct basic_ostream *)_200]._vptr.basic_ostream
// /usr/include/c++/13/bits/ios_base.h:84:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	mov	w3, -75	// tmp462,
// main.cpp:90:               << "; checksum=" << std::hex << checksum(cells) << std::dec << "\n"
	mov	x0, x23	//, tmp586
// /usr/include/c++/13/ostream:134: 	__pf(*this);
	ldr	x2, [x1, -24]	// MEM[(long int *)_201 + -24B], MEM[(long int *)_201 + -24B]
	add	x2, x22, x2	// _204, _200, MEM[(long int *)_201 + -24B]
// /usr/include/c++/13/bits/ios_base.h:84:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	ldr	w1, [x2, 24]	//, _204->_M_flags
	and	w1, w1, w3	// tmp460, _204->_M_flags, tmp462
// /usr/include/c++/13/bits/ios_base.h:88:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orr	w1, w1, 8	// tmp463, tmp460,
// /usr/include/c++/13/bits/ios_base.h:100:   { return __a = __a | __b; }
	str	w1, [x2, 24]	// tmp463, MEM[(_Ios_Fmtflags &)_204 + 24]
// main.cpp:90:               << "; checksum=" << std::hex << checksum(cells) << std::dec << "\n"
	bl	_Z8checksumRKSt6vectorI4CellSaIS0_EE		//
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x1, x0	//, tmp630
	mov	x0, x22	//, _200
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:134: 	__pf(*this);
	ldr	x3, [x0]	// MEM[(struct basic_ostream *)_206]._vptr.basic_ostream, MEM[(struct basic_ostream *)_206]._vptr.basic_ostream
// /usr/include/c++/13/bits/ios_base.h:84:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	mov	w5, -75	// tmp469,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x22, x0	// _206, tmp631
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x26, :lo12:.LC14	//, tmp588,
	mov	x2, 1	//,
// /usr/include/c++/13/ostream:134: 	__pf(*this);
	ldr	x4, [x3, -24]	// MEM[(long int *)_207 + -24B], MEM[(long int *)_207 + -24B]
	add	x4, x0, x4	// _210, _206, MEM[(long int *)_207 + -24B]
// /usr/include/c++/13/bits/ios_base.h:84:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	ldr	w3, [x4, 24]	//, _210->_M_flags
	and	w3, w3, w5	// tmp467, _210->_M_flags, tmp469
// /usr/include/c++/13/bits/ios_base.h:88:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orr	w3, w3, 2	// tmp470, tmp467,
// /usr/include/c++/13/bits/ios_base.h:100:   { return __a = __a | __b; }
	str	w3, [x4, 24]	// tmp470, MEM[(_Ios_Fmtflags &)_210 + 24]
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
	adrp	x1, .LC23	// tmp474,
	mov	x0, x22	//, _206
	add	x1, x1, :lo12:.LC23	//, tmp474,
	mov	x2, 20	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x0, x22	//, _206
	mov	x1, 8	//,
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC24	// tmp476,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x22, x0	// _211, tmp632
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC24	//, tmp476,
	mov	x2, 16	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ldp	x2, x1, [sp, 32]	// current.D.77709._M_impl.D.77017._M_start, current.D.77709._M_impl.D.77017._M_finish, current.D.77709._M_impl.D.77017._M_start
// main.cpp:92:               << "; buffers_bytes=" << 2.0 * cells.size() * sizeof(Cell)
	fmov	d0, 8.0e+0	// tmp485,
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	mov	x0, x22	//, _211
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	x1, x1, x2	// tmp477, current.D.77709._M_impl.D.77017._M_finish, current.D.77709._M_impl.D.77017._M_start
	fmov	d1, x1	// tmp477, tmp477
	sshr	d1, d1, 3	// tmp481, tmp477,
// main.cpp:92:               << "; buffers_bytes=" << 2.0 * cells.size() * sizeof(Cell)
	ucvtf	d1, d1	// tmp482, tmp481
	fadd	d1, d1, d1	// tmp483, tmp482, tmp482
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	fmul	d0, d1, d0	//, tmp483, tmp485
	bl	_ZNSo9_M_insertIdEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC25	// tmp487,
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	mov	x22, x0	// _220, tmp633
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC25	//, tmp487,
	mov	x2, 20	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ldp	x2, x1, [sp, 32]	// current.D.77709._M_impl.D.77017._M_start, current.D.77709._M_impl.D.77017._M_finish, current.D.77709._M_impl.D.77017._M_start
// main.cpp:93:               << "; quemado_pct_total=" << 100.0 * stats.count[BURNT] / cells.size()
	ucvtf	d1, x20	// tmp488, _192
	mov	x0, 4636737291354636288	// tmp654,
	fmov	d0, x0	// tmp490, tmp654
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	mov	x0, x22	//, _220
// main.cpp:93:               << "; quemado_pct_total=" << 100.0 * stats.count[BURNT] / cells.size()
	fmul	d1, d1, d0	// tmp489, tmp488, tmp490
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	x1, x1, x2	// tmp491, current.D.77709._M_impl.D.77017._M_finish, current.D.77709._M_impl.D.77017._M_start
	fmov	d0, x1	// tmp491, tmp491
	sshr	d0, d0, 3	// tmp495, tmp491,
// main.cpp:93:               << "; quemado_pct_total=" << 100.0 * stats.count[BURNT] / cells.size()
	ucvtf	d0, d0	// tmp496, tmp495
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	fdiv	d0, d1, d0	//, tmp489, tmp496
	bl	_ZNSo9_M_insertIdEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC26	// tmp499,
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	mov	x20, x0	// _231, tmp634
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC26	//, tmp499,
	mov	x2, 22	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// main.cpp:94:               << "; afectado_pct_bosque=" << 100.0 * stats.affected / initial_trees << "\n";
	ucvtf	d0, x19	// tmp500, _198
	mov	x0, 4636737291354636288	// tmp653,
	fmov	d1, x0	// tmp502, tmp653
// main.cpp:94:               << "; afectado_pct_bosque=" << 100.0 * stats.affected / initial_trees << "\n";
	ucvtf	d2, x25	// tmp503, initial_trees
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	mov	x0, x20	//, _231
// main.cpp:94:               << "; afectado_pct_bosque=" << 100.0 * stats.affected / initial_trees << "\n";
	fmul	d0, d0, d1	// tmp501, tmp500, tmp502
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	fdiv	d0, d0, d2	//, tmp501, tmp503
	bl	_ZNSo9_M_insertIdEERSoT_		//
// main.cpp:94:               << "; afectado_pct_bosque=" << 100.0 * stats.affected / initial_trees << "\n";
	add	x1, x26, :lo12:.LC14	//, tmp588,
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		//
// main.cpp:95:     if (options.profile) {
	ldrb	w0, [sp, 314]	// D.78433.profile, D.78433.profile
	tbnz	x0, 0, .L118	// D.78433.profile,,
.L29:
// main.cpp:125:     if (interruption_requested()) {
	bl	_Z22interruption_requestedv		//
// main.cpp:125:     if (interruption_requested()) {
	tbnz	x0, 0, .L119	// tmp637,,
// main.cpp:129:     if (execution.stopped_with_key) {
	ldr	x0, [sp]	// tmp678, %sfp
	tbnz	x0, 0, .L120	// tmp678,,
.L34:
// main.cpp:132:     if (options.visual && !stats.count[FIRE]) {
	cmp	x28, 0	// _190,
	ldrb	w0, [sp, 313]	//, D.78433.visual
	cset	w1, eq	// tmp533,
	tst	w1, w0	// tmp533, D.78433.visual
	bne	.L35		//,
.L36:
// main.cpp:135:     return 0;
	mov	w19, 0	// <retval>,
.L33:
// main.cpp:136: }
	mov	x0, x27	//, tmp589
	bl	_ZN8TerminalD1Ev		//
// main.cpp:136: }
	mov	x0, x24	//, tmp587
	bl	_ZNSt6vectorI4CellSaIS0_EED1Ev		//
// main.cpp:136: }
	mov	x0, x23	//, tmp586
	bl	_ZNSt6vectorI4CellSaIS0_EED1Ev		//
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	add	x0, sp, 264	//,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	ldp	x21, x22, [sp, 368]	//,,
	.cfi_restore 22
	.cfi_restore 21
	ldp	x23, x24, [sp, 384]	//,,
	.cfi_restore 24
	.cfi_restore 23
	ldp	x27, x28, [sp, 416]	//,,
	.cfi_restore 28
	.cfi_restore 27
	adrp	x20, :got:__stack_chk_guard	// tmp585,
	ldr	x20, [x20, :got_lo12:__stack_chk_guard]	// tmp585,
.L4:
// main.cpp:151: }
	ldr	x0, [sp, 328]	// tmp668, D.85091
	ldr	x1, [x20]	// tmp669,
	subs	x0, x0, x1	// tmp668, tmp669
	mov	x1, 0	// tmp669
	bne	.L121		//,
	ldp	x29, x30, [sp, 336]	//,,
	mov	w0, w19	//, <retval>
	ldp	x19, x20, [sp, 352]	//,,
	ldp	x25, x26, [sp, 400]	//,,
	ldp	d8, d9, [sp, 432]	//,,
	ldp	d10, d11, [sp, 448]	//,,
	add	sp, sp, 464	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 74
	.cfi_restore 75
	.cfi_restore 72
	.cfi_restore 73
	.cfi_def_cfa_offset 0
	ret	
	.p2align 2,,3
.L9:
	.cfi_def_cfa_offset 464
	.cfi_offset 19, -112
	.cfi_offset 20, -104
	.cfi_offset 21, -96
	.cfi_offset 22, -88
	.cfi_offset 23, -80
	.cfi_offset 24, -72
	.cfi_offset 25, -64
	.cfi_offset 26, -56
	.cfi_offset 27, -48
	.cfi_offset 28, -40
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	.cfi_offset 72, -32
	.cfi_offset 73, -24
	.cfi_offset 74, -16
	.cfi_offset 75, -8
// /usr/include/c++/13/bits/stl_algobase.h:919: 	*__first = __value;
	ldr	x2, [x0]	// MEM[(const struct Cell &)_79], MEM[(const struct Cell &)_79]
	str	x2, [x1], 8	// MEM[(const struct Cell &)_79], MEM[(struct Cell *)__first_269]
.L103:
// /usr/include/c++/13/bits/stl_algobase.h:918:       for (; __first != __last; ++__first)
	cmp	x19, x1	// _73, __first
	bne	.L9		//,
	b	.L8		//
	.p2align 2,,3
.L113:
// main.cpp:35:         if (options.visual && terminal.output_is_terminal() &&
	mov	x0, x27	//, tmp589
	bl	_ZNK8Terminal18output_is_terminalEv		//
// main.cpp:35:         if (options.visual && terminal.output_is_terminal() &&
	tbnz	x0, 0, .L122	// tmp599,,
.L15:
// main.cpp:42:         auto work_start = (options.visual || options.profile) ? Clock::now() : Clock::time_point{};
	ldrb	w0, [sp, 313]	// D.78433.visual, D.78433.visual
	tbz	x0, 0, .L16	// D.78433.visual,,
.L18:
// main.cpp:42:         auto work_start = (options.visual || options.profile) ? Clock::now() : Clock::time_point{};
	bl	_ZNSt6chrono3_V212steady_clock3nowEv		//
	mov	x22, x0	// work_start$__d$__r, tmp602
// main.cpp:42:         auto work_start = (options.visual || options.profile) ? Clock::now() : Clock::time_point{};
	b	.L17		//
	.p2align 2,,3
.L114:
// main.cpp:44:         auto moisture_end = options.profile ? Clock::now() : Clock::time_point{};
	bl	_ZNSt6chrono3_V212steady_clock3nowEv		//
	mov	x19, x0	// moisture_end$__d$__r, tmp603
	b	.L19		//
	.p2align 2,,3
.L116:
// main.cpp:55:             visual_work += Clock::now() - work_start;
	bl	_ZNSt6chrono3_V212steady_clock3nowEv		//
// /usr/include/c++/13/bits/chrono.h:716: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x0, x0, x22	// tmp355, tmp606, work_start$__d$__r
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	scvtf	d0, x0	// tmp356, tmp355
// main.cpp:62:         if (options.visual) {
	ldrb	w0, [sp, 313]	// prephitmp_320, D.78433.visual
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	fdiv	d0, d0, d8	// tmp357, tmp356, tmp594
// /usr/include/c++/13/bits/chrono.h:627: 	  __r += __d.count();
	fadd	d9, d9, d0	// SR.124, SR.124, tmp357
// main.cpp:58:         if (active_cells) {
	cbz	x20, .L23	// _99,
// main.cpp:59:             ++execution.active_steps;
	add	x28, x28, 1	// execution$active_steps, execution$active_steps,
.L23:
// main.cpp:62:         if (options.visual) {
	tbz	x0, 0, .L104	// prephitmp_320,,
// main.cpp:63:             if (terminal.output_is_terminal() || step + 1 == options.steps || !active_cells) {
	mov	x0, x27	//, tmp589
	bl	_ZNK8Terminal18output_is_terminalEv		//
// main.cpp:63:             if (terminal.output_is_terminal() || step + 1 == options.steps || !active_cells) {
	tbnz	x0, 0, .L26	// tmp607,,
// main.cpp:63:             if (terminal.output_is_terminal() || step + 1 == options.steps || !active_cells) {
	ldr	x0, [sp, 232]	// prephitmp_82, D.78433.steps
// main.cpp:63:             if (terminal.output_is_terminal() || step + 1 == options.steps || !active_cells) {
	cmp	x20, 0	// _99,
	ccmp	x21, x0, 4, ne	// execution$steps, prephitmp_82,,
	bne	.L25		//,
.L26:
// main.cpp:64:                 draw(current, options, playback, execution.steps, initial_trees,
	mov	x0, x27	//, tmp589
	bl	_ZNK8Terminal18output_is_terminalEv		//
// main.cpp:64:                 draw(current, options, playback, execution.steps, initial_trees,
	ldr	x2, [sp]	//, %sfp
	mov	w5, w0	//, tmp608
	mov	x4, x25	//, initial_trees
	mov	x3, x21	//, execution$steps
	mov	x1, x26	//, tmp590
	mov	x0, x23	//, tmp586
	bl	_Z4drawRKSt6vectorI4CellSaIS0_EERK7OptionsRK8Playbackmmb		//
// main.cpp:67:             if (!active_cells) {
	cbnz	x20, .L104	// _99,
	b	.L63		//
	.p2align 2,,3
.L115:
// main.cpp:47:             auto fire_end = Clock::now();
	bl	_ZNSt6chrono3_V212steady_clock3nowEv		//
// /usr/include/c++/13/bits/chrono.h:716: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x0, x0, x19	// tmp347, tmp605, moisture_end$__d$__r
	sub	x19, x19, x22	// tmp343, moisture_end$__d$__r, work_start$__d$__r
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	scvtf	d1, x0	// tmp348, tmp347
	scvtf	d0, x19	// tmp344, tmp343
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	fdiv	d1, d1, d8	// tmp349, tmp348, tmp594
	fdiv	d0, d0, d8	// tmp345, tmp344, tmp594
// /usr/include/c++/13/bits/chrono.h:627: 	  __r += __d.count();
	fadd	d10, d10, d1	// execution$40$__r, execution$40$__r, tmp349
	fadd	d11, d11, d0	// execution$32$__r, execution$32$__r, tmp345
	b	.L20		//
	.p2align 2,,3
.L122:
// main.cpp:36:             !wait_frame(playback, terminal, current, options, execution.steps, initial_trees)) {
	ldr	x0, [sp]	//, %sfp
	mov	x5, x25	//, initial_trees
	mov	x4, x21	//, execution$steps
	mov	x3, x26	//, tmp590
	mov	x2, x23	//, tmp586
	mov	x1, x27	//, tmp589
	bl	_Z10wait_frameR8PlaybackRK8TerminalRKSt6vectorI4CellSaIS5_EERK7Optionsmm		//
// main.cpp:35:         if (options.visual && terminal.output_is_terminal() &&
	tbnz	x0, 0, .L15	// tmp600,,
// main.cpp:37:             execution.stopped_with_key = !interruption_requested();
	bl	_Z22interruption_requestedv		//
	and	w0, w0, 255	// _90, tmp601
// main.cpp:37:             execution.stopped_with_key = !interruption_requested();
	eor	w0, w0, 1	// execution$16, _90,
	str	w0, [sp]	// execution$16, %sfp
// main.cpp:38:             break;
	b	.L14		//
.L117:
// /usr/include/c++/13/bits/chrono.h:716: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	ldr	x1, [sp, 8]	// start, %sfp
	sub	x0, x0, x1	// tmp378, end, start
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	mov	x1, 225833675390976	// tmp655,
	movk	x1, 0x41cd, lsl 48	// tmp655,,
	fmov	d9, x1	// tmp380, tmp655
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	scvtf	d0, x0	// tmp379, tmp378
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	fdiv	d9, d0, d9	// SR.124, tmp379, tmp380
// /usr/include/c++/13/bits/chrono.h:582: 	  : __r(duration_cast<duration>(__d).count()) { }
	b	.L28		//
.L118:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	adrp	x1, .LC27	// tmp510,
	mov	x2, 24	//,
	add	x1, x1, :lo12:.LC27	//, tmp510,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	fmov	d0, d11	//, execution$32$__r
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	bl	_ZNSo9_M_insertIdEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC28	// tmp514,
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	mov	x19, x0	// _240, tmp635
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC28	//, tmp514,
	mov	x2, 10	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	fmov	d0, d10	//, execution$40$__r
	mov	x0, x19	//, _240
	bl	_ZNSo9_M_insertIdEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC29	// tmp516,
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	mov	x19, x0	// _242, tmp636
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC29	//, tmp516,
	mov	x2, 10	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// main.cpp:98:                   << "; resto_s=" << std::max(0.0, execution.total.count() -
	fsub	d11, d9, d11	// tmp517, SR.124, execution$32$__r
// /usr/include/c++/13/bits/stl_algobase.h:264:       return __a;
	movi	d0, #0	// tmp591
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	mov	x0, x19	//, _242
// main.cpp:99:                                                  execution.moisture.count() - execution.fire.count()) << "\n";
	fsub	d11, d11, d10	// _247, tmp517, execution$40$__r
// /usr/include/c++/13/bits/stl_algobase.h:264:       return __a;
	fcmpe	d11, d0	// _247,
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	fcsel	d0, d11, d0, gt	//, _247, tmp591,
	bl	_ZNSo9_M_insertIdEERSoT_		//
// main.cpp:99:                                                  execution.moisture.count() - execution.fire.count()) << "\n";
	add	x1, x26, :lo12:.LC14	//, tmp588,
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		//
	b	.L29		//
.L111:
	.cfi_restore 27
	.cfi_restore 28
// /usr/include/c++/13/bits/stl_vector.h:381: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	mov	x1, 0	// __first,
// /usr/include/c++/13/bits/stl_vector.h:398: 	this->_M_impl._M_start = this->_M_allocate(__n);
	str	xzr, [sp, 64]	//, MEM[(struct _Vector_base *)&next]._M_impl.D.77017._M_start
// /usr/include/c++/13/bits/stl_vector.h:400: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	str	xzr, [sp, 80]	//, MEM[(struct _Vector_base *)&next]._M_impl.D.77017._M_end_of_storage
	stp	x27, x28, [sp, 416]	//,,
	.cfi_offset 28, -40
	.cfi_offset 27, -48
	b	.L8		//
.L120:
// main.cpp:130:         std::cout << "Fin visual: detenido con q.\n";
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	adrp	x1, .LC32	// tmp530,
	add	x1, x1, :lo12:.LC32	//, tmp530,
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		//
	b	.L34		//
.L35:
// main.cpp:133:         std::cout << "Fin visual: fuego extinguido.\n";
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	adrp	x1, .LC33	// tmp540,
	add	x1, x1, :lo12:.LC33	//, tmp540,
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		//
	b	.L36		//
.L119:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x0, :got:_ZSt4cerr	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cerr]	//,
	adrp	x1, .LC30	// tmp523,
	mov	x2, 18	//,
	add	x1, x1, :lo12:.LC30	//, tmp523,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	adrp	x0, :got:_ZSt4cerr	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cerr]	//,
	mov	x1, x21	//, execution$steps
	bl	_ZNSo9_M_insertImEERSoT_		//
// main.cpp:126:         std::cerr << "Interrumpido tras " << execution.steps << " iteraciones\n";
	adrp	x1, .LC31	// tmp527,
	add	x1, x1, :lo12:.LC31	//, tmp527,
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		//
.LEHE4:
// main.cpp:127:         return 130;
	mov	w19, 130	// <retval>,
	b	.L33		//
.L112:
// main.cpp:30:     Execution execution;
	fmov	d11, d10	// execution$32$__r, execution$40$__r
// main.cpp:31:     Seconds visual_work{0};
	fmov	d9, d10	// SR.124, execution$40$__r
	add	x24, sp, 64	// tmp587,,
// main.cpp:30:     Execution execution;
	mov	x28, 0	// execution$active_steps,
	str	wzr, [sp]	//, %sfp
	b	.L14		//
.L121:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 27
	.cfi_restore 28
	stp	x21, x22, [sp, 368]	//,,
	.cfi_offset 22, -88
	.cfi_offset 21, -96
	stp	x23, x24, [sp, 384]	//,,
	.cfi_offset 24, -72
	.cfi_offset 23, -80
.L105:
	stp	x27, x28, [sp, 416]	//,,
	.cfi_offset 28, -40
	.cfi_offset 27, -48
.L106:
// main.cpp:151: }
	bl	__stack_chk_fail		//
.L110:
	.cfi_restore 27
	.cfi_restore 28
// /usr/include/c++/13/bits/stl_vector.h:1910: 	  __throw_length_error(
	adrp	x20, :got:__stack_chk_guard	// tmp585,
	ldr	x20, [x20, :got_lo12:__stack_chk_guard]	// tmp585,
	ldr	x0, [sp, 328]	// tmp658, D.85091
	ldr	x1, [x20]	// tmp659,
	subs	x0, x0, x1	// tmp658, tmp659
	mov	x1, 0	// tmp659
	bne	.L105		//,
	adrp	x0, .LC0	// tmp296,
	add	x0, x0, :lo12:.LC0	//, tmp296,
.LEHB5:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE5:
.L73:
	.cfi_offset 27, -48
	.cfi_offset 28, -40
// main.cpp:136: }
	mov	x19, x0	// tmp549, tmp638
	mov	x21, x1	// tmp551, tmp639
	mov	x0, x27	//, tmp589
	bl	_ZN8TerminalD1Ev		//
.L39:
	mov	x0, x24	//, tmp587
	bl	_ZNSt6vectorI4CellSaIS0_EED1Ev		//
	ldp	x27, x28, [sp, 416]	//,,
	.cfi_restore 28
	.cfi_restore 27
	adrp	x20, :got:__stack_chk_guard	// tmp585,
	ldr	x20, [x20, :got_lo12:__stack_chk_guard]	// tmp585,
.L40:
	mov	x0, x23	//, tmp586
	bl	_ZNSt6vectorI4CellSaIS0_EED1Ev		//
.L41:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	add	x0, sp, 264	//,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	ldp	x23, x24, [sp, 384]	//,,
	.cfi_restore 24
	.cfi_restore 23
	mov	x1, x21	// tmp562, tmp557
	ldp	x21, x22, [sp, 368]	//,,
	.cfi_restore 22
	.cfi_restore 21
	mov	x0, x19	// tmp561, tmp556
.L42:
// main.cpp:143:     } catch (const std::bad_alloc&) {
	cmp	x1, 3	// tmp562,
	beq	.L43		//,
	bgt	.L44		//,
	cmp	x1, 1	// tmp562,
	beq	.L45		//,
	cmp	x1, 2	// tmp562,
	beq	.L46		//,
.L44:
	ldr	x1, [sp, 328]	// tmp660, D.85091
	ldr	x2, [x20]	// tmp661,
	subs	x1, x1, x2	// tmp660, tmp661
	mov	x2, 0	// tmp661
	stp	x21, x22, [sp, 368]	//,,
	.cfi_offset 22, -88
	.cfi_offset 21, -96
	stp	x23, x24, [sp, 384]	//,,
	.cfi_offset 24, -72
	.cfi_offset 23, -80
	stp	x27, x28, [sp, 416]	//,,
	.cfi_offset 28, -40
	.cfi_offset 27, -48
	bne	.L106		//,
.LEHB6:
	bl	_Unwind_Resume		//
.LEHE6:
.L67:
	.cfi_restore 27
	.cfi_restore 28
	adrp	x20, :got:__stack_chk_guard	// tmp585,
	ldr	x20, [x20, :got_lo12:__stack_chk_guard]	// tmp585,
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x19, x0	// tmp556, tmp644
	mov	x21, x1	// tmp557, tmp645
	b	.L41		//
.L72:
	.cfi_offset 27, -48
	.cfi_offset 28, -40
// main.cpp:136: }
	mov	x19, x0	// tmp548, tmp640
	mov	x21, x1	// tmp550, tmp641
	add	x24, sp, 64	// tmp587,,
	b	.L39		//
.L66:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 27
	.cfi_restore 28
	adrp	x20, :got:__stack_chk_guard	// tmp585,
	ldr	x20, [x20, :got_lo12:__stack_chk_guard]	// tmp585,
	b	.L42		//
.L71:
	.cfi_offset 21, -96
	.cfi_offset 22, -88
	.cfi_offset 23, -80
	.cfi_offset 24, -72
	mov	x19, x0	// tmp553, tmp642
	mov	x21, x1	// tmp554, tmp643
	b	.L40		//
.L43:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
// main.cpp:147:     } catch (const std::exception& error) {
	bl	__cxa_begin_catch		//
	mov	x19, x0	// tmp648,
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x0, :got:_ZSt4cerr	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cerr]	//,
	adrp	x1, .LC36	// tmp571,
	mov	x2, 7	//,
	add	x1, x1, :lo12:.LC36	//, tmp571,
.LEHB7:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// main.cpp:148:         std::cerr << "Error: " << error.what() << ". Usa --help.\n";
	ldr	x1, [x19]	// MEM[(const struct exception *)_20]._vptr.exception, MEM[(const struct exception *)_20]._vptr.exception
// main.cpp:148:         std::cerr << "Error: " << error.what() << ". Usa --help.\n";
	mov	x0, x19	//, _20
	ldr	x1, [x1, 16]	// MEM[(int (*) () *)_4 + 16B], MEM[(int (*) () *)_4 + 16B]
	blr	x1		// MEM[(int (*) () *)_4 + 16B]
	mov	x1, x0	//, tmp649
	adrp	x0, :got:_ZSt4cerr	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cerr]	//,
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		//
// main.cpp:148:         std::cerr << "Error: " << error.what() << ". Usa --help.\n";
	adrp	x1, .LC37	// tmp577,
	add	x1, x1, :lo12:.LC37	//, tmp577,
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		//
.LEHE7:
.L48:
// main.cpp:150:     return 1;
	mov	w19, 1	// <retval>,
// main.cpp:145:     } catch (const std::length_error&) {
	bl	__cxa_end_catch		//
	b	.L4		//
.L70:
.L108:
// main.cpp:149:     }
	mov	x19, x0	// tmp582, tmp652
	bl	__cxa_end_catch		//
	ldr	x0, [sp, 328]	// tmp666, D.85091
	ldr	x1, [x20]	// tmp667,
	subs	x0, x0, x1	// tmp666, tmp667
	mov	x1, 0	// tmp667
	stp	x21, x22, [sp, 368]	//,,
	.cfi_offset 22, -88
	.cfi_offset 21, -96
	mov	x0, x19	//, tmp582
	stp	x23, x24, [sp, 384]	//,,
	.cfi_offset 24, -72
	.cfi_offset 23, -80
	stp	x27, x28, [sp, 416]	//,,
	.cfi_offset 28, -40
	.cfi_offset 27, -48
	bne	.L106		//,
.LEHB8:
	bl	_Unwind_Resume		//
.LEHE8:
.L45:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 27
	.cfi_restore 28
// main.cpp:143:     } catch (const std::bad_alloc&) {
	bl	__cxa_begin_catch		//
// main.cpp:144:         std::cerr << "Error: memoria insuficiente\n";
	adrp	x0, :got:_ZSt4cerr	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cerr]	//,
	adrp	x1, .LC34	// tmp565,
	add	x1, x1, :lo12:.LC34	//, tmp565,
.LEHB9:
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		//
.LEHE9:
	b	.L48		//
.L68:
	b	.L108		//
.L46:
// main.cpp:145:     } catch (const std::length_error&) {
	bl	__cxa_begin_catch		//
// main.cpp:146:         std::cerr << "Error: dimensiones demasiado grandes para reservar memoria\n";
	adrp	x0, :got:_ZSt4cerr	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cerr]	//,
	adrp	x1, .LC35	// tmp568,
	add	x1, x1, :lo12:.LC35	//, tmp568,
.LEHB10:
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		//
.LEHE10:
	b	.L48		//
.L69:
	b	.L108		//
	.cfi_endproc
.LFE3249:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
	.align	2
.LLSDA3249:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT3249-.LLSDATTD3249
.LLSDATTD3249:
	.byte	0x1
	.uleb128 .LLSDACSE3249-.LLSDACSB3249
.LLSDACSB3249:
	.uleb128 .LEHB0-.LFB3249
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L66-.LFB3249
	.uleb128 0x5
	.uleb128 .LEHB1-.LFB3249
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L67-.LFB3249
	.uleb128 0x7
	.uleb128 .LEHB2-.LFB3249
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L71-.LFB3249
	.uleb128 0x7
	.uleb128 .LEHB3-.LFB3249
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L72-.LFB3249
	.uleb128 0x7
	.uleb128 .LEHB4-.LFB3249
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L73-.LFB3249
	.uleb128 0x7
	.uleb128 .LEHB5-.LFB3249
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L71-.LFB3249
	.uleb128 0x7
	.uleb128 .LEHB6-.LFB3249
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB3249
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L70-.LFB3249
	.uleb128 0
	.uleb128 .LEHB8-.LFB3249
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB3249
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L68-.LFB3249
	.uleb128 0
	.uleb128 .LEHB10-.LFB3249
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L69-.LFB3249
	.uleb128 0
.LLSDACSE3249:
	.byte	0x3
	.byte	0
	.byte	0x2
	.byte	0x7d
	.byte	0x1
	.byte	0x7d
	.byte	0
	.byte	0x7d
	.align	2
	.4byte	DW.ref._ZTISt9exception-.
	.4byte	DW.ref._ZTISt12length_error-.
	.4byte	DW.ref._ZTISt9bad_alloc-.
.LLSDATT3249:
	.section	.text.startup
	.size	main, .-main
	.hidden	DW.ref._ZTISt12length_error
	.weak	DW.ref._ZTISt12length_error
	.section	.data.rel.local.DW.ref._ZTISt12length_error,"awG",@progbits,DW.ref._ZTISt12length_error,comdat
	.align	3
	.type	DW.ref._ZTISt12length_error, %object
	.size	DW.ref._ZTISt12length_error, 8
DW.ref._ZTISt12length_error:
	.xword	_ZTISt12length_error
	.hidden	DW.ref._ZTISt9bad_alloc
	.weak	DW.ref._ZTISt9bad_alloc
	.section	.data.rel.local.DW.ref._ZTISt9bad_alloc,"awG",@progbits,DW.ref._ZTISt9bad_alloc,comdat
	.align	3
	.type	DW.ref._ZTISt9bad_alloc, %object
	.size	DW.ref._ZTISt9bad_alloc, 8
DW.ref._ZTISt9bad_alloc:
	.xword	_ZTISt9bad_alloc
	.hidden	DW.ref._ZTISt9exception
	.weak	DW.ref._ZTISt9exception
	.section	.data.rel.local.DW.ref._ZTISt9exception,"awG",@progbits,DW.ref._ZTISt9exception,comdat
	.align	3
	.type	DW.ref._ZTISt9exception, %object
	.size	DW.ref._ZTISt9exception, 8
DW.ref._ZTISt9exception:
	.xword	_ZTISt9exception
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
