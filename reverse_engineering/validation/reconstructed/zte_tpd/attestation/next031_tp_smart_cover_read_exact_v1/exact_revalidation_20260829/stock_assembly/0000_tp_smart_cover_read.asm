
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003368 <tp_smart_cover_read>:
    3368: d503233f     	paciasp
    336c: d10143ff     	sub	sp, sp, #0x50
    3370: a9027bfd     	stp	x29, x30, [sp, #0x20]
    3374: a90357f6     	stp	x22, x21, [sp, #0x30]
    3378: a9044ff4     	stp	x20, x19, [sp, #0x40]
    337c: 910083fd     	add	x29, sp, #0x20
    3380: d5384108     	mrs	x8, SP_EL0
    3384: aa1f03e0     	mov	x0, xzr
    3388: f9438908     	ldr	x8, [x8, #0x710]
    338c: f81f83a8     	stur	x8, [x29, #-0x8]
    3390: f9400068     	ldr	x8, [x3]
    3394: 790023ff     	strh	wzr, [sp, #0x10]
    3398: f90007ff     	str	xzr, [sp, #0x8]
    339c: b4000188     	cbz	x8, 0x33cc <tp_smart_cover_read+0x64>
    33a0: d5384108     	mrs	x8, SP_EL0
    33a4: f9438908     	ldr	x8, [x8, #0x710]
    33a8: f85f83a9     	ldur	x9, [x29, #-0x8]
    33ac: eb09011f     	cmp	x8, x9
    33b0: 54000521     	b.ne	0x3454 <tp_smart_cover_read+0xec>
    33b4: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    33b8: a94357f6     	ldp	x22, x21, [sp, #0x30]
    33bc: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    33c0: 910143ff     	add	sp, sp, #0x50
    33c4: d50323bf     	autiasp
    33c8: d65f03c0     	ret
    33cc: 90000008     	adrp	x8, 0x3000 <tp_module_info_read+0x104>
		00000000000033cc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    33d0: aa0103f5     	mov	x21, x1
    33d4: aa0203f4     	mov	x20, x2
    33d8: f9400116     	ldr	x22, [x8]
		00000000000033d8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    33dc: aa0303f3     	mov	x19, x3
    33e0: f9471ec8     	ldr	x8, [x22, #0xe38]
    33e4: b4000128     	cbz	x8, 0x3408 <tp_smart_cover_read+0xa0>
    33e8: aa1603e0     	mov	x0, x22
    33ec: b85fc110     	ldur	w16, [x8, #-0x4]
    33f0: 7281af31     	movk	w17, #0xd79
    33f4: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    33f8: 6b11021f     	cmp	w16, w17
    33fc: 54000040     	b.eq	0x3404 <tp_smart_cover_read+0x9c>
    3400: d4304500     	brk	#0x8228
    3404: d63f0100     	blr	x8
    3408: b94006c2     	ldr	w2, [x22, #0x4]
    340c: 90000000     	adrp	x0, 0x3000 <tp_module_info_read+0x104>
		000000000000340c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8efe
    3410: 91000000     	add	x0, x0, #0x0
		0000000000003410:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8efe
    3414: 90000001     	adrp	x1, 0x3000 <tp_module_info_read+0x104>
		0000000000003414:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11f9
    3418: 91000021     	add	x1, x1, #0x0
		0000000000003418:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11f9
    341c: 94000000     	bl	0x341c <tp_smart_cover_read+0xb4>
		000000000000341c:  R_AARCH64_CALL26	_printk
    3420: b94006c3     	ldr	w3, [x22, #0x4]
    3424: 90000002     	adrp	x2, 0x3000 <tp_module_info_read+0x104>
		0000000000003424:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fca
    3428: 91000042     	add	x2, x2, #0x0
		0000000000003428:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fca
    342c: 910023e0     	add	x0, sp, #0x8
    3430: 52800141     	mov	w1, #0xa                // =10
    3434: 94000000     	bl	0x3434 <tp_smart_cover_read+0xcc>
		0000000000003434:  R_AARCH64_CALL26	snprintf
    3438: 93407c04     	sxtw	x4, w0
    343c: 910023e3     	add	x3, sp, #0x8
    3440: aa1403e1     	mov	x1, x20
    3444: aa1503e0     	mov	x0, x21
    3448: aa1303e2     	mov	x2, x19
    344c: 94000000     	bl	0x344c <tp_smart_cover_read+0xe4>
		000000000000344c:  R_AARCH64_CALL26	simple_read_from_buffer
    3450: 17ffffd4     	b	0x33a0 <tp_smart_cover_read+0x38>
    3454: 94000000     	bl	0x3454 <tp_smart_cover_read+0xec>
		0000000000003454:  R_AARCH64_CALL26	__stack_chk_fail
