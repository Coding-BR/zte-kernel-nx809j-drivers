
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000233c <_inline_copy_from_user>:
    233c: d503233f     	paciasp
    2340: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    2344: f9000bf5     	str	x21, [sp, #0x10]
    2348: a9024ff4     	stp	x20, x19, [sp, #0x20]
    234c: 910003fd     	mov	x29, sp
    2350: d5384108     	mrs	x8, SP_EL0
    2354: 39411909     	ldrb	w9, [x8, #0x46]
    2358: aa0203f3     	mov	x19, x2
    235c: aa0003f4     	mov	x20, x0
    2360: 37280089     	tbnz	w9, #0x5, 0x2370 <_inline_copy_from_user+0x34>
    2364: f940010a     	ldr	x10, [x8]
    2368: aa0103e9     	mov	x9, x1
    236c: 36d0006a     	tbz	w10, #0x1a, 0x2378 <_inline_copy_from_user+0x3c>
    2370: d378dc29     	lsl	x9, x1, #8
    2374: 8a892029     	and	x9, x1, x9, asr #8
    2378: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
    237c: aa1303f5     	mov	x21, x19
    2380: cb13014a     	sub	x10, x10, x19
    2384: eb09015f     	cmp	x10, x9
    2388: 540000e2     	b.hs	0x23a4 <_inline_copy_from_user+0x68>
    238c: cb150268     	sub	x8, x19, x21
    2390: 2a1f03e1     	mov	w1, wzr
    2394: aa1503e2     	mov	x2, x21
    2398: 8b080280     	add	x0, x20, x8
    239c: 94000000     	bl	0x239c <_inline_copy_from_user+0x60>
		000000000000239c:  R_AARCH64_CALL26	memset
    23a0: 1400001c     	b	0x2410 <_inline_copy_from_user+0xd4>
    23a4: d503201f     	nop
    23a8: d53b4229     	mrs	x9, DAIF
    23ac: d50343df     	msr	DAIFSet, #0x3
    23b0: f9400508     	ldr	x8, [x8, #0x8]
    23b4: d538202a     	mrs	x10, TTBR1_EL1
    23b8: aa0803eb     	mov	x11, x8
    23bc: b340bd4b     	bfxil	x11, x10, #0, #48
    23c0: d518202b     	msr	TTBR1_EL1, x11
    23c4: d5182008     	msr	TTBR0_EL1, x8
    23c8: d5033fdf     	isb
    23cc: d51b4229     	msr	DAIF, x9
    23d0: 9248f821     	and	x1, x1, #0xff7fffffffffffff
    23d4: aa1403e0     	mov	x0, x20
    23d8: aa1303e2     	mov	x2, x19
    23dc: 94000000     	bl	0x23dc <_inline_copy_from_user+0xa0>
		00000000000023dc:  R_AARCH64_CALL26	__arch_copy_from_user
    23e0: aa0003f5     	mov	x21, x0
    23e4: d503201f     	nop
    23e8: d53b4228     	mrs	x8, DAIF
    23ec: d50343df     	msr	DAIFSet, #0x3
    23f0: d5382029     	mrs	x9, TTBR1_EL1
    23f4: 9240bd29     	and	x9, x9, #0xffffffffffff
    23f8: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    23fc: d518200a     	msr	TTBR0_EL1, x10
    2400: d5182029     	msr	TTBR1_EL1, x9
    2404: d5033fdf     	isb
    2408: d51b4228     	msr	DAIF, x8
    240c: b5fffc15     	cbnz	x21, 0x238c <_inline_copy_from_user+0x50>
    2410: aa1503e0     	mov	x0, x21
    2414: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    2418: f9400bf5     	ldr	x21, [sp, #0x10]
    241c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    2420: d50323bf     	autiasp
    2424: d65f03c0     	ret
