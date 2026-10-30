
/input/zte_ir.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000334 <zte_ir_ioctl>:
     334: d503233f     	paciasp
     338: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     33c: a9014ff4     	stp	x20, x19, [sp, #0x10]
     340: 910003fd     	mov	x29, sp
     344: 37f001c1     	tbnz	w1, #0x1e, 0x37c <zte_ir_ioctl+0x48>
     348: 528d2628     	mov	w8, #0x6931             // =26929
     34c: 92800300     	mov	x0, #-0x19              // =-25
     350: 72a80088     	movk	w8, #0x4004, lsl #16
     354: 6b08003f     	cmp	w1, w8
     358: 54000641     	b.ne	0x420 <zte_ir_ioctl+0xec>
     35c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000035c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13a
     360: 91000000     	add	x0, x0, #0x0
		0000000000000360:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13a
     364: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000364:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe6
     368: 91000021     	add	x1, x1, #0x0
		0000000000000368:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe6
     36c: 2a1f03e2     	mov	w2, wzr
     370: 94000000     	bl	0x370 <zte_ir_ioctl+0x3c>
		0000000000000370:  R_AARCH64_CALL26	_printk
     374: 928002a0     	mov	x0, #-0x16              // =-22
     378: 1400002a     	b	0x420 <zte_ir_ioctl+0xec>
     37c: d5384108     	mrs	x8, SP_EL0
     380: 39411909     	ldrb	w9, [x8, #0x46]
     384: f9401014     	ldr	x20, [x0, #0x20]
     388: 37280089     	tbnz	w9, #0x5, 0x398 <zte_ir_ioctl+0x64>
     38c: f940010a     	ldr	x10, [x8]
     390: aa0203e9     	mov	x9, x2
     394: 36d0006a     	tbz	w10, #0x1a, 0x3a0 <zte_ir_ioctl+0x6c>
     398: d378dc49     	lsl	x9, x2, #8
     39c: 8a892049     	and	x9, x2, x9, asr #8
     3a0: b27e93ea     	mov	x10, #0x7ffffffffc      // =549755813884
     3a4: 928001a0     	mov	x0, #-0xe               // =-14
     3a8: eb0a013f     	cmp	x9, x10
     3ac: 540003a8     	b.hi	0x420 <zte_ir_ioctl+0xec>
     3b0: 9248f849     	and	x9, x2, #0xff7fffffffffffff
     3b4: d503201f     	nop
     3b8: d53b422a     	mrs	x10, DAIF
     3bc: d50343df     	msr	DAIFSet, #0x3
     3c0: f9400508     	ldr	x8, [x8, #0x8]
     3c4: d538202b     	mrs	x11, TTBR1_EL1
     3c8: aa0803ec     	mov	x12, x8
     3cc: b340bd6c     	bfxil	x12, x11, #0, #48
     3d0: d518202c     	msr	TTBR1_EL1, x12
     3d4: d5182008     	msr	TTBR0_EL1, x8
     3d8: d5033fdf     	isb
     3dc: d51b422a     	msr	DAIF, x10
     3e0: b8400933     	ldtr	w19, [x9]
     3e4: d503201f     	nop
     3e8: d53b4228     	mrs	x8, DAIF
     3ec: d50343df     	msr	DAIFSet, #0x3
     3f0: d5382029     	mrs	x9, TTBR1_EL1
     3f4: 9240bd29     	and	x9, x9, #0xffffffffffff
     3f8: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
     3fc: d518200a     	msr	TTBR0_EL1, x10
     400: d5182029     	msr	TTBR1_EL1, x9
     404: d5033fdf     	isb
     408: d51b4228     	msr	DAIF, x8
     40c: 528d2628     	mov	w8, #0x6931             // =26929
     410: 92800300     	mov	x0, #-0x19              // =-25
     414: 72a80088     	movk	w8, #0x4004, lsl #16
     418: 6b08003f     	cmp	w1, w8
     41c: 540000a0     	b.eq	0x430 <zte_ir_ioctl+0xfc>
     420: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     424: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     428: d50323bf     	autiasp
     42c: d65f03c0     	ret
     430: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000430:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13a
     434: 91000000     	add	x0, x0, #0x0
		0000000000000434:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13a
     438: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000438:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe6
     43c: 91000021     	add	x1, x1, #0x0
		000000000000043c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe6
     440: 2a1303e2     	mov	w2, w19
     444: 94000000     	bl	0x444 <zte_ir_ioctl+0x110>
		0000000000000444:  R_AARCH64_CALL26	_printk
     448: 928002a0     	mov	x0, #-0x16              // =-22
     44c: 34fffeb3     	cbz	w19, 0x420 <zte_ir_ioctl+0xec>
     450: 52871109     	mov	w9, #0x3888             // =14472
     454: 531c6e68     	lsl	w8, w19, #4
     458: aa1f03e0     	mov	x0, xzr
     45c: 72a00029     	movk	w9, #0x1, lsl #16
     460: b8296a88     	str	w8, [x20, x9]
     464: 17ffffef     	b	0x420 <zte_ir_ioctl+0xec>
     468: 928001a0     	mov	x0, #-0xe               // =-14
     46c: d503201f     	nop
     470: d53b4228     	mrs	x8, DAIF
     474: d50343df     	msr	DAIFSet, #0x3
     478: d5382029     	mrs	x9, TTBR1_EL1
     47c: 9240bd29     	and	x9, x9, #0xffffffffffff
     480: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
     484: d518200a     	msr	TTBR0_EL1, x10
     488: d5182029     	msr	TTBR1_EL1, x9
     48c: d5033fdf     	isb
     490: d51b4228     	msr	DAIF, x8
     494: 17ffffe3     	b	0x420 <zte_ir_ioctl+0xec>
