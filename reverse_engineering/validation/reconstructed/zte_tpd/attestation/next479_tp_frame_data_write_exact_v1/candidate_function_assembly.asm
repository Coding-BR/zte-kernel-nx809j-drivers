
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002533c <tp_frame_data_write>:
   2533c: d503233f     	paciasp
   25340: d100c3ff     	sub	sp, sp, #0x30
   25344: a9017bfd     	stp	x29, x30, [sp, #0x10]
   25348: a9024ff4     	stp	x20, x19, [sp, #0x20]
   2534c: 910043fd     	add	x29, sp, #0x10
   25350: d5384108     	mrs	x8, SP_EL0
   25354: aa0203f3     	mov	x19, x2
   25358: aa0103e0     	mov	x0, x1
   2535c: f9438908     	ldr	x8, [x8, #0x710]
   25360: 910013e3     	add	x3, sp, #0x4
   25364: aa0203e1     	mov	x1, x2
   25368: 52800142     	mov	w2, #0xa                // =10
   2536c: f90007e8     	str	x8, [sp, #0x8]
   25370: 90000008     	adrp	x8, 0x25000 <tp_BBAT_test_read+0x3c>
		0000000000025370:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25374: f9400114     	ldr	x20, [x8]
		0000000000025374:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25378: b90007ff     	str	wzr, [sp, #0x4]
   2537c: 94000000     	bl	0x2537c <tp_frame_data_write+0x40>
		000000000002537c:  R_AARCH64_CALL26	kstrtouint_from_user
   25380: 340001a0     	cbz	w0, 0x253b4 <tp_frame_data_write+0x78>
   25384: 928002b3     	mov	x19, #-0x16             // =-22
   25388: d5384108     	mrs	x8, SP_EL0
   2538c: f9438908     	ldr	x8, [x8, #0x710]
   25390: f94007e9     	ldr	x9, [sp, #0x8]
   25394: eb09011f     	cmp	x8, x9
   25398: 54000381     	b.ne	0x25408 <tp_frame_data_write+0xcc>
   2539c: aa1303e0     	mov	x0, x19
   253a0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   253a4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   253a8: 9100c3ff     	add	sp, sp, #0x30
   253ac: d50323bf     	autiasp
   253b0: d65f03c0     	ret
   253b4: b94007e8     	ldr	w8, [sp, #0x4]
   253b8: 90000000     	adrp	x0, 0x25000 <tp_BBAT_test_read+0x3c>
		00000000000253b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17de4
   253bc: 91000000     	add	x0, x0, #0x0
		00000000000253bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17de4
   253c0: 90000001     	adrp	x1, 0x25000 <tp_BBAT_test_read+0x3c>
		00000000000253c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1caf6
   253c4: 91000021     	add	x1, x1, #0x0
		00000000000253c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1caf6
   253c8: 7100011f     	cmp	w8, #0x0
   253cc: 1a9f07e2     	cset	w2, ne
   253d0: b90007e2     	str	w2, [sp, #0x4]
   253d4: 94000000     	bl	0x253d4 <tp_frame_data_write+0x98>
		00000000000253d4:  R_AARCH64_CALL26	_printk
   253d8: f947fe88     	ldr	x8, [x20, #0xff8]
   253dc: b4fffd68     	cbz	x8, 0x25388 <tp_frame_data_write+0x4c>
   253e0: b94007e1     	ldr	w1, [sp, #0x4]
   253e4: aa1403e0     	mov	x0, x20
   253e8: b85fc110     	ldur	w16, [x8, #-0x4]
   253ec: 72969331     	movk	w17, #0xb499
   253f0: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   253f4: 6b11021f     	cmp	w16, w17
   253f8: 54000040     	b.eq	0x25400 <tp_frame_data_write+0xc4>
   253fc: d4304500     	brk	#0x8228
   25400: d63f0100     	blr	x8
   25404: 17ffffe1     	b	0x25388 <tp_frame_data_write+0x4c>
   25408: 94000000     	bl	0x25408 <tp_frame_data_write+0xcc>
		0000000000025408:  R_AARCH64_CALL26	__stack_chk_fail
