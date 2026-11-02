
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025318 <tp_frame_data_read>:
   25318: d503233f     	paciasp
   2531c: d10143ff     	sub	sp, sp, #0x50
   25320: a9027bfd     	stp	x29, x30, [sp, #0x20]
   25324: a90357f6     	stp	x22, x21, [sp, #0x30]
   25328: a9044ff4     	stp	x20, x19, [sp, #0x40]
   2532c: 910083fd     	add	x29, sp, #0x20
   25330: d5384108     	mrs	x8, SP_EL0
   25334: aa1f03e0     	mov	x0, xzr
   25338: f9438908     	ldr	x8, [x8, #0x710]
   2533c: f81f83a8     	stur	x8, [x29, #-0x8]
   25340: f9400068     	ldr	x8, [x3]
   25344: 790023ff     	strh	wzr, [sp, #0x10]
   25348: f90007ff     	str	xzr, [sp, #0x8]
   2534c: b4000188     	cbz	x8, 0x2537c <tp_frame_data_read+0x64>
   25350: d5384108     	mrs	x8, SP_EL0
   25354: f9438908     	ldr	x8, [x8, #0x710]
   25358: f85f83a9     	ldur	x9, [x29, #-0x8]
   2535c: eb09011f     	cmp	x8, x9
   25360: 54000521     	b.ne	0x25404 <tp_frame_data_read+0xec>
   25364: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   25368: a94357f6     	ldp	x22, x21, [sp, #0x30]
   2536c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   25370: 910143ff     	add	sp, sp, #0x50
   25374: d50323bf     	autiasp
   25378: d65f03c0     	ret
   2537c: 90000008     	adrp	x8, 0x25000 <ghost_debug_write+0x12c>
		000000000002537c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25380: aa0103f5     	mov	x21, x1
   25384: aa0203f4     	mov	x20, x2
   25388: f9400116     	ldr	x22, [x8]
		0000000000025388:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   2538c: aa0303f3     	mov	x19, x3
   25390: f94802c8     	ldr	x8, [x22, #0x1000]
   25394: b4000128     	cbz	x8, 0x253b8 <tp_frame_data_read+0xa0>
   25398: aa1603e0     	mov	x0, x22
   2539c: b85fc110     	ldur	w16, [x8, #-0x4]
   253a0: 7281af31     	movk	w17, #0xd79
   253a4: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   253a8: 6b11021f     	cmp	w16, w17
   253ac: 54000040     	b.eq	0x253b4 <tp_frame_data_read+0x9c>
   253b0: d4304500     	brk	#0x8228
   253b4: d63f0100     	blr	x8
   253b8: b94462c2     	ldr	w2, [x22, #0x460]
   253bc: 90000000     	adrp	x0, 0x25000 <ghost_debug_write+0x12c>
		00000000000253bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad9e
   253c0: 91000000     	add	x0, x0, #0x0
		00000000000253c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad9e
   253c4: 90000001     	adrp	x1, 0x25000 <ghost_debug_write+0x12c>
		00000000000253c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18684
   253c8: 91000021     	add	x1, x1, #0x0
		00000000000253c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18684
   253cc: 94000000     	bl	0x253cc <tp_frame_data_read+0xb4>
		00000000000253cc:  R_AARCH64_CALL26	_printk
   253d0: b94462c3     	ldr	w3, [x22, #0x460]
   253d4: 90000002     	adrp	x2, 0x25000 <ghost_debug_write+0x12c>
		00000000000253d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19ccc
   253d8: 91000042     	add	x2, x2, #0x0
		00000000000253d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19ccc
   253dc: 910023e0     	add	x0, sp, #0x8
   253e0: 52800141     	mov	w1, #0xa                // =10
   253e4: 94000000     	bl	0x253e4 <tp_frame_data_read+0xcc>
		00000000000253e4:  R_AARCH64_CALL26	snprintf
   253e8: 93407c04     	sxtw	x4, w0
   253ec: 910023e3     	add	x3, sp, #0x8
   253f0: aa1403e1     	mov	x1, x20
   253f4: aa1503e0     	mov	x0, x21
   253f8: aa1303e2     	mov	x2, x19
   253fc: 94000000     	bl	0x253fc <tp_frame_data_read+0xe4>
		00000000000253fc:  R_AARCH64_CALL26	simple_read_from_buffer
   25400: 17ffffd4     	b	0x25350 <tp_frame_data_read+0x38>
   25404: 94000000     	bl	0x25404 <tp_frame_data_read+0xec>
		0000000000025404:  R_AARCH64_CALL26	__stack_chk_fail
