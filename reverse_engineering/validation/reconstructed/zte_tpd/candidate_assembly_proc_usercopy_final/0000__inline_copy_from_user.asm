
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000390 <_inline_copy_from_user>:
     390: d503233f     	paciasp
     394: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     398: f9000bf5     	str	x21, [sp, #0x10]
     39c: a9024ff4     	stp	x20, x19, [sp, #0x20]
     3a0: 910003fd     	mov	x29, sp
     3a4: d5384108     	mrs	x8, SP_EL0
     3a8: 39411909     	ldrb	w9, [x8, #0x46]
     3ac: aa0203f3     	mov	x19, x2
     3b0: aa0003f4     	mov	x20, x0
     3b4: 37280089     	tbnz	w9, #0x5, 0x3c4 <_inline_copy_from_user+0x34>
     3b8: f940010a     	ldr	x10, [x8]
     3bc: aa0103e9     	mov	x9, x1
     3c0: 36d0006a     	tbz	w10, #0x1a, 0x3cc <_inline_copy_from_user+0x3c>
     3c4: d378dc29     	lsl	x9, x1, #8
     3c8: 8a892029     	and	x9, x1, x9, asr #8
     3cc: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
     3d0: aa1303f5     	mov	x21, x19
     3d4: eb0a027f     	cmp	x19, x10
     3d8: 54000408     	b.hi	0x458 <_inline_copy_from_user+0xc8>
     3dc: cb13014a     	sub	x10, x10, x19
     3e0: aa1303f5     	mov	x21, x19
     3e4: eb09015f     	cmp	x10, x9
     3e8: 54000383     	b.lo	0x458 <_inline_copy_from_user+0xc8>
     3ec: d503201f     	nop
     3f0: d53b4229     	mrs	x9, DAIF
     3f4: d50343df     	msr	DAIFSet, #0x3
     3f8: f9400508     	ldr	x8, [x8, #0x8]
     3fc: d538202a     	mrs	x10, TTBR1_EL1
     400: aa0803eb     	mov	x11, x8
     404: b340bd4b     	bfxil	x11, x10, #0, #48
     408: d518202b     	msr	TTBR1_EL1, x11
     40c: d5182008     	msr	TTBR0_EL1, x8
     410: d5033fdf     	isb
     414: d51b4229     	msr	DAIF, x9
     418: 9248f821     	and	x1, x1, #0xff7fffffffffffff
     41c: aa1403e0     	mov	x0, x20
     420: aa1303e2     	mov	x2, x19
     424: 94000000     	bl	0x424 <_inline_copy_from_user+0x94>
		0000000000000424:  R_AARCH64_CALL26	__arch_copy_from_user
     428: aa0003f5     	mov	x21, x0
     42c: d503201f     	nop
     430: d53b4228     	mrs	x8, DAIF
     434: d50343df     	msr	DAIFSet, #0x3
     438: d5382029     	mrs	x9, TTBR1_EL1
     43c: 9240bd29     	and	x9, x9, #0xffffffffffff
     440: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
     444: d518200a     	msr	TTBR0_EL1, x10
     448: d5182029     	msr	TTBR1_EL1, x9
     44c: d5033fdf     	isb
     450: d51b4228     	msr	DAIF, x8
     454: b40000d5     	cbz	x21, 0x46c <_inline_copy_from_user+0xdc>
     458: cb150268     	sub	x8, x19, x21
     45c: 2a1f03e1     	mov	w1, wzr
     460: aa1503e2     	mov	x2, x21
     464: 8b080280     	add	x0, x20, x8
     468: 94000000     	bl	0x468 <_inline_copy_from_user+0xd8>
		0000000000000468:  R_AARCH64_CALL26	memset
     46c: aa1503e0     	mov	x0, x21
     470: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     474: f9400bf5     	ldr	x21, [sp, #0x10]
     478: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     47c: d50323bf     	autiasp
     480: d65f03c0     	ret
