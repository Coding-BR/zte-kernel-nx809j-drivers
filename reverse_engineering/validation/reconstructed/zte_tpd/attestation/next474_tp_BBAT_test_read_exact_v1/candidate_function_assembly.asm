
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025328 <tp_BBAT_test_read>:
   25328: d503233f     	paciasp
   2532c: d10143ff     	sub	sp, sp, #0x50
   25330: a9027bfd     	stp	x29, x30, [sp, #0x20]
   25334: a90357f6     	stp	x22, x21, [sp, #0x30]
   25338: a9044ff4     	stp	x20, x19, [sp, #0x40]
   2533c: 910083fd     	add	x29, sp, #0x20
   25340: d5384108     	mrs	x8, SP_EL0
   25344: aa1f03e0     	mov	x0, xzr
   25348: f9438908     	ldr	x8, [x8, #0x710]
   2534c: f81f83a8     	stur	x8, [x29, #-0x8]
   25350: f9400068     	ldr	x8, [x3]
   25354: 790023ff     	strh	wzr, [sp, #0x10]
   25358: f90007ff     	str	xzr, [sp, #0x8]
   2535c: b5000428     	cbnz	x8, 0x253e0 <tp_BBAT_test_read+0xb8>
   25360: 90000008     	adrp	x8, 0x25000 <ghost_debug_read+0x1ec>
		0000000000025360:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25364: aa0303f3     	mov	x19, x3
   25368: aa0203f4     	mov	x20, x2
   2536c: f9400100     	ldr	x0, [x8]
		000000000002536c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25370: aa0103f5     	mov	x21, x1
   25374: f947f408     	ldr	x8, [x0, #0xfe8]
   25378: b4000168     	cbz	x8, 0x253a4 <tp_BBAT_test_read+0x7c>
   2537c: b85fc110     	ldur	w16, [x8, #-0x4]
   25380: 7281af31     	movk	w17, #0xd79
   25384: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   25388: 6b11021f     	cmp	w16, w17
   2538c: 54000040     	b.eq	0x25394 <tp_BBAT_test_read+0x6c>
   25390: d4304500     	brk	#0x8228
   25394: d63f0100     	blr	x8
   25398: 350003a0     	cbnz	w0, 0x2540c <tp_BBAT_test_read+0xe4>
   2539c: 2a1f03e3     	mov	w3, wzr
   253a0: 14000005     	b	0x253b4 <tp_BBAT_test_read+0x8c>
   253a4: 39405008     	ldrb	w8, [x0, #0x14]
   253a8: 7100011f     	cmp	w8, #0x0
   253ac: 1a9f17e8     	cset	w8, eq
   253b0: 531f7903     	lsl	w3, w8, #1
   253b4: 90000002     	adrp	x2, 0x25000 <ghost_debug_read+0x1ec>
		00000000000253b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x147d8
   253b8: 91000042     	add	x2, x2, #0x0
		00000000000253b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x147d8
   253bc: 910023e0     	add	x0, sp, #0x8
   253c0: 52800141     	mov	w1, #0xa                // =10
   253c4: 94000000     	bl	0x253c4 <tp_BBAT_test_read+0x9c>
		00000000000253c4:  R_AARCH64_CALL26	snprintf
   253c8: 93407c04     	sxtw	x4, w0
   253cc: 910023e3     	add	x3, sp, #0x8
   253d0: aa1403e1     	mov	x1, x20
   253d4: aa1503e0     	mov	x0, x21
   253d8: aa1303e2     	mov	x2, x19
   253dc: 94000000     	bl	0x253dc <tp_BBAT_test_read+0xb4>
		00000000000253dc:  R_AARCH64_CALL26	simple_read_from_buffer
   253e0: d5384108     	mrs	x8, SP_EL0
   253e4: f9438908     	ldr	x8, [x8, #0x710]
   253e8: f85f83a9     	ldur	x9, [x29, #-0x8]
   253ec: eb09011f     	cmp	x8, x9
   253f0: 540001c1     	b.ne	0x25428 <tp_BBAT_test_read+0x100>
   253f4: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   253f8: a94357f6     	ldp	x22, x21, [sp, #0x30]
   253fc: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   25400: 910143ff     	add	sp, sp, #0x50
   25404: d50323bf     	autiasp
   25408: d65f03c0     	ret
   2540c: 90000008     	adrp	x8, 0x25000 <ghost_debug_read+0x1ec>
		000000000002540c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d8fc
   25410: 91000108     	add	x8, x8, #0x0
		0000000000025410:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d8fc
   25414: 2a0003f6     	mov	w22, w0
   25418: aa0803e0     	mov	x0, x8
   2541c: 94000000     	bl	0x2541c <tp_BBAT_test_read+0xf4>
		000000000002541c:  R_AARCH64_CALL26	_printk
   25420: 2a1603e3     	mov	w3, w22
   25424: 17ffffe4     	b	0x253b4 <tp_BBAT_test_read+0x8c>
   25428: 94000000     	bl	0x25428 <tp_BBAT_test_read+0x100>
		0000000000025428:  R_AARCH64_CALL26	__stack_chk_fail
