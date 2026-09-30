	.arch armv8-a
	.file	"main.cpp"
// GNU C++17 (Ubuntu 13.3.0-6ubuntu2~24.04.1) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -O3 -std=c++17 -fopt-info-vec-optimized-missed=/resultados/vectorizacion.txt -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.align	2
	.p2align 4,,11
	.global	_Z9on_signali
	.type	_Z9on_signali, %function
_Z9on_signali:
.LFB4463:
	.cfi_startproc
// main.cpp:36: void on_signal(int) { interrupted=1; }
	adrp	x0, .LANCHOR0	// tmp94,
	mov	w1, 1	// tmp95,
	str	w1, [x0, #:lo12:.LANCHOR0]	// tmp95, interrupted
// main.cpp:36: void on_signal(int) { interrupted=1; }
	ret	
	.cfi_endproc
.LFE4463:
	.size	_Z9on_signali, .-_Z9on_signali
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC20:
	.string	"basic_string: construction from null is not valid"
	.text
	.align	2
	.p2align 4,,11
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0:
.LFB5636:
	.cfi_startproc
	sub	sp, sp, #64	//,,
	.cfi_def_cfa_offset 64
	adrp	x2, :got:__stack_chk_guard	// tmp99,
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]	// tmp99,
	stp	x29, x30, [sp, 16]	//,,
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 16	//,,
	stp	x19, x20, [sp, 32]	//,,
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x20, x0	// this, tmp112
	stp	x21, x22, [sp, 48]	//,,
	.cfi_offset 21, -16
	.cfi_offset 22, -8
// /usr/include/c++/13/bits/basic_string.h:230: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x22, x0, 16	// _2, this,
// /usr/include/c++/13/bits/basic_string.h:641:       basic_string(const _CharT* __s, const _Alloc& __a = _Alloc())
	ldr	x0, [x2]	// tmp116,
	str	x0, [sp, 8]	// tmp116, D.119403
	mov	x0, 0	// tmp116
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x22, [x20]	// _2, MEM[(struct _Alloc_hider *)this_1(D)]._M_p
// /usr/include/c++/13/bits/basic_string.h:645: 	if (__s == 0)
	cbz	x1, .L16	// __s,
	mov	x21, x1	// __s, tmp113
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x0, x1	//, __s
	bl	strlen		//
// /usr/include/c++/13/bits/basic_string.tcc:225: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	str	x0, [sp]	// _4, __dnew
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x19, x0	// _4, tmp114
// /usr/include/c++/13/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	x0, 15	// _4,
	bhi	.L17		//,
// /usr/include/c++/13/bits/basic_string.h:427: 	if (__n == 1)
	cmp	x0, 1	// _4,
	bne	.L8		//,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	ldrb	w0, [x21]	//, MEM[(const char_type &)__s_3(D)]
	strb	w0, [x20, 16]	// MEM[(const char_type &)__s_3(D)], MEM[(char_type &)this_1(D) + 16]
.L9:
// /usr/include/c++/13/bits/basic_string.h:650:       }
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp111,
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x19, [x20, 8]	// _4, *this_1(D)._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x22, x19]	//, MEM[(char_type &)_20]
// /usr/include/c++/13/bits/basic_string.h:650:       }
	ldr	x2, [sp, 8]	// tmp119, D.119403
	ldr	x1, [x0]	// tmp120,
	subs	x2, x2, x1	// tmp119, tmp120
	mov	x1, 0	// tmp120
	bne	.L15		//,
	ldp	x29, x30, [sp, 16]	//,,
	ldp	x19, x20, [sp, 32]	//,,
	ldp	x21, x22, [sp, 48]	//,,
	add	sp, sp, 64	//,,
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret	
	.p2align 2,,3
.L8:
	.cfi_restore_state
// /usr/include/c++/13/bits/char_traits.h:429: 	if (__n == 0)
	cbz	x0, .L9	// _4,
	b	.L7		//
	.p2align 2,,3
.L17:
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	mov	x1, sp	//,
	mov	x0, x20	//, this
	mov	x2, 0	//,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm		//
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [sp]	// __dnew, __dnew
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	mov	x22, x0	// _2, tmp115
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [x20]	// _2, *this_1(D)._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [x20, 16]	// __dnew, *this_1(D).D.50133._M_allocated_capacity
.L7:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x19	//, _4
	mov	x0, x22	//, _2
	mov	x1, x21	//, __s
	bl	memcpy		//
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x22, [x20]	// _2, MEM[(const struct basic_string *)this_1(D)]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.tcc:251: 	_M_set_length(__dnew);
	ldr	x19, [sp]	// _4, __dnew
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	b	.L9		//
.L15:
// /usr/include/c++/13/bits/basic_string.h:650:       }
	bl	__stack_chk_fail		//
.L16:
// /usr/include/c++/13/bits/basic_string.h:646: 	  std::__throw_logic_error(__N("basic_string: "
	adrp	x0, :got:__stack_chk_guard	// tmp100,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp100,
	ldr	x2, [sp, 8]	// tmp117, D.119403
	ldr	x1, [x0]	// tmp118,
	subs	x2, x2, x1	// tmp117, tmp118
	mov	x1, 0	// tmp118
	bne	.L15		//,
	adrp	x0, .LC20	// tmp102,
	add	x0, x0, :lo12:.LC20	//, tmp102,
	bl	_ZSt19__throw_logic_errorPKc		//
	.cfi_endproc
.LFE5636:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0
	.section	.rodata.str1.8
	.align	3
.LC21:
	.string	"basic_string::append"
	.section	.text.unlikely,"ax",@progbits
	.align	2
	.type	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.isra.0, %function
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.isra.0:
.LFB5639:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5639
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	stp	x19, x20, [sp, 16]	//,,
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x19, x8	// <retval>, tmp119
	mov	x20, x2	// ISRA.779, tmp122
	stp	x21, x22, [sp, 32]	//,,
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x22, x1	// ISRA.778, tmp121
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
	add	x1, x21, x20	//, _3, ISRA.779
	mov	x0, x19	//, <retval>
.LEHB0:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm		//
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [x19, 8]	// MEM[(const struct basic_string *)_1(D)]._M_string_length, MEM[(const struct basic_string *)_1(D)]._M_string_length
	mov	x0, 4611686018427387903	// tmp108,
	sub	x0, x0, x1	// tmp107, tmp108, MEM[(const struct basic_string *)_1(D)]._M_string_length
	cmp	x21, x0	// _3, tmp107
	bls	.L19		//,
// /usr/include/c++/13/bits/basic_string.h:400: 	  __throw_length_error(__N(__s));
	adrp	x0, .LC21	// tmp111,
	add	x0, x0, :lo12:.LC21	//, tmp111,
	bl	_ZSt20__throw_length_errorPKc		//
.L19:
// /usr/include/c++/13/bits/basic_string.h:1459: 	return _M_append(__s, __n);
	mov	x2, x21	//, _3
	mov	x1, x23	//, __lhs
	mov	x0, x19	//, <retval>
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [x19, 8]	// MEM[(const struct basic_string *)_1(D)]._M_string_length, MEM[(const struct basic_string *)_1(D)]._M_string_length
	mov	x0, 4611686018427387903	// tmp113,
	sub	x0, x0, x1	// tmp112, tmp113, MEM[(const struct basic_string *)_1(D)]._M_string_length
	cmp	x20, x0	// ISRA.779, tmp112
	bls	.L20		//,
// /usr/include/c++/13/bits/basic_string.h:400: 	  __throw_length_error(__N(__s));
	adrp	x0, .LC21	// tmp116,
	add	x0, x0, :lo12:.LC21	//, tmp116,
	bl	_ZSt20__throw_length_errorPKc		//
.L20:
// /usr/include/c++/13/bits/basic_string.h:1459: 	return _M_append(__s, __n);
	mov	x2, x20	//, ISRA.779
	mov	x1, x22	//, ISRA.778
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
.L23:
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
.LFE5639:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA5639:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5639-.LLSDACSB5639
.LLSDACSB5639:
	.uleb128 .LEHB0-.LFB5639
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L23-.LFB5639
	.uleb128 0
	.uleb128 .LEHB1-.LFB5639
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE5639:
	.section	.text.unlikely
	.size	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.isra.0, .-_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.isra.0
	.section	.rodata.str1.8
	.align	3
.LC22:
	.string	"%f"
	.text
	.align	2
	.p2align 4,,11
	.type	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_St9__va_listEmSB_z.constprop.0, %function
_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_St9__va_listEmSB_z.constprop.0:
.LFB5642:
	.cfi_startproc
	stp	x29, x30, [sp, -224]!	//,,,
	.cfi_def_cfa_offset 224
	.cfi_offset 29, -224
	.cfi_offset 30, -216
// /usr/include/c++/13/ext/string_conversions.h:107:       _CharT* __s = static_cast<_CharT*>(__builtin_alloca(sizeof(_CharT)
	add	x0, x1, 15	// tmp104, __n,
	and	x9, x0, -65536	// tmp108, tmp104,
// /usr/include/c++/13/ext/string_conversions.h:101:     __to_xstring(int (*__convf) (_CharT*, std::size_t, const _CharT*,
	mov	x29, sp	//,
	.cfi_def_cfa_register 29
	stp	x19, x20, [sp, 16]	//,,
// /usr/include/c++/13/ext/string_conversions.h:107:       _CharT* __s = static_cast<_CharT*>(__builtin_alloca(sizeof(_CharT)
	and	x0, x0, -16	// tmp106, tmp104,
	.cfi_offset 19, -208
	.cfi_offset 20, -200
// /usr/include/c++/13/ext/string_conversions.h:101:     __to_xstring(int (*__convf) (_CharT*, std::size_t, const _CharT*,
	mov	x19, x8	// <retval>, tmp139
	stp	x21, x22, [sp, 32]	//,,
	sub	sp, sp, #128	//,,
// /usr/include/c++/13/ext/string_conversions.h:107:       _CharT* __s = static_cast<_CharT*>(__builtin_alloca(sizeof(_CharT)
	sub	x9, sp, x9	// tmp109,, tmp108
// /usr/include/c++/13/ext/string_conversions.h:101:     __to_xstring(int (*__convf) (_CharT*, std::size_t, const _CharT*,
	.cfi_offset 21, -192
	.cfi_offset 22, -184
// /usr/include/c++/13/ext/string_conversions.h:101:     __to_xstring(int (*__convf) (_CharT*, std::size_t, const _CharT*,
	adrp	x2, :got:__stack_chk_guard	// tmp103,
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]	// tmp103,
	str	q0, [x29, 48]	//,
	str	q1, [x29, 64]	//,
	str	q2, [x29, 80]	//,
	str	q3, [x29, 96]	//,
	str	q4, [x29, 112]	//,
	str	q5, [x29, 128]	//,
	str	q6, [x29, 144]	//,
	str	q7, [x29, 160]	//,
	stp	x3, x4, [x29, 184]	//,,
	stp	x5, x6, [x29, 200]	//,,
	str	x7, [x29, 216]	//,
	ldr	x3, [x2]	// tmp143,
	str	x3, [x29, -8]	// tmp143, D.119505
	mov	x3, 0	// tmp143
// /usr/include/c++/13/ext/string_conversions.h:107:       _CharT* __s = static_cast<_CharT*>(__builtin_alloca(sizeof(_CharT)
	cmp	sp, x9	//, tmp109
	beq	.L28		//,
.L39:
	sub	sp, sp, #65536	//,,
	str	xzr, [sp, 1024]	//,
	cmp	sp, x9	//, tmp109
	bne	.L39		//,
.L28:
	and	x0, x0, 65535	// tmp110, tmp106,
	sub	sp, sp, x0	//,, tmp110
	str	xzr, [sp]	//,
	cmp	x0, 1024	// tmp110,
	bcs	.L40		//,
.L29:
// /usr/include/c++/13/ext/string_conversions.h:111:       __builtin_va_start(__args, __fmt);
	mov	w2, -40	// tmp117,
	mov	w0, -128	// tmp118,
	stp	w2, w0, [x29, -48]	// tmp117, tmp118, __args.__gr_offs
	sub	x2, x29, #72	// tmp153,,
	add	x3, x29, 176	// tmp116,,
	add	x4, x29, 224	// tmp151,,
	stp	x4, x4, [x29, -72]	// tmp151, tmp152, __args.__stack
	sub	x22, x29, #40	// tmp119,,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:68:   return __builtin___vsnprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	sub	x5, x29, #112	// tmp123,,
// /usr/include/c++/13/ext/string_conversions.h:111:       __builtin_va_start(__args, __fmt);
	str	x3, [x29, -56]	// tmp116, __args.__vr_top
// /usr/include/c++/13/ext/string_conversions.h:107:       _CharT* __s = static_cast<_CharT*>(__builtin_alloca(sizeof(_CharT)
	add	x21, sp, 16	// __s,,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:68:   return __builtin___vsnprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	mov	x0, x21	//, __s
	mov	x3, x1	//, __n
	ldp	q0, q1, [x2]	// __args, __args, __args
	adrp	x4, .LC22	// tmp129,
	mov	w2, 2	//,
	add	x4, x4, :lo12:.LC22	//, tmp129,
	stp	q0, q1, [x22]	// __args, __args, MEM[(struct  *)_21]
	stp	q0, q1, [x5]	// __args, __args,
	bl	__vsnprintf_chk		//
	sxtw	x20, w0	//,
// /usr/include/c++/13/bits/basic_string.h:230: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x0, x19, 16	// _7, <retval>,
// /usr/include/c++/13/bits/basic_string.tcc:225: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	str	x20, [x29, -40]	// _5, MEM[(long unsigned int *)_21]
// /usr/include/c++/13/bits/basic_string.h:762: 	: _M_dataplus(_M_local_data(), __a), _M_string_length(0)
	stp	x0, xzr, [x19]	// _7,, MEM[(struct _Alloc_hider *)_1(D)]._M_p
// /usr/include/c++/13/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	x20, 15	// _5,
	bhi	.L41		//,
// /usr/include/c++/13/bits/basic_string.h:427: 	if (__n == 1)
	cmp	x20, 1	// _5,
	bne	.L32		//,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	ldrb	w1, [x21]	//, MEM[(const char_type &)__s_3]
	strb	w1, [x19, 16]	// MEM[(const char_type &)__s_3], MEM[(char_type &)_1(D) + 16]
.L33:
// /usr/include/c++/13/ext/string_conversions.h:118:     }
	adrp	x1, :got:__stack_chk_guard	// tmp138,
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]	// tmp138,
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x20, [x19, 8]	// _5, _1(D)->_M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x0, x20]	//, MEM[(char_type &)_25]
// /usr/include/c++/13/ext/string_conversions.h:118:     }
	ldr	x0, [x29, -8]	// tmp144, D.119505
	ldr	x2, [x1]	// tmp145,
	subs	x0, x0, x2	// tmp144, tmp145
	mov	x2, 0	// tmp145
	bne	.L42		//,
	mov	sp, x29	//,
	mov	x0, x19	//, <retval>
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x21, x22, [sp, 32]	//,,
	ldp	x29, x30, [sp], 224	//,,,
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa 31, 0
	ret	
	.p2align 2,,3
.L32:
	.cfi_restore_state
// /usr/include/c++/13/bits/char_traits.h:429: 	if (__n == 0)
	cbz	x20, .L33	// _5,
	b	.L31		//
	.p2align 2,,3
.L41:
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	mov	x1, x22	//, tmp119
	mov	x0, x19	//, <retval>
	mov	x2, 0	//,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm		//
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x29, -40]	// MEM[(long unsigned int *)_21], MEM[(long unsigned int *)_21]
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [x19]	// _7, _1(D)->_M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [x19, 16]	// MEM[(long unsigned int *)_21], _1(D)->D.50133._M_allocated_capacity
.L31:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x20	//, _5
	mov	x1, x21	//, __s
	bl	memcpy		//
// /usr/include/c++/13/bits/basic_string.tcc:251: 	_M_set_length(__dnew);
	ldr	x20, [x29, -40]	// _5, MEM[(long unsigned int *)_21]
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x19]	// _7, MEM[(const struct basic_string *)_1(D)]._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	b	.L33		//
	.p2align 2,,3
.L40:
// /usr/include/c++/13/ext/string_conversions.h:107:       _CharT* __s = static_cast<_CharT*>(__builtin_alloca(sizeof(_CharT)
	str	xzr, [sp, 1024]	//,
	b	.L29		//
.L42:
// /usr/include/c++/13/ext/string_conversions.h:118:     }
	bl	__stack_chk_fail		//
	.cfi_endproc
.LFE5642:
	.size	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_St9__va_listEmSB_z.constprop.0, .-_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_St9__va_listEmSB_z.constprop.0
	.section	.text._ZNSt7__cxx119to_stringEm,"axG",@progbits,_ZNSt7__cxx119to_stringEm,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt7__cxx119to_stringEm
	.type	_ZNSt7__cxx119to_stringEm, %function
_ZNSt7__cxx119to_stringEm:
.LFB2206:
	.cfi_startproc
	sub	sp, sp, #256	//,,
	.cfi_def_cfa_offset 256
	adrp	x1, :got:__stack_chk_guard	// tmp129,
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]	// tmp129,
	stp	x29, x30, [sp, 224]	//,,
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 224	//,,
	stp	x19, x20, [sp, 240]	//,,
	.cfi_offset 19, -16
	.cfi_offset 20, -8
// /usr/include/c++/13/bits/basic_string.h:4208:   {
	mov	x19, x0	// __val, tmp219
	mov	x20, x8	// <retval>, tmp218
	ldr	x0, [x1]	// tmp220,
	str	x0, [sp, 216]	// tmp220, D.119546
	mov	x0, 0	// tmp220
// /usr/include/c++/13/bits/charconv.h:67: 	  if (__value < (unsigned)__base) return __n;
	cmp	x19, 9	// __val,
	bls	.L44		//,
// /usr/include/c++/13/bits/charconv.h:68: 	  if (__value < __b2) return __n + 1;
	cmp	x19, 99	// __val,
	bls	.L45		//,
// /usr/include/c++/13/bits/charconv.h:69: 	  if (__value < __b3) return __n + 2;
	cmp	x19, 999	// __val,
	bls	.L59		//,
// /usr/include/c++/13/bits/charconv.h:70: 	  if (__value < __b4) return __n + 3;
	mov	x0, 9999	// tmp130,
	cmp	x19, x0	// __val, tmp130
	bls	.L60		//,
// /usr/include/c++/13/bits/charconv.h:71: 	  __value /= __b4;
	mov	x6, 22859	// tmp160,
// /usr/include/c++/13/bits/charconv.h:67: 	  if (__value < (unsigned)__base) return __n;
	mov	x0, 34463	// tmp161,
// /usr/include/c++/13/bits/charconv.h:71: 	  __value /= __b4;
	movk	x6, 0x3886, lsl 16	// tmp160,,
// /usr/include/c++/13/bits/charconv.h:68: 	  if (__value < __b2) return __n + 1;
	mov	x7, 16959	// tmp215,
// /usr/include/c++/13/bits/charconv.h:71: 	  __value /= __b4;
	movk	x6, 0xc5d6, lsl 32	// tmp160,,
// /usr/include/c++/13/bits/charconv.h:69: 	  if (__value < __b3) return __n + 2;
	mov	x8, 38527	// tmp216,
// /usr/include/c++/13/bits/charconv.h:70: 	  if (__value < __b4) return __n + 3;
	mov	x9, 57599	// tmp217,
	mov	x4, x19	// __value, __val
// /usr/include/c++/13/bits/charconv.h:61:       unsigned __n = 1;
	mov	w3, 1	// __n,
// /usr/include/c++/13/bits/charconv.h:71: 	  __value /= __b4;
	movk	x6, 0x346d, lsl 48	// tmp160,,
// /usr/include/c++/13/bits/charconv.h:67: 	  if (__value < (unsigned)__base) return __n;
	movk	x0, 0x1, lsl 16	// tmp161,,
// /usr/include/c++/13/bits/charconv.h:68: 	  if (__value < __b2) return __n + 1;
	movk	x7, 0xf, lsl 16	// tmp215,,
// /usr/include/c++/13/bits/charconv.h:69: 	  if (__value < __b3) return __n + 2;
	movk	x8, 0x98, lsl 16	// tmp216,,
// /usr/include/c++/13/bits/charconv.h:70: 	  if (__value < __b4) return __n + 3;
	movk	x9, 0x5f5, lsl 16	// tmp217,,
	b	.L48		//
	.p2align 2,,3
.L54:
// /usr/include/c++/13/bits/charconv.h:68: 	  if (__value < __b2) return __n + 1;
	cmp	x2, x7	// __value, tmp215
	bls	.L66		//,
// /usr/include/c++/13/bits/charconv.h:69: 	  if (__value < __b3) return __n + 2;
	cmp	x2, x8	// __value, tmp216
	bls	.L67		//,
// /usr/include/c++/13/bits/charconv.h:70: 	  if (__value < __b4) return __n + 3;
	cmp	x2, x9	// __value, tmp217
	bls	.L68		//,
.L48:
// /usr/include/c++/13/bits/charconv.h:71: 	  __value /= __b4;
	umulh	x5, x4, x6	// tmp159, __value, tmp160
	mov	x2, x4	// __value, __value
	mov	w1, w3	// __n, __n
// /usr/include/c++/13/bits/charconv.h:72: 	  __n += 4;
	add	w3, w3, 4	// __n, __n,
// /usr/include/c++/13/bits/charconv.h:71: 	  __value /= __b4;
	lsr	x4, x5, 11	// __value, tmp159,
// /usr/include/c++/13/bits/charconv.h:67: 	  if (__value < (unsigned)__base) return __n;
	cmp	x2, x0	// __value, tmp161
	bhi	.L54		//,
// /usr/include/c++/13/bits/basic_string.h:4209:     string __str(__detail::__to_chars_len(__val), '\0');
	uxtw	x1, w3	// prephitmp_17, __n
.L53:
// /usr/include/c++/13/bits/basic_string.h:230: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x0, x20, 16	// tmp210, <retval>,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x0, [x20]	// tmp210, MEM[(struct _Alloc_hider *)__str_5(D)]._M_p
.L65:
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	mov	x0, x20	//, <retval>
	mov	w2, 0	//,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc		//
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	adrp	x1, .LC23	// tmp163,
	add	x1, x1, :lo12:.LC23	// tmp162, tmp163,
	add	x5, sp, 8	// tmp213,,
// /usr/include/c++/13/bits/charconv.h:96: 	  auto const __num = (__val % 100) * 2;
	mov	x10, 62915	// tmp182,
// /usr/include/c++/13/bits/basic_string.h:4210:     __detail::__to_chars_10_impl(&__str[0], __str.size(), __val);
	ldp	x6, x3, [x20]	// _13, MEM[(const struct basic_string *)__str_5(D)]._M_string_length, MEM[(const struct basic_string *)__str_5(D)]._M_dataplus._M_p
// /usr/include/c++/13/bits/charconv.h:96: 	  auto const __num = (__val % 100) * 2;
	movk	x10, 0x5c28, lsl 16	// tmp182,,
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	ldp	q0, q5, [x1, 160]	// tmp176, tmp177,
// /usr/include/c++/13/bits/charconv.h:96: 	  auto const __num = (__val % 100) * 2;
	movk	x10, 0xc28f, lsl 32	// tmp182,,
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	ldp	q3, q4, [x1]	// tmp166, tmp167,
	add	x0, sp, 9	// tmp214,,
	ldp	q1, q2, [x1, 32]	// tmp168, tmp169,
	stp	q0, q5, [x5, 160]	// tmp176, tmp177, __digits
// /usr/include/c++/13/bits/charconv.h:93:       unsigned __pos = __len - 1;
	sub	w3, w3, #1	// __pos, MEM[(const struct basic_string *)__str_5(D)]._M_string_length,
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	ldp	q0, q5, [x1, 64]	// tmp170, tmp171,
	stp	q3, q4, [x5]	// tmp166, tmp167, __digits
// /usr/include/c++/13/bits/charconv.h:96: 	  auto const __num = (__val % 100) * 2;
	movk	x10, 0x28f5, lsl 48	// tmp182,,
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	ldp	q3, q4, [x1, 96]	// tmp172, tmp173,
	stp	q1, q2, [x5, 32]	// tmp168, tmp169, __digits
// /usr/include/c++/13/bits/charconv.h:94:       while (__val >= 100)
	mov	x8, 9999	// tmp201,
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	ldp	q1, q2, [x1, 128]	// tmp174, tmp175,
	stp	q0, q5, [x5, 64]	// tmp170, tmp171, __digits
	ldr	q0, [x1, 185]	// tmp178,
	stp	q3, q4, [x5, 96]	// tmp172, tmp173, __digits
	stp	q1, q2, [x5, 128]	// tmp174, tmp175, __digits
	str	q0, [x5, 185]	// tmp178, __digits
	.p2align 3,,7
.L55:
// /usr/include/c++/13/bits/charconv.h:96: 	  auto const __num = (__val % 100) * 2;
	lsr	x2, x19, 2	// tmp180, __val,
// /usr/include/c++/13/bits/charconv.h:99: 	  __first[__pos - 1] = __digits[__num];
	sub	w4, w3, #1	// tmp197, __pos,
	mov	x7, x19	// __val, __val
// /usr/include/c++/13/bits/charconv.h:96: 	  auto const __num = (__val % 100) * 2;
	umulh	x2, x2, x10	// tmp181, tmp180, tmp182
	lsr	x2, x2, 2	// tmp179, tmp181,
	add	x1, x2, x2, lsl 1	// tmp185, tmp179, tmp179,
	add	x1, x2, x1, lsl 3	// tmp187, tmp179, tmp185,
	sub	x1, x19, x1, lsl 2	// tmp189, __val, tmp187,
// /usr/include/c++/13/bits/charconv.h:97: 	  __val /= 100;
	mov	x19, x2	// __val, tmp179
// /usr/include/c++/13/bits/charconv.h:96: 	  auto const __num = (__val % 100) * 2;
	lsl	x1, x1, 1	// __num, tmp189,
// /usr/include/c++/13/bits/charconv.h:98: 	  __first[__pos] = __digits[__num + 1];
	ldrb	w9, [x0, x1]	//, __digits[_28]
// /usr/include/c++/13/bits/charconv.h:99: 	  __first[__pos - 1] = __digits[__num];
	ldrb	w2, [x5, x1]	//, __digits[__num_26]
// /usr/include/c++/13/bits/charconv.h:98: 	  __first[__pos] = __digits[__num + 1];
	strb	w9, [x6, w3, uxtw]	// __digits[_28], *_31
// /usr/include/c++/13/bits/charconv.h:99: 	  __first[__pos - 1] = __digits[__num];
	sub	w3, w3, #2	// __pos, __pos,
	strb	w2, [x6, w4, uxtw]	// __digits[__num_26], *_35
// /usr/include/c++/13/bits/charconv.h:94:       while (__val >= 100)
	cmp	x7, x8	// __val, tmp201
	bhi	.L55		//,
// /usr/include/c++/13/bits/charconv.h:102:       if (__val >= 10)
	cmp	x7, 999	// __val,
	bhi	.L51		//,
.L56:
// /usr/include/c++/13/bits/charconv.h:109: 	__first[0] = '0' + __val;
	add	w19, w19, 48	// tmp206, __val,
	and	w19, w19, 255	// cstore_6, tmp206
.L57:
// /usr/include/c++/13/bits/basic_string.h:4212:   }
	adrp	x0, :got:__stack_chk_guard	// tmp212,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp212,
	strb	w19, [x6]	// cstore_6, *_11
	ldr	x2, [sp, 216]	// tmp221, D.119546
	ldr	x1, [x0]	// tmp222,
	subs	x2, x2, x1	// tmp221, tmp222
	mov	x1, 0	// tmp222
	bne	.L69		//,
	ldp	x29, x30, [sp, 224]	//,,
	mov	x0, x20	//, <retval>
	ldp	x19, x20, [sp, 240]	//,,
	add	sp, sp, 256	//,,
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret	
.L45:
	.cfi_restore_state
// /usr/include/c++/13/bits/basic_string.h:230: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x0, x8, 16	// tmp136, <retval>,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x0, [x8]	// tmp136, MEM[(struct _Alloc_hider *)__str_5(D)]._M_p
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	mov	x1, 2	//,
	mov	x0, x8	//, <retval>
	mov	w2, 0	//,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc		//
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	adrp	x1, .LC23	// tmp138,
	add	x1, x1, :lo12:.LC23	// tmp137, tmp138,
	add	x5, sp, 8	// tmp213,,
	add	x0, sp, 9	// tmp214,,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x6, [x20]	// _13, MEM[(const struct basic_string *)__str_5(D)]._M_dataplus._M_p
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	ldp	q0, q5, [x1, 160]	// tmp151, tmp152,
	ldp	q3, q4, [x1]	// tmp141, tmp142,
	ldp	q1, q2, [x1, 32]	// tmp143, tmp144,
	stp	q0, q5, [x5, 160]	// tmp151, tmp152, __digits
	ldp	q0, q5, [x1, 64]	// tmp145, tmp146,
	stp	q3, q4, [x5]	// tmp141, tmp142, __digits
	ldp	q3, q4, [x1, 96]	// tmp147, tmp148,
	stp	q1, q2, [x5, 32]	// tmp143, tmp144, __digits
	ldp	q1, q2, [x1, 128]	// tmp149, tmp150,
	stp	q0, q5, [x5, 64]	// tmp145, tmp146, __digits
	ldr	q0, [x1, 185]	// tmp153,
	stp	q3, q4, [x5, 96]	// tmp147, tmp148, __digits
	stp	q1, q2, [x5, 128]	// tmp149, tmp150, __digits
	str	q0, [x5, 185]	// tmp153, __digits
	.p2align 3,,7
.L51:
// /usr/include/c++/13/bits/charconv.h:104: 	  auto const __num = __val * 2;
	lsl	x19, x19, 1	// __num, __val,
// /usr/include/c++/13/bits/charconv.h:105: 	  __first[1] = __digits[__num + 1];
	ldrb	w0, [x0, x19]	//, __digits[_40]
// /usr/include/c++/13/bits/charconv.h:106: 	  __first[0] = __digits[__num];
	ldrb	w19, [x5, x19]	// cstore_6, __digits[__num_39]
// /usr/include/c++/13/bits/charconv.h:105: 	  __first[1] = __digits[__num + 1];
	strb	w0, [x6, 1]	// __digits[_40], MEM[(char *)_7 + 1B]
	b	.L57		//
	.p2align 2,,3
.L66:
// /usr/include/c++/13/bits/basic_string.h:230: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x0, x20, 16	// tmp132, <retval>,
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	add	w1, w1, 5	//, __n,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x0, [x20]	// tmp132, MEM[(struct _Alloc_hider *)__str_5(D)]._M_p
	b	.L65		//
	.p2align 2,,3
.L67:
// /usr/include/c++/13/bits/basic_string.h:4209:     string __str(__detail::__to_chars_len(__val), '\0');
	add	w1, w1, 6	// prephitmp_17, __n,
	b	.L53		//
	.p2align 2,,3
.L68:
	add	w1, w1, 7	// prephitmp_17, __n,
	b	.L53		//
.L44:
// /usr/include/c++/13/bits/basic_string.h:230: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x0, x8, 16	// tmp209, <retval>,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x0, [x8]	// tmp209, MEM[(struct _Alloc_hider *)__str_5(D)]._M_p
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	mov	w2, 0	//,
	mov	x0, x8	//, <retval>
	mov	x1, 1	//,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc		//
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x6, [x20]	// _13, MEM[(const struct basic_string *)__str_5(D)]._M_dataplus._M_p
	b	.L56		//
.L60:
// /usr/include/c++/13/bits/charconv.h:70: 	  if (__value < __b4) return __n + 3;
	mov	x1, 4	// prephitmp_17,
// /usr/include/c++/13/bits/charconv.h:70: 	  if (__value < __b4) return __n + 3;
	b	.L53		//
.L59:
// /usr/include/c++/13/bits/charconv.h:69: 	  if (__value < __b3) return __n + 2;
	mov	x1, 3	// prephitmp_17,
// /usr/include/c++/13/bits/charconv.h:69: 	  if (__value < __b3) return __n + 2;
	b	.L53		//
.L69:
// /usr/include/c++/13/bits/basic_string.h:4212:   }
	bl	__stack_chk_fail		//
	.cfi_endproc
.LFE2206:
	.size	_ZNSt7__cxx119to_stringEm, .-_ZNSt7__cxx119to_stringEm
	.section	.rodata._ZNSt7__cxx119to_stringEm.str1.8,"aMS",@progbits,1
	.align	3
.LC23:
	.string	"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899"
	.section	.text._ZNSt7__cxx119to_stringEm,"axG",@progbits,_ZNSt7__cxx119to_stringEm,comdat
	.section	.text._ZN13TerminalInputC2Eb,"axG",@progbits,_ZN13TerminalInputC5Eb,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN13TerminalInputC2Eb
	.type	_ZN13TerminalInputC2Eb, %function
_ZN13TerminalInputC2Eb:
.LFB4465:
	.cfi_startproc
// main.cpp:40:     explicit TerminalInput(bool visual) {
	movi	v0.4s, 0	// tmp103
// main.cpp:40:     explicit TerminalInput(bool visual) {
	sub	sp, sp, #112	//,,
	.cfi_def_cfa_offset 112
	adrp	x2, :got:__stack_chk_guard	// tmp101,
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]	// tmp101,
	stp	x29, x30, [sp, 80]	//,,
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 80	//,,
	str	x19, [sp, 96]	//,
	.cfi_offset 19, -16
// main.cpp:40:     explicit TerminalInput(bool visual) {
	mov	x19, x0	// this, tmp118
	ldr	x0, [x2]	// tmp122,
	str	x0, [sp, 72]	// tmp122, D.119558
	mov	x0, 0	// tmp122
// main.cpp:40:     explicit TerminalInput(bool visual) {
	str	q0, [x19, 32]	// tmp103, *this_7(D).saved
	strb	wzr, [x19, 60]	//, *this_7(D).enabled
	stp	q0, q0, [x19]	// tmp103, tmp103, *this_7(D).saved
	str	q0, [x19, 44]	// tmp103, *this_7(D).saved
// main.cpp:41:         if(!visual || !isatty(STDIN_FILENO) || tcgetattr(STDIN_FILENO,&saved)) return;
	tbnz	w1, 0, .L79	// visual,,
.L70:
// main.cpp:47:     }
	adrp	x0, :got:__stack_chk_guard	// tmp117,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp117,
	ldr	x2, [sp, 72]	// tmp123, D.119558
	ldr	x1, [x0]	// tmp124,
	subs	x2, x2, x1	// tmp123, tmp124
	mov	x1, 0	// tmp124
	bne	.L80		//,
	ldp	x29, x30, [sp, 80]	//,,
	ldr	x19, [sp, 96]	//,
	add	sp, sp, 112	//,,
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.p2align 2,,3
.L79:
	.cfi_restore_state
// main.cpp:41:         if(!visual || !isatty(STDIN_FILENO) || tcgetattr(STDIN_FILENO,&saved)) return;
	bl	isatty		//
// main.cpp:41:         if(!visual || !isatty(STDIN_FILENO) || tcgetattr(STDIN_FILENO,&saved)) return;
	cbz	w0, .L70	// tmp119,
// main.cpp:41:         if(!visual || !isatty(STDIN_FILENO) || tcgetattr(STDIN_FILENO,&saved)) return;
	mov	x1, x19	//, this
	mov	w0, 0	//,
	bl	tcgetattr		//
// main.cpp:41:         if(!visual || !isatty(STDIN_FILENO) || tcgetattr(STDIN_FILENO,&saved)) return;
	cbnz	w0, .L70	// tmp120,
// main.cpp:42:         termios mode=saved;
	ldp	q2, q3, [x19]	// *this_7(D).saved, *this_7(D).saved, *this_7(D).saved
	add	x2, sp, 8	// tmp105,,
	ldr	q1, [x19, 32]	// *this_7(D).saved, *this_7(D).saved
// main.cpp:43:         mode.c_lflag &= static_cast<tcflag_t>(~(ICANON|ECHO));
	mov	w4, -11	// tmp113,
// main.cpp:42:         termios mode=saved;
	stp	q2, q3, [x2]	// *this_7(D).saved, *this_7(D).saved, mode
// main.cpp:46:         enabled=tcsetattr(STDIN_FILENO,TCSANOW,&mode)==0;
	mov	w1, 0	//,
// main.cpp:43:         mode.c_lflag &= static_cast<tcflag_t>(~(ICANON|ECHO));
	ldr	w3, [sp, 20]	//, mode.c_lflag
// main.cpp:42:         termios mode=saved;
	ldr	q0, [x19, 44]	// *this_7(D).saved, *this_7(D).saved
// main.cpp:43:         mode.c_lflag &= static_cast<tcflag_t>(~(ICANON|ECHO));
	and	w3, w3, w4	// tmp111, mode.c_lflag, tmp113
// main.cpp:42:         termios mode=saved;
	str	q1, [x2, 32]	// *this_7(D).saved, mode
// main.cpp:43:         mode.c_lflag &= static_cast<tcflag_t>(~(ICANON|ECHO));
	str	w3, [sp, 20]	// tmp111, mode.c_lflag
// main.cpp:45:         mode.c_cc[VTIME]=0;
	strh	wzr, [sp, 30]	//, MEM <vector(2) unsigned char> [(unsigned char *)&mode + 22B]
// main.cpp:42:         termios mode=saved;
	str	q0, [x2, 44]	// *this_7(D).saved, mode
// main.cpp:46:         enabled=tcsetattr(STDIN_FILENO,TCSANOW,&mode)==0;
	bl	tcsetattr		//
// main.cpp:46:         enabled=tcsetattr(STDIN_FILENO,TCSANOW,&mode)==0;
	cmp	w0, 0	// tmp121,
	cset	w0, eq	// tmp115,
	strb	w0, [x19, 60]	// tmp115, *this_7(D).enabled
	b	.L70		//
.L80:
// main.cpp:47:     }
	bl	__stack_chk_fail		//
	.cfi_endproc
.LFE4465:
	.size	_ZN13TerminalInputC2Eb, .-_ZN13TerminalInputC2Eb
	.weak	_ZN13TerminalInputC1Eb
	.set	_ZN13TerminalInputC1Eb,_ZN13TerminalInputC2Eb
	.section	.rodata.str1.8
	.align	3
.LC24:
	.string	"Valor inv\303\241lido para "
	.align	3
.LC25:
	.string	"stoull"
	.align	3
.LC26:
	.string	""
	.text
	.align	2
	.p2align 4,,11
	.global	_Z6numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_
	.type	_Z6numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_, %function
_Z6numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_:
.LFB4470:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4470
	sub	sp, sp, #112	//,,
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 48]	//,,
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	add	x29, sp, 48	//,,
	stp	x19, x20, [sp, 64]	//,,
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x20, x0	// s, tmp181
	adrp	x0, :got:__stack_chk_guard	// tmp118,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp118,
	stp	x21, x22, [sp, 80]	//,,
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x22, x1	// name, tmp182
// main.cpp:52:     if (s.empty() || s[0]=='-') throw invalid_argument("Valor inválido para " + name);
	ldr	x1, [x20, 8]	// MEM[(const struct basic_string *)s_9(D)]._M_string_length, MEM[(const struct basic_string *)s_9(D)]._M_string_length
// main.cpp:51: size_t number(const string& s, const string& name) {
	str	x23, [sp, 96]	//,
	.cfi_offset 23, -16
// main.cpp:51: size_t number(const string& s, const string& name) {
	ldr	x2, [x0]	// tmp201,
	str	x2, [sp, 40]	// tmp201, D.119595
	mov	x2, 0	// tmp201
// main.cpp:52:     if (s.empty() || s[0]=='-') throw invalid_argument("Valor inválido para " + name);
	cbz	x1, .L82	// MEM[(const struct basic_string *)s_9(D)]._M_string_length,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x21, [x20]	// _10, MEM[(const struct basic_string *)s_9(D)]._M_dataplus._M_p
// main.cpp:52:     if (s.empty() || s[0]=='-') throw invalid_argument("Valor inválido para " + name);
	ldrb	w0, [x21]	// MEM[(const value_type &)_10], MEM[(const value_type &)_10]
	cmp	w0, 45	// MEM[(const value_type &)_10],
	beq	.L82		//,
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
	ldr	x2, [sp]	// __endptr.5_57, __endptr
// /usr/include/c++/13/ext/string_conversions.h:84:       if (__endptr == __str)
	cmp	x21, x2	// _10, __endptr.5_57
	beq	.L128		//,
// /usr/include/c++/13/ext/string_conversions.h:86:       else if (errno == ERANGE
	ldr	w1, [x19]	//, *_54
// /usr/include/c++/13/ext/string_conversions.h:87: 	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
	cmp	w1, 34	// _58,
	beq	.L129		//,
// /usr/include/c++/13/ext/string_conversions.h:93: 	*__idx = __endptr - __str;
	sub	x2, x2, x21	// _60, __endptr.5_57, _10
// /usr/include/c++/13/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	cbz	w1, .L130	// _58,
.L89:
// main.cpp:55:         if (p!=s.size() || v>numeric_limits<size_t>::max()) throw invalid_argument("");
	ldr	x1, [x20, 8]	// MEM[(const struct basic_string *)s_9(D)]._M_string_length, MEM[(const struct basic_string *)s_9(D)]._M_string_length
	cmp	x1, x2	// MEM[(const struct basic_string *)s_9(D)]._M_string_length, _60
	bne	.L131		//,
// main.cpp:58: }
	adrp	x1, :got:__stack_chk_guard	// tmp176,
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]	// tmp176,
	ldr	x3, [sp, 40]	// tmp218, D.119595
	ldr	x2, [x1]	// tmp219,
	subs	x3, x3, x2	// tmp218, tmp219
	mov	x2, 0	// tmp219
	bne	.L124		//,
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
.L130:
	.cfi_restore_state
// /usr/include/c++/13/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	str	w23, [x19]	// _55, *_54
	b	.L89		//
.L129:
// /usr/include/c++/13/ext/string_conversions.h:88: 	std::__throw_out_of_range(__name);
	adrp	x20, :got:__stack_chk_guard	// tmp178,
	ldr	x20, [x20, :got_lo12:__stack_chk_guard]	// tmp178,
	ldr	x0, [sp, 40]	// tmp204, D.119595
	ldr	x1, [x20]	// tmp205,
	subs	x0, x0, x1	// tmp204, tmp205
	mov	x1, 0	// tmp205
	bne	.L124		//,
	adrp	x0, .LC25	// tmp131,
	add	x0, x0, :lo12:.LC25	//, tmp131,
.LEHB2:
	bl	_ZSt20__throw_out_of_rangePKc		//
.L128:
// /usr/include/c++/13/ext/string_conversions.h:85: 	std::__throw_invalid_argument(__name);
	adrp	x20, :got:__stack_chk_guard	// tmp178,
	ldr	x20, [x20, :got_lo12:__stack_chk_guard]	// tmp178,
	ldr	x0, [sp, 40]	// tmp202, D.119595
	ldr	x1, [x20]	// tmp203,
	subs	x0, x0, x1	// tmp202, tmp203
	mov	x1, 0	// tmp203
	bne	.L124		//,
	adrp	x0, .LC25	// tmp128,
	add	x0, x0, :lo12:.LC25	//, tmp128,
	bl	_ZSt24__throw_invalid_argumentPKc		//
.LEHE2:
.L82:
// main.cpp:52:     if (s.empty() || s[0]=='-') throw invalid_argument("Valor inválido para " + name);
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// main.cpp:52:     if (s.empty() || s[0]=='-') throw invalid_argument("Valor inválido para " + name);
	ldp	x1, x2, [x22]	//,, MEM[(char * *)name_23(D)]
	add	x21, sp, 8	// tmp177,,
// main.cpp:52:     if (s.empty() || s[0]=='-') throw invalid_argument("Valor inválido para " + name);
	mov	x20, x0	// _32, tmp183
// main.cpp:52:     if (s.empty() || s[0]=='-') throw invalid_argument("Valor inválido para " + name);
	mov	x8, x21	//, tmp177
	adrp	x0, .LC24	// tmp123,
	add	x0, x0, :lo12:.LC24	//, tmp123,
.LEHB3:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.isra.0		//
.LEHE3:
// main.cpp:52:     if (s.empty() || s[0]=='-') throw invalid_argument("Valor inválido para " + name);
	mov	x1, x21	//, tmp177
	mov	x0, x20	//, _32
.LEHB4:
	bl	_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE		//
.LEHE4:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x0, x21	//, tmp177
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
// main.cpp:52:     if (s.empty() || s[0]=='-') throw invalid_argument("Valor inválido para " + name);
	adrp	x0, :got:__stack_chk_guard	// tmp140,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp140,
	ldr	x2, [sp, 40]	// tmp206, D.119595
	ldr	x1, [x0]	// tmp207,
	subs	x2, x2, x1	// tmp206, tmp207
	mov	x1, 0	// tmp207
	beq	.L95		//,
.L124:
// main.cpp:58: }
	bl	__stack_chk_fail		//
.L116:
// /usr/include/c++/13/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	ldr	w2, [x19]	//, *_54
	cbnz	w2, .L94	// *_54,
// /usr/include/c++/13/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	str	w23, [x19]	// _55, *_54
.L94:
// main.cpp:57:     } catch(const exception&) { throw invalid_argument("Valor inválido para " + name); }
	cmp	x1, 1	// tmp136,
	bne	.L132		//,
// main.cpp:57:     } catch(const exception&) { throw invalid_argument("Valor inválido para " + name); }
	bl	__cxa_begin_catch		//
// main.cpp:57:     } catch(const exception&) { throw invalid_argument("Valor inválido para " + name); }
	add	x21, sp, 8	// tmp177,,
// main.cpp:57:     } catch(const exception&) { throw invalid_argument("Valor inválido para " + name); }
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// main.cpp:57:     } catch(const exception&) { throw invalid_argument("Valor inválido para " + name); }
	ldp	x1, x2, [x22]	//,, MEM[(char * *)name_23(D)]
// main.cpp:57:     } catch(const exception&) { throw invalid_argument("Valor inválido para " + name); }
	mov	x23, x0	// _22, tmp195
// main.cpp:57:     } catch(const exception&) { throw invalid_argument("Valor inválido para " + name); }
	mov	x8, x21	//, tmp177
	adrp	x0, .LC24	// tmp161,
	add	x0, x0, :lo12:.LC24	//, tmp161,
.LEHB5:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.isra.0		//
.LEHE5:
// main.cpp:57:     } catch(const exception&) { throw invalid_argument("Valor inválido para " + name); }
	mov	x1, x21	//, tmp177
	mov	x0, x23	//, _22
.LEHB6:
	bl	_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE		//
.LEHE6:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x0, x21	//, tmp177
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
// main.cpp:57:     } catch(const exception&) { throw invalid_argument("Valor inválido para " + name); }
	ldr	x0, [sp, 40]	// tmp214, D.119595
	ldr	x1, [x20]	// tmp215,
	subs	x0, x0, x1	// tmp214, tmp215
	mov	x1, 0	// tmp215
	bne	.L124		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x23	//, _22
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB7:
	bl	__cxa_throw		//
.LEHE7:
.L131:
// main.cpp:55:         if (p!=s.size() || v>numeric_limits<size_t>::max()) throw invalid_argument("");
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
	adrp	x1, .LC26	// tmp145,
	mov	x23, x0	// _15, tmp188
	add	x1, x1, :lo12:.LC26	//, tmp145,
.LEHB8:
	bl	_ZNSt16invalid_argumentC1EPKc		//
.LEHE8:
// main.cpp:55:         if (p!=s.size() || v>numeric_limits<size_t>::max()) throw invalid_argument("");
	adrp	x20, :got:__stack_chk_guard	// tmp178,
	ldr	x20, [x20, :got_lo12:__stack_chk_guard]	// tmp178,
	ldr	x0, [sp, 40]	// tmp208, D.119595
	ldr	x1, [x20]	// tmp209,
	subs	x0, x0, x1	// tmp208, tmp209
	mov	x1, 0	// tmp209
	bne	.L124		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x23	//, _15
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB9:
	bl	__cxa_throw		//
.LEHE9:
.L95:
// main.cpp:52:     if (s.empty() || s[0]=='-') throw invalid_argument("Valor inválido para " + name);
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x20	//, _32
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB10:
	bl	__cxa_throw		//
.L112:
// main.cpp:55:         if (p!=s.size() || v>numeric_limits<size_t>::max()) throw invalid_argument("");
	mov	x19, x0	// tmp156, tmp191
	mov	x21, x1	// tmp157, tmp192
	mov	x0, x23	//, _15
	bl	__cxa_free_exception		//
	adrp	x20, :got:__stack_chk_guard	// tmp178,
	ldr	x20, [x20, :got_lo12:__stack_chk_guard]	// tmp178,
	mov	x0, x19	// tmp134, tmp156
	mov	x1, x21	// tmp136, tmp157
	b	.L94		//
.L111:
	b	.L94		//
.L110:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x19, x0	// tmp189,
	mov	x0, x21	//, tmp177
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L98:
// main.cpp:52:     if (s.empty() || s[0]=='-') throw invalid_argument("Valor inválido para " + name);
	mov	x0, x20	//, _32
	bl	__cxa_free_exception		//
	adrp	x0, :got:__stack_chk_guard	// tmp155,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp155,
	ldr	x2, [sp, 40]	// tmp210, D.119595
	ldr	x1, [x0]	// tmp211,
	subs	x2, x2, x1	// tmp210, tmp211
	mov	x1, 0	// tmp211
	bne	.L124		//,
	mov	x0, x19	//, tmp173
.L125:
	bl	_Unwind_Resume		//
.L109:
	mov	x19, x0	// tmp151, tmp190
	b	.L98		//
.L132:
	ldr	x1, [sp, 40]	// tmp212, D.119595
	ldr	x2, [x20]	// tmp213,
	subs	x1, x1, x2	// tmp212, tmp213
	mov	x2, 0	// tmp213
	bne	.L124		//,
	bl	_Unwind_Resume		//
.LEHE10:
.L113:
// main.cpp:57:     } catch(const exception&) { throw invalid_argument("Valor inválido para " + name); }
	mov	x19, x0	// tmp169, tmp197
	b	.L105		//
.L114:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x19, x0	// tmp196,
	mov	x0, x21	//, tmp177
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L105:
// main.cpp:57:     } catch(const exception&) { throw invalid_argument("Valor inválido para " + name); }
	mov	x0, x23	//, _22
	bl	__cxa_free_exception		//
.L106:
// main.cpp:57:     } catch(const exception&) { throw invalid_argument("Valor inválido para " + name); }
	bl	__cxa_end_catch		//
	ldr	x0, [sp, 40]	// tmp216, D.119595
	ldr	x1, [x20]	// tmp217,
	subs	x0, x0, x1	// tmp216, tmp217
	mov	x1, 0	// tmp217
	bne	.L124		//,
	mov	x0, x19	//, tmp173
	b	.L125		//
.L115:
	mov	x19, x0	// tmp173, tmp198
	b	.L106		//
	.cfi_endproc
.LFE4470:
	.section	.gcc_except_table
	.align	2
.LLSDA4470:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT4470-.LLSDATTD4470
.LLSDATTD4470:
	.byte	0x1
	.uleb128 .LLSDACSE4470-.LLSDACSB4470
.LLSDACSB4470:
	.uleb128 .LEHB2-.LFB4470
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L116-.LFB4470
	.uleb128 0x3
	.uleb128 .LEHB3-.LFB4470
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L109-.LFB4470
	.uleb128 0
	.uleb128 .LEHB4-.LFB4470
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L110-.LFB4470
	.uleb128 0
	.uleb128 .LEHB5-.LFB4470
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L113-.LFB4470
	.uleb128 0
	.uleb128 .LEHB6-.LFB4470
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L114-.LFB4470
	.uleb128 0
	.uleb128 .LEHB7-.LFB4470
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L115-.LFB4470
	.uleb128 0
	.uleb128 .LEHB8-.LFB4470
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L112-.LFB4470
	.uleb128 0x3
	.uleb128 .LEHB9-.LFB4470
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L111-.LFB4470
	.uleb128 0x1
	.uleb128 .LEHB10-.LFB4470
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE4470:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align	2
	.4byte	DW.ref._ZTISt9exception-.
.LLSDATT4470:
	.text
	.size	_Z6numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_, .-_Z6numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_
	.section	.rodata.str1.8
	.align	3
.LC27:
	.string	"stof"
	.text
	.align	2
	.p2align 4,,11
	.global	_Z7decimalRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_
	.type	_Z7decimalRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_, %function
_Z7decimalRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_:
.LFB4471:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4471
	sub	sp, sp, #112	//,,
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 48]	//,,
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	add	x29, sp, 48	//,,
	stp	x19, x20, [sp, 64]	//,,
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x20, x0	// s, tmp161
	adrp	x0, :got:__stack_chk_guard	// tmp113,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp113,
	stp	x21, x22, [sp, 80]	//,,
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x21, x1	// name, tmp162
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x22, [x20]	// _10, MEM[(const struct basic_string *)s_8(D)]._M_dataplus._M_p
// main.cpp:59: float decimal(const string& s, const string& name) {
	str	x23, [sp, 96]	//,
	.cfi_offset 23, -16
// main.cpp:59: float decimal(const string& s, const string& name) {
	ldr	x1, [x0]	// tmp179,
	str	x1, [sp, 40]	// tmp179, D.119628
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
	ldr	x2, [sp]	// __endptr.16_41, __endptr
// /usr/include/c++/13/ext/string_conversions.h:84:       if (__endptr == __str)
	cmp	x22, x2	// _10, __endptr.16_41
	beq	.L169		//,
// /usr/include/c++/13/ext/string_conversions.h:86:       else if (errno == ERANGE
	ldr	w0, [x19]	//, *_38
// /usr/include/c++/13/ext/string_conversions.h:87: 	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
	cmp	w0, 34	// _42,
	beq	.L170		//,
// /usr/include/c++/13/ext/string_conversions.h:93: 	*__idx = __endptr - __str;
	sub	x2, x2, x22	// _44, __endptr.16_41, _10
// /usr/include/c++/13/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	cbz	w0, .L171	// _42,
.L138:
// main.cpp:62:         if (p!=s.size() || !isfinite(v)) throw invalid_argument("");
	ldr	x0, [x20, 8]	// MEM[(const struct basic_string *)s_8(D)]._M_string_length, MEM[(const struct basic_string *)s_8(D)]._M_string_length
	cmp	x0, x2	// MEM[(const struct basic_string *)s_8(D)]._M_string_length, _44
	bne	.L139		//,
// /usr/include/c++/13/cmath:1123:   { return __builtin_isfinite(__x); }
	fabs	s2, s0	// tmp127, <retval>
// main.cpp:62:         if (p!=s.size() || !isfinite(v)) throw invalid_argument("");
	mov	w0, 2139095039	// tmp178,
	fmov	s1, w0	// tmp128, tmp178
	fcmp	s2, s1	// tmp127, tmp128
	bhi	.L139		//,
// main.cpp:65: }
	adrp	x0, :got:__stack_chk_guard	// tmp156,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp156,
	ldr	x2, [sp, 40]	// tmp192, D.119628
	ldr	x1, [x0]	// tmp193,
	subs	x2, x2, x1	// tmp192, tmp193
	mov	x1, 0	// tmp193
	bne	.L167		//,
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
.L171:
	.cfi_restore_state
// /usr/include/c++/13/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	str	w23, [x19]	// _39, *_38
	b	.L138		//
.L170:
// /usr/include/c++/13/ext/string_conversions.h:88: 	std::__throw_out_of_range(__name);
	adrp	x20, :got:__stack_chk_guard	// tmp158,
	ldr	x20, [x20, :got_lo12:__stack_chk_guard]	// tmp158,
	ldr	x0, [sp, 40]	// tmp182, D.119628
	ldr	x1, [x20]	// tmp183,
	subs	x0, x0, x1	// tmp182, tmp183
	mov	x1, 0	// tmp183
	bne	.L167		//,
	adrp	x0, .LC27	// tmp120,
	add	x0, x0, :lo12:.LC27	//, tmp120,
.LEHB11:
	bl	_ZSt20__throw_out_of_rangePKc		//
.L169:
// /usr/include/c++/13/ext/string_conversions.h:85: 	std::__throw_invalid_argument(__name);
	adrp	x20, :got:__stack_chk_guard	// tmp158,
	ldr	x20, [x20, :got_lo12:__stack_chk_guard]	// tmp158,
	ldr	x0, [sp, 40]	// tmp180, D.119628
	ldr	x1, [x20]	// tmp181,
	subs	x0, x0, x1	// tmp180, tmp181
	mov	x1, 0	// tmp181
	bne	.L167		//,
	adrp	x0, .LC27	// tmp117,
	add	x0, x0, :lo12:.LC27	//, tmp117,
	bl	_ZSt24__throw_invalid_argumentPKc		//
.LEHE11:
.L160:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x19, x0	// tmp173,
	mov	x0, x23	//, tmp157
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L153:
// main.cpp:64:     } catch(const exception&) { throw invalid_argument("Valor inválido para " + name); }
	mov	x0, x22	//, _20
	bl	__cxa_free_exception		//
.L154:
// main.cpp:64:     } catch(const exception&) { throw invalid_argument("Valor inválido para " + name); }
	bl	__cxa_end_catch		//
	ldr	x0, [sp, 40]	// tmp190, D.119628
	ldr	x1, [x20]	// tmp191,
	subs	x0, x0, x1	// tmp190, tmp191
	mov	x1, 0	// tmp191
	mov	x0, x19	//, tmp153
	beq	.L168		//,
.L167:
// main.cpp:65: }
	bl	__stack_chk_fail		//
.L139:
// main.cpp:62:         if (p!=s.size() || !isfinite(v)) throw invalid_argument("");
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// main.cpp:62:         if (p!=s.size() || !isfinite(v)) throw invalid_argument("");
	adrp	x1, .LC26	// tmp131,
// main.cpp:62:         if (p!=s.size() || !isfinite(v)) throw invalid_argument("");
	mov	x23, x0	// _13, tmp167
// main.cpp:62:         if (p!=s.size() || !isfinite(v)) throw invalid_argument("");
	add	x1, x1, :lo12:.LC26	//, tmp131,
.LEHB12:
	bl	_ZNSt16invalid_argumentC1EPKc		//
.LEHE12:
// main.cpp:62:         if (p!=s.size() || !isfinite(v)) throw invalid_argument("");
	adrp	x20, :got:__stack_chk_guard	// tmp158,
	ldr	x20, [x20, :got_lo12:__stack_chk_guard]	// tmp158,
	ldr	x0, [sp, 40]	// tmp184, D.119628
	ldr	x1, [x20]	// tmp185,
	subs	x0, x0, x1	// tmp184, tmp185
	mov	x1, 0	// tmp185
	bne	.L167		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x23	//, _13
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB13:
	bl	__cxa_throw		//
.LEHE13:
.L162:
// /usr/include/c++/13/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	ldr	w2, [x19]	//, *_38
	cbnz	w2, .L143	// *_38,
// /usr/include/c++/13/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	str	w23, [x19]	// _39, *_38
.L143:
// main.cpp:64:     } catch(const exception&) { throw invalid_argument("Valor inválido para " + name); }
	cmp	x1, 1	// tmp125,
	bne	.L172		//,
// main.cpp:64:     } catch(const exception&) { throw invalid_argument("Valor inválido para " + name); }
	bl	__cxa_begin_catch		//
// main.cpp:64:     } catch(const exception&) { throw invalid_argument("Valor inválido para " + name); }
	add	x23, sp, 8	// tmp157,,
// main.cpp:64:     } catch(const exception&) { throw invalid_argument("Valor inválido para " + name); }
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// main.cpp:64:     } catch(const exception&) { throw invalid_argument("Valor inválido para " + name); }
	ldp	x1, x2, [x21]	//,, MEM[(char * *)name_21(D)]
// main.cpp:64:     } catch(const exception&) { throw invalid_argument("Valor inválido para " + name); }
	mov	x22, x0	// _20, tmp172
// main.cpp:64:     } catch(const exception&) { throw invalid_argument("Valor inválido para " + name); }
	mov	x8, x23	//, tmp157
	adrp	x0, .LC24	// tmp141,
	add	x0, x0, :lo12:.LC24	//, tmp141,
.LEHB14:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.isra.0		//
.LEHE14:
// main.cpp:64:     } catch(const exception&) { throw invalid_argument("Valor inválido para " + name); }
	mov	x1, x23	//, tmp157
	mov	x0, x22	//, _20
.LEHB15:
	bl	_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE		//
.LEHE15:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x0, x23	//, tmp157
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
// main.cpp:64:     } catch(const exception&) { throw invalid_argument("Valor inválido para " + name); }
	ldr	x0, [sp, 40]	// tmp188, D.119628
	ldr	x1, [x20]	// tmp189,
	subs	x0, x0, x1	// tmp188, tmp189
	mov	x1, 0	// tmp189
	bne	.L167		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x22	//, _20
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB16:
	bl	__cxa_throw		//
.LEHE16:
.L158:
// main.cpp:62:         if (p!=s.size() || !isfinite(v)) throw invalid_argument("");
	mov	x19, x0	// tmp136, tmp168
	mov	x22, x1	// tmp137, tmp169
	mov	x0, x23	//, _13
	bl	__cxa_free_exception		//
	adrp	x20, :got:__stack_chk_guard	// tmp158,
	ldr	x20, [x20, :got_lo12:__stack_chk_guard]	// tmp158,
	mov	x0, x19	// tmp123, tmp136
	mov	x1, x22	// tmp125, tmp137
	b	.L143		//
.L157:
	b	.L143		//
.L172:
	ldr	x1, [sp, 40]	// tmp186, D.119628
	ldr	x2, [x20]	// tmp187,
	subs	x1, x1, x2	// tmp186, tmp187
	mov	x2, 0	// tmp187
	bne	.L167		//,
.L168:
.LEHB17:
	bl	_Unwind_Resume		//
.LEHE17:
.L159:
// main.cpp:64:     } catch(const exception&) { throw invalid_argument("Valor inválido para " + name); }
	mov	x19, x0	// tmp149, tmp174
	b	.L153		//
.L161:
// main.cpp:64:     } catch(const exception&) { throw invalid_argument("Valor inválido para " + name); }
	mov	x19, x0	// tmp153, tmp175
	b	.L154		//
	.cfi_endproc
.LFE4471:
	.section	.gcc_except_table
	.align	2
.LLSDA4471:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT4471-.LLSDATTD4471
.LLSDATTD4471:
	.byte	0x1
	.uleb128 .LLSDACSE4471-.LLSDACSB4471
.LLSDACSB4471:
	.uleb128 .LEHB11-.LFB4471
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L162-.LFB4471
	.uleb128 0x3
	.uleb128 .LEHB12-.LFB4471
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L158-.LFB4471
	.uleb128 0x3
	.uleb128 .LEHB13-.LFB4471
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L157-.LFB4471
	.uleb128 0x1
	.uleb128 .LEHB14-.LFB4471
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L159-.LFB4471
	.uleb128 0
	.uleb128 .LEHB15-.LFB4471
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L160-.LFB4471
	.uleb128 0
	.uleb128 .LEHB16-.LFB4471
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L161-.LFB4471
	.uleb128 0
	.uleb128 .LEHB17-.LFB4471
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE4471:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align	2
	.4byte	DW.ref._ZTISt9exception-.
.LLSDATT4471:
	.text
	.size	_Z7decimalRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_, .-_Z7decimalRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_
	.section	.rodata.str1.8
	.align	3
.LC28:
	.string	"Incendio secuencial C++17. Coordenadas de base 0.\n"
	.align	3
.LC29:
	.string	"--rows N --cols N --steps N --seed N --moisture X [0,1]\n"
	.align	3
.LC30:
	.string	"--wind-dir N|NE|E|SE|S|SW|W|NW --wind X [0,1]\n"
	.align	3
.LC31:
	.string	"--fire-row N --fire-col N --visual|--measure|--profile --delay MS --ascii --no-color\n"
	.align	3
.LC32:
	.string	"--profile: diagn\303\263stico de tiempos por fase, separado de la medici\303\263n habitual.\n"
	.align	3
.LC33:
	.string	"En modo visual: + acelera, - frena, espacio pausa, n avanza un paso, q termina.\n"
	.align	3
.LC34:
	.string	"Por defecto: 30x60, 80 pasos, semilla 42, humedad .28, viento E .6, foco (filas/2,columnas/5), medici\303\263n; pausa visual 180 ms.\n"
	.text
	.align	2
	.p2align 4,,11
	.global	_Z4helpv
	.type	_Z4helpv, %function
_Z4helpv:
.LFB4472:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	mov	x2, 50	//,
	adrp	x1, .LC28	// tmp93,
// main.cpp:66: void help() {
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -16
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC28	//, tmp93,
	adrp	x19, :got:_ZSt4cout	// tmp94,
	ldr	x19, [x19, :got_lo12:_ZSt4cout]	// tmp94,
	mov	x0, x19	//, tmp94
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
	mov	x0, x19	//, tmp94
	mov	x2, 56	//,
	adrp	x1, .LC29	// tmp96,
	add	x1, x1, :lo12:.LC29	//, tmp96,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
	mov	x0, x19	//, tmp94
	mov	x2, 46	//,
	adrp	x1, .LC30	// tmp99,
	add	x1, x1, :lo12:.LC30	//, tmp99,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
	mov	x0, x19	//, tmp94
	mov	x2, 85	//,
	adrp	x1, .LC31	// tmp102,
	add	x1, x1, :lo12:.LC31	//, tmp102,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
	mov	x0, x19	//, tmp94
	mov	x2, 80	//,
	adrp	x1, .LC32	// tmp105,
	add	x1, x1, :lo12:.LC32	//, tmp105,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
	mov	x0, x19	//, tmp94
	mov	x2, 80	//,
	adrp	x1, .LC33	// tmp108,
	add	x1, x1, :lo12:.LC33	//, tmp108,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
	mov	x0, x19	//, tmp94
	adrp	x1, .LC34	// tmp111,
// main.cpp:74: }
	ldr	x19, [sp, 16]	//,
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC34	//, tmp111,
// main.cpp:74: }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	mov	x2, 127	//,
	b	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
	.cfi_endproc
.LFE4472:
	.size	_Z4helpv, .-_Z4helpv
	.section	.rodata.str1.8
	.align	3
.LC35:
	.string	"--help"
	.align	3
.LC36:
	.string	"--measure"
	.align	3
.LC37:
	.string	"--profile"
	.align	3
.LC38:
	.string	"--ascii"
	.align	3
.LC39:
	.string	"--no-color"
	.align	3
.LC40:
	.string	"Falta valor para "
	.align	3
.LC41:
	.string	"--rows"
	.align	3
.LC42:
	.string	"--cols"
	.align	3
.LC43:
	.string	"--steps"
	.align	3
.LC44:
	.string	"--seed"
	.align	3
.LC45:
	.string	"Semilla fuera de rango"
	.align	3
.LC46:
	.string	"--moisture"
	.align	3
.LC47:
	.string	"--wind"
	.align	3
.LC48:
	.string	"--fire-row"
	.align	3
.LC49:
	.string	"--fire-col"
	.align	3
.LC50:
	.string	"--delay"
	.align	3
.LC51:
	.string	"--delay debe estar en [0,60000]"
	.align	3
.LC52:
	.string	"--wind-dir"
	.align	3
.LC53:
	.string	"Direcci\303\263n de viento: N, NE, E, SE, S, SW, W o NW"
	.align	3
.LC54:
	.string	"Opci\303\263n desconocida: "
	.align	3
.LC55:
	.string	"--profile no se combina con --visual"
	.align	3
.LC56:
	.string	"Filas, columnas e iteraciones deben ser positivas"
	.align	3
.LC57:
	.string	"Dimensiones demasiado grandes"
	.align	3
.LC58:
	.string	"Humedad y viento deben estar en [0,1]"
	.align	3
.LC59:
	.string	"Foco fuera del terreno (coordenadas desde 0)"
	.text
	.align	2
	.p2align 4,,11
	.global	_Z5parseiPPc
	.type	_Z5parseiPPc, %function
_Z5parseiPPc:
.LFB4473:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4473
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
// main.cpp:25: struct Options {
	adrp	x2, .LC60	// tmp704,
	adrp	x3, .LC62	// tmp707,
// main.cpp:75: Options parse(int argc, char** argv) {
	mov	x29, sp	//,
	stp	x19, x20, [sp, 16]	//,,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x5, x8, 48	// tmp606, <retval>,
	.cfi_offset 19, -80
	.cfi_offset 20, -72
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	mov	x20, 1	// tmp231,
// main.cpp:75: Options parse(int argc, char** argv) {
	stp	x21, x22, [sp, 32]	//,,
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	mov	x22, x8	// <retval>, tmp623
	stp	x23, x24, [sp, 48]	//,,
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	mov	w24, w0	// argc, tmp624
// main.cpp:25: struct Options {
	mov	w0, 180	// tmp235,
// main.cpp:75: Options parse(int argc, char** argv) {
	stp	x25, x26, [sp, 64]	//,,
// main.cpp:25: struct Options {
	mvni	v1.4s, 0	// tmp233
// main.cpp:75: Options parse(int argc, char** argv) {
	stp	x27, x28, [sp, 80]	//,,
	sub	sp, sp, #432	//,,
	.cfi_def_cfa_offset 528
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	.cfi_offset 28, -8
// main.cpp:25: struct Options {
	ldr	d3, [x2, #:lo12:.LC60]	// tmp223,
	adrp	x2, .LC61	// tmp705,
	ldr	d2, [x3, #:lo12:.LC62]	// tmp224,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x5, [sp, 24]	// tmp606, %sfp
// main.cpp:25: struct Options {
	mov	x3, 80	// tmp221,
	ldr	q0, [x2, #:lo12:.LC61]	// tmp220,
// main.cpp:75: Options parse(int argc, char** argv) {
	adrp	x2, :got:__stack_chk_guard	// tmp215,
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]	// tmp215,
	ldr	x4, [x2]	// tmp665,
	str	x4, [sp, 424]	// tmp665, D.120003
	mov	x4, 0	// tmp665
// main.cpp:25: struct Options {
	mov	w2, 42	// tmp222,
	str	w2, [x8, 24]	// tmp222, *o_64(D).seed
// main.cpp:25: struct Options {
	add	w2, w2, 16773120	// tmp234, tmp222,
// /usr/include/c++/13/bits/basic_string.h:230: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x4, x8, 64	// tmp228, <retval>,
// main.cpp:25: struct Options {
	add	w2, w2, 4054	// tmp234, tmp234,
// main.cpp:25: struct Options {
	str	q0, [x8]	// tmp220, MEM <vector(2) long unsigned int> [(long unsigned int *)o_64(D)]
	str	x3, [x8, 16]	// tmp221, *o_64(D).steps
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	mov	w3, 69	// tmp232,
// main.cpp:25: struct Options {
	str	d3, [x8, 28]	// tmp223, MEM <vector(2) float> [(float *)o_64(D) + 28B]
	str	d2, [x8, 36]	// tmp224, MEM <vector(2) int> [(int *)o_64(D) + 36B]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x4, x20, [x8, 48]	// tmp228, tmp231, MEM[(struct _Alloc_hider *)o_64(D) + 48B]._M_p
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strh	w3, [x8, 64]	// tmp232, MEM <vector(2) char> [(char_type &)o_64(D) + 64]
// main.cpp:25: struct Options {
	str	q1, [x8, 80]	// tmp233, MEM <vector(2) long unsigned int> [(long unsigned int *)o_64(D) + 80B]
	str	w2, [x8, 96]	// tmp234, MEM <vector(4) unsigned char> [(bool *)o_64(D) + 96B]
	strh	wzr, [x8, 100]	//, MEM <vector(2) unsigned char> [(bool *)o_64(D) + 100B]
	strb	wzr, [x8, 102]	//, *o_64(D).paused
	str	w0, [x8, 104]	// tmp235, *o_64(D).delay
// main.cpp:77:     for (int i=1;i<argc;++i) {
	cmp	w24, 1	// argc,
	ble	.L312		//,
// /usr/include/c++/13/bits/basic_string.h:3731: 	       && !_Traits::compare(__lhs.data(), __rhs, __lhs.size());
	mov	x27, 11565	// tmp621,
	add	x0, sp, 40	// tmp611,,
	movk	x27, 0x6976, lsl 16	// tmp621,,
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	w28, 11565	// tmp622,
// /usr/include/c++/13/bits/basic_string.h:3731: 	       && !_Traits::compare(__lhs.data(), __rhs, __lhs.size());
	movk	x27, 0x7573, lsl 32	// tmp621,,
	mov	x25, x1	// argv, tmp625
	add	x23, sp, 56	// tmp612,,
	movk	x27, 0x6c61, lsl 48	// tmp621,,
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	movk	w28, 0x6568, lsl 16	// tmp622,,
	str	x0, [sp]	// tmp611, %sfp
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	add	x0, sp, 32	// tmp618,,
	str	x0, [sp, 8]	// tmp618, %sfp
	.p2align 3,,7
.L272:
// main.cpp:78:         string a=argv[i];
	ldr	x21, [x25, w20, sxtw 3]	// _4, *_3
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x23, [sp, 40]	// tmp612, MEM[(struct _Alloc_hider *)&a]._M_p
// main.cpp:78:         string a=argv[i];
	sbfiz	x26, x20, 3, 32	// _2, i,,
// /usr/include/c++/13/bits/basic_string.h:645: 	if (__s == 0)
	cbz	x21, .L387	// _4,
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x0, x21	//, _4
	bl	strlen		//
// /usr/include/c++/13/bits/basic_string.tcc:225: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	str	x0, [sp, 32]	// _262, MEM[(long unsigned int *)_498]
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x19, x0	// _262, tmp626
// /usr/include/c++/13/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	x0, 15	// _262,
	bhi	.L388		//,
// /usr/include/c++/13/bits/basic_string.h:427: 	if (__n == 1)
	cmp	x0, 1	// _262,
	bne	.L181		//,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	ldrb	w0, [x21]	// _269, MEM[(const char_type &)_4]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	w0, [sp, 56]	// _269, MEM[(char_type &)&a + 16]
.L183:
	mov	x0, x23	// prephitmp_610, tmp612
.L182:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x19, [sp, 48]	// _262, a._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x0, x19]	//, MEM[(char_type &)_272]
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	ldr	x0, [sp, 48]	// _273, a._M_string_length
// /usr/include/c++/13/bits/basic_string.h:3731: 	       && !_Traits::compare(__lhs.data(), __rhs, __lhs.size());
	cmp	x0, 6	// _273,
	beq	.L389		//,
	cmp	x0, 8	// _273,
	bne	.L390		//,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 40]	// _506, a._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:3731: 	       && !_Traits::compare(__lhs.data(), __rhs, __lhs.size());
	ldr	x1, [x0]	// MEM <unsigned long> [(char * {ref-all})_634], MEM <unsigned long> [(char * {ref-all})_634]
	cmp	x1, x27	// MEM <unsigned long> [(char * {ref-all})_634], tmp621
	bne	.L188		//,
// main.cpp:80:         if (a=="--visual") { o.visual=true; continue; }
	mov	w1, 1	// tmp260,
	strb	w1, [x22, 96]	// tmp260, o_64(D)->visual
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	// _506, tmp612
	beq	.L271		//,
.L191:
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 56]	// a.D.50133._M_allocated_capacity, a.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, a.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L271:
// main.cpp:77:     for (int i=1;i<argc;++i) {
	add	w20, w20, 1	// i, i,
// main.cpp:77:     for (int i=1;i<argc;++i) {
	cmp	w24, w20	// argc, i
	bgt	.L272		//,
// main.cpp:104:     if(o.profile && o.visual) throw invalid_argument("--profile no se combina con --visual");
	ldrb	w0, [x22, 97]	// o_64(D)->profile, o_64(D)->profile
	tbz	x0, 0, .L275	// o_64(D)->profile,,
// main.cpp:104:     if(o.profile && o.visual) throw invalid_argument("--profile no se combina con --visual");
	ldrb	w0, [x22, 96]	// o_64(D)->visual, o_64(D)->visual
	tbnz	x0, 0, .L391	// o_64(D)->visual,,
.L275:
// main.cpp:105:     if (!o.rows || !o.cols || !o.steps) throw invalid_argument("Filas, columnas e iteraciones deben ser positivas");
	ldr	x0, [x22]	// pretmp_345, o_64(D)->rows
// main.cpp:105:     if (!o.rows || !o.cols || !o.steps) throw invalid_argument("Filas, columnas e iteraciones deben ser positivas");
	cbz	x0, .L274	// pretmp_345,
.L176:
// main.cpp:105:     if (!o.rows || !o.cols || !o.steps) throw invalid_argument("Filas, columnas e iteraciones deben ser positivas");
	ldr	x1, [x22, 8]	// _22, o_64(D)->cols
// main.cpp:105:     if (!o.rows || !o.cols || !o.steps) throw invalid_argument("Filas, columnas e iteraciones deben ser positivas");
	cbz	x1, .L274	// _22,
// main.cpp:105:     if (!o.rows || !o.cols || !o.steps) throw invalid_argument("Filas, columnas e iteraciones deben ser positivas");
	ldr	x2, [x22, 16]	// o_64(D)->steps, o_64(D)->steps
	cbz	x2, .L274	// o_64(D)->steps,
// main.cpp:106:     if (o.rows>numeric_limits<size_t>::max()/o.cols || o.rows*o.cols>numeric_limits<vector<Cell>::difference_type>::max()/2)
	umulh	x2, x1, x0	// tmp537, _22, pretmp_345
	cbnz	x2, .L281	// tmp537,
// main.cpp:106:     if (o.rows>numeric_limits<size_t>::max()/o.cols || o.rows*o.cols>numeric_limits<vector<Cell>::difference_type>::max()/2)
	mul	x3, x1, x0	// tmp539, _22, pretmp_345
// main.cpp:106:     if (o.rows>numeric_limits<size_t>::max()/o.cols || o.rows*o.cols>numeric_limits<vector<Cell>::difference_type>::max()/2)
	mov	x2, 4611686018427387903	// tmp540,
	cmp	x3, x2	// tmp539, tmp540
	bhi	.L281		//,
// main.cpp:108:     if (o.moisture<0 || o.moisture>1 || o.wind<0 || o.wind>1) throw invalid_argument("Humedad y viento deben estar en [0,1]");
	ldr	s1, [x22, 28]	// _29, o_64(D)->moisture
// main.cpp:108:     if (o.moisture<0 || o.moisture>1 || o.wind<0 || o.wind>1) throw invalid_argument("Humedad y viento deben estar en [0,1]");
	fcmpe	s1, #0.0	// _29
	bmi	.L284		//,
// main.cpp:108:     if (o.moisture<0 || o.moisture>1 || o.wind<0 || o.wind>1) throw invalid_argument("Humedad y viento deben estar en [0,1]");
	fmov	s0, 1.0e+0	// tmp547,
	fcmpe	s1, s0	// _29, tmp547
	bgt	.L284		//,
// main.cpp:108:     if (o.moisture<0 || o.moisture>1 || o.wind<0 || o.wind>1) throw invalid_argument("Humedad y viento deben estar en [0,1]");
	ldr	s1, [x22, 32]	// _30, o_64(D)->wind
// main.cpp:108:     if (o.moisture<0 || o.moisture>1 || o.wind<0 || o.wind>1) throw invalid_argument("Humedad y viento deben estar en [0,1]");
	fcmpe	s1, #0.0	// _30
	bmi	.L284		//,
// main.cpp:108:     if (o.moisture<0 || o.moisture>1 || o.wind<0 || o.wind>1) throw invalid_argument("Humedad y viento deben estar en [0,1]");
	fcmpe	s1, s0	// _30, tmp547
	bgt	.L284		//,
// main.cpp:109:     if (o.fire_row==numeric_limits<size_t>::max()) o.fire_row=o.rows/2;
	ldr	x3, [x22, 80]	// _31, o_64(D)->fire_row
// main.cpp:109:     if (o.fire_row==numeric_limits<size_t>::max()) o.fire_row=o.rows/2;
	cmn	x3, #1	// _31,
	bne	.L288		//,
// main.cpp:109:     if (o.fire_row==numeric_limits<size_t>::max()) o.fire_row=o.rows/2;
	lsr	x3, x0, 1	// _31, pretmp_345,
// main.cpp:109:     if (o.fire_row==numeric_limits<size_t>::max()) o.fire_row=o.rows/2;
	str	x3, [x22, 80]	// _31, o_64(D)->fire_row
.L288:
// main.cpp:110:     if (o.fire_col==numeric_limits<size_t>::max()) o.fire_col=o.cols/5;
	ldr	x2, [x22, 88]	// _33, o_64(D)->fire_col
// main.cpp:110:     if (o.fire_col==numeric_limits<size_t>::max()) o.fire_col=o.cols/5;
	cmn	x2, #1	// _33,
	bne	.L289		//,
// main.cpp:110:     if (o.fire_col==numeric_limits<size_t>::max()) o.fire_col=o.cols/5;
	mov	x2, -3689348814741910324	// tmp556,
	movk	x2, 0xcccd, lsl 0	// tmp556,,
	umulh	x2, x1, x2	// tmp555, _22, tmp556
	lsr	x2, x2, 2	// _33, tmp555,
// main.cpp:110:     if (o.fire_col==numeric_limits<size_t>::max()) o.fire_col=o.cols/5;
	str	x2, [x22, 88]	// _33, o_64(D)->fire_col
.L289:
// main.cpp:111:     if (o.fire_row>=o.rows || o.fire_col>=o.cols) throw invalid_argument("Foco fuera del terreno (coordenadas desde 0)");
	cmp	x3, x0	// _31, pretmp_345
	bcs	.L290		//,
// main.cpp:111:     if (o.fire_row>=o.rows || o.fire_col>=o.cols) throw invalid_argument("Foco fuera del terreno (coordenadas desde 0)");
	cmp	x1, x2	// _22, _33
	bls	.L290		//,
// main.cpp:113: }
	adrp	x0, :got:__stack_chk_guard	// tmp605,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp605,
	ldr	x2, [sp, 424]	// tmp692, D.120003
	ldr	x1, [x0]	// tmp693,
	subs	x2, x2, x1	// tmp692, tmp693
	mov	x1, 0	// tmp693
	bne	.L385		//,
	add	sp, sp, 432	//,,
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
.L390:
	.cfi_restore_state
// /usr/include/c++/13/bits/basic_string.h:3731: 	       && !_Traits::compare(__lhs.data(), __rhs, __lhs.size());
	cmp	x0, 9	// _273,
	bne	.L193		//,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 40]	// _506, a._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	x2, 11565	// tmp713,
	movk	x2, 0x656d, lsl 16	// tmp713,,
	movk	x2, 0x7361, lsl 32	// tmp713,,
	ldr	x1, [x0]	// MEM <char[1:9]> [(void *)_407], MEM <char[1:9]> [(void *)_407]
	movk	x2, 0x7275, lsl 48	// tmp713,,
	cmp	x1, x2	// MEM <char[1:9]> [(void *)_407], tmp713
	beq	.L392		//,
.L194:
	mov	x2, 11565	// tmp714,
	movk	x2, 0x7270, lsl 16	// tmp714,,
	movk	x2, 0x666f, lsl 32	// tmp714,,
	movk	x2, 0x6c69, lsl 48	// tmp714,,
	cmp	x1, x2	// MEM <char[1:9]> [(void *)_407], tmp714
	beq	.L393		//,
	.p2align 3,,7
.L188:
// main.cpp:85:         if (i+1>=argc) throw invalid_argument("Falta valor para " + a);
	add	w20, w20, 1	// i, i,
// main.cpp:85:         if (i+1>=argc) throw invalid_argument("Falta valor para " + a);
	cmp	w20, w24	// i, argc
	bge	.L394		//,
// main.cpp:86:         string v=argv[++i];
	add	x0, x25, x26	// tmp305, argv, _2
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x1, sp, 72	// tmp613,,
	add	x26, sp, 88	// tmp614,,
	str	x1, [sp, 16]	// tmp613, %sfp
	str	x26, [sp, 72]	// tmp614, MEM[(struct _Alloc_hider *)&v]._M_p
// main.cpp:86:         string v=argv[++i];
	ldr	x21, [x0, 8]	// _9, *_8
// /usr/include/c++/13/bits/basic_string.h:645: 	if (__s == 0)
	cbz	x21, .L395	// _9,
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x0, x21	//, _9
	bl	strlen		//
// /usr/include/c++/13/bits/basic_string.tcc:225: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	str	x0, [sp, 32]	// prephitmp_47, MEM[(long unsigned int *)_498]
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x19, x0	// prephitmp_47, tmp629
// /usr/include/c++/13/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	x0, 15	// prephitmp_47,
	bhi	.L396		//,
// /usr/include/c++/13/bits/basic_string.h:427: 	if (__n == 1)
	cmp	x0, 1	// prephitmp_47,
	beq	.L397		//,
// /usr/include/c++/13/bits/char_traits.h:429: 	if (__n == 0)
	cbnz	x0, .L398	// prephitmp_47,
.L214:
	mov	x0, x26	// pretmp_518, tmp614
.L213:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x19, [sp, 80]	// prephitmp_47, v._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x0, x19]	//, MEM[(char_type &)_314]
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	ldr	x0, [sp, 48]	// _315, a._M_string_length
// /usr/include/c++/13/bits/basic_string.h:3731: 	       && !_Traits::compare(__lhs.data(), __rhs, __lhs.size());
	cmp	x0, 6	// _315,
	beq	.L399		//,
	cmp	x0, 7	// _315,
	bne	.L400		//,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [sp, 40]	// _41, a._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	w2, 11565	// tmp338,
	movk	w2, 0x7473, lsl 16	// tmp338,,
	ldr	w0, [x1]	//, MEM <char[1:7]> [(void *)_41]
	cmp	w0, w2	// MEM <char[1:7]> [(void *)_41], tmp338
	beq	.L401		//,
.L226:
	mov	w2, 11565	// tmp397,
	movk	w2, 0x6564, lsl 16	// tmp397,,
	cmp	w0, w2	// MEM <char[1:7]> [(void *)_41], tmp397
	bne	.L239		//,
	ldrh	w2, [x1, 4]	// MEM <char[1:7]> [(void *)_41], MEM <char[1:7]> [(void *)_41]
	mov	w0, 24940	// tmp400,
	cmp	w2, w0	// MEM <char[1:7]> [(void *)_41], tmp400
	bne	.L239		//,
	ldrb	w0, [x1, 6]	// MEM <char[1:7]> [(void *)_41], MEM <char[1:7]> [(void *)_41]
	cmp	w0, 121	// MEM <char[1:7]> [(void *)_41],
	bne	.L239		//,
// main.cpp:95:         else if (a=="--delay") { auto n=number(v,a); if(n>60000) throw invalid_argument("--delay debe estar en [0,60000]"); o.delay=static_cast<unsigned>(n); }
	ldr	x1, [sp]	//, %sfp
	ldr	x0, [sp, 16]	//, %sfp
.LEHB18:
	bl	_Z6numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_		//
.LEHE18:
// main.cpp:95:         else if (a=="--delay") { auto n=number(v,a); if(n>60000) throw invalid_argument("--delay debe estar en [0,60000]"); o.delay=static_cast<unsigned>(n); }
	mov	x1, 60000	// tmp404,
	cmp	x0, x1	// _175, tmp404
	bhi	.L402		//,
// main.cpp:95:         else if (a=="--delay") { auto n=number(v,a); if(n>60000) throw invalid_argument("--delay debe estar en [0,60000]"); o.delay=static_cast<unsigned>(n); }
	str	w0, [x22, 104]	// _175, o_64(D)->delay
	b	.L219		//
	.p2align 2,,3
.L389:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldr	x0, [sp, 40]	// a._M_dataplus._M_p, a._M_dataplus._M_p
	ldr	w1, [x0]	//, MEM <char[1:6]> [(void *)_633]
	cmp	w1, w28	// MEM <char[1:6]> [(void *)_633], tmp622
	bne	.L188		//,
	ldrh	w1, [x0, 4]	// MEM <char[1:6]> [(void *)_633], MEM <char[1:6]> [(void *)_633]
	mov	w0, 28780	// tmp257,
	cmp	w1, w0	// MEM <char[1:6]> [(void *)_633], tmp257
	bne	.L188		//,
.LEHB19:
// main.cpp:79:         if (a=="--help") { help(); exit(0); }
	bl	_Z4helpv		//
.LEHE19:
// main.cpp:79:         if (a=="--help") { help(); exit(0); }
	mov	w0, 0	//,
	bl	exit		//
	.p2align 2,,3
.L181:
// /usr/include/c++/13/bits/char_traits.h:429: 	if (__n == 0)
	cbz	x0, .L183	// _262,
	mov	x0, x23	// _266, tmp612
	b	.L180		//
	.p2align 2,,3
.L388:
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	ldp	x0, x1, [sp]	//,, %sfp
	mov	x2, 0	//,
.LEHB20:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm		//
.LEHE20:
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [sp, 32]	// MEM[(long unsigned int *)_498], MEM[(long unsigned int *)_498]
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 40]	// _266, a._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 56]	// MEM[(long unsigned int *)_498], a.D.50133._M_allocated_capacity
.L180:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x19	//, _262
	mov	x1, x21	//, _4
	bl	memcpy		//
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldp	x19, x0, [sp, 32]	// _262, prephitmp_610, MEM[(long unsigned int *)_498]
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	b	.L182		//
	.p2align 2,,3
.L193:
// /usr/include/c++/13/bits/basic_string.h:3731: 	       && !_Traits::compare(__lhs.data(), __rhs, __lhs.size());
	cmp	x0, 7	// _273,
	bne	.L201		//,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 40]	// _506, a._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	w1, 11565	// tmp280,
	movk	w1, 0x7361, lsl 16	// tmp280,,
	ldr	w2, [x0]	//, MEM <char[1:7]> [(void *)_431]
	cmp	w2, w1	// MEM <char[1:7]> [(void *)_431], tmp280
	bne	.L188		//,
	ldrh	w2, [x0, 4]	// MEM <char[1:7]> [(void *)_431], MEM <char[1:7]> [(void *)_431]
	mov	w1, 26979	// tmp283,
	cmp	w2, w1	// MEM <char[1:7]> [(void *)_431], tmp283
	bne	.L188		//,
	ldrb	w1, [x0, 6]	// MEM <char[1:7]> [(void *)_431], MEM <char[1:7]> [(void *)_431]
	cmp	w1, 105	// MEM <char[1:7]> [(void *)_431],
	bne	.L188		//,
// main.cpp:83:         if (a=="--ascii") { o.ascii=true; continue; }
	mov	w1, 1	// tmp285,
	strb	w1, [x22, 98]	// tmp285, o_64(D)->ascii
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	// _506, tmp612
	bne	.L191		//,
	b	.L271		//
	.p2align 2,,3
.L201:
// /usr/include/c++/13/bits/basic_string.h:3731: 	       && !_Traits::compare(__lhs.data(), __rhs, __lhs.size());
	cmp	x0, 10	// _273,
	bne	.L188		//,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 40]	// _506, a._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	x1, 11565	// tmp290,
	movk	x1, 0x6f6e, lsl 16	// tmp290,,
	movk	x1, 0x632d, lsl 32	// tmp290,,
	ldr	x2, [x0]	// MEM <char[1:10]> [(void *)_524], MEM <char[1:10]> [(void *)_524]
	movk	x1, 0x6c6f, lsl 48	// tmp290,,
	cmp	x2, x1	// MEM <char[1:10]> [(void *)_524], tmp290
	bne	.L188		//,
	ldrh	w2, [x0, 8]	// MEM <char[1:10]> [(void *)_524], MEM <char[1:10]> [(void *)_524]
	mov	w1, 29295	// tmp293,
	cmp	w2, w1	// MEM <char[1:10]> [(void *)_524], tmp293
	bne	.L188		//,
// main.cpp:84:         if (a=="--no-color") { o.color=false; continue; }
	strb	wzr, [x22, 99]	//, o_64(D)->color
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	// _506, tmp612
	bne	.L191		//,
	b	.L271		//
	.p2align 2,,3
.L392:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldrb	w2, [x0, 8]	// MEM <char[1:9]> [(void *)_407], MEM <char[1:9]> [(void *)_407]
	cmp	w2, 101	// MEM <char[1:9]> [(void *)_407],
	bne	.L194		//,
// main.cpp:81:         if (a=="--measure") { o.visual=false; continue; }
	strb	wzr, [x22, 96]	//, o_64(D)->visual
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	// _506, tmp612
	bne	.L191		//,
	b	.L271		//
	.p2align 2,,3
.L397:
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	ldrb	w0, [x21]	// _311, MEM[(const char_type &)_9]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	w0, [sp, 88]	// _311, MEM[(char_type &)&v + 16]
// /usr/include/c++/13/bits/char_traits.h:359:       }
	b	.L214		//
	.p2align 2,,3
.L393:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldrb	w1, [x0, 8]	// MEM <char[1:9]> [(void *)_407], MEM <char[1:9]> [(void *)_407]
	cmp	w1, 101	// MEM <char[1:9]> [(void *)_407],
	bne	.L188		//,
// main.cpp:82:         if (a=="--profile") { o.profile=true; continue; }
	mov	w1, 1	// tmp275,
	strb	w1, [x22, 97]	// tmp275, o_64(D)->profile
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	// _506, tmp612
	bne	.L191		//,
	b	.L271		//
	.p2align 2,,3
.L399:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [sp, 40]	// _457, a._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	w2, 11565	// tmp322,
	movk	w2, 0x6f72, lsl 16	// tmp322,,
	ldr	w0, [x1]	//, MEM <char[1:6]> [(void *)_457]
	cmp	w0, w2	// MEM <char[1:6]> [(void *)_457], tmp322
	beq	.L403		//,
.L216:
	mov	w2, 11565	// tmp330,
	movk	w2, 0x6f63, lsl 16	// tmp330,,
	cmp	w0, w2	// MEM <char[1:6]> [(void *)_457], tmp330
	beq	.L404		//,
.L220:
	mov	w2, 11565	// tmp347,
	movk	w2, 0x6573, lsl 16	// tmp347,,
	cmp	w0, w2	// MEM <char[1:6]> [(void *)_457], tmp347
	beq	.L405		//,
.L229:
	mov	w2, 11565	// tmp371,
	movk	w2, 0x6977, lsl 16	// tmp371,,
	cmp	w0, w2	// MEM <char[1:6]> [(void *)_457], tmp371
	beq	.L406		//,
.L239:
// main.cpp:102:         } else throw invalid_argument("Opción desconocida: " + a);
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// main.cpp:102:         } else throw invalid_argument("Opción desconocida: " + a);
	ldp	x1, x2, [sp, 40]	//,, MEM[(char * *)&a]
	add	x19, sp, 168	// tmp617,,
// main.cpp:102:         } else throw invalid_argument("Opción desconocida: " + a);
	mov	x20, x0	// _134, tmp644
// main.cpp:102:         } else throw invalid_argument("Opción desconocida: " + a);
	mov	x8, x19	//, tmp617
	adrp	x0, .LC54	// tmp503,
	add	x0, x0, :lo12:.LC54	//, tmp503,
.LEHB21:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.isra.0		//
.LEHE21:
// main.cpp:102:         } else throw invalid_argument("Opción desconocida: " + a);
	mov	x1, x19	//, tmp617
	mov	x0, x20	//, _134
.LEHB22:
	bl	_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE		//
.LEHE22:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x0, x19	//, tmp617
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
// main.cpp:102:         } else throw invalid_argument("Opción desconocida: " + a);
	adrp	x0, :got:__stack_chk_guard	// tmp507,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp507,
	ldr	x2, [sp, 424]	// tmp678, D.120003
	ldr	x1, [x0]	// tmp679,
	subs	x2, x2, x1	// tmp678, tmp679
	mov	x1, 0	// tmp679
	bne	.L385		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x20	//, _134
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB23:
	bl	__cxa_throw		//
.LEHE23:
	.p2align 2,,3
.L396:
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	ldr	x0, [sp, 16]	//, %sfp
	add	x1, sp, 32	//,,
	mov	x2, 0	//,
.LEHB24:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm		//
.LEHE24:
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [sp, 32]	// MEM[(long unsigned int *)_498], MEM[(long unsigned int *)_498]
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 72]	// _308, v._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 88]	// MEM[(long unsigned int *)_498], v.D.50133._M_allocated_capacity
.L211:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x19	//, prephitmp_47
	mov	x1, x21	//, _9
	bl	memcpy		//
// /usr/include/c++/13/bits/basic_string.tcc:251: 	_M_set_length(__dnew);
	ldr	x19, [sp, 32]	// prephitmp_47, MEM[(long unsigned int *)_498]
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 72]	// pretmp_518, v._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	b	.L213		//
	.p2align 2,,3
.L398:
	mov	x0, x26	// _308, tmp614
	b	.L211		//
.L401:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldrh	w3, [x1, 4]	// MEM <char[1:7]> [(void *)_41], MEM <char[1:7]> [(void *)_41]
	mov	w2, 28773	// tmp341,
	cmp	w3, w2	// MEM <char[1:7]> [(void *)_41], tmp341
	bne	.L226		//,
	ldrb	w2, [x1, 6]	// MEM <char[1:7]> [(void *)_41], MEM <char[1:7]> [(void *)_41]
	cmp	w2, 115	// MEM <char[1:7]> [(void *)_41],
	bne	.L226		//,
// main.cpp:89:         else if (a=="--steps") o.steps=number(v,a);
	ldr	x1, [sp]	//, %sfp
	ldr	x0, [sp, 16]	//, %sfp
.LEHB25:
	bl	_Z6numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_		//
// main.cpp:89:         else if (a=="--steps") o.steps=number(v,a);
	str	x0, [x22, 16]	// tmp633, o_64(D)->steps
	b	.L219		//
	.p2align 2,,3
.L400:
// /usr/include/c++/13/bits/basic_string.h:3731: 	       && !_Traits::compare(__lhs.data(), __rhs, __lhs.size());
	cmp	x0, 10	// _315,
	bne	.L239		//,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [sp, 40]	// _510, a._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	x2, 11565	// tmp363,
	movk	x2, 0x6f6d, lsl 16	// tmp363,,
	movk	x2, 0x7369, lsl 32	// tmp363,,
	ldr	x0, [x1]	// MEM <char[1:10]> [(void *)_510], MEM <char[1:10]> [(void *)_510]
	movk	x2, 0x7574, lsl 48	// tmp363,,
	cmp	x0, x2	// MEM <char[1:10]> [(void *)_510], tmp363
	beq	.L407		//,
.L234:
	mov	x2, 11565	// tmp379,
	movk	x2, 0x6966, lsl 16	// tmp379,,
	movk	x2, 0x6572, lsl 32	// tmp379,,
	movk	x2, 0x722d, lsl 48	// tmp379,,
	cmp	x0, x2	// MEM <char[1:10]> [(void *)_510], tmp379
	beq	.L408		//,
.L240:
	mov	x2, 11565	// tmp388,
	movk	x2, 0x6966, lsl 16	// tmp388,,
	movk	x2, 0x6572, lsl 32	// tmp388,,
	movk	x2, 0x632d, lsl 48	// tmp388,,
	cmp	x0, x2	// MEM <char[1:10]> [(void *)_510], tmp388
	beq	.L409		//,
.L243:
	mov	x2, 11565	// tmp414,
	movk	x2, 0x6977, lsl 16	// tmp414,,
	movk	x2, 0x646e, lsl 32	// tmp414,,
	movk	x2, 0x642d, lsl 48	// tmp414,,
	cmp	x0, x2	// MEM <char[1:10]> [(void *)_510], tmp414
	bne	.L239		//,
	ldrh	w1, [x1, 8]	// MEM <char[1:10]> [(void *)_510], MEM <char[1:10]> [(void *)_510]
	mov	w0, 29289	// tmp417,
	cmp	w1, w0	// MEM <char[1:10]> [(void *)_510], tmp417
	bne	.L239		//,
// /usr/include/c++/13/bits/basic_string.h:1608: 	this->_M_assign(__str);
	ldp	x1, x0, [sp, 16]	//,, %sfp
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	w19, 0	// k,
// /usr/include/c++/13/bits/basic_string.h:1608: 	this->_M_assign(__str);
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_		//
// main.cpp:99:             const int xs[]={0,1,1,1,0,-1,-1,-1}, ys[]={-1,-1,0,1,1,1,0,-1};
	adrp	x0, .LANCHOR1	// tmp461,
	add	x0, x0, :lo12:.LANCHOR1	// tmp460, tmp461,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	mov	w3, 78	// tmp423,
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	w5, 17742	// tmp428,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strh	w3, [sp, 184]	// tmp423, MEM <vector(2) char> [(char_type &)_461]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x3, sp, 248	// tmp431,,
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	strh	w5, [sp, 216]	// tmp428, MEM <char[1:2]> [(void *)_461]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	mov	w5, 69	// tmp433,
// main.cpp:99:             const int xs[]={0,1,1,1,0,-1,-1,-1}, ys[]={-1,-1,0,1,1,1,0,-1};
	ldp	q0, q1, [x0]	// tmp464, tmp465,
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	mov	x2, 1	// tmp422,
	stp	x3, x2, [sp, 232]	// tmp431, tmp422, MEM[(struct _Alloc_hider *)_461]._M_p
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x3, sp, 280	// tmp435,,
// main.cpp:99:             const int xs[]={0,1,1,1,0,-1,-1,-1}, ys[]={-1,-1,0,1,1,1,0,-1};
	add	x4, sp, 104	// tmp615,,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strh	w5, [sp, 248]	// tmp433, MEM <vector(2) char> [(char_type &)_461]
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	w5, 17747	// tmp438,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x3, [sp, 264]	// tmp435, MEM[(struct _Alloc_hider *)_461]._M_p
	add	x3, sp, 312	// tmp441,,
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	strh	w5, [sp, 280]	// tmp438, MEM <char[1:2]> [(void *)_461]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	mov	w5, 83	// tmp443,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x1, sp, 184	// tmp421,,
	str	x3, [sp, 296]	// tmp441, MEM[(struct _Alloc_hider *)_461]._M_p
	add	x3, sp, 344	// tmp445,,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strh	w5, [sp, 312]	// tmp443, MEM <vector(2) char> [(char_type &)_461]
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	w5, 22355	// tmp448,
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x1, x2, [sp, 168]	// tmp421, tmp422, MEM[(struct _Alloc_hider *)_461]._M_p
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x1, sp, 216	// tmp425,,
	str	x3, [sp, 328]	// tmp445, MEM[(struct _Alloc_hider *)_461]._M_p
	add	x3, sp, 376	// tmp451,,
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	strh	w5, [sp, 344]	// tmp448, MEM <char[1:2]> [(void *)_461]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	mov	w5, 87	// tmp453,
// main.cpp:99:             const int xs[]={0,1,1,1,0,-1,-1,-1}, ys[]={-1,-1,0,1,1,1,0,-1};
	stp	q0, q1, [x4]	// tmp464, tmp465, xs
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x1, [sp, 200]	// tmp425, MEM[(struct _Alloc_hider *)_461]._M_p
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	mov	x1, 2	// tmp429,
	str	x1, [sp, 208]	// tmp429, MEM[(struct basic_string *)_461]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 218]	//, MEM[(char_type &)_461]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x1, [sp, 272]	// tmp429, MEM[(struct basic_string *)_461]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 282]	//, MEM[(char_type &)_461]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x2, [sp, 304]	// tmp422, MEM[(struct basic_string *)_461]._M_string_length
	str	x1, [sp, 336]	// tmp429, MEM[(struct basic_string *)_461]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 346]	//, MEM[(char_type &)_461]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x3, [sp, 360]	// tmp451, MEM[(struct _Alloc_hider *)_461]._M_p
	add	x3, sp, 408	// tmp455,,
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x2, [sp, 368]	// tmp422, MEM[(struct basic_string *)_461]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strh	w5, [sp, 376]	// tmp453, MEM <vector(2) char> [(char_type &)_461]
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	w5, 22350	// tmp458,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x3, [sp, 392]	// tmp455, MEM[(struct _Alloc_hider *)_461]._M_p
// main.cpp:99:             const int xs[]={0,1,1,1,0,-1,-1,-1}, ys[]={-1,-1,0,1,1,1,0,-1};
	add	x3, sp, 136	// tmp616,,
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x1, [sp, 400]	// tmp429, MEM[(struct basic_string *)_461]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	strh	w5, [sp, 408]	// tmp458, MEM <char[1:2]> [(void *)_461]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 410]	//, MEM[(char_type &)_461]
// main.cpp:99:             const int xs[]={0,1,1,1,0,-1,-1,-1}, ys[]={-1,-1,0,1,1,1,0,-1};
	ldp	q0, q1, [x0, 32]	// tmp472, tmp473,
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	ldr	x0, [sp, 80]	// _680, v._M_string_length
// main.cpp:99:             const int xs[]={0,1,1,1,0,-1,-1,-1}, ys[]={-1,-1,0,1,1,1,0,-1};
	stp	q0, q1, [x3]	// tmp472, tmp473, ys
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	cmp	x0, x2	// _680,
	beq	.L410		//,
	cmp	x0, 2	// _680,
	bne	.L255		//,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 72]	// _112, v._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	ldrh	w1, [sp, 216]	// MEM <unsigned short> [(char * {ref-all})_461], MEM <unsigned short> [(char * {ref-all})_461]
	ldrh	w0, [x0]	// MEM <unsigned short> [(char * {ref-all})_112], MEM <unsigned short> [(char * {ref-all})_112]
	cmp	w0, w1	// MEM <unsigned short> [(char * {ref-all})_112], MEM <unsigned short> [(char * {ref-all})_461]
	bne	.L411		//,
// main.cpp:100:             bool ok=false; for(int k=0;k<8;++k) if(v==dirs[k]) {o.dx=xs[k];o.dy=ys[k];ok=true;break;}
	mov	w19, w2	// k, tmp422
.L253:
// main.cpp:100:             bool ok=false; for(int k=0;k<8;++k) if(v==dirs[k]) {o.dx=xs[k];o.dy=ys[k];ok=true;break;}
	sxtw	x0, w19	// k, k
	add	x21, sp, 392	// ivtmp.859,,
	add	x19, sp, 168	// tmp617,,
// main.cpp:100:             bool ok=false; for(int k=0;k<8;++k) if(v==dirs[k]) {o.dx=xs[k];o.dy=ys[k];ok=true;break;}
	ldr	w1, [x4, x0, lsl 2]	//, xs[k_37]
// main.cpp:100:             bool ok=false; for(int k=0;k<8;++k) if(v==dirs[k]) {o.dx=xs[k];o.dy=ys[k];ok=true;break;}
	ldr	w0, [x3, x0, lsl 2]	//, ys[k_37]
	stp	w1, w0, [x22, 36]	// xs[k_37], ys[k_37], o_64(D)->dx
	.p2align 3,,7
.L261:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x1, x21	// tmp498, ivtmp.859
	ldr	x0, [x1], 16	// _467, MEM[(char * *)_158]
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _467, tmp498
	beq	.L265		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x21, 16]	// MEM <size_type> [(union ._anon_87 *)_158 + 16B], MEM <size_type> [(union ._anon_87 *)_158 + 16B]
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM <size_type> [(union ._anon_87 *)_158 + 16B],
	bl	_ZdlPvm		//
// main.cpp:102:         } else throw invalid_argument("Opción desconocida: " + a);
	sub	x0, x21, #32	// ivtmp.859, ivtmp.859,
	cmp	x19, x21	// tmp617, ivtmp.859
	beq	.L219		//,
// main.cpp:100:             bool ok=false; for(int k=0;k<8;++k) if(v==dirs[k]) {o.dx=xs[k];o.dy=ys[k];ok=true;break;}
	mov	x21, x0	// ivtmp.859, ivtmp.859
	b	.L261		//
	.p2align 2,,3
.L403:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldrh	w3, [x1, 4]	// MEM <char[1:6]> [(void *)_457], MEM <char[1:6]> [(void *)_457]
	mov	w2, 29559	// tmp325,
	cmp	w3, w2	// MEM <char[1:6]> [(void *)_457], tmp325
	bne	.L216		//,
// main.cpp:87:         if (a=="--rows") o.rows=number(v,a);
	ldr	x1, [sp]	//, %sfp
	ldr	x0, [sp, 16]	//, %sfp
	bl	_Z6numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_		//
// main.cpp:87:         if (a=="--rows") o.rows=number(v,a);
	str	x0, [x22]	// tmp631, o_64(D)->rows
	b	.L219		//
	.p2align 2,,3
.L404:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldrh	w3, [x1, 4]	// MEM <char[1:6]> [(void *)_457], MEM <char[1:6]> [(void *)_457]
	mov	w2, 29548	// tmp333,
	cmp	w3, w2	// MEM <char[1:6]> [(void *)_457], tmp333
	bne	.L220		//,
// main.cpp:88:         else if (a=="--cols") o.cols=number(v,a);
	ldr	x1, [sp]	//, %sfp
	ldr	x0, [sp, 16]	//, %sfp
	bl	_Z6numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_		//
// main.cpp:88:         else if (a=="--cols") o.cols=number(v,a);
	str	x0, [x22, 8]	// tmp632, o_64(D)->cols
	b	.L219		//
.L312:
// main.cpp:77:     for (int i=1;i<argc;++i) {
	fmov	x0, d0	// pretmp_345, tmp220
	b	.L176		//
.L405:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldrh	w3, [x1, 4]	// MEM <char[1:6]> [(void *)_457], MEM <char[1:6]> [(void *)_457]
	mov	w2, 25701	// tmp350,
	cmp	w3, w2	// MEM <char[1:6]> [(void *)_457], tmp350
	bne	.L229		//,
// main.cpp:90:         else if (a=="--seed") { auto n=number(v,a); if(n>UINT32_MAX) throw invalid_argument("Semilla fuera de rango"); o.seed=static_cast<uint32_t>(n); }
	ldr	x1, [sp]	//, %sfp
	ldr	x0, [sp, 16]	//, %sfp
	bl	_Z6numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_		//
// main.cpp:90:         else if (a=="--seed") { auto n=number(v,a); if(n>UINT32_MAX) throw invalid_argument("Semilla fuera de rango"); o.seed=static_cast<uint32_t>(n); }
	mov	x1, 4294967295	// tmp353,
	cmp	x0, x1	// _197, tmp353
	bhi	.L412		//,
// main.cpp:90:         else if (a=="--seed") { auto n=number(v,a); if(n>UINT32_MAX) throw invalid_argument("Semilla fuera de rango"); o.seed=static_cast<uint32_t>(n); }
	str	w0, [x22, 24]	// _197, o_64(D)->seed
	.p2align 3,,7
.L219:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 72]	// _480, v._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x26	// _480, tmp614
	beq	.L269		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 88]	// v.D.50133._M_allocated_capacity, v.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, v.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L269:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 40]	// _474, a._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	// _474, tmp612
	bne	.L191		//,
	b	.L271		//
.L408:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldrh	w3, [x1, 8]	// MEM <char[1:10]> [(void *)_510], MEM <char[1:10]> [(void *)_510]
	mov	w2, 30575	// tmp382,
	cmp	w3, w2	// MEM <char[1:10]> [(void *)_510], tmp382
	bne	.L240		//,
// main.cpp:93:         else if (a=="--fire-row") {o.fire_row=number(v,a);o.fire_set=true;}
	ldr	x1, [sp]	//, %sfp
	ldr	x0, [sp, 16]	//, %sfp
	bl	_Z6numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_		//
// main.cpp:93:         else if (a=="--fire-row") {o.fire_row=number(v,a);o.fire_set=true;}
	mov	w1, 1	// tmp385,
// main.cpp:93:         else if (a=="--fire-row") {o.fire_row=number(v,a);o.fire_set=true;}
	str	x0, [x22, 80]	// tmp638, o_64(D)->fire_row
// main.cpp:93:         else if (a=="--fire-row") {o.fire_row=number(v,a);o.fire_set=true;}
	strb	w1, [x22, 100]	// tmp385, o_64(D)->fire_set
	b	.L219		//
.L265:
// main.cpp:102:         } else throw invalid_argument("Opción desconocida: " + a);
	sub	x0, x21, #32	// ivtmp.859, ivtmp.859,
	cmp	x19, x21	// tmp617, ivtmp.859
	beq	.L219		//,
// main.cpp:100:             bool ok=false; for(int k=0;k<8;++k) if(v==dirs[k]) {o.dx=xs[k];o.dy=ys[k];ok=true;break;}
	mov	x21, x0	// ivtmp.859, ivtmp.859
	b	.L261		//
.L407:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldrh	w3, [x1, 8]	// MEM <char[1:10]> [(void *)_510], MEM <char[1:10]> [(void *)_510]
	mov	w2, 25970	// tmp366,
	cmp	w3, w2	// MEM <char[1:10]> [(void *)_510], tmp366
	bne	.L234		//,
// main.cpp:91:         else if (a=="--moisture") o.moisture=decimal(v,a);
	ldr	x1, [sp]	//, %sfp
	ldr	x0, [sp, 16]	//, %sfp
	bl	_Z7decimalRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_		//
// main.cpp:91:         else if (a=="--moisture") o.moisture=decimal(v,a);
	str	s0, [x22, 28]	// tmp636, o_64(D)->moisture
	b	.L219		//
.L406:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldrh	w1, [x1, 4]	// MEM <char[1:6]> [(void *)_457], MEM <char[1:6]> [(void *)_457]
	mov	w0, 25710	// tmp374,
	cmp	w1, w0	// MEM <char[1:6]> [(void *)_457], tmp374
	bne	.L239		//,
// main.cpp:92:         else if (a=="--wind") o.wind=decimal(v,a);
	ldr	x1, [sp]	//, %sfp
	ldr	x0, [sp, 16]	//, %sfp
	bl	_Z7decimalRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_		//
.LEHE25:
// main.cpp:92:         else if (a=="--wind") o.wind=decimal(v,a);
	str	s0, [x22, 32]	// tmp637, o_64(D)->wind
	b	.L219		//
.L255:
// main.cpp:101:             if(!ok) throw invalid_argument("Dirección de viento: N, NE, E, SE, S, SW, W o NW");
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
	adrp	x1, .LC53	// tmp494,
	mov	x20, x0	// _163, tmp642
	add	x1, x1, :lo12:.LC53	//, tmp494,
.LEHB26:
	bl	_ZNSt16invalid_argumentC1EPKc		//
.LEHE26:
// main.cpp:101:             if(!ok) throw invalid_argument("Dirección de viento: N, NE, E, SE, S, SW, W o NW");
	adrp	x0, :got:__stack_chk_guard	// tmp495,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp495,
	ldr	x2, [sp, 424]	// tmp676, D.120003
	ldr	x1, [x0]	// tmp677,
	subs	x2, x2, x1	// tmp676, tmp677
	mov	x1, 0	// tmp677
	bne	.L385		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x20	//, _163
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB27:
	bl	__cxa_throw		//
.LEHE27:
	.p2align 2,,3
.L409:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldrh	w3, [x1, 8]	// MEM <char[1:10]> [(void *)_510], MEM <char[1:10]> [(void *)_510]
	mov	w2, 27759	// tmp391,
	cmp	w3, w2	// MEM <char[1:10]> [(void *)_510], tmp391
	bne	.L243		//,
// main.cpp:94:         else if (a=="--fire-col") {o.fire_col=number(v,a);o.fire_set=true;}
	ldr	x1, [sp]	//, %sfp
	ldr	x0, [sp, 16]	//, %sfp
.LEHB28:
	bl	_Z6numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_		//
.LEHE28:
// main.cpp:94:         else if (a=="--fire-col") {o.fire_col=number(v,a);o.fire_set=true;}
	mov	w1, 1	// tmp394,
// main.cpp:94:         else if (a=="--fire-col") {o.fire_col=number(v,a);o.fire_set=true;}
	str	x0, [x22, 88]	// tmp639, o_64(D)->fire_col
// main.cpp:94:         else if (a=="--fire-col") {o.fire_col=number(v,a);o.fire_set=true;}
	strb	w1, [x22, 100]	// tmp394, o_64(D)->fire_set
	b	.L219		//
.L410:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldr	x0, [sp, 72]	// v._M_dataplus._M_p, v._M_dataplus._M_p
	ldrb	w0, [x0]	// _623, MEM[(const unsigned char * {ref-all})_696]
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	cmp	w0, 78	// _623,
	beq	.L253		//,
	cmp	w0, 69	// _623,
	bne	.L413		//,
// main.cpp:100:             bool ok=false; for(int k=0;k<8;++k) if(v==dirs[k]) {o.dx=xs[k];o.dy=ys[k];ok=true;break;}
	mov	w19, w1	// k, tmp429
	b	.L253		//
.L411:
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	ldrh	w1, [sp, 280]	// MEM <unsigned short> [(char * {ref-all})_461], MEM <unsigned short> [(char * {ref-all})_461]
	cmp	w0, w1	// MEM <unsigned short> [(char * {ref-all})_112], MEM <unsigned short> [(char * {ref-all})_461]
	bne	.L414		//,
// main.cpp:100:             bool ok=false; for(int k=0;k<8;++k) if(v==dirs[k]) {o.dx=xs[k];o.dy=ys[k];ok=true;break;}
	mov	w19, 3	// k,
	b	.L253		//
.L413:
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	cmp	w0, 83	// _623,
	bne	.L415		//,
// main.cpp:100:             bool ok=false; for(int k=0;k<8;++k) if(v==dirs[k]) {o.dx=xs[k];o.dy=ys[k];ok=true;break;}
	mov	w19, 4	// k,
	b	.L253		//
.L414:
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	ldrh	w1, [sp, 344]	// MEM <unsigned short> [(char * {ref-all})_461], MEM <unsigned short> [(char * {ref-all})_461]
	cmp	w0, w1	// MEM <unsigned short> [(char * {ref-all})_112], MEM <unsigned short> [(char * {ref-all})_461]
	bne	.L416		//,
// main.cpp:100:             bool ok=false; for(int k=0;k<8;++k) if(v==dirs[k]) {o.dx=xs[k];o.dy=ys[k];ok=true;break;}
	mov	w19, 5	// k,
	b	.L253		//
.L415:
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	cmp	w0, 87	// _623,
	bne	.L255		//,
// main.cpp:100:             bool ok=false; for(int k=0;k<8;++k) if(v==dirs[k]) {o.dx=xs[k];o.dy=ys[k];ok=true;break;}
	mov	w19, 6	// k,
	b	.L253		//
.L416:
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	ldrh	w1, [sp, 408]	// MEM <unsigned short> [(char * {ref-all})_461], MEM <unsigned short> [(char * {ref-all})_461]
	cmp	w1, w0	// MEM <unsigned short> [(char * {ref-all})_461], MEM <unsigned short> [(char * {ref-all})_112]
	bne	.L255		//,
// main.cpp:100:             bool ok=false; for(int k=0;k<8;++k) if(v==dirs[k]) {o.dx=xs[k];o.dy=ys[k];ok=true;break;}
	mov	w19, 7	// k,
	b	.L253		//
.L387:
// /usr/include/c++/13/bits/basic_string.h:646: 	  std::__throw_logic_error(__N("basic_string: "
	adrp	x0, :got:__stack_chk_guard	// tmp239,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp239,
	ldr	x2, [sp, 424]	// tmp666, D.120003
	ldr	x1, [x0]	// tmp667,
	subs	x2, x2, x1	// tmp666, tmp667
	mov	x1, 0	// tmp667
	bne	.L385		//,
	adrp	x0, .LC20	// tmp241,
	add	x0, x0, :lo12:.LC20	//, tmp241,
.LEHB29:
	bl	_ZSt19__throw_logic_errorPKc		//
.LEHE29:
.L395:
	adrp	x0, :got:__stack_chk_guard	// tmp308,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp308,
	ldr	x2, [sp, 424]	// tmp670, D.120003
	ldr	x1, [x0]	// tmp671,
	subs	x2, x2, x1	// tmp670, tmp671
	mov	x1, 0	// tmp671
	bne	.L385		//,
	adrp	x0, .LC20	// tmp310,
	add	x0, x0, :lo12:.LC20	//, tmp310,
.LEHB30:
	bl	_ZSt19__throw_logic_errorPKc		//
.LEHE30:
.L327:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x1, x0	// tmp655,
	mov	x0, x19	//, tmp617
	mov	x19, x1	// tmp586, tmp655
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L302:
// main.cpp:102:         } else throw invalid_argument("Opción desconocida: " + a);
	mov	x0, x20	//, _134
	bl	__cxa_free_exception		//
.L297:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	ldr	x0, [sp, 16]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L295:
	ldr	x0, [sp]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L303:
	ldr	x0, [sp, 24]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	adrp	x0, :got:__stack_chk_guard	// tmp604,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp604,
	ldr	x2, [sp, 424]	// tmp690, D.120003
	ldr	x1, [x0]	// tmp691,
	subs	x2, x2, x1	// tmp690, tmp691
	mov	x1, 0	// tmp691
	beq	.L309		//,
.L385:
// main.cpp:113: }
	bl	__stack_chk_fail		//
.L326:
// main.cpp:102:         } else throw invalid_argument("Opción desconocida: " + a);
	mov	x19, x0	// tmp585, tmp656
	b	.L302		//
.L402:
// main.cpp:95:         else if (a=="--delay") { auto n=number(v,a); if(n>60000) throw invalid_argument("--delay debe estar en [0,60000]"); o.delay=static_cast<unsigned>(n); }
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// main.cpp:95:         else if (a=="--delay") { auto n=number(v,a); if(n>60000) throw invalid_argument("--delay debe estar en [0,60000]"); o.delay=static_cast<unsigned>(n); }
	adrp	x1, .LC51	// tmp407,
// main.cpp:95:         else if (a=="--delay") { auto n=number(v,a); if(n>60000) throw invalid_argument("--delay debe estar en [0,60000]"); o.delay=static_cast<unsigned>(n); }
	mov	x20, x0	// _178, tmp641
// main.cpp:95:         else if (a=="--delay") { auto n=number(v,a); if(n>60000) throw invalid_argument("--delay debe estar en [0,60000]"); o.delay=static_cast<unsigned>(n); }
	add	x1, x1, :lo12:.LC51	//, tmp407,
.LEHB31:
	bl	_ZNSt16invalid_argumentC1EPKc		//
.LEHE31:
// main.cpp:95:         else if (a=="--delay") { auto n=number(v,a); if(n>60000) throw invalid_argument("--delay debe estar en [0,60000]"); o.delay=static_cast<unsigned>(n); }
	adrp	x0, :got:__stack_chk_guard	// tmp408,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp408,
	ldr	x2, [sp, 424]	// tmp674, D.120003
	ldr	x1, [x0]	// tmp675,
	subs	x2, x2, x1	// tmp674, tmp675
	mov	x1, 0	// tmp675
	bne	.L385		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x20	//, _178
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB32:
	bl	__cxa_throw		//
.LEHE32:
.L274:
// main.cpp:105:     if (!o.rows || !o.cols || !o.steps) throw invalid_argument("Filas, columnas e iteraciones deben ser positivas");
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// main.cpp:105:     if (!o.rows || !o.cols || !o.steps) throw invalid_argument("Filas, columnas e iteraciones deben ser positivas");
	adrp	x1, .LC56	// tmp533,
// main.cpp:105:     if (!o.rows || !o.cols || !o.steps) throw invalid_argument("Filas, columnas e iteraciones deben ser positivas");
	mov	x20, x0	// _90, tmp646
// main.cpp:105:     if (!o.rows || !o.cols || !o.steps) throw invalid_argument("Filas, columnas e iteraciones deben ser positivas");
	add	x1, x1, :lo12:.LC56	//, tmp533,
.LEHB33:
	bl	_ZNSt16invalid_argumentC1EPKc		//
.LEHE33:
// main.cpp:105:     if (!o.rows || !o.cols || !o.steps) throw invalid_argument("Filas, columnas e iteraciones deben ser positivas");
	adrp	x0, :got:__stack_chk_guard	// tmp534,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp534,
	ldr	x2, [sp, 424]	// tmp682, D.120003
	ldr	x1, [x0]	// tmp683,
	subs	x2, x2, x1	// tmp682, tmp683
	mov	x1, 0	// tmp683
	bne	.L385		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x20	//, _90
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB34:
	bl	__cxa_throw		//
.LEHE34:
.L281:
// main.cpp:107:         throw invalid_argument("Dimensiones demasiado grandes");
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// main.cpp:107:         throw invalid_argument("Dimensiones demasiado grandes");
	adrp	x1, .LC57	// tmp543,
// main.cpp:107:         throw invalid_argument("Dimensiones demasiado grandes");
	mov	x20, x0	// _85, tmp647
// main.cpp:107:         throw invalid_argument("Dimensiones demasiado grandes");
	add	x1, x1, :lo12:.LC57	//, tmp543,
.LEHB35:
	bl	_ZNSt16invalid_argumentC1EPKc		//
.LEHE35:
// main.cpp:107:         throw invalid_argument("Dimensiones demasiado grandes");
	adrp	x0, :got:__stack_chk_guard	// tmp544,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp544,
	ldr	x2, [sp, 424]	// tmp684, D.120003
	ldr	x1, [x0]	// tmp685,
	subs	x2, x2, x1	// tmp684, tmp685
	mov	x1, 0	// tmp685
	bne	.L385		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x20	//, _85
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB36:
	bl	__cxa_throw		//
.LEHE36:
.L330:
.L383:
// main.cpp:111:     if (o.fire_row>=o.rows || o.fire_col>=o.cols) throw invalid_argument("Foco fuera del terreno (coordenadas desde 0)");
	mov	x19, x0	// tmp663,
	mov	x0, x20	//, _75
	bl	__cxa_free_exception		//
	b	.L303		//
.L284:
// main.cpp:108:     if (o.moisture<0 || o.moisture>1 || o.wind<0 || o.wind>1) throw invalid_argument("Humedad y viento deben estar en [0,1]");
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// main.cpp:108:     if (o.moisture<0 || o.moisture>1 || o.wind<0 || o.wind>1) throw invalid_argument("Humedad y viento deben estar en [0,1]");
	adrp	x1, .LC58	// tmp551,
// main.cpp:108:     if (o.moisture<0 || o.moisture>1 || o.wind<0 || o.wind>1) throw invalid_argument("Humedad y viento deben estar en [0,1]");
	mov	x20, x0	// _80, tmp648
// main.cpp:108:     if (o.moisture<0 || o.moisture>1 || o.wind<0 || o.wind>1) throw invalid_argument("Humedad y viento deben estar en [0,1]");
	add	x1, x1, :lo12:.LC58	//, tmp551,
.LEHB37:
	bl	_ZNSt16invalid_argumentC1EPKc		//
.LEHE37:
// main.cpp:108:     if (o.moisture<0 || o.moisture>1 || o.wind<0 || o.wind>1) throw invalid_argument("Humedad y viento deben estar en [0,1]");
	adrp	x0, :got:__stack_chk_guard	// tmp552,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp552,
	ldr	x2, [sp, 424]	// tmp686, D.120003
	ldr	x1, [x0]	// tmp687,
	subs	x2, x2, x1	// tmp686, tmp687
	mov	x1, 0	// tmp687
	bne	.L385		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x20	//, _80
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB38:
	bl	__cxa_throw		//
.LEHE38:
.L290:
// main.cpp:111:     if (o.fire_row>=o.rows || o.fire_col>=o.cols) throw invalid_argument("Foco fuera del terreno (coordenadas desde 0)");
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// main.cpp:111:     if (o.fire_row>=o.rows || o.fire_col>=o.cols) throw invalid_argument("Foco fuera del terreno (coordenadas desde 0)");
	adrp	x1, .LC59	// tmp559,
// main.cpp:111:     if (o.fire_row>=o.rows || o.fire_col>=o.cols) throw invalid_argument("Foco fuera del terreno (coordenadas desde 0)");
	mov	x20, x0	// _75, tmp649
// main.cpp:111:     if (o.fire_row>=o.rows || o.fire_col>=o.cols) throw invalid_argument("Foco fuera del terreno (coordenadas desde 0)");
	add	x1, x1, :lo12:.LC59	//, tmp559,
.LEHB39:
	bl	_ZNSt16invalid_argumentC1EPKc		//
.LEHE39:
// main.cpp:111:     if (o.fire_row>=o.rows || o.fire_col>=o.cols) throw invalid_argument("Foco fuera del terreno (coordenadas desde 0)");
	adrp	x0, :got:__stack_chk_guard	// tmp560,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp560,
	ldr	x2, [sp, 424]	// tmp688, D.120003
	ldr	x1, [x0]	// tmp689,
	subs	x2, x2, x1	// tmp688, tmp689
	mov	x1, 0	// tmp689
	bne	.L385		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x20	//, _75
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB40:
	bl	__cxa_throw		//
.LEHE40:
.L324:
// main.cpp:102:         } else throw invalid_argument("Opción desconocida: " + a);
	mov	x19, x0	// tmp585, tmp656
	b	.L302		//
.L333:
	b	.L383		//
.L391:
// main.cpp:104:     if(o.profile && o.visual) throw invalid_argument("--profile no se combina con --visual");
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// main.cpp:104:     if(o.profile && o.visual) throw invalid_argument("--profile no se combina con --visual");
	adrp	x1, .LC55	// tmp526,
// main.cpp:104:     if(o.profile && o.visual) throw invalid_argument("--profile no se combina con --visual");
	mov	x20, x0	// _68, tmp645
// main.cpp:104:     if(o.profile && o.visual) throw invalid_argument("--profile no se combina con --visual");
	add	x1, x1, :lo12:.LC55	//, tmp526,
.LEHB41:
	bl	_ZNSt16invalid_argumentC1EPKc		//
.LEHE41:
// main.cpp:104:     if(o.profile && o.visual) throw invalid_argument("--profile no se combina con --visual");
	adrp	x0, :got:__stack_chk_guard	// tmp527,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp527,
	ldr	x2, [sp, 424]	// tmp680, D.120003
	ldr	x1, [x0]	// tmp681,
	subs	x2, x2, x1	// tmp680, tmp681
	mov	x1, 0	// tmp681
	bne	.L385		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x20	//, _68
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB42:
	bl	__cxa_throw		//
.LEHE42:
.L309:
	mov	x0, x19	//, tmp591
.LEHB43:
	bl	_Unwind_Resume		//
.LEHE43:
.L329:
	b	.L383		//
.L328:
// main.cpp:25: struct Options {
	mov	x19, x0	// tmp591, tmp664
	b	.L303		//
.L394:
// main.cpp:85:         if (i+1>=argc) throw invalid_argument("Falta valor para " + a);
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// main.cpp:85:         if (i+1>=argc) throw invalid_argument("Falta valor para " + a);
	ldp	x1, x2, [sp, 40]	//,, MEM[(char * *)&a]
	add	x19, sp, 168	// tmp617,,
// main.cpp:85:         if (i+1>=argc) throw invalid_argument("Falta valor para " + a);
	mov	x20, x0	// _217, tmp628
// main.cpp:85:         if (i+1>=argc) throw invalid_argument("Falta valor para " + a);
	mov	x8, x19	//, tmp617
	adrp	x0, .LC40	// tmp298,
	add	x0, x0, :lo12:.LC40	//, tmp298,
.LEHB44:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.isra.0		//
.LEHE44:
// main.cpp:85:         if (i+1>=argc) throw invalid_argument("Falta valor para " + a);
	mov	x1, x19	//, tmp617
	mov	x0, x20	//, _217
.LEHB45:
	bl	_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE		//
.LEHE45:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x0, x19	//, tmp617
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
// main.cpp:85:         if (i+1>=argc) throw invalid_argument("Falta valor para " + a);
	adrp	x0, :got:__stack_chk_guard	// tmp302,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp302,
	ldr	x2, [sp, 424]	// tmp668, D.120003
	ldr	x1, [x0]	// tmp669,
	subs	x2, x2, x1	// tmp668, tmp669
	mov	x1, 0	// tmp669
	bne	.L385		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x20	//, _217
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB46:
	bl	__cxa_throw		//
.LEHE46:
.L319:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x19, x0	// tmp569, tmp658
	b	.L295		//
.L321:
	mov	x1, x0	// tmp650,
	mov	x0, x19	//, tmp617
	mov	x19, x1	// tmp566, tmp650
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L294:
// main.cpp:85:         if (i+1>=argc) throw invalid_argument("Falta valor para " + a);
	mov	x0, x20	//, _217
	bl	__cxa_free_exception		//
	b	.L295		//
.L320:
	mov	x19, x0	// tmp565, tmp651
	b	.L294		//
.L325:
// main.cpp:101:             if(!ok) throw invalid_argument("Dirección de viento: N, NE, E, SE, S, SW, W o NW");
	mov	x19, x0	// tmp654,
	mov	x0, x20	//, _163
	mov	x20, x19	// tmp577, tmp578
	add	x19, sp, 168	// tmp617,,
	mov	x21, 7	// ivtmp.855,
	bl	__cxa_free_exception		//
.L300:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	add	x0, x19, x21, lsl 5	//, tmp617, ivtmp.855,
// main.cpp:102:         } else throw invalid_argument("Opción desconocida: " + a);
	sub	x21, x21, #1	// ivtmp.855, ivtmp.855,
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
// main.cpp:102:         } else throw invalid_argument("Opción desconocida: " + a);
	cmn	x21, #1	// ivtmp.855,
	bne	.L300		//,
	mov	x19, x20	// tmp571, tmp577
	b	.L297		//
.L334:
// main.cpp:98:             const string dirs[]={"N","NE","E","SE","S","SW","W","NW"};
	mov	x20, x0	// tmp577, tmp643
	add	x19, sp, 168	// tmp617,,
	mov	x21, 7	// ivtmp.855,
	b	.L300		//
.L331:
	b	.L383		//
.L412:
// main.cpp:90:         else if (a=="--seed") { auto n=number(v,a); if(n>UINT32_MAX) throw invalid_argument("Semilla fuera de rango"); o.seed=static_cast<uint32_t>(n); }
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// main.cpp:90:         else if (a=="--seed") { auto n=number(v,a); if(n>UINT32_MAX) throw invalid_argument("Semilla fuera de rango"); o.seed=static_cast<uint32_t>(n); }
	adrp	x1, .LC45	// tmp356,
// main.cpp:90:         else if (a=="--seed") { auto n=number(v,a); if(n>UINT32_MAX) throw invalid_argument("Semilla fuera de rango"); o.seed=static_cast<uint32_t>(n); }
	mov	x20, x0	// _200, tmp635
// main.cpp:90:         else if (a=="--seed") { auto n=number(v,a); if(n>UINT32_MAX) throw invalid_argument("Semilla fuera de rango"); o.seed=static_cast<uint32_t>(n); }
	add	x1, x1, :lo12:.LC45	//, tmp356,
.LEHB47:
	bl	_ZNSt16invalid_argumentC1EPKc		//
.LEHE47:
// main.cpp:90:         else if (a=="--seed") { auto n=number(v,a); if(n>UINT32_MAX) throw invalid_argument("Semilla fuera de rango"); o.seed=static_cast<uint32_t>(n); }
	adrp	x0, :got:__stack_chk_guard	// tmp357,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp357,
	ldr	x2, [sp, 424]	// tmp672, D.120003
	ldr	x1, [x0]	// tmp673,
	subs	x2, x2, x1	// tmp672, tmp673
	mov	x1, 0	// tmp673
	bne	.L385		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x20	//, _200
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB48:
	bl	__cxa_throw		//
.LEHE48:
.L332:
	b	.L383		//
.L322:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x19, x0	// tmp571, tmp657
	b	.L297		//
.L323:
// main.cpp:102:         } else throw invalid_argument("Opción desconocida: " + a);
	mov	x19, x0	// tmp585, tmp656
	b	.L302		//
	.cfi_endproc
.LFE4473:
	.section	.gcc_except_table
.LLSDA4473:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4473-.LLSDACSB4473
.LLSDACSB4473:
	.uleb128 .LEHB18-.LFB4473
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L322-.LFB4473
	.uleb128 0
	.uleb128 .LEHB19-.LFB4473
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L319-.LFB4473
	.uleb128 0
	.uleb128 .LEHB20-.LFB4473
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L328-.LFB4473
	.uleb128 0
	.uleb128 .LEHB21-.LFB4473
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L326-.LFB4473
	.uleb128 0
	.uleb128 .LEHB22-.LFB4473
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L327-.LFB4473
	.uleb128 0
	.uleb128 .LEHB23-.LFB4473
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L322-.LFB4473
	.uleb128 0
	.uleb128 .LEHB24-.LFB4473
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L319-.LFB4473
	.uleb128 0
	.uleb128 .LEHB25-.LFB4473
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L322-.LFB4473
	.uleb128 0
	.uleb128 .LEHB26-.LFB4473
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L325-.LFB4473
	.uleb128 0
	.uleb128 .LEHB27-.LFB4473
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L334-.LFB4473
	.uleb128 0
	.uleb128 .LEHB28-.LFB4473
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L322-.LFB4473
	.uleb128 0
	.uleb128 .LEHB29-.LFB4473
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L328-.LFB4473
	.uleb128 0
	.uleb128 .LEHB30-.LFB4473
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L319-.LFB4473
	.uleb128 0
	.uleb128 .LEHB31-.LFB4473
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L324-.LFB4473
	.uleb128 0
	.uleb128 .LEHB32-.LFB4473
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L322-.LFB4473
	.uleb128 0
	.uleb128 .LEHB33-.LFB4473
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L330-.LFB4473
	.uleb128 0
	.uleb128 .LEHB34-.LFB4473
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L328-.LFB4473
	.uleb128 0
	.uleb128 .LEHB35-.LFB4473
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L331-.LFB4473
	.uleb128 0
	.uleb128 .LEHB36-.LFB4473
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L328-.LFB4473
	.uleb128 0
	.uleb128 .LEHB37-.LFB4473
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L332-.LFB4473
	.uleb128 0
	.uleb128 .LEHB38-.LFB4473
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L328-.LFB4473
	.uleb128 0
	.uleb128 .LEHB39-.LFB4473
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L333-.LFB4473
	.uleb128 0
	.uleb128 .LEHB40-.LFB4473
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L328-.LFB4473
	.uleb128 0
	.uleb128 .LEHB41-.LFB4473
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L329-.LFB4473
	.uleb128 0
	.uleb128 .LEHB42-.LFB4473
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L328-.LFB4473
	.uleb128 0
	.uleb128 .LEHB43-.LFB4473
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB44-.LFB4473
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L320-.LFB4473
	.uleb128 0
	.uleb128 .LEHB45-.LFB4473
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L321-.LFB4473
	.uleb128 0
	.uleb128 .LEHB46-.LFB4473
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L319-.LFB4473
	.uleb128 0
	.uleb128 .LEHB47-.LFB4473
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L323-.LFB4473
	.uleb128 0
	.uleb128 .LEHB48-.LFB4473
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L322-.LFB4473
	.uleb128 0
.LLSDACSE4473:
	.text
	.size	_Z5parseiPPc, .-_Z5parseiPPc
	.align	2
	.p2align 4,,11
	.global	_Z5indexmmm
	.type	_Z5indexmmm, %function
_Z5indexmmm:
.LFB4483:
	.cfi_startproc
// main.cpp:114: size_t index(size_t r,size_t c,size_t cols) { return r*cols+c; }
	madd	x0, x0, x2, x1	//, tmp99, tmp101, tmp100
	ret	
	.cfi_endproc
.LFE4483:
	.size	_Z5indexmmm, .-_Z5indexmmm
	.align	2
	.p2align 4,,11
	.global	_Z15update_moistureRKSt6vectorI4CellSaIS0_EERS2_mm
	.type	_Z15update_moistureRKSt6vectorI4CellSaIS0_EERS2_mm, %function
_Z15update_moistureRKSt6vectorI4CellSaIS0_EERS2_mm:
.LFB4494:
	.cfi_startproc
// main.cpp:136:     for(size_t r=0;r<rows;++r) for(size_t c=0;c<cols;++c) {
	cbz	x2, .L468	// rows,
	mov	x7, x3	// cols, tmp278
	cbz	x3, .L468	// cols,
// main.cpp:135: void update_moisture(const vector<Cell>& current, vector<Cell>& next, size_t rows,size_t cols) {
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	lsl	x17, x3, 3	// _77, cols,
// /usr/include/c++/13/bits/stl_algobase.h:264:       return __a;
	movi	v4.2s, #0	// tmp265
// main.cpp:135: void update_moisture(const vector<Cell>& current, vector<Cell>& next, size_t rows,size_t cols) {
	mov	x29, sp	//,
// /usr/include/c++/13/bits/stl_vector.h:1148: 	return *(this->_M_impl._M_start + __n);
	ldr	x18, [x0]	// _49, current_42(D)->D.101324._M_impl.D.100663._M_start
	mov	x30, 5	// tmp254,
// main.cpp:146:         next[i].moisture=max(0.f,current[i].moisture-.006f-.012f*burning);
	mov	w0, 39846	// tmp280,
	mov	x13, x2	// rows, tmp277
// /usr/include/c++/13/bits/stl_vector.h:1129: 	return *(this->_M_impl._M_start + __n);
	mov	x15, x17	// ivtmp.899, _77
	sub	x30, x30, x17	// tmp253, tmp254, _77
	mov	x16, x3	// ivtmp.898, cols
// main.cpp:135: void update_moisture(const vector<Cell>& current, vector<Cell>& next, size_t rows,size_t cols) {
	stp	x19, x20, [sp, 16]	//,,
	.cfi_offset 19, -48
	.cfi_offset 20, -40
// main.cpp:144:                 burning += current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),cols)].state==FIRE;
	sub	x20, x17, #8	// tmp273, _77,
// /usr/include/c++/13/bits/stl_vector.h:1129: 	return *(this->_M_impl._M_start + __n);
	ldr	x19, [x1]	// pretmp_74, next_48(D)->D.101324._M_impl.D.100663._M_start
// main.cpp:146:         next[i].moisture=max(0.f,current[i].moisture-.006f-.012f*burning);
	mov	w1, 39846	// tmp279,
// main.cpp:135: void update_moisture(const vector<Cell>& current, vector<Cell>& next, size_t rows,size_t cols) {
	stp	x21, x22, [sp, 32]	//,,
	.cfi_offset 21, -32
	.cfi_offset 22, -24
// main.cpp:144:                 burning += current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),cols)].state==FIRE;
	add	x21, x17, 8	// tmp272, _77,
// main.cpp:146:         next[i].moisture=max(0.f,current[i].moisture-.006f-.012f*burning);
	movk	w0, 0x3c44, lsl 16	// tmp280,,
// main.cpp:146:         next[i].moisture=max(0.f,current[i].moisture-.006f-.012f*burning);
	movk	w1, 0x3bc4, lsl 16	// tmp279,,
// /usr/include/c++/13/bits/stl_vector.h:1129: 	return *(this->_M_impl._M_start + __n);
	mov	x8, -1	// ivtmp.904,
	mov	x14, 0	// ivtmp.894,
	mov	x12, 1	// ivtmp.893,
// main.cpp:136:     for(size_t r=0;r<rows;++r) for(size_t c=0;c<cols;++c) {
	mov	x9, 0	// r,
// main.cpp:146:         next[i].moisture=max(0.f,current[i].moisture-.006f-.012f*burning);
	fmov	s2, w0	// tmp264, tmp280
// main.cpp:146:         next[i].moisture=max(0.f,current[i].moisture-.006f-.012f*burning);
	fmov	s3, w1	// tmp263, tmp279
// main.cpp:135: void update_moisture(const vector<Cell>& current, vector<Cell>& next, size_t rows,size_t cols) {
	stp	x23, x24, [sp, 48]	//,,
	.cfi_offset 23, -16
	.cfi_offset 24, -8
	.p2align 3,,7
.L420:
// main.cpp:143:             if(rr>=0 && cc>=0 && static_cast<size_t>(rr)<rows && static_cast<size_t>(cc)<cols)
	mvn	x11, x12	// tmp266, ivtmp.893
	add	x4, x30, x14	// tmp255, tmp253, ivtmp.894
	add	x2, x18, x14	// ivtmp.882, _49, ivtmp.894
	lsr	x11, x11, 63	// tmp267, tmp266,
	add	x4, x18, x4	// ivtmp.887, _49, tmp255
	and	w11, w11, 255	// _258, tmp267
	add	x10, x19, x14	// tmp259, pretmp_74, ivtmp.894
// main.cpp:135: void update_moisture(const vector<Cell>& current, vector<Cell>& next, size_t rows,size_t cols) {
	mov	x3, -1	// ivtmp.886,
	mov	x6, 1	// ivtmp.881,
// main.cpp:136:     for(size_t r=0;r<rows;++r) for(size_t c=0;c<cols;++c) {
	mov	x1, 0	// c,
	b	.L437		//
	.p2align 2,,3
.L421:
// main.cpp:138:         if(current[i].state!=TREE && current[i].state!=FIRE) {next[i].moisture=current[i].moisture;continue;}
	lsl	x0, x1, 3	// tmp252, c,
// main.cpp:136:     for(size_t r=0;r<rows;++r) for(size_t c=0;c<cols;++c) {
	add	x1, x1, 1	// c, c,
// main.cpp:136:     for(size_t r=0;r<rows;++r) for(size_t c=0;c<cols;++c) {
	add	x6, x6, 1	// ivtmp.881, ivtmp.881,
	add	x2, x2, 8	// ivtmp.882, ivtmp.882,
	add	x3, x3, 1	// ivtmp.886, ivtmp.886,
	add	x4, x4, 8	// ivtmp.887, ivtmp.887,
// main.cpp:138:         if(current[i].state!=TREE && current[i].state!=FIRE) {next[i].moisture=current[i].moisture;continue;}
	str	s0, [x10, x0]	// pretmp_156, MEM[(float *)_94 + _93 * 1]
// main.cpp:136:     for(size_t r=0;r<rows;++r) for(size_t c=0;c<cols;++c) {
	cmp	x7, x1	// cols, c
	beq	.L471		//,
.L437:
// main.cpp:138:         if(current[i].state!=TREE && current[i].state!=FIRE) {next[i].moisture=current[i].moisture;continue;}
	ldrb	w0, [x2, 5]	//, MEM[(unsigned char *)_97 + 5B]
// main.cpp:146:         next[i].moisture=max(0.f,current[i].moisture-.006f-.012f*burning);
	ldr	s0, [x2]	// pretmp_156, MEM[(float *)_97]
// main.cpp:138:         if(current[i].state!=TREE && current[i].state!=FIRE) {next[i].moisture=current[i].moisture;continue;}
	sub	w0, w0, #1	// tmp187, MEM[(unsigned char *)_97 + 5B],
	and	w0, w0, 255	// tmp188, tmp187
	cmp	w0, 1	// tmp188,
	bhi	.L421		//,
// main.cpp:143:             if(rr>=0 && cc>=0 && static_cast<size_t>(rr)<rows && static_cast<size_t>(cc)<cols)
	orr	x22, x12, x3	// _111, ivtmp.893, ivtmp.886
	orr	x5, x3, x9	// _47, ivtmp.886, r
	orr	x0, x3, x8	// tmp189, ivtmp.886, ivtmp.904
// main.cpp:143:             if(rr>=0 && cc>=0 && static_cast<size_t>(rr)<rows && static_cast<size_t>(cc)<cols)
	tbnz	x0, #63, .L422	// tmp189,
// main.cpp:143:             if(rr>=0 && cc>=0 && static_cast<size_t>(rr)<rows && static_cast<size_t>(cc)<cols)
	cmp	x13, x8	// rows, ivtmp.904
	ccmp	x7, x3, 0, hi	// cols, ivtmp.886,,
	bls	.L423		//,
// main.cpp:144:                 burning += current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),cols)].state==FIRE;
	ldrb	w0, [x4, -8]	// MEM[(unsigned char *)_34 + -8B], MEM[(unsigned char *)_34 + -8B]
	cmp	w0, 2	// MEM[(unsigned char *)_34 + -8B],
	cset	w0, eq	// _179,
.L424:
	ldrb	w24, [x4]	// MEM[(unsigned char *)_269], MEM[(unsigned char *)_269]
// main.cpp:144:                 burning += current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),cols)].state==FIRE;
	mov	w23, 1	// _116,
// main.cpp:144:                 burning += current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),cols)].state==FIRE;
	cmp	w24, 2	// MEM[(unsigned char *)_269],
// main.cpp:144:                 burning += current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),cols)].state==FIRE;
	cinc	w0, w0, eq	// burning, _179,
.L427:
// main.cpp:143:             if(rr>=0 && cc>=0 && static_cast<size_t>(rr)<rows && static_cast<size_t>(cc)<cols)
	cmp	w23, 0	// _116,
	ccmp	x7, x6, 0, ne	// cols, ivtmp.881,,
	bls	.L426		//,
// main.cpp:144:                 burning += current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),cols)].state==FIRE;
	ldrb	w23, [x4, 8]	// MEM[(unsigned char *)_284 + 8B], MEM[(unsigned char *)_284 + 8B]
	cmp	w23, 2	// MEM[(unsigned char *)_284 + 8B],
// main.cpp:144:                 burning += current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),cols)].state==FIRE;
	cinc	w0, w0, eq	// burning, burning,
	.p2align 3,,7
.L426:
// main.cpp:143:             if(rr>=0 && cc>=0 && static_cast<size_t>(rr)<rows && static_cast<size_t>(cc)<cols)
	tbnz	x5, #63, .L428	// _47,
// main.cpp:143:             if(rr>=0 && cc>=0 && static_cast<size_t>(rr)<rows && static_cast<size_t>(cc)<cols)
	cmp	x7, x3	// cols, ivtmp.886
	bls	.L429		//,
// main.cpp:144:                 burning += current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),cols)].state==FIRE;
	ldrb	w5, [x2, -3]	// MEM[(unsigned char *)_97 + -3B], MEM[(unsigned char *)_97 + -3B]
	cmp	w5, 2	// MEM[(unsigned char *)_97 + -3B],
// main.cpp:144:                 burning += current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),cols)].state==FIRE;
	cinc	w0, w0, eq	// burning, burning,
.L429:
// main.cpp:143:             if(rr>=0 && cc>=0 && static_cast<size_t>(rr)<rows && static_cast<size_t>(cc)<cols)
	tbz	x9, #63, .L438	// r,
// main.cpp:143:             if(rr>=0 && cc>=0 && static_cast<size_t>(rr)<rows && static_cast<size_t>(cc)<cols)
	mvn	x5, x12	// tmp257, ivtmp.893
	lsr	x5, x5, 63	// tmp258, tmp257,
	and	w5, w5, 255	// _258, tmp258
.L439:
// main.cpp:143:             if(rr>=0 && cc>=0 && static_cast<size_t>(rr)<rows && static_cast<size_t>(cc)<cols)
	cmp	x13, x12	// rows, ivtmp.893
	ccmp	x7, x3, 0, hi	// cols, ivtmp.886,,
	bls	.L431		//,
// main.cpp:144:                 burning += current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),cols)].state==FIRE;
	add	x22, x15, x4	// tmp260, ivtmp.899, ivtmp.887
	add	x23, x20, x14	// tmp225, tmp273, ivtmp.894
// main.cpp:144:                 burning += current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),cols)].state==FIRE;
	ldrb	w23, [x22, x23]	// MEM[(unsigned char *)_194 + _213 * 1], MEM[(unsigned char *)_194 + _213 * 1]
	cmp	w23, 2	// MEM[(unsigned char *)_194 + _213 * 1],
// main.cpp:144:                 burning += current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),cols)].state==FIRE;
	cinc	w0, w0, eq	// burning, burning,
// main.cpp:143:             if(rr>=0 && cc>=0 && static_cast<size_t>(rr)<rows && static_cast<size_t>(cc)<cols)
	tbz	x5, 0, .L434	// _258,,
.L432:
// main.cpp:144:                 burning += current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),cols)].state==FIRE;
	lsl	x5, x16, 3	// tmp232, ivtmp.898,
// main.cpp:144:                 burning += current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),cols)].state==FIRE;
	ldrb	w5, [x22, x5]	// MEM[(unsigned char *)_85 + _140 * 1], MEM[(unsigned char *)_85 + _140 * 1]
	cmp	w5, 2	// MEM[(unsigned char *)_85 + _140 * 1],
// main.cpp:144:                 burning += current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),cols)].state==FIRE;
	cinc	w0, w0, eq	// burning, burning,
// main.cpp:143:             if(rr>=0 && cc>=0 && static_cast<size_t>(rr)<rows && static_cast<size_t>(cc)<cols)
	cmp	x13, x12	// rows, ivtmp.893
	ccmp	x7, x6, 0, hi	// cols, ivtmp.881,,
	bls	.L434		//,
// main.cpp:144:                 burning += current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),cols)].state==FIRE;
	add	x5, x15, x4	// tmp241, ivtmp.899, ivtmp.887
	add	x22, x21, x14	// tmp243, tmp272, ivtmp.894
// main.cpp:144:                 burning += current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),cols)].state==FIRE;
	ldrb	w5, [x5, x22]	// MEM[(unsigned char *)_28 + _76 * 1], MEM[(unsigned char *)_28 + _76 * 1]
	cmp	w5, 2	// MEM[(unsigned char *)_28 + _76 * 1],
// main.cpp:144:                 burning += current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),cols)].state==FIRE;
	cinc	w0, w0, eq	// burning, burning,
	.p2align 3,,7
.L434:
// main.cpp:146:         next[i].moisture=max(0.f,current[i].moisture-.006f-.012f*burning);
	scvtf	s1, w0	// tmp247, burning
// main.cpp:146:         next[i].moisture=max(0.f,current[i].moisture-.006f-.012f*burning);
	fsub	s0, s0, s3	// tmp248, pretmp_156, tmp263
// main.cpp:146:         next[i].moisture=max(0.f,current[i].moisture-.006f-.012f*burning);
	fmsub	s0, s1, s2, s0	// pretmp_156, tmp247, tmp264, tmp248
// /usr/include/c++/13/bits/stl_algobase.h:264:       return __a;
	fcmpe	s0, #0.0	// pretmp_156
	fcsel	s0, s0, s4, gt	// pretmp_156, pretmp_156, tmp265,
	b	.L421		//
	.p2align 2,,3
.L428:
// main.cpp:143:             if(rr>=0 && cc>=0 && static_cast<size_t>(rr)<rows && static_cast<size_t>(cc)<cols)
	tbnz	x9, #63, .L430	// r,
.L438:
// main.cpp:143:             if(rr>=0 && cc>=0 && static_cast<size_t>(rr)<rows && static_cast<size_t>(cc)<cols)
	cmp	x7, x6	// cols, ivtmp.881
	bls	.L430		//,
// main.cpp:144:                 burning += current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),cols)].state==FIRE;
	ldrb	w5, [x2, 13]	// MEM[(unsigned char *)_97 + 13B], MEM[(unsigned char *)_97 + 13B]
	cmp	w5, 2	// MEM[(unsigned char *)_97 + 13B],
// main.cpp:144:                 burning += current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),cols)].state==FIRE;
	cinc	w0, w0, eq	// burning, burning,
.L430:
// main.cpp:143:             if(rr>=0 && cc>=0 && static_cast<size_t>(rr)<rows && static_cast<size_t>(cc)<cols)
	mov	w5, w11	// _258, _258
// main.cpp:143:             if(rr>=0 && cc>=0 && static_cast<size_t>(rr)<rows && static_cast<size_t>(cc)<cols)
	tbz	x22, #63, .L439	// _111,
.L431:
	tbz	x5, 0, .L434	// _258,,
// main.cpp:143:             if(rr>=0 && cc>=0 && static_cast<size_t>(rr)<rows && static_cast<size_t>(cc)<cols)
	cmp	x13, x12	// rows, ivtmp.893
	bls	.L434		//,
	add	x22, x15, x4	// tmp260, ivtmp.899, ivtmp.887
	b	.L432		//
	.p2align 2,,3
.L422:
// main.cpp:143:             if(rr>=0 && cc>=0 && static_cast<size_t>(rr)<rows && static_cast<size_t>(cc)<cols)
	orr	x0, x8, x1	// tmp197, ivtmp.904, c
// main.cpp:143:             if(rr>=0 && cc>=0 && static_cast<size_t>(rr)<rows && static_cast<size_t>(cc)<cols)
	tbz	x0, #63, .L423	// tmp197,
	mov	w0, 0	// burning,
	tbnz	x8, #63, .L426	// ivtmp.904,
// main.cpp:143:             if(rr>=0 && cc>=0 && static_cast<size_t>(rr)<rows && static_cast<size_t>(cc)<cols)
	cmp	x13, x8	// rows, ivtmp.904
	cset	w23, hi	// _116,
	b	.L427		//
	.p2align 2,,3
.L471:
// main.cpp:136:     for(size_t r=0;r<rows;++r) for(size_t c=0;c<cols;++c) {
	add	x9, x9, 1	// r, r,
// main.cpp:136:     for(size_t r=0;r<rows;++r) for(size_t c=0;c<cols;++c) {
	add	x12, x12, 1	// ivtmp.893, ivtmp.893,
	add	x14, x14, x17	// ivtmp.894, ivtmp.894, _77
	add	x16, x16, x7	// ivtmp.898, ivtmp.898, cols
	sub	x15, x15, x17	// ivtmp.899, ivtmp.899, _77
	add	x8, x8, 1	// ivtmp.904, ivtmp.904,
	cmp	x13, x9	// rows, r
	bne	.L420		//,
// main.cpp:148: }
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
.L423:
	.cfi_restore_state
// main.cpp:143:             if(rr>=0 && cc>=0 && static_cast<size_t>(rr)<rows && static_cast<size_t>(cc)<cols)
	mov	w0, 0	// burning,
	cmp	x13, x8	// rows, ivtmp.904
	bls	.L426		//,
	b	.L424		//
	.p2align 2,,3
.L468:
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
.LFE4494:
	.size	_Z15update_moistureRKSt6vectorI4CellSaIS0_EERS2_mm, .-_Z15update_moistureRKSt6vectorI4CellSaIS0_EERS2_mm
	.align	2
	.p2align 4,,11
	.global	_Z11update_fireRKSt6vectorI4CellSaIS0_EERS2_RK7Options
	.type	_Z11update_fireRKSt6vectorI4CellSaIS0_EERS2_RK7Options, %function
_Z11update_fireRKSt6vectorI4CellSaIS0_EERS2_RK7Options:
.LFB4495:
	.cfi_startproc
// main.cpp:150: size_t update_fire(const vector<Cell>& current, vector<Cell>& next, const Options& o) {
	mov	x16, x0	// current, tmp262
// main.cpp:152:     for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
	ldr	x0, [x2]	// <retval>, o_61(D)->rows
// main.cpp:152:     for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
	cbz	x0, .L472	// <retval>,
// main.cpp:169:             if(influence>=.65f+1.2f*a.moisture) b.state=FIRE;
	mov	w0, 26214	// tmp269,
	mov	w4, 39322	// tmp268,
	movk	w0, 0x3f26, lsl 16	// tmp269,,
	fmov	s3, w0	// tmp258, tmp269
// main.cpp:152:     for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
	ldr	x3, [x2, 8]	// _42, o_61(D)->cols
// main.cpp:164:                 float len=(dr && dc)? .70710678f:1.f;
	mov	w0, 1267	// tmp270,
	movk	w0, 0x3f35, lsl 16	// tmp270,,
// main.cpp:169:             if(influence>=.65f+1.2f*a.moisture) b.state=FIRE;
	movk	w4, 0x3f99, lsl 16	// tmp268,,
// main.cpp:164:                 float len=(dr && dc)? .70710678f:1.f;
	fmov	s6, w0	// tmp260, tmp270
// main.cpp:169:             if(influence>=.65f+1.2f*a.moisture) b.state=FIRE;
	fmov	s4, w4	// tmp257, tmp268
// main.cpp:152:     for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
	mov	x10, 0	// r,
// main.cpp:151:     size_t active=0;
	mov	x0, 0	// <retval>,
// main.cpp:156:         if(a.state==FIRE) { b.fuel=static_cast<uint8_t>(a.fuel-1); if(!b.fuel) b.state=BURNT; }
	mov	w15, 3	// tmp256,
// main.cpp:164:                 float len=(dr && dc)? .70710678f:1.f;
	fmov	s2, 1.0e+0	// tmp259,
	.p2align 3,,7
.L474:
// main.cpp:152:     for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
	cbz	x3, .L472	// _42,
// /usr/include/c++/13/bits/stl_vector.h:1129: 	return *(this->_M_impl._M_start + __n);
	ldr	x12, [x1]	// _74, next_66(D)->D.101324._M_impl.D.100663._M_start
	mov	x8, -1	// ivtmp.928,
// /usr/include/c++/13/bits/stl_vector.h:1148: 	return *(this->_M_impl._M_start + __n);
	ldr	x11, [x16]	// _65, current_64(D)->D.101324._M_impl.D.100663._M_start
// /usr/include/c++/13/bits/stl_vector.h:1129: 	return *(this->_M_impl._M_start + __n);
	mov	x9, 1	// ivtmp.927,
// main.cpp:152:     for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
	mov	x4, 0	// c,
	b	.L500		//
	.p2align 2,,3
.L475:
// main.cpp:157:         else if(a.state==TREE) {
	cmp	w6, 1	// _2,
	beq	.L535		//,
.L477:
// main.cpp:152:     for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
	ldr	x3, [x2, 8]	// _42, o_61(D)->cols
// main.cpp:152:     for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
	add	x4, x4, 1	// c, c,
// main.cpp:152:     for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
	add	x9, x9, 1	// ivtmp.927, ivtmp.927,
	add	x8, x8, 1	// ivtmp.928, ivtmp.928,
	cmp	x3, x4	// _42, c
	bls	.L536		//,
.L500:
// main.cpp:114: size_t index(size_t r,size_t c,size_t cols) { return r*cols+c; }
	madd	x3, x10, x3, x4	// tmp182, r, _42, c
// /usr/include/c++/13/bits/stl_vector.h:1148: 	return *(this->_M_impl._M_start + __n);
	lsl	x3, x3, 3	// _63, tmp182,
// /usr/include/c++/13/bits/stl_vector.h:1148: 	return *(this->_M_impl._M_start + __n);
	add	x5, x11, x3	// _82, _65, _63
// /usr/include/c++/13/bits/stl_vector.h:1129: 	return *(this->_M_impl._M_start + __n);
	add	x7, x12, x3	// _67, _74, _63
// main.cpp:155:         b.state=a.state; b.fuel=a.fuel;
	ldrb	w6, [x5, 5]	// _2, MEM[(const struct Cell &)_82].state
// main.cpp:155:         b.state=a.state; b.fuel=a.fuel;
	strb	w6, [x7, 5]	// _2, MEM[(struct Cell &)_67].state
// main.cpp:155:         b.state=a.state; b.fuel=a.fuel;
	ldrb	w5, [x5, 4]	// _3, MEM[(const struct Cell &)_82].fuel
// main.cpp:155:         b.state=a.state; b.fuel=a.fuel;
	strb	w5, [x7, 4]	// _3, MEM[(struct Cell &)_67].fuel
// main.cpp:156:         if(a.state==FIRE) { b.fuel=static_cast<uint8_t>(a.fuel-1); if(!b.fuel) b.state=BURNT; }
	cmp	w6, 2	// _2,
	bne	.L475		//,
// main.cpp:156:         if(a.state==FIRE) { b.fuel=static_cast<uint8_t>(a.fuel-1); if(!b.fuel) b.state=BURNT; }
	sub	w5, w5, #1	// tmp185, _3,
	and	w5, w5, 255	// _5, tmp185
// main.cpp:156:         if(a.state==FIRE) { b.fuel=static_cast<uint8_t>(a.fuel-1); if(!b.fuel) b.state=BURNT; }
	strb	w5, [x7, 4]	// _5, MEM[(struct Cell &)_67].fuel
// main.cpp:156:         if(a.state==FIRE) { b.fuel=static_cast<uint8_t>(a.fuel-1); if(!b.fuel) b.state=BURNT; }
	cbz	w5, .L476	// _5,
// main.cpp:152:     for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
	ldr	x3, [x2, 8]	// _42, o_61(D)->cols
// main.cpp:152:     for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
	add	x4, x4, 1	// c, c,
// main.cpp:171:         active += b.state==FIRE;
	add	x0, x0, 1	// <retval>, <retval>,
// main.cpp:152:     for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
	add	x9, x9, 1	// ivtmp.927, ivtmp.927,
	add	x8, x8, 1	// ivtmp.928, ivtmp.928,
	cmp	x3, x4	// _42, c
	bhi	.L500		//,
	.p2align 3,,7
.L536:
// main.cpp:152:     for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
	ldr	x4, [x2]	// o_61(D)->rows, o_61(D)->rows
// main.cpp:152:     for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
	add	x10, x10, 1	// r, r,
// main.cpp:152:     for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
	cmp	x10, x4	// r, o_61(D)->rows
	bcc	.L474		//,
.L472:
// main.cpp:174: }
	ret	
	.p2align 2,,3
.L476:
// main.cpp:156:         if(a.state==FIRE) { b.fuel=static_cast<uint8_t>(a.fuel-1); if(!b.fuel) b.state=BURNT; }
	strb	w15, [x7, 5]	// tmp256, MEM[(struct Cell &)_67].state
	b	.L477		//
	.p2align 2,,3
.L535:
// main.cpp:158:             float influence=0;
	movi	v1.2s, #0	// influence
	sub	x5, x10, #1	// ivtmp.923, r,
// main.cpp:159:             for(int dr=-1;dr<=1;++dr) for(int dc=-1;dc<=1;++dc) {
	mov	w6, -1	// dr,
.L498:
// main.cpp:162:                 if(rr<0 || cc<0 || static_cast<size_t>(rr)>=o.rows || static_cast<size_t>(cc)>=o.cols) continue;
	orr	x13, x5, x8	// tmp188, ivtmp.923, ivtmp.928
// main.cpp:162:                 if(rr<0 || cc<0 || static_cast<size_t>(rr)>=o.rows || static_cast<size_t>(cc)>=o.cols) continue;
	tbnz	x13, #63, .L479	// tmp188,
.L540:
// main.cpp:162:                 if(rr<0 || cc<0 || static_cast<size_t>(rr)>=o.rows || static_cast<size_t>(cc)>=o.cols) continue;
	ldr	x13, [x2]	// o_61(D)->rows, o_61(D)->rows
	cmp	x13, x5	// o_61(D)->rows, ivtmp.923
	bls	.L480		//,
// main.cpp:162:                 if(rr<0 || cc<0 || static_cast<size_t>(rr)>=o.rows || static_cast<size_t>(cc)>=o.cols) continue;
	ldr	x13, [x2, 8]	// prephitmp_224, o_61(D)->cols
// main.cpp:162:                 if(rr<0 || cc<0 || static_cast<size_t>(rr)>=o.rows || static_cast<size_t>(cc)>=o.cols) continue;
	cmp	x13, x8	// prephitmp_224, ivtmp.928
	bls	.L484		//,
// /usr/include/c++/13/bits/stl_vector.h:1148: 	return *(this->_M_impl._M_start + __n);
	madd	x14, x13, x5, x8	// tmp191, prephitmp_224, ivtmp.923, ivtmp.928
// main.cpp:163:                 if(current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),o.cols)].state!=FIRE) continue;
	add	x14, x11, x14, lsl 3	// tmp193, _65, tmp191,
// main.cpp:163:                 if(current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),o.cols)].state!=FIRE) continue;
	ldrb	w14, [x14, 5]	// _105->state, _105->state
	cmp	w14, 2	// _105->state,
	bne	.L484		//,
// main.cpp:166:                 float alignment=(-dc*o.dx-dr*o.dy)*len*((o.dx && o.dy)?.70710678f:1.f);
	ldp	w17, w14, [x2, 36]	//,, o_61(D)->dx
// main.cpp:164:                 float len=(dr && dc)? .70710678f:1.f;
	cmp	w6, 0	// dr,
	fcsel	s7, s2, s6, eq	// iftmp.73_110, tmp259, tmp260,
// main.cpp:166:                 float alignment=(-dc*o.dx-dr*o.dy)*len*((o.dx && o.dy)?.70710678f:1.f);
	cmp	w17, 0	// _112,
	ccmp	w14, 0, 4, ne	// _114,,,
// main.cpp:166:                 float alignment=(-dc*o.dx-dr*o.dy)*len*((o.dx && o.dy)?.70710678f:1.f);
	msub	w14, w14, w6, w17	// tmp196, _114, dr, _112
// main.cpp:166:                 float alignment=(-dc*o.dx-dr*o.dy)*len*((o.dx && o.dy)?.70710678f:1.f);
	scvtf	s0, w14	// tmp197, tmp196
	fmul	s0, s0, s7	// _118, tmp197, iftmp.73_110
// main.cpp:166:                 float alignment=(-dc*o.dx-dr*o.dy)*len*((o.dx && o.dy)?.70710678f:1.f);
	bne	.L537		//,
.L486:
// main.cpp:167:                 influence += len*(1.f+o.wind*alignment);
	ldr	s5, [x2, 32]	// o_61(D)->wind, o_61(D)->wind
	fmadd	s0, s5, s0, s2	// _123, o_61(D)->wind, _118, tmp259
// main.cpp:167:                 influence += len*(1.f+o.wind*alignment);
	fmadd	s1, s7, s0, s1	// influence, iftmp.73_110, _123, influence
// main.cpp:160:                 if(!dr && !dc) continue;
	cbz	w6, .L503	// dr,
.L504:
// main.cpp:162:                 if(rr<0 || cc<0 || static_cast<size_t>(rr)>=o.rows || static_cast<size_t>(cc)>=o.cols) continue;
	cmp	x4, x13	// c, prephitmp_224
	bcs	.L503		//,
// /usr/include/c++/13/bits/stl_vector.h:1148: 	return *(this->_M_impl._M_start + __n);
	madd	x14, x13, x5, x4	// tmp211, prephitmp_224, ivtmp.923, c
// main.cpp:163:                 if(current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),o.cols)].state!=FIRE) continue;
	add	x14, x11, x14, lsl 3	// tmp213, _65, tmp211,
// main.cpp:163:                 if(current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),o.cols)].state!=FIRE) continue;
	ldrb	w14, [x14, 5]	// _148->state, _148->state
	cmp	w14, 2	// _148->state,
	bne	.L503		//,
// main.cpp:166:                 float alignment=(-dc*o.dx-dr*o.dy)*len*((o.dx && o.dy)?.70710678f:1.f);
	ldp	w14, w17, [x2, 36]	//,, o_61(D)->dx
// main.cpp:166:                 float alignment=(-dc*o.dx-dr*o.dy)*len*((o.dx && o.dy)?.70710678f:1.f);
	cmp	w14, 0	// o_61(D)->dx,
// main.cpp:166:                 float alignment=(-dc*o.dx-dr*o.dy)*len*((o.dx && o.dy)?.70710678f:1.f);
	mneg	w14, w17, w6	// tmp216, _157, dr
// main.cpp:166:                 float alignment=(-dc*o.dx-dr*o.dy)*len*((o.dx && o.dy)?.70710678f:1.f);
	ccmp	w17, 0, 4, ne	// _157,,,
// main.cpp:166:                 float alignment=(-dc*o.dx-dr*o.dy)*len*((o.dx && o.dy)?.70710678f:1.f);
	scvtf	s0, w14	// _160, tmp216
// main.cpp:166:                 float alignment=(-dc*o.dx-dr*o.dy)*len*((o.dx && o.dy)?.70710678f:1.f);
	bne	.L538		//,
.L493:
// main.cpp:167:                 influence += len*(1.f+o.wind*alignment);
	ldr	s5, [x2, 32]	// o_61(D)->wind, o_61(D)->wind
	fmadd	s0, s5, s0, s2	// _166, o_61(D)->wind, _160, tmp259
// main.cpp:167:                 influence += len*(1.f+o.wind*alignment);
	fadd	s1, s1, s0	// influence, influence, _166
.L503:
// main.cpp:162:                 if(rr<0 || cc<0 || static_cast<size_t>(rr)>=o.rows || static_cast<size_t>(cc)>=o.cols) continue;
	cmp	x13, x9	// prephitmp_224, ivtmp.927
	bls	.L488		//,
// /usr/include/c++/13/bits/stl_vector.h:1148: 	return *(this->_M_impl._M_start + __n);
	madd	x13, x13, x5, x9	// tmp229, prephitmp_224, ivtmp.923, ivtmp.927
// main.cpp:163:                 if(current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),o.cols)].state!=FIRE) continue;
	add	x13, x11, x13, lsl 3	// tmp231, _65, tmp229,
// main.cpp:163:                 if(current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),o.cols)].state!=FIRE) continue;
	ldrb	w13, [x13, 5]	// _191->state, _191->state
	cmp	w13, 2	// _191->state,
	bne	.L488		//,
// main.cpp:166:                 float alignment=(-dc*o.dx-dr*o.dy)*len*((o.dx && o.dy)?.70710678f:1.f);
	ldp	w14, w13, [x2, 36]	//,, o_61(D)->dx
// main.cpp:164:                 float len=(dr && dc)? .70710678f:1.f;
	cmp	w6, 0	// dr,
// main.cpp:166:                 float alignment=(-dc*o.dx-dr*o.dy)*len*((o.dx && o.dy)?.70710678f:1.f);
	neg	w17, w14	// tmp233, _198
// main.cpp:164:                 float len=(dr && dc)? .70710678f:1.f;
	fcsel	s7, s2, s6, eq	// iftmp.73_196, tmp259, tmp260,
// main.cpp:166:                 float alignment=(-dc*o.dx-dr*o.dy)*len*((o.dx && o.dy)?.70710678f:1.f);
	cmp	w13, 0	// _200,
	ccmp	w14, 0, 4, ne	// _198,,,
// main.cpp:166:                 float alignment=(-dc*o.dx-dr*o.dy)*len*((o.dx && o.dy)?.70710678f:1.f);
	msub	w13, w6, w13, w17	// tmp235, dr, _200, tmp233
// main.cpp:166:                 float alignment=(-dc*o.dx-dr*o.dy)*len*((o.dx && o.dy)?.70710678f:1.f);
	scvtf	s0, w13	// tmp236, tmp235
	fmul	s0, s0, s7	// _204, tmp236, iftmp.73_196
// main.cpp:166:                 float alignment=(-dc*o.dx-dr*o.dy)*len*((o.dx && o.dy)?.70710678f:1.f);
	bne	.L539		//,
.L496:
// main.cpp:167:                 influence += len*(1.f+o.wind*alignment);
	ldr	s5, [x2, 32]	// o_61(D)->wind, o_61(D)->wind
	fmadd	s0, s5, s0, s2	// _209, o_61(D)->wind, _204, tmp259
// main.cpp:167:                 influence += len*(1.f+o.wind*alignment);
	fmadd	s1, s7, s0, s1	// influence, iftmp.73_196, _209, influence
	.p2align 3,,7
.L488:
// main.cpp:159:             for(int dr=-1;dr<=1;++dr) for(int dc=-1;dc<=1;++dc) {
	add	w6, w6, 1	// dr, dr,
// main.cpp:159:             for(int dr=-1;dr<=1;++dr) for(int dc=-1;dc<=1;++dc) {
	cmp	w6, 2	// dr,
	beq	.L497		//,
	add	x5, x5, 1	// ivtmp.923, ivtmp.923,
// main.cpp:162:                 if(rr<0 || cc<0 || static_cast<size_t>(rr)>=o.rows || static_cast<size_t>(cc)>=o.cols) continue;
	orr	x13, x5, x8	// tmp188, ivtmp.923, ivtmp.928
// main.cpp:162:                 if(rr<0 || cc<0 || static_cast<size_t>(rr)>=o.rows || static_cast<size_t>(cc)>=o.cols) continue;
	tbz	x13, #63, .L540	// tmp188,
.L479:
// main.cpp:162:                 if(rr<0 || cc<0 || static_cast<size_t>(rr)>=o.rows || static_cast<size_t>(cc)>=o.cols) continue;
	orr	x13, x9, x5	// _264, ivtmp.927, ivtmp.923
// main.cpp:160:                 if(!dr && !dc) continue;
	cbz	w6, .L490	// dr,
// main.cpp:162:                 if(rr<0 || cc<0 || static_cast<size_t>(rr)>=o.rows || static_cast<size_t>(cc)>=o.cols) continue;
	cmp	x5, 0	// ivtmp.923,
// main.cpp:162:                 if(rr<0 || cc<0 || static_cast<size_t>(rr)>=o.rows || static_cast<size_t>(cc)>=o.cols) continue;
	ccmp	x4, 0, 1, ge	// c,,,
	bge	.L541		//,
	tbnz	x13, #63, .L488	// _264,
// main.cpp:162:                 if(rr<0 || cc<0 || static_cast<size_t>(rr)>=o.rows || static_cast<size_t>(cc)>=o.cols) continue;
	ldr	x13, [x2]	// o_61(D)->rows, o_61(D)->rows
	cmp	x13, x5	// o_61(D)->rows, ivtmp.923
	bls	.L488		//,
	ldr	x13, [x2, 8]	// prephitmp_224, o_61(D)->cols
	b	.L503		//
	.p2align 2,,3
.L497:
// main.cpp:169:             if(influence>=.65f+1.2f*a.moisture) b.state=FIRE;
	ldr	s0, [x11, x3]	// MEM[(const struct Cell &)_82].moisture, MEM[(const struct Cell &)_82].moisture
	fmadd	s0, s0, s4, s3	// _38, MEM[(const struct Cell &)_82].moisture, tmp257, tmp258
// main.cpp:169:             if(influence>=.65f+1.2f*a.moisture) b.state=FIRE;
	fcmpe	s0, s1	// _38, influence
	bls	.L507		//,
	b	.L477		//
	.p2align 2,,3
.L507:
// main.cpp:171:         active += b.state==FIRE;
	add	x0, x0, 1	// <retval>, <retval>,
// main.cpp:169:             if(influence>=.65f+1.2f*a.moisture) b.state=FIRE;
	strb	w6, [x7, 5]	// dr, MEM[(struct Cell &)_67].state
	b	.L477		//
	.p2align 2,,3
.L484:
// main.cpp:160:                 if(!dr && !dc) continue;
	cbnz	w6, .L504	// dr,
	b	.L503		//
	.p2align 2,,3
.L490:
// main.cpp:162:                 if(rr<0 || cc<0 || static_cast<size_t>(rr)>=o.rows || static_cast<size_t>(cc)>=o.cols) continue;
	tbz	x13, #63, .L542	// _264,
.L494:
// main.cpp:159:             for(int dr=-1;dr<=1;++dr) for(int dc=-1;dc<=1;++dc) {
	add	x5, x5, 1	// ivtmp.923, ivtmp.923,
// main.cpp:159:             for(int dr=-1;dr<=1;++dr) for(int dc=-1;dc<=1;++dc) {
	mov	w6, 1	// dr,
	b	.L498		//
	.p2align 2,,3
.L541:
// main.cpp:162:                 if(rr<0 || cc<0 || static_cast<size_t>(rr)>=o.rows || static_cast<size_t>(cc)>=o.cols) continue;
	ldr	x13, [x2]	// o_61(D)->rows, o_61(D)->rows
	cmp	x13, x5	// o_61(D)->rows, ivtmp.923
	bls	.L488		//,
// main.cpp:162:                 if(rr<0 || cc<0 || static_cast<size_t>(rr)>=o.rows || static_cast<size_t>(cc)>=o.cols) continue;
	ldr	x13, [x2, 8]	// prephitmp_224, o_61(D)->cols
	b	.L504		//
	.p2align 2,,3
.L480:
// main.cpp:160:                 if(!dr && !dc) continue;
	cbnz	w6, .L488	// dr,
	b	.L494		//
.L538:
// main.cpp:166:                 float alignment=(-dc*o.dx-dr*o.dy)*len*((o.dx && o.dy)?.70710678f:1.f);
	mov	w14, 1267	// tmp266,
	movk	w14, 0x3f35, lsl 16	// tmp266,,
	fmov	s5, w14	// tmp223, tmp266
	fmul	s0, s0, s5	// _160, _160, tmp223
	b	.L493		//
.L537:
	mov	w14, 1267	// tmp267,
	movk	w14, 0x3f35, lsl 16	// tmp267,,
	fmov	s5, w14	// tmp202, tmp267
	fmul	s0, s0, s5	// _118, _118, tmp202
	b	.L486		//
.L539:
	mov	w13, 1267	// tmp265,
	movk	w13, 0x3f35, lsl 16	// tmp265,,
	fmov	s5, w13	// tmp241, tmp265
	fmul	s0, s0, s5	// _204, _204, tmp241
	b	.L496		//
.L542:
// main.cpp:162:                 if(rr<0 || cc<0 || static_cast<size_t>(rr)>=o.rows || static_cast<size_t>(cc)>=o.cols) continue;
	ldr	x13, [x2]	// o_61(D)->rows, o_61(D)->rows
	cmp	x13, x5	// o_61(D)->rows, ivtmp.923
	bls	.L494		//,
	ldr	x13, [x2, 8]	// prephitmp_224, o_61(D)->cols
	b	.L503		//
	.cfi_endproc
.LFE4495:
	.size	_Z11update_fireRKSt6vectorI4CellSaIS0_EERS2_RK7Options, .-_Z11update_fireRKSt6vectorI4CellSaIS0_EERS2_RK7Options
	.align	2
	.p2align 4,,11
	.global	_Z10statisticsRKSt6vectorI4CellSaIS0_EEm
	.type	_Z10statisticsRKSt6vectorI4CellSaIS0_EEm, %function
_Z10statisticsRKSt6vectorI4CellSaIS0_EEm:
.LFB4496:
	.cfi_startproc
// /usr/include/c++/13/bits/stl_iterator.h:1077:       : _M_current(__i) { }
	ldp	x0, x5, [x0]	// _25, _21, MEM[(const struct Cell * const &)cells_19(D)]
// main.cpp:177:     Stats s;
	str	xzr, [x8, 48]	//, <retval>
	movi	v0.4s, 0	// tmp112
	stp	q0, q0, [x8]	// tmp112, tmp112, <retval>
	str	q0, [x8, 32]	// tmp112, <retval>
// main.cpp:178:     for(const auto& a:cells) {++s.count[a.state]; if(a.state==TREE) s.mean+=a.moisture;}
	cmp	x5, x0	// _21, _25
	beq	.L544		//,
	movi	d1, #0	// R_mean_lsm.936
	mov	w6, 0	// R_mean_lsm_flag.937,
	.p2align 3,,7
.L546:
// main.cpp:178:     for(const auto& a:cells) {++s.count[a.state]; if(a.state==TREE) s.mean+=a.moisture;}
	ldrb	w4, [x0, 5]	//, MEM[(unsigned char *)_27 + 5B]
// main.cpp:178:     for(const auto& a:cells) {++s.count[a.state]; if(a.state==TREE) s.mean+=a.moisture;}
	ldr	x2, [x8, x4, lsl 3]	// <retval>.count[_2], <retval>.count[_2]
	add	x2, x2, 1	// tmp116, <retval>.count[_2],
	str	x2, [x8, x4, lsl 3]	// tmp116, <retval>.count[_2]
// main.cpp:178:     for(const auto& a:cells) {++s.count[a.state]; if(a.state==TREE) s.mean+=a.moisture;}
	cmp	w4, 1	// _1,
	bne	.L545		//,
// main.cpp:178:     for(const auto& a:cells) {++s.count[a.state]; if(a.state==TREE) s.mean+=a.moisture;}
	ldr	s0, [x0]	// MEM[(float *)_27], MEM[(float *)_27]
	mov	w6, w4	// R_mean_lsm_flag.937, _1
	fcvt	d0, s0	// tmp118, MEM[(float *)_27]
// main.cpp:178:     for(const auto& a:cells) {++s.count[a.state]; if(a.state==TREE) s.mean+=a.moisture;}
	fadd	d1, d1, d0	// R_mean_lsm.936, R_mean_lsm.936, tmp118
.L545:
// main.cpp:178:     for(const auto& a:cells) {++s.count[a.state]; if(a.state==TREE) s.mean+=a.moisture;}
	add	x0, x0, 8	// ivtmp.943, ivtmp.943,
	cmp	x5, x0	// _21, ivtmp.943
	bne	.L546		//,
// main.cpp:179:     if(s.count[TREE]) s.mean/=s.count[TREE];
	ldr	x0, [x8, 8]	// pretmp_53, <retval>.count[1]
	cbz	w6, .L552	// R_mean_lsm_flag.937,
// main.cpp:180:     s.affected=initial_trees-s.count[TREE];
	sub	x1, x1, x0	// initial_trees, initial_trees, pretmp_53
	str	d1, [x8, 40]	// R_mean_lsm.936, <retval>.mean
.L548:
// main.cpp:179:     if(s.count[TREE]) s.mean/=s.count[TREE];
	cbz	x0, .L544	// pretmp_53,
// main.cpp:179:     if(s.count[TREE]) s.mean/=s.count[TREE];
	ucvtf	d0, x0	// tmp121, pretmp_53
	fdiv	d1, d1, d0	// tmp122, R_mean_lsm.936, tmp121
	str	d1, [x8, 40]	// tmp122, <retval>.mean
.L544:
// main.cpp:180:     s.affected=initial_trees-s.count[TREE];
	str	x1, [x8, 48]	// initial_trees, <retval>.affected
// main.cpp:182: }
	ret	
	.p2align 2,,3
.L552:
// main.cpp:180:     s.affected=initial_trees-s.count[TREE];
	movi	d1, #0	// R_mean_lsm.936
	sub	x1, x1, x0	// initial_trees, initial_trees, pretmp_53
	b	.L548		//
	.cfi_endproc
.LFE4496:
	.size	_Z10statisticsRKSt6vectorI4CellSaIS0_EEm, .-_Z10statisticsRKSt6vectorI4CellSaIS0_EEm
	.align	2
	.p2align 4,,11
	.global	_Z8checksumRKSt6vectorI4CellSaIS0_EE
	.type	_Z8checksumRKSt6vectorI4CellSaIS0_EE, %function
_Z8checksumRKSt6vectorI4CellSaIS0_EE:
.LFB4500:
	.cfi_startproc
// /usr/include/c++/13/bits/stl_iterator.h:1077:       : _M_current(__i) { }
	ldp	x1, x9, [x0]	// _20, _24, MEM[(const struct Cell * const &)cells_16(D)]
// main.cpp:184:     uint64_t h=1469598103934665603ULL;
	mov	x0, 899	// <retval>,
	movk	x0, 0x739d, lsl 16	// <retval>,,
	movk	x0, 0xfb0, lsl 32	// <retval>,,
	movk	x0, 0x1465, lsl 48	// <retval>,,
// main.cpp:185:     for(const auto& a:cells) {
	cmp	x1, x9	// _20, _24
	beq	.L553		//,
// main.cpp:189:             for(int j=0;j<4;++j) {h^=(v>>(j*8))&255u; h*=1099511628211ULL;}
	mov	x8, 48273	// tmp126,
	mov	x7, 435	// tmp131,
	movk	x8, 0x5635, lsl 16	// tmp126,,
	movk	x7, 0x100, lsl 32	// tmp131,,
	movk	x8, 0xac08, lsl 32	// tmp126,,
	movk	x8, 0x9ffa, lsl 48	// tmp126,,
	.p2align 3,,7
.L555:
// main.cpp:189:             for(int j=0;j<4;++j) {h^=(v>>(j*8))&255u; h*=1099511628211ULL;}
	ldrb	w2, [x1, 5]	// MEM[(unsigned char *)_154 + 5B], MEM[(unsigned char *)_154 + 5B]
// main.cpp:185:     for(const auto& a:cells) {
	add	x1, x1, 8	// ivtmp.953, ivtmp.953,
// main.cpp:189:             for(int j=0;j<4;++j) {h^=(v>>(j*8))&255u; h*=1099511628211ULL;}
	ldrb	w5, [x1, -4]	// MEM[(unsigned char *)_154 + 4B], MEM[(unsigned char *)_154 + 4B]
// main.cpp:189:             for(int j=0;j<4;++j) {h^=(v>>(j*8))&255u; h*=1099511628211ULL;}
	eor	x2, x2, x0	// h, MEM[(unsigned char *)_154 + 5B], <retval>
// /usr/include/aarch64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	ldr	w0, [x1, -8]	//, MEM <unsigned int> [(char * {ref-all})_154]
// main.cpp:189:             for(int j=0;j<4;++j) {h^=(v>>(j*8))&255u; h*=1099511628211ULL;}
	and	x4, x0, 255	// tmp130, _27
// main.cpp:189:             for(int j=0;j<4;++j) {h^=(v>>(j*8))&255u; h*=1099511628211ULL;}
	mul	x6, x2, x8	// h, h, tmp126
// main.cpp:189:             for(int j=0;j<4;++j) {h^=(v>>(j*8))&255u; h*=1099511628211ULL;}
	ubfx	x3, x0, 8, 8	// tmp134, _27,,
	ubfx	x2, x0, 16, 8	// tmp138, _27,,
	lsr	w0, w0, 24	// tmp141, _27,
// main.cpp:189:             for(int j=0;j<4;++j) {h^=(v>>(j*8))&255u; h*=1099511628211ULL;}
	eor	x5, x5, x6	// h, MEM[(unsigned char *)_154 + 4B], h
// main.cpp:189:             for(int j=0;j<4;++j) {h^=(v>>(j*8))&255u; h*=1099511628211ULL;}
	mul	x5, x5, x8	// h, h, tmp126
// main.cpp:189:             for(int j=0;j<4;++j) {h^=(v>>(j*8))&255u; h*=1099511628211ULL;}
	eor	x4, x4, x5	// h, tmp130, h
// main.cpp:189:             for(int j=0;j<4;++j) {h^=(v>>(j*8))&255u; h*=1099511628211ULL;}
	mul	x4, x4, x7	// h, h, tmp131
// main.cpp:189:             for(int j=0;j<4;++j) {h^=(v>>(j*8))&255u; h*=1099511628211ULL;}
	eor	x3, x3, x4	// h, tmp134, h
// main.cpp:189:             for(int j=0;j<4;++j) {h^=(v>>(j*8))&255u; h*=1099511628211ULL;}
	mul	x3, x3, x7	// h, h, tmp131
// main.cpp:189:             for(int j=0;j<4;++j) {h^=(v>>(j*8))&255u; h*=1099511628211ULL;}
	eor	x2, x2, x3	// h, tmp138, h
// main.cpp:189:             for(int j=0;j<4;++j) {h^=(v>>(j*8))&255u; h*=1099511628211ULL;}
	mul	x2, x2, x7	// h, h, tmp131
// main.cpp:189:             for(int j=0;j<4;++j) {h^=(v>>(j*8))&255u; h*=1099511628211ULL;}
	eor	x0, x0, x2	// h, tmp141, h
// main.cpp:189:             for(int j=0;j<4;++j) {h^=(v>>(j*8))&255u; h*=1099511628211ULL;}
	mul	x0, x0, x7	// <retval>, h, tmp131
// main.cpp:185:     for(const auto& a:cells) {
	cmp	x9, x1	// _24, ivtmp.953
	bne	.L555		//,
.L553:
// main.cpp:193: }
	ret	
	.cfi_endproc
.LFE4500:
	.size	_Z8checksumRKSt6vectorI4CellSaIS0_EE, .-_Z8checksumRKSt6vectorI4CellSaIS0_EE
	.section	.rodata.str1.8
	.align	3
.LC63:
	.string	"%"
	.text
	.align	2
	.p2align 4,,11
	.global	_Z7percentB5cxx11mm
	.type	_Z7percentB5cxx11mm, %function
_Z7percentB5cxx11mm:
.LFB4501:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4501
// main.cpp:194: string percent(size_t n,size_t total) { return to_string((100*n)/total)+"%"; }
	add	x2, x0, x0, lsl 1	// tmp144, tmp271, tmp271,
// main.cpp:194: string percent(size_t n,size_t total) { return to_string((100*n)/total)+"%"; }
	sub	sp, sp, #304	//,,
	.cfi_def_cfa_offset 304
	adrp	x3, :got:__stack_chk_guard	// tmp141,
	ldr	x3, [x3, :got_lo12:__stack_chk_guard]	// tmp141,
// main.cpp:194: string percent(size_t n,size_t total) { return to_string((100*n)/total)+"%"; }
	add	x2, x0, x2, lsl 3	// tmp146, tmp271, tmp144,
// main.cpp:194: string percent(size_t n,size_t total) { return to_string((100*n)/total)+"%"; }
	stp	x29, x30, [sp, 256]	//,,
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 256	//,,
// main.cpp:194: string percent(size_t n,size_t total) { return to_string((100*n)/total)+"%"; }
	lsl	x2, x2, 2	// tmp147, tmp146,
// main.cpp:194: string percent(size_t n,size_t total) { return to_string((100*n)/total)+"%"; }
	stp	x21, x22, [sp, 288]	//,,
	.cfi_offset 21, -16
	.cfi_offset 22, -8
// main.cpp:194: string percent(size_t n,size_t total) { return to_string((100*n)/total)+"%"; }
	udiv	x22, x2, x1	// __val, tmp147, tmp272
// main.cpp:194: string percent(size_t n,size_t total) { return to_string((100*n)/total)+"%"; }
	stp	x19, x20, [sp, 272]	//,,
	.cfi_offset 19, -32
	.cfi_offset 20, -24
// main.cpp:194: string percent(size_t n,size_t total) { return to_string((100*n)/total)+"%"; }
	mov	x19, x8	// <retval>, tmp270
	ldr	x0, [x3]	// tmp275,
	str	x0, [sp, 248]	// tmp275, D.120178
	mov	x0, 0	// tmp275
// /usr/include/c++/13/bits/charconv.h:67: 	  if (__value < (unsigned)__base) return __n;
	cmp	x22, 9	// __val,
	bls	.L559		//,
// /usr/include/c++/13/bits/charconv.h:68: 	  if (__value < __b2) return __n + 1;
	cmp	x22, 99	// __val,
	bls	.L560		//,
// /usr/include/c++/13/bits/charconv.h:69: 	  if (__value < __b3) return __n + 2;
	cmp	x22, 999	// __val,
	bls	.L581		//,
// /usr/include/c++/13/bits/charconv.h:70: 	  if (__value < __b4) return __n + 3;
	mov	x0, 9999	// tmp148,
	cmp	x22, x0	// __val, tmp148
	bls	.L582		//,
// /usr/include/c++/13/bits/charconv.h:71: 	  __value /= __b4;
	mov	x6, 22859	// tmp182,
// /usr/include/c++/13/bits/charconv.h:67: 	  if (__value < (unsigned)__base) return __n;
	mov	x5, 34463	// tmp183,
// /usr/include/c++/13/bits/charconv.h:71: 	  __value /= __b4;
	movk	x6, 0x3886, lsl 16	// tmp182,,
// /usr/include/c++/13/bits/charconv.h:68: 	  if (__value < __b2) return __n + 1;
	mov	x7, 16959	// tmp267,
// /usr/include/c++/13/bits/charconv.h:71: 	  __value /= __b4;
	movk	x6, 0xc5d6, lsl 32	// tmp182,,
// /usr/include/c++/13/bits/charconv.h:69: 	  if (__value < __b3) return __n + 2;
	mov	x8, 38527	// tmp268,
// /usr/include/c++/13/bits/charconv.h:70: 	  if (__value < __b4) return __n + 3;
	mov	x9, 57599	// tmp269,
	mov	x3, x22	// __value, __val
// /usr/include/c++/13/bits/charconv.h:61:       unsigned __n = 1;
	mov	w2, 1	// __n,
// /usr/include/c++/13/bits/charconv.h:71: 	  __value /= __b4;
	movk	x6, 0x346d, lsl 48	// tmp182,,
// /usr/include/c++/13/bits/charconv.h:67: 	  if (__value < (unsigned)__base) return __n;
	movk	x5, 0x1, lsl 16	// tmp183,,
// /usr/include/c++/13/bits/charconv.h:68: 	  if (__value < __b2) return __n + 1;
	movk	x7, 0xf, lsl 16	// tmp267,,
// /usr/include/c++/13/bits/charconv.h:69: 	  if (__value < __b3) return __n + 2;
	movk	x8, 0x98, lsl 16	// tmp268,,
// /usr/include/c++/13/bits/charconv.h:70: 	  if (__value < __b4) return __n + 3;
	movk	x9, 0x5f5, lsl 16	// tmp269,,
	b	.L563		//
	.p2align 2,,3
.L569:
// /usr/include/c++/13/bits/charconv.h:68: 	  if (__value < __b2) return __n + 1;
	cmp	x0, x7	// __value, tmp267
	bls	.L590		//,
// /usr/include/c++/13/bits/charconv.h:69: 	  if (__value < __b3) return __n + 2;
	cmp	x0, x8	// __value, tmp268
	bls	.L591		//,
// /usr/include/c++/13/bits/charconv.h:70: 	  if (__value < __b4) return __n + 3;
	cmp	x0, x9	// __value, tmp269
	bls	.L592		//,
.L563:
// /usr/include/c++/13/bits/charconv.h:71: 	  __value /= __b4;
	umulh	x4, x3, x6	// tmp181, __value, tmp182
	mov	x0, x3	// __value, __value
	mov	w1, w2	// __n, __n
// /usr/include/c++/13/bits/charconv.h:72: 	  __n += 4;
	add	w2, w2, 4	// __n, __n,
// /usr/include/c++/13/bits/charconv.h:71: 	  __value /= __b4;
	lsr	x3, x4, 11	// __value, tmp181,
// /usr/include/c++/13/bits/charconv.h:67: 	  if (__value < (unsigned)__base) return __n;
	cmp	x0, x5	// __value, tmp183
	bhi	.L569		//,
// /usr/include/c++/13/bits/basic_string.h:4209:     string __str(__detail::__to_chars_len(__val), '\0');
	uxtw	x1, w2	// prephitmp_31, __n
.L568:
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x20, sp, 8	// tmp261,,
.L587:
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	mov	x0, x20	//, tmp261
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x21, sp, 24	// tmp263,,
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	mov	w2, 0	//,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x21, [sp, 8]	// tmp263, MEM[(struct _Alloc_hider *)&D.102154]._M_p
.LEHB49:
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc		//
.LEHE49:
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	adrp	x1, .LC23	// tmp185,
	add	x1, x1, :lo12:.LC23	// tmp184, tmp185,
	add	x4, sp, 40	// tmp264,,
// /usr/include/c++/13/bits/charconv.h:96: 	  auto const __num = (__val % 100) * 2;
	mov	x9, 62915	// tmp204,
// /usr/include/c++/13/bits/basic_string.h:4210:     __detail::__to_chars_10_impl(&__str[0], __str.size(), __val);
	ldp	x5, x0, [sp, 8]	// _12, D.102154._M_string_length, D.102154._M_dataplus._M_p
// /usr/include/c++/13/bits/charconv.h:96: 	  auto const __num = (__val % 100) * 2;
	movk	x9, 0x5c28, lsl 16	// tmp204,,
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	ldp	q0, q5, [x1, 160]	// tmp198, tmp199,
// /usr/include/c++/13/bits/charconv.h:96: 	  auto const __num = (__val % 100) * 2;
	movk	x9, 0xc28f, lsl 32	// tmp204,,
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	ldp	q3, q4, [x1]	// tmp188, tmp189,
	add	x7, sp, 41	// tmp265,,
	ldp	q1, q2, [x1, 32]	// tmp190, tmp191,
	stp	q0, q5, [x4, 160]	// tmp198, tmp199, __digits
// /usr/include/c++/13/bits/charconv.h:93:       unsigned __pos = __len - 1;
	sub	w0, w0, #1	// __pos, D.102154._M_string_length,
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	ldp	q0, q5, [x1, 64]	// tmp192, tmp193,
	stp	q3, q4, [x4]	// tmp188, tmp189, __digits
// /usr/include/c++/13/bits/charconv.h:96: 	  auto const __num = (__val % 100) * 2;
	movk	x9, 0x28f5, lsl 48	// tmp204,,
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	ldp	q3, q4, [x1, 96]	// tmp194, tmp195,
	stp	q1, q2, [x4, 32]	// tmp190, tmp191, __digits
// /usr/include/c++/13/bits/charconv.h:94:       while (__val >= 100)
	mov	x8, 9999	// tmp223,
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	ldp	q1, q2, [x1, 128]	// tmp196, tmp197,
	stp	q0, q5, [x4, 64]	// tmp192, tmp193, __digits
	ldr	q0, [x1, 185]	// tmp200,
	stp	q3, q4, [x4, 96]	// tmp194, tmp195, __digits
	stp	q1, q2, [x4, 128]	// tmp196, tmp197, __digits
	str	q0, [x4, 185]	// tmp200, __digits
	.p2align 3,,7
.L570:
// /usr/include/c++/13/bits/charconv.h:96: 	  auto const __num = (__val % 100) * 2;
	lsr	x3, x22, 2	// tmp202, __val,
// /usr/include/c++/13/bits/charconv.h:99: 	  __first[__pos - 1] = __digits[__num];
	sub	w1, w0, #1	// tmp219, __pos,
	mov	x6, x22	// __val, __val
// /usr/include/c++/13/bits/charconv.h:96: 	  auto const __num = (__val % 100) * 2;
	umulh	x3, x3, x9	// tmp203, tmp202, tmp204
	lsr	x3, x3, 2	// tmp201, tmp203,
	add	x2, x3, x3, lsl 1	// tmp207, tmp201, tmp201,
	add	x2, x3, x2, lsl 3	// tmp209, tmp201, tmp207,
	sub	x2, x22, x2, lsl 2	// tmp211, __val, tmp209,
// /usr/include/c++/13/bits/charconv.h:97: 	  __val /= 100;
	mov	x22, x3	// __val, tmp201
// /usr/include/c++/13/bits/charconv.h:96: 	  auto const __num = (__val % 100) * 2;
	lsl	x2, x2, 1	// __num, tmp211,
// /usr/include/c++/13/bits/charconv.h:98: 	  __first[__pos] = __digits[__num + 1];
	ldrb	w3, [x7, x2]	//, __digits[_42]
// /usr/include/c++/13/bits/charconv.h:99: 	  __first[__pos - 1] = __digits[__num];
	ldrb	w2, [x4, x2]	//, __digits[__num_40]
// /usr/include/c++/13/bits/charconv.h:98: 	  __first[__pos] = __digits[__num + 1];
	strb	w3, [x5, w0, uxtw]	// __digits[_42], *_45
// /usr/include/c++/13/bits/charconv.h:99: 	  __first[__pos - 1] = __digits[__num];
	sub	w0, w0, #2	// __pos, __pos,
	strb	w2, [x5, w1, uxtw]	// __digits[__num_40], *_49
// /usr/include/c++/13/bits/charconv.h:94:       while (__val >= 100)
	cmp	x6, x8	// __val, tmp223
	bhi	.L570		//,
// /usr/include/c++/13/bits/charconv.h:102:       if (__val >= 10)
	cmp	x6, 999	// __val,
	bhi	.L566		//,
.L571:
// /usr/include/c++/13/bits/charconv.h:109: 	__first[0] = '0' + __val;
	add	w22, w22, 48	// tmp228, __val,
	and	w22, w22, 255	// cstore_20, tmp228
.L572:
	strb	w22, [x5]	// cstore_20, *_11
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 4611686018427387903	// tmp231,
	ldr	x1, [sp, 16]	// D.102154._M_string_length, D.102154._M_string_length
	cmp	x1, x0	// D.102154._M_string_length, tmp231
	beq	.L593		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	adrp	x1, .LC63	// tmp236,
	mov	x0, x20	//, tmp261
	adrp	x22, :got:__stack_chk_guard	// tmp262,
	ldr	x22, [x22, :got_lo12:__stack_chk_guard]	// tmp262,
	add	x1, x1, :lo12:.LC63	//, tmp236,
	mov	x2, 1	//,
.LEHB50:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE50:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x22, x0	// _67, _19
// /usr/include/c++/13/bits/basic_string.h:230: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x3, x19, 16	// _65, <retval>,
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// MEM[(const struct basic_string *)_19]._M_string_length, MEM[(const struct basic_string *)_19]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x3, [x19]	// _65, MEM[(struct _Alloc_hider *)_7(D)]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x20, x0	// _19, tmp273
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [x22], 16	// _66, MEM[(const struct basic_string *)_19]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x1, x22	// _66, _67
	beq	.L594		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [x0, 16]	// *_19.D.50133._M_allocated_capacity, *_19.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x1, [x19]	// _66, MEM[(struct basic_string *)_7(D)]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x0, [x19, 16]	// *_19.D.50133._M_allocated_capacity, MEM[(struct basic_string *)_7(D)].D.50133._M_allocated_capacity
.L576:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x22, xzr, [x20]	// _67,, *_19._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 8]	// _59, D.102154._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x2, [x19, 8]	// MEM[(const struct basic_string *)_19]._M_string_length, MEM[(struct basic_string *)_7(D)]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x20, 16]	//, MEM[(char_type &)_19 + 16]
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x21	// _59, tmp263
	beq	.L558		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 24]	// D.102154.D.50133._M_allocated_capacity, D.102154.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.102154.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L558:
// main.cpp:194: string percent(size_t n,size_t total) { return to_string((100*n)/total)+"%"; }
	adrp	x0, :got:__stack_chk_guard	// tmp260,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp260,
	ldr	x2, [sp, 248]	// tmp280, D.120178
	ldr	x1, [x0]	// tmp281,
	subs	x2, x2, x1	// tmp280, tmp281
	mov	x1, 0	// tmp281
	bne	.L589		//,
	ldp	x29, x30, [sp, 256]	//,,
	mov	x0, x19	//, <retval>
	ldp	x19, x20, [sp, 272]	//,,
	ldp	x21, x22, [sp, 288]	//,,
	add	sp, sp, 304	//,,
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret	
.L560:
	.cfi_restore_state
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x20, sp, 8	// tmp261,,
	add	x21, sp, 24	// tmp263,,
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	mov	x0, x20	//, tmp261
	mov	w2, 0	//,
	mov	x1, 2	//,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x21, [sp, 8]	// tmp263, MEM[(struct _Alloc_hider *)&D.102154]._M_p
.LEHB51:
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc		//
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	adrp	x0, .LC23	// tmp160,
	add	x0, x0, :lo12:.LC23	// tmp159, tmp160,
	add	x4, sp, 40	// tmp264,,
	add	x7, sp, 41	// tmp265,,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x5, [sp, 8]	// _12, D.102154._M_dataplus._M_p
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	ldp	q0, q5, [x0, 160]	// tmp173, tmp174,
	ldp	q3, q4, [x0]	// tmp163, tmp164,
	ldp	q1, q2, [x0, 32]	// tmp165, tmp166,
	stp	q0, q5, [x4, 160]	// tmp173, tmp174, __digits
	ldp	q0, q5, [x0, 64]	// tmp167, tmp168,
	stp	q3, q4, [x4]	// tmp163, tmp164, __digits
	ldp	q3, q4, [x0, 96]	// tmp169, tmp170,
	stp	q1, q2, [x4, 32]	// tmp165, tmp166, __digits
	ldp	q1, q2, [x0, 128]	// tmp171, tmp172,
	stp	q0, q5, [x4, 64]	// tmp167, tmp168, __digits
	ldr	q0, [x0, 185]	// tmp175,
	stp	q3, q4, [x4, 96]	// tmp169, tmp170, __digits
	stp	q1, q2, [x4, 128]	// tmp171, tmp172, __digits
	str	q0, [x4, 185]	// tmp175, __digits
	.p2align 3,,7
.L566:
// /usr/include/c++/13/bits/charconv.h:104: 	  auto const __num = __val * 2;
	lsl	x22, x22, 1	// __num, __val,
// /usr/include/c++/13/bits/charconv.h:105: 	  __first[1] = __digits[__num + 1];
	ldrb	w0, [x7, x22]	//, __digits[_54]
// /usr/include/c++/13/bits/charconv.h:106: 	  __first[0] = __digits[__num];
	ldrb	w22, [x4, x22]	// cstore_20, __digits[__num_53]
// /usr/include/c++/13/bits/charconv.h:105: 	  __first[1] = __digits[__num + 1];
	strb	w0, [x5, 1]	// __digits[_54], MEM[(char *)_22 + 1B]
	b	.L572		//
	.p2align 2,,3
.L590:
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x20, sp, 8	// tmp261,,
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	add	w1, w1, 5	//, __n,
	b	.L587		//
	.p2align 2,,3
.L591:
// /usr/include/c++/13/bits/basic_string.h:4209:     string __str(__detail::__to_chars_len(__val), '\0');
	add	w1, w1, 6	// prephitmp_31, __n,
	b	.L568		//
	.p2align 2,,3
.L592:
	add	w1, w1, 7	// prephitmp_31, __n,
	b	.L568		//
	.p2align 2,,3
.L594:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_19]._M_string_length,
	mov	x0, x3	//, _65
	mov	x1, x22	//, _67
	bl	memcpy		//
	ldr	x2, [x20, 8]	// MEM[(const struct basic_string *)_19]._M_string_length, MEM[(const struct basic_string *)_19]._M_string_length
	b	.L576		//
.L559:
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x20, sp, 8	// tmp261,,
	add	x21, sp, 24	// tmp263,,
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	mov	x0, x20	//, tmp261
	mov	w2, 0	//,
	mov	x1, 1	//,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x21, [sp, 8]	// tmp263, MEM[(struct _Alloc_hider *)&D.102154]._M_p
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc		//
.LEHE51:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x5, [sp, 8]	// _12, D.102154._M_dataplus._M_p
	b	.L571		//
.L582:
// /usr/include/c++/13/bits/charconv.h:70: 	  if (__value < __b4) return __n + 3;
	mov	x1, 4	// prephitmp_31,
// /usr/include/c++/13/bits/charconv.h:70: 	  if (__value < __b4) return __n + 3;
	b	.L568		//
.L581:
// /usr/include/c++/13/bits/charconv.h:69: 	  if (__value < __b3) return __n + 2;
	mov	x1, 3	// prephitmp_31,
// /usr/include/c++/13/bits/charconv.h:69: 	  if (__value < __b3) return __n + 2;
	b	.L568		//
.L583:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x19, x0	// tmp274,
	mov	x0, x20	//, tmp261
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	ldr	x0, [sp, 248]	// tmp278, D.120178
	ldr	x1, [x22]	// tmp279,
	subs	x0, x0, x1	// tmp278, tmp279
	mov	x1, 0	// tmp279
	beq	.L579		//,
.L589:
// main.cpp:194: string percent(size_t n,size_t total) { return to_string((100*n)/total)+"%"; }
	bl	__stack_chk_fail		//
.L593:
// /usr/include/c++/13/bits/basic_string.h:400: 	  __throw_length_error(__N(__s));
	adrp	x22, :got:__stack_chk_guard	// tmp262,
	ldr	x22, [x22, :got_lo12:__stack_chk_guard]	// tmp262,
	ldr	x0, [sp, 248]	// tmp276, D.120178
	ldr	x1, [x22]	// tmp277,
	subs	x0, x0, x1	// tmp276, tmp277
	mov	x1, 0	// tmp277
	bne	.L589		//,
	adrp	x0, .LC21	// tmp234,
	add	x0, x0, :lo12:.LC21	//, tmp234,
.LEHB52:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE52:
.L579:
	mov	x0, x19	//, tmp251
.LEHB53:
	bl	_Unwind_Resume		//
.LEHE53:
	.cfi_endproc
.LFE4501:
	.section	.gcc_except_table
.LLSDA4501:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4501-.LLSDACSB4501
.LLSDACSB4501:
	.uleb128 .LEHB49-.LFB4501
	.uleb128 .LEHE49-.LEHB49
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB50-.LFB4501
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L583-.LFB4501
	.uleb128 0
	.uleb128 .LEHB51-.LFB4501
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB52-.LFB4501
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L583-.LFB4501
	.uleb128 0
	.uleb128 .LEHB53-.LFB4501
	.uleb128 .LEHE53-.LEHB53
	.uleb128 0
	.uleb128 0
.LLSDACSE4501:
	.text
	.size	_Z7percentB5cxx11mm, .-_Z7percentB5cxx11mm
	.section	.rodata.str1.8
	.align	3
.LC67:
	.string	"\033[0m"
	.text
	.align	2
	.p2align 4,,11
	.global	_Z5glyphB5cxx11RK4Cellbb
	.type	_Z5glyphB5cxx11RK4Cellbb, %function
_Z5glyphB5cxx11RK4Cellbb:
.LFB4502:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4502
	sub	sp, sp, #320	//,,
	.cfi_def_cfa_offset 320
// main.cpp:196:     const char* symbols_ascii[]={". ","T ","* ","# ","~ "};
	adrp	x3, .LANCHOR2	// tmp158,
	add	x3, x3, :lo12:.LANCHOR2	// tmp157, tmp158,
// main.cpp:197:     const char* symbols[]={"· ","♣ ","▓ ","░ ","≈ "};
	add	x4, sp, 152	// tmp168,,
	add	x9, x3, 40	// tmp167, tmp157,
// main.cpp:198:     const char* colors[]={"\033[37m","\033[32m","\033[33;1m","\033[90m","\033[34;1m"};
	add	x7, x3, 80	// tmp176, tmp157,
// main.cpp:195: string glyph(const Cell& a,bool ascii,bool color) {
	stp	x29, x30, [sp, 240]	//,,
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	add	x29, sp, 240	//,,
// main.cpp:196:     const char* symbols_ascii[]={". ","T ","* ","# ","~ "};
	add	x5, sp, 112	// tmp159,,
// main.cpp:195: string glyph(const Cell& a,bool ascii,bool color) {
	adrp	x6, :got:__stack_chk_guard	// tmp150,
	ldr	x6, [x6, :got_lo12:__stack_chk_guard]	// tmp150,
	stp	x19, x20, [sp, 256]	//,,
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	mov	x20, x8	// <retval>, tmp300
	stp	x21, x22, [sp, 272]	//,,
	.cfi_offset 21, -48
	.cfi_offset 22, -40
// main.cpp:198:     const char* colors[]={"\033[37m","\033[32m","\033[33;1m","\033[90m","\033[34;1m"};
	add	x21, sp, 192	// tmp295,,
// main.cpp:195: string glyph(const Cell& a,bool ascii,bool color) {
	mov	x22, x0	// a, tmp301
	stp	x23, x24, [sp, 288]	//,,
	stp	x25, x26, [sp, 304]	//,,
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	.cfi_offset 25, -16
	.cfi_offset 26, -8
// main.cpp:195: string glyph(const Cell& a,bool ascii,bool color) {
	and	w25, w2, 255	// color, color
// main.cpp:197:     const char* symbols[]={"· ","♣ ","▓ ","░ ","≈ "};
	ldp	q4, q5, [x9]	// tmp170, tmp171,
// main.cpp:195: string glyph(const Cell& a,bool ascii,bool color) {
	ldr	x0, [x6]	// tmp314,
	str	x0, [sp, 232]	// tmp314, D.120258
	mov	x0, 0	// tmp314
// main.cpp:198:     const char* colors[]={"\033[37m","\033[32m","\033[33;1m","\033[90m","\033[34;1m"};
	ldp	q2, q3, [x7]	// tmp179, tmp180,
// main.cpp:196:     const char* symbols_ascii[]={". ","T ","* ","# ","~ "};
	ldp	q0, q1, [x3]	// tmp161, tmp162,
// main.cpp:197:     const char* symbols[]={"· ","♣ ","▓ ","░ ","≈ "};
	stp	q4, q5, [x4]	// tmp170, tmp171, symbols
// main.cpp:196:     const char* symbols_ascii[]={". ","T ","* ","# ","~ "};
	ldr	x0, [x3, 32]	// tmp163,
	str	x0, [sp, 144]	// tmp163, symbols_ascii
// main.cpp:198:     const char* colors[]={"\033[37m","\033[32m","\033[33;1m","\033[90m","\033[34;1m"};
	ldr	x7, [x7, 32]	// tmp181,
	str	x7, [x21, 32]	// tmp181, colors
// main.cpp:197:     const char* symbols[]={"· ","♣ ","▓ ","░ ","≈ "};
	ldr	x9, [x9, 32]	// tmp172,
	str	x9, [x4, 32]	// tmp172, symbols
// main.cpp:198:     const char* colors[]={"\033[37m","\033[32m","\033[33;1m","\033[90m","\033[34;1m"};
	stp	q2, q3, [x21]	// tmp179, tmp180, colors
// main.cpp:199:     string s=ascii?symbols_ascii[a.state]:symbols[a.state];
	ldrb	w0, [x22, 5]	//, a_17(D)->state
// main.cpp:196:     const char* symbols_ascii[]={". ","T ","* ","# ","~ "};
	stp	q0, q1, [x5]	// tmp161, tmp162, symbols_ascii
// main.cpp:199:     string s=ascii?symbols_ascii[a.state]:symbols[a.state];
	tbz	w1, 0, .L596	// ascii,,
// main.cpp:199:     string s=ascii?symbols_ascii[a.state]:symbols[a.state];
	ldr	x26, [x5, x0, lsl 3]	// iftmp.82_8, symbols_ascii[_101]
.L597:
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x23, sp, 32	// tmp292,,
	str	x23, [sp, 16]	// tmp292, MEM[(struct _Alloc_hider *)&s]._M_p
	add	x24, sp, 16	// tmp290,,
// /usr/include/c++/13/bits/basic_string.h:645: 	if (__s == 0)
	cbz	x26, .L642	// iftmp.82_8,
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x0, x26	//, iftmp.82_8
	bl	strlen		//
// /usr/include/c++/13/bits/basic_string.tcc:225: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	str	x0, [sp, 8]	// _57, MEM[(long unsigned int *)_135]
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x19, x0	// _57, tmp302
// /usr/include/c++/13/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	x0, 15	// _57,
	bhi	.L643		//,
// /usr/include/c++/13/bits/basic_string.h:427: 	if (__n == 1)
	cmp	x0, 1	// _57,
	bne	.L602		//,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	ldrb	w1, [x26]	// _64, MEM[(const char_type &)iftmp.82_8]
// /usr/include/c++/13/bits/char_traits.h:359:       }
	mov	x0, x23	// prephitmp_9, tmp292
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	w1, [sp, 32]	// _64, MEM[(char_type &)&s + 16]
.L603:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x19, [sp, 24]	// _57, s._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x0, x19]	//, MEM[(char_type &)_67]
// main.cpp:200:     if(color) return string(colors[a.state])+s+"\033[0m";
	tbz	x25, 0, .L604	// color,,
.L650:
// main.cpp:200:     if(color) return string(colors[a.state])+s+"\033[0m";
	ldrb	w0, [x22, 5]	// a_17(D)->state, a_17(D)->state
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x22, sp, 64	// tmp294,,
	str	x22, [sp, 48]	// tmp294, MEM[(struct _Alloc_hider *)&D.102212]._M_p
	add	x26, sp, 48	// tmp293,,
// main.cpp:200:     if(color) return string(colors[a.state])+s+"\033[0m";
	ldr	x25, [x21, x0, lsl 3]	// _7, colors[_6]
// /usr/include/c++/13/bits/basic_string.h:645: 	if (__s == 0)
	cbz	x25, .L644	// _7,
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x0, x25	//, _7
	bl	strlen		//
// /usr/include/c++/13/bits/basic_string.tcc:225: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	str	x0, [sp, 8]	// _69, MEM[(long unsigned int *)_135]
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x19, x0	// _69, tmp304
// /usr/include/c++/13/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	x0, 15	// _69,
	bhi	.L645		//,
// /usr/include/c++/13/bits/basic_string.h:427: 	if (__n == 1)
	cmp	x0, 1	// _69,
	bne	.L609		//,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	ldrb	w1, [x25]	// _76, MEM[(const char_type &)_7]
// /usr/include/c++/13/bits/char_traits.h:359:       }
	mov	x0, x22	// prephitmp_38, tmp294
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	w1, [sp, 64]	// _76, MEM[(char_type &)&D.102212 + 16]
.L610:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x19, [sp, 56]	// _69, D.102212._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x0, x19]	//, MEM[(char_type &)_79]
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 4611686018427387903	// tmp223,
// /usr/include/c++/13/bits/basic_string.h:400: 	  __throw_length_error(__N(__s));
	adrp	x21, :got:__stack_chk_guard	// tmp291,
	ldr	x21, [x21, :got_lo12:__stack_chk_guard]	// tmp291,
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 56]	// D.102212._M_string_length, D.102212._M_string_length
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	ldr	x2, [sp, 24]	// _37, s._M_string_length
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	sub	x0, x0, x1	// tmp222, tmp223, D.102212._M_string_length
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [sp, 16]	// _20, s._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	cmp	x2, x0	// _37, tmp222
	bhi	.L646		//,
// /usr/include/c++/13/bits/basic_string.h:1459: 	return _M_append(__s, __n);
	mov	x0, x26	//, tmp293
.LEHB54:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE54:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x21, x0	// _89, _82
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x25, sp, 96	// tmp298,,
	str	x25, [sp, 80]	// tmp298, MEM[(struct _Alloc_hider *)&D.102219]._M_p
// /usr/include/c++/13/bits/basic_string.h:1459: 	return _M_append(__s, __n);
	mov	x19, x0	// _82, tmp306
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// MEM[(const struct basic_string *)_82]._M_string_length, MEM[(const struct basic_string *)_82]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x21], 16	// _88, MEM[(const struct basic_string *)_82]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x21	// _88, _89
	beq	.L647		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x19, 16]	// *_82.D.50133._M_allocated_capacity, *_82.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 80]	// _88, D.102219._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 96]	// *_82.D.50133._M_allocated_capacity, D.102219.D.50133._M_allocated_capacity
.L614:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 4611686018427387903	// tmp241,
	sub	x0, x0, x2	// tmp240, tmp241, MEM[(const struct basic_string *)_82]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x21, xzr, [x19]	// _89,, *_82._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x19, 16]	//, MEM[(char_type &)_82 + 16]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x2, [sp, 88]	// MEM[(const struct basic_string *)_82]._M_string_length, D.102219._M_string_length
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	cmp	x0, 3	// tmp240,
	bls	.L648		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	add	x19, sp, 80	// tmp296,,
	adrp	x1, .LC67	// tmp247,
	adrp	x21, :got:__stack_chk_guard	// tmp291,
	ldr	x21, [x21, :got_lo12:__stack_chk_guard]	// tmp291,
	mov	x0, x19	//, tmp296
	add	x1, x1, :lo12:.LC67	//, tmp247,
	mov	x2, 4	//,
.LEHB55:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE55:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x21, x0	// _108, _86
// /usr/include/c++/13/bits/basic_string.h:230: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x3, x20, 16	// _106, <retval>,
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// MEM[(const struct basic_string *)_86]._M_string_length, MEM[(const struct basic_string *)_86]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x3, [x20]	// _106, MEM[(struct _Alloc_hider *)_24(D)]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x19, x0	// _86, tmp307
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [x21], 16	// _107, MEM[(const struct basic_string *)_86]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x1, x21	// _107, _108
	beq	.L649		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [x0, 16]	// *_86.D.50133._M_allocated_capacity, *_86.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x1, [x20]	// _107, MEM[(struct basic_string *)_24(D)]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x0, [x20, 16]	// *_86.D.50133._M_allocated_capacity, MEM[(struct basic_string *)_24(D)].D.50133._M_allocated_capacity
.L618:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x21, xzr, [x19]	// _108,, *_86._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 80]	// _100, D.102219._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x2, [x20, 8]	// MEM[(const struct basic_string *)_86]._M_string_length, MEM[(struct basic_string *)_24(D)]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x19, 16]	//, MEM[(char_type &)_86 + 16]
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x25	// _100, tmp298
	beq	.L619		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 96]	// D.102219.D.50133._M_allocated_capacity, D.102219.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.102219.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L619:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 48]	// _94, D.102212._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x22	// _94, tmp294
	beq	.L620		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 64]	// D.102212.D.50133._M_allocated_capacity, D.102212.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.102212.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L620:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 16]	// _122, s._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	// _122, tmp292
	beq	.L595		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 32]	// s.D.50133._M_allocated_capacity, s.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, s.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L595:
// main.cpp:202: }
	adrp	x0, :got:__stack_chk_guard	// tmp289,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp289,
	ldr	x2, [sp, 232]	// tmp325, D.120258
	ldr	x1, [x0]	// tmp326,
	subs	x2, x2, x1	// tmp325, tmp326
	mov	x1, 0	// tmp326
	bne	.L640		//,
	ldp	x29, x30, [sp, 240]	//,,
	mov	x0, x20	//, <retval>
	ldp	x19, x20, [sp, 256]	//,,
	ldp	x21, x22, [sp, 272]	//,,
	ldp	x23, x24, [sp, 288]	//,,
	ldp	x25, x26, [sp, 304]	//,,
	add	sp, sp, 320	//,,
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
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
.L596:
	.cfi_restore_state
// main.cpp:199:     string s=ascii?symbols_ascii[a.state]:symbols[a.state];
	ldr	x26, [x4, x0, lsl 3]	// iftmp.82_8, symbols[_101]
	b	.L597		//
	.p2align 2,,3
.L602:
	mov	x0, x23	// prephitmp_9, tmp292
// /usr/include/c++/13/bits/char_traits.h:429: 	if (__n == 0)
	cbnz	x19, .L601	// _57,
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x19, [sp, 24]	// _57, s._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x0, x19]	//, MEM[(char_type &)_67]
// main.cpp:200:     if(color) return string(colors[a.state])+s+"\033[0m";
	tbnz	x25, 0, .L650	// color,,
.L604:
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldp	x1, x19, [sp, 16]	// _116, pretmp_183, MEM[(const struct basic_string *)&s]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:230: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x0, x20, 16	// _115, <retval>,
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x0, [x20]	// _115, MEM[(struct _Alloc_hider *)_24(D)]._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x1, x23	// _116, tmp292
	beq	.L651		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [sp, 32]	// MEM[(struct basic_string &)&s].D.50133._M_allocated_capacity, MEM[(struct basic_string &)&s].D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x1, [x20]	// _116, MEM[(struct basic_string *)_24(D)]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x19, [x20, 8]	// pretmp_183, MEM[(struct basic_string *)_24(D)]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x0, [x20, 16]	// MEM[(struct basic_string &)&s].D.50133._M_allocated_capacity, MEM[(struct basic_string *)_24(D)].D.50133._M_allocated_capacity
	b	.L595		//
	.p2align 2,,3
.L643:
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	add	x1, sp, 8	//,,
	mov	x0, x24	//, tmp290
	mov	x2, 0	//,
.LEHB56:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm		//
.LEHE56:
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [sp, 8]	// MEM[(long unsigned int *)_135], MEM[(long unsigned int *)_135]
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 16]	// _61, s._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 32]	// MEM[(long unsigned int *)_135], s.D.50133._M_allocated_capacity
.L601:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x19	//, _57
	mov	x1, x26	//, iftmp.82_8
	bl	memcpy		//
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldp	x19, x0, [sp, 8]	// _57, prephitmp_9, MEM[(long unsigned int *)_135]
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	b	.L603		//
	.p2align 2,,3
.L609:
	mov	x0, x22	// prephitmp_38, tmp294
// /usr/include/c++/13/bits/char_traits.h:429: 	if (__n == 0)
	cbz	x19, .L610	// _69,
	b	.L608		//
	.p2align 2,,3
.L645:
	adrp	x21, :got:__stack_chk_guard	// tmp291,
	ldr	x21, [x21, :got_lo12:__stack_chk_guard]	// tmp291,
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	add	x1, sp, 8	//,,
	mov	x0, x26	//, tmp293
	mov	x2, 0	//,
.LEHB57:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm		//
.LEHE57:
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [sp, 8]	// MEM[(long unsigned int *)_135], MEM[(long unsigned int *)_135]
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 48]	// _73, D.102212._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 64]	// MEM[(long unsigned int *)_135], D.102212.D.50133._M_allocated_capacity
.L608:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x19	//, _69
	mov	x1, x25	//, _7
	bl	memcpy		//
// /usr/include/c++/13/bits/basic_string.tcc:251: 	_M_set_length(__dnew);
	ldr	x19, [sp, 8]	// _69, MEM[(long unsigned int *)_135]
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 48]	// prephitmp_38, D.102212._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	b	.L610		//
	.p2align 2,,3
.L651:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x1, x23	//, tmp292
	add	x2, x19, 1	//, pretmp_183,
	bl	memcpy		//
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x19, [x20, 8]	// pretmp_183, MEM[(struct basic_string *)_24(D)]._M_string_length
	b	.L595		//
	.p2align 2,,3
.L649:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_86]._M_string_length,
	mov	x0, x3	//, _106
	mov	x1, x21	//, _108
	bl	memcpy		//
	ldr	x2, [x19, 8]	// MEM[(const struct basic_string *)_86]._M_string_length, MEM[(const struct basic_string *)_86]._M_string_length
	b	.L618		//
	.p2align 2,,3
.L647:
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_82]._M_string_length,
	mov	x1, x21	//, _89
	mov	x0, x25	//, tmp298
	bl	memcpy		//
	ldr	x2, [x19, 8]	// MEM[(const struct basic_string *)_82]._M_string_length, MEM[(const struct basic_string *)_82]._M_string_length
	b	.L614		//
.L634:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x1, x0	// tmp308,
	mov	x0, x19	//, tmp296
	mov	x19, x1	// tmp281, tmp308
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L626:
	mov	x0, x26	//, tmp293
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L627:
	mov	x0, x24	//, tmp290
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	ldr	x0, [sp, 232]	// tmp323, D.120258
	ldr	x1, [x21]	// tmp324,
	subs	x0, x0, x1	// tmp323, tmp324
	mov	x1, 0	// tmp324
	beq	.L628		//,
.L640:
// main.cpp:202: }
	bl	__stack_chk_fail		//
.L642:
// /usr/include/c++/13/bits/basic_string.h:646: 	  std::__throw_logic_error(__N("basic_string: "
	adrp	x0, :got:__stack_chk_guard	// tmp191,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp191,
	ldr	x2, [sp, 232]	// tmp315, D.120258
	ldr	x1, [x0]	// tmp316,
	subs	x2, x2, x1	// tmp315, tmp316
	mov	x1, 0	// tmp316
	bne	.L640		//,
	adrp	x0, .LC20	// tmp193,
	add	x0, x0, :lo12:.LC20	//, tmp193,
.LEHB58:
	bl	_ZSt19__throw_logic_errorPKc		//
.LEHE58:
.L644:
	adrp	x21, :got:__stack_chk_guard	// tmp291,
	ldr	x21, [x21, :got_lo12:__stack_chk_guard]	// tmp291,
	ldr	x0, [sp, 232]	// tmp317, D.120258
	ldr	x1, [x21]	// tmp318,
	subs	x0, x0, x1	// tmp317, tmp318
	mov	x1, 0	// tmp318
	bne	.L640		//,
	adrp	x0, .LC20	// tmp212,
	add	x0, x0, :lo12:.LC20	//, tmp212,
.LEHB59:
	bl	_ZSt19__throw_logic_errorPKc		//
.LEHE59:
.L648:
// /usr/include/c++/13/bits/basic_string.h:400: 	  __throw_length_error(__N(__s));
	adrp	x21, :got:__stack_chk_guard	// tmp291,
	ldr	x21, [x21, :got_lo12:__stack_chk_guard]	// tmp291,
	ldr	x0, [sp, 232]	// tmp321, D.120258
	ldr	x1, [x21]	// tmp322,
	subs	x0, x0, x1	// tmp321, tmp322
	mov	x1, 0	// tmp322
	bne	.L640		//,
	adrp	x0, .LC21	// tmp245,
	add	x19, sp, 80	// tmp296,,
	add	x0, x0, :lo12:.LC21	//, tmp245,
.LEHB60:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE60:
.L646:
	ldr	x0, [sp, 232]	// tmp319, D.120258
	ldr	x1, [x21]	// tmp320,
	subs	x0, x0, x1	// tmp319, tmp320
	mov	x1, 0	// tmp320
	bne	.L640		//,
	adrp	x0, .LC21	// tmp227,
	add	x0, x0, :lo12:.LC21	//, tmp227,
.LEHB61:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE61:
.L632:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x19, x0	// tmp285, tmp310
	b	.L627		//
.L633:
	mov	x19, x0	// tmp280, tmp309
	b	.L626		//
.L628:
	mov	x0, x19	//, tmp285
.LEHB62:
	bl	_Unwind_Resume		//
.LEHE62:
	.cfi_endproc
.LFE4502:
	.section	.gcc_except_table
.LLSDA4502:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4502-.LLSDACSB4502
.LLSDACSB4502:
	.uleb128 .LEHB54-.LFB4502
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L633-.LFB4502
	.uleb128 0
	.uleb128 .LEHB55-.LFB4502
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L634-.LFB4502
	.uleb128 0
	.uleb128 .LEHB56-.LFB4502
	.uleb128 .LEHE56-.LEHB56
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB57-.LFB4502
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L632-.LFB4502
	.uleb128 0
	.uleb128 .LEHB58-.LFB4502
	.uleb128 .LEHE58-.LEHB58
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB59-.LFB4502
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L632-.LFB4502
	.uleb128 0
	.uleb128 .LEHB60-.LFB4502
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L634-.LFB4502
	.uleb128 0
	.uleb128 .LEHB61-.LFB4502
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L633-.LFB4502
	.uleb128 0
	.uleb128 .LEHB62-.LFB4502
	.uleb128 .LEHE62-.LEHB62
	.uleb128 0
	.uleb128 0
.LLSDACSE4502:
	.text
	.size	_Z5glyphB5cxx11RK4Cellbb, .-_Z5glyphB5cxx11RK4Cellbb
	.section	.text._ZNSt6vectorI4CellSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI4CellSaIS0_EED5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorI4CellSaIS0_EED2Ev
	.type	_ZNSt6vectorI4CellSaIS0_EED2Ev, %function
_ZNSt6vectorI4CellSaIS0_EED2Ev:
.LFB4890:
	.cfi_startproc
// /usr/include/c++/13/bits/stl_vector.h:733:       ~vector() _GLIBCXX_NOEXCEPT
	mov	x2, x0	// this, tmp99
// /usr/include/c++/13/bits/stl_vector.h:369: 	_M_deallocate(_M_impl._M_start,
	ldr	x0, [x0]	// _6, MEM[(struct _Vector_base *)this_4(D)]._M_impl.D.100663._M_start
// /usr/include/c++/13/bits/stl_vector.h:389: 	if (__p)
	cbz	x0, .L652	// _6,
// /usr/include/c++/13/bits/stl_vector.h:370: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	ldr	x1, [x2, 16]	// MEM[(struct _Vector_base *)this_4(D)]._M_impl.D.100663._M_end_of_storage, MEM[(struct _Vector_base *)this_4(D)]._M_impl.D.100663._M_end_of_storage
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	sub	x1, x1, x0	//, MEM[(struct _Vector_base *)this_4(D)]._M_impl.D.100663._M_end_of_storage, _6
	b	_ZdlPvm		//
	.p2align 2,,3
.L652:
// /usr/include/c++/13/bits/stl_vector.h:738:       }
	ret	
	.cfi_endproc
.LFE4890:
	.size	_ZNSt6vectorI4CellSaIS0_EED2Ev, .-_ZNSt6vectorI4CellSaIS0_EED2Ev
	.weak	_ZNSt6vectorI4CellSaIS0_EED1Ev
	.set	_ZNSt6vectorI4CellSaIS0_EED1Ev,_ZNSt6vectorI4CellSaIS0_EED2Ev
	.section	.text._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
	.type	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_, %function
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_:
.LFB4925:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x5, x1	// __rhs, tmp149
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x6, x0	// tmp122, __lhs
// /usr/include/c++/13/bits/basic_string.h:3651:     operator+(basic_string<_CharT, _Traits, _Alloc>&& __lhs,
	mov	x29, sp	//,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldp	x1, x2, [x1]	// pretmp_63, _13, MEM[(const struct basic_string *)__rhs_5(D)]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:3651:     operator+(basic_string<_CharT, _Traits, _Alloc>&& __lhs,
	stp	x19, x20, [sp, 16]	//,,
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x19, x8	// <retval>, tmp147
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	ldr	x4, [x0, 8]	// _14, MEM[(const struct basic_string *)__lhs_3(D)]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x3, [x6], 16	// _8, MEM[(const struct basic_string *)__lhs_3(D)]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:3651:     operator+(basic_string<_CharT, _Traits, _Alloc>&& __lhs,
	str	x21, [sp, 32]	//,
	.cfi_offset 21, -16
// /usr/include/c++/13/bits/basic_string.h:3664: 	  const auto __size = __lhs.size() + __rhs.size();
	add	x7, x2, x4	// __size, _13, _14
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x3, x6	// _8, tmp122
	beq	.L670		//,
// /usr/include/c++/13/bits/basic_string.h:3665: 	  if (__size > __lhs.capacity() && __size <= __rhs.capacity())
	ldr	x6, [x0, 16]	// MEM[(const struct basic_string *)__lhs_3(D)].D.50133._M_allocated_capacity, MEM[(const struct basic_string *)__lhs_3(D)].D.50133._M_allocated_capacity
	cmp	x6, x7	// MEM[(const struct basic_string *)__lhs_3(D)].D.50133._M_allocated_capacity, __size
	bcs	.L656		//,
// /usr/include/c++/13/bits/basic_string.h:241: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	add	x6, x5, 16	// tmp125, __rhs,
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x1, x6	// pretmp_63, tmp125
	beq	.L665		//,
.L657:
// /usr/include/c++/13/bits/basic_string.h:1171: 	return _M_is_local() ? size_type(_S_local_capacity)
	ldr	x6, [x5, 16]	// iftmp.121_17, MEM[(const struct basic_string *)__rhs_5(D)].D.50133._M_allocated_capacity
.L658:
// /usr/include/c++/13/bits/basic_string.h:3665: 	  if (__size > __lhs.capacity() && __size <= __rhs.capacity())
	cmp	x7, x6	// __size, iftmp.121_17
	bls	.L671		//,
.L656:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x3, 4611686018427387903	// tmp135,
	sub	x3, x3, x4	// tmp134, tmp135, _14
	cmp	x2, x3	// _13, tmp134
	bhi	.L672		//,
// /usr/include/c++/13/bits/basic_string.h:1459: 	return _M_append(__s, __n);
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x21, x0	// _37, _44
// /usr/include/c++/13/bits/basic_string.h:230: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x3, x19, 16	// _35, <retval>,
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x3, [x19]	// _35,* <retval>
// /usr/include/c++/13/bits/basic_string.h:1459: 	return _M_append(__s, __n);
	mov	x20, x0	// _44, tmp151
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [x21], 16	// _36,
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x1, x21	// _36, _37
	beq	.L673		//,
.L663:
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [x0, 16]	// *_44.D.50133._M_allocated_capacity,
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x1, [x19]	// _36,* <retval>
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x0, [x19, 16]	// *_44.D.50133._M_allocated_capacity,
.L664:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	ldr	x0, [x20, 8]	// MEM[(const struct basic_string *)_44]._M_string_length,
	str	x0, [x19, 8]	// MEM[(const struct basic_string *)_44]._M_string_length,
	stp	x21, xzr, [x20]	// _37,,* _44
// /usr/include/c++/13/bits/basic_string.h:3669:     }
	mov	x0, x19	//, <retval>
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x20, 16]	//,
// /usr/include/c++/13/bits/basic_string.h:3669:     }
	ldp	x19, x20, [sp, 16]	//,,
	ldr	x21, [sp, 32]	//,
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret	
	.p2align 2,,3
.L671:
	.cfi_restore_state
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	mov	x1, 0	//,
	mov	x0, x5	//, __rhs
	mov	x2, 0	//,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm		//
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x21, x0	// _37, _44
// /usr/include/c++/13/bits/basic_string.h:230: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x3, x19, 16	// _35, <retval>,
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x3, [x19]	// _35,* <retval>
// /usr/include/c++/13/bits/basic_string.h:1459: 	return _M_append(__s, __n);
	mov	x20, x0	// _44, tmp151
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [x21], 16	// _36,
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x1, x21	// _36, _37
	bne	.L663		//,
.L673:
// /usr/include/c++/13/bits/basic_string.h:683: 	    traits_type::copy(_M_local_buf, __str._M_local_buf,
	ldr	x2, [x20, 8]	// MEM[(const struct basic_string *)_44]._M_string_length,
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x0, x3	//, _35
	mov	x1, x21	//, _37
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_44]._M_string_length,
	bl	memcpy		//
	b	.L664		//
	.p2align 2,,3
.L665:
// /usr/include/c++/13/bits/basic_string.h:1171: 	return _M_is_local() ? size_type(_S_local_capacity)
	mov	x6, 15	// iftmp.121_17,
	b	.L658		//
	.p2align 2,,3
.L670:
// /usr/include/c++/13/bits/basic_string.h:3665: 	  if (__size > __lhs.capacity() && __size <= __rhs.capacity())
	cmp	x7, 15	// __size,
	bls	.L656		//,
// /usr/include/c++/13/bits/basic_string.h:241: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	add	x6, x5, 16	// tmp123, __rhs,
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x1, x6	// pretmp_63, tmp123
	bne	.L657		//,
	b	.L656		//
.L672:
// /usr/include/c++/13/bits/basic_string.h:400: 	  __throw_length_error(__N(__s));
	adrp	x0, .LC21	// tmp137,
	add	x0, x0, :lo12:.LC21	//, tmp137,
	bl	_ZSt20__throw_length_errorPKc		//
	.cfi_endproc
.LFE4925:
	.size	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_, .-_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, %function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev:
.LFB4940:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	stp	x19, x20, [sp, 16]	//,,
	.cfi_offset 19, -32
	.cfi_offset 20, -24
// /usr/include/c++/13/bits/stl_vector.h:735: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	ldp	x19, x20, [x0]	// __first, prephitmp_14, this_4(D)->D.103453._M_impl.D.102792._M_start
// /usr/include/c++/13/bits/stl_vector.h:733:       ~vector() _GLIBCXX_NOEXCEPT
	str	x21, [sp, 32]	//,
	.cfi_offset 21, -16
// /usr/include/c++/13/bits/stl_vector.h:733:       ~vector() _GLIBCXX_NOEXCEPT
	mov	x21, x0	// this, tmp109
// /usr/include/c++/13/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	cmp	x19, x20	// __first, prephitmp_14
	beq	.L675		//,
	.p2align 3,,7
.L679:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x1, x19	// tmp104, __first
	ldr	x0, [x1], 16	// _17, MEM[(char * *)__first_10]
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _17, tmp104
	beq	.L676		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x19, 16]	// MEM <size_type> [(union ._anon_87 *)__first_10 + 16B], MEM <size_type> [(union ._anon_87 *)__first_10 + 16B]
// /usr/include/c++/13/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	add	x19, x19, 32	// __first, __first,
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM <size_type> [(union ._anon_87 *)__first_10 + 16B],
	bl	_ZdlPvm		//
// /usr/include/c++/13/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	cmp	x20, x19	// prephitmp_14, __first
	bne	.L679		//,
// /usr/include/c++/13/bits/stl_vector.h:369: 	_M_deallocate(_M_impl._M_start,
	ldr	x20, [x21]	// prephitmp_14, MEM[(struct _Vector_base *)this_4(D)]._M_impl.D.102792._M_start
.L675:
// /usr/include/c++/13/bits/stl_vector.h:389: 	if (__p)
	cbz	x20, .L674	// prephitmp_14,
// /usr/include/c++/13/bits/stl_vector.h:370: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	ldr	x1, [x21, 16]	// MEM[(struct _Vector_base *)this_4(D)]._M_impl.D.102792._M_end_of_storage, MEM[(struct _Vector_base *)this_4(D)]._M_impl.D.102792._M_end_of_storage
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x20	//, prephitmp_14
// /usr/include/c++/13/bits/stl_vector.h:738:       }
	ldr	x21, [sp, 32]	//,
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	sub	x1, x1, x20	//, MEM[(struct _Vector_base *)this_4(D)]._M_impl.D.102792._M_end_of_storage, prephitmp_14
// /usr/include/c++/13/bits/stl_vector.h:738:       }
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	b	_ZdlPvm		//
	.p2align 2,,3
.L676:
	.cfi_restore_state
// /usr/include/c++/13/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	add	x19, x19, 32	// __first, __first,
// /usr/include/c++/13/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	cmp	x20, x19	// prephitmp_14, __first
	bne	.L679		//,
// /usr/include/c++/13/bits/stl_vector.h:369: 	_M_deallocate(_M_impl._M_start,
	ldr	x20, [x21]	// prephitmp_14, MEM[(struct _Vector_base *)this_4(D)]._M_impl.D.102792._M_start
	b	.L675		//
	.p2align 2,,3
.L674:
// /usr/include/c++/13/bits/stl_vector.h:738:       }
	ldp	x19, x20, [sp, 16]	//,,
	ldr	x21, [sp, 32]	//,
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE4940:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	.set	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.section	.rodata._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.str1.8,"aMS",@progbits,1
	.align	3
.LC68:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, %function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:
.LFB5420:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!	//,,,
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp	//,
	stp	x23, x24, [sp, 48]	//,,
	.cfi_offset 23, -64
	.cfi_offset 24, -56
	mov	x23, x0	// this, tmp201
	stp	x25, x26, [sp, 64]	//,,
	.cfi_offset 25, -48
	.cfi_offset 26, -40
	ldp	x25, x24, [x0]	// _56, _57, MEM[(struct basic_string * *)this_17(D)]
	stp	x19, x20, [sp, 16]	//,,
	stp	x21, x22, [sp, 32]	//,,
	.cfi_offset 19, -96
	.cfi_offset 20, -88
	.cfi_offset 21, -80
	.cfi_offset 22, -72
	mov	x21, x1	// __position, tmp202
// /usr/include/c++/13/bits/stl_vector.h:1898: 	if (max_size() - size() < __n)
	mov	x1, 288230376151711743	// tmp164,
// /usr/include/c++/13/bits/vector.tcc:445:       vector<_Tp, _Alloc>::
	stp	x27, x28, [sp, 80]	//,,
	.cfi_offset 27, -32
	.cfi_offset 28, -24
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	x0, x24, x25	// tmp162, _57, _56
	asr	x0, x0, 5	// tmp163, tmp162,
// /usr/include/c++/13/bits/stl_vector.h:1898: 	if (max_size() - size() < __n)
	cmp	x0, x1	// tmp163, tmp164
	beq	.L710		//,
	mov	x20, x2	// __args#0, tmp203
// /usr/include/c++/13/bits/stl_iterator.h:1337:     { return __lhs.base() - __rhs.base(); }
	sub	x28, x21, x25	// tmp200, __position, _56
// /usr/include/c++/13/bits/stl_algobase.h:262:       if (__a < __b)
	cmp	x25, x24	// _56, _57
	beq	.L711		//,
// /usr/include/c++/13/bits/stl_vector.h:1901: 	const size_type __len = size() + (std::max)(size(), __n);
	lsl	x2, x0, 1	// __len, tmp163,
// /usr/include/c++/13/bits/stl_vector.h:1902: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmp	x0, x2	// tmp163, __len
	bhi	.L703		//,
// /usr/include/c++/13/bits/stl_vector.h:381: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	cbnz	x2, .L712	// __len,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x26, x20	// _77, __args#0
// /usr/include/c++/13/bits/stl_vector.h:381: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	mov	x27, 0	// iftmp.124_23,
// /usr/include/c++/13/bits/vector.tcc:468: 	  _Alloc_traits::construct(this->_M_impl,
	add	x3, x27, x28	// _2, iftmp.124_23, tmp200
	mov	x19, 32	// __cur,
// /usr/include/c++/13/bits/basic_string.h:230: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x0, x3, 16	// _75, _2,
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x0, [x27, x28]	// _75, MEM[(struct _Alloc_hider *)_2]._M_p
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [x26], 16	// _76, MEM[(const struct basic_string *)__args#0_22(D)]._M_dataplus._M_p
	mov	x22, 0	// _86,
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x4, [x20, 8]	// pretmp_114, MEM[(const struct basic_string *)__args#0_22(D)]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x1, x26	// _76, _77
	beq	.L713		//,
.L689:
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [x20, 16]	// *__args#0_22(D).D.50133._M_allocated_capacity, *__args#0_22(D).D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x1, [x27, x28]	// _76, *_2._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x0, [x3, 16]	// *__args#0_22(D).D.50133._M_allocated_capacity, *_2.D.50133._M_allocated_capacity
.L690:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x26, xzr, [x20]	// _77,, *__args#0_22(D)._M_dataplus._M_p
	str	x4, [x3, 8]	// pretmp_114, *_2._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x20, 16]	//, MEM[(char_type &)__args#0_22(D) + 16]
// /usr/include/c++/13/bits/stl_uninitialized.h:1104:       for (; __first != __last; ++__first, (void)++__cur)
	cmp	x21, x25	// __position, _56
	beq	.L691		//,
	add	x20, x25, 16	// ivtmp.1019, _56,
	add	x26, x21, 16	// _95, __position,
// /usr/include/c++/13/bits/stl_uninitialized.h:1103:       _ForwardIterator __cur = __result;
	mov	x19, x27	// __cur, iftmp.124_23
	.p2align 3,,7
.L695:
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x20, -8]	// pretmp_100, MEM[(long unsigned int *)_15 + -8B]
// /usr/include/c++/13/bits/basic_string.h:230: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x0, x19, 16	// _88, __cur,
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x0, [x19]	// _88, MEM[(char * *)__cur_120]
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [x20, -16]	// _89, MEM[(char * *)_15 + -16B]
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x20, x1	// ivtmp.1019, _89
	beq	.L714		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x3, [x20], 32	// MEM <size_type> [(union ._anon_87 *)_15], MEM <size_type> [(union ._anon_87 *)_15]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x1, x2, [x19]	// _89, pretmp_100, MEM[(char * *)__cur_120]
// /usr/include/c++/13/bits/stl_uninitialized.h:1104:       for (; __first != __last; ++__first, (void)++__cur)
	add	x19, x19, 32	// __cur, __cur,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x3, [x19, -16]	// MEM <size_type> [(union ._anon_87 *)_15], MEM <size_type> [(union ._anon_87 *)__cur_120 + 16B]
// /usr/include/c++/13/bits/stl_uninitialized.h:1104:       for (; __first != __last; ++__first, (void)++__cur)
	cmp	x20, x26	// ivtmp.1019, _95
	bne	.L695		//,
.L694:
// /usr/include/c++/13/bits/vector.tcc:483: 	      ++__new_finish;
	add	x28, x28, 32	// tmp190, tmp200,
	add	x19, x27, x28	// __cur, iftmp.124_23, tmp190
.L691:
// /usr/include/c++/13/bits/stl_uninitialized.h:1104:       for (; __first != __last; ++__first, (void)++__cur)
	cmp	x21, x24	// __position, _57
	beq	.L705		//,
	sub	x24, x24, x21	// tmp191, _57, __position
	add	x20, x21, 16	// ivtmp.1009, __position,
	add	x24, x19, x24	// __cur, __cur, tmp191
	.p2align 3,,7
.L700:
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldp	x1, x21, [x20, -16]	// _103, pretmp_99, MEM[(char * *)_64 + -16B]
// /usr/include/c++/13/bits/basic_string.h:230: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x0, x19, 16	// _102, __cur,
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x0, [x19]	// _102, MEM[(char * *)__cur_69]
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x20, x1	// ivtmp.1009, _103
	beq	.L715		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x2, [x20], 32	// MEM <size_type> [(union ._anon_87 *)_64], MEM <size_type> [(union ._anon_87 *)_64]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x1, x21, [x19]	// _103, pretmp_99, MEM[(char * *)__cur_69]
// /usr/include/c++/13/bits/stl_uninitialized.h:1104:       for (; __first != __last; ++__first, (void)++__cur)
	add	x19, x19, 32	// __cur, __cur,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x2, [x19, -16]	// MEM <size_type> [(union ._anon_87 *)_64], MEM <size_type> [(union ._anon_87 *)__cur_69 + 16B]
// /usr/include/c++/13/bits/stl_uninitialized.h:1104:       for (; __first != __last; ++__first, (void)++__cur)
	cmp	x19, x24	// __cur, __cur
	bne	.L700		//,
.L696:
// /usr/include/c++/13/bits/stl_vector.h:389: 	if (__p)
	cbz	x25, .L701	// _56,
// /usr/include/c++/13/bits/vector.tcc:520: 		    this->_M_impl._M_end_of_storage - __old_start);
	ldr	x1, [x23, 16]	// this_17(D)->D.103453._M_impl.D.102792._M_end_of_storage, this_17(D)->D.103453._M_impl.D.102792._M_end_of_storage
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x25	//, _56
	sub	x1, x1, x25	//, this_17(D)->D.103453._M_impl.D.102792._M_end_of_storage, _56
	bl	_ZdlPvm		//
.L701:
// /usr/include/c++/13/bits/vector.tcc:524:     }
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x25, x26, [sp, 64]	//,,
// /usr/include/c++/13/bits/vector.tcc:522:       this->_M_impl._M_finish = __new_finish;
	stp	x27, x24, [x23]	// iftmp.124_23, __cur, this_17(D)->D.103453._M_impl.D.102792._M_start
// /usr/include/c++/13/bits/vector.tcc:523:       this->_M_impl._M_end_of_storage = __new_start + __len;
	str	x22, [x23, 16]	// _86, this_17(D)->D.103453._M_impl.D.102792._M_end_of_storage
// /usr/include/c++/13/bits/vector.tcc:524:     }
	ldp	x21, x22, [sp, 32]	//,,
	ldp	x23, x24, [sp, 48]	//,,
	ldp	x27, x28, [sp, 80]	//,,
	ldp	x29, x30, [sp], 112	//,,,
	.cfi_remember_state
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
.L703:
	.cfi_restore_state
	mov	x22, 9223372036854775776	// prephitmp_116,
.L687:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x26, x20	// _77, __args#0
// /usr/include/c++/13/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x0, x22	//, prephitmp_116
	bl	_Znwm		//
	mov	x27, x0	// iftmp.124_23, tmp204
// /usr/include/c++/13/bits/vector.tcc:468: 	  _Alloc_traits::construct(this->_M_impl,
	add	x3, x27, x28	// _2, iftmp.124_23, tmp200
// /usr/include/c++/13/bits/vector.tcc:523:       this->_M_impl._M_end_of_storage = __new_start + __len;
	add	x22, x0, x22	// _86, iftmp.124_23, prephitmp_116
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [x26], 16	// _76, MEM[(const struct basic_string *)__args#0_22(D)]._M_dataplus._M_p
// /usr/include/c++/13/bits/vector.tcc:483: 	      ++__new_finish;
	add	x19, x0, 32	// __cur, iftmp.124_23,
// /usr/include/c++/13/bits/basic_string.h:230: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x0, x3, 16	// _75, _2,
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x0, [x27, x28]	// _75, MEM[(struct _Alloc_hider *)_2]._M_p
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x4, [x20, 8]	// pretmp_114, MEM[(const struct basic_string *)__args#0_22(D)]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x1, x26	// _76, _77
	bne	.L689		//,
.L713:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x2, x4, 1	//, pretmp_114,
	mov	x1, x26	//, _77
	stp	x4, x3, [sp, 96]	// pretmp_114, _2, %sfp
	bl	memcpy		//
	ldp	x4, x3, [sp, 96]	// pretmp_114, _2, %sfp
	b	.L690		//
	.p2align 2,,3
.L715:
	mov	x1, x20	//, ivtmp.1009
	add	x2, x21, 1	//, pretmp_99,
// /usr/include/c++/13/bits/stl_uninitialized.h:1104:       for (; __first != __last; ++__first, (void)++__cur)
	add	x19, x19, 32	// __cur, __cur,
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	bl	memcpy		//
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x21, [x19, -24]	// pretmp_99, MEM[(long unsigned int *)__cur_69 + 8B]
// /usr/include/c++/13/bits/stl_uninitialized.h:1104:       for (; __first != __last; ++__first, (void)++__cur)
	add	x20, x20, 32	// ivtmp.1009, ivtmp.1009,
	cmp	x19, x24	// __cur, __cur
	bne	.L700		//,
	b	.L696		//
	.p2align 2,,3
.L714:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x1, x20	//, ivtmp.1019
	add	x2, x2, 1	//, pretmp_100,
	bl	memcpy		//
// /usr/include/c++/13/bits/stl_uninitialized.h:1104:       for (; __first != __last; ++__first, (void)++__cur)
	add	x20, x20, 32	// ivtmp.1019, ivtmp.1019,
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	ldr	x0, [x20, -40]	// MEM[(long unsigned int *)_89 + -8B], MEM[(long unsigned int *)_89 + -8B]
	str	x0, [x19, 8]	// MEM[(long unsigned int *)_89 + -8B], MEM[(long unsigned int *)__cur_120 + 8B]
// /usr/include/c++/13/bits/stl_uninitialized.h:1104:       for (; __first != __last; ++__first, (void)++__cur)
	add	x19, x19, 32	// __cur, __cur,
// /usr/include/c++/13/bits/stl_uninitialized.h:1104:       for (; __first != __last; ++__first, (void)++__cur)
	cmp	x26, x20	// _95, ivtmp.1019
	bne	.L695		//,
	b	.L694		//
	.p2align 2,,3
.L711:
	adds	x0, x0, 1	// tmp167, tmp163,
	bcs	.L703		//,
// /usr/include/c++/13/bits/stl_vector.h:1902: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmp	x0, x1	// tmp167, tmp164
	csel	x22, x0, x1, ls	// tmp169, tmp167, tmp164,
// /usr/include/c++/13/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	lsl	x22, x22, 5	// prephitmp_116, tmp169,
	b	.L687		//
	.p2align 2,,3
.L705:
// /usr/include/c++/13/bits/stl_uninitialized.h:1103:       _ForwardIterator __cur = __result;
	mov	x24, x19	// __cur, __cur
	b	.L696		//
.L712:
// /usr/include/c++/13/bits/stl_vector.h:1902: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmp	x2, x1	// __len, tmp164
	csel	x2, x2, x1, ls	// tmp172, __len, tmp164,
// /usr/include/c++/13/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	lsl	x22, x2, 5	// prephitmp_116, tmp172,
	b	.L687		//
.L710:
// /usr/include/c++/13/bits/stl_vector.h:1899: 	  __throw_length_error(__N(__s));
	adrp	x0, .LC68	// tmp166,
	add	x0, x0, :lo12:.LC68	//, tmp166,
	bl	_ZSt20__throw_length_errorPKc		//
	.cfi_endproc
.LFE5420:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_
	.section	.rodata.str1.8
	.align	3
.LC69:
	.string	"\342\226\210"
	.align	3
.LC70:
	.string	"\342\226\221"
	.align	3
.LC71:
	.string	"-"
	.align	3
.LC72:
	.string	"#"
	.align	3
.LC73:
	.string	"[PAUSA] "
	.align	3
.LC74:
	.string	"+"
	.align	3
.LC75:
	.string	"\342\225\255"
	.align	3
.LC76:
	.string	"\342\225\256"
	.align	3
.LC77:
	.string	"\342\225\260"
	.align	3
.LC78:
	.string	"\342\225\257"
	.align	3
.LC79:
	.string	"\342\224\200"
	.align	3
.LC80:
	.string	"|"
	.align	3
.LC81:
	.string	"\342\224\202"
	.align	3
.LC82:
	.string	"["
	.align	3
.LC83:
	.string	"]"
	.align	3
.LC84:
	.string	"N"
	.align	3
.LC85:
	.string	"NE"
	.align	3
.LC86:
	.string	"E"
	.align	3
.LC87:
	.string	"SE"
	.align	3
.LC88:
	.string	"S"
	.align	3
.LC89:
	.string	"SW"
	.align	3
.LC90:
	.string	"W"
	.align	3
.LC91:
	.string	"NW"
	.align	3
.LC92:
	.string	"\342\206\221"
	.align	3
.LC93:
	.string	"\342\206\227"
	.align	3
.LC94:
	.string	"\342\206\222"
	.align	3
.LC95:
	.string	"\342\206\230"
	.align	3
.LC96:
	.string	"\342\206\223"
	.align	3
.LC97:
	.string	"\342\206\231"
	.align	3
.LC98:
	.string	"\342\206\220"
	.align	3
.LC99:
	.string	"\342\206\226"
	.align	3
.LC100:
	.string	"Paso "
	.align	3
.LC101:
	.string	" / "
	.align	3
.LC102:
	.string	"Viento "
	.align	3
.LC103:
	.string	" "
	.align	3
.LC104:
	.string	"  "
	.align	3
.LC105:
	.string	"no aplica"
	.align	3
.LC106:
	.string	"Humedad media: "
	.align	3
.LC107:
	.string	"Estados / total "
	.align	3
.LC108:
	.string	"Vegetaci\303\263n "
	.align	3
.LC109:
	.string	" ("
	.align	3
.LC110:
	.string	")"
	.align	3
.LC111:
	.string	"Ardiendo   "
	.align	3
.LC112:
	.string	"Quemado    "
	.align	3
.LC113:
	.string	"Agua "
	.align	3
.LC114:
	.string	")  Vac\303\255o "
	.align	3
.LC115:
	.string	"Inicial afectada: "
	.align	3
.LC116:
	.string	"/"
	.align	3
.LC117:
	.string	" del bosque inicial"
	.align	3
.LC118:
	.string	"T vegetaci\303\263n  * fuego"
	.align	3
.LC119:
	.string	"# quemado  ~ agua  . vac\303\255o"
	.align	3
.LC120:
	.string	" ms "
	.align	3
.LC121:
	.string	"+/- rapidez"
	.align	3
.LC122:
	.string	"espacio pausa  n paso  q salir"
	.align	3
.LC123:
	.string	"  Incendio forestal"
	.align	3
.LC124:
	.string	"Vista: f"
	.align	3
.LC125:
	.string	" c"
	.align	3
.LC126:
	.string	"Vista recortada: filas "
	.align	3
.LC127:
	.string	".."
	.align	3
.LC128:
	.string	", columnas "
	.align	3
.LC129:
	.string	"\n"
	.align	3
.LC130:
	.string	"\033[H"
	.align	3
.LC131:
	.string	"\033[J"
	.align	3
.LC132:
	.string	"\033[K\n"
	.text
	.align	2
	.p2align 4,,11
	.global	_Z4drawRKSt6vectorI4CellSaIS0_EERK7Optionsmmb
	.type	_Z4drawRKSt6vectorI4CellSaIS0_EERK7Optionsmmb, %function
_Z4drawRKSt6vectorI4CellSaIS0_EERK7Optionsmmb:
.LFB4503:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4503
	stp	x29, x30, [sp, -112]!	//,,,
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp	//,
	stp	x19, x20, [sp, 16]	//,,
	stp	x21, x22, [sp, 32]	//,,
	stp	x23, x24, [sp, 48]	//,,
	stp	x25, x26, [sp, 64]	//,,
	stp	x27, x28, [sp, 80]	//,,
	str	d8, [sp, 96]	//,
	sub	sp, sp, #2992	//,,
	.cfi_def_cfa_offset 3104
	.cfi_offset 19, -96
	.cfi_offset 20, -88
	.cfi_offset 21, -80
	.cfi_offset 22, -72
	.cfi_offset 23, -64
	.cfi_offset 24, -56
	.cfi_offset 25, -48
	.cfi_offset 26, -40
	.cfi_offset 27, -32
	.cfi_offset 28, -24
	.cfi_offset 72, -16
	str	xzr, [sp, 1024]	//,
	adrp	x5, :got:__stack_chk_guard	// tmp858,
	ldr	x5, [x5, :got_lo12:__stack_chk_guard]	// tmp858,
// main.cpp:203: void draw(const vector<Cell>& cells,const Options& o,size_t step,size_t initial_trees,bool tty) {
	mov	x23, x0	// cells, tmp2611
	and	w0, w4, 255	// tty, tty
	mov	x28, x3	// initial_trees, tmp2614
	ldr	x6, [x5]	// tmp2786,
	str	x6, [sp, 2984]	// tmp2786, D.121748
	mov	x6, 0	// tmp2786
	str	w0, [sp, 464]	// tty, %sfp
	mov	x0, 100	// prephitmp_3270,
	str	x1, [sp, 8]	// tmp2612, %sfp
	str	x2, [sp, 24]	// tmp2613, %sfp
	mov	x19, 40	// _3417,
	str	x0, [sp, 32]	// prephitmp_3270, %sfp
// main.cpp:204:     winsize ws{}; if(tty) ioctl(STDOUT_FILENO,TIOCGWINSZ,&ws);
	and	w0, w4, 1	// tmp2491, tty,
	str	w0, [sp, 468]	// tmp2491, %sfp
// main.cpp:204:     winsize ws{}; if(tty) ioctl(STDOUT_FILENO,TIOCGWINSZ,&ws);
	str	xzr, [sp, 560]	//, ws
// main.cpp:204:     winsize ws{}; if(tty) ioctl(STDOUT_FILENO,TIOCGWINSZ,&ws);
	tbnz	w4, 0, .L1581	// tty,,
.L717:
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	ldr	x0, [sp, 8]	// o, %sfp
// main.cpp:207:     size_t shown_cols=min(o.cols,max(size_t(1),(width-(side?52:4))/2));
	ldr	x2, [sp, 32]	// prephitmp_3270, %sfp
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	ldr	x1, [x0, 8]	// _470, MEM[(const long unsigned int &)o_256(D) + 8]
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	mov	x0, 35	// tmp880,
	cmp	x1, x0	// _470,
	csel	x0, x1, x0, ls	// tmp879, _470, tmp880,
// main.cpp:206:     bool side=width>=2*min(o.cols,size_t(35))+52;
	add	x0, x0, 26	// tmp881, tmp879,
	lsl	x0, x0, 1	// _7, tmp881,
	str	x0, [sp, 56]	// _7, %sfp
// main.cpp:207:     size_t shown_cols=min(o.cols,max(size_t(1),(width-(side?52:4))/2));
	cmp	x0, x2	// _7, prephitmp_3270
	bls	.L719		//,
// main.cpp:207:     size_t shown_cols=min(o.cols,max(size_t(1),(width-(side?52:4))/2));
	sub	x0, x2, #4	// _2086, prephitmp_3270,
// /usr/include/c++/13/bits/stl_algobase.h:262:       if (__a < __b)
	cmp	x0, 3	// _2086,
	bhi	.L720		//,
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	x1, 0	// _470,
	csinc	x22, x1, xzr, eq	// _10, _470,
.L721:
	ldr	x0, [sp, 8]	// o, %sfp
	ldrb	w0, [x0, 101]	// o_256(D)->keyboard, o_256(D)->keyboard
	add	x0, x0, 17	// iftmp.86_141, o_256(D)->keyboard,
.L1261:
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	ldr	x3, [sp, 8]	// o, %sfp
// /usr/include/c++/13/bits/stl_algobase.h:262:       if (__a < __b)
	subs	x0, x19, x0	// tmp884, _3417, iftmp.86_141
	csinc	x0, x0, xzr, ne	// tmp884, tmp884,
// main.cpp:209:     size_t r0= o.fire_row>shown_rows/2? min(o.fire_row-shown_rows/2,o.rows-shown_rows):0;
	str	xzr, [sp, 48]	//, %sfp
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	ldr	x2, [x3]	// _450, MEM[(const long unsigned int &)o_256(D)]
// main.cpp:209:     size_t r0= o.fire_row>shown_rows/2? min(o.fire_row-shown_rows/2,o.rows-shown_rows):0;
	ldr	x3, [x3, 80]	// _15, o_256(D)->fire_row
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	x0, x2	// tmp884, _450
	csel	x4, x0, x2, ls	// k, tmp884, _450,
	str	x4, [sp, 16]	// k, %sfp
// main.cpp:209:     size_t r0= o.fire_row>shown_rows/2? min(o.fire_row-shown_rows/2,o.rows-shown_rows):0;
	lsr	x0, x4, 1	// _16, k,
// main.cpp:209:     size_t r0= o.fire_row>shown_rows/2? min(o.fire_row-shown_rows/2,o.rows-shown_rows):0;
	cmp	x3, x0	// _15, _16
	bls	.L724		//,
// main.cpp:209:     size_t r0= o.fire_row>shown_rows/2? min(o.fire_row-shown_rows/2,o.rows-shown_rows):0;
	sub	x3, x3, x0	// tmp886, _15, _16
// main.cpp:209:     size_t r0= o.fire_row>shown_rows/2? min(o.fire_row-shown_rows/2,o.rows-shown_rows):0;
	sub	x2, x2, x4	// tmp887, _450, k
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	x3, x2	// tmp886, tmp887
	csel	x0, x3, x2, ls	// iftmp.88_142, tmp886, tmp887,
	str	x0, [sp, 48]	// iftmp.88_142, %sfp
.L724:
// main.cpp:210:     size_t c0= o.fire_col>shown_cols/2? min(o.fire_col-shown_cols/2,o.cols-shown_cols):0;
	ldr	x0, [sp, 8]	// o, %sfp
// main.cpp:210:     size_t c0= o.fire_col>shown_cols/2? min(o.fire_col-shown_cols/2,o.cols-shown_cols):0;
	lsr	x2, x22, 1	// _20, _10,
// main.cpp:210:     size_t c0= o.fire_col>shown_cols/2? min(o.fire_col-shown_cols/2,o.cols-shown_cols):0;
	mov	x27, 0	// iftmp.89_143,
// main.cpp:210:     size_t c0= o.fire_col>shown_cols/2? min(o.fire_col-shown_cols/2,o.cols-shown_cols):0;
	ldr	x0, [x0, 88]	// _19, o_256(D)->fire_col
// main.cpp:210:     size_t c0= o.fire_col>shown_cols/2? min(o.fire_col-shown_cols/2,o.cols-shown_cols):0;
	cmp	x0, x2	// _19, _20
	bls	.L725		//,
// main.cpp:210:     size_t c0= o.fire_col>shown_cols/2? min(o.fire_col-shown_cols/2,o.cols-shown_cols):0;
	sub	x0, x0, x2	// tmp888, _19, _20
// main.cpp:210:     size_t c0= o.fire_col>shown_cols/2? min(o.fire_col-shown_cols/2,o.cols-shown_cols):0;
	sub	x1, x1, x22	// tmp889, _470, _10
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	x0, x1	// tmp888, tmp889
	csel	x27, x0, x1, ls	// iftmp.89_143, tmp888, tmp889,
.L725:
// /usr/include/c++/13/bits/stl_iterator.h:1077:       : _M_current(__i) { }
	ldp	x0, x5, [x23]	// _1057, _1058, MEM[(const struct Cell * const &)cells_287(D)]
// main.cpp:177:     Stats s;
	add	x4, sp, 2072	// tmp2490,,
	movi	v0.4s, 0	// tmp891
	str	xzr, [x4, 48]	//, s
	movi	d8, #0	// s$mean
	stp	q0, q0, [x4]	// tmp891, tmp891, s
	str	q0, [x4, 32]	// tmp891, s
// main.cpp:178:     for(const auto& a:cells) {++s.count[a.state]; if(a.state==TREE) s.mean+=a.moisture;}
	cmp	x0, x5	// _1057, _1058
	beq	.L1275		//,
	.p2align 3,,7
.L728:
// main.cpp:178:     for(const auto& a:cells) {++s.count[a.state]; if(a.state==TREE) s.mean+=a.moisture;}
	ldrb	w3, [x0, 5]	//, MEM[(unsigned char *)_3304 + 5B]
// main.cpp:178:     for(const auto& a:cells) {++s.count[a.state]; if(a.state==TREE) s.mean+=a.moisture;}
	ldr	x1, [x4, x3, lsl 3]	// s.count[_1061], s.count[_1061]
	add	x1, x1, 1	// tmp899, s.count[_1061],
	str	x1, [x4, x3, lsl 3]	// tmp899, s.count[_1061]
// main.cpp:178:     for(const auto& a:cells) {++s.count[a.state]; if(a.state==TREE) s.mean+=a.moisture;}
	cmp	w3, 1	// _1060,
	bne	.L727		//,
// main.cpp:178:     for(const auto& a:cells) {++s.count[a.state]; if(a.state==TREE) s.mean+=a.moisture;}
	ldr	s0, [x0]	// MEM[(float *)_3304], MEM[(float *)_3304]
	fcvt	d0, s0	// tmp901, MEM[(float *)_3304]
// main.cpp:178:     for(const auto& a:cells) {++s.count[a.state]; if(a.state==TREE) s.mean+=a.moisture;}
	fadd	d8, d8, d0	// s$mean, s$mean, tmp901
.L727:
// main.cpp:178:     for(const auto& a:cells) {++s.count[a.state]; if(a.state==TREE) s.mean+=a.moisture;}
	add	x0, x0, 8	// ivtmp.1236, ivtmp.1236,
	cmp	x5, x0	// _1058, ivtmp.1236
	bne	.L728		//,
// main.cpp:211:     auto s=statistics(cells,initial_trees);
	ldr	x1, [sp, 2072]	// prephitmp_3362, s.count[0]
	str	x1, [sp, 88]	// prephitmp_3362, %sfp
	ldr	x1, [sp, 2088]	// pretmp_3439, s.count[2]
	str	x1, [sp, 112]	// pretmp_3439, %sfp
// main.cpp:179:     if(s.count[TREE]) s.mean/=s.count[TREE];
	ldr	x0, [sp, 2080]	// prephitmp_3346, s.count[1]
	str	x0, [sp, 64]	// prephitmp_3346, %sfp
// main.cpp:211:     auto s=statistics(cells,initial_trees);
	ldr	x1, [sp, 2096]	// prephitmp_3332, s.count[3]
	str	x1, [sp, 80]	// prephitmp_3332, %sfp
	ldr	x1, [sp, 2104]	// prephitmp_3383, s.count[4]
	str	x1, [sp, 104]	// prephitmp_3383, %sfp
// main.cpp:180:     s.affected=initial_trees-s.count[TREE];
	sub	x20, x28, x0	// prephitmp_3347, initial_trees, prephitmp_3346
// main.cpp:179:     if(s.count[TREE]) s.mean/=s.count[TREE];
	cbz	x0, .L726	// prephitmp_3346,
// main.cpp:179:     if(s.count[TREE]) s.mean/=s.count[TREE];
	fmov	d0, x0	// prephitmp_3346, prephitmp_3346
	ucvtf	d0, d0	// tmp903, prephitmp_3346
	fdiv	d8, d8, d0	// s$mean, s$mean, tmp903
.L726:
// main.cpp:212:     size_t filled=10*s.affected/initial_trees;
	add	x21, x20, x20, lsl 2	// tmp906, prephitmp_3347, prephitmp_3347,
// main.cpp:213:     string bar="["; for(size_t k=0;k<10;++k) bar+=(k<filled?(o.ascii?"#":"█"):(o.ascii?"-":"░")); bar+="]";
	add	x0, sp, 600	// tmp2498,,
	adrp	x1, .LC82	// tmp909,
// main.cpp:213:     string bar="["; for(size_t k=0;k<10;++k) bar+=(k<filled?(o.ascii?"#":"█"):(o.ascii?"-":"░")); bar+="]";
	adrp	x24, .LC70	// tmp2607,
// main.cpp:212:     size_t filled=10*s.affected/initial_trees;
	lsl	x21, x21, 1	// tmp907, tmp906,
// main.cpp:213:     string bar="["; for(size_t k=0;k<10;++k) bar+=(k<filled?(o.ascii?"#":"█"):(o.ascii?"-":"░")); bar+="]";
	add	x1, x1, :lo12:.LC82	//, tmp909,
// main.cpp:213:     string bar="["; for(size_t k=0;k<10;++k) bar+=(k<filled?(o.ascii?"#":"█"):(o.ascii?"-":"░")); bar+="]";
	add	x24, x24, :lo12:.LC70	// iftmp.90_144, tmp2607,
// main.cpp:213:     string bar="["; for(size_t k=0;k<10;++k) bar+=(k<filled?(o.ascii?"#":"█"):(o.ascii?"-":"░")); bar+="]";
	adrp	x25, .LC71	// tmp2609,
// main.cpp:213:     string bar="["; for(size_t k=0;k<10;++k) bar+=(k<filled?(o.ascii?"#":"█"):(o.ascii?"-":"░")); bar+="]";
	mov	x19, 0	// k,
// main.cpp:213:     string bar="["; for(size_t k=0;k<10;++k) bar+=(k<filled?(o.ascii?"#":"█"):(o.ascii?"-":"░")); bar+="]";
	add	x25, x25, :lo12:.LC71	// iftmp.90_144, tmp2609,
// main.cpp:212:     size_t filled=10*s.affected/initial_trees;
	udiv	x21, x21, x28	// filled, tmp907, initial_trees
// main.cpp:213:     string bar="["; for(size_t k=0;k<10;++k) bar+=(k<filled?(o.ascii?"#":"█"):(o.ascii?"-":"░")); bar+="]";
	str	x0, [sp, 40]	// tmp2498, %sfp
.LEHB63:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE63:
	b	.L733		//
	.p2align 2,,3
.L1584:
// main.cpp:213:     string bar="["; for(size_t k=0;k<10;++k) bar+=(k<filled?(o.ascii?"#":"█"):(o.ascii?"-":"░")); bar+="]";
	tbz	x0, 0, .L1276	// pretmp_3543,,
// main.cpp:213:     string bar="["; for(size_t k=0;k<10;++k) bar+=(k<filled?(o.ascii?"#":"█"):(o.ascii?"-":"░")); bar+="]";
	adrp	x1, .LC72	// tmp862,
	add	x1, x1, :lo12:.LC72	// iftmp.90_144, tmp862,
// main.cpp:213:     string bar="["; for(size_t k=0;k<10;++k) bar+=(k<filled?(o.ascii?"#":"█"):(o.ascii?"-":"░")); bar+="]";
	mov	x2, 1	// prephitmp_3444,
.L730:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x3, [sp, 608]	// bar._M_string_length, bar._M_string_length
	mov	x0, 4611686018427387903	// tmp914,
	sub	x0, x0, x3	// tmp913, tmp914, bar._M_string_length
	cmp	x0, x2	// tmp913, prephitmp_3444
	bcc	.L1582		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	ldr	x0, [sp, 40]	//, %sfp
.LEHB64:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
// main.cpp:213:     string bar="["; for(size_t k=0;k<10;++k) bar+=(k<filled?(o.ascii?"#":"█"):(o.ascii?"-":"░")); bar+="]";
	add	x19, x19, 1	// k, k,
// main.cpp:213:     string bar="["; for(size_t k=0;k<10;++k) bar+=(k<filled?(o.ascii?"#":"█"):(o.ascii?"-":"░")); bar+="]";
	cmp	x19, 10	// k,
	beq	.L1583		//,
.L733:
// main.cpp:213:     string bar="["; for(size_t k=0;k<10;++k) bar+=(k<filled?(o.ascii?"#":"█"):(o.ascii?"-":"░")); bar+="]";
	ldr	x0, [sp, 8]	// o, %sfp
	ldrb	w0, [x0, 98]	// pretmp_3543, o_256(D)->ascii
// main.cpp:213:     string bar="["; for(size_t k=0;k<10;++k) bar+=(k<filled?(o.ascii?"#":"█"):(o.ascii?"-":"░")); bar+="]";
	cmp	x21, x19	// filled, k
	bhi	.L1584		//,
// main.cpp:213:     string bar="["; for(size_t k=0;k<10;++k) bar+=(k<filled?(o.ascii?"#":"█"):(o.ascii?"-":"░")); bar+="]";
	tbz	x0, 0, .L1277	// pretmp_3543,,
// main.cpp:213:     string bar="["; for(size_t k=0;k<10;++k) bar+=(k<filled?(o.ascii?"#":"█"):(o.ascii?"-":"░")); bar+="]";
	mov	x1, x25	// iftmp.90_144, iftmp.90_144
// main.cpp:213:     string bar="["; for(size_t k=0;k<10;++k) bar+=(k<filled?(o.ascii?"#":"█"):(o.ascii?"-":"░")); bar+="]";
	mov	x2, 1	// prephitmp_3444,
	b	.L730		//
	.p2align 2,,3
.L1277:
// main.cpp:213:     string bar="["; for(size_t k=0;k<10;++k) bar+=(k<filled?(o.ascii?"#":"█"):(o.ascii?"-":"░")); bar+="]";
	mov	x1, x24	// iftmp.90_144, iftmp.90_144
	mov	x2, 3	// prephitmp_3444,
	b	.L730		//
	.p2align 2,,3
.L1276:
// main.cpp:213:     string bar="["; for(size_t k=0;k<10;++k) bar+=(k<filled?(o.ascii?"#":"█"):(o.ascii?"-":"░")); bar+="]";
	adrp	x1, .LC69	// tmp859,
	mov	x2, 3	// prephitmp_3444,
	add	x1, x1, :lo12:.LC69	// iftmp.90_144, tmp859,
	b	.L730		//
	.p2align 2,,3
.L1583:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 608]	// bar._M_string_length, bar._M_string_length
	mov	x0, 4611686018427387903	// tmp921,
	cmp	x1, x0	// bar._M_string_length, tmp921
	beq	.L1585		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	ldr	x0, [sp, 40]	//, %sfp
	adrp	x1, .LC83	// tmp926,
	mov	x2, 1	//,
	add	x1, x1, :lo12:.LC83	//, tmp926,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE64:
// main.cpp:215:     if(o.ascii) arrow=o.direction;
	ldr	x2, [sp, 8]	// o, %sfp
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, sp, 648	// tmp2502,,
	add	x3, sp, 632	// tmp2499,,
	str	x3, [sp, 160]	// tmp2499, %sfp
	str	x1, [sp, 472]	// tmp2502, %sfp
// main.cpp:215:     if(o.ascii) arrow=o.direction;
	ldrb	w0, [x2, 98]	// o_256(D)->ascii, o_256(D)->ascii
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 632]	// tmp2502, MEM[(struct _Alloc_hider *)&arrow]._M_p
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	xzr, [sp, 640]	//, MEM[(struct basic_string *)&arrow]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 648]	//, MEM[(char_type &)&arrow + 16]
// main.cpp:215:     if(o.ascii) arrow=o.direction;
	tbz	x0, 0, .L736	// o_256(D)->ascii,,
// /usr/include/c++/13/bits/basic_string.h:1608: 	this->_M_assign(__str);
	add	x1, x2, 48	//, o,
	mov	x0, x3	//, tmp2499
.LEHB65:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_		//
.LEHE65:
.L737:
// main.cpp:221:     vector<string> info={"Paso "+to_string(step)+" / "+to_string(o.steps),
	add	x0, sp, 664	// tmp2504,,
	mov	x8, x0	// tmp2504, tmp2504
	str	x8, [sp, 200]	// tmp2504, %sfp
	ldr	x0, [sp, 24]	//, %sfp
.LEHB66:
	bl	_ZNSt7__cxx119to_stringEm		//
.LEHE66:
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	ldr	x0, [sp, 200]	//, %sfp
	adrp	x3, .LC100	// tmp1077,
	mov	x4, 5	//,
	add	x3, x3, :lo12:.LC100	//, tmp1077,
	mov	x2, 0	//,
	mov	x1, 0	//,
.LEHB67:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm		//
.LEHE67:
// /usr/include/c++/13/bits/basic_string.h:3676:     { return std::move(__rhs.insert(0, __lhs)); }
	add	x1, sp, 696	// tmp2506,,
	mov	x2, x1	// tmp2506, tmp2506
	mov	x1, x0	//, tmp2645
	mov	x0, x2	//, tmp2506
	str	x2, [sp, 208]	// tmp2506, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		//
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 704]	// D.103457._M_string_length, D.103457._M_string_length
	mov	x0, 4611686018427387903	// tmp1081,
	sub	x0, x0, x1	// tmp1080, tmp1081, D.103457._M_string_length
	cmp	x0, 2	// tmp1080,
	bls	.L1586		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	ldr	x0, [sp, 208]	//, %sfp
	adrp	x1, .LC101	// tmp1087,
	mov	x2, 3	//,
	add	x1, x1, :lo12:.LC101	//, tmp1087,
.LEHB68:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE68:
// /usr/include/c++/13/bits/basic_string.h:3690:     { return std::move(__lhs.append(__rhs)); }
	add	x1, sp, 728	// tmp2508,,
	mov	x2, x1	// tmp2508, tmp2508
	mov	x1, x0	//, tmp2648
	mov	x0, x2	//, tmp2508
	str	x2, [sp, 216]	// tmp2508, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		//
// main.cpp:221:     vector<string> info={"Paso "+to_string(step)+" / "+to_string(o.steps),
	add	x0, sp, 760	// tmp2510,,
	mov	x8, x0	// tmp2510, tmp2510
	str	x8, [sp, 224]	// tmp2510, %sfp
	ldr	x0, [sp, 8]	// o, %sfp
	ldr	x0, [x0, 16]	//, o_256(D)->steps
.LEHB69:
	bl	_ZNSt7__cxx119to_stringEm		//
.LEHE69:
// main.cpp:259: }
	ldp	x0, x1, [sp, 216]	//,, %sfp
	add	x21, sp, 2384	// tmp2505,,
	mov	x8, x21	//, tmp2505
.LEHB70:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_		//
.LEHE70:
	ldr	x19, [sp, 640]	// _1056, MEM[(long unsigned int *)&arrow + 8B]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x2, sp, 808	// tmp2516,,
	ldr	x24, [sp, 632]	// _1055, MEM[(char * *)&arrow]
	add	x0, sp, 792	// tmp2514,,
// /usr/include/c++/13/bits/basic_string.h:3537:       __str.reserve(__lhs_len + __rhs_len);
	add	x1, x19, 7	//, _1056,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x0, [sp, 24]	// tmp2514, %sfp
	str	x2, [sp, 480]	// tmp2516, %sfp
	str	x2, [sp, 792]	// tmp2516, MEM[(struct _Alloc_hider *)&D.103461]._M_p
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	xzr, [sp, 800]	//, D.103461._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 808]	//, MEM[(char_type &)&D.103461 + 16]
.LEHB71:
// /usr/include/c++/13/bits/basic_string.h:3537:       __str.reserve(__lhs_len + __rhs_len);
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm		//
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 800]	// D.103461._M_string_length, D.103461._M_string_length
	mov	x0, 4611686018427387903	// tmp1100,
	sub	x0, x0, x1	// tmp1099, tmp1100, D.103461._M_string_length
	cmp	x0, 6	// tmp1099,
	bls	.L1587		//,
// /usr/include/c++/13/bits/basic_string.h:1459: 	return _M_append(__s, __n);
	ldr	x0, [sp, 24]	//, %sfp
	adrp	x1, .LC102	// tmp1106,
	mov	x2, 7	//,
	add	x1, x1, :lo12:.LC102	//, tmp1106,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 800]	// D.103461._M_string_length, D.103461._M_string_length
	mov	x0, 4611686018427387903	// tmp1109,
	sub	x0, x0, x1	// tmp1108, tmp1109, D.103461._M_string_length
	cmp	x19, x0	// _1056, tmp1108
	bhi	.L1588		//,
// /usr/include/c++/13/bits/basic_string.h:1459: 	return _M_append(__s, __n);
	ldr	x0, [sp, 24]	//, %sfp
	mov	x2, x19	//, _1056
	mov	x1, x24	//, _1055
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE71:
// main.cpp:222:         "Viento "+arrow+(o.ascii?"":" "+o.direction)+"  "+to_string(o.wind),
	ldr	x0, [sp, 8]	// o, %sfp
	ldrb	w0, [x0, 98]	// o_256(D)->ascii, o_256(D)->ascii
	tbz	x0, 0, .L838	// o_256(D)->ascii,,
// main.cpp:222:         "Viento "+arrow+(o.ascii?"":" "+o.direction)+"  "+to_string(o.wind),
	add	x0, sp, 824	// tmp2517,,
	adrp	x1, .LC26	// tmp1123,
	add	x1, x1, :lo12:.LC26	//, tmp1123,
	str	x0, [sp, 96]	// tmp2517, %sfp
.LEHB72:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE72:
.L839:
// main.cpp:222:         "Viento "+arrow+(o.ascii?"":" "+o.direction)+"  "+to_string(o.wind),
	add	x0, sp, 856	// tmp2519,,
	str	x0, [sp, 232]	// tmp2519, %sfp
	ldr	x1, [sp, 96]	//, %sfp
	mov	x8, x0	//, tmp2519
	ldr	x0, [sp, 24]	//, %sfp
.LEHB73:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_		//
.LEHE73:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 864]	// D.103466._M_string_length, D.103466._M_string_length
	mov	x0, 4611686018427387903	// tmp1153,
	sub	x0, x0, x1	// tmp1152, tmp1153, D.103466._M_string_length
	cmp	x0, 1	// tmp1152,
	bls	.L1589		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	adrp	x0, .LC104	// tmp3001,
	add	x1, x0, :lo12:.LC104	//, tmp3001,
	ldr	x0, [sp, 232]	//, %sfp
	mov	x2, 2	//,
.LEHB74:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE74:
// /usr/include/c++/13/bits/basic_string.h:3690:     { return std::move(__lhs.append(__rhs)); }
	add	x1, sp, 888	// tmp2521,,
// /usr/include/c++/13/bits/basic_string.h:4246: 					   "%f", __val);
	adrp	x19, .LC22	// tmp2496,
// /usr/include/c++/13/bits/basic_string.h:3690:     { return std::move(__lhs.append(__rhs)); }
	mov	x2, x1	// tmp2521, tmp2521
	mov	x1, x0	//, tmp2657
	mov	x0, x2	//, tmp2521
	str	x2, [sp, 240]	// tmp2521, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		//
// /usr/include/c++/13/bits/basic_string.h:4246: 					   "%f", __val);
	ldr	x0, [sp, 8]	// o, %sfp
	add	x1, sp, 920	// tmp2525,,
	mov	x8, x1	//, tmp2525
	add	x2, x19, :lo12:.LC22	//, tmp2496,
	str	x1, [sp, 248]	// tmp2525, %sfp
	mov	x1, 58	//,
	ldr	s0, [x0, 32]	// o_256(D)->wind, o_256(D)->wind
	adrp	x0, :got:vsnprintf	//,
	ldr	x0, [x0, :got_lo12:vsnprintf]	//,
	fcvt	d0, s0	//, o_256(D)->wind
.LEHB75:
	bl	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_St9__va_listEmSB_z.constprop.0		//
.LEHE75:
// main.cpp:259: }
	ldp	x0, x1, [sp, 240]	//,, %sfp
	add	x8, sp, 2416	//,,
.LEHB76:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_		//
.LEHE76:
// main.cpp:223:         "Humedad media: "+(s.count[TREE]?to_string(s.mean):string("no aplica")),
	ldr	x0, [sp, 64]	// prephitmp_3346, %sfp
	cbz	x0, .L862	// prephitmp_3346,
// /usr/include/c++/13/bits/basic_string.h:4256: 					   "%f", __val);
	adrp	x0, :got:vsnprintf	//,
	ldr	x0, [x0, :got_lo12:vsnprintf]	//,
	fmov	d0, d8	//, s$mean
	add	x1, sp, 952	// tmp2526,,
	add	x2, x19, :lo12:.LC22	//, tmp2496,
	mov	x8, x1	//, tmp2526
	str	x1, [sp, 256]	// tmp2526, %sfp
	mov	x1, 328	//,
.LEHB77:
	bl	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_St9__va_listEmSB_z.constprop.0		//
.LEHE77:
.L863:
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	ldr	x0, [sp, 256]	//, %sfp
	adrp	x3, .LC106	// tmp1179,
	mov	x4, 15	//,
	add	x3, x3, :lo12:.LC106	//, tmp1179,
	mov	x2, 0	//,
	mov	x1, 0	//,
.LEHB78:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm		//
.LEHE78:
// /usr/include/c++/13/bits/basic_string.h:3676:     { return std::move(__rhs.insert(0, __lhs)); }
	add	x1, sp, 2448	// tmp2509,,
	mov	x2, x1	// tmp2509, tmp2509
	mov	x1, x0	//, tmp2663
	mov	x0, x2	//, tmp2509
	str	x2, [sp, 72]	// tmp2509, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		//
// main.cpp:224:         "Estados / total "+to_string(cells.size()),
	add	x0, sp, 984	// tmp2528,,
	str	x0, [sp, 264]	// tmp2528, %sfp
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ldr	x1, [x23]	// cells_287(D)->D.101324._M_impl.D.100663._M_start, cells_287(D)->D.101324._M_impl.D.100663._M_start
// main.cpp:224:         "Estados / total "+to_string(cells.size()),
	mov	x8, x0	//, tmp2528
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ldr	x0, [x23, 8]	// cells_287(D)->D.101324._M_impl.D.100663._M_finish, cells_287(D)->D.101324._M_impl.D.100663._M_finish
	sub	x0, x0, x1	// tmp1183, cells_287(D)->D.101324._M_impl.D.100663._M_finish, cells_287(D)->D.101324._M_impl.D.100663._M_start
// main.cpp:224:         "Estados / total "+to_string(cells.size()),
	asr	x0, x0, 3	//, tmp1183,
.LEHB79:
	bl	_ZNSt7__cxx119to_stringEm		//
.LEHE79:
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	ldr	x0, [sp, 264]	//, %sfp
	adrp	x3, .LC107	// tmp1190,
	mov	x4, 16	//,
	add	x3, x3, :lo12:.LC107	//, tmp1190,
	mov	x2, 0	//,
	mov	x1, 0	//,
.LEHB80:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm		//
.LEHE80:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x24, x0	// _1156, _1153
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, sp, 2496	// tmp2513,,
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// pretmp_3542, MEM[(const struct basic_string *)_1153]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 2480]	// tmp2513, MEM[(struct _Alloc_hider *)_688]._M_p
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	mov	x19, x0	// _1153, tmp2666
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 120]	// tmp2513, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x24], 16	// _1155, MEM[(const struct basic_string *)_1153]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x24	// _1155, _1156
	beq	.L1590		//,
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 2480]	// _1155, MEM[(struct basic_string *)_688]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [x19, 16]	// *_1153.D.50133._M_allocated_capacity, *_1153.D.50133._M_allocated_capacity
	str	x0, [sp, 2496]	// *_1153.D.50133._M_allocated_capacity, MEM[(struct basic_string *)_688].D.50133._M_allocated_capacity
.L875:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	ldr	x0, [x19, 8]	// MEM[(const struct basic_string *)_1153]._M_string_length, MEM[(const struct basic_string *)_1153]._M_string_length
	str	x0, [sp, 2488]	// MEM[(const struct basic_string *)_1153]._M_string_length, MEM[(struct basic_string *)_688]._M_string_length
// main.cpp:225:         "Vegetación "+to_string(s.count[TREE])+" ("+percent(s.count[TREE],cells.size())+")",
	add	x0, sp, 1016	// tmp2529,,
	str	x0, [sp, 272]	// tmp2529, %sfp
	mov	x8, x0	//, tmp2529
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x24, xzr, [x19]	// _1156,, *_1153._M_dataplus._M_p
// main.cpp:225:         "Vegetación "+to_string(s.count[TREE])+" ("+percent(s.count[TREE],cells.size())+")",
	ldr	x0, [sp, 64]	//, %sfp
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x19, 16]	//, MEM[(char_type &)_1153 + 16]
.LEHB81:
// main.cpp:225:         "Vegetación "+to_string(s.count[TREE])+" ("+percent(s.count[TREE],cells.size())+")",
	bl	_ZNSt7__cxx119to_stringEm		//
.LEHE81:
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	ldr	x0, [sp, 272]	//, %sfp
	adrp	x3, .LC108	// tmp1205,
	mov	x4, 12	//,
	add	x3, x3, :lo12:.LC108	//, tmp1205,
	mov	x2, 0	//,
	mov	x1, 0	//,
.LEHB82:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm		//
.LEHE82:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x24, x0	// _1173, _1166
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, sp, 1064	// tmp2532,,
	str	x1, [sp, 1048]	// tmp2532, MEM[(struct _Alloc_hider *)&D.103516]._M_p
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	mov	x19, x0	// _1166, tmp2669
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// MEM[(const struct basic_string *)_1166]._M_string_length, MEM[(const struct basic_string *)_1166]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 280]	// tmp2532, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x24], 16	// _1172, MEM[(const struct basic_string *)_1166]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x24	// _1172, _1173
	beq	.L1591		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x19, 16]	// *_1166.D.50133._M_allocated_capacity, *_1166.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 1048]	// _1172, D.103516._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 1064]	// *_1166.D.50133._M_allocated_capacity, D.103516.D.50133._M_allocated_capacity
.L882:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 4611686018427387903	// tmp1219,
	sub	x0, x0, x2	// tmp1218, tmp1219, MEM[(const struct basic_string *)_1166]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x24, xzr, [x19]	// _1173,, *_1166._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x19, 16]	//, MEM[(char_type &)_1166 + 16]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x2, [sp, 1056]	// MEM[(const struct basic_string *)_1166]._M_string_length, D.103516._M_string_length
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	cmp	x0, 1	// tmp1218,
	bls	.L1592		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	add	x0, sp, 1048	// tmp2531,,
	adrp	x19, .LC109	// tmp2503,
	mov	x2, 2	//,
	add	x1, x19, :lo12:.LC109	//, tmp2503,
	str	x0, [sp, 496]	// tmp2531, %sfp
.LEHB83:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE83:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x25, x0	// _1180, _1170
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, sp, 1096	// tmp2535,,
	str	x1, [sp, 1080]	// tmp2535, MEM[(struct _Alloc_hider *)&D.103517]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x24, x0	// _1170, tmp2672
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// MEM[(const struct basic_string *)_1170]._M_string_length, MEM[(const struct basic_string *)_1170]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 288]	// tmp2535, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x25], 16	// _1179, MEM[(const struct basic_string *)_1170]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x25	// _1179, _1180
	beq	.L1593		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x24, 16]	// *_1170.D.50133._M_allocated_capacity, *_1170.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 1080]	// _1179, D.103517._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 1096]	// *_1170.D.50133._M_allocated_capacity, D.103517.D.50133._M_allocated_capacity
.L890:
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x24, 16]	//, MEM[(char_type &)_1170 + 16]
// main.cpp:225:         "Vegetación "+to_string(s.count[TREE])+" ("+percent(s.count[TREE],cells.size())+")",
	add	x8, sp, 1112	// tmp2536,,
	ldr	x0, [sp, 64]	//, %sfp
	str	x8, [sp, 296]	// tmp2536, %sfp
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ldp	x3, x1, [x23]	// cells_287(D)->D.101324._M_impl.D.100663._M_start, cells_287(D)->D.101324._M_impl.D.100663._M_finish, cells_287(D)->D.101324._M_impl.D.100663._M_start
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x25, xzr, [x24]	// _1180,, *_1170._M_dataplus._M_p
	str	x2, [sp, 1088]	// MEM[(const struct basic_string *)_1170]._M_string_length, D.103517._M_string_length
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	x1, x1, x3	// tmp1238, cells_287(D)->D.101324._M_impl.D.100663._M_finish, cells_287(D)->D.101324._M_impl.D.100663._M_start
// main.cpp:225:         "Vegetación "+to_string(s.count[TREE])+" ("+percent(s.count[TREE],cells.size())+")",
	asr	x1, x1, 3	//, tmp1238,
.LEHB84:
	bl	_Z7percentB5cxx11mm		//
.LEHE84:
// main.cpp:225:         "Vegetación "+to_string(s.count[TREE])+" ("+percent(s.count[TREE],cells.size())+")",
	add	x1, sp, 1144	// tmp2538,,
	str	x1, [sp, 304]	// tmp2538, %sfp
	mov	x8, x1	//, tmp2538
	add	x0, sp, 1080	// tmp2534,,
	ldr	x1, [sp, 296]	//, %sfp
	str	x0, [sp, 504]	// tmp2534, %sfp
.LEHB85:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_		//
.LEHE85:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 1152]	// D.103519._M_string_length, D.103519._M_string_length
	mov	x0, 4611686018427387903	// tmp1248,
	cmp	x1, x0	// D.103519._M_string_length, tmp1248
	beq	.L1594		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	ldr	x0, [sp, 304]	//, %sfp
	adrp	x24, .LC110	// tmp2511,
	mov	x2, 1	//,
	add	x1, x24, :lo12:.LC110	//, tmp2511,
.LEHB86:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE86:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x26, x0	// _1191, _1188
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x3, sp, 2528	// tmp1256,,
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// pretmp_3539, MEM[(const struct basic_string *)_1188]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x3, [sp, 2512]	// tmp1256, MEM[(struct _Alloc_hider *)_688]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x25, x0	// _1188, tmp2677
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [x26], 16	// _1190, MEM[(const struct basic_string *)_1188]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x1, x26	// _1190, _1191
	beq	.L1595		//,
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x1, [sp, 2512]	// _1190, MEM[(struct basic_string *)_688]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [x0, 16]	// *_1188.D.50133._M_allocated_capacity, *_1188.D.50133._M_allocated_capacity
	str	x0, [sp, 2528]	// *_1188.D.50133._M_allocated_capacity, MEM[(struct basic_string *)_688].D.50133._M_allocated_capacity
.L904:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	ldr	x0, [x25, 8]	// MEM[(const struct basic_string *)_1188]._M_string_length, MEM[(const struct basic_string *)_1188]._M_string_length
	str	x0, [sp, 2520]	// MEM[(const struct basic_string *)_1188]._M_string_length, MEM[(struct basic_string *)_688]._M_string_length
// main.cpp:226:         "Ardiendo   "+to_string(s.count[FIRE])+" ("+percent(s.count[FIRE],cells.size())+")",
	add	x0, sp, 1176	// tmp2539,,
	str	x0, [sp, 312]	// tmp2539, %sfp
	mov	x8, x0	//, tmp2539
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x26, xzr, [x25]	// _1191,, *_1188._M_dataplus._M_p
// main.cpp:226:         "Ardiendo   "+to_string(s.count[FIRE])+" ("+percent(s.count[FIRE],cells.size())+")",
	ldr	x0, [sp, 112]	//, %sfp
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x25, 16]	//, MEM[(char_type &)_1188 + 16]
.LEHB87:
// main.cpp:226:         "Ardiendo   "+to_string(s.count[FIRE])+" ("+percent(s.count[FIRE],cells.size())+")",
	bl	_ZNSt7__cxx119to_stringEm		//
.LEHE87:
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	ldr	x0, [sp, 312]	//, %sfp
	adrp	x3, .LC111	// tmp1268,
	mov	x4, 11	//,
	add	x3, x3, :lo12:.LC111	//, tmp1268,
	mov	x2, 0	//,
	mov	x1, 0	//,
.LEHB88:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm		//
.LEHE88:
// /usr/include/c++/13/bits/basic_string.h:3676:     { return std::move(__rhs.insert(0, __lhs)); }
	add	x1, sp, 1208	// tmp2540,,
	mov	x2, x1	// tmp2540, tmp2540
	mov	x1, x0	//, tmp2680
	mov	x0, x2	//, tmp2540
	str	x2, [sp, 320]	// tmp2540, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		//
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 1216]	// D.103522._M_string_length, D.103522._M_string_length
	mov	x0, 4611686018427387903	// tmp1272,
	sub	x0, x0, x1	// tmp1271, tmp1272, D.103522._M_string_length
	cmp	x0, 1	// tmp1271,
	bls	.L1596		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	ldr	x0, [sp, 320]	//, %sfp
	add	x1, x19, :lo12:.LC109	//, tmp2503,
	mov	x2, 2	//,
.LEHB89:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE89:
// /usr/include/c++/13/bits/basic_string.h:3690:     { return std::move(__lhs.append(__rhs)); }
	add	x1, sp, 1240	// tmp2541,,
	mov	x2, x1	// tmp2541, tmp2541
	mov	x1, x0	//, tmp2683
	mov	x0, x2	//, tmp2541
	str	x2, [sp, 328]	// tmp2541, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		//
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ldp	x2, x1, [x23]	// cells_287(D)->D.101324._M_impl.D.100663._M_start, cells_287(D)->D.101324._M_impl.D.100663._M_finish, cells_287(D)->D.101324._M_impl.D.100663._M_start
// main.cpp:226:         "Ardiendo   "+to_string(s.count[FIRE])+" ("+percent(s.count[FIRE],cells.size())+")",
	add	x8, sp, 1272	// tmp2543,,
	ldr	x0, [sp, 112]	//, %sfp
	str	x8, [sp, 336]	// tmp2543, %sfp
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	x1, x1, x2	// tmp1281, cells_287(D)->D.101324._M_impl.D.100663._M_finish, cells_287(D)->D.101324._M_impl.D.100663._M_start
// main.cpp:226:         "Ardiendo   "+to_string(s.count[FIRE])+" ("+percent(s.count[FIRE],cells.size())+")",
	asr	x1, x1, 3	//, tmp1281,
.LEHB90:
	bl	_Z7percentB5cxx11mm		//
.LEHE90:
// main.cpp:226:         "Ardiendo   "+to_string(s.count[FIRE])+" ("+percent(s.count[FIRE],cells.size())+")",
	add	x0, sp, 1304	// tmp2544,,
	str	x0, [sp, 344]	// tmp2544, %sfp
	ldr	x1, [sp, 336]	//, %sfp
	mov	x8, x0	//, tmp2544
	ldr	x0, [sp, 328]	//, %sfp
.LEHB91:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_		//
.LEHE91:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 1312]	// D.103525._M_string_length, D.103525._M_string_length
	mov	x0, 4611686018427387903	// tmp1291,
	cmp	x1, x0	// D.103525._M_string_length, tmp1291
	beq	.L1597		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	ldr	x0, [sp, 344]	//, %sfp
	add	x1, x24, :lo12:.LC110	//, tmp2511,
	mov	x2, 1	//,
.LEHB92:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE92:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x26, x0	// _1212, _1209
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x3, sp, 2560	// tmp1299,,
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// pretmp_3538, MEM[(const struct basic_string *)_1209]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x3, [sp, 2544]	// tmp1299, MEM[(struct _Alloc_hider *)_688]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x25, x0	// _1209, tmp2688
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [x26], 16	// _1211, MEM[(const struct basic_string *)_1209]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x1, x26	// _1211, _1212
	beq	.L1598		//,
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x1, [sp, 2544]	// _1211, MEM[(struct basic_string *)_688]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [x0, 16]	// *_1209.D.50133._M_allocated_capacity, *_1209.D.50133._M_allocated_capacity
	str	x0, [sp, 2560]	// *_1209.D.50133._M_allocated_capacity, MEM[(struct basic_string *)_688].D.50133._M_allocated_capacity
.L929:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	ldr	x0, [x25, 8]	// MEM[(const struct basic_string *)_1209]._M_string_length, MEM[(const struct basic_string *)_1209]._M_string_length
	str	x0, [sp, 2552]	// MEM[(const struct basic_string *)_1209]._M_string_length, MEM[(struct basic_string *)_688]._M_string_length
// main.cpp:227:         "Quemado    "+to_string(s.count[BURNT])+" ("+percent(s.count[BURNT],cells.size())+")",
	add	x0, sp, 1336	// tmp2545,,
	str	x0, [sp, 352]	// tmp2545, %sfp
	mov	x8, x0	//, tmp2545
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x26, xzr, [x25]	// _1212,, *_1209._M_dataplus._M_p
// main.cpp:227:         "Quemado    "+to_string(s.count[BURNT])+" ("+percent(s.count[BURNT],cells.size())+")",
	ldr	x0, [sp, 80]	//, %sfp
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x25, 16]	//, MEM[(char_type &)_1209 + 16]
.LEHB93:
// main.cpp:227:         "Quemado    "+to_string(s.count[BURNT])+" ("+percent(s.count[BURNT],cells.size())+")",
	bl	_ZNSt7__cxx119to_stringEm		//
.LEHE93:
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	ldr	x0, [sp, 352]	//, %sfp
	adrp	x3, .LC112	// tmp1311,
	mov	x4, 11	//,
	add	x3, x3, :lo12:.LC112	//, tmp1311,
	mov	x2, 0	//,
	mov	x1, 0	//,
.LEHB94:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm		//
.LEHE94:
// /usr/include/c++/13/bits/basic_string.h:3676:     { return std::move(__rhs.insert(0, __lhs)); }
	add	x1, sp, 1368	// tmp2546,,
	mov	x2, x1	// tmp2546, tmp2546
	mov	x1, x0	//, tmp2691
	mov	x0, x2	//, tmp2546
	str	x2, [sp, 360]	// tmp2546, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		//
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 1376]	// D.103528._M_string_length, D.103528._M_string_length
	mov	x0, 4611686018427387903	// tmp1315,
	sub	x0, x0, x1	// tmp1314, tmp1315, D.103528._M_string_length
	cmp	x0, 1	// tmp1314,
	bls	.L1599		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	ldr	x0, [sp, 360]	//, %sfp
	add	x1, x19, :lo12:.LC109	//, tmp2503,
	mov	x2, 2	//,
.LEHB95:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE95:
// /usr/include/c++/13/bits/basic_string.h:3690:     { return std::move(__lhs.append(__rhs)); }
	add	x1, sp, 1400	// tmp2547,,
	mov	x2, x1	// tmp2547, tmp2547
	mov	x1, x0	//, tmp2694
	mov	x0, x2	//, tmp2547
	str	x2, [sp, 368]	// tmp2547, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		//
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ldp	x2, x1, [x23]	// cells_287(D)->D.101324._M_impl.D.100663._M_start, cells_287(D)->D.101324._M_impl.D.100663._M_finish, cells_287(D)->D.101324._M_impl.D.100663._M_start
// main.cpp:227:         "Quemado    "+to_string(s.count[BURNT])+" ("+percent(s.count[BURNT],cells.size())+")",
	add	x8, sp, 1432	// tmp2548,,
	ldr	x0, [sp, 80]	//, %sfp
	str	x8, [sp, 376]	// tmp2548, %sfp
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	x1, x1, x2	// tmp1324, cells_287(D)->D.101324._M_impl.D.100663._M_finish, cells_287(D)->D.101324._M_impl.D.100663._M_start
// main.cpp:227:         "Quemado    "+to_string(s.count[BURNT])+" ("+percent(s.count[BURNT],cells.size())+")",
	asr	x1, x1, 3	//, tmp1324,
.LEHB96:
	bl	_Z7percentB5cxx11mm		//
.LEHE96:
// main.cpp:227:         "Quemado    "+to_string(s.count[BURNT])+" ("+percent(s.count[BURNT],cells.size())+")",
	add	x0, sp, 1464	// tmp2549,,
	str	x0, [sp, 384]	// tmp2549, %sfp
	ldr	x1, [sp, 376]	//, %sfp
	mov	x8, x0	//, tmp2549
	ldr	x0, [sp, 368]	//, %sfp
.LEHB97:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_		//
.LEHE97:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 1472]	// D.103531._M_string_length, D.103531._M_string_length
	mov	x0, 4611686018427387903	// tmp1334,
	cmp	x1, x0	// D.103531._M_string_length, tmp1334
	beq	.L1600		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	ldr	x0, [sp, 384]	//, %sfp
	add	x1, x24, :lo12:.LC110	//, tmp2511,
	mov	x2, 1	//,
.LEHB98:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE98:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x26, x0	// _1233, _1230
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x3, sp, 2592	// tmp1342,,
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// pretmp_3537, MEM[(const struct basic_string *)_1230]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x3, [sp, 2576]	// tmp1342, MEM[(struct _Alloc_hider *)_688]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x25, x0	// _1230, tmp2699
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [x26], 16	// _1232, MEM[(const struct basic_string *)_1230]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x1, x26	// _1232, _1233
	beq	.L1601		//,
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x1, [sp, 2576]	// _1232, MEM[(struct basic_string *)_688]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [x0, 16]	// *_1230.D.50133._M_allocated_capacity, *_1230.D.50133._M_allocated_capacity
	str	x0, [sp, 2592]	// *_1230.D.50133._M_allocated_capacity, MEM[(struct basic_string *)_688].D.50133._M_allocated_capacity
.L954:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	ldr	x0, [x25, 8]	// MEM[(const struct basic_string *)_1230]._M_string_length, MEM[(const struct basic_string *)_1230]._M_string_length
	str	x0, [sp, 2584]	// MEM[(const struct basic_string *)_1230]._M_string_length, MEM[(struct basic_string *)_688]._M_string_length
// main.cpp:228:         "Agua "+to_string(s.count[WATER])+" ("+percent(s.count[WATER],cells.size())+")  Vacío "+to_string(s.count[EMPTY])+" ("+percent(s.count[EMPTY],cells.size())+")",
	add	x0, sp, 1496	// tmp2551,,
	str	x0, [sp, 392]	// tmp2551, %sfp
	mov	x8, x0	//, tmp2551
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x26, xzr, [x25]	// _1233,, *_1230._M_dataplus._M_p
// main.cpp:228:         "Agua "+to_string(s.count[WATER])+" ("+percent(s.count[WATER],cells.size())+")  Vacío "+to_string(s.count[EMPTY])+" ("+percent(s.count[EMPTY],cells.size())+")",
	ldr	x0, [sp, 104]	//, %sfp
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x25, 16]	//, MEM[(char_type &)_1230 + 16]
.LEHB99:
// main.cpp:228:         "Agua "+to_string(s.count[WATER])+" ("+percent(s.count[WATER],cells.size())+")  Vacío "+to_string(s.count[EMPTY])+" ("+percent(s.count[EMPTY],cells.size())+")",
	bl	_ZNSt7__cxx119to_stringEm		//
.LEHE99:
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	ldr	x0, [sp, 392]	//, %sfp
	adrp	x3, .LC113	// tmp1354,
	mov	x4, 5	//,
	add	x3, x3, :lo12:.LC113	//, tmp1354,
	mov	x2, 0	//,
	mov	x1, 0	//,
.LEHB100:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm		//
.LEHE100:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x26, x0	// _1250, _1243
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, sp, 1544	// tmp2553,,
	str	x1, [sp, 1528]	// tmp2553, MEM[(struct _Alloc_hider *)&D.103534]._M_p
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	mov	x25, x0	// _1243, tmp2702
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// MEM[(const struct basic_string *)_1243]._M_string_length, MEM[(const struct basic_string *)_1243]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 400]	// tmp2553, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x26], 16	// _1249, MEM[(const struct basic_string *)_1243]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x26	// _1249, _1250
	beq	.L1602		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x25, 16]	// *_1243.D.50133._M_allocated_capacity, *_1243.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 1528]	// _1249, D.103534._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 1544]	// *_1243.D.50133._M_allocated_capacity, D.103534.D.50133._M_allocated_capacity
.L961:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 4611686018427387903	// tmp1368,
	sub	x0, x0, x2	// tmp1367, tmp1368, MEM[(const struct basic_string *)_1243]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x26, xzr, [x25]	// _1250,, *_1243._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x25, 16]	//, MEM[(char_type &)_1243 + 16]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x2, [sp, 1536]	// MEM[(const struct basic_string *)_1243]._M_string_length, D.103534._M_string_length
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	cmp	x0, 1	// tmp1367,
	bls	.L1603		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	add	x0, sp, 1528	// tmp2552,,
	add	x1, x19, :lo12:.LC109	//, tmp2503,
	mov	x2, 2	//,
	str	x0, [sp, 512]	// tmp2552, %sfp
.LEHB101:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE101:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x26, x0	// _1257, _1247
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, sp, 1576	// tmp2555,,
	str	x1, [sp, 1560]	// tmp2555, MEM[(struct _Alloc_hider *)&D.103535]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x25, x0	// _1247, tmp2705
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// MEM[(const struct basic_string *)_1247]._M_string_length, MEM[(const struct basic_string *)_1247]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 408]	// tmp2555, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x26], 16	// _1256, MEM[(const struct basic_string *)_1247]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x26	// _1256, _1257
	beq	.L1604		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x25, 16]	// *_1247.D.50133._M_allocated_capacity, *_1247.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 1560]	// _1256, D.103535._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 1576]	// *_1247.D.50133._M_allocated_capacity, D.103535.D.50133._M_allocated_capacity
.L969:
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x25, 16]	//, MEM[(char_type &)_1247 + 16]
// main.cpp:228:         "Agua "+to_string(s.count[WATER])+" ("+percent(s.count[WATER],cells.size())+")  Vacío "+to_string(s.count[EMPTY])+" ("+percent(s.count[EMPTY],cells.size())+")",
	add	x8, sp, 1592	// tmp2556,,
	ldr	x0, [sp, 104]	//, %sfp
	str	x8, [sp, 416]	// tmp2556, %sfp
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ldp	x3, x1, [x23]	// cells_287(D)->D.101324._M_impl.D.100663._M_start, cells_287(D)->D.101324._M_impl.D.100663._M_finish, cells_287(D)->D.101324._M_impl.D.100663._M_start
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x26, xzr, [x25]	// _1257,, *_1247._M_dataplus._M_p
	str	x2, [sp, 1568]	// MEM[(const struct basic_string *)_1247]._M_string_length, D.103535._M_string_length
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	x1, x1, x3	// tmp1387, cells_287(D)->D.101324._M_impl.D.100663._M_finish, cells_287(D)->D.101324._M_impl.D.100663._M_start
// main.cpp:228:         "Agua "+to_string(s.count[WATER])+" ("+percent(s.count[WATER],cells.size())+")  Vacío "+to_string(s.count[EMPTY])+" ("+percent(s.count[EMPTY],cells.size())+")",
	asr	x1, x1, 3	//, tmp1387,
.LEHB102:
	bl	_Z7percentB5cxx11mm		//
.LEHE102:
// main.cpp:228:         "Agua "+to_string(s.count[WATER])+" ("+percent(s.count[WATER],cells.size())+")  Vacío "+to_string(s.count[EMPTY])+" ("+percent(s.count[EMPTY],cells.size())+")",
	add	x1, sp, 1624	// tmp2557,,
	str	x1, [sp, 424]	// tmp2557, %sfp
	mov	x8, x1	//, tmp2557
	add	x0, sp, 1560	// tmp2554,,
	ldr	x1, [sp, 416]	//, %sfp
	str	x0, [sp, 520]	// tmp2554, %sfp
.LEHB103:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_		//
.LEHE103:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 1632]	// D.103537._M_string_length, D.103537._M_string_length
	mov	x0, 4611686018427387903	// tmp1397,
	sub	x0, x0, x1	// tmp1396, tmp1397, D.103537._M_string_length
	cmp	x0, 9	// tmp1396,
	bls	.L1605		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	ldr	x0, [sp, 424]	//, %sfp
	adrp	x1, .LC114	// tmp1403,
	mov	x2, 10	//,
	add	x1, x1, :lo12:.LC114	//, tmp1403,
.LEHB104:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE104:
// /usr/include/c++/13/bits/basic_string.h:3690:     { return std::move(__lhs.append(__rhs)); }
	add	x1, sp, 1656	// tmp2560,,
	mov	x2, x1	// tmp2560, tmp2560
	mov	x1, x0	//, tmp2710
	mov	x0, x2	//, tmp2560
	str	x2, [sp, 432]	// tmp2560, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		//
// main.cpp:228:         "Agua "+to_string(s.count[WATER])+" ("+percent(s.count[WATER],cells.size())+")  Vacío "+to_string(s.count[EMPTY])+" ("+percent(s.count[EMPTY],cells.size())+")",
	add	x0, sp, 1688	// tmp2563,,
	str	x0, [sp, 440]	// tmp2563, %sfp
	mov	x8, x0	//, tmp2563
	ldr	x0, [sp, 88]	//, %sfp
.LEHB105:
	bl	_ZNSt7__cxx119to_stringEm		//
.LEHE105:
// main.cpp:228:         "Agua "+to_string(s.count[WATER])+" ("+percent(s.count[WATER],cells.size())+")  Vacío "+to_string(s.count[EMPTY])+" ("+percent(s.count[EMPTY],cells.size())+")",
	add	x0, sp, 1720	// tmp2565,,
	str	x0, [sp, 448]	// tmp2565, %sfp
	ldr	x1, [sp, 440]	//, %sfp
	mov	x8, x0	//, tmp2565
	ldr	x0, [sp, 432]	//, %sfp
.LEHB106:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_		//
.LEHE106:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 1728]	// D.103540._M_string_length, D.103540._M_string_length
	mov	x0, 4611686018427387903	// tmp1411,
	sub	x0, x0, x1	// tmp1410, tmp1411, D.103540._M_string_length
	cmp	x0, 1	// tmp1410,
	bls	.L1606		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	ldr	x0, [sp, 448]	//, %sfp
	add	x1, x19, :lo12:.LC109	//, tmp2503,
	mov	x2, 2	//,
.LEHB107:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE107:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x26, x0	// _1272, _1269
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, sp, 1768	// tmp2567,,
	str	x1, [sp, 1752]	// tmp2567, MEM[(struct _Alloc_hider *)&D.103541]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x25, x0	// _1269, tmp2715
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// MEM[(const struct basic_string *)_1269]._M_string_length, MEM[(const struct basic_string *)_1269]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 456]	// tmp2567, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x26], 16	// _1271, MEM[(const struct basic_string *)_1269]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x26	// _1271, _1272
	beq	.L1607		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x25, 16]	// *_1269.D.50133._M_allocated_capacity, *_1269.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 1752]	// _1271, D.103541._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 1768]	// *_1269.D.50133._M_allocated_capacity, D.103541.D.50133._M_allocated_capacity
.L995:
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x25, 16]	//, MEM[(char_type &)_1269 + 16]
// main.cpp:228:         "Agua "+to_string(s.count[WATER])+" ("+percent(s.count[WATER],cells.size())+")  Vacío "+to_string(s.count[EMPTY])+" ("+percent(s.count[EMPTY],cells.size())+")",
	add	x8, sp, 1784	// tmp2474,,
	ldr	x0, [sp, 88]	//, %sfp
	str	x8, [sp, 152]	// tmp2474, %sfp
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ldp	x3, x1, [x23]	// cells_287(D)->D.101324._M_impl.D.100663._M_start, cells_287(D)->D.101324._M_impl.D.100663._M_finish, cells_287(D)->D.101324._M_impl.D.100663._M_start
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x26, xzr, [x25]	// _1272,, *_1269._M_dataplus._M_p
	str	x2, [sp, 1760]	// MEM[(const struct basic_string *)_1269]._M_string_length, D.103541._M_string_length
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	x1, x1, x3	// tmp1430, cells_287(D)->D.101324._M_impl.D.100663._M_finish, cells_287(D)->D.101324._M_impl.D.100663._M_start
// main.cpp:228:         "Agua "+to_string(s.count[WATER])+" ("+percent(s.count[WATER],cells.size())+")  Vacío "+to_string(s.count[EMPTY])+" ("+percent(s.count[EMPTY],cells.size())+")",
	asr	x1, x1, 3	//, tmp1430,
.LEHB108:
	bl	_Z7percentB5cxx11mm		//
.LEHE108:
// main.cpp:228:         "Agua "+to_string(s.count[WATER])+" ("+percent(s.count[WATER],cells.size())+")  Vacío "+to_string(s.count[EMPTY])+" ("+percent(s.count[EMPTY],cells.size())+")",
	add	x1, sp, 1816	// tmp2475,,
	str	x1, [sp, 184]	// tmp2475, %sfp
	mov	x8, x1	//, tmp2475
	add	x0, sp, 1752	// tmp2566,,
	ldr	x1, [sp, 152]	//, %sfp
	str	x0, [sp, 528]	// tmp2566, %sfp
.LEHB109:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_		//
.LEHE109:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 1824]	// D.103543._M_string_length, D.103543._M_string_length
	mov	x0, 4611686018427387903	// tmp1440,
	cmp	x1, x0	// D.103543._M_string_length, tmp1440
	beq	.L1608		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	ldr	x0, [sp, 184]	//, %sfp
	add	x1, x24, :lo12:.LC110	//, tmp2511,
	mov	x2, 1	//,
.LEHB110:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE110:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x26, x0	// _1283, _1280
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x3, sp, 2624	// tmp1448,,
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// pretmp_3533, MEM[(const struct basic_string *)_1280]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x3, [sp, 2608]	// tmp1448, MEM[(struct _Alloc_hider *)_688]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x25, x0	// _1280, tmp2720
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [x26], 16	// _1282, MEM[(const struct basic_string *)_1280]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x1, x26	// _1282, _1283
	beq	.L1609		//,
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x1, [sp, 2608]	// _1282, MEM[(struct basic_string *)_688]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [x0, 16]	// *_1280.D.50133._M_allocated_capacity, *_1280.D.50133._M_allocated_capacity
	str	x0, [sp, 2624]	// *_1280.D.50133._M_allocated_capacity, MEM[(struct basic_string *)_688].D.50133._M_allocated_capacity
.L1009:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	ldr	x0, [x25, 8]	// MEM[(const struct basic_string *)_1280]._M_string_length, MEM[(const struct basic_string *)_1280]._M_string_length
	str	x0, [sp, 2616]	// MEM[(const struct basic_string *)_1280]._M_string_length, MEM[(struct basic_string *)_688]._M_string_length
	stp	x26, xzr, [x25]	// _1283,, *_1280._M_dataplus._M_p
// main.cpp:229:         "Inicial afectada: "+to_string(s.affected)+"/"+to_string(initial_trees)+" ("+percent(s.affected,initial_trees)+")",
	add	x0, sp, 1848	// tmp2476,,
	mov	x8, x0	//, tmp2476
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x25, 16]	//, MEM[(char_type &)_1280 + 16]
// main.cpp:229:         "Inicial afectada: "+to_string(s.affected)+"/"+to_string(initial_trees)+" ("+percent(s.affected,initial_trees)+")",
	str	x0, [sp, 192]	// tmp2476, %sfp
	mov	x0, x20	//, prephitmp_3347
.LEHB111:
	bl	_ZNSt7__cxx119to_stringEm		//
.LEHE111:
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	ldr	x0, [sp, 192]	//, %sfp
	adrp	x3, .LC115	// tmp1460,
	mov	x4, 18	//,
	add	x3, x3, :lo12:.LC115	//, tmp1460,
	mov	x2, 0	//,
	mov	x1, 0	//,
.LEHB112:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm		//
.LEHE112:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x26, x0	// _1300, _1293
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, sp, 1896	// tmp2478,,
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// pretmp_3532, MEM[(const struct basic_string *)_1293]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 1880]	// tmp2478, MEM[(struct _Alloc_hider *)_294]._M_p
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	mov	x25, x0	// _1293, tmp2723
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 128]	// tmp2478, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x26], 16	// _1299, MEM[(const struct basic_string *)_1293]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x26	// _1299, _1300
	beq	.L1610		//,
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 1880]	// _1299, MEM[(struct basic_string *)_294]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [x25, 16]	// *_1293.D.50133._M_allocated_capacity, *_1293.D.50133._M_allocated_capacity
	str	x0, [sp, 1896]	// *_1293.D.50133._M_allocated_capacity, MEM[(struct basic_string *)_294].D.50133._M_allocated_capacity
.L1016:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	ldr	x0, [x25, 8]	// MEM[(const struct basic_string *)_1293]._M_string_length, MEM[(const struct basic_string *)_1293]._M_string_length
	str	x0, [sp, 1888]	// MEM[(const struct basic_string *)_1293]._M_string_length, MEM[(struct basic_string *)_294]._M_string_length
	stp	x26, xzr, [x25]	// _1300,, *_1293._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 4611686018427387903	// tmp1474,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x25, 16]	//, MEM[(char_type &)_1293 + 16]
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 1888]	// MEM[(struct basic_string *)_294]._M_string_length, MEM[(struct basic_string *)_294]._M_string_length
	cmp	x1, x0	// MEM[(struct basic_string *)_294]._M_string_length, tmp1474
	beq	.L1611		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	add	x0, sp, 1880	// tmp2477,,
	adrp	x1, .LC116	// tmp1479,
	mov	x2, 1	//,
	add	x1, x1, :lo12:.LC116	//, tmp1479,
	str	x0, [sp, 168]	// tmp2477, %sfp
.LEHB113:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE113:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x26, x0	// _1307, _1297
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, sp, 1928	// tmp2480,,
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// pretmp_3531, MEM[(const struct basic_string *)_1297]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 1912]	// tmp2480, MEM[(struct _Alloc_hider *)_342]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x25, x0	// _1297, tmp2726
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 136]	// tmp2480, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x26], 16	// _1306, MEM[(const struct basic_string *)_1297]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x26	// _1306, _1307
	beq	.L1612		//,
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 1912]	// _1306, MEM[(struct basic_string *)_342]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [x25, 16]	// *_1297.D.50133._M_allocated_capacity, *_1297.D.50133._M_allocated_capacity
	str	x0, [sp, 1928]	// *_1297.D.50133._M_allocated_capacity, MEM[(struct basic_string *)_342].D.50133._M_allocated_capacity
.L1024:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	ldr	x0, [x25, 8]	// MEM[(const struct basic_string *)_1297]._M_string_length, MEM[(const struct basic_string *)_1297]._M_string_length
	str	x0, [sp, 1920]	// MEM[(const struct basic_string *)_1297]._M_string_length, MEM[(struct basic_string *)_342]._M_string_length
	stp	x26, xzr, [x25]	// _1307,, *_1297._M_dataplus._M_p
// main.cpp:229:         "Inicial afectada: "+to_string(s.affected)+"/"+to_string(initial_trees)+" ("+percent(s.affected,initial_trees)+")",
	add	x0, sp, 1944	// tmp2482,,
	mov	x8, x0	//, tmp2482
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x25, 16]	//, MEM[(char_type &)_1297 + 16]
// main.cpp:229:         "Inicial afectada: "+to_string(s.affected)+"/"+to_string(initial_trees)+" ("+percent(s.affected,initial_trees)+")",
	str	x0, [sp, 104]	// tmp2482, %sfp
	mov	x0, x28	//, initial_trees
.LEHB114:
	bl	_ZNSt7__cxx119to_stringEm		//
.LEHE114:
// main.cpp:229:         "Inicial afectada: "+to_string(s.affected)+"/"+to_string(initial_trees)+" ("+percent(s.affected,initial_trees)+")",
	add	x1, sp, 1976	// tmp2484,,
	str	x1, [sp, 112]	// tmp2484, %sfp
	mov	x8, x1	//, tmp2484
	add	x0, sp, 1912	// tmp2479,,
	ldr	x1, [sp, 104]	//, %sfp
	str	x0, [sp, 176]	// tmp2479, %sfp
.LEHB115:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_		//
.LEHE115:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 1984]	// MEM[(struct basic_string *)_279]._M_string_length, MEM[(struct basic_string *)_279]._M_string_length
	mov	x0, 4611686018427387903	// tmp1497,
	sub	x0, x0, x1	// tmp1496, tmp1497, MEM[(struct basic_string *)_279]._M_string_length
	cmp	x0, 1	// tmp1496,
	bls	.L1613		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	ldr	x0, [sp, 112]	//, %sfp
	add	x1, x19, :lo12:.LC109	//, tmp2503,
	mov	x2, 2	//,
.LEHB116:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE116:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x25, x0	// _1318, _1315
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, sp, 2024	// tmp2487,,
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// pretmp_3530, MEM[(const struct basic_string *)_1315]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 2008]	// tmp2487, MEM[(struct _Alloc_hider *)_3257]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x19, x0	// _1315, tmp2731
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 80]	// tmp2487, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x25], 16	// _1317, MEM[(const struct basic_string *)_1315]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x25	// _1317, _1318
	beq	.L1614		//,
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 2008]	// _1317, MEM[(struct basic_string *)_3257]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [x19, 16]	// *_1315.D.50133._M_allocated_capacity, *_1315.D.50133._M_allocated_capacity
	str	x0, [sp, 2024]	// *_1315.D.50133._M_allocated_capacity, MEM[(struct basic_string *)_3257].D.50133._M_allocated_capacity
.L1038:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	ldr	x0, [x19, 8]	// MEM[(const struct basic_string *)_1315]._M_string_length, MEM[(const struct basic_string *)_1315]._M_string_length
	str	x0, [sp, 2016]	// MEM[(const struct basic_string *)_1315]._M_string_length, MEM[(struct basic_string *)_3257]._M_string_length
	stp	x25, xzr, [x19]	// _1318,, *_1315._M_dataplus._M_p
// main.cpp:229:         "Inicial afectada: "+to_string(s.affected)+"/"+to_string(initial_trees)+" ("+percent(s.affected,initial_trees)+")",
	add	x0, sp, 2040	// tmp2488,,
	mov	x8, x0	// tmp2488, tmp2488
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x19, 16]	//, MEM[(char_type &)_1315 + 16]
// main.cpp:229:         "Inicial afectada: "+to_string(s.affected)+"/"+to_string(initial_trees)+" ("+percent(s.affected,initial_trees)+")",
	mov	x1, x28	//, initial_trees
	mov	x0, x20	//, prephitmp_3347
	str	x8, [sp, 88]	// tmp2488, %sfp
.LEHB117:
	bl	_Z7percentB5cxx11mm		//
.LEHE117:
// main.cpp:229:         "Inicial afectada: "+to_string(s.affected)+"/"+to_string(initial_trees)+" ("+percent(s.affected,initial_trees)+")",
	ldr	x1, [sp, 88]	//, %sfp
	add	x26, sp, 2128	// tmp2493,,
	add	x0, sp, 2008	// tmp2486,,
	mov	x8, x26	//, tmp2493
	str	x0, [sp, 144]	// tmp2486, %sfp
.LEHB118:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_		//
.LEHE118:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 2136]	// MEM[(struct basic_string *)_3255]._M_string_length, MEM[(struct basic_string *)_3255]._M_string_length
	mov	x0, 4611686018427387903	// tmp1521,
	cmp	x1, x0	// MEM[(struct basic_string *)_3255]._M_string_length, tmp1521
	beq	.L1615		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	add	x1, x24, :lo12:.LC110	//, tmp2511,
	mov	x0, x26	//, tmp2493
	mov	x2, 1	//,
.LEHB119:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE119:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x24, x0	// _1333, _1326
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x3, sp, 2656	// tmp1529,,
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// pretmp_3529, MEM[(const struct basic_string *)_1326]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x3, [sp, 2640]	// tmp1529, MEM[(struct _Alloc_hider *)_688]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x25, x0	// _1326, tmp2736
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [x24], 16	// _1332, MEM[(const struct basic_string *)_1326]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x1, x24	// _1332, _1333
	beq	.L1616		//,
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x1, [sp, 2640]	// _1332, MEM[(struct basic_string *)_688]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [x0, 16]	// *_1326.D.50133._M_allocated_capacity, *_1326.D.50133._M_allocated_capacity
	str	x0, [sp, 2656]	// *_1326.D.50133._M_allocated_capacity, MEM[(struct basic_string *)_688].D.50133._M_allocated_capacity
.L1052:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	ldr	x0, [x25, 8]	// MEM[(const struct basic_string *)_1326]._M_string_length, MEM[(const struct basic_string *)_1326]._M_string_length
	str	x0, [sp, 2648]	// MEM[(const struct basic_string *)_1326]._M_string_length, MEM[(struct basic_string *)_688]._M_string_length
	stp	x24, xzr, [x25]	// _1333,, *_1326._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x2, sp, 2688	// tmp1540,,
// /usr/include/c++/13/bits/basic_string.h:3537:       __str.reserve(__lhs_len + __rhs_len);
	add	x19, sp, 2672	// tmp2527,,
	ldr	x24, [sp, 608]	// _1052, MEM[(long unsigned int *)&bar + 8B]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x25, 16]	//, MEM[(char_type &)_1326 + 16]
	ldr	x25, [sp, 600]	// _1051, MEM[(char * *)&bar]
// /usr/include/c++/13/bits/basic_string.h:3537:       __str.reserve(__lhs_len + __rhs_len);
	mov	x0, x19	//, tmp2527
	add	x1, x24, 19	//, _1052,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x2, [sp, 2672]	// tmp1540, MEM[(struct _Alloc_hider *)_688]._M_p
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	xzr, [sp, 2680]	//, MEM[(struct basic_string *)_688]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 2688]	//, MEM[(char_type &)_688]
.LEHB120:
// /usr/include/c++/13/bits/basic_string.h:3537:       __str.reserve(__lhs_len + __rhs_len);
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm		//
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 2680]	// MEM[(const struct basic_string *)_688]._M_string_length, MEM[(const struct basic_string *)_688]._M_string_length
	mov	x0, 4611686018427387903	// tmp1545,
	sub	x0, x0, x1	// tmp1544, tmp1545, MEM[(const struct basic_string *)_688]._M_string_length
	cmp	x24, x0	// _1052, tmp1544
	bhi	.L1617		//,
// /usr/include/c++/13/bits/basic_string.h:1459: 	return _M_append(__s, __n);
	mov	x2, x24	//, _1052
	mov	x1, x25	//, _1051
	mov	x0, x19	//, tmp2527
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 2680]	// MEM[(const struct basic_string *)_688]._M_string_length, MEM[(const struct basic_string *)_688]._M_string_length
	mov	x0, 4611686018427387903	// tmp1553,
	sub	x0, x0, x1	// tmp1552, tmp1553, MEM[(const struct basic_string *)_688]._M_string_length
	cmp	x0, 18	// tmp1552,
	bls	.L1618		//,
// /usr/include/c++/13/bits/basic_string.h:1459: 	return _M_append(__s, __n);
	adrp	x1, .LC117	// tmp1559,
	mov	x0, x19	//, tmp2527
	add	x1, x1, :lo12:.LC117	//, tmp1559,
	mov	x2, 19	//,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE120:
// main.cpp:259: }
	adrp	x1, .LC118	// tmp1569,
	add	x0, sp, 2704	//,,
	add	x1, x1, :lo12:.LC118	//, tmp1569,
.LEHB121:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE121:
// main.cpp:259: }
	add	x20, sp, 2736	// ivtmp.1126,,
	adrp	x1, .LC119	// tmp1573,
	mov	x0, x20	//, ivtmp.1126
	add	x1, x1, :lo12:.LC119	//, tmp1573,
.LEHB122:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE122:
// /usr/include/c++/13/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	add	x1, sp, 576	// tmp3311,,
// /usr/include/c++/13/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x0, 384	//,
// /usr/include/c++/13/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	str	xzr, [sp, 592]	//, MEM[(struct _Vector_impl_data *)&info]._M_end_of_storage
// /usr/include/c++/13/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	stp	xzr, xzr, [x1]	// MEM <vector(2) long unsigned int> [(struct basic_string * *)&info]
.LEHB123:
// /usr/include/c++/13/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	bl	_Znwm		//
.LEHE123:
	mov	x24, x0	// __first, tmp2741
// /usr/include/c++/13/bits/stl_vector.h:1693: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	add	x28, x24, 384	// _1364, __first,
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	add	x0, sp, 568	// tmp2605,,
// /usr/include/c++/13/bits/stl_vector.h:1693: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	mov	x25, x21	// __first, tmp2505
// /usr/include/c++/13/bits/stl_uninitialized.h:116:       _ForwardIterator __cur = __result;
	mov	x19, x24	// __cur, __first
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	str	x0, [sp, 64]	// tmp2605, %sfp
// /usr/include/c++/13/bits/stl_vector.h:1693: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	str	x22, [sp, 488]	// _10, %sfp
	str	x24, [sp, 536]	// __first, %sfp
// /usr/include/c++/13/bits/stl_vector.h:1692: 	    = this->_M_allocate(_S_check_init_len(__n, _M_get_Tp_allocator()));
	str	x24, [sp, 576]	// __first, info.D.103453._M_impl.D.102792._M_start
// /usr/include/c++/13/bits/stl_vector.h:1693: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	str	x28, [sp, 592]	// _1364, info.D.103453._M_impl.D.102792._M_end_of_storage
	b	.L1068		//
	.p2align 2,,3
.L1063:
// /usr/include/c++/13/bits/basic_string.h:427: 	if (__n == 1)
	cmp	x22, 1	// _1375,
	beq	.L1619		//,
// /usr/include/c++/13/bits/char_traits.h:429: 	if (__n == 0)
	cbnz	x22, .L1064	// _1375,
.L1066:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x22, [x19, 8]	// _1375, MEM[(long unsigned int *)__cur_447 + 8B]
// /usr/include/c++/13/bits/stl_uninitialized.h:119: 	  for (; __first != __last; ++__first, (void)++__cur)
	add	x19, x19, 32	// __cur, __cur,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x0, x22]	//, MEM[(char_type &)_1392]
// /usr/include/c++/13/bits/stl_uninitialized.h:119: 	  for (; __first != __last; ++__first, (void)++__cur)
	add	x25, x25, 32	// __first, __first,
// /usr/include/c++/13/bits/stl_uninitialized.h:119: 	  for (; __first != __last; ++__first, (void)++__cur)
	cmp	x28, x19	// _1364, __cur
	beq	.L1620		//,
.L1068:
// /usr/include/c++/13/bits/basic_string.h:1079:       { return _M_string_length; }
	ldp	x24, x22, [x25]	// _1374, _1375, MEM[(char * *)__first_275]
// /usr/include/c++/13/bits/basic_string.h:230: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x0, x19, 16	// _1372, __cur,
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x0, [x19]	// _1372, MEM[(char * *)__cur_447]
// /usr/include/c++/13/bits/basic_string.tcc:225: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	str	x22, [sp, 568]	// _1375, MEM[(long unsigned int *)_3260]
// /usr/include/c++/13/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	x22, 15	// _1375,
	bls	.L1063		//,
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	ldr	x1, [sp, 64]	//, %sfp
	mov	x0, x19	//, __cur
	mov	x2, 0	//,
.LEHB124:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm		//
.LEHE124:
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [sp, 568]	// MEM[(long unsigned int *)_3260], MEM[(long unsigned int *)_3260]
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [x19]	// _1372, MEM[(char * *)__cur_447]
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [x19, 16]	// MEM[(long unsigned int *)_3260], MEM <size_type> [(union ._anon_87 *)__cur_447 + 16B]
.L1064:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x22	//, _1375
	mov	x1, x24	//, _1374
	bl	memcpy		//
// /usr/include/c++/13/bits/stl_uninitialized.h:119: 	  for (; __first != __last; ++__first, (void)++__cur)
	add	x19, x19, 32	// __cur, __cur,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x19, -32]	// _1372, MEM[(char * *)__cur_447]
// /usr/include/c++/13/bits/stl_uninitialized.h:119: 	  for (; __first != __last; ++__first, (void)++__cur)
	add	x25, x25, 32	// __first, __first,
// /usr/include/c++/13/bits/basic_string.tcc:251: 	_M_set_length(__dnew);
	ldr	x22, [sp, 568]	// _1375, MEM[(long unsigned int *)_3260]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x22, [x19, -24]	// _1375, MEM[(long unsigned int *)__cur_447 + 8B]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x0, x22]	//, MEM[(char_type &)_1392]
// /usr/include/c++/13/bits/stl_uninitialized.h:119: 	  for (; __first != __last; ++__first, (void)++__cur)
	cmp	x28, x19	// _1364, __cur
	bne	.L1068		//,
.L1620:
	mov	x28, x20	// ivtmp.1126, ivtmp.1126
// /usr/include/c++/13/bits/stl_vector.h:1694: 	  this->_M_impl._M_finish =
	str	x19, [sp, 584]	// __cur, info.D.103453._M_impl.D.102792._M_finish
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x1, x28	// tmp1596, ivtmp.1126
	ldr	x22, [sp, 488]	// _10, %sfp
	ldr	x0, [x1], 16	// _1394, MEM[(char * *)_375]
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1394, tmp1596
	beq	.L1079		//,
	.p2align 3,,7
.L1621:
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x28, 16]	// MEM <size_type> [(union ._anon_87 *)_375 + 16B], MEM <size_type> [(union ._anon_87 *)_375 + 16B]
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM <size_type> [(union ._anon_87 *)_375 + 16B],
	bl	_ZdlPvm		//
// main.cpp:231:         "T vegetación  * fuego", "# quemado  ~ agua  . vacío"};
	sub	x0, x28, #32	// ivtmp.1126, ivtmp.1126,
	cmp	x28, x21	// ivtmp.1126, tmp2505
	beq	.L1080		//,
.L1081:
// /usr/include/c++/13/bits/stl_vector.h:1693: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	mov	x28, x0	// ivtmp.1126, ivtmp.1126
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x1, x28	// tmp1596, ivtmp.1126
	ldr	x0, [x1], 16	// _1394, MEM[(char * *)_375]
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1394, tmp1596
	bne	.L1621		//,
.L1079:
// main.cpp:231:         "T vegetación  * fuego", "# quemado  ~ agua  . vacío"};
	sub	x0, x28, #32	// ivtmp.1126, ivtmp.1126,
	cmp	x28, x21	// ivtmp.1126, tmp2505
	bne	.L1081		//,
	.p2align 3,,7
.L1080:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 2128]	// _1665, MEM[(struct basic_string *)_3255]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x25, sp, 2144	// tmp2494,,
	cmp	x0, x25	// _1665, tmp2494
	beq	.L1082		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 2144]	// MEM[(struct basic_string *)_3255].D.50133._M_allocated_capacity, MEM[(struct basic_string *)_3255].D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM[(struct basic_string *)_3255].D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1082:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 2040]	// _1659, MEM[(struct basic_string *)_3259]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 2056	// tmp2489,,
	str	x1, [sp, 240]	// tmp2489, %sfp
	cmp	x0, x1	// _1659, tmp2489
	beq	.L1083		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 2056]	// MEM[(struct basic_string *)_3259].D.50133._M_allocated_capacity, MEM[(struct basic_string *)_3259].D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM[(struct basic_string *)_3259].D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1083:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 80]	// tmp2487, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 2008]	// _1653, MEM[(struct basic_string *)_3257]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1653, tmp2487
	beq	.L1084		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 2024]	// MEM[(struct basic_string *)_3257].D.50133._M_allocated_capacity, MEM[(struct basic_string *)_3257].D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM[(struct basic_string *)_3257].D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1084:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1976]	// _1647, MEM[(struct basic_string *)_279]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1992	// tmp2485,,
	str	x1, [sp, 232]	// tmp2485, %sfp
	cmp	x0, x1	// _1647, tmp2485
	beq	.L1085		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1992]	// MEM[(struct basic_string *)_279].D.50133._M_allocated_capacity, MEM[(struct basic_string *)_279].D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM[(struct basic_string *)_279].D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1085:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1944]	// _1641, MEM[(struct basic_string *)_293]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1960	// tmp2483,,
	str	x1, [sp, 224]	// tmp2483, %sfp
	cmp	x0, x1	// _1641, tmp2483
	beq	.L1086		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1960]	// MEM[(struct basic_string *)_293].D.50133._M_allocated_capacity, MEM[(struct basic_string *)_293].D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM[(struct basic_string *)_293].D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1086:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 136]	// tmp2480, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1912]	// _1635, MEM[(struct basic_string *)_342]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1635, tmp2480
	beq	.L1087		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1928]	// MEM[(struct basic_string *)_342].D.50133._M_allocated_capacity, MEM[(struct basic_string *)_342].D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM[(struct basic_string *)_342].D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1087:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 128]	// tmp2478, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1880]	// _1629, MEM[(struct basic_string *)_294]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1629, tmp2478
	beq	.L1088		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1896]	// MEM[(struct basic_string *)_294].D.50133._M_allocated_capacity, MEM[(struct basic_string *)_294].D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM[(struct basic_string *)_294].D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1088:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1848]	// _1623, D.103545._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1864	// tmp1628,,
	cmp	x0, x1	// _1623, tmp1628
	beq	.L1089		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1864]	// D.103545.D.50133._M_allocated_capacity, D.103545.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103545.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1089:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1816]	// _1617, D.103543._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1832	// tmp1632,,
	cmp	x0, x1	// _1617, tmp1632
	beq	.L1090		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1832]	// D.103543.D.50133._M_allocated_capacity, D.103543.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103543.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1090:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1784]	// _1611, D.103542._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1800	// tmp1636,,
	cmp	x0, x1	// _1611, tmp1636
	beq	.L1091		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1800]	// D.103542.D.50133._M_allocated_capacity, D.103542.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103542.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1091:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 456]	// tmp2567, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1752]	// _1605, D.103541._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1605, tmp2567
	beq	.L1092		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1768]	// D.103541.D.50133._M_allocated_capacity, D.103541.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103541.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1092:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1720]	// _1599, D.103540._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1736	// tmp1644,,
	cmp	x0, x1	// _1599, tmp1644
	beq	.L1093		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1736]	// D.103540.D.50133._M_allocated_capacity, D.103540.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103540.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1093:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1688]	// _1593, D.103539._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1704	// tmp1648,,
	cmp	x0, x1	// _1593, tmp1648
	beq	.L1094		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1704]	// D.103539.D.50133._M_allocated_capacity, D.103539.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103539.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1094:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1656]	// _1587, D.103538._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1672	// tmp1652,,
	cmp	x0, x1	// _1587, tmp1652
	beq	.L1095		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1672]	// D.103538.D.50133._M_allocated_capacity, D.103538.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103538.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1095:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1624]	// _1581, D.103537._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1640	// tmp1656,,
	cmp	x0, x1	// _1581, tmp1656
	beq	.L1096		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1640]	// D.103537.D.50133._M_allocated_capacity, D.103537.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103537.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1096:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1592]	// _1575, D.103536._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1608	// tmp1660,,
	cmp	x0, x1	// _1575, tmp1660
	beq	.L1097		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1608]	// D.103536.D.50133._M_allocated_capacity, D.103536.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103536.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1097:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 408]	// tmp2555, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1560]	// _1569, D.103535._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1569, tmp2555
	beq	.L1098		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1576]	// D.103535.D.50133._M_allocated_capacity, D.103535.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103535.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1098:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 400]	// tmp2553, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1528]	// _1563, D.103534._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1563, tmp2553
	beq	.L1099		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1544]	// D.103534.D.50133._M_allocated_capacity, D.103534.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103534.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1099:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1496]	// _1557, D.103533._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1512	// tmp1672,,
	cmp	x0, x1	// _1557, tmp1672
	beq	.L1100		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1512]	// D.103533.D.50133._M_allocated_capacity, D.103533.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103533.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1100:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1464]	// _1551, D.103531._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1480	// tmp1676,,
	cmp	x0, x1	// _1551, tmp1676
	beq	.L1101		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1480]	// D.103531.D.50133._M_allocated_capacity, D.103531.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103531.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1101:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1432]	// _1545, D.103530._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1448	// tmp1680,,
	cmp	x0, x1	// _1545, tmp1680
	beq	.L1102		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1448]	// D.103530.D.50133._M_allocated_capacity, D.103530.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103530.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1102:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1400]	// _1539, D.103529._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1416	// tmp1684,,
	cmp	x0, x1	// _1539, tmp1684
	beq	.L1103		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1416]	// D.103529.D.50133._M_allocated_capacity, D.103529.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103529.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1103:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1368]	// _1533, D.103528._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1384	// tmp1688,,
	cmp	x0, x1	// _1533, tmp1688
	beq	.L1104		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1384]	// D.103528.D.50133._M_allocated_capacity, D.103528.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103528.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1104:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1336]	// _1527, D.103527._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1352	// tmp1692,,
	cmp	x0, x1	// _1527, tmp1692
	beq	.L1105		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1352]	// D.103527.D.50133._M_allocated_capacity, D.103527.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103527.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1105:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1304]	// _1521, D.103525._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1320	// tmp1696,,
	cmp	x0, x1	// _1521, tmp1696
	beq	.L1106		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1320]	// D.103525.D.50133._M_allocated_capacity, D.103525.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103525.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1106:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1272]	// _1515, D.103524._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1288	// tmp1700,,
	cmp	x0, x1	// _1515, tmp1700
	beq	.L1107		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1288]	// D.103524.D.50133._M_allocated_capacity, D.103524.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103524.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1107:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1240]	// _1509, D.103523._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1256	// tmp1704,,
	cmp	x0, x1	// _1509, tmp1704
	beq	.L1108		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1256]	// D.103523.D.50133._M_allocated_capacity, D.103523.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103523.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1108:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1208]	// _1503, D.103522._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1224	// tmp1708,,
	cmp	x0, x1	// _1503, tmp1708
	beq	.L1109		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1224]	// D.103522.D.50133._M_allocated_capacity, D.103522.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103522.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1109:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1176]	// _1497, D.103521._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1192	// tmp1712,,
	cmp	x0, x1	// _1497, tmp1712
	beq	.L1110		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1192]	// D.103521.D.50133._M_allocated_capacity, D.103521.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103521.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1110:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1144]	// _1491, D.103519._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1160	// tmp1716,,
	cmp	x0, x1	// _1491, tmp1716
	beq	.L1111		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1160]	// D.103519.D.50133._M_allocated_capacity, D.103519.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103519.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1111:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1112]	// _1485, D.103518._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1128	// tmp1720,,
	cmp	x0, x1	// _1485, tmp1720
	beq	.L1112		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1128]	// D.103518.D.50133._M_allocated_capacity, D.103518.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103518.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1112:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 288]	// tmp2535, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1080]	// _1479, D.103517._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1479, tmp2535
	beq	.L1113		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1096]	// D.103517.D.50133._M_allocated_capacity, D.103517.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103517.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1113:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 280]	// tmp2532, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1048]	// _1473, D.103516._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1473, tmp2532
	beq	.L1114		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1064]	// D.103516.D.50133._M_allocated_capacity, D.103516.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103516.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1114:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1016]	// _1467, D.103515._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1032	// tmp1732,,
	cmp	x0, x1	// _1467, tmp1732
	beq	.L1115		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1032]	// D.103515.D.50133._M_allocated_capacity, D.103515.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103515.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1115:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 984]	// _1461, D.103513._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1000	// tmp1736,,
	cmp	x0, x1	// _1461, tmp1736
	beq	.L1116		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1000]	// D.103513.D.50133._M_allocated_capacity, D.103513.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103513.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1116:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 952]	// _1455, D.103511._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 968	// tmp1740,,
	cmp	x0, x1	// _1455, tmp1740
	beq	.L1117		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 968]	// D.103511.D.50133._M_allocated_capacity, D.103511.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103511.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1117:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 920]	// _1449, D.103468._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 936	// tmp1744,,
	cmp	x0, x1	// _1449, tmp1744
	beq	.L1118		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 936]	// D.103468.D.50133._M_allocated_capacity, D.103468.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103468.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1118:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 888]	// _1443, D.103467._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 904	// tmp1748,,
	cmp	x0, x1	// _1443, tmp1748
	beq	.L1119		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 904]	// D.103467.D.50133._M_allocated_capacity, D.103467.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103467.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1119:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 856]	// _1437, D.103466._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 872	// tmp1752,,
	cmp	x0, x1	// _1437, tmp1752
	beq	.L1120		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 872]	// D.103466.D.50133._M_allocated_capacity, D.103466.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103466.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1120:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 824]	// _1431, D.103465._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 840	// tmp1756,,
	cmp	x0, x1	// _1431, tmp1756
	beq	.L1121		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 840]	// D.103465.D.50133._M_allocated_capacity, D.103465.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103465.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1121:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 480]	// tmp2516, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 792]	// _1425, D.103461._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1425, tmp2516
	beq	.L1122		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 808]	// D.103461.D.50133._M_allocated_capacity, D.103461.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103461.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1122:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 760]	// _1419, D.103459._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 776	// tmp1764,,
	cmp	x0, x1	// _1419, tmp1764
	beq	.L1123		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 776]	// D.103459.D.50133._M_allocated_capacity, D.103459.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103459.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1123:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 728]	// _1413, D.103458._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 744	// tmp1768,,
	cmp	x0, x1	// _1413, tmp1768
	beq	.L1124		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 744]	// D.103458.D.50133._M_allocated_capacity, D.103458.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103458.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1124:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 696]	// _1407, D.103457._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 712	// tmp1772,,
	cmp	x0, x1	// _1407, tmp1772
	beq	.L1125		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 712]	// D.103457.D.50133._M_allocated_capacity, D.103457.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103457.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1125:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 664]	// _1401, D.103456._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 680	// tmp1776,,
	cmp	x0, x1	// _1401, tmp1776
	beq	.L1126		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 680]	// D.103456.D.50133._M_allocated_capacity, D.103456.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.103456.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1126:
// main.cpp:232:     if(o.keyboard) {
	ldr	x0, [sp, 8]	// o, %sfp
	ldrb	w0, [x0, 101]	// o_256(D)->keyboard, o_256(D)->keyboard
	tbnz	x0, 0, .L1622	// o_256(D)->keyboard,,
.L1127:
// main.cpp:236:     string tl=o.ascii?"+":"╭",tr=o.ascii?"+":"╮",bl=o.ascii?"+":"╰",br=o.ascii?"+":"╯",hz=o.ascii?"-":"─",vt=o.ascii?"|":"│";
	ldr	x19, [sp, 8]	// o, %sfp
// main.cpp:236:     string tl=o.ascii?"+":"╭",tr=o.ascii?"+":"╮",bl=o.ascii?"+":"╰",br=o.ascii?"+":"╯",hz=o.ascii?"-":"─",vt=o.ascii?"|":"│";
	adrp	x2, .LC75	// tmp866,
	add	x2, x2, :lo12:.LC75	// tmp2575, tmp866,
	adrp	x1, .LC74	// tmp865,
	add	x1, x1, :lo12:.LC74	// tmp2574, tmp865,
	add	x24, sp, 576	// tmp2497,,
// main.cpp:236:     string tl=o.ascii?"+":"╭",tr=o.ascii?"+":"╮",bl=o.ascii?"+":"╰",br=o.ascii?"+":"╯",hz=o.ascii?"-":"─",vt=o.ascii?"|":"│";
	ldrb	w0, [x19, 98]	// o_256(D)->ascii, o_256(D)->ascii
// main.cpp:236:     string tl=o.ascii?"+":"╭",tr=o.ascii?"+":"╮",bl=o.ascii?"+":"╰",br=o.ascii?"+":"╯",hz=o.ascii?"-":"─",vt=o.ascii?"|":"│";
	tst	x0, 1	// o_256(D)->ascii,
	ldr	x0, [sp, 168]	//, %sfp
	csel	x1, x2, x1, eq	//, tmp2575, tmp2574,
.LEHB125:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE125:
// main.cpp:236:     string tl=o.ascii?"+":"╭",tr=o.ascii?"+":"╮",bl=o.ascii?"+":"╰",br=o.ascii?"+":"╯",hz=o.ascii?"-":"─",vt=o.ascii?"|":"│";
	ldrb	w0, [x19, 98]	// o_256(D)->ascii, o_256(D)->ascii
// main.cpp:236:     string tl=o.ascii?"+":"╭",tr=o.ascii?"+":"╮",bl=o.ascii?"+":"╰",br=o.ascii?"+":"╯",hz=o.ascii?"-":"─",vt=o.ascii?"|":"│";
	adrp	x2, .LC76	// tmp868,
	add	x2, x2, :lo12:.LC76	// tmp2577, tmp868,
	adrp	x1, .LC74	// tmp867,
	add	x1, x1, :lo12:.LC74	// tmp2576, tmp867,
	tst	x0, 1	// o_256(D)->ascii,
// main.cpp:236:     string tl=o.ascii?"+":"╭",tr=o.ascii?"+":"╮",bl=o.ascii?"+":"╰",br=o.ascii?"+":"╯",hz=o.ascii?"-":"─",vt=o.ascii?"|":"│";
	ldr	x0, [sp, 176]	//, %sfp
	csel	x1, x2, x1, eq	//, tmp2577, tmp2576,
.LEHB126:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE126:
// main.cpp:236:     string tl=o.ascii?"+":"╭",tr=o.ascii?"+":"╮",bl=o.ascii?"+":"╰",br=o.ascii?"+":"╯",hz=o.ascii?"-":"─",vt=o.ascii?"|":"│";
	ldrb	w0, [x19, 98]	// o_256(D)->ascii, o_256(D)->ascii
// main.cpp:236:     string tl=o.ascii?"+":"╭",tr=o.ascii?"+":"╮",bl=o.ascii?"+":"╰",br=o.ascii?"+":"╯",hz=o.ascii?"-":"─",vt=o.ascii?"|":"│";
	adrp	x2, .LC77	// tmp870,
	add	x2, x2, :lo12:.LC77	// tmp2579, tmp870,
	adrp	x1, .LC74	// tmp869,
	add	x1, x1, :lo12:.LC74	// tmp2578, tmp869,
	tst	x0, 1	// o_256(D)->ascii,
// main.cpp:236:     string tl=o.ascii?"+":"╭",tr=o.ascii?"+":"╮",bl=o.ascii?"+":"╰",br=o.ascii?"+":"╯",hz=o.ascii?"-":"─",vt=o.ascii?"|":"│";
	ldr	x0, [sp, 104]	//, %sfp
	csel	x1, x2, x1, eq	//, tmp2579, tmp2578,
.LEHB127:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE127:
// main.cpp:236:     string tl=o.ascii?"+":"╭",tr=o.ascii?"+":"╮",bl=o.ascii?"+":"╰",br=o.ascii?"+":"╯",hz=o.ascii?"-":"─",vt=o.ascii?"|":"│";
	ldrb	w0, [x19, 98]	// o_256(D)->ascii, o_256(D)->ascii
// main.cpp:236:     string tl=o.ascii?"+":"╭",tr=o.ascii?"+":"╮",bl=o.ascii?"+":"╰",br=o.ascii?"+":"╯",hz=o.ascii?"-":"─",vt=o.ascii?"|":"│";
	adrp	x2, .LC78	// tmp872,
	add	x2, x2, :lo12:.LC78	// tmp2581, tmp872,
	adrp	x1, .LC74	// tmp871,
	add	x1, x1, :lo12:.LC74	// tmp2580, tmp871,
	tst	x0, 1	// o_256(D)->ascii,
// main.cpp:236:     string tl=o.ascii?"+":"╭",tr=o.ascii?"+":"╮",bl=o.ascii?"+":"╰",br=o.ascii?"+":"╯",hz=o.ascii?"-":"─",vt=o.ascii?"|":"│";
	ldr	x0, [sp, 112]	//, %sfp
	csel	x1, x2, x1, eq	//, tmp2581, tmp2580,
.LEHB128:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE128:
// main.cpp:236:     string tl=o.ascii?"+":"╭",tr=o.ascii?"+":"╮",bl=o.ascii?"+":"╰",br=o.ascii?"+":"╯",hz=o.ascii?"-":"─",vt=o.ascii?"|":"│";
	ldrb	w0, [x19, 98]	// o_256(D)->ascii, o_256(D)->ascii
// main.cpp:236:     string tl=o.ascii?"+":"╭",tr=o.ascii?"+":"╮",bl=o.ascii?"+":"╰",br=o.ascii?"+":"╯",hz=o.ascii?"-":"─",vt=o.ascii?"|":"│";
	adrp	x2, .LC79	// tmp874,
	add	x2, x2, :lo12:.LC79	// tmp2583, tmp874,
	adrp	x1, .LC71	// tmp873,
	add	x1, x1, :lo12:.LC71	// tmp2582, tmp873,
	tst	x0, 1	// o_256(D)->ascii,
// main.cpp:236:     string tl=o.ascii?"+":"╭",tr=o.ascii?"+":"╮",bl=o.ascii?"+":"╰",br=o.ascii?"+":"╯",hz=o.ascii?"-":"─",vt=o.ascii?"|":"│";
	ldr	x0, [sp, 144]	//, %sfp
	csel	x1, x2, x1, eq	//, tmp2583, tmp2582,
.LEHB129:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE129:
// main.cpp:236:     string tl=o.ascii?"+":"╭",tr=o.ascii?"+":"╮",bl=o.ascii?"+":"╰",br=o.ascii?"+":"╯",hz=o.ascii?"-":"─",vt=o.ascii?"|":"│";
	ldrb	w0, [x19, 98]	// o_256(D)->ascii, o_256(D)->ascii
// main.cpp:236:     string tl=o.ascii?"+":"╭",tr=o.ascii?"+":"╮",bl=o.ascii?"+":"╰",br=o.ascii?"+":"╯",hz=o.ascii?"-":"─",vt=o.ascii?"|":"│";
	adrp	x2, .LC81	// tmp876,
	add	x2, x2, :lo12:.LC81	// tmp2585, tmp876,
	adrp	x1, .LC80	// tmp875,
	add	x1, x1, :lo12:.LC80	// tmp2584, tmp875,
	tst	x0, 1	// o_256(D)->ascii,
// main.cpp:236:     string tl=o.ascii?"+":"╭",tr=o.ascii?"+":"╮",bl=o.ascii?"+":"╰",br=o.ascii?"+":"╯",hz=o.ascii?"-":"─",vt=o.ascii?"|":"│";
	ldr	x0, [sp, 88]	//, %sfp
	csel	x1, x2, x1, eq	//, tmp2585, tmp2584,
.LEHB130:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE130:
// /usr/include/c++/13/bits/basic_ios.h:462: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	ldr	x19, [sp, 120]	// tmp2513, %sfp
	mov	x0, x19	//, tmp2513
	bl	_ZNSt8ios_baseC2Ev		//
// /usr/include/c++/13/ostream:432:       { this->init(0); }
	adrp	x2, :got:_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE	// tmp1912,
	ldr	x2, [x2, :got_lo12:_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE]	// tmp1912,
// /usr/include/c++/13/bits/basic_ios.h:462: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	add	x0, sp, 2592	// tmp3115,,
	movi	v0.4s, 0	// tmp1910
// /usr/include/c++/13/bits/basic_ios.h:461:       : ios_base(), _M_tie(0), _M_fill(char_type()), _M_fill_init(false), 
	str	xzr, [sp, 2712]	//, MEM[(struct basic_ios *)_688]._M_tie
// /usr/include/c++/13/bits/basic_ios.h:461:       : ios_base(), _M_tie(0), _M_fill(char_type()), _M_fill_init(false), 
	strh	wzr, [sp, 2720]	//, MEM <unsigned short> [(void *)_688]
// /usr/include/c++/13/ostream:432:       { this->init(0); }
	mov	x1, 0	//,
// /usr/include/c++/13/ostream:432:       { this->init(0); }
	ldp	x4, x2, [x2, 8]	// _1771, _1775, MEM[(const void * *)&_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE + 8B]
	stp	x4, x2, [sp, 184]	// _1771, _1775, %sfp
// /usr/include/c++/13/bits/basic_ios.h:462: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	adrp	x3, :got:_ZTVSt9basic_iosIcSt11char_traitsIcEE	// tmp2522,
	ldr	x3, [x3, :got_lo12:_ZTVSt9basic_iosIcSt11char_traitsIcEE]	// tmp2522,
// /usr/include/c++/13/bits/basic_ios.h:462: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	str	q0, [x0, 136]	// tmp1910, MEM <vector(2) long unsigned int> [(void *)_688]
	str	q0, [x0, 152]	// tmp1910, MEM <vector(2) long unsigned int> [(void *)_688]
// /usr/include/c++/13/ostream:432:       { this->init(0); }
	ldr	x0, [x4, -24]	// MEM[(long int *)_1771 + -24B], MEM[(long int *)_1771 + -24B]
// /usr/include/c++/13/bits/basic_ios.h:462: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	str	x3, [sp, 208]	// tmp2522, %sfp
	add	x3, x3, 16	// tmp1908, tmp2522,
// /usr/include/c++/13/ostream:432:       { this->init(0); }
	str	x4, [sp, 2384]	// _1771, MEM[(struct basic_ostream *)_688]._vptr.basic_ostream
// /usr/include/c++/13/bits/basic_ios.h:462: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	str	x3, [sp, 2496]	// tmp1908, MEM[(struct basic_ios *)_688].D.75676._vptr.ios_base
// /usr/include/c++/13/ostream:432:       { this->init(0); }
	str	x2, [x21, x0]	// _1775, MEM[(struct basic_ios *)_1774].D.75676._vptr.ios_base
// /usr/include/c++/13/ostream:432:       { this->init(0); }
	add	x0, x21, x0	//, tmp2505, MEM[(long int *)_1771 + -24B]
.LEHB131:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E		//
.LEHE131:
// /usr/include/c++/13/sstream:805:       : __ostream_type(), _M_stringbuf(ios_base::out)
	adrp	x1, :got:_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE	// tmp2542,
	ldr	x1, [x1, :got_lo12:_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE]	// tmp2542,
	str	x1, [sp, 248]	// tmp2542, %sfp
// /usr/include/c++/13/streambuf:473:       _M_buf_locale(locale())
	adrp	x3, :got:_ZTVSt15basic_streambufIcSt11char_traitsIcEE	// tmp2481,
	ldr	x3, [x3, :got_lo12:_ZTVSt15basic_streambufIcSt11char_traitsIcEE]	// tmp2481,
// /usr/include/c++/13/sstream:805:       : __ostream_type(), _M_stringbuf(ios_base::out)
	add	x2, x1, 24	// tmp1916, tmp2542,
// /usr/include/c++/13/streambuf:473:       _M_buf_locale(locale())
	ldr	x0, [sp, 72]	//, %sfp
// /usr/include/c++/13/sstream:805:       : __ostream_type(), _M_stringbuf(ios_base::out)
	add	x1, x1, 64	// tmp1918, tmp2542,
// /usr/include/c++/13/streambuf:471:       : _M_in_beg(0), _M_in_cur(0), _M_in_end(0),
	movi	v0.4s, 0	// tmp1922
// /usr/include/c++/13/sstream:805:       : __ostream_type(), _M_stringbuf(ios_base::out)
	str	x2, [sp, 2384]	// tmp1916, MEM[(struct basic_ostringstream *)_688].D.80364._vptr.basic_ostream
// /usr/include/c++/13/streambuf:473:       _M_buf_locale(locale())
	add	x2, x3, 16	// tmp1920, tmp2481,
	str	x3, [sp, 200]	// tmp2481, %sfp
	str	x2, [sp, 2392]	// tmp1920, MEM[(struct basic_streambuf *)_688]._vptr.basic_streambuf
// /usr/include/c++/13/sstream:805:       : __ostream_type(), _M_stringbuf(ios_base::out)
	str	x1, [sp, 2496]	// tmp1918, MEM[(struct basic_ios *)_688].D.75676._vptr.ios_base
// /usr/include/c++/13/streambuf:471:       : _M_in_beg(0), _M_in_cur(0), _M_in_end(0),
	str	q0, [sp, 2400]	// tmp1922, MEM <vector(2) long unsigned int> [(char_type * *)_688]
	str	q0, [sp, 2416]	// tmp1922, MEM <vector(2) long unsigned int> [(char_type * *)_688]
	str	q0, [sp, 2432]	// tmp1922, MEM <vector(2) long unsigned int> [(char_type * *)_688]
// /usr/include/c++/13/streambuf:473:       _M_buf_locale(locale())
	bl	_ZNSt6localeC1Ev		//
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x2, sp, 2480	// tmp2512,,
// /usr/include/c++/13/sstream:134:       : __streambuf_type(), _M_mode(__mode), _M_string()
	adrp	x1, :got:_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE	// tmp2550,
	ldr	x1, [x1, :got_lo12:_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE]	// tmp2550,
// /usr/include/c++/13/sstream:134:       : __streambuf_type(), _M_mode(__mode), _M_string()
	mov	w0, 16	// tmp1929,
	str	w0, [sp, 2456]	// tmp1929, MEM[(struct basic_stringbuf *)_688]._M_mode
// /usr/include/c++/13/sstream:134:       : __streambuf_type(), _M_mode(__mode), _M_string()
	add	x0, x1, 16	// tmp1927, tmp2550,
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x2, [sp, 152]	// tmp2512, %sfp
// /usr/include/c++/13/sstream:134:       : __streambuf_type(), _M_mode(__mode), _M_string()
	str	x1, [sp, 216]	// tmp2550, %sfp
// /usr/include/c++/13/sstream:806:       { this->init(&_M_stringbuf); }
	add	x1, sp, 2392	//,,
// /usr/include/c++/13/sstream:134:       : __streambuf_type(), _M_mode(__mode), _M_string()
	str	x0, [sp, 2392]	// tmp1927, MEM[(struct basic_stringbuf *)_688].D.80081._vptr.basic_streambuf
// /usr/include/c++/13/sstream:806:       { this->init(&_M_stringbuf); }
	mov	x0, x19	//, tmp2513
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x2, [sp, 2464]	// tmp2512, MEM[(struct _Alloc_hider *)_688]._M_p
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	xzr, [sp, 2472]	//, MEM[(struct basic_string *)_688]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 2480]	//, MEM[(char_type &)_688]
.LEHB132:
// /usr/include/c++/13/sstream:806:       { this->init(&_M_stringbuf); }
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E		//
.LEHE132:
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	ldr	x1, [sp, 1880]	//, MEM[(struct basic_string *)_294]._M_dataplus._M_p
	mov	x0, x21	//, tmp2505
	ldr	x2, [sp, 1888]	//, MEM[(struct basic_string *)_294]._M_string_length
.LEHB133:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// main.cpp:238:     out<<tl; for(size_t c=0;c<shown_cols*2;++c) out<<hz; out<<tr;
	lsl	x0, x22, 1	// _1087, _10,
	str	x0, [sp, 24]	// _1087, %sfp
// main.cpp:238:     out<<tl; for(size_t c=0;c<shown_cols*2;++c) out<<hz; out<<tr;
	mov	x19, 0	// c,
// main.cpp:238:     out<<tl; for(size_t c=0;c<shown_cols*2;++c) out<<hz; out<<tr;
	cbz	x0, .L1159	// _1087,
	.p2align 3,,7
.L1157:
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	ldr	x1, [sp, 2008]	//, MEM[(struct basic_string *)_3257]._M_dataplus._M_p
	mov	x0, x21	//, tmp2505
	ldr	x2, [sp, 2016]	//, MEM[(struct basic_string *)_3257]._M_string_length
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// main.cpp:238:     out<<tl; for(size_t c=0;c<shown_cols*2;++c) out<<hz; out<<tr;
	ldr	x0, [sp, 24]	// _1087, %sfp
// main.cpp:238:     out<<tl; for(size_t c=0;c<shown_cols*2;++c) out<<hz; out<<tr;
	add	x19, x19, 1	// c, c,
// main.cpp:238:     out<<tl; for(size_t c=0;c<shown_cols*2;++c) out<<hz; out<<tr;
	cmp	x19, x0	// c, _1087
	bne	.L1157		//,
.L1159:
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	ldr	x1, [sp, 1912]	//, MEM[(struct basic_string *)_342]._M_dataplus._M_p
	mov	x0, x21	//, tmp2505
	ldr	x2, [sp, 1920]	//, MEM[(struct basic_string *)_342]._M_string_length
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// main.cpp:239:     if(side) out<<"  Incendio forestal";
	ldr	x1, [sp, 32]	// prephitmp_3270, %sfp
	ldr	x0, [sp, 56]	// _7, %sfp
	cmp	x0, x1	// _7, prephitmp_3270
	bhi	.L1160		//,
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC123	// tmp1968,
	mov	x0, x21	//, tmp2505
	add	x1, x1, :lo12:.LC123	//, tmp1968,
	mov	x2, 19	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.L1160:
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	ldr	x0, [sp, 2384]	// MEM[(struct basic_ostream *)_688]._vptr.basic_ostream, MEM[(struct basic_ostream *)_688]._vptr.basic_ostream
	mov	w1, 10	// tmp1970,
	strb	w1, [sp, 554]	// tmp1970, __c
// /usr/include/c++/13/bits/ios_base.h:756:     { return _M_width; }
	ldr	x0, [x0, -24]	// MEM[(long int *)_1786 + -24B], MEM[(long int *)_1786 + -24B]
	add	x0, x21, x0	// tmp1974, tmp2505, MEM[(long int *)_1786 + -24B]
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	ldr	x0, [x0, 16]	// MEM[(const struct ios_base *)_1789]._M_width, MEM[(const struct ios_base *)_1789]._M_width
	cbz	x0, .L1161	// MEM[(const struct ios_base *)_1789]._M_width,
// /usr/include/c++/13/ostream:573: 	return __ostream_insert(__out, &__c, 1);
	add	x1, sp, 554	//,,
	mov	x0, x21	//, tmp2505
	mov	x2, 1	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.L1162:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x0, .LC104	// tmp3144,
	add	x0, x0, :lo12:.LC104	// tmp2600, tmp3144,
	str	x0, [sp, 96]	// tmp2600, %sfp
// /usr/include/c++/13/ostream:573: 	return __ostream_insert(__out, &__c, 1);
	add	x0, sp, 555	// tmp2603,,
	str	x0, [sp, 64]	// tmp2603, %sfp
// main.cpp:241:     for(size_t r=0;r<shown_rows;++r) {
	mov	x28, 0	// r,
// main.cpp:241:     for(size_t r=0;r<shown_rows;++r) {
	ldr	x0, [sp, 16]	// k, %sfp
	mov	w20, 10	// tmp2602,
	cbz	x0, .L1175	// k,
	.p2align 3,,7
.L1163:
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	ldr	x1, [sp, 2040]	//, MEM[(struct basic_string *)_3259]._M_dataplus._M_p
	mov	x0, x21	//, tmp2505
	ldr	x2, [sp, 2048]	//, MEM[(struct basic_string *)_3259]._M_string_length
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// main.cpp:243:         for(size_t c=0;c<shown_cols;++c) out<<glyph(cells[index(r+r0,c+c0,o.cols)],o.ascii,o.color&&tty);
	ldr	x0, [sp, 48]	// iftmp.88_142, %sfp
// main.cpp:243:         for(size_t c=0;c<shown_cols;++c) out<<glyph(cells[index(r+r0,c+c0,o.cols)],o.ascii,o.color&&tty);
	mov	x19, 0	// c,
// main.cpp:243:         for(size_t c=0;c<shown_cols;++c) out<<glyph(cells[index(r+r0,c+c0,o.cols)],o.ascii,o.color&&tty);
	add	x24, x0, x28	// _3516, iftmp.88_142, r
// main.cpp:243:         for(size_t c=0;c<shown_cols;++c) out<<glyph(cells[index(r+r0,c+c0,o.cols)],o.ascii,o.color&&tty);
	cbz	x22, .L1170	// _10,
	.p2align 3,,7
.L1171:
// main.cpp:114: size_t index(size_t r,size_t c,size_t cols) { return r*cols+c; }
	ldr	x2, [sp, 8]	// o, %sfp
// main.cpp:243:         for(size_t c=0;c<shown_cols;++c) out<<glyph(cells[index(r+r0,c+c0,o.cols)],o.ascii,o.color&&tty);
	mov	x8, x26	//, tmp2493
// /usr/include/c++/13/bits/stl_vector.h:1148: 	return *(this->_M_impl._M_start + __n);
	ldr	x3, [x23]	// cells_287(D)->D.101324._M_impl.D.100663._M_start, cells_287(D)->D.101324._M_impl.D.100663._M_start
// main.cpp:114: size_t index(size_t r,size_t c,size_t cols) { return r*cols+c; }
	ldr	x0, [x2, 8]	// o_256(D)->cols, o_256(D)->cols
// main.cpp:243:         for(size_t c=0;c<shown_cols;++c) out<<glyph(cells[index(r+r0,c+c0,o.cols)],o.ascii,o.color&&tty);
	ldrb	w1, [x2, 98]	//, o_256(D)->ascii
// main.cpp:243:         for(size_t c=0;c<shown_cols;++c) out<<glyph(cells[index(r+r0,c+c0,o.cols)],o.ascii,o.color&&tty);
	ldrb	w2, [x2, 99]	// _59, o_256(D)->color
// main.cpp:114: size_t index(size_t r,size_t c,size_t cols) { return r*cols+c; }
	madd	x0, x24, x0, x27	// tmp1990, _3516, o_256(D)->cols, iftmp.89_143
	add	x0, x0, x19	// tmp1991, tmp1990, c
// main.cpp:243:         for(size_t c=0;c<shown_cols;++c) out<<glyph(cells[index(r+r0,c+c0,o.cols)],o.ascii,o.color&&tty);
	tst	x2, 1	// _59,
// main.cpp:243:         for(size_t c=0;c<shown_cols;++c) out<<glyph(cells[index(r+r0,c+c0,o.cols)],o.ascii,o.color&&tty);
	add	x0, x3, x0, lsl 3	//, cells_287(D)->D.101324._M_impl.D.100663._M_start, tmp1991,
	ldr	w3, [sp, 464]	//, %sfp
	csel	w2, w2, w3, eq	//, _59, tty,
	bl	_Z5glyphB5cxx11RK4Cellbb		//
.LEHE133:
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	ldr	x1, [sp, 2128]	//, MEM[(struct basic_string *)_3255]._M_dataplus._M_p
	mov	x0, x21	//, tmp2505
	ldr	x2, [sp, 2136]	//, MEM[(struct basic_string *)_3255]._M_string_length
.LEHB134:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE134:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 2128]	// _1794, MEM[(struct basic_string *)_3255]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x25	// _1794, tmp2494
	beq	.L1168		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 2144]	// MEM[(struct basic_string *)_3255].D.50133._M_allocated_capacity, MEM[(struct basic_string *)_3255].D.50133._M_allocated_capacity
// main.cpp:243:         for(size_t c=0;c<shown_cols;++c) out<<glyph(cells[index(r+r0,c+c0,o.cols)],o.ascii,o.color&&tty);
	add	x19, x19, 1	// c, c,
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM[(struct basic_string *)_3255].D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
// main.cpp:243:         for(size_t c=0;c<shown_cols;++c) out<<glyph(cells[index(r+r0,c+c0,o.cols)],o.ascii,o.color&&tty);
	cmp	x22, x19	// _10, c
	bne	.L1171		//,
.L1170:
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	ldr	x1, [sp, 2040]	//, MEM[(struct basic_string *)_3259]._M_dataplus._M_p
	mov	x0, x21	//, tmp2505
	ldr	x2, [sp, 2048]	//, MEM[(struct basic_string *)_3259]._M_string_length
.LEHB135:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// main.cpp:244:         out<<vt; if(side && r<info.size()) out<<"  "<<info[r]; out<<'\n';
	ldr	x1, [sp, 32]	// prephitmp_3270, %sfp
	ldr	x0, [sp, 56]	// _7, %sfp
	cmp	x0, x1	// _7, prephitmp_3270
	bhi	.L1172		//,
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ldr	x19, [sp, 576]	// _635, info.D.103453._M_impl.D.102792._M_start
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ldr	x0, [sp, 584]	// info.D.103453._M_impl.D.102792._M_finish, info.D.103453._M_impl.D.102792._M_finish
	sub	x0, x0, x19	// tmp2003, info.D.103453._M_impl.D.102792._M_finish, _635
// main.cpp:244:         out<<vt; if(side && r<info.size()) out<<"  "<<info[r]; out<<'\n';
	cmp	x28, x0, asr 5	// r, tmp2003,
	bcc	.L1623		//,
.L1172:
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	ldr	x0, [sp, 2384]	// MEM[(struct basic_ostream *)_688]._vptr.basic_ostream, MEM[(struct basic_ostream *)_688]._vptr.basic_ostream
	strb	w20, [sp, 555]	// tmp2602, __c
// /usr/include/c++/13/bits/ios_base.h:756:     { return _M_width; }
	ldr	x0, [x0, -24]	// MEM[(long int *)_1801 + -24B], MEM[(long int *)_1801 + -24B]
	add	x0, x21, x0	// tmp2018, tmp2505, MEM[(long int *)_1801 + -24B]
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	ldr	x0, [x0, 16]	// MEM[(const struct ios_base *)_1804]._M_width, MEM[(const struct ios_base *)_1804]._M_width
	cbz	x0, .L1173	// MEM[(const struct ios_base *)_1804]._M_width,
// /usr/include/c++/13/ostream:573: 	return __ostream_insert(__out, &__c, 1);
	ldr	x1, [sp, 64]	//, %sfp
	mov	x0, x21	//, tmp2505
	mov	x2, 1	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.L1174:
// main.cpp:241:     for(size_t r=0;r<shown_rows;++r) {
	ldr	x0, [sp, 16]	// k, %sfp
// main.cpp:241:     for(size_t r=0;r<shown_rows;++r) {
	add	x28, x28, 1	// r, r,
// main.cpp:241:     for(size_t r=0;r<shown_rows;++r) {
	cmp	x28, x0	// r, k
	bne	.L1163		//,
.L1175:
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	ldr	x1, [sp, 1944]	//, MEM[(struct basic_string *)_293]._M_dataplus._M_p
	mov	x0, x21	//, tmp2505
	ldr	x2, [sp, 1952]	//, MEM[(struct basic_string *)_293]._M_string_length
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// main.cpp:246:     out<<bl; for(size_t c=0;c<shown_cols*2;++c) out<<hz; out<<br<<'\n';
	ldr	x0, [sp, 24]	// _1087, %sfp
// main.cpp:246:     out<<bl; for(size_t c=0;c<shown_cols*2;++c) out<<hz; out<<br<<'\n';
	mov	x19, 0	// c,
// main.cpp:246:     out<<bl; for(size_t c=0;c<shown_cols*2;++c) out<<hz; out<<br<<'\n';
	cbz	x0, .L1178	// _1087,
	.p2align 3,,7
.L1176:
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	ldr	x1, [sp, 2008]	//, MEM[(struct basic_string *)_3257]._M_dataplus._M_p
	mov	x0, x21	//, tmp2505
	ldr	x2, [sp, 2016]	//, MEM[(struct basic_string *)_3257]._M_string_length
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// main.cpp:246:     out<<bl; for(size_t c=0;c<shown_cols*2;++c) out<<hz; out<<br<<'\n';
	ldr	x0, [sp, 24]	// _1087, %sfp
// main.cpp:246:     out<<bl; for(size_t c=0;c<shown_cols*2;++c) out<<hz; out<<br<<'\n';
	add	x19, x19, 1	// c, c,
// main.cpp:246:     out<<bl; for(size_t c=0;c<shown_cols*2;++c) out<<hz; out<<br<<'\n';
	cmp	x19, x0	// c, _1087
	bne	.L1176		//,
.L1178:
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	ldr	x1, [sp, 1976]	//, MEM[(struct basic_string *)_279]._M_dataplus._M_p
	mov	x0, x21	//, tmp2505
	ldr	x2, [sp, 1984]	//, MEM[(struct basic_string *)_279]._M_string_length
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	ldr	x3, [x0]	// _654->_vptr.basic_ostream, _654->_vptr.basic_ostream
	mov	w1, 10	// tmp2029,
	strb	w1, [sp, 556]	// tmp2029, __c
// /usr/include/c++/13/bits/ios_base.h:756:     { return _M_width; }
	ldr	x3, [x3, -24]	// MEM[(long int *)_1809 + -24B], MEM[(long int *)_1809 + -24B]
	add	x2, x0, x3	// tmp2032, _654, MEM[(long int *)_1809 + -24B]
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	ldr	x2, [x2, 16]	// MEM[(const struct ios_base *)_1812]._M_width, MEM[(const struct ios_base *)_1812]._M_width
	cbz	x2, .L1179	// MEM[(const struct ios_base *)_1812]._M_width,
// /usr/include/c++/13/ostream:573: 	return __ostream_insert(__out, &__c, 1);
	add	x1, sp, 556	//,,
	mov	x2, 1	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.L1180:
// main.cpp:247:     if(r0 || c0 || shown_rows<o.rows || shown_cols<o.cols) {
	ldr	x0, [sp, 48]	// iftmp.88_142, %sfp
	orr	x0, x0, x27	// tmp2035, iftmp.88_142, iftmp.89_143
// main.cpp:247:     if(r0 || c0 || shown_rows<o.rows || shown_cols<o.cols) {
	cbnz	x0, .L1181	// tmp2035,
// main.cpp:247:     if(r0 || c0 || shown_rows<o.rows || shown_cols<o.cols) {
	ldp	x1, x2, [sp, 8]	// o, k, %sfp
	ldr	x0, [x1]	// o_256(D)->rows, o_256(D)->rows
	cmp	x0, x2	// o_256(D)->rows, k
	bhi	.L1181		//,
// main.cpp:247:     if(r0 || c0 || shown_rows<o.rows || shown_cols<o.cols) {
	ldr	x0, [x1, 8]	// o_256(D)->cols, o_256(D)->cols
	cmp	x22, x0	// _10, o_256(D)->cols
	bcs	.L1186		//,
	.p2align 3,,7
.L1181:
// main.cpp:248:         if(tty && width<60) out<<"Vista: f"<<r0<<"-"<<r0+shown_rows-1<<" c"<<c0<<"-"<<c0+shown_cols-1<<'\n';
	ldr	x0, [sp, 32]	// prephitmp_3270, %sfp
	cmp	x0, 59	// prephitmp_3270,
// main.cpp:248:         if(tty && width<60) out<<"Vista: f"<<r0<<"-"<<r0+shown_rows-1<<" c"<<c0<<"-"<<c0+shown_cols-1<<'\n';
	ldr	w0, [sp, 464]	//, %sfp
	ccmp	w0, 0, 4, ls	// tty,,,
	beq	.L1183		//,
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC124	// tmp2044,
	mov	x0, x21	//, tmp2505
	add	x1, x1, :lo12:.LC124	//, tmp2044,
	mov	x2, 8	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	ldr	x23, [sp, 48]	// iftmp.88_142, %sfp
	mov	x0, x21	//, tmp2505
	mov	x1, x23	//, iftmp.88_142
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x20, .LC71	// tmp2537,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x19, x0	// _655, tmp2751
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x20, :lo12:.LC71	//, tmp2537,
	mov	x2, 1	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// main.cpp:248:         if(tty && width<60) out<<"Vista: f"<<r0<<"-"<<r0+shown_rows-1<<" c"<<c0<<"-"<<c0+shown_cols-1<<'\n';
	ldr	x0, [sp, 16]	// k, %sfp
	sub	x1, x0, #1	// tmp2049, k,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x0, x19	//, _655
	add	x1, x1, x23	//, tmp2049, iftmp.88_142
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC125	// tmp2052,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x19, x0	// _656, tmp2752
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC125	//, tmp2052,
	mov	x2, 2	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x1, x27	//, iftmp.89_143
	mov	x0, x19	//, _656
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x20, :lo12:.LC71	//, tmp2537,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x19, x0	// _657, tmp2753
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	mov	x2, 1	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// main.cpp:248:         if(tty && width<60) out<<"Vista: f"<<r0<<"-"<<r0+shown_rows-1<<" c"<<c0<<"-"<<c0+shown_cols-1<<'\n';
	sub	x1, x22, #1	// tmp2055, _10,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x0, x19	//, _657
	add	x1, x1, x27	//, tmp2055, iftmp.89_143
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	ldr	x3, [x0]	// MEM[(struct basic_ostream *)_658]._vptr.basic_ostream, MEM[(struct basic_ostream *)_658]._vptr.basic_ostream
	mov	w1, 10	// tmp2057,
	strb	w1, [sp, 557]	// tmp2057, __c
// /usr/include/c++/13/bits/ios_base.h:756:     { return _M_width; }
	ldr	x3, [x3, -24]	// MEM[(long int *)_1817 + -24B], MEM[(long int *)_1817 + -24B]
	add	x2, x0, x3	// tmp2060, _658, MEM[(long int *)_1817 + -24B]
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	ldr	x2, [x2, 16]	// MEM[(const struct ios_base *)_1820]._M_width, MEM[(const struct ios_base *)_1820]._M_width
	cbz	x2, .L1184	// MEM[(const struct ios_base *)_1820]._M_width,
// /usr/include/c++/13/ostream:573: 	return __ostream_insert(__out, &__c, 1);
	add	x1, sp, 557	//,,
	mov	x2, 1	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.L1186:
// main.cpp:251:     if(!side) for(const auto& line:info) out<<line<<'\n';
	ldr	x1, [sp, 32]	// prephitmp_3270, %sfp
	ldr	x0, [sp, 56]	// _7, %sfp
// /usr/include/c++/13/bits/stl_iterator.h:1077:       : _M_current(__i) { }
	ldr	x22, [sp, 576]	// _664,
// main.cpp:251:     if(!side) for(const auto& line:info) out<<line<<'\n';
	cmp	x0, x1	// _7, prephitmp_3270
	bhi	.L1187		//,
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ldr	x20, [sp, 584]	// _663, info.D.103453._M_impl.D.102792._M_finish
// /usr/include/c++/13/ostream:573: 	return __ostream_insert(__out, &__c, 1);
	add	x27, sp, 559	// tmp2598,,
	ldr	x0, [sp, 16]	// k, %sfp
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	x23, x20, x22	// tmp2079, _663, _664
	mov	w24, 10	// tmp2597,
	asr	x23, x23, 5	// _272, tmp2079,
	add	x19, x22, x0, lsl 5	// ivtmp.1094, _664, k,
// main.cpp:252:     else for(size_t k=shown_rows;k<info.size();++k) out<<info[k]<<'\n';
	cmp	x23, x0	// _272, k
	bhi	.L1197		//,
	b	.L1194		//
	.p2align 2,,3
.L1624:
// /usr/include/c++/13/ostream:573: 	return __ostream_insert(__out, &__c, 1);
	mov	x1, x27	//, tmp2598
	mov	x2, 1	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// main.cpp:252:     else for(size_t k=shown_rows;k<info.size();++k) out<<info[k]<<'\n';
	ldr	x0, [sp, 16]	// k, %sfp
// main.cpp:252:     else for(size_t k=shown_rows;k<info.size();++k) out<<info[k]<<'\n';
	add	x19, x19, 32	// ivtmp.1094, ivtmp.1094,
// main.cpp:252:     else for(size_t k=shown_rows;k<info.size();++k) out<<info[k]<<'\n';
	add	x0, x0, 1	// k, k,
	str	x0, [sp, 16]	// k, %sfp
// main.cpp:252:     else for(size_t k=shown_rows;k<info.size();++k) out<<info[k]<<'\n';
	cmp	x23, x0	// _272, k
	bls	.L1194		//,
.L1197:
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	ldp	x1, x2, [x19]	//,, MEM[(char * *)_3321]
	mov	x0, x21	//, tmp2505
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	ldr	x2, [x0]	// _673->_vptr.basic_ostream, _673->_vptr.basic_ostream
	strb	w24, [sp, 559]	// tmp2597, __c
// /usr/include/c++/13/bits/ios_base.h:756:     { return _M_width; }
	ldr	x2, [x2, -24]	// MEM[(long int *)_1835 + -24B], MEM[(long int *)_1835 + -24B]
	add	x1, x0, x2	// tmp2097, _673, MEM[(long int *)_1835 + -24B]
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	ldr	x1, [x1, 16]	// MEM[(const struct ios_base *)_1838]._M_width, MEM[(const struct ios_base *)_1838]._M_width
	cbnz	x1, .L1624	// MEM[(const struct ios_base *)_1838]._M_width,
// /usr/include/c++/13/ostream:574:       __out.put(__c);
	mov	w1, 10	//,
	bl	_ZNSo3putEc		//
// main.cpp:252:     else for(size_t k=shown_rows;k<info.size();++k) out<<info[k]<<'\n';
	ldr	x0, [sp, 16]	// k, %sfp
// main.cpp:252:     else for(size_t k=shown_rows;k<info.size();++k) out<<info[k]<<'\n';
	add	x19, x19, 32	// ivtmp.1094, ivtmp.1094,
// main.cpp:252:     else for(size_t k=shown_rows;k<info.size();++k) out<<info[k]<<'\n';
	add	x0, x0, 1	// k, k,
	str	x0, [sp, 16]	// k, %sfp
// main.cpp:252:     else for(size_t k=shown_rows;k<info.size();++k) out<<info[k]<<'\n';
	cmp	x23, x0	// _272, k
	bhi	.L1197		//,
.L1194:
// main.cpp:253:     if(tty) {
	ldr	w0, [sp, 468]	//, %sfp
	cbz	w0, .L1198	// tmp2491,
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	adrp	x1, .LC130	// tmp2102,
	mov	x2, 3	//,
	add	x1, x1, :lo12:.LC130	//, tmp2102,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE135:
// /usr/include/c++/13/streambuf:539:       pptr() const { return _M_out_cur; }
	ldr	x4, [sp, 2432]	// _1847, MEM[(const struct basic_streambuf *)_688]._M_out_cur
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x25, [sp, 2128]	// tmp2494, MEM[(struct _Alloc_hider *)_3255]._M_p
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	xzr, [sp, 2136]	//, MEM[(struct basic_string *)_3255]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 2144]	//, MEM[(char_type &)_3255]
// /usr/include/c++/13/sstream:442: 	if (char_type* __pptr = this->pptr())
	cbz	x4, .L1199	// _1847,
// /usr/include/c++/13/streambuf:495:       egptr() const { return _M_in_end; }
	ldr	x5, [sp, 2416]	// _1848, MEM[(const struct basic_streambuf *)_688]._M_in_end
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	mov	x0, x26	//, tmp2493
// /usr/include/c++/13/streambuf:536:       pbase() const { return _M_out_beg; }
	ldr	x3, [sp, 2424]	// _1852, MEM[(const struct basic_streambuf *)_688]._M_out_beg
// /usr/include/c++/13/sstream:445: 	    if (!__egptr || __pptr > __egptr)
	cmp	x5, 0	// _1848,
// /usr/include/c++/13/sstream:448: 	      return __egptr; // Underlying sequence is [pbase, egptr).
	ccmp	x4, x5, 2, ne	// _1847, _1848,,
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	mov	x2, 0	//,
// /usr/include/c++/13/sstream:448: 	      return __egptr; // Underlying sequence is [pbase, egptr).
	csel	x4, x4, x5, hi	// _1847, _1847, _1848,
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	mov	x1, 0	//,
	sub	x4, x4, x3	//, _1847, _1852
.LEHB136:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm		//
.LEHE136:
.L1201:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x24, [sp, 2128]	// _683, MEM[(struct basic_string *)_3255]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:974:       { return iterator(_M_data() + this->size()); }
	ldr	x0, [sp, 2136]	// MEM[(struct basic_string *)_3255]._M_string_length, MEM[(struct basic_string *)_3255]._M_string_length
	mov	x19, x24	// ivtmp.1082, _683
	add	x24, x24, x0	// _682, _683, MEM[(struct basic_string *)_3255]._M_string_length
// main.cpp:255:         for(char ch:out.str()) {if(ch=='\n') cout<<"\033[K\n"; else cout<<ch;}
	cmp	x24, x19	// _682, ivtmp.1082
	beq	.L1211		//,
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x25, .LC132	// tmp2592,
// /usr/include/c++/13/ostream:573: 	return __ostream_insert(__out, &__c, 1);
	add	x27, sp, 568	// tmp2590,,
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	adrp	x23, :got:_ZSt4cout	// tmp2589,
	ldr	x23, [x23, :got_lo12:_ZSt4cout]	// tmp2589,
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x25, x25, :lo12:.LC132	// tmp2593, tmp2592,
	b	.L1210		//
	.p2align 2,,3
.L1206:
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	ldr	x0, [x23]	// cout._vptr.basic_ostream, cout._vptr.basic_ostream
	strb	w1, [sp, 568]	// ch, MEM[(char *)_3260]
// /usr/include/c++/13/bits/ios_base.h:756:     { return _M_width; }
	ldr	x0, [x0, -24]	// MEM[(long int *)_1863 + -24B], MEM[(long int *)_1863 + -24B]
	add	x0, x0, x23	// tmp2132, MEM[(long int *)_1863 + -24B], tmp2589
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	ldr	x0, [x0, 16]	// MEM[(const struct ios_base *)_1866]._M_width, MEM[(const struct ios_base *)_1866]._M_width
	cbz	x0, .L1208	// MEM[(const struct ios_base *)_1866]._M_width,
// /usr/include/c++/13/ostream:573: 	return __ostream_insert(__out, &__c, 1);
	mov	x1, x27	//, tmp2590
	mov	x0, x23	//, tmp2589
	mov	x2, 1	//,
.LEHB137:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.L1207:
// main.cpp:255:         for(char ch:out.str()) {if(ch=='\n') cout<<"\033[K\n"; else cout<<ch;}
	add	x19, x19, 1	// ivtmp.1082, ivtmp.1082,
	cmp	x24, x19	// _682, ivtmp.1082
	beq	.L1211		//,
.L1210:
// main.cpp:255:         for(char ch:out.str()) {if(ch=='\n') cout<<"\033[K\n"; else cout<<ch;}
	ldrb	w1, [x19]	// ch, MEM[(char &)_2452]
// main.cpp:255:         for(char ch:out.str()) {if(ch=='\n') cout<<"\033[K\n"; else cout<<ch;}
	cmp	w1, 10	// ch,
	bne	.L1206		//,
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	mov	x1, x25	//, tmp2593
	mov	x0, x23	//, tmp2589
	mov	x2, 4	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE137:
// main.cpp:255:         for(char ch:out.str()) {if(ch=='\n') cout<<"\033[K\n"; else cout<<ch;}
	add	x19, x19, 1	// ivtmp.1082, ivtmp.1082,
	cmp	x24, x19	// _682, ivtmp.1082
	bne	.L1210		//,
.L1211:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x0, x26	//, tmp2493
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	adrp	x1, .LC131	// tmp2118,
	mov	x2, 3	//,
	add	x1, x1, :lo12:.LC131	//, tmp2118,
.LEHB138:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.L1203:
// main.cpp:258:     cout.flush();
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	bl	_ZNSo5flushEv		//
// /usr/include/c++/13/sstream:79:     class basic_stringbuf : public basic_streambuf<_CharT, _Traits>
	ldr	x1, [sp, 216]	// tmp2550, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 2464]	// _1954, MEM[(const struct basic_string *)_688]._M_dataplus._M_p
// /usr/include/c++/13/sstream:79:     class basic_stringbuf : public basic_streambuf<_CharT, _Traits>
	add	x1, x1, 16	// tmp2161, tmp2550,
	str	x1, [sp, 2392]	// tmp2161, MEM[(struct basic_stringbuf *)_688].D.80081._vptr.basic_streambuf
// /usr/include/c++/13/sstream:851:       { }
	ldr	x1, [sp, 248]	// tmp2542, %sfp
	add	x2, x1, 24	// tmp2157, tmp2542,
	add	x1, x1, 64	// tmp2159, tmp2542,
	str	x1, [sp, 2496]	// tmp2159, MEM[(struct basic_ios *)_688].D.75676._vptr.ios_base
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 152]	// tmp2512, %sfp
// /usr/include/c++/13/sstream:851:       { }
	str	x2, [sp, 2384]	// tmp2157, MEM[(struct basic_ostringstream *)_688].D.80364._vptr.basic_ostream
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1954, tmp2512
	beq	.L1217		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 2480]	// MEM[(struct basic_string *)_688].D.50133._M_allocated_capacity, MEM[(struct basic_string *)_688].D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM[(struct basic_string *)_688].D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1217:
// /usr/include/c++/13/streambuf:205:       { }
	ldr	x0, [sp, 200]	// tmp2481, %sfp
	add	x1, x0, 16	// tmp2167, tmp2481,
	str	x1, [sp, 2392]	// tmp2167, MEM[(struct basic_streambuf *)_688]._vptr.basic_streambuf
	ldr	x0, [sp, 72]	//, %sfp
	bl	_ZNSt6localeD1Ev		//
// /usr/include/c++/13/ostream:95:       ~basic_ostream() { }
	ldp	x0, x3, [sp, 184]	// _1771, _1775, %sfp
	ldr	x2, [x0, -24]	// MEM[(long int *)_1771 + -24B], MEM[(long int *)_1771 + -24B]
	str	x0, [sp, 2384]	// _1771, MEM[(struct basic_ostream *)_688]._vptr.basic_ostream
// /usr/include/c++/13/bits/basic_ios.h:282:       ~basic_ios() { }
	ldr	x0, [sp, 208]	// tmp2522, %sfp
// /usr/include/c++/13/ostream:95:       ~basic_ostream() { }
	str	x3, [x21, x2]	// _1775, MEM[(struct basic_ios *)_1951].D.75676._vptr.ios_base
// /usr/include/c++/13/bits/basic_ios.h:282:       ~basic_ios() { }
	add	x1, x0, 16	// tmp2173, tmp2522,
	str	x1, [sp, 2496]	// tmp2173, MEM[(struct basic_ios *)_688].D.75676._vptr.ios_base
	ldr	x0, [sp, 120]	//, %sfp
	bl	_ZNSt8ios_baseD2Ev		//
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 240]	// tmp2489, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 2040]	// _1939, MEM[(struct basic_string *)_3259]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1939, tmp2489
	beq	.L1218		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 2056]	// MEM[(struct basic_string *)_3259].D.50133._M_allocated_capacity, MEM[(struct basic_string *)_3259].D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM[(struct basic_string *)_3259].D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1218:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 80]	// tmp2487, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 2008]	// _1933, MEM[(struct basic_string *)_3257]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1933, tmp2487
	beq	.L1219		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 2024]	// MEM[(struct basic_string *)_3257].D.50133._M_allocated_capacity, MEM[(struct basic_string *)_3257].D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM[(struct basic_string *)_3257].D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1219:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 232]	// tmp2485, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1976]	// _1927, MEM[(struct basic_string *)_279]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1927, tmp2485
	beq	.L1220		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1992]	// MEM[(struct basic_string *)_279].D.50133._M_allocated_capacity, MEM[(struct basic_string *)_279].D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM[(struct basic_string *)_279].D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1220:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 224]	// tmp2483, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1944]	// _1921, MEM[(struct basic_string *)_293]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1921, tmp2483
	beq	.L1221		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1960]	// MEM[(struct basic_string *)_293].D.50133._M_allocated_capacity, MEM[(struct basic_string *)_293].D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM[(struct basic_string *)_293].D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1221:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 136]	// tmp2480, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1912]	// _1915, MEM[(struct basic_string *)_342]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1915, tmp2480
	beq	.L1222		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1928]	// MEM[(struct basic_string *)_342].D.50133._M_allocated_capacity, MEM[(struct basic_string *)_342].D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM[(struct basic_string *)_342].D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1222:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 128]	// tmp2478, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1880]	// _1909, MEM[(struct basic_string *)_294]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1909, tmp2478
	beq	.L1223		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1896]	// MEM[(struct basic_string *)_294].D.50133._M_allocated_capacity, MEM[(struct basic_string *)_294].D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM[(struct basic_string *)_294].D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1223:
// /usr/include/c++/13/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	mov	x19, x22	// __first, _664
	cmp	x20, x22	// _663, _664
	beq	.L1229		//,
	.p2align 3,,7
.L1224:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x1, x19	// tmp2201, __first
	ldr	x0, [x1], 16	// _1969, MEM[(char * *)__first_1150]
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1969, tmp2201
	beq	.L1227		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x19, 16]	// MEM <size_type> [(union ._anon_87 *)__first_1150 + 16B], MEM <size_type> [(union ._anon_87 *)__first_1150 + 16B]
// /usr/include/c++/13/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	add	x19, x19, 32	// __first, __first,
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM <size_type> [(union ._anon_87 *)__first_1150 + 16B],
	bl	_ZdlPvm		//
// /usr/include/c++/13/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	cmp	x19, x20	// __first, _663
	bne	.L1224		//,
.L1229:
// /usr/include/c++/13/bits/stl_vector.h:389: 	if (__p)
	cbz	x22, .L1226	// _664,
// /usr/include/c++/13/bits/stl_vector.h:370: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	ldr	x1, [sp, 592]	// MEM[(struct _Vector_base *)&info]._M_impl.D.102792._M_end_of_storage, MEM[(struct _Vector_base *)&info]._M_impl.D.102792._M_end_of_storage
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x22	//, _664
	sub	x1, x1, x22	//, MEM[(struct _Vector_base *)&info]._M_impl.D.102792._M_end_of_storage, _664
	bl	_ZdlPvm		//
.L1226:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 472]	// tmp2502, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 632]	// _1895, arrow._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1895, tmp2502
	beq	.L1230		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 648]	// arrow.D.50133._M_allocated_capacity, arrow.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, arrow.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1230:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 600]	// _1889, bar._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 616	// tmp2211,,
	cmp	x0, x1	// _1889, tmp2211
	beq	.L716		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 616]	// bar.D.50133._M_allocated_capacity, bar.D.50133._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, bar.D.50133._M_allocated_capacity,
	bl	_ZdlPvm		//
.L716:
// main.cpp:259: }
	adrp	x0, :got:__stack_chk_guard	// tmp2473,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp2473,
	ldr	x2, [sp, 2984]	// tmp2837, D.121748
	ldr	x1, [x0]	// tmp2838,
	subs	x2, x2, x1	// tmp2837, tmp2838
	mov	x1, 0	// tmp2838
	bne	.L1580		//,
	add	sp, sp, 2992	//,,
	.cfi_remember_state
	.cfi_def_cfa_offset 112
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x21, x22, [sp, 32]	//,,
	ldp	x23, x24, [sp, 48]	//,,
	ldp	x25, x26, [sp, 64]	//,,
	ldp	x27, x28, [sp, 80]	//,,
	ldr	d8, [sp, 96]	//,
	ldp	x29, x30, [sp], 112	//,,,
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
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret	
	.p2align 2,,3
.L1619:
	.cfi_restore_state
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	ldrb	w1, [x24]	// _1389, MEM[(const char_type &)_1374]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	w1, [x19, 16]	// _1389, MEM[(char_type &)__cur_447 + 16]
// /usr/include/c++/13/bits/char_traits.h:359:       }
	b	.L1066		//
	.p2align 2,,3
.L1168:
// main.cpp:243:         for(size_t c=0;c<shown_cols;++c) out<<glyph(cells[index(r+r0,c+c0,o.cols)],o.ascii,o.color&&tty);
	add	x19, x19, 1	// c, c,
// main.cpp:243:         for(size_t c=0;c<shown_cols;++c) out<<glyph(cells[index(r+r0,c+c0,o.cols)],o.ascii,o.color&&tty);
	cmp	x22, x19	// _10, c
	bne	.L1171		//,
	b	.L1170		//
	.p2align 2,,3
.L1173:
// /usr/include/c++/13/ostream:574:       __out.put(__c);
	mov	x0, x21	//, tmp2505
	mov	w1, 10	//,
	bl	_ZNSo3putEc		//
// /usr/include/c++/13/ostream:575:       return __out;
	b	.L1174		//
	.p2align 2,,3
.L1623:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	ldr	x1, [sp, 96]	//, %sfp
	mov	x0, x21	//, tmp2505
	mov	x2, 2	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/bits/stl_vector.h:1129: 	return *(this->_M_impl._M_start + __n);
	lsl	x1, x28, 5	// tmp2010, r,
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	mov	x0, x21	//, tmp2505
// /usr/include/c++/13/bits/stl_vector.h:1129: 	return *(this->_M_impl._M_start + __n);
	add	x2, x19, x1	// _644, _635, tmp2010
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	ldr	x1, [x19, x1]	//, MEM[(const struct basic_string *)_644]._M_dataplus._M_p
	ldr	x2, [x2, 8]	//, MEM[(const struct basic_string *)_644]._M_string_length
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE138:
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	b	.L1172		//
	.p2align 2,,3
.L1208:
// /usr/include/c++/13/ostream:574:       __out.put(__c);
	mov	x0, x23	//, tmp2589
.LEHB139:
	bl	_ZNSo3putEc		//
.LEHE139:
// /usr/include/c++/13/ostream:575:       return __out;
	b	.L1207		//
.L736:
// main.cpp:217:         const string dirs[]={"N","NE","E","SE","S","SW","W","NW"};
	add	x26, sp, 2128	// tmp2493,,
	adrp	x1, .LC84	// tmp935,
	mov	x0, x26	//, tmp2493
	add	x1, x1, :lo12:.LC84	//, tmp935,
.LEHB140:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE140:
// main.cpp:217:         const string dirs[]={"N","NE","E","SE","S","SW","W","NW"};
	adrp	x1, .LC85	// tmp938,
	add	x0, sp, 2160	//,,
	add	x1, x1, :lo12:.LC85	//, tmp938,
.LEHB141:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE141:
// main.cpp:217:         const string dirs[]={"N","NE","E","SE","S","SW","W","NW"};
	adrp	x1, .LC86	// tmp942,
	add	x0, sp, 2192	//,,
	add	x1, x1, :lo12:.LC86	//, tmp942,
.LEHB142:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE142:
// main.cpp:217:         const string dirs[]={"N","NE","E","SE","S","SW","W","NW"};
	adrp	x1, .LC87	// tmp946,
	add	x0, sp, 2224	//,,
	add	x1, x1, :lo12:.LC87	//, tmp946,
.LEHB143:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE143:
// main.cpp:217:         const string dirs[]={"N","NE","E","SE","S","SW","W","NW"};
	adrp	x1, .LC88	// tmp950,
	add	x0, sp, 2256	//,,
	add	x1, x1, :lo12:.LC88	//, tmp950,
.LEHB144:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE144:
// main.cpp:217:         const string dirs[]={"N","NE","E","SE","S","SW","W","NW"};
	adrp	x1, .LC89	// tmp954,
	add	x0, sp, 2288	//,,
	add	x1, x1, :lo12:.LC89	//, tmp954,
.LEHB145:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE145:
// main.cpp:217:         const string dirs[]={"N","NE","E","SE","S","SW","W","NW"};
	adrp	x1, .LC90	// tmp958,
	add	x0, sp, 2320	//,,
	add	x1, x1, :lo12:.LC90	//, tmp958,
.LEHB146:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE146:
// main.cpp:217:         const string dirs[]={"N","NE","E","SE","S","SW","W","NW"};
	add	x25, sp, 2352	// ivtmp.1197,,
	adrp	x1, .LC91	// tmp962,
	mov	x0, x25	//, ivtmp.1197
	add	x1, x1, :lo12:.LC91	//, tmp962,
.LEHB147:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE147:
// main.cpp:218:         const string arrows[]={"↑","↗","→","↘","↓","↙","←","↖"};
	add	x21, sp, 2384	// tmp2505,,
	adrp	x1, .LC92	// tmp966,
	mov	x0, x21	//, tmp2505
	add	x1, x1, :lo12:.LC92	//, tmp966,
.LEHB148:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE148:
// main.cpp:218:         const string arrows[]={"↑","↗","→","↘","↓","↙","←","↖"};
	add	x0, sp, 2416	// tmp2507,,
	adrp	x1, .LC93	// tmp969,
	add	x1, x1, :lo12:.LC93	//, tmp969,
	str	x0, [sp, 96]	// tmp2507, %sfp
.LEHB149:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE149:
// main.cpp:218:         const string arrows[]={"↑","↗","→","↘","↓","↙","←","↖"};
	add	x0, sp, 2448	// tmp2509,,
	adrp	x1, .LC94	// tmp973,
	add	x1, x1, :lo12:.LC94	//, tmp973,
	str	x0, [sp, 72]	// tmp2509, %sfp
.LEHB150:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE150:
// main.cpp:218:         const string arrows[]={"↑","↗","→","↘","↓","↙","←","↖"};
	add	x0, sp, 2480	// tmp2512,,
	adrp	x1, .LC95	// tmp977,
	add	x1, x1, :lo12:.LC95	//, tmp977,
	str	x0, [sp, 152]	// tmp2512, %sfp
.LEHB151:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE151:
// main.cpp:218:         const string arrows[]={"↑","↗","→","↘","↓","↙","←","↖"};
	add	x0, sp, 2512	// tmp2515,,
	adrp	x1, .LC96	// tmp981,
	add	x1, x1, :lo12:.LC96	//, tmp981,
	str	x0, [sp, 120]	// tmp2515, %sfp
.LEHB152:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE152:
// main.cpp:218:         const string arrows[]={"↑","↗","→","↘","↓","↙","←","↖"};
	add	x0, sp, 2544	// tmp2518,,
	adrp	x1, .LC97	// tmp985,
	add	x1, x1, :lo12:.LC97	//, tmp985,
	str	x0, [sp, 128]	// tmp2518, %sfp
.LEHB153:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE153:
// main.cpp:218:         const string arrows[]={"↑","↗","→","↘","↓","↙","←","↖"};
	add	x0, sp, 2576	// tmp2520,,
	adrp	x1, .LC98	// tmp989,
	add	x1, x1, :lo12:.LC98	//, tmp989,
	str	x0, [sp, 136]	// tmp2520, %sfp
.LEHB154:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE154:
// main.cpp:218:         const string arrows[]={"↑","↗","→","↘","↓","↙","←","↖"};
	add	x24, sp, 2608	// ivtmp.1209,,
	adrp	x1, .LC99	// tmp993,
	mov	x0, x24	//, ivtmp.1209
	add	x1, x1, :lo12:.LC99	//, tmp993,
.LEHB155:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE155:
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	ldr	x0, [sp, 8]	// o, %sfp
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	ldr	x2, [sp, 2136]	// MEM <const struct string[8]> [(const struct basic_string *)_3255][0]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_3255][0]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	add	x19, x0, 48	// tmp2492, o,
	ldr	x0, [x19, 8]	// _3457, MEM[(const struct basic_string *)o_256(D) + 48B]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	cmp	x2, x0	// MEM <const struct string[8]> [(const struct basic_string *)_3255][0]._M_string_length, _3457
	beq	.L1625		//,
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	ldr	x2, [x19, 8]	// _3266, MEM[(const struct basic_string *)o_256(D) + 48B]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	ldr	x0, [sp, 2168]	// MEM <const struct string[8]> [(const struct basic_string *)_3255][1]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_3255][1]._M_string_length
	cmp	x0, x2	// MEM <const struct string[8]> [(const struct basic_string *)_3255][1]._M_string_length, _3266
	beq	.L1626		//,
.L774:
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	ldr	x2, [x19, 8]	// _3274, MEM[(const struct basic_string *)o_256(D) + 48B]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	ldr	x0, [sp, 2200]	// MEM <const struct string[8]> [(const struct basic_string *)_3255][2]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_3255][2]._M_string_length
	cmp	x0, x2	// MEM <const struct string[8]> [(const struct basic_string *)_3255][2]._M_string_length, _3274
	beq	.L1627		//,
.L778:
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	ldr	x2, [x19, 8]	// _3279, MEM[(const struct basic_string *)o_256(D) + 48B]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	ldr	x0, [sp, 2232]	// MEM <const struct string[8]> [(const struct basic_string *)_3255][3]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_3255][3]._M_string_length
	cmp	x0, x2	// MEM <const struct string[8]> [(const struct basic_string *)_3255][3]._M_string_length, _3279
	beq	.L1628		//,
.L783:
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	ldr	x2, [x19, 8]	// _3284, MEM[(const struct basic_string *)o_256(D) + 48B]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	ldr	x0, [sp, 2264]	// MEM <const struct string[8]> [(const struct basic_string *)_3255][4]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_3255][4]._M_string_length
	cmp	x0, x2	// MEM <const struct string[8]> [(const struct basic_string *)_3255][4]._M_string_length, _3284
	beq	.L1629		//,
.L788:
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	ldr	x2, [x19, 8]	// _3289, MEM[(const struct basic_string *)o_256(D) + 48B]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	ldr	x0, [sp, 2296]	// MEM <const struct string[8]> [(const struct basic_string *)_3255][5]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_3255][5]._M_string_length
	cmp	x0, x2	// MEM <const struct string[8]> [(const struct basic_string *)_3255][5]._M_string_length, _3289
	beq	.L1630		//,
.L793:
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	ldr	x2, [x19, 8]	// _3294, MEM[(const struct basic_string *)o_256(D) + 48B]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	ldr	x0, [sp, 2328]	// MEM <const struct string[8]> [(const struct basic_string *)_3255][6]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_3255][6]._M_string_length
	cmp	x0, x2	// MEM <const struct string[8]> [(const struct basic_string *)_3255][6]._M_string_length, _3294
	beq	.L1631		//,
.L798:
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	ldr	x2, [x19, 8]	// _1082, MEM[(const struct basic_string *)o_256(D) + 48B]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	ldr	x0, [sp, 2360]	// MEM <const struct string[8]> [(const struct basic_string *)_3255][7]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_3255][7]._M_string_length
	cmp	x2, x0	// _1082, MEM <const struct string[8]> [(const struct basic_string *)_3255][7]._M_string_length
	beq	.L1632		//,
.L809:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x1, x24	// tmp1068, ivtmp.1209
	ldr	x0, [x1], 16	// _1088, MEM[(char * *)_315]
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1088, tmp1068
	beq	.L806		//,
	.p2align 3,,7
.L1633:
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x24, 16]	// MEM <size_type> [(union ._anon_87 *)_315 + 16B], MEM <size_type> [(union ._anon_87 *)_315 + 16B]
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM <size_type> [(union ._anon_87 *)_315 + 16B],
	bl	_ZdlPvm		//
// main.cpp:220:     }
	sub	x0, x24, #32	// ivtmp.1209, ivtmp.1209,
	cmp	x24, x21	// ivtmp.1209, tmp2505
	beq	.L813		//,
.L808:
// main.cpp:213:     string bar="["; for(size_t k=0;k<10;++k) bar+=(k<filled?(o.ascii?"#":"█"):(o.ascii?"-":"░")); bar+="]";
	mov	x24, x0	// ivtmp.1209, ivtmp.1209
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x1, x24	// tmp1068, ivtmp.1209
	ldr	x0, [x1], 16	// _1088, MEM[(char * *)_315]
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1088, tmp1068
	bne	.L1633		//,
.L806:
// main.cpp:220:     }
	sub	x0, x24, #32	// ivtmp.1209, ivtmp.1209,
	cmp	x24, x21	// ivtmp.1209, tmp2505
	bne	.L808		//,
.L813:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x1, x25	// tmp1072, ivtmp.1197
	ldr	x0, [x1], 16	// _1095, MEM[(char * *)_316]
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1095, tmp1072
	beq	.L810		//,
	.p2align 3,,7
.L1634:
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x25, 16]	// MEM <size_type> [(union ._anon_87 *)_316 + 16B], MEM <size_type> [(union ._anon_87 *)_316 + 16B]
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM <size_type> [(union ._anon_87 *)_316 + 16B],
	bl	_ZdlPvm		//
// main.cpp:220:     }
	sub	x0, x25, #32	// ivtmp.1197, ivtmp.1197,
	cmp	x26, x25	// tmp2493, ivtmp.1197
	beq	.L737		//,
// main.cpp:213:     string bar="["; for(size_t k=0;k<10;++k) bar+=(k<filled?(o.ascii?"#":"█"):(o.ascii?"-":"░")); bar+="]";
	mov	x25, x0	// ivtmp.1197, ivtmp.1197
.L1635:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x1, x25	// tmp1072, ivtmp.1197
	ldr	x0, [x1], 16	// _1095, MEM[(char * *)_316]
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1095, tmp1072
	bne	.L1634		//,
.L810:
// main.cpp:220:     }
	sub	x0, x25, #32	// ivtmp.1197, ivtmp.1197,
	cmp	x26, x25	// tmp2493, ivtmp.1197
	beq	.L737		//,
// main.cpp:213:     string bar="["; for(size_t k=0;k<10;++k) bar+=(k<filled?(o.ascii?"#":"█"):(o.ascii?"-":"░")); bar+="]";
	mov	x25, x0	// ivtmp.1197, ivtmp.1197
	b	.L1635		//
.L719:
// main.cpp:207:     size_t shown_cols=min(o.cols,max(size_t(1),(width-(side?52:4))/2));
	sub	x2, x2, #52	// _8, prephitmp_3270,
// main.cpp:208:     size_t shown_rows=min(o.rows,max(size_t(1),height-(side?5:(o.keyboard?18:17))));
	mov	x0, 5	// iftmp.86_141,
// /usr/include/c++/13/bits/stl_algobase.h:264:       return __a;
	cmp	x2, 3	// _8,
	lsr	x22, x2, 1	// tmp2570, _8,
	csinc	x22, x22, xzr, hi	// _9, tmp2570,
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	x22, x1	// _9, _470
	csel	x22, x22, x1, ls	// _10, _9, _470,
	b	.L1261		//
.L862:
// main.cpp:223:         "Humedad media: "+(s.count[TREE]?to_string(s.mean):string("no aplica")),
	add	x0, sp, 952	// tmp2526,,
	adrp	x1, .LC105	// tmp1176,
	add	x1, x1, :lo12:.LC105	//, tmp1176,
	str	x0, [sp, 256]	// tmp2526, %sfp
.LEHB156:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE156:
	b	.L863		//
.L838:
	ldr	x3, [sp, 8]	// o, %sfp
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x2, sp, 840	// tmp1126,,
	add	x0, sp, 824	// tmp2517,,
	str	x0, [sp, 96]	// tmp2517, %sfp
	str	x2, [sp, 824]	// tmp1126, MEM[(struct _Alloc_hider *)&D.103465]._M_p
	ldp	x24, x19, [x3, 48]	// _1053, _1054, MEM[(char * *)o_256(D) + 48B]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	xzr, [sp, 832]	//, D.103465._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 840]	//, MEM[(char_type &)&D.103465 + 16]
// /usr/include/c++/13/bits/basic_string.h:3537:       __str.reserve(__lhs_len + __rhs_len);
	add	x1, x19, 1	//, _1054,
.LEHB157:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm		//
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 832]	// D.103465._M_string_length, D.103465._M_string_length
	mov	x0, 4611686018427387903	// tmp1130,
	cmp	x1, x0	// D.103465._M_string_length, tmp1130
	beq	.L1636		//,
// /usr/include/c++/13/bits/basic_string.h:1459: 	return _M_append(__s, __n);
	ldr	x0, [sp, 96]	//, %sfp
	adrp	x1, .LC103	// tmp1135,
	mov	x2, 1	//,
	add	x1, x1, :lo12:.LC103	//, tmp1135,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 832]	// D.103465._M_string_length, D.103465._M_string_length
	mov	x0, 4611686018427387903	// tmp1138,
	sub	x0, x0, x1	// tmp1137, tmp1138, D.103465._M_string_length
	cmp	x19, x0	// _1054, tmp1137
	bhi	.L1637		//,
// /usr/include/c++/13/bits/basic_string.h:1459: 	return _M_append(__s, __n);
	ldr	x0, [sp, 96]	//, %sfp
	mov	x2, x19	//, _1054
	mov	x1, x24	//, _1053
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE157:
	b	.L839		//
	.p2align 2,,3
.L1227:
// /usr/include/c++/13/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	add	x19, x19, 32	// __first, __first,
// /usr/include/c++/13/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	cmp	x19, x20	// __first, _663
	bne	.L1224		//,
	b	.L1229		//
.L1198:
// /usr/include/c++/13/streambuf:539:       pptr() const { return _M_out_cur; }
	ldr	x4, [sp, 2432]	// _1875, MEM[(const struct basic_streambuf *)_688]._M_out_cur
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x25, [sp, 2128]	// tmp2494, MEM[(struct _Alloc_hider *)_3255]._M_p
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	xzr, [sp, 2136]	//, MEM[(struct basic_string *)_3255]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 2144]	//, MEM[(char_type &)_3255]
// /usr/include/c++/13/sstream:442: 	if (char_type* __pptr = this->pptr())
	cbz	x4, .L1212	// _1875,
// /usr/include/c++/13/streambuf:495:       egptr() const { return _M_in_end; }
	ldr	x5, [sp, 2416]	// _1876, MEM[(const struct basic_streambuf *)_688]._M_in_end
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	mov	x0, x26	//, tmp2493
// /usr/include/c++/13/streambuf:536:       pbase() const { return _M_out_beg; }
	ldr	x3, [sp, 2424]	// _1880, MEM[(const struct basic_streambuf *)_688]._M_out_beg
// /usr/include/c++/13/sstream:445: 	    if (!__egptr || __pptr > __egptr)
	cmp	x5, 0	// _1876,
// /usr/include/c++/13/sstream:448: 	      return __egptr; // Underlying sequence is [pbase, egptr).
	ccmp	x4, x5, 2, ne	// _1875, _1876,,
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	mov	x2, 0	//,
// /usr/include/c++/13/sstream:448: 	      return __egptr; // Underlying sequence is [pbase, egptr).
	csel	x4, x4, x5, hi	// _1875, _1875, _1876,
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	mov	x1, 0	//,
	sub	x4, x4, x3	//, _1875, _1880
.LEHB158:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm		//
.LEHE158:
.L1214:
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	ldr	x1, [sp, 2128]	//, MEM[(struct basic_string *)_3255]._M_dataplus._M_p
	ldr	x2, [sp, 2136]	//, MEM[(struct basic_string *)_3255]._M_string_length
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
.LEHB159:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE159:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x0, x26	//, tmp2493
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	b	.L1203		//
.L1187:
// /usr/include/c++/13/bits/stl_iterator.h:1077:       : _M_current(__i) { }
	ldr	x20, [sp, 584]	// _663, MEM[(struct basic_string * const &)&info + 8]
// main.cpp:251:     if(!side) for(const auto& line:info) out<<line<<'\n';
	cmp	x20, x22	// _663, _664
	beq	.L1194		//,
	mov	x19, x22	// ivtmp.1088, _664
// /usr/include/c++/13/ostream:573: 	return __ostream_insert(__out, &__c, 1);
	add	x24, sp, 558	// tmp2595,,
	mov	w23, 10	// tmp2594,
	b	.L1193		//
	.p2align 2,,3
.L1638:
	mov	x1, x24	//, tmp2595
	mov	x2, 1	//,
.LEHB160:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.L1192:
// main.cpp:251:     if(!side) for(const auto& line:info) out<<line<<'\n';
	add	x19, x19, 32	// ivtmp.1088, ivtmp.1088,
	cmp	x20, x19	// _663, ivtmp.1088
	beq	.L1194		//,
.L1193:
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	ldp	x1, x2, [x19]	//,, MEM[(char * *)_2439]
	mov	x0, x21	//, tmp2505
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	ldr	x2, [x0]	// _668->_vptr.basic_ostream, _668->_vptr.basic_ostream
	strb	w23, [sp, 558]	// tmp2594, __c
// /usr/include/c++/13/bits/ios_base.h:756:     { return _M_width; }
	ldr	x2, [x2, -24]	// MEM[(long int *)_1827 + -24B], MEM[(long int *)_1827 + -24B]
	add	x1, x0, x2	// tmp2087, _668, MEM[(long int *)_1827 + -24B]
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	ldr	x1, [x1, 16]	// MEM[(const struct ios_base *)_1830]._M_width, MEM[(const struct ios_base *)_1830]._M_width
	cbnz	x1, .L1638	// MEM[(const struct ios_base *)_1830]._M_width,
// /usr/include/c++/13/ostream:574:       __out.put(__c);
	mov	w1, 10	//,
	bl	_ZNSo3putEc		//
// /usr/include/c++/13/ostream:575:       return __out;
	b	.L1192		//
.L1179:
// /usr/include/c++/13/ostream:574:       __out.put(__c);
	bl	_ZNSo3putEc		//
// /usr/include/c++/13/ostream:575:       return __out;
	b	.L1180		//
.L1161:
// /usr/include/c++/13/ostream:574:       __out.put(__c);
	mov	x0, x21	//, tmp2505
	bl	_ZNSo3putEc		//
// /usr/include/c++/13/ostream:575:       return __out;
	b	.L1162		//
.L1183:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC126	// tmp2064,
	mov	x0, x21	//, tmp2505
	add	x1, x1, :lo12:.LC126	//, tmp2064,
	mov	x2, 23	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	ldr	x23, [sp, 48]	// iftmp.88_142, %sfp
	mov	x0, x21	//, tmp2505
	mov	x1, x23	//, iftmp.88_142
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x20, .LC127	// tmp2524,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x19, x0	// _659, tmp2755
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x20, :lo12:.LC127	//, tmp2524,
	mov	x2, 2	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// main.cpp:249:         else out<<"Vista recortada: filas "<<r0<<".."<<r0+shown_rows-1<<", columnas "<<c0<<".."<<c0+shown_cols-1<<"\n";
	ldr	x0, [sp, 16]	// k, %sfp
	sub	x1, x0, #1	// tmp2069, k,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x0, x19	//, _659
	add	x1, x1, x23	//, tmp2069, iftmp.88_142
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC128	// tmp2072,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x19, x0	// _660, tmp2756
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC128	//, tmp2072,
	mov	x2, 11	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x1, x27	//, iftmp.89_143
	mov	x0, x19	//, _660
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x20, :lo12:.LC127	//, tmp2524,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x19, x0	// _661, tmp2757
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	mov	x2, 2	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// main.cpp:249:         else out<<"Vista recortada: filas "<<r0<<".."<<r0+shown_rows-1<<", columnas "<<c0<<".."<<c0+shown_cols-1<<"\n";
	sub	x1, x22, #1	// tmp2075, _10,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x0, x19	//, _661
	add	x1, x1, x27	//, tmp2075, iftmp.89_143
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC129	// tmp2078,
	mov	x2, 1	//,
	add	x1, x1, :lo12:.LC129	//, tmp2078,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE160:
	b	.L1186		//
.L1581:
// main.cpp:204:     winsize ws{}; if(tty) ioctl(STDOUT_FILENO,TIOCGWINSZ,&ws);
	add	x2, sp, 560	//,,
	mov	x1, 21523	//,
	mov	w0, 1	//,
	bl	ioctl		//
// main.cpp:205:     size_t width=ws.ws_col?ws.ws_col:100, height=ws.ws_row?ws.ws_row:40;
	ldrh	w1, [sp, 562]	// _3390, ws.ws_col
	ldr	w2, [sp, 32]	//, %sfp
// main.cpp:205:     size_t width=ws.ws_col?ws.ws_col:100, height=ws.ws_row?ws.ws_row:40;
	ldrh	w0, [sp, 560]	// pretmp_3413, ws.ws_row
// main.cpp:205:     size_t width=ws.ws_col?ws.ws_col:100, height=ws.ws_row?ws.ws_row:40;
	cmp	w1, 0	// _3390,
	csel	w1, w2, w1, eq	// prephitmp_3270, tmp2934, _3390,
	str	x1, [sp, 32]	// prephitmp_3270, %sfp
// main.cpp:205:     size_t width=ws.ws_col?ws.ws_col:100, height=ws.ws_row?ws.ws_row:40;
	cbz	w0, .L717	// pretmp_3413,
	uxtw	x19, w0	// _3417, pretmp_3413
	b	.L717		//
.L1622:
// main.cpp:233:         info.push_back(to_string(o.delay)+" ms "+(o.paused?"[PAUSA] ":"")+"+/- rapidez");
	ldr	x0, [sp, 8]	// o, %sfp
	ldr	w24, [x0, 104]	//, o_256(D)->delay
// /usr/include/c++/13/bits/charconv.h:67: 	  if (__value < (unsigned)__base) return __n;
	cmp	w24, 9	// __val,
	bls	.L1128		//,
// /usr/include/c++/13/bits/charconv.h:68: 	  if (__value < __b2) return __n + 1;
	cmp	w24, 99	// __val,
	bls	.L1129		//,
// /usr/include/c++/13/bits/charconv.h:69: 	  if (__value < __b3) return __n + 2;
	cmp	w24, 999	// __val,
	bls	.L1278		//,
// /usr/include/c++/13/bits/charconv.h:70: 	  if (__value < __b4) return __n + 3;
	mov	w0, 9999	// tmp1781,
	cmp	w24, w0	// __val, tmp1781
	bls	.L1639		//,
// /usr/include/c++/13/bits/charconv.h:67: 	  if (__value < (unsigned)__base) return __n;
	mov	w0, 34463	// tmp1812,
// /usr/include/c++/13/bits/charconv.h:71: 	  __value /= __b4;
	uxtw	x1, w24	// _1724, __val
// /usr/include/c++/13/bits/charconv.h:67: 	  if (__value < (unsigned)__base) return __n;
	movk	w0, 0x1, lsl 16	// tmp1812,,
	cmp	w24, w0	// __val, tmp1812
	bls	.L1640		//,
// /usr/include/c++/13/bits/charconv.h:68: 	  if (__value < __b2) return __n + 1;
	mov	w0, 16959	// tmp1782,
	movk	w0, 0xf, lsl 16	// tmp1782,,
	cmp	w24, w0	// __val, tmp1782
	bls	.L1641		//,
// /usr/include/c++/13/bits/charconv.h:69: 	  if (__value < __b3) return __n + 2;
	mov	w0, 38527	// tmp1809,
	movk	w0, 0x98, lsl 16	// tmp1809,,
	cmp	w24, w0	// __val, tmp1809
	bls	.L1642		//,
// /usr/include/c++/13/bits/charconv.h:70: 	  if (__value < __b4) return __n + 3;
	mov	w0, 57599	// tmp1810,
	movk	w0, 0x5f5, lsl 16	// tmp1810,,
	cmp	w24, w0	// __val, tmp1810
	bls	.L1280		//,
// /usr/include/c++/13/bits/charconv.h:67: 	  if (__value < (unsigned)__base) return __n;
	mov	x0, 51711	// tmp1811,
	movk	x0, 0x3b9a, lsl 16	// tmp1811,,
	cmp	x1, x0	// _1724, tmp1811
	bls	.L1281		//,
// /usr/include/c++/13/bits/charconv.h:72: 	  __n += 4;
	mov	w0, 9	// __n,
.L1139:
// /usr/include/c++/13/bits/charconv.h:68: 	  if (__value < __b2) return __n + 1;
	add	w0, w0, 1	// tmp1785, __n,
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	mov	w2, 0	//,
	and	x1, x0, 31	//, tmp1785,
.L1562:
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	ldr	x3, [sp, 80]	// tmp2487, %sfp
	str	x3, [sp, 2008]	// tmp2487, MEM[(struct _Alloc_hider *)_3257]._M_p
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	ldr	x0, [sp, 144]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc		//
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	adrp	x0, .LC23	// tmp1814,
	add	x0, x0, :lo12:.LC23	// tmp1813, tmp1814,
	add	x3, sp, 2776	// tmp2533,,
// /usr/include/c++/13/bits/charconv.h:96: 	  auto const __num = (__val % 100) * 2;
	mov	w10, 34079	// tmp1832,
// /usr/include/c++/13/bits/basic_string.h:4183:     __detail::__to_chars_10_impl(&__str[0], __str.size(), __val);
	ldr	x2, [sp, 2016]	// MEM[(struct basic_string *)_3257]._M_string_length, MEM[(struct basic_string *)_3257]._M_string_length
// /usr/include/c++/13/bits/charconv.h:96: 	  auto const __num = (__val % 100) * 2;
	movk	w10, 0x51eb, lsl 16	// tmp1832,,
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	ldp	q0, q5, [x0, 160]	// tmp1827, tmp1828,
// /usr/include/c++/13/bits/charconv.h:93:       unsigned __pos = __len - 1;
	sub	w2, w2, #1	// __pos, MEM[(struct basic_string *)_3257]._M_string_length,
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	ldp	q3, q4, [x0]	// tmp1817, tmp1818,
// /usr/include/c++/13/bits/charconv.h:96: 	  auto const __num = (__val % 100) * 2;
	mov	w9, 100	// tmp1835,
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	ldp	q1, q2, [x0, 32]	// tmp1819, tmp1820,
	stp	q0, q5, [x3, 160]	// tmp1827, tmp1828, __digits
// /usr/include/c++/13/bits/charconv.h:94:       while (__val >= 100)
	mov	w8, 9999	// tmp1851,
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	ldp	q0, q5, [x0, 64]	// tmp1821, tmp1822,
	stp	q3, q4, [x3]	// tmp1817, tmp1818, __digits
	ldp	q3, q4, [x0, 96]	// tmp1823, tmp1824,
	stp	q1, q2, [x3, 32]	// tmp1819, tmp1820, __digits
	ldp	q1, q2, [x0, 128]	// tmp1825, tmp1826,
	stp	q0, q5, [x3, 64]	// tmp1821, tmp1822, __digits
	ldr	q0, [x0, 185]	// tmp1829,
	stp	q3, q4, [x3, 96]	// tmp1823, tmp1824, __digits
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x5, [sp, 2008]	// _3301, MEM[(struct basic_string *)_3257]._M_dataplus._M_p
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	stp	q1, q2, [x3, 128]	// tmp1825, tmp1826, __digits
	str	q0, [x3, 185]	// tmp1829, __digits
	.p2align 3,,7
.L1141:
// /usr/include/c++/13/bits/charconv.h:96: 	  auto const __num = (__val % 100) * 2;
	umull	x1, w24, w10	// tmp1831, __val, tmp1832
// /usr/include/c++/13/bits/charconv.h:99: 	  __first[__pos - 1] = __digits[__num];
	sub	w4, w2, #1	// tmp1846, __pos,
	mov	w6, w24	// __val, __val
// /usr/include/c++/13/bits/charconv.h:96: 	  auto const __num = (__val % 100) * 2;
	lsr	x1, x1, 37	// tmp1830, tmp1831,
	msub	w0, w1, w9, w24	// tmp1836, tmp1830, tmp1835, __val
// /usr/include/c++/13/bits/charconv.h:97: 	  __val /= 100;
	mov	w24, w1	// __val, tmp1830
// /usr/include/c++/13/bits/charconv.h:96: 	  auto const __num = (__val % 100) * 2;
	lsl	w0, w0, 1	// __num, tmp1836,
// /usr/include/c++/13/bits/charconv.h:98: 	  __first[__pos] = __digits[__num + 1];
	add	w7, w0, 1	// tmp1842, __num,
// /usr/include/c++/13/bits/charconv.h:99: 	  __first[__pos - 1] = __digits[__num];
	ldrb	w1, [x3, w0, uxtw]	//, __digits[__num_1738]
// /usr/include/c++/13/bits/charconv.h:98: 	  __first[__pos] = __digits[__num + 1];
	ldrb	w0, [x3, w7, uxtw]	//, __digits[_1740]
	strb	w0, [x5, w2, uxtw]	// __digits[_1740], *_1743
// /usr/include/c++/13/bits/charconv.h:99: 	  __first[__pos - 1] = __digits[__num];
	sub	w2, w2, #2	// __pos, __pos,
	strb	w1, [x5, w4, uxtw]	// __digits[__num_1738], *_1747
// /usr/include/c++/13/bits/charconv.h:94:       while (__val >= 100)
	cmp	w6, w8	// __val, tmp1851
	bhi	.L1141		//,
// /usr/include/c++/13/bits/charconv.h:102:       if (__val >= 10)
	cmp	w6, 999	// __val,
	bhi	.L1135		//,
.L1142:
// /usr/include/c++/13/bits/charconv.h:109: 	__first[0] = '0' + __val;
	add	w0, w24, 48	// tmp1859, __val,
	and	w0, w0, 255	// cstore_295, tmp1859
.L1143:
// /usr/include/c++/13/bits/basic_string.h:3690:     { return std::move(__lhs.append(__rhs)); }
	ldr	x28, [sp, 144]	// tmp2486, %sfp
	strb	w0, [x5]	// cstore_295, *_3300
	adrp	x1, .LC120	// tmp1862,
	add	x1, x1, :lo12:.LC120	//, tmp1862,
	mov	x0, x28	//, tmp2486
.LEHB161:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc		//
.LEHE161:
// /usr/include/c++/13/bits/basic_string.h:3690:     { return std::move(__lhs.append(__rhs)); }
	ldr	x20, [sp, 88]	// tmp2488, %sfp
	mov	x1, x0	//, tmp2745
	mov	x0, x20	//, tmp2488
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		//
// main.cpp:233:         info.push_back(to_string(o.delay)+" ms "+(o.paused?"[PAUSA] ":"")+"+/- rapidez");
	ldr	x0, [sp, 8]	// o, %sfp
// main.cpp:233:         info.push_back(to_string(o.delay)+" ms "+(o.paused?"[PAUSA] ":"")+"+/- rapidez");
	adrp	x2, .LC26	// tmp864,
	add	x2, x2, :lo12:.LC26	// tmp2573, tmp864,
	adrp	x1, .LC73	// tmp863,
	add	x1, x1, :lo12:.LC73	// tmp2572, tmp863,
// main.cpp:233:         info.push_back(to_string(o.delay)+" ms "+(o.paused?"[PAUSA] ":"")+"+/- rapidez");
	ldrb	w0, [x0, 102]	// o_256(D)->paused, o_256(D)->paused
// main.cpp:233:         info.push_back(to_string(o.delay)+" ms "+(o.paused?"[PAUSA] ":"")+"+/- rapidez");
	tst	x0, 1	// o_256(D)->paused,
// /usr/include/c++/13/bits/basic_string.h:3690:     { return std::move(__lhs.append(__rhs)); }
	mov	x0, x20	//, tmp2488
	csel	x1, x2, x1, eq	//, tmp2573, tmp2572,
.LEHB162:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc		//
.LEHE162:
// /usr/include/c++/13/bits/basic_string.h:3690:     { return std::move(__lhs.append(__rhs)); }
	mov	x1, x0	//, tmp2746
	mov	x0, x26	//, tmp2493
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		//
// /usr/include/c++/13/bits/basic_string.h:3690:     { return std::move(__lhs.append(__rhs)); }
	adrp	x1, .LC121	// tmp1870,
	mov	x0, x26	//, tmp2493
	add	x1, x1, :lo12:.LC121	//, tmp1870,
.LEHB163:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc		//
.LEHE163:
// /usr/include/c++/13/bits/basic_string.h:3690:     { return std::move(__lhs.append(__rhs)); }
	mov	x1, x0	//, tmp2747
// /usr/include/c++/13/bits/vector.tcc:123: 	  _M_realloc_insert(end(), std::forward<_Args>(__args)...);
	add	x24, sp, 576	// tmp2497,,
// /usr/include/c++/13/bits/basic_string.h:3690:     { return std::move(__lhs.append(__rhs)); }
	mov	x0, x21	//, tmp2505
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		//
// /usr/include/c++/13/bits/vector.tcc:123: 	  _M_realloc_insert(end(), std::forward<_Args>(__args)...);
	mov	x1, x19	//, __cur
	mov	x0, x24	//, tmp2497
	mov	x2, x21	//, tmp2505
.LEHB164:
	bl	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_		//
.LEHE164:
// /usr/include/c++/13/bits/stl_iterator.h:1077:       : _M_current(__i) { }
	ldr	x19, [sp, 584]	// pretmp_3510, MEM[(struct basic_string * const &)&info + 8]
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x0, x21	//, tmp2505
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	mov	x0, x26	//, tmp2493
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	mov	x0, x20	//, tmp2488
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	mov	x0, x28	//, tmp2486
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
// main.cpp:234:         info.push_back("espacio pausa  n paso  q salir");
	adrp	x1, .LC122	// tmp1880,
	mov	x0, x21	//, tmp2505
	add	x1, x1, :lo12:.LC122	//, tmp1880,
.LEHB165:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE165:
// /usr/include/c++/13/bits/vector.tcc:114: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	ldr	x0, [sp, 592]	// info.D.103453._M_impl.D.102792._M_end_of_storage, info.D.103453._M_impl.D.102792._M_end_of_storage
	cmp	x0, x19	// info.D.103453._M_impl.D.102792._M_end_of_storage, pretmp_3510
	beq	.L1145		//,
// /usr/include/c++/13/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	mov	x0, x19	//, pretmp_3510
	mov	x1, x21	//, tmp2505
// /usr/include/c++/13/bits/vector.tcc:119: 	    ++this->_M_impl._M_finish;
	add	x19, x19, 32	// tmp1884, pretmp_3510,
// /usr/include/c++/13/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		//
// /usr/include/c++/13/bits/vector.tcc:119: 	    ++this->_M_impl._M_finish;
	str	x19, [sp, 584]	// tmp1884, info.D.103453._M_impl.D.102792._M_finish
.L1146:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x0, x21	//, tmp2505
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	b	.L1127		//
.L1184:
.LEHB166:
// /usr/include/c++/13/ostream:574:       __out.put(__c);
	bl	_ZNSo3putEc		//
.LEHE166:
	b	.L1186		//
.L1129:
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	ldr	x3, [sp, 80]	// tmp2487, %sfp
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	mov	w2, 0	//,
	ldr	x0, [sp, 144]	//, %sfp
	mov	x1, 2	//,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x3, [sp, 2008]	// tmp2487, MEM[(struct _Alloc_hider *)_3257]._M_p
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc		//
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	adrp	x0, .LC23	// tmp1793,
	add	x0, x0, :lo12:.LC23	// tmp1792, tmp1793,
	add	x3, sp, 2776	// tmp2533,,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x5, [sp, 2008]	// _3301, MEM[(struct basic_string *)_3257]._M_dataplus._M_p
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	ldp	q0, q5, [x0, 160]	// tmp1806, tmp1807,
	ldp	q3, q4, [x0]	// tmp1796, tmp1797,
	ldp	q1, q2, [x0, 32]	// tmp1798, tmp1799,
	stp	q0, q5, [x3, 160]	// tmp1806, tmp1807, __digits
	ldp	q0, q5, [x0, 64]	// tmp1800, tmp1801,
	stp	q3, q4, [x3]	// tmp1796, tmp1797, __digits
	ldp	q3, q4, [x0, 96]	// tmp1802, tmp1803,
	stp	q1, q2, [x3, 32]	// tmp1798, tmp1799, __digits
	ldp	q1, q2, [x0, 128]	// tmp1804, tmp1805,
	stp	q0, q5, [x3, 64]	// tmp1800, tmp1801, __digits
	ldr	q0, [x0, 185]	// tmp1808,
	stp	q3, q4, [x3, 96]	// tmp1802, tmp1803, __digits
	stp	q1, q2, [x3, 128]	// tmp1804, tmp1805, __digits
	str	q0, [x3, 185]	// tmp1808, __digits
.L1135:
// /usr/include/c++/13/bits/charconv.h:104: 	  auto const __num = __val * 2;
	lsl	w24, w24, 1	// __num, __val,
// /usr/include/c++/13/bits/charconv.h:105: 	  __first[1] = __digits[__num + 1];
	add	w1, w24, 1	// tmp1852, __num,
// /usr/include/c++/13/bits/charconv.h:106: 	  __first[0] = __digits[__num];
	ldrb	w0, [x3, w24, uxtw]	// cstore_295, __digits[__num_1751]
// /usr/include/c++/13/bits/charconv.h:105: 	  __first[1] = __digits[__num + 1];
	ldrb	w1, [x3, w1, uxtw]	//, __digits[_1752]
	strb	w1, [x5, 1]	// __digits[_1752], MEM[(char *)_3302 + 1B]
	b	.L1143		//
.L1616:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x2, x2, 1	//, pretmp_3529,
	mov	x0, x3	//, tmp1529
	mov	x1, x24	//, _1333
	bl	memcpy		//
	b	.L1052		//
.L1614:
	mov	x0, x1	//, tmp2487
	add	x2, x2, 1	//, pretmp_3530,
	mov	x1, x25	//, _1318
	bl	memcpy		//
	b	.L1038		//
.L1612:
	mov	x0, x1	//, tmp2480
	add	x2, x2, 1	//, pretmp_3531,
	mov	x1, x26	//, _1307
	bl	memcpy		//
	b	.L1024		//
.L1610:
	mov	x0, x1	//, tmp2478
	add	x2, x2, 1	//, pretmp_3532,
	mov	x1, x26	//, _1300
	bl	memcpy		//
	b	.L1016		//
.L1609:
	add	x2, x2, 1	//, pretmp_3533,
	mov	x0, x3	//, tmp1448
	mov	x1, x26	//, _1283
	bl	memcpy		//
	b	.L1009		//
.L1607:
	mov	x0, x1	//, tmp2567
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_1269]._M_string_length,
	mov	x1, x26	//, _1272
	bl	memcpy		//
	ldr	x2, [x25, 8]	// MEM[(const struct basic_string *)_1269]._M_string_length, MEM[(const struct basic_string *)_1269]._M_string_length
	b	.L995		//
.L1604:
	mov	x0, x1	//, tmp2555
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_1247]._M_string_length,
	mov	x1, x26	//, _1257
	bl	memcpy		//
	ldr	x2, [x25, 8]	// MEM[(const struct basic_string *)_1247]._M_string_length, MEM[(const struct basic_string *)_1247]._M_string_length
	b	.L969		//
.L1602:
	mov	x0, x1	//, tmp2553
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_1243]._M_string_length,
	mov	x1, x26	//, _1250
	bl	memcpy		//
	ldr	x2, [x25, 8]	// MEM[(const struct basic_string *)_1243]._M_string_length, MEM[(const struct basic_string *)_1243]._M_string_length
	b	.L961		//
.L1601:
	add	x2, x2, 1	//, pretmp_3537,
	mov	x0, x3	//, tmp1342
	mov	x1, x26	//, _1233
	bl	memcpy		//
	b	.L954		//
.L1598:
	add	x2, x2, 1	//, pretmp_3538,
	mov	x0, x3	//, tmp1299
	mov	x1, x26	//, _1212
	bl	memcpy		//
	b	.L929		//
.L1595:
	add	x2, x2, 1	//, pretmp_3539,
	mov	x0, x3	//, tmp1256
	mov	x1, x26	//, _1191
	bl	memcpy		//
	b	.L904		//
.L1593:
	mov	x0, x1	//, tmp2535
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_1170]._M_string_length,
	mov	x1, x25	//, _1180
	bl	memcpy		//
	ldr	x2, [x24, 8]	// MEM[(const struct basic_string *)_1170]._M_string_length, MEM[(const struct basic_string *)_1170]._M_string_length
	b	.L890		//
.L1591:
	mov	x0, x1	//, tmp2532
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_1166]._M_string_length,
	mov	x1, x24	//, _1173
	bl	memcpy		//
	ldr	x2, [x19, 8]	// MEM[(const struct basic_string *)_1166]._M_string_length, MEM[(const struct basic_string *)_1166]._M_string_length
	b	.L882		//
.L1590:
	mov	x0, x1	//, tmp2513
	add	x2, x2, 1	//, pretmp_3542,
	mov	x1, x24	//, _1156
	bl	memcpy		//
	b	.L875		//
.L1625:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 8]	// o, %sfp
	ldr	x1, [sp, 2128]	// _3423, MEM <const struct string[8]> [(const struct basic_string *)_3255][0]._M_dataplus._M_p
	ldr	x3, [x0, 48]	// _3275, MEM[(const struct basic_string *)o_256(D) + 48B]._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:376: 	if (__n == 0)
	cbz	x2, .L772	// MEM <const struct string[8]> [(const struct basic_string *)_3255][0]._M_string_length,
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	x0, x3	//, _3275
	str	x3, [sp, 144]	// _3275, %sfp
	str	x2, [sp, 168]	// MEM <const struct string[8]> [(const struct basic_string *)_3255][0]._M_string_length, %sfp
	bl	memcmp		//
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	cbz	w0, .L772	// tmp2630,
	ldr	x2, [sp, 168]	// MEM <const struct string[8]> [(const struct basic_string *)_3255][0]._M_string_length, %sfp
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	ldr	x0, [sp, 2168]	// MEM <const struct string[8]> [(const struct basic_string *)_3255][1]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_3255][1]._M_string_length
	ldr	x3, [sp, 144]	// _3275, %sfp
	cmp	x2, x0	// _3266, MEM <const struct string[8]> [(const struct basic_string *)_3255][1]._M_string_length
	bne	.L774		//,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [sp, 2160]	// _3271, MEM <const struct string[8]> [(const struct basic_string *)_3255][1]._M_dataplus._M_p
	b	.L775		//
.L772:
// /usr/include/c++/13/bits/basic_string.h:1608: 	this->_M_assign(__str);
	ldr	x0, [sp, 160]	//, %sfp
	mov	x1, x21	//, tmp2505
.LEHB167:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_		//
.LEHE167:
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	ldr	x2, [x19, 8]	// _3266, MEM[(const struct basic_string *)o_256(D) + 48B]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	ldr	x0, [sp, 2168]	// MEM <const struct string[8]> [(const struct basic_string *)_3255][1]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_3255][1]._M_string_length
	cmp	x0, x2	// MEM <const struct string[8]> [(const struct basic_string *)_3255][1]._M_string_length, _3266
	bne	.L774		//,
.L1626:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 8]	// o, %sfp
	ldr	x1, [sp, 2160]	// _3271, MEM <const struct string[8]> [(const struct basic_string *)_3255][1]._M_dataplus._M_p
	ldr	x3, [x0, 48]	// _3275, MEM[(const struct basic_string *)o_256(D) + 48B]._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:376: 	if (__n == 0)
	cbz	x2, .L776	// _3266,
.L775:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	x0, x3	//, _3275
	str	x3, [sp, 144]	// _3275, %sfp
	bl	memcmp		//
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	cbz	w0, .L776	// tmp2631,
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	ldr	x2, [x19, 8]	// _3274, MEM[(const struct basic_string *)o_256(D) + 48B]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	ldr	x0, [sp, 2200]	// MEM <const struct string[8]> [(const struct basic_string *)_3255][2]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_3255][2]._M_string_length
	ldr	x3, [sp, 144]	// _3275, %sfp
	cmp	x2, x0	// _3274, MEM <const struct string[8]> [(const struct basic_string *)_3255][2]._M_string_length
	bne	.L778		//,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [sp, 2192]	// _3276, MEM <const struct string[8]> [(const struct basic_string *)_3255][2]._M_dataplus._M_p
	b	.L779		//
.L1629:
	ldr	x0, [sp, 8]	// o, %sfp
	ldr	x1, [sp, 2256]	// _3286, MEM <const struct string[8]> [(const struct basic_string *)_3255][4]._M_dataplus._M_p
	ldr	x3, [x0, 48]	// _3275, MEM[(const struct basic_string *)o_256(D) + 48B]._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:376: 	if (__n == 0)
	cbz	x2, .L791	// _3284,
.L789:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	x0, x3	//, _3275
	str	x3, [sp, 72]	// _3275, %sfp
	bl	memcmp		//
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	cbz	w0, .L791	// tmp2637,
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	ldr	x2, [x19, 8]	// _3289, MEM[(const struct basic_string *)o_256(D) + 48B]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	ldr	x0, [sp, 2296]	// MEM <const struct string[8]> [(const struct basic_string *)_3255][5]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_3255][5]._M_string_length
	ldr	x3, [sp, 72]	// _3275, %sfp
	cmp	x2, x0	// _3289, MEM <const struct string[8]> [(const struct basic_string *)_3255][5]._M_string_length
	bne	.L793		//,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [sp, 2288]	// _3291, MEM <const struct string[8]> [(const struct basic_string *)_3255][5]._M_dataplus._M_p
	b	.L794		//
.L791:
// /usr/include/c++/13/bits/basic_string.h:1608: 	this->_M_assign(__str);
	ldr	x1, [sp, 120]	//, %sfp
	ldr	x0, [sp, 160]	//, %sfp
.LEHB168:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_		//
.LEHE168:
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	ldr	x2, [x19, 8]	// _3289, MEM[(const struct basic_string *)o_256(D) + 48B]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	ldr	x0, [sp, 2296]	// MEM <const struct string[8]> [(const struct basic_string *)_3255][5]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_3255][5]._M_string_length
	cmp	x0, x2	// MEM <const struct string[8]> [(const struct basic_string *)_3255][5]._M_string_length, _3289
	bne	.L793		//,
.L1630:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 8]	// o, %sfp
	ldr	x1, [sp, 2288]	// _3291, MEM <const struct string[8]> [(const struct basic_string *)_3255][5]._M_dataplus._M_p
	ldr	x3, [x0, 48]	// _3275, MEM[(const struct basic_string *)o_256(D) + 48B]._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:376: 	if (__n == 0)
	cbz	x2, .L796	// _3289,
.L794:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	x0, x3	//, _3275
	str	x3, [sp, 72]	// _3275, %sfp
	bl	memcmp		//
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	cbz	w0, .L796	// tmp2639,
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	ldr	x2, [x19, 8]	// _3294, MEM[(const struct basic_string *)o_256(D) + 48B]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	ldr	x0, [sp, 2328]	// MEM <const struct string[8]> [(const struct basic_string *)_3255][6]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_3255][6]._M_string_length
	ldr	x3, [sp, 72]	// _3275, %sfp
	cmp	x2, x0	// _3294, MEM <const struct string[8]> [(const struct basic_string *)_3255][6]._M_string_length
	bne	.L798		//,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [sp, 2320]	// _3296, MEM <const struct string[8]> [(const struct basic_string *)_3255][6]._M_dataplus._M_p
	b	.L799		//
.L1628:
	ldr	x0, [sp, 8]	// o, %sfp
	ldr	x1, [sp, 2224]	// _3281, MEM <const struct string[8]> [(const struct basic_string *)_3255][3]._M_dataplus._M_p
	ldr	x3, [x0, 48]	// _3275, MEM[(const struct basic_string *)o_256(D) + 48B]._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:376: 	if (__n == 0)
	cbz	x2, .L786	// _3279,
.L784:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	x0, x3	//, _3275
	str	x3, [sp, 72]	// _3275, %sfp
	bl	memcmp		//
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	cbz	w0, .L786	// tmp2635,
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	ldr	x2, [x19, 8]	// _3284, MEM[(const struct basic_string *)o_256(D) + 48B]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	ldr	x0, [sp, 2264]	// MEM <const struct string[8]> [(const struct basic_string *)_3255][4]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_3255][4]._M_string_length
	ldr	x3, [sp, 72]	// _3275, %sfp
	cmp	x2, x0	// _3284, MEM <const struct string[8]> [(const struct basic_string *)_3255][4]._M_string_length
	bne	.L788		//,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [sp, 2256]	// _3286, MEM <const struct string[8]> [(const struct basic_string *)_3255][4]._M_dataplus._M_p
	b	.L789		//
.L786:
// /usr/include/c++/13/bits/basic_string.h:1608: 	this->_M_assign(__str);
	ldp	x1, x0, [sp, 152]	//,, %sfp
.LEHB169:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_		//
.LEHE169:
	b	.L783		//
.L1627:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 8]	// o, %sfp
	ldr	x1, [sp, 2192]	// _3276, MEM <const struct string[8]> [(const struct basic_string *)_3255][2]._M_dataplus._M_p
	ldr	x3, [x0, 48]	// _3275, MEM[(const struct basic_string *)o_256(D) + 48B]._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:376: 	if (__n == 0)
	cbz	x2, .L781	// _3274,
.L779:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	x0, x3	//, _3275
	str	x3, [sp, 96]	// _3275, %sfp
	bl	memcmp		//
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	cbz	w0, .L781	// tmp2633,
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	ldr	x2, [x19, 8]	// _3279, MEM[(const struct basic_string *)o_256(D) + 48B]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	ldr	x0, [sp, 2232]	// MEM <const struct string[8]> [(const struct basic_string *)_3255][3]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_3255][3]._M_string_length
	ldr	x3, [sp, 96]	// _3275, %sfp
	cmp	x2, x0	// _3279, MEM <const struct string[8]> [(const struct basic_string *)_3255][3]._M_string_length
	bne	.L783		//,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [sp, 2224]	// _3281, MEM <const struct string[8]> [(const struct basic_string *)_3255][3]._M_dataplus._M_p
	b	.L784		//
.L781:
// /usr/include/c++/13/bits/basic_string.h:1608: 	this->_M_assign(__str);
	ldr	x1, [sp, 72]	//, %sfp
	ldr	x0, [sp, 160]	//, %sfp
.LEHB170:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_		//
.LEHE170:
	b	.L778		//
.L776:
	ldr	x1, [sp, 96]	//, %sfp
	ldr	x0, [sp, 160]	//, %sfp
.LEHB171:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_		//
.LEHE171:
	b	.L774		//
.L1632:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 8]	// o, %sfp
	ldr	x1, [sp, 2352]	// _1085, MEM <const struct string[8]> [(const struct basic_string *)_3255][7]._M_dataplus._M_p
	ldr	x0, [x0, 48]	// _1084, MEM[(const struct basic_string *)o_256(D) + 48B]._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:376: 	if (__n == 0)
	cbz	x2, .L804	// _1082,
.L1262:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	bl	memcmp		//
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	cbnz	w0, .L809	// tmp2642,
.L804:
// /usr/include/c++/13/bits/basic_string.h:1608: 	this->_M_assign(__str);
	ldr	x0, [sp, 160]	//, %sfp
	mov	x1, x24	//, ivtmp.1209
.LEHB172:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_		//
.LEHE172:
	b	.L809		//
.L1631:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 8]	// o, %sfp
	ldr	x1, [sp, 2320]	// _3296, MEM <const struct string[8]> [(const struct basic_string *)_3255][6]._M_dataplus._M_p
	ldr	x3, [x0, 48]	// _3275, MEM[(const struct basic_string *)o_256(D) + 48B]._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:376: 	if (__n == 0)
	cbz	x2, .L801	// _3294,
.L799:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	x0, x3	//, _3275
	str	x3, [sp, 72]	// _3275, %sfp
	bl	memcmp		//
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	cbz	w0, .L801	// tmp2641,
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	ldr	x2, [x19, 8]	// _1082, MEM[(const struct basic_string *)o_256(D) + 48B]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	ldr	x0, [sp, 2360]	// MEM <const struct string[8]> [(const struct basic_string *)_3255][7]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_3255][7]._M_string_length
	ldr	x3, [sp, 72]	// _3275, %sfp
	cmp	x0, x2	// MEM <const struct string[8]> [(const struct basic_string *)_3255][7]._M_string_length, _1082
	bne	.L809		//,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [sp, 2352]	// _1085, MEM <const struct string[8]> [(const struct basic_string *)_3255][7]._M_dataplus._M_p
	mov	x0, x3	// _1084, _3275
	b	.L1262		//
.L801:
// /usr/include/c++/13/bits/basic_string.h:1608: 	this->_M_assign(__str);
	ldr	x1, [sp, 136]	//, %sfp
	ldr	x0, [sp, 160]	//, %sfp
.LEHB173:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_		//
.LEHE173:
	b	.L798		//
.L796:
	ldr	x1, [sp, 128]	//, %sfp
	ldr	x0, [sp, 160]	//, %sfp
.LEHB174:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_		//
.LEHE174:
	b	.L793		//
.L1212:
	add	x1, sp, 2464	//,,
	mov	x0, x26	//, tmp2493
.LEHB175:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_		//
.LEHE175:
// /usr/include/c++/13/bits/basic_string.h:814: 	return this->assign(__str);
	b	.L1214		//
.L1199:
// /usr/include/c++/13/bits/basic_string.h:1608: 	this->_M_assign(__str);
	add	x1, sp, 2464	//,,
	mov	x0, x26	//, tmp2493
.LEHB176:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_		//
.LEHE176:
// /usr/include/c++/13/bits/basic_string.h:814: 	return this->assign(__str);
	b	.L1201		//
.L1275:
// main.cpp:178:     for(const auto& a:cells) {++s.count[a.state]; if(a.state==TREE) s.mean+=a.moisture;}
	mov	x20, x28	// prephitmp_3347, initial_trees
	str	xzr, [sp, 64]	//, %sfp
	stp	xzr, xzr, [sp, 80]	//,, %sfp
	stp	xzr, xzr, [sp, 104]	//,, %sfp
	b	.L726		//
.L1145:
// /usr/include/c++/13/bits/vector.tcc:123: 	  _M_realloc_insert(end(), std::forward<_Args>(__args)...);
	mov	x1, x19	//, pretmp_3510
	mov	x2, x21	//, tmp2505
	mov	x0, x24	//, tmp2497
.LEHB177:
	bl	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_		//
.LEHE177:
	b	.L1146		//
.L1280:
	mov	x1, 8	// prephitmp_2082,
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	mov	w2, 0	//,
	b	.L1562		//
.L1642:
	mov	x1, 7	// prephitmp_2082,
	mov	w2, 0	//,
	b	.L1562		//
.L1281:
// /usr/include/c++/13/bits/charconv.h:72: 	  __n += 4;
	mov	x1, 9	//,
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	mov	w2, 0	//,
	b	.L1562		//
.L720:
// main.cpp:207:     size_t shown_cols=min(o.cols,max(size_t(1),(width-(side?52:4))/2));
	lsr	x0, x0, 1	// tmp2433, _2086,
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	x0, x1	// tmp2433, _470
	csel	x22, x0, x1, ls	// _10, tmp2433, _470,
	b	.L721		//
.L1582:
// /usr/include/c++/13/bits/basic_string.h:400: 	  __throw_length_error(__N(__s));
	adrp	x0, :got:__stack_chk_guard	// tmp916,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp916,
	ldr	x2, [sp, 2984]	// tmp2787, D.121748
	ldr	x1, [x0]	// tmp2788,
	subs	x2, x2, x1	// tmp2787, tmp2788
	mov	x1, 0	// tmp2788
	bne	.L1580		//,
	adrp	x0, .LC21	// tmp918,
	add	x0, x0, :lo12:.LC21	//, tmp918,
.LEHB178:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE178:
.L1640:
	mov	x1, 5	//,
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	mov	w2, 0	//,
	b	.L1562		//
.L1278:
// /usr/include/c++/13/bits/charconv.h:69: 	  if (__value < __b3) return __n + 2;
	mov	x1, 3	// prephitmp_2082,
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	mov	w2, 0	//,
	b	.L1562		//
.L1128:
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	ldr	x3, [sp, 80]	// tmp2487, %sfp
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	mov	w2, 0	//,
	ldr	x0, [sp, 144]	//, %sfp
	mov	x1, 1	//,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x3, [sp, 2008]	// tmp2487, MEM[(struct _Alloc_hider *)_3257]._M_p
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc		//
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x5, [sp, 2008]	// _3301, MEM[(struct basic_string *)_3257]._M_dataplus._M_p
	b	.L1142		//
.L1639:
// /usr/include/c++/13/bits/charconv.h:70: 	  if (__value < __b4) return __n + 3;
	mov	x1, 4	// prephitmp_2082,
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	mov	w2, 0	//,
	b	.L1562		//
.L1611:
// /usr/include/c++/13/bits/basic_string.h:400: 	  __throw_length_error(__N(__s));
	adrp	x0, :got:__stack_chk_guard	// tmp1475,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1475,
	ldr	x2, [sp, 2984]	// tmp2823, D.121748
	ldr	x1, [x0]	// tmp2824,
	subs	x2, x2, x1	// tmp2823, tmp2824
	mov	x1, 0	// tmp2824
	bne	.L1580		//,
	adrp	x0, .LC21	// tmp1477,
	add	x0, x0, :lo12:.LC21	//, tmp1477,
.LEHB179:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE179:
.L1641:
	mov	w0, 5	// __n,
	b	.L1139		//
.L1605:
	adrp	x0, :got:__stack_chk_guard	// tmp1399,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1399,
	ldr	x2, [sp, 2984]	// tmp2817, D.121748
	ldr	x1, [x0]	// tmp2818,
	subs	x2, x2, x1	// tmp2817, tmp2818
	mov	x1, 0	// tmp2818
	bne	.L1580		//,
	adrp	x0, .LC21	// tmp1401,
	add	x0, x0, :lo12:.LC21	//, tmp1401,
.LEHB180:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE180:
.L1608:
	adrp	x0, :got:__stack_chk_guard	// tmp1441,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1441,
	ldr	x2, [sp, 2984]	// tmp2821, D.121748
	ldr	x1, [x0]	// tmp2822,
	subs	x2, x2, x1	// tmp2821, tmp2822
	mov	x1, 0	// tmp2822
	bne	.L1580		//,
	adrp	x0, .LC21	// tmp1443,
	add	x0, x0, :lo12:.LC21	//, tmp1443,
.LEHB181:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE181:
.L1585:
	adrp	x0, :got:__stack_chk_guard	// tmp922,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp922,
	ldr	x2, [sp, 2984]	// tmp2789, D.121748
	ldr	x1, [x0]	// tmp2790,
	subs	x2, x2, x1	// tmp2789, tmp2790
	mov	x1, 0	// tmp2790
	bne	.L1580		//,
	adrp	x0, .LC21	// tmp924,
	add	x0, x0, :lo12:.LC21	//, tmp924,
.LEHB182:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE182:
.L1613:
	adrp	x0, :got:__stack_chk_guard	// tmp1499,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1499,
	ldr	x2, [sp, 2984]	// tmp2825, D.121748
	ldr	x1, [x0]	// tmp2826,
	subs	x2, x2, x1	// tmp2825, tmp2826
	mov	x1, 0	// tmp2826
	bne	.L1580		//,
	adrp	x0, .LC21	// tmp1501,
	add	x0, x0, :lo12:.LC21	//, tmp1501,
.LEHB183:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE183:
.L1615:
	adrp	x0, :got:__stack_chk_guard	// tmp1522,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1522,
	ldr	x2, [sp, 2984]	// tmp2827, D.121748
	ldr	x1, [x0]	// tmp2828,
	subs	x2, x2, x1	// tmp2827, tmp2828
	mov	x1, 0	// tmp2828
	bne	.L1580		//,
	adrp	x0, .LC21	// tmp1524,
	add	x0, x0, :lo12:.LC21	//, tmp1524,
.LEHB184:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE184:
.L1587:
	adrp	x0, :got:__stack_chk_guard	// tmp1102,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1102,
	ldr	x2, [sp, 2984]	// tmp2793, D.121748
	ldr	x1, [x0]	// tmp2794,
	subs	x2, x2, x1	// tmp2793, tmp2794
	mov	x1, 0	// tmp2794
	bne	.L1580		//,
	adrp	x0, .LC21	// tmp1104,
	add	x0, x0, :lo12:.LC21	//, tmp1104,
.LEHB185:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE185:
.L1586:
	adrp	x0, :got:__stack_chk_guard	// tmp1083,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1083,
	ldr	x2, [sp, 2984]	// tmp2791, D.121748
	ldr	x1, [x0]	// tmp2792,
	subs	x2, x2, x1	// tmp2791, tmp2792
	mov	x1, 0	// tmp2792
	bne	.L1580		//,
	adrp	x0, .LC21	// tmp1085,
	add	x0, x0, :lo12:.LC21	//, tmp1085,
.LEHB186:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE186:
.L1596:
	adrp	x0, :got:__stack_chk_guard	// tmp1274,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1274,
	ldr	x2, [sp, 2984]	// tmp2807, D.121748
	ldr	x1, [x0]	// tmp2808,
	subs	x2, x2, x1	// tmp2807, tmp2808
	mov	x1, 0	// tmp2808
	bne	.L1580		//,
	adrp	x0, .LC21	// tmp1276,
	add	x0, x0, :lo12:.LC21	//, tmp1276,
.LEHB187:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE187:
.L1603:
	adrp	x0, :got:__stack_chk_guard	// tmp1370,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1370,
	ldr	x2, [sp, 2984]	// tmp2815, D.121748
	ldr	x1, [x0]	// tmp2816,
	subs	x2, x2, x1	// tmp2815, tmp2816
	mov	x1, 0	// tmp2816
	bne	.L1580		//,
	adrp	x0, .LC21	// tmp1372,
	add	x0, x0, :lo12:.LC21	//, tmp1372,
.LEHB188:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE188:
.L1346:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x19, x0	// tmp2765,
	mov	x0, x21	//, tmp2505
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L1246:
	mov	x0, x26	//, tmp2493
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L1247:
	ldr	x0, [sp, 88]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L1248:
	ldr	x0, [sp, 144]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L1249:
// main.cpp:259: }
	mov	x0, x24	//, tmp2497
	bl	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev		//
.L1235:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	ldr	x0, [sp, 160]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L1259:
	ldr	x0, [sp, 40]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	adrp	x0, :got:__stack_chk_guard	// tmp2429,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp2429,
	ldr	x2, [sp, 2984]	// tmp2835, D.121748
	ldr	x1, [x0]	// tmp2836,
	subs	x2, x2, x1	// tmp2835, tmp2836
	mov	x1, 0	// tmp2836
	beq	.L1260		//,
.L1580:
// main.cpp:259: }
	bl	__stack_chk_fail		//
.L1589:
// /usr/include/c++/13/bits/basic_string.h:400: 	  __throw_length_error(__N(__s));
	adrp	x0, :got:__stack_chk_guard	// tmp1155,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1155,
	ldr	x2, [sp, 2984]	// tmp2801, D.121748
	ldr	x1, [x0]	// tmp2802,
	subs	x2, x2, x1	// tmp2801, tmp2802
	mov	x1, 0	// tmp2802
	bne	.L1580		//,
	adrp	x0, .LC21	// tmp1157,
	add	x0, x0, :lo12:.LC21	//, tmp1157,
.LEHB189:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE189:
.L1594:
	adrp	x0, :got:__stack_chk_guard	// tmp1249,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1249,
	ldr	x2, [sp, 2984]	// tmp2805, D.121748
	ldr	x1, [x0]	// tmp2806,
	subs	x2, x2, x1	// tmp2805, tmp2806
	mov	x1, 0	// tmp2806
	bne	.L1580		//,
	adrp	x0, .LC21	// tmp1251,
	add	x0, x0, :lo12:.LC21	//, tmp1251,
.LEHB190:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE190:
.L1588:
	adrp	x0, :got:__stack_chk_guard	// tmp1111,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1111,
	ldr	x2, [sp, 2984]	// tmp2795, D.121748
	ldr	x1, [x0]	// tmp2796,
	subs	x2, x2, x1	// tmp2795, tmp2796
	mov	x1, 0	// tmp2796
	bne	.L1580		//,
	adrp	x0, .LC21	// tmp1113,
	add	x0, x0, :lo12:.LC21	//, tmp1113,
.LEHB191:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE191:
.L1636:
	adrp	x0, :got:__stack_chk_guard	// tmp1131,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1131,
	ldr	x2, [sp, 2984]	// tmp2797, D.121748
	ldr	x1, [x0]	// tmp2798,
	subs	x2, x2, x1	// tmp2797, tmp2798
	mov	x1, 0	// tmp2798
	bne	.L1580		//,
	adrp	x0, .LC21	// tmp1133,
	add	x0, x0, :lo12:.LC21	//, tmp1133,
.LEHB192:
	bl	_ZSt20__throw_length_errorPKc		//
.L1637:
	adrp	x0, :got:__stack_chk_guard	// tmp1140,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1140,
	ldr	x2, [sp, 2984]	// tmp2799, D.121748
	ldr	x1, [x0]	// tmp2800,
	subs	x2, x2, x1	// tmp2799, tmp2800
	mov	x1, 0	// tmp2800
	bne	.L1580		//,
	adrp	x0, .LC21	// tmp1142,
	add	x0, x0, :lo12:.LC21	//, tmp1142,
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE192:
.L1600:
	adrp	x0, :got:__stack_chk_guard	// tmp1335,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1335,
	ldr	x2, [sp, 2984]	// tmp2813, D.121748
	ldr	x1, [x0]	// tmp2814,
	subs	x2, x2, x1	// tmp2813, tmp2814
	mov	x1, 0	// tmp2814
	bne	.L1580		//,
	adrp	x0, .LC21	// tmp1337,
	add	x0, x0, :lo12:.LC21	//, tmp1337,
.LEHB193:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE193:
.L1618:
	adrp	x0, :got:__stack_chk_guard	// tmp1555,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1555,
	ldr	x2, [sp, 2984]	// tmp2831, D.121748
	ldr	x1, [x0]	// tmp2832,
	subs	x2, x2, x1	// tmp2831, tmp2832
	mov	x1, 0	// tmp2832
	bne	.L1580		//,
	adrp	x0, .LC21	// tmp1557,
	add	x0, x0, :lo12:.LC21	//, tmp1557,
.LEHB194:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE194:
.L1599:
	adrp	x0, :got:__stack_chk_guard	// tmp1317,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1317,
	ldr	x2, [sp, 2984]	// tmp2811, D.121748
	ldr	x1, [x0]	// tmp2812,
	subs	x2, x2, x1	// tmp2811, tmp2812
	mov	x1, 0	// tmp2812
	bne	.L1580		//,
	adrp	x0, .LC21	// tmp1319,
	add	x0, x0, :lo12:.LC21	//, tmp1319,
.LEHB195:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE195:
.L1597:
	adrp	x0, :got:__stack_chk_guard	// tmp1292,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1292,
	ldr	x2, [sp, 2984]	// tmp2809, D.121748
	ldr	x1, [x0]	// tmp2810,
	subs	x2, x2, x1	// tmp2809, tmp2810
	mov	x1, 0	// tmp2810
	bne	.L1580		//,
	adrp	x0, .LC21	// tmp1294,
	add	x0, x0, :lo12:.LC21	//, tmp1294,
.LEHB196:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE196:
.L1592:
	adrp	x0, :got:__stack_chk_guard	// tmp1221,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1221,
	ldr	x2, [sp, 2984]	// tmp2803, D.121748
	ldr	x1, [x0]	// tmp2804,
	subs	x2, x2, x1	// tmp2803, tmp2804
	mov	x1, 0	// tmp2804
	bne	.L1580		//,
	adrp	x0, .LC21	// tmp1223,
	add	x0, x0, :lo12:.LC21	//, tmp1223,
.LEHB197:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE197:
.L1617:
	adrp	x0, :got:__stack_chk_guard	// tmp1547,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1547,
	ldr	x2, [sp, 2984]	// tmp2829, D.121748
	ldr	x1, [x0]	// tmp2830,
	subs	x2, x2, x1	// tmp2829, tmp2830
	mov	x1, 0	// tmp2830
	bne	.L1580		//,
	adrp	x0, .LC21	// tmp1549,
	add	x0, x0, :lo12:.LC21	//, tmp1549,
.LEHB198:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE198:
.L1606:
	adrp	x0, :got:__stack_chk_guard	// tmp1413,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1413,
	ldr	x2, [sp, 2984]	// tmp2819, D.121748
	ldr	x1, [x0]	// tmp2820,
	subs	x2, x2, x1	// tmp2819, tmp2820
	mov	x1, 0	// tmp2820
	bne	.L1580		//,
	adrp	x0, .LC21	// tmp1415,
	add	x0, x0, :lo12:.LC21	//, tmp1415,
.LEHB199:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE199:
.L1338:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2253, tmp2729
	mov	x19, 3	// _136,
.L1030:
	ldr	x0, [sp, 104]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L1027:
	ldr	x0, [sp, 176]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L1020:
	ldr	x0, [sp, 168]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L1014:
	ldr	x0, [sp, 192]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L1005:
	ldr	x0, [sp, 184]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L1001:
	ldr	x0, [sp, 152]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L998:
	ldr	x0, [sp, 528]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L991:
	ldr	x0, [sp, 448]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L987:
	ldr	x0, [sp, 440]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L984:
	ldr	x0, [sp, 432]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L979:
	ldr	x0, [sp, 424]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L975:
	ldr	x0, [sp, 416]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L972:
	ldr	x0, [sp, 520]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L965:
	ldr	x0, [sp, 512]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L959:
	ldr	x0, [sp, 392]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L950:
	ldr	x0, [sp, 384]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L946:
	ldr	x0, [sp, 376]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L943:
	ldr	x0, [sp, 368]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L938:
	ldr	x0, [sp, 360]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L934:
	ldr	x0, [sp, 352]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L925:
	ldr	x0, [sp, 344]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L921:
	ldr	x0, [sp, 336]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L918:
	ldr	x0, [sp, 328]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L913:
	ldr	x0, [sp, 320]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L909:
	ldr	x0, [sp, 312]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L900:
	ldr	x0, [sp, 304]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L896:
	ldr	x0, [sp, 296]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L893:
	ldr	x0, [sp, 504]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L886:
	ldr	x0, [sp, 496]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L880:
	ldr	x0, [sp, 272]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L873:
	ldr	x0, [sp, 264]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L868:
	ldr	x0, [sp, 256]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L861:
	ldr	x0, [sp, 248]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L858:
	ldr	x0, [sp, 240]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L853:
	ldr	x0, [sp, 232]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L849:
	ldr	x0, [sp, 96]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L841:
	ldr	x0, [sp, 24]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L831:
	ldr	x0, [sp, 224]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L828:
	ldr	x0, [sp, 216]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L823:
	ldr	x0, [sp, 208]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L819:
	ldr	x0, [sp, 200]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L816:
// main.cpp:259: }
	mov	x0, 11	// tmp2378,
	sub	x19, x0, x19	// tmp2377, tmp2378, _136
	add	x19, x21, x19, lsl 5	// _137, tmp2505, tmp2377,
.L1244:
// main.cpp:259: }
	cmp	x19, x21	// _137, tmp2505
	bne	.L1643		//,
	mov	x19, x20	// tmp2219, tmp2374
	b	.L1235		//
.L1407:
// main.cpp:226:         "Ardiendo   "+to_string(s.count[FIRE])+" ("+percent(s.count[FIRE],cells.size())+")",
	mov	x20, x0	// tmp2328, tmp2679
	mov	x19, 6	// _136,
	b	.L900		//
.L1382:
// main.cpp:218:         const string arrows[]={"↑","↗","→","↘","↓","↙","←","↖"};
	mov	x19, x0	// tmp2229, tmp2627
	mov	x1, 1	// _78,
.L755:
	mov	x20, 7	// tmp2225,
	sub	x20, x20, x1	// tmp2224, tmp2225, _78
	add	x20, x21, x20, lsl 5	// _79, tmp2505, tmp2224,
.L1238:
// main.cpp:218:         const string arrows[]={"↑","↗","→","↘","↓","↙","←","↖"};
	cmp	x20, x21	// _79, tmp2505
	bne	.L1644		//,
// main.cpp:220:     }
	mov	x20, 7	// ivtmp.1183,
.L1242:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	add	x0, x26, x20, lsl 5	//, tmp2493, ivtmp.1183,
// main.cpp:220:     }
	sub	x20, x20, #1	// ivtmp.1183, ivtmp.1183,
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
// main.cpp:220:     }
	cmn	x20, #1	// ivtmp.1183,
	beq	.L1235		//,
// main.cpp:217:         const string dirs[]={"N","NE","E","SE","S","SW","W","NW"};
	b	.L1242		//
.L1329:
// main.cpp:228:         "Agua "+to_string(s.count[WATER])+" ("+percent(s.count[WATER],cells.size())+")  Vacío "+to_string(s.count[EMPTY])+" ("+percent(s.count[EMPTY],cells.size())+")",
	mov	x20, x0	// tmp2280, tmp2712
	mov	x19, 4	// _136,
	b	.L984		//
.L1381:
// main.cpp:218:         const string arrows[]={"↑","↗","→","↘","↓","↙","←","↖"};
	mov	x19, x0	// tmp2229, tmp2626
	mov	x1, 2	// _78,
	b	.L755		//
.L1328:
.L1569:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2283, tmp2711
	mov	x19, 4	// _136,
	b	.L979		//
.L1310:
	mov	x20, x0	// tmp2337, tmp2673
	mov	x19, 7	// _136,
	b	.L886		//
.L1397:
.L1568:
	mov	x20, x0	// tmp2274, tmp2716
	mov	x19, 4	// _136,
	b	.L991		//
.L1330:
	mov	x20, x0	// tmp2277, tmp2713
	mov	x19, 4	// _136,
	b	.L987		//
.L1643:
// main.cpp:259: }
	sub	x19, x19, #32	// _137, _137,
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x0, x19	//, _137
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	b	.L1244		//
.L1260:
	mov	x0, x19	//, tmp2426
.LEHB200:
	bl	_Unwind_Resume		//
.LEHE200:
.L1644:
// main.cpp:218:         const string arrows[]={"↑","↗","→","↘","↓","↙","←","↖"};
	sub	x20, x20, #32	// _79, _79,
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x0, x20	//, _79
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	b	.L1238		//
.L1388:
.L1563:
// main.cpp:218:         const string arrows[]={"↑","↗","→","↘","↓","↙","←","↖"};
	mov	x19, x0	// tmp2235, tmp2764
	mov	x20, 7	// ivtmp.1226,
.L1241:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	add	x0, x21, x20, lsl 5	//, tmp2505, ivtmp.1226,
// main.cpp:220:     }
	sub	x20, x20, #1	// ivtmp.1226, ivtmp.1226,
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
// main.cpp:220:     }
	cmn	x20, #1	// ivtmp.1226,
	bne	.L1241		//,
	mov	x20, 7	// ivtmp.1183,
	b	.L1242		//
.L1349:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x19, x0	// tmp2421, tmp2778
.L1258:
	ldr	x0, [sp, 168]	//, %sfp
	add	x24, sp, 576	// tmp2497,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	b	.L1249		//
.L1385:
	b	.L1563		//
.L1383:
	b	.L1563		//
.L1362:
// /usr/include/c++/13/bits/stl_uninitialized.h:123:       __catch(...)
	ldr	x24, [sp, 536]	// __first, %sfp
	bl	__cxa_begin_catch		//
.L1071:
// /usr/include/c++/13/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	cmp	x19, x24	// __cur, __first
	beq	.L1645		//,
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x0, x24	//, __first
// /usr/include/c++/13/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	add	x24, x24, 32	// __first, __first,
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	b	.L1071		//
.L1347:
// main.cpp:259: }
	mov	x19, x0	// tmp2393, tmp2779
	b	.L1249		//
.L1645:
// /usr/include/c++/13/bits/stl_uninitialized.h:126: 	  __throw_exception_again;
	adrp	x0, :got:__stack_chk_guard	// tmp1587,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1587,
	ldr	x2, [sp, 2984]	// tmp2833, D.121748
	ldr	x1, [x0]	// tmp2834,
	subs	x2, x2, x1	// tmp2833, tmp2834
	mov	x1, 0	// tmp2834
	bne	.L1580		//,
.LEHB201:
	bl	__cxa_rethrow		//
.LEHE201:
.L1392:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp1564, tmp2740
	mov	x19, 0	// _136,
.L1048:
	mov	x0, x26	//, tmp2493
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L1044:
	ldr	x0, [sp, 88]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L1041:
	ldr	x0, [sp, 144]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L1034:
	ldr	x0, [sp, 112]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	b	.L1030		//
.L1391:
	mov	x20, x0	// tmp1564, tmp2739
	mov	x19, 1	// _136,
	b	.L1048		//
.L1334:
.L1567:
// main.cpp:229:         "Inicial afectada: "+to_string(s.affected)+"/"+to_string(initial_trees)+" ("+percent(s.affected,initial_trees)+")",
	mov	x20, x0	// tmp2265, tmp2721
	mov	x19, 4	// _136,
	b	.L1005		//
.L1361:
// /usr/include/c++/13/bits/stl_uninitialized.h:123:       __catch(...)
	mov	x19, x0	// tmp1589, tmp2743
	bl	__cxa_end_catch		//
// /usr/include/c++/13/bits/stl_vector.h:369: 	_M_deallocate(_M_impl._M_start,
	ldr	x2, [sp, 576]	// _1351, MEM[(struct _Vector_base *)&info]._M_impl.D.102792._M_start
// /usr/include/c++/13/bits/stl_vector.h:370: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	ldr	x1, [sp, 592]	// MEM[(struct _Vector_base *)&info]._M_impl.D.102792._M_end_of_storage, MEM[(struct _Vector_base *)&info]._M_impl.D.102792._M_end_of_storage
	sub	x1, x1, x2	// _1353, MEM[(struct _Vector_base *)&info]._M_impl.D.102792._M_end_of_storage, _1351
.L1075:
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x2	//, _1351
	bl	_ZdlPvm		//
.L1077:
// /usr/include/c++/13/bits/stl_vector.h:371:       }
	mov	x20, 11	// ivtmp.1143,
.L1078:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	add	x0, x21, x20, lsl 5	//, tmp2505, ivtmp.1143,
// main.cpp:231:         "T vegetación  * fuego", "# quemado  ~ agua  . vacío"};
	sub	x20, x20, #1	// ivtmp.1143, ivtmp.1143,
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
// main.cpp:231:         "T vegetación  * fuego", "# quemado  ~ agua  . vacío"};
	cmn	x20, #1	// ivtmp.1143,
	bne	.L1078		//,
	mov	x20, x19	// tmp1564, tmp1588
// main.cpp:259: }
	mov	x19, 11	// _136,
	b	.L1048		//
.L1368:
	b	.L1563		//
.L1344:
	add	x24, sp, 576	// tmp2497,,
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x19, x0	// tmp2387, tmp2767
	b	.L1247		//
.L1343:
	add	x24, sp, 576	// tmp2497,,
	mov	x19, x0	// tmp2390, tmp2768
	b	.L1248		//
.L1345:
	add	x24, sp, 576	// tmp2497,,
	mov	x19, x0	// tmp2382, tmp2766
	b	.L1246		//
.L1384:
	b	.L1563		//
.L1389:
	b	.L1563		//
.L1402:
.L1571:
	mov	x20, x0	// tmp2307, tmp2695
	mov	x19, 5	// _136,
	b	.L938		//
.L1400:
.L1570:
// main.cpp:228:         "Agua "+to_string(s.count[WATER])+" ("+percent(s.count[WATER],cells.size())+")  Vacío "+to_string(s.count[EMPTY])+" ("+percent(s.count[EMPTY],cells.size())+")",
	mov	x20, x0	// tmp2298, tmp2700
	mov	x19, 5	// _136,
	b	.L950		//
.L1399:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2292, tmp2704
	mov	x19, 4	// _136,
	add	x0, sp, 1528	// tmp2552,,
	str	x0, [sp, 512]	// tmp2552, %sfp
	b	.L965		//
.L1408:
	mov	x20, x0	// tmp2337, tmp2671
	mov	x19, 7	// _136,
	add	x0, sp, 1048	// tmp2531,,
	str	x0, [sp, 496]	// tmp2531, %sfp
	b	.L886		//
.L1367:
// /usr/include/c++/13/bits/stl_vector.h:369: 	_M_deallocate(_M_impl._M_start,
	ldr	x2, [sp, 576]	// _1351, MEM[(struct _Vector_base *)&info]._M_impl.D.102792._M_start
	mov	x19, x0	// tmp1588, tmp2744
// /usr/include/c++/13/bits/stl_vector.h:370: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	ldr	x1, [sp, 592]	// MEM[(struct _Vector_base *)&info]._M_impl.D.102792._M_end_of_storage, MEM[(struct _Vector_base *)&info]._M_impl.D.102792._M_end_of_storage
	sub	x1, x1, x2	// _1353, MEM[(struct _Vector_base *)&info]._M_impl.D.102792._M_end_of_storage, _1351
// /usr/include/c++/13/bits/stl_vector.h:389: 	if (__p)
	cbnz	x2, .L1075	// _1351,
	b	.L1077		//
.L1386:
	b	.L1563		//
.L1348:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x19, x0	// tmp2769,
	mov	x0, x21	//, tmp2505
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	b	.L1249		//
.L1387:
	b	.L1563		//
.L1394:
	mov	x20, x0	// tmp2259, tmp2725
	mov	x19, 3	// _136,
	add	x0, sp, 1880	// tmp2477,,
	str	x0, [sp, 168]	// tmp2477, %sfp
	b	.L1020		//
.L1398:
	b	.L1569		//
.L1390:
.L1565:
	mov	x20, x0	// tmp1564, tmp2737
	mov	x19, 3	// _136,
	b	.L1048		//
.L1406:
.L1574:
// main.cpp:226:         "Ardiendo   "+to_string(s.count[FIRE])+" ("+percent(s.count[FIRE],cells.size())+")",
	mov	x20, x0	// tmp2328, tmp2678
	mov	x19, 7	// _136,
	b	.L900		//
.L1413:
.L1576:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2355, tmp2658
	mov	x19, 10	// _136,
	b	.L853		//
.L1414:
.L1577:
	mov	x20, x0	// tmp2368, tmp2649
	add	x21, sp, 2384	// tmp2505,,
	mov	x19, 11	// _136,
	b	.L823		//
.L1405:
.L1573:
	mov	x20, x0	// tmp2322, tmp2684
	mov	x19, 6	// _136,
	b	.L913		//
.L1403:
.L1572:
// main.cpp:227:         "Quemado    "+to_string(s.count[BURNT])+" ("+percent(s.count[BURNT],cells.size())+")",
	mov	x20, x0	// tmp2313, tmp2689
	mov	x19, 6	// _136,
	b	.L925		//
.L1393:
.L1566:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2250, tmp2732
	mov	x19, 3	// _136,
	b	.L1034		//
.L1395:
	b	.L1567		//
.L1326:
// main.cpp:228:         "Agua "+to_string(s.count[WATER])+" ("+percent(s.count[WATER],cells.size())+")  Vacío "+to_string(s.count[EMPTY])+" ("+percent(s.count[EMPTY],cells.size())+")",
	mov	x20, x0	// tmp2289, tmp2707
	mov	x19, 4	// _136,
	add	x0, sp, 1560	// tmp2554,,
	str	x0, [sp, 520]	// tmp2554, %sfp
	b	.L972		//
.L1294:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x19, x0	// tmp2219, tmp2780
	b	.L1235		//
.L1303:
	mov	x20, x0	// tmp2358, tmp2655
	mov	x19, 10	// _136,
	b	.L849		//
.L1304:
	b	.L1576		//
.L1305:
// main.cpp:222:         "Viento "+arrow+(o.ascii?"":" "+o.direction)+"  "+to_string(o.wind),
	mov	x20, x0	// tmp2352, tmp2659
	mov	x19, 10	// _136,
	b	.L858		//
.L1324:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2295, tmp2703
	mov	x19, 4	// _136,
	b	.L959		//
.L1325:
	mov	x20, x0	// tmp2292, tmp2706
	mov	x19, 4	// _136,
	b	.L965		//
.L1300:
// main.cpp:221:     vector<string> info={"Paso "+to_string(step)+" / "+to_string(o.steps),
	mov	x20, x0	// tmp2365, tmp2650
	add	x21, sp, 2384	// tmp2505,,
	mov	x19, 11	// _136,
	b	.L828		//
.L1301:
// main.cpp:222:         "Viento "+arrow+(o.ascii?"":" "+o.direction)+"  "+to_string(o.wind),
	mov	x20, x0	// tmp1116, tmp2651
	mov	x19, 11	// _136,
	b	.L831		//
.L1299:
	b	.L1577		//
.L1358:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2652,
	mov	x19, 10	// _136,
	ldr	x0, [sp, 24]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	b	.L831		//
.L1297:
// main.cpp:221:     vector<string> info={"Paso "+to_string(step)+" / "+to_string(o.steps),
	mov	x20, x0	// tmp2374, tmp2644
	add	x21, sp, 2384	// tmp2505,,
	mov	x19, 11	// _136,
	b	.L816		//
.L1298:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2371, tmp2646
	add	x21, sp, 2384	// tmp2505,,
	mov	x19, 11	// _136,
	b	.L819		//
.L1302:
// main.cpp:222:         "Viento "+arrow+(o.ascii?"":" "+o.direction)+"  "+to_string(o.wind),
	mov	x20, x0	// tmp1145, tmp2653
	mov	x19, 10	// _136,
	b	.L841		//
.L1327:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2286, tmp2708
	mov	x19, 4	// _136,
	b	.L975		//
.L1374:
// main.cpp:217:         const string dirs[]={"N","NE","E","SE","S","SW","W","NW"};
	mov	x19, x0	// tmp2220, tmp2619
	mov	x1, 2	// _74,
.L740:
	mov	x20, 7	// tmp2216,
	sub	x20, x20, x1	// tmp2215, tmp2216, _74
	add	x20, x26, x20, lsl 5	// _75, tmp2493, tmp2215,
.L1234:
// main.cpp:217:         const string dirs[]={"N","NE","E","SE","S","SW","W","NW"};
	cmp	x20, x26	// _75, tmp2493
	beq	.L1235		//,
// main.cpp:217:         const string dirs[]={"N","NE","E","SE","S","SW","W","NW"};
	sub	x20, x20, #32	// _75, _75,
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x0, x20	//, _75
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	b	.L1234		//
.L1375:
// main.cpp:217:         const string dirs[]={"N","NE","E","SE","S","SW","W","NW"};
	mov	x19, x0	// tmp2220, tmp2620
	mov	x1, 1	// _74,
	b	.L740		//
.L1295:
	mov	x19, x0	// tmp2220, tmp2621
	mov	x1, 0	// _74,
	b	.L740		//
.L1376:
// main.cpp:218:         const string arrows[]={"↑","↗","→","↘","↓","↙","←","↖"};
	mov	x19, x0	// tmp2229, tmp2763
	mov	x1, 7	// _78,
	b	.L755		//
.L1378:
	mov	x19, x0	// tmp2229, tmp2623
	mov	x1, 5	// _78,
	b	.L755		//
.L1379:
	mov	x19, x0	// tmp2229, tmp2624
	mov	x1, 4	// _78,
	b	.L755		//
.L1377:
	mov	x19, x0	// tmp2229, tmp2622
	mov	x1, 6	// _78,
	b	.L755		//
.L1380:
	mov	x19, x0	// tmp2229, tmp2625
	mov	x1, 3	// _78,
	b	.L755		//
.L1401:
// main.cpp:228:         "Agua "+to_string(s.count[WATER])+" ("+percent(s.count[WATER],cells.size())+")  Vacío "+to_string(s.count[EMPTY])+" ("+percent(s.count[EMPTY],cells.size())+")",
	mov	x20, x0	// tmp2298, tmp2701
	mov	x19, 4	// _136,
	b	.L950		//
.L1321:
// main.cpp:227:         "Quemado    "+to_string(s.count[BURNT])+" ("+percent(s.count[BURNT],cells.size())+")",
	mov	x20, x0	// tmp2304, tmp2696
	mov	x19, 5	// _136,
	b	.L943		//
.L1322:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2301, tmp2697
	mov	x19, 5	// _136,
	b	.L946		//
.L1323:
	b	.L1570		//
.L1319:
	mov	x20, x0	// tmp2310, tmp2692
	mov	x19, 5	// _136,
	b	.L934		//
.L1318:
	b	.L1572		//
.L1404:
// main.cpp:227:         "Quemado    "+to_string(s.count[BURNT])+" ("+percent(s.count[BURNT],cells.size())+")",
	mov	x20, x0	// tmp2313, tmp2690
	mov	x19, 5	// _136,
	b	.L925		//
.L1359:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2654,
	mov	x19, 10	// _136,
	ldr	x0, [sp, 96]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	b	.L841		//
.L1350:
	mov	x19, x0	// tmp2418, tmp2777
.L1257:
	ldr	x0, [sp, 176]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	b	.L1258		//
.L1351:
	mov	x19, x0	// tmp2415, tmp2776
.L1256:
	ldr	x0, [sp, 104]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	b	.L1257		//
.L1352:
	mov	x19, x0	// tmp2412, tmp2775
.L1255:
	ldr	x0, [sp, 112]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	b	.L1256		//
.L1353:
	mov	x19, x0	// tmp2409, tmp2774
.L1254:
	ldr	x0, [sp, 144]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	b	.L1255		//
.L1363:
// /usr/include/c++/13/bits/basic_ios.h:282:       ~basic_ios() { }
	mov	x19, x0	// tmp1950, tmp2749
.L1155:
	ldr	x0, [sp, 208]	// tmp2522, %sfp
	add	x1, x0, 16	// tmp1952, tmp2522,
	str	x1, [sp, 2496]	// tmp1952, MEM[(struct basic_ios *)_688].D.75676._vptr.ios_base
	ldr	x0, [sp, 120]	//, %sfp
	bl	_ZNSt8ios_baseD2Ev		//
.L1156:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	ldr	x0, [sp, 88]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	b	.L1254		//
.L1364:
// /usr/include/c++/13/sstream:79:     class basic_stringbuf : public basic_streambuf<_CharT, _Traits>
	ldr	x1, [sp, 216]	// tmp2550, %sfp
	mov	x19, x0	// tmp1945, tmp2748
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	add	x0, sp, 2464	//,,
// /usr/include/c++/13/sstream:79:     class basic_stringbuf : public basic_streambuf<_CharT, _Traits>
	add	x1, x1, 16	// tmp1936, tmp2550,
	str	x1, [sp, 2392]	// tmp1936, MEM[(struct basic_stringbuf *)_688].D.80081._vptr.basic_streambuf
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
// /usr/include/c++/13/streambuf:205:       { }
	ldr	x0, [sp, 200]	// tmp2481, %sfp
	add	x1, x0, 16	// tmp1940, tmp2481,
	str	x1, [sp, 2392]	// tmp1940, MEM[(struct basic_streambuf *)_688]._vptr.basic_streambuf
	ldr	x0, [sp, 72]	//, %sfp
	bl	_ZNSt6localeD1Ev		//
// /usr/include/c++/13/ostream:95:       ~basic_ostream() { }
	ldr	x1, [sp, 184]	// _1771, %sfp
	ldr	x0, [x1, -24]	// MEM[(long int *)_1771 + -24B], MEM[(long int *)_1771 + -24B]
	str	x1, [sp, 2384]	// _1771, MEM[(struct basic_ostream *)_688]._vptr.basic_ostream
	ldr	x1, [sp, 192]	// _1775, %sfp
	str	x1, [x21, x0]	// _1775, MEM[(struct basic_ios *)_1783].D.75676._vptr.ios_base
	b	.L1155		//
.L1354:
// main.cpp:259: }
	mov	x19, x0	// tmp2121, tmp2773
.L1205:
	mov	x0, x21	//, tmp2505
	bl	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev		//
	b	.L1156		//
.L1355:
.L1578:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x19, x0	// tmp2772,
	mov	x0, x26	//, tmp2493
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	b	.L1205		//
.L1373:
// main.cpp:217:         const string dirs[]={"N","NE","E","SE","S","SW","W","NW"};
	mov	x19, x0	// tmp2220, tmp2618
	mov	x1, 3	// _74,
	b	.L740		//
.L1371:
	mov	x19, x0	// tmp2220, tmp2616
	mov	x1, 5	// _74,
	b	.L740		//
.L1372:
	mov	x19, x0	// tmp2220, tmp2617
	mov	x1, 4	// _74,
	b	.L740		//
.L1370:
	mov	x19, x0	// tmp2220, tmp2615
	mov	x1, 6	// _74,
	b	.L740		//
.L1369:
	mov	x19, x0	// tmp2220, tmp2762
	mov	x1, 7	// _74,
	b	.L740		//
.L1365:
	b	.L1578		//
.L1356:
	b	.L1578		//
.L1366:
	b	.L1578		//
.L1340:
// main.cpp:229:         "Inicial afectada: "+to_string(s.affected)+"/"+to_string(initial_trees)+" ("+percent(s.affected,initial_trees)+")",
	mov	x20, x0	// tmp2247, tmp2733
	mov	x19, 3	// _136,
	add	x0, sp, 2008	// tmp2486,,
	str	x0, [sp, 144]	// tmp2486, %sfp
	b	.L1041		//
.L1341:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2244, tmp2734
	mov	x19, 3	// _136,
	b	.L1044		//
.L1339:
	b	.L1566		//
.L1360:
	mov	x20, x0	// tmp2738,
	mov	x0, x19	//, tmp2527
	mov	x19, 2	// _136,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	b	.L1048		//
.L1332:
// main.cpp:228:         "Agua "+to_string(s.count[WATER])+" ("+percent(s.count[WATER],cells.size())+")  Vacío "+to_string(s.count[EMPTY])+" ("+percent(s.count[EMPTY],cells.size())+")",
	mov	x20, x0	// tmp2271, tmp2717
	mov	x19, 4	// _136,
	add	x0, sp, 1752	// tmp2566,,
	str	x0, [sp, 528]	// tmp2566, %sfp
	b	.L998		//
.L1333:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2268, tmp2718
	mov	x19, 4	// _136,
	b	.L1001		//
.L1331:
	b	.L1568		//
.L1396:
// main.cpp:229:         "Inicial afectada: "+to_string(s.affected)+"/"+to_string(initial_trees)+" ("+percent(s.affected,initial_trees)+")",
	mov	x20, x0	// tmp2265, tmp2722
	mov	x19, 3	// _136,
	b	.L1005		//
.L1412:
.L1575:
// main.cpp:223:         "Humedad media: "+(s.count[TREE]?to_string(s.mean):string("no aplica")),
	mov	x20, x0	// tmp2349, tmp2662
	mov	x19, 9	// _136,
	b	.L861		//
.L1296:
// main.cpp:218:         const string arrows[]={"↑","↗","→","↘","↓","↙","←","↖"};
	mov	x19, x0	// tmp2229, tmp2628
	mov	x1, 0	// _78,
	b	.L755		//
.L1293:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x19, x0	// tmp2426, tmp2781
	b	.L1259		//
.L1357:
	b	.L1578		//
.L1342:
	b	.L1565		//
.L1336:
	mov	x20, x0	// tmp2259, tmp2727
	mov	x19, 3	// _136,
	b	.L1020		//
.L1335:
	mov	x20, x0	// tmp2262, tmp2724
	mov	x19, 3	// _136,
	b	.L1014		//
.L1337:
// main.cpp:229:         "Inicial afectada: "+to_string(s.affected)+"/"+to_string(initial_trees)+" ("+percent(s.affected,initial_trees)+")",
	mov	x20, x0	// tmp2256, tmp2728
	mov	x19, 3	// _136,
	add	x0, sp, 1912	// tmp2479,,
	str	x0, [sp, 176]	// tmp2479, %sfp
	b	.L1027		//
.L1411:
// main.cpp:223:         "Humedad media: "+(s.count[TREE]?to_string(s.mean):string("no aplica")),
	mov	x20, x0	// tmp2349, tmp2660
	mov	x19, 10	// _136,
	b	.L861		//
.L1306:
	b	.L1575		//
.L1410:
// main.cpp:224:         "Estados / total "+to_string(cells.size()),
	mov	x20, x0	// tmp2346, tmp2664
	mov	x19, 9	// _136,
	b	.L868		//
.L1307:
	mov	x20, x0	// tmp2346, tmp2665
	mov	x19, 8	// _136,
	b	.L868		//
.L1308:
// main.cpp:225:         "Vegetación "+to_string(s.count[TREE])+" ("+percent(s.count[TREE],cells.size())+")",
	mov	x20, x0	// tmp2343, tmp2668
	mov	x19, 7	// _136,
	b	.L873		//
.L1309:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2340, tmp2670
	mov	x19, 7	// _136,
	b	.L880		//
.L1409:
// main.cpp:225:         "Vegetación "+to_string(s.count[TREE])+" ("+percent(s.count[TREE],cells.size())+")",
	mov	x20, x0	// tmp2343, tmp2667
	mov	x19, 8	// _136,
	b	.L873		//
.L1320:
	b	.L1571		//
.L1315:
	b	.L1573		//
.L1316:
// main.cpp:226:         "Ardiendo   "+to_string(s.count[FIRE])+" ("+percent(s.count[FIRE],cells.size())+")",
	mov	x20, x0	// tmp2319, tmp2685
	mov	x19, 6	// _136,
	b	.L918		//
.L1317:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2316, tmp2686
	mov	x19, 6	// _136,
	b	.L921		//
.L1314:
	mov	x20, x0	// tmp2325, tmp2681
	mov	x19, 6	// _136,
	b	.L909		//
.L1311:
// main.cpp:225:         "Vegetación "+to_string(s.count[TREE])+" ("+percent(s.count[TREE],cells.size())+")",
	mov	x20, x0	// tmp2334, tmp2674
	mov	x19, 7	// _136,
	add	x0, sp, 1080	// tmp2534,,
	str	x0, [sp, 504]	// tmp2534, %sfp
	b	.L893		//
.L1312:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2331, tmp2675
	mov	x19, 7	// _136,
	b	.L896		//
.L1313:
	b	.L1574		//
	.cfi_endproc
.LFE4503:
	.section	.gcc_except_table
	.align	2
.LLSDA4503:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT4503-.LLSDATTD4503
.LLSDATTD4503:
	.byte	0x1
	.uleb128 .LLSDACSE4503-.LLSDACSB4503
.LLSDACSB4503:
	.uleb128 .LEHB63-.LFB4503
	.uleb128 .LEHE63-.LEHB63
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB64-.LFB4503
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L1293-.LFB4503
	.uleb128 0
	.uleb128 .LEHB65-.LFB4503
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L1294-.LFB4503
	.uleb128 0
	.uleb128 .LEHB66-.LFB4503
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L1297-.LFB4503
	.uleb128 0
	.uleb128 .LEHB67-.LFB4503
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L1298-.LFB4503
	.uleb128 0
	.uleb128 .LEHB68-.LFB4503
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L1299-.LFB4503
	.uleb128 0
	.uleb128 .LEHB69-.LFB4503
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L1300-.LFB4503
	.uleb128 0
	.uleb128 .LEHB70-.LFB4503
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L1301-.LFB4503
	.uleb128 0
	.uleb128 .LEHB71-.LFB4503
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L1358-.LFB4503
	.uleb128 0
	.uleb128 .LEHB72-.LFB4503
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L1302-.LFB4503
	.uleb128 0
	.uleb128 .LEHB73-.LFB4503
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L1303-.LFB4503
	.uleb128 0
	.uleb128 .LEHB74-.LFB4503
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L1304-.LFB4503
	.uleb128 0
	.uleb128 .LEHB75-.LFB4503
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L1305-.LFB4503
	.uleb128 0
	.uleb128 .LEHB76-.LFB4503
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L1411-.LFB4503
	.uleb128 0
	.uleb128 .LEHB77-.LFB4503
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L1306-.LFB4503
	.uleb128 0
	.uleb128 .LEHB78-.LFB4503
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L1410-.LFB4503
	.uleb128 0
	.uleb128 .LEHB79-.LFB4503
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L1307-.LFB4503
	.uleb128 0
	.uleb128 .LEHB80-.LFB4503
	.uleb128 .LEHE80-.LEHB80
	.uleb128 .L1409-.LFB4503
	.uleb128 0
	.uleb128 .LEHB81-.LFB4503
	.uleb128 .LEHE81-.LEHB81
	.uleb128 .L1308-.LFB4503
	.uleb128 0
	.uleb128 .LEHB82-.LFB4503
	.uleb128 .LEHE82-.LEHB82
	.uleb128 .L1309-.LFB4503
	.uleb128 0
	.uleb128 .LEHB83-.LFB4503
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L1310-.LFB4503
	.uleb128 0
	.uleb128 .LEHB84-.LFB4503
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L1311-.LFB4503
	.uleb128 0
	.uleb128 .LEHB85-.LFB4503
	.uleb128 .LEHE85-.LEHB85
	.uleb128 .L1312-.LFB4503
	.uleb128 0
	.uleb128 .LEHB86-.LFB4503
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L1313-.LFB4503
	.uleb128 0
	.uleb128 .LEHB87-.LFB4503
	.uleb128 .LEHE87-.LEHB87
	.uleb128 .L1407-.LFB4503
	.uleb128 0
	.uleb128 .LEHB88-.LFB4503
	.uleb128 .LEHE88-.LEHB88
	.uleb128 .L1314-.LFB4503
	.uleb128 0
	.uleb128 .LEHB89-.LFB4503
	.uleb128 .LEHE89-.LEHB89
	.uleb128 .L1315-.LFB4503
	.uleb128 0
	.uleb128 .LEHB90-.LFB4503
	.uleb128 .LEHE90-.LEHB90
	.uleb128 .L1316-.LFB4503
	.uleb128 0
	.uleb128 .LEHB91-.LFB4503
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L1317-.LFB4503
	.uleb128 0
	.uleb128 .LEHB92-.LFB4503
	.uleb128 .LEHE92-.LEHB92
	.uleb128 .L1318-.LFB4503
	.uleb128 0
	.uleb128 .LEHB93-.LFB4503
	.uleb128 .LEHE93-.LEHB93
	.uleb128 .L1404-.LFB4503
	.uleb128 0
	.uleb128 .LEHB94-.LFB4503
	.uleb128 .LEHE94-.LEHB94
	.uleb128 .L1319-.LFB4503
	.uleb128 0
	.uleb128 .LEHB95-.LFB4503
	.uleb128 .LEHE95-.LEHB95
	.uleb128 .L1320-.LFB4503
	.uleb128 0
	.uleb128 .LEHB96-.LFB4503
	.uleb128 .LEHE96-.LEHB96
	.uleb128 .L1321-.LFB4503
	.uleb128 0
	.uleb128 .LEHB97-.LFB4503
	.uleb128 .LEHE97-.LEHB97
	.uleb128 .L1322-.LFB4503
	.uleb128 0
	.uleb128 .LEHB98-.LFB4503
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L1323-.LFB4503
	.uleb128 0
	.uleb128 .LEHB99-.LFB4503
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L1401-.LFB4503
	.uleb128 0
	.uleb128 .LEHB100-.LFB4503
	.uleb128 .LEHE100-.LEHB100
	.uleb128 .L1324-.LFB4503
	.uleb128 0
	.uleb128 .LEHB101-.LFB4503
	.uleb128 .LEHE101-.LEHB101
	.uleb128 .L1325-.LFB4503
	.uleb128 0
	.uleb128 .LEHB102-.LFB4503
	.uleb128 .LEHE102-.LEHB102
	.uleb128 .L1326-.LFB4503
	.uleb128 0
	.uleb128 .LEHB103-.LFB4503
	.uleb128 .LEHE103-.LEHB103
	.uleb128 .L1327-.LFB4503
	.uleb128 0
	.uleb128 .LEHB104-.LFB4503
	.uleb128 .LEHE104-.LEHB104
	.uleb128 .L1328-.LFB4503
	.uleb128 0
	.uleb128 .LEHB105-.LFB4503
	.uleb128 .LEHE105-.LEHB105
	.uleb128 .L1329-.LFB4503
	.uleb128 0
	.uleb128 .LEHB106-.LFB4503
	.uleb128 .LEHE106-.LEHB106
	.uleb128 .L1330-.LFB4503
	.uleb128 0
	.uleb128 .LEHB107-.LFB4503
	.uleb128 .LEHE107-.LEHB107
	.uleb128 .L1331-.LFB4503
	.uleb128 0
	.uleb128 .LEHB108-.LFB4503
	.uleb128 .LEHE108-.LEHB108
	.uleb128 .L1332-.LFB4503
	.uleb128 0
	.uleb128 .LEHB109-.LFB4503
	.uleb128 .LEHE109-.LEHB109
	.uleb128 .L1333-.LFB4503
	.uleb128 0
	.uleb128 .LEHB110-.LFB4503
	.uleb128 .LEHE110-.LEHB110
	.uleb128 .L1334-.LFB4503
	.uleb128 0
	.uleb128 .LEHB111-.LFB4503
	.uleb128 .LEHE111-.LEHB111
	.uleb128 .L1396-.LFB4503
	.uleb128 0
	.uleb128 .LEHB112-.LFB4503
	.uleb128 .LEHE112-.LEHB112
	.uleb128 .L1335-.LFB4503
	.uleb128 0
	.uleb128 .LEHB113-.LFB4503
	.uleb128 .LEHE113-.LEHB113
	.uleb128 .L1336-.LFB4503
	.uleb128 0
	.uleb128 .LEHB114-.LFB4503
	.uleb128 .LEHE114-.LEHB114
	.uleb128 .L1337-.LFB4503
	.uleb128 0
	.uleb128 .LEHB115-.LFB4503
	.uleb128 .LEHE115-.LEHB115
	.uleb128 .L1338-.LFB4503
	.uleb128 0
	.uleb128 .LEHB116-.LFB4503
	.uleb128 .LEHE116-.LEHB116
	.uleb128 .L1339-.LFB4503
	.uleb128 0
	.uleb128 .LEHB117-.LFB4503
	.uleb128 .LEHE117-.LEHB117
	.uleb128 .L1340-.LFB4503
	.uleb128 0
	.uleb128 .LEHB118-.LFB4503
	.uleb128 .LEHE118-.LEHB118
	.uleb128 .L1341-.LFB4503
	.uleb128 0
	.uleb128 .LEHB119-.LFB4503
	.uleb128 .LEHE119-.LEHB119
	.uleb128 .L1342-.LFB4503
	.uleb128 0
	.uleb128 .LEHB120-.LFB4503
	.uleb128 .LEHE120-.LEHB120
	.uleb128 .L1360-.LFB4503
	.uleb128 0
	.uleb128 .LEHB121-.LFB4503
	.uleb128 .LEHE121-.LEHB121
	.uleb128 .L1391-.LFB4503
	.uleb128 0
	.uleb128 .LEHB122-.LFB4503
	.uleb128 .LEHE122-.LEHB122
	.uleb128 .L1392-.LFB4503
	.uleb128 0
	.uleb128 .LEHB123-.LFB4503
	.uleb128 .LEHE123-.LEHB123
	.uleb128 .L1367-.LFB4503
	.uleb128 0
	.uleb128 .LEHB124-.LFB4503
	.uleb128 .LEHE124-.LEHB124
	.uleb128 .L1362-.LFB4503
	.uleb128 0x1
	.uleb128 .LEHB125-.LFB4503
	.uleb128 .LEHE125-.LEHB125
	.uleb128 .L1347-.LFB4503
	.uleb128 0
	.uleb128 .LEHB126-.LFB4503
	.uleb128 .LEHE126-.LEHB126
	.uleb128 .L1349-.LFB4503
	.uleb128 0
	.uleb128 .LEHB127-.LFB4503
	.uleb128 .LEHE127-.LEHB127
	.uleb128 .L1350-.LFB4503
	.uleb128 0
	.uleb128 .LEHB128-.LFB4503
	.uleb128 .LEHE128-.LEHB128
	.uleb128 .L1351-.LFB4503
	.uleb128 0
	.uleb128 .LEHB129-.LFB4503
	.uleb128 .LEHE129-.LEHB129
	.uleb128 .L1352-.LFB4503
	.uleb128 0
	.uleb128 .LEHB130-.LFB4503
	.uleb128 .LEHE130-.LEHB130
	.uleb128 .L1353-.LFB4503
	.uleb128 0
	.uleb128 .LEHB131-.LFB4503
	.uleb128 .LEHE131-.LEHB131
	.uleb128 .L1363-.LFB4503
	.uleb128 0
	.uleb128 .LEHB132-.LFB4503
	.uleb128 .LEHE132-.LEHB132
	.uleb128 .L1364-.LFB4503
	.uleb128 0
	.uleb128 .LEHB133-.LFB4503
	.uleb128 .LEHE133-.LEHB133
	.uleb128 .L1354-.LFB4503
	.uleb128 0
	.uleb128 .LEHB134-.LFB4503
	.uleb128 .LEHE134-.LEHB134
	.uleb128 .L1355-.LFB4503
	.uleb128 0
	.uleb128 .LEHB135-.LFB4503
	.uleb128 .LEHE135-.LEHB135
	.uleb128 .L1354-.LFB4503
	.uleb128 0
	.uleb128 .LEHB136-.LFB4503
	.uleb128 .LEHE136-.LEHB136
	.uleb128 .L1365-.LFB4503
	.uleb128 0
	.uleb128 .LEHB137-.LFB4503
	.uleb128 .LEHE137-.LEHB137
	.uleb128 .L1356-.LFB4503
	.uleb128 0
	.uleb128 .LEHB138-.LFB4503
	.uleb128 .LEHE138-.LEHB138
	.uleb128 .L1354-.LFB4503
	.uleb128 0
	.uleb128 .LEHB139-.LFB4503
	.uleb128 .LEHE139-.LEHB139
	.uleb128 .L1356-.LFB4503
	.uleb128 0
	.uleb128 .LEHB140-.LFB4503
	.uleb128 .LEHE140-.LEHB140
	.uleb128 .L1369-.LFB4503
	.uleb128 0
	.uleb128 .LEHB141-.LFB4503
	.uleb128 .LEHE141-.LEHB141
	.uleb128 .L1370-.LFB4503
	.uleb128 0
	.uleb128 .LEHB142-.LFB4503
	.uleb128 .LEHE142-.LEHB142
	.uleb128 .L1371-.LFB4503
	.uleb128 0
	.uleb128 .LEHB143-.LFB4503
	.uleb128 .LEHE143-.LEHB143
	.uleb128 .L1372-.LFB4503
	.uleb128 0
	.uleb128 .LEHB144-.LFB4503
	.uleb128 .LEHE144-.LEHB144
	.uleb128 .L1373-.LFB4503
	.uleb128 0
	.uleb128 .LEHB145-.LFB4503
	.uleb128 .LEHE145-.LEHB145
	.uleb128 .L1374-.LFB4503
	.uleb128 0
	.uleb128 .LEHB146-.LFB4503
	.uleb128 .LEHE146-.LEHB146
	.uleb128 .L1375-.LFB4503
	.uleb128 0
	.uleb128 .LEHB147-.LFB4503
	.uleb128 .LEHE147-.LEHB147
	.uleb128 .L1295-.LFB4503
	.uleb128 0
	.uleb128 .LEHB148-.LFB4503
	.uleb128 .LEHE148-.LEHB148
	.uleb128 .L1376-.LFB4503
	.uleb128 0
	.uleb128 .LEHB149-.LFB4503
	.uleb128 .LEHE149-.LEHB149
	.uleb128 .L1377-.LFB4503
	.uleb128 0
	.uleb128 .LEHB150-.LFB4503
	.uleb128 .LEHE150-.LEHB150
	.uleb128 .L1378-.LFB4503
	.uleb128 0
	.uleb128 .LEHB151-.LFB4503
	.uleb128 .LEHE151-.LEHB151
	.uleb128 .L1379-.LFB4503
	.uleb128 0
	.uleb128 .LEHB152-.LFB4503
	.uleb128 .LEHE152-.LEHB152
	.uleb128 .L1380-.LFB4503
	.uleb128 0
	.uleb128 .LEHB153-.LFB4503
	.uleb128 .LEHE153-.LEHB153
	.uleb128 .L1381-.LFB4503
	.uleb128 0
	.uleb128 .LEHB154-.LFB4503
	.uleb128 .LEHE154-.LEHB154
	.uleb128 .L1382-.LFB4503
	.uleb128 0
	.uleb128 .LEHB155-.LFB4503
	.uleb128 .LEHE155-.LEHB155
	.uleb128 .L1296-.LFB4503
	.uleb128 0
	.uleb128 .LEHB156-.LFB4503
	.uleb128 .LEHE156-.LEHB156
	.uleb128 .L1412-.LFB4503
	.uleb128 0
	.uleb128 .LEHB157-.LFB4503
	.uleb128 .LEHE157-.LEHB157
	.uleb128 .L1359-.LFB4503
	.uleb128 0
	.uleb128 .LEHB158-.LFB4503
	.uleb128 .LEHE158-.LEHB158
	.uleb128 .L1366-.LFB4503
	.uleb128 0
	.uleb128 .LEHB159-.LFB4503
	.uleb128 .LEHE159-.LEHB159
	.uleb128 .L1357-.LFB4503
	.uleb128 0
	.uleb128 .LEHB160-.LFB4503
	.uleb128 .LEHE160-.LEHB160
	.uleb128 .L1354-.LFB4503
	.uleb128 0
	.uleb128 .LEHB161-.LFB4503
	.uleb128 .LEHE161-.LEHB161
	.uleb128 .L1343-.LFB4503
	.uleb128 0
	.uleb128 .LEHB162-.LFB4503
	.uleb128 .LEHE162-.LEHB162
	.uleb128 .L1344-.LFB4503
	.uleb128 0
	.uleb128 .LEHB163-.LFB4503
	.uleb128 .LEHE163-.LEHB163
	.uleb128 .L1345-.LFB4503
	.uleb128 0
	.uleb128 .LEHB164-.LFB4503
	.uleb128 .LEHE164-.LEHB164
	.uleb128 .L1346-.LFB4503
	.uleb128 0
	.uleb128 .LEHB165-.LFB4503
	.uleb128 .LEHE165-.LEHB165
	.uleb128 .L1347-.LFB4503
	.uleb128 0
	.uleb128 .LEHB166-.LFB4503
	.uleb128 .LEHE166-.LEHB166
	.uleb128 .L1354-.LFB4503
	.uleb128 0
	.uleb128 .LEHB167-.LFB4503
	.uleb128 .LEHE167-.LEHB167
	.uleb128 .L1384-.LFB4503
	.uleb128 0
	.uleb128 .LEHB168-.LFB4503
	.uleb128 .LEHE168-.LEHB168
	.uleb128 .L1388-.LFB4503
	.uleb128 0
	.uleb128 .LEHB169-.LFB4503
	.uleb128 .LEHE169-.LEHB169
	.uleb128 .L1389-.LFB4503
	.uleb128 0
	.uleb128 .LEHB170-.LFB4503
	.uleb128 .LEHE170-.LEHB170
	.uleb128 .L1368-.LFB4503
	.uleb128 0
	.uleb128 .LEHB171-.LFB4503
	.uleb128 .LEHE171-.LEHB171
	.uleb128 .L1383-.LFB4503
	.uleb128 0
	.uleb128 .LEHB172-.LFB4503
	.uleb128 .LEHE172-.LEHB172
	.uleb128 .L1385-.LFB4503
	.uleb128 0
	.uleb128 .LEHB173-.LFB4503
	.uleb128 .LEHE173-.LEHB173
	.uleb128 .L1386-.LFB4503
	.uleb128 0
	.uleb128 .LEHB174-.LFB4503
	.uleb128 .LEHE174-.LEHB174
	.uleb128 .L1387-.LFB4503
	.uleb128 0
	.uleb128 .LEHB175-.LFB4503
	.uleb128 .LEHE175-.LEHB175
	.uleb128 .L1366-.LFB4503
	.uleb128 0
	.uleb128 .LEHB176-.LFB4503
	.uleb128 .LEHE176-.LEHB176
	.uleb128 .L1365-.LFB4503
	.uleb128 0
	.uleb128 .LEHB177-.LFB4503
	.uleb128 .LEHE177-.LEHB177
	.uleb128 .L1348-.LFB4503
	.uleb128 0
	.uleb128 .LEHB178-.LFB4503
	.uleb128 .LEHE178-.LEHB178
	.uleb128 .L1293-.LFB4503
	.uleb128 0
	.uleb128 .LEHB179-.LFB4503
	.uleb128 .LEHE179-.LEHB179
	.uleb128 .L1394-.LFB4503
	.uleb128 0
	.uleb128 .LEHB180-.LFB4503
	.uleb128 .LEHE180-.LEHB180
	.uleb128 .L1398-.LFB4503
	.uleb128 0
	.uleb128 .LEHB181-.LFB4503
	.uleb128 .LEHE181-.LEHB181
	.uleb128 .L1395-.LFB4503
	.uleb128 0
	.uleb128 .LEHB182-.LFB4503
	.uleb128 .LEHE182-.LEHB182
	.uleb128 .L1293-.LFB4503
	.uleb128 0
	.uleb128 .LEHB183-.LFB4503
	.uleb128 .LEHE183-.LEHB183
	.uleb128 .L1393-.LFB4503
	.uleb128 0
	.uleb128 .LEHB184-.LFB4503
	.uleb128 .LEHE184-.LEHB184
	.uleb128 .L1390-.LFB4503
	.uleb128 0
	.uleb128 .LEHB185-.LFB4503
	.uleb128 .LEHE185-.LEHB185
	.uleb128 .L1358-.LFB4503
	.uleb128 0
	.uleb128 .LEHB186-.LFB4503
	.uleb128 .LEHE186-.LEHB186
	.uleb128 .L1414-.LFB4503
	.uleb128 0
	.uleb128 .LEHB187-.LFB4503
	.uleb128 .LEHE187-.LEHB187
	.uleb128 .L1405-.LFB4503
	.uleb128 0
	.uleb128 .LEHB188-.LFB4503
	.uleb128 .LEHE188-.LEHB188
	.uleb128 .L1399-.LFB4503
	.uleb128 0
	.uleb128 .LEHB189-.LFB4503
	.uleb128 .LEHE189-.LEHB189
	.uleb128 .L1413-.LFB4503
	.uleb128 0
	.uleb128 .LEHB190-.LFB4503
	.uleb128 .LEHE190-.LEHB190
	.uleb128 .L1406-.LFB4503
	.uleb128 0
	.uleb128 .LEHB191-.LFB4503
	.uleb128 .LEHE191-.LEHB191
	.uleb128 .L1358-.LFB4503
	.uleb128 0
	.uleb128 .LEHB192-.LFB4503
	.uleb128 .LEHE192-.LEHB192
	.uleb128 .L1359-.LFB4503
	.uleb128 0
	.uleb128 .LEHB193-.LFB4503
	.uleb128 .LEHE193-.LEHB193
	.uleb128 .L1400-.LFB4503
	.uleb128 0
	.uleb128 .LEHB194-.LFB4503
	.uleb128 .LEHE194-.LEHB194
	.uleb128 .L1360-.LFB4503
	.uleb128 0
	.uleb128 .LEHB195-.LFB4503
	.uleb128 .LEHE195-.LEHB195
	.uleb128 .L1402-.LFB4503
	.uleb128 0
	.uleb128 .LEHB196-.LFB4503
	.uleb128 .LEHE196-.LEHB196
	.uleb128 .L1403-.LFB4503
	.uleb128 0
	.uleb128 .LEHB197-.LFB4503
	.uleb128 .LEHE197-.LEHB197
	.uleb128 .L1408-.LFB4503
	.uleb128 0
	.uleb128 .LEHB198-.LFB4503
	.uleb128 .LEHE198-.LEHB198
	.uleb128 .L1360-.LFB4503
	.uleb128 0
	.uleb128 .LEHB199-.LFB4503
	.uleb128 .LEHE199-.LEHB199
	.uleb128 .L1397-.LFB4503
	.uleb128 0
	.uleb128 .LEHB200-.LFB4503
	.uleb128 .LEHE200-.LEHB200
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB201-.LFB4503
	.uleb128 .LEHE201-.LEHB201
	.uleb128 .L1361-.LFB4503
	.uleb128 0
.LLSDACSE4503:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT4503:
	.text
	.size	_Z4drawRKSt6vectorI4CellSaIS0_EERK7Optionsmmb, .-_Z4drawRKSt6vectorI4CellSaIS0_EERK7Optionsmmb
	.align	2
	.p2align 4,,11
	.global	_Z10wait_frameR7OptionsR13TerminalInputRKSt6vectorI4CellSaIS4_EEmm
	.type	_Z10wait_frameR7OptionsR13TerminalInputRKSt6vectorI4CellSaIS4_EEmm, %function
_Z10wait_frameR7OptionsR13TerminalInputRKSt6vectorI4CellSaIS4_EEmm:
.LFB4505:
	.cfi_startproc
	sub	sp, sp, #160	//,,
	.cfi_def_cfa_offset 160
	adrp	x5, :got:__stack_chk_guard	// tmp142,
	ldr	x5, [x5, :got_lo12:__stack_chk_guard]	// tmp142,
	stp	x29, x30, [sp, 64]	//,,
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	add	x29, sp, 64	//,,
	stp	x19, x20, [sp, 80]	//,,
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x19, x0	// o, tmp235
	stp	x21, x22, [sp, 96]	//,,
	.cfi_offset 21, -64
	.cfi_offset 22, -56
// main.cpp:261:     if(!input.enabled) {
	ldrb	w21, [x1, 60]	// _30, input_43(D)->enabled
// main.cpp:260: bool wait_frame(Options& o, TerminalInput& input, const vector<Cell>& cells, size_t step, size_t initial_trees) {
	ldr	x1, [x5]	// tmp250,
	str	x1, [sp, 56]	// tmp250, D.122002
	mov	x1, 0	// tmp250
	str	x2, [sp, 8]	// tmp237, %sfp
// main.cpp:261:     if(!input.enabled) {
	tbnz	x21, 0, .L1647	// _30,,
// main.cpp:262:         if(o.delay) this_thread::sleep_for(chrono::milliseconds(o.delay));
	ldr	w0, [x0, 104]	//, o_45(D)->delay
// main.cpp:262:         if(o.delay) this_thread::sleep_for(chrono::milliseconds(o.delay));
	cbnz	w0, .L1686	// _3,
.L1648:
// main.cpp:263:         return !interrupted;
	adrp	x0, .LANCHOR0	// tmp182,
	ldr	w0, [x0, #:lo12:.LANCHOR0]	//, interrupted
// main.cpp:263:         return !interrupted;
	cmp	w0, 0	// interrupted.135_5,
	cset	w21, eq	// _30,
.L1651:
// main.cpp:281: }
	adrp	x0, :got:__stack_chk_guard	// tmp223,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp223,
	ldr	x2, [sp, 56]	// tmp251, D.122002
	ldr	x1, [x0]	// tmp252,
	subs	x2, x2, x1	// tmp251, tmp252
	mov	x1, 0	// tmp252
	bne	.L1687		//,
	ldp	x29, x30, [sp, 64]	//,,
	mov	w0, w21	//, _30
	ldp	x19, x20, [sp, 80]	//,,
	ldp	x21, x22, [sp, 96]	//,,
	add	sp, sp, 160	//,,
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret	
	.p2align 2,,3
.L1686:
	.cfi_restore_state
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	mov	x1, 63439	// tmp146,
	lsr	w2, w0, 3	// tmp144, _3,
	movk	x1, 0xe353, lsl 16	// tmp146,,
// /usr/include/c++/13/bits/chrono.h:574: 	  : __r(static_cast<rep>(__rep)) { }
	uxtw	x0, w0	// _128, _3
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	movk	x1, 0x9ba5, lsl 32	// tmp146,,
// /usr/include/c++/13/bits/chrono.h:225: 	      static_cast<_CR>(__d.count()) * static_cast<_CR>(_CF::num)));
	mov	x3, 16960	// tmp177,
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	movk	x1, 0x20c4, lsl 48	// tmp146,,
// /usr/include/c++/13/bits/chrono.h:225: 	      static_cast<_CR>(__d.count()) * static_cast<_CR>(_CF::num)));
	movk	x3, 0xf, lsl 16	// tmp177,,
	stp	x25, x26, [sp, 128]	//,,
	.cfi_offset 26, -24
	.cfi_offset 25, -32
	add	x25, sp, 32	// tmp225,,
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	umulh	x2, x2, x1	// tmp145, tmp144, tmp146
	lsr	x2, x2, 4	// tmp147, tmp145,
// /usr/include/c++/13/bits/chrono.h:225: 	      static_cast<_CR>(__d.count()) * static_cast<_CR>(_CF::num)));
	lsl	x1, x2, 5	// tmp158, tmp147,
	sub	x1, x1, x2	// tmp159, tmp158, tmp147
	add	x1, x2, x1, lsl 2	// tmp161, tmp147, tmp159,
	sub	x0, x0, x1, lsl 3	// tmp163, _128, tmp161,
	mul	x0, x0, x3	// tmp176, tmp163, tmp177
// /usr/include/c++/13/bits/this_thread_sleep.h:75: 	struct ::timespec __ts =
	stp	x2, x0, [sp, 32]	// tmp147, tmp176, MEM[(struct timespec *)_77].tv_sec
.L1650:
// /usr/include/c++/13/bits/this_thread_sleep.h:80: 	while (::nanosleep(&__ts, &__ts) == -1 && errno == EINTR)
	mov	x1, x25	//, tmp225
	mov	x0, x25	//, tmp225
	bl	nanosleep		//
// /usr/include/c++/13/bits/this_thread_sleep.h:80: 	while (::nanosleep(&__ts, &__ts) == -1 && errno == EINTR)
	cmn	w0, #1	// tmp240,
	beq	.L1688		//,
	ldp	x25, x26, [sp, 128]	//,,
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 25
	b	.L1648		//
	.p2align 2,,3
.L1688:
	.cfi_restore_state
// /usr/include/c++/13/bits/this_thread_sleep.h:80: 	while (::nanosleep(&__ts, &__ts) == -1 && errno == EINTR)
	bl	__errno_location		//
// /usr/include/c++/13/bits/this_thread_sleep.h:80: 	while (::nanosleep(&__ts, &__ts) == -1 && errno == EINTR)
	ldr	w0, [x0]	//, *_113
	cmp	w0, 4	// *_113,
	beq	.L1650		//,
	ldp	x25, x26, [sp, 128]	//,,
	.cfi_restore 26
	.cfi_restore 25
	b	.L1648		//
	.p2align 2,,3
.L1647:
	stp	x27, x28, [sp, 144]	//,,
	.cfi_offset 28, -8
	.cfi_offset 27, -16
// main.cpp:266:     while(!interrupted) {
	adrp	x28, .LANCHOR0	// tmp226,
	add	x22, sp, 31	// tmp224,,
	stp	x23, x24, [sp, 112]	//,,
	.cfi_offset 24, -40
	.cfi_offset 23, -48
	mov	x23, x3	// step, tmp238
	mov	x24, x4	// initial_trees, tmp239
	stp	x25, x26, [sp, 128]	//,,
	.cfi_offset 26, -24
	.cfi_offset 25, -32
// main.cpp:265:     auto deadline=chrono::steady_clock::now()+chrono::milliseconds(o.delay);
	bl	_ZNSt6chrono3_V212steady_clock3nowEv		//
// main.cpp:266:     while(!interrupted) {
	ldr	w1, [x28, #:lo12:.LANCHOR0]	//, interrupted
// /usr/include/c++/13/bits/chrono.h:702: 	return __cd(__cd(__lhs).count() + __cd(__rhs).count());
	ldr	w20, [x19, 104]	//, MEM[(const unsigned int &)o_45(D) + 104]
	mov	w26, 16960	// tmp186,
	movk	w26, 0xf, lsl 16	// tmp186,,
	umaddl	x20, w20, w26, x0	// deadline$__d$__r, MEM[(const unsigned int &)o_45(D) + 104], tmp186, tmp242
// main.cpp:266:     while(!interrupted) {
	cbnz	w1, .L1653	// interrupted.147_126,
.L1652:
// main.cpp:268:         bool changed=false;
	mov	w25, 0	// changed,
.L1665:
// main.cpp:273:             if(key=='+'){o.delay=o.delay>50?o.delay-50:0;changed=true;deadline=chrono::steady_clock::now()+chrono::milliseconds(o.delay);}
	mov	w27, 50	// tmp230,
	b	.L1659		//
	.p2align 2,,3
.L1692:
// main.cpp:272:             if(key=='n' || key=='N') {if(o.paused) return true;}
	ldrb	w0, [x19, 102]	// o_45(D)->paused, o_45(D)->paused
	tbnz	x0, 0, .L1685	// o_45(D)->paused,,
.L1658:
// main.cpp:274:             if(key=='-'){o.delay=min(60000u,o.delay+50);changed=true;deadline=chrono::steady_clock::now()+chrono::milliseconds(o.delay);}
	cmp	w1, 45	// key.136_7,
	beq	.L1689		//,
.L1659:
// /usr/include/aarch64-linux-gnu/bits/unistd.h:28:   return __glibc_fortify (read, __nbytes, sizeof (char),
	mov	x1, x22	//, tmp224
	mov	x2, 1	//,
	mov	w0, 0	//,
	bl	read		//
// main.cpp:269:         while(read(STDIN_FILENO,&key,1)==1) {
	cmp	x0, 1	// tmp246,
	bne	.L1690		//,
// main.cpp:270:             if(key=='q' || key=='Q') return false;
	ldrb	w1, [sp, 31]	// key.136_7, key
// main.cpp:270:             if(key=='q' || key=='Q') return false;
	and	w0, w1, -33	// tmp189, key.136_7,
	and	w2, w0, 255	// _129, tmp189
	cmp	w0, 81	// tmp189,
	beq	.L1653		//,
// main.cpp:271:             if(key==' '){o.paused=!o.paused;changed=true;deadline=chrono::steady_clock::now()+chrono::milliseconds(o.delay);}
	cmp	w1, 32	// key.136_7,
	beq	.L1691		//,
.L1655:
// main.cpp:272:             if(key=='n' || key=='N') {if(o.paused) return true;}
	cmp	w2, 78	// _129,
	beq	.L1692		//,
// main.cpp:273:             if(key=='+'){o.delay=o.delay>50?o.delay-50:0;changed=true;deadline=chrono::steady_clock::now()+chrono::milliseconds(o.delay);}
	cmp	w1, 43	// key.136_7,
	bne	.L1658		//,
// main.cpp:273:             if(key=='+'){o.delay=o.delay>50?o.delay-50:0;changed=true;deadline=chrono::steady_clock::now()+chrono::milliseconds(o.delay);}
	ldr	w0, [x19, 104]	//, o_45(D)->delay
// main.cpp:273:             if(key=='+'){o.delay=o.delay>50?o.delay-50:0;changed=true;deadline=chrono::steady_clock::now()+chrono::milliseconds(o.delay);}
	mov	w25, w21	// changed, _30
// main.cpp:273:             if(key=='+'){o.delay=o.delay>50?o.delay-50:0;changed=true;deadline=chrono::steady_clock::now()+chrono::milliseconds(o.delay);}
	cmp	w0, 50	// o_45(D)->delay,
	csel	w0, w0, w27, cs	// tmp198, o_45(D)->delay, tmp230,
	sub	w0, w0, #50	// tmp202, tmp198,
// main.cpp:273:             if(key=='+'){o.delay=o.delay>50?o.delay-50:0;changed=true;deadline=chrono::steady_clock::now()+chrono::milliseconds(o.delay);}
	str	w0, [x19, 104]	// tmp202, o_45(D)->delay
// main.cpp:273:             if(key=='+'){o.delay=o.delay>50?o.delay-50:0;changed=true;deadline=chrono::steady_clock::now()+chrono::milliseconds(o.delay);}
	bl	_ZNSt6chrono3_V212steady_clock3nowEv		//
// /usr/include/c++/13/bits/chrono.h:702: 	return __cd(__cd(__lhs).count() + __cd(__rhs).count());
	ldr	w20, [x19, 104]	//, MEM[(const unsigned int &)o_45(D) + 104]
// main.cpp:274:             if(key=='-'){o.delay=min(60000u,o.delay+50);changed=true;deadline=chrono::steady_clock::now()+chrono::milliseconds(o.delay);}
	ldrb	w1, [sp, 31]	// key.136_7, key
// /usr/include/c++/13/bits/chrono.h:702: 	return __cd(__cd(__lhs).count() + __cd(__rhs).count());
	umaddl	x20, w20, w26, x0	// deadline$__d$__r, MEM[(const unsigned int &)o_45(D) + 104], tmp186, tmp244
// main.cpp:274:             if(key=='-'){o.delay=min(60000u,o.delay+50);changed=true;deadline=chrono::steady_clock::now()+chrono::milliseconds(o.delay);}
	cmp	w1, 45	// key.136_7,
	bne	.L1659		//,
.L1689:
// main.cpp:274:             if(key=='-'){o.delay=min(60000u,o.delay+50);changed=true;deadline=chrono::steady_clock::now()+chrono::milliseconds(o.delay);}
	ldr	w0, [x19, 104]	//, o_45(D)->delay
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	mov	w1, 60000	// tmp208,
// main.cpp:274:             if(key=='-'){o.delay=min(60000u,o.delay+50);changed=true;deadline=chrono::steady_clock::now()+chrono::milliseconds(o.delay);}
	mov	w25, w21	// changed, _30
// main.cpp:274:             if(key=='-'){o.delay=min(60000u,o.delay+50);changed=true;deadline=chrono::steady_clock::now()+chrono::milliseconds(o.delay);}
	add	w0, w0, 50	// tmp205, o_45(D)->delay,
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	w0, w1	// tmp205, tmp208
	csel	w0, w0, w1, ls	// tmp207, tmp205, tmp208,
// main.cpp:274:             if(key=='-'){o.delay=min(60000u,o.delay+50);changed=true;deadline=chrono::steady_clock::now()+chrono::milliseconds(o.delay);}
	str	w0, [x19, 104]	// tmp207, o_45(D)->delay
// main.cpp:274:             if(key=='-'){o.delay=min(60000u,o.delay+50);changed=true;deadline=chrono::steady_clock::now()+chrono::milliseconds(o.delay);}
	bl	_ZNSt6chrono3_V212steady_clock3nowEv		//
// /usr/include/c++/13/bits/chrono.h:702: 	return __cd(__cd(__lhs).count() + __cd(__rhs).count());
	ldr	w20, [x19, 104]	//, MEM[(const unsigned int &)o_45(D) + 104]
	mov	w1, 16960	// tmp211,
	movk	w1, 0xf, lsl 16	// tmp211,,
	umaddl	x20, w20, w1, x0	// deadline$__d$__r, MEM[(const unsigned int &)o_45(D) + 104], tmp211, tmp245
	b	.L1665		//
	.p2align 2,,3
.L1690:
// main.cpp:276:         if(changed) draw(cells,o,step,initial_trees,true);
	tbnz	x25, 0, .L1693	// changed,,
.L1661:
// main.cpp:277:         if(!o.paused && chrono::steady_clock::now()>=deadline) return true;
	ldrb	w0, [x19, 102]	// o_45(D)->paused, o_45(D)->paused
	tbnz	x0, 0, .L1662	// o_45(D)->paused,,
// main.cpp:277:         if(!o.paused && chrono::steady_clock::now()>=deadline) return true;
	bl	_ZNSt6chrono3_V212steady_clock3nowEv		//
// main.cpp:277:         if(!o.paused && chrono::steady_clock::now()>=deadline) return true;
	cmp	x20, x0	// deadline$__d$__r, tmp247
	ble	.L1685		//,
.L1662:
// /usr/include/c++/13/bits/this_thread_sleep.h:75: 	struct ::timespec __ts =
	adrp	x0, .LC133	// tmp255,
	add	x25, sp, 32	// tmp225,,
	ldr	q0, [x0, #:lo12:.LC133]	// tmp216,
	str	q0, [sp, 32]	// tmp216, MEM <vector(2) long int> [(long int *)_77]
.L1664:
// /usr/include/c++/13/bits/this_thread_sleep.h:80: 	while (::nanosleep(&__ts, &__ts) == -1 && errno == EINTR)
	mov	x1, x25	//, tmp225
	mov	x0, x25	//, tmp225
	bl	nanosleep		//
// /usr/include/c++/13/bits/this_thread_sleep.h:80: 	while (::nanosleep(&__ts, &__ts) == -1 && errno == EINTR)
	cmn	w0, #1	// tmp248,
	beq	.L1694		//,
.L1663:
// main.cpp:266:     while(!interrupted) {
	ldr	w0, [x28, #:lo12:.LANCHOR0]	//, interrupted
	cbz	w0, .L1652	// interrupted.147_25,
	.p2align 3,,7
.L1653:
// main.cpp:280:     return false;
	ldp	x23, x24, [sp, 112]	//,,
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 23
	mov	w21, 0	// _30,
	ldp	x25, x26, [sp, 128]	//,,
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 144]	//,,
	.cfi_restore 28
	.cfi_restore 27
	b	.L1651		//
	.p2align 2,,3
.L1691:
	.cfi_restore_state
// main.cpp:271:             if(key==' '){o.paused=!o.paused;changed=true;deadline=chrono::steady_clock::now()+chrono::milliseconds(o.delay);}
	ldrb	w0, [x19, 102]	//, o_45(D)->paused
// main.cpp:271:             if(key==' '){o.paused=!o.paused;changed=true;deadline=chrono::steady_clock::now()+chrono::milliseconds(o.delay);}
	mov	w25, w21	// changed, _30
// main.cpp:271:             if(key==' '){o.paused=!o.paused;changed=true;deadline=chrono::steady_clock::now()+chrono::milliseconds(o.delay);}
	eor	w0, w0, 1	// tmp191, o_45(D)->paused,
// main.cpp:271:             if(key==' '){o.paused=!o.paused;changed=true;deadline=chrono::steady_clock::now()+chrono::milliseconds(o.delay);}
	strb	w0, [x19, 102]	// tmp191, o_45(D)->paused
// main.cpp:271:             if(key==' '){o.paused=!o.paused;changed=true;deadline=chrono::steady_clock::now()+chrono::milliseconds(o.delay);}
	bl	_ZNSt6chrono3_V212steady_clock3nowEv		//
// /usr/include/c++/13/bits/chrono.h:702: 	return __cd(__cd(__lhs).count() + __cd(__rhs).count());
	ldr	w20, [x19, 104]	//, MEM[(const unsigned int &)o_45(D) + 104]
// main.cpp:272:             if(key=='n' || key=='N') {if(o.paused) return true;}
	ldrb	w1, [sp, 31]	// key.136_7, key
// main.cpp:272:             if(key=='n' || key=='N') {if(o.paused) return true;}
	and	w2, w1, -33	// tmp195, key.136_7,
// /usr/include/c++/13/bits/chrono.h:702: 	return __cd(__cd(__lhs).count() + __cd(__rhs).count());
	umaddl	x20, w20, w26, x0	// deadline$__d$__r, MEM[(const unsigned int &)o_45(D) + 104], tmp186, tmp243
// main.cpp:272:             if(key=='n' || key=='N') {if(o.paused) return true;}
	and	w2, w2, 255	// _129, tmp195
	b	.L1655		//
	.p2align 2,,3
.L1694:
// /usr/include/c++/13/bits/this_thread_sleep.h:80: 	while (::nanosleep(&__ts, &__ts) == -1 && errno == EINTR)
	bl	__errno_location		//
// /usr/include/c++/13/bits/this_thread_sleep.h:80: 	while (::nanosleep(&__ts, &__ts) == -1 && errno == EINTR)
	ldr	w0, [x0]	//, *_122
	cmp	w0, 4	// *_122,
	bne	.L1663		//,
	b	.L1664		//
	.p2align 2,,3
.L1685:
	ldp	x23, x24, [sp, 112]	//,,
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 23
	ldp	x25, x26, [sp, 128]	//,,
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 144]	//,,
	.cfi_restore 28
	.cfi_restore 27
	b	.L1651		//
.L1693:
	.cfi_restore_state
// main.cpp:276:         if(changed) draw(cells,o,step,initial_trees,true);
	ldr	x0, [sp, 8]	//, %sfp
	mov	x3, x24	//, initial_trees
	mov	x2, x23	//, step
	mov	x1, x19	//, o
	mov	w4, 1	//,
	bl	_Z4drawRKSt6vectorI4CellSaIS0_EERK7Optionsmmb		//
	b	.L1661		//
.L1687:
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	stp	x23, x24, [sp, 112]	//,,
	.cfi_offset 24, -40
	.cfi_offset 23, -48
	stp	x25, x26, [sp, 128]	//,,
	.cfi_offset 26, -24
	.cfi_offset 25, -32
	stp	x27, x28, [sp, 144]	//,,
	.cfi_offset 28, -8
	.cfi_offset 27, -16
// main.cpp:281: }
	bl	__stack_chk_fail		//
	.cfi_endproc
.LFE4505:
	.size	_Z10wait_frameR7OptionsR13TerminalInputRKSt6vectorI4CellSaIS4_EEmm, .-_Z10wait_frameR7OptionsR13TerminalInputRKSt6vectorI4CellSaIS4_EEmm
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, %function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB5608:
	.cfi_startproc
// /usr/include/c++/13/bits/random.tcc:407: 			   | (_M_x[__k + 1] & __lower_mask));
	adrp	x2, .LC135	// tmp202,
// /usr/include/c++/13/bits/random.tcc:406: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	adrp	x1, .LC134	// tmp201,
	add	x5, x0, 1816	// _129, this,
// /usr/include/c++/13/bits/random.tcc:407: 			   | (_M_x[__k + 1] & __lower_mask));
	ldr	q5, [x2, #:lo12:.LC135]	// tmp150,
// /usr/include/c++/13/bits/random.tcc:409: 		       ^ ((__y & 0x01) ? __a : 0));
	adrp	x2, .LC136	// tmp203,
// /usr/include/c++/13/bits/random.tcc:406: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	ldr	q6, [x1, #:lo12:.LC134]	// tmp147,
	add	x1, x0, 8	// vectp_this.1281, this,
// /usr/include/c++/13/bits/random.tcc:409: 		       ^ ((__y & 0x01) ? __a : 0));
	ldr	q4, [x2, #:lo12:.LC136]	// tmp155,
// /usr/include/c++/13/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	adrp	x2, .LC137	// tmp204,
	ldr	q3, [x2, #:lo12:.LC137]	// tmp158,
	.p2align 3,,7
.L1696:
// /usr/include/c++/13/bits/random.tcc:404:       for (size_t __k = 0; __k < (__n - __m); ++__k)
	add	x1, x1, 16	// vectp_this.1281, vectp_this.1281,
// /usr/include/c++/13/bits/random.tcc:406: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	ldr	q0, [x1, -24]	// vect__1.1278, MEM <vector(2) long unsigned int> [(long unsigned int *)vectp_this.1280_153 + -8B]
// /usr/include/c++/13/bits/random.tcc:407: 			   | (_M_x[__k + 1] & __lower_mask));
	ldr	q2, [x1, -16]	// vect__4.1282, MEM <vector(2) long unsigned int> [(long unsigned int *)vectp_this.1280_153]
// /usr/include/c++/13/bits/random.tcc:406: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	and	v0.16b, v0.16b, v6.16b	// vect__2.1279, vect__1.1278, tmp147
// /usr/include/c++/13/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	ldr	q1, [x1, 3152]	// vect__7.1287, MEM <vector(2) long unsigned int> [(long unsigned int *)vectp_this.1280_153 + 3168B]
// /usr/include/c++/13/bits/random.tcc:407: 			   | (_M_x[__k + 1] & __lower_mask));
	and	v2.16b, v2.16b, v5.16b	// vect__5.1283, vect__4.1282, tmp150
// /usr/include/c++/13/bits/random.tcc:406: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	orr	v0.16b, v0.16b, v2.16b	// vect___y_46.1284, vect__2.1279, vect__5.1283
// /usr/include/c++/13/bits/random.tcc:409: 		       ^ ((__y & 0x01) ? __a : 0));
	and	v2.16b, v0.16b, v4.16b	// vect__10.1290, vect___y_46.1284, tmp155
// /usr/include/c++/13/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	ushr	v0.2d, v0.2d, 1	// vect__8.1288, vect___y_46.1284,
// /usr/include/c++/13/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	neg	v2.2d, v2.2d	// vect__98.1291, vect__10.1290
// /usr/include/c++/13/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	eor	v0.16b, v1.16b, v0.16b	// vect__9.1289, vect__7.1287, vect__8.1288
// /usr/include/c++/13/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	and	v1.16b, v2.16b, v3.16b	// vect__99.1292, vect__98.1291, tmp158
	eor	v0.16b, v0.16b, v1.16b	// vect_prephitmp_86.1293, vect__9.1289, vect__99.1292
	str	q0, [x1, -24]	// vect_prephitmp_86.1293, MEM <vector(2) long unsigned int> [(long unsigned int *)vectp_this.1280_153 + -8B]
	cmp	x5, x1	// _129, vectp_this.1281
	bne	.L1696		//,
// /usr/include/c++/13/bits/random.tcc:406: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	ldr	x2, [x0, 1808]	// this_40(D)->_M_x[226], this_40(D)->_M_x[226]
// /usr/include/c++/13/bits/random.tcc:414: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	adrp	x7, .LC134	// tmp205,
// /usr/include/c++/13/bits/random.tcc:407: 			   | (_M_x[__k + 1] & __lower_mask));
	ldr	x1, [x0, 1816]	// this_40(D)->_M_x[227], this_40(D)->_M_x[227]
	add	x6, x0, 1824	// vectp_this.1259, this,
// /usr/include/c++/13/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	ldr	x4, [x0, 4984]	// this_40(D)->_M_x[623], this_40(D)->_M_x[623]
// /usr/include/c++/13/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	mov	x3, 0	// ivtmp.1302,
// /usr/include/c++/13/bits/random.tcc:414: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	ldr	q6, [x7, #:lo12:.LC134]	// tmp174,
// /usr/include/c++/13/bits/random.tcc:409: 		       ^ ((__y & 0x01) ? __a : 0));
	fmov	x7, d3	// tmp206, tmp158
// /usr/include/c++/13/bits/random.tcc:406: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	bfi	x2, x1, 0, 31	// __y, this_40(D)->_M_x[227],
// /usr/include/c++/13/bits/random.tcc:409: 		       ^ ((__y & 0x01) ? __a : 0));
	sbfx	x1, x1, 0, 1	// tmp165, this_40(D)->_M_x[227],,
// /usr/include/c++/13/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	eor	x2, x4, x2, lsr 1	// tmp169, this_40(D)->_M_x[623], __y,
// /usr/include/c++/13/bits/random.tcc:417: 		       ^ ((__y & 0x01) ? __a : 0));
	adrp	x4, .LC136	// tmp208,
// /usr/include/c++/13/bits/random.tcc:409: 		       ^ ((__y & 0x01) ? __a : 0));
	and	x1, x1, x7	// tmp166, tmp165, tmp206
// /usr/include/c++/13/bits/random.tcc:415: 			   | (_M_x[__k + 1] & __lower_mask));
	adrp	x7, .LC135	// tmp207,
// /usr/include/c++/13/bits/random.tcc:409: 		       ^ ((__y & 0x01) ? __a : 0));
	eor	x1, x1, x2	// tmp171, tmp166, tmp169
// /usr/include/c++/13/bits/random.tcc:416: 	  _M_x[__k] = (_M_x[__k + (__m - __n)] ^ (__y >> 1)
	adrp	x2, .LC137	// tmp209,
// /usr/include/c++/13/bits/random.tcc:415: 			   | (_M_x[__k + 1] & __lower_mask));
	ldr	q5, [x7, #:lo12:.LC135]	// tmp177,
// /usr/include/c++/13/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	str	x1, [x0, 1808]	// tmp171, this_40(D)->_M_x[226]
// /usr/include/c++/13/bits/random.tcc:417: 		       ^ ((__y & 0x01) ? __a : 0));
	ldr	q4, [x4, #:lo12:.LC136]	// tmp182,
// /usr/include/c++/13/bits/random.tcc:416: 	  _M_x[__k] = (_M_x[__k + (__m - __n)] ^ (__y >> 1)
	ldr	q3, [x2, #:lo12:.LC137]	// tmp185,
.L1697:
// /usr/include/c++/13/bits/random.tcc:414: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	ldr	q0, [x5, x3]	// vect__12.1256, MEM <vector(2) long unsigned int> [(long unsigned int *)_129 + ivtmp.1302_133 * 1]
// /usr/include/c++/13/bits/random.tcc:415: 			   | (_M_x[__k + 1] & __lower_mask));
	ldr	q2, [x6, x3]	// vect__15.1260, MEM <vector(2) long unsigned int> [(long unsigned int *)vectp_this.1259_102 + ivtmp.1302_133 * 1]
// /usr/include/c++/13/bits/random.tcc:414: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	and	v0.16b, v0.16b, v6.16b	// vect__13.1257, vect__12.1256, tmp174
// /usr/include/c++/13/bits/random.tcc:416: 	  _M_x[__k] = (_M_x[__k + (__m - __n)] ^ (__y >> 1)
	ldr	q1, [x0, x3]	// vect__18.1265, MEM <vector(2) long unsigned int> [(long unsigned int *)this_40(D) + ivtmp.1302_133 * 1]
// /usr/include/c++/13/bits/random.tcc:415: 			   | (_M_x[__k + 1] & __lower_mask));
	and	v2.16b, v2.16b, v5.16b	// vect__16.1261, vect__15.1260, tmp177
// /usr/include/c++/13/bits/random.tcc:414: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	orr	v0.16b, v0.16b, v2.16b	// vect___y_44.1262, vect__13.1257, vect__16.1261
// /usr/include/c++/13/bits/random.tcc:417: 		       ^ ((__y & 0x01) ? __a : 0));
	and	v2.16b, v0.16b, v4.16b	// vect__21.1268, vect___y_44.1262, tmp182
// /usr/include/c++/13/bits/random.tcc:416: 	  _M_x[__k] = (_M_x[__k + (__m - __n)] ^ (__y >> 1)
	ushr	v0.2d, v0.2d, 1	// vect__19.1266, vect___y_44.1262,
// /usr/include/c++/13/bits/random.tcc:416: 	  _M_x[__k] = (_M_x[__k + (__m - __n)] ^ (__y >> 1)
	neg	v2.2d, v2.2d	// vect__61.1269, vect__21.1268
// /usr/include/c++/13/bits/random.tcc:416: 	  _M_x[__k] = (_M_x[__k + (__m - __n)] ^ (__y >> 1)
	eor	v0.16b, v1.16b, v0.16b	// vect__20.1267, vect__18.1265, vect__19.1266
// /usr/include/c++/13/bits/random.tcc:416: 	  _M_x[__k] = (_M_x[__k + (__m - __n)] ^ (__y >> 1)
	and	v1.16b, v2.16b, v3.16b	// vect__60.1270, vect__61.1269, tmp185
	eor	v0.16b, v0.16b, v1.16b	// vect_prephitmp_89.1271, vect__20.1267, vect__60.1270
	str	q0, [x5, x3]	// vect_prephitmp_89.1271, MEM <vector(2) long unsigned int> [(long unsigned int *)_129 + ivtmp.1302_133 * 1]
	add	x3, x3, 16	// ivtmp.1302, ivtmp.1302,
	cmp	x3, 3168	// ivtmp.1302,
	bne	.L1697		//,
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
	fmov	x3, d3	// tmp210, tmp185
	and	x2, x2, x3	// tmp196, tmp195, tmp210
	eor	x1, x1, x2	// tmp198, tmp192, tmp196
// /usr/include/c++/13/bits/random.tcc:422:       _M_x[__n - 1] = (_M_x[__m - 1] ^ (__y >> 1)
	str	x1, [x0, 4984]	// tmp198, this_40(D)->_M_x[623]
// /usr/include/c++/13/bits/random.tcc:425:     }
	ret	
	.cfi_endproc
.LFE5608:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.section	.rodata.str1.8
	.align	3
.LC138:
	.string	"cannot create std::vector larger than max_size()"
	.align	3
.LC139:
	.string	"El foco cae sobre agua o un claro: elige otra celda con vegetaci\303\263n"
	.text
	.align	2
	.p2align 4,,11
	.global	_Z10initializeRK7Options
	.type	_Z10initializeRK7Options, %function
_Z10initializeRK7Options:
.LFB4484:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4484
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
	mov	x25, x0	// o, tmp336
	adrp	x0, :got:__stack_chk_guard	// tmp205,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp205,
// /usr/include/c++/13/bits/stl_vector.h:1909: 	if (__n > _S_max_size(_Tp_alloc_type(__a)))
	mov	x1, 1152921504606846975	// tmp206,
// main.cpp:116:     vector<Cell> cells(o.rows*o.cols);
	ldp	x3, x24, [x25]	// prephitmp_440, _27, o_49(D)->rows
// main.cpp:115: vector<Cell> initialize(const Options& o) {
	ldr	x2, [x0]	// tmp349,
	str	x2, [sp, 5016]	// tmp349, D.122171
	mov	x2, 0	// tmp349
// main.cpp:116:     vector<Cell> cells(o.rows*o.cols);
	mul	x22, x3, x24	// _3, prephitmp_440, _27
// /usr/include/c++/13/bits/stl_vector.h:1909: 	if (__n > _S_max_size(_Tp_alloc_type(__a)))
	cmp	x22, x1	// _3, tmp206
	bhi	.L1762		//,
	str	x19, [sp, 5040]	//,
	.cfi_offset 19, -144
	mov	x21, x8	// <retval>, tmp335
	str	x20, [sp, 5048]	//,
	.cfi_offset 20, -136
// /usr/include/c++/13/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	stp	xzr, xzr, [x8]	// MEM <vector(2) long unsigned int> [(struct Cell * *)cells_51(D)]
// /usr/include/c++/13/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	str	xzr, [x8, 16]	//, MEM[(struct _Vector_impl_data *)cells_51(D)]._M_end_of_storage
// /usr/include/c++/13/bits/stl_vector.h:381: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	cbz	x22, .L1763	// _3,
// /usr/include/c++/13/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	lsl	x19, x22, 3	// _134, _3,
	mov	x0, x19	//, _134
.LEHB202:
	bl	_Znwm		//
.LEHE202:
	mov	x20, x0	// iftmp.52_53, tmp337
// /usr/include/c++/13/bits/stl_vector.h:400: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	add	x5, x0, x19	// __first, iftmp.52_53, _134
// main.cpp:119:     for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
	ldr	x3, [x25]	// prephitmp_440, o_49(D)->rows
// /usr/include/c++/13/bits/stl_vector.h:398: 	this->_M_impl._M_start = this->_M_allocate(__n);
	str	x20, [x21]	// iftmp.52_53, MEM[(struct _Vector_base *)cells_51(D)]._M_impl.D.100663._M_start
// /usr/include/c++/13/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	str	wzr, [x20]	//, _135->moisture
// /usr/include/c++/13/bits/stl_uninitialized.h:667: 	      ++__first;
	add	x0, x0, 8	// __first, iftmp.52_53,
// /usr/include/c++/13/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	strh	wzr, [x20, 4]	//, MEM <vector(2) unsigned char> [(unsigned char *)_135 + 4B]
// /usr/include/c++/13/bits/stl_vector.h:400: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	str	x5, [x21, 16]	// __first, MEM[(struct _Vector_base *)cells_51(D)]._M_impl.D.100663._M_end_of_storage
// /usr/include/c++/13/bits/stl_algobase.h:1123:       if (__n <= 0)
	cmp	x22, 1	// _3,
	beq	.L1705		//,
// main.cpp:128:     Cell &focus=cells[index(o.fire_row,o.fire_col,o.cols)];
	ldr	x24, [x25, 8]	// _27, o_49(D)->cols
// /usr/include/c++/13/bits/stl_algobase.h:918:       for (; __first != __last; ++__first)
	cmp	x0, x5	// __first, __first
	beq	.L1704		//,
	.p2align 3,,7
.L1707:
// /usr/include/c++/13/bits/stl_algobase.h:919: 	*__first = __value;
	ldr	x1, [x20]	// MEM[(const struct Cell &)_135], MEM[(const struct Cell &)_135]
	str	x1, [x0], 8	// MEM[(const struct Cell &)_135], MEM[(struct Cell *)__first_276]
// /usr/include/c++/13/bits/stl_algobase.h:918:       for (; __first != __last; ++__first)
	cmp	x0, x5	// __first, __first
	bne	.L1707		//,
.L1704:
	add	x26, sp, 16	// tmp328,,
// main.cpp:117:     mt19937 rng(o.seed);
	ldr	w1, [x25, 24]	// rng___M_x_I_lsm0.1326, o_49(D)->seed
// /usr/include/c++/13/bits/random.tcc:337: 	  __x *= __f;
	mov	x4, 35173	// tmp215,
	add	x0, x26, 8	// ivtmp.1350, tmp328,
// /usr/include/c++/13/bits/random.tcc:333:       for (size_t __i = 1; __i < state_size; ++__i)
	mov	x2, 1	// __i,
// /usr/include/c++/13/bits/random.tcc:337: 	  __x *= __f;
	movk	x4, 0x6c07, lsl 16	// tmp215,,
// /usr/include/c++/13/bits/stl_vector.h:1717: 	this->_M_impl._M_finish =
	str	x5, [x21, 8]	// __first, *cells_51(D).D.101324._M_impl.D.100663._M_finish
// /usr/include/c++/13/bits/random.tcc:330:       _M_x[0] = __detail::__mod<_UIntType,
	str	x1, [sp, 16]	// rng___M_x_I_lsm0.1326, MEM[(struct mersenne_twister_engine *)&rng]._M_x[0]
	.p2align 3,,7
.L1708:
// /usr/include/c++/13/bits/random.tcc:336: 	  __x ^= __x >> (__w - 2);
	eor	x1, x1, x1, lsr 30	// __x, rng___M_x_I_lsm0.1326, rng___M_x_I_lsm0.1326,
// /usr/include/c++/13/bits/random.h:143: 	    __res %= __m;
	madd	w1, w1, w4, w2	// rng___M_x_I_lsm0.1326, __x, tmp215, __i
// /usr/include/c++/13/bits/random.tcc:333:       for (size_t __i = 1; __i < state_size; ++__i)
	add	x2, x2, 1	// __i, __i,
// /usr/include/c++/13/bits/random.tcc:339: 	  _M_x[__i] = __detail::__mod<_UIntType,
	str	x1, [x0], 8	// rng___M_x_I_lsm0.1326, MEM[(long unsigned int *)_356]
// /usr/include/c++/13/bits/random.tcc:333:       for (size_t __i = 1; __i < state_size; ++__i)
	cmp	x2, 624	// __i,
	bne	.L1708		//,
// /usr/include/c++/13/bits/random.tcc:342:       _M_p = state_size;
	str	x2, [sp, 5008]	// __i, MEM[(struct mersenne_twister_engine *)&rng]._M_p
// main.cpp:119:     for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
	mov	x19, 0	// r,
// main.cpp:119:     for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
	cbz	x3, .L1710	// prephitmp_440,
// main.cpp:121:         bool lake=pow((x-.72f)/.105f,2)+pow((y-.55f)/.16f,2)<1;
	mov	w0, 2621	// tmp345,
// main.cpp:121:         bool lake=pow((x-.72f)/.105f,2)+pow((y-.55f)/.16f,2)<1;
	mov	w1, 20972	// tmp344,
// main.cpp:121:         bool lake=pow((x-.72f)/.105f,2)+pow((y-.55f)/.16f,2)<1;
	movk	w0, 0x3dd7, lsl 16	// tmp345,,
	str	d12, [sp, 5152]	//,
	.cfi_offset 76, -32
	fmov	s12, w0	// tmp331, tmp345
// main.cpp:121:         bool lake=pow((x-.72f)/.105f,2)+pow((y-.55f)/.16f,2)<1;
	mov	w0, 55050	// tmp347,
// main.cpp:121:         bool lake=pow((x-.72f)/.105f,2)+pow((y-.55f)/.16f,2)<1;
	movk	w1, 0x3f38, lsl 16	// tmp344,,
// main.cpp:121:         bool lake=pow((x-.72f)/.105f,2)+pow((y-.55f)/.16f,2)<1;
	movk	w0, 0x3e23, lsl 16	// tmp347,,
	str	d9, [sp, 5128]	//,
	.cfi_offset 73, -56
	fmov	s9, w0	// tmp333, tmp347
// main.cpp:124:         a.state=lake?WATER:(z<.12f?EMPTY:TREE);
	mov	w0, 49807	// tmp348,
	str	d13, [sp, 5160]	//,
	.cfi_offset 77, -24
// main.cpp:121:         bool lake=pow((x-.72f)/.105f,2)+pow((y-.55f)/.16f,2)<1;
	fmov	s13, w1	// tmp330, tmp344
// main.cpp:121:         bool lake=pow((x-.72f)/.105f,2)+pow((y-.55f)/.16f,2)<1;
	mov	w1, 52429	// tmp346,
	movk	w1, 0x3f0c, lsl 16	// tmp346,,
// main.cpp:124:         a.state=lake?WATER:(z<.12f?EMPTY:TREE);
	movk	w0, 0x3df5, lsl 16	// tmp348,,
	str	w0, [sp, 12]	// tmp348, %sfp
	str	x27, [sp, 5104]	//,
	.cfi_offset 27, -80
	str	d11, [sp, 5144]	//,
	.cfi_offset 75, -40
// main.cpp:121:         bool lake=pow((x-.72f)/.105f,2)+pow((y-.55f)/.16f,2)<1;
	fmov	s11, w1	// tmp332, tmp346
	str	d8, [sp, 5120]	//,
	.cfi_offset 72, -64
	str	d10, [sp, 5136]	//,
	.cfi_offset 74, -48
	str	d14, [sp, 5168]	//,
	.cfi_offset 78, -16
	str	d15, [sp, 5176]	//,
	.cfi_offset 79, -8
	.p2align 3,,7
.L1709:
// main.cpp:119:     for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
	cbz	x24, .L1759	// _27,
// main.cpp:120:         float x=(static_cast<float>(c)+.5f)/o.cols, y=(static_cast<float>(r)+.5f)/o.rows;
	ucvtf	s10, x19	// tmp218, r
// main.cpp:120:         float x=(static_cast<float>(c)+.5f)/o.cols, y=(static_cast<float>(r)+.5f)/o.rows;
	fmov	s0, 5.0e-1	// tmp219,
// /usr/include/c++/13/bits/random.tcc:464:       __z ^= (__z << __s) & __b;
	mov	x27, 22144	// tmp241,
// /usr/include/c++/13/bits/random.tcc:3370:       __ret = __sum / __tmp;
	mov	w0, 796917760	// tmp343,
// /usr/include/c++/13/bits/random.tcc:458:       if (_M_p >= state_size)
	ldr	x2, [sp, 5008]	// prephitmp_502, rng._M_p
// main.cpp:119:     for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
	mov	x23, 0	// c,
// main.cpp:120:         float x=(static_cast<float>(c)+.5f)/o.cols, y=(static_cast<float>(r)+.5f)/o.rows;
	fadd	s10, s10, s0	// _438, tmp218, tmp219
// /usr/include/c++/13/bits/random.tcc:3370:       __ret = __sum / __tmp;
	fmov	s14, w0	// tmp248, tmp343
// /usr/include/c++/13/bits/random.tcc:464:       __z ^= (__z << __s) & __b;
	movk	x27, 0x9d2c, lsl 16	// tmp241,,
	b	.L1725		//
	.p2align 2,,3
.L1711:
// /usr/include/c++/13/bits/random.tcc:462:       result_type __z = _M_x[_M_p++];
	ldr	x1, [x26, x2, lsl 3]	// __z, rng._M_x[prephitmp_457]
// /usr/include/c++/13/bits/random.tcc:465:       __z ^= (__z << __t) & __c;
	mov	x0, 4022730752	// tmp243,
// /usr/include/c++/13/bits/random.tcc:3367: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	movi	v1.2s, #0	// tmp247
// /usr/include/c++/13/bits/random.tcc:3371:       if (__builtin_expect(__ret >= _RealType(1), 0))
	fmov	s2, 1.0e+0	// tmp249,
// /usr/include/c++/13/bits/random.tcc:462:       result_type __z = _M_x[_M_p++];
	add	x2, x2, 1	// _175, prephitmp_502,
	str	x2, [sp, 5008]	// _175, rng._M_p
// /usr/include/c++/13/bits/random.tcc:463:       __z ^= (__z >> __u) & __d;
	ubfx	x3, x1, 11, 32	// _178, __z,,
// /usr/include/c++/13/bits/random.tcc:463:       __z ^= (__z >> __u) & __d;
	eor	x1, x1, x3	// __z, __z, _178
// /usr/include/c++/13/bits/random.tcc:464:       __z ^= (__z << __s) & __b;
	and	x3, x27, x1, lsl 7	// _181, tmp241, __z,
// /usr/include/c++/13/bits/random.tcc:464:       __z ^= (__z << __s) & __b;
	eor	x1, x1, x3	// __z, __z, _181
// /usr/include/c++/13/bits/random.tcc:465:       __z ^= (__z << __t) & __c;
	and	x0, x0, x1, lsl 15	// _184, tmp243, __z,
// /usr/include/c++/13/bits/random.tcc:465:       __z ^= (__z << __t) & __c;
	eor	x1, x1, x0	// __z, __z, _184
// /usr/include/c++/13/bits/random.tcc:466:       __z ^= (__z >> __l);
	eor	x1, x1, x1, lsr 18	// __z, __z, __z,
// /usr/include/c++/13/bits/random.tcc:3367: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	ucvtf	s0, x1	// tmp245, __z
// /usr/include/c++/13/bits/random.tcc:3367: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	fadd	s0, s0, s1	// __sum, tmp245, tmp247
// /usr/include/c++/13/bits/random.tcc:3370:       __ret = __sum / __tmp;
	fmul	s0, s0, s14	// __ret, __sum, tmp248
// /usr/include/c++/13/bits/random.tcc:3371:       if (__builtin_expect(__ret >= _RealType(1), 0))
	fcmpe	s0, s2	// __ret, tmp249
	bge	.L1739		//,
// /usr/include/c++/13/bits/random.h:1909: 	  return (__aurng() * (__p.b() - __p.a())) + __p.a();
	fadd	s1, s0, s1	// _459, __ret, tmp247
.L1712:
// /usr/include/c++/13/bits/random.tcc:458:       if (_M_p >= state_size)
	cmp	x2, 623	// _175,
	bhi	.L1764		//,
.L1713:
// /usr/include/c++/13/bits/random.tcc:462:       result_type __z = _M_x[_M_p++];
	ldr	x1, [x26, x2, lsl 3]	// __z, rng._M_x[prephitmp_464]
// /usr/include/c++/13/bits/random.tcc:465:       __z ^= (__z << __t) & __c;
	mov	x3, 4022730752	// tmp258,
// /usr/include/c++/13/bits/random.tcc:3367: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	movi	v2.2s, #0	// tmp262
// /usr/include/c++/13/bits/random.tcc:3371:       if (__builtin_expect(__ret >= _RealType(1), 0))
	fmov	s4, 1.0e+0	// tmp264,
// /usr/include/c++/13/bits/random.tcc:462:       result_type __z = _M_x[_M_p++];
	add	x2, x2, 1	// prephitmp_502, _175,
	str	x2, [sp, 5008]	// prephitmp_502, rng._M_p
// /usr/include/c++/13/bits/random.tcc:463:       __z ^= (__z >> __u) & __d;
	ubfx	x0, x1, 11, 32	// _193, __z,,
// /usr/include/c++/13/bits/random.tcc:463:       __z ^= (__z >> __u) & __d;
	eor	x1, x1, x0	// __z, __z, _193
// /usr/include/c++/13/bits/random.tcc:464:       __z ^= (__z << __s) & __b;
	and	x0, x27, x1, lsl 7	// _196, tmp241, __z,
// /usr/include/c++/13/bits/random.tcc:464:       __z ^= (__z << __s) & __b;
	eor	x1, x1, x0	// __z, __z, _196
// /usr/include/c++/13/bits/random.tcc:465:       __z ^= (__z << __t) & __c;
	and	x3, x3, x1, lsl 15	// _199, tmp258, __z,
// /usr/include/c++/13/bits/random.tcc:465:       __z ^= (__z << __t) & __c;
	eor	x1, x1, x3	// __z, __z, _199
// /usr/include/c++/13/bits/random.tcc:466:       __z ^= (__z >> __l);
	eor	x1, x1, x1, lsr 18	// __z, __z, __z,
// /usr/include/c++/13/bits/random.tcc:3367: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	ucvtf	s0, x1	// tmp260, __z
// /usr/include/c++/13/bits/random.tcc:3367: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	fadd	s0, s0, s2	// __sum, tmp260, tmp262
// /usr/include/c++/13/bits/random.tcc:3370:       __ret = __sum / __tmp;
	fmul	s0, s0, s14	// __ret, __sum, tmp248
// /usr/include/c++/13/bits/random.tcc:3371:       if (__builtin_expect(__ret >= _RealType(1), 0))
	fcmpe	s0, s4	// __ret, tmp264
	bge	.L1740		//,
// /usr/include/c++/13/bits/random.h:1909: 	  return (__aurng() * (__p.b() - __p.a())) + __p.a();
	fadd	s15, s0, s2	// _467, __ret, tmp262
.L1714:
// main.cpp:124:         a.state=lake?WATER:(z<.12f?EMPTY:TREE);
	fmov	d0, 1.0e+0	// tmp269,
// main.cpp:114: size_t index(size_t r,size_t c,size_t cols) { return r*cols+c; }
	madd	x22, x19, x24, x23	// tmp267, r, _27, c
// main.cpp:124:         a.state=lake?WATER:(z<.12f?EMPTY:TREE);
	fcmpe	d8, d0	// _17, tmp269
// /usr/include/c++/13/bits/stl_vector.h:1129: 	return *(this->_M_impl._M_start + __n);
	add	x22, x20, x22, lsl 3	// _91, iftmp.52_53, tmp267,
// main.cpp:124:         a.state=lake?WATER:(z<.12f?EMPTY:TREE);
	bmi	.L1745		//,
// main.cpp:124:         a.state=lake?WATER:(z<.12f?EMPTY:TREE);
	ldr	s0, [sp, 12]	// tmp334, %sfp
	fcmpe	s1, s0	// _459, tmp334
	cset	w0, mi	// tmp273,
// main.cpp:124:         a.state=lake?WATER:(z<.12f?EMPTY:TREE);
	eor	w0, w0, 1	// _19, tmp273,
// main.cpp:124:         a.state=lake?WATER:(z<.12f?EMPTY:TREE);
	strb	w0, [x22, 5]	// _19, MEM[(struct Cell &)_91].state
// main.cpp:125:         a.fuel=a.state==TREE?static_cast<uint8_t>(3+static_cast<int>(u(rng)*4)):0;
	cbz	w0, .L1717	// _19,
// /usr/include/c++/13/bits/random.tcc:458:       if (_M_p >= state_size)
	cmp	x2, 623	// prephitmp_502,
	bhi	.L1721		//,
.L1722:
// /usr/include/c++/13/bits/random.tcc:462:       result_type __z = _M_x[_M_p++];
	ldr	x0, [x26, x2, lsl 3]	// __z, rng._M_x[prephitmp_472]
// /usr/include/c++/13/bits/random.tcc:465:       __z ^= (__z << __t) & __c;
	mov	x1, 4022730752	// tmp284,
// /usr/include/c++/13/bits/random.tcc:3367: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	movi	v1.2s, #0	// tmp288
// /usr/include/c++/13/bits/random.tcc:3371:       if (__builtin_expect(__ret >= _RealType(1), 0))
	fmov	s2, 1.0e+0	// tmp290,
// /usr/include/c++/13/bits/random.tcc:462:       result_type __z = _M_x[_M_p++];
	add	x2, x2, 1	// prephitmp_502, pretmp_471,
	str	x2, [sp, 5008]	// prephitmp_502, rng._M_p
// /usr/include/c++/13/bits/random.tcc:463:       __z ^= (__z >> __u) & __d;
	ubfx	x3, x0, 11, 32	// _223, __z,,
// /usr/include/c++/13/bits/random.tcc:463:       __z ^= (__z >> __u) & __d;
	eor	x0, x0, x3	// __z, __z, _223
// /usr/include/c++/13/bits/random.tcc:464:       __z ^= (__z << __s) & __b;
	and	x3, x27, x0, lsl 7	// _226, tmp241, __z,
// /usr/include/c++/13/bits/random.tcc:464:       __z ^= (__z << __s) & __b;
	eor	x0, x0, x3	// __z, __z, _226
// /usr/include/c++/13/bits/random.tcc:465:       __z ^= (__z << __t) & __c;
	and	x1, x1, x0, lsl 15	// _229, tmp284, __z,
// /usr/include/c++/13/bits/random.tcc:465:       __z ^= (__z << __t) & __c;
	eor	x0, x0, x1	// __z, __z, _229
// /usr/include/c++/13/bits/random.tcc:466:       __z ^= (__z >> __l);
	eor	x0, x0, x0, lsr 18	// __z, __z, __z,
// /usr/include/c++/13/bits/random.tcc:3367: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	ucvtf	s0, x0	// tmp286, __z
// /usr/include/c++/13/bits/random.tcc:3367: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	fadd	s0, s0, s1	// __sum, tmp286, tmp288
// /usr/include/c++/13/bits/random.tcc:3370:       __ret = __sum / __tmp;
	fmul	s0, s0, s14	// __ret, __sum, tmp248
// /usr/include/c++/13/bits/random.tcc:3371:       if (__builtin_expect(__ret >= _RealType(1), 0))
	fcmpe	s0, s2	// __ret, tmp290
	bge	.L1741		//,
// /usr/include/c++/13/bits/random.h:1909: 	  return (__aurng() * (__p.b() - __p.a())) + __p.a();
	fadd	s0, s0, s1	// tmp291, __ret, tmp288
// main.cpp:125:         a.fuel=a.state==TREE?static_cast<uint8_t>(3+static_cast<int>(u(rng)*4)):0;
	fcvtzs	w0, s0, #2	// tmp295, tmp291
// main.cpp:125:         a.fuel=a.state==TREE?static_cast<uint8_t>(3+static_cast<int>(u(rng)*4)):0;
	add	w0, w0, 3	// tmp297, tmp295,
	and	w0, w0, 255	// _486, tmp297
.L1720:
// main.cpp:126:         a.moisture=a.state==TREE?clamp(o.moisture+(wet-.5f)*.16f,0.f,1.f):0;
	fmov	s0, 5.0e-1	// tmp300,
// main.cpp:126:         a.moisture=a.state==TREE?clamp(o.moisture+(wet-.5f)*.16f,0.f,1.f):0;
	ldr	s1, [x25, 28]	// o_49(D)->moisture, o_49(D)->moisture
// main.cpp:125:         a.fuel=a.state==TREE?static_cast<uint8_t>(3+static_cast<int>(u(rng)*4)):0;
	strb	w0, [x22, 4]	// _486, MEM[(struct Cell &)_91].fuel
// main.cpp:126:         a.moisture=a.state==TREE?clamp(o.moisture+(wet-.5f)*.16f,0.f,1.f):0;
	fsub	s0, s15, s0	// tmp299, _467, tmp300
// main.cpp:126:         a.moisture=a.state==TREE?clamp(o.moisture+(wet-.5f)*.16f,0.f,1.f):0;
	fmadd	s0, s0, s9, s1	// iftmp.50_41, tmp299, tmp333, o_49(D)->moisture
// /usr/include/c++/13/bits/stl_algobase.h:262:       if (__a < __b)
	fcmpe	s0, #0.0	// iftmp.50_41
	bmi	.L1742		//,
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	fmov	s1, 1.0e+0	// tmp303,
	fcmpe	s0, s1	// iftmp.50_41, tmp303
	bgt	.L1746		//,
	.p2align 3,,7
.L1719:
// main.cpp:119:     for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
	ldp	x3, x24, [x25]	// prephitmp_440, _27, o_49(D)->rows
// main.cpp:119:     for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
	add	x23, x23, 1	// c, c,
// main.cpp:126:         a.moisture=a.state==TREE?clamp(o.moisture+(wet-.5f)*.16f,0.f,1.f):0;
	str	s0, [x22]	// iftmp.50_41, MEM[(struct Cell &)_91].moisture
// main.cpp:119:     for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
	cmp	x24, x23	// _27, c
	bls	.L1765		//,
	.p2align 3,,7
.L1725:
// main.cpp:120:         float x=(static_cast<float>(c)+.5f)/o.cols, y=(static_cast<float>(r)+.5f)/o.rows;
	ucvtf	s0, x23	// tmp220, c
// main.cpp:120:         float x=(static_cast<float>(c)+.5f)/o.cols, y=(static_cast<float>(r)+.5f)/o.rows;
	fmov	s4, 5.0e-1	// tmp222,
// main.cpp:120:         float x=(static_cast<float>(c)+.5f)/o.cols, y=(static_cast<float>(r)+.5f)/o.rows;
	ucvtf	s1, x3	// tmp229, prephitmp_440
// main.cpp:120:         float x=(static_cast<float>(c)+.5f)/o.cols, y=(static_cast<float>(r)+.5f)/o.rows;
	ucvtf	s2, x24	// tmp223, _27
// main.cpp:120:         float x=(static_cast<float>(c)+.5f)/o.cols, y=(static_cast<float>(r)+.5f)/o.rows;
	fadd	s0, s0, s4	// tmp221, tmp220, tmp222
// main.cpp:120:         float x=(static_cast<float>(c)+.5f)/o.cols, y=(static_cast<float>(r)+.5f)/o.rows;
	fdiv	s1, s10, s1	// y, _438, tmp229
// main.cpp:120:         float x=(static_cast<float>(c)+.5f)/o.cols, y=(static_cast<float>(r)+.5f)/o.rows;
	fdiv	s0, s0, s2	// x, tmp221, tmp223
// main.cpp:121:         bool lake=pow((x-.72f)/.105f,2)+pow((y-.55f)/.16f,2)<1;
	fsub	s1, s1, s11	// tmp231, y, tmp332
// main.cpp:121:         bool lake=pow((x-.72f)/.105f,2)+pow((y-.55f)/.16f,2)<1;
	fsub	s0, s0, s13	// tmp225, x, tmp330
// main.cpp:121:         bool lake=pow((x-.72f)/.105f,2)+pow((y-.55f)/.16f,2)<1;
	fdiv	s1, s1, s9	// tmp233, tmp231, tmp333
// main.cpp:121:         bool lake=pow((x-.72f)/.105f,2)+pow((y-.55f)/.16f,2)<1;
	fdiv	s0, s0, s12	// tmp227, tmp225, tmp331
// /usr/include/c++/13/cmath:1073:       return pow(__type(__x), __type(__y));
	fcvt	d1, s1	// _98, tmp233
	fcvt	d0, s0	// _100, tmp227
	fmul	d1, d1, d1	// tmp235, _98, _98
// main.cpp:121:         bool lake=pow((x-.72f)/.105f,2)+pow((y-.55f)/.16f,2)<1;
	fmadd	d8, d0, d0, d1	// _17, _100, _100, tmp235
// /usr/include/c++/13/bits/random.tcc:458:       if (_M_p >= state_size)
	cmp	x2, 623	// prephitmp_502,
	bls	.L1711		//,
// /usr/include/c++/13/bits/random.tcc:459: 	_M_gen_rand();
	mov	x0, x26	//, tmp328
	bl	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv		//
// /usr/include/c++/13/bits/random.tcc:462:       result_type __z = _M_x[_M_p++];
	ldr	x2, [sp, 5008]	// prephitmp_502, rng._M_p
	b	.L1711		//
	.p2align 2,,3
.L1745:
// main.cpp:124:         a.state=lake?WATER:(z<.12f?EMPTY:TREE);
	mov	w0, 4	// tmp270,
	strb	w0, [x22, 5]	// tmp270, MEM[(struct Cell &)_91].state
.L1717:
// main.cpp:119:     for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
	ldp	x3, x24, [x25]	// prephitmp_440, _27, o_49(D)->rows
// main.cpp:126:         a.moisture=a.state==TREE?clamp(o.moisture+(wet-.5f)*.16f,0.f,1.f):0;
	movi	v0.2s, #0	// iftmp.50_41
// main.cpp:119:     for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
	add	x23, x23, 1	// c, c,
// main.cpp:125:         a.fuel=a.state==TREE?static_cast<uint8_t>(3+static_cast<int>(u(rng)*4)):0;
	strb	wzr, [x22, 4]	//, MEM[(struct Cell &)_91].fuel
// main.cpp:126:         a.moisture=a.state==TREE?clamp(o.moisture+(wet-.5f)*.16f,0.f,1.f):0;
	str	s0, [x22]	// iftmp.50_41, MEM[(struct Cell &)_91].moisture
// main.cpp:119:     for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
	cmp	x24, x23	// _27, c
	bhi	.L1725		//,
.L1765:
// main.cpp:119:     for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
	add	x19, x19, 1	// r, r,
// main.cpp:119:     for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
	cmp	x19, x3	// r, prephitmp_440
	bcc	.L1709		//,
.L1759:
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
.L1710:
// main.cpp:114: size_t index(size_t r,size_t c,size_t cols) { return r*cols+c; }
	ldp	x1, x0, [x25, 80]	// o_49(D)->fire_row, o_49(D)->fire_col, o_49(D)->fire_row
// main.cpp:129:     if(!o.fire_set && focus.state!=WATER) {focus.state=TREE;focus.fuel=5;focus.moisture=o.moisture;}
	ldrb	w2, [x25, 100]	// o_49(D)->fire_set, o_49(D)->fire_set
// main.cpp:114: size_t index(size_t r,size_t c,size_t cols) { return r*cols+c; }
	madd	x1, x24, x1, x0	// tmp306, _27, o_49(D)->fire_row, o_49(D)->fire_col
// /usr/include/c++/13/bits/stl_vector.h:1129: 	return *(this->_M_impl._M_start + __n);
	add	x1, x20, x1, lsl 3	// _109, iftmp.52_53, tmp306,
// main.cpp:129:     if(!o.fire_set && focus.state!=WATER) {focus.state=TREE;focus.fuel=5;focus.moisture=o.moisture;}
	ldrb	w0, [x1, 5]	// pretmp_514, MEM[(struct Cell &)_109].state
// main.cpp:129:     if(!o.fire_set && focus.state!=WATER) {focus.state=TREE;focus.fuel=5;focus.moisture=o.moisture;}
	tbnz	x2, 0, .L1728	// o_49(D)->fire_set,,
// main.cpp:129:     if(!o.fire_set && focus.state!=WATER) {focus.state=TREE;focus.fuel=5;focus.moisture=o.moisture;}
	cmp	w0, 4	// pretmp_514,
	beq	.L1732		//,
// main.cpp:129:     if(!o.fire_set && focus.state!=WATER) {focus.state=TREE;focus.fuel=5;focus.moisture=o.moisture;}
	ldr	s0, [x25, 28]	// o_49(D)->moisture, o_49(D)->moisture
// main.cpp:129:     if(!o.fire_set && focus.state!=WATER) {focus.state=TREE;focus.fuel=5;focus.moisture=o.moisture;}
	mov	w0, 261	// tmp314,
	strh	w0, [x1, 4]	// tmp314, MEM <vector(2) unsigned char> [(unsigned char *)_109 + 4B]
// main.cpp:129:     if(!o.fire_set && focus.state!=WATER) {focus.state=TREE;focus.fuel=5;focus.moisture=o.moisture;}
	str	s0, [x1]	// o_49(D)->moisture, MEM[(struct Cell &)_109].moisture
.L1731:
// main.cpp:133: }
	adrp	x0, :got:__stack_chk_guard	// tmp327,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp327,
// main.cpp:131:     focus.state=FIRE;
	mov	w2, 2	// tmp320,
	strb	w2, [x1, 5]	// tmp320, MEM[(struct Cell &)_109].state
// main.cpp:133: }
	ldr	x2, [sp, 5016]	// tmp354, D.122171
	ldr	x1, [x0]	// tmp355,
	subs	x2, x2, x1	// tmp354, tmp355
	mov	x1, 0	// tmp355
	bne	.L1761		//,
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
.L1764:
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
	mov	x0, x26	//, tmp328
	str	s1, [sp, 8]	// _459, %sfp
	bl	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv		//
// /usr/include/c++/13/bits/random.tcc:462:       result_type __z = _M_x[_M_p++];
	ldr	s1, [sp, 8]	// _459, %sfp
	ldr	x2, [sp, 5008]	// _175, rng._M_p
	b	.L1713		//
	.p2align 2,,3
.L1746:
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	fmov	s0, s1	// iftmp.50_41, tmp303
	b	.L1719		//
	.p2align 2,,3
.L1742:
	movi	v0.2s, #0	// iftmp.50_41
	b	.L1719		//
	.p2align 2,,3
.L1740:
	mov	w1, 1065353215	// tmp341,
	fmov	s15, w1	// _467, tmp341
	b	.L1714		//
	.p2align 2,,3
.L1739:
	mov	w1, 1065353215	// tmp342,
	fmov	s1, w1	// _459, tmp342
	b	.L1712		//
	.p2align 2,,3
.L1721:
// /usr/include/c++/13/bits/random.tcc:459: 	_M_gen_rand();
	mov	x0, x26	//, tmp328
	bl	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv		//
// /usr/include/c++/13/bits/random.tcc:462:       result_type __z = _M_x[_M_p++];
	ldr	x2, [sp, 5008]	// pretmp_471, rng._M_p
	b	.L1722		//
	.p2align 2,,3
.L1741:
	mov	w0, 6	// _486,
	b	.L1720		//
.L1728:
	.cfi_restore 27
	.cfi_restore 72
	.cfi_restore 73
	.cfi_restore 74
	.cfi_restore 75
	.cfi_restore 76
	.cfi_restore 77
	.cfi_restore 78
	.cfi_restore 79
// main.cpp:130:     if(focus.state!=TREE || !focus.fuel) throw invalid_argument("El foco cae sobre agua o un claro: elige otra celda con vegetación");
	cmp	w0, 1	// pretmp_514,
	bne	.L1732		//,
// main.cpp:130:     if(focus.state!=TREE || !focus.fuel) throw invalid_argument("El foco cae sobre agua o un claro: elige otra celda con vegetación");
	ldrb	w0, [x1, 4]	// MEM[(struct Cell &)_109].fuel, MEM[(struct Cell &)_109].fuel
	cbnz	w0, .L1731	// MEM[(struct Cell &)_109].fuel,
.L1732:
// main.cpp:130:     if(focus.state!=TREE || !focus.fuel) throw invalid_argument("El foco cae sobre agua o un claro: elige otra celda con vegetación");
	mov	x0, 16	//,
	bl	__cxa_allocate_exception		//
// main.cpp:130:     if(focus.state!=TREE || !focus.fuel) throw invalid_argument("El foco cae sobre agua o un claro: elige otra celda con vegetación");
	adrp	x1, .LC139	// tmp313,
// main.cpp:130:     if(focus.state!=TREE || !focus.fuel) throw invalid_argument("El foco cae sobre agua o un claro: elige otra celda con vegetación");
	mov	x20, x0	// _61, tmp338
// main.cpp:130:     if(focus.state!=TREE || !focus.fuel) throw invalid_argument("El foco cae sobre agua o un claro: elige otra celda con vegetación");
	add	x1, x1, :lo12:.LC139	//, tmp313,
.LEHB203:
	bl	_ZNSt16invalid_argumentC1EPKc		//
.LEHE203:
// main.cpp:130:     if(focus.state!=TREE || !focus.fuel) throw invalid_argument("El foco cae sobre agua o un claro: elige otra celda con vegetación");
	adrp	x22, :got:__stack_chk_guard	// tmp329,
	ldr	x22, [x22, :got_lo12:__stack_chk_guard]	// tmp329,
	ldr	x0, [sp, 5016]	// tmp352, D.122171
	ldr	x1, [x22]	// tmp353,
	subs	x0, x0, x1	// tmp352, tmp353
	mov	x1, 0	// tmp353
	bne	.L1761		//,
	adrp	x2, :got:_ZNSt16invalid_argumentD1Ev	//,
	ldr	x2, [x2, :got_lo12:_ZNSt16invalid_argumentD1Ev]	//,
	mov	x0, x20	//, _61
	adrp	x1, :got:_ZTISt16invalid_argument	//,
	ldr	x1, [x1, :got_lo12:_ZTISt16invalid_argument]	//,
.LEHB204:
	bl	__cxa_throw		//
.LEHE204:
	.p2align 2,,3
.L1763:
// /usr/include/c++/13/bits/stl_vector.h:381: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	mov	x20, 0	// iftmp.52_53,
	mov	x5, 0	// __first,
// /usr/include/c++/13/bits/stl_vector.h:398: 	this->_M_impl._M_start = this->_M_allocate(__n);
	str	xzr, [x8]	//, MEM[(struct _Vector_base *)cells_51(D)]._M_impl.D.100663._M_start
// /usr/include/c++/13/bits/stl_vector.h:400: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	str	xzr, [x8, 16]	//, MEM[(struct _Vector_base *)cells_51(D)]._M_impl.D.100663._M_end_of_storage
	b	.L1704		//
.L1705:
// main.cpp:128:     Cell &focus=cells[index(o.fire_row,o.fire_col,o.cols)];
	ldr	x24, [x25, 8]	// _27, o_49(D)->cols
// /usr/include/c++/13/bits/stl_algobase.h:1124: 	return __first;
	mov	x5, x0	// __first, __first
	b	.L1704		//
.L1762:
	.cfi_restore 19
	.cfi_restore 20
// /usr/include/c++/13/bits/stl_vector.h:1910: 	  __throw_length_error(
	adrp	x0, :got:__stack_chk_guard	// tmp207,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp207,
	ldr	x2, [sp, 5016]	// tmp350, D.122171
	ldr	x1, [x0]	// tmp351,
	subs	x2, x2, x1	// tmp350, tmp351
	mov	x1, 0	// tmp351
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
	bne	.L1760		//,
	adrp	x0, .LC138	// tmp209,
	add	x0, x0, :lo12:.LC138	//, tmp209,
.LEHB205:
	bl	_ZSt20__throw_length_errorPKc		//
.L1761:
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
.L1760:
// main.cpp:130:     if(focus.state!=TREE || !focus.fuel) throw invalid_argument("El foco cae sobre agua o un claro: elige otra celda con vegetación");
	bl	__stack_chk_fail		//
.L1744:
	.cfi_restore 27
	.cfi_restore 72
	.cfi_restore 73
	.cfi_restore 74
	.cfi_restore 75
	.cfi_restore 76
	.cfi_restore 77
	.cfi_restore 78
	.cfi_restore 79
	adrp	x22, :got:__stack_chk_guard	// tmp329,
	ldr	x22, [x22, :got_lo12:__stack_chk_guard]	// tmp329,
// main.cpp:130:     if(focus.state!=TREE || !focus.fuel) throw invalid_argument("El foco cae sobre agua o un claro: elige otra celda con vegetación");
	mov	x19, x0	// tmp339,
	mov	x0, x20	//, _61
	bl	__cxa_free_exception		//
.L1735:
// main.cpp:133: }
	mov	x0, x21	//, <retval>
	bl	_ZNSt6vectorI4CellSaIS0_EED1Ev		//
	ldr	x0, [sp, 5016]	// tmp356, D.122171
	ldr	x1, [x22]	// tmp357,
	subs	x0, x0, x1	// tmp356, tmp357
	mov	x1, 0	// tmp357
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
	bne	.L1760		//,
	mov	x0, x19	//, tmp322
	bl	_Unwind_Resume		//
.LEHE205:
.L1743:
	.cfi_restore 27
	.cfi_restore 72
	.cfi_restore 73
	.cfi_restore 74
	.cfi_restore 75
	.cfi_restore 76
	.cfi_restore 77
	.cfi_restore 78
	.cfi_restore 79
// main.cpp:133: }
	mov	x19, x0	// tmp322, tmp340
	b	.L1735		//
	.cfi_endproc
.LFE4484:
	.section	.gcc_except_table
.LLSDA4484:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4484-.LLSDACSB4484
.LLSDACSB4484:
	.uleb128 .LEHB202-.LFB4484
	.uleb128 .LEHE202-.LEHB202
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB203-.LFB4484
	.uleb128 .LEHE203-.LEHB203
	.uleb128 .L1744-.LFB4484
	.uleb128 0
	.uleb128 .LEHB204-.LFB4484
	.uleb128 .LEHE204-.LEHB204
	.uleb128 .L1743-.LFB4484
	.uleb128 0
	.uleb128 .LEHB205-.LFB4484
	.uleb128 .LEHE205-.LEHB205
	.uleb128 0
	.uleb128 0
.LLSDACSE4484:
	.text
	.size	_Z10initializeRK7Options, .-_Z10initializeRK7Options
	.section	.rodata.str1.8
	.align	3
.LC140:
	.string	"\033[2J\033[H\033[?25l"
	.align	3
.LC141:
	.string	"\033[?25h"
	.align	3
.LC142:
	.string	"Resumen: "
	.align	3
.LC143:
	.string	"x"
	.align	3
.LC144:
	.string	"="
	.align	3
.LC145:
	.string	" celdas; semilla="
	.align	3
.LC146:
	.string	"; humedad="
	.align	3
.LC147:
	.string	"; viento="
	.align	3
.LC148:
	.string	":"
	.align	3
.LC149:
	.string	"; foco=("
	.align	3
.LC150:
	.string	","
	.align	3
.LC151:
	.string	")\n"
	.align	3
.LC152:
	.string	"Iteraciones="
	.align	3
.LC153:
	.string	"; con fuego al terminar="
	.align	3
.LC154:
	.string	"; tiempo_bucle_s="
	.align	3
.LC155:
	.string	"Final: vegetaci\303\263n="
	.align	3
.LC156:
	.string	" fuego="
	.align	3
.LC157:
	.string	" quemado="
	.align	3
.LC158:
	.string	" agua="
	.align	3
.LC159:
	.string	" vac\303\255o="
	.align	3
.LC160:
	.string	"; inicial_afectada="
	.align	3
.LC161:
	.string	"; checksum="
	.align	3
.LC162:
	.string	"Memoria: cell_bytes="
	.align	3
.LC163:
	.string	"; buffers_bytes="
	.align	3
.LC164:
	.string	"; quemado_pct_total="
	.align	3
.LC165:
	.string	"; afectado_pct_bosque="
	.align	3
.LC166:
	.string	"Diagn\303\263stico: humedad_s="
	.align	3
.LC167:
	.string	"; fuego_s="
	.align	3
.LC168:
	.string	"; resto_s="
	.align	3
.LC169:
	.string	"Interrumpido tras "
	.align	3
.LC170:
	.string	" iteraciones\n"
	.align	3
.LC171:
	.string	"Fin visual: detenido con q.\n"
	.align	3
.LC172:
	.string	"Fin visual: fuego extinguido.\n"
	.align	3
.LC173:
	.string	"Error: memoria insuficiente\n"
	.align	3
.LC174:
	.string	"Error: dimensiones demasiado grandes para reservar memoria\n"
	.align	3
.LC175:
	.string	"Error: "
	.align	3
.LC176:
	.string	". Usa --help.\n"
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 4,,11
	.global	main
	.type	main, %function
main:
.LFB4506:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4506
	sub	sp, sp, #496	//,,
	.cfi_def_cfa_offset 496
	adrp	x2, :got:__stack_chk_guard	// tmp308,
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]	// tmp308,
	stp	x29, x30, [sp, 368]	//,,
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	add	x29, sp, 368	//,,
	stp	x19, x20, [sp, 384]	//,,
	.cfi_offset 19, -112
	.cfi_offset 20, -104
// main.cpp:285:         Options o=parse(argc,argv);
	add	x19, sp, 248	// tmp670,,
	mov	x8, x19	//, tmp670
	str	x19, [sp, 16]	// tmp670, %sfp
// main.cpp:282: int main(int argc,char** argv) {
	stp	x21, x22, [sp, 400]	//,,
	stp	x23, x24, [sp, 416]	//,,
	ldr	x3, [x2]	// tmp873,
	str	x3, [sp, 360]	// tmp873, D.122343
	mov	x3, 0	// tmp873
.LEHB206:
	.cfi_offset 21, -96
	.cfi_offset 22, -88
	.cfi_offset 23, -80
	.cfi_offset 24, -72
// main.cpp:285:         Options o=parse(argc,argv);
	bl	_Z5parseiPPc		//
.LEHE206:
// main.cpp:286:         auto current=initialize(o), next=vector<Cell>(current.size());
	add	x24, sp, 104	// tmp666,,
	mov	x0, x19	//, tmp670
	mov	x8, x24	//, tmp666
.LEHB207:
	bl	_Z10initializeRK7Options		//
.LEHE207:
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ldp	x23, x20, [sp, 104]	// prephitmp_117, prephitmp_92, current.D.101324._M_impl.D.100663._M_start
	stp	x25, x26, [sp, 432]	//,,
	.cfi_offset 26, -56
	.cfi_offset 25, -64
// /usr/include/c++/13/bits/stl_vector.h:1909: 	if (__n > _S_max_size(_Tp_alloc_type(__a)))
	mov	x0, 9223372036854775800	// tmp313,
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	x25, x20, x23	// _174, prephitmp_92, prephitmp_117
	asr	x19, x25, 3	// _171, _174,
// /usr/include/c++/13/bits/stl_vector.h:1909: 	if (__n > _S_max_size(_Tp_alloc_type(__a)))
	cmp	x25, x0	// _174, tmp313
	bhi	.L2159		//,
// /usr/include/c++/13/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	stp	xzr, xzr, [sp, 88]	// MEM <vector(2) long unsigned int> [(struct Cell * *)&next + 8B]
// /usr/include/c++/13/bits/stl_vector.h:381: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	cbz	x19, .L2160	// _171,
// /usr/include/c++/13/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x0, x25	//, _174
.LEHB208:
	bl	_Znwm		//
.LEHE208:
	stp	x27, x28, [sp, 448]	//,,
	.cfi_offset 28, -40
	.cfi_offset 27, -48
// /usr/include/c++/13/bits/stl_vector.h:400: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	add	x25, x0, x25	// _304, prephitmp_87, _174
// /usr/include/c++/13/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x22, x0	// prephitmp_87, tmp682
	stp	d8, d9, [sp, 464]	//,,
	.cfi_offset 73, -24
	.cfi_offset 72, -32
// /usr/include/c++/13/bits/stl_uninitialized.h:667: 	      ++__first;
	add	x21, x0, 8	// __first, prephitmp_87,
	stp	d10, d11, [sp, 480]	//,,
	.cfi_offset 75, -8
	.cfi_offset 74, -16
// /usr/include/c++/13/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	str	wzr, [x0]	//, _424->moisture
	strh	wzr, [x0, 4]	//, MEM <vector(2) unsigned char> [(unsigned char *)_424 + 4B]
// /usr/include/c++/13/bits/stl_vector.h:398: 	this->_M_impl._M_start = this->_M_allocate(__n);
	str	x0, [sp, 80]	// prephitmp_87, MEM[(struct _Vector_base *)&next]._M_impl.D.100663._M_start
// /usr/include/c++/13/bits/stl_vector.h:400: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	str	x25, [sp, 96]	// _304, MEM[(struct _Vector_base *)&next]._M_impl.D.100663._M_end_of_storage
// /usr/include/c++/13/bits/stl_algobase.h:1123:       if (__n <= 0)
	cmp	x19, 1	// _171,
	bne	.L2151		//,
	.p2align 3,,7
.L1775:
// /usr/include/c++/13/bits/stl_vector.h:1717: 	this->_M_impl._M_finish =
	str	x21, [sp, 88]	// __first, next.D.101324._M_impl.D.100663._M_finish
// main.cpp:288:         for(const auto& a:current) initial_trees+=a.state==TREE;
	cmp	x23, x20	// prephitmp_117, prephitmp_92
	beq	.L1982		//,
// main.cpp:288:         for(const auto& a:current) initial_trees+=a.state==TREE;
	mov	x0, x23	// SR.732, prephitmp_117
// main.cpp:287:         size_t initial_trees=1;
	mov	x27, 1	// initial_trees,
	.p2align 3,,7
.L1780:
// main.cpp:288:         for(const auto& a:current) initial_trees+=a.state==TREE;
	ldrb	w1, [x0, 5]	// MEM[(unsigned char *)SR.732_451 + 5B], MEM[(unsigned char *)SR.732_451 + 5B]
// /usr/include/c++/13/bits/stl_iterator.h:1111: 	++_M_current;
	add	x0, x0, 8	// SR.732, SR.732,
// main.cpp:288:         for(const auto& a:current) initial_trees+=a.state==TREE;
	cmp	w1, 1	// MEM[(unsigned char *)SR.732_451 + 5B],
// main.cpp:288:         for(const auto& a:current) initial_trees+=a.state==TREE;
	cinc	x27, x27, eq	// initial_trees, initial_trees,
// main.cpp:288:         for(const auto& a:current) initial_trees+=a.state==TREE;
	cmp	x0, x20	// SR.732, prephitmp_92
	bne	.L1780		//,
.L1779:
// main.cpp:289:         bool tty=isatty(STDOUT_FILENO);
	mov	w0, 1	//,
	bl	isatty		//
	mov	w28, w0	// _5, tmp685
// main.cpp:290:         TerminalInput input(o.visual && tty);
	ldrb	w1, [sp, 344]	//, o.visual
// main.cpp:289:         bool tty=isatty(STDOUT_FILENO);
	cmp	w28, 0	// _5,
// main.cpp:290:         TerminalInput input(o.visual && tty);
	add	x0, sp, 184	// tmp669,,
// main.cpp:289:         bool tty=isatty(STDOUT_FILENO);
	cset	w19, ne	// tty,
// main.cpp:290:         TerminalInput input(o.visual && tty);
	str	x0, [sp, 56]	// tmp669, %sfp
	and	w1, w19, w1	//, tty, o.visual
// main.cpp:292:         signal(SIGINT,on_signal); signal(SIGTERM,on_signal);
	adrp	x26, _Z9on_signali	// tmp330,
// main.cpp:290:         TerminalInput input(o.visual && tty);
	bl	_ZN13TerminalInputC1Eb		//
// main.cpp:292:         signal(SIGINT,on_signal); signal(SIGTERM,on_signal);
	add	x26, x26, :lo12:_Z9on_signali	// tmp329, tmp330,
// main.cpp:291:         o.keyboard=input.enabled;
	ldrb	w2, [sp, 244]	//, input.enabled
// main.cpp:292:         signal(SIGINT,on_signal); signal(SIGTERM,on_signal);
	mov	x1, x26	//, tmp329
	mov	w0, 2	//,
// main.cpp:291:         o.keyboard=input.enabled;
	strb	w2, [sp, 349]	// input.enabled, o.keyboard
// main.cpp:292:         signal(SIGINT,on_signal); signal(SIGTERM,on_signal);
	bl	signal		//
// main.cpp:292:         signal(SIGINT,on_signal); signal(SIGTERM,on_signal);
	mov	x1, x26	//, tmp329
	mov	w0, 15	//,
	bl	signal		//
// main.cpp:293:         if(o.visual) {if(tty) {cout<<"\033[2J\033[H\033[?25l";cursor_hidden=true;} draw(current,o,0,initial_trees,tty);}
	ldrb	w0, [sp, 344]	// cursor_hidden, o.visual
	str	w0, [sp, 48]	// cursor_hidden, %sfp
// main.cpp:293:         if(o.visual) {if(tty) {cout<<"\033[2J\033[H\033[?25l";cursor_hidden=true;} draw(current,o,0,initial_trees,tty);}
	tbz	x0, 0, .L1781	// tmp893,,
// main.cpp:293:         if(o.visual) {if(tty) {cout<<"\033[2J\033[H\033[?25l";cursor_hidden=true;} draw(current,o,0,initial_trees,tty);}
	cbnz	w28, .L2161	// _5,
// main.cpp:283:     bool cursor_hidden=false;
	str	wzr, [sp, 48]	//, %sfp
.L1782:
// main.cpp:293:         if(o.visual) {if(tty) {cout<<"\033[2J\033[H\033[?25l";cursor_hidden=true;} draw(current,o,0,initial_trees,tty);}
	ldr	x1, [sp, 16]	//, %sfp
	mov	w4, w19	//, tty
	add	x26, sp, 80	// tmp665,,
	mov	x3, x27	//, initial_trees
	mov	x0, x24	//, tmp666
	mov	x2, 0	//,
.LEHB209:
	bl	_Z4drawRKSt6vectorI4CellSaIS0_EERK7Optionsmmb		//
// main.cpp:294:         auto start=chrono::steady_clock::now();
	bl	_ZNSt6chrono3_V212steady_clock3nowEv		//
	str	x0, [sp, 64]	// tmp686, %sfp
// main.cpp:299:         for(size_t step=0;step<o.steps && !interrupted;++step) {
	ldr	x19, [sp, 264]	// executed, o.steps
// main.cpp:299:         for(size_t step=0;step<o.steps && !interrupted;++step) {
	cbz	x19, .L1984	// executed,
.L1979:
	adrp	x0, .LANCHOR0	// tmp667,
// main.cpp:296:         chrono::duration<double> moisture_work{0}, fire_work{0};
	movi	d9, #0	// fire_work$__r
	mov	x1, x0	// tmp667, tmp667
	cbnz	w28, .L1985	// _5,
// main.cpp:299:         for(size_t step=0;step<o.steps && !interrupted;++step) {
	add	x1, x1, :lo12:.LANCHOR0	// tmp339, tmp667,
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	mov	x0, 225833675390976	// tmp872,
// main.cpp:299:         for(size_t step=0;step<o.steps && !interrupted;++step) {
	str	x1, [sp, 32]	// tmp339, %sfp
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	movk	x0, 0x41cd, lsl 48	// tmp872,,
	fmov	d10, x0	// tmp674, tmp872
// main.cpp:297:         size_t executed=0, active_steps=0;
	str	xzr, [sp, 8]	//, %sfp
// main.cpp:299:         for(size_t step=0;step<o.steps && !interrupted;++step) {
	ldr	x0, [sp, 32]	// tmp339, %sfp
// main.cpp:296:         chrono::duration<double> moisture_work{0}, fire_work{0};
	fmov	d11, d9	// moisture_work$__r, fire_work$__r
// main.cpp:295:         chrono::duration<double> visual_work{0};
	fmov	d8, d9	// visual_work$__r, fire_work$__r
	add	x26, sp, 80	// tmp665,,
// main.cpp:297:         size_t executed=0, active_steps=0;
	mov	x19, 0	// executed,
// main.cpp:299:         for(size_t step=0;step<o.steps && !interrupted;++step) {
	ldr	w0, [x0]	//, interrupted
// main.cpp:299:         for(size_t step=0;step<o.steps && !interrupted;++step) {
	cbnz	w0, .L2113	// interrupted.160_78,
	.p2align 3,,7
.L2163:
// main.cpp:301:             auto work_start=(o.visual || o.profile)?chrono::steady_clock::now():chrono::steady_clock::time_point{};
	ldrb	w0, [sp, 344]	// o.visual, o.visual
	tbnz	x0, 0, .L1789	// o.visual,,
// main.cpp:301:             auto work_start=(o.visual || o.profile)?chrono::steady_clock::now():chrono::steady_clock::time_point{};
	ldrb	w0, [sp, 345]	// o.profile, o.profile
	tbnz	x0, 0, .L1789	// o.profile,,
// main.cpp:302:             update_moisture(current,next,o.rows,o.cols);
	ldp	x2, x3, [sp, 248]	//,, o.rows
	mov	x1, x26	//, tmp665
	mov	x0, x24	//, tmp666
	bl	_Z15update_moistureRKSt6vectorI4CellSaIS0_EERS2_mm		//
// /usr/include/c++/13/bits/chrono.h:933: 	constexpr time_point() : __d(duration::zero())
	str	xzr, [sp, 24]	//, %sfp
.L2152:
// main.cpp:304:             size_t active=update_fire(current,next,o);
	ldr	x2, [sp, 16]	//, %sfp
	mov	x1, x26	//, tmp665
	mov	x0, x24	//, tmp666
// /usr/include/c++/13/bits/chrono.h:933: 	constexpr time_point() : __d(duration::zero())
	mov	x28, 0	// moisture_end$__d$__r,
// main.cpp:304:             size_t active=update_fire(current,next,o);
	bl	_Z11update_fireRKSt6vectorI4CellSaIS0_EERS2_RK7Options		//
// main.cpp:305:             if(o.profile) {
	ldrb	w2, [sp, 345]	// o.profile, o.profile
// main.cpp:304:             size_t active=update_fire(current,next,o);
	mov	x1, x0	// active, tmp689
// main.cpp:305:             if(o.profile) {
	tbnz	x2, 0, .L2162	// o.profile,,
.L1791:
// main.cpp:311:             if(o.visual) visual_work+=chrono::steady_clock::now()-work_start;
	ldrb	w0, [sp, 344]	// o.visual, o.visual
// main.cpp:312:             ++executed;
	add	x19, x19, 1	// executed, executed,
// /usr/include/c++/13/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	ldr	x28, [sp, 120]	// _509, MEM[(const struct _Vector_impl_data &)&current]._M_end_of_storage
// /usr/include/c++/13/bits/stl_vector.h:116: 	  _M_finish = __x._M_finish;
	stp	x23, x20, [sp, 80]	// prephitmp_117, prephitmp_92, MEM[(struct _Vector_impl_data *)&next]._M_start
// /usr/include/c++/13/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	stp	x28, x22, [sp, 96]	// _509, prephitmp_87, MEM[(struct _Vector_impl_data *)&next]._M_end_of_storage
// /usr/include/c++/13/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	stp	x21, x25, [sp, 112]	// __first, _304, MEM[(struct _Vector_impl_data *)&current]._M_finish
// main.cpp:311:             if(o.visual) visual_work+=chrono::steady_clock::now()-work_start;
	tbnz	x0, 0, .L1792	// o.visual,,
.L1794:
// main.cpp:318:                 active_steps+=active!=0;
	cmp	x1, 0	// active,
// main.cpp:318:                 active_steps+=active!=0;
	ldr	x1, [sp, 8]	// active_steps, %sfp
// main.cpp:299:         for(size_t step=0;step<o.steps && !interrupted;++step) {
	ldr	x0, [sp, 264]	// pretmp_523, o.steps
// main.cpp:318:                 active_steps+=active!=0;
	cinc	x1, x1, ne	// active_steps, active_steps,
	str	x1, [sp, 8]	// active_steps, %sfp
.L1793:
	mov	x2, x22	// prephitmp_132, prephitmp_87
	mov	x1, x21	// prephitmp_120, __first
	mov	x22, x23	// prephitmp_87, prephitmp_117
	mov	x21, x20	// __first, prephitmp_92
// main.cpp:299:         for(size_t step=0;step<o.steps && !interrupted;++step) {
	cmp	x19, x0	// executed, pretmp_523
	bcs	.L2113		//,
// main.cpp:299:         for(size_t step=0;step<o.steps && !interrupted;++step) {
	ldr	x0, [sp, 32]	// tmp339, %sfp
// /usr/include/c++/13/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	x25, x28	// _304, _509
// main.cpp:299:         for(size_t step=0;step<o.steps && !interrupted;++step) {
	mov	x20, x1	// prephitmp_92, prephitmp_120
	mov	x23, x2	// prephitmp_117, prephitmp_132
// main.cpp:299:         for(size_t step=0;step<o.steps && !interrupted;++step) {
	ldr	w0, [x0]	//, interrupted
// main.cpp:299:         for(size_t step=0;step<o.steps && !interrupted;++step) {
	cbz	w0, .L2163	// interrupted.160_78,
	.p2align 3,,7
.L2113:
// main.cpp:298:         bool stopped=false;
	mov	w20, 0	// stopped,
.L1783:
// main.cpp:321:         auto end=chrono::steady_clock::now();
	bl	_ZNSt6chrono3_V212steady_clock3nowEv		//
	str	x0, [sp, 16]	// tmp698, %sfp
// main.cpp:322:         if(cursor_hidden) {cout<<"\033[?25h";cursor_hidden=false;}
	ldr	x0, [sp, 48]	// tmp915, %sfp
	tbz	x0, 0, .L1816	// tmp915,,
// main.cpp:322:         if(cursor_hidden) {cout<<"\033[?25h";cursor_hidden=false;}
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	adrp	x1, .LC141	// tmp431,
	add	x1, x1, :lo12:.LC141	//, tmp431,
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		//
.LEHE209:
.L1816:
// main.cpp:298:         bool stopped=false;
	str	w20, [sp, 48]	// stopped, %sfp
.L1978:
// main.cpp:323:         auto s=statistics(current,initial_trees);
	mov	x1, x27	//, initial_trees
	mov	x0, x24	//, tmp666
	add	x8, sp, 128	//,,
	bl	_Z10statisticsRKSt6vectorI4CellSaIS0_EEm		//
// /usr/include/c++/13/ostream:134: 	__pf(*this);
	adrp	x0, :got:_ZSt4cout	// tmp435,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	// tmp435,
// /usr/include/c++/13/bits/ios_base.h:84:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	mov	w5, -261	// tmp441,
// /usr/include/c++/13/bits/ios_base.h:744:       _M_precision = __prec;
	mov	x6, 6	// tmp443,
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC142	// tmp445,
// main.cpp:323:         auto s=statistics(current,initial_trees);
	ldp	x28, x22, [sp, 144]	// s$count$2, s$count$3, s.count[2]
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC142	//, tmp445,
// /usr/include/c++/13/ostream:134: 	__pf(*this);
	ldr	x2, [x0]	// cout._vptr.basic_ostream, cout._vptr.basic_ostream
// main.cpp:323:         auto s=statistics(current,initial_trees);
	ldr	x21, [sp, 176]	// s$affected, s.affected
// /usr/include/c++/13/ostream:134: 	__pf(*this);
	ldr	x3, [x2, -24]	// MEM[(long int *)_248 + -24B], MEM[(long int *)_248 + -24B]
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	mov	x2, 9	//,
// /usr/include/c++/13/ostream:134: 	__pf(*this);
	add	x3, x3, x0	// _251, MEM[(long int *)_248 + -24B], tmp435
// /usr/include/c++/13/bits/ios_base.h:84:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	ldr	w4, [x3, 24]	//, _251->_M_flags
// /usr/include/c++/13/bits/ios_base.h:744:       _M_precision = __prec;
	str	x6, [x3, 8]	// tmp443, _251->_M_precision
// /usr/include/c++/13/bits/ios_base.h:84:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	and	w4, w4, w5	// tmp439, _251->_M_flags, tmp441
// /usr/include/c++/13/bits/ios_base.h:88:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orr	w4, w4, 4	// tmp442, tmp439,
// /usr/include/c++/13/bits/ios_base.h:100:   { return __a = __a | __b; }
	str	w4, [x3, 24]	// tmp442, MEM[(_Ios_Fmtflags &)_251 + 24]
.LEHB210:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE210:
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	ldr	x1, [sp, 248]	//, o.rows
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
.LEHB211:
	bl	_ZNSo9_M_insertImEERSoT_		//
.LEHE211:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC143	// tmp450,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x20, x0	// _252, tmp701
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC143	//, tmp450,
	mov	x2, 1	//,
.LEHB212:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE212:
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	ldr	x1, [sp, 256]	//, o.cols
	mov	x0, x20	//, _252
.LEHB213:
	bl	_ZNSo9_M_insertImEERSoT_		//
.LEHE213:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC144	// tmp453,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x20, x0	// _253, tmp706
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC144	//, tmp453,
	mov	x2, 1	//,
.LEHB214:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE214:
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x0, x20	//, _253
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ldp	x1, x20, [sp, 104]	// current.D.101324._M_impl.D.100663._M_start, current.D.101324._M_impl.D.100663._M_finish, current.D.101324._M_impl.D.100663._M_start
	sub	x20, x20, x1	// tmp454, current.D.101324._M_impl.D.100663._M_finish, current.D.101324._M_impl.D.100663._M_start
	asr	x20, x20, 3	// _259, tmp454,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x1, x20	//, _259
.LEHB215:
	bl	_ZNSo9_M_insertImEERSoT_		//
.LEHE215:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC145	// tmp459,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x23, x0	// _254, tmp711
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC145	//, tmp459,
	mov	x2, 17	//,
.LEHB216:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE216:
// /usr/include/c++/13/ostream:198: 	return _M_insert(static_cast<unsigned long>(__n));
	ldr	w1, [sp, 272]	//, o.seed
	mov	x0, x23	//, _254
.LEHB217:
	bl	_ZNSo9_M_insertImEERSoT_		//
.LEHE217:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC146	// tmp462,
// /usr/include/c++/13/ostream:198: 	return _M_insert(static_cast<unsigned long>(__n));
	mov	x23, x0	// _261, tmp716
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC146	//, tmp462,
	mov	x2, 10	//,
.LEHB218:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE218:
// /usr/include/c++/13/ostream:230: 	return _M_insert(static_cast<double>(__f));
	ldr	s0, [sp, 276]	// o.moisture, o.moisture
	mov	x0, x23	//, _261
	fcvt	d0, s0	//, o.moisture
.LEHB219:
	bl	_ZNSo9_M_insertIdEERSoT_		//
.LEHE219:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC147	// tmp466,
// /usr/include/c++/13/ostream:230: 	return _M_insert(static_cast<double>(__f));
	mov	x23, x0	// _265, tmp721
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC147	//, tmp466,
	mov	x2, 9	//,
.LEHB220:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE220:
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	ldp	x1, x2, [sp, 296]	//,, MEM[(const struct basic_string *)&o + 48B]._M_dataplus._M_p
	mov	x0, x23	//, _265
.LEHB221:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE221:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC148	// tmp470,
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	mov	x23, x0	// _269, tmp726
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC148	//, tmp470,
	mov	x2, 1	//,
.LEHB222:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE222:
// /usr/include/c++/13/ostream:230: 	return _M_insert(static_cast<double>(__f));
	ldr	s0, [sp, 280]	// o.wind, o.wind
	mov	x0, x23	//, _269
	fcvt	d0, s0	//, o.wind
.LEHB223:
	bl	_ZNSo9_M_insertIdEERSoT_		//
.LEHE223:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC149	// tmp474,
// /usr/include/c++/13/ostream:230: 	return _M_insert(static_cast<double>(__f));
	mov	x23, x0	// _271, tmp731
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC149	//, tmp474,
	mov	x2, 8	//,
.LEHB224:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE224:
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	ldr	x1, [sp, 328]	//, o.fire_row
	mov	x0, x23	//, _271
.LEHB225:
	bl	_ZNSo9_M_insertImEERSoT_		//
.LEHE225:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC150	// tmp477,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x23, x0	// _274, tmp736
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC150	//, tmp477,
	mov	x2, 1	//,
.LEHB226:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE226:
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	ldr	x1, [sp, 336]	//, o.fire_col
	mov	x0, x23	//, _274
.LEHB227:
	bl	_ZNSo9_M_insertImEERSoT_		//
.LEHE227:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC151	// tmp480,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x23, x0	// _275, tmp741
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC151	//, tmp480,
	mov	x2, 2	//,
.LEHB228:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE228:
	adrp	x1, .LC152	// tmp482,
	mov	x0, x23	//, _275
	add	x1, x1, :lo12:.LC152	//, tmp482,
	mov	x2, 12	//,
.LEHB229:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE229:
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x0, x23	//, _275
	mov	x1, x19	//, executed
.LEHB230:
	bl	_ZNSo9_M_insertImEERSoT_		//
.LEHE230:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC153	// tmp484,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x23, x0	// _276, tmp748
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC153	//, tmp484,
	mov	x2, 24	//,
.LEHB231:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE231:
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	ldr	x1, [sp, 8]	//, %sfp
	mov	x0, x23	//, _276
.LEHB232:
	bl	_ZNSo9_M_insertImEERSoT_		//
.LEHE232:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC154	// tmp486,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x23, x0	// _277, tmp753
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC154	//, tmp486,
	mov	x2, 17	//,
.LEHB233:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE233:
// main.cpp:329:             <<"; tiempo_bucle_s="<<(o.visual?visual_work.count():chrono::duration<double>(end-start).count())<<"\n"
	ldrb	w0, [sp, 344]	// o.visual, o.visual
	tbnz	x0, 0, .L1866	// o.visual,,
// /usr/include/c++/13/bits/chrono.h:716: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	ldr	x0, [sp, 16]	// end$__d$__r, %sfp
	ldr	x1, [sp, 64]	// start$__d$__r, %sfp
	sub	x0, x0, x1	// tmp489, end$__d$__r, start$__d$__r
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	mov	x1, 225833675390976	// tmp870,
	movk	x1, 0x41cd, lsl 48	// tmp870,,
	fmov	d0, x1	// tmp491, tmp870
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	scvtf	d8, x0	// tmp490, tmp489
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	fdiv	d8, d8, d0	// visual_work$__r, tmp490, tmp491
.L1866:
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	fmov	d0, d8	//, visual_work$__r
	mov	x0, x23	//, _277
.LEHB234:
	bl	_ZNSo9_M_insertIdEERSoT_		//
.LEHE234:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x25, .LC129	// tmp671,
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	mov	x23, x0	// _281, tmp758
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x25, :lo12:.LC129	//, tmp671,
	mov	x2, 1	//,
.LEHB235:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE235:
	adrp	x1, .LC155	// tmp495,
	mov	x0, x23	//, _281
	add	x1, x1, :lo12:.LC155	//, tmp495,
	mov	x2, 19	//,
.LEHB236:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE236:
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	ldr	x1, [sp, 136]	//, s.count[1]
	mov	x0, x23	//, _281
.LEHB237:
	bl	_ZNSo9_M_insertImEERSoT_		//
.LEHE237:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC156	// tmp498,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x23, x0	// _282, tmp765
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC156	//, tmp498,
	mov	x2, 7	//,
.LEHB238:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE238:
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x0, x23	//, _282
	mov	x1, x28	//, s$count$2
.LEHB239:
	bl	_ZNSo9_M_insertImEERSoT_		//
.LEHE239:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC157	// tmp500,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x23, x0	// _283, tmp770
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC157	//, tmp500,
	mov	x2, 9	//,
.LEHB240:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE240:
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x0, x23	//, _283
	mov	x1, x22	//, s$count$3
.LEHB241:
	bl	_ZNSo9_M_insertImEERSoT_		//
.LEHE241:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC158	// tmp502,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x23, x0	// _284, tmp775
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC158	//, tmp502,
	mov	x2, 6	//,
.LEHB242:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE242:
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	ldr	x1, [sp, 160]	//, s.count[4]
	mov	x0, x23	//, _284
.LEHB243:
	bl	_ZNSo9_M_insertImEERSoT_		//
.LEHE243:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC159	// tmp505,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x23, x0	// _285, tmp780
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC159	//, tmp505,
	mov	x2, 8	//,
.LEHB244:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE244:
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	ldr	x1, [sp, 128]	//, s.count[0]
	mov	x0, x23	//, _285
.LEHB245:
	bl	_ZNSo9_M_insertImEERSoT_		//
.LEHE245:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC160	// tmp508,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x23, x0	// _286, tmp785
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC160	//, tmp508,
	mov	x2, 19	//,
.LEHB246:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE246:
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x0, x23	//, _286
	mov	x1, x21	//, s$affected
.LEHB247:
	bl	_ZNSo9_M_insertImEERSoT_		//
.LEHE247:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC116	// tmp510,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x23, x0	// _287, tmp790
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC116	//, tmp510,
	mov	x2, 1	//,
.LEHB248:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE248:
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x0, x23	//, _287
	mov	x1, x27	//, initial_trees
.LEHB249:
	bl	_ZNSo9_M_insertImEERSoT_		//
.LEHE249:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC161	// tmp512,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x23, x0	// _288, tmp795
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC161	//, tmp512,
	mov	x2, 11	//,
.LEHB250:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE250:
// /usr/include/c++/13/ostream:134: 	__pf(*this);
	ldr	x1, [x23]	// MEM[(struct basic_ostream *)_288]._vptr.basic_ostream, MEM[(struct basic_ostream *)_288]._vptr.basic_ostream
// /usr/include/c++/13/bits/ios_base.h:84:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	mov	w3, -75	// tmp517,
// main.cpp:332:             <<"; checksum="<<hex<<checksum(current)<<dec<<"\n";
	mov	x0, x24	//, tmp666
// /usr/include/c++/13/ostream:134: 	__pf(*this);
	ldr	x2, [x1, -24]	// MEM[(long int *)_289 + -24B], MEM[(long int *)_289 + -24B]
	add	x2, x23, x2	// _292, _288, MEM[(long int *)_289 + -24B]
// /usr/include/c++/13/bits/ios_base.h:84:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	ldr	w1, [x2, 24]	//, _292->_M_flags
	and	w1, w1, w3	// tmp515, _292->_M_flags, tmp517
// /usr/include/c++/13/bits/ios_base.h:88:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orr	w1, w1, 8	// tmp518, tmp515,
// /usr/include/c++/13/bits/ios_base.h:100:   { return __a = __a | __b; }
	str	w1, [x2, 24]	// tmp518, MEM[(_Ios_Fmtflags &)_292 + 24]
// main.cpp:332:             <<"; checksum="<<hex<<checksum(current)<<dec<<"\n";
	bl	_Z8checksumRKSt6vectorI4CellSaIS0_EE		//
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x1, x0	//, tmp800
	mov	x0, x23	//, _288
.LEHB251:
	bl	_ZNSo9_M_insertImEERSoT_		//
.LEHE251:
// /usr/include/c++/13/ostream:134: 	__pf(*this);
	ldr	x3, [x0]	// MEM[(struct basic_ostream *)_293]._vptr.basic_ostream, MEM[(struct basic_ostream *)_293]._vptr.basic_ostream
// /usr/include/c++/13/bits/ios_base.h:84:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	mov	w4, -75	// tmp524,
// main.cpp:332:             <<"; checksum="<<hex<<checksum(current)<<dec<<"\n";
	add	x1, x25, :lo12:.LC129	//, tmp671,
// /usr/include/c++/13/ostream:134: 	__pf(*this);
	ldr	x3, [x3, -24]	// MEM[(long int *)_294 + -24B], MEM[(long int *)_294 + -24B]
	add	x2, x0, x3	// _297, _293, MEM[(long int *)_294 + -24B]
// /usr/include/c++/13/bits/ios_base.h:84:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	ldr	w3, [x2, 24]	//, _297->_M_flags
	and	w3, w3, w4	// tmp522, _297->_M_flags, tmp524
// /usr/include/c++/13/bits/ios_base.h:88:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orr	w3, w3, 2	// tmp525, tmp522,
// /usr/include/c++/13/bits/ios_base.h:100:   { return __a = __a | __b; }
	str	w3, [x2, 24]	// tmp525, MEM[(_Ios_Fmtflags &)_297 + 24]
.LEHB252:
// main.cpp:332:             <<"; checksum="<<hex<<checksum(current)<<dec<<"\n";
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		//
.LEHE252:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	adrp	x1, .LC162	// tmp529,
	mov	x2, 20	//,
	add	x1, x1, :lo12:.LC162	//, tmp529,
.LEHB253:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE253:
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	mov	x1, 8	//,
.LEHB254:
	bl	_ZNSo9_M_insertImEERSoT_		//
.LEHE254:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC163	// tmp533,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x23, x0	// _298, tmp808
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC163	//, tmp533,
	mov	x2, 16	//,
.LEHB255:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE255:
// main.cpp:334:             <<2.0*current.size()*sizeof(Cell)<<"; quemado_pct_total="<<100.0*s.count[BURNT]/current.size()
	ucvtf	d8, x20	// _42, _259
// main.cpp:334:             <<2.0*current.size()*sizeof(Cell)<<"; quemado_pct_total="<<100.0*s.count[BURNT]/current.size()
	fmov	d0, 8.0e+0	// tmp536,
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	mov	x0, x23	//, _298
// main.cpp:334:             <<2.0*current.size()*sizeof(Cell)<<"; quemado_pct_total="<<100.0*s.count[BURNT]/current.size()
	fadd	d1, d8, d8	// tmp534, _42, _42
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	fmul	d0, d1, d0	//, tmp534, tmp536
.LEHB256:
	bl	_ZNSo9_M_insertIdEERSoT_		//
.LEHE256:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC164	// tmp538,
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	mov	x20, x0	// _299, tmp813
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC164	//, tmp538,
	mov	x2, 20	//,
.LEHB257:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE257:
// main.cpp:334:             <<2.0*current.size()*sizeof(Cell)<<"; quemado_pct_total="<<100.0*s.count[BURNT]/current.size()
	ucvtf	d0, x22	// tmp539, s$count$3
	mov	x0, 4636737291354636288	// tmp869,
	fmov	d1, x0	// tmp541, tmp869
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	mov	x0, x20	//, _299
// main.cpp:334:             <<2.0*current.size()*sizeof(Cell)<<"; quemado_pct_total="<<100.0*s.count[BURNT]/current.size()
	fmul	d0, d0, d1	// tmp540, tmp539, tmp541
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	fdiv	d0, d0, d8	//, tmp540, _42
.LEHB258:
	bl	_ZNSo9_M_insertIdEERSoT_		//
.LEHE258:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC165	// tmp544,
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	mov	x20, x0	// _305, tmp818
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC165	//, tmp544,
	mov	x2, 22	//,
.LEHB259:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE259:
// main.cpp:335:             <<"; afectado_pct_bosque="<<100.0*s.affected/initial_trees<<"\n";
	ucvtf	d0, x21	// tmp545, s$affected
	mov	x0, 4636737291354636288	// tmp868,
	fmov	d1, x0	// tmp547, tmp868
// main.cpp:335:             <<"; afectado_pct_bosque="<<100.0*s.affected/initial_trees<<"\n";
	ucvtf	d2, x27	// tmp548, initial_trees
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	mov	x0, x20	//, _305
// main.cpp:335:             <<"; afectado_pct_bosque="<<100.0*s.affected/initial_trees<<"\n";
	fmul	d0, d0, d1	// tmp546, tmp545, tmp547
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	fdiv	d0, d0, d2	//, tmp546, tmp548
.LEHB260:
	bl	_ZNSo9_M_insertIdEERSoT_		//
.LEHE260:
// main.cpp:335:             <<"; afectado_pct_bosque="<<100.0*s.affected/initial_trees<<"\n";
	add	x1, x25, :lo12:.LC129	//, tmp671,
.LEHB261:
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		//
.LEHE261:
// main.cpp:336:         if(o.profile) cout<<"Diagnóstico: humedad_s="<<moisture_work.count()<<"; fuego_s="<<fire_work.count()
	ldrb	w0, [sp, 345]	// o.profile, o.profile
	tbnz	x0, 0, .L2164	// o.profile,,
.L1923:
// main.cpp:338:         if(interrupted) {cerr<<"Interrumpido tras "<<executed<<" iteraciones\n";return 130;}
	adrp	x0, .LANCHOR0	// tmp570,
	ldr	w20, [x0, #:lo12:.LANCHOR0]	//, interrupted
// main.cpp:338:         if(interrupted) {cerr<<"Interrumpido tras "<<executed<<" iteraciones\n";return 130;}
	cbnz	w20, .L2165	// <retval>,
// main.cpp:339:         if(stopped) cout<<"Fin visual: detenido con q.\n";
	ldr	x0, [sp, 48]	// tmp920, %sfp
	tbnz	x0, 0, .L2166	// tmp920,,
.L1948:
// main.cpp:340:         if(o.visual && !s.count[FIRE]) cout<<"Fin visual: fuego extinguido.\n";
	cmp	x28, 0	// s$count$2,
	ldrb	w0, [sp, 344]	//, o.visual
	cset	w1, eq	// tmp589,
	tst	w1, w0	// tmp589, o.visual
	bne	.L2167		//,
.L1950:
// main.cpp:48:     ~TerminalInput() {if(enabled) tcsetattr(STDIN_FILENO,TCSANOW,&saved);}
	ldrb	w0, [sp, 244]	// input.enabled, input.enabled
	tbnz	x0, 0, .L2168	// input.enabled,,
.L1952:
// main.cpp:341:     } catch(const bad_alloc&) {if(cursor_hidden) cout<<"\033[?25h"; cerr<<"Error: memoria insuficiente\n";return 1;}
	mov	x0, x26	//, tmp665
	bl	_ZNSt6vectorI4CellSaIS0_EED1Ev		//
// main.cpp:341:     } catch(const bad_alloc&) {if(cursor_hidden) cout<<"\033[?25h"; cerr<<"Error: memoria insuficiente\n";return 1;}
	mov	x0, x24	//, tmp666
	bl	_ZNSt6vectorI4CellSaIS0_EED1Ev		//
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	add	x0, sp, 296	//,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L2154:
// main.cpp:344: }
	ldp	x25, x26, [sp, 432]	//,,
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 448]	//,,
	.cfi_restore 28
	.cfi_restore 27
	ldp	d8, d9, [sp, 464]	//,,
	.cfi_restore 73
	.cfi_restore 72
	ldp	d10, d11, [sp, 480]	//,,
	.cfi_restore 75
	.cfi_restore 74
	adrp	x21, :got:__stack_chk_guard	// tmp668,
	ldr	x21, [x21, :got_lo12:__stack_chk_guard]	// tmp668,
.L1766:
	ldr	x0, [sp, 360]	// tmp884, D.122343
	ldr	x1, [x21]	// tmp885,
	subs	x0, x0, x1	// tmp884, tmp885
	mov	x1, 0	// tmp885
	bne	.L2169		//,
	ldp	x29, x30, [sp, 368]	//,,
	mov	w0, w20	//, <retval>
	ldp	x19, x20, [sp, 384]	//,,
	ldp	x21, x22, [sp, 400]	//,,
	ldp	x23, x24, [sp, 416]	//,,
	add	sp, sp, 496	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret	
	.p2align 2,,3
.L1778:
	.cfi_def_cfa_offset 496
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
	ldr	x0, [x22]	// MEM[(const struct Cell &)_424], MEM[(const struct Cell &)_424]
	str	x0, [x21], 8	// MEM[(const struct Cell &)_424], MEM[(struct Cell *)__first_415]
.L2151:
// /usr/include/c++/13/bits/stl_algobase.h:918:       for (; __first != __last; ++__first)
	cmp	x25, x21	// _304, __first
	bne	.L1778		//,
	b	.L1775		//
.L2161:
// main.cpp:293:         if(o.visual) {if(tty) {cout<<"\033[2J\033[H\033[?25l";cursor_hidden=true;} draw(current,o,0,initial_trees,tty);}
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	adrp	x1, .LC140	// tmp335,
	add	x1, x1, :lo12:.LC140	//, tmp335,
.LEHB262:
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		//
.LEHE262:
	b	.L1782		//
	.p2align 2,,3
.L1789:
// main.cpp:301:             auto work_start=(o.visual || o.profile)?chrono::steady_clock::now():chrono::steady_clock::time_point{};
	bl	_ZNSt6chrono3_V212steady_clock3nowEv		//
// main.cpp:303:             auto moisture_end=o.profile?chrono::steady_clock::now():chrono::steady_clock::time_point{};
	ldrb	w28, [sp, 345]	// pretmp_238, o.profile
// main.cpp:302:             update_moisture(current,next,o.rows,o.cols);
	ldp	x2, x3, [sp, 248]	//,, o.rows
	mov	x1, x26	//, tmp665
// main.cpp:301:             auto work_start=(o.visual || o.profile)?chrono::steady_clock::now():chrono::steady_clock::time_point{};
	str	x0, [sp, 24]	// tmp687, %sfp
// main.cpp:302:             update_moisture(current,next,o.rows,o.cols);
	mov	x0, x24	//, tmp666
	bl	_Z15update_moistureRKSt6vectorI4CellSaIS0_EERS2_mm		//
// main.cpp:303:             auto moisture_end=o.profile?chrono::steady_clock::now():chrono::steady_clock::time_point{};
	tbz	x28, 0, .L2152	// pretmp_238,,
// main.cpp:303:             auto moisture_end=o.profile?chrono::steady_clock::now():chrono::steady_clock::time_point{};
	bl	_ZNSt6chrono3_V212steady_clock3nowEv		//
	mov	x28, x0	// moisture_end$__d$__r, tmp688
// main.cpp:304:             size_t active=update_fire(current,next,o);
	ldr	x2, [sp, 16]	//, %sfp
	mov	x1, x26	//, tmp665
	mov	x0, x24	//, tmp666
	bl	_Z11update_fireRKSt6vectorI4CellSaIS0_EERS2_RK7Options		//
// main.cpp:305:             if(o.profile) {
	ldrb	w2, [sp, 345]	// o.profile, o.profile
// main.cpp:304:             size_t active=update_fire(current,next,o);
	mov	x1, x0	// active, tmp689
// main.cpp:305:             if(o.profile) {
	tbz	x2, 0, .L1791	// o.profile,,
.L2162:
	str	x0, [sp, 40]	// active, %sfp
// main.cpp:306:                 auto fire_end=chrono::steady_clock::now();
	bl	_ZNSt6chrono3_V212steady_clock3nowEv		//
// /usr/include/c++/13/bits/chrono.h:716: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	ldr	x1, [sp, 24]	// work_start$__d$__r, %sfp
	sub	x0, x0, x28	// tmp359, tmp690, moisture_end$__d$__r
// /usr/include/c++/13/bits/stl_vector.h:116: 	  _M_finish = __x._M_finish;
	stp	x23, x20, [sp, 80]	// prephitmp_117, prephitmp_92, MEM[(struct _Vector_impl_data *)&next]._M_start
// main.cpp:312:             ++executed;
	add	x19, x19, 1	// executed, executed,
// /usr/include/c++/13/bits/chrono.h:716: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x28, x1	// tmp355, moisture_end$__d$__r, work_start$__d$__r
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	scvtf	d0, x0	// tmp360, tmp359
// main.cpp:311:             if(o.visual) visual_work+=chrono::steady_clock::now()-work_start;
	ldrb	w0, [sp, 344]	// o.visual, o.visual
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	scvtf	d1, x2	// tmp356, tmp355
// /usr/include/c++/13/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	ldr	x28, [sp, 120]	// _509, MEM[(const struct _Vector_impl_data &)&current]._M_end_of_storage
// /usr/include/c++/13/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	stp	x28, x22, [sp, 96]	// _509, prephitmp_87, MEM[(struct _Vector_impl_data *)&next]._M_end_of_storage
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	fdiv	d0, d0, d10	// tmp361, tmp360, tmp674
// /usr/include/c++/13/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	stp	x21, x25, [sp, 112]	// __first, _304, MEM[(struct _Vector_impl_data *)&current]._M_finish
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	fdiv	d1, d1, d10	// tmp357, tmp356, tmp674
// /usr/include/c++/13/bits/chrono.h:627: 	  __r += __d.count();
	ldr	x1, [sp, 40]	// active, %sfp
	fadd	d9, d9, d0	// fire_work$__r, fire_work$__r, tmp361
	fadd	d11, d11, d1	// moisture_work$__r, moisture_work$__r, tmp357
// main.cpp:311:             if(o.visual) visual_work+=chrono::steady_clock::now()-work_start;
	tbz	x0, 0, .L1794	// o.visual,,
.L1792:
	str	x1, [sp, 40]	// active, %sfp
// main.cpp:311:             if(o.visual) visual_work+=chrono::steady_clock::now()-work_start;
	bl	_ZNSt6chrono3_V212steady_clock3nowEv		//
// /usr/include/c++/13/bits/chrono.h:716: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	ldr	x1, [sp, 24]	// work_start$__d$__r, %sfp
// main.cpp:313:             if(o.visual) {
	ldrb	w2, [sp, 344]	// o.visual, o.visual
// /usr/include/c++/13/bits/chrono.h:716: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x0, x0, x1	// tmp367, tmp691, work_start$__d$__r
// main.cpp:313:             if(o.visual) {
	ldr	x1, [sp, 40]	// active, %sfp
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	scvtf	d0, x0	// tmp368, tmp367
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	fdiv	d0, d0, d10	// tmp369, tmp368, tmp674
// /usr/include/c++/13/bits/chrono.h:627: 	  __r += __d.count();
	fadd	d8, d8, d0	// visual_work$__r, visual_work$__r, tmp369
// main.cpp:313:             if(o.visual) {
	tbz	x2, 0, .L1794	// o.visual,,
// main.cpp:314:                 if(active) ++active_steps;
	cbnz	x1, .L1795	// active,
// main.cpp:315:                 if(tty || step+1==o.steps || !active) draw(current,o,executed,initial_trees,tty);
	ldr	x1, [sp, 16]	//, %sfp
	mov	x3, x27	//, initial_trees
	mov	x2, x19	//, executed
	mov	x0, x24	//, tmp666
	mov	w4, 0	//,
.LEHB263:
	bl	_Z4drawRKSt6vectorI4CellSaIS0_EERK7Optionsmmb		//
	b	.L2113		//
	.p2align 2,,3
.L1795:
// main.cpp:314:                 if(active) ++active_steps;
	ldr	x1, [sp, 8]	// active_steps, %sfp
// main.cpp:315:                 if(tty || step+1==o.steps || !active) draw(current,o,executed,initial_trees,tty);
	ldr	x0, [sp, 264]	// pretmp_523, o.steps
// main.cpp:314:                 if(active) ++active_steps;
	add	x1, x1, 1	// active_steps, active_steps,
	str	x1, [sp, 8]	// active_steps, %sfp
// main.cpp:315:                 if(tty || step+1==o.steps || !active) draw(current,o,executed,initial_trees,tty);
	cmp	x19, x0	// executed, pretmp_523
	bne	.L1793		//,
// main.cpp:315:                 if(tty || step+1==o.steps || !active) draw(current,o,executed,initial_trees,tty);
	ldr	x1, [sp, 16]	//, %sfp
	mov	x3, x27	//, initial_trees
	mov	x2, x19	//, executed
	mov	x0, x24	//, tmp666
	mov	w4, 0	//,
	bl	_Z4drawRKSt6vectorI4CellSaIS0_EERK7Optionsmmb		//
.LEHE263:
// main.cpp:299:         for(size_t step=0;step<o.steps && !interrupted;++step) {
	ldr	x0, [sp, 264]	// pretmp_523, o.steps
	b	.L1793		//
.L2160:
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 72
	.cfi_restore 73
	.cfi_restore 74
	.cfi_restore 75
// /usr/include/c++/13/bits/stl_vector.h:400: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	mov	x25, 0	// _304,
	mov	x22, 0	// prephitmp_87,
// /usr/include/c++/13/bits/stl_vector.h:381: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	mov	x21, 0	// __first,
// /usr/include/c++/13/bits/stl_vector.h:398: 	this->_M_impl._M_start = this->_M_allocate(__n);
	str	xzr, [sp, 80]	//, MEM[(struct _Vector_base *)&next]._M_impl.D.100663._M_start
// /usr/include/c++/13/bits/stl_vector.h:400: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	str	xzr, [sp, 96]	//, MEM[(struct _Vector_base *)&next]._M_impl.D.100663._M_end_of_storage
	stp	x27, x28, [sp, 448]	//,,
	.cfi_offset 28, -40
	.cfi_offset 27, -48
	stp	d8, d9, [sp, 464]	//,,
	.cfi_offset 73, -24
	.cfi_offset 72, -32
	stp	d10, d11, [sp, 480]	//,,
	.cfi_offset 75, -8
	.cfi_offset 74, -16
	b	.L1775		//
.L1781:
// main.cpp:294:         auto start=chrono::steady_clock::now();
	bl	_ZNSt6chrono3_V212steady_clock3nowEv		//
	str	x0, [sp, 64]	// tmp866, %sfp
// main.cpp:299:         for(size_t step=0;step<o.steps && !interrupted;++step) {
	ldr	x19, [sp, 264]	// executed, o.steps
// main.cpp:299:         for(size_t step=0;step<o.steps && !interrupted;++step) {
	cbnz	x19, .L1979	// executed,
// main.cpp:321:         auto end=chrono::steady_clock::now();
	bl	_ZNSt6chrono3_V212steady_clock3nowEv		//
	add	x26, sp, 80	// tmp665,,
// main.cpp:296:         chrono::duration<double> moisture_work{0}, fire_work{0};
	movi	d9, #0	// fire_work$__r
// main.cpp:321:         auto end=chrono::steady_clock::now();
	stp	xzr, x0, [sp, 8]	//, tmp865, %sfp
// main.cpp:296:         chrono::duration<double> moisture_work{0}, fire_work{0};
	fmov	d11, d9	// moisture_work$__r, fire_work$__r
// main.cpp:295:         chrono::duration<double> visual_work{0};
	fmov	d8, d9	// visual_work$__r, fire_work$__r
	b	.L1978		//
.L2164:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	adrp	x1, .LC166	// tmp555,
	mov	x2, 24	//,
	add	x1, x1, :lo12:.LC166	//, tmp555,
.LEHB264:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE264:
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	fmov	d0, d11	//, moisture_work$__r
.LEHB265:
	bl	_ZNSo9_M_insertIdEERSoT_		//
.LEHE265:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC167	// tmp559,
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	mov	x20, x0	// _312, tmp829
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC167	//, tmp559,
	mov	x2, 10	//,
.LEHB266:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE266:
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	fmov	d0, d9	//, fire_work$__r
	mov	x0, x20	//, _312
.LEHB267:
	bl	_ZNSo9_M_insertIdEERSoT_		//
.LEHE267:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC168	// tmp561,
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	mov	x20, x0	// _313, tmp834
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC168	//, tmp561,
	mov	x2, 10	//,
.LEHB268:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE268:
// /usr/include/c++/13/bits/chrono.h:716: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	ldr	x0, [sp, 16]	// end$__d$__r, %sfp
// /usr/include/c++/13/bits/stl_algobase.h:264:       return __a;
	movi	d2, #0	// tmp672
// /usr/include/c++/13/bits/chrono.h:716: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	ldr	x1, [sp, 64]	// start$__d$__r, %sfp
	sub	x1, x0, x1	// tmp562, end$__d$__r, start$__d$__r
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	mov	x0, 225833675390976	// tmp867,
	movk	x0, 0x41cd, lsl 48	// tmp867,,
	fmov	d1, x0	// tmp565, tmp867
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	scvtf	d0, x1	// tmp563, tmp562
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	mov	x0, x20	//, _313
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	fdiv	d0, d0, d1	// tmp564, tmp563, tmp565
// main.cpp:337:             <<"; resto_s="<<max(0.0,chrono::duration<double>(end-start).count()-moisture_work.count()-fire_work.count())<<"\n";
	fsub	d0, d0, d11	// tmp566, tmp564, moisture_work$__r
// main.cpp:337:             <<"; resto_s="<<max(0.0,chrono::duration<double>(end-start).count()-moisture_work.count()-fire_work.count())<<"\n";
	fsub	d0, d0, d9	// _55, tmp566, fire_work$__r
// /usr/include/c++/13/bits/stl_algobase.h:264:       return __a;
	fcmpe	d0, d2	// _55,
// /usr/include/c++/13/ostream:223:       { return _M_insert(__f); }
	fcsel	d0, d0, d2, gt	//, _55, tmp672,
.LEHB269:
	bl	_ZNSo9_M_insertIdEERSoT_		//
.LEHE269:
// main.cpp:337:             <<"; resto_s="<<max(0.0,chrono::duration<double>(end-start).count()-moisture_work.count()-fire_work.count())<<"\n";
	add	x1, x25, :lo12:.LC129	//, tmp671,
.LEHB270:
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		//
.LEHE270:
	b	.L1923		//
.L1985:
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	mov	x0, 225833675390976	// tmp871,
// main.cpp:296:         chrono::duration<double> moisture_work{0}, fire_work{0};
	fmov	d11, d9	// moisture_work$__r, fire_work$__r
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	movk	x0, 0x41cd, lsl 48	// tmp871,,
// main.cpp:295:         chrono::duration<double> visual_work{0};
	fmov	d8, d9	// visual_work$__r, fire_work$__r
	add	x26, sp, 80	// tmp665,,
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	fmov	d10, x0	// tmp676, tmp871
// main.cpp:297:         size_t executed=0, active_steps=0;
	mov	x19, 0	// executed,
// main.cpp:297:         size_t executed=0, active_steps=0;
	str	xzr, [sp, 8]	//, %sfp
	str	x1, [sp, 72]	// tmp667, %sfp
// main.cpp:299:         for(size_t step=0;step<o.steps && !interrupted;++step) {
	add	x1, x1, :lo12:.LANCHOR0	// tmp425, tmp667,
	str	x1, [sp, 40]	// tmp425, %sfp
	b	.L1784		//
	.p2align 2,,3
.L1806:
// main.cpp:302:             update_moisture(current,next,o.rows,o.cols);
	ldp	x2, x3, [sp, 248]	//,, o.rows
	mov	x1, x26	//, tmp665
	mov	x0, x24	//, tmp666
// /usr/include/c++/13/bits/chrono.h:933: 	constexpr time_point() : __d(duration::zero())
	mov	x28, 0	// moisture_end$__d$__r,
// main.cpp:302:             update_moisture(current,next,o.rows,o.cols);
	bl	_Z15update_moistureRKSt6vectorI4CellSaIS0_EERS2_mm		//
// /usr/include/c++/13/bits/chrono.h:933: 	constexpr time_point() : __d(duration::zero())
	str	xzr, [sp, 24]	//, %sfp
.L1807:
// main.cpp:304:             size_t active=update_fire(current,next,o);
	ldr	x2, [sp, 16]	//, %sfp
	mov	x1, x26	//, tmp665
	mov	x0, x24	//, tmp666
	bl	_Z11update_fireRKSt6vectorI4CellSaIS0_EERS2_RK7Options		//
// main.cpp:305:             if(o.profile) {
	ldrb	w2, [sp, 345]	// o.profile, o.profile
// main.cpp:304:             size_t active=update_fire(current,next,o);
	mov	x1, x0	// active, tmp695
// main.cpp:305:             if(o.profile) {
	tbnz	x2, 0, .L2170	// o.profile,,
.L1808:
// main.cpp:311:             if(o.visual) visual_work+=chrono::steady_clock::now()-work_start;
	ldrb	w0, [sp, 344]	// o.visual, o.visual
// main.cpp:312:             ++executed;
	add	x19, x19, 1	// executed, executed,
// /usr/include/c++/13/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	ldr	x28, [sp, 120]	// _239, MEM[(const struct _Vector_impl_data &)&current]._M_end_of_storage
// /usr/include/c++/13/bits/stl_vector.h:116: 	  _M_finish = __x._M_finish;
	stp	x23, x20, [sp, 80]	// prephitmp_117, prephitmp_92, MEM[(struct _Vector_impl_data *)&next]._M_start
// /usr/include/c++/13/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	stp	x28, x22, [sp, 96]	// _239, prephitmp_87, MEM[(struct _Vector_impl_data *)&next]._M_end_of_storage
// /usr/include/c++/13/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	stp	x21, x25, [sp, 112]	// __first, _304, MEM[(struct _Vector_impl_data *)&current]._M_finish
// main.cpp:311:             if(o.visual) visual_work+=chrono::steady_clock::now()-work_start;
	tbnz	x0, 0, .L2171	// o.visual,,
.L1809:
// main.cpp:318:                 active_steps+=active!=0;
	ldr	x0, [sp, 8]	// active_steps, %sfp
// main.cpp:318:                 active_steps+=active!=0;
	cmp	x1, 0	// active,
// main.cpp:299:         for(size_t step=0;step<o.steps && !interrupted;++step) {
	ldr	x2, [sp, 264]	// pretmp_478, o.steps
// main.cpp:318:                 active_steps+=active!=0;
	cinc	x0, x0, ne	// active_steps, active_steps,
	str	x0, [sp, 8]	// active_steps, %sfp
.L1812:
	mov	x0, x22	// prephitmp_170, prephitmp_87
	mov	x1, x21	// prephitmp_428, __first
	mov	x22, x23	// prephitmp_87, prephitmp_117
	mov	x21, x20	// __first, prephitmp_92
// main.cpp:299:         for(size_t step=0;step<o.steps && !interrupted;++step) {
	cmp	x2, x19	// pretmp_478, executed
	bls	.L2113		//,
	mov	x25, x28	// _304, _239
	mov	x20, x1	// prephitmp_92, prephitmp_428
	mov	x23, x0	// prephitmp_117, prephitmp_170
.L1784:
// main.cpp:299:         for(size_t step=0;step<o.steps && !interrupted;++step) {
	ldr	x0, [sp, 40]	// tmp425, %sfp
	ldr	w0, [x0]	//, interrupted
// main.cpp:299:         for(size_t step=0;step<o.steps && !interrupted;++step) {
	cbnz	w0, .L2113	// interrupted.160_24,
// main.cpp:300:             if(o.visual && tty && !wait_frame(o,input,current,executed,initial_trees)) {stopped=!interrupted;break;}
	ldrb	w0, [sp, 344]	// o.visual, o.visual
	tbnz	x0, 0, .L2172	// o.visual,,
.L1815:
// main.cpp:301:             auto work_start=(o.visual || o.profile)?chrono::steady_clock::now():chrono::steady_clock::time_point{};
	ldrb	w0, [sp, 345]	// o.profile, o.profile
	tbz	x0, 0, .L1806	// o.profile,,
.L1805:
// main.cpp:301:             auto work_start=(o.visual || o.profile)?chrono::steady_clock::now():chrono::steady_clock::time_point{};
	bl	_ZNSt6chrono3_V212steady_clock3nowEv		//
	str	x0, [sp, 24]	// tmp693, %sfp
// main.cpp:302:             update_moisture(current,next,o.rows,o.cols);
	ldp	x2, x3, [sp, 248]	//,, o.rows
	mov	x1, x26	//, tmp665
// main.cpp:303:             auto moisture_end=o.profile?chrono::steady_clock::now():chrono::steady_clock::time_point{};
	ldrb	w4, [sp, 345]	// pretmp_473, o.profile
// main.cpp:302:             update_moisture(current,next,o.rows,o.cols);
	mov	x0, x24	//, tmp666
// main.cpp:303:             auto moisture_end=o.profile?chrono::steady_clock::now():chrono::steady_clock::time_point{};
	str	w4, [sp, 32]	// pretmp_473, %sfp
// /usr/include/c++/13/bits/chrono.h:933: 	constexpr time_point() : __d(duration::zero())
	mov	x28, 0	// moisture_end$__d$__r,
// main.cpp:302:             update_moisture(current,next,o.rows,o.cols);
	bl	_Z15update_moistureRKSt6vectorI4CellSaIS0_EERS2_mm		//
// main.cpp:303:             auto moisture_end=o.profile?chrono::steady_clock::now():chrono::steady_clock::time_point{};
	ldr	w4, [sp, 32]	//, %sfp
	tbz	x4, 0, .L1807	// pretmp_473,,
// main.cpp:303:             auto moisture_end=o.profile?chrono::steady_clock::now():chrono::steady_clock::time_point{};
	bl	_ZNSt6chrono3_V212steady_clock3nowEv		//
	mov	x28, x0	// moisture_end$__d$__r, tmp694
// main.cpp:304:             size_t active=update_fire(current,next,o);
	ldr	x2, [sp, 16]	//, %sfp
	mov	x1, x26	//, tmp665
	mov	x0, x24	//, tmp666
	bl	_Z11update_fireRKSt6vectorI4CellSaIS0_EERS2_RK7Options		//
// main.cpp:305:             if(o.profile) {
	ldrb	w2, [sp, 345]	// o.profile, o.profile
// main.cpp:304:             size_t active=update_fire(current,next,o);
	mov	x1, x0	// active, tmp695
// main.cpp:305:             if(o.profile) {
	tbz	x2, 0, .L1808	// o.profile,,
.L2170:
	str	x0, [sp, 32]	// active, %sfp
// main.cpp:306:                 auto fire_end=chrono::steady_clock::now();
	bl	_ZNSt6chrono3_V212steady_clock3nowEv		//
// /usr/include/c++/13/bits/chrono.h:716: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	ldr	x1, [sp, 24]	// work_start$__d$__r, %sfp
	sub	x0, x0, x28	// tmp405, tmp696, moisture_end$__d$__r
// /usr/include/c++/13/bits/stl_vector.h:116: 	  _M_finish = __x._M_finish;
	stp	x23, x20, [sp, 80]	// prephitmp_117, prephitmp_92, MEM[(struct _Vector_impl_data *)&next]._M_start
// main.cpp:312:             ++executed;
	add	x19, x19, 1	// executed, executed,
// /usr/include/c++/13/bits/chrono.h:716: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x28, x1	// tmp401, moisture_end$__d$__r, work_start$__d$__r
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	scvtf	d0, x0	// tmp406, tmp405
// main.cpp:311:             if(o.visual) visual_work+=chrono::steady_clock::now()-work_start;
	ldrb	w0, [sp, 344]	// o.visual, o.visual
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	scvtf	d1, x2	// tmp402, tmp401
// /usr/include/c++/13/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	ldr	x28, [sp, 120]	// _239, MEM[(const struct _Vector_impl_data &)&current]._M_end_of_storage
// /usr/include/c++/13/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	stp	x28, x22, [sp, 96]	// _239, prephitmp_87, MEM[(struct _Vector_impl_data *)&next]._M_end_of_storage
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	fdiv	d0, d0, d10	// tmp407, tmp406, tmp676
// /usr/include/c++/13/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	stp	x21, x25, [sp, 112]	// __first, _304, MEM[(struct _Vector_impl_data *)&current]._M_finish
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	fdiv	d1, d1, d10	// tmp403, tmp402, tmp676
// /usr/include/c++/13/bits/chrono.h:627: 	  __r += __d.count();
	ldr	x1, [sp, 32]	// active, %sfp
	fadd	d9, d9, d0	// fire_work$__r, fire_work$__r, tmp407
	fadd	d11, d11, d1	// moisture_work$__r, moisture_work$__r, tmp403
// main.cpp:311:             if(o.visual) visual_work+=chrono::steady_clock::now()-work_start;
	tbz	x0, 0, .L1809	// o.visual,,
.L2171:
	str	x1, [sp, 32]	// active, %sfp
// main.cpp:311:             if(o.visual) visual_work+=chrono::steady_clock::now()-work_start;
	bl	_ZNSt6chrono3_V212steady_clock3nowEv		//
// /usr/include/c++/13/bits/chrono.h:716: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	ldr	x1, [sp, 24]	// work_start$__d$__r, %sfp
// main.cpp:313:             if(o.visual) {
	ldrb	w2, [sp, 344]	// o.visual, o.visual
// /usr/include/c++/13/bits/chrono.h:716: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x0, x0, x1	// tmp411, tmp697, work_start$__d$__r
// main.cpp:313:             if(o.visual) {
	ldr	x1, [sp, 32]	// active, %sfp
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	scvtf	d0, x0	// tmp412, tmp411
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	fdiv	d0, d0, d10	// tmp413, tmp412, tmp676
// /usr/include/c++/13/bits/chrono.h:627: 	  __r += __d.count();
	fadd	d8, d8, d0	// visual_work$__r, visual_work$__r, tmp413
// main.cpp:313:             if(o.visual) {
	tbz	x2, 0, .L1809	// o.visual,,
// main.cpp:314:                 if(active) ++active_steps;
	cbz	x1, .L1810	// active,
// main.cpp:315:                 if(tty || step+1==o.steps || !active) draw(current,o,executed,initial_trees,tty);
	ldp	x0, x1, [sp, 8]	// active_steps,, %sfp
	mov	x3, x27	//, initial_trees
	mov	x2, x19	//, executed
	mov	w4, 1	//,
// main.cpp:314:                 if(active) ++active_steps;
	add	x0, x0, 1	// active_steps, active_steps,
	str	x0, [sp, 8]	// active_steps, %sfp
// main.cpp:315:                 if(tty || step+1==o.steps || !active) draw(current,o,executed,initial_trees,tty);
	mov	x0, x24	//, tmp666
.LEHB271:
	bl	_Z4drawRKSt6vectorI4CellSaIS0_EERK7Optionsmmb		//
// main.cpp:299:         for(size_t step=0;step<o.steps && !interrupted;++step) {
	ldr	x2, [sp, 264]	// pretmp_478, o.steps
	b	.L1812		//
	.p2align 2,,3
.L1810:
// main.cpp:315:                 if(tty || step+1==o.steps || !active) draw(current,o,executed,initial_trees,tty);
	ldr	x1, [sp, 16]	//, %sfp
	mov	x3, x27	//, initial_trees
	mov	x2, x19	//, executed
	mov	x0, x24	//, tmp666
	mov	w4, 1	//,
	bl	_Z4drawRKSt6vectorI4CellSaIS0_EERK7Optionsmmb		//
	b	.L2113		//
	.p2align 2,,3
.L2172:
// main.cpp:300:             if(o.visual && tty && !wait_frame(o,input,current,executed,initial_trees)) {stopped=!interrupted;break;}
	ldr	x0, [sp, 16]	//, %sfp
	mov	x4, x27	//, initial_trees
	ldr	x1, [sp, 56]	//, %sfp
	mov	x3, x19	//, executed
	mov	x2, x24	//, tmp666
	bl	_Z10wait_frameR7OptionsR13TerminalInputRKSt6vectorI4CellSaIS4_EEmm		//
.LEHE271:
// main.cpp:300:             if(o.visual && tty && !wait_frame(o,input,current,executed,initial_trees)) {stopped=!interrupted;break;}
	tbz	x0, 0, .L2173	// tmp692,,
// main.cpp:301:             auto work_start=(o.visual || o.profile)?chrono::steady_clock::now():chrono::steady_clock::time_point{};
	ldrb	w0, [sp, 344]	// o.visual, o.visual
	tbnz	x0, 0, .L1805	// o.visual,,
	b	.L1815		//
.L2168:
// main.cpp:48:     ~TerminalInput() {if(enabled) tcsetattr(STDIN_FILENO,TCSANOW,&saved);}
	ldr	x2, [sp, 56]	//, %sfp
	mov	w1, 0	//,
	mov	w0, 0	//,
	bl	tcsetattr		//
	b	.L1952		//
.L2166:
// main.cpp:339:         if(stopped) cout<<"Fin visual: detenido con q.\n";
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	adrp	x1, .LC171	// tmp586,
	add	x1, x1, :lo12:.LC171	//, tmp586,
.LEHB272:
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		//
.LEHE272:
	b	.L1948		//
.L2167:
// main.cpp:340:         if(o.visual && !s.count[FIRE]) cout<<"Fin visual: fuego extinguido.\n";
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	adrp	x1, .LC172	// tmp596,
	add	x1, x1, :lo12:.LC172	//, tmp596,
.LEHB273:
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		//
.LEHE273:
	b	.L1950		//
.L2165:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x0, :got:_ZSt4cerr	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cerr]	//,
	adrp	x1, .LC169	// tmp572,
	mov	x2, 18	//,
	add	x1, x1, :lo12:.LC169	//, tmp572,
.LEHB274:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE274:
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	adrp	x0, :got:_ZSt4cerr	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cerr]	//,
	mov	x1, x19	//, executed
.LEHB275:
	bl	_ZNSo9_M_insertImEERSoT_		//
.LEHE275:
// main.cpp:338:         if(interrupted) {cerr<<"Interrumpido tras "<<executed<<" iteraciones\n";return 130;}
	adrp	x1, .LC170	// tmp576,
	add	x1, x1, :lo12:.LC170	//, tmp576,
.LEHB276:
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		//
.LEHE276:
// main.cpp:48:     ~TerminalInput() {if(enabled) tcsetattr(STDIN_FILENO,TCSANOW,&saved);}
	ldrb	w0, [sp, 244]	// input.enabled, input.enabled
	tbnz	x0, 0, .L2174	// input.enabled,,
.L1946:
// main.cpp:341:     } catch(const bad_alloc&) {if(cursor_hidden) cout<<"\033[?25h"; cerr<<"Error: memoria insuficiente\n";return 1;}
	mov	x0, x26	//, tmp665
	bl	_ZNSt6vectorI4CellSaIS0_EED1Ev		//
// main.cpp:341:     } catch(const bad_alloc&) {if(cursor_hidden) cout<<"\033[?25h"; cerr<<"Error: memoria insuficiente\n";return 1;}
	mov	x0, x24	//, tmp666
	bl	_ZNSt6vectorI4CellSaIS0_EED1Ev		//
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	add	x0, sp, 296	//,,
// main.cpp:338:         if(interrupted) {cerr<<"Interrumpido tras "<<executed<<" iteraciones\n";return 130;}
	mov	w20, 130	// <retval>,
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	b	.L2154		//
.L1982:
// main.cpp:287:         size_t initial_trees=1;
	mov	x27, 1	// initial_trees,
	b	.L1779		//
.L2173:
// main.cpp:300:             if(o.visual && tty && !wait_frame(o,input,current,executed,initial_trees)) {stopped=!interrupted;break;}
	ldr	x0, [sp, 72]	// tmp667, %sfp
	ldr	w0, [x0, #:lo12:.LANCHOR0]	//, interrupted
// main.cpp:300:             if(o.visual && tty && !wait_frame(o,input,current,executed,initial_trees)) {stopped=!interrupted;break;}
	cmp	w0, 0	// interrupted.157_11,
	cset	w20, eq	// stopped,
// main.cpp:300:             if(o.visual && tty && !wait_frame(o,input,current,executed,initial_trees)) {stopped=!interrupted;break;}
	b	.L1783		//
.L2174:
// main.cpp:48:     ~TerminalInput() {if(enabled) tcsetattr(STDIN_FILENO,TCSANOW,&saved);}
	ldr	x2, [sp, 56]	//, %sfp
	mov	w1, 0	//,
	mov	w0, 0	//,
	bl	tcsetattr		//
	b	.L1946		//
.L1984:
// main.cpp:296:         chrono::duration<double> moisture_work{0}, fire_work{0};
	movi	d9, #0	// fire_work$__r
	add	x26, sp, 80	// tmp665,,
// main.cpp:298:         bool stopped=false;
	mov	w20, 0	// stopped,
// main.cpp:297:         size_t executed=0, active_steps=0;
	str	xzr, [sp, 8]	//, %sfp
// main.cpp:296:         chrono::duration<double> moisture_work{0}, fire_work{0};
	fmov	d11, d9	// moisture_work$__r, fire_work$__r
// main.cpp:295:         chrono::duration<double> visual_work{0};
	fmov	d8, d9	// visual_work$__r, fire_work$__r
	b	.L1783		//
.L2159:
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 72
	.cfi_restore 73
	.cfi_restore 74
	.cfi_restore 75
// /usr/include/c++/13/bits/stl_vector.h:1910: 	  __throw_length_error(
	adrp	x21, :got:__stack_chk_guard	// tmp668,
	ldr	x21, [x21, :got_lo12:__stack_chk_guard]	// tmp668,
	ldr	x0, [sp, 360]	// tmp874, D.122343
	ldr	x1, [x21]	// tmp875,
	subs	x0, x0, x1	// tmp874, tmp875
	mov	x1, 0	// tmp875
	bne	.L2155		//,
	adrp	x0, .LC138	// tmp316,
	add	x0, x0, :lo12:.LC138	//, tmp316,
.LEHB277:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE277:
.L2169:
	.cfi_restore 25
	.cfi_restore 26
	stp	x25, x26, [sp, 432]	//,,
	.cfi_offset 26, -56
	.cfi_offset 25, -64
.L2155:
	stp	x27, x28, [sp, 448]	//,,
	.cfi_offset 28, -40
	.cfi_offset 27, -48
	stp	d8, d9, [sp, 464]	//,,
	.cfi_offset 73, -24
	.cfi_offset 72, -32
	stp	d10, d11, [sp, 480]	//,,
	.cfi_offset 75, -8
	.cfi_offset 74, -16
.L2156:
// main.cpp:344: }
	bl	__stack_chk_fail		//
.L2043:
.L2153:
// main.cpp:48:     ~TerminalInput() {if(enabled) tcsetattr(STDIN_FILENO,TCSANOW,&saved);}
	mov	x20, x0	// tmp610, tmp851
	mov	x19, x1	// tmp612, tmp852
	str	wzr, [sp, 48]	//, %sfp
.L1819:
// main.cpp:48:     ~TerminalInput() {if(enabled) tcsetattr(STDIN_FILENO,TCSANOW,&saved);}
	ldrb	w0, [sp, 244]	// input.enabled, input.enabled
	tbz	x0, 0, .L1954	// input.enabled,,
// main.cpp:48:     ~TerminalInput() {if(enabled) tcsetattr(STDIN_FILENO,TCSANOW,&saved);}
	ldr	x2, [sp, 56]	//, %sfp
	mov	w1, 0	//,
	mov	w0, 0	//,
	bl	tcsetattr		//
.L1954:
// main.cpp:341:     } catch(const bad_alloc&) {if(cursor_hidden) cout<<"\033[?25h"; cerr<<"Error: memoria insuficiente\n";return 1;}
	mov	x0, x26	//, tmp665
	bl	_ZNSt6vectorI4CellSaIS0_EED1Ev		//
	ldp	x27, x28, [sp, 448]	//,,
	.cfi_restore 28
	.cfi_restore 27
	ldp	d8, d9, [sp, 464]	//,,
	.cfi_restore 73
	.cfi_restore 72
	ldp	d10, d11, [sp, 480]	//,,
	.cfi_restore 75
	.cfi_restore 74
	adrp	x21, :got:__stack_chk_guard	// tmp668,
	ldr	x21, [x21, :got_lo12:__stack_chk_guard]	// tmp668,
.L1773:
	mov	x0, x24	//, tmp666
	bl	_ZNSt6vectorI4CellSaIS0_EED1Ev		//
	ldp	x25, x26, [sp, 432]	//,,
	.cfi_restore 26
	.cfi_restore 25
.L1769:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	add	x0, sp, 296	//,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	mov	x2, x20	// tmp621, tmp617
// main.cpp:341:     } catch(const bad_alloc&) {if(cursor_hidden) cout<<"\033[?25h"; cerr<<"Error: memoria insuficiente\n";return 1;}
	mov	x1, x19	// D.122216, tmp618
	cmp	x19, 3	// D.122216,
	beq	.L2175		//,
.L1956:
	cmp	x1, 3	// D.122216,
	bgt	.L1959		//,
	cmp	x1, 1	// D.122216,
	beq	.L1960		//,
	cmp	x1, 2	// D.122216,
	beq	.L1961		//,
.L1959:
	ldr	x0, [sp, 360]	// tmp876, D.122343
	ldr	x1, [x21]	// tmp877,
	subs	x0, x0, x1	// tmp876, tmp877
	mov	x1, 0	// tmp877
	stp	x25, x26, [sp, 432]	//,,
	.cfi_offset 26, -56
	.cfi_offset 25, -64
	stp	x27, x28, [sp, 448]	//,,
	.cfi_offset 28, -40
	.cfi_offset 27, -48
	stp	d8, d9, [sp, 464]	//,,
	.cfi_offset 73, -24
	.cfi_offset 72, -32
	stp	d10, d11, [sp, 480]	//,,
	.cfi_offset 75, -8
	.cfi_offset 74, -16
	bne	.L2156		//,
	mov	x0, x2	//, tmp621
.LEHB278:
	bl	_Unwind_Resume		//
.LEHE278:
.L2063:
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 72
	.cfi_restore 73
	.cfi_restore 74
	.cfi_restore 75
// main.cpp:341:     } catch(const bad_alloc&) {if(cursor_hidden) cout<<"\033[?25h"; cerr<<"Error: memoria insuficiente\n";return 1;}
	mov	x20, x0	// tmp614, tmp680
	mov	x19, x1	// tmp615, tmp681
	str	wzr, [sp, 48]	//, %sfp
	b	.L1773		//
.L2175:
	.cfi_restore 25
	.cfi_restore 26
// main.cpp:343:       catch(const exception& e) {if(cursor_hidden) cout<<"\033[?25h";cerr<<"Error: "<<e.what()<<". Usa --help.\n";return 1;}
	mov	x0, x20	//, tmp617
	bl	__cxa_begin_catch		//
	mov	x19, x0	// _594, tmp859
// main.cpp:343:       catch(const exception& e) {if(cursor_hidden) cout<<"\033[?25h";cerr<<"Error: "<<e.what()<<". Usa --help.\n";return 1;}
	ldr	x0, [sp, 48]	// tmp923, %sfp
	tbnz	x0, 0, .L1968	// tmp923,,
.L1977:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x0, :got:_ZSt4cerr	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cerr]	//,
	adrp	x1, .LC175	// tmp640,
	mov	x2, 7	//,
	add	x1, x1, :lo12:.LC175	//, tmp640,
.LEHB279:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// main.cpp:343:       catch(const exception& e) {if(cursor_hidden) cout<<"\033[?25h";cerr<<"Error: "<<e.what()<<". Usa --help.\n";return 1;}
	ldr	x1, [x19]	// MEM[(const struct exception *)_594]._vptr.exception, MEM[(const struct exception *)_594]._vptr.exception
// main.cpp:343:       catch(const exception& e) {if(cursor_hidden) cout<<"\033[?25h";cerr<<"Error: "<<e.what()<<". Usa --help.\n";return 1;}
	mov	x0, x19	//, _594
	ldr	x1, [x1, 16]	// MEM[(int (*) () *)_62 + 16B], MEM[(int (*) () *)_62 + 16B]
	blr	x1		// MEM[(int (*) () *)_62 + 16B]
// main.cpp:343:       catch(const exception& e) {if(cursor_hidden) cout<<"\033[?25h";cerr<<"Error: "<<e.what()<<". Usa --help.\n";return 1;}
	mov	x1, x0	//, tmp860
	adrp	x0, :got:_ZSt4cerr	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cerr]	//,
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		//
// main.cpp:343:       catch(const exception& e) {if(cursor_hidden) cout<<"\033[?25h";cerr<<"Error: "<<e.what()<<". Usa --help.\n";return 1;}
	adrp	x1, .LC176	// tmp649,
	add	x1, x1, :lo12:.LC176	//, tmp649,
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		//
.L1964:
// main.cpp:341:     } catch(const bad_alloc&) {if(cursor_hidden) cout<<"\033[?25h"; cerr<<"Error: memoria insuficiente\n";return 1;}
	mov	w20, 1	// <retval>,
// main.cpp:341:     } catch(const bad_alloc&) {if(cursor_hidden) cout<<"\033[?25h"; cerr<<"Error: memoria insuficiente\n";return 1;}
	bl	__cxa_end_catch		//
	b	.L1766		//
.L1968:
// main.cpp:343:       catch(const exception& e) {if(cursor_hidden) cout<<"\033[?25h";cerr<<"Error: "<<e.what()<<". Usa --help.\n";return 1;}
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	adrp	x1, .LC141	// tmp643,
	add	x1, x1, :lo12:.LC141	//, tmp643,
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		//
.LEHE279:
	b	.L1977		//
.L1995:
.L2158:
// main.cpp:343:       catch(const exception& e) {if(cursor_hidden) cout<<"\033[?25h";cerr<<"Error: "<<e.what()<<". Usa --help.\n";return 1;}
	mov	x19, x0	// tmp654, tmp863
	bl	__cxa_end_catch		//
	ldr	x0, [sp, 360]	// tmp882, D.122343
	ldr	x1, [x21]	// tmp883,
	subs	x0, x0, x1	// tmp882, tmp883
	mov	x1, 0	// tmp883
	stp	x25, x26, [sp, 432]	//,,
	.cfi_offset 26, -56
	.cfi_offset 25, -64
	stp	x27, x28, [sp, 448]	//,,
	.cfi_offset 28, -40
	.cfi_offset 27, -48
	stp	d8, d9, [sp, 464]	//,,
	.cfi_offset 73, -24
	.cfi_offset 72, -32
	stp	d10, d11, [sp, 480]	//,,
	.cfi_offset 75, -8
	.cfi_offset 74, -16
	bne	.L2156		//,
	mov	x0, x19	//, tmp654
.LEHB280:
	bl	_Unwind_Resume		//
.LEHE280:
.L1960:
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 72
	.cfi_restore 73
	.cfi_restore 74
	.cfi_restore 75
// main.cpp:341:     } catch(const bad_alloc&) {if(cursor_hidden) cout<<"\033[?25h"; cerr<<"Error: memoria insuficiente\n";return 1;}
	mov	x0, x2	//, tmp621
	bl	__cxa_begin_catch		//
// main.cpp:341:     } catch(const bad_alloc&) {if(cursor_hidden) cout<<"\033[?25h"; cerr<<"Error: memoria insuficiente\n";return 1;}
	ldr	x0, [sp, 48]	// tmp921, %sfp
	tbz	x0, 0, .L1965	// tmp921,,
// main.cpp:341:     } catch(const bad_alloc&) {if(cursor_hidden) cout<<"\033[?25h"; cerr<<"Error: memoria insuficiente\n";return 1;}
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	adrp	x1, .LC141	// tmp629,
	add	x1, x1, :lo12:.LC141	//, tmp629,
.LEHB281:
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		//
.L1965:
// main.cpp:341:     } catch(const bad_alloc&) {if(cursor_hidden) cout<<"\033[?25h"; cerr<<"Error: memoria insuficiente\n";return 1;}
	adrp	x0, :got:_ZSt4cerr	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cerr]	//,
	adrp	x1, .LC173	// tmp626,
	add	x1, x1, :lo12:.LC173	//, tmp626,
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		//
.LEHE281:
	b	.L1964		//
.L1961:
// main.cpp:342:       catch(const length_error&) {if(cursor_hidden) cout<<"\033[?25h";cerr<<"Error: dimensiones demasiado grandes para reservar memoria\n";return 1;}
	mov	x0, x2	//, tmp621
	bl	__cxa_begin_catch		//
// main.cpp:342:       catch(const length_error&) {if(cursor_hidden) cout<<"\033[?25h";cerr<<"Error: dimensiones demasiado grandes para reservar memoria\n";return 1;}
	ldr	x0, [sp, 48]	// tmp922, %sfp
	tbz	x0, 0, .L1967	// tmp922,,
// main.cpp:342:       catch(const length_error&) {if(cursor_hidden) cout<<"\033[?25h";cerr<<"Error: dimensiones demasiado grandes para reservar memoria\n";return 1;}
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	adrp	x1, .LC141	// tmp636,
	add	x1, x1, :lo12:.LC141	//, tmp636,
.LEHB282:
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		//
.L1967:
// main.cpp:342:       catch(const length_error&) {if(cursor_hidden) cout<<"\033[?25h";cerr<<"Error: dimensiones demasiado grandes para reservar memoria\n";return 1;}
	adrp	x0, :got:_ZSt4cerr	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cerr]	//,
	adrp	x1, .LC174	// tmp633,
	add	x1, x1, :lo12:.LC174	//, tmp633,
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		//
.LEHE282:
	b	.L1964		//
.L1993:
	b	.L2158		//
.L1994:
	b	.L2158		//
.L2060:
	.cfi_offset 25, -64
	.cfi_offset 26, -56
	.cfi_offset 27, -48
	.cfi_offset 28, -40
	.cfi_offset 72, -32
	.cfi_offset 73, -24
	.cfi_offset 74, -16
	.cfi_offset 75, -8
	b	.L2153		//
.L2020:
	b	.L2153		//
.L2021:
	b	.L2153		//
.L2062:
	b	.L2153		//
.L2042:
	b	.L2153		//
.L2041:
	b	.L2153		//
.L2040:
	b	.L2153		//
.L2039:
	b	.L2153		//
.L2038:
	b	.L2153		//
.L2037:
	b	.L2153		//
.L2036:
	b	.L2153		//
.L2035:
	b	.L2153		//
.L2029:
	b	.L2153		//
.L2028:
	b	.L2153		//
.L2027:
	b	.L2153		//
.L2053:
	b	.L2153		//
.L1997:
// main.cpp:48:     ~TerminalInput() {if(enabled) tcsetattr(STDIN_FILENO,TCSANOW,&saved);}
	mov	x20, x0	// tmp610, tmp855
	mov	x19, x1	// tmp612, tmp856
	b	.L1819		//
.L1991:
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 72
	.cfi_restore 73
	.cfi_restore 74
	.cfi_restore 75
	adrp	x21, :got:__stack_chk_guard	// tmp668,
	ldr	x21, [x21, :got_lo12:__stack_chk_guard]	// tmp668,
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp617, tmp678
	mov	x19, x1	// tmp618, tmp679
	str	wzr, [sp, 48]	//, %sfp
	b	.L1769		//
.L1996:
// main.cpp:341:     } catch(const bad_alloc&) {if(cursor_hidden) cout<<"\033[?25h"; cerr<<"Error: memoria insuficiente\n";return 1;}
	mov	x2, x0	// tmp621, tmp857
	cmp	x1, 3	// D.122216,
	beq	.L1958		//,
	adrp	x21, :got:__stack_chk_guard	// tmp668,
	ldr	x21, [x21, :got_lo12:__stack_chk_guard]	// tmp668,
// main.cpp:283:     bool cursor_hidden=false;
	str	wzr, [sp, 48]	//, %sfp
	b	.L1956		//
.L1992:
	.cfi_offset 25, -64
	.cfi_offset 26, -56
	adrp	x21, :got:__stack_chk_guard	// tmp668,
	ldr	x21, [x21, :got_lo12:__stack_chk_guard]	// tmp668,
// main.cpp:341:     } catch(const bad_alloc&) {if(cursor_hidden) cout<<"\033[?25h"; cerr<<"Error: memoria insuficiente\n";return 1;}
	mov	x20, x0	// tmp614, tmp683
	mov	x19, x1	// tmp615, tmp684
	str	wzr, [sp, 48]	//, %sfp
	b	.L1773		//
.L1958:
	.cfi_restore 25
	.cfi_restore 26
// main.cpp:343:       catch(const exception& e) {if(cursor_hidden) cout<<"\033[?25h";cerr<<"Error: "<<e.what()<<". Usa --help.\n";return 1;}
	bl	__cxa_begin_catch		//
	mov	x19, x0	// _594, tmp864
	adrp	x21, :got:__stack_chk_guard	// tmp668,
	ldr	x21, [x21, :got_lo12:__stack_chk_guard]	// tmp668,
	b	.L1977		//
.L2050:
	.cfi_offset 25, -64
	.cfi_offset 26, -56
	.cfi_offset 27, -48
	.cfi_offset 28, -40
	.cfi_offset 72, -32
	.cfi_offset 73, -24
	.cfi_offset 74, -16
	.cfi_offset 75, -8
	b	.L2153		//
.L2049:
	b	.L2153		//
.L2048:
	b	.L2153		//
.L2047:
	b	.L2153		//
.L2046:
	b	.L2153		//
.L2045:
	b	.L2153		//
.L2044:
	b	.L2153		//
.L2026:
	b	.L2153		//
.L2025:
	b	.L2153		//
.L2024:
	b	.L2153		//
.L2023:
	b	.L2153		//
.L2022:
	b	.L2153		//
.L2015:
	b	.L2153		//
.L2016:
	b	.L2153		//
.L2061:
	b	.L2153		//
.L2030:
	b	.L2153		//
.L2019:
	b	.L2153		//
.L2012:
	b	.L2153		//
.L2011:
	b	.L2153		//
.L2010:
	b	.L2153		//
.L2009:
	b	.L2153		//
.L2008:
	b	.L2153		//
.L2007:
	b	.L2153		//
.L2006:
	b	.L2153		//
.L2005:
	b	.L2153		//
.L2004:
	b	.L2153		//
.L2003:
	b	.L2153		//
.L2002:
	b	.L2153		//
.L2001:
	b	.L2153		//
.L2000:
	b	.L2153		//
.L2014:
	b	.L2153		//
.L1999:
	b	.L2153		//
.L2017:
	b	.L2153		//
.L2018:
	b	.L2153		//
.L2013:
	b	.L2153		//
.L2034:
	b	.L2153		//
.L2033:
	b	.L2153		//
.L2032:
	b	.L2153		//
.L2031:
	b	.L2153		//
.L1998:
// main.cpp:48:     ~TerminalInput() {if(enabled) tcsetattr(STDIN_FILENO,TCSANOW,&saved);}
	mov	x20, x0	// tmp610, tmp853
	mov	x19, x1	// tmp612, tmp854
	add	x26, sp, 80	// tmp665,,
	str	wzr, [sp, 48]	//, %sfp
	b	.L1819		//
.L2059:
	b	.L2153		//
.L2058:
	b	.L2153		//
.L2057:
	b	.L2153		//
.L2056:
	b	.L2153		//
.L2055:
	b	.L2153		//
.L2054:
	b	.L2153		//
.L2052:
	b	.L2153		//
.L2051:
	b	.L2153		//
	.cfi_endproc
.LFE4506:
	.section	.gcc_except_table
	.align	2
.LLSDA4506:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT4506-.LLSDATTD4506
.LLSDATTD4506:
	.byte	0x1
	.uleb128 .LLSDACSE4506-.LLSDACSB4506
.LLSDACSB4506:
	.uleb128 .LEHB206-.LFB4506
	.uleb128 .LEHE206-.LEHB206
	.uleb128 .L1996-.LFB4506
	.uleb128 0x5
	.uleb128 .LEHB207-.LFB4506
	.uleb128 .LEHE207-.LEHB207
	.uleb128 .L1991-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB208-.LFB4506
	.uleb128 .LEHE208-.LEHB208
	.uleb128 .L1992-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB209-.LFB4506
	.uleb128 .LEHE209-.LEHB209
	.uleb128 .L1997-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB210-.LFB4506
	.uleb128 .LEHE210-.LEHB210
	.uleb128 .L2059-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB211-.LFB4506
	.uleb128 .LEHE211-.LEHB211
	.uleb128 .L2058-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB212-.LFB4506
	.uleb128 .LEHE212-.LEHB212
	.uleb128 .L2057-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB213-.LFB4506
	.uleb128 .LEHE213-.LEHB213
	.uleb128 .L2056-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB214-.LFB4506
	.uleb128 .LEHE214-.LEHB214
	.uleb128 .L2055-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB215-.LFB4506
	.uleb128 .LEHE215-.LEHB215
	.uleb128 .L2054-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB216-.LFB4506
	.uleb128 .LEHE216-.LEHB216
	.uleb128 .L2052-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB217-.LFB4506
	.uleb128 .LEHE217-.LEHB217
	.uleb128 .L2051-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB218-.LFB4506
	.uleb128 .LEHE218-.LEHB218
	.uleb128 .L2050-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB219-.LFB4506
	.uleb128 .LEHE219-.LEHB219
	.uleb128 .L2049-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB220-.LFB4506
	.uleb128 .LEHE220-.LEHB220
	.uleb128 .L2048-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB221-.LFB4506
	.uleb128 .LEHE221-.LEHB221
	.uleb128 .L2047-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB222-.LFB4506
	.uleb128 .LEHE222-.LEHB222
	.uleb128 .L2046-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB223-.LFB4506
	.uleb128 .LEHE223-.LEHB223
	.uleb128 .L2045-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB224-.LFB4506
	.uleb128 .LEHE224-.LEHB224
	.uleb128 .L2044-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB225-.LFB4506
	.uleb128 .LEHE225-.LEHB225
	.uleb128 .L2043-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB226-.LFB4506
	.uleb128 .LEHE226-.LEHB226
	.uleb128 .L2042-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB227-.LFB4506
	.uleb128 .LEHE227-.LEHB227
	.uleb128 .L2041-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB228-.LFB4506
	.uleb128 .LEHE228-.LEHB228
	.uleb128 .L2040-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB229-.LFB4506
	.uleb128 .LEHE229-.LEHB229
	.uleb128 .L2039-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB230-.LFB4506
	.uleb128 .LEHE230-.LEHB230
	.uleb128 .L2038-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB231-.LFB4506
	.uleb128 .LEHE231-.LEHB231
	.uleb128 .L2037-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB232-.LFB4506
	.uleb128 .LEHE232-.LEHB232
	.uleb128 .L2036-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB233-.LFB4506
	.uleb128 .LEHE233-.LEHB233
	.uleb128 .L2035-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB234-.LFB4506
	.uleb128 .LEHE234-.LEHB234
	.uleb128 .L2019-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB235-.LFB4506
	.uleb128 .LEHE235-.LEHB235
	.uleb128 .L2012-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB236-.LFB4506
	.uleb128 .LEHE236-.LEHB236
	.uleb128 .L2011-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB237-.LFB4506
	.uleb128 .LEHE237-.LEHB237
	.uleb128 .L2010-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB238-.LFB4506
	.uleb128 .LEHE238-.LEHB238
	.uleb128 .L2009-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB239-.LFB4506
	.uleb128 .LEHE239-.LEHB239
	.uleb128 .L2008-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB240-.LFB4506
	.uleb128 .LEHE240-.LEHB240
	.uleb128 .L2007-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB241-.LFB4506
	.uleb128 .LEHE241-.LEHB241
	.uleb128 .L2006-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB242-.LFB4506
	.uleb128 .LEHE242-.LEHB242
	.uleb128 .L2005-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB243-.LFB4506
	.uleb128 .LEHE243-.LEHB243
	.uleb128 .L2004-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB244-.LFB4506
	.uleb128 .LEHE244-.LEHB244
	.uleb128 .L2003-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB245-.LFB4506
	.uleb128 .LEHE245-.LEHB245
	.uleb128 .L2002-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB246-.LFB4506
	.uleb128 .LEHE246-.LEHB246
	.uleb128 .L2001-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB247-.LFB4506
	.uleb128 .LEHE247-.LEHB247
	.uleb128 .L2000-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB248-.LFB4506
	.uleb128 .LEHE248-.LEHB248
	.uleb128 .L2014-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB249-.LFB4506
	.uleb128 .LEHE249-.LEHB249
	.uleb128 .L1999-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB250-.LFB4506
	.uleb128 .LEHE250-.LEHB250
	.uleb128 .L2017-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB251-.LFB4506
	.uleb128 .LEHE251-.LEHB251
	.uleb128 .L2018-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB252-.LFB4506
	.uleb128 .LEHE252-.LEHB252
	.uleb128 .L2013-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB253-.LFB4506
	.uleb128 .LEHE253-.LEHB253
	.uleb128 .L2034-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB254-.LFB4506
	.uleb128 .LEHE254-.LEHB254
	.uleb128 .L2033-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB255-.LFB4506
	.uleb128 .LEHE255-.LEHB255
	.uleb128 .L2032-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB256-.LFB4506
	.uleb128 .LEHE256-.LEHB256
	.uleb128 .L2031-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB257-.LFB4506
	.uleb128 .LEHE257-.LEHB257
	.uleb128 .L2030-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB258-.LFB4506
	.uleb128 .LEHE258-.LEHB258
	.uleb128 .L2029-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB259-.LFB4506
	.uleb128 .LEHE259-.LEHB259
	.uleb128 .L2028-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB260-.LFB4506
	.uleb128 .LEHE260-.LEHB260
	.uleb128 .L2027-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB261-.LFB4506
	.uleb128 .LEHE261-.LEHB261
	.uleb128 .L2053-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB262-.LFB4506
	.uleb128 .LEHE262-.LEHB262
	.uleb128 .L1998-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB263-.LFB4506
	.uleb128 .LEHE263-.LEHB263
	.uleb128 .L1997-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB264-.LFB4506
	.uleb128 .LEHE264-.LEHB264
	.uleb128 .L2026-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB265-.LFB4506
	.uleb128 .LEHE265-.LEHB265
	.uleb128 .L2025-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB266-.LFB4506
	.uleb128 .LEHE266-.LEHB266
	.uleb128 .L2024-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB267-.LFB4506
	.uleb128 .LEHE267-.LEHB267
	.uleb128 .L2023-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB268-.LFB4506
	.uleb128 .LEHE268-.LEHB268
	.uleb128 .L2022-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB269-.LFB4506
	.uleb128 .LEHE269-.LEHB269
	.uleb128 .L2015-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB270-.LFB4506
	.uleb128 .LEHE270-.LEHB270
	.uleb128 .L2016-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB271-.LFB4506
	.uleb128 .LEHE271-.LEHB271
	.uleb128 .L1997-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB272-.LFB4506
	.uleb128 .LEHE272-.LEHB272
	.uleb128 .L2061-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB273-.LFB4506
	.uleb128 .LEHE273-.LEHB273
	.uleb128 .L2062-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB274-.LFB4506
	.uleb128 .LEHE274-.LEHB274
	.uleb128 .L2021-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB275-.LFB4506
	.uleb128 .LEHE275-.LEHB275
	.uleb128 .L2020-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB276-.LFB4506
	.uleb128 .LEHE276-.LEHB276
	.uleb128 .L2060-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB277-.LFB4506
	.uleb128 .LEHE277-.LEHB277
	.uleb128 .L2063-.LFB4506
	.uleb128 0x7
	.uleb128 .LEHB278-.LFB4506
	.uleb128 .LEHE278-.LEHB278
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB279-.LFB4506
	.uleb128 .LEHE279-.LEHB279
	.uleb128 .L1995-.LFB4506
	.uleb128 0
	.uleb128 .LEHB280-.LFB4506
	.uleb128 .LEHE280-.LEHB280
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB281-.LFB4506
	.uleb128 .LEHE281-.LEHB281
	.uleb128 .L1993-.LFB4506
	.uleb128 0
	.uleb128 .LEHB282-.LFB4506
	.uleb128 .LEHE282-.LEHB282
	.uleb128 .L1994-.LFB4506
	.uleb128 0
.LLSDACSE4506:
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
.LLSDATT4506:
	.section	.text.startup
	.size	main, .-main
	.section	.rodata.str1.8
	.align	3
.LC14:
	.string	"\033[37m"
	.align	3
.LC15:
	.string	"\033[32m"
	.align	3
.LC16:
	.string	"\033[33;1m"
	.align	3
.LC17:
	.string	"\033[90m"
	.align	3
.LC18:
	.string	"\033[34;1m"
	.align	3
.LC8:
	.string	"\302\267 "
	.align	3
.LC9:
	.string	"\342\231\243 "
	.align	3
.LC10:
	.string	"\342\226\223 "
	.align	3
.LC11:
	.string	"\342\226\221 "
	.align	3
.LC12:
	.string	"\342\211\210 "
	.align	3
.LC2:
	.string	". "
	.align	3
.LC3:
	.string	"T "
	.align	3
.LC4:
	.string	"* "
	.align	3
.LC5:
	.string	"# "
	.align	3
.LC6:
	.string	"~ "
	.global	interrupted
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
.LC60:
	.word	1049582633
	.word	1058642330
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC61:
	.xword	30
	.xword	60
	.set	.LC62,.LC136
	.align	4
.LC133:
	.xword	0
	.xword	15000000
	.align	4
.LC134:
	.xword	-2147483648
	.xword	-2147483648
	.align	4
.LC135:
	.xword	2147483647
	.xword	2147483647
	.align	4
.LC136:
	.xword	1
	.xword	1
	.align	4
.LC137:
	.xword	2567483615
	.xword	2567483615
	.section	.rodata
	.align	3
	.set	.LANCHOR1,. + 0
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
	.data
	.align	3
	.set	.LANCHOR2,. + 0
.LC64:
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
	.xword	.LC5
	.xword	.LC6
.LC65:
	.xword	.LC8
	.xword	.LC9
	.xword	.LC10
	.xword	.LC11
	.xword	.LC12
.LC66:
	.xword	.LC14
	.xword	.LC15
	.xword	.LC16
	.xword	.LC17
	.xword	.LC18
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	interrupted, %object
	.size	interrupted, 4
interrupted:
	.zero	4
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
