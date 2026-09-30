	.arch armv8-a+crc+lse+rcpc+rdma+dotprod+aes+sha3+fp16fml+sb+i8mm+bf16+flagm+pauth
	.file	"opciones.cpp"
// GNU C++17 (Ubuntu 13.3.0-6ubuntu2~24.04.1) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -march=armv8-a+crc+lse+rcpc+rdma+dotprod+aes+sha3+fp16fml+sb+i8mm+bf16+flagm+pauth -O3 -std=c++17 -ffp-contract=off -fopt-info-vec-optimized-missed -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
#APP
	.globl _ZSt21ios_base_library_initv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC2:
	.string	"basic_string::append"
#NO_APP
	.section	.text.unlikely,"ax",@progbits
	.align	2
	.type	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.isra.0, %function
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.isra.0:
.LFB3664:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3664
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	stp	x19, x20, [sp, 16]	//,,
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x19, x8	// <retval>, tmp119
	mov	x20, x2	// ISRA.135, tmp122
	stp	x21, x22, [sp, 32]	//,,
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x22, x1	// ISRA.134, tmp121
	str	x23, [sp, 48]	//,
	.cfi_offset 23, -16
// /usr/include/c++/13/bits/basic_string.h:3571:     operator+(const _CharT* __lhs,
	mov	x23, x0	// __lhs, tmp120
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	bl	strlen		//
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x19, 16]	//, MEM[(char_type &)_1(D) + 16]
// /usr/include/c++/13/bits/basic_string.h:230: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x1, x19, 16	// tmp105, <retval>,
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x1, xzr, [x19]	// tmp105,, MEM[(struct _Alloc_hider *)_1(D)]._M_p
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x21, x0	// _3, tmp123
// /usr/include/c++/13/bits/basic_string.h:3537:       __str.reserve(__lhs_len + __rhs_len);
	add	x1, x21, x20	//, _3, ISRA.135
	mov	x0, x19	//, <retval>
.LEHB0:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm		//
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [x19, 8]	// MEM[(const struct basic_string *)_1(D)]._M_string_length, MEM[(const struct basic_string *)_1(D)]._M_string_length
	mov	x0, 4611686018427387903	// tmp108,
	sub	x0, x0, x1	// tmp107, tmp108, MEM[(const struct basic_string *)_1(D)]._M_string_length
	cmp	x21, x0	// _3, tmp107
	bls	.L2		//,
// /usr/include/c++/13/bits/basic_string.h:400: 	  __throw_length_error(__N(__s));
	adrp	x0, .LC2	// tmp111,
	add	x0, x0, :lo12:.LC2	//, tmp111,
	bl	_ZSt20__throw_length_errorPKc		//
.L2:
// /usr/include/c++/13/bits/basic_string.h:1459: 	return _M_append(__s, __n);
	mov	x2, x21	//, _3
	mov	x1, x23	//, __lhs
	mov	x0, x19	//, <retval>
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [x19, 8]	// MEM[(const struct basic_string *)_1(D)]._M_string_length, MEM[(const struct basic_string *)_1(D)]._M_string_length
	mov	x0, 4611686018427387903	// tmp113,
	sub	x0, x0, x1	// tmp112, tmp113, MEM[(const struct basic_string *)_1(D)]._M_string_length
	cmp	x20, x0	// ISRA.135, tmp112
	bls	.L3		//,
// /usr/include/c++/13/bits/basic_string.h:400: 	  __throw_length_error(__N(__s));
	adrp	x0, .LC2	// tmp116,
	add	x0, x0, :lo12:.LC2	//, tmp116,
	bl	_ZSt20__throw_length_errorPKc		//
.L3:
// /usr/include/c++/13/bits/basic_string.h:1459: 	return _M_append(__s, __n);
	mov	x2, x20	//, ISRA.135
	mov	x1, x22	//, ISRA.134
	mov	x0, x19	//, <retval>
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE0:
// /usr/include/c++/13/bits/basic_string.h:3579:     }
	ldp	x21, x22, [sp, 32]	//,,
	mov	x0, x19	//, <retval>
	ldp	x19, x20, [sp, 16]	//,,
	ldr	x23, [sp, 48]	//,
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret	
.L6:
	.cfi_restore_state
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x1, x0	// tmp124,
	mov	x0, x19	//, <retval>
	mov	x19, x1	// tmp117, tmp124
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	mov	x0, x19	//, tmp117
.LEHB1:
	bl	_Unwind_Resume		//
.LEHE1:
	.cfi_endproc
.LFE3664:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA3664:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3664-.LLSDACSB3664
.LLSDACSB3664:
	.uleb128 .LEHB0-.LFB3664
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L6-.LFB3664
	.uleb128 0
	.uleb128 .LEHB1-.LFB3664
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE3664:
	.section	.text.unlikely
	.size	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.isra.0, .-_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.isra.0
	.section	.rodata.str1.8
	.align	3
.LC3:
	.string	"Valor inv\303\241lido para "
	.align	3
.LC4:
	.string	"stoull"
	.align	3
.LC5:
	.string	""
	.text
	.align	2
	.p2align 4,,11
	.type	_ZN12_GLOBAL__N_113parse_integerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_, %function
_ZN12_GLOBAL__N_113parse_integerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_:
.LFB2994:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2994
	sub	sp, sp, #112	//,,
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 48]	//,,
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	add	x29, sp, 48	//,,
	stp	x19, x20, [sp, 64]	//,,
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x20, x0	// text, tmp181
	adrp	x0, :got:__stack_chk_guard	// tmp118,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp118,
	stp	x21, x22, [sp, 80]	//,,
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x22, x1	// option, tmp182
// opciones.cpp:13:     if (text.empty() || text[0] == '-') {
	ldr	x1, [x20, 8]	// MEM[(const struct basic_string *)text_9(D)]._M_string_length, MEM[(const struct basic_string *)text_9(D)]._M_string_length
// opciones.cpp:12: std::size_t parse_integer(const std::string& text, const std::string& option) {
	str	x23, [sp, 96]	//,
	.cfi_offset 23, -16
// opciones.cpp:12: std::size_t parse_integer(const std::string& text, const std::string& option) {
	ldr	x2, [x0]	// tmp201,
	str	x2, [sp, 40]	// tmp201, D.74235
	mov	x2, 0	// tmp201
// opciones.cpp:13:     if (text.empty() || text[0] == '-') {
	cbz	x1, .L11	// MEM[(const struct basic_string *)text_9(D)]._M_string_length,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x21, [x20]	// _10, MEM[(const struct basic_string *)text_9(D)]._M_dataplus._M_p
// opciones.cpp:13:     if (text.empty() || text[0] == '-') {
	ldrb	w0, [x21]	// MEM[(const value_type &)_10], MEM[(const value_type &)_10]
	cmp	w0, 45	// MEM[(const value_type &)_10],
	beq	.L11		//,
// /usr/include/c++/13/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	bl	__errno_location		//
	mov	x19, x0	// _54, tmp184
// /usr/include/c++/13/ext/string_conversions.h:82:       const _TRet __tmp = __convf(__str, &__endptr, __base...);
	mov	w2, 10	//,
	mov	x1, sp	//,
	mov	x0, x21	//, _10
// /usr/include/c++/13/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	ldr	w23, [x19]	//, *_54
// /usr/include/c++/13/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	str	wzr, [x19]	//, *_54
// /usr/include/c++/13/ext/string_conversions.h:82:       const _TRet __tmp = __convf(__str, &__endptr, __base...);
	bl	__isoc23_strtoull		//
// /usr/include/c++/13/ext/string_conversions.h:84:       if (__endptr == __str)
	ldr	x2, [sp]	// __endptr.36_57, __endptr
// /usr/include/c++/13/ext/string_conversions.h:84:       if (__endptr == __str)
	cmp	x21, x2	// _10, __endptr.36_57
	beq	.L57		//,
// /usr/include/c++/13/ext/string_conversions.h:86:       else if (errno == ERANGE
	ldr	w1, [x19]	//, *_54
// /usr/include/c++/13/ext/string_conversions.h:87: 	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
	cmp	w1, 34	// _58,
	beq	.L58		//,
// /usr/include/c++/13/ext/string_conversions.h:93: 	*__idx = __endptr - __str;
	sub	x2, x2, x21	// _60, __endptr.36_57, _10
// /usr/include/c++/13/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	cbz	w1, .L59	// _58,
.L18:
// opciones.cpp:20:         if (consumed != text.size() || value > std::numeric_limits<std::size_t>::max()) {
	ldr	x1, [x20, 8]	// MEM[(const struct basic_string *)text_9(D)]._M_string_length, MEM[(const struct basic_string *)text_9(D)]._M_string_length
	cmp	x1, x2	// MEM[(const struct basic_string *)text_9(D)]._M_string_length, _60
	bne	.L60		//,
// opciones.cpp:27: }
	adrp	x1, :got:__stack_chk_guard	// tmp176,
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]	// tmp176,
	ldr	x3, [sp, 40]	// tmp218, D.74235
	ldr	x2, [x1]	// tmp219,
	subs	x3, x3, x2	// tmp218, tmp219
	mov	x2, 0	// tmp219
	bne	.L53		//,
	ldp	x29, x30, [sp, 48]	//,,
	ldp	x19, x20, [sp, 64]	//,,
	ldp	x21, x22, [sp, 80]	//,,
	ldr	x23, [sp, 96]	//,
	add	sp, sp, 112	//,,
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 23
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret	
	.p2align 2,,3
.L59:
	.cfi_restore_state
// /usr/include/c++/13/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	str	w23, [x19]	// _55, *_54
	b	.L18		//
.L58:
// /usr/include/c++/13/ext/string_conversions.h:88: 	std::__throw_out_of_range(__name);
	adrp	x20, :got:__stack_chk_guard	// tmp178,
	ldr	x20, [x20, :got_lo12:__stack_chk_guard]	// tmp178,
	ldr	x0, [sp, 40]	// tmp204, D.74235
	ldr	x1, [x20]	// tmp205,
	subs	x0, x0, x1	// tmp204, tmp205
	mov	x1, 0	// tmp205
	bne	.L53		//,
	adrp	x0, .LC4	// tmp131,
	add	x0, x0, :lo12:.LC4	//, tmp131,
.LEHB2:
	bl	_ZSt20__throw_out_of_rangePKc		//
.L57:
// /usr/include/c++/13/ext/string_conversions.h:85: 	std::__throw_invalid_argument(__name);
	adrp	x20, :got:__stack_chk_guard	// tmp178,
	ldr	x20, [x20, :got_lo12:__stack_chk_guard]	// tmp178,
	ldr	x0, [sp, 40]	// tmp202, D.74235
	ldr	x1, [x20]	// tmp203,
	subs	x0, x0, x1	// tmp202, tmp203
	mov	x1, 0	// tmp203
	bne	.L53		//,
	adrp	x0, .LC4	// tmp128,
	add	x0, x0, :lo12:.LC4	//, tmp128,
	bl	_ZSt24__throw_invalid_argumentPKc		//
.LEHE2:
.L11:
// opciones.cpp:14:         throw std::invalid_argument("Valor inválido para " + option);
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// opciones.cpp:14:         throw std::invalid_argument("Valor inválido para " + option);
	ldp	x1, x2, [x22]	//,, MEM[(char * *)option_23(D)]
	add	x21, sp, 8	// tmp177,,
// opciones.cpp:14:         throw std::invalid_argument("Valor inválido para " + option);
	mov	x20, x0	// _32, tmp183
// opciones.cpp:14:         throw std::invalid_argument("Valor inválido para " + option);
	mov	x8, x21	//, tmp177
	adrp	x0, .LC3	// tmp123,
	add	x0, x0, :lo12:.LC3	//, tmp123,
.LEHB3:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.isra.0		//
.LEHE3:
// opciones.cpp:14:         throw std::invalid_argument("Valor inválido para " + option);
	mov	x1, x21	//, tmp177
	mov	x0, x20	//, _32
.LEHB4:
	bl	_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE		//
.LEHE4:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x0, x21	//, tmp177
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
// opciones.cpp:14:         throw std::invalid_argument("Valor inválido para " + option);
	adrp	x0, :got:__stack_chk_guard	// tmp140,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp140,
	ldr	x2, [sp, 40]	// tmp206, D.74235
	ldr	x1, [x0]	// tmp207,
	subs	x2, x2, x1	// tmp206, tmp207
	mov	x1, 0	// tmp207
	beq	.L24		//,
.L53:
// opciones.cpp:27: }
	bl	__stack_chk_fail		//
.L45:
// /usr/include/c++/13/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	ldr	w2, [x19]	//, *_54
	cbnz	w2, .L23	// *_54,
// /usr/include/c++/13/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	str	w23, [x19]	// _55, *_54
.L23:
// opciones.cpp:24:     } catch (const std::exception&) {
	cmp	x1, 1	// tmp136,
	bne	.L61		//,
// opciones.cpp:24:     } catch (const std::exception&) {
	bl	__cxa_begin_catch		//
// opciones.cpp:25:         throw std::invalid_argument("Valor inválido para " + option);
	add	x21, sp, 8	// tmp177,,
// opciones.cpp:25:         throw std::invalid_argument("Valor inválido para " + option);
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// opciones.cpp:25:         throw std::invalid_argument("Valor inválido para " + option);
	ldp	x1, x2, [x22]	//,, MEM[(char * *)option_23(D)]
// opciones.cpp:25:         throw std::invalid_argument("Valor inválido para " + option);
	mov	x23, x0	// _22, tmp195
// opciones.cpp:25:         throw std::invalid_argument("Valor inválido para " + option);
	mov	x8, x21	//, tmp177
	adrp	x0, .LC3	// tmp161,
	add	x0, x0, :lo12:.LC3	//, tmp161,
.LEHB5:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.isra.0		//
.LEHE5:
// opciones.cpp:25:         throw std::invalid_argument("Valor inválido para " + option);
	mov	x1, x21	//, tmp177
	mov	x0, x23	//, _22
.LEHB6:
	bl	_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE		//
.LEHE6:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x0, x21	//, tmp177
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
// opciones.cpp:25:         throw std::invalid_argument("Valor inválido para " + option);
	ldr	x0, [sp, 40]	// tmp214, D.74235
	ldr	x1, [x20]	// tmp215,
	subs	x0, x0, x1	// tmp214, tmp215
	mov	x1, 0	// tmp215
	bne	.L53		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x23	//, _22
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB7:
	bl	__cxa_throw		//
.LEHE7:
.L60:
// opciones.cpp:21:             throw std::invalid_argument("");
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// opciones.cpp:21:             throw std::invalid_argument("");
	adrp	x1, .LC5	// tmp145,
// opciones.cpp:21:             throw std::invalid_argument("");
	mov	x23, x0	// _15, tmp188
// opciones.cpp:21:             throw std::invalid_argument("");
	add	x1, x1, :lo12:.LC5	//, tmp145,
.LEHB8:
	bl	_ZNSt16invalid_argumentC1EPKc		//
.LEHE8:
// opciones.cpp:21:             throw std::invalid_argument("");
	adrp	x20, :got:__stack_chk_guard	// tmp178,
	ldr	x20, [x20, :got_lo12:__stack_chk_guard]	// tmp178,
	ldr	x0, [sp, 40]	// tmp208, D.74235
	ldr	x1, [x20]	// tmp209,
	subs	x0, x0, x1	// tmp208, tmp209
	mov	x1, 0	// tmp209
	bne	.L53		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x23	//, _15
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB9:
	bl	__cxa_throw		//
.LEHE9:
.L24:
// opciones.cpp:14:         throw std::invalid_argument("Valor inválido para " + option);
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x20	//, _32
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB10:
	bl	__cxa_throw		//
.L41:
// opciones.cpp:21:             throw std::invalid_argument("");
	mov	x19, x0	// tmp156, tmp191
	mov	x21, x1	// tmp157, tmp192
	mov	x0, x23	//, _15
	bl	__cxa_free_exception		//
	adrp	x20, :got:__stack_chk_guard	// tmp178,
	ldr	x20, [x20, :got_lo12:__stack_chk_guard]	// tmp178,
	mov	x0, x19	// tmp134, tmp156
	mov	x1, x21	// tmp136, tmp157
	b	.L23		//
.L40:
	b	.L23		//
.L39:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x19, x0	// tmp189,
	mov	x0, x21	//, tmp177
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L27:
// opciones.cpp:14:         throw std::invalid_argument("Valor inválido para " + option);
	mov	x0, x20	//, _32
	bl	__cxa_free_exception		//
	adrp	x0, :got:__stack_chk_guard	// tmp155,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp155,
	ldr	x2, [sp, 40]	// tmp210, D.74235
	ldr	x1, [x0]	// tmp211,
	subs	x2, x2, x1	// tmp210, tmp211
	mov	x1, 0	// tmp211
	bne	.L53		//,
	mov	x0, x19	//, tmp173
.L54:
	bl	_Unwind_Resume		//
.L38:
	mov	x19, x0	// tmp151, tmp190
	b	.L27		//
.L61:
	ldr	x1, [sp, 40]	// tmp212, D.74235
	ldr	x2, [x20]	// tmp213,
	subs	x1, x1, x2	// tmp212, tmp213
	mov	x2, 0	// tmp213
	bne	.L53		//,
	bl	_Unwind_Resume		//
.LEHE10:
.L42:
// opciones.cpp:25:         throw std::invalid_argument("Valor inválido para " + option);
	mov	x19, x0	// tmp169, tmp197
	b	.L34		//
.L43:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x19, x0	// tmp196,
	mov	x0, x21	//, tmp177
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L34:
// opciones.cpp:25:         throw std::invalid_argument("Valor inválido para " + option);
	mov	x0, x23	//, _22
	bl	__cxa_free_exception		//
.L35:
// opciones.cpp:26:     }
	bl	__cxa_end_catch		//
	ldr	x0, [sp, 40]	// tmp216, D.74235
	ldr	x1, [x20]	// tmp217,
	subs	x0, x0, x1	// tmp216, tmp217
	mov	x1, 0	// tmp217
	bne	.L53		//,
	mov	x0, x19	//, tmp173
	b	.L54		//
.L44:
	mov	x19, x0	// tmp173, tmp198
	b	.L35		//
	.cfi_endproc
.LFE2994:
	.section	.gcc_except_table
	.align	2
.LLSDA2994:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2994-.LLSDATTD2994
.LLSDATTD2994:
	.byte	0x1
	.uleb128 .LLSDACSE2994-.LLSDACSB2994
.LLSDACSB2994:
	.uleb128 .LEHB2-.LFB2994
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L45-.LFB2994
	.uleb128 0x3
	.uleb128 .LEHB3-.LFB2994
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L38-.LFB2994
	.uleb128 0
	.uleb128 .LEHB4-.LFB2994
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L39-.LFB2994
	.uleb128 0
	.uleb128 .LEHB5-.LFB2994
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L42-.LFB2994
	.uleb128 0
	.uleb128 .LEHB6-.LFB2994
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L43-.LFB2994
	.uleb128 0
	.uleb128 .LEHB7-.LFB2994
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L44-.LFB2994
	.uleb128 0
	.uleb128 .LEHB8-.LFB2994
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L41-.LFB2994
	.uleb128 0x3
	.uleb128 .LEHB9-.LFB2994
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L40-.LFB2994
	.uleb128 0x1
	.uleb128 .LEHB10-.LFB2994
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE2994:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align	2
	.4byte	DW.ref._ZTISt9exception-.
.LLSDATT2994:
	.text
	.size	_ZN12_GLOBAL__N_113parse_integerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_, .-_ZN12_GLOBAL__N_113parse_integerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_
	.section	.rodata.str1.8
	.align	3
.LC6:
	.string	"stof"
	.text
	.align	2
	.p2align 4,,11
	.type	_ZN12_GLOBAL__N_113parse_decimalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_, %function
_ZN12_GLOBAL__N_113parse_decimalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_:
.LFB2995:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2995
	sub	sp, sp, #112	//,,
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 48]	//,,
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	add	x29, sp, 48	//,,
	stp	x19, x20, [sp, 64]	//,,
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x20, x0	// text, tmp161
	adrp	x0, :got:__stack_chk_guard	// tmp113,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp113,
	stp	x21, x22, [sp, 80]	//,,
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x21, x1	// option, tmp162
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x22, [x20]	// _10, MEM[(const struct basic_string *)text_8(D)]._M_dataplus._M_p
// opciones.cpp:29: float parse_decimal(const std::string& text, const std::string& option) {
	str	x23, [sp, 96]	//,
	.cfi_offset 23, -16
// opciones.cpp:29: float parse_decimal(const std::string& text, const std::string& option) {
	ldr	x1, [x0]	// tmp179,
	str	x1, [sp, 40]	// tmp179, D.74270
	mov	x1, 0	// tmp179
// /usr/include/c++/13/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	bl	__errno_location		//
	mov	x19, x0	// _38, tmp163
// /usr/include/c++/13/ext/string_conversions.h:82:       const _TRet __tmp = __convf(__str, &__endptr, __base...);
	mov	x1, sp	//,
	mov	x0, x22	//, _10
// /usr/include/c++/13/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	ldr	w23, [x19]	//, *_38
// /usr/include/c++/13/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	str	wzr, [x19]	//, *_38
// /usr/include/c++/13/ext/string_conversions.h:82:       const _TRet __tmp = __convf(__str, &__endptr, __base...);
	bl	strtof		//
// /usr/include/c++/13/ext/string_conversions.h:84:       if (__endptr == __str)
	ldr	x2, [sp]	// __endptr.27_41, __endptr
// /usr/include/c++/13/ext/string_conversions.h:84:       if (__endptr == __str)
	cmp	x22, x2	// _10, __endptr.27_41
	beq	.L98		//,
// /usr/include/c++/13/ext/string_conversions.h:86:       else if (errno == ERANGE
	ldr	w0, [x19]	//, *_38
// /usr/include/c++/13/ext/string_conversions.h:87: 	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
	cmp	w0, 34	// _42,
	beq	.L99		//,
// /usr/include/c++/13/ext/string_conversions.h:93: 	*__idx = __endptr - __str;
	sub	x2, x2, x22	// _44, __endptr.27_41, _10
// /usr/include/c++/13/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	cbz	w0, .L100	// _42,
.L67:
// opciones.cpp:33:         if (consumed != text.size() || !std::isfinite(value)) {
	ldr	x0, [x20, 8]	// MEM[(const struct basic_string *)text_8(D)]._M_string_length, MEM[(const struct basic_string *)text_8(D)]._M_string_length
	cmp	x0, x2	// MEM[(const struct basic_string *)text_8(D)]._M_string_length, _44
	bne	.L68		//,
// /usr/include/c++/13/cmath:1123:   { return __builtin_isfinite(__x); }
	fabs	s2, s0	// tmp127, <retval>
// opciones.cpp:33:         if (consumed != text.size() || !std::isfinite(value)) {
	mov	w0, 2139095039	// tmp178,
	fmov	s1, w0	// tmp128, tmp178
	fcmp	s2, s1	// tmp127, tmp128
	bhi	.L68		//,
// opciones.cpp:40: }
	adrp	x0, :got:__stack_chk_guard	// tmp156,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp156,
	ldr	x2, [sp, 40]	// tmp192, D.74270
	ldr	x1, [x0]	// tmp193,
	subs	x2, x2, x1	// tmp192, tmp193
	mov	x1, 0	// tmp193
	bne	.L96		//,
	ldp	x29, x30, [sp, 48]	//,,
	ldp	x19, x20, [sp, 64]	//,,
	ldp	x21, x22, [sp, 80]	//,,
	ldr	x23, [sp, 96]	//,
	add	sp, sp, 112	//,,
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 23
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret	
	.p2align 2,,3
.L100:
	.cfi_restore_state
// /usr/include/c++/13/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	str	w23, [x19]	// _39, *_38
	b	.L67		//
.L99:
// /usr/include/c++/13/ext/string_conversions.h:88: 	std::__throw_out_of_range(__name);
	adrp	x20, :got:__stack_chk_guard	// tmp158,
	ldr	x20, [x20, :got_lo12:__stack_chk_guard]	// tmp158,
	ldr	x0, [sp, 40]	// tmp182, D.74270
	ldr	x1, [x20]	// tmp183,
	subs	x0, x0, x1	// tmp182, tmp183
	mov	x1, 0	// tmp183
	bne	.L96		//,
	adrp	x0, .LC6	// tmp120,
	add	x0, x0, :lo12:.LC6	//, tmp120,
.LEHB11:
	bl	_ZSt20__throw_out_of_rangePKc		//
.L98:
// /usr/include/c++/13/ext/string_conversions.h:85: 	std::__throw_invalid_argument(__name);
	adrp	x20, :got:__stack_chk_guard	// tmp158,
	ldr	x20, [x20, :got_lo12:__stack_chk_guard]	// tmp158,
	ldr	x0, [sp, 40]	// tmp180, D.74270
	ldr	x1, [x20]	// tmp181,
	subs	x0, x0, x1	// tmp180, tmp181
	mov	x1, 0	// tmp181
	bne	.L96		//,
	adrp	x0, .LC6	// tmp117,
	add	x0, x0, :lo12:.LC6	//, tmp117,
	bl	_ZSt24__throw_invalid_argumentPKc		//
.LEHE11:
.L89:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x19, x0	// tmp173,
	mov	x0, x23	//, tmp157
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L82:
// opciones.cpp:38:         throw std::invalid_argument("Valor inválido para " + option);
	mov	x0, x22	//, _20
	bl	__cxa_free_exception		//
.L83:
// opciones.cpp:39:     }
	bl	__cxa_end_catch		//
	ldr	x0, [sp, 40]	// tmp190, D.74270
	ldr	x1, [x20]	// tmp191,
	subs	x0, x0, x1	// tmp190, tmp191
	mov	x1, 0	// tmp191
	mov	x0, x19	//, tmp153
	beq	.L97		//,
.L96:
// opciones.cpp:40: }
	bl	__stack_chk_fail		//
.L68:
// opciones.cpp:34:             throw std::invalid_argument("");
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// opciones.cpp:34:             throw std::invalid_argument("");
	adrp	x1, .LC5	// tmp131,
// opciones.cpp:34:             throw std::invalid_argument("");
	mov	x23, x0	// _13, tmp167
// opciones.cpp:34:             throw std::invalid_argument("");
	add	x1, x1, :lo12:.LC5	//, tmp131,
.LEHB12:
	bl	_ZNSt16invalid_argumentC1EPKc		//
.LEHE12:
// opciones.cpp:34:             throw std::invalid_argument("");
	adrp	x20, :got:__stack_chk_guard	// tmp158,
	ldr	x20, [x20, :got_lo12:__stack_chk_guard]	// tmp158,
	ldr	x0, [sp, 40]	// tmp184, D.74270
	ldr	x1, [x20]	// tmp185,
	subs	x0, x0, x1	// tmp184, tmp185
	mov	x1, 0	// tmp185
	bne	.L96		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x23	//, _13
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB13:
	bl	__cxa_throw		//
.LEHE13:
.L91:
// /usr/include/c++/13/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	ldr	w2, [x19]	//, *_38
	cbnz	w2, .L72	// *_38,
// /usr/include/c++/13/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	str	w23, [x19]	// _39, *_38
.L72:
// opciones.cpp:37:     } catch (const std::exception&) {
	cmp	x1, 1	// tmp125,
	bne	.L101		//,
// opciones.cpp:37:     } catch (const std::exception&) {
	bl	__cxa_begin_catch		//
// opciones.cpp:38:         throw std::invalid_argument("Valor inválido para " + option);
	add	x23, sp, 8	// tmp157,,
// opciones.cpp:38:         throw std::invalid_argument("Valor inválido para " + option);
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// opciones.cpp:38:         throw std::invalid_argument("Valor inválido para " + option);
	ldp	x1, x2, [x21]	//,, MEM[(char * *)option_21(D)]
// opciones.cpp:38:         throw std::invalid_argument("Valor inválido para " + option);
	mov	x22, x0	// _20, tmp172
// opciones.cpp:38:         throw std::invalid_argument("Valor inválido para " + option);
	mov	x8, x23	//, tmp157
	adrp	x0, .LC3	// tmp141,
	add	x0, x0, :lo12:.LC3	//, tmp141,
.LEHB14:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.isra.0		//
.LEHE14:
// opciones.cpp:38:         throw std::invalid_argument("Valor inválido para " + option);
	mov	x1, x23	//, tmp157
	mov	x0, x22	//, _20
.LEHB15:
	bl	_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE		//
.LEHE15:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x0, x23	//, tmp157
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
// opciones.cpp:38:         throw std::invalid_argument("Valor inválido para " + option);
	ldr	x0, [sp, 40]	// tmp188, D.74270
	ldr	x1, [x20]	// tmp189,
	subs	x0, x0, x1	// tmp188, tmp189
	mov	x1, 0	// tmp189
	bne	.L96		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x22	//, _20
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB16:
	bl	__cxa_throw		//
.LEHE16:
.L87:
// opciones.cpp:34:             throw std::invalid_argument("");
	mov	x19, x0	// tmp136, tmp168
	mov	x22, x1	// tmp137, tmp169
	mov	x0, x23	//, _13
	bl	__cxa_free_exception		//
	adrp	x20, :got:__stack_chk_guard	// tmp158,
	ldr	x20, [x20, :got_lo12:__stack_chk_guard]	// tmp158,
	mov	x0, x19	// tmp123, tmp136
	mov	x1, x22	// tmp125, tmp137
	b	.L72		//
.L86:
	b	.L72		//
.L101:
	ldr	x1, [sp, 40]	// tmp186, D.74270
	ldr	x2, [x20]	// tmp187,
	subs	x1, x1, x2	// tmp186, tmp187
	mov	x2, 0	// tmp187
	bne	.L96		//,
.L97:
.LEHB17:
	bl	_Unwind_Resume		//
.LEHE17:
.L88:
// opciones.cpp:38:         throw std::invalid_argument("Valor inválido para " + option);
	mov	x19, x0	// tmp149, tmp174
	b	.L82		//
.L90:
// opciones.cpp:39:     }
	mov	x19, x0	// tmp153, tmp175
	b	.L83		//
	.cfi_endproc
.LFE2995:
	.section	.gcc_except_table
	.align	2
.LLSDA2995:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2995-.LLSDATTD2995
.LLSDATTD2995:
	.byte	0x1
	.uleb128 .LLSDACSE2995-.LLSDACSB2995
.LLSDACSB2995:
	.uleb128 .LEHB11-.LFB2995
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L91-.LFB2995
	.uleb128 0x3
	.uleb128 .LEHB12-.LFB2995
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L87-.LFB2995
	.uleb128 0x3
	.uleb128 .LEHB13-.LFB2995
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L86-.LFB2995
	.uleb128 0x1
	.uleb128 .LEHB14-.LFB2995
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L88-.LFB2995
	.uleb128 0
	.uleb128 .LEHB15-.LFB2995
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L89-.LFB2995
	.uleb128 0
	.uleb128 .LEHB16-.LFB2995
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L90-.LFB2995
	.uleb128 0
	.uleb128 .LEHB17-.LFB2995
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE2995:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align	2
	.4byte	DW.ref._ZTISt9exception-.
.LLSDATT2995:
	.text
	.size	_ZN12_GLOBAL__N_113parse_decimalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_, .-_ZN12_GLOBAL__N_113parse_decimalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_
	.section	.rodata.str1.8
	.align	3
.LC7:
	.string	"basic_string: construction from null is not valid"
	.align	3
.LC8:
	.string	"--help"
	.align	3
.LC9:
	.string	"Incendio secuencial C++17. Coordenadas de base 0.\n"
	.align	3
.LC10:
	.string	"--rows N --cols N --steps N --seed N --moisture X [0,1]\n"
	.align	3
.LC11:
	.string	"--wind-dir N|NE|E|SE|S|SW|W|NW --wind X [0,1]\n"
	.align	3
.LC12:
	.string	"--fire-row N --fire-col N --visual|--measure|--profile --delay MS --ascii --no-color\n"
	.align	3
.LC13:
	.string	"--profile: diagn\303\263stico de tiempos por fase, separado de la medici\303\263n habitual.\n"
	.align	3
.LC14:
	.string	"En modo visual: + acelera, - frena, espacio pausa, n avanza un paso, q termina.\n"
	.align	3
.LC15:
	.string	"Por defecto: 30x60, 80 pasos, semilla 42, humedad .28, viento E .6, foco (filas/2,columnas/5), medici\303\263n; pausa visual 180 ms.\n"
	.align	3
.LC16:
	.string	"--measure"
	.align	3
.LC17:
	.string	"--profile"
	.align	3
.LC18:
	.string	"--ascii"
	.align	3
.LC19:
	.string	"--no-color"
	.align	3
.LC20:
	.string	"Falta valor para "
	.align	3
.LC21:
	.string	"--rows"
	.align	3
.LC22:
	.string	"--cols"
	.align	3
.LC23:
	.string	"--steps"
	.align	3
.LC24:
	.string	"--seed"
	.align	3
.LC25:
	.string	"Semilla fuera de rango"
	.align	3
.LC26:
	.string	"--moisture"
	.align	3
.LC27:
	.string	"--wind"
	.align	3
.LC28:
	.string	"--fire-row"
	.align	3
.LC29:
	.string	"--fire-col"
	.align	3
.LC30:
	.string	"--delay"
	.align	3
.LC31:
	.string	"--delay debe estar en [0,60000]"
	.align	3
.LC32:
	.string	"--wind-dir"
	.align	3
.LC33:
	.string	"Direcci\303\263n de viento: N, NE, E, SE, S, SW, W o NW"
	.align	3
.LC34:
	.string	"Opci\303\263n desconocida: "
	.align	3
.LC35:
	.string	"--profile no se combina con --visual"
	.align	3
.LC36:
	.string	"Filas, columnas e iteraciones deben ser positivas"
	.align	3
.LC37:
	.string	"Dimensiones demasiado grandes"
	.align	3
.LC38:
	.string	"Humedad y viento deben estar en [0,1]"
	.align	3
.LC39:
	.string	"Foco fuera del terreno (coordenadas desde 0)"
	.text
	.align	2
	.p2align 4,,11
	.global	_Z13parse_optionsiPPc
	.type	_Z13parse_optionsiPPc, %function
_Z13parse_optionsiPPc:
.LFB2999:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2999
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
// opciones.h:9: struct Options {
	adrp	x2, .LC40	// tmp726,
	adrp	x3, .LC42	// tmp729,
// opciones.cpp:98: Options parse_options(int argc, char** argv) {
	mov	x29, sp	//,
	stp	x19, x20, [sp, 16]	//,,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x5, x8, 48	// tmp637, <retval>,
	.cfi_offset 19, -80
	.cfi_offset 20, -72
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	mov	x20, 1	// tmp231,
// opciones.cpp:98: Options parse_options(int argc, char** argv) {
	stp	x21, x22, [sp, 32]	//,,
// opciones.h:9: struct Options {
	mov	x4, 80	// tmp221,
	.cfi_offset 21, -64
	.cfi_offset 22, -56
// opciones.cpp:98: Options parse_options(int argc, char** argv) {
	mov	x22, x8	// <retval>, tmp644
	stp	x23, x24, [sp, 48]	//,,
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	mov	w24, w0	// argc, tmp645
// opciones.h:9: struct Options {
	mov	w0, 180	// tmp235,
// opciones.cpp:98: Options parse_options(int argc, char** argv) {
	stp	x25, x26, [sp, 64]	//,,
// opciones.h:9: struct Options {
	mvni	v1.4s, 0	// tmp233
// opciones.cpp:98: Options parse_options(int argc, char** argv) {
	stp	x27, x28, [sp, 80]	//,,
	sub	sp, sp, #448	//,,
	.cfi_def_cfa_offset 544
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	.cfi_offset 28, -8
// opciones.h:9: struct Options {
	ldr	d3, [x2, #:lo12:.LC40]	// tmp223,
	adrp	x2, .LC41	// tmp727,
	ldr	d2, [x3, #:lo12:.LC42]	// tmp224,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x5, [sp, 24]	// tmp637, %sfp
// opciones.h:9: struct Options {
	ldr	q0, [x2, #:lo12:.LC41]	// tmp220,
// opciones.cpp:98: Options parse_options(int argc, char** argv) {
	adrp	x2, :got:__stack_chk_guard	// tmp215,
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]	// tmp215,
	ldr	x3, [x2]	// tmp687,
	str	x3, [sp, 440]	// tmp687, D.74683
	mov	x3, 0	// tmp687
// opciones.h:9: struct Options {
	mov	w2, 42	// tmp222,
// /usr/include/c++/13/bits/basic_string.h:230: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x3, x8, 64	// tmp228, <retval>,
// opciones.h:9: struct Options {
	str	q0, [x8]	// tmp220, MEM <vector(2) long unsigned int> [(long unsigned int *)options_24(D)]
	str	x4, [x8, 16]	// tmp221, *options_24(D).steps
	str	w2, [x8, 24]	// tmp222, *options_24(D).seed
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	mov	w2, 69	// tmp232,
// opciones.h:9: struct Options {
	str	d3, [x8, 28]	// tmp223, MEM <vector(2) float> [(float *)options_24(D) + 28B]
	str	d2, [x8, 36]	// tmp224, MEM <vector(2) int> [(int *)options_24(D) + 36B]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x3, x20, [x8, 48]	// tmp228, tmp231, MEM[(struct _Alloc_hider *)options_24(D) + 48B]._M_p
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strh	w2, [x8, 64]	// tmp232, MEM <vector(2) char> [(char_type &)options_24(D) + 64]
// opciones.h:9: struct Options {
	str	q1, [x8, 80]	// tmp233, MEM <vector(2) long unsigned int> [(long unsigned int *)options_24(D) + 80B]
	str	wzr, [x8, 96]	//, MEM <vector(4) unsigned char> [(bool *)options_24(D) + 96B]
	strb	w20, [x8, 100]	// tmp231, *options_24(D).color
	str	w0, [x8, 104]	// tmp235, *options_24(D).delay
// opciones.cpp:100:     for (int i = 1; i < argc; ++i) {
	cmp	w24, 1	// argc,
	ble	.L241		//,
// /usr/include/c++/13/bits/basic_string.h:3731: 	       && !_Traits::compare(__lhs.data(), __rhs, __lhs.size());
	mov	x27, 11565	// tmp642,
	add	x0, sp, 56	// tmp627,,
	movk	x27, 0x6976, lsl 16	// tmp642,,
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	w28, 11565	// tmp643,
// /usr/include/c++/13/bits/basic_string.h:3731: 	       && !_Traits::compare(__lhs.data(), __rhs, __lhs.size());
	movk	x27, 0x7573, lsl 32	// tmp642,,
	mov	x25, x1	// argv, tmp646
	add	x23, sp, 72	// tmp631,,
	movk	x27, 0x6c61, lsl 48	// tmp642,,
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	movk	w28, 0x6568, lsl 16	// tmp643,,
	str	x0, [sp]	// tmp627, %sfp
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	add	x0, sp, 48	// tmp639,,
	str	x0, [sp, 8]	// tmp639, %sfp
	.p2align 3,,7
.L204:
// opciones.cpp:101:         std::string argument = argv[i];
	ldr	x21, [x25, w20, sxtw 3]	// _4, *_3
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x23, [sp, 56]	// tmp631, MEM[(struct _Alloc_hider *)&argument]._M_p
// opciones.cpp:101:         std::string argument = argv[i];
	sbfiz	x26, x20, 3, 32	// _2, i,,
// /usr/include/c++/13/bits/basic_string.h:645: 	if (__s == 0)
	cbz	x21, .L318	// _4,
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x0, x21	//, _4
	bl	strlen		//
// /usr/include/c++/13/bits/basic_string.tcc:225: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	str	x0, [sp, 48]	// _159, MEM[(long unsigned int *)_296]
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x19, x0	// _159, tmp647
// /usr/include/c++/13/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	x0, 15	// _159,
	bhi	.L319		//,
// /usr/include/c++/13/bits/basic_string.h:427: 	if (__n == 1)
	cmp	x0, 1	// _159,
	bne	.L108		//,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	ldrb	w0, [x21]	// _166, MEM[(const char_type &)_4]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	w0, [sp, 72]	// _166, MEM[(char_type &)&argument + 16]
.L110:
	mov	x0, x23	// pretmp_205, tmp631
.L109:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x19, [sp, 64]	// _159, argument._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x0, x19]	//, MEM[(char_type &)_169]
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	ldr	x0, [sp, 64]	// _170, argument._M_string_length
// /usr/include/c++/13/bits/basic_string.h:3731: 	       && !_Traits::compare(__lhs.data(), __rhs, __lhs.size());
	cmp	x0, 6	// _170,
	beq	.L320		//,
	cmp	x0, 8	// _170,
	bne	.L321		//,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 56]	// _451, argument._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:3731: 	       && !_Traits::compare(__lhs.data(), __rhs, __lhs.size());
	ldr	x1, [x0]	// MEM <unsigned long> [(char * {ref-all})_413], MEM <unsigned long> [(char * {ref-all})_413]
	cmp	x1, x27	// MEM <unsigned long> [(char * {ref-all})_413], tmp642
	bne	.L115		//,
// opciones.cpp:107:             options.visual = true;
	mov	w1, 1	// tmp281,
	strb	w1, [x22, 97]	// tmp281, options_24(D)->visual
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	// _451, tmp631
	beq	.L203		//,
.L118:
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 72]	// argument.D.29392._M_allocated_capacity, argument.D.29392._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, argument.D.29392._M_allocated_capacity,
	bl	_ZdlPvm		//
.L203:
// opciones.cpp:100:     for (int i = 1; i < argc; ++i) {
	add	w20, w20, 1	// i, i,
// opciones.cpp:100:     for (int i = 1; i < argc; ++i) {
	cmp	w24, w20	// argc, i
	bgt	.L204		//,
// opciones.cpp:69:     if (options.profile && options.visual) {
	ldrb	w0, [x22, 98]	// options_24(D)->profile, options_24(D)->profile
	tbz	x0, 0, .L207	// options_24(D)->profile,,
// opciones.cpp:69:     if (options.profile && options.visual) {
	ldrb	w0, [x22, 97]	// options_24(D)->visual, options_24(D)->visual
	tbnz	x0, 0, .L322	// options_24(D)->visual,,
.L207:
// opciones.cpp:72:     if (!options.rows || !options.cols || !options.steps) {
	ldr	x0, [x22]	// prephitmp_487, options_24(D)->rows
// opciones.cpp:72:     if (!options.rows || !options.cols || !options.steps) {
	cbz	x0, .L206	// prephitmp_487,
.L103:
// opciones.cpp:72:     if (!options.rows || !options.cols || !options.steps) {
	ldr	x1, [x22, 8]	// _419, options_24(D)->cols
// opciones.cpp:72:     if (!options.rows || !options.cols || !options.steps) {
	cbz	x1, .L206	// _419,
// opciones.cpp:72:     if (!options.rows || !options.cols || !options.steps) {
	ldr	x2, [x22, 16]	// options_24(D)->steps, options_24(D)->steps
	cbz	x2, .L206	// options_24(D)->steps,
// opciones.cpp:77:     if (options.rows > std::numeric_limits<std::size_t>::max() / options.cols ||
	umulh	x2, x1, x0	// tmp567, _419, prephitmp_487
	cbnz	x2, .L213	// tmp567,
// opciones.cpp:78:         options.rows * options.cols > std::numeric_limits<Grid::difference_type>::max() / 2) {
	mul	x3, x1, x0	// tmp569, _419, prephitmp_487
// opciones.cpp:77:     if (options.rows > std::numeric_limits<std::size_t>::max() / options.cols ||
	mov	x2, 4611686018427387903	// tmp570,
	cmp	x3, x2	// tmp569, tmp570
	bhi	.L213		//,
// opciones.cpp:81:     if (options.moisture < 0 || options.moisture > 1 || options.wind < 0 || options.wind > 1) {
	ldr	s1, [x22, 28]	// _426, options_24(D)->moisture
// opciones.cpp:81:     if (options.moisture < 0 || options.moisture > 1 || options.wind < 0 || options.wind > 1) {
	fcmpe	s1, #0.0	// _426
	bmi	.L216		//,
// opciones.cpp:81:     if (options.moisture < 0 || options.moisture > 1 || options.wind < 0 || options.wind > 1) {
	fmov	s0, 1.0e+0	// tmp577,
	fcmpe	s1, s0	// _426, tmp577
	bgt	.L216		//,
// opciones.cpp:81:     if (options.moisture < 0 || options.moisture > 1 || options.wind < 0 || options.wind > 1) {
	ldr	s1, [x22, 32]	// _427, options_24(D)->wind
// opciones.cpp:81:     if (options.moisture < 0 || options.moisture > 1 || options.wind < 0 || options.wind > 1) {
	fcmpe	s1, #0.0	// _427
	bmi	.L216		//,
// opciones.cpp:81:     if (options.moisture < 0 || options.moisture > 1 || options.wind < 0 || options.wind > 1) {
	fcmpe	s1, s0	// _427, tmp577
	bgt	.L216		//,
// opciones.cpp:85:     if (options.fire_row == std::numeric_limits<std::size_t>::max()) {
	ldr	x3, [x22, 80]	// _429, options_24(D)->fire_row
// opciones.cpp:85:     if (options.fire_row == std::numeric_limits<std::size_t>::max()) {
	cmn	x3, #1	// _429,
	bne	.L220		//,
// opciones.cpp:86:         options.fire_row = options.rows / 2;
	lsr	x3, x0, 1	// _429, prephitmp_487,
// opciones.cpp:86:         options.fire_row = options.rows / 2;
	str	x3, [x22, 80]	// _429, options_24(D)->fire_row
.L220:
// opciones.cpp:88:     if (options.fire_col == std::numeric_limits<std::size_t>::max()) {
	ldr	x2, [x22, 88]	// prephitmp_279, options_24(D)->fire_col
// opciones.cpp:88:     if (options.fire_col == std::numeric_limits<std::size_t>::max()) {
	cmn	x2, #1	// prephitmp_279,
	bne	.L221		//,
// opciones.cpp:89:         options.fire_col = options.cols / 5;
	mov	x2, -3689348814741910324	// tmp586,
	movk	x2, 0xcccd, lsl 0	// tmp586,,
	umulh	x2, x1, x2	// tmp585, _419, tmp586
	lsr	x2, x2, 2	// prephitmp_279, tmp585,
// opciones.cpp:89:         options.fire_col = options.cols / 5;
	str	x2, [x22, 88]	// prephitmp_279, options_24(D)->fire_col
.L221:
// opciones.cpp:91:     if (options.fire_row >= options.rows || options.fire_col >= options.cols) {
	cmp	x3, x0	// _429, prephitmp_487
	bcs	.L222		//,
// opciones.cpp:91:     if (options.fire_row >= options.rows || options.fire_col >= options.cols) {
	cmp	x2, x1	// prephitmp_279, _419
	bcs	.L222		//,
// opciones.cpp:167: }
	adrp	x0, :got:__stack_chk_guard	// tmp626,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp626,
	ldr	x2, [sp, 440]	// tmp714, D.74683
	ldr	x1, [x0]	// tmp715,
	subs	x2, x2, x1	// tmp714, tmp715
	mov	x1, 0	// tmp715
	bne	.L316		//,
	add	sp, sp, 448	//,,
	.cfi_remember_state
	.cfi_def_cfa_offset 96
	mov	x0, x22	//, <retval>
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x21, x22, [sp, 32]	//,,
	ldp	x23, x24, [sp, 48]	//,,
	ldp	x25, x26, [sp, 64]	//,,
	ldp	x27, x28, [sp, 80]	//,,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret	
	.p2align 2,,3
.L321:
	.cfi_restore_state
// /usr/include/c++/13/bits/basic_string.h:3731: 	       && !_Traits::compare(__lhs.data(), __rhs, __lhs.size());
	cmp	x0, 9	// _170,
	bne	.L120		//,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 56]	// _451, argument._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	x2, 11565	// tmp735,
	movk	x2, 0x656d, lsl 16	// tmp735,,
	movk	x2, 0x7361, lsl 32	// tmp735,,
	ldr	x1, [x0]	// MEM <char[1:9]> [(void *)_648], MEM <char[1:9]> [(void *)_648]
	movk	x2, 0x7275, lsl 48	// tmp735,,
	cmp	x1, x2	// MEM <char[1:9]> [(void *)_648], tmp735
	beq	.L323		//,
.L121:
	mov	x2, 11565	// tmp736,
	movk	x2, 0x7270, lsl 16	// tmp736,,
	movk	x2, 0x666f, lsl 32	// tmp736,,
	movk	x2, 0x6c69, lsl 48	// tmp736,,
	cmp	x1, x2	// MEM <char[1:9]> [(void *)_648], tmp736
	beq	.L324		//,
	.p2align 3,,7
.L115:
// opciones.cpp:126:         if (i + 1 >= argc) {
	add	w20, w20, 1	// i, i,
// opciones.cpp:126:         if (i + 1 >= argc) {
	cmp	w20, w24	// i, argc
	bge	.L325		//,
// opciones.cpp:130:         std::string value = argv[++i];
	add	x0, x25, x26	// tmp326, argv, _2
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x1, sp, 88	// tmp633,,
	add	x26, sp, 104	// tmp634,,
	str	x1, [sp, 16]	// tmp633, %sfp
	str	x26, [sp, 88]	// tmp634, MEM[(struct _Alloc_hider *)&value]._M_p
// opciones.cpp:130:         std::string value = argv[++i];
	ldr	x21, [x0, 8]	// _9, *_8
// /usr/include/c++/13/bits/basic_string.h:645: 	if (__s == 0)
	cbz	x21, .L326	// _9,
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x0, x21	//, _9
	bl	strlen		//
// /usr/include/c++/13/bits/basic_string.tcc:225: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	str	x0, [sp, 48]	// _203, MEM[(long unsigned int *)_296]
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x19, x0	// _203, tmp650
// /usr/include/c++/13/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	x0, 15	// _203,
	bhi	.L327		//,
// /usr/include/c++/13/bits/basic_string.h:427: 	if (__n == 1)
	cmp	x0, 1	// _203,
	beq	.L328		//,
// /usr/include/c++/13/bits/char_traits.h:429: 	if (__n == 0)
	cbnz	x0, .L329	// _203,
.L141:
	mov	x0, x26	// prephitmp_441, tmp634
.L140:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x19, [sp, 96]	// _203, value._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x0, x19]	//, MEM[(char_type &)_213]
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	ldr	x0, [sp, 64]	// _214, argument._M_string_length
// /usr/include/c++/13/bits/basic_string.h:3731: 	       && !_Traits::compare(__lhs.data(), __rhs, __lhs.size());
	cmp	x0, 6	// _214,
	beq	.L330		//,
	cmp	x0, 7	// _214,
	bne	.L331		//,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [sp, 56]	// _491, argument._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	w2, 11565	// tmp359,
	movk	w2, 0x7473, lsl 16	// tmp359,,
	ldr	w0, [x1]	//, MEM <char[1:7]> [(void *)_491]
	cmp	w0, w2	// MEM <char[1:7]> [(void *)_491], tmp359
	beq	.L332		//,
.L153:
	mov	w2, 11565	// tmp418,
	movk	w2, 0x6564, lsl 16	// tmp418,,
	cmp	w0, w2	// MEM <char[1:7]> [(void *)_491], tmp418
	bne	.L166		//,
	ldrh	w2, [x1, 4]	// MEM <char[1:7]> [(void *)_491], MEM <char[1:7]> [(void *)_491]
	mov	w0, 24940	// tmp421,
	cmp	w2, w0	// MEM <char[1:7]> [(void *)_491], tmp421
	bne	.L166		//,
	ldrb	w0, [x1, 6]	// MEM <char[1:7]> [(void *)_491], MEM <char[1:7]> [(void *)_491]
	cmp	w0, 121	// MEM <char[1:7]> [(void *)_491],
	bne	.L166		//,
// opciones.cpp:154:             auto delay = parse_integer(value, argument);
	ldr	x1, [sp]	//, %sfp
	ldr	x0, [sp, 16]	//, %sfp
.LEHB18:
	bl	_ZN12_GLOBAL__N_113parse_integerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_		//
.LEHE18:
// opciones.cpp:155:             if (delay > 60000) {
	mov	x1, 60000	// tmp425,
	cmp	x0, x1	// _77, tmp425
	bhi	.L333		//,
// opciones.cpp:158:             options.delay = static_cast<unsigned>(delay);
	str	w0, [x22, 104]	// _77, options_24(D)->delay
	b	.L146		//
	.p2align 2,,3
.L320:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldr	x0, [sp, 56]	// argument._M_dataplus._M_p, argument._M_dataplus._M_p
	ldr	w1, [x0]	//, MEM <char[1:6]> [(void *)_623]
	cmp	w1, w28	// MEM <char[1:6]> [(void *)_623], tmp643
	bne	.L115		//,
	ldrh	w1, [x0, 4]	// MEM <char[1:6]> [(void *)_623], MEM <char[1:6]> [(void *)_623]
	mov	w0, 28780	// tmp257,
	cmp	w1, w0	// MEM <char[1:6]> [(void *)_623], tmp257
	bne	.L115		//,
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	adrp	x1, .LC9	// tmp259,
	mov	x2, 50	//,
	add	x1, x1, :lo12:.LC9	//, tmp259,
.LEHB19:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	adrp	x1, .LC10	// tmp262,
	mov	x2, 56	//,
	add	x1, x1, :lo12:.LC10	//, tmp262,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	adrp	x1, .LC11	// tmp265,
	mov	x2, 46	//,
	add	x1, x1, :lo12:.LC11	//, tmp265,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	adrp	x1, .LC12	// tmp268,
	mov	x2, 85	//,
	add	x1, x1, :lo12:.LC12	//, tmp268,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	adrp	x1, .LC13	// tmp271,
	mov	x2, 80	//,
	add	x1, x1, :lo12:.LC13	//, tmp271,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	adrp	x1, .LC14	// tmp274,
	mov	x2, 80	//,
	add	x1, x1, :lo12:.LC14	//, tmp274,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	adrp	x1, .LC15	// tmp277,
	mov	x2, 127	//,
	add	x1, x1, :lo12:.LC15	//, tmp277,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE19:
// opciones.cpp:104:             std::exit(0);
	mov	w0, 0	//,
	bl	exit		//
	.p2align 2,,3
.L108:
// /usr/include/c++/13/bits/char_traits.h:429: 	if (__n == 0)
	cbz	x0, .L110	// _159,
	mov	x0, x23	// _163, tmp631
	b	.L107		//
	.p2align 2,,3
.L319:
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	ldp	x0, x1, [sp]	//,, %sfp
	mov	x2, 0	//,
.LEHB20:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm		//
.LEHE20:
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [sp, 48]	// MEM[(long unsigned int *)_296], MEM[(long unsigned int *)_296]
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 56]	// _163, argument._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 72]	// MEM[(long unsigned int *)_296], argument.D.29392._M_allocated_capacity
.L107:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x19	//, _159
	mov	x1, x21	//, _4
	bl	memcpy		//
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldp	x19, x0, [sp, 48]	// _159, pretmp_205, MEM[(long unsigned int *)_296]
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	b	.L109		//
	.p2align 2,,3
.L120:
// /usr/include/c++/13/bits/basic_string.h:3731: 	       && !_Traits::compare(__lhs.data(), __rhs, __lhs.size());
	cmp	x0, 7	// _170,
	bne	.L128		//,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 56]	// _451, argument._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	w1, 11565	// tmp301,
	movk	w1, 0x7361, lsl 16	// tmp301,,
	ldr	w2, [x0]	//, MEM <char[1:7]> [(void *)_446]
	cmp	w2, w1	// MEM <char[1:7]> [(void *)_446], tmp301
	bne	.L115		//,
	ldrh	w2, [x0, 4]	// MEM <char[1:7]> [(void *)_446], MEM <char[1:7]> [(void *)_446]
	mov	w1, 26979	// tmp304,
	cmp	w2, w1	// MEM <char[1:7]> [(void *)_446], tmp304
	bne	.L115		//,
	ldrb	w1, [x0, 6]	// MEM <char[1:7]> [(void *)_446], MEM <char[1:7]> [(void *)_446]
	cmp	w1, 105	// MEM <char[1:7]> [(void *)_446],
	bne	.L115		//,
// opciones.cpp:119:             options.ascii = true;
	mov	w1, 1	// tmp306,
	strb	w1, [x22, 99]	// tmp306, options_24(D)->ascii
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	// _451, tmp631
	bne	.L118		//,
	b	.L203		//
	.p2align 2,,3
.L128:
// /usr/include/c++/13/bits/basic_string.h:3731: 	       && !_Traits::compare(__lhs.data(), __rhs, __lhs.size());
	cmp	x0, 10	// _170,
	bne	.L115		//,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 56]	// _451, argument._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	x1, 11565	// tmp311,
	movk	x1, 0x6f6e, lsl 16	// tmp311,,
	movk	x1, 0x632d, lsl 32	// tmp311,,
	ldr	x2, [x0]	// MEM <char[1:10]> [(void *)_451], MEM <char[1:10]> [(void *)_451]
	movk	x1, 0x6c6f, lsl 48	// tmp311,,
	cmp	x2, x1	// MEM <char[1:10]> [(void *)_451], tmp311
	bne	.L115		//,
	ldrh	w2, [x0, 8]	// MEM <char[1:10]> [(void *)_451], MEM <char[1:10]> [(void *)_451]
	mov	w1, 29295	// tmp314,
	cmp	w2, w1	// MEM <char[1:10]> [(void *)_451], tmp314
	bne	.L115		//,
// opciones.cpp:123:             options.color = false;
	strb	wzr, [x22, 100]	//, options_24(D)->color
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	// _451, tmp631
	bne	.L118		//,
	b	.L203		//
	.p2align 2,,3
.L323:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldrb	w2, [x0, 8]	// MEM <char[1:9]> [(void *)_648], MEM <char[1:9]> [(void *)_648]
	cmp	w2, 101	// MEM <char[1:9]> [(void *)_648],
	bne	.L121		//,
// opciones.cpp:111:             options.visual = false;
	strb	wzr, [x22, 97]	//, options_24(D)->visual
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	// _451, tmp631
	bne	.L118		//,
	b	.L203		//
	.p2align 2,,3
.L328:
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	ldrb	w0, [x21]	// _210, MEM[(const char_type &)_9]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	w0, [sp, 104]	// _210, MEM[(char_type &)&value + 16]
// /usr/include/c++/13/bits/char_traits.h:359:       }
	b	.L141		//
	.p2align 2,,3
.L324:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldrb	w1, [x0, 8]	// MEM <char[1:9]> [(void *)_648], MEM <char[1:9]> [(void *)_648]
	cmp	w1, 101	// MEM <char[1:9]> [(void *)_648],
	bne	.L115		//,
// opciones.cpp:115:             options.profile = true;
	mov	w1, 1	// tmp296,
	strb	w1, [x22, 98]	// tmp296, options_24(D)->profile
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	// _451, tmp631
	bne	.L118		//,
	b	.L203		//
	.p2align 2,,3
.L330:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [sp, 56]	// _460, argument._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	w2, 11565	// tmp343,
	movk	w2, 0x6f72, lsl 16	// tmp343,,
	ldr	w0, [x1]	//, MEM <char[1:6]> [(void *)_460]
	cmp	w0, w2	// MEM <char[1:6]> [(void *)_460], tmp343
	beq	.L334		//,
.L143:
	mov	w2, 11565	// tmp351,
	movk	w2, 0x6f63, lsl 16	// tmp351,,
	cmp	w0, w2	// MEM <char[1:6]> [(void *)_460], tmp351
	beq	.L335		//,
.L147:
	mov	w2, 11565	// tmp368,
	movk	w2, 0x6573, lsl 16	// tmp368,,
	cmp	w0, w2	// MEM <char[1:6]> [(void *)_460], tmp368
	beq	.L336		//,
.L156:
	mov	w2, 11565	// tmp392,
	movk	w2, 0x6977, lsl 16	// tmp392,,
	cmp	w0, w2	// MEM <char[1:6]> [(void *)_460], tmp392
	beq	.L337		//,
.L166:
// opciones.cpp:162:             throw std::invalid_argument("Opción desconocida: " + argument);
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// opciones.cpp:162:             throw std::invalid_argument("Opción desconocida: " + argument);
	ldp	x1, x2, [sp, 56]	//,, MEM[(char * *)&argument]
	add	x19, sp, 184	// tmp638,,
// opciones.cpp:162:             throw std::invalid_argument("Opción desconocida: " + argument);
	mov	x20, x0	// _68, tmp667
// opciones.cpp:162:             throw std::invalid_argument("Opción desconocida: " + argument);
	mov	x8, x19	//, tmp638
	adrp	x0, .LC34	// tmp533,
	add	x0, x0, :lo12:.LC34	//, tmp533,
.LEHB21:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.isra.0		//
.LEHE21:
// opciones.cpp:162:             throw std::invalid_argument("Opción desconocida: " + argument);
	mov	x1, x19	//, tmp638
	mov	x0, x20	//, _68
.LEHB22:
	bl	_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE		//
.LEHE22:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x0, x19	//, tmp638
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
// opciones.cpp:162:             throw std::invalid_argument("Opción desconocida: " + argument);
	adrp	x0, :got:__stack_chk_guard	// tmp537,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp537,
	ldr	x2, [sp, 440]	// tmp700, D.74683
	ldr	x1, [x0]	// tmp701,
	subs	x2, x2, x1	// tmp700, tmp701
	mov	x1, 0	// tmp701
	bne	.L316		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x20	//, _68
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB23:
	bl	__cxa_throw		//
.LEHE23:
	.p2align 2,,3
.L327:
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	ldr	x0, [sp, 16]	//, %sfp
	add	x1, sp, 48	//,,
	mov	x2, 0	//,
.LEHB24:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm		//
.LEHE24:
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [sp, 48]	// MEM[(long unsigned int *)_296], MEM[(long unsigned int *)_296]
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 88]	// _207, value._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 104]	// MEM[(long unsigned int *)_296], value.D.29392._M_allocated_capacity
.L138:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x19	//, _203
	mov	x1, x21	//, _9
	bl	memcpy		//
// /usr/include/c++/13/bits/basic_string.tcc:251: 	_M_set_length(__dnew);
	ldr	x19, [sp, 48]	// _203, MEM[(long unsigned int *)_296]
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 88]	// prephitmp_441, value._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	b	.L140		//
	.p2align 2,,3
.L329:
	mov	x0, x26	// _207, tmp634
	b	.L138		//
.L332:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldrh	w3, [x1, 4]	// MEM <char[1:7]> [(void *)_491], MEM <char[1:7]> [(void *)_491]
	mov	w2, 28773	// tmp362,
	cmp	w3, w2	// MEM <char[1:7]> [(void *)_491], tmp362
	bne	.L153		//,
	ldrb	w2, [x1, 6]	// MEM <char[1:7]> [(void *)_491], MEM <char[1:7]> [(void *)_491]
	cmp	w2, 115	// MEM <char[1:7]> [(void *)_491],
	bne	.L153		//,
// opciones.cpp:136:             options.steps = parse_integer(value, argument);
	ldr	x1, [sp]	//, %sfp
	ldr	x0, [sp, 16]	//, %sfp
.LEHB25:
	bl	_ZN12_GLOBAL__N_113parse_integerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_		//
.LEHE25:
// opciones.cpp:136:             options.steps = parse_integer(value, argument);
	str	x0, [x22, 16]	// tmp654, options_24(D)->steps
	b	.L146		//
	.p2align 2,,3
.L331:
// /usr/include/c++/13/bits/basic_string.h:3731: 	       && !_Traits::compare(__lhs.data(), __rhs, __lhs.size());
	cmp	x0, 10	// _214,
	bne	.L166		//,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [sp, 56]	// _633, argument._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	x2, 11565	// tmp384,
	movk	x2, 0x6f6d, lsl 16	// tmp384,,
	movk	x2, 0x7369, lsl 32	// tmp384,,
	ldr	x0, [x1]	// MEM <char[1:10]> [(void *)_633], MEM <char[1:10]> [(void *)_633]
	movk	x2, 0x7574, lsl 48	// tmp384,,
	cmp	x0, x2	// MEM <char[1:10]> [(void *)_633], tmp384
	beq	.L338		//,
.L161:
	mov	x2, 11565	// tmp400,
	movk	x2, 0x6966, lsl 16	// tmp400,,
	movk	x2, 0x6572, lsl 32	// tmp400,,
	movk	x2, 0x722d, lsl 48	// tmp400,,
	cmp	x0, x2	// MEM <char[1:10]> [(void *)_633], tmp400
	beq	.L339		//,
.L167:
	mov	x2, 11565	// tmp409,
	movk	x2, 0x6966, lsl 16	// tmp409,,
	movk	x2, 0x6572, lsl 32	// tmp409,,
	movk	x2, 0x632d, lsl 48	// tmp409,,
	cmp	x0, x2	// MEM <char[1:10]> [(void *)_633], tmp409
	beq	.L340		//,
.L170:
	mov	x2, 11565	// tmp435,
	movk	x2, 0x6977, lsl 16	// tmp435,,
	movk	x2, 0x646e, lsl 32	// tmp435,,
	movk	x2, 0x642d, lsl 48	// tmp435,,
	cmp	x0, x2	// MEM <char[1:10]> [(void *)_633], tmp435
	bne	.L166		//,
	ldrh	w1, [x1, 8]	// MEM <char[1:10]> [(void *)_633], MEM <char[1:10]> [(void *)_633]
	mov	w0, 29289	// tmp438,
	cmp	w1, w0	// MEM <char[1:10]> [(void *)_633], tmp438
	bne	.L166		//,
// opciones.cpp:54:     const int horizontal[] = {0, 1, 1, 1, 0, -1, -1, -1};
	adrp	x0, .LANCHOR0	// tmp480,
	add	x0, x0, :lo12:.LANCHOR0	// tmp479, tmp480,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	mov	w4, 78	// tmp442,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x3, sp, 232	// tmp444,,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	mov	w5, 69	// tmp452,
	strh	w4, [sp, 200]	// tmp442, MEM <vector(2) char> [(char_type &)_307]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x4, sp, 264	// tmp450,,
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	mov	x2, 1	// tmp441,
// opciones.cpp:54:     const int horizontal[] = {0, 1, 1, 1, 0, -1, -1, -1};
	ldp	q0, q1, [x0]	// tmp483, tmp484,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x1, sp, 200	// tmp440,,
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	w6, 17742	// tmp447,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x3, [sp, 216]	// tmp444, MEM[(struct _Alloc_hider *)_307]._M_p
	add	x3, sp, 296	// tmp454,,
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x4, x2, [sp, 248]	// tmp450, tmp441, MEM[(struct _Alloc_hider *)_307]._M_p
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x4, sp, 328	// tmp460,,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strh	w5, [sp, 264]	// tmp452, MEM <vector(2) char> [(char_type &)_307]
	mov	w5, 83	// tmp462,
// opciones.cpp:54:     const int horizontal[] = {0, 1, 1, 1, 0, -1, -1, -1};
	add	x7, sp, 120	// tmp635,,
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x1, x2, [sp, 184]	// tmp440, tmp441, MEM[(struct _Alloc_hider *)_307]._M_p
	mov	x1, 2	// tmp448,
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	strh	w6, [sp, 232]	// tmp447, MEM <char[1:2]> [(void *)_307]
	mov	w6, 17747	// tmp457,
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x3, x1, [sp, 280]	// tmp454, tmp448, MEM[(struct _Alloc_hider *)_307]._M_p
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x3, sp, 360	// tmp464,,
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	w19, 0	// i,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x4, [sp, 312]	// tmp460, MEM[(struct _Alloc_hider *)_307]._M_p
	add	x4, sp, 392	// tmp470,,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strh	w5, [sp, 328]	// tmp462, MEM <vector(2) char> [(char_type &)_307]
	mov	w5, 87	// tmp472,
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x1, [sp, 224]	// tmp448, MEM[(struct basic_string *)_307]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 234]	//, MEM[(char_type &)_307]
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	strh	w6, [sp, 296]	// tmp457, MEM <char[1:2]> [(void *)_307]
	mov	w6, 22355	// tmp467,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 298]	//, MEM[(char_type &)_307]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x2, [sp, 320]	// tmp441, MEM[(struct basic_string *)_307]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x3, [sp, 344]	// tmp464, MEM[(struct _Alloc_hider *)_307]._M_p
	add	x3, sp, 424	// tmp474,,
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x1, [sp, 352]	// tmp448, MEM[(struct basic_string *)_307]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	strh	w6, [sp, 360]	// tmp467, MEM <char[1:2]> [(void *)_307]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 362]	//, MEM[(char_type &)_307]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x4, [sp, 376]	// tmp470, MEM[(struct _Alloc_hider *)_307]._M_p
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	w4, 22350	// tmp477,
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x2, [sp, 384]	// tmp441, MEM[(struct basic_string *)_307]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strh	w5, [sp, 392]	// tmp472, MEM <vector(2) char> [(char_type &)_307]
// opciones.cpp:55:     const int vertical[] = {-1, -1, 0, 1, 1, 1, 0, -1};
	add	x5, sp, 152	// tmp636,,
	stp	x7, x5, [sp, 32]	// tmp635, tmp636, %sfp
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x3, [sp, 408]	// tmp474, MEM[(struct _Alloc_hider *)_307]._M_p
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x1, [sp, 416]	// tmp448, MEM[(struct basic_string *)_307]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	strh	w4, [sp, 424]	// tmp477, MEM <char[1:2]> [(void *)_307]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 426]	//, MEM[(char_type &)_307]
// opciones.cpp:54:     const int horizontal[] = {0, 1, 1, 1, 0, -1, -1, -1};
	stp	q0, q1, [x7]	// tmp483, tmp484, horizontal
// opciones.cpp:55:     const int vertical[] = {-1, -1, 0, 1, 1, 1, 0, -1};
	ldp	q0, q1, [x0, 32]	// tmp491, tmp492,
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	ldr	x0, [sp, 96]	// _641, value._M_string_length
// opciones.cpp:55:     const int vertical[] = {-1, -1, 0, 1, 1, 1, 0, -1};
	stp	q0, q1, [x5]	// tmp491, tmp492, vertical
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	cmp	x0, x2	// _641,
	beq	.L341		//,
	cmp	x0, 2	// _641,
	bne	.L182		//,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 88]	// _328, value._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	ldrh	w1, [sp, 232]	// MEM <unsigned short> [(char * {ref-all})_307], MEM <unsigned short> [(char * {ref-all})_307]
	ldrh	w0, [x0]	// MEM <unsigned short> [(char * {ref-all})_328], MEM <unsigned short> [(char * {ref-all})_328]
	cmp	w1, w0	// MEM <unsigned short> [(char * {ref-all})_307], MEM <unsigned short> [(char * {ref-all})_328]
	bne	.L342		//,
// opciones.cpp:57:     for (int i = 0; i < 8; ++i) {
	mov	w19, w2	// i, tmp441
.L180:
// /usr/include/c++/13/bits/basic_string.h:1608: 	this->_M_assign(__str);
	ldp	x1, x0, [sp, 16]	//,, %sfp
.LEHB26:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_		//
.LEHE26:
// opciones.cpp:61:             options.dy = vertical[i];
	ldp	x1, x2, [sp, 32]	// tmp635, tmp636, %sfp
// opciones.cpp:60:             options.dx = horizontal[i];
	sxtw	x0, w19	// i, i
	add	x21, sp, 408	// ivtmp.185,,
	add	x19, sp, 184	// tmp638,,
// opciones.cpp:60:             options.dx = horizontal[i];
	ldr	w1, [x1, x0, lsl 2]	//, horizontal[i_268]
// opciones.cpp:61:             options.dy = vertical[i];
	ldr	w0, [x2, x0, lsl 2]	//, vertical[i_268]
	stp	w1, w0, [x22, 36]	// horizontal[i_268], vertical[i_268], options_24(D)->dx
	.p2align 3,,7
.L191:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x1, x21	// tmp519, ivtmp.185
	ldr	x0, [x1], 16	// _387, MEM[(char * *)_274]
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _387, tmp519
	beq	.L194		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x21, 16]	// MEM <size_type> [(union ._anon_55 *)_274 + 16B], MEM <size_type> [(union ._anon_55 *)_274 + 16B]
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM <size_type> [(union ._anon_55 *)_274 + 16B],
	bl	_ZdlPvm		//
// opciones.cpp:66: }
	sub	x0, x21, #32	// ivtmp.185, ivtmp.185,
	cmp	x19, x21	// tmp638, ivtmp.185
	beq	.L146		//,
// opciones.cpp:57:     for (int i = 0; i < 8; ++i) {
	mov	x21, x0	// ivtmp.185, ivtmp.185
	b	.L191		//
	.p2align 2,,3
.L334:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldrh	w3, [x1, 4]	// MEM <char[1:6]> [(void *)_460], MEM <char[1:6]> [(void *)_460]
	mov	w2, 29559	// tmp346,
	cmp	w3, w2	// MEM <char[1:6]> [(void *)_460], tmp346
	bne	.L143		//,
// opciones.cpp:132:             options.rows = parse_integer(value, argument);
	ldr	x1, [sp]	//, %sfp
	ldr	x0, [sp, 16]	//, %sfp
.LEHB27:
	bl	_ZN12_GLOBAL__N_113parse_integerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_		//
// opciones.cpp:132:             options.rows = parse_integer(value, argument);
	str	x0, [x22]	// tmp652, options_24(D)->rows
	b	.L146		//
	.p2align 2,,3
.L335:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldrh	w3, [x1, 4]	// MEM <char[1:6]> [(void *)_460], MEM <char[1:6]> [(void *)_460]
	mov	w2, 29548	// tmp354,
	cmp	w3, w2	// MEM <char[1:6]> [(void *)_460], tmp354
	bne	.L147		//,
// opciones.cpp:134:             options.cols = parse_integer(value, argument);
	ldr	x1, [sp]	//, %sfp
	ldr	x0, [sp, 16]	//, %sfp
	bl	_ZN12_GLOBAL__N_113parse_integerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_		//
// opciones.cpp:134:             options.cols = parse_integer(value, argument);
	str	x0, [x22, 8]	// tmp653, options_24(D)->cols
	b	.L146		//
.L241:
// opciones.cpp:100:     for (int i = 1; i < argc; ++i) {
	fmov	x0, d0	// prephitmp_487, tmp220
	b	.L103		//
.L336:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldrh	w3, [x1, 4]	// MEM <char[1:6]> [(void *)_460], MEM <char[1:6]> [(void *)_460]
	mov	w2, 25701	// tmp371,
	cmp	w3, w2	// MEM <char[1:6]> [(void *)_460], tmp371
	bne	.L156		//,
// opciones.cpp:138:             auto seed = parse_integer(value, argument);
	ldr	x1, [sp]	//, %sfp
	ldr	x0, [sp, 16]	//, %sfp
	bl	_ZN12_GLOBAL__N_113parse_integerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_		//
// opciones.cpp:139:             if (seed > UINT32_MAX) {
	mov	x1, 4294967295	// tmp374,
	cmp	x0, x1	// _99, tmp374
	bhi	.L343		//,
// opciones.cpp:142:             options.seed = static_cast<std::uint32_t>(seed);
	str	w0, [x22, 24]	// _99, options_24(D)->seed
	.p2align 3,,7
.L146:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 88]	// _400, value._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x26	// _400, tmp634
	beq	.L201		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 104]	// value.D.29392._M_allocated_capacity, value.D.29392._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, value.D.29392._M_allocated_capacity,
	bl	_ZdlPvm		//
.L201:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 56]	// _394, argument._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	// _394, tmp631
	bne	.L118		//,
	b	.L203		//
.L339:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldrh	w3, [x1, 8]	// MEM <char[1:10]> [(void *)_633], MEM <char[1:10]> [(void *)_633]
	mov	w2, 30575	// tmp403,
	cmp	w3, w2	// MEM <char[1:10]> [(void *)_633], tmp403
	bne	.L167		//,
// opciones.cpp:148:             options.fire_row = parse_integer(value, argument);
	ldr	x1, [sp]	//, %sfp
	ldr	x0, [sp, 16]	//, %sfp
	bl	_ZN12_GLOBAL__N_113parse_integerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_		//
// opciones.cpp:149:             options.fire_set = true;
	mov	w1, 1	// tmp406,
// opciones.cpp:148:             options.fire_row = parse_integer(value, argument);
	str	x0, [x22, 80]	// tmp659, options_24(D)->fire_row
// opciones.cpp:149:             options.fire_set = true;
	strb	w1, [x22, 96]	// tmp406, options_24(D)->fire_set
	b	.L146		//
.L194:
// opciones.cpp:66: }
	sub	x0, x21, #32	// ivtmp.185, ivtmp.185,
	cmp	x19, x21	// tmp638, ivtmp.185
	beq	.L146		//,
// opciones.cpp:57:     for (int i = 0; i < 8; ++i) {
	mov	x21, x0	// ivtmp.185, ivtmp.185
	b	.L191		//
.L338:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldrh	w3, [x1, 8]	// MEM <char[1:10]> [(void *)_633], MEM <char[1:10]> [(void *)_633]
	mov	w2, 25970	// tmp387,
	cmp	w3, w2	// MEM <char[1:10]> [(void *)_633], tmp387
	bne	.L161		//,
// opciones.cpp:144:             options.moisture = parse_decimal(value, argument);
	ldr	x1, [sp]	//, %sfp
	ldr	x0, [sp, 16]	//, %sfp
	bl	_ZN12_GLOBAL__N_113parse_decimalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_		//
// opciones.cpp:144:             options.moisture = parse_decimal(value, argument);
	str	s0, [x22, 28]	// tmp657, options_24(D)->moisture
	b	.L146		//
.L337:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldrh	w1, [x1, 4]	// MEM <char[1:6]> [(void *)_460], MEM <char[1:6]> [(void *)_460]
	mov	w0, 25710	// tmp395,
	cmp	w1, w0	// MEM <char[1:6]> [(void *)_460], tmp395
	bne	.L166		//,
// opciones.cpp:146:             options.wind = parse_decimal(value, argument);
	ldr	x1, [sp]	//, %sfp
	ldr	x0, [sp, 16]	//, %sfp
	bl	_ZN12_GLOBAL__N_113parse_decimalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_		//
// opciones.cpp:146:             options.wind = parse_decimal(value, argument);
	str	s0, [x22, 32]	// tmp658, options_24(D)->wind
	b	.L146		//
.L341:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldr	x0, [sp, 88]	// value._M_dataplus._M_p, value._M_dataplus._M_p
	ldrb	w0, [x0]	// _350, MEM[(const unsigned char * {ref-all})_499]
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	cmp	w0, 78	// _350,
	beq	.L180		//,
	cmp	w0, 69	// _350,
	bne	.L344		//,
// opciones.cpp:57:     for (int i = 0; i < 8; ++i) {
	mov	w19, w1	// i, tmp448
	b	.L180		//
.L342:
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	ldrh	w1, [sp, 296]	// MEM <unsigned short> [(char * {ref-all})_307], MEM <unsigned short> [(char * {ref-all})_307]
	cmp	w0, w1	// MEM <unsigned short> [(char * {ref-all})_328], MEM <unsigned short> [(char * {ref-all})_307]
	bne	.L345		//,
// opciones.cpp:57:     for (int i = 0; i < 8; ++i) {
	mov	w19, 3	// i,
	b	.L180		//
.L340:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldrh	w3, [x1, 8]	// MEM <char[1:10]> [(void *)_633], MEM <char[1:10]> [(void *)_633]
	mov	w2, 27759	// tmp412,
	cmp	w3, w2	// MEM <char[1:10]> [(void *)_633], tmp412
	bne	.L170		//,
// opciones.cpp:151:             options.fire_col = parse_integer(value, argument);
	ldr	x1, [sp]	//, %sfp
	ldr	x0, [sp, 16]	//, %sfp
	bl	_ZN12_GLOBAL__N_113parse_integerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_		//
.LEHE27:
// opciones.cpp:152:             options.fire_set = true;
	mov	w1, 1	// tmp415,
// opciones.cpp:151:             options.fire_col = parse_integer(value, argument);
	str	x0, [x22, 88]	// tmp660, options_24(D)->fire_col
// opciones.cpp:152:             options.fire_set = true;
	strb	w1, [x22, 96]	// tmp415, options_24(D)->fire_set
	b	.L146		//
.L344:
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	cmp	w0, 83	// _350,
	bne	.L346		//,
// opciones.cpp:57:     for (int i = 0; i < 8; ++i) {
	mov	w19, 4	// i,
	b	.L180		//
.L345:
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	ldrh	w1, [sp, 360]	// MEM <unsigned short> [(char * {ref-all})_307], MEM <unsigned short> [(char * {ref-all})_307]
	cmp	w0, w1	// MEM <unsigned short> [(char * {ref-all})_328], MEM <unsigned short> [(char * {ref-all})_307]
	bne	.L347		//,
// opciones.cpp:57:     for (int i = 0; i < 8; ++i) {
	mov	w19, 5	// i,
	b	.L180		//
.L346:
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	cmp	w0, 87	// _350,
	beq	.L247		//,
.L182:
// opciones.cpp:65:     throw std::invalid_argument("Dirección de viento: N, NE, E, SE, S, SW, W o NW");
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// opciones.cpp:65:     throw std::invalid_argument("Dirección de viento: N, NE, E, SE, S, SW, W o NW");
	adrp	x1, .LC33	// tmp515,
// opciones.cpp:65:     throw std::invalid_argument("Dirección de viento: N, NE, E, SE, S, SW, W o NW");
	mov	x20, x0	// _272, tmp664
// opciones.cpp:65:     throw std::invalid_argument("Dirección de viento: N, NE, E, SE, S, SW, W o NW");
	add	x1, x1, :lo12:.LC33	//, tmp515,
.LEHB28:
	bl	_ZNSt16invalid_argumentC1EPKc		//
.LEHE28:
// opciones.cpp:65:     throw std::invalid_argument("Dirección de viento: N, NE, E, SE, S, SW, W o NW");
	adrp	x0, :got:__stack_chk_guard	// tmp516,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp516,
	ldr	x2, [sp, 440]	// tmp698, D.74683
	ldr	x1, [x0]	// tmp699,
	subs	x2, x2, x1	// tmp698, tmp699
	mov	x1, 0	// tmp699
	bne	.L316		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x20	//, _272
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB29:
	bl	__cxa_throw		//
.LEHE29:
	.p2align 2,,3
.L347:
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	ldrh	w1, [sp, 424]	// MEM <unsigned short> [(char * {ref-all})_307], MEM <unsigned short> [(char * {ref-all})_307]
	cmp	w1, w0	// MEM <unsigned short> [(char * {ref-all})_307], MEM <unsigned short> [(char * {ref-all})_328]
	bne	.L182		//,
// opciones.cpp:57:     for (int i = 0; i < 8; ++i) {
	mov	w19, 7	// i,
	b	.L180		//
.L318:
// /usr/include/c++/13/bits/basic_string.h:646: 	  std::__throw_logic_error(__N("basic_string: "
	adrp	x0, :got:__stack_chk_guard	// tmp239,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp239,
	ldr	x2, [sp, 440]	// tmp688, D.74683
	ldr	x1, [x0]	// tmp689,
	subs	x2, x2, x1	// tmp688, tmp689
	mov	x1, 0	// tmp689
	bne	.L316		//,
	adrp	x0, .LC7	// tmp241,
	add	x0, x0, :lo12:.LC7	//, tmp241,
.LEHB30:
	bl	_ZSt19__throw_logic_errorPKc		//
.LEHE30:
.L247:
// opciones.cpp:57:     for (int i = 0; i < 8; ++i) {
	mov	w19, 6	// i,
	b	.L180		//
.L326:
// /usr/include/c++/13/bits/basic_string.h:646: 	  std::__throw_logic_error(__N("basic_string: "
	adrp	x0, :got:__stack_chk_guard	// tmp329,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp329,
	ldr	x2, [sp, 440]	// tmp692, D.74683
	ldr	x1, [x0]	// tmp693,
	subs	x2, x2, x1	// tmp692, tmp693
	mov	x1, 0	// tmp693
	bne	.L316		//,
	adrp	x0, .LC7	// tmp331,
	add	x0, x0, :lo12:.LC7	//, tmp331,
.LEHB31:
	bl	_ZSt19__throw_logic_errorPKc		//
.LEHE31:
.L325:
// opciones.cpp:127:             throw std::invalid_argument("Falta valor para " + argument);
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// opciones.cpp:127:             throw std::invalid_argument("Falta valor para " + argument);
	ldp	x1, x2, [sp, 56]	//,, MEM[(char * *)&argument]
	add	x19, sp, 184	// tmp638,,
// opciones.cpp:127:             throw std::invalid_argument("Falta valor para " + argument);
	mov	x20, x0	// _119, tmp649
// opciones.cpp:127:             throw std::invalid_argument("Falta valor para " + argument);
	mov	x8, x19	//, tmp638
	adrp	x0, .LC20	// tmp319,
	add	x0, x0, :lo12:.LC20	//, tmp319,
.LEHB32:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.isra.0		//
.LEHE32:
// opciones.cpp:127:             throw std::invalid_argument("Falta valor para " + argument);
	mov	x1, x19	//, tmp638
	mov	x0, x20	//, _119
.LEHB33:
	bl	_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE		//
.LEHE33:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x0, x19	//, tmp638
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
// opciones.cpp:127:             throw std::invalid_argument("Falta valor para " + argument);
	adrp	x0, :got:__stack_chk_guard	// tmp323,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp323,
	ldr	x2, [sp, 440]	// tmp690, D.74683
	ldr	x1, [x0]	// tmp691,
	subs	x2, x2, x1	// tmp690, tmp691
	mov	x1, 0	// tmp691
	beq	.L134		//,
.L316:
// opciones.cpp:167: }
	bl	__stack_chk_fail		//
.L254:
// opciones.cpp:162:             throw std::invalid_argument("Opción desconocida: " + argument);
	mov	x19, x0	// tmp618, tmp683
	b	.L237		//
.L333:
// opciones.cpp:156:                 throw std::invalid_argument("--delay debe estar en [0,60000]");
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// opciones.cpp:156:                 throw std::invalid_argument("--delay debe estar en [0,60000]");
	adrp	x1, .LC31	// tmp428,
// opciones.cpp:156:                 throw std::invalid_argument("--delay debe estar en [0,60000]");
	mov	x20, x0	// _80, tmp662
// opciones.cpp:156:                 throw std::invalid_argument("--delay debe estar en [0,60000]");
	add	x1, x1, :lo12:.LC31	//, tmp428,
.LEHB34:
	bl	_ZNSt16invalid_argumentC1EPKc		//
.LEHE34:
// opciones.cpp:156:                 throw std::invalid_argument("--delay debe estar en [0,60000]");
	adrp	x0, :got:__stack_chk_guard	// tmp429,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp429,
	ldr	x2, [sp, 440]	// tmp696, D.74683
	ldr	x1, [x0]	// tmp697,
	subs	x2, x2, x1	// tmp696, tmp697
	mov	x1, 0	// tmp697
	bne	.L316		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x20	//, _80
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB35:
	bl	__cxa_throw		//
.LEHE35:
.L206:
// opciones.cpp:73:         throw std::invalid_argument("Filas, columnas e iteraciones deben ser positivas");
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// opciones.cpp:73:         throw std::invalid_argument("Filas, columnas e iteraciones deben ser positivas");
	adrp	x1, .LC36	// tmp563,
// opciones.cpp:73:         throw std::invalid_argument("Filas, columnas e iteraciones deben ser positivas");
	mov	x20, x0	// _421, tmp669
// opciones.cpp:73:         throw std::invalid_argument("Filas, columnas e iteraciones deben ser positivas");
	add	x1, x1, :lo12:.LC36	//, tmp563,
.LEHB36:
	bl	_ZNSt16invalid_argumentC1EPKc		//
.LEHE36:
// opciones.cpp:73:         throw std::invalid_argument("Filas, columnas e iteraciones deben ser positivas");
	adrp	x0, :got:__stack_chk_guard	// tmp564,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp564,
	ldr	x2, [sp, 440]	// tmp704, D.74683
	ldr	x1, [x0]	// tmp705,
	subs	x2, x2, x1	// tmp704, tmp705
	mov	x1, 0	// tmp705
	bne	.L316		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x20	//, _421
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB37:
	bl	__cxa_throw		//
.LEHE37:
.L213:
// opciones.cpp:79:         throw std::invalid_argument("Dimensiones demasiado grandes");
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// opciones.cpp:79:         throw std::invalid_argument("Dimensiones demasiado grandes");
	adrp	x1, .LC37	// tmp573,
// opciones.cpp:79:         throw std::invalid_argument("Dimensiones demasiado grandes");
	mov	x20, x0	// _425, tmp670
// opciones.cpp:79:         throw std::invalid_argument("Dimensiones demasiado grandes");
	add	x1, x1, :lo12:.LC37	//, tmp573,
.LEHB38:
	bl	_ZNSt16invalid_argumentC1EPKc		//
.LEHE38:
// opciones.cpp:79:         throw std::invalid_argument("Dimensiones demasiado grandes");
	adrp	x0, :got:__stack_chk_guard	// tmp574,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp574,
	ldr	x2, [sp, 440]	// tmp706, D.74683
	ldr	x1, [x0]	// tmp707,
	subs	x2, x2, x1	// tmp706, tmp707
	mov	x1, 0	// tmp707
	bne	.L316		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x20	//, _425
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB39:
	bl	__cxa_throw		//
.LEHE39:
.L261:
.L314:
// opciones.cpp:82:         throw std::invalid_argument("Humedad y viento deben estar en [0,1]");
	mov	x19, x0	// tmp676,
	mov	x0, x20	//, _428
	bl	__cxa_free_exception		//
.L226:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	ldr	x0, [sp, 24]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	adrp	x0, :got:__stack_chk_guard	// tmp625,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp625,
	ldr	x2, [sp, 440]	// tmp712, D.74683
	ldr	x1, [x0]	// tmp713,
	subs	x2, x2, x1	// tmp712, tmp713
	mov	x1, 0	// tmp713
	bne	.L316		//,
	mov	x0, x19	//, tmp593
.LEHB40:
	bl	_Unwind_Resume		//
.LEHE40:
.L260:
	b	.L314		//
.L216:
// opciones.cpp:82:         throw std::invalid_argument("Humedad y viento deben estar en [0,1]");
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// opciones.cpp:82:         throw std::invalid_argument("Humedad y viento deben estar en [0,1]");
	adrp	x1, .LC38	// tmp581,
// opciones.cpp:82:         throw std::invalid_argument("Humedad y viento deben estar en [0,1]");
	mov	x20, x0	// _428, tmp671
// opciones.cpp:82:         throw std::invalid_argument("Humedad y viento deben estar en [0,1]");
	add	x1, x1, :lo12:.LC38	//, tmp581,
.LEHB41:
	bl	_ZNSt16invalid_argumentC1EPKc		//
.LEHE41:
// opciones.cpp:82:         throw std::invalid_argument("Humedad y viento deben estar en [0,1]");
	adrp	x0, :got:__stack_chk_guard	// tmp582,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp582,
	ldr	x2, [sp, 440]	// tmp708, D.74683
	ldr	x1, [x0]	// tmp709,
	subs	x2, x2, x1	// tmp708, tmp709
	mov	x1, 0	// tmp709
	bne	.L316		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x20	//, _428
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB42:
	bl	__cxa_throw		//
.LEHE42:
.L343:
// opciones.cpp:140:                 throw std::invalid_argument("Semilla fuera de rango");
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// opciones.cpp:140:                 throw std::invalid_argument("Semilla fuera de rango");
	adrp	x1, .LC25	// tmp377,
// opciones.cpp:140:                 throw std::invalid_argument("Semilla fuera de rango");
	mov	x20, x0	// _102, tmp656
// opciones.cpp:140:                 throw std::invalid_argument("Semilla fuera de rango");
	add	x1, x1, :lo12:.LC25	//, tmp377,
.LEHB43:
	bl	_ZNSt16invalid_argumentC1EPKc		//
.LEHE43:
// opciones.cpp:140:                 throw std::invalid_argument("Semilla fuera de rango");
	adrp	x0, :got:__stack_chk_guard	// tmp378,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp378,
	ldr	x2, [sp, 440]	// tmp694, D.74683
	ldr	x1, [x0]	// tmp695,
	subs	x2, x2, x1	// tmp694, tmp695
	mov	x1, 0	// tmp695
	bne	.L316		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x20	//, _102
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB44:
	bl	__cxa_throw		//
.LEHE44:
.L251:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x19, x0	// tmp529, tmp684
.L199:
	ldr	x0, [sp, 16]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L233:
	ldr	x0, [sp]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	b	.L226		//
.L252:
// opciones.cpp:162:             throw std::invalid_argument("Opción desconocida: " + argument);
	mov	x19, x0	// tmp618, tmp683
	b	.L237		//
.L222:
// opciones.cpp:92:         throw std::invalid_argument("Foco fuera del terreno (coordenadas desde 0)");
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// opciones.cpp:92:         throw std::invalid_argument("Foco fuera del terreno (coordenadas desde 0)");
	adrp	x1, .LC39	// tmp589,
// opciones.cpp:92:         throw std::invalid_argument("Foco fuera del terreno (coordenadas desde 0)");
	mov	x20, x0	// _435, tmp672
// opciones.cpp:92:         throw std::invalid_argument("Foco fuera del terreno (coordenadas desde 0)");
	add	x1, x1, :lo12:.LC39	//, tmp589,
.LEHB45:
	bl	_ZNSt16invalid_argumentC1EPKc		//
.LEHE45:
// opciones.cpp:92:         throw std::invalid_argument("Foco fuera del terreno (coordenadas desde 0)");
	adrp	x0, :got:__stack_chk_guard	// tmp590,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp590,
	ldr	x2, [sp, 440]	// tmp710, D.74683
	ldr	x1, [x0]	// tmp711,
	subs	x2, x2, x1	// tmp710, tmp711
	mov	x1, 0	// tmp711
	bne	.L316		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x20	//, _435
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB46:
	bl	__cxa_throw		//
.LEHE46:
.L322:
// opciones.cpp:70:         throw std::invalid_argument("--profile no se combina con --visual");
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// opciones.cpp:70:         throw std::invalid_argument("--profile no se combina con --visual");
	adrp	x1, .LC35	// tmp556,
// opciones.cpp:70:         throw std::invalid_argument("--profile no se combina con --visual");
	mov	x20, x0	// _417, tmp668
// opciones.cpp:70:         throw std::invalid_argument("--profile no se combina con --visual");
	add	x1, x1, :lo12:.LC35	//, tmp556,
.LEHB47:
	bl	_ZNSt16invalid_argumentC1EPKc		//
.LEHE47:
// opciones.cpp:70:         throw std::invalid_argument("--profile no se combina con --visual");
	adrp	x0, :got:__stack_chk_guard	// tmp557,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp557,
	ldr	x2, [sp, 440]	// tmp702, D.74683
	ldr	x1, [x0]	// tmp703,
	subs	x2, x2, x1	// tmp702, tmp703
	mov	x1, 0	// tmp703
	bne	.L316		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x20	//, _417
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB48:
	bl	__cxa_throw		//
.LEHE48:
.L258:
	b	.L314		//
.L255:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x1, x0	// tmp682,
	mov	x0, x19	//, tmp638
	mov	x19, x1	// tmp619, tmp682
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L237:
// opciones.cpp:162:             throw std::invalid_argument("Opción desconocida: " + argument);
	mov	x0, x20	//, _68
	bl	__cxa_free_exception		//
	b	.L199		//
.L253:
	mov	x19, x0	// tmp618, tmp683
	b	.L237		//
.L257:
// opciones.cpp:65:     throw std::invalid_argument("Dirección de viento: N, NE, E, SE, S, SW, W o NW");
	mov	x19, x0	// tmp666,
	mov	x0, x20	//, _272
	mov	x20, x19	// tmp522, tmp523
	add	x19, sp, 184	// tmp638,,
	mov	x21, 7	// ivtmp.180,
	bl	__cxa_free_exception		//
.L198:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	add	x0, x19, x21, lsl 5	//, tmp638, ivtmp.180,
// opciones.cpp:66: }
	sub	x21, x21, #1	// ivtmp.180, ivtmp.180,
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
// opciones.cpp:66: }
	cmn	x21, #1	// ivtmp.180,
	bne	.L198		//,
	mov	x19, x20	// tmp529, tmp522
	b	.L199		//
.L264:
.L312:
// opciones.cpp:53:     const std::string directions[] = {"N", "NE", "E", "SE", "S", "SW", "W", "NW"};
	mov	x20, x0	// tmp522, tmp665
	add	x19, sp, 184	// tmp638,,
	mov	x21, 7	// ivtmp.180,
	b	.L198		//
.L259:
	b	.L314		//
.L256:
// opciones.h:9: struct Options {
	mov	x19, x0	// tmp593, tmp686
	b	.L226		//
.L248:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x19, x0	// tmp611, tmp685
	b	.L233		//
.L134:
// opciones.cpp:127:             throw std::invalid_argument("Falta valor para " + argument);
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x20	//, _119
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB49:
	bl	__cxa_throw		//
.LEHE49:
.L250:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x1, x0	// tmp678,
	mov	x0, x19	//, tmp638
	mov	x19, x1	// tmp608, tmp678
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L232:
// opciones.cpp:127:             throw std::invalid_argument("Falta valor para " + argument);
	mov	x0, x20	//, _119
	bl	__cxa_free_exception		//
	b	.L233		//
.L249:
	mov	x19, x0	// tmp607, tmp679
	b	.L232		//
.L263:
	b	.L312		//
.L262:
	b	.L314		//
	.cfi_endproc
.LFE2999:
	.section	.gcc_except_table
.LLSDA2999:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2999-.LLSDACSB2999
.LLSDACSB2999:
	.uleb128 .LEHB18-.LFB2999
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L251-.LFB2999
	.uleb128 0
	.uleb128 .LEHB19-.LFB2999
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L248-.LFB2999
	.uleb128 0
	.uleb128 .LEHB20-.LFB2999
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L256-.LFB2999
	.uleb128 0
	.uleb128 .LEHB21-.LFB2999
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L254-.LFB2999
	.uleb128 0
	.uleb128 .LEHB22-.LFB2999
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L255-.LFB2999
	.uleb128 0
	.uleb128 .LEHB23-.LFB2999
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L251-.LFB2999
	.uleb128 0
	.uleb128 .LEHB24-.LFB2999
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L248-.LFB2999
	.uleb128 0
	.uleb128 .LEHB25-.LFB2999
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L251-.LFB2999
	.uleb128 0
	.uleb128 .LEHB26-.LFB2999
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L263-.LFB2999
	.uleb128 0
	.uleb128 .LEHB27-.LFB2999
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L251-.LFB2999
	.uleb128 0
	.uleb128 .LEHB28-.LFB2999
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L257-.LFB2999
	.uleb128 0
	.uleb128 .LEHB29-.LFB2999
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L264-.LFB2999
	.uleb128 0
	.uleb128 .LEHB30-.LFB2999
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L256-.LFB2999
	.uleb128 0
	.uleb128 .LEHB31-.LFB2999
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L248-.LFB2999
	.uleb128 0
	.uleb128 .LEHB32-.LFB2999
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L249-.LFB2999
	.uleb128 0
	.uleb128 .LEHB33-.LFB2999
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L250-.LFB2999
	.uleb128 0
	.uleb128 .LEHB34-.LFB2999
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L253-.LFB2999
	.uleb128 0
	.uleb128 .LEHB35-.LFB2999
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L251-.LFB2999
	.uleb128 0
	.uleb128 .LEHB36-.LFB2999
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L261-.LFB2999
	.uleb128 0
	.uleb128 .LEHB37-.LFB2999
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L256-.LFB2999
	.uleb128 0
	.uleb128 .LEHB38-.LFB2999
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L260-.LFB2999
	.uleb128 0
	.uleb128 .LEHB39-.LFB2999
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L256-.LFB2999
	.uleb128 0
	.uleb128 .LEHB40-.LFB2999
	.uleb128 .LEHE40-.LEHB40
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB41-.LFB2999
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L259-.LFB2999
	.uleb128 0
	.uleb128 .LEHB42-.LFB2999
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L256-.LFB2999
	.uleb128 0
	.uleb128 .LEHB43-.LFB2999
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L252-.LFB2999
	.uleb128 0
	.uleb128 .LEHB44-.LFB2999
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L251-.LFB2999
	.uleb128 0
	.uleb128 .LEHB45-.LFB2999
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L258-.LFB2999
	.uleb128 0
	.uleb128 .LEHB46-.LFB2999
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L256-.LFB2999
	.uleb128 0
	.uleb128 .LEHB47-.LFB2999
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L262-.LFB2999
	.uleb128 0
	.uleb128 .LEHB48-.LFB2999
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L256-.LFB2999
	.uleb128 0
	.uleb128 .LEHB49-.LFB2999
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L248-.LFB2999
	.uleb128 0
.LLSDACSE2999:
	.text
	.size	_Z13parse_optionsiPPc, .-_Z13parse_optionsiPPc
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
.LC40:
	.word	1049582633
	.word	1058642330
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC41:
	.xword	30
	.xword	60
	.section	.rodata.cst8
	.align	3
.LC42:
	.word	1
	.word	0
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
.LC0:
	.word	0
	.word	1
	.word	1
	.word	1
	.word	0
	.word	-1
	.word	-1
	.word	-1
.LC1:
	.word	-1
	.word	-1
	.word	0
	.word	1
	.word	1
	.word	1
	.word	0
	.word	-1
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
