
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000253a0 <headset_state_show>:
   253a0: d503233f     	paciasp
   253a4: d10183ff     	sub	sp, sp, #0x60
   253a8: a9037bfd     	stp	x29, x30, [sp, #0x30]
   253ac: a90457f6     	stp	x22, x21, [sp, #0x40]
   253b0: a9054ff4     	stp	x20, x19, [sp, #0x50]
   253b4: 9100c3fd     	add	x29, sp, #0x30
   253b8: d5384108     	mrs	x8, SP_EL0
   253bc: aa1f03e0     	mov	x0, xzr
   253c0: f9438908     	ldr	x8, [x8, #0x710]
   253c4: f81f83a8     	stur	x8, [x29, #-0x8]
   253c8: f9400068     	ldr	x8, [x3]
   253cc: f801e3ff     	stur	xzr, [sp, #0x1e]
   253d0: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   253d4: f90007ff     	str	xzr, [sp, #0x8]
   253d8: b4000188     	cbz	x8, 0x25408 <headset_state_show+0x68>
   253dc: d5384108     	mrs	x8, SP_EL0
   253e0: f9438908     	ldr	x8, [x8, #0x710]
   253e4: f85f83a9     	ldur	x9, [x29, #-0x8]
   253e8: eb09011f     	cmp	x8, x9
   253ec: 54000521     	b.ne	0x25490 <headset_state_show+0xf0>
   253f0: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   253f4: a94457f6     	ldp	x22, x21, [sp, #0x40]
   253f8: a9437bfd     	ldp	x29, x30, [sp, #0x30]
   253fc: 910183ff     	add	sp, sp, #0x60
   25400: d50323bf     	autiasp
   25404: d65f03c0     	ret
   25408: 90000008     	adrp	x8, 0x25000 <tp_glove_read+0x5c>
		0000000000025408:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   2540c: aa0103f5     	mov	x21, x1
   25410: aa0203f4     	mov	x20, x2
   25414: f9400116     	ldr	x22, [x8]
		0000000000025414:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25418: aa0303f3     	mov	x19, x3
   2541c: f9473ec8     	ldr	x8, [x22, #0xe78]
   25420: b4000128     	cbz	x8, 0x25444 <headset_state_show+0xa4>
   25424: aa1603e0     	mov	x0, x22
   25428: b85fc110     	ldur	w16, [x8, #-0x4]
   2542c: 7281af31     	movk	w17, #0xd79
   25430: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   25434: 6b11021f     	cmp	w16, w17
   25438: 54000040     	b.eq	0x25440 <headset_state_show+0xa0>
   2543c: d4304500     	brk	#0x8228
   25440: d63f0100     	blr	x8
   25444: 39405ec2     	ldrb	w2, [x22, #0x17]
   25448: 90000000     	adrp	x0, 0x25000 <tp_glove_read+0x5c>
		0000000000025448:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9144
   2544c: 91000000     	add	x0, x0, #0x0
		000000000002544c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9144
   25450: 90000001     	adrp	x1, 0x25000 <tp_glove_read+0x5c>
		0000000000025450:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc18e
   25454: 91000021     	add	x1, x1, #0x0
		0000000000025454:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc18e
   25458: 94000000     	bl	0x25458 <headset_state_show+0xb8>
		0000000000025458:  R_AARCH64_CALL26	_printk
   2545c: 39405ec3     	ldrb	w3, [x22, #0x17]
   25460: 90000002     	adrp	x2, 0x25000 <tp_glove_read+0x5c>
		0000000000025460:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xae4a
   25464: 91000042     	add	x2, x2, #0x0
		0000000000025464:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xae4a
   25468: 910023e0     	add	x0, sp, #0x8
   2546c: 528003c1     	mov	w1, #0x1e               // =30
   25470: 94000000     	bl	0x25470 <headset_state_show+0xd0>
		0000000000025470:  R_AARCH64_CALL26	snprintf
   25474: 93407c04     	sxtw	x4, w0
   25478: 910023e3     	add	x3, sp, #0x8
   2547c: aa1403e1     	mov	x1, x20
   25480: aa1503e0     	mov	x0, x21
   25484: aa1303e2     	mov	x2, x19
   25488: 94000000     	bl	0x25488 <headset_state_show+0xe8>
		0000000000025488:  R_AARCH64_CALL26	simple_read_from_buffer
   2548c: 17ffffd4     	b	0x253dc <headset_state_show+0x3c>
   25490: 94000000     	bl	0x25490 <headset_state_show+0xf0>
		0000000000025490:  R_AARCH64_CALL26	__stack_chk_fail
