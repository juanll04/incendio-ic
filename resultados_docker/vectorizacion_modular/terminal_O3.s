	.arch armv8-a
	.file	"terminal.cpp"
// GNU C++17 (Ubuntu 13.3.0-6ubuntu2~24.04.1) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -O3 -std=c++17 -ffp-contract=off -fopt-info-vec-optimized-missed -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.align	2
	.p2align 4,,11
	.type	_ZN12_GLOBAL__N_19on_signalEi, %function
_ZN12_GLOBAL__N_19on_signalEi:
.LFB3138:
	.cfi_startproc
// terminal.cpp:21:     interrupted = 1;
	adrp	x0, .LANCHOR0	// tmp94,
	mov	w1, 1	// tmp95,
	str	w1, [x0, #:lo12:.LANCHOR0]	// tmp95, interrupted
// terminal.cpp:22: }
	ret	
	.cfi_endproc
.LFE3138:
	.size	_ZN12_GLOBAL__N_19on_signalEi, .-_ZN12_GLOBAL__N_19on_signalEi
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC18:
	.string	"basic_string: construction from null is not valid"
	.text
	.align	2
	.p2align 4,,11
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0:
.LFB3982:
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
	str	x0, [sp, 8]	// tmp116, D.85221
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
	ldr	x2, [sp, 8]	// tmp119, D.85221
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
	str	x1, [x20, 16]	// __dnew, *this_1(D).D.36210._M_allocated_capacity
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
	ldr	x2, [sp, 8]	// tmp117, D.85221
	ldr	x1, [x0]	// tmp118,
	subs	x2, x2, x1	// tmp117, tmp118
	mov	x1, 0	// tmp118
	bne	.L15		//,
	adrp	x0, .LC18	// tmp102,
	add	x0, x0, :lo12:.LC18	//, tmp102,
	bl	_ZSt19__throw_logic_errorPKc		//
	.cfi_endproc
.LFE3982:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0
	.section	.rodata.str1.8
	.align	3
.LC19:
	.string	"%f"
	.text
	.align	2
	.p2align 4,,11
	.type	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_St9__va_listEmSB_z.constprop.0, %function
_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_St9__va_listEmSB_z.constprop.0:
.LFB3985:
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
	str	x3, [x29, -8]	// tmp143, D.85266
	mov	x3, 0	// tmp143
// /usr/include/c++/13/ext/string_conversions.h:107:       _CharT* __s = static_cast<_CharT*>(__builtin_alloca(sizeof(_CharT)
	cmp	sp, x9	//, tmp109
	beq	.L20		//,
.L31:
	sub	sp, sp, #65536	//,,
	str	xzr, [sp, 1024]	//,
	cmp	sp, x9	//, tmp109
	bne	.L31		//,
.L20:
	and	x0, x0, 65535	// tmp110, tmp106,
	sub	sp, sp, x0	//,, tmp110
	str	xzr, [sp]	//,
	cmp	x0, 1024	// tmp110,
	bcs	.L32		//,
.L21:
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
	adrp	x4, .LC19	// tmp129,
	mov	w2, 2	//,
	add	x4, x4, :lo12:.LC19	//, tmp129,
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
	bhi	.L33		//,
// /usr/include/c++/13/bits/basic_string.h:427: 	if (__n == 1)
	cmp	x20, 1	// _5,
	bne	.L24		//,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	ldrb	w1, [x21]	//, MEM[(const char_type &)__s_3]
	strb	w1, [x19, 16]	// MEM[(const char_type &)__s_3], MEM[(char_type &)_1(D) + 16]
.L25:
// /usr/include/c++/13/ext/string_conversions.h:118:     }
	adrp	x1, :got:__stack_chk_guard	// tmp138,
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]	// tmp138,
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x20, [x19, 8]	// _5, _1(D)->_M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x0, x20]	//, MEM[(char_type &)_25]
// /usr/include/c++/13/ext/string_conversions.h:118:     }
	ldr	x0, [x29, -8]	// tmp144, D.85266
	ldr	x2, [x1]	// tmp145,
	subs	x0, x0, x2	// tmp144, tmp145
	mov	x2, 0	// tmp145
	bne	.L34		//,
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
.L24:
	.cfi_restore_state
// /usr/include/c++/13/bits/char_traits.h:429: 	if (__n == 0)
	cbz	x20, .L25	// _5,
	b	.L23		//
	.p2align 2,,3
.L33:
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
	str	x1, [x19, 16]	// MEM[(long unsigned int *)_21], _1(D)->D.36210._M_allocated_capacity
.L23:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x20	//, _5
	mov	x1, x21	//, __s
	bl	memcpy		//
// /usr/include/c++/13/bits/basic_string.tcc:251: 	_M_set_length(__dnew);
	ldr	x20, [x29, -40]	// _5, MEM[(long unsigned int *)_21]
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x19]	// _7, MEM[(const struct basic_string *)_1(D)]._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	b	.L25		//
	.p2align 2,,3
.L32:
// /usr/include/c++/13/ext/string_conversions.h:107:       _CharT* __s = static_cast<_CharT*>(__builtin_alloca(sizeof(_CharT)
	str	xzr, [sp, 1024]	//,
	b	.L21		//
.L34:
// /usr/include/c++/13/ext/string_conversions.h:118:     }
	bl	__stack_chk_fail		//
	.cfi_endproc
.LFE3985:
	.size	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_St9__va_listEmSB_z.constprop.0, .-_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_St9__va_listEmSB_z.constprop.0
	.section	.rodata.str1.8
	.align	3
.LC21:
	.string	"basic_string::append"
	.align	3
.LC22:
	.string	"%"
	.text
	.align	2
	.p2align 4,,11
	.type	_ZN12_GLOBAL__N_17percentEmm, %function
_ZN12_GLOBAL__N_17percentEmm:
.LFB3139:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3139
// terminal.cpp:25:     return std::to_string((100 * count) / total) + "%";
	add	x2, x0, x0, lsl 1	// tmp144, tmp271, tmp271,
// terminal.cpp:24: std::string percent(std::size_t count, std::size_t total) {
	sub	sp, sp, #304	//,,
	.cfi_def_cfa_offset 304
	adrp	x3, :got:__stack_chk_guard	// tmp141,
	ldr	x3, [x3, :got_lo12:__stack_chk_guard]	// tmp141,
// terminal.cpp:25:     return std::to_string((100 * count) / total) + "%";
	add	x2, x0, x2, lsl 3	// tmp146, tmp271, tmp144,
// terminal.cpp:24: std::string percent(std::size_t count, std::size_t total) {
	stp	x29, x30, [sp, 256]	//,,
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 256	//,,
// terminal.cpp:25:     return std::to_string((100 * count) / total) + "%";
	lsl	x2, x2, 2	// tmp147, tmp146,
// terminal.cpp:24: std::string percent(std::size_t count, std::size_t total) {
	stp	x21, x22, [sp, 288]	//,,
	.cfi_offset 21, -16
	.cfi_offset 22, -8
// terminal.cpp:25:     return std::to_string((100 * count) / total) + "%";
	udiv	x22, x2, x1	// __val, tmp147, tmp272
// terminal.cpp:24: std::string percent(std::size_t count, std::size_t total) {
	stp	x19, x20, [sp, 272]	//,,
	.cfi_offset 19, -32
	.cfi_offset 20, -24
// terminal.cpp:24: std::string percent(std::size_t count, std::size_t total) {
	mov	x19, x8	// <retval>, tmp270
	ldr	x0, [x3]	// tmp275,
	str	x0, [sp, 248]	// tmp275, D.85331
	mov	x0, 0	// tmp275
// /usr/include/c++/13/bits/charconv.h:67: 	  if (__value < (unsigned)__base) return __n;
	cmp	x22, 9	// __val,
	bls	.L36		//,
// /usr/include/c++/13/bits/charconv.h:68: 	  if (__value < __b2) return __n + 1;
	cmp	x22, 99	// __val,
	bls	.L37		//,
// /usr/include/c++/13/bits/charconv.h:69: 	  if (__value < __b3) return __n + 2;
	cmp	x22, 999	// __val,
	bls	.L58		//,
// /usr/include/c++/13/bits/charconv.h:70: 	  if (__value < __b4) return __n + 3;
	mov	x0, 9999	// tmp148,
	cmp	x22, x0	// __val, tmp148
	bls	.L59		//,
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
	b	.L40		//
	.p2align 2,,3
.L46:
// /usr/include/c++/13/bits/charconv.h:68: 	  if (__value < __b2) return __n + 1;
	cmp	x0, x7	// __value, tmp267
	bls	.L67		//,
// /usr/include/c++/13/bits/charconv.h:69: 	  if (__value < __b3) return __n + 2;
	cmp	x0, x8	// __value, tmp268
	bls	.L68		//,
// /usr/include/c++/13/bits/charconv.h:70: 	  if (__value < __b4) return __n + 3;
	cmp	x0, x9	// __value, tmp269
	bls	.L69		//,
.L40:
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
	bhi	.L46		//,
// /usr/include/c++/13/bits/basic_string.h:4209:     string __str(__detail::__to_chars_len(__val), '\0');
	uxtw	x1, w2	// prephitmp_31, __n
.L45:
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x20, sp, 8	// tmp261,,
.L64:
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	mov	x0, x20	//, tmp261
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x21, sp, 24	// tmp263,,
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	mov	w2, 0	//,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x21, [sp, 8]	// tmp263, MEM[(struct _Alloc_hider *)&D.72231]._M_p
.LEHB0:
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc		//
.LEHE0:
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	adrp	x1, .LC20	// tmp185,
	add	x1, x1, :lo12:.LC20	// tmp184, tmp185,
	add	x4, sp, 40	// tmp264,,
// /usr/include/c++/13/bits/charconv.h:96: 	  auto const __num = (__val % 100) * 2;
	mov	x9, 62915	// tmp204,
// /usr/include/c++/13/bits/basic_string.h:4210:     __detail::__to_chars_10_impl(&__str[0], __str.size(), __val);
	ldp	x5, x0, [sp, 8]	// _12, D.72231._M_string_length, D.72231._M_dataplus._M_p
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
	sub	w0, w0, #1	// __pos, D.72231._M_string_length,
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
.L47:
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
	bhi	.L47		//,
// /usr/include/c++/13/bits/charconv.h:102:       if (__val >= 10)
	cmp	x6, 999	// __val,
	bhi	.L43		//,
.L48:
// /usr/include/c++/13/bits/charconv.h:109: 	__first[0] = '0' + __val;
	add	w22, w22, 48	// tmp228, __val,
	and	w22, w22, 255	// cstore_20, tmp228
.L49:
	strb	w22, [x5]	// cstore_20, *_11
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 4611686018427387903	// tmp231,
	ldr	x1, [sp, 16]	// D.72231._M_string_length, D.72231._M_string_length
	cmp	x1, x0	// D.72231._M_string_length, tmp231
	beq	.L70		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	adrp	x1, .LC22	// tmp236,
	mov	x0, x20	//, tmp261
	adrp	x22, :got:__stack_chk_guard	// tmp262,
	ldr	x22, [x22, :got_lo12:__stack_chk_guard]	// tmp262,
	add	x1, x1, :lo12:.LC22	//, tmp236,
	mov	x2, 1	//,
.LEHB1:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE1:
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
	beq	.L71		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [x0, 16]	// *_19.D.36210._M_allocated_capacity, *_19.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x1, [x19]	// _66, MEM[(struct basic_string *)_7(D)]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x0, [x19, 16]	// *_19.D.36210._M_allocated_capacity, MEM[(struct basic_string *)_7(D)].D.36210._M_allocated_capacity
.L53:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x22, xzr, [x20]	// _67,, *_19._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 8]	// _59, D.72231._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x2, [x19, 8]	// MEM[(const struct basic_string *)_19]._M_string_length, MEM[(struct basic_string *)_7(D)]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x20, 16]	//, MEM[(char_type &)_19 + 16]
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x21	// _59, tmp263
	beq	.L35		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 24]	// D.72231.D.36210._M_allocated_capacity, D.72231.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.72231.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L35:
// terminal.cpp:26: }
	adrp	x0, :got:__stack_chk_guard	// tmp260,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp260,
	ldr	x2, [sp, 248]	// tmp280, D.85331
	ldr	x1, [x0]	// tmp281,
	subs	x2, x2, x1	// tmp280, tmp281
	mov	x1, 0	// tmp281
	bne	.L66		//,
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
.L37:
	.cfi_restore_state
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x20, sp, 8	// tmp261,,
	add	x21, sp, 24	// tmp263,,
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	mov	x0, x20	//, tmp261
	mov	w2, 0	//,
	mov	x1, 2	//,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x21, [sp, 8]	// tmp263, MEM[(struct _Alloc_hider *)&D.72231]._M_p
.LEHB2:
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc		//
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	adrp	x0, .LC20	// tmp160,
	add	x0, x0, :lo12:.LC20	// tmp159, tmp160,
	add	x4, sp, 40	// tmp264,,
	add	x7, sp, 41	// tmp265,,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x5, [sp, 8]	// _12, D.72231._M_dataplus._M_p
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
.L43:
// /usr/include/c++/13/bits/charconv.h:104: 	  auto const __num = __val * 2;
	lsl	x22, x22, 1	// __num, __val,
// /usr/include/c++/13/bits/charconv.h:105: 	  __first[1] = __digits[__num + 1];
	ldrb	w0, [x7, x22]	//, __digits[_54]
// /usr/include/c++/13/bits/charconv.h:106: 	  __first[0] = __digits[__num];
	ldrb	w22, [x4, x22]	// cstore_20, __digits[__num_53]
// /usr/include/c++/13/bits/charconv.h:105: 	  __first[1] = __digits[__num + 1];
	strb	w0, [x5, 1]	// __digits[_54], MEM[(char *)_22 + 1B]
	b	.L49		//
	.p2align 2,,3
.L67:
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x20, sp, 8	// tmp261,,
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	add	w1, w1, 5	//, __n,
	b	.L64		//
	.p2align 2,,3
.L68:
// /usr/include/c++/13/bits/basic_string.h:4209:     string __str(__detail::__to_chars_len(__val), '\0');
	add	w1, w1, 6	// prephitmp_31, __n,
	b	.L45		//
	.p2align 2,,3
.L69:
	add	w1, w1, 7	// prephitmp_31, __n,
	b	.L45		//
	.p2align 2,,3
.L71:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_19]._M_string_length,
	mov	x0, x3	//, _65
	mov	x1, x22	//, _67
	bl	memcpy		//
	ldr	x2, [x20, 8]	// MEM[(const struct basic_string *)_19]._M_string_length, MEM[(const struct basic_string *)_19]._M_string_length
	b	.L53		//
.L36:
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x20, sp, 8	// tmp261,,
	add	x21, sp, 24	// tmp263,,
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	mov	x0, x20	//, tmp261
	mov	w2, 0	//,
	mov	x1, 1	//,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x21, [sp, 8]	// tmp263, MEM[(struct _Alloc_hider *)&D.72231]._M_p
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc		//
.LEHE2:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x5, [sp, 8]	// _12, D.72231._M_dataplus._M_p
	b	.L48		//
.L59:
// /usr/include/c++/13/bits/charconv.h:70: 	  if (__value < __b4) return __n + 3;
	mov	x1, 4	// prephitmp_31,
// /usr/include/c++/13/bits/charconv.h:70: 	  if (__value < __b4) return __n + 3;
	b	.L45		//
.L58:
// /usr/include/c++/13/bits/charconv.h:69: 	  if (__value < __b3) return __n + 2;
	mov	x1, 3	// prephitmp_31,
// /usr/include/c++/13/bits/charconv.h:69: 	  if (__value < __b3) return __n + 2;
	b	.L45		//
.L60:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x19, x0	// tmp274,
	mov	x0, x20	//, tmp261
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	ldr	x0, [sp, 248]	// tmp278, D.85331
	ldr	x1, [x22]	// tmp279,
	subs	x0, x0, x1	// tmp278, tmp279
	mov	x1, 0	// tmp279
	beq	.L56		//,
.L66:
// terminal.cpp:26: }
	bl	__stack_chk_fail		//
.L70:
// /usr/include/c++/13/bits/basic_string.h:400: 	  __throw_length_error(__N(__s));
	adrp	x22, :got:__stack_chk_guard	// tmp262,
	ldr	x22, [x22, :got_lo12:__stack_chk_guard]	// tmp262,
	ldr	x0, [sp, 248]	// tmp276, D.85331
	ldr	x1, [x22]	// tmp277,
	subs	x0, x0, x1	// tmp276, tmp277
	mov	x1, 0	// tmp277
	bne	.L66		//,
	adrp	x0, .LC21	// tmp234,
	add	x0, x0, :lo12:.LC21	//, tmp234,
.LEHB3:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE3:
.L56:
	mov	x0, x19	//, tmp251
.LEHB4:
	bl	_Unwind_Resume		//
.LEHE4:
	.cfi_endproc
.LFE3139:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA3139:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3139-.LLSDACSB3139
.LLSDACSB3139:
	.uleb128 .LEHB0-.LFB3139
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3139
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L60-.LFB3139
	.uleb128 0
	.uleb128 .LEHB2-.LFB3139
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB3139
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L60-.LFB3139
	.uleb128 0
	.uleb128 .LEHB4-.LFB3139
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE3139:
	.text
	.size	_ZN12_GLOBAL__N_17percentEmm, .-_ZN12_GLOBAL__N_17percentEmm
	.section	.rodata.str1.8
	.align	3
.LC20:
	.string	"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899"
	.text
	.section	.text._ZNSt7__cxx119to_stringEm,"axG",@progbits,_ZNSt7__cxx119to_stringEm,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt7__cxx119to_stringEm
	.type	_ZNSt7__cxx119to_stringEm, %function
_ZNSt7__cxx119to_stringEm:
.LFB1929:
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
	str	x0, [sp, 216]	// tmp220, D.85362
	mov	x0, 0	// tmp220
// /usr/include/c++/13/bits/charconv.h:67: 	  if (__value < (unsigned)__base) return __n;
	cmp	x19, 9	// __val,
	bls	.L73		//,
// /usr/include/c++/13/bits/charconv.h:68: 	  if (__value < __b2) return __n + 1;
	cmp	x19, 99	// __val,
	bls	.L74		//,
// /usr/include/c++/13/bits/charconv.h:69: 	  if (__value < __b3) return __n + 2;
	cmp	x19, 999	// __val,
	bls	.L88		//,
// /usr/include/c++/13/bits/charconv.h:70: 	  if (__value < __b4) return __n + 3;
	mov	x0, 9999	// tmp130,
	cmp	x19, x0	// __val, tmp130
	bls	.L89		//,
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
	b	.L77		//
	.p2align 2,,3
.L83:
// /usr/include/c++/13/bits/charconv.h:68: 	  if (__value < __b2) return __n + 1;
	cmp	x2, x7	// __value, tmp215
	bls	.L95		//,
// /usr/include/c++/13/bits/charconv.h:69: 	  if (__value < __b3) return __n + 2;
	cmp	x2, x8	// __value, tmp216
	bls	.L96		//,
// /usr/include/c++/13/bits/charconv.h:70: 	  if (__value < __b4) return __n + 3;
	cmp	x2, x9	// __value, tmp217
	bls	.L97		//,
.L77:
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
	bhi	.L83		//,
// /usr/include/c++/13/bits/basic_string.h:4209:     string __str(__detail::__to_chars_len(__val), '\0');
	uxtw	x1, w3	// prephitmp_17, __n
.L82:
// /usr/include/c++/13/bits/basic_string.h:230: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x0, x20, 16	// tmp210, <retval>,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x0, [x20]	// tmp210, MEM[(struct _Alloc_hider *)__str_5(D)]._M_p
.L94:
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	mov	x0, x20	//, <retval>
	mov	w2, 0	//,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc		//
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	adrp	x1, .LC20	// tmp163,
	add	x1, x1, :lo12:.LC20	// tmp162, tmp163,
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
.L84:
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
	bhi	.L84		//,
// /usr/include/c++/13/bits/charconv.h:102:       if (__val >= 10)
	cmp	x7, 999	// __val,
	bhi	.L80		//,
.L85:
// /usr/include/c++/13/bits/charconv.h:109: 	__first[0] = '0' + __val;
	add	w19, w19, 48	// tmp206, __val,
	and	w19, w19, 255	// cstore_6, tmp206
.L86:
// /usr/include/c++/13/bits/basic_string.h:4212:   }
	adrp	x0, :got:__stack_chk_guard	// tmp212,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp212,
	strb	w19, [x6]	// cstore_6, *_11
	ldr	x2, [sp, 216]	// tmp221, D.85362
	ldr	x1, [x0]	// tmp222,
	subs	x2, x2, x1	// tmp221, tmp222
	mov	x1, 0	// tmp222
	bne	.L98		//,
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
.L74:
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
	adrp	x1, .LC20	// tmp138,
	add	x1, x1, :lo12:.LC20	// tmp137, tmp138,
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
.L80:
// /usr/include/c++/13/bits/charconv.h:104: 	  auto const __num = __val * 2;
	lsl	x19, x19, 1	// __num, __val,
// /usr/include/c++/13/bits/charconv.h:105: 	  __first[1] = __digits[__num + 1];
	ldrb	w0, [x0, x19]	//, __digits[_40]
// /usr/include/c++/13/bits/charconv.h:106: 	  __first[0] = __digits[__num];
	ldrb	w19, [x5, x19]	// cstore_6, __digits[__num_39]
// /usr/include/c++/13/bits/charconv.h:105: 	  __first[1] = __digits[__num + 1];
	strb	w0, [x6, 1]	// __digits[_40], MEM[(char *)_7 + 1B]
	b	.L86		//
	.p2align 2,,3
.L95:
// /usr/include/c++/13/bits/basic_string.h:230: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x0, x20, 16	// tmp132, <retval>,
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	add	w1, w1, 5	//, __n,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x0, [x20]	// tmp132, MEM[(struct _Alloc_hider *)__str_5(D)]._M_p
	b	.L94		//
	.p2align 2,,3
.L96:
// /usr/include/c++/13/bits/basic_string.h:4209:     string __str(__detail::__to_chars_len(__val), '\0');
	add	w1, w1, 6	// prephitmp_17, __n,
	b	.L82		//
	.p2align 2,,3
.L97:
	add	w1, w1, 7	// prephitmp_17, __n,
	b	.L82		//
.L73:
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
	b	.L85		//
.L89:
// /usr/include/c++/13/bits/charconv.h:70: 	  if (__value < __b4) return __n + 3;
	mov	x1, 4	// prephitmp_17,
// /usr/include/c++/13/bits/charconv.h:70: 	  if (__value < __b4) return __n + 3;
	b	.L82		//
.L88:
// /usr/include/c++/13/bits/charconv.h:69: 	  if (__value < __b3) return __n + 2;
	mov	x1, 3	// prephitmp_17,
// /usr/include/c++/13/bits/charconv.h:69: 	  if (__value < __b3) return __n + 2;
	b	.L82		//
.L98:
// /usr/include/c++/13/bits/basic_string.h:4212:   }
	bl	__stack_chk_fail		//
	.cfi_endproc
.LFE1929:
	.size	_ZNSt7__cxx119to_stringEm, .-_ZNSt7__cxx119to_stringEm
	.text
	.align	2
	.p2align 4,,11
	.global	_ZN8TerminalC2Eb
	.type	_ZN8TerminalC2Eb, %function
_ZN8TerminalC2Eb:
.LFB3153:
	.cfi_startproc
	sub	sp, sp, #112	//,,
	.cfi_def_cfa_offset 112
	adrp	x2, :got:__stack_chk_guard	// tmp104,
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]	// tmp104,
// terminal.cpp:88: Terminal::Terminal(bool visual) : output_is_terminal_(isatty(STDOUT_FILENO)) {
	movi	v0.4s, 0	// tmp106
// terminal.cpp:88: Terminal::Terminal(bool visual) : output_is_terminal_(isatty(STDOUT_FILENO)) {
	stp	x29, x30, [sp, 80]	//,,
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 80	//,,
	stp	x19, x20, [sp, 96]	//,,
	.cfi_offset 19, -16
	.cfi_offset 20, -8
// terminal.cpp:88: Terminal::Terminal(bool visual) : output_is_terminal_(isatty(STDOUT_FILENO)) {
	mov	x19, x0	// this, tmp127
	and	w20, w1, 255	// visual, visual
	ldr	x1, [x2]	// tmp132,
	str	x1, [sp, 72]	// tmp132, D.85373
	mov	x1, 0	// tmp132
// terminal.cpp:88: Terminal::Terminal(bool visual) : output_is_terminal_(isatty(STDOUT_FILENO)) {
	mov	w0, 1	//,
// terminal.cpp:88: Terminal::Terminal(bool visual) : output_is_terminal_(isatty(STDOUT_FILENO)) {
	str	q0, [x19, 32]	// tmp106, *this_9(D).saved_input_
	stp	q0, q0, [x19]	// tmp106, tmp106, *this_9(D).saved_input_
	str	q0, [x19, 44]	// tmp106, *this_9(D).saved_input_
// terminal.cpp:88: Terminal::Terminal(bool visual) : output_is_terminal_(isatty(STDOUT_FILENO)) {
	bl	isatty		//
// terminal.cpp:88: Terminal::Terminal(bool visual) : output_is_terminal_(isatty(STDOUT_FILENO)) {
	cmp	w0, 0	// tmp128,
	cset	w0, ne	// _2,
// terminal.cpp:88: Terminal::Terminal(bool visual) : output_is_terminal_(isatty(STDOUT_FILENO)) {
	strb	w0, [x19, 60]	// _2, *this_9(D).output_is_terminal_
// terminal.cpp:88: Terminal::Terminal(bool visual) : output_is_terminal_(isatty(STDOUT_FILENO)) {
	strh	wzr, [x19, 61]	//, MEM <unsigned short> [(bool *)this_9(D) + 61B]
// terminal.cpp:89:     if (!visual || !output_is_terminal_ || !isatty(STDIN_FILENO) ||
	cmp	w0, 0	// _2,
	ccmp	w20, 0, 4, ne	// visual,,,
	bne	.L108		//,
.L99:
// terminal.cpp:100: }
	adrp	x0, :got:__stack_chk_guard	// tmp126,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp126,
	ldr	x2, [sp, 72]	// tmp133, D.85373
	ldr	x1, [x0]	// tmp134,
	subs	x2, x2, x1	// tmp133, tmp134
	mov	x1, 0	// tmp134
	bne	.L109		//,
	ldp	x29, x30, [sp, 80]	//,,
	ldp	x19, x20, [sp, 96]	//,,
	add	sp, sp, 112	//,,
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret	
	.p2align 2,,3
.L108:
	.cfi_restore_state
// terminal.cpp:89:     if (!visual || !output_is_terminal_ || !isatty(STDIN_FILENO) ||
	mov	w0, 0	//,
	bl	isatty		//
// terminal.cpp:89:     if (!visual || !output_is_terminal_ || !isatty(STDIN_FILENO) ||
	cbz	w0, .L99	// tmp129,
// terminal.cpp:90:         tcgetattr(STDIN_FILENO, &saved_input_)) {
	mov	x1, x19	//, this
	mov	w0, 0	//,
	bl	tcgetattr		//
// terminal.cpp:89:     if (!visual || !output_is_terminal_ || !isatty(STDIN_FILENO) ||
	cbnz	w0, .L99	// tmp130,
// terminal.cpp:95:     termios mode = saved_input_;
	ldp	q2, q3, [x19]	// *this_9(D).saved_input_, *this_9(D).saved_input_, *this_9(D).saved_input_
	add	x2, sp, 8	// tmp114,,
	ldr	q1, [x19, 32]	// *this_9(D).saved_input_, *this_9(D).saved_input_
// terminal.cpp:96:     mode.c_lflag &= static_cast<tcflag_t>(~(ICANON | ECHO));
	mov	w4, -11	// tmp122,
// terminal.cpp:95:     termios mode = saved_input_;
	stp	q2, q3, [x2]	// *this_9(D).saved_input_, *this_9(D).saved_input_, mode
// terminal.cpp:99:     input_enabled_ = tcsetattr(STDIN_FILENO, TCSANOW, &mode) == 0;
	mov	w1, 0	//,
// terminal.cpp:96:     mode.c_lflag &= static_cast<tcflag_t>(~(ICANON | ECHO));
	ldr	w3, [sp, 20]	//, mode.c_lflag
// terminal.cpp:95:     termios mode = saved_input_;
	ldr	q0, [x19, 44]	// *this_9(D).saved_input_, *this_9(D).saved_input_
// terminal.cpp:96:     mode.c_lflag &= static_cast<tcflag_t>(~(ICANON | ECHO));
	and	w3, w3, w4	// tmp120, mode.c_lflag, tmp122
// terminal.cpp:95:     termios mode = saved_input_;
	str	q1, [x2, 32]	// *this_9(D).saved_input_, mode
// terminal.cpp:96:     mode.c_lflag &= static_cast<tcflag_t>(~(ICANON | ECHO));
	str	w3, [sp, 20]	// tmp120, mode.c_lflag
// terminal.cpp:98:     mode.c_cc[VTIME] = 0;
	strh	wzr, [sp, 30]	//, MEM <vector(2) unsigned char> [(unsigned char *)&mode + 22B]
// terminal.cpp:95:     termios mode = saved_input_;
	str	q0, [x2, 44]	// *this_9(D).saved_input_, mode
// terminal.cpp:99:     input_enabled_ = tcsetattr(STDIN_FILENO, TCSANOW, &mode) == 0;
	bl	tcsetattr		//
// terminal.cpp:99:     input_enabled_ = tcsetattr(STDIN_FILENO, TCSANOW, &mode) == 0;
	cmp	w0, 0	// tmp131,
	cset	w0, eq	// tmp124,
	strb	w0, [x19, 61]	// tmp124, *this_9(D).input_enabled_
	b	.L99		//
.L109:
// terminal.cpp:100: }
	bl	__stack_chk_fail		//
	.cfi_endproc
.LFE3153:
	.size	_ZN8TerminalC2Eb, .-_ZN8TerminalC2Eb
	.global	_ZN8TerminalC1Eb
	.set	_ZN8TerminalC1Eb,_ZN8TerminalC2Eb
	.section	.rodata.str1.8
	.align	3
.LC23:
	.string	"\033[?25h"
	.text
	.align	2
	.p2align 4,,11
	.global	_ZN8TerminalD2Ev
	.type	_ZN8TerminalD2Ev, %function
_ZN8TerminalD2Ev:
.LFB3156:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3156
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -16
// terminal.cpp:102: Terminal::~Terminal() {
	mov	x19, x0	// this, tmp103
// terminal.cpp:103:     if (input_enabled_) {
	ldrb	w0, [x0, 61]	// this_5(D)->input_enabled_, this_5(D)->input_enabled_
	tbnz	x0, 0, .L120	// this_5(D)->input_enabled_,,
// terminal.cpp:125:     if (cursor_hidden_) {
	ldrb	w0, [x19, 62]	// this_5(D)->cursor_hidden_, this_5(D)->cursor_hidden_
	tbnz	x0, 0, .L121	// this_5(D)->cursor_hidden_,,
.L110:
// terminal.cpp:107: }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.p2align 2,,3
.L120:
	.cfi_restore_state
// terminal.cpp:104:         tcsetattr(STDIN_FILENO, TCSANOW, &saved_input_);
	mov	x2, x19	//, this
	mov	w1, 0	//,
	mov	w0, 0	//,
	bl	tcsetattr		//
// terminal.cpp:125:     if (cursor_hidden_) {
	ldrb	w0, [x19, 62]	// this_5(D)->cursor_hidden_, this_5(D)->cursor_hidden_
	tbz	x0, 0, .L110	// this_5(D)->cursor_hidden_,,
.L121:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	mov	x2, 6	//,
	adrp	x1, .LC23	// tmp101,
	add	x1, x1, :lo12:.LC23	//, tmp101,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// terminal.cpp:107: }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3156:
	.section	.gcc_except_table
.LLSDA3156:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3156-.LLSDACSB3156
.LLSDACSB3156:
.LLSDACSE3156:
	.text
	.size	_ZN8TerminalD2Ev, .-_ZN8TerminalD2Ev
	.global	_ZN8TerminalD1Ev
	.set	_ZN8TerminalD1Ev,_ZN8TerminalD2Ev
	.align	2
	.p2align 4,,11
	.global	_ZNK8Terminal18output_is_terminalEv
	.type	_ZNK8Terminal18output_is_terminalEv, %function
_ZNK8Terminal18output_is_terminalEv:
.LFB3158:
	.cfi_startproc
// terminal.cpp:111: }
	ldrb	w0, [x0, 60]	//, this_2(D)->output_is_terminal_
	ret	
	.cfi_endproc
.LFE3158:
	.size	_ZNK8Terminal18output_is_terminalEv, .-_ZNK8Terminal18output_is_terminalEv
	.align	2
	.p2align 4,,11
	.global	_ZNK8Terminal13input_enabledEv
	.type	_ZNK8Terminal13input_enabledEv, %function
_ZNK8Terminal13input_enabledEv:
.LFB3159:
	.cfi_startproc
// terminal.cpp:115: }
	ldrb	w0, [x0, 61]	//, this_2(D)->input_enabled_
	ret	
	.cfi_endproc
.LFE3159:
	.size	_ZNK8Terminal13input_enabledEv, .-_ZNK8Terminal13input_enabledEv
	.section	.rodata.str1.8
	.align	3
.LC24:
	.string	"\033[2J\033[H\033[?25l"
	.text
	.align	2
	.p2align 4,,11
	.global	_ZN8Terminal13begin_displayEv
	.type	_ZN8Terminal13begin_displayEv, %function
_ZN8Terminal13begin_displayEv:
.LFB3160:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -16
// terminal.cpp:117: void Terminal::begin_display() {
	mov	x19, x0	// this, tmp100
// terminal.cpp:118:     if (output_is_terminal_) {
	ldrb	w0, [x0, 60]	// this_4(D)->output_is_terminal_, this_4(D)->output_is_terminal_
	tbnz	x0, 0, .L130	// this_4(D)->output_is_terminal_,,
// terminal.cpp:122: }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.p2align 2,,3
.L130:
	.cfi_restore_state
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	mov	x2, 13	//,
	adrp	x1, .LC24	// tmp97,
	add	x1, x1, :lo12:.LC24	//, tmp97,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// terminal.cpp:120:         cursor_hidden_ = true;
	mov	w0, 1	// tmp99,
	strb	w0, [x19, 62]	// tmp99, this_4(D)->cursor_hidden_
// terminal.cpp:122: }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3160:
	.size	_ZN8Terminal13begin_displayEv, .-_ZN8Terminal13begin_displayEv
	.align	2
	.p2align 4,,11
	.global	_ZN8Terminal14restore_cursorEv
	.type	_ZN8Terminal14restore_cursorEv, %function
_ZN8Terminal14restore_cursorEv:
.LFB3161:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -16
// terminal.cpp:124: void Terminal::restore_cursor() {
	mov	x19, x0	// this, tmp99
// terminal.cpp:125:     if (cursor_hidden_) {
	ldrb	w0, [x0, 62]	// this_3(D)->cursor_hidden_, this_3(D)->cursor_hidden_
	tbnz	x0, 0, .L137	// this_3(D)->cursor_hidden_,,
// terminal.cpp:129: }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.p2align 2,,3
.L137:
	.cfi_restore_state
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	mov	x2, 6	//,
	adrp	x1, .LC23	// tmp97,
	add	x1, x1, :lo12:.LC23	//, tmp97,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// terminal.cpp:127:         cursor_hidden_ = false;
	strb	wzr, [x19, 62]	//, this_3(D)->cursor_hidden_
// terminal.cpp:129: }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3161:
	.size	_ZN8Terminal14restore_cursorEv, .-_ZN8Terminal14restore_cursorEv
	.align	2
	.p2align 4,,11
	.global	_Z23install_signal_handlersv
	.type	_Z23install_signal_handlersv, %function
_Z23install_signal_handlersv:
.LFB3162:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
// terminal.cpp:132:     std::signal(SIGINT, on_signal);
	mov	w0, 2	//,
// terminal.cpp:131: void install_signal_handlers() {
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -16
// terminal.cpp:132:     std::signal(SIGINT, on_signal);
	adrp	x19, _ZN12_GLOBAL__N_19on_signalEi	// tmp93,
	add	x19, x19, :lo12:_ZN12_GLOBAL__N_19on_signalEi	// tmp92, tmp93,
	mov	x1, x19	//, tmp92
	bl	signal		//
// terminal.cpp:133:     std::signal(SIGTERM, on_signal);
	mov	x1, x19	//, tmp92
	mov	w0, 15	//,
// terminal.cpp:134: }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
// terminal.cpp:133:     std::signal(SIGTERM, on_signal);
	b	signal		//
	.cfi_endproc
.LFE3162:
	.size	_Z23install_signal_handlersv, .-_Z23install_signal_handlersv
	.align	2
	.p2align 4,,11
	.global	_Z22interruption_requestedv
	.type	_Z22interruption_requestedv, %function
_Z22interruption_requestedv:
.LFB3163:
	.cfi_startproc
// terminal.cpp:137:     return interrupted != 0;
	adrp	x0, .LANCHOR0	// tmp96,
	ldr	w0, [x0, #:lo12:.LANCHOR0]	//, interrupted
// terminal.cpp:137:     return interrupted != 0;
	cmp	w0, 0	// interrupted.2_1,
// terminal.cpp:138: }
	cset	w0, ne	//,
	ret	
	.cfi_endproc
.LFE3163:
	.size	_Z22interruption_requestedv, .-_Z22interruption_requestedv
	.section	.text._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
	.type	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_, %function
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_:
.LFB3460:
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
	beq	.L157		//,
// /usr/include/c++/13/bits/basic_string.h:3665: 	  if (__size > __lhs.capacity() && __size <= __rhs.capacity())
	ldr	x6, [x0, 16]	// MEM[(const struct basic_string *)__lhs_3(D)].D.36210._M_allocated_capacity, MEM[(const struct basic_string *)__lhs_3(D)].D.36210._M_allocated_capacity
	cmp	x6, x7	// MEM[(const struct basic_string *)__lhs_3(D)].D.36210._M_allocated_capacity, __size
	bcs	.L143		//,
// /usr/include/c++/13/bits/basic_string.h:241: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	add	x6, x5, 16	// tmp125, __rhs,
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x1, x6	// pretmp_63, tmp125
	beq	.L152		//,
.L144:
// /usr/include/c++/13/bits/basic_string.h:1171: 	return _M_is_local() ? size_type(_S_local_capacity)
	ldr	x6, [x5, 16]	// iftmp.51_17, MEM[(const struct basic_string *)__rhs_5(D)].D.36210._M_allocated_capacity
.L145:
// /usr/include/c++/13/bits/basic_string.h:3665: 	  if (__size > __lhs.capacity() && __size <= __rhs.capacity())
	cmp	x7, x6	// __size, iftmp.51_17
	bls	.L158		//,
.L143:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x3, 4611686018427387903	// tmp135,
	sub	x3, x3, x4	// tmp134, tmp135, _14
	cmp	x2, x3	// _13, tmp134
	bhi	.L159		//,
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
	beq	.L160		//,
.L150:
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [x0, 16]	// *_44.D.36210._M_allocated_capacity,
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x1, [x19]	// _36,* <retval>
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x0, [x19, 16]	// *_44.D.36210._M_allocated_capacity,
.L151:
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
.L158:
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
	bne	.L150		//,
.L160:
// /usr/include/c++/13/bits/basic_string.h:683: 	    traits_type::copy(_M_local_buf, __str._M_local_buf,
	ldr	x2, [x20, 8]	// MEM[(const struct basic_string *)_44]._M_string_length,
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x0, x3	//, _35
	mov	x1, x21	//, _37
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_44]._M_string_length,
	bl	memcpy		//
	b	.L151		//
	.p2align 2,,3
.L152:
// /usr/include/c++/13/bits/basic_string.h:1171: 	return _M_is_local() ? size_type(_S_local_capacity)
	mov	x6, 15	// iftmp.51_17,
	b	.L145		//
	.p2align 2,,3
.L157:
// /usr/include/c++/13/bits/basic_string.h:3665: 	  if (__size > __lhs.capacity() && __size <= __rhs.capacity())
	cmp	x7, 15	// __size,
	bls	.L143		//,
// /usr/include/c++/13/bits/basic_string.h:241: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	add	x6, x5, 16	// tmp123, __rhs,
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x1, x6	// pretmp_63, tmp123
	bne	.L144		//,
	b	.L143		//
.L159:
// /usr/include/c++/13/bits/basic_string.h:400: 	  __throw_length_error(__N(__s));
	adrp	x0, .LC21	// tmp137,
	add	x0, x0, :lo12:.LC21	//, tmp137,
	bl	_ZSt20__throw_length_errorPKc		//
	.cfi_endproc
.LFE3460:
	.size	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_, .-_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, %function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev:
.LFB3476:
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
	ldp	x19, x20, [x0]	// __first, prephitmp_14, this_4(D)->D.73460._M_impl.D.72768._M_start
// /usr/include/c++/13/bits/stl_vector.h:733:       ~vector() _GLIBCXX_NOEXCEPT
	str	x21, [sp, 32]	//,
	.cfi_offset 21, -16
// /usr/include/c++/13/bits/stl_vector.h:733:       ~vector() _GLIBCXX_NOEXCEPT
	mov	x21, x0	// this, tmp109
// /usr/include/c++/13/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	cmp	x19, x20	// __first, prephitmp_14
	beq	.L162		//,
	.p2align 3,,7
.L166:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x1, x19	// tmp104, __first
	ldr	x0, [x1], 16	// _17, MEM[(char * *)__first_10]
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _17, tmp104
	beq	.L163		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x19, 16]	// MEM <size_type> [(union ._anon_56 *)__first_10 + 16B], MEM <size_type> [(union ._anon_56 *)__first_10 + 16B]
// /usr/include/c++/13/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	add	x19, x19, 32	// __first, __first,
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM <size_type> [(union ._anon_56 *)__first_10 + 16B],
	bl	_ZdlPvm		//
// /usr/include/c++/13/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	cmp	x20, x19	// prephitmp_14, __first
	bne	.L166		//,
// /usr/include/c++/13/bits/stl_vector.h:369: 	_M_deallocate(_M_impl._M_start,
	ldr	x20, [x21]	// prephitmp_14, MEM[(struct _Vector_base *)this_4(D)]._M_impl.D.72768._M_start
.L162:
// /usr/include/c++/13/bits/stl_vector.h:389: 	if (__p)
	cbz	x20, .L161	// prephitmp_14,
// /usr/include/c++/13/bits/stl_vector.h:370: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	ldr	x1, [x21, 16]	// MEM[(struct _Vector_base *)this_4(D)]._M_impl.D.72768._M_end_of_storage, MEM[(struct _Vector_base *)this_4(D)]._M_impl.D.72768._M_end_of_storage
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x20	//, prephitmp_14
// /usr/include/c++/13/bits/stl_vector.h:738:       }
	ldr	x21, [sp, 32]	//,
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	sub	x1, x1, x20	//, MEM[(struct _Vector_base *)this_4(D)]._M_impl.D.72768._M_end_of_storage, prephitmp_14
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
.L163:
	.cfi_restore_state
// /usr/include/c++/13/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	add	x19, x19, 32	// __first, __first,
// /usr/include/c++/13/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	cmp	x20, x19	// prephitmp_14, __first
	bne	.L166		//,
// /usr/include/c++/13/bits/stl_vector.h:369: 	_M_deallocate(_M_impl._M_start,
	ldr	x20, [x21]	// prephitmp_14, MEM[(struct _Vector_base *)this_4(D)]._M_impl.D.72768._M_start
	b	.L162		//
	.p2align 2,,3
.L161:
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
.LFE3476:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	.set	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.section	.rodata._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.str1.8,"aMS",@progbits,1
	.align	3
.LC25:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, %function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:
.LFB3809:
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
	beq	.L197		//,
	mov	x20, x2	// __args#0, tmp203
// /usr/include/c++/13/bits/stl_iterator.h:1337:     { return __lhs.base() - __rhs.base(); }
	sub	x28, x21, x25	// tmp200, __position, _56
// /usr/include/c++/13/bits/stl_algobase.h:262:       if (__a < __b)
	cmp	x25, x24	// _56, _57
	beq	.L198		//,
// /usr/include/c++/13/bits/stl_vector.h:1901: 	const size_type __len = size() + (std::max)(size(), __n);
	lsl	x2, x0, 1	// __len, tmp163,
// /usr/include/c++/13/bits/stl_vector.h:1902: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmp	x0, x2	// tmp163, __len
	bhi	.L190		//,
// /usr/include/c++/13/bits/stl_vector.h:381: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	cbnz	x2, .L199	// __len,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x26, x20	// _77, __args#0
// /usr/include/c++/13/bits/stl_vector.h:381: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	mov	x27, 0	// iftmp.54_23,
// /usr/include/c++/13/bits/vector.tcc:468: 	  _Alloc_traits::construct(this->_M_impl,
	add	x3, x27, x28	// _2, iftmp.54_23, tmp200
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
	beq	.L200		//,
.L176:
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [x20, 16]	// *__args#0_22(D).D.36210._M_allocated_capacity, *__args#0_22(D).D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x1, [x27, x28]	// _76, *_2._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x0, [x3, 16]	// *__args#0_22(D).D.36210._M_allocated_capacity, *_2.D.36210._M_allocated_capacity
.L177:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x26, xzr, [x20]	// _77,, *__args#0_22(D)._M_dataplus._M_p
	str	x4, [x3, 8]	// pretmp_114, *_2._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x20, 16]	//, MEM[(char_type &)__args#0_22(D) + 16]
// /usr/include/c++/13/bits/stl_uninitialized.h:1104:       for (; __first != __last; ++__first, (void)++__cur)
	cmp	x21, x25	// __position, _56
	beq	.L178		//,
	add	x20, x25, 16	// ivtmp.598, _56,
	add	x26, x21, 16	// _95, __position,
// /usr/include/c++/13/bits/stl_uninitialized.h:1103:       _ForwardIterator __cur = __result;
	mov	x19, x27	// __cur, iftmp.54_23
	.p2align 3,,7
.L182:
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x20, -8]	// pretmp_100, MEM[(long unsigned int *)_15 + -8B]
// /usr/include/c++/13/bits/basic_string.h:230: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x0, x19, 16	// _88, __cur,
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x0, [x19]	// _88, MEM[(char * *)__cur_120]
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [x20, -16]	// _89, MEM[(char * *)_15 + -16B]
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x20, x1	// ivtmp.598, _89
	beq	.L201		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x3, [x20], 32	// MEM <size_type> [(union ._anon_56 *)_15], MEM <size_type> [(union ._anon_56 *)_15]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x1, x2, [x19]	// _89, pretmp_100, MEM[(char * *)__cur_120]
// /usr/include/c++/13/bits/stl_uninitialized.h:1104:       for (; __first != __last; ++__first, (void)++__cur)
	add	x19, x19, 32	// __cur, __cur,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x3, [x19, -16]	// MEM <size_type> [(union ._anon_56 *)_15], MEM <size_type> [(union ._anon_56 *)__cur_120 + 16B]
// /usr/include/c++/13/bits/stl_uninitialized.h:1104:       for (; __first != __last; ++__first, (void)++__cur)
	cmp	x20, x26	// ivtmp.598, _95
	bne	.L182		//,
.L181:
// /usr/include/c++/13/bits/vector.tcc:483: 	      ++__new_finish;
	add	x28, x28, 32	// tmp190, tmp200,
	add	x19, x27, x28	// __cur, iftmp.54_23, tmp190
.L178:
// /usr/include/c++/13/bits/stl_uninitialized.h:1104:       for (; __first != __last; ++__first, (void)++__cur)
	cmp	x21, x24	// __position, _57
	beq	.L192		//,
	sub	x24, x24, x21	// tmp191, _57, __position
	add	x20, x21, 16	// ivtmp.588, __position,
	add	x24, x19, x24	// __cur, __cur, tmp191
	.p2align 3,,7
.L187:
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldp	x1, x21, [x20, -16]	// _103, pretmp_99, MEM[(char * *)_64 + -16B]
// /usr/include/c++/13/bits/basic_string.h:230: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x0, x19, 16	// _102, __cur,
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x0, [x19]	// _102, MEM[(char * *)__cur_69]
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x20, x1	// ivtmp.588, _103
	beq	.L202		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x2, [x20], 32	// MEM <size_type> [(union ._anon_56 *)_64], MEM <size_type> [(union ._anon_56 *)_64]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x1, x21, [x19]	// _103, pretmp_99, MEM[(char * *)__cur_69]
// /usr/include/c++/13/bits/stl_uninitialized.h:1104:       for (; __first != __last; ++__first, (void)++__cur)
	add	x19, x19, 32	// __cur, __cur,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x2, [x19, -16]	// MEM <size_type> [(union ._anon_56 *)_64], MEM <size_type> [(union ._anon_56 *)__cur_69 + 16B]
// /usr/include/c++/13/bits/stl_uninitialized.h:1104:       for (; __first != __last; ++__first, (void)++__cur)
	cmp	x19, x24	// __cur, __cur
	bne	.L187		//,
.L183:
// /usr/include/c++/13/bits/stl_vector.h:389: 	if (__p)
	cbz	x25, .L188	// _56,
// /usr/include/c++/13/bits/vector.tcc:520: 		    this->_M_impl._M_end_of_storage - __old_start);
	ldr	x1, [x23, 16]	// this_17(D)->D.73460._M_impl.D.72768._M_end_of_storage, this_17(D)->D.73460._M_impl.D.72768._M_end_of_storage
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x25	//, _56
	sub	x1, x1, x25	//, this_17(D)->D.73460._M_impl.D.72768._M_end_of_storage, _56
	bl	_ZdlPvm		//
.L188:
// /usr/include/c++/13/bits/vector.tcc:524:     }
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x25, x26, [sp, 64]	//,,
// /usr/include/c++/13/bits/vector.tcc:522:       this->_M_impl._M_finish = __new_finish;
	stp	x27, x24, [x23]	// iftmp.54_23, __cur, this_17(D)->D.73460._M_impl.D.72768._M_start
// /usr/include/c++/13/bits/vector.tcc:523:       this->_M_impl._M_end_of_storage = __new_start + __len;
	str	x22, [x23, 16]	// _86, this_17(D)->D.73460._M_impl.D.72768._M_end_of_storage
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
.L190:
	.cfi_restore_state
	mov	x22, 9223372036854775776	// prephitmp_116,
.L174:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x26, x20	// _77, __args#0
// /usr/include/c++/13/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x0, x22	//, prephitmp_116
	bl	_Znwm		//
	mov	x27, x0	// iftmp.54_23, tmp204
// /usr/include/c++/13/bits/vector.tcc:468: 	  _Alloc_traits::construct(this->_M_impl,
	add	x3, x27, x28	// _2, iftmp.54_23, tmp200
// /usr/include/c++/13/bits/vector.tcc:523:       this->_M_impl._M_end_of_storage = __new_start + __len;
	add	x22, x0, x22	// _86, iftmp.54_23, prephitmp_116
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [x26], 16	// _76, MEM[(const struct basic_string *)__args#0_22(D)]._M_dataplus._M_p
// /usr/include/c++/13/bits/vector.tcc:483: 	      ++__new_finish;
	add	x19, x0, 32	// __cur, iftmp.54_23,
// /usr/include/c++/13/bits/basic_string.h:230: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x0, x3, 16	// _75, _2,
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x0, [x27, x28]	// _75, MEM[(struct _Alloc_hider *)_2]._M_p
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x4, [x20, 8]	// pretmp_114, MEM[(const struct basic_string *)__args#0_22(D)]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x1, x26	// _76, _77
	bne	.L176		//,
.L200:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x2, x4, 1	//, pretmp_114,
	mov	x1, x26	//, _77
	stp	x4, x3, [sp, 96]	// pretmp_114, _2, %sfp
	bl	memcpy		//
	ldp	x4, x3, [sp, 96]	// pretmp_114, _2, %sfp
	b	.L177		//
	.p2align 2,,3
.L202:
	mov	x1, x20	//, ivtmp.588
	add	x2, x21, 1	//, pretmp_99,
// /usr/include/c++/13/bits/stl_uninitialized.h:1104:       for (; __first != __last; ++__first, (void)++__cur)
	add	x19, x19, 32	// __cur, __cur,
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	bl	memcpy		//
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x21, [x19, -24]	// pretmp_99, MEM[(long unsigned int *)__cur_69 + 8B]
// /usr/include/c++/13/bits/stl_uninitialized.h:1104:       for (; __first != __last; ++__first, (void)++__cur)
	add	x20, x20, 32	// ivtmp.588, ivtmp.588,
	cmp	x19, x24	// __cur, __cur
	bne	.L187		//,
	b	.L183		//
	.p2align 2,,3
.L201:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x1, x20	//, ivtmp.598
	add	x2, x2, 1	//, pretmp_100,
	bl	memcpy		//
// /usr/include/c++/13/bits/stl_uninitialized.h:1104:       for (; __first != __last; ++__first, (void)++__cur)
	add	x20, x20, 32	// ivtmp.598, ivtmp.598,
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	ldr	x0, [x20, -40]	// MEM[(long unsigned int *)_89 + -8B], MEM[(long unsigned int *)_89 + -8B]
	str	x0, [x19, 8]	// MEM[(long unsigned int *)_89 + -8B], MEM[(long unsigned int *)__cur_120 + 8B]
// /usr/include/c++/13/bits/stl_uninitialized.h:1104:       for (; __first != __last; ++__first, (void)++__cur)
	add	x19, x19, 32	// __cur, __cur,
// /usr/include/c++/13/bits/stl_uninitialized.h:1104:       for (; __first != __last; ++__first, (void)++__cur)
	cmp	x26, x20	// _95, ivtmp.598
	bne	.L182		//,
	b	.L181		//
	.p2align 2,,3
.L198:
	adds	x0, x0, 1	// tmp167, tmp163,
	bcs	.L190		//,
// /usr/include/c++/13/bits/stl_vector.h:1902: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmp	x0, x1	// tmp167, tmp164
	csel	x22, x0, x1, ls	// tmp169, tmp167, tmp164,
// /usr/include/c++/13/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	lsl	x22, x22, 5	// prephitmp_116, tmp169,
	b	.L174		//
	.p2align 2,,3
.L192:
// /usr/include/c++/13/bits/stl_uninitialized.h:1103:       _ForwardIterator __cur = __result;
	mov	x24, x19	// __cur, __cur
	b	.L183		//
.L199:
// /usr/include/c++/13/bits/stl_vector.h:1902: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmp	x2, x1	// __len, tmp164
	csel	x2, x2, x1, ls	// tmp172, __len, tmp164,
// /usr/include/c++/13/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	lsl	x22, x2, 5	// prephitmp_116, tmp172,
	b	.L174		//
.L197:
// /usr/include/c++/13/bits/stl_vector.h:1899: 	  __throw_length_error(__N(__s));
	adrp	x0, .LC25	// tmp166,
	add	x0, x0, :lo12:.LC25	//, tmp166,
	bl	_ZSt20__throw_length_errorPKc		//
	.cfi_endproc
.LFE3809:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_
	.section	.rodata.str1.8
	.align	3
.LC26:
	.string	"\342\226\210"
	.align	3
.LC27:
	.string	"\342\226\221"
	.align	3
.LC28:
	.string	"-"
	.align	3
.LC29:
	.string	"#"
	.align	3
.LC30:
	.string	"[PAUSA] "
	.align	3
.LC31:
	.string	""
	.align	3
.LC32:
	.string	"]"
	.align	3
.LC33:
	.string	"Paso "
	.align	3
.LC34:
	.string	" / "
	.align	3
.LC35:
	.string	"S"
	.align	3
.LC36:
	.string	"SW"
	.align	3
.LC37:
	.string	"W"
	.align	3
.LC38:
	.string	"\342\206\221"
	.align	3
.LC39:
	.string	"\342\206\227"
	.align	3
.LC40:
	.string	"\342\206\222"
	.align	3
.LC41:
	.string	"\342\206\230"
	.align	3
.LC42:
	.string	"\342\206\223"
	.align	3
.LC43:
	.string	"\342\206\231"
	.align	3
.LC44:
	.string	"\342\206\220"
	.align	3
.LC45:
	.string	"\342\206\226"
	.align	3
.LC46:
	.string	"Viento "
	.align	3
.LC47:
	.string	" "
	.align	3
.LC48:
	.string	"  "
	.align	3
.LC49:
	.string	"no aplica"
	.align	3
.LC50:
	.string	"Humedad media: "
	.align	3
.LC51:
	.string	"Estados / total "
	.align	3
.LC52:
	.string	"Vegetaci\303\263n "
	.align	3
.LC53:
	.string	" ("
	.align	3
.LC54:
	.string	")"
	.align	3
.LC55:
	.string	"Ardiendo   "
	.align	3
.LC56:
	.string	"Quemado    "
	.align	3
.LC57:
	.string	"Agua "
	.align	3
.LC58:
	.string	")  Vac\303\255o "
	.align	3
.LC59:
	.string	"Inicial afectada: "
	.align	3
.LC60:
	.string	"/"
	.align	3
.LC61:
	.string	" del bosque inicial"
	.align	3
.LC62:
	.string	"T vegetaci\303\263n  * fuego"
	.align	3
.LC63:
	.string	"# quemado  ~ agua  . vac\303\255o"
	.align	3
.LC64:
	.string	" ms "
	.align	3
.LC65:
	.string	"+/- rapidez"
	.align	3
.LC66:
	.string	"espacio pausa  n paso  q salir"
	.text
	.align	2
	.p2align 4,,11
	.type	_ZN12_GLOBAL__N_117information_panelERKSt6vectorI4CellSaIS1_EERK7OptionsRK8Playbackmm, %function
_ZN12_GLOBAL__N_117information_panelERKSt6vectorI4CellSaIS1_EERK7OptionsRK8Playbackmm:
.LFB3142:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3142
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	stp	x19, x20, [sp, 16]	//,,
	stp	x21, x22, [sp, 32]	//,,
	stp	x23, x24, [sp, 48]	//,,
	stp	x25, x26, [sp, 64]	//,,
	stp	x27, x28, [sp, 80]	//,,
	sub	sp, sp, #3168	//,,
	.cfi_def_cfa_offset 3264
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	str	xzr, [sp, 1024]	//,
	adrp	x5, :got:__stack_chk_guard	// tmp719,
	ldr	x5, [x5, :got_lo12:__stack_chk_guard]	// tmp719,
// terminal.cpp:55:                                          std::size_t initial_trees) {
	stp	x4, x2, [sp, 64]	// initial_trees, tmp2320, %sfp
	mov	x19, x4	// initial_trees, tmp2322
	ldr	x2, [x5]	// tmp2453,
	str	x2, [sp, 3160]	// tmp2453, D.86915
	mov	x2, 0	// tmp2453
	mov	x28, x3	// step, tmp2321
	mov	x25, x0	// cells, tmp2318
	mov	x21, x8	// <retval>, tmp2317
	mov	x20, x1	// options, tmp2319
// terminal.cpp:56:     Stats stats = statistics(cells, initial_trees);
	add	x8, sp, 2000	//,,
	mov	x1, x4	//, initial_trees
.LEHB5:
	bl	_Z10statisticsRKSt6vectorI4CellSaIS0_EEm		//
.LEHE5:
	ldr	x26, [sp, 2048]	// stats$affected, stats.affected
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x2, sp, 576	// tmp2229,,
// terminal.cpp:56:     Stats stats = statistics(cells, initial_trees);
	ldr	x1, [sp, 2000]	// stats$count$0, stats.count[0]
	str	x1, [sp, 56]	// stats$count$0, %sfp
	ldr	x1, [sp, 2008]	// stats$count$1, stats.count[1]
// terminal.cpp:57:     std::size_t filled = 10 * stats.affected / initial_trees;
	add	x22, x26, x26, lsl 2	// tmp736, stats$affected, stats$affected,
// terminal.cpp:56:     Stats stats = statistics(cells, initial_trees);
	str	x1, [sp, 8]	// stats$count$1, %sfp
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	mov	x0, 1	// tmp740,
// terminal.cpp:56:     Stats stats = statistics(cells, initial_trees);
	ldr	x1, [sp, 2016]	// stats$count$2, stats.count[2]
// terminal.cpp:57:     std::size_t filled = 10 * stats.affected / initial_trees;
	lsl	x22, x22, 1	// tmp737, tmp736,
// terminal.cpp:56:     Stats stats = statistics(cells, initial_trees);
	str	x1, [sp, 32]	// stats$count$2, %sfp
// terminal.cpp:60:         bar += i < filled ? (options.ascii ? "#" : "█") : (options.ascii ? "-" : "░");
	adrp	x24, .LC27	// tmp2313,
// terminal.cpp:56:     Stats stats = statistics(cells, initial_trees);
	ldr	x1, [sp, 2024]	// stats$count$3, stats.count[3]
	str	x1, [sp, 40]	// stats$count$3, %sfp
	ldr	x1, [sp, 2032]	// stats$count$4, stats.count[4]
// terminal.cpp:60:         bar += i < filled ? (options.ascii ? "#" : "█") : (options.ascii ? "-" : "░");
	adrp	x27, .LC28	// tmp2315,
// terminal.cpp:57:     std::size_t filled = 10 * stats.affected / initial_trees;
	udiv	x22, x22, x19	// filled, tmp737, initial_trees
// terminal.cpp:60:         bar += i < filled ? (options.ascii ? "#" : "█") : (options.ascii ? "-" : "░");
	add	x24, x24, :lo12:.LC27	// iftmp.22_67, tmp2313,
// terminal.cpp:60:         bar += i < filled ? (options.ascii ? "#" : "█") : (options.ascii ? "-" : "░");
	add	x27, x27, :lo12:.LC28	// iftmp.22_67, tmp2315,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	mov	x3, x0	// prephitmp_3245, tmp740
// terminal.cpp:59:     for (std::size_t i = 0; i < 10; ++i) {
	mov	x19, 0	// i,
// terminal.cpp:56:     Stats stats = statistics(cells, initial_trees);
	str	x1, [sp, 48]	// stats$count$4, %sfp
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	mov	w1, 91	// tmp741,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x2, [sp, 384]	// tmp2229, %sfp
	str	x2, [sp, 560]	// tmp2229, MEM[(struct _Alloc_hider *)&bar]._M_p
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x0, [sp, 568]	// tmp740, bar._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strh	w1, [sp, 576]	// tmp741, MEM <vector(2) char> [(char_type &)&bar + 16]
	b	.L208		//
	.p2align 2,,3
.L852:
// terminal.cpp:60:         bar += i < filled ? (options.ascii ? "#" : "█") : (options.ascii ? "-" : "░");
	tbz	x0, 0, .L639	// pretmp_3354,,
// terminal.cpp:60:         bar += i < filled ? (options.ascii ? "#" : "█") : (options.ascii ? "-" : "░");
	adrp	x1, .LC29	// tmp723,
	add	x1, x1, :lo12:.LC29	// iftmp.22_67, tmp723,
// terminal.cpp:60:         bar += i < filled ? (options.ascii ? "#" : "█") : (options.ascii ? "-" : "░");
	mov	x2, 1	// prephitmp_3246,
.L205:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 4611686018427387903	// tmp745,
	sub	x0, x0, x3	// tmp744, tmp745, prephitmp_3245
	cmp	x0, x2	// tmp744, prephitmp_3246
	bcc	.L850		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	add	x23, sp, 560	// tmp2226,,
	mov	x0, x23	//, tmp2226
.LEHB6:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
// terminal.cpp:59:     for (std::size_t i = 0; i < 10; ++i) {
	add	x19, x19, 1	// i, i,
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	ldr	x3, [sp, 568]	// prephitmp_3245, bar._M_string_length
// terminal.cpp:59:     for (std::size_t i = 0; i < 10; ++i) {
	cmp	x19, 10	// i,
	beq	.L851		//,
.L208:
// terminal.cpp:60:         bar += i < filled ? (options.ascii ? "#" : "█") : (options.ascii ? "-" : "░");
	ldrb	w0, [x20, 99]	// pretmp_3354, options_143(D)->ascii
// terminal.cpp:60:         bar += i < filled ? (options.ascii ? "#" : "█") : (options.ascii ? "-" : "░");
	cmp	x22, x19	// filled, i
	bhi	.L852		//,
// terminal.cpp:60:         bar += i < filled ? (options.ascii ? "#" : "█") : (options.ascii ? "-" : "░");
	tbz	x0, 0, .L640	// pretmp_3354,,
// terminal.cpp:60:         bar += i < filled ? (options.ascii ? "#" : "█") : (options.ascii ? "-" : "░");
	mov	x1, x27	// iftmp.22_67, iftmp.22_67
// terminal.cpp:60:         bar += i < filled ? (options.ascii ? "#" : "█") : (options.ascii ? "-" : "░");
	mov	x2, 1	// prephitmp_3246,
	b	.L205		//
	.p2align 2,,3
.L639:
// terminal.cpp:60:         bar += i < filled ? (options.ascii ? "#" : "█") : (options.ascii ? "-" : "░");
	adrp	x1, .LC26	// tmp720,
	mov	x2, 3	// prephitmp_3246,
	add	x1, x1, :lo12:.LC26	// iftmp.22_67, tmp720,
	b	.L205		//
	.p2align 2,,3
.L640:
// terminal.cpp:60:         bar += i < filled ? (options.ascii ? "#" : "█") : (options.ascii ? "-" : "░");
	mov	x1, x24	// iftmp.22_67, iftmp.22_67
	mov	x2, 3	// prephitmp_3246,
	b	.L205		//
	.p2align 2,,3
.L851:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 4611686018427387903	// tmp750,
	cmp	x3, x0	// prephitmp_3245, tmp750
	beq	.L853		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	adrp	x1, .LC32	// tmp755,
	mov	x0, x23	//, tmp2226
	add	x1, x1, :lo12:.LC32	//, tmp755,
	mov	x2, 1	//,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE6:
// terminal.cpp:65:         "Paso " + std::to_string(step) + " / " + std::to_string(options.steps),
	add	x0, sp, 592	// tmp2233,,
	mov	x8, x0	// tmp2233, tmp2233
	mov	x0, x28	//, step
	str	x8, [sp, 184]	// tmp2233, %sfp
.LEHB7:
	bl	_ZNSt7__cxx119to_stringEm		//
.LEHE7:
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	ldr	x0, [sp, 184]	//, %sfp
	adrp	x3, .LC33	// tmp759,
	mov	x4, 5	//,
	add	x3, x3, :lo12:.LC33	//, tmp759,
	mov	x2, 0	//,
	mov	x1, 0	//,
.LEHB8:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm		//
.LEHE8:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x22, x0	// _677, _670
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, sp, 640	// tmp2239,,
	str	x1, [sp, 624]	// tmp2239, MEM[(struct _Alloc_hider *)&D.74528]._M_p
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	mov	x19, x0	// _670, tmp2324
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// MEM[(const struct basic_string *)_670]._M_string_length, MEM[(const struct basic_string *)_670]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 80]	// tmp2239, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x22], 16	// _676, MEM[(const struct basic_string *)_670]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x22	// _676, _677
	beq	.L854		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x19, 16]	// *_670.D.36210._M_allocated_capacity, *_670.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 624]	// _676, D.74528._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 640]	// *_670.D.36210._M_allocated_capacity, D.74528.D.36210._M_allocated_capacity
.L218:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 4611686018427387903	// tmp773,
	sub	x0, x0, x2	// tmp772, tmp773, MEM[(const struct basic_string *)_670]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x22, xzr, [x19]	// _677,, *_670._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x19, 16]	//, MEM[(char_type &)_670 + 16]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x2, [sp, 632]	// MEM[(const struct basic_string *)_670]._M_string_length, D.74528._M_string_length
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	cmp	x0, 2	// tmp772,
	bls	.L855		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	add	x0, sp, 624	// tmp2236,,
	adrp	x1, .LC34	// tmp779,
	mov	x2, 3	//,
	add	x1, x1, :lo12:.LC34	//, tmp779,
	str	x0, [sp, 416]	// tmp2236, %sfp
.LEHB9:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE9:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x22, x0	// _684, _674
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, sp, 672	// tmp2247,,
	str	x1, [sp, 656]	// tmp2247, MEM[(struct _Alloc_hider *)&D.74529]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x19, x0	// _674, tmp2327
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// MEM[(const struct basic_string *)_674]._M_string_length, MEM[(const struct basic_string *)_674]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 88]	// tmp2247, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x22], 16	// _683, MEM[(const struct basic_string *)_674]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x22	// _683, _684
	beq	.L856		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x19, 16]	// *_674.D.36210._M_allocated_capacity, *_674.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 656]	// _683, D.74529._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 672]	// *_674.D.36210._M_allocated_capacity, D.74529.D.36210._M_allocated_capacity
.L226:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x22, xzr, [x19]	// _684,, *_674._M_dataplus._M_p
// terminal.cpp:65:         "Paso " + std::to_string(step) + " / " + std::to_string(options.steps),
	add	x0, sp, 688	// tmp2250,,
	mov	x8, x0	//, tmp2250
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x19, 16]	//, MEM[(char_type &)_674 + 16]
// terminal.cpp:65:         "Paso " + std::to_string(step) + " / " + std::to_string(options.steps),
	str	x0, [sp, 208]	// tmp2250, %sfp
	ldr	x0, [x20, 16]	//, options_143(D)->steps
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x2, [sp, 664]	// MEM[(const struct basic_string *)_674]._M_string_length, D.74529._M_string_length
.LEHB10:
// terminal.cpp:65:         "Paso " + std::to_string(step) + " / " + std::to_string(options.steps),
	bl	_ZNSt7__cxx119to_stringEm		//
.LEHE10:
// terminal.cpp:84: }
	ldr	x1, [sp, 208]	//, %sfp
	add	x28, sp, 2568	// tmp2274,,
	add	x0, sp, 656	// tmp2243,,
	mov	x8, x28	//, tmp2274
	str	x0, [sp, 424]	// tmp2243, %sfp
.LEHB11:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_		//
.LEHE11:
// terminal.cpp:40:     if (options.ascii) {
	ldrb	w0, [x20, 99]	// options_143(D)->ascii, options_143(D)->ascii
	tbnz	x0, 0, .L857	// options_143(D)->ascii,,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x0, sp, 2072	// tmp814,,
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	w3, 17742	// tmp821,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	mov	w2, 78	// tmp816,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x0, [sp, 2056]	// tmp814, MEM[(struct _Alloc_hider *)_1623]._M_p
	add	x0, sp, 2104	// tmp818,,
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	strh	w3, [sp, 2104]	// tmp821, MEM <char[1:2]> [(void *)_1623]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	mov	w3, 69	// tmp826,
	strh	w2, [sp, 2072]	// tmp816, MEM <vector(2) char> [(char_type &)_1623]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	mov	x2, 2	// tmp822,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x0, [sp, 2088]	// tmp818, MEM[(struct _Alloc_hider *)_1623]._M_p
	add	x0, sp, 2136	// tmp824,,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strh	w3, [sp, 2136]	// tmp826, MEM <vector(2) char> [(char_type &)_1623]
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	w3, 17747	// tmp831,
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	mov	x1, 1	// tmp815,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x0, [sp, 2120]	// tmp824, MEM[(struct _Alloc_hider *)_1623]._M_p
	add	x0, sp, 2168	// tmp828,,
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x1, [sp, 2064]	// tmp815, MEM[(struct basic_string *)_1623]._M_string_length
	str	x2, [sp, 2096]	// tmp822, MEM[(struct basic_string *)_1623]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 2106]	//, MEM[(char_type &)_1623]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x1, [sp, 2128]	// tmp815, MEM[(struct basic_string *)_1623]._M_string_length
// terminal.cpp:43:     const std::string directions[] = {"N", "NE", "E", "SE", "S", "SW", "W", "NW"};
	adrp	x1, .LC35	// tmp834,
	add	x1, x1, :lo12:.LC35	//, tmp834,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x0, [sp, 2152]	// tmp828, MEM[(struct _Alloc_hider *)_1623]._M_p
// terminal.cpp:43:     const std::string directions[] = {"N", "NE", "E", "SE", "S", "SW", "W", "NW"};
	add	x0, sp, 2184	//,,
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x2, [sp, 2160]	// tmp822, MEM[(struct basic_string *)_1623]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	strh	w3, [sp, 2168]	// tmp831, MEM <char[1:2]> [(void *)_1623]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 2170]	//, MEM[(char_type &)_1623]
.LEHB12:
// terminal.cpp:43:     const std::string directions[] = {"N", "NE", "E", "SE", "S", "SW", "W", "NW"};
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE12:
// terminal.cpp:43:     const std::string directions[] = {"N", "NE", "E", "SE", "S", "SW", "W", "NW"};
	adrp	x1, .LC36	// tmp838,
	add	x0, sp, 2216	//,,
	add	x1, x1, :lo12:.LC36	//, tmp838,
.LEHB13:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE13:
// terminal.cpp:43:     const std::string directions[] = {"N", "NE", "E", "SE", "S", "SW", "W", "NW"};
	adrp	x1, .LC37	// tmp842,
	add	x0, sp, 2248	//,,
	add	x1, x1, :lo12:.LC37	//, tmp842,
.LEHB14:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE14:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	adrp	x0, .LC38	// tmp856,
	add	x0, x0, :lo12:.LC38	// tmp855, tmp856,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x2, sp, 2328	// tmp852,,
	str	x2, [sp, 2312]	// tmp852, MEM[(struct _Alloc_hider *)_2677]._M_p
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 2331]	//, MEM[(char_type &)_2677]
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	ldrh	w1, [x0]	//, MEM <char[1:3]> [(void *)"\xe2\x86\x91"]
	strh	w1, [sp, 2328]	// MEM <char[1:3]> [(void *)"\xe2\x86\x91"], MEM <char[1:3]> [(void *)_2677]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x1, sp, 2296	// tmp846,,
	str	x1, [sp, 2280]	// tmp846, MEM[(struct _Alloc_hider *)_1623]._M_p
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	w1, 22350	// tmp849,
	strh	w1, [sp, 2296]	// tmp849, MEM <char[1:2]> [(void *)_1623]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	mov	x1, 2	// tmp850,
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	ldrb	w0, [x0, 2]	//, MEM <char[1:3]> [(void *)"\xe2\x86\x91"]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x1, [sp, 2288]	// tmp850, MEM[(struct basic_string *)_1623]._M_string_length
	mov	x1, 3	// tmp861,
	str	x1, [sp, 2320]	// tmp861, MEM[(struct basic_string *)_2677]._M_string_length
// terminal.cpp:44:     const std::string arrows[] = {"↑", "↗", "→", "↘", "↓", "↙", "←", "↖"};
	adrp	x1, .LC39	// tmp863,
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	strb	w0, [x2, 2]	// MEM <char[1:3]> [(void *)"\xe2\x86\x91"], MEM <char[1:3]> [(void *)_2677]
// terminal.cpp:44:     const std::string arrows[] = {"↑", "↗", "→", "↘", "↓", "↙", "←", "↖"};
	add	x1, x1, :lo12:.LC39	//, tmp863,
	add	x0, sp, 2344	//,,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 2298]	//, MEM[(char_type &)_1623]
.LEHB15:
// terminal.cpp:44:     const std::string arrows[] = {"↑", "↗", "→", "↘", "↓", "↙", "←", "↖"};
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE15:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	adrp	x4, .LC40	// tmp871,
	add	x4, x4, :lo12:.LC40	// tmp870, tmp871,
	adrp	x3, .LC41	// tmp882,
	add	x3, x3, :lo12:.LC41	// tmp881, tmp882,
	adrp	x2, .LC42	// tmp893,
	add	x2, x2, :lo12:.LC42	// tmp892, tmp893,
	ldrh	w6, [x4]	//, MEM <char[1:3]> [(void *)"\xe2\x86\x92"]
	adrp	x1, .LC43	// tmp904,
	add	x1, x1, :lo12:.LC43	// tmp903, tmp904,
	strh	w6, [sp, 2392]	// MEM <char[1:3]> [(void *)"\xe2\x86\x92"], MEM <char[1:3]> [(void *)_2677]
	ldrh	w6, [x3]	//, MEM <char[1:3]> [(void *)"\xe2\x86\x98"]
	adrp	x0, .LC44	// tmp915,
	ldrb	w3, [x3, 2]	//, MEM <char[1:3]> [(void *)"\xe2\x86\x98"]
	add	x0, x0, :lo12:.LC44	// tmp914, tmp915,
	strb	w3, [sp, 2426]	// MEM <char[1:3]> [(void *)"\xe2\x86\x98"], MEM <char[1:3]> [(void *)_2677]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x5, sp, 2392	// tmp867,,
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	ldrh	w3, [x2]	//, MEM <char[1:3]> [(void *)"\xe2\x86\x93"]
	ldrb	w2, [x2, 2]	//, MEM <char[1:3]> [(void *)"\xe2\x86\x93"]
	ldrb	w4, [x4, 2]	//, MEM <char[1:3]> [(void *)"\xe2\x86\x92"]
	strb	w2, [sp, 2458]	// MEM <char[1:3]> [(void *)"\xe2\x86\x93"], MEM <char[1:3]> [(void *)_2677]
	ldrh	w2, [x1]	//, MEM <char[1:3]> [(void *)"\xe2\x86\x99"]
	ldrb	w1, [x1, 2]	//, MEM <char[1:3]> [(void *)"\xe2\x86\x99"]
	strb	w4, [sp, 2394]	// MEM <char[1:3]> [(void *)"\xe2\x86\x92"], MEM <char[1:3]> [(void *)_2677]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x4, sp, 2424	// tmp878,,
	str	x4, [sp, 2408]	// tmp878, MEM[(struct _Alloc_hider *)_2677]._M_p
	add	x4, sp, 2488	// tmp900,,
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	strh	w2, [sp, 2488]	// MEM <char[1:3]> [(void *)"\xe2\x86\x99"], MEM <char[1:3]> [(void *)_2677]
	adrp	x2, .LC45	// tmp926,
	add	x2, x2, :lo12:.LC45	// tmp925, tmp926,
	strb	w1, [sp, 2490]	// MEM <char[1:3]> [(void *)"\xe2\x86\x99"], MEM <char[1:3]> [(void *)_2677]
	ldrh	w1, [x0]	//, MEM <char[1:3]> [(void *)"\xe2\x86\x90"]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x5, [sp, 2376]	// tmp867, MEM[(struct _Alloc_hider *)_2677]._M_p
	add	x5, sp, 2456	// tmp889,,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 2395]	//, MEM[(char_type &)_2677]
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	strh	w6, [sp, 2424]	// MEM <char[1:3]> [(void *)"\xe2\x86\x98"], MEM <char[1:3]> [(void *)_2677]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 2427]	//, MEM[(char_type &)_2677]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x5, [sp, 2440]	// tmp889, MEM[(struct _Alloc_hider *)_2677]._M_p
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	strh	w3, [sp, 2456]	// MEM <char[1:3]> [(void *)"\xe2\x86\x93"], MEM <char[1:3]> [(void *)_2677]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x3, sp, 2520	// tmp911,,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 2459]	//, MEM[(char_type &)_2677]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x4, [sp, 2472]	// tmp900, MEM[(struct _Alloc_hider *)_2677]._M_p
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	ldrb	w4, [x0, 2]	//, MEM <char[1:3]> [(void *)"\xe2\x86\x90"]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	mov	x0, 3	// tmp876,
	str	x0, [sp, 2384]	// tmp876, MEM[(struct basic_string *)_2677]._M_string_length
	str	x0, [sp, 2416]	// tmp876, MEM[(struct basic_string *)_2677]._M_string_length
	str	x0, [sp, 2448]	// tmp876, MEM[(struct basic_string *)_2677]._M_string_length
	str	x0, [sp, 2480]	// tmp876, MEM[(struct basic_string *)_2677]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 2491]	//, MEM[(char_type &)_2677]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x3, [sp, 2504]	// tmp911, MEM[(struct _Alloc_hider *)_2677]._M_p
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	strh	w1, [sp, 2520]	// MEM <char[1:3]> [(void *)"\xe2\x86\x90"], MEM <char[1:3]> [(void *)_2677]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x1, sp, 2552	// tmp922,,
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	strb	w4, [sp, 2522]	// MEM <char[1:3]> [(void *)"\xe2\x86\x90"], MEM <char[1:3]> [(void *)_2677]
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	ldr	x19, [x20, 56]	// _882, MEM[(const struct basic_string *)options_143(D) + 48B]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x0, [sp, 2512]	// tmp876, MEM[(struct basic_string *)_2677]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	ldrh	w3, [x2]	//, MEM <char[1:3]> [(void *)"\xe2\x86\x96"]
	ldrb	w2, [x2, 2]	//, MEM <char[1:3]> [(void *)"\xe2\x86\x96"]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 2523]	//, MEM[(char_type &)_2677]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x1, [sp, 2536]	// tmp922, MEM[(struct _Alloc_hider *)_2677]._M_p
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x0, [sp, 2544]	// tmp876, MEM[(struct basic_string *)_2677]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	strh	w3, [sp, 2552]	// MEM <char[1:3]> [(void *)"\xe2\x86\x96"], MEM <char[1:3]> [(void *)_2677]
	strb	w2, [sp, 2554]	// MEM <char[1:3]> [(void *)"\xe2\x86\x96"], MEM <char[1:3]> [(void *)_2677]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 2555]	//, MEM[(char_type &)_2677]
	cbz	x19, .L247	// _882,
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	ldr	x0, [sp, 2064]	// MEM <const struct string[8]> [(const struct basic_string *)_1623][0]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_1623][0]._M_string_length
	cmp	x0, x19	// MEM <const struct string[8]> [(const struct basic_string *)_1623][0]._M_string_length, _882
	beq	.L858		//,
.L248:
	ldr	x0, [sp, 2096]	// MEM <const struct string[8]> [(const struct basic_string *)_1623][1]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_1623][1]._M_string_length
	cmp	x0, x19	// MEM <const struct string[8]> [(const struct basic_string *)_1623][1]._M_string_length, _882
	beq	.L859		//,
.L250:
	ldr	x0, [sp, 2128]	// MEM <const struct string[8]> [(const struct basic_string *)_1623][2]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_1623][2]._M_string_length
	cmp	x19, x0	// _882, MEM <const struct string[8]> [(const struct basic_string *)_1623][2]._M_string_length
	beq	.L860		//,
.L251:
	ldr	x0, [sp, 2160]	// MEM <const struct string[8]> [(const struct basic_string *)_1623][3]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_1623][3]._M_string_length
	cmp	x19, x0	// _882, MEM <const struct string[8]> [(const struct basic_string *)_1623][3]._M_string_length
	beq	.L861		//,
.L253:
	ldr	x0, [sp, 2192]	// MEM <const struct string[8]> [(const struct basic_string *)_1623][4]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_1623][4]._M_string_length
	cmp	x19, x0	// _882, MEM <const struct string[8]> [(const struct basic_string *)_1623][4]._M_string_length
	beq	.L862		//,
.L254:
	ldr	x0, [sp, 2224]	// MEM <const struct string[8]> [(const struct basic_string *)_1623][5]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_1623][5]._M_string_length
	cmp	x19, x0	// _882, MEM <const struct string[8]> [(const struct basic_string *)_1623][5]._M_string_length
	beq	.L863		//,
.L255:
	ldr	x0, [sp, 2256]	// MEM <const struct string[8]> [(const struct basic_string *)_1623][6]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_1623][6]._M_string_length
	cmp	x19, x0	// _882, MEM <const struct string[8]> [(const struct basic_string *)_1623][6]._M_string_length
	beq	.L864		//,
.L256:
	ldr	x0, [sp, 2288]	// MEM <const struct string[8]> [(const struct basic_string *)_1623][7]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_1623][7]._M_string_length
	cmp	x19, x0	// _882, MEM <const struct string[8]> [(const struct basic_string *)_1623][7]._M_string_length
	beq	.L865		//,
.L257:
// terminal.cpp:50:     return "";
	add	x0, sp, 720	// tmp2251,,
	adrp	x1, .LC31	// tmp1039,
	add	x24, sp, 2312	// tmp2262,,
	add	x1, x1, :lo12:.LC31	//, tmp1039,
	str	x0, [sp, 16]	// tmp2251, %sfp
.LEHB16:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE16:
.L267:
// /usr/include/c++/13/bits/basic_string.tcc:225: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	mov	x19, x28	// _660, tmp2274
	.p2align 3,,7
.L266:
// terminal.cpp:44:     const std::string arrows[] = {"↑", "↗", "→", "↘", "↓", "↙", "←", "↖"};
	sub	x19, x19, #32	// _660, _660,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x1, x19	// tmp1041, _660
	ldr	x0, [x1], 16	// _897, MEM[(char * *)_706]
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _897, tmp1041
	beq	.L268		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x19, 16]	// MEM <size_type> [(union ._anon_56 *)_706 + 16B], MEM <size_type> [(union ._anon_56 *)_706 + 16B]
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM <size_type> [(union ._anon_56 *)_706 + 16B],
	bl	_ZdlPvm		//
// terminal.cpp:51: }
	cmp	x19, x24	// _660, tmp2262
	bne	.L266		//,
.L269:
	add	x22, sp, 2280	// ivtmp.699,,
	add	x19, sp, 2056	// tmp1046,,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x1, x22	// tmp1047, ivtmp.699
	ldr	x0, [x1], 16	// _904, MEM[(char * *)_708]
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _904, tmp1047
	beq	.L271		//,
	.p2align 3,,7
.L866:
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x22, 16]	// MEM <size_type> [(union ._anon_56 *)_708 + 16B], MEM <size_type> [(union ._anon_56 *)_708 + 16B]
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM <size_type> [(union ._anon_56 *)_708 + 16B],
	bl	_ZdlPvm		//
// terminal.cpp:51: }
	sub	x0, x22, #32	// ivtmp.699, ivtmp.699,
	cmp	x22, x19	// ivtmp.699, tmp1046
	beq	.L241		//,
// /usr/include/c++/13/bits/basic_string.tcc:225: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	mov	x22, x0	// ivtmp.699, ivtmp.699
.L867:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x1, x22	// tmp1047, ivtmp.699
	ldr	x0, [x1], 16	// _904, MEM[(char * *)_708]
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _904, tmp1047
	bne	.L866		//,
.L271:
// terminal.cpp:51: }
	sub	x0, x22, #32	// ivtmp.699, ivtmp.699,
	cmp	x22, x19	// ivtmp.699, tmp1046
	beq	.L241		//,
// /usr/include/c++/13/bits/basic_string.tcc:225: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	mov	x22, x0	// ivtmp.699, ivtmp.699
	b	.L867		//
	.p2align 2,,3
.L857:
// /usr/include/c++/13/bits/basic_string.h:1079:       { return _M_string_length; }
	ldp	x22, x19, [x20, 48]	// _692, _693, MEM[(const struct basic_string *)options_143(D) + 48B]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x0, sp, 736	// _705,,
	add	x1, sp, 720	// tmp2251,,
	str	x1, [sp, 16]	// tmp2251, %sfp
// /usr/include/c++/13/bits/basic_string.tcc:225: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	str	x19, [sp, 552]	// _693, MEM[(long unsigned int *)_785]
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x0, [sp, 720]	// _705, MEM[(struct _Alloc_hider *)&D.74532]._M_p
// /usr/include/c++/13/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	x19, 15	// _693,
	bhi	.L868		//,
// /usr/include/c++/13/bits/basic_string.h:427: 	if (__n == 1)
	cmp	x19, 1	// _693,
	bne	.L238		//,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	ldrb	w1, [x22]	// _734, MEM[(const char_type &)_692]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	w1, [sp, 736]	// _734, MEM[(char_type &)&D.74532 + 16]
.L239:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x19, [sp, 728]	// _693, D.74532._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x0, x19]	//, MEM[(char_type &)_737]
.L241:
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	ldr	x0, [sp, 16]	//, %sfp
	adrp	x3, .LC46	// tmp1051,
	mov	x4, 7	//,
	add	x3, x3, :lo12:.LC46	//, tmp1051,
	mov	x2, 0	//,
	mov	x1, 0	//,
.LEHB17:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm		//
.LEHE17:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x22, x0	// _919, _916
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, sp, 768	// tmp2255,,
	str	x1, [sp, 752]	// tmp2255, MEM[(struct _Alloc_hider *)&D.74533]._M_p
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	mov	x19, x0	// _916, tmp2344
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// MEM[(const struct basic_string *)_916]._M_string_length, MEM[(const struct basic_string *)_916]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 96]	// tmp2255, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x22], 16	// _918, MEM[(const struct basic_string *)_916]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x22	// _918, _919
	beq	.L869		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x19, 16]	// *_916.D.36210._M_allocated_capacity, *_916.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 752]	// _918, D.74533._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 768]	// *_916.D.36210._M_allocated_capacity, D.74533.D.36210._M_allocated_capacity
.L286:
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x19, 16]	//, MEM[(char_type &)_916 + 16]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x2, [sp, 760]	// MEM[(const struct basic_string *)_916]._M_string_length, D.74533._M_string_length
// terminal.cpp:66:         "Viento " + wind_arrow(options) + (options.ascii ? "" : " " + options.direction) + "  " + std::to_string(options.wind),
	ldrb	w0, [x20, 99]	// options_143(D)->ascii, options_143(D)->ascii
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x22, xzr, [x19]	// _919,, *_916._M_dataplus._M_p
// terminal.cpp:66:         "Viento " + wind_arrow(options) + (options.ascii ? "" : " " + options.direction) + "  " + std::to_string(options.wind),
	tbz	x0, 0, .L287	// options_143(D)->ascii,,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x0, sp, 800	// tmp2257,,
	add	x1, sp, 784	// tmp2256,,
	str	x1, [sp, 24]	// tmp2256, %sfp
	str	x0, [sp, 392]	// tmp2257, %sfp
	str	x0, [sp, 784]	// tmp2257, MEM[(struct _Alloc_hider *)&D.74537]._M_p
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	xzr, [sp, 792]	//, D.74537._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 800]	//, MEM[(char_type &)&D.74537 + 16]
.L288:
// terminal.cpp:66:         "Viento " + wind_arrow(options) + (options.ascii ? "" : " " + options.direction) + "  " + std::to_string(options.wind),
	add	x1, sp, 816	// tmp2258,,
	str	x1, [sp, 216]	// tmp2258, %sfp
	mov	x8, x1	//, tmp2258
	add	x0, sp, 752	// tmp2253,,
	ldr	x1, [sp, 24]	//, %sfp
	str	x0, [sp, 432]	// tmp2253, %sfp
.LEHB18:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_		//
.LEHE18:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 824]	// D.74538._M_string_length, D.74538._M_string_length
	mov	x0, 4611686018427387903	// tmp1118,
	sub	x0, x0, x1	// tmp1117, tmp1118, D.74538._M_string_length
	cmp	x0, 1	// tmp1117,
	bls	.L870		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	ldr	x0, [sp, 216]	//, %sfp
	adrp	x1, .LC48	// tmp1124,
	mov	x2, 2	//,
	add	x1, x1, :lo12:.LC48	//, tmp1124,
.LEHB19:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE19:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x22, x0	// _955, _952
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, sp, 864	// tmp2260,,
	str	x1, [sp, 848]	// tmp2260, MEM[(struct _Alloc_hider *)&D.74539]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x19, x0	// _952, tmp2352
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// MEM[(const struct basic_string *)_952]._M_string_length, MEM[(const struct basic_string *)_952]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 104]	// tmp2260, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x22], 16	// _954, MEM[(const struct basic_string *)_952]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x22	// _954, _955
	beq	.L871		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x19, 16]	// *_952.D.36210._M_allocated_capacity, *_952.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 848]	// _954, D.74539._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 864]	// *_952.D.36210._M_allocated_capacity, D.74539.D.36210._M_allocated_capacity
.L305:
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x19, 16]	//, MEM[(char_type &)_952 + 16]
// /usr/include/c++/13/bits/basic_string.h:4246: 					   "%f", __val);
	add	x8, sp, 880	// tmp2261,,
	adrp	x0, :got:vsnprintf	//,
	ldr	x0, [x0, :got_lo12:vsnprintf]	//,
	mov	x1, 58	//,
	ldr	s0, [x20, 32]	// options_143(D)->wind, options_143(D)->wind
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x22, xzr, [x19]	// _955,, *_952._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:4246: 					   "%f", __val);
	adrp	x19, .LC19	// tmp2254,
	fcvt	d0, s0	//, options_143(D)->wind
	str	x8, [sp, 224]	// tmp2261, %sfp
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x2, [sp, 856]	// MEM[(const struct basic_string *)_952]._M_string_length, D.74539._M_string_length
// /usr/include/c++/13/bits/basic_string.h:4246: 					   "%f", __val);
	add	x2, x19, :lo12:.LC19	//, tmp2254,
.LEHB20:
	bl	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_St9__va_listEmSB_z.constprop.0		//
.LEHE20:
// terminal.cpp:84: }
	ldr	x1, [sp, 224]	//, %sfp
	add	x0, sp, 848	// tmp2259,,
	add	x8, sp, 2600	//,,
	str	x0, [sp, 440]	// tmp2259, %sfp
.LEHB21:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_		//
.LEHE21:
// terminal.cpp:67:         "Humedad media: " + (stats.count[TREE] ? std::to_string(stats.mean) : std::string("no aplica")),
	ldr	x0, [sp, 8]	// stats$count$1, %sfp
	cbz	x0, .L312	// stats$count$1,
// /usr/include/c++/13/bits/basic_string.h:4256: 					   "%f", __val);
	adrp	x0, :got:vsnprintf	//,
	ldr	x0, [x0, :got_lo12:vsnprintf]	//,
	add	x1, sp, 912	// tmp2263,,
	ldr	d0, [sp, 2040]	//, stats.mean
	mov	x8, x1	//, tmp2263
	add	x2, x19, :lo12:.LC19	//, tmp2254,
	str	x1, [sp, 376]	// tmp2263, %sfp
	mov	x1, 328	//,
.LEHB22:
	bl	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_St9__va_listEmSB_z.constprop.0		//
.LEHE22:
.L313:
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	ldr	x0, [sp, 376]	//, %sfp
	adrp	x3, .LC50	// tmp1155,
	mov	x4, 15	//,
	add	x3, x3, :lo12:.LC50	//, tmp1155,
	mov	x2, 0	//,
	mov	x1, 0	//,
.LEHB23:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm		//
.LEHE23:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x20, x0	// _968, _965
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x3, sp, 2648	// tmp1158,,
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// pretmp_3348, MEM[(const struct basic_string *)_965]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x3, [sp, 2632]	// tmp1158, MEM[(struct _Alloc_hider *)_3267]._M_p
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	mov	x19, x0	// _965, tmp2358
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [x20], 16	// _967, MEM[(const struct basic_string *)_965]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x1, x20	// _967, _968
	beq	.L872		//,
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x1, [sp, 2632]	// _967, MEM[(struct basic_string *)_3267]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [x0, 16]	// *_965.D.36210._M_allocated_capacity, *_965.D.36210._M_allocated_capacity
	str	x0, [sp, 2648]	// *_965.D.36210._M_allocated_capacity, MEM[(struct basic_string *)_3267].D.36210._M_allocated_capacity
.L320:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	ldr	x0, [x19, 8]	// MEM[(const struct basic_string *)_965]._M_string_length, MEM[(const struct basic_string *)_965]._M_string_length
	str	x0, [sp, 2640]	// MEM[(const struct basic_string *)_965]._M_string_length, MEM[(struct basic_string *)_3267]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x19, 16]	//, MEM[(char_type &)_965 + 16]
// terminal.cpp:68:         "Estados / total " + std::to_string(cells.size()),
	add	x0, sp, 944	// tmp2265,,
	mov	x8, x0	//, tmp2265
	str	x0, [sp, 232]	// tmp2265, %sfp
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ldr	x1, [x25]	// MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_start, MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_start
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x20, xzr, [x19]	// _968,, *_965._M_dataplus._M_p
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ldr	x0, [x25, 8]	// MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_finish, MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_finish
	sub	x0, x0, x1	// tmp1168, MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_finish, MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_start
// terminal.cpp:68:         "Estados / total " + std::to_string(cells.size()),
	asr	x0, x0, 3	//, tmp1168,
.LEHB24:
	bl	_ZNSt7__cxx119to_stringEm		//
.LEHE24:
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	ldr	x0, [sp, 232]	//, %sfp
	adrp	x3, .LC51	// tmp1175,
	mov	x4, 16	//,
	add	x3, x3, :lo12:.LC51	//, tmp1175,
	mov	x2, 0	//,
	mov	x1, 0	//,
.LEHB25:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm		//
.LEHE25:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x20, x0	// _981, _978
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x3, sp, 2680	// tmp1178,,
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// pretmp_3347, MEM[(const struct basic_string *)_978]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x3, [sp, 2664]	// tmp1178, MEM[(struct _Alloc_hider *)_3267]._M_p
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	mov	x19, x0	// _978, tmp2361
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [x20], 16	// _980, MEM[(const struct basic_string *)_978]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x1, x20	// _980, _981
	beq	.L873		//,
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x1, [sp, 2664]	// _980, MEM[(struct basic_string *)_3267]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [x0, 16]	// *_978.D.36210._M_allocated_capacity, *_978.D.36210._M_allocated_capacity
	str	x0, [sp, 2680]	// *_978.D.36210._M_allocated_capacity, MEM[(struct basic_string *)_3267].D.36210._M_allocated_capacity
.L327:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	ldr	x0, [x19, 8]	// MEM[(const struct basic_string *)_978]._M_string_length, MEM[(const struct basic_string *)_978]._M_string_length
	str	x0, [sp, 2672]	// MEM[(const struct basic_string *)_978]._M_string_length, MEM[(struct basic_string *)_3267]._M_string_length
// terminal.cpp:69:         "Vegetación " + std::to_string(stats.count[TREE]) + " (" + percent(stats.count[TREE], cells.size()) + ")",
	add	x0, sp, 976	// tmp2266,,
	str	x0, [sp, 240]	// tmp2266, %sfp
	mov	x8, x0	//, tmp2266
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x20, xzr, [x19]	// _981,, *_978._M_dataplus._M_p
// terminal.cpp:69:         "Vegetación " + std::to_string(stats.count[TREE]) + " (" + percent(stats.count[TREE], cells.size()) + ")",
	ldr	x0, [sp, 8]	//, %sfp
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x19, 16]	//, MEM[(char_type &)_978 + 16]
.LEHB26:
// terminal.cpp:69:         "Vegetación " + std::to_string(stats.count[TREE]) + " (" + percent(stats.count[TREE], cells.size()) + ")",
	bl	_ZNSt7__cxx119to_stringEm		//
.LEHE26:
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	ldr	x0, [sp, 240]	//, %sfp
	adrp	x3, .LC52	// tmp1190,
	mov	x4, 12	//,
	add	x3, x3, :lo12:.LC52	//, tmp1190,
	mov	x2, 0	//,
	mov	x1, 0	//,
.LEHB27:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm		//
.LEHE27:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x20, x0	// _998, _991
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, sp, 1024	// tmp2268,,
	str	x1, [sp, 1008]	// tmp2268, MEM[(struct _Alloc_hider *)&D.74588]._M_p
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	mov	x19, x0	// _991, tmp2364
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// MEM[(const struct basic_string *)_991]._M_string_length, MEM[(const struct basic_string *)_991]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 112]	// tmp2268, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x20], 16	// _997, MEM[(const struct basic_string *)_991]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x20	// _997, _998
	beq	.L874		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x19, 16]	// *_991.D.36210._M_allocated_capacity, *_991.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 1008]	// _997, D.74588._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 1024]	// *_991.D.36210._M_allocated_capacity, D.74588.D.36210._M_allocated_capacity
.L334:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 4611686018427387903	// tmp1204,
	sub	x0, x0, x2	// tmp1203, tmp1204, MEM[(const struct basic_string *)_991]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x20, xzr, [x19]	// _998,, *_991._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x19, 16]	//, MEM[(char_type &)_991 + 16]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x2, [sp, 1016]	// MEM[(const struct basic_string *)_991]._M_string_length, D.74588._M_string_length
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	cmp	x0, 1	// tmp1203,
	bls	.L875		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	add	x0, sp, 1008	// tmp2267,,
	adrp	x20, .LC53	// tmp2282,
	mov	x2, 2	//,
	add	x1, x20, :lo12:.LC53	//, tmp2282,
	str	x0, [sp, 448]	// tmp2267, %sfp
.LEHB28:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE28:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x22, x0	// _1005, _995
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, sp, 1056	// tmp2270,,
	str	x1, [sp, 1040]	// tmp2270, MEM[(struct _Alloc_hider *)&D.74589]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x19, x0	// _995, tmp2367
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// MEM[(const struct basic_string *)_995]._M_string_length, MEM[(const struct basic_string *)_995]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 120]	// tmp2270, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x22], 16	// _1004, MEM[(const struct basic_string *)_995]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x22	// _1004, _1005
	beq	.L876		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x19, 16]	// *_995.D.36210._M_allocated_capacity, *_995.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 1040]	// _1004, D.74589._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 1056]	// *_995.D.36210._M_allocated_capacity, D.74589.D.36210._M_allocated_capacity
.L342:
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x19, 16]	//, MEM[(char_type &)_995 + 16]
// terminal.cpp:69:         "Vegetación " + std::to_string(stats.count[TREE]) + " (" + percent(stats.count[TREE], cells.size()) + ")",
	add	x8, sp, 1072	// tmp2271,,
	ldr	x0, [sp, 8]	//, %sfp
	str	x8, [sp, 248]	// tmp2271, %sfp
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ldp	x3, x1, [x25]	// MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_start, MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_finish, MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_start
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x22, xzr, [x19]	// _1005,, *_995._M_dataplus._M_p
	str	x2, [sp, 1048]	// MEM[(const struct basic_string *)_995]._M_string_length, D.74589._M_string_length
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	x1, x1, x3	// tmp1223, MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_finish, MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_start
// terminal.cpp:69:         "Vegetación " + std::to_string(stats.count[TREE]) + " (" + percent(stats.count[TREE], cells.size()) + ")",
	asr	x1, x1, 3	//, tmp1223,
.LEHB29:
	bl	_ZN12_GLOBAL__N_17percentEmm		//
.LEHE29:
// terminal.cpp:69:         "Vegetación " + std::to_string(stats.count[TREE]) + " (" + percent(stats.count[TREE], cells.size()) + ")",
	add	x1, sp, 1104	// tmp2272,,
	str	x1, [sp, 256]	// tmp2272, %sfp
	mov	x8, x1	//, tmp2272
	add	x0, sp, 1040	// tmp2269,,
	ldr	x1, [sp, 248]	//, %sfp
	str	x0, [sp, 456]	// tmp2269, %sfp
.LEHB30:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_		//
.LEHE30:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 1112]	// D.74591._M_string_length, D.74591._M_string_length
	mov	x0, 4611686018427387903	// tmp1233,
	cmp	x1, x0	// D.74591._M_string_length, tmp1233
	beq	.L877		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	ldr	x0, [sp, 256]	//, %sfp
	adrp	x19, .LC54	// tmp2283,
	mov	x2, 1	//,
	add	x1, x19, :lo12:.LC54	//, tmp2283,
.LEHB31:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE31:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x24, x0	// _1016, _1013
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x3, sp, 2712	// tmp1241,,
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// pretmp_3344, MEM[(const struct basic_string *)_1013]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x3, [sp, 2696]	// tmp1241, MEM[(struct _Alloc_hider *)_3267]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x22, x0	// _1013, tmp2372
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [x24], 16	// _1015, MEM[(const struct basic_string *)_1013]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x1, x24	// _1015, _1016
	beq	.L878		//,
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x1, [sp, 2696]	// _1015, MEM[(struct basic_string *)_3267]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [x0, 16]	// *_1013.D.36210._M_allocated_capacity, *_1013.D.36210._M_allocated_capacity
	str	x0, [sp, 2712]	// *_1013.D.36210._M_allocated_capacity, MEM[(struct basic_string *)_3267].D.36210._M_allocated_capacity
.L356:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	ldr	x0, [x22, 8]	// MEM[(const struct basic_string *)_1013]._M_string_length, MEM[(const struct basic_string *)_1013]._M_string_length
	str	x0, [sp, 2704]	// MEM[(const struct basic_string *)_1013]._M_string_length, MEM[(struct basic_string *)_3267]._M_string_length
// terminal.cpp:70:         "Ardiendo   " + std::to_string(stats.count[FIRE]) + " (" + percent(stats.count[FIRE], cells.size()) + ")",
	add	x0, sp, 1136	// tmp2273,,
	str	x0, [sp, 264]	// tmp2273, %sfp
	mov	x8, x0	//, tmp2273
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x24, xzr, [x22]	// _1016,, *_1013._M_dataplus._M_p
// terminal.cpp:70:         "Ardiendo   " + std::to_string(stats.count[FIRE]) + " (" + percent(stats.count[FIRE], cells.size()) + ")",
	ldr	x0, [sp, 32]	//, %sfp
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x22, 16]	//, MEM[(char_type &)_1013 + 16]
.LEHB32:
// terminal.cpp:70:         "Ardiendo   " + std::to_string(stats.count[FIRE]) + " (" + percent(stats.count[FIRE], cells.size()) + ")",
	bl	_ZNSt7__cxx119to_stringEm		//
.LEHE32:
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	ldr	x0, [sp, 264]	//, %sfp
	adrp	x3, .LC55	// tmp1253,
	mov	x4, 11	//,
	add	x3, x3, :lo12:.LC55	//, tmp1253,
	mov	x2, 0	//,
	mov	x1, 0	//,
.LEHB33:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm		//
.LEHE33:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x24, x0	// _1033, _1026
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, sp, 1184	// tmp2277,,
	str	x1, [sp, 1168]	// tmp2277, MEM[(struct _Alloc_hider *)&D.74594]._M_p
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	mov	x22, x0	// _1026, tmp2375
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// MEM[(const struct basic_string *)_1026]._M_string_length, MEM[(const struct basic_string *)_1026]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 128]	// tmp2277, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x24], 16	// _1032, MEM[(const struct basic_string *)_1026]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x24	// _1032, _1033
	beq	.L879		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x22, 16]	// *_1026.D.36210._M_allocated_capacity, *_1026.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 1168]	// _1032, D.74594._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 1184]	// *_1026.D.36210._M_allocated_capacity, D.74594.D.36210._M_allocated_capacity
.L363:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 4611686018427387903	// tmp1267,
	sub	x0, x0, x2	// tmp1266, tmp1267, MEM[(const struct basic_string *)_1026]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x24, xzr, [x22]	// _1033,, *_1026._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x22, 16]	//, MEM[(char_type &)_1026 + 16]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x2, [sp, 1176]	// MEM[(const struct basic_string *)_1026]._M_string_length, D.74594._M_string_length
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	cmp	x0, 1	// tmp1266,
	bls	.L880		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	add	x0, sp, 1168	// tmp2275,,
	add	x1, x20, :lo12:.LC53	//, tmp2282,
	mov	x2, 2	//,
	str	x0, [sp, 464]	// tmp2275, %sfp
.LEHB34:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE34:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x24, x0	// _1040, _1030
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, sp, 1216	// tmp2279,,
	str	x1, [sp, 1200]	// tmp2279, MEM[(struct _Alloc_hider *)&D.74595]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x22, x0	// _1030, tmp2378
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// MEM[(const struct basic_string *)_1030]._M_string_length, MEM[(const struct basic_string *)_1030]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 136]	// tmp2279, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x24], 16	// _1039, MEM[(const struct basic_string *)_1030]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x24	// _1039, _1040
	beq	.L881		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x22, 16]	// *_1030.D.36210._M_allocated_capacity, *_1030.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 1200]	// _1039, D.74595._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 1216]	// *_1030.D.36210._M_allocated_capacity, D.74595.D.36210._M_allocated_capacity
.L371:
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x22, 16]	//, MEM[(char_type &)_1030 + 16]
// terminal.cpp:70:         "Ardiendo   " + std::to_string(stats.count[FIRE]) + " (" + percent(stats.count[FIRE], cells.size()) + ")",
	add	x8, sp, 1232	// tmp2280,,
	ldr	x0, [sp, 32]	//, %sfp
	str	x8, [sp, 272]	// tmp2280, %sfp
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ldp	x3, x1, [x25]	// MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_start, MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_finish, MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_start
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x24, xzr, [x22]	// _1040,, *_1030._M_dataplus._M_p
	str	x2, [sp, 1208]	// MEM[(const struct basic_string *)_1030]._M_string_length, D.74595._M_string_length
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	x1, x1, x3	// tmp1286, MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_finish, MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_start
// terminal.cpp:70:         "Ardiendo   " + std::to_string(stats.count[FIRE]) + " (" + percent(stats.count[FIRE], cells.size()) + ")",
	asr	x1, x1, 3	//, tmp1286,
.LEHB35:
	bl	_ZN12_GLOBAL__N_17percentEmm		//
.LEHE35:
// terminal.cpp:70:         "Ardiendo   " + std::to_string(stats.count[FIRE]) + " (" + percent(stats.count[FIRE], cells.size()) + ")",
	add	x1, sp, 1264	// tmp2281,,
	str	x1, [sp, 280]	// tmp2281, %sfp
	mov	x8, x1	//, tmp2281
	add	x0, sp, 1200	// tmp2278,,
	ldr	x1, [sp, 272]	//, %sfp
	str	x0, [sp, 472]	// tmp2278, %sfp
.LEHB36:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_		//
.LEHE36:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 1272]	// D.74597._M_string_length, D.74597._M_string_length
	mov	x0, 4611686018427387903	// tmp1296,
	cmp	x1, x0	// D.74597._M_string_length, tmp1296
	beq	.L882		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	ldr	x0, [sp, 280]	//, %sfp
	add	x1, x19, :lo12:.LC54	//, tmp2283,
	mov	x2, 1	//,
.LEHB37:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE37:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x24, x0	// _1051, _1048
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x3, sp, 2744	// tmp1304,,
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// pretmp_3341, MEM[(const struct basic_string *)_1048]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x3, [sp, 2728]	// tmp1304, MEM[(struct _Alloc_hider *)_3267]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x22, x0	// _1048, tmp2383
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [x24], 16	// _1050, MEM[(const struct basic_string *)_1048]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x1, x24	// _1050, _1051
	beq	.L883		//,
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x1, [sp, 2728]	// _1050, MEM[(struct basic_string *)_3267]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [x0, 16]	// *_1048.D.36210._M_allocated_capacity, *_1048.D.36210._M_allocated_capacity
	str	x0, [sp, 2744]	// *_1048.D.36210._M_allocated_capacity, MEM[(struct basic_string *)_3267].D.36210._M_allocated_capacity
.L385:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	ldr	x0, [x22, 8]	// MEM[(const struct basic_string *)_1048]._M_string_length, MEM[(const struct basic_string *)_1048]._M_string_length
	str	x0, [sp, 2736]	// MEM[(const struct basic_string *)_1048]._M_string_length, MEM[(struct basic_string *)_3267]._M_string_length
// terminal.cpp:71:         "Quemado    " + std::to_string(stats.count[BURNT]) + " (" + percent(stats.count[BURNT], cells.size()) + ")",
	add	x0, sp, 1296	// tmp2284,,
	str	x0, [sp, 288]	// tmp2284, %sfp
	mov	x8, x0	//, tmp2284
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x24, xzr, [x22]	// _1051,, *_1048._M_dataplus._M_p
// terminal.cpp:71:         "Quemado    " + std::to_string(stats.count[BURNT]) + " (" + percent(stats.count[BURNT], cells.size()) + ")",
	ldr	x0, [sp, 40]	//, %sfp
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x22, 16]	//, MEM[(char_type &)_1048 + 16]
.LEHB38:
// terminal.cpp:71:         "Quemado    " + std::to_string(stats.count[BURNT]) + " (" + percent(stats.count[BURNT], cells.size()) + ")",
	bl	_ZNSt7__cxx119to_stringEm		//
.LEHE38:
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	ldr	x0, [sp, 288]	//, %sfp
	adrp	x3, .LC56	// tmp1316,
	mov	x4, 11	//,
	add	x3, x3, :lo12:.LC56	//, tmp1316,
	mov	x2, 0	//,
	mov	x1, 0	//,
.LEHB39:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm		//
.LEHE39:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x24, x0	// _1068, _1061
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, sp, 1344	// tmp2286,,
	str	x1, [sp, 1328]	// tmp2286, MEM[(struct _Alloc_hider *)&D.74600]._M_p
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	mov	x22, x0	// _1061, tmp2386
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// MEM[(const struct basic_string *)_1061]._M_string_length, MEM[(const struct basic_string *)_1061]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 144]	// tmp2286, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x24], 16	// _1067, MEM[(const struct basic_string *)_1061]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x24	// _1067, _1068
	beq	.L884		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x22, 16]	// *_1061.D.36210._M_allocated_capacity, *_1061.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 1328]	// _1067, D.74600._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 1344]	// *_1061.D.36210._M_allocated_capacity, D.74600.D.36210._M_allocated_capacity
.L392:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 4611686018427387903	// tmp1330,
	sub	x0, x0, x2	// tmp1329, tmp1330, MEM[(const struct basic_string *)_1061]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x24, xzr, [x22]	// _1068,, *_1061._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x22, 16]	//, MEM[(char_type &)_1061 + 16]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x2, [sp, 1336]	// MEM[(const struct basic_string *)_1061]._M_string_length, D.74600._M_string_length
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	cmp	x0, 1	// tmp1329,
	bls	.L885		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	add	x0, sp, 1328	// tmp2285,,
	add	x1, x20, :lo12:.LC53	//, tmp2282,
	mov	x2, 2	//,
	str	x0, [sp, 480]	// tmp2285, %sfp
.LEHB40:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE40:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x24, x0	// _1075, _1065
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, sp, 1376	// tmp2288,,
	str	x1, [sp, 1360]	// tmp2288, MEM[(struct _Alloc_hider *)&D.74601]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x22, x0	// _1065, tmp2389
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// MEM[(const struct basic_string *)_1065]._M_string_length, MEM[(const struct basic_string *)_1065]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 152]	// tmp2288, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x24], 16	// _1074, MEM[(const struct basic_string *)_1065]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x24	// _1074, _1075
	beq	.L886		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x22, 16]	// *_1065.D.36210._M_allocated_capacity, *_1065.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 1360]	// _1074, D.74601._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 1376]	// *_1065.D.36210._M_allocated_capacity, D.74601.D.36210._M_allocated_capacity
.L400:
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x22, 16]	//, MEM[(char_type &)_1065 + 16]
// terminal.cpp:71:         "Quemado    " + std::to_string(stats.count[BURNT]) + " (" + percent(stats.count[BURNT], cells.size()) + ")",
	add	x8, sp, 1392	// tmp2289,,
	ldr	x0, [sp, 40]	//, %sfp
	str	x8, [sp, 296]	// tmp2289, %sfp
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ldp	x3, x1, [x25]	// MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_start, MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_finish, MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_start
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x24, xzr, [x22]	// _1075,, *_1065._M_dataplus._M_p
	str	x2, [sp, 1368]	// MEM[(const struct basic_string *)_1065]._M_string_length, D.74601._M_string_length
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	x1, x1, x3	// tmp1349, MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_finish, MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_start
// terminal.cpp:71:         "Quemado    " + std::to_string(stats.count[BURNT]) + " (" + percent(stats.count[BURNT], cells.size()) + ")",
	asr	x1, x1, 3	//, tmp1349,
.LEHB41:
	bl	_ZN12_GLOBAL__N_17percentEmm		//
.LEHE41:
// terminal.cpp:71:         "Quemado    " + std::to_string(stats.count[BURNT]) + " (" + percent(stats.count[BURNT], cells.size()) + ")",
	add	x1, sp, 1424	// tmp2290,,
	str	x1, [sp, 304]	// tmp2290, %sfp
	mov	x8, x1	//, tmp2290
	add	x0, sp, 1360	// tmp2287,,
	ldr	x1, [sp, 296]	//, %sfp
	str	x0, [sp, 488]	// tmp2287, %sfp
.LEHB42:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_		//
.LEHE42:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 1432]	// D.74603._M_string_length, D.74603._M_string_length
	mov	x0, 4611686018427387903	// tmp1359,
	cmp	x1, x0	// D.74603._M_string_length, tmp1359
	beq	.L887		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	ldr	x0, [sp, 304]	//, %sfp
	add	x1, x19, :lo12:.LC54	//, tmp2283,
	mov	x2, 1	//,
.LEHB43:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE43:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x24, x0	// _1086, _1083
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x3, sp, 2776	// tmp1367,,
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// pretmp_3338, MEM[(const struct basic_string *)_1083]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x3, [sp, 2760]	// tmp1367, MEM[(struct _Alloc_hider *)_3267]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x22, x0	// _1083, tmp2394
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [x24], 16	// _1085, MEM[(const struct basic_string *)_1083]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x1, x24	// _1085, _1086
	beq	.L888		//,
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x1, [sp, 2760]	// _1085, MEM[(struct basic_string *)_3267]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [x0, 16]	// *_1083.D.36210._M_allocated_capacity, *_1083.D.36210._M_allocated_capacity
	str	x0, [sp, 2776]	// *_1083.D.36210._M_allocated_capacity, MEM[(struct basic_string *)_3267].D.36210._M_allocated_capacity
.L414:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	ldr	x0, [x22, 8]	// MEM[(const struct basic_string *)_1083]._M_string_length, MEM[(const struct basic_string *)_1083]._M_string_length
	str	x0, [sp, 2768]	// MEM[(const struct basic_string *)_1083]._M_string_length, MEM[(struct basic_string *)_3267]._M_string_length
// terminal.cpp:72:         "Agua " + std::to_string(stats.count[WATER]) + " (" + percent(stats.count[WATER], cells.size()) + ")  Vacío " + std::to_string(stats.count[EMPTY]) + " (" + percent(stats.count[EMPTY], cells.size()) + ")",
	add	x0, sp, 1456	// tmp2292,,
	str	x0, [sp, 312]	// tmp2292, %sfp
	mov	x8, x0	//, tmp2292
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x24, xzr, [x22]	// _1086,, *_1083._M_dataplus._M_p
// terminal.cpp:72:         "Agua " + std::to_string(stats.count[WATER]) + " (" + percent(stats.count[WATER], cells.size()) + ")  Vacío " + std::to_string(stats.count[EMPTY]) + " (" + percent(stats.count[EMPTY], cells.size()) + ")",
	ldr	x0, [sp, 48]	//, %sfp
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x22, 16]	//, MEM[(char_type &)_1083 + 16]
.LEHB44:
// terminal.cpp:72:         "Agua " + std::to_string(stats.count[WATER]) + " (" + percent(stats.count[WATER], cells.size()) + ")  Vacío " + std::to_string(stats.count[EMPTY]) + " (" + percent(stats.count[EMPTY], cells.size()) + ")",
	bl	_ZNSt7__cxx119to_stringEm		//
.LEHE44:
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	ldr	x0, [sp, 312]	//, %sfp
	adrp	x3, .LC57	// tmp1379,
	mov	x4, 5	//,
	add	x3, x3, :lo12:.LC57	//, tmp1379,
	mov	x2, 0	//,
	mov	x1, 0	//,
.LEHB45:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm		//
.LEHE45:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x24, x0	// _1103, _1096
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, sp, 1504	// tmp2294,,
	str	x1, [sp, 1488]	// tmp2294, MEM[(struct _Alloc_hider *)&D.74606]._M_p
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	mov	x22, x0	// _1096, tmp2397
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// MEM[(const struct basic_string *)_1096]._M_string_length, MEM[(const struct basic_string *)_1096]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 160]	// tmp2294, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x24], 16	// _1102, MEM[(const struct basic_string *)_1096]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x24	// _1102, _1103
	beq	.L889		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x22, 16]	// *_1096.D.36210._M_allocated_capacity, *_1096.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 1488]	// _1102, D.74606._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 1504]	// *_1096.D.36210._M_allocated_capacity, D.74606.D.36210._M_allocated_capacity
.L421:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 4611686018427387903	// tmp1393,
	sub	x0, x0, x2	// tmp1392, tmp1393, MEM[(const struct basic_string *)_1096]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x24, xzr, [x22]	// _1103,, *_1096._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x22, 16]	//, MEM[(char_type &)_1096 + 16]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x2, [sp, 1496]	// MEM[(const struct basic_string *)_1096]._M_string_length, D.74606._M_string_length
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	cmp	x0, 1	// tmp1392,
	bls	.L890		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	add	x0, sp, 1488	// tmp2293,,
	add	x1, x20, :lo12:.LC53	//, tmp2282,
	mov	x2, 2	//,
	str	x0, [sp, 496]	// tmp2293, %sfp
.LEHB46:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE46:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x24, x0	// _1110, _1100
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, sp, 1536	// tmp2297,,
	str	x1, [sp, 1520]	// tmp2297, MEM[(struct _Alloc_hider *)&D.74607]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x22, x0	// _1100, tmp2400
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// MEM[(const struct basic_string *)_1100]._M_string_length, MEM[(const struct basic_string *)_1100]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 168]	// tmp2297, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x24], 16	// _1109, MEM[(const struct basic_string *)_1100]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x24	// _1109, _1110
	beq	.L891		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x22, 16]	// *_1100.D.36210._M_allocated_capacity, *_1100.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 1520]	// _1109, D.74607._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 1536]	// *_1100.D.36210._M_allocated_capacity, D.74607.D.36210._M_allocated_capacity
.L429:
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x22, 16]	//, MEM[(char_type &)_1100 + 16]
// terminal.cpp:72:         "Agua " + std::to_string(stats.count[WATER]) + " (" + percent(stats.count[WATER], cells.size()) + ")  Vacío " + std::to_string(stats.count[EMPTY]) + " (" + percent(stats.count[EMPTY], cells.size()) + ")",
	add	x8, sp, 1552	// tmp2299,,
	ldr	x0, [sp, 48]	//, %sfp
	str	x8, [sp, 320]	// tmp2299, %sfp
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ldp	x3, x1, [x25]	// MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_start, MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_finish, MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_start
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x24, xzr, [x22]	// _1110,, *_1100._M_dataplus._M_p
	str	x2, [sp, 1528]	// MEM[(const struct basic_string *)_1100]._M_string_length, D.74607._M_string_length
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	x1, x1, x3	// tmp1412, MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_finish, MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_start
// terminal.cpp:72:         "Agua " + std::to_string(stats.count[WATER]) + " (" + percent(stats.count[WATER], cells.size()) + ")  Vacío " + std::to_string(stats.count[EMPTY]) + " (" + percent(stats.count[EMPTY], cells.size()) + ")",
	asr	x1, x1, 3	//, tmp1412,
.LEHB47:
	bl	_ZN12_GLOBAL__N_17percentEmm		//
.LEHE47:
// terminal.cpp:72:         "Agua " + std::to_string(stats.count[WATER]) + " (" + percent(stats.count[WATER], cells.size()) + ")  Vacío " + std::to_string(stats.count[EMPTY]) + " (" + percent(stats.count[EMPTY], cells.size()) + ")",
	add	x1, sp, 1584	// tmp2300,,
	str	x1, [sp, 328]	// tmp2300, %sfp
	mov	x8, x1	//, tmp2300
	add	x0, sp, 1520	// tmp2296,,
	ldr	x1, [sp, 320]	//, %sfp
	str	x0, [sp, 504]	// tmp2296, %sfp
.LEHB48:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_		//
.LEHE48:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 1592]	// D.74609._M_string_length, D.74609._M_string_length
	mov	x0, 4611686018427387903	// tmp1422,
	sub	x0, x0, x1	// tmp1421, tmp1422, D.74609._M_string_length
	cmp	x0, 9	// tmp1421,
	bls	.L892		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	ldr	x0, [sp, 328]	//, %sfp
	adrp	x1, .LC58	// tmp1428,
	mov	x2, 10	//,
	add	x1, x1, :lo12:.LC58	//, tmp1428,
.LEHB49:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE49:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x24, x0	// _1121, _1118
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, sp, 1632	// tmp2302,,
	str	x1, [sp, 1616]	// tmp2302, MEM[(struct _Alloc_hider *)&D.74610]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x22, x0	// _1118, tmp2405
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// MEM[(const struct basic_string *)_1118]._M_string_length, MEM[(const struct basic_string *)_1118]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 48]	// tmp2302, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x24], 16	// _1120, MEM[(const struct basic_string *)_1118]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x24	// _1120, _1121
	beq	.L893		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x22, 16]	// *_1118.D.36210._M_allocated_capacity, *_1118.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 1616]	// _1120, D.74610._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 1632]	// *_1118.D.36210._M_allocated_capacity, D.74610.D.36210._M_allocated_capacity
.L443:
// terminal.cpp:72:         "Agua " + std::to_string(stats.count[WATER]) + " (" + percent(stats.count[WATER], cells.size()) + ")  Vacío " + std::to_string(stats.count[EMPTY]) + " (" + percent(stats.count[EMPTY], cells.size()) + ")",
	add	x0, sp, 1648	// tmp2303,,
	str	x0, [sp, 336]	// tmp2303, %sfp
	mov	x8, x0	//, tmp2303
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x24, xzr, [x22]	// _1121,, *_1118._M_dataplus._M_p
// terminal.cpp:72:         "Agua " + std::to_string(stats.count[WATER]) + " (" + percent(stats.count[WATER], cells.size()) + ")  Vacío " + std::to_string(stats.count[EMPTY]) + " (" + percent(stats.count[EMPTY], cells.size()) + ")",
	ldr	x0, [sp, 56]	//, %sfp
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x22, 16]	//, MEM[(char_type &)_1118 + 16]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x2, [sp, 1624]	// MEM[(const struct basic_string *)_1118]._M_string_length, D.74610._M_string_length
.LEHB50:
// terminal.cpp:72:         "Agua " + std::to_string(stats.count[WATER]) + " (" + percent(stats.count[WATER], cells.size()) + ")  Vacío " + std::to_string(stats.count[EMPTY]) + " (" + percent(stats.count[EMPTY], cells.size()) + ")",
	bl	_ZNSt7__cxx119to_stringEm		//
.LEHE50:
// terminal.cpp:72:         "Agua " + std::to_string(stats.count[WATER]) + " (" + percent(stats.count[WATER], cells.size()) + ")  Vacío " + std::to_string(stats.count[EMPTY]) + " (" + percent(stats.count[EMPTY], cells.size()) + ")",
	add	x1, sp, 1680	// tmp2304,,
	str	x1, [sp, 344]	// tmp2304, %sfp
	mov	x8, x1	//, tmp2304
	add	x0, sp, 1616	// tmp2301,,
	ldr	x1, [sp, 336]	//, %sfp
	str	x0, [sp, 512]	// tmp2301, %sfp
.LEHB51:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_		//
.LEHE51:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 1688]	// D.74612._M_string_length, D.74612._M_string_length
	mov	x0, 4611686018427387903	// tmp1446,
	sub	x0, x0, x1	// tmp1445, tmp1446, D.74612._M_string_length
	cmp	x0, 1	// tmp1445,
	bls	.L894		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	ldr	x0, [sp, 344]	//, %sfp
	add	x1, x20, :lo12:.LC53	//, tmp2282,
	mov	x2, 2	//,
.LEHB52:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE52:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x24, x0	// _1132, _1129
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, sp, 1728	// tmp2306,,
	str	x1, [sp, 1712]	// tmp2306, MEM[(struct _Alloc_hider *)&D.74613]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x22, x0	// _1129, tmp2410
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// MEM[(const struct basic_string *)_1129]._M_string_length, MEM[(const struct basic_string *)_1129]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 176]	// tmp2306, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x24], 16	// _1131, MEM[(const struct basic_string *)_1129]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x24	// _1131, _1132
	beq	.L895		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x22, 16]	// *_1129.D.36210._M_allocated_capacity, *_1129.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 1712]	// _1131, D.74613._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 1728]	// *_1129.D.36210._M_allocated_capacity, D.74613.D.36210._M_allocated_capacity
.L457:
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x22, 16]	//, MEM[(char_type &)_1129 + 16]
// terminal.cpp:72:         "Agua " + std::to_string(stats.count[WATER]) + " (" + percent(stats.count[WATER], cells.size()) + ")  Vacío " + std::to_string(stats.count[EMPTY]) + " (" + percent(stats.count[EMPTY], cells.size()) + ")",
	add	x8, sp, 1744	// tmp2307,,
	ldr	x0, [sp, 56]	//, %sfp
	str	x8, [sp, 352]	// tmp2307, %sfp
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ldp	x3, x1, [x25]	// MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_start, MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_finish, MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_start
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x24, xzr, [x22]	// _1132,, *_1129._M_dataplus._M_p
	str	x2, [sp, 1720]	// MEM[(const struct basic_string *)_1129]._M_string_length, D.74613._M_string_length
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	x1, x1, x3	// tmp1465, MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_finish, MEM[(const struct vector *)cells_130(D)].D.74508._M_impl.D.73847._M_start
// terminal.cpp:72:         "Agua " + std::to_string(stats.count[WATER]) + " (" + percent(stats.count[WATER], cells.size()) + ")  Vacío " + std::to_string(stats.count[EMPTY]) + " (" + percent(stats.count[EMPTY], cells.size()) + ")",
	asr	x1, x1, 3	//, tmp1465,
.LEHB53:
	bl	_ZN12_GLOBAL__N_17percentEmm		//
.LEHE53:
// terminal.cpp:72:         "Agua " + std::to_string(stats.count[WATER]) + " (" + percent(stats.count[WATER], cells.size()) + ")  Vacío " + std::to_string(stats.count[EMPTY]) + " (" + percent(stats.count[EMPTY], cells.size()) + ")",
	add	x1, sp, 1776	// tmp2308,,
	str	x1, [sp, 360]	// tmp2308, %sfp
	mov	x8, x1	//, tmp2308
	add	x0, sp, 1712	// tmp2305,,
	ldr	x1, [sp, 352]	//, %sfp
	str	x0, [sp, 520]	// tmp2305, %sfp
.LEHB54:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_		//
.LEHE54:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 1784]	// D.74615._M_string_length, D.74615._M_string_length
	mov	x0, 4611686018427387903	// tmp1475,
	cmp	x1, x0	// D.74615._M_string_length, tmp1475
	beq	.L896		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	ldr	x0, [sp, 360]	//, %sfp
	add	x1, x19, :lo12:.LC54	//, tmp2283,
	mov	x2, 1	//,
.LEHB55:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE55:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x24, x0	// _1143, _1140
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x3, sp, 2808	// tmp1483,,
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// pretmp_3333, MEM[(const struct basic_string *)_1140]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x3, [sp, 2792]	// tmp1483, MEM[(struct _Alloc_hider *)_3267]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x22, x0	// _1140, tmp2415
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [x24], 16	// _1142, MEM[(const struct basic_string *)_1140]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x1, x24	// _1142, _1143
	beq	.L897		//,
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x1, [sp, 2792]	// _1142, MEM[(struct basic_string *)_3267]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [x0, 16]	// *_1140.D.36210._M_allocated_capacity, *_1140.D.36210._M_allocated_capacity
	str	x0, [sp, 2808]	// *_1140.D.36210._M_allocated_capacity, MEM[(struct basic_string *)_3267].D.36210._M_allocated_capacity
.L471:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	ldr	x0, [x22, 8]	// MEM[(const struct basic_string *)_1140]._M_string_length, MEM[(const struct basic_string *)_1140]._M_string_length
	str	x0, [sp, 2800]	// MEM[(const struct basic_string *)_1140]._M_string_length, MEM[(struct basic_string *)_3267]._M_string_length
	stp	x24, xzr, [x22]	// _1143,, *_1140._M_dataplus._M_p
// terminal.cpp:73:         "Inicial afectada: " + std::to_string(stats.affected) + "/" + std::to_string(initial_trees) + " (" + percent(stats.affected, initial_trees) + ")",
	add	x0, sp, 1808	// tmp2309,,
	mov	x8, x0	//, tmp2309
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x22, 16]	//, MEM[(char_type &)_1140 + 16]
// terminal.cpp:73:         "Inicial afectada: " + std::to_string(stats.affected) + "/" + std::to_string(initial_trees) + " (" + percent(stats.affected, initial_trees) + ")",
	str	x0, [sp, 368]	// tmp2309, %sfp
	mov	x0, x26	//, stats$affected
.LEHB56:
	bl	_ZNSt7__cxx119to_stringEm		//
.LEHE56:
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	ldr	x0, [sp, 368]	//, %sfp
	adrp	x3, .LC59	// tmp1495,
	mov	x4, 18	//,
	add	x3, x3, :lo12:.LC59	//, tmp1495,
	mov	x2, 0	//,
	mov	x1, 0	//,
.LEHB57:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm		//
.LEHE57:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x24, x0	// _1160, _1153
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, sp, 1856	// tmp2311,,
	str	x1, [sp, 1840]	// tmp2311, MEM[(struct _Alloc_hider *)&D.74618]._M_p
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	mov	x22, x0	// _1153, tmp2418
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// MEM[(const struct basic_string *)_1153]._M_string_length, MEM[(const struct basic_string *)_1153]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 56]	// tmp2311, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x24], 16	// _1159, MEM[(const struct basic_string *)_1153]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x24	// _1159, _1160
	beq	.L898		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x22, 16]	// *_1153.D.36210._M_allocated_capacity, *_1153.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 1840]	// _1159, D.74618._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 1856]	// *_1153.D.36210._M_allocated_capacity, D.74618.D.36210._M_allocated_capacity
.L478:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x24, xzr, [x22]	// _1160,, *_1153._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 4611686018427387903	// tmp1509,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x22, 16]	//, MEM[(char_type &)_1153 + 16]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x2, [sp, 1848]	// MEM[(const struct basic_string *)_1153]._M_string_length, D.74618._M_string_length
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	cmp	x2, x0	// MEM[(const struct basic_string *)_1153]._M_string_length, tmp1509
	beq	.L899		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	add	x0, sp, 1840	// tmp2310,,
	adrp	x1, .LC60	// tmp1514,
	mov	x2, 1	//,
	add	x1, x1, :lo12:.LC60	//, tmp1514,
	str	x0, [sp, 528]	// tmp2310, %sfp
.LEHB58:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE58:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x24, x0	// _1167, _1157
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, sp, 1888	// tmp2219,,
	str	x1, [sp, 1872]	// tmp2219, MEM[(struct _Alloc_hider *)&D.74619]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x22, x0	// _1157, tmp2421
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// MEM[(const struct basic_string *)_1157]._M_string_length, MEM[(const struct basic_string *)_1157]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 40]	// tmp2219, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x24], 16	// _1166, MEM[(const struct basic_string *)_1157]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x24	// _1166, _1167
	beq	.L900		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x22, 16]	// *_1157.D.36210._M_allocated_capacity, *_1157.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 1872]	// _1166, D.74619._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 1888]	// *_1157.D.36210._M_allocated_capacity, D.74619.D.36210._M_allocated_capacity
.L486:
// terminal.cpp:73:         "Inicial afectada: " + std::to_string(stats.affected) + "/" + std::to_string(initial_trees) + " (" + percent(stats.affected, initial_trees) + ")",
	add	x0, sp, 1904	// tmp2220,,
	str	x0, [sp, 192]	// tmp2220, %sfp
	mov	x8, x0	//, tmp2220
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x24, xzr, [x22]	// _1167,, *_1157._M_dataplus._M_p
// terminal.cpp:73:         "Inicial afectada: " + std::to_string(stats.affected) + "/" + std::to_string(initial_trees) + " (" + percent(stats.affected, initial_trees) + ")",
	ldr	x0, [sp, 64]	//, %sfp
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x22, 16]	//, MEM[(char_type &)_1157 + 16]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x2, [sp, 1880]	// MEM[(const struct basic_string *)_1157]._M_string_length, D.74619._M_string_length
.LEHB59:
// terminal.cpp:73:         "Inicial afectada: " + std::to_string(stats.affected) + "/" + std::to_string(initial_trees) + " (" + percent(stats.affected, initial_trees) + ")",
	bl	_ZNSt7__cxx119to_stringEm		//
.LEHE59:
// terminal.cpp:73:         "Inicial afectada: " + std::to_string(stats.affected) + "/" + std::to_string(initial_trees) + " (" + percent(stats.affected, initial_trees) + ")",
	add	x1, sp, 1936	// tmp2223,,
	str	x1, [sp, 200]	// tmp2223, %sfp
	mov	x8, x1	//, tmp2223
	add	x0, sp, 1872	// tmp2218,,
	ldr	x1, [sp, 192]	//, %sfp
	str	x0, [sp, 408]	// tmp2218, %sfp
.LEHB60:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_		//
.LEHE60:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 1944]	// D.74621._M_string_length, D.74621._M_string_length
	mov	x0, 4611686018427387903	// tmp1532,
	sub	x0, x0, x1	// tmp1531, tmp1532, D.74621._M_string_length
	cmp	x0, 1	// tmp1531,
	bls	.L901		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	ldr	x0, [sp, 200]	//, %sfp
	add	x1, x20, :lo12:.LC53	//, tmp2282,
	mov	x2, 2	//,
.LEHB61:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE61:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x22, x0	// _1178, _1175
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, sp, 1984	// tmp2230,,
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// pretmp_3330, MEM[(const struct basic_string *)_1175]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 1968]	// tmp2230, MEM[(struct _Alloc_hider *)_74]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x20, x0	// _1175, tmp2426
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [sp, 8]	// tmp2230, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x22], 16	// _1177, MEM[(const struct basic_string *)_1175]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x22	// _1177, _1178
	beq	.L902		//,
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 1968]	// _1177, MEM[(struct basic_string *)_74]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [x20, 16]	// *_1175.D.36210._M_allocated_capacity, *_1175.D.36210._M_allocated_capacity
	str	x0, [sp, 1984]	// *_1175.D.36210._M_allocated_capacity, MEM[(struct basic_string *)_74].D.36210._M_allocated_capacity
.L500:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	ldr	x0, [x20, 8]	// MEM[(const struct basic_string *)_1175]._M_string_length, MEM[(const struct basic_string *)_1175]._M_string_length
	str	x0, [sp, 1976]	// MEM[(const struct basic_string *)_1175]._M_string_length, MEM[(struct basic_string *)_74]._M_string_length
// terminal.cpp:73:         "Inicial afectada: " + std::to_string(stats.affected) + "/" + std::to_string(initial_trees) + " (" + percent(stats.affected, initial_trees) + ")",
	ldr	x1, [sp, 64]	//, %sfp
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x22, xzr, [x20]	// _1178,, *_1175._M_dataplus._M_p
// terminal.cpp:73:         "Inicial afectada: " + std::to_string(stats.affected) + "/" + std::to_string(initial_trees) + " (" + percent(stats.affected, initial_trees) + ")",
	add	x0, sp, 2056	// tmp2242,,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x20, 16]	//, MEM[(char_type &)_1175 + 16]
// terminal.cpp:73:         "Inicial afectada: " + std::to_string(stats.affected) + "/" + std::to_string(initial_trees) + " (" + percent(stats.affected, initial_trees) + ")",
	mov	x8, x0	// tmp2242, tmp2242
	mov	x0, x26	//, stats$affected
	str	x8, [sp, 32]	// tmp2242, %sfp
.LEHB62:
	bl	_ZN12_GLOBAL__N_17percentEmm		//
.LEHE62:
// terminal.cpp:73:         "Inicial afectada: " + std::to_string(stats.affected) + "/" + std::to_string(initial_trees) + " (" + percent(stats.affected, initial_trees) + ")",
	ldr	x1, [sp, 32]	//, %sfp
	add	x24, sp, 2312	// tmp2262,,
	add	x0, sp, 1968	// tmp2227,,
	mov	x8, x24	//, tmp2262
	str	x0, [sp, 64]	// tmp2227, %sfp
.LEHB63:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_		//
.LEHE63:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 2320]	// MEM[(struct basic_string *)_2677]._M_string_length, MEM[(struct basic_string *)_2677]._M_string_length
	mov	x0, 4611686018427387903	// tmp1556,
	cmp	x1, x0	// MEM[(struct basic_string *)_2677]._M_string_length, tmp1556
	beq	.L903		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	add	x1, x19, :lo12:.LC54	//, tmp2283,
	mov	x0, x24	//, tmp2262
	mov	x2, 1	//,
.LEHB64:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE64:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x20, x0	// _1193, _1186
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x3, sp, 2840	// tmp1564,,
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// pretmp_3329, MEM[(const struct basic_string *)_1186]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x3, [sp, 2824]	// tmp1564, MEM[(struct _Alloc_hider *)_3267]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x22, x0	// _1186, tmp2431
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [x20], 16	// _1192, MEM[(const struct basic_string *)_1186]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x1, x20	// _1192, _1193
	beq	.L904		//,
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x1, [sp, 2824]	// _1192, MEM[(struct basic_string *)_3267]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [x0, 16]	// *_1186.D.36210._M_allocated_capacity, *_1186.D.36210._M_allocated_capacity
	str	x0, [sp, 2840]	// *_1186.D.36210._M_allocated_capacity, MEM[(struct basic_string *)_3267].D.36210._M_allocated_capacity
.L514:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	ldr	x0, [x22, 8]	// MEM[(const struct basic_string *)_1186]._M_string_length, MEM[(const struct basic_string *)_1186]._M_string_length
	str	x0, [sp, 2832]	// MEM[(const struct basic_string *)_1186]._M_string_length, MEM[(struct basic_string *)_3267]._M_string_length
	stp	x20, xzr, [x22]	// _1193,, *_1186._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x2, sp, 2872	// tmp1575,,
// /usr/include/c++/13/bits/basic_string.h:3537:       __str.reserve(__lhs_len + __rhs_len);
	add	x19, sp, 2856	// tmp2291,,
	ldr	x20, [sp, 568]	// _642, MEM[(long unsigned int *)&bar + 8B]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x22, 16]	//, MEM[(char_type &)_1186 + 16]
	ldr	x22, [sp, 560]	// _641, MEM[(char * *)&bar]
// /usr/include/c++/13/bits/basic_string.h:3537:       __str.reserve(__lhs_len + __rhs_len);
	mov	x0, x19	//, tmp2291
	add	x1, x20, 19	//, _642,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x2, [sp, 2856]	// tmp1575, MEM[(struct _Alloc_hider *)_3267]._M_p
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	xzr, [sp, 2864]	//, MEM[(struct basic_string *)_3267]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 2872]	//, MEM[(char_type &)_3267]
.LEHB65:
// /usr/include/c++/13/bits/basic_string.h:3537:       __str.reserve(__lhs_len + __rhs_len);
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm		//
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 2864]	// MEM[(const struct basic_string *)_3267]._M_string_length, MEM[(const struct basic_string *)_3267]._M_string_length
	mov	x0, 4611686018427387903	// tmp1580,
	sub	x0, x0, x1	// tmp1579, tmp1580, MEM[(const struct basic_string *)_3267]._M_string_length
	cmp	x20, x0	// _642, tmp1579
	bhi	.L905		//,
// /usr/include/c++/13/bits/basic_string.h:1459: 	return _M_append(__s, __n);
	mov	x2, x20	//, _642
	mov	x1, x22	//, _641
	mov	x0, x19	//, tmp2291
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 2864]	// MEM[(const struct basic_string *)_3267]._M_string_length, MEM[(const struct basic_string *)_3267]._M_string_length
	mov	x0, 4611686018427387903	// tmp1588,
	sub	x0, x0, x1	// tmp1587, tmp1588, MEM[(const struct basic_string *)_3267]._M_string_length
	cmp	x0, 18	// tmp1587,
	bls	.L906		//,
// /usr/include/c++/13/bits/basic_string.h:1459: 	return _M_append(__s, __n);
	adrp	x1, .LC61	// tmp1594,
	mov	x0, x19	//, tmp2291
	add	x1, x1, :lo12:.LC61	//, tmp1594,
	mov	x2, 19	//,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE65:
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x0, sp, 2904	// tmp1604,,
// /usr/include/c++/13/bits/basic_string.tcc:225: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	mov	x2, 22	// tmp1605,
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	add	x26, sp, 552	// tmp2224,,
// /usr/include/c++/13/bits/basic_string.tcc:225: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	str	x2, [sp, 552]	// tmp1605, MEM[(long unsigned int *)_785]
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	mov	x1, x26	//, tmp2224
	mov	x2, 0	//,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x0, [sp, 2888]	// tmp1604, MEM[(struct _Alloc_hider *)_3267]._M_p
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	add	x0, sp, 2888	//,,
.LEHB66:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm		//
.LEHE66:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	adrp	x1, .LC62	// tmp1611,
	add	x1, x1, :lo12:.LC62	// tmp1610, tmp1611,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x4, [sp, 552]	// MEM[(long unsigned int *)_785], MEM[(long unsigned int *)_785]
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 2888]	// _1212, MEM[(struct basic_string *)_3267]._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	ldp	x2, x3, [x1]	// MEM <char[1:22]> [(void *)"T vegetaci\xc3\xb3n  * fuego"], MEM <char[1:22]> [(void *)"T vegetaci\xc3\xb3n  * fuego"]
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x4, [sp, 2904]	// MEM[(long unsigned int *)_785], MEM[(struct basic_string *)_3267].D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	ldr	x1, [x1, 14]	// MEM <char[1:22]> [(void *)"T vegetaci\xc3\xb3n  * fuego"], MEM <char[1:22]> [(void *)"T vegetaci\xc3\xb3n  * fuego"]
	stp	x2, x3, [x0]	// MEM <char[1:22]> [(void *)"T vegetaci\xc3\xb3n  * fuego"], MEM <char[1:22]> [(void *)_1212]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x3, sp, 2936	// tmp1622,,
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	str	x1, [x0, 14]	// MEM <char[1:22]> [(void *)"T vegetaci\xc3\xb3n  * fuego"], MEM <char[1:22]> [(void *)_1212]
// /usr/include/c++/13/bits/basic_string.tcc:225: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	mov	x4, 27	// tmp1623,
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	add	x20, sp, 2920	// ivtmp.657,,
	mov	x2, 0	//,
// /usr/include/c++/13/bits/basic_string.tcc:251: 	_M_set_length(__dnew);
	ldr	x1, [sp, 552]	// __dnew.65_1216, MEM[(long unsigned int *)_785]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x1, [sp, 2896]	// __dnew.65_1216, MEM[(struct basic_string *)_3267]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	ldr	x5, [sp, 2888]	// MEM[(const struct basic_string *)_3267]._M_dataplus._M_p, MEM[(const struct basic_string *)_3267]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	mov	x0, x20	//, ivtmp.657
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x5, x1]	//, MEM[(char_type &)_1218]
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	mov	x1, x26	//, tmp2224
// /usr/include/c++/13/bits/basic_string.tcc:225: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	str	x4, [sp, 552]	// tmp1623, MEM[(long unsigned int *)_785]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x3, [sp, 2920]	// tmp1622, MEM[(struct _Alloc_hider *)_3267]._M_p
.LEHB67:
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm		//
.LEHE67:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	adrp	x2, .LC63	// tmp1629,
	add	x2, x2, :lo12:.LC63	// tmp1628, tmp1629,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x3, [sp, 552]	// MEM[(long unsigned int *)_785], MEM[(long unsigned int *)_785]
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	mov	x1, x0	// tmp2436,
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	ldr	q1, [x2]	// MEM <char[1:27]> [(void *)"# quemado  ~ agua  . vac\xc3\xado"], MEM <char[1:27]> [(void *)"# quemado  ~ agua  . vac\xc3\xado"]
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x1, [sp, 2920]	// _1224, MEM[(struct basic_string *)_3267]._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	ldr	q0, [x2, 11]	// MEM <char[1:27]> [(void *)"# quemado  ~ agua  . vac\xc3\xado"], MEM <char[1:27]> [(void *)"# quemado  ~ agua  . vac\xc3\xado"]
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x3, [sp, 2936]	// MEM[(long unsigned int *)_785], MEM[(struct basic_string *)_3267].D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x0, 384	//,
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	str	q1, [x1]	// MEM <char[1:27]> [(void *)"# quemado  ~ agua  . vac\xc3\xado"], MEM <char[1:27]> [(void *)_1224]
	str	q0, [x1, 11]	// MEM <char[1:27]> [(void *)"# quemado  ~ agua  . vac\xc3\xado"], MEM <char[1:27]> [(void *)_1224]
// /usr/include/c++/13/bits/basic_string.tcc:251: 	_M_set_length(__dnew);
	ldr	x1, [sp, 552]	// __dnew.65_1228, MEM[(long unsigned int *)_785]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x1, [sp, 2928]	// __dnew.65_1228, MEM[(struct basic_string *)_3267]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	ldr	x2, [sp, 2920]	// MEM[(const struct basic_string *)_3267]._M_dataplus._M_p, MEM[(const struct basic_string *)_3267]._M_dataplus._M_p
	strb	wzr, [x2, x1]	//, MEM[(char_type &)_1230]
// /usr/include/c++/13/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	stp	xzr, xzr, [x21]	// MEM <vector(2) long unsigned int> [(struct basic_string * *)information_188(D)]
// /usr/include/c++/13/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	str	xzr, [x21, 16]	//, MEM[(struct _Vector_impl_data *)information_188(D)]._M_end_of_storage
.LEHB68:
// /usr/include/c++/13/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	bl	_Znwm		//
.LEHE68:
// /usr/include/c++/13/bits/stl_vector.h:1693: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	add	x27, x0, 384	// _1248, __first,
// /usr/include/c++/13/bits/stl_vector.h:1693: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	mov	x22, x28	// __first, tmp2274
// /usr/include/c++/13/bits/stl_uninitialized.h:116:       _ForwardIterator __cur = __result;
	mov	x19, x0	// __cur, __first
// /usr/include/c++/13/bits/stl_vector.h:1692: 	    = this->_M_allocate(_S_check_init_len(__n, _M_get_Tp_allocator()));
	str	x0, [x21]	// __first, information_188(D)->D.73460._M_impl.D.72768._M_start
// /usr/include/c++/13/bits/stl_vector.h:1693: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	str	x27, [x21, 16]	// _1248, information_188(D)->D.73460._M_impl.D.72768._M_end_of_storage
	str	x21, [sp, 400]	// <retval>, %sfp
	str	x0, [sp, 536]	// __first, %sfp
	b	.L530		//
	.p2align 2,,3
.L525:
// /usr/include/c++/13/bits/basic_string.h:427: 	if (__n == 1)
	cmp	x21, 1	// _1259,
	bne	.L527		//,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	ldrb	w1, [x25]	// _1273, MEM[(const char_type &)_1258]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	w1, [x19, 16]	// _1273, MEM[(char_type &)__cur_772 + 16]
.L528:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x21, [x19, 8]	// _1259, MEM[(long unsigned int *)__cur_772 + 8B]
// /usr/include/c++/13/bits/stl_uninitialized.h:119: 	  for (; __first != __last; ++__first, (void)++__cur)
	add	x19, x19, 32	// __cur, __cur,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x0, x21]	//, MEM[(char_type &)_1276]
// /usr/include/c++/13/bits/stl_uninitialized.h:119: 	  for (; __first != __last; ++__first, (void)++__cur)
	add	x22, x22, 32	// __first, __first,
// /usr/include/c++/13/bits/stl_uninitialized.h:119: 	  for (; __first != __last; ++__first, (void)++__cur)
	cmp	x27, x19	// _1248, __cur
	beq	.L907		//,
.L530:
// /usr/include/c++/13/bits/basic_string.h:1079:       { return _M_string_length; }
	ldp	x25, x21, [x22]	// _1258, _1259, MEM[(char * *)__first_773]
// /usr/include/c++/13/bits/basic_string.h:230: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x0, x19, 16	// _1256, __cur,
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x0, [x19]	// _1256, MEM[(char * *)__cur_772]
// /usr/include/c++/13/bits/basic_string.tcc:225: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	str	x21, [sp, 552]	// _1259, MEM[(long unsigned int *)_785]
// /usr/include/c++/13/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	x21, 15	// _1259,
	bls	.L525		//,
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	mov	x1, x26	//, tmp2224
	mov	x0, x19	//, __cur
	mov	x2, 0	//,
.LEHB69:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm		//
.LEHE69:
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [sp, 552]	// MEM[(long unsigned int *)_785], MEM[(long unsigned int *)_785]
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [x19]	// _1256, MEM[(char * *)__cur_772]
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [x19, 16]	// MEM[(long unsigned int *)_785], MEM <size_type> [(union ._anon_56 *)__cur_772 + 16B]
.L526:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x21	//, _1259
	mov	x1, x25	//, _1258
	bl	memcpy		//
// /usr/include/c++/13/bits/stl_uninitialized.h:119: 	  for (; __first != __last; ++__first, (void)++__cur)
	add	x19, x19, 32	// __cur, __cur,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x19, -32]	// _1256, MEM[(char * *)__cur_772]
// /usr/include/c++/13/bits/stl_uninitialized.h:119: 	  for (; __first != __last; ++__first, (void)++__cur)
	add	x22, x22, 32	// __first, __first,
// /usr/include/c++/13/bits/basic_string.tcc:251: 	_M_set_length(__dnew);
	ldr	x21, [sp, 552]	// _1259, MEM[(long unsigned int *)_785]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x21, [x19, -24]	// _1259, MEM[(long unsigned int *)__cur_772 + 8B]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x0, x21]	//, MEM[(char_type &)_1276]
// /usr/include/c++/13/bits/stl_uninitialized.h:119: 	  for (; __first != __last; ++__first, (void)++__cur)
	cmp	x27, x19	// _1248, __cur
	bne	.L530		//,
.L907:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x1, x20	// tmp1654, ivtmp.657
	ldr	x21, [sp, 400]	// <retval>, %sfp
	ldr	x0, [x1], 16	// _1278, MEM[(char * *)_191]
// /usr/include/c++/13/bits/stl_vector.h:1694: 	  this->_M_impl._M_finish =
	str	x27, [x21, 8]	// _1248, information_188(D)->D.73460._M_impl.D.72768._M_finish
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1278, tmp1654
	beq	.L540		//,
	.p2align 3,,7
.L908:
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x20, 16]	// MEM <size_type> [(union ._anon_56 *)_191 + 16B], MEM <size_type> [(union ._anon_56 *)_191 + 16B]
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM <size_type> [(union ._anon_56 *)_191 + 16B],
	bl	_ZdlPvm		//
// terminal.cpp:77:     };
	sub	x0, x20, #32	// ivtmp.657, ivtmp.657,
	cmp	x20, x28	// ivtmp.657, tmp2274
	beq	.L541		//,
.L542:
// /usr/include/c++/13/bits/stl_vector.h:1693: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	mov	x20, x0	// ivtmp.657, ivtmp.657
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x1, x20	// tmp1654, ivtmp.657
	ldr	x0, [x1], 16	// _1278, MEM[(char * *)_191]
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1278, tmp1654
	bne	.L908		//,
.L540:
// terminal.cpp:77:     };
	sub	x0, x20, #32	// ivtmp.657, ivtmp.657,
	cmp	x20, x28	// ivtmp.657, tmp2274
	bne	.L542		//,
	.p2align 3,,7
.L541:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 2312]	// _1555, MEM[(struct basic_string *)_2677]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x20, sp, 2328	// tmp2264,,
	cmp	x0, x20	// _1555, tmp2264
	beq	.L543		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 2328]	// MEM[(struct basic_string *)_2677].D.36210._M_allocated_capacity, MEM[(struct basic_string *)_2677].D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM[(struct basic_string *)_2677].D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L543:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 2056]	// _1549, MEM[(struct basic_string *)_1623]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x19, sp, 2072	// tmp2245,,
	cmp	x0, x19	// _1549, tmp2245
	beq	.L544		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 2072]	// MEM[(struct basic_string *)_1623].D.36210._M_allocated_capacity, MEM[(struct basic_string *)_1623].D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM[(struct basic_string *)_1623].D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L544:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 8]	// tmp2230, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1968]	// _1543, MEM[(struct basic_string *)_74]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1543, tmp2230
	beq	.L545		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1984]	// MEM[(struct basic_string *)_74].D.36210._M_allocated_capacity, MEM[(struct basic_string *)_74].D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM[(struct basic_string *)_74].D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L545:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1936]	// _1537, D.74621._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1952	// tmp1670,,
	cmp	x0, x1	// _1537, tmp1670
	beq	.L546		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1952]	// D.74621.D.36210._M_allocated_capacity, D.74621.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74621.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L546:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1904]	// _1531, D.74620._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1920	// tmp1674,,
	cmp	x0, x1	// _1531, tmp1674
	beq	.L547		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1920]	// D.74620.D.36210._M_allocated_capacity, D.74620.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74620.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L547:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 40]	// tmp2219, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1872]	// _1525, D.74619._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1525, tmp2219
	beq	.L548		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1888]	// D.74619.D.36210._M_allocated_capacity, D.74619.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74619.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L548:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 56]	// tmp2311, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1840]	// _1519, D.74618._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1519, tmp2311
	beq	.L549		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1856]	// D.74618.D.36210._M_allocated_capacity, D.74618.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74618.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L549:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1808]	// _1513, D.74617._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1824	// tmp1686,,
	cmp	x0, x1	// _1513, tmp1686
	beq	.L550		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1824]	// D.74617.D.36210._M_allocated_capacity, D.74617.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74617.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L550:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1776]	// _1507, D.74615._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1792	// tmp1690,,
	cmp	x0, x1	// _1507, tmp1690
	beq	.L551		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1792]	// D.74615.D.36210._M_allocated_capacity, D.74615.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74615.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L551:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1744]	// _1501, D.74614._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1760	// tmp1694,,
	cmp	x0, x1	// _1501, tmp1694
	beq	.L552		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1760]	// D.74614.D.36210._M_allocated_capacity, D.74614.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74614.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L552:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 176]	// tmp2306, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1712]	// _1495, D.74613._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1495, tmp2306
	beq	.L553		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1728]	// D.74613.D.36210._M_allocated_capacity, D.74613.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74613.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L553:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1680]	// _1489, D.74612._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1696	// tmp1702,,
	cmp	x0, x1	// _1489, tmp1702
	beq	.L554		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1696]	// D.74612.D.36210._M_allocated_capacity, D.74612.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74612.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L554:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1648]	// _1483, D.74611._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1664	// tmp1706,,
	cmp	x0, x1	// _1483, tmp1706
	beq	.L555		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1664]	// D.74611.D.36210._M_allocated_capacity, D.74611.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74611.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L555:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 48]	// tmp2302, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1616]	// _1477, D.74610._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1477, tmp2302
	beq	.L556		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1632]	// D.74610.D.36210._M_allocated_capacity, D.74610.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74610.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L556:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1584]	// _1471, D.74609._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1600	// tmp1714,,
	cmp	x0, x1	// _1471, tmp1714
	beq	.L557		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1600]	// D.74609.D.36210._M_allocated_capacity, D.74609.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74609.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L557:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1552]	// _1465, D.74608._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1568	// tmp1718,,
	cmp	x0, x1	// _1465, tmp1718
	beq	.L558		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1568]	// D.74608.D.36210._M_allocated_capacity, D.74608.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74608.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L558:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 168]	// tmp2297, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1520]	// _1459, D.74607._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1459, tmp2297
	beq	.L559		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1536]	// D.74607.D.36210._M_allocated_capacity, D.74607.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74607.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L559:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 160]	// tmp2294, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1488]	// _1453, D.74606._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1453, tmp2294
	beq	.L560		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1504]	// D.74606.D.36210._M_allocated_capacity, D.74606.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74606.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L560:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1456]	// _1447, D.74605._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1472	// tmp1730,,
	cmp	x0, x1	// _1447, tmp1730
	beq	.L561		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1472]	// D.74605.D.36210._M_allocated_capacity, D.74605.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74605.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L561:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1424]	// _1441, D.74603._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1440	// tmp1734,,
	cmp	x0, x1	// _1441, tmp1734
	beq	.L562		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1440]	// D.74603.D.36210._M_allocated_capacity, D.74603.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74603.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L562:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1392]	// _1435, D.74602._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1408	// tmp1738,,
	cmp	x0, x1	// _1435, tmp1738
	beq	.L563		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1408]	// D.74602.D.36210._M_allocated_capacity, D.74602.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74602.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L563:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 152]	// tmp2288, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1360]	// _1429, D.74601._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1429, tmp2288
	beq	.L564		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1376]	// D.74601.D.36210._M_allocated_capacity, D.74601.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74601.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L564:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 144]	// tmp2286, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1328]	// _1423, D.74600._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1423, tmp2286
	beq	.L565		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1344]	// D.74600.D.36210._M_allocated_capacity, D.74600.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74600.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L565:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1296]	// _1417, D.74599._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1312	// tmp1750,,
	cmp	x0, x1	// _1417, tmp1750
	beq	.L566		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1312]	// D.74599.D.36210._M_allocated_capacity, D.74599.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74599.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L566:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1264]	// _1411, D.74597._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1280	// tmp1754,,
	cmp	x0, x1	// _1411, tmp1754
	beq	.L567		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1280]	// D.74597.D.36210._M_allocated_capacity, D.74597.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74597.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L567:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1232]	// _1405, D.74596._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1248	// tmp1758,,
	cmp	x0, x1	// _1405, tmp1758
	beq	.L568		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1248]	// D.74596.D.36210._M_allocated_capacity, D.74596.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74596.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L568:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 136]	// tmp2279, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1200]	// _1399, D.74595._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1399, tmp2279
	beq	.L569		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1216]	// D.74595.D.36210._M_allocated_capacity, D.74595.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74595.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L569:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 128]	// tmp2277, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1168]	// _1393, D.74594._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1393, tmp2277
	beq	.L570		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1184]	// D.74594.D.36210._M_allocated_capacity, D.74594.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74594.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L570:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1136]	// _1387, D.74593._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1152	// tmp1770,,
	cmp	x0, x1	// _1387, tmp1770
	beq	.L571		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1152]	// D.74593.D.36210._M_allocated_capacity, D.74593.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74593.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L571:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1104]	// _1381, D.74591._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1120	// tmp1774,,
	cmp	x0, x1	// _1381, tmp1774
	beq	.L572		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1120]	// D.74591.D.36210._M_allocated_capacity, D.74591.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74591.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L572:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1072]	// _1375, D.74590._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 1088	// tmp1778,,
	cmp	x0, x1	// _1375, tmp1778
	beq	.L573		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1088]	// D.74590.D.36210._M_allocated_capacity, D.74590.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74590.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L573:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 120]	// tmp2270, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1040]	// _1369, D.74589._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1369, tmp2270
	beq	.L574		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1056]	// D.74589.D.36210._M_allocated_capacity, D.74589.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74589.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L574:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 112]	// tmp2268, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1008]	// _1363, D.74588._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1363, tmp2268
	beq	.L575		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1024]	// D.74588.D.36210._M_allocated_capacity, D.74588.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74588.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L575:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 976]	// _1357, D.74587._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 992	// tmp1790,,
	cmp	x0, x1	// _1357, tmp1790
	beq	.L576		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 992]	// D.74587.D.36210._M_allocated_capacity, D.74587.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74587.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L576:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 944]	// _1351, D.74585._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 960	// tmp1794,,
	cmp	x0, x1	// _1351, tmp1794
	beq	.L577		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 960]	// D.74585.D.36210._M_allocated_capacity, D.74585.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74585.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L577:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 912]	// _1345, D.74583._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 928	// tmp1798,,
	cmp	x0, x1	// _1345, tmp1798
	beq	.L578		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 928]	// D.74583.D.36210._M_allocated_capacity, D.74583.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74583.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L578:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 880]	// _1339, D.74540._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 896	// tmp1802,,
	cmp	x0, x1	// _1339, tmp1802
	beq	.L579		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 896]	// D.74540.D.36210._M_allocated_capacity, D.74540.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74540.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L579:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 104]	// tmp2260, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 848]	// _1333, D.74539._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1333, tmp2260
	beq	.L580		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 864]	// D.74539.D.36210._M_allocated_capacity, D.74539.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74539.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L580:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 816]	// _1327, D.74538._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 832	// tmp1810,,
	cmp	x0, x1	// _1327, tmp1810
	beq	.L581		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 832]	// D.74538.D.36210._M_allocated_capacity, D.74538.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74538.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L581:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 392]	// tmp2257, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 784]	// _1321, D.74537._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1321, tmp2257
	beq	.L582		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 800]	// D.74537.D.36210._M_allocated_capacity, D.74537.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74537.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L582:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 96]	// tmp2255, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 752]	// _1315, D.74533._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1315, tmp2255
	beq	.L583		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 768]	// D.74533.D.36210._M_allocated_capacity, D.74533.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74533.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L583:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 720]	// _1309, D.74532._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 736	// tmp1822,,
	cmp	x0, x1	// _1309, tmp1822
	beq	.L584		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 736]	// D.74532.D.36210._M_allocated_capacity, D.74532.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74532.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L584:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 688]	// _1303, D.74530._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 704	// tmp1826,,
	cmp	x0, x1	// _1303, tmp1826
	beq	.L585		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 704]	// D.74530.D.36210._M_allocated_capacity, D.74530.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74530.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L585:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 88]	// tmp2247, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 656]	// _1297, D.74529._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1297, tmp2247
	beq	.L586		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 672]	// D.74529.D.36210._M_allocated_capacity, D.74529.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74529.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L586:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 80]	// tmp2239, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 624]	// _1291, D.74528._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1291, tmp2239
	beq	.L587		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 640]	// D.74528.D.36210._M_allocated_capacity, D.74528.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74528.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L587:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 592]	// _1285, D.74527._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	add	x1, sp, 608	// tmp1838,,
	cmp	x0, x1	// _1285, tmp1838
	beq	.L588		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 608]	// D.74527.D.36210._M_allocated_capacity, D.74527.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74527.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L588:
// terminal.cpp:78:     if (playback.keyboard) {
	ldr	x1, [sp, 72]	// playback, %sfp
	ldrb	w0, [x1, 4]	// playback_240(D)->keyboard, playback_240(D)->keyboard
	tbz	x0, 0, .L589	// playback_240(D)->keyboard,,
// terminal.cpp:79:         information.push_back(std::to_string(playback.delay) + " ms " +
	ldr	w22, [x1]	//, playback_240(D)->delay
// /usr/include/c++/13/bits/charconv.h:67: 	  if (__value < (unsigned)__base) return __n;
	cmp	w22, 9	// __val,
	bls	.L590		//,
// /usr/include/c++/13/bits/charconv.h:68: 	  if (__value < __b2) return __n + 1;
	cmp	w22, 99	// __val,
	bls	.L591		//,
// /usr/include/c++/13/bits/charconv.h:69: 	  if (__value < __b3) return __n + 2;
	cmp	w22, 999	// __val,
	bls	.L656		//,
// /usr/include/c++/13/bits/charconv.h:70: 	  if (__value < __b4) return __n + 3;
	mov	w0, 9999	// tmp1843,
	cmp	w22, w0	// __val, tmp1843
	bls	.L909		//,
// /usr/include/c++/13/bits/charconv.h:67: 	  if (__value < (unsigned)__base) return __n;
	mov	w0, 34463	// tmp1874,
// /usr/include/c++/13/bits/charconv.h:71: 	  __value /= __b4;
	uxtw	x1, w22	// _1619, __val
// /usr/include/c++/13/bits/charconv.h:67: 	  if (__value < (unsigned)__base) return __n;
	movk	w0, 0x1, lsl 16	// tmp1874,,
	cmp	w22, w0	// __val, tmp1874
	bls	.L910		//,
// /usr/include/c++/13/bits/charconv.h:68: 	  if (__value < __b2) return __n + 1;
	mov	w0, 16959	// tmp1844,
	movk	w0, 0xf, lsl 16	// tmp1844,,
	cmp	w22, w0	// __val, tmp1844
	bls	.L911		//,
// /usr/include/c++/13/bits/charconv.h:69: 	  if (__value < __b3) return __n + 2;
	mov	w0, 38527	// tmp1871,
	movk	w0, 0x98, lsl 16	// tmp1871,,
	cmp	w22, w0	// __val, tmp1871
	bls	.L912		//,
// /usr/include/c++/13/bits/charconv.h:70: 	  if (__value < __b4) return __n + 3;
	mov	w0, 57599	// tmp1872,
	movk	w0, 0x5f5, lsl 16	// tmp1872,,
	cmp	w22, w0	// __val, tmp1872
	bls	.L658		//,
// /usr/include/c++/13/bits/charconv.h:67: 	  if (__value < (unsigned)__base) return __n;
	mov	x0, 51711	// tmp1873,
	movk	x0, 0x3b9a, lsl 16	// tmp1873,,
	cmp	x1, x0	// _1619, tmp1873
	bls	.L659		//,
// /usr/include/c++/13/bits/charconv.h:72: 	  __n += 4;
	mov	w0, 9	// __n,
.L601:
// /usr/include/c++/13/bits/charconv.h:68: 	  if (__value < __b2) return __n + 1;
	add	w0, w0, 1	// tmp1847, __n,
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	mov	w2, 0	//,
	and	x1, x0, 31	//, tmp1847,
.L836:
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	ldr	x3, [sp, 8]	// tmp2230, %sfp
	str	x3, [sp, 1968]	// tmp2230, MEM[(struct _Alloc_hider *)_74]._M_p
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	ldr	x0, [sp, 64]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc		//
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	adrp	x0, .LC20	// tmp1876,
	add	x0, x0, :lo12:.LC20	// tmp1875, tmp1876,
	add	x4, sp, 2952	// tmp2298,,
// /usr/include/c++/13/bits/charconv.h:96: 	  auto const __num = (__val % 100) * 2;
	mov	w10, 34079	// tmp1894,
// /usr/include/c++/13/bits/basic_string.h:4183:     __detail::__to_chars_10_impl(&__str[0], __str.size(), __val);
	ldr	x2, [sp, 1976]	// MEM[(struct basic_string *)_74]._M_string_length, MEM[(struct basic_string *)_74]._M_string_length
// /usr/include/c++/13/bits/charconv.h:96: 	  auto const __num = (__val % 100) * 2;
	movk	w10, 0x51eb, lsl 16	// tmp1894,,
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	ldp	q0, q5, [x0, 160]	// tmp1889, tmp1890,
// /usr/include/c++/13/bits/charconv.h:93:       unsigned __pos = __len - 1;
	sub	w2, w2, #1	// __pos, MEM[(struct basic_string *)_74]._M_string_length,
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	ldp	q3, q4, [x0]	// tmp1879, tmp1880,
// /usr/include/c++/13/bits/charconv.h:96: 	  auto const __num = (__val % 100) * 2;
	mov	w9, 100	// tmp1897,
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	ldp	q1, q2, [x0, 32]	// tmp1881, tmp1882,
	stp	q0, q5, [x4, 160]	// tmp1889, tmp1890, __digits
// /usr/include/c++/13/bits/charconv.h:94:       while (__val >= 100)
	mov	w8, 9999	// tmp1913,
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	ldp	q0, q5, [x0, 64]	// tmp1883, tmp1884,
	stp	q3, q4, [x4]	// tmp1879, tmp1880, __digits
	ldp	q3, q4, [x0, 96]	// tmp1885, tmp1886,
	stp	q1, q2, [x4, 32]	// tmp1881, tmp1882, __digits
	ldp	q1, q2, [x0, 128]	// tmp1887, tmp1888,
	stp	q0, q5, [x4, 64]	// tmp1883, tmp1884, __digits
	ldr	q0, [x0, 185]	// tmp1891,
	stp	q3, q4, [x4, 96]	// tmp1885, tmp1886, __digits
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x5, [sp, 1968]	// _3148, MEM[(struct basic_string *)_74]._M_dataplus._M_p
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	stp	q1, q2, [x4, 128]	// tmp1887, tmp1888, __digits
	str	q0, [x4, 185]	// tmp1891, __digits
	.p2align 3,,7
.L603:
// /usr/include/c++/13/bits/charconv.h:96: 	  auto const __num = (__val % 100) * 2;
	umull	x1, w22, w10	// tmp1893, __val, tmp1894
// /usr/include/c++/13/bits/charconv.h:99: 	  __first[__pos - 1] = __digits[__num];
	sub	w3, w2, #1	// tmp1908, __pos,
	mov	w6, w22	// __val, __val
// /usr/include/c++/13/bits/charconv.h:96: 	  auto const __num = (__val % 100) * 2;
	lsr	x1, x1, 37	// tmp1892, tmp1893,
	msub	w0, w1, w9, w22	// tmp1898, tmp1892, tmp1897, __val
// /usr/include/c++/13/bits/charconv.h:97: 	  __val /= 100;
	mov	w22, w1	// __val, tmp1892
// /usr/include/c++/13/bits/charconv.h:96: 	  auto const __num = (__val % 100) * 2;
	lsl	w0, w0, 1	// __num, tmp1898,
// /usr/include/c++/13/bits/charconv.h:98: 	  __first[__pos] = __digits[__num + 1];
	add	w7, w0, 1	// tmp1904, __num,
// /usr/include/c++/13/bits/charconv.h:99: 	  __first[__pos - 1] = __digits[__num];
	ldrb	w1, [x4, w0, uxtw]	//, __digits[__num_1633]
// /usr/include/c++/13/bits/charconv.h:98: 	  __first[__pos] = __digits[__num + 1];
	ldrb	w0, [x4, w7, uxtw]	//, __digits[_1635]
	strb	w0, [x5, w2, uxtw]	// __digits[_1635], *_1638
// /usr/include/c++/13/bits/charconv.h:99: 	  __first[__pos - 1] = __digits[__num];
	sub	w2, w2, #2	// __pos, __pos,
	strb	w1, [x5, w3, uxtw]	// __digits[__num_1633], *_1642
// /usr/include/c++/13/bits/charconv.h:94:       while (__val >= 100)
	cmp	w6, w8	// __val, tmp1913
	bhi	.L603		//,
// /usr/include/c++/13/bits/charconv.h:102:       if (__val >= 10)
	cmp	w6, 999	// __val,
	bhi	.L597		//,
.L604:
// /usr/include/c++/13/bits/charconv.h:109: 	__first[0] = '0' + __val;
	add	w0, w22, 48	// tmp1921, __val,
	and	w0, w0, 255	// _1649, tmp1921
.L605:
	strb	w0, [x5]	// _1649, *_3258
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 4611686018427387903	// tmp1924,
	ldr	x1, [sp, 1976]	// MEM[(struct basic_string *)_74]._M_string_length, MEM[(struct basic_string *)_74]._M_string_length
	sub	x0, x0, x1	// tmp1923, tmp1924, MEM[(struct basic_string *)_74]._M_string_length
	cmp	x0, 3	// tmp1923,
	bls	.L913		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	ldr	x0, [sp, 64]	//, %sfp
	adrp	x1, .LC64	// tmp1930,
	mov	x2, 4	//,
	add	x1, x1, :lo12:.LC64	//, tmp1930,
.LEHB70:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE70:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x25, x0	// _1654, _1610
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x22, x0	// _1610, tmp2442
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// pretmp_3328, MEM[(const struct basic_string *)_1610]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x19, [sp, 2056]	// tmp2245, MEM[(struct _Alloc_hider *)_1623]._M_p
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x25], 16	// _1653, MEM[(const struct basic_string *)_1610]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x25	// _1653, _1654
	beq	.L914		//,
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 2056]	// _1653, MEM[(struct basic_string *)_1623]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [x22, 16]	// *_1610.D.36210._M_allocated_capacity, *_1610.D.36210._M_allocated_capacity
	str	x0, [sp, 2072]	// *_1610.D.36210._M_allocated_capacity, MEM[(struct basic_string *)_1623].D.36210._M_allocated_capacity
.L609:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	ldr	x0, [x22, 8]	// MEM[(const struct basic_string *)_1610]._M_string_length, MEM[(const struct basic_string *)_1610]._M_string_length
	str	x0, [sp, 2064]	// MEM[(const struct basic_string *)_1610]._M_string_length, MEM[(struct basic_string *)_1623]._M_string_length
// terminal.cpp:79:         information.push_back(std::to_string(playback.delay) + " ms " +
	ldr	x0, [sp, 72]	// playback, %sfp
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x22, 16]	//, MEM[(char_type &)_1610 + 16]
// terminal.cpp:79:         information.push_back(std::to_string(playback.delay) + " ms " +
	ldrb	w0, [x0, 5]	// playback_240(D)->paused, playback_240(D)->paused
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x25, xzr, [x22]	// _1654,, *_1610._M_dataplus._M_p
// terminal.cpp:79:         information.push_back(std::to_string(playback.delay) + " ms " +
	tbz	x0, 0, .L660	// playback_240(D)->paused,,
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 2064]	// MEM[(struct basic_string *)_1623]._M_string_length, MEM[(struct basic_string *)_1623]._M_string_length
	mov	x0, 4611686018427387903	// tmp1946,
	sub	x0, x0, x1	// tmp1945, tmp1946, MEM[(struct basic_string *)_1623]._M_string_length
	cmp	x0, 7	// tmp1945,
	bls	.L915		//,
	adrp	x1, .LC30	// tmp731,
	add	x1, x1, :lo12:.LC30	// iftmp.27_707, tmp731,
	mov	x2, 8	// _229,
.L610:
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	ldr	x0, [sp, 32]	//, %sfp
.LEHB71:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE71:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x25, x0	// _1669, _1662
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x22, x0	// _1662, tmp2443
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// pretmp_3327, MEM[(const struct basic_string *)_1662]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x20, [sp, 2312]	// tmp2264, MEM[(struct _Alloc_hider *)_2677]._M_p
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x25], 16	// _1668, MEM[(const struct basic_string *)_1662]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x25	// _1668, _1669
	beq	.L916		//,
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 2312]	// _1668, MEM[(struct basic_string *)_2677]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [x22, 16]	// *_1662.D.36210._M_allocated_capacity, *_1662.D.36210._M_allocated_capacity
	str	x0, [sp, 2328]	// *_1662.D.36210._M_allocated_capacity, MEM[(struct basic_string *)_2677].D.36210._M_allocated_capacity
.L613:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	ldr	x0, [x22, 8]	// MEM[(const struct basic_string *)_1662]._M_string_length, MEM[(const struct basic_string *)_1662]._M_string_length
	str	x0, [sp, 2320]	// MEM[(const struct basic_string *)_1662]._M_string_length, MEM[(struct basic_string *)_2677]._M_string_length
	stp	x25, xzr, [x22]	// _1669,, *_1662._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 4611686018427387903	// tmp1964,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x22, 16]	//, MEM[(char_type &)_1662 + 16]
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 2320]	// MEM[(struct basic_string *)_2677]._M_string_length, MEM[(struct basic_string *)_2677]._M_string_length
	sub	x0, x0, x1	// tmp1963, tmp1964, MEM[(struct basic_string *)_2677]._M_string_length
	cmp	x0, 10	// tmp1963,
	bls	.L917		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	adrp	x1, .LC65	// tmp1970,
	mov	x0, x24	//, tmp2262
	add	x1, x1, :lo12:.LC65	//, tmp1970,
	mov	x2, 11	//,
.LEHB72:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE72:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x1, x0	// _1682, _1666
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x22, sp, 2584	// tmp2276,,
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// pretmp_3326, MEM[(const struct basic_string *)_1666]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x22, [sp, 2568]	// tmp2276, MEM[(struct _Alloc_hider *)_3267]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x25, x0	// _1666, tmp2444
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x1], 16	// _1681, MEM[(const struct basic_string *)_1666]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1681, _1682
	beq	.L918		//,
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 2568]	// _1681, MEM[(struct basic_string *)_3267]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [x25, 16]	// *_1666.D.36210._M_allocated_capacity, *_1666.D.36210._M_allocated_capacity
	str	x0, [sp, 2584]	// *_1666.D.36210._M_allocated_capacity, MEM[(struct basic_string *)_3267].D.36210._M_allocated_capacity
.L617:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	ldr	x0, [x25, 8]	// MEM[(const struct basic_string *)_1666]._M_string_length, MEM[(const struct basic_string *)_1666]._M_string_length
	str	x0, [sp, 2576]	// MEM[(const struct basic_string *)_1666]._M_string_length, MEM[(struct basic_string *)_3267]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x25, 16]	//, MEM[(char_type &)_1666 + 16]
// /usr/include/c++/13/bits/vector.tcc:114: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	ldr	x0, [x21, 8]	// _1674, information_188(D)->D.73460._M_impl.D.72768._M_finish
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x1, xzr, [x25]	// _1682,, *_1666._M_dataplus._M_p
// /usr/include/c++/13/bits/vector.tcc:114: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	ldr	x1, [x21, 16]	// information_188(D)->D.73460._M_impl.D.72768._M_end_of_storage, information_188(D)->D.73460._M_impl.D.72768._M_end_of_storage
	cmp	x0, x1	// _1674, information_188(D)->D.73460._M_impl.D.72768._M_end_of_storage
	beq	.L618		//,
// /usr/include/c++/13/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	mov	x1, x28	//, tmp2274
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		//
// /usr/include/c++/13/bits/vector.tcc:119: 	    ++this->_M_impl._M_finish;
	ldr	x0, [x21, 8]	// information_188(D)->D.73460._M_impl.D.72768._M_finish, information_188(D)->D.73460._M_impl.D.72768._M_finish
	add	x0, x0, 32	// tmp1985, information_188(D)->D.73460._M_impl.D.72768._M_finish,
	str	x0, [x21, 8]	// tmp1985, information_188(D)->D.73460._M_impl.D.72768._M_finish
.L619:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 2568]	// _1708, MEM[(struct basic_string *)_3267]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x22	// _1708, tmp2276
	beq	.L620		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 2584]	// MEM[(struct basic_string *)_3267].D.36210._M_allocated_capacity, MEM[(struct basic_string *)_3267].D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM[(struct basic_string *)_3267].D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L620:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 2312]	// _1702, MEM[(struct basic_string *)_2677]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x20	// _1702, tmp2264
	beq	.L621		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 2328]	// MEM[(struct basic_string *)_2677].D.36210._M_allocated_capacity, MEM[(struct basic_string *)_2677].D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM[(struct basic_string *)_2677].D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L621:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 2056]	// _1696, MEM[(struct basic_string *)_1623]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x19	// _1696, tmp2245
	beq	.L622		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 2072]	// MEM[(struct basic_string *)_1623].D.36210._M_allocated_capacity, MEM[(struct basic_string *)_1623].D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM[(struct basic_string *)_1623].D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L622:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 8]	// tmp2230, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 1968]	// _1690, MEM[(struct basic_string *)_74]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1690, tmp2230
	beq	.L623		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 1984]	// MEM[(struct basic_string *)_74].D.36210._M_allocated_capacity, MEM[(struct basic_string *)_74].D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM[(struct basic_string *)_74].D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L623:
// /usr/include/c++/13/bits/basic_string.tcc:225: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	mov	x3, 30	// tmp2006,
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	mov	x1, x26	//, tmp2224
	mov	x0, x28	//, tmp2274
	mov	x2, 0	//,
// /usr/include/c++/13/bits/basic_string.tcc:225: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	str	x3, [sp, 552]	// tmp2006, MEM[(long unsigned int *)_785]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x22, [sp, 2568]	// tmp2276, MEM[(struct _Alloc_hider *)_3267]._M_p
.LEHB73:
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm		//
.LEHE73:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	adrp	x1, .LC66	// tmp2011,
	add	x1, x1, :lo12:.LC66	// tmp2010, tmp2011,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x2, [sp, 552]	// MEM[(long unsigned int *)_785], MEM[(long unsigned int *)_785]
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 2568]	// _1720, MEM[(struct basic_string *)_3267]._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	ldr	q1, [x1]	// MEM <char[1:30]> [(void *)"espacio pausa  n paso  q salir"], MEM <char[1:30]> [(void *)"espacio pausa  n paso  q salir"]
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x2, [sp, 2584]	// MEM[(long unsigned int *)_785], MEM[(struct basic_string *)_3267].D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	ldr	q0, [x1, 14]	// MEM <char[1:30]> [(void *)"espacio pausa  n paso  q salir"], MEM <char[1:30]> [(void *)"espacio pausa  n paso  q salir"]
	str	q1, [x0]	// MEM <char[1:30]> [(void *)"espacio pausa  n paso  q salir"], MEM <char[1:30]> [(void *)_1720]
	str	q0, [x0, 14]	// MEM <char[1:30]> [(void *)"espacio pausa  n paso  q salir"], MEM <char[1:30]> [(void *)_1720]
// /usr/include/c++/13/bits/basic_string.tcc:251: 	_M_set_length(__dnew);
	ldr	x0, [sp, 552]	// __dnew.65_1724, MEM[(long unsigned int *)_785]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x0, [sp, 2576]	// __dnew.65_1724, MEM[(struct basic_string *)_3267]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	ldr	x1, [sp, 2568]	// MEM[(struct basic_string *)_3267]._M_dataplus._M_p, MEM[(struct basic_string *)_3267]._M_dataplus._M_p
	strb	wzr, [x1, x0]	//, MEM[(char_type &)_1726]
// /usr/include/c++/13/bits/vector.tcc:114: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	ldp	x0, x1, [x21, 8]	// _1727, information_188(D)->D.73460._M_impl.D.72768._M_end_of_storage, information_188(D)->D.73460._M_impl.D.72768._M_finish
	cmp	x0, x1	// _1727, information_188(D)->D.73460._M_impl.D.72768._M_end_of_storage
	beq	.L624		//,
// /usr/include/c++/13/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	mov	x1, x28	//, tmp2274
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		//
// /usr/include/c++/13/bits/vector.tcc:119: 	    ++this->_M_impl._M_finish;
	ldr	x0, [x21, 8]	// information_188(D)->D.73460._M_impl.D.72768._M_finish, information_188(D)->D.73460._M_impl.D.72768._M_finish
	add	x0, x0, 32	// tmp2019, information_188(D)->D.73460._M_impl.D.72768._M_finish,
	str	x0, [x21, 8]	// tmp2019, information_188(D)->D.73460._M_impl.D.72768._M_finish
.L625:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 2568]	// _1733, MEM[(struct basic_string *)_3267]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x22	// _1733, tmp2276
	beq	.L589		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 2584]	// MEM[(struct basic_string *)_3267].D.36210._M_allocated_capacity, MEM[(struct basic_string *)_3267].D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM[(struct basic_string *)_3267].D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L589:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 384]	// tmp2229, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 560]	// _1740, bar._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _1740, tmp2229
	beq	.L203		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 576]	// bar.D.36210._M_allocated_capacity, bar.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, bar.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L203:
// terminal.cpp:84: }
	adrp	x0, :got:__stack_chk_guard	// tmp2217,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp2217,
	ldr	x2, [sp, 3160]	// tmp2506, D.86915
	ldr	x1, [x0]	// tmp2507,
	subs	x2, x2, x1	// tmp2506, tmp2507
	mov	x1, 0	// tmp2507
	bne	.L849		//,
	add	sp, sp, 3168	//,,
	.cfi_remember_state
	.cfi_def_cfa_offset 96
	mov	x0, x21	//, <retval>
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
.L527:
	.cfi_restore_state
// /usr/include/c++/13/bits/char_traits.h:429: 	if (__n == 0)
	cbz	x21, .L528	// _1259,
	b	.L526		//
	.p2align 2,,3
.L268:
// terminal.cpp:51: }
	cmp	x19, x24	// _660, tmp2262
	bne	.L266		//,
// terminal.cpp:44:     const std::string arrows[] = {"↑", "↗", "→", "↘", "↓", "↙", "←", "↖"};
	b	.L269		//
	.p2align 2,,3
.L287:
	ldp	x22, x19, [x20, 48]	// _643, _644, MEM[(char * *)options_143(D) + 48B]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x2, sp, 800	// tmp2257,,
	add	x0, sp, 784	// tmp2256,,
	str	x0, [sp, 24]	// tmp2256, %sfp
	str	x2, [sp, 392]	// tmp2257, %sfp
	str	x2, [sp, 784]	// tmp2257, MEM[(struct _Alloc_hider *)&D.74537]._M_p
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	xzr, [sp, 792]	//, D.74537._M_string_length
// /usr/include/c++/13/bits/basic_string.h:3537:       __str.reserve(__lhs_len + __rhs_len);
	add	x1, x19, 1	//, _644,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 800]	//, MEM[(char_type &)&D.74537 + 16]
.LEHB74:
// /usr/include/c++/13/bits/basic_string.h:3537:       __str.reserve(__lhs_len + __rhs_len);
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm		//
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 792]	// D.74537._M_string_length, D.74537._M_string_length
	mov	x0, 4611686018427387903	// tmp1095,
	cmp	x1, x0	// D.74537._M_string_length, tmp1095
	beq	.L919		//,
// /usr/include/c++/13/bits/basic_string.h:1459: 	return _M_append(__s, __n);
	ldr	x0, [sp, 24]	//, %sfp
	adrp	x1, .LC47	// tmp1100,
	mov	x2, 1	//,
	add	x1, x1, :lo12:.LC47	//, tmp1100,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	ldr	x1, [sp, 792]	// D.74537._M_string_length, D.74537._M_string_length
	mov	x0, 4611686018427387903	// tmp1103,
	sub	x0, x0, x1	// tmp1102, tmp1103, D.74537._M_string_length
	cmp	x19, x0	// _644, tmp1102
	bhi	.L920		//,
// /usr/include/c++/13/bits/basic_string.h:1459: 	return _M_append(__s, __n);
	ldr	x0, [sp, 24]	//, %sfp
	mov	x2, x19	//, _644
	mov	x1, x22	//, _643
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE74:
	b	.L288		//
	.p2align 2,,3
.L312:
// terminal.cpp:67:         "Humedad media: " + (stats.count[TREE] ? std::to_string(stats.mean) : std::string("no aplica")),
	add	x0, sp, 912	// tmp2263,,
	adrp	x1, .LC49	// tmp1152,
	add	x1, x1, :lo12:.LC49	//, tmp1152,
	str	x0, [sp, 376]	// tmp2263, %sfp
.LEHB75:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0		//
.LEHE75:
	b	.L313		//
	.p2align 2,,3
.L660:
// terminal.cpp:79:         information.push_back(std::to_string(playback.delay) + " ms " +
	adrp	x1, .LC31	// tmp732,
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x2, 0	// _229,
// terminal.cpp:79:         information.push_back(std::to_string(playback.delay) + " ms " +
	add	x1, x1, :lo12:.LC31	// iftmp.27_707, tmp732,
	b	.L610		//
.L591:
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	ldr	x3, [sp, 8]	// tmp2230, %sfp
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	mov	w2, 0	//,
	ldr	x0, [sp, 64]	//, %sfp
	mov	x1, 2	//,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x3, [sp, 1968]	// tmp2230, MEM[(struct _Alloc_hider *)_74]._M_p
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc		//
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	adrp	x0, .LC20	// tmp1855,
	add	x0, x0, :lo12:.LC20	// tmp1854, tmp1855,
	add	x4, sp, 2952	// tmp2298,,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x5, [sp, 1968]	// _3148, MEM[(struct basic_string *)_74]._M_dataplus._M_p
// /usr/include/c++/13/bits/charconv.h:87:       constexpr char __digits[201] =
	ldp	q0, q5, [x0, 160]	// tmp1868, tmp1869,
	ldp	q3, q4, [x0]	// tmp1858, tmp1859,
	ldp	q1, q2, [x0, 32]	// tmp1860, tmp1861,
	stp	q0, q5, [x4, 160]	// tmp1868, tmp1869, __digits
	ldp	q0, q5, [x0, 64]	// tmp1862, tmp1863,
	stp	q3, q4, [x4]	// tmp1858, tmp1859, __digits
	ldp	q3, q4, [x0, 96]	// tmp1864, tmp1865,
	stp	q1, q2, [x4, 32]	// tmp1860, tmp1861, __digits
	ldp	q1, q2, [x0, 128]	// tmp1866, tmp1867,
	stp	q0, q5, [x4, 64]	// tmp1862, tmp1863, __digits
	ldr	q0, [x0, 185]	// tmp1870,
	stp	q3, q4, [x4, 96]	// tmp1864, tmp1865, __digits
	stp	q1, q2, [x4, 128]	// tmp1866, tmp1867, __digits
	str	q0, [x4, 185]	// tmp1870, __digits
	.p2align 3,,7
.L597:
// /usr/include/c++/13/bits/charconv.h:104: 	  auto const __num = __val * 2;
	lsl	w22, w22, 1	// __num, __val,
// /usr/include/c++/13/bits/charconv.h:105: 	  __first[1] = __digits[__num + 1];
	add	w1, w22, 1	// tmp1914, __num,
// /usr/include/c++/13/bits/charconv.h:106: 	  __first[0] = __digits[__num];
	ldrb	w0, [x4, w22, uxtw]	// _1649, __digits[__num_1646]
// /usr/include/c++/13/bits/charconv.h:105: 	  __first[1] = __digits[__num + 1];
	ldrb	w1, [x4, w1, uxtw]	//, __digits[_1647]
	strb	w1, [x5, 1]	// __digits[_1647], MEM[(char *)_3243 + 1B]
	b	.L605		//
.L860:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldr	x0, [x20, 48]	//, MEM[(const struct basic_string *)options_143(D) + 48B]._M_dataplus._M_p
	mov	x2, x19	//, _882
	ldr	x1, [sp, 2120]	//, MEM <const struct string[8]> [(const struct basic_string *)_1623][2]._M_dataplus._M_p
	bl	memcmp		//
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	cbnz	w0, .L251	// tmp2337,
// terminal.cpp:45:     for (int i = 0; i < 8; ++i) {
	mov	w1, 2	// i,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ubfiz	x1, x1, 5, 3	// tmp2204, i,,
	b	.L835		//
.L861:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldr	x0, [x20, 48]	//, MEM[(const struct basic_string *)options_143(D) + 48B]._M_dataplus._M_p
	mov	x2, x19	//, _882
	ldr	x1, [sp, 2152]	//, MEM <const struct string[8]> [(const struct basic_string *)_1623][3]._M_dataplus._M_p
	bl	memcmp		//
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	cbnz	w0, .L253	// tmp2338,
// terminal.cpp:45:     for (int i = 0; i < 8; ++i) {
	mov	w1, 3	// i,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ubfiz	x1, x1, 5, 3	// tmp2204, i,,
	b	.L835		//
.L862:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldr	x0, [x20, 48]	//, MEM[(const struct basic_string *)options_143(D) + 48B]._M_dataplus._M_p
	mov	x2, x19	//, _882
	ldr	x1, [sp, 2184]	//, MEM <const struct string[8]> [(const struct basic_string *)_1623][4]._M_dataplus._M_p
	bl	memcmp		//
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	cbnz	w0, .L254	// tmp2339,
// terminal.cpp:45:     for (int i = 0; i < 8; ++i) {
	mov	w1, 4	// i,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ubfiz	x1, x1, 5, 3	// tmp2204, i,,
	b	.L835		//
.L863:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldr	x0, [x20, 48]	//, MEM[(const struct basic_string *)options_143(D) + 48B]._M_dataplus._M_p
	mov	x2, x19	//, _882
	ldr	x1, [sp, 2216]	//, MEM <const struct string[8]> [(const struct basic_string *)_1623][5]._M_dataplus._M_p
	bl	memcmp		//
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	cbnz	w0, .L255	// tmp2340,
// terminal.cpp:45:     for (int i = 0; i < 8; ++i) {
	mov	w1, 5	// i,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ubfiz	x1, x1, 5, 3	// tmp2204, i,,
	b	.L835		//
.L864:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldr	x0, [x20, 48]	//, MEM[(const struct basic_string *)options_143(D) + 48B]._M_dataplus._M_p
	mov	x2, x19	//, _882
	ldr	x1, [sp, 2248]	//, MEM <const struct string[8]> [(const struct basic_string *)_1623][6]._M_dataplus._M_p
	bl	memcmp		//
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	cbnz	w0, .L256	// tmp2341,
// terminal.cpp:45:     for (int i = 0; i < 8; ++i) {
	mov	w1, 6	// i,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ubfiz	x1, x1, 5, 3	// tmp2204, i,,
	b	.L835		//
.L865:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldr	x0, [x20, 48]	//, MEM[(const struct basic_string *)options_143(D) + 48B]._M_dataplus._M_p
	mov	x2, x19	//, _882
	ldr	x1, [sp, 2280]	//, MEM <const struct string[8]> [(const struct basic_string *)_1623][7]._M_dataplus._M_p
	bl	memcmp		//
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	cbnz	w0, .L257	// tmp2342,
	mov	w1, 7	// i,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ubfiz	x1, x1, 5, 3	// tmp2204, i,,
	b	.L835		//
	.p2align 2,,3
.L854:
	mov	x0, x1	//, tmp2239
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_670]._M_string_length,
	mov	x1, x22	//, _677
	bl	memcpy		//
	ldr	x2, [x19, 8]	// MEM[(const struct basic_string *)_670]._M_string_length, MEM[(const struct basic_string *)_670]._M_string_length
	b	.L218		//
	.p2align 2,,3
.L856:
	mov	x0, x1	//, tmp2247
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_674]._M_string_length,
	mov	x1, x22	//, _684
	bl	memcpy		//
	ldr	x2, [x19, 8]	// MEM[(const struct basic_string *)_674]._M_string_length, MEM[(const struct basic_string *)_674]._M_string_length
	b	.L226		//
	.p2align 2,,3
.L898:
	mov	x0, x1	//, tmp2311
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_1153]._M_string_length,
	mov	x1, x24	//, _1160
	bl	memcpy		//
	ldr	x2, [x22, 8]	// MEM[(const struct basic_string *)_1153]._M_string_length, MEM[(const struct basic_string *)_1153]._M_string_length
	b	.L478		//
	.p2align 2,,3
.L897:
	add	x2, x2, 1	//, pretmp_3333,
	mov	x0, x3	//, tmp1483
	mov	x1, x24	//, _1143
	bl	memcpy		//
	b	.L471		//
	.p2align 2,,3
.L895:
	mov	x0, x1	//, tmp2306
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_1129]._M_string_length,
	mov	x1, x24	//, _1132
	bl	memcpy		//
	ldr	x2, [x22, 8]	// MEM[(const struct basic_string *)_1129]._M_string_length, MEM[(const struct basic_string *)_1129]._M_string_length
	b	.L457		//
	.p2align 2,,3
.L869:
	mov	x0, x1	//, tmp2255
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_916]._M_string_length,
	mov	x1, x22	//, _919
	bl	memcpy		//
	ldr	x2, [x19, 8]	// MEM[(const struct basic_string *)_916]._M_string_length, MEM[(const struct basic_string *)_916]._M_string_length
	b	.L286		//
	.p2align 2,,3
.L872:
	add	x2, x2, 1	//, pretmp_3348,
	mov	x0, x3	//, tmp1158
	mov	x1, x20	//, _968
	bl	memcpy		//
	b	.L320		//
	.p2align 2,,3
.L871:
	mov	x0, x1	//, tmp2260
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_952]._M_string_length,
	mov	x1, x22	//, _955
	bl	memcpy		//
	ldr	x2, [x19, 8]	// MEM[(const struct basic_string *)_952]._M_string_length, MEM[(const struct basic_string *)_952]._M_string_length
	b	.L305		//
	.p2align 2,,3
.L878:
	add	x2, x2, 1	//, pretmp_3344,
	mov	x0, x3	//, tmp1241
	mov	x1, x24	//, _1016
	bl	memcpy		//
	b	.L356		//
	.p2align 2,,3
.L876:
	mov	x0, x1	//, tmp2270
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_995]._M_string_length,
	mov	x1, x22	//, _1005
	bl	memcpy		//
	ldr	x2, [x19, 8]	// MEM[(const struct basic_string *)_995]._M_string_length, MEM[(const struct basic_string *)_995]._M_string_length
	b	.L342		//
	.p2align 2,,3
.L874:
	mov	x0, x1	//, tmp2268
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_991]._M_string_length,
	mov	x1, x20	//, _998
	bl	memcpy		//
	ldr	x2, [x19, 8]	// MEM[(const struct basic_string *)_991]._M_string_length, MEM[(const struct basic_string *)_991]._M_string_length
	b	.L334		//
	.p2align 2,,3
.L873:
	add	x2, x2, 1	//, pretmp_3347,
	mov	x0, x3	//, tmp1178
	mov	x1, x20	//, _981
	bl	memcpy		//
	b	.L327		//
	.p2align 2,,3
.L893:
	mov	x0, x1	//, tmp2302
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_1118]._M_string_length,
	mov	x1, x24	//, _1121
	bl	memcpy		//
	ldr	x2, [x22, 8]	// MEM[(const struct basic_string *)_1118]._M_string_length, MEM[(const struct basic_string *)_1118]._M_string_length
	b	.L443		//
	.p2align 2,,3
.L891:
	mov	x0, x1	//, tmp2297
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_1100]._M_string_length,
	mov	x1, x24	//, _1110
	bl	memcpy		//
	ldr	x2, [x22, 8]	// MEM[(const struct basic_string *)_1100]._M_string_length, MEM[(const struct basic_string *)_1100]._M_string_length
	b	.L429		//
	.p2align 2,,3
.L889:
	mov	x0, x1	//, tmp2294
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_1096]._M_string_length,
	mov	x1, x24	//, _1103
	bl	memcpy		//
	ldr	x2, [x22, 8]	// MEM[(const struct basic_string *)_1096]._M_string_length, MEM[(const struct basic_string *)_1096]._M_string_length
	b	.L421		//
	.p2align 2,,3
.L888:
	add	x2, x2, 1	//, pretmp_3338,
	mov	x0, x3	//, tmp1367
	mov	x1, x24	//, _1086
	bl	memcpy		//
	b	.L414		//
	.p2align 2,,3
.L886:
	mov	x0, x1	//, tmp2288
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_1065]._M_string_length,
	mov	x1, x24	//, _1075
	bl	memcpy		//
	ldr	x2, [x22, 8]	// MEM[(const struct basic_string *)_1065]._M_string_length, MEM[(const struct basic_string *)_1065]._M_string_length
	b	.L400		//
	.p2align 2,,3
.L884:
	mov	x0, x1	//, tmp2286
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_1061]._M_string_length,
	mov	x1, x24	//, _1068
	bl	memcpy		//
	ldr	x2, [x22, 8]	// MEM[(const struct basic_string *)_1061]._M_string_length, MEM[(const struct basic_string *)_1061]._M_string_length
	b	.L392		//
	.p2align 2,,3
.L883:
	add	x2, x2, 1	//, pretmp_3341,
	mov	x0, x3	//, tmp1304
	mov	x1, x24	//, _1051
	bl	memcpy		//
	b	.L385		//
	.p2align 2,,3
.L881:
	mov	x0, x1	//, tmp2279
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_1030]._M_string_length,
	mov	x1, x24	//, _1040
	bl	memcpy		//
	ldr	x2, [x22, 8]	// MEM[(const struct basic_string *)_1030]._M_string_length, MEM[(const struct basic_string *)_1030]._M_string_length
	b	.L371		//
	.p2align 2,,3
.L879:
	mov	x0, x1	//, tmp2277
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_1026]._M_string_length,
	mov	x1, x24	//, _1033
	bl	memcpy		//
	ldr	x2, [x22, 8]	// MEM[(const struct basic_string *)_1026]._M_string_length, MEM[(const struct basic_string *)_1026]._M_string_length
	b	.L363		//
	.p2align 2,,3
.L900:
	mov	x0, x1	//, tmp2219
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_1157]._M_string_length,
	mov	x1, x24	//, _1167
	bl	memcpy		//
	ldr	x2, [x22, 8]	// MEM[(const struct basic_string *)_1157]._M_string_length, MEM[(const struct basic_string *)_1157]._M_string_length
	b	.L486		//
	.p2align 2,,3
.L904:
	add	x2, x2, 1	//, pretmp_3329,
	mov	x0, x3	//, tmp1564
	mov	x1, x20	//, _1193
	bl	memcpy		//
	b	.L514		//
	.p2align 2,,3
.L902:
	mov	x0, x1	//, tmp2230
	add	x2, x2, 1	//, pretmp_3330,
	mov	x1, x22	//, _1178
	bl	memcpy		//
	b	.L500		//
	.p2align 2,,3
.L247:
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	ldr	x1, [sp, 2064]	// MEM <const struct string[8]> [(const struct basic_string *)_1623][0]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_1623][0]._M_string_length
	cbz	x1, .L648	// MEM <const struct string[8]> [(const struct basic_string *)_1623][0]._M_string_length,
	ldr	x1, [sp, 2096]	// MEM <const struct string[8]> [(const struct basic_string *)_1623][1]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_1623][1]._M_string_length
	cbz	x1, .L641	// MEM <const struct string[8]> [(const struct basic_string *)_1623][1]._M_string_length,
	ldr	x1, [sp, 2128]	// MEM <const struct string[8]> [(const struct basic_string *)_1623][2]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_1623][2]._M_string_length
	cbz	x1, .L650	// MEM <const struct string[8]> [(const struct basic_string *)_1623][2]._M_string_length,
	ldr	x1, [sp, 2160]	// MEM <const struct string[8]> [(const struct basic_string *)_1623][3]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_1623][3]._M_string_length
	cbz	x1, .L259	// MEM <const struct string[8]> [(const struct basic_string *)_1623][3]._M_string_length,
	ldr	x0, [sp, 2192]	// MEM <const struct string[8]> [(const struct basic_string *)_1623][4]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_1623][4]._M_string_length
	cbz	x0, .L652	// MEM <const struct string[8]> [(const struct basic_string *)_1623][4]._M_string_length,
	ldr	x0, [sp, 2224]	// MEM <const struct string[8]> [(const struct basic_string *)_1623][5]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_1623][5]._M_string_length
	cbz	x0, .L653	// MEM <const struct string[8]> [(const struct basic_string *)_1623][5]._M_string_length,
	ldr	x0, [sp, 2256]	// MEM <const struct string[8]> [(const struct basic_string *)_1623][6]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_1623][6]._M_string_length
	cbz	x0, .L654	// MEM <const struct string[8]> [(const struct basic_string *)_1623][6]._M_string_length,
	ldr	x0, [sp, 2288]	// MEM <const struct string[8]> [(const struct basic_string *)_1623][7]._M_string_length, MEM <const struct string[8]> [(const struct basic_string *)_1623][7]._M_string_length
	cbnz	x0, .L257	// MEM <const struct string[8]> [(const struct basic_string *)_1623][7]._M_string_length,
	mov	w0, 7	// i,
	.p2align 3,,7
.L259:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ubfiz	x1, x0, 5, 3	// tmp2212, i,,
.L835:
// /usr/include/c++/13/bits/basic_string.h:1079:       { return _M_string_length; }
	add	x2, sp, 2320	// tmp2216,,
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x3, sp, 736	// tmp2210,,
	str	x3, [sp, 720]	// tmp2210, MEM[(struct _Alloc_hider *)&D.74532]._M_p
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	add	x24, sp, 2312	// tmp2262,,
// /usr/include/c++/13/bits/basic_string.tcc:225: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	mov	x0, x3	// _705, tmp2210
// /usr/include/c++/13/bits/basic_string.h:1079:       { return _M_string_length; }
	ldr	x19, [x2, x1]	// _3217,
	add	x2, sp, 720	// tmp2251,,
	str	x2, [sp, 16]	// tmp2251, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x22, [x24, x1]	// _3216,
// /usr/include/c++/13/bits/basic_string.tcc:225: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	str	x19, [sp, 552]	// _3217, MEM[(long unsigned int *)_785]
.L262:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x19	//, _3217
	mov	x1, x22	//, _3216
	bl	memcpy		//
// /usr/include/c++/13/bits/basic_string.tcc:251: 	_M_set_length(__dnew);
	ldr	x19, [sp, 552]	// _3217, MEM[(long unsigned int *)_785]
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 720]	// pretmp_3252, D.74532._M_dataplus._M_p
.L264:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x19, [sp, 728]	// _3217, D.74532._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x0, x19]	//, MEM[(char_type &)_896]
// /usr/include/c++/13/bits/basic_string.tcc:252:       }
	b	.L267		//
.L238:
// /usr/include/c++/13/bits/char_traits.h:429: 	if (__n == 0)
	cbz	x19, .L239	// _693,
	b	.L237		//
	.p2align 2,,3
.L868:
	mov	x0, x1	//, tmp2251
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	mov	x2, 0	//,
	add	x1, sp, 552	//,,
.LEHB76:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm		//
.LEHE76:
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [sp, 552]	// MEM[(long unsigned int *)_785], MEM[(long unsigned int *)_785]
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 720]	// _731, D.74532._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 736]	// MEM[(long unsigned int *)_785], D.74532.D.36210._M_allocated_capacity
.L237:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x19	//, _693
	mov	x1, x22	//, _692
	bl	memcpy		//
// /usr/include/c++/13/bits/basic_string.tcc:251: 	_M_set_length(__dnew);
	ldr	x19, [sp, 552]	// _693, MEM[(long unsigned int *)_785]
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 720]	// pretmp_3256, D.74532._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	b	.L239		//
	.p2align 2,,3
.L624:
// /usr/include/c++/13/bits/vector.tcc:123: 	  _M_realloc_insert(end(), std::forward<_Args>(__args)...);
	mov	x1, x0	//, _1727
	mov	x2, x28	//, tmp2274
	mov	x0, x21	//, <retval>
.LEHB77:
	bl	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_		//
.LEHE77:
	b	.L625		//
	.p2align 2,,3
.L618:
	mov	x1, x0	//, _1674
	mov	x2, x28	//, tmp2274
	mov	x0, x21	//, <retval>
.LEHB78:
	bl	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_		//
.LEHE78:
	b	.L619		//
.L858:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldr	x0, [x20, 48]	//, MEM[(const struct basic_string *)options_143(D) + 48B]._M_dataplus._M_p
	mov	x2, x19	//, _882
	ldr	x1, [sp, 2056]	//, MEM <const struct string[8]> [(const struct basic_string *)_1623][0]._M_dataplus._M_p
	bl	memcmp		//
	mov	w1, w0	// i, tmp2335
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	cbnz	w0, .L248	// i,
.L260:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	sbfiz	x1, x1, 5, 32	// tmp1025, i,,
// /usr/include/c++/13/bits/basic_string.h:1079:       { return _M_string_length; }
	add	x2, sp, 2320	// tmp1029,,
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	add	x24, sp, 2312	// tmp2262,,
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x0, sp, 736	// _705,,
	add	x3, sp, 720	// tmp2251,,
	str	x3, [sp, 16]	// tmp2251, %sfp
// /usr/include/c++/13/bits/basic_string.h:1079:       { return _M_string_length; }
	ldr	x19, [x2, x1]	// _3217, MEM <const struct string[8]> [(const struct basic_string *)_2677][i_3294]._M_string_length
// /usr/include/c++/13/bits/basic_string.tcc:225: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	str	x19, [sp, 552]	// _3217, MEM[(long unsigned int *)_785]
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x0, [sp, 720]	// _705, MEM[(struct _Alloc_hider *)&D.74532]._M_p
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x22, [x24, x1]	// _3216, MEM <const struct string[8]> [(const struct basic_string *)_2677][i_3294]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	x19, 15	// _3217,
	bhi	.L921		//,
// /usr/include/c++/13/bits/basic_string.h:427: 	if (__n == 1)
	cmp	x19, 1	// _3217,
	bne	.L263		//,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	ldrb	w1, [x22]	// _893, MEM[(const char_type &)_701]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	w1, [sp, 736]	// _893, MEM[(char_type &)&D.74532 + 16]
// /usr/include/c++/13/bits/char_traits.h:359:       }
	b	.L264		//
.L859:
// /usr/include/c++/13/bits/char_traits.h:389: 	return __builtin_memcmp(__s1, __s2, __n);
	ldr	x0, [x20, 48]	//, MEM[(const struct basic_string *)options_143(D) + 48B]._M_dataplus._M_p
	mov	x2, x19	//, _882
	ldr	x1, [sp, 2088]	//, MEM <const struct string[8]> [(const struct basic_string *)_1623][1]._M_dataplus._M_p
	bl	memcmp		//
// /usr/include/c++/13/bits/basic_string.h:3715: 	       && !_Traits::compare(__lhs.data(), __rhs.data(), __lhs.size());
	cbnz	w0, .L250	// tmp2336,
.L641:
// terminal.cpp:45:     for (int i = 0; i < 8; ++i) {
	mov	w1, 1	// i,
	b	.L260		//
.L912:
	mov	x1, 7	// prephitmp_1995,
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	mov	w2, 0	//,
	b	.L836		//
.L658:
	mov	x1, 8	// prephitmp_1995,
	mov	w2, 0	//,
	b	.L836		//
.L659:
// /usr/include/c++/13/bits/charconv.h:72: 	  __n += 4;
	mov	x1, 9	//,
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	mov	w2, 0	//,
	b	.L836		//
.L914:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x2, x2, 1	//, pretmp_3328,
	mov	x1, x25	//, _1654
	mov	x0, x19	//, tmp2245
	bl	memcpy		//
	b	.L609		//
.L916:
	add	x2, x2, 1	//, pretmp_3327,
	mov	x1, x25	//, _1669
	mov	x0, x20	//, tmp2264
	bl	memcpy		//
	b	.L613		//
.L918:
	add	x2, x2, 1	//, pretmp_3326,
	mov	x0, x22	//, tmp2276
	str	x1, [sp, 16]	// _1682, %sfp
	bl	memcpy		//
	ldr	x1, [sp, 16]	// _1682, %sfp
	b	.L617		//
.L648:
// terminal.cpp:45:     for (int i = 0; i < 8; ++i) {
	mov	w1, 0	// i,
	b	.L260		//
.L650:
// terminal.cpp:45:     for (int i = 0; i < 8; ++i) {
	mov	w0, 2	// i,
	b	.L259		//
.L263:
// /usr/include/c++/13/bits/char_traits.h:429: 	if (__n == 0)
	cbz	x19, .L264	// _3217,
	b	.L262		//
	.p2align 2,,3
.L921:
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	add	x1, sp, 552	//,,
	mov	x0, x3	//, tmp2251
	mov	x2, 0	//,
.LEHB79:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm		//
.LEHE79:
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [sp, 552]	// MEM[(long unsigned int *)_785], MEM[(long unsigned int *)_785]
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 720]	// _705, D.74532._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 736]	// MEM[(long unsigned int *)_785], D.74532.D.36210._M_allocated_capacity
	b	.L262		//
.L652:
// terminal.cpp:45:     for (int i = 0; i < 8; ++i) {
	mov	w0, 4	// i,
	b	.L259		//
.L653:
	mov	w0, 5	// i,
	b	.L259		//
.L654:
	mov	w0, 6	// i,
	b	.L259		//
.L590:
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	ldr	x3, [sp, 8]	// tmp2230, %sfp
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	mov	w2, 0	//,
	ldr	x0, [sp, 64]	//, %sfp
	mov	x1, 1	//,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x3, [sp, 1968]	// tmp2230, MEM[(struct _Alloc_hider *)_74]._M_p
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc		//
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x5, [sp, 1968]	// _3148, MEM[(struct basic_string *)_74]._M_dataplus._M_p
	b	.L604		//
.L909:
// /usr/include/c++/13/bits/charconv.h:70: 	  if (__value < __b4) return __n + 3;
	mov	x1, 4	// prephitmp_1995,
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	mov	w2, 0	//,
	b	.L836		//
.L656:
// /usr/include/c++/13/bits/charconv.h:69: 	  if (__value < __b3) return __n + 2;
	mov	x1, 3	// prephitmp_1995,
// /usr/include/c++/13/bits/basic_string.h:666:       { _M_construct(__n, __c); }
	mov	w2, 0	//,
	b	.L836		//
.L910:
	mov	x1, 5	//,
	mov	w2, 0	//,
	b	.L836		//
.L850:
// /usr/include/c++/13/bits/basic_string.h:400: 	  __throw_length_error(__N(__s));
	adrp	x0, :got:__stack_chk_guard	// tmp746,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp746,
	ldr	x2, [sp, 3160]	// tmp2454, D.86915
	ldr	x1, [x0]	// tmp2455,
	subs	x2, x2, x1	// tmp2454, tmp2455
	mov	x1, 0	// tmp2455
	bne	.L849		//,
	adrp	x0, .LC21	// tmp748,
	add	x23, sp, 560	// tmp2226,,
	add	x0, x0, :lo12:.LC21	//, tmp748,
.LEHB80:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE80:
.L911:
	mov	w0, 5	// __n,
	b	.L601		//
.L880:
	adrp	x0, :got:__stack_chk_guard	// tmp1269,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1269,
	ldr	x2, [sp, 3160]	// tmp2470, D.86915
	ldr	x1, [x0]	// tmp2471,
	subs	x2, x2, x1	// tmp2470, tmp2471
	mov	x1, 0	// tmp2471
	bne	.L849		//,
	adrp	x0, .LC21	// tmp1271,
	add	x0, x0, :lo12:.LC21	//, tmp1271,
.LEHB81:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE81:
.L919:
	adrp	x0, :got:__stack_chk_guard	// tmp1096,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1096,
	ldr	x2, [sp, 3160]	// tmp2460, D.86915
	ldr	x1, [x0]	// tmp2461,
	subs	x2, x2, x1	// tmp2460, tmp2461
	mov	x1, 0	// tmp2461
	bne	.L849		//,
	adrp	x0, .LC21	// tmp1098,
	add	x0, x0, :lo12:.LC21	//, tmp1098,
.LEHB82:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE82:
.L853:
	adrp	x0, :got:__stack_chk_guard	// tmp751,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp751,
	ldr	x2, [sp, 3160]	// tmp2456, D.86915
	ldr	x1, [x0]	// tmp2457,
	subs	x2, x2, x1	// tmp2456, tmp2457
	mov	x1, 0	// tmp2457
	bne	.L849		//,
	adrp	x0, .LC21	// tmp753,
	add	x0, x0, :lo12:.LC21	//, tmp753,
.LEHB83:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE83:
.L855:
	adrp	x0, :got:__stack_chk_guard	// tmp775,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp775,
	ldr	x2, [sp, 3160]	// tmp2458, D.86915
	ldr	x1, [x0]	// tmp2459,
	subs	x2, x2, x1	// tmp2458, tmp2459
	mov	x1, 0	// tmp2459
	bne	.L849		//,
	adrp	x0, .LC21	// tmp777,
	add	x0, x0, :lo12:.LC21	//, tmp777,
.LEHB84:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE84:
.L896:
	adrp	x0, :got:__stack_chk_guard	// tmp1476,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1476,
	ldr	x2, [sp, 3160]	// tmp2484, D.86915
	ldr	x1, [x0]	// tmp2485,
	subs	x2, x2, x1	// tmp2484, tmp2485
	mov	x1, 0	// tmp2485
	bne	.L849		//,
	adrp	x0, .LC21	// tmp1478,
	add	x0, x0, :lo12:.LC21	//, tmp1478,
.LEHB85:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE85:
.L894:
	adrp	x0, :got:__stack_chk_guard	// tmp1448,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1448,
	ldr	x2, [sp, 3160]	// tmp2482, D.86915
	ldr	x1, [x0]	// tmp2483,
	subs	x2, x2, x1	// tmp2482, tmp2483
	mov	x1, 0	// tmp2483
	bne	.L849		//,
	adrp	x0, .LC21	// tmp1450,
	add	x0, x0, :lo12:.LC21	//, tmp1450,
.LEHB86:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE86:
.L892:
	adrp	x0, :got:__stack_chk_guard	// tmp1424,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1424,
	ldr	x2, [sp, 3160]	// tmp2480, D.86915
	ldr	x1, [x0]	// tmp2481,
	subs	x2, x2, x1	// tmp2480, tmp2481
	mov	x1, 0	// tmp2481
	bne	.L849		//,
	adrp	x0, .LC21	// tmp1426,
	add	x0, x0, :lo12:.LC21	//, tmp1426,
.LEHB87:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE87:
.L903:
	adrp	x0, :got:__stack_chk_guard	// tmp1557,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1557,
	ldr	x2, [sp, 3160]	// tmp2490, D.86915
	ldr	x1, [x0]	// tmp2491,
	subs	x2, x2, x1	// tmp2490, tmp2491
	mov	x1, 0	// tmp2491
	bne	.L849		//,
	adrp	x0, .LC21	// tmp1559,
	add	x0, x0, :lo12:.LC21	//, tmp1559,
.LEHB88:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE88:
.L887:
	adrp	x0, :got:__stack_chk_guard	// tmp1360,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1360,
	ldr	x2, [sp, 3160]	// tmp2476, D.86915
	ldr	x1, [x0]	// tmp2477,
	subs	x2, x2, x1	// tmp2476, tmp2477
	mov	x1, 0	// tmp2477
	bne	.L849		//,
	adrp	x0, .LC21	// tmp1362,
	add	x0, x0, :lo12:.LC21	//, tmp1362,
.LEHB89:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE89:
.L885:
	adrp	x0, :got:__stack_chk_guard	// tmp1332,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1332,
	ldr	x2, [sp, 3160]	// tmp2474, D.86915
	ldr	x1, [x0]	// tmp2475,
	subs	x2, x2, x1	// tmp2474, tmp2475
	mov	x1, 0	// tmp2475
	bne	.L849		//,
	adrp	x0, .LC21	// tmp1334,
	add	x0, x0, :lo12:.LC21	//, tmp1334,
.LEHB90:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE90:
.L875:
	adrp	x0, :got:__stack_chk_guard	// tmp1206,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1206,
	ldr	x2, [sp, 3160]	// tmp2466, D.86915
	ldr	x1, [x0]	// tmp2467,
	subs	x2, x2, x1	// tmp2466, tmp2467
	mov	x1, 0	// tmp2467
	bne	.L849		//,
	adrp	x0, .LC21	// tmp1208,
	add	x0, x0, :lo12:.LC21	//, tmp1208,
.LEHB91:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE91:
.L901:
	adrp	x0, :got:__stack_chk_guard	// tmp1534,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1534,
	ldr	x2, [sp, 3160]	// tmp2488, D.86915
	ldr	x1, [x0]	// tmp2489,
	subs	x2, x2, x1	// tmp2488, tmp2489
	mov	x1, 0	// tmp2489
	bne	.L849		//,
	adrp	x0, .LC21	// tmp1536,
	add	x0, x0, :lo12:.LC21	//, tmp1536,
.LEHB92:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE92:
.L890:
	adrp	x0, :got:__stack_chk_guard	// tmp1395,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1395,
	ldr	x2, [sp, 3160]	// tmp2478, D.86915
	ldr	x1, [x0]	// tmp2479,
	subs	x2, x2, x1	// tmp2478, tmp2479
	mov	x1, 0	// tmp2479
	bne	.L849		//,
	adrp	x0, .LC21	// tmp1397,
	add	x0, x0, :lo12:.LC21	//, tmp1397,
.LEHB93:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE93:
.L877:
	adrp	x0, :got:__stack_chk_guard	// tmp1234,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1234,
	ldr	x2, [sp, 3160]	// tmp2468, D.86915
	ldr	x1, [x0]	// tmp2469,
	subs	x2, x2, x1	// tmp2468, tmp2469
	mov	x1, 0	// tmp2469
	bne	.L849		//,
	adrp	x0, .LC21	// tmp1236,
	add	x0, x0, :lo12:.LC21	//, tmp1236,
.LEHB94:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE94:
.L870:
	adrp	x0, :got:__stack_chk_guard	// tmp1120,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1120,
	ldr	x2, [sp, 3160]	// tmp2464, D.86915
	ldr	x1, [x0]	// tmp2465,
	subs	x2, x2, x1	// tmp2464, tmp2465
	mov	x1, 0	// tmp2465
	bne	.L849		//,
	adrp	x0, .LC21	// tmp1122,
	add	x0, x0, :lo12:.LC21	//, tmp1122,
.LEHB95:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE95:
.L905:
	adrp	x0, :got:__stack_chk_guard	// tmp1582,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1582,
	ldr	x2, [sp, 3160]	// tmp2492, D.86915
	ldr	x1, [x0]	// tmp2493,
	subs	x2, x2, x1	// tmp2492, tmp2493
	mov	x1, 0	// tmp2493
	bne	.L849		//,
	adrp	x0, .LC21	// tmp1584,
	add	x0, x0, :lo12:.LC21	//, tmp1584,
.LEHB96:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE96:
.L920:
	adrp	x0, :got:__stack_chk_guard	// tmp1105,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1105,
	ldr	x2, [sp, 3160]	// tmp2462, D.86915
	ldr	x1, [x0]	// tmp2463,
	subs	x2, x2, x1	// tmp2462, tmp2463
	mov	x1, 0	// tmp2463
	bne	.L849		//,
	adrp	x0, .LC21	// tmp1107,
	add	x0, x0, :lo12:.LC21	//, tmp1107,
.LEHB97:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE97:
.L899:
	adrp	x0, :got:__stack_chk_guard	// tmp1510,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1510,
	ldr	x2, [sp, 3160]	// tmp2486, D.86915
	ldr	x1, [x0]	// tmp2487,
	subs	x2, x2, x1	// tmp2486, tmp2487
	mov	x1, 0	// tmp2487
	bne	.L849		//,
	adrp	x0, .LC21	// tmp1512,
	add	x0, x0, :lo12:.LC21	//, tmp1512,
.LEHB98:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE98:
.L917:
	adrp	x0, :got:__stack_chk_guard	// tmp1966,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1966,
	ldr	x2, [sp, 3160]	// tmp2502, D.86915
	ldr	x1, [x0]	// tmp2503,
	subs	x2, x2, x1	// tmp2502, tmp2503
	mov	x1, 0	// tmp2503
	bne	.L849		//,
	adrp	x0, .LC21	// tmp1968,
	add	x0, x0, :lo12:.LC21	//, tmp1968,
.LEHB99:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE99:
.L913:
	adrp	x0, :got:__stack_chk_guard	// tmp1926,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1926,
	ldr	x2, [sp, 3160]	// tmp2498, D.86915
	ldr	x1, [x0]	// tmp2499,
	subs	x2, x2, x1	// tmp2498, tmp2499
	mov	x1, 0	// tmp2499
	bne	.L849		//,
	adrp	x0, .LC21	// tmp1928,
	add	x0, x0, :lo12:.LC21	//, tmp1928,
.LEHB100:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE100:
.L662:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x19, x0	// tmp2173, tmp2452
.L630:
	mov	x0, x23	//, tmp2226
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	adrp	x0, :got:__stack_chk_guard	// tmp2193,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp2193,
	ldr	x2, [sp, 3160]	// tmp2504, D.86915
	ldr	x1, [x0]	// tmp2505,
	subs	x2, x2, x1	// tmp2504, tmp2505
	mov	x1, 0	// tmp2505
	beq	.L637		//,
.L849:
// terminal.cpp:84: }
	bl	__stack_chk_fail		//
.L906:
// /usr/include/c++/13/bits/basic_string.h:400: 	  __throw_length_error(__N(__s));
	adrp	x0, :got:__stack_chk_guard	// tmp1590,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1590,
	ldr	x2, [sp, 3160]	// tmp2494, D.86915
	ldr	x1, [x0]	// tmp2495,
	subs	x2, x2, x1	// tmp2494, tmp2495
	mov	x1, 0	// tmp2495
	bne	.L849		//,
	adrp	x0, .LC21	// tmp1592,
	add	x0, x0, :lo12:.LC21	//, tmp1592,
.LEHB101:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE101:
.L882:
	adrp	x0, :got:__stack_chk_guard	// tmp1297,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1297,
	ldr	x2, [sp, 3160]	// tmp2472, D.86915
	ldr	x1, [x0]	// tmp2473,
	subs	x2, x2, x1	// tmp2472, tmp2473
	mov	x1, 0	// tmp2473
	bne	.L849		//,
	adrp	x0, .LC21	// tmp1299,
	add	x0, x0, :lo12:.LC21	//, tmp1299,
.LEHB102:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE102:
.L915:
	adrp	x0, :got:__stack_chk_guard	// tmp1948,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1948,
	ldr	x2, [sp, 3160]	// tmp2500, D.86915
	ldr	x1, [x0]	// tmp2501,
	subs	x2, x2, x1	// tmp2500, tmp2501
	mov	x1, 0	// tmp2501
	bne	.L849		//,
	adrp	x0, .LC21	// tmp1950,
	add	x0, x0, :lo12:.LC21	//, tmp1950,
.LEHB103:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE103:
.L730:
.L839:
// terminal.cpp:73:         "Inicial afectada: " + std::to_string(stats.affected) + "/" + std::to_string(initial_trees) + " (" + percent(stats.affected, initial_trees) + ")",
	mov	x20, x0	// tmp2056, tmp2416
	mov	x19, 4	// _65,
.L467:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	ldr	x0, [sp, 360]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L463:
	ldr	x0, [sp, 352]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L460:
	ldr	x0, [sp, 520]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L453:
	ldr	x0, [sp, 344]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L449:
	ldr	x0, [sp, 336]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L446:
	ldr	x0, [sp, 512]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L439:
	ldr	x0, [sp, 328]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L435:
	ldr	x0, [sp, 320]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L432:
	ldr	x0, [sp, 504]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L425:
	ldr	x0, [sp, 496]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L419:
	ldr	x0, [sp, 312]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L410:
	ldr	x0, [sp, 304]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L406:
	ldr	x0, [sp, 296]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L403:
	ldr	x0, [sp, 488]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L396:
	ldr	x0, [sp, 480]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L390:
	ldr	x0, [sp, 288]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L381:
	ldr	x0, [sp, 280]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L377:
	ldr	x0, [sp, 272]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L374:
	ldr	x0, [sp, 472]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L367:
	ldr	x0, [sp, 464]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L361:
	ldr	x0, [sp, 264]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L352:
	ldr	x0, [sp, 256]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L348:
	ldr	x0, [sp, 248]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L345:
	ldr	x0, [sp, 456]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L338:
	ldr	x0, [sp, 448]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L332:
	ldr	x0, [sp, 240]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L325:
	ldr	x0, [sp, 232]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L318:
	ldr	x0, [sp, 376]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L311:
	ldr	x0, [sp, 224]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L308:
	ldr	x0, [sp, 440]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L301:
	ldr	x0, [sp, 216]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L297:
	ldr	x0, [sp, 24]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L294:
	ldr	x0, [sp, 432]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L276:
	ldr	x0, [sp, 16]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L232:
	ldr	x0, [sp, 208]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L229:
	ldr	x0, [sp, 424]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L222:
	ldr	x0, [sp, 416]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L216:
	ldr	x0, [sp, 184]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L213:
// terminal.cpp:84: }
	mov	x0, 11	// tmp2170,
	sub	x19, x0, x19	// tmp2169, tmp2170, _65
	add	x19, x28, x19, lsl 5	// _66, tmp2274, tmp2169,
.L629:
// terminal.cpp:84: }
	cmp	x19, x28	// _66, tmp2274
	bne	.L922		//,
	mov	x19, x20	// tmp2173, tmp2166
	b	.L630		//
.L735:
.L842:
// terminal.cpp:72:         "Agua " + std::to_string(stats.count[WATER]) + " (" + percent(stats.count[WATER], cells.size()) + ")  Vacío " + std::to_string(stats.count[EMPTY]) + " (" + percent(stats.count[EMPTY], cells.size()) + ")",
	mov	x20, x0	// tmp2089, tmp2395
	mov	x19, 5	// _65,
	b	.L410		//
.L733:
.L841:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2074, tmp2406
	mov	x19, 4	// _65,
	b	.L439		//
.L743:
	mov	x20, x0	// tmp2128, tmp2366
	mov	x19, 7	// _65,
	add	x0, sp, 1008	// tmp2267,,
	str	x0, [sp, 448]	// tmp2267, %sfp
	b	.L338		//
.L922:
// terminal.cpp:84: }
	sub	x19, x19, #32	// _66, _66,
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x0, x19	//, _66
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	b	.L629		//
.L732:
.L840:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2065, tmp2411
	mov	x19, 4	// _65,
	b	.L453		//
.L726:
.L837:
	mov	x20, x0	// tmp1599, tmp2432
	mov	x19, 3	// _65,
.L510:
	mov	x0, x24	//, tmp2262
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L506:
	ldr	x0, [sp, 32]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L503:
	ldr	x0, [sp, 64]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L496:
	ldr	x0, [sp, 200]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L492:
	ldr	x0, [sp, 192]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L489:
	ldr	x0, [sp, 408]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L482:
	ldr	x0, [sp, 528]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L476:
	ldr	x0, [sp, 368]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	b	.L467		//
.L737:
	mov	x20, x0	// tmp2098, tmp2388
	mov	x19, 5	// _65,
	add	x0, sp, 1328	// tmp2285,,
	str	x0, [sp, 480]	// tmp2285, %sfp
	b	.L396		//
.L728:
.L838:
	mov	x20, x0	// tmp2041, tmp2427
	mov	x19, 3	// _65,
	b	.L496		//
.L637:
	mov	x0, x19	//, tmp2173
.LEHB104:
	bl	_Unwind_Resume		//
.LEHE104:
.L701:
	mov	x20, x0	// tmp2053, tmp2419
	mov	x19, 3	// _65,
	b	.L476		//
.L706:
// terminal.cpp:73:         "Inicial afectada: " + std::to_string(stats.affected) + "/" + std::to_string(initial_trees) + " (" + percent(stats.affected, initial_trees) + ")",
	mov	x20, x0	// tmp2038, tmp2428
	mov	x19, 3	// _65,
	add	x0, sp, 1968	// tmp2227,,
	str	x0, [sp, 64]	// tmp2227, %sfp
	b	.L503		//
.L707:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2035, tmp2429
	mov	x19, 3	// _65,
	b	.L506		//
.L698:
// terminal.cpp:72:         "Agua " + std::to_string(stats.count[WATER]) + " (" + percent(stats.count[WATER], cells.size()) + ")  Vacío " + std::to_string(stats.count[EMPTY]) + " (" + percent(stats.count[EMPTY], cells.size()) + ")",
	mov	x20, x0	// tmp2062, tmp2412
	mov	x19, 4	// _65,
	add	x0, sp, 1712	// tmp2305,,
	str	x0, [sp, 520]	// tmp2305, %sfp
	b	.L460		//
.L699:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2059, tmp2413
	mov	x19, 4	// _65,
	b	.L463		//
.L700:
	b	.L839		//
.L696:
	mov	x20, x0	// tmp2068, tmp2408
	mov	x19, 4	// _65,
	b	.L449		//
.L692:
// terminal.cpp:72:         "Agua " + std::to_string(stats.count[WATER]) + " (" + percent(stats.count[WATER], cells.size()) + ")  Vacío " + std::to_string(stats.count[EMPTY]) + " (" + percent(stats.count[EMPTY], cells.size()) + ")",
	mov	x20, x0	// tmp2080, tmp2402
	mov	x19, 4	// _65,
	add	x0, sp, 1520	// tmp2296,,
	str	x0, [sp, 504]	// tmp2296, %sfp
	b	.L432		//
.L693:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2077, tmp2403
	mov	x19, 4	// _65,
	b	.L435		//
.L691:
	mov	x20, x0	// tmp2083, tmp2401
	mov	x19, 4	// _65,
	b	.L425		//
.L695:
// terminal.cpp:72:         "Agua " + std::to_string(stats.count[WATER]) + " (" + percent(stats.count[WATER], cells.size()) + ")  Vacío " + std::to_string(stats.count[EMPTY]) + " (" + percent(stats.count[EMPTY], cells.size()) + ")",
	mov	x20, x0	// tmp2071, tmp2407
	mov	x19, 4	// _65,
	add	x0, sp, 1616	// tmp2301,,
	str	x0, [sp, 512]	// tmp2301, %sfp
	b	.L446		//
.L676:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2128, tmp2368
	mov	x19, 7	// _65,
	b	.L338		//
.L688:
	mov	x20, x0	// tmp2092, tmp2392
	mov	x19, 5	// _65,
	b	.L406		//
.L689:
	b	.L842		//
.L678:
	mov	x20, x0	// tmp2122, tmp2370
	mov	x19, 7	// _65,
	b	.L348		//
.L663:
// terminal.cpp:65:         "Paso " + std::to_string(step) + " / " + std::to_string(options.steps),
	mov	x20, x0	// tmp2166, tmp2323
	add	x28, sp, 2568	// tmp2274,,
	mov	x19, 11	// _65,
	b	.L213		//
.L697:
	b	.L840		//
.L668:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2153, tmp2345
	mov	x19, 10	// _65,
	b	.L276		//
.L747:
.L845:
// terminal.cpp:67:         "Humedad media: " + (stats.count[TREE] ? std::to_string(stats.mean) : std::string("no aplica")),
	mov	x20, x0	// tmp2140, tmp2357
	mov	x19, 9	// _65,
	b	.L311		//
.L671:
// terminal.cpp:66:         "Viento " + wind_arrow(options) + (options.ascii ? "" : " " + options.direction) + "  " + std::to_string(options.wind),
	mov	x20, x0	// tmp2143, tmp2354
	mov	x19, 10	// _65,
	add	x0, sp, 848	// tmp2259,,
	str	x0, [sp, 440]	// tmp2259, %sfp
	b	.L308		//
.L745:
// terminal.cpp:68:         "Estados / total " + std::to_string(cells.size()),
	mov	x20, x0	// tmp2137, tmp2359
	mov	x19, 9	// _65,
	b	.L318		//
.L718:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2349,
	mov	x19, 10	// _65,
	ldr	x0, [sp, 24]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	add	x0, sp, 752	// tmp2253,,
	str	x0, [sp, 432]	// tmp2253, %sfp
	b	.L294		//
.L670:
.L846:
	mov	x20, x0	// tmp2146, tmp2353
	mov	x19, 10	// _65,
	b	.L301		//
.L713:
// terminal.cpp:84: }
	mov	x19, x0	// tmp2187, tmp2451
.L635:
	mov	x0, x21	//, <retval>
	bl	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev		//
	b	.L630		//
.L715:
// terminal.cpp:43:     const std::string directions[] = {"N", "NE", "E", "SE", "S", "SW", "W", "NW"};
	mov	x20, x0	// tmp1070, tmp2348
	mov	x19, 7	// ivtmp.737,
.L283:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	add	x0, x24, x19, lsl 5	//, tmp2262, ivtmp.737,
// terminal.cpp:51: }
	sub	x19, x19, #1	// ivtmp.737, ivtmp.737,
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
// terminal.cpp:51: }
	cmn	x19, #1	// ivtmp.737,
	bne	.L283		//,
	mov	x19, 7	// ivtmp.728,
.L281:
	add	x0, sp, 2056	// tmp2242,,
	str	x0, [sp, 32]	// tmp2242, %sfp
.L284:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	ldr	x0, [sp, 32]	// tmp2242, %sfp
	add	x0, x0, x19, lsl 5	//, tmp2242, ivtmp.728,
// terminal.cpp:51: }
	sub	x19, x19, #1	// ivtmp.728, ivtmp.728,
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
// terminal.cpp:51: }
	cmn	x19, #1	// ivtmp.728,
	bne	.L284		//,
.L847:
	mov	x19, 10	// _65,
	b	.L232		//
.L702:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2050, tmp2422
	mov	x19, 3	// _65,
	b	.L482		//
.L703:
// terminal.cpp:73:         "Inicial afectada: " + std::to_string(stats.affected) + "/" + std::to_string(initial_trees) + " (" + percent(stats.affected, initial_trees) + ")",
	mov	x20, x0	// tmp2047, tmp2423
	mov	x19, 3	// _65,
	add	x0, sp, 1872	// tmp2218,,
	str	x0, [sp, 408]	// tmp2218, %sfp
	b	.L489		//
.L724:
// terminal.cpp:43:     const std::string directions[] = {"N", "NE", "E", "SE", "S", "SW", "W", "NW"};
	mov	x20, x0	// tmp1059, tmp2333
	mov	x1, 3	// _709,
.L244:
	mov	x19, 7	// tmp1055,
	sub	x19, x19, x1	// tmp1054, tmp1055, _709
	add	x0, sp, 2056	// tmp2242,,
	str	x0, [sp, 32]	// tmp2242, %sfp
	add	x19, x0, x19, lsl 5	// _714, tmp2242, tmp1054,
.L279:
// terminal.cpp:43:     const std::string directions[] = {"N", "NE", "E", "SE", "S", "SW", "W", "NW"};
	ldr	x0, [sp, 32]	// tmp2242, %sfp
	cmp	x19, x0	// _714, tmp2242
	beq	.L847		//,
// terminal.cpp:43:     const std::string directions[] = {"N", "NE", "E", "SE", "S", "SW", "W", "NW"};
	sub	x19, x19, #32	// _714, _714,
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x0, x19	//, _714
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	b	.L279		//
.L717:
// terminal.cpp:43:     const std::string directions[] = {"N", "NE", "E", "SE", "S", "SW", "W", "NW"};
	mov	x20, x0	// tmp1059, tmp2334
	mov	x1, 2	// _709,
	b	.L244		//
.L723:
	mov	x20, x0	// tmp1059, tmp2346
	mov	x1, 1	// _709,
	b	.L244		//
.L716:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2347,
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x19, 7	// ivtmp.728,
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	add	x0, sp, 2312	//,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	b	.L281		//
.L705:
	b	.L838		//
.L719:
	mov	x20, x0	// tmp2433,
	mov	x0, x19	//, tmp2291
	mov	x19, 2	// _65,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	b	.L510		//
.L704:
	mov	x20, x0	// tmp2044, tmp2424
	mov	x19, 3	// _65,
	b	.L492		//
.L694:
	b	.L841		//
.L673:
// terminal.cpp:68:         "Estados / total " + std::to_string(cells.size()),
	mov	x20, x0	// tmp2137, tmp2360
	mov	x19, 8	// _65,
	b	.L318		//
.L744:
// terminal.cpp:69:         "Vegetación " + std::to_string(stats.count[TREE]) + " (" + percent(stats.count[TREE], cells.size()) + ")",
	mov	x20, x0	// tmp2134, tmp2362
	mov	x19, 8	// _65,
	b	.L325		//
.L674:
	mov	x20, x0	// tmp2134, tmp2363
	mov	x19, 7	// _65,
	b	.L325		//
.L675:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2131, tmp2365
	mov	x19, 7	// _65,
	b	.L332		//
.L727:
	mov	x20, x0	// tmp1599, tmp2435
	mov	x19, 1	// _65,
	b	.L510		//
.L725:
	mov	x20, x0	// tmp1599, tmp2437
	mov	x19, 0	// _65,
	b	.L510		//
.L720:
// /usr/include/c++/13/bits/stl_vector.h:369: 	_M_deallocate(_M_impl._M_start,
	mov	x19, x0	// tmp1647, tmp2441
.L537:
	ldr	x0, [x21]	// _1235, MEM[(struct _Vector_base *)information_188(D)]._M_impl.D.72768._M_start
// /usr/include/c++/13/bits/stl_vector.h:370: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	ldr	x1, [x21, 16]	// MEM[(struct _Vector_base *)information_188(D)]._M_impl.D.72768._M_end_of_storage, MEM[(struct _Vector_base *)information_188(D)]._M_impl.D.72768._M_end_of_storage
	sub	x1, x1, x0	// _1237, MEM[(struct _Vector_base *)information_188(D)]._M_impl.D.72768._M_end_of_storage, _1235
// /usr/include/c++/13/bits/stl_vector.h:389: 	if (__p)
	cbz	x0, .L538	// _1235,
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	bl	_ZdlPvm		//
.L538:
// terminal.cpp:79:         information.push_back(std::to_string(playback.delay) + " ms " +
	mov	x20, 11	// ivtmp.674,
.L539:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	add	x0, x28, x20, lsl 5	//, tmp2274, ivtmp.674,
// terminal.cpp:77:     };
	sub	x20, x20, #1	// ivtmp.674, ivtmp.674,
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
// terminal.cpp:77:     };
	cmn	x20, #1	// ivtmp.674,
	bne	.L539		//,
	mov	x20, x19	// tmp1599, tmp1647
// terminal.cpp:84: }
	mov	x19, 11	// _65,
	b	.L510		//
.L722:
// /usr/include/c++/13/bits/stl_uninitialized.h:123:       __catch(...)
	ldr	x21, [sp, 400]	// <retval>, %sfp
	ldr	x25, [sp, 536]	// __first, %sfp
	bl	__cxa_begin_catch		//
.L533:
// /usr/include/c++/13/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	cmp	x19, x25	// __cur, __first
	beq	.L923		//,
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x0, x25	//, __first
// /usr/include/c++/13/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	add	x25, x25, 32	// __first, __first,
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	b	.L533		//
.L736:
// terminal.cpp:72:         "Agua " + std::to_string(stats.count[WATER]) + " (" + percent(stats.count[WATER], cells.size()) + ")  Vacío " + std::to_string(stats.count[EMPTY]) + " (" + percent(stats.count[EMPTY], cells.size()) + ")",
	mov	x20, x0	// tmp2089, tmp2396
	mov	x19, 4	// _65,
	b	.L410		//
.L923:
// /usr/include/c++/13/bits/stl_uninitialized.h:126: 	  __throw_exception_again;
	adrp	x0, :got:__stack_chk_guard	// tmp1646,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp1646,
	ldr	x2, [sp, 3160]	// tmp2496, D.86915
	ldr	x1, [x0]	// tmp2497,
	subs	x2, x2, x1	// tmp2496, tmp2497
	mov	x1, 0	// tmp2497
	bne	.L849		//,
.LEHB105:
	bl	__cxa_rethrow		//
.LEHE105:
.L721:
// /usr/include/c++/13/bits/stl_uninitialized.h:123:       __catch(...)
	mov	x19, x0	// tmp1648, tmp2440
	bl	__cxa_end_catch		//
	b	.L537		//
.L690:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2086, tmp2398
	mov	x19, 4	// _65,
	b	.L419		//
.L708:
	b	.L837		//
.L731:
// terminal.cpp:73:         "Inicial afectada: " + std::to_string(stats.affected) + "/" + std::to_string(initial_trees) + " (" + percent(stats.affected, initial_trees) + ")",
	mov	x20, x0	// tmp2056, tmp2417
	mov	x19, 3	// _65,
	b	.L467		//
.L686:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2098, tmp2390
	mov	x19, 5	// _65,
	b	.L396		//
.L739:
// terminal.cpp:71:         "Quemado    " + std::to_string(stats.count[BURNT]) + " (" + percent(stats.count[BURNT], cells.size()) + ")",
	mov	x20, x0	// tmp2104, tmp2385
	mov	x19, 5	// _65,
	b	.L381		//
.L685:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2101, tmp2387
	mov	x19, 5	// _65,
	b	.L390		//
.L687:
// terminal.cpp:71:         "Quemado    " + std::to_string(stats.count[BURNT]) + " (" + percent(stats.count[BURNT], cells.size()) + ")",
	mov	x20, x0	// tmp2095, tmp2391
	mov	x19, 5	// _65,
	add	x0, sp, 1360	// tmp2287,,
	str	x0, [sp, 488]	// tmp2287, %sfp
	b	.L403		//
.L682:
// terminal.cpp:70:         "Ardiendo   " + std::to_string(stats.count[FIRE]) + " (" + percent(stats.count[FIRE], cells.size()) + ")",
	mov	x20, x0	// tmp2110, tmp2380
	mov	x19, 6	// _65,
	add	x0, sp, 1200	// tmp2278,,
	str	x0, [sp, 472]	// tmp2278, %sfp
	b	.L374		//
.L683:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2107, tmp2381
	mov	x19, 6	// _65,
	b	.L377		//
.L684:
.L843:
// terminal.cpp:71:         "Quemado    " + std::to_string(stats.count[BURNT]) + " (" + percent(stats.count[BURNT], cells.size()) + ")",
	mov	x20, x0	// tmp2104, tmp2384
	mov	x19, 6	// _65,
	b	.L381		//
.L711:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x19, x0	// tmp2176, tmp2447
.L632:
	mov	x0, x24	//, tmp2262
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L633:
	ldr	x0, [sp, 32]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L634:
	ldr	x0, [sp, 64]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	b	.L635		//
.L742:
// terminal.cpp:70:         "Ardiendo   " + std::to_string(stats.count[FIRE]) + " (" + percent(stats.count[FIRE], cells.size()) + ")",
	mov	x20, x0	// tmp2119, tmp2374
	mov	x19, 6	// _65,
	b	.L352		//
.L680:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2116, tmp2376
	mov	x19, 6	// _65,
	b	.L361		//
.L746:
// terminal.cpp:67:         "Humedad media: " + (stats.count[TREE] ? std::to_string(stats.mean) : std::string("no aplica")),
	mov	x20, x0	// tmp2140, tmp2355
	mov	x19, 10	// _65,
	b	.L311		//
.L672:
	b	.L845		//
.L677:
// terminal.cpp:69:         "Vegetación " + std::to_string(stats.count[TREE]) + " (" + percent(stats.count[TREE], cells.size()) + ")",
	mov	x20, x0	// tmp2125, tmp2369
	mov	x19, 7	// _65,
	add	x0, sp, 1040	// tmp2269,,
	str	x0, [sp, 456]	// tmp2269, %sfp
	b	.L345		//
.L679:
.L844:
// terminal.cpp:70:         "Ardiendo   " + std::to_string(stats.count[FIRE]) + " (" + percent(stats.count[FIRE], cells.size()) + ")",
	mov	x20, x0	// tmp2119, tmp2373
	mov	x19, 7	// _65,
	b	.L352		//
.L710:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x19, x0	// tmp2181, tmp2448
	b	.L633		//
.L709:
	mov	x19, x0	// tmp2184, tmp2449
	b	.L634		//
.L669:
	mov	x20, x0	// tmp2149, tmp2350
	mov	x19, 10	// _65,
	b	.L297		//
.L740:
	mov	x20, x0	// tmp2113, tmp2377
	mov	x19, 6	// _65,
	add	x0, sp, 1168	// tmp2275,,
	str	x0, [sp, 464]	// tmp2275, %sfp
	b	.L367		//
.L741:
	b	.L844		//
.L750:
	mov	x20, x0	// tmp2160, tmp2326
	add	x28, sp, 2568	// tmp2274,,
	add	x0, sp, 624	// tmp2236,,
	mov	x19, 11	// _65,
	str	x0, [sp, 416]	// tmp2236, %sfp
	b	.L222		//
.L681:
	mov	x20, x0	// tmp2113, tmp2379
	mov	x19, 6	// _65,
	b	.L367		//
.L667:
// terminal.cpp:66:         "Viento " + wind_arrow(options) + (options.ascii ? "" : " " + options.direction) + "  " + std::to_string(options.wind),
	mov	x20, x0	// tmp1058, tmp2332
	mov	x19, 10	// _65,
	b	.L232		//
.L712:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x19, x0	// tmp2446,
	mov	x0, x28	//, tmp2274
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	b	.L632		//
.L714:
	mov	x19, x0	// tmp2450,
	mov	x0, x28	//, tmp2274
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	b	.L635		//
.L665:
	mov	x20, x0	// tmp2160, tmp2328
	add	x28, sp, 2568	// tmp2274,,
	mov	x19, 11	// _65,
	b	.L222		//
.L749:
// terminal.cpp:66:         "Viento " + wind_arrow(options) + (options.ascii ? "" : " " + options.direction) + "  " + std::to_string(options.wind),
	mov	x20, x0	// tmp1058, tmp2330
	mov	x19, 11	// _65,
	b	.L232		//
.L666:
// terminal.cpp:65:         "Paso " + std::to_string(step) + " / " + std::to_string(options.steps),
	mov	x20, x0	// tmp2157, tmp2329
	add	x28, sp, 2568	// tmp2274,,
	add	x0, sp, 656	// tmp2243,,
	mov	x19, 11	// _65,
	str	x0, [sp, 424]	// tmp2243, %sfp
	b	.L229		//
.L664:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x20, x0	// tmp2163, tmp2325
	add	x28, sp, 2568	// tmp2274,,
	mov	x19, 11	// _65,
	b	.L216		//
.L748:
	b	.L846		//
.L734:
	mov	x20, x0	// tmp2083, tmp2399
	mov	x19, 4	// _65,
	add	x0, sp, 1488	// tmp2293,,
	str	x0, [sp, 496]	// tmp2293, %sfp
	b	.L425		//
.L729:
	mov	x20, x0	// tmp2050, tmp2420
	mov	x19, 3	// _65,
	add	x0, sp, 1840	// tmp2310,,
	str	x0, [sp, 528]	// tmp2310, %sfp
	b	.L482		//
.L738:
	b	.L843		//
	.cfi_endproc
.LFE3142:
	.section	.gcc_except_table
	.align	2
.LLSDA3142:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT3142-.LLSDATTD3142
.LLSDATTD3142:
	.byte	0x1
	.uleb128 .LLSDACSE3142-.LLSDACSB3142
.LLSDACSB3142:
	.uleb128 .LEHB5-.LFB3142
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB3142
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L662-.LFB3142
	.uleb128 0
	.uleb128 .LEHB7-.LFB3142
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L663-.LFB3142
	.uleb128 0
	.uleb128 .LEHB8-.LFB3142
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L664-.LFB3142
	.uleb128 0
	.uleb128 .LEHB9-.LFB3142
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L665-.LFB3142
	.uleb128 0
	.uleb128 .LEHB10-.LFB3142
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L666-.LFB3142
	.uleb128 0
	.uleb128 .LEHB11-.LFB3142
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L749-.LFB3142
	.uleb128 0
	.uleb128 .LEHB12-.LFB3142
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L724-.LFB3142
	.uleb128 0
	.uleb128 .LEHB13-.LFB3142
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L717-.LFB3142
	.uleb128 0
	.uleb128 .LEHB14-.LFB3142
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L723-.LFB3142
	.uleb128 0
	.uleb128 .LEHB15-.LFB3142
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L716-.LFB3142
	.uleb128 0
	.uleb128 .LEHB16-.LFB3142
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L715-.LFB3142
	.uleb128 0
	.uleb128 .LEHB17-.LFB3142
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L668-.LFB3142
	.uleb128 0
	.uleb128 .LEHB18-.LFB3142
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L669-.LFB3142
	.uleb128 0
	.uleb128 .LEHB19-.LFB3142
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L670-.LFB3142
	.uleb128 0
	.uleb128 .LEHB20-.LFB3142
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L671-.LFB3142
	.uleb128 0
	.uleb128 .LEHB21-.LFB3142
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L746-.LFB3142
	.uleb128 0
	.uleb128 .LEHB22-.LFB3142
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L672-.LFB3142
	.uleb128 0
	.uleb128 .LEHB23-.LFB3142
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L745-.LFB3142
	.uleb128 0
	.uleb128 .LEHB24-.LFB3142
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L673-.LFB3142
	.uleb128 0
	.uleb128 .LEHB25-.LFB3142
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L744-.LFB3142
	.uleb128 0
	.uleb128 .LEHB26-.LFB3142
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L674-.LFB3142
	.uleb128 0
	.uleb128 .LEHB27-.LFB3142
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L675-.LFB3142
	.uleb128 0
	.uleb128 .LEHB28-.LFB3142
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L676-.LFB3142
	.uleb128 0
	.uleb128 .LEHB29-.LFB3142
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L677-.LFB3142
	.uleb128 0
	.uleb128 .LEHB30-.LFB3142
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L678-.LFB3142
	.uleb128 0
	.uleb128 .LEHB31-.LFB3142
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L679-.LFB3142
	.uleb128 0
	.uleb128 .LEHB32-.LFB3142
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L742-.LFB3142
	.uleb128 0
	.uleb128 .LEHB33-.LFB3142
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L680-.LFB3142
	.uleb128 0
	.uleb128 .LEHB34-.LFB3142
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L681-.LFB3142
	.uleb128 0
	.uleb128 .LEHB35-.LFB3142
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L682-.LFB3142
	.uleb128 0
	.uleb128 .LEHB36-.LFB3142
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L683-.LFB3142
	.uleb128 0
	.uleb128 .LEHB37-.LFB3142
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L684-.LFB3142
	.uleb128 0
	.uleb128 .LEHB38-.LFB3142
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L739-.LFB3142
	.uleb128 0
	.uleb128 .LEHB39-.LFB3142
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L685-.LFB3142
	.uleb128 0
	.uleb128 .LEHB40-.LFB3142
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L686-.LFB3142
	.uleb128 0
	.uleb128 .LEHB41-.LFB3142
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L687-.LFB3142
	.uleb128 0
	.uleb128 .LEHB42-.LFB3142
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L688-.LFB3142
	.uleb128 0
	.uleb128 .LEHB43-.LFB3142
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L689-.LFB3142
	.uleb128 0
	.uleb128 .LEHB44-.LFB3142
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L736-.LFB3142
	.uleb128 0
	.uleb128 .LEHB45-.LFB3142
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L690-.LFB3142
	.uleb128 0
	.uleb128 .LEHB46-.LFB3142
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L691-.LFB3142
	.uleb128 0
	.uleb128 .LEHB47-.LFB3142
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L692-.LFB3142
	.uleb128 0
	.uleb128 .LEHB48-.LFB3142
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L693-.LFB3142
	.uleb128 0
	.uleb128 .LEHB49-.LFB3142
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L694-.LFB3142
	.uleb128 0
	.uleb128 .LEHB50-.LFB3142
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L695-.LFB3142
	.uleb128 0
	.uleb128 .LEHB51-.LFB3142
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L696-.LFB3142
	.uleb128 0
	.uleb128 .LEHB52-.LFB3142
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L697-.LFB3142
	.uleb128 0
	.uleb128 .LEHB53-.LFB3142
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L698-.LFB3142
	.uleb128 0
	.uleb128 .LEHB54-.LFB3142
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L699-.LFB3142
	.uleb128 0
	.uleb128 .LEHB55-.LFB3142
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L700-.LFB3142
	.uleb128 0
	.uleb128 .LEHB56-.LFB3142
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L731-.LFB3142
	.uleb128 0
	.uleb128 .LEHB57-.LFB3142
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L701-.LFB3142
	.uleb128 0
	.uleb128 .LEHB58-.LFB3142
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L702-.LFB3142
	.uleb128 0
	.uleb128 .LEHB59-.LFB3142
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L703-.LFB3142
	.uleb128 0
	.uleb128 .LEHB60-.LFB3142
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L704-.LFB3142
	.uleb128 0
	.uleb128 .LEHB61-.LFB3142
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L705-.LFB3142
	.uleb128 0
	.uleb128 .LEHB62-.LFB3142
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L706-.LFB3142
	.uleb128 0
	.uleb128 .LEHB63-.LFB3142
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L707-.LFB3142
	.uleb128 0
	.uleb128 .LEHB64-.LFB3142
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L708-.LFB3142
	.uleb128 0
	.uleb128 .LEHB65-.LFB3142
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L719-.LFB3142
	.uleb128 0
	.uleb128 .LEHB66-.LFB3142
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L727-.LFB3142
	.uleb128 0
	.uleb128 .LEHB67-.LFB3142
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L725-.LFB3142
	.uleb128 0
	.uleb128 .LEHB68-.LFB3142
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L720-.LFB3142
	.uleb128 0
	.uleb128 .LEHB69-.LFB3142
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L722-.LFB3142
	.uleb128 0x1
	.uleb128 .LEHB70-.LFB3142
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L709-.LFB3142
	.uleb128 0
	.uleb128 .LEHB71-.LFB3142
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L710-.LFB3142
	.uleb128 0
	.uleb128 .LEHB72-.LFB3142
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L711-.LFB3142
	.uleb128 0
	.uleb128 .LEHB73-.LFB3142
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L713-.LFB3142
	.uleb128 0
	.uleb128 .LEHB74-.LFB3142
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L718-.LFB3142
	.uleb128 0
	.uleb128 .LEHB75-.LFB3142
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L747-.LFB3142
	.uleb128 0
	.uleb128 .LEHB76-.LFB3142
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L667-.LFB3142
	.uleb128 0
	.uleb128 .LEHB77-.LFB3142
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L714-.LFB3142
	.uleb128 0
	.uleb128 .LEHB78-.LFB3142
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L712-.LFB3142
	.uleb128 0
	.uleb128 .LEHB79-.LFB3142
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L715-.LFB3142
	.uleb128 0
	.uleb128 .LEHB80-.LFB3142
	.uleb128 .LEHE80-.LEHB80
	.uleb128 .L662-.LFB3142
	.uleb128 0
	.uleb128 .LEHB81-.LFB3142
	.uleb128 .LEHE81-.LEHB81
	.uleb128 .L740-.LFB3142
	.uleb128 0
	.uleb128 .LEHB82-.LFB3142
	.uleb128 .LEHE82-.LEHB82
	.uleb128 .L718-.LFB3142
	.uleb128 0
	.uleb128 .LEHB83-.LFB3142
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L662-.LFB3142
	.uleb128 0
	.uleb128 .LEHB84-.LFB3142
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L750-.LFB3142
	.uleb128 0
	.uleb128 .LEHB85-.LFB3142
	.uleb128 .LEHE85-.LEHB85
	.uleb128 .L730-.LFB3142
	.uleb128 0
	.uleb128 .LEHB86-.LFB3142
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L732-.LFB3142
	.uleb128 0
	.uleb128 .LEHB87-.LFB3142
	.uleb128 .LEHE87-.LEHB87
	.uleb128 .L733-.LFB3142
	.uleb128 0
	.uleb128 .LEHB88-.LFB3142
	.uleb128 .LEHE88-.LEHB88
	.uleb128 .L726-.LFB3142
	.uleb128 0
	.uleb128 .LEHB89-.LFB3142
	.uleb128 .LEHE89-.LEHB89
	.uleb128 .L735-.LFB3142
	.uleb128 0
	.uleb128 .LEHB90-.LFB3142
	.uleb128 .LEHE90-.LEHB90
	.uleb128 .L737-.LFB3142
	.uleb128 0
	.uleb128 .LEHB91-.LFB3142
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L743-.LFB3142
	.uleb128 0
	.uleb128 .LEHB92-.LFB3142
	.uleb128 .LEHE92-.LEHB92
	.uleb128 .L728-.LFB3142
	.uleb128 0
	.uleb128 .LEHB93-.LFB3142
	.uleb128 .LEHE93-.LEHB93
	.uleb128 .L734-.LFB3142
	.uleb128 0
	.uleb128 .LEHB94-.LFB3142
	.uleb128 .LEHE94-.LEHB94
	.uleb128 .L741-.LFB3142
	.uleb128 0
	.uleb128 .LEHB95-.LFB3142
	.uleb128 .LEHE95-.LEHB95
	.uleb128 .L748-.LFB3142
	.uleb128 0
	.uleb128 .LEHB96-.LFB3142
	.uleb128 .LEHE96-.LEHB96
	.uleb128 .L719-.LFB3142
	.uleb128 0
	.uleb128 .LEHB97-.LFB3142
	.uleb128 .LEHE97-.LEHB97
	.uleb128 .L718-.LFB3142
	.uleb128 0
	.uleb128 .LEHB98-.LFB3142
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L729-.LFB3142
	.uleb128 0
	.uleb128 .LEHB99-.LFB3142
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L711-.LFB3142
	.uleb128 0
	.uleb128 .LEHB100-.LFB3142
	.uleb128 .LEHE100-.LEHB100
	.uleb128 .L709-.LFB3142
	.uleb128 0
	.uleb128 .LEHB101-.LFB3142
	.uleb128 .LEHE101-.LEHB101
	.uleb128 .L719-.LFB3142
	.uleb128 0
	.uleb128 .LEHB102-.LFB3142
	.uleb128 .LEHE102-.LEHB102
	.uleb128 .L738-.LFB3142
	.uleb128 0
	.uleb128 .LEHB103-.LFB3142
	.uleb128 .LEHE103-.LEHB103
	.uleb128 .L710-.LFB3142
	.uleb128 0
	.uleb128 .LEHB104-.LFB3142
	.uleb128 .LEHE104-.LEHB104
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB105-.LFB3142
	.uleb128 .LEHE105-.LEHB105
	.uleb128 .L721-.LFB3142
	.uleb128 0
.LLSDACSE3142:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT3142:
	.text
	.size	_ZN12_GLOBAL__N_117information_panelERKSt6vectorI4CellSaIS1_EERK7OptionsRK8Playbackmm, .-_ZN12_GLOBAL__N_117information_panelERKSt6vectorI4CellSaIS1_EERK7OptionsRK8Playbackmm
	.section	.rodata.str1.8
	.align	3
.LC67:
	.string	"\342\225\255"
	.align	3
.LC68:
	.string	"\342\225\256"
	.align	3
.LC69:
	.string	"\342\225\260"
	.align	3
.LC70:
	.string	"\342\225\257"
	.align	3
.LC71:
	.string	"\342\224\200"
	.align	3
.LC72:
	.string	"\342\224\202"
	.align	3
.LC73:
	.string	"  Incendio forestal"
	.align	3
.LC77:
	.string	"\033[0m"
	.align	3
.LC78:
	.string	"Vista: f"
	.align	3
.LC79:
	.string	" c"
	.align	3
.LC80:
	.string	"Vista recortada: filas "
	.align	3
.LC81:
	.string	".."
	.align	3
.LC82:
	.string	", columnas "
	.align	3
.LC83:
	.string	"\n"
	.align	3
.LC84:
	.string	"\033[H"
	.align	3
.LC85:
	.string	"\033[K\n"
	.align	3
.LC86:
	.string	"\033[J"
	.text
	.align	2
	.p2align 4,,11
	.global	_Z4drawRKSt6vectorI4CellSaIS0_EERK7OptionsRK8Playbackmmb
	.type	_Z4drawRKSt6vectorI4CellSaIS0_EERK7OptionsRK8Playbackmmb, %function
_Z4drawRKSt6vectorI4CellSaIS0_EERK7OptionsRK8Playbackmmb:
.LFB3164:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3164
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	stp	x19, x20, [sp, 16]	//,,
	stp	x21, x22, [sp, 32]	//,,
	stp	x23, x24, [sp, 48]	//,,
	stp	x25, x26, [sp, 64]	//,,
	stp	x27, x28, [sp, 80]	//,,
	sub	sp, sp, #1184	//,,
	.cfi_def_cfa_offset 1280
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	str	xzr, [sp, 1024]	//,
	adrp	x6, :got:__stack_chk_guard	// tmp401,
	ldr	x6, [x6, :got_lo12:__stack_chk_guard]	// tmp401,
// terminal.cpp:141:           std::size_t step, std::size_t initial_trees, bool tty) {
	mov	x26, x1	// options, tmp1049
	mov	x19, x2	// playback, tmp1050
	mov	x22, 40	// _430,
	ldr	x7, [x6]	// tmp1090,
	str	x7, [sp, 1176]	// tmp1090, D.87585
	mov	x7, 0	// tmp1090
	str	x0, [sp, 88]	// tmp1048, %sfp
	and	w0, w5, 255	// tty, tty
	str	w0, [sp, 288]	// tty, %sfp
	mov	x0, 100	// prephitmp_4,
	str	x0, [sp, 136]	// prephitmp_4, %sfp
// terminal.cpp:143:     if (tty) {
	and	w0, w5, 1	// tmp1006, tty,
	str	w0, [sp, 292]	// tmp1006, %sfp
// terminal.cpp:142:     winsize window{};
	str	xzr, [sp, 320]	//, window
// terminal.cpp:143:     if (tty) {
	tbnz	w5, 0, .L1119	// tty,,
.L925:
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	ldr	x1, [x26, 8]	// _160, MEM[(const long unsigned int &)options_95(D) + 8]
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	mov	x0, 35	// tmp410,
// terminal.cpp:150:         options.cols, std::max(std::size_t(1), (width - (side_panel ? 52 : 4)) / 2));
	ldr	x2, [sp, 136]	// prephitmp_4, %sfp
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	x1, x0	// _160,
	csel	x0, x1, x0, ls	// tmp409, _160, tmp410,
// terminal.cpp:148:     bool side_panel = width >= 2 * std::min(options.cols, std::size_t(35)) + 52;
	add	x0, x0, 26	// tmp411, tmp409,
	lsl	x0, x0, 1	// _8, tmp411,
	str	x0, [sp, 152]	// _8, %sfp
// terminal.cpp:150:         options.cols, std::max(std::size_t(1), (width - (side_panel ? 52 : 4)) / 2));
	cmp	x2, x0	// prephitmp_4, _8
	bcs	.L927		//,
// terminal.cpp:150:         options.cols, std::max(std::size_t(1), (width - (side_panel ? 52 : 4)) / 2));
	sub	x0, x2, #4	// _1092, prephitmp_4,
// /usr/include/c++/13/bits/stl_algobase.h:262:       if (__a < __b)
	cmp	x0, 3	// _1092,
	bhi	.L928		//,
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	x1, 0	// _160,
	csinc	x0, x1, xzr, eq	// _747, _160,
	str	x0, [sp, 16]	// _747, %sfp
.L929:
	ldrb	w0, [x19, 4]	// playback_107(D)->keyboard, playback_107(D)->keyboard
	add	x0, x0, 17	// iftmp.6_56, playback_107(D)->keyboard,
.L1064:
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	ldr	x5, [x26]	// _140, MEM[(const long unsigned int &)options_95(D)]
// /usr/include/c++/13/bits/stl_algobase.h:262:       if (__a < __b)
	subs	x0, x22, x0	// tmp414, _430, iftmp.6_56
	csinc	x0, x0, xzr, ne	// tmp414, tmp414,
// terminal.cpp:154:         ? std::min(options.fire_row - shown_rows / 2, options.rows - shown_rows) : 0;
	str	xzr, [sp, 160]	//, %sfp
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	x0, x5	// tmp414, _140
// terminal.cpp:153:     std::size_t first_row = options.fire_row > shown_rows / 2
	ldr	x2, [x26, 80]	// _15, options_95(D)->fire_row
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	csel	x6, x0, x5, ls	// i, tmp414, _140,
	str	x6, [sp, 120]	// i, %sfp
// terminal.cpp:153:     std::size_t first_row = options.fire_row > shown_rows / 2
	lsr	x0, x6, 1	// _16, i,
// terminal.cpp:154:         ? std::min(options.fire_row - shown_rows / 2, options.rows - shown_rows) : 0;
	cmp	x2, x0	// _15, _16
	bls	.L932		//,
// terminal.cpp:154:         ? std::min(options.fire_row - shown_rows / 2, options.rows - shown_rows) : 0;
	sub	x2, x2, x0	// tmp416, _15, _16
// terminal.cpp:154:         ? std::min(options.fire_row - shown_rows / 2, options.rows - shown_rows) : 0;
	sub	x5, x5, x6	// tmp417, _140, i
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	x2, x5	// tmp416, tmp417
	csel	x0, x2, x5, ls	// iftmp.8_57, tmp416, tmp417,
	str	x0, [sp, 160]	// iftmp.8_57, %sfp
.L932:
// terminal.cpp:155:     std::size_t first_column = options.fire_col > shown_columns / 2
	ldr	x5, [sp, 16]	// _747, %sfp
// terminal.cpp:156:         ? std::min(options.fire_col - shown_columns / 2, options.cols - shown_columns) : 0;
	str	xzr, [sp, 80]	//, %sfp
// terminal.cpp:155:     std::size_t first_column = options.fire_col > shown_columns / 2
	ldr	x0, [x26, 88]	// _19, options_95(D)->fire_col
// terminal.cpp:155:     std::size_t first_column = options.fire_col > shown_columns / 2
	lsr	x2, x5, 1	// _20, _747,
// terminal.cpp:156:         ? std::min(options.fire_col - shown_columns / 2, options.cols - shown_columns) : 0;
	cmp	x0, x2	// _19, _20
	bls	.L933		//,
// terminal.cpp:156:         ? std::min(options.fire_col - shown_columns / 2, options.cols - shown_columns) : 0;
	sub	x0, x0, x2	// tmp418, _19, _20
// terminal.cpp:156:         ? std::min(options.fire_col - shown_columns / 2, options.cols - shown_columns) : 0;
	sub	x1, x1, x5	// tmp419, _160, _747
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	x0, x1	// tmp418, tmp419
	csel	x0, x0, x1, ls	// iftmp.9_58, tmp418, tmp419,
	str	x0, [sp, 80]	// iftmp.9_58, %sfp
.L933:
// terminal.cpp:157:     auto information = information_panel(cells, options, playback, step, initial_trees);
	add	x0, sp, 336	// tmp990,,
	str	x0, [sp, 296]	// tmp990, %sfp
	mov	x8, x0	//, tmp990
	mov	x2, x19	//, playback
	ldr	x0, [sp, 88]	//, %sfp
	mov	x1, x26	//, options
.LEHB106:
	bl	_ZN12_GLOBAL__N_117information_panelERKSt6vectorI4CellSaIS1_EERK7OptionsRK8Playbackmm		//
.LEHE106:
// terminal.cpp:159:     std::string top_left = options.ascii ? "+" : "╭";
	ldrb	w0, [x26, 99]	// options_95(D)->ascii, options_95(D)->ascii
	tbz	x0, 0, .L934	// options_95(D)->ascii,,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x1, sp, 376	// tmp993,,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	mov	w2, 43	// tmp425,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	mov	x3, x1	// tmp993, tmp993
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	w2, [sp, 376]	// tmp425, MEM[(char_type &)&top_left + 16]
	mov	x2, x3	// tmp993, tmp993
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x1, 1	// _744,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x3, [sp, 360]	// tmp993, MEM[(struct _Alloc_hider *)&top_left]._M_p
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x1, [sp, 368]	// _744, top_left._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x2, x1]	//, MEM[(char_type &)_352]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x3, [sp, 168]	// tmp993, %sfp
// terminal.cpp:160:     std::string top_right = options.ascii ? "+" : "╮";
	tbnz	x0, 0, .L936	// options_95(D)->ascii,,
.L1137:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	adrp	x2, .LC68	// tmp444,
	add	x2, x2, :lo12:.LC68	// tmp443, tmp444,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x4, sp, 408	// tmp1001,,
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x1, 3	// _741,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x4, [sp, 392]	// tmp1001, MEM[(struct _Alloc_hider *)&top_right]._M_p
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	ldrh	w3, [x2]	//, MEM <char[1:3]> [(void *)"\xe2\x95\xae"]
	ldrb	w2, [x2, 2]	//, MEM <char[1:3]> [(void *)"\xe2\x95\xae"]
	strb	w2, [sp, 410]	// MEM <char[1:3]> [(void *)"\xe2\x95\xae"], MEM <char[1:3]> [(void *)&top_right + 16B]
	mov	x2, x4	// tmp1001, tmp1001
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x1, [sp, 400]	// _741, top_right._M_string_length
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	strh	w3, [sp, 408]	// MEM <char[1:3]> [(void *)"\xe2\x95\xae"], MEM <char[1:3]> [(void *)&top_right + 16B]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x2, x1]	//, MEM[(char_type &)_364]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x4, [sp, 176]	// tmp1001, %sfp
// terminal.cpp:161:     std::string bottom_left = options.ascii ? "+" : "╰";
	tbnz	x0, 0, .L938	// options_95(D)->ascii,,
.L1138:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	adrp	x2, .LC69	// tmp460,
	add	x2, x2, :lo12:.LC69	// tmp459, tmp460,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x4, sp, 440	// tmp1003,,
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x1, 3	// _865,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x4, [sp, 424]	// tmp1003, MEM[(struct _Alloc_hider *)&bottom_left]._M_p
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	ldrh	w3, [x2]	//, MEM <char[1:3]> [(void *)"\xe2\x95\xb0"]
	ldrb	w2, [x2, 2]	//, MEM <char[1:3]> [(void *)"\xe2\x95\xb0"]
	strb	w2, [sp, 442]	// MEM <char[1:3]> [(void *)"\xe2\x95\xb0"], MEM <char[1:3]> [(void *)&bottom_left + 16B]
	mov	x2, x4	// tmp1003, tmp1003
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x1, [sp, 432]	// _865, bottom_left._M_string_length
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	strh	w3, [sp, 440]	// MEM <char[1:3]> [(void *)"\xe2\x95\xb0"], MEM <char[1:3]> [(void *)&bottom_left + 16B]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x2, x1]	//, MEM[(char_type &)_376]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x4, [sp, 184]	// tmp1003, %sfp
// terminal.cpp:162:     std::string bottom_right = options.ascii ? "+" : "╯";
	tbnz	x0, 0, .L940	// options_95(D)->ascii,,
.L1139:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	adrp	x2, .LC70	// tmp476,
	add	x2, x2, :lo12:.LC70	// tmp475, tmp476,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x4, sp, 472	// tmp1004,,
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x1, 3	// _407,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x4, [sp, 456]	// tmp1004, MEM[(struct _Alloc_hider *)&bottom_right]._M_p
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	ldrh	w3, [x2]	//, MEM <char[1:3]> [(void *)"\xe2\x95\xaf"]
	ldrb	w2, [x2, 2]	//, MEM <char[1:3]> [(void *)"\xe2\x95\xaf"]
	strb	w2, [sp, 474]	// MEM <char[1:3]> [(void *)"\xe2\x95\xaf"], MEM <char[1:3]> [(void *)&bottom_right + 16B]
	mov	x2, x4	// tmp1004, tmp1004
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x1, [sp, 464]	// _407, bottom_right._M_string_length
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	strh	w3, [sp, 472]	// MEM <char[1:3]> [(void *)"\xe2\x95\xaf"], MEM <char[1:3]> [(void *)&bottom_right + 16B]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x2, x1]	//, MEM[(char_type &)_388]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x4, [sp, 192]	// tmp1004, %sfp
// terminal.cpp:163:     std::string horizontal = options.ascii ? "-" : "─";
	tbnz	x0, 0, .L942	// options_95(D)->ascii,,
.L1140:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	adrp	x2, .LC71	// tmp492,
	add	x2, x2, :lo12:.LC71	// tmp491, tmp492,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x4, sp, 504	// tmp1007,,
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x1, 3	// _866,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x4, [sp, 488]	// tmp1007, MEM[(struct _Alloc_hider *)&horizontal]._M_p
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	ldrh	w3, [x2]	//, MEM <char[1:3]> [(void *)"\xe2\x94\x80"]
	ldrb	w2, [x2, 2]	//, MEM <char[1:3]> [(void *)"\xe2\x94\x80"]
	strb	w2, [sp, 506]	// MEM <char[1:3]> [(void *)"\xe2\x94\x80"], MEM <char[1:3]> [(void *)&horizontal + 16B]
	mov	x2, x4	// tmp1007, tmp1007
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x1, [sp, 496]	// _866, horizontal._M_string_length
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	strh	w3, [sp, 504]	// MEM <char[1:3]> [(void *)"\xe2\x94\x80"], MEM <char[1:3]> [(void *)&horizontal + 16B]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x2, x1]	//, MEM[(char_type &)_400]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x4, [sp, 200]	// tmp1007, %sfp
// terminal.cpp:164:     std::string vertical = options.ascii ? "|" : "│";
	tbnz	x0, 0, .L944	// options_95(D)->ascii,,
.L1141:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	adrp	x0, .LC72	// tmp508,
	add	x0, x0, :lo12:.LC72	// tmp507, tmp508,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x3, sp, 536	// tmp1008,,
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x1, 3	// _406,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x3, [sp, 208]	// tmp1008, %sfp
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	ldrh	w2, [x0]	//, MEM <char[1:3]> [(void *)"\xe2\x94\x82"]
	ldrb	w0, [x0, 2]	//, MEM <char[1:3]> [(void *)"\xe2\x94\x82"]
	strh	w2, [sp, 536]	// MEM <char[1:3]> [(void *)"\xe2\x94\x82"], MEM <char[1:3]> [(void *)&vertical + 16B]
	mov	x2, x3	// tmp1008, tmp1008
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x3, [sp, 520]	// tmp1008, MEM[(struct _Alloc_hider *)&vertical]._M_p
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	strb	w0, [sp, 538]	// MEM <char[1:3]> [(void *)"\xe2\x94\x82"], MEM <char[1:3]> [(void *)&vertical + 16B]
.L945:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x1, [sp, 528]	// _406, vertical._M_string_length
// /usr/include/c++/13/bits/basic_ios.h:462: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	add	x19, sp, 912	// tmp997,,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x2, x1]	//, MEM[(char_type &)_412]
// /usr/include/c++/13/bits/basic_ios.h:462: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	add	x20, sp, 800	// tmp1022,,
	mov	x0, x19	//, tmp997
	str	x20, [sp, 8]	// tmp1022, %sfp
	str	x19, [sp, 248]	// tmp997, %sfp
	bl	_ZNSt8ios_baseC2Ev		//
// /usr/include/c++/13/ostream:432:       { this->init(0); }
	adrp	x2, :got:_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE	// tmp523,
	ldr	x2, [x2, :got_lo12:_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE]	// tmp523,
// /usr/include/c++/13/bits/basic_ios.h:462: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	add	x4, sp, 1328	// tmp1175,,
	movi	v0.4s, 0	// tmp521
// /usr/include/c++/13/bits/basic_ios.h:461:       : ios_base(), _M_tie(0), _M_fill(char_type()), _M_fill_init(false), 
	strh	wzr, [sp, 1136]	//, MEM <unsigned short> [(void *)&frame + 336B]
// /usr/include/c++/13/bits/basic_ios.h:462: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	adrp	x3, :got:_ZTVSt9basic_iosIcSt11char_traitsIcEE	// tmp996,
	ldr	x3, [x3, :got_lo12:_ZTVSt9basic_iosIcSt11char_traitsIcEE]	// tmp996,
	str	x3, [sp, 240]	// tmp996, %sfp
// /usr/include/c++/13/ostream:432:       { this->init(0); }
	ldp	x0, x2, [x2, 8]	// _415, _419, MEM[(const void * *)&_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE + 8B]
// /usr/include/c++/13/bits/basic_ios.h:462: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	str	q0, [x4, -184]	// tmp521, MEM <vector(2) long unsigned int> [(void *)&frame + 344B]
// /usr/include/c++/13/bits/basic_ios.h:462: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	add	x3, x3, 16	// tmp519, tmp996,
// /usr/include/c++/13/bits/basic_ios.h:462: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	str	q0, [x4, -168]	// tmp521, MEM <vector(2) long unsigned int> [(void *)&frame + 360B]
// /usr/include/c++/13/ostream:432:       { this->init(0); }
	mov	x1, 0	//,
// /usr/include/c++/13/ostream:432:       { this->init(0); }
	stp	x0, x2, [sp, 216]	// _415, _419, %sfp
	mov	x4, x0	// _415, _415
	ldr	x0, [x0, -24]	// MEM[(long int *)_415 + -24B], MEM[(long int *)_415 + -24B]
	str	x4, [sp, 800]	// _415, MEM[(struct basic_ostream *)&frame]._vptr.basic_ostream
// /usr/include/c++/13/bits/basic_ios.h:462: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	str	x3, [sp, 912]	// tmp519, MEM[(struct basic_ios *)&frame + 112B].D.65173._vptr.ios_base
// /usr/include/c++/13/bits/basic_ios.h:461:       : ios_base(), _M_tie(0), _M_fill(char_type()), _M_fill_init(false), 
	str	xzr, [sp, 1128]	//, MEM[(struct basic_ios *)&frame + 112B]._M_tie
// /usr/include/c++/13/ostream:432:       { this->init(0); }
	str	x2, [x20, x0]	// _419, MEM[(struct basic_ios *)_418].D.65173._vptr.ios_base
// /usr/include/c++/13/ostream:432:       { this->init(0); }
	add	x0, x20, x0	//, tmp1022, MEM[(long int *)_415 + -24B]
.LEHB107:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E		//
.LEHE107:
// /usr/include/c++/13/sstream:805:       : __ostream_type(), _M_stringbuf(ios_base::out)
	adrp	x1, :got:_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE	// tmp999,
	ldr	x1, [x1, :got_lo12:_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE]	// tmp999,
	str	x1, [sp, 280]	// tmp999, %sfp
// /usr/include/c++/13/streambuf:473:       _M_buf_locale(locale())
	adrp	x3, :got:_ZTVSt15basic_streambufIcSt11char_traitsIcEE	// tmp1005,
	ldr	x3, [x3, :got_lo12:_ZTVSt15basic_streambufIcSt11char_traitsIcEE]	// tmp1005,
// /usr/include/c++/13/sstream:805:       : __ostream_type(), _M_stringbuf(ios_base::out)
	add	x2, x1, 24	// tmp527, tmp999,
// /usr/include/c++/13/streambuf:471:       : _M_in_beg(0), _M_in_cur(0), _M_in_end(0),
	movi	v0.4s, 0	// tmp533
// /usr/include/c++/13/sstream:805:       : __ostream_type(), _M_stringbuf(ios_base::out)
	add	x1, x1, 64	// tmp529, tmp999,
	str	x2, [sp, 800]	// tmp527, MEM[(struct basic_ostringstream *)&frame].D.69879._vptr.basic_ostream
// /usr/include/c++/13/streambuf:473:       _M_buf_locale(locale())
	add	x2, x3, 16	// tmp531, tmp1005,
// /usr/include/c++/13/streambuf:473:       _M_buf_locale(locale())
	add	x0, sp, 864	// tmp991,,
	str	x0, [sp, 232]	// tmp991, %sfp
// /usr/include/c++/13/streambuf:473:       _M_buf_locale(locale())
	str	x3, [sp, 264]	// tmp1005, %sfp
	str	x2, [sp, 808]	// tmp531, MEM[(struct basic_streambuf *)&frame + 8B]._vptr.basic_streambuf
// /usr/include/c++/13/streambuf:471:       : _M_in_beg(0), _M_in_cur(0), _M_in_end(0),
	stp	q0, q0, [sp, 816]	// tmp533, tmp533, MEM <vector(2) long unsigned int> [(char_type * *)&frame + 16B]
	str	q0, [sp, 848]	// tmp533, MEM <vector(2) long unsigned int> [(char_type * *)&frame + 48B]
// /usr/include/c++/13/sstream:805:       : __ostream_type(), _M_stringbuf(ios_base::out)
	str	x1, [sp, 912]	// tmp529, MEM[(struct basic_ios *)&frame + 112B].D.65173._vptr.ios_base
// /usr/include/c++/13/streambuf:473:       _M_buf_locale(locale())
	bl	_ZNSt6localeC1Ev		//
// /usr/include/c++/13/sstream:134:       : __streambuf_type(), _M_mode(__mode), _M_string()
	adrp	x1, :got:_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE	// tmp1002,
	ldr	x1, [x1, :got_lo12:_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE]	// tmp1002,
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x2, sp, 896	// tmp992,,
// /usr/include/c++/13/sstream:134:       : __streambuf_type(), _M_mode(__mode), _M_string()
	mov	w0, 16	// tmp540,
	str	w0, [sp, 872]	// tmp540, MEM[(struct basic_stringbuf *)&frame + 8B]._M_mode
// /usr/include/c++/13/sstream:134:       : __streambuf_type(), _M_mode(__mode), _M_string()
	add	x0, x1, 16	// tmp538, tmp1002,
	str	x1, [sp, 256]	// tmp1002, %sfp
// /usr/include/c++/13/sstream:806:       { this->init(&_M_stringbuf); }
	add	x1, sp, 808	//,,
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x2, [sp, 272]	// tmp992, %sfp
// /usr/include/c++/13/sstream:134:       : __streambuf_type(), _M_mode(__mode), _M_string()
	str	x0, [sp, 808]	// tmp538, MEM[(struct basic_stringbuf *)&frame + 8B].D.69596._vptr.basic_streambuf
// /usr/include/c++/13/sstream:806:       { this->init(&_M_stringbuf); }
	mov	x0, x19	//, tmp997
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x2, [sp, 880]	// tmp992, MEM[(struct _Alloc_hider *)&frame + 80B]._M_p
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	xzr, [sp, 888]	//, MEM[(struct basic_string *)&frame + 80B]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 896]	//, MEM[(char_type &)&frame + 96]
.LEHB108:
// /usr/include/c++/13/sstream:806:       { this->init(&_M_stringbuf); }
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E		//
.LEHE108:
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	ldp	x1, x2, [sp, 360]	//,, top_left._M_dataplus._M_p
	ldr	x0, [sp, 8]	//, %sfp
.LEHB109:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// terminal.cpp:169:     for (std::size_t column = 0; column < shown_columns * 2; ++column) {
	ldr	x0, [sp, 16]	// _747, %sfp
// terminal.cpp:169:     for (std::size_t column = 0; column < shown_columns * 2; ++column) {
	mov	x19, 0	// column,
// terminal.cpp:169:     for (std::size_t column = 0; column < shown_columns * 2; ++column) {
	lsl	x0, x0, 1	// _552, _747,
	str	x0, [sp, 128]	// _552, %sfp
// terminal.cpp:169:     for (std::size_t column = 0; column < shown_columns * 2; ++column) {
	cbz	x0, .L952	// _552,
	.p2align 3,,7
.L950:
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	ldp	x1, x2, [sp, 488]	//,, horizontal._M_dataplus._M_p
	ldr	x0, [sp, 8]	//, %sfp
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// terminal.cpp:169:     for (std::size_t column = 0; column < shown_columns * 2; ++column) {
	ldr	x0, [sp, 128]	// _552, %sfp
// terminal.cpp:169:     for (std::size_t column = 0; column < shown_columns * 2; ++column) {
	add	x19, x19, 1	// column, column,
// terminal.cpp:169:     for (std::size_t column = 0; column < shown_columns * 2; ++column) {
	cmp	x19, x0	// column, _552
	bne	.L950		//,
.L952:
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	ldp	x1, x2, [sp, 392]	//,, top_right._M_dataplus._M_p
	ldr	x0, [sp, 8]	//, %sfp
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// terminal.cpp:173:     if (side_panel) {
	ldr	x0, [sp, 136]	// prephitmp_4, %sfp
	ldr	x1, [sp, 152]	// _8, %sfp
	cmp	x0, x1	// prephitmp_4, _8
	bcc	.L953		//,
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	ldr	x0, [sp, 8]	//, %sfp
	adrp	x1, .LC73	// tmp579,
	mov	x2, 19	//,
	add	x1, x1, :lo12:.LC73	//, tmp579,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.L953:
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	ldr	x0, [sp, 800]	// frame._vptr.basic_ostream, frame._vptr.basic_ostream
	mov	w1, 10	// tmp581,
// /usr/include/c++/13/bits/ios_base.h:756:     { return _M_width; }
	ldr	x3, [sp, 8]	// tmp1022, %sfp
	strb	w1, [sp, 314]	// tmp581, __c
	ldr	x0, [x0, -24]	// MEM[(long int *)_436 + -24B], MEM[(long int *)_436 + -24B]
	add	x0, x3, x0	// tmp585, tmp1022, MEM[(long int *)_436 + -24B]
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	ldr	x0, [x0, 16]	// MEM[(const struct ios_base *)_439]._M_width, MEM[(const struct ios_base *)_439]._M_width
	cbz	x0, .L954	// MEM[(const struct ios_base *)_439]._M_width,
// /usr/include/c++/13/ostream:573: 	return __ostream_insert(__out, &__c, 1);
	add	x1, sp, 314	//,,
	mov	x0, x3	//, tmp1022
	mov	x2, 1	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.L955:
// terminal.cpp:177:     for (std::size_t row = 0; row < shown_rows; ++row) {
	ldr	x0, [sp, 120]	// i, %sfp
// terminal.cpp:177:     for (std::size_t row = 0; row < shown_rows; ++row) {
	str	xzr, [sp, 104]	//, %sfp
// terminal.cpp:177:     for (std::size_t row = 0; row < shown_rows; ++row) {
	cbz	x0, .L1004	// i,
	adrp	x0, .LANCHOR1	// tmp1043,
// terminal.cpp:29:     const char* ascii_symbols[] = {". ", "T ", "* ", "# ", "~ "};
	add	x0, x0, :lo12:.LANCHOR1	// tmp1044, tmp1043,
	str	x0, [sp, 24]	// tmp1044, %sfp
// terminal.cpp:30:     const char* unicode_symbols[] = {"· ", "♣ ", "▓ ", "░ ", "≈ "};
	add	x0, x0, 40	// tmp1045, tmp1044,
	str	x0, [sp, 32]	// tmp1045, %sfp
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	adrp	x0, .LC77	// tmp1046,
	add	x0, x0, :lo12:.LC77	// tmp1047, tmp1046,
	str	x0, [sp, 96]	// tmp1047, %sfp
	.p2align 3,,7
.L956:
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	ldr	x0, [sp, 8]	//, %sfp
	ldr	x1, [sp, 520]	//, vertical._M_dataplus._M_p
	ldr	x2, [sp, 528]	//, vertical._M_string_length
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE109:
// terminal.cpp:179:         for (std::size_t column = 0; column < shown_columns; ++column) {
	ldr	x0, [sp, 16]	// _747, %sfp
	cbz	x0, .L999	// _747,
// terminal.cpp:31:     const char* colors[] = {"\033[37m", "\033[32m", "\033[33;1m", "\033[90m", "\033[34;1m"};
	ldr	x1, [sp, 24]	// tmp1044, %sfp
	add	x24, sp, 680	// tmp1017,,
// terminal.cpp:180:             frame << glyph(cells[index(row + first_row, column + first_column, options.cols)],
	ldr	x3, [sp, 104]	// row, %sfp
// terminal.cpp:31:     const char* colors[] = {"\033[37m", "\033[32m", "\033[33;1m", "\033[90m", "\033[34;1m"};
	add	x0, x1, 80	// tmp625, tmp1044,
	str	x0, [sp, 64]	// tmp625, %sfp
	add	x25, sp, 720	// tmp1018,,
// terminal.cpp:180:             frame << glyph(cells[index(row + first_row, column + first_column, options.cols)],
	ldr	x2, [sp, 160]	// iftmp.8_57, %sfp
	add	x23, sp, 760	// tmp1020,,
// terminal.cpp:31:     const char* colors[] = {"\033[37m", "\033[32m", "\033[33;1m", "\033[90m", "\033[34;1m"};
	ldr	x0, [x0, 32]	// tmp630,
	str	x0, [sp, 72]	// tmp630, %sfp
// terminal.cpp:30:     const char* unicode_symbols[] = {"· ", "♣ ", "▓ ", "░ ", "≈ "};
	ldr	x0, [sp, 32]	// tmp1045, %sfp
	add	x27, sp, 600	// tmp1011,,
// terminal.cpp:29:     const char* ascii_symbols[] = {". ", "T ", "* ", "# ", "~ "};
	ldr	x1, [x1, 32]	// tmp612,
// terminal.cpp:180:             frame << glyph(cells[index(row + first_row, column + first_column, options.cols)],
	add	x2, x2, x3	// _162, iftmp.8_57, row
// terminal.cpp:30:     const char* unicode_symbols[] = {"· ", "♣ ", "▓ ", "░ ", "≈ "};
	ldr	x0, [x0, 32]	// tmp621,
// terminal.cpp:179:         for (std::size_t column = 0; column < shown_columns; ++column) {
	mov	x22, 0	// column,
// terminal.cpp:29:     const char* ascii_symbols[] = {". ", "T ", "* ", "# ", "~ "};
	stp	x2, x1, [sp, 40]	// _162, tmp612, %sfp
// terminal.cpp:30:     const char* unicode_symbols[] = {"· ", "♣ ", "▓ ", "░ ", "≈ "};
	str	x0, [sp, 56]	// tmp621, %sfp
	add	x0, sp, 584	// tmp1010,,
	str	x0, [sp, 112]	// tmp1010, %sfp
	.p2align 3,,7
.L1000:
// modelo.h:21:     return row * columns + column;
	ldp	x0, x2, [sp, 72]	// tmp630, iftmp.9_58, %sfp
// terminal.cpp:31:     const char* colors[] = {"\033[37m", "\033[32m", "\033[33;1m", "\033[90m", "\033[34;1m"};
	str	x0, [x23, 32]	// tmp630, MEM[(const char *[5] *)_76]
// terminal.cpp:29:     const char* ascii_symbols[] = {". ", "T ", "* ", "# ", "~ "};
	ldr	x1, [sp, 48]	// tmp612, %sfp
	str	x1, [x24, 32]	// tmp612, ascii_symbols
// modelo.h:21:     return row * columns + column;
	ldr	x20, [x26, 8]	// options_95(D)->cols, options_95(D)->cols
// modelo.h:21:     return row * columns + column;
	ldr	x1, [sp, 40]	// _162, %sfp
// /usr/include/c++/13/bits/stl_vector.h:1148: 	return *(this->_M_impl._M_start + __n);
	ldr	x0, [sp, 88]	// cells, %sfp
// modelo.h:21:     return row * columns + column;
	madd	x20, x1, x20, x2	// tmp601, _162, options_95(D)->cols, iftmp.9_58
// terminal.cpp:181:                            options.ascii, options.color && tty);
	ldrb	w21, [x26, 100]	// _34, options_95(D)->color
// terminal.cpp:31:     const char* colors[] = {"\033[37m", "\033[32m", "\033[33;1m", "\033[90m", "\033[34;1m"};
	ldr	x1, [sp, 64]	// tmp625, %sfp
// modelo.h:21:     return row * columns + column;
	add	x20, x20, x22	// tmp602, tmp601, column
// /usr/include/c++/13/bits/stl_vector.h:1148: 	return *(this->_M_impl._M_start + __n);
	ldr	x0, [x0]	// MEM[(const struct vector *)cells_124(D)].D.74508._M_impl.D.73847._M_start, MEM[(const struct vector *)cells_124(D)].D.74508._M_impl.D.73847._M_start
// terminal.cpp:180:             frame << glyph(cells[index(row + first_row, column + first_column, options.cols)],
	tst	x21, 1	// _34,
// terminal.cpp:31:     const char* colors[] = {"\033[37m", "\033[32m", "\033[33;1m", "\033[90m", "\033[34;1m"};
	ldp	q4, q5, [x1]	// tmp628, tmp629,
// terminal.cpp:29:     const char* ascii_symbols[] = {". ", "T ", "* ", "# ", "~ "};
	ldr	x1, [sp, 24]	// tmp1044, %sfp
// /usr/include/c++/13/bits/stl_vector.h:1148: 	return *(this->_M_impl._M_start + __n);
	add	x20, x0, x20, lsl 3	// _208, MEM[(const struct vector *)cells_124(D)].D.74508._M_impl.D.73847._M_start, tmp602,
// terminal.cpp:30:     const char* unicode_symbols[] = {"· ", "♣ ", "▓ ", "░ ", "≈ "};
	ldr	x0, [sp, 32]	// tmp1045, %sfp
// terminal.cpp:31:     const char* colors[] = {"\033[37m", "\033[32m", "\033[33;1m", "\033[90m", "\033[34;1m"};
	stp	q4, q5, [x23]	// tmp628, tmp629, MEM[(const char *[5] *)_76]
// terminal.cpp:29:     const char* ascii_symbols[] = {". ", "T ", "* ", "# ", "~ "};
	ldp	q2, q3, [x1]	// tmp610, tmp611,
// terminal.cpp:30:     const char* unicode_symbols[] = {"· ", "♣ ", "▓ ", "░ ", "≈ "};
	ldp	q0, q1, [x0]	// tmp619, tmp620,
// terminal.cpp:180:             frame << glyph(cells[index(row + first_row, column + first_column, options.cols)],
	ldr	w0, [sp, 288]	//, %sfp
// terminal.cpp:181:                            options.ascii, options.color && tty);
	ldrb	w1, [x26, 99]	// _33, options_95(D)->ascii
// terminal.cpp:180:             frame << glyph(cells[index(row + first_row, column + first_column, options.cols)],
	csel	w21, w21, w0, eq	// _34, _34, tty,
// terminal.cpp:30:     const char* unicode_symbols[] = {"· ", "♣ ", "▓ ", "░ ", "≈ "};
	stp	q0, q1, [x25]	// tmp619, tmp620, unicode_symbols
	ldr	x0, [sp, 56]	// tmp621, %sfp
	str	x0, [x25, 32]	// tmp621, unicode_symbols
// terminal.cpp:29:     const char* ascii_symbols[] = {". ", "T ", "* ", "# ", "~ "};
	stp	q2, q3, [x24]	// tmp610, tmp611, ascii_symbols
// terminal.cpp:32:     std::string symbol = ascii ? ascii_symbols[cell.state] : unicode_symbols[cell.state];
	ldrb	w0, [x20, 5]	//, MEM[(const struct Cell &)_208].state
// terminal.cpp:32:     std::string symbol = ascii ? ascii_symbols[cell.state] : unicode_symbols[cell.state];
	tbz	x1, 0, .L961	// _33,,
// terminal.cpp:32:     std::string symbol = ascii ? ascii_symbols[cell.state] : unicode_symbols[cell.state];
	ldr	x28, [x24, x0, lsl 3]	// iftmp.67_447, ascii_symbols[_1111]
.L962:
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x27, [sp, 584]	// tmp1011, MEM[(struct _Alloc_hider *)&symbol]._M_p
// /usr/include/c++/13/bits/basic_string.h:645: 	if (__s == 0)
	cbz	x28, .L1120	// iftmp.67_447,
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x0, x28	//, iftmp.67_447
	bl	strlen		//
// /usr/include/c++/13/bits/basic_string.tcc:225: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	str	x0, [sp, 328]	// prephitmp_306, MEM[(long unsigned int *)_52]
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x19, x0	// prephitmp_306, tmp1055
// /usr/include/c++/13/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	x0, 15	// prephitmp_306,
	bhi	.L1121		//,
// /usr/include/c++/13/bits/basic_string.h:427: 	if (__n == 1)
	cmp	x0, 1	// prephitmp_306,
	beq	.L1122		//,
// /usr/include/c++/13/bits/char_traits.h:429: 	if (__n == 0)
	cbnz	x0, .L1123	// prephitmp_306,
.L969:
	mov	x0, x27	// prephitmp_151, tmp1011
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x19, [sp, 592]	// prephitmp_306, symbol._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x0, x19]	//, MEM[(char_type &)_470]
// terminal.cpp:33:     if (color) {
	tbz	x21, 0, .L970	// _34,,
.L1135:
// terminal.cpp:34:         return std::string(colors[cell.state]) + symbol + "\033[0m";
	ldrb	w0, [x20, 5]	// MEM[(const struct Cell &)_208].state, MEM[(const struct Cell &)_208].state
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x21, sp, 632	// tmp1013,,
	str	x21, [sp, 616]	// tmp1013, MEM[(struct _Alloc_hider *)&D.87234]._M_p
	add	x28, sp, 616	// tmp1012,,
// terminal.cpp:34:         return std::string(colors[cell.state]) + symbol + "\033[0m";
	ldr	x20, [x23, x0, lsl 3]	// _454, MEM[(const char *[5] *)_76][_453]
// /usr/include/c++/13/bits/basic_string.h:645: 	if (__s == 0)
	cbz	x20, .L1124	// _454,
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x0, x20	//, _454
	bl	strlen		//
// /usr/include/c++/13/bits/basic_string.tcc:225: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	str	x0, [sp, 328]	// prephitmp_178, MEM[(long unsigned int *)_52]
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x19, x0	// prephitmp_178, tmp1057
// /usr/include/c++/13/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	x0, 15	// prephitmp_178,
	bhi	.L1125		//,
// /usr/include/c++/13/bits/basic_string.h:427: 	if (__n == 1)
	cmp	x0, 1	// prephitmp_178,
	beq	.L1126		//,
// /usr/include/c++/13/bits/char_traits.h:429: 	if (__n == 0)
	cbnz	x0, .L1127	// prephitmp_178,
.L977:
	mov	x0, x21	// prephitmp_182, tmp1013
.L976:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x19, [sp, 624]	// prephitmp_178, D.87234._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x0, x19]	//, MEM[(char_type &)_482]
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 4611686018427387903	// tmp672,
	ldr	x1, [sp, 624]	// D.87234._M_string_length, D.87234._M_string_length
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	ldr	x2, [sp, 592]	// _456, symbol._M_string_length
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	sub	x0, x0, x1	// tmp671, tmp672, D.87234._M_string_length
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [sp, 584]	// _455, symbol._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	cmp	x2, x0	// _456, tmp671
	bhi	.L1128		//,
// /usr/include/c++/13/bits/basic_string.h:1459: 	return _M_append(__s, __n);
	mov	x0, x28	//, tmp1012
.LEHB110:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE110:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x1, x0	// _492, _485
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x19, sp, 664	// tmp1016,,
	str	x19, [sp, 648]	// tmp1016, MEM[(struct _Alloc_hider *)&D.87235]._M_p
// /usr/include/c++/13/bits/basic_string.h:1459: 	return _M_append(__s, __n);
	mov	x20, x0	// _485, tmp1059
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// MEM[(const struct basic_string *)_485]._M_string_length, MEM[(const struct basic_string *)_485]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x1], 16	// _491, MEM[(const struct basic_string *)_485]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _491, _492
	beq	.L1129		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x3, [x20, 16]	// *_485.D.36210._M_allocated_capacity, *_485.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 648]	// _491, D.87235._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x3, [sp, 664]	// *_485.D.36210._M_allocated_capacity, D.87235.D.36210._M_allocated_capacity
.L981:
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 4611686018427387903	// tmp690,
	sub	x0, x0, x2	// tmp689, tmp690, MEM[(const struct basic_string *)_485]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x1, xzr, [x20]	// _492,, *_485._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x20, 16]	//, MEM[(char_type &)_485 + 16]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x2, [sp, 656]	// MEM[(const struct basic_string *)_485]._M_string_length, D.87235._M_string_length
// /usr/include/c++/13/bits/basic_string.h:399: 	if (this->max_size() - (this->size() - __n1) < __n2)
	cmp	x0, 3	// tmp689,
	bls	.L1130		//,
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	ldr	x1, [sp, 96]	//, %sfp
	add	x20, sp, 648	// tmp1015,,
	mov	x0, x20	//, tmp1015
	mov	x2, 4	//,
.LEHB111:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm		//
.LEHE111:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x1, x0	// _511, _489
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x20, sp, 568	// tmp1009,,
	str	x20, [sp, 552]	// tmp1009, MEM[(struct _Alloc_hider *)&D.74944]._M_p
// /usr/include/c++/13/bits/basic_string.h:1474: 	return _M_append(__s, __n);
	mov	x28, x0	// _489, tmp1060
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x2, [x0, 8]	// MEM[(const struct basic_string *)_489]._M_string_length, MEM[(const struct basic_string *)_489]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [x1], 16	// _510, MEM[(const struct basic_string *)_489]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _510, _511
	beq	.L1131		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x3, [x28, 16]	// *_489.D.36210._M_allocated_capacity, *_489.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 552]	// _510, MEM[(struct basic_string *)&D.74944]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x3, [sp, 568]	// *_489.D.36210._M_allocated_capacity, MEM[(struct basic_string *)&D.74944].D.36210._M_allocated_capacity
.L985:
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	stp	x1, xzr, [x28]	// _511,, *_489._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 648]	// _503, D.87235._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x28, 16]	//, MEM[(char_type &)_489 + 16]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x2, [sp, 560]	// MEM[(const struct basic_string *)_489]._M_string_length, MEM[(struct basic_string *)&D.74944]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x19	// _503, tmp1016
	beq	.L986		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 664]	// D.87235.D.36210._M_allocated_capacity, D.87235.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.87235.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L986:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 616]	// _497, D.87234._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x21	// _497, tmp1013
	beq	.L987		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 632]	// D.87234.D.36210._M_allocated_capacity, D.87234.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.87234.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L987:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 584]	// _525, symbol._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x27	// _525, tmp1011
	beq	.L1115		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 600]	// symbol.D.36210._M_allocated_capacity, symbol.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, symbol.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1115:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [sp, 552]	// prephitmp_143, D.74944._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:1072:       { return _M_string_length; }
	ldr	x19, [sp, 560]	// prephitmp_135, D.74944._M_string_length
.L989:
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	mov	x2, x19	//, prephitmp_135
	ldr	x0, [sp, 8]	//, %sfp
.LEHB112:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE112:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 552]	// _532, D.74944._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x20	// _532, tmp1009
	beq	.L997		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 568]	// D.74944.D.36210._M_allocated_capacity, D.74944.D.36210._M_allocated_capacity
// terminal.cpp:179:         for (std::size_t column = 0; column < shown_columns; ++column) {
	add	x22, x22, 1	// column, column,
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, D.74944.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
// terminal.cpp:179:         for (std::size_t column = 0; column < shown_columns; ++column) {
	ldr	x0, [sp, 16]	// _747, %sfp
	cmp	x0, x22	// _747, column
	bne	.L1000		//,
.L999:
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	ldr	x0, [sp, 8]	//, %sfp
	ldr	x1, [sp, 520]	//, vertical._M_dataplus._M_p
	ldr	x2, [sp, 528]	//, vertical._M_string_length
.LEHB113:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// terminal.cpp:184:         if (side_panel && row < information.size()) {
	ldr	x0, [sp, 136]	// prephitmp_4, %sfp
	ldr	x1, [sp, 152]	// _8, %sfp
	cmp	x0, x1	// prephitmp_4, _8
	bcc	.L1001		//,
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ldp	x19, x0, [sp, 336]	// _218, information.D.73460._M_impl.D.72768._M_finish, information.D.73460._M_impl.D.72768._M_start
// terminal.cpp:184:         if (side_panel && row < information.size()) {
	ldr	x1, [sp, 104]	// row, %sfp
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	x0, x0, x19	// tmp751, information.D.73460._M_impl.D.72768._M_finish, _218
// terminal.cpp:184:         if (side_panel && row < information.size()) {
	cmp	x1, x0, asr 5	// row, tmp751,
	bcc	.L1132		//,
.L1001:
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	ldr	x0, [sp, 800]	// frame._vptr.basic_ostream, frame._vptr.basic_ostream
	mov	w1, 10	// tmp762,
// /usr/include/c++/13/bits/ios_base.h:756:     { return _M_width; }
	ldr	x3, [sp, 8]	// tmp1022, %sfp
	strb	w1, [sp, 315]	// tmp762, __c
	ldr	x0, [x0, -24]	// MEM[(long int *)_539 + -24B], MEM[(long int *)_539 + -24B]
	add	x0, x3, x0	// tmp766, tmp1022, MEM[(long int *)_539 + -24B]
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	ldr	x0, [x0, 16]	// MEM[(const struct ios_base *)_542]._M_width, MEM[(const struct ios_base *)_542]._M_width
	cbz	x0, .L1002	// MEM[(const struct ios_base *)_542]._M_width,
// /usr/include/c++/13/ostream:573: 	return __ostream_insert(__out, &__c, 1);
	add	x1, sp, 315	//,,
	mov	x0, x3	//, tmp1022
	mov	x2, 1	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.L1003:
// terminal.cpp:177:     for (std::size_t row = 0; row < shown_rows; ++row) {
	ldr	x0, [sp, 104]	// row, %sfp
// terminal.cpp:177:     for (std::size_t row = 0; row < shown_rows; ++row) {
	ldr	x1, [sp, 120]	// i, %sfp
// terminal.cpp:177:     for (std::size_t row = 0; row < shown_rows; ++row) {
	add	x0, x0, 1	// row, row,
	str	x0, [sp, 104]	// row, %sfp
// terminal.cpp:177:     for (std::size_t row = 0; row < shown_rows; ++row) {
	cmp	x0, x1	// row, i
	bne	.L956		//,
.L1004:
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	ldp	x1, x2, [sp, 424]	//,, bottom_left._M_dataplus._M_p
	ldr	x0, [sp, 8]	//, %sfp
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// terminal.cpp:190:     for (std::size_t column = 0; column < shown_columns * 2; ++column) {
	ldr	x0, [sp, 128]	// _552, %sfp
// terminal.cpp:190:     for (std::size_t column = 0; column < shown_columns * 2; ++column) {
	mov	x19, 0	// column,
// terminal.cpp:190:     for (std::size_t column = 0; column < shown_columns * 2; ++column) {
	cbz	x0, .L1007	// _552,
	.p2align 3,,7
.L1005:
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	ldp	x1, x2, [sp, 488]	//,, horizontal._M_dataplus._M_p
	ldr	x0, [sp, 8]	//, %sfp
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// terminal.cpp:190:     for (std::size_t column = 0; column < shown_columns * 2; ++column) {
	ldr	x0, [sp, 128]	// _552, %sfp
// terminal.cpp:190:     for (std::size_t column = 0; column < shown_columns * 2; ++column) {
	add	x19, x19, 1	// column, column,
// terminal.cpp:190:     for (std::size_t column = 0; column < shown_columns * 2; ++column) {
	cmp	x19, x0	// column, _552
	bne	.L1005		//,
.L1007:
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	ldp	x1, x2, [sp, 456]	//,, bottom_right._M_dataplus._M_p
	ldr	x0, [sp, 8]	//, %sfp
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	ldr	x3, [x0]	// _237->_vptr.basic_ostream, _237->_vptr.basic_ostream
	mov	w1, 10	// tmp777,
	strb	w1, [sp, 316]	// tmp777, __c
// /usr/include/c++/13/bits/ios_base.h:756:     { return _M_width; }
	ldr	x3, [x3, -24]	// MEM[(long int *)_547 + -24B], MEM[(long int *)_547 + -24B]
	add	x2, x0, x3	// tmp780, _237, MEM[(long int *)_547 + -24B]
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	ldr	x2, [x2, 16]	// MEM[(const struct ios_base *)_550]._M_width, MEM[(const struct ios_base *)_550]._M_width
	cbz	x2, .L1008	// MEM[(const struct ios_base *)_550]._M_width,
// /usr/include/c++/13/ostream:573: 	return __ostream_insert(__out, &__c, 1);
	add	x1, sp, 316	//,,
	mov	x2, 1	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.L1009:
// terminal.cpp:194:     if (first_row || first_column || shown_rows < options.rows || shown_columns < options.cols) {
	ldr	x1, [sp, 80]	// iftmp.9_58, %sfp
	ldr	x0, [sp, 160]	// iftmp.8_57, %sfp
	orr	x0, x0, x1	// tmp783, iftmp.8_57, iftmp.9_58
// terminal.cpp:194:     if (first_row || first_column || shown_rows < options.rows || shown_columns < options.cols) {
	cbnz	x0, .L1010	// tmp783,
// terminal.cpp:194:     if (first_row || first_column || shown_rows < options.rows || shown_columns < options.cols) {
	ldr	x0, [x26]	// options_95(D)->rows, options_95(D)->rows
	ldr	x1, [sp, 120]	// i, %sfp
	cmp	x0, x1	// options_95(D)->rows, i
	bhi	.L1010		//,
// terminal.cpp:194:     if (first_row || first_column || shown_rows < options.rows || shown_columns < options.cols) {
	ldr	x0, [x26, 8]	// options_95(D)->cols, options_95(D)->cols
	ldr	x1, [sp, 16]	// _747, %sfp
	cmp	x0, x1	// options_95(D)->cols, _747
	bls	.L1015		//,
	.p2align 3,,7
.L1010:
// terminal.cpp:195:         if (tty && width < 60) {
	ldr	x0, [sp, 136]	// prephitmp_4, %sfp
	cmp	x0, 59	// prephitmp_4,
// terminal.cpp:195:         if (tty && width < 60) {
	ldr	w0, [sp, 288]	//, %sfp
	ccmp	w0, 0, 4, ls	// tty,,,
	beq	.L1012		//,
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	ldr	x19, [sp, 8]	// tmp1022, %sfp
	adrp	x1, .LC78	// tmp792,
	mov	x2, 8	//,
	add	x1, x1, :lo12:.LC78	//, tmp792,
	mov	x0, x19	//, tmp1022
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	ldr	x21, [sp, 160]	// iftmp.8_57, %sfp
	mov	x0, x19	//, tmp1022
	mov	x1, x21	//, iftmp.8_57
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x20, .LC28	// tmp1000,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x19, x0	// _238, tmp1065
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x20, :lo12:.LC28	//, tmp1000,
	mov	x2, 1	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// terminal.cpp:196:             frame << "Vista: f" << first_row << "-" << first_row + shown_rows - 1
	ldr	x0, [sp, 120]	// i, %sfp
	sub	x1, x0, #1	// tmp797, i,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x0, x19	//, _238
	add	x1, x1, x21	//, tmp797, iftmp.8_57
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC79	// tmp800,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x19, x0	// _239, tmp1066
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC79	//, tmp800,
	mov	x2, 2	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	ldr	x21, [sp, 80]	// iftmp.9_58, %sfp
	mov	x0, x19	//, _239
	mov	x1, x21	//, iftmp.9_58
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x20, :lo12:.LC28	//, tmp1000,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x19, x0	// _240, tmp1067
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	mov	x2, 1	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// terminal.cpp:197:                   << " c" << first_column << "-" << first_column + shown_columns - 1 << '\n';
	ldr	x0, [sp, 16]	// _747, %sfp
	sub	x1, x0, #1	// tmp803, _747,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x0, x19	//, _240
	add	x1, x1, x21	//, tmp803, iftmp.9_58
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	ldr	x3, [x0]	// MEM[(struct basic_ostream *)_241]._vptr.basic_ostream, MEM[(struct basic_ostream *)_241]._vptr.basic_ostream
	mov	w1, 10	// tmp805,
	strb	w1, [sp, 317]	// tmp805, __c
// /usr/include/c++/13/bits/ios_base.h:756:     { return _M_width; }
	ldr	x3, [x3, -24]	// MEM[(long int *)_555 + -24B], MEM[(long int *)_555 + -24B]
	add	x2, x0, x3	// tmp808, _241, MEM[(long int *)_555 + -24B]
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	ldr	x2, [x2, 16]	// MEM[(const struct ios_base *)_558]._M_width, MEM[(const struct ios_base *)_558]._M_width
	cbz	x2, .L1013	// MEM[(const struct ios_base *)_558]._M_width,
// /usr/include/c++/13/ostream:573: 	return __ostream_insert(__out, &__c, 1);
	add	x1, sp, 317	//,,
	mov	x2, 1	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.L1015:
// terminal.cpp:203:     if (!side_panel) {
	ldr	x0, [sp, 136]	// prephitmp_4, %sfp
	ldr	x1, [sp, 152]	// _8, %sfp
// /usr/include/c++/13/bits/stl_iterator.h:1077:       : _M_current(__i) { }
	ldr	x22, [sp, 336]	// _247,
// terminal.cpp:203:     if (!side_panel) {
	cmp	x0, x1	// prephitmp_4, _8
	bcc	.L1016		//,
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ldr	x20, [sp, 344]	// _246, information.D.73460._M_impl.D.72768._M_finish
// /usr/include/c++/13/ostream:573: 	return __ostream_insert(__out, &__c, 1);
	add	x24, sp, 319	// tmp1039,,
	ldr	x0, [sp, 120]	// i, %sfp
// /usr/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	x21, x20, x22	// tmp827, _246, _247
	mov	w23, 10	// tmp1038,
	asr	x21, x21, 5	// _87, tmp827,
	add	x19, x22, x0, lsl 5	// ivtmp.794, _247, i,
// terminal.cpp:208:         for (std::size_t i = shown_rows; i < information.size(); ++i) {
	cmp	x21, x0	// _87, i
	bhi	.L1026		//,
	b	.L1023		//
	.p2align 2,,3
.L1133:
// /usr/include/c++/13/ostream:573: 	return __ostream_insert(__out, &__c, 1);
	mov	x1, x24	//, tmp1039
	mov	x2, 1	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// terminal.cpp:208:         for (std::size_t i = shown_rows; i < information.size(); ++i) {
	ldr	x0, [sp, 120]	// i, %sfp
// terminal.cpp:208:         for (std::size_t i = shown_rows; i < information.size(); ++i) {
	add	x19, x19, 32	// ivtmp.794, ivtmp.794,
// terminal.cpp:208:         for (std::size_t i = shown_rows; i < information.size(); ++i) {
	add	x0, x0, 1	// i, i,
	str	x0, [sp, 120]	// i, %sfp
// terminal.cpp:208:         for (std::size_t i = shown_rows; i < information.size(); ++i) {
	cmp	x21, x0	// _87, i
	bls	.L1023		//,
.L1026:
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	ldp	x1, x2, [x19]	//,, MEM[(char * *)_854]
	ldr	x0, [sp, 8]	//, %sfp
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	ldr	x2, [x0]	// _256->_vptr.basic_ostream, _256->_vptr.basic_ostream
	strb	w23, [sp, 319]	// tmp1038, __c
// /usr/include/c++/13/bits/ios_base.h:756:     { return _M_width; }
	ldr	x2, [x2, -24]	// MEM[(long int *)_579 + -24B], MEM[(long int *)_579 + -24B]
	add	x1, x0, x2	// tmp845, _256, MEM[(long int *)_579 + -24B]
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	ldr	x1, [x1, 16]	// MEM[(const struct ios_base *)_582]._M_width, MEM[(const struct ios_base *)_582]._M_width
	cbnz	x1, .L1133	// MEM[(const struct ios_base *)_582]._M_width,
// /usr/include/c++/13/ostream:574:       __out.put(__c);
	mov	w1, 10	//,
	bl	_ZNSo3putEc		//
// terminal.cpp:208:         for (std::size_t i = shown_rows; i < information.size(); ++i) {
	ldr	x0, [sp, 120]	// i, %sfp
// terminal.cpp:208:         for (std::size_t i = shown_rows; i < information.size(); ++i) {
	add	x19, x19, 32	// ivtmp.794, ivtmp.794,
// terminal.cpp:208:         for (std::size_t i = shown_rows; i < information.size(); ++i) {
	add	x0, x0, 1	// i, i,
	str	x0, [sp, 120]	// i, %sfp
// terminal.cpp:208:         for (std::size_t i = shown_rows; i < information.size(); ++i) {
	cmp	x21, x0	// _87, i
	bhi	.L1026		//,
.L1023:
// terminal.cpp:213:     if (tty) {
	ldr	w0, [sp, 292]	//, %sfp
	cbz	w0, .L1027	// tmp1006,
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	adrp	x1, .LC84	// tmp850,
	mov	x2, 3	//,
	add	x1, x1, :lo12:.LC84	//, tmp850,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE113:
// /usr/include/c++/13/streambuf:539:       pptr() const { return _M_out_cur; }
	ldr	x4, [sp, 848]	// _597, MEM[(const struct basic_streambuf *)&frame + 8B]._M_out_cur
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x25, sp, 776	// tmp1021,,
	str	x25, [sp, 760]	// tmp1021, MEM[(struct _Alloc_hider *)_76]._M_p
	add	x23, sp, 760	// tmp1020,,
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	xzr, [sp, 768]	//, MEM[(struct basic_string *)_76]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 776]	//, MEM[(char_type &)_76]
// /usr/include/c++/13/sstream:442: 	if (char_type* __pptr = this->pptr())
	cbz	x4, .L1028	// _597,
// /usr/include/c++/13/streambuf:495:       egptr() const { return _M_in_end; }
	ldr	x5, [sp, 832]	// _598, MEM[(const struct basic_streambuf *)&frame + 8B]._M_in_end
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	mov	x0, x23	//, tmp1020
// /usr/include/c++/13/streambuf:536:       pbase() const { return _M_out_beg; }
	ldr	x3, [sp, 840]	// _602, MEM[(const struct basic_streambuf *)&frame + 8B]._M_out_beg
// /usr/include/c++/13/sstream:445: 	    if (!__egptr || __pptr > __egptr)
	cmp	x5, 0	// _598,
// /usr/include/c++/13/sstream:448: 	      return __egptr; // Underlying sequence is [pbase, egptr).
	ccmp	x4, x5, 2, ne	// _597, _598,,
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	mov	x2, 0	//,
// /usr/include/c++/13/sstream:448: 	      return __egptr; // Underlying sequence is [pbase, egptr).
	csel	x4, x4, x5, hi	// _597, _597, _598,
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	mov	x1, 0	//,
	sub	x4, x4, x3	//, _597, _602
.LEHB114:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm		//
.LEHE114:
.L1030:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 760]	// pretmp_1103, MEM[(struct basic_string *)_76]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:974:       { return iterator(_M_data() + this->size()); }
	ldr	x24, [sp, 768]	// MEM[(struct basic_string *)_76]._M_string_length, MEM[(struct basic_string *)_76]._M_string_length
	mov	x19, x0	// ivtmp.782, pretmp_1103
	add	x24, x0, x24	// _265, pretmp_1103, MEM[(struct basic_string *)_76]._M_string_length
// terminal.cpp:215:         for (char character : frame.str()) {
	cmp	x24, x0	// _265, ivtmp.782
	beq	.L1032		//,
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x26, .LC85	// tmp1033,
// /usr/include/c++/13/ostream:573: 	return __ostream_insert(__out, &__c, 1);
	add	x27, sp, 328	// tmp1031,,
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	adrp	x21, :got:_ZSt4cout	// tmp1030,
	ldr	x21, [x21, :got_lo12:_ZSt4cout]	// tmp1030,
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x26, x26, :lo12:.LC85	// tmp1034, tmp1033,
	b	.L1038		//
	.p2align 2,,3
.L1034:
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	ldr	x0, [x21]	// cout._vptr.basic_ostream, cout._vptr.basic_ostream
	strb	w1, [sp, 328]	// character, MEM[(char *)_52]
// /usr/include/c++/13/bits/ios_base.h:756:     { return _M_width; }
	ldr	x0, [x0, -24]	// MEM[(long int *)_619 + -24B], MEM[(long int *)_619 + -24B]
	add	x0, x0, x21	// tmp874, MEM[(long int *)_619 + -24B], tmp1030
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	ldr	x0, [x0, 16]	// MEM[(const struct ios_base *)_622]._M_width, MEM[(const struct ios_base *)_622]._M_width
	cbz	x0, .L1036	// MEM[(const struct ios_base *)_622]._M_width,
// /usr/include/c++/13/ostream:573: 	return __ostream_insert(__out, &__c, 1);
	mov	x1, x27	//, tmp1031
	mov	x0, x21	//, tmp1030
	mov	x2, 1	//,
.LEHB115:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.L1035:
// terminal.cpp:215:         for (char character : frame.str()) {
	add	x19, x19, 1	// ivtmp.782, ivtmp.782,
	cmp	x24, x19	// _265, ivtmp.782
	beq	.L1134		//,
.L1038:
// terminal.cpp:215:         for (char character : frame.str()) {
	ldrb	w1, [x19]	// character, MEM[(char &)_325]
// terminal.cpp:216:             if (character == '\n') {
	cmp	w1, 10	// character,
	bne	.L1034		//,
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	mov	x1, x26	//, tmp1034
	mov	x0, x21	//, tmp1030
	mov	x2, 4	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE115:
// terminal.cpp:215:         for (char character : frame.str()) {
	add	x19, x19, 1	// ivtmp.782, ivtmp.782,
	cmp	x24, x19	// _265, ivtmp.782
	bne	.L1038		//,
.L1134:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 760]	// pretmp_1103, MEM[(struct basic_string *)_76]._M_dataplus._M_p
.L1032:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x25	// pretmp_1103, tmp1021
	beq	.L1039		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 776]	// MEM[(struct basic_string *)_76].D.36210._M_allocated_capacity, MEM[(struct basic_string *)_76].D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM[(struct basic_string *)_76].D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1039:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	adrp	x1, .LC86	// tmp885,
	mov	x2, 3	//,
	add	x1, x1, :lo12:.LC86	//, tmp885,
.LEHB116:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.L1040:
// terminal.cpp:227:     std::cout.flush();
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	bl	_ZNSo5flushEv		//
// /usr/include/c++/13/sstream:79:     class basic_stringbuf : public basic_streambuf<_CharT, _Traits>
	ldr	x1, [sp, 256]	// tmp1002, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 880]	// _718, MEM[(const struct basic_string *)&frame + 80B]._M_dataplus._M_p
// /usr/include/c++/13/sstream:79:     class basic_stringbuf : public basic_streambuf<_CharT, _Traits>
	add	x2, x1, 16	// tmp913, tmp1002,
// /usr/include/c++/13/sstream:851:       { }
	ldr	x1, [sp, 280]	// tmp999, %sfp
// /usr/include/c++/13/sstream:79:     class basic_stringbuf : public basic_streambuf<_CharT, _Traits>
	str	x2, [sp, 808]	// tmp913, MEM[(struct basic_stringbuf *)&frame + 8B].D.69596._vptr.basic_streambuf
// /usr/include/c++/13/sstream:851:       { }
	add	x3, x1, 24	// tmp909, tmp999,
	add	x1, x1, 64	// tmp911, tmp999,
	str	x1, [sp, 912]	// tmp911, MEM[(struct basic_ios *)&frame + 112B].D.65173._vptr.ios_base
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 272]	// tmp992, %sfp
// /usr/include/c++/13/sstream:851:       { }
	str	x3, [sp, 800]	// tmp909, frame.D.69879._vptr.basic_ostream
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _718, tmp992
	beq	.L1047		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 896]	// MEM[(struct basic_string *)&frame + 80B].D.36210._M_allocated_capacity, MEM[(struct basic_string *)&frame + 80B].D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM[(struct basic_string *)&frame + 80B].D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1047:
// /usr/include/c++/13/streambuf:205:       { }
	ldr	x0, [sp, 264]	// tmp1005, %sfp
	add	x1, x0, 16	// tmp919, tmp1005,
	str	x1, [sp, 808]	// tmp919, MEM[(struct basic_streambuf *)&frame + 8B]._vptr.basic_streambuf
	ldr	x0, [sp, 232]	//, %sfp
	bl	_ZNSt6localeD1Ev		//
// /usr/include/c++/13/ostream:95:       ~basic_ostream() { }
	ldp	x0, x4, [sp, 216]	// _415, _419, %sfp
	ldr	x3, [sp, 8]	// tmp1022, %sfp
	ldr	x2, [x0, -24]	// MEM[(long int *)_415 + -24B], MEM[(long int *)_415 + -24B]
	str	x0, [sp, 800]	// _415, MEM[(struct basic_ostream *)&frame]._vptr.basic_ostream
// /usr/include/c++/13/bits/basic_ios.h:282:       ~basic_ios() { }
	ldr	x0, [sp, 240]	// tmp996, %sfp
// /usr/include/c++/13/ostream:95:       ~basic_ostream() { }
	str	x4, [x3, x2]	// _419, MEM[(struct basic_ios *)_715].D.65173._vptr.ios_base
// /usr/include/c++/13/bits/basic_ios.h:282:       ~basic_ios() { }
	add	x1, x0, 16	// tmp925, tmp996,
	str	x1, [sp, 912]	// tmp925, MEM[(struct basic_ios *)&frame + 112B].D.65173._vptr.ios_base
	ldr	x0, [sp, 248]	//, %sfp
	bl	_ZNSt8ios_baseD2Ev		//
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 208]	// tmp1008, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 520]	// _703, vertical._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _703, tmp1008
	beq	.L1048		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 536]	// vertical.D.36210._M_allocated_capacity, vertical.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, vertical.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1048:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 200]	// tmp1007, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 488]	// _697, horizontal._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _697, tmp1007
	beq	.L1049		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 504]	// horizontal.D.36210._M_allocated_capacity, horizontal.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, horizontal.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1049:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 192]	// tmp1004, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 456]	// _691, bottom_right._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _691, tmp1004
	beq	.L1050		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 472]	// bottom_right.D.36210._M_allocated_capacity, bottom_right.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, bottom_right.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1050:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 184]	// tmp1003, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 424]	// _685, bottom_left._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _685, tmp1003
	beq	.L1051		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 440]	// bottom_left.D.36210._M_allocated_capacity, bottom_left.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, bottom_left.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1051:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 176]	// tmp1001, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 392]	// _679, top_right._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _679, tmp1001
	beq	.L1052		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 408]	// top_right.D.36210._M_allocated_capacity, top_right.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, top_right.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1052:
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	ldr	x1, [sp, 168]	// tmp993, %sfp
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 360]	// _673, top_left._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _673, tmp993
	beq	.L1053		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 376]	// top_left.D.36210._M_allocated_capacity, top_left.D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, top_left.D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
.L1053:
// /usr/include/c++/13/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	mov	x19, x22	// __first, _247
	cmp	x20, x22	// _246, _247
	beq	.L1059		//,
	.p2align 3,,7
.L1054:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	mov	x1, x19	// tmp953, __first
	ldr	x0, [x1], 16	// _733, MEM[(char * *)__first_99]
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	// _733, tmp953
	beq	.L1057		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x19, 16]	// MEM <size_type> [(union ._anon_56 *)__first_99 + 16B], MEM <size_type> [(union ._anon_56 *)__first_99 + 16B]
// /usr/include/c++/13/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	add	x19, x19, 32	// __first, __first,
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM <size_type> [(union ._anon_56 *)__first_99 + 16B],
	bl	_ZdlPvm		//
// /usr/include/c++/13/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	cmp	x20, x19	// _246, __first
	bne	.L1054		//,
.L1059:
// /usr/include/c++/13/bits/stl_vector.h:389: 	if (__p)
	cbz	x22, .L924	// _247,
// /usr/include/c++/13/bits/stl_vector.h:370: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	ldr	x1, [sp, 352]	// MEM[(struct _Vector_base *)&information]._M_impl.D.72768._M_end_of_storage, MEM[(struct _Vector_base *)&information]._M_impl.D.72768._M_end_of_storage
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x22	//, _247
	sub	x1, x1, x22	//, MEM[(struct _Vector_base *)&information]._M_impl.D.72768._M_end_of_storage, _247
	bl	_ZdlPvm		//
.L924:
// terminal.cpp:228: }
	adrp	x0, :got:__stack_chk_guard	// tmp989,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp989,
	ldr	x2, [sp, 1176]	// tmp1101, D.87585
	ldr	x1, [x0]	// tmp1102,
	subs	x2, x2, x1	// tmp1101, tmp1102
	mov	x1, 0	// tmp1102
	bne	.L1118		//,
	add	sp, sp, 1184	//,,
	.cfi_remember_state
	.cfi_def_cfa_offset 96
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
.L1123:
	.cfi_restore_state
	mov	x0, x27	// _464, tmp1011
.L966:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x19	//, prephitmp_306
	mov	x1, x28	//, iftmp.67_447
	bl	memcpy		//
// /usr/include/c++/13/bits/basic_string.tcc:251: 	_M_set_length(__dnew);
	ldr	x19, [sp, 328]	// prephitmp_306, MEM[(long unsigned int *)_52]
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x19, [sp, 592]	// prephitmp_306, symbol._M_string_length
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 584]	// prephitmp_151, symbol._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x0, x19]	//, MEM[(char_type &)_470]
// terminal.cpp:33:     if (color) {
	tbnz	x21, 0, .L1135	// _34,,
.L970:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x1, [sp, 584]	// prephitmp_143, MEM[(const struct basic_string *)&symbol]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x20, sp, 568	// tmp1009,,
	str	x20, [sp, 552]	// tmp1009, MEM[(struct _Alloc_hider *)&D.74944]._M_p
// /usr/include/c++/13/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	ldr	x19, [sp, 592]	// prephitmp_135, MEM[(const struct basic_string *)&symbol]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x1, x27	// prephitmp_143, tmp1011
	beq	.L1136		//,
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [sp, 600]	// MEM[(struct basic_string &)&symbol].D.36210._M_allocated_capacity, MEM[(struct basic_string &)&symbol].D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x1, [sp, 552]	// prephitmp_143, MEM[(struct basic_string *)&D.74944]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x19, [sp, 560]	// prephitmp_135, MEM[(struct basic_string *)&D.74944]._M_string_length
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x0, [sp, 568]	// MEM[(struct basic_string &)&symbol].D.36210._M_allocated_capacity, MEM[(struct basic_string *)&D.74944].D.36210._M_allocated_capacity
	b	.L989		//
	.p2align 2,,3
.L1127:
	mov	x0, x21	// _476, tmp1013
.L974:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x19	//, prephitmp_178
	mov	x1, x20	//, _454
	bl	memcpy		//
// /usr/include/c++/13/bits/basic_string.tcc:251: 	_M_set_length(__dnew);
	ldr	x19, [sp, 328]	// prephitmp_178, MEM[(long unsigned int *)_52]
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 616]	// prephitmp_182, D.87234._M_dataplus._M_p
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	b	.L976		//
	.p2align 2,,3
.L961:
// terminal.cpp:32:     std::string symbol = ascii ? ascii_symbols[cell.state] : unicode_symbols[cell.state];
	ldr	x28, [x25, x0, lsl 3]	// iftmp.67_447, unicode_symbols[_1111]
	b	.L962		//
	.p2align 2,,3
.L1122:
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	ldrb	w0, [x28]	// _467, MEM[(const char_type &)iftmp.67_451]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	w0, [sp, 600]	// _467, MEM[(char_type &)&symbol + 16]
// /usr/include/c++/13/bits/char_traits.h:359:       }
	b	.L969		//
	.p2align 2,,3
.L1121:
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	ldr	x0, [sp, 112]	//, %sfp
	add	x1, sp, 328	//,,
	mov	x2, 0	//,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm		//
.LEHE116:
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [sp, 328]	// MEM[(long unsigned int *)_52], MEM[(long unsigned int *)_52]
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 584]	// _464, symbol._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 600]	// MEM[(long unsigned int *)_52], symbol.D.36210._M_allocated_capacity
	b	.L966		//
	.p2align 2,,3
.L997:
// terminal.cpp:179:         for (std::size_t column = 0; column < shown_columns; ++column) {
	ldr	x0, [sp, 16]	// _747, %sfp
// terminal.cpp:179:         for (std::size_t column = 0; column < shown_columns; ++column) {
	add	x22, x22, 1	// column, column,
// terminal.cpp:179:         for (std::size_t column = 0; column < shown_columns; ++column) {
	cmp	x22, x0	// column, _747
	bne	.L1000		//,
	b	.L999		//
	.p2align 2,,3
.L1126:
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	ldrb	w0, [x20]	// _479, MEM[(const char_type &)_454]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	w0, [sp, 632]	// _479, MEM[(char_type &)&D.87234 + 16]
// /usr/include/c++/13/bits/char_traits.h:359:       }
	b	.L977		//
	.p2align 2,,3
.L1125:
// /usr/include/c++/13/bits/basic_string.tcc:229: 	    _M_data(_M_create(__dnew, size_type(0)));
	add	x1, sp, 328	//,,
	mov	x0, x28	//, tmp1012
	mov	x2, 0	//,
.LEHB117:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm		//
.LEHE117:
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [sp, 328]	// MEM[(long unsigned int *)_52], MEM[(long unsigned int *)_52]
// /usr/include/c++/13/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	str	x0, [sp, 616]	// _476, D.87234._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	str	x1, [sp, 632]	// MEM[(long unsigned int *)_52], D.87234.D.36210._M_allocated_capacity
	b	.L974		//
	.p2align 2,,3
.L1136:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x1, x27	//, tmp1011
	add	x2, x19, 1	//, prephitmp_135,
	mov	x0, x20	//, tmp1009
	bl	memcpy		//
	mov	x1, x20	// prephitmp_143, tmp1009
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x19, [sp, 560]	// prephitmp_135, MEM[(struct basic_string *)&D.74944]._M_string_length
	b	.L989		//
	.p2align 2,,3
.L1131:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_489]._M_string_length,
	mov	x0, x20	//, tmp1009
	str	x1, [sp, 144]	// _511, %sfp
	bl	memcpy		//
	ldr	x2, [x28, 8]	// MEM[(const struct basic_string *)_489]._M_string_length, MEM[(const struct basic_string *)_489]._M_string_length
	ldr	x1, [sp, 144]	// _511, %sfp
	b	.L985		//
	.p2align 2,,3
.L1129:
	add	x2, x2, 1	//, MEM[(const struct basic_string *)_485]._M_string_length,
	mov	x0, x19	//, tmp1016
	str	x1, [sp, 144]	// _492, %sfp
	bl	memcpy		//
	ldr	x2, [x20, 8]	// MEM[(const struct basic_string *)_485]._M_string_length, MEM[(const struct basic_string *)_485]._M_string_length
	ldr	x1, [sp, 144]	// _492, %sfp
	b	.L981		//
	.p2align 2,,3
.L1002:
	mov	x0, x3	//, tmp1022
.LEHB118:
// /usr/include/c++/13/ostream:574:       __out.put(__c);
	bl	_ZNSo3putEc		//
// /usr/include/c++/13/ostream:575:       return __out;
	b	.L1003		//
	.p2align 2,,3
.L1132:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	ldr	x20, [sp, 8]	// tmp1022, %sfp
	adrp	x1, .LC48	// tmp756,
	mov	x2, 2	//,
	add	x1, x1, :lo12:.LC48	//, tmp756,
	mov	x0, x20	//, tmp1022
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/bits/stl_vector.h:1129: 	return *(this->_M_impl._M_start + __n);
	ldr	x0, [sp, 104]	// row, %sfp
	lsl	x1, x0, 5	// tmp758, row,
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	mov	x0, x20	//, tmp1022
// /usr/include/c++/13/bits/stl_vector.h:1129: 	return *(this->_M_impl._M_start + __n);
	add	x2, x19, x1	// _227, _218, tmp758
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	ldr	x1, [x19, x1]	//, MEM[(const struct basic_string *)_227]._M_dataplus._M_p
	ldr	x2, [x2, 8]	//, MEM[(const struct basic_string *)_227]._M_string_length
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE118:
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	b	.L1001		//
	.p2align 2,,3
.L1036:
// /usr/include/c++/13/ostream:574:       __out.put(__c);
	mov	x0, x21	//, tmp1030
.LEHB119:
	bl	_ZNSo3putEc		//
.LEHE119:
// /usr/include/c++/13/ostream:575:       return __out;
	b	.L1035		//
.L934:
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	adrp	x2, .LC67	// tmp431,
	add	x2, x2, :lo12:.LC67	// tmp430, tmp431,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x4, sp, 376	// tmp993,,
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x1, 3	// _744,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x4, [sp, 360]	// tmp993, MEM[(struct _Alloc_hider *)&top_left]._M_p
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	ldrh	w3, [x2]	//, MEM <char[1:3]> [(void *)"\xe2\x95\xad"]
	ldrb	w2, [x2, 2]	//, MEM <char[1:3]> [(void *)"\xe2\x95\xad"]
	strb	w2, [sp, 378]	// MEM <char[1:3]> [(void *)"\xe2\x95\xad"], MEM <char[1:3]> [(void *)&top_left + 16B]
	mov	x2, x4	// tmp993, tmp993
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x1, [sp, 368]	// _744, top_left._M_string_length
// /usr/include/c++/13/bits/char_traits.h:435: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	strh	w3, [sp, 376]	// MEM <char[1:3]> [(void *)"\xe2\x95\xad"], MEM <char[1:3]> [(void *)&top_left + 16B]
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x2, x1]	//, MEM[(char_type &)_352]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x4, [sp, 168]	// tmp993, %sfp
// terminal.cpp:160:     std::string top_right = options.ascii ? "+" : "╮";
	tbz	x0, 0, .L1137	// options_95(D)->ascii,,
.L936:
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x1, sp, 408	// tmp1001,,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	mov	w2, 43	// tmp451,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	mov	x3, x1	// tmp1001, tmp1001
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	w2, [sp, 408]	// tmp451, MEM[(char_type &)&top_right + 16]
	mov	x2, x3	// tmp1001, tmp1001
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x1, 1	// _741,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x3, [sp, 392]	// tmp1001, MEM[(struct _Alloc_hider *)&top_right]._M_p
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x1, [sp, 400]	// _741, top_right._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x2, x1]	//, MEM[(char_type &)_364]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x3, [sp, 176]	// tmp1001, %sfp
// terminal.cpp:161:     std::string bottom_left = options.ascii ? "+" : "╰";
	tbz	x0, 0, .L1138	// options_95(D)->ascii,,
.L938:
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x1, sp, 440	// tmp1003,,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	mov	w2, 43	// tmp467,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	mov	x3, x1	// tmp1003, tmp1003
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	w2, [sp, 440]	// tmp467, MEM[(char_type &)&bottom_left + 16]
	mov	x2, x3	// tmp1003, tmp1003
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x1, 1	// _865,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x3, [sp, 424]	// tmp1003, MEM[(struct _Alloc_hider *)&bottom_left]._M_p
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x1, [sp, 432]	// _865, bottom_left._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x2, x1]	//, MEM[(char_type &)_376]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x3, [sp, 184]	// tmp1003, %sfp
// terminal.cpp:162:     std::string bottom_right = options.ascii ? "+" : "╯";
	tbz	x0, 0, .L1139	// options_95(D)->ascii,,
.L940:
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x1, sp, 472	// tmp1004,,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	mov	w2, 43	// tmp483,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	mov	x3, x1	// tmp1004, tmp1004
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	w2, [sp, 472]	// tmp483, MEM[(char_type &)&bottom_right + 16]
	mov	x2, x3	// tmp1004, tmp1004
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x1, 1	// _407,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x3, [sp, 456]	// tmp1004, MEM[(struct _Alloc_hider *)&bottom_right]._M_p
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x1, [sp, 464]	// _407, bottom_right._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x2, x1]	//, MEM[(char_type &)_388]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x3, [sp, 192]	// tmp1004, %sfp
// terminal.cpp:163:     std::string horizontal = options.ascii ? "-" : "─";
	tbz	x0, 0, .L1140	// options_95(D)->ascii,,
.L942:
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x1, sp, 504	// tmp1007,,
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	mov	w2, 45	// tmp499,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	mov	x3, x1	// tmp1007, tmp1007
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	w2, [sp, 504]	// tmp499, MEM[(char_type &)&horizontal + 16]
	mov	x2, x3	// tmp1007, tmp1007
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x1, 1	// _866,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x3, [sp, 488]	// tmp1007, MEM[(struct _Alloc_hider *)&horizontal]._M_p
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	x1, [sp, 496]	// _866, horizontal._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [x2, x1]	//, MEM[(char_type &)_400]
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x3, [sp, 200]	// tmp1007, %sfp
// terminal.cpp:164:     std::string vertical = options.ascii ? "|" : "│";
	tbz	x0, 0, .L1141	// options_95(D)->ascii,,
.L944:
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x0, sp, 536	// tmp1008,,
// /usr/include/c++/13/bits/char_traits.h:399: 	return __builtin_strlen(__s);
	mov	x1, 1	// _406,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	mov	x2, x0	// tmp1008, tmp1008
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	mov	w0, 124	// tmp515,
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	str	x2, [sp, 208]	// tmp1008, %sfp
	str	x2, [sp, 520]	// tmp1008, MEM[(struct _Alloc_hider *)&vertical]._M_p
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	w0, [sp, 536]	// tmp515, MEM[(char_type &)&vertical + 16]
// /usr/include/c++/13/bits/char_traits.h:359:       }
	b	.L945		//
.L954:
	mov	x0, x3	//, tmp1022
.LEHB120:
// /usr/include/c++/13/ostream:574:       __out.put(__c);
	bl	_ZNSo3putEc		//
.LEHE120:
// /usr/include/c++/13/ostream:575:       return __out;
	b	.L955		//
.L927:
// terminal.cpp:150:         options.cols, std::max(std::size_t(1), (width - (side_panel ? 52 : 4)) / 2));
	sub	x2, x2, #52	// _9, prephitmp_4,
// terminal.cpp:152:         options.rows, std::max(std::size_t(1), height - (side_panel ? 5 : (playback.keyboard ? 18 : 17))));
	mov	x0, 5	// iftmp.6_56,
// /usr/include/c++/13/bits/stl_algobase.h:264:       return __a;
	cmp	x2, 3	// _9,
	lsr	x2, x2, 1	// tmp1025, _9,
	csinc	x5, x2, xzr, hi	// _10, tmp1025,
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	x1, x5	// _160, _10
	csel	x2, x1, x5, ls	// _747, _160, _10,
	str	x2, [sp, 16]	// _747, %sfp
	b	.L1064		//
	.p2align 2,,3
.L1057:
// /usr/include/c++/13/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	add	x19, x19, 32	// __first, __first,
// /usr/include/c++/13/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	cmp	x19, x20	// __first, _246
	bne	.L1054		//,
	b	.L1059		//
.L1027:
// /usr/include/c++/13/streambuf:539:       pptr() const { return _M_out_cur; }
	ldr	x4, [sp, 848]	// _644, MEM[(const struct basic_streambuf *)&frame + 8B]._M_out_cur
// /usr/include/c++/13/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	add	x25, sp, 776	// tmp1021,,
	str	x25, [sp, 760]	// tmp1021, MEM[(struct _Alloc_hider *)_76]._M_p
	add	x23, sp, 760	// tmp1020,,
// /usr/include/c++/13/bits/basic_string.h:218:       { _M_string_length = __length; }
	str	xzr, [sp, 768]	//, MEM[(struct basic_string *)_76]._M_string_length
// /usr/include/c++/13/bits/char_traits.h:358: 	__c1 = __c2;
	strb	wzr, [sp, 776]	//, MEM[(char_type &)_76]
// /usr/include/c++/13/sstream:442: 	if (char_type* __pptr = this->pptr())
	cbz	x4, .L1041	// _644,
// /usr/include/c++/13/streambuf:495:       egptr() const { return _M_in_end; }
	ldr	x5, [sp, 832]	// _645, MEM[(const struct basic_streambuf *)&frame + 8B]._M_in_end
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	mov	x0, x23	//, tmp1020
// /usr/include/c++/13/streambuf:536:       pbase() const { return _M_out_beg; }
	ldr	x3, [sp, 840]	// _649, MEM[(const struct basic_streambuf *)&frame + 8B]._M_out_beg
// /usr/include/c++/13/sstream:445: 	    if (!__egptr || __pptr > __egptr)
	cmp	x5, 0	// _645,
// /usr/include/c++/13/sstream:448: 	      return __egptr; // Underlying sequence is [pbase, egptr).
	ccmp	x4, x5, 2, ne	// _644, _645,,
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	mov	x2, 0	//,
// /usr/include/c++/13/sstream:448: 	      return __egptr; // Underlying sequence is [pbase, egptr).
	csel	x4, x4, x5, hi	// _644, _644, _645,
// /usr/include/c++/13/bits/basic_string.h:2208: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	mov	x1, 0	//,
	sub	x4, x4, x3	//, _644, _649
.LEHB121:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm		//
.LEHE121:
.L1043:
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	ldr	x1, [sp, 760]	//, MEM[(struct basic_string *)_76]._M_dataplus._M_p
	ldr	x2, [sp, 768]	//, MEM[(struct basic_string *)_76]._M_string_length
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
.LEHB122:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.LEHE122:
// /usr/include/c++/13/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	ldr	x0, [sp, 760]	// _658, MEM[(struct basic_string *)_76]._M_dataplus._M_p
// /usr/include/c++/13/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmp	x0, x25	// _658, tmp1021
	beq	.L1040		//,
// /usr/include/c++/13/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [sp, 776]	// MEM[(struct basic_string *)_76].D.36210._M_allocated_capacity, MEM[(struct basic_string *)_76].D.36210._M_allocated_capacity
// /usr/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	//, MEM[(struct basic_string *)_76].D.36210._M_allocated_capacity,
	bl	_ZdlPvm		//
	b	.L1040		//
.L1008:
.LEHB123:
// /usr/include/c++/13/ostream:574:       __out.put(__c);
	bl	_ZNSo3putEc		//
// /usr/include/c++/13/ostream:575:       return __out;
	b	.L1009		//
.L1016:
// /usr/include/c++/13/bits/stl_iterator.h:1077:       : _M_current(__i) { }
	ldr	x20, [sp, 344]	// _246, MEM[(struct basic_string * const &)&information + 8]
// terminal.cpp:204:         for (const auto& line : information) {
	cmp	x20, x22	// _246, _247
	beq	.L1023		//,
	mov	x19, x22	// ivtmp.788, _247
// /usr/include/c++/13/ostream:573: 	return __ostream_insert(__out, &__c, 1);
	add	x23, sp, 318	// tmp1036,,
	mov	w21, 10	// tmp1035,
	b	.L1022		//
	.p2align 2,,3
.L1142:
	mov	x1, x23	//, tmp1036
	mov	x2, 1	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
.L1021:
// terminal.cpp:204:         for (const auto& line : information) {
	add	x19, x19, 32	// ivtmp.788, ivtmp.788,
	cmp	x20, x19	// _246, ivtmp.788
	beq	.L1023		//,
.L1022:
// /usr/include/c++/13/bits/basic_string.h:4037:       return __ostream_insert(__os, __str.data(), __str.size());
	ldp	x1, x2, [x19]	//,, MEM[(char * *)_892]
	ldr	x0, [sp, 8]	//, %sfp
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	ldr	x2, [x0]	// _251->_vptr.basic_ostream, _251->_vptr.basic_ostream
	strb	w21, [sp, 318]	// tmp1035, __c
// /usr/include/c++/13/bits/ios_base.h:756:     { return _M_width; }
	ldr	x2, [x2, -24]	// MEM[(long int *)_571 + -24B], MEM[(long int *)_571 + -24B]
	add	x1, x0, x2	// tmp835, _251, MEM[(long int *)_571 + -24B]
// /usr/include/c++/13/ostream:572:       if (__out.width() != 0)
	ldr	x1, [x1, 16]	// MEM[(const struct ios_base *)_574]._M_width, MEM[(const struct ios_base *)_574]._M_width
	cbnz	x1, .L1142	// MEM[(const struct ios_base *)_574]._M_width,
// /usr/include/c++/13/ostream:574:       __out.put(__c);
	mov	w1, 10	//,
	bl	_ZNSo3putEc		//
// /usr/include/c++/13/ostream:575:       return __out;
	b	.L1021		//
.L1012:
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	ldr	x19, [sp, 8]	// tmp1022, %sfp
	adrp	x1, .LC80	// tmp812,
	mov	x2, 23	//,
	add	x1, x1, :lo12:.LC80	//, tmp812,
	mov	x0, x19	//, tmp1022
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	ldr	x21, [sp, 160]	// iftmp.8_57, %sfp
	mov	x0, x19	//, tmp1022
	mov	x1, x21	//, iftmp.8_57
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x20, .LC81	// tmp1014,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x19, x0	// _242, tmp1069
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x20, :lo12:.LC81	//, tmp1014,
	mov	x2, 2	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// terminal.cpp:199:             frame << "Vista recortada: filas " << first_row << ".." << first_row + shown_rows - 1
	ldr	x0, [sp, 120]	// i, %sfp
	sub	x1, x0, #1	// tmp817, i,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x0, x19	//, _242
	add	x1, x1, x21	//, tmp817, iftmp.8_57
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC82	// tmp820,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x19, x0	// _243, tmp1070
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x1, :lo12:.LC82	//, tmp820,
	mov	x2, 11	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	ldr	x21, [sp, 80]	// iftmp.9_58, %sfp
	mov	x0, x19	//, _243
	mov	x1, x21	//, iftmp.9_58
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	add	x1, x20, :lo12:.LC81	//, tmp1014,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x19, x0	// _244, tmp1071
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	mov	x2, 2	//,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
// terminal.cpp:200:                   << ", columnas " << first_column << ".." << first_column + shown_columns - 1 << "\n";
	ldr	x0, [sp, 16]	// _747, %sfp
	sub	x1, x0, #1	// tmp823, _747,
// /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	mov	x0, x19	//, _244
	add	x1, x1, x21	//, tmp823, iftmp.9_58
	bl	_ZNSo9_M_insertImEERSoT_		//
// /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	adrp	x1, .LC83	// tmp826,
	mov	x2, 1	//,
	add	x1, x1, :lo12:.LC83	//, tmp826,
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		//
	b	.L1015		//
.L1119:
// terminal.cpp:144:         ioctl(STDOUT_FILENO, TIOCGWINSZ, &window);
	add	x2, sp, 320	//,,
	mov	x1, 21523	//,
	mov	w0, 1	//,
	stp	x3, x4, [sp, 8]	// step, initial_trees, %sfp
	bl	ioctl		//
// terminal.cpp:146:     std::size_t width = window.ws_col ? window.ws_col : 100;
	ldrh	w1, [sp, 322]	// pretmp_565, window.ws_col
	ldr	w2, [sp, 136]	//, %sfp
// terminal.cpp:147:     std::size_t height = window.ws_row ? window.ws_row : 40;
	ldrh	w0, [sp, 320]	// pretmp_567, window.ws_row
// terminal.cpp:146:     std::size_t width = window.ws_col ? window.ws_col : 100;
	cmp	w1, 0	// pretmp_565,
	csel	w1, w2, w1, eq	// prephitmp_4, tmp1118, pretmp_565,
	str	x1, [sp, 136]	// prephitmp_4, %sfp
// terminal.cpp:147:     std::size_t height = window.ws_row ? window.ws_row : 40;
	ldp	x3, x4, [sp, 8]	// step, initial_trees, %sfp
	cbz	w0, .L925	// pretmp_567,
	uxtw	x22, w0	// _430, pretmp_567
	b	.L925		//
.L1013:
// /usr/include/c++/13/ostream:574:       __out.put(__c);
	bl	_ZNSo3putEc		//
.LEHE123:
	b	.L1015		//
.L1041:
// /usr/include/c++/13/bits/basic_string.h:1608: 	this->_M_assign(__str);
	add	x1, sp, 880	//,,
	mov	x0, x23	//, tmp1020
.LEHB124:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_		//
.LEHE124:
// /usr/include/c++/13/bits/basic_string.h:814: 	return this->assign(__str);
	b	.L1043		//
.L1028:
// /usr/include/c++/13/bits/basic_string.h:1608: 	this->_M_assign(__str);
	add	x1, sp, 880	//,,
	mov	x0, x23	//, tmp1020
.LEHB125:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_		//
.LEHE125:
// /usr/include/c++/13/bits/basic_string.h:814: 	return this->assign(__str);
	b	.L1030		//
.L928:
// terminal.cpp:150:         options.cols, std::max(std::size_t(1), (width - (side_panel ? 52 : 4)) / 2));
	lsr	x0, x0, 1	// tmp988, _1092,
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	x0, x1	// tmp988, _160
	csel	x0, x0, x1, ls	// _747, tmp988, _160,
	str	x0, [sp, 16]	// _747, %sfp
	b	.L929		//
.L1120:
// /usr/include/c++/13/bits/basic_string.h:646: 	  std::__throw_logic_error(__N("basic_string: "
	adrp	x0, :got:__stack_chk_guard	// tmp640,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp640,
	ldr	x2, [sp, 1176]	// tmp1091, D.87585
	ldr	x1, [x0]	// tmp1092,
	subs	x2, x2, x1	// tmp1091, tmp1092
	mov	x1, 0	// tmp1092
	bne	.L1118		//,
	adrp	x0, .LC18	// tmp642,
	add	x0, x0, :lo12:.LC18	//, tmp642,
.LEHB126:
	bl	_ZSt19__throw_logic_errorPKc		//
.LEHE126:
.L1130:
// /usr/include/c++/13/bits/basic_string.h:400: 	  __throw_length_error(__N(__s));
	adrp	x0, :got:__stack_chk_guard	// tmp692,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp692,
	ldr	x2, [sp, 1176]	// tmp1097, D.87585
	ldr	x1, [x0]	// tmp1098,
	subs	x2, x2, x1	// tmp1097, tmp1098
	mov	x1, 0	// tmp1098
	bne	.L1118		//,
	adrp	x0, .LC21	// tmp694,
	add	x20, sp, 648	// tmp1015,,
	add	x0, x0, :lo12:.LC21	//, tmp694,
.LEHB127:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE127:
.L1124:
// /usr/include/c++/13/bits/basic_string.h:646: 	  std::__throw_logic_error(__N("basic_string: "
	adrp	x0, :got:__stack_chk_guard	// tmp659,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp659,
	ldr	x2, [sp, 1176]	// tmp1093, D.87585
	ldr	x1, [x0]	// tmp1094,
	subs	x2, x2, x1	// tmp1093, tmp1094
	mov	x1, 0	// tmp1094
	bne	.L1118		//,
	adrp	x0, .LC18	// tmp661,
	add	x0, x0, :lo12:.LC18	//, tmp661,
.LEHB128:
	bl	_ZSt19__throw_logic_errorPKc		//
.LEHE128:
.L1128:
// /usr/include/c++/13/bits/basic_string.h:400: 	  __throw_length_error(__N(__s));
	adrp	x0, :got:__stack_chk_guard	// tmp674,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp674,
	ldr	x2, [sp, 1176]	// tmp1095, D.87585
	ldr	x1, [x0]	// tmp1096,
	subs	x2, x2, x1	// tmp1095, tmp1096
	mov	x1, 0	// tmp1096
	bne	.L1118		//,
	adrp	x0, .LC21	// tmp676,
	add	x0, x0, :lo12:.LC21	//, tmp676,
.LEHB129:
	bl	_ZSt20__throw_length_errorPKc		//
.LEHE129:
.L1082:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x19, x0	// tmp1061,
	mov	x0, x20	//, tmp1015
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L994:
	mov	x0, x28	//, tmp1012
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L995:
	ldr	x0, [sp, 112]	//, %sfp
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
.L996:
// terminal.cpp:228: }
	ldr	x0, [sp, 8]	//, %sfp
	bl	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev		//
.L949:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	add	x0, sp, 520	//,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	add	x0, sp, 488	//,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	add	x0, sp, 456	//,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	add	x0, sp, 424	//,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	add	x0, sp, 392	//,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	add	x0, sp, 360	//,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
// terminal.cpp:228: }
	ldr	x0, [sp, 296]	//, %sfp
	bl	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev		//
	adrp	x0, :got:__stack_chk_guard	// tmp987,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp987,
	ldr	x2, [sp, 1176]	// tmp1099, D.87585
	ldr	x1, [x0]	// tmp1100,
	subs	x2, x2, x1	// tmp1099, tmp1100
	mov	x1, 0	// tmp1100
	beq	.L1063		//,
.L1118:
	bl	__stack_chk_fail		//
.L1080:
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	mov	x19, x0	// tmp742, tmp1063
	b	.L995		//
.L1083:
.L1116:
	mov	x19, x0	// tmp1077,
	mov	x0, x23	//, tmp1020
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	b	.L996		//
.L1076:
	b	.L1116		//
.L1063:
	mov	x0, x19	//, tmp567
.LEHB130:
	bl	_Unwind_Resume		//
.LEHE130:
.L1084:
	b	.L1116		//
.L1077:
	b	.L1116		//
.L1075:
	mov	x19, x0	// tmp1076,
	add	x0, sp, 552	//,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
	b	.L996		//
.L1081:
	mov	x19, x0	// tmp737, tmp1062
	b	.L994		//
.L1074:
// terminal.cpp:228: }
	mov	x19, x0	// tmp745, tmp1079
	b	.L996		//
.L1078:
// /usr/include/c++/13/bits/basic_ios.h:282:       ~basic_ios() { }
	mov	x19, x0	// tmp561, tmp1054
.L948:
	ldr	x0, [sp, 240]	// tmp996, %sfp
	add	x1, x0, 16	// tmp563, tmp996,
	str	x1, [sp, 912]	// tmp563, MEM[(struct basic_ios *)&frame + 112B].D.65173._vptr.ios_base
	ldr	x0, [sp, 248]	//, %sfp
	bl	_ZNSt8ios_baseD2Ev		//
	b	.L949		//
.L1079:
// /usr/include/c++/13/sstream:79:     class basic_stringbuf : public basic_streambuf<_CharT, _Traits>
	ldr	x1, [sp, 256]	// tmp1002, %sfp
	mov	x19, x0	// tmp556, tmp1053
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	add	x0, sp, 880	//,,
// /usr/include/c++/13/sstream:79:     class basic_stringbuf : public basic_streambuf<_CharT, _Traits>
	add	x1, x1, 16	// tmp547, tmp1002,
	str	x1, [sp, 808]	// tmp547, MEM[(struct basic_stringbuf *)&frame + 8B].D.69596._vptr.basic_streambuf
// /usr/include/c++/13/bits/basic_string.h:804:       { _M_dispose(); }
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv		//
// /usr/include/c++/13/streambuf:205:       { }
	ldr	x0, [sp, 264]	// tmp1005, %sfp
	add	x1, x0, 16	// tmp551, tmp1005,
	str	x1, [sp, 808]	// tmp551, MEM[(struct basic_streambuf *)&frame + 8B]._vptr.basic_streambuf
	ldr	x0, [sp, 232]	//, %sfp
	bl	_ZNSt6localeD1Ev		//
// /usr/include/c++/13/ostream:95:       ~basic_ostream() { }
	ldp	x1, x2, [sp, 216]	// _415, _419, %sfp
	ldr	x0, [x1, -24]	// MEM[(long int *)_415 + -24B], MEM[(long int *)_415 + -24B]
	str	x1, [sp, 800]	// _415, MEM[(struct basic_ostream *)&frame]._vptr.basic_ostream
	ldr	x1, [sp, 8]	// tmp1022, %sfp
	str	x2, [x1, x0]	// _419, MEM[(struct basic_ios *)_427].D.65173._vptr.ios_base
	b	.L948		//
	.cfi_endproc
.LFE3164:
	.section	.gcc_except_table
.LLSDA3164:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3164-.LLSDACSB3164
.LLSDACSB3164:
	.uleb128 .LEHB106-.LFB3164
	.uleb128 .LEHE106-.LEHB106
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB107-.LFB3164
	.uleb128 .LEHE107-.LEHB107
	.uleb128 .L1078-.LFB3164
	.uleb128 0
	.uleb128 .LEHB108-.LFB3164
	.uleb128 .LEHE108-.LEHB108
	.uleb128 .L1079-.LFB3164
	.uleb128 0
	.uleb128 .LEHB109-.LFB3164
	.uleb128 .LEHE109-.LEHB109
	.uleb128 .L1074-.LFB3164
	.uleb128 0
	.uleb128 .LEHB110-.LFB3164
	.uleb128 .LEHE110-.LEHB110
	.uleb128 .L1081-.LFB3164
	.uleb128 0
	.uleb128 .LEHB111-.LFB3164
	.uleb128 .LEHE111-.LEHB111
	.uleb128 .L1082-.LFB3164
	.uleb128 0
	.uleb128 .LEHB112-.LFB3164
	.uleb128 .LEHE112-.LEHB112
	.uleb128 .L1075-.LFB3164
	.uleb128 0
	.uleb128 .LEHB113-.LFB3164
	.uleb128 .LEHE113-.LEHB113
	.uleb128 .L1074-.LFB3164
	.uleb128 0
	.uleb128 .LEHB114-.LFB3164
	.uleb128 .LEHE114-.LEHB114
	.uleb128 .L1083-.LFB3164
	.uleb128 0
	.uleb128 .LEHB115-.LFB3164
	.uleb128 .LEHE115-.LEHB115
	.uleb128 .L1076-.LFB3164
	.uleb128 0
	.uleb128 .LEHB116-.LFB3164
	.uleb128 .LEHE116-.LEHB116
	.uleb128 .L1074-.LFB3164
	.uleb128 0
	.uleb128 .LEHB117-.LFB3164
	.uleb128 .LEHE117-.LEHB117
	.uleb128 .L1080-.LFB3164
	.uleb128 0
	.uleb128 .LEHB118-.LFB3164
	.uleb128 .LEHE118-.LEHB118
	.uleb128 .L1074-.LFB3164
	.uleb128 0
	.uleb128 .LEHB119-.LFB3164
	.uleb128 .LEHE119-.LEHB119
	.uleb128 .L1076-.LFB3164
	.uleb128 0
	.uleb128 .LEHB120-.LFB3164
	.uleb128 .LEHE120-.LEHB120
	.uleb128 .L1074-.LFB3164
	.uleb128 0
	.uleb128 .LEHB121-.LFB3164
	.uleb128 .LEHE121-.LEHB121
	.uleb128 .L1084-.LFB3164
	.uleb128 0
	.uleb128 .LEHB122-.LFB3164
	.uleb128 .LEHE122-.LEHB122
	.uleb128 .L1077-.LFB3164
	.uleb128 0
	.uleb128 .LEHB123-.LFB3164
	.uleb128 .LEHE123-.LEHB123
	.uleb128 .L1074-.LFB3164
	.uleb128 0
	.uleb128 .LEHB124-.LFB3164
	.uleb128 .LEHE124-.LEHB124
	.uleb128 .L1084-.LFB3164
	.uleb128 0
	.uleb128 .LEHB125-.LFB3164
	.uleb128 .LEHE125-.LEHB125
	.uleb128 .L1083-.LFB3164
	.uleb128 0
	.uleb128 .LEHB126-.LFB3164
	.uleb128 .LEHE126-.LEHB126
	.uleb128 .L1074-.LFB3164
	.uleb128 0
	.uleb128 .LEHB127-.LFB3164
	.uleb128 .LEHE127-.LEHB127
	.uleb128 .L1082-.LFB3164
	.uleb128 0
	.uleb128 .LEHB128-.LFB3164
	.uleb128 .LEHE128-.LEHB128
	.uleb128 .L1080-.LFB3164
	.uleb128 0
	.uleb128 .LEHB129-.LFB3164
	.uleb128 .LEHE129-.LEHB129
	.uleb128 .L1081-.LFB3164
	.uleb128 0
	.uleb128 .LEHB130-.LFB3164
	.uleb128 .LEHE130-.LEHB130
	.uleb128 0
	.uleb128 0
.LLSDACSE3164:
	.text
	.size	_Z4drawRKSt6vectorI4CellSaIS0_EERK7OptionsRK8Playbackmmb, .-_Z4drawRKSt6vectorI4CellSaIS0_EERK7OptionsRK8Playbackmmb
	.align	2
	.p2align 4,,11
	.global	_Z10wait_frameR8PlaybackRK8TerminalRKSt6vectorI4CellSaIS5_EERK7Optionsmm
	.type	_Z10wait_frameR8PlaybackRK8TerminalRKSt6vectorI4CellSaIS5_EERK7Optionsmm, %function
_Z10wait_frameR8PlaybackRK8TerminalRKSt6vectorI4CellSaIS5_EERK7Optionsmm:
.LFB3165:
	.cfi_startproc
	sub	sp, sp, #160	//,,
	.cfi_def_cfa_offset 160
	adrp	x6, :got:__stack_chk_guard	// tmp143,
	ldr	x6, [x6, :got_lo12:__stack_chk_guard]	// tmp143,
	stp	x29, x30, [sp, 64]	//,,
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	add	x29, sp, 64	//,,
	stp	x19, x20, [sp, 80]	//,,
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x19, x0	// playback, tmp236
	stp	x21, x22, [sp, 96]	//,,
	.cfi_offset 21, -64
	.cfi_offset 22, -56
// terminal.cpp:114:     return input_enabled_;
	ldrb	w21, [x1, 61]	// _26, terminal_39(D)->input_enabled_
// terminal.cpp:231:                 const Options& options, std::size_t step, std::size_t initial_trees) {
	ldr	x1, [x6]	// tmp252,
	str	x1, [sp, 56]	// tmp252, D.87670
	mov	x1, 0	// tmp252
	stp	x2, x3, [sp]	// tmp238, tmp239, %sfp
// terminal.cpp:232:     if (!terminal.input_enabled()) {
	tbnz	x21, 0, .L1144	// _26,,
// terminal.cpp:233:         if (playback.delay) {
	ldr	w0, [x0]	//, playback_42(D)->delay
// terminal.cpp:233:         if (playback.delay) {
	cbnz	w0, .L1183	// _1,
.L1145:
// terminal.cpp:137:     return interrupted != 0;
	adrp	x0, .LANCHOR0	// tmp183,
	ldr	w0, [x0, #:lo12:.LANCHOR0]	//, interrupted
// terminal.cpp:236:         return !interruption_requested();
	cmp	w0, 0	// interrupted.2_75,
	cset	w21, eq	// _26,
.L1148:
// terminal.cpp:275: }
	adrp	x0, :got:__stack_chk_guard	// tmp224,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp224,
	ldr	x2, [sp, 56]	// tmp253, D.87670
	ldr	x1, [x0]	// tmp254,
	subs	x2, x2, x1	// tmp253, tmp254
	mov	x1, 0	// tmp254
	bne	.L1184		//,
	ldp	x29, x30, [sp, 64]	//,,
	mov	w0, w21	//, _26
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
.L1183:
	.cfi_restore_state
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	mov	x1, 63439	// tmp147,
	lsr	w2, w0, 3	// tmp145, _1,
	movk	x1, 0xe353, lsl 16	// tmp147,,
// /usr/include/c++/13/bits/chrono.h:574: 	  : __r(static_cast<rep>(__rep)) { }
	uxtw	x0, w0	// _129, _1
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	movk	x1, 0x9ba5, lsl 32	// tmp147,,
// /usr/include/c++/13/bits/chrono.h:225: 	      static_cast<_CR>(__d.count()) * static_cast<_CR>(_CF::num)));
	mov	x3, 16960	// tmp178,
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	movk	x1, 0x20c4, lsl 48	// tmp147,,
// /usr/include/c++/13/bits/chrono.h:225: 	      static_cast<_CR>(__d.count()) * static_cast<_CR>(_CF::num)));
	movk	x3, 0xf, lsl 16	// tmp178,,
	stp	x25, x26, [sp, 128]	//,,
	.cfi_offset 26, -24
	.cfi_offset 25, -32
	add	x25, sp, 32	// tmp226,,
// /usr/include/c++/13/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	umulh	x2, x2, x1	// tmp146, tmp145, tmp147
	lsr	x2, x2, 4	// tmp148, tmp146,
// /usr/include/c++/13/bits/chrono.h:225: 	      static_cast<_CR>(__d.count()) * static_cast<_CR>(_CF::num)));
	lsl	x1, x2, 5	// tmp159, tmp148,
	sub	x1, x1, x2	// tmp160, tmp159, tmp148
	add	x1, x2, x1, lsl 2	// tmp162, tmp148, tmp160,
	sub	x0, x0, x1, lsl 3	// tmp164, _129, tmp162,
	mul	x0, x0, x3	// tmp177, tmp164, tmp178
// /usr/include/c++/13/bits/this_thread_sleep.h:75: 	struct ::timespec __ts =
	stp	x2, x0, [sp, 32]	// tmp148, tmp177, MEM[(struct timespec *)_78].tv_sec
.L1147:
// /usr/include/c++/13/bits/this_thread_sleep.h:80: 	while (::nanosleep(&__ts, &__ts) == -1 && errno == EINTR)
	mov	x1, x25	//, tmp226
	mov	x0, x25	//, tmp226
	bl	nanosleep		//
// /usr/include/c++/13/bits/this_thread_sleep.h:80: 	while (::nanosleep(&__ts, &__ts) == -1 && errno == EINTR)
	cmn	w0, #1	// tmp242,
	beq	.L1185		//,
	ldp	x25, x26, [sp, 128]	//,,
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 25
	b	.L1145		//
	.p2align 2,,3
.L1185:
	.cfi_restore_state
// /usr/include/c++/13/bits/this_thread_sleep.h:80: 	while (::nanosleep(&__ts, &__ts) == -1 && errno == EINTR)
	bl	__errno_location		//
// /usr/include/c++/13/bits/this_thread_sleep.h:80: 	while (::nanosleep(&__ts, &__ts) == -1 && errno == EINTR)
	ldr	w0, [x0]	//, *_114
	cmp	w0, 4	// *_114,
	beq	.L1147		//,
	ldp	x25, x26, [sp, 128]	//,,
	.cfi_restore 26
	.cfi_restore 25
	b	.L1145		//
	.p2align 2,,3
.L1144:
	stp	x27, x28, [sp, 144]	//,,
	.cfi_offset 28, -8
	.cfi_offset 27, -16
// terminal.cpp:137:     return interrupted != 0;
	adrp	x28, .LANCHOR0	// tmp227,
	add	x22, sp, 31	// tmp225,,
	stp	x23, x24, [sp, 112]	//,,
	.cfi_offset 24, -40
	.cfi_offset 23, -48
	mov	x23, x4	// step, tmp240
	mov	x24, x5	// initial_trees, tmp241
	stp	x25, x26, [sp, 128]	//,,
	.cfi_offset 26, -24
	.cfi_offset 25, -32
// terminal.cpp:239:     auto deadline = std::chrono::steady_clock::now() + std::chrono::milliseconds(playback.delay);
	bl	_ZNSt6chrono3_V212steady_clock3nowEv		//
// terminal.cpp:137:     return interrupted != 0;
	ldr	w1, [x28, #:lo12:.LANCHOR0]	//, interrupted
// /usr/include/c++/13/bits/chrono.h:702: 	return __cd(__cd(__lhs).count() + __cd(__rhs).count());
	ldr	w20, [x19]	//, MEM[(const unsigned int &)playback_42(D)]
	mov	w26, 16960	// tmp187,
	movk	w26, 0xf, lsl 16	// tmp187,,
	umaddl	x20, w20, w26, x0	// deadline$__d$__r, MEM[(const unsigned int &)playback_42(D)], tmp187, tmp244
// terminal.cpp:240:     while (!interruption_requested()) {
	cbnz	w1, .L1150	// interrupted.2_127,
.L1149:
// terminal.cpp:242:         bool changed = false;
	mov	w25, 0	// changed,
.L1162:
// terminal.cpp:256:                 playback.delay = playback.delay > 50 ? playback.delay - 50 : 0;
	mov	w27, 50	// tmp231,
	b	.L1156		//
	.p2align 2,,3
.L1189:
// terminal.cpp:252:             if ((key == 'n' || key == 'N') && playback.paused) {
	ldrb	w0, [x19, 5]	// playback_42(D)->paused, playback_42(D)->paused
	tbnz	x0, 0, .L1182	// playback_42(D)->paused,,
.L1155:
// terminal.cpp:260:             if (key == '-') {
	cmp	w1, 45	// key.72_4,
	beq	.L1186		//,
.L1156:
// /usr/include/aarch64-linux-gnu/bits/unistd.h:28:   return __glibc_fortify (read, __nbytes, sizeof (char),
	mov	x1, x22	//, tmp225
	mov	x2, 1	//,
	mov	w0, 0	//,
	bl	read		//
// terminal.cpp:243:         while (read(STDIN_FILENO, &key, 1) == 1) {
	cmp	x0, 1	// tmp248,
	bne	.L1187		//,
// terminal.cpp:244:             if (key == 'q' || key == 'Q') {
	ldrb	w1, [sp, 31]	// key.72_4, key
// terminal.cpp:244:             if (key == 'q' || key == 'Q') {
	and	w0, w1, -33	// tmp190, key.72_4,
	and	w2, w0, 255	// _130, tmp190
	cmp	w0, 81	// tmp190,
	beq	.L1150		//,
// terminal.cpp:247:             if (key == ' ') {
	cmp	w1, 32	// key.72_4,
	beq	.L1188		//,
.L1152:
// terminal.cpp:252:             if ((key == 'n' || key == 'N') && playback.paused) {
	cmp	w2, 78	// _130,
	beq	.L1189		//,
// terminal.cpp:255:             if (key == '+') {
	cmp	w1, 43	// key.72_4,
	bne	.L1155		//,
// terminal.cpp:256:                 playback.delay = playback.delay > 50 ? playback.delay - 50 : 0;
	ldr	w0, [x19]	//, playback_42(D)->delay
// terminal.cpp:257:                 changed = true;
	mov	w25, w21	// changed, _26
// terminal.cpp:256:                 playback.delay = playback.delay > 50 ? playback.delay - 50 : 0;
	cmp	w0, 50	// playback_42(D)->delay,
	csel	w0, w0, w27, cs	// tmp199, playback_42(D)->delay, tmp231,
	sub	w0, w0, #50	// tmp203, tmp199,
// terminal.cpp:256:                 playback.delay = playback.delay > 50 ? playback.delay - 50 : 0;
	str	w0, [x19]	// tmp203, playback_42(D)->delay
// terminal.cpp:258:                 deadline = std::chrono::steady_clock::now() + std::chrono::milliseconds(playback.delay);
	bl	_ZNSt6chrono3_V212steady_clock3nowEv		//
// /usr/include/c++/13/bits/chrono.h:702: 	return __cd(__cd(__lhs).count() + __cd(__rhs).count());
	ldr	w20, [x19]	//, MEM[(const unsigned int &)playback_42(D)]
// terminal.cpp:260:             if (key == '-') {
	ldrb	w1, [sp, 31]	// key.72_4, key
// /usr/include/c++/13/bits/chrono.h:702: 	return __cd(__cd(__lhs).count() + __cd(__rhs).count());
	umaddl	x20, w20, w26, x0	// deadline$__d$__r, MEM[(const unsigned int &)playback_42(D)], tmp187, tmp246
// terminal.cpp:260:             if (key == '-') {
	cmp	w1, 45	// key.72_4,
	bne	.L1156		//,
.L1186:
// terminal.cpp:261:                 playback.delay = std::min(60000u, playback.delay + 50);
	ldr	w0, [x19]	//, playback_42(D)->delay
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	mov	w1, 60000	// tmp209,
// terminal.cpp:262:                 changed = true;
	mov	w25, w21	// changed, _26
// terminal.cpp:261:                 playback.delay = std::min(60000u, playback.delay + 50);
	add	w0, w0, 50	// tmp206, playback_42(D)->delay,
// /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	w0, w1	// tmp206, tmp209
	csel	w0, w0, w1, ls	// tmp208, tmp206, tmp209,
// terminal.cpp:261:                 playback.delay = std::min(60000u, playback.delay + 50);
	str	w0, [x19]	// tmp208, playback_42(D)->delay
// terminal.cpp:263:                 deadline = std::chrono::steady_clock::now() + std::chrono::milliseconds(playback.delay);
	bl	_ZNSt6chrono3_V212steady_clock3nowEv		//
// /usr/include/c++/13/bits/chrono.h:702: 	return __cd(__cd(__lhs).count() + __cd(__rhs).count());
	ldr	w20, [x19]	//, MEM[(const unsigned int &)playback_42(D)]
	mov	w1, 16960	// tmp212,
	movk	w1, 0xf, lsl 16	// tmp212,,
	umaddl	x20, w20, w1, x0	// deadline$__d$__r, MEM[(const unsigned int &)playback_42(D)], tmp212, tmp247
	b	.L1162		//
	.p2align 2,,3
.L1187:
// terminal.cpp:266:         if (changed) {
	tbnz	x25, 0, .L1190	// changed,,
.L1158:
// terminal.cpp:269:         if (!playback.paused && std::chrono::steady_clock::now() >= deadline) {
	ldrb	w0, [x19, 5]	// playback_42(D)->paused, playback_42(D)->paused
	tbnz	x0, 0, .L1159	// playback_42(D)->paused,,
// terminal.cpp:269:         if (!playback.paused && std::chrono::steady_clock::now() >= deadline) {
	bl	_ZNSt6chrono3_V212steady_clock3nowEv		//
// terminal.cpp:269:         if (!playback.paused && std::chrono::steady_clock::now() >= deadline) {
	cmp	x20, x0	// deadline$__d$__r, tmp249
	ble	.L1182		//,
.L1159:
// /usr/include/c++/13/bits/this_thread_sleep.h:75: 	struct ::timespec __ts =
	adrp	x0, .LC87	// tmp257,
	add	x25, sp, 32	// tmp226,,
	ldr	q0, [x0, #:lo12:.LC87]	// tmp217,
	str	q0, [sp, 32]	// tmp217, MEM <vector(2) long int> [(long int *)_78]
.L1161:
// /usr/include/c++/13/bits/this_thread_sleep.h:80: 	while (::nanosleep(&__ts, &__ts) == -1 && errno == EINTR)
	mov	x1, x25	//, tmp226
	mov	x0, x25	//, tmp226
	bl	nanosleep		//
// /usr/include/c++/13/bits/this_thread_sleep.h:80: 	while (::nanosleep(&__ts, &__ts) == -1 && errno == EINTR)
	cmn	w0, #1	// tmp250,
	beq	.L1191		//,
.L1160:
// terminal.cpp:137:     return interrupted != 0;
	ldr	w0, [x28, #:lo12:.LANCHOR0]	//, interrupted
// terminal.cpp:240:     while (!interruption_requested()) {
	cbz	w0, .L1149	// interrupted.2_99,
	.p2align 3,,7
.L1150:
// terminal.cpp:274:     return false;
	ldp	x23, x24, [sp, 112]	//,,
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 23
	mov	w21, 0	// _26,
	ldp	x25, x26, [sp, 128]	//,,
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 144]	//,,
	.cfi_restore 28
	.cfi_restore 27
	b	.L1148		//
	.p2align 2,,3
.L1188:
	.cfi_restore_state
// terminal.cpp:248:                 playback.paused = !playback.paused;
	ldrb	w0, [x19, 5]	//, playback_42(D)->paused
// terminal.cpp:249:                 changed = true;
	mov	w25, w21	// changed, _26
// terminal.cpp:248:                 playback.paused = !playback.paused;
	eor	w0, w0, 1	// tmp192, playback_42(D)->paused,
// terminal.cpp:248:                 playback.paused = !playback.paused;
	strb	w0, [x19, 5]	// tmp192, playback_42(D)->paused
// terminal.cpp:250:                 deadline = std::chrono::steady_clock::now() + std::chrono::milliseconds(playback.delay);
	bl	_ZNSt6chrono3_V212steady_clock3nowEv		//
// /usr/include/c++/13/bits/chrono.h:702: 	return __cd(__cd(__lhs).count() + __cd(__rhs).count());
	ldr	w20, [x19]	//, MEM[(const unsigned int &)playback_42(D)]
// terminal.cpp:252:             if ((key == 'n' || key == 'N') && playback.paused) {
	ldrb	w1, [sp, 31]	// key.72_4, key
// terminal.cpp:252:             if ((key == 'n' || key == 'N') && playback.paused) {
	and	w2, w1, -33	// tmp196, key.72_4,
// /usr/include/c++/13/bits/chrono.h:702: 	return __cd(__cd(__lhs).count() + __cd(__rhs).count());
	umaddl	x20, w20, w26, x0	// deadline$__d$__r, MEM[(const unsigned int &)playback_42(D)], tmp187, tmp245
// terminal.cpp:252:             if ((key == 'n' || key == 'N') && playback.paused) {
	and	w2, w2, 255	// _130, tmp196
	b	.L1152		//
	.p2align 2,,3
.L1191:
// /usr/include/c++/13/bits/this_thread_sleep.h:80: 	while (::nanosleep(&__ts, &__ts) == -1 && errno == EINTR)
	bl	__errno_location		//
// /usr/include/c++/13/bits/this_thread_sleep.h:80: 	while (::nanosleep(&__ts, &__ts) == -1 && errno == EINTR)
	ldr	w0, [x0]	//, *_123
	cmp	w0, 4	// *_123,
	bne	.L1160		//,
	b	.L1161		//
	.p2align 2,,3
.L1182:
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
	b	.L1148		//
.L1190:
	.cfi_restore_state
// terminal.cpp:267:             draw(cells, options, playback, step, initial_trees, true);
	ldp	x0, x1, [sp]	//,, %sfp
	mov	x4, x24	//, initial_trees
	mov	x3, x23	//, step
	mov	x2, x19	//, playback
	mov	w5, 1	//,
	bl	_Z4drawRKSt6vectorI4CellSaIS0_EERK7OptionsRK8Playbackmmb		//
	b	.L1158		//
.L1184:
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
// terminal.cpp:275: }
	bl	__stack_chk_fail		//
	.cfi_endproc
.LFE3165:
	.size	_Z10wait_frameR8PlaybackRK8TerminalRKSt6vectorI4CellSaIS5_EERK7Optionsmm, .-_Z10wait_frameR8PlaybackRK8TerminalRKSt6vectorI4CellSaIS5_EERK7Optionsmm
	.section	.rodata.str1.8
	.align	3
.LC12:
	.string	"\033[37m"
	.align	3
.LC13:
	.string	"\033[32m"
	.align	3
.LC14:
	.string	"\033[33;1m"
	.align	3
.LC15:
	.string	"\033[90m"
	.align	3
.LC16:
	.string	"\033[34;1m"
	.align	3
.LC6:
	.string	"\302\267 "
	.align	3
.LC7:
	.string	"\342\231\243 "
	.align	3
.LC8:
	.string	"\342\226\223 "
	.align	3
.LC9:
	.string	"\342\226\221 "
	.align	3
.LC10:
	.string	"\342\211\210 "
	.align	3
.LC0:
	.string	". "
	.align	3
.LC1:
	.string	"T "
	.align	3
.LC2:
	.string	"* "
	.align	3
.LC3:
	.string	"# "
	.align	3
.LC4:
	.string	"~ "
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC87:
	.xword	0
	.xword	15000000
	.data
	.align	3
	.set	.LANCHOR1,. + 0
.LC74:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
.LC75:
	.xword	.LC6
	.xword	.LC7
	.xword	.LC8
	.xword	.LC9
	.xword	.LC10
.LC76:
	.xword	.LC12
	.xword	.LC13
	.xword	.LC14
	.xword	.LC15
	.xword	.LC16
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_ZN12_GLOBAL__N_111interruptedE, %object
	.size	_ZN12_GLOBAL__N_111interruptedE, 4
_ZN12_GLOBAL__N_111interruptedE:
	.zero	4
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
