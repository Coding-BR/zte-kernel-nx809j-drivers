
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000252a8 <get_fake_sleep>:
   252a8: d503233f     	paciasp
   252ac: d10143ff     	sub	sp, sp, #0x50
   252b0: a9027bfd     	stp	x29, x30, [sp, #0x20]
   252b4: a90357f6     	stp	x22, x21, [sp, #0x30]
   252b8: a9044ff4     	stp	x20, x19, [sp, #0x40]
   252bc: 910083fd     	add	x29, sp, #0x20
   252c0: d5384108     	mrs	x8, SP_EL0
   252c4: aa1f03e0     	mov	x0, xzr
   252c8: f9438908     	ldr	x8, [x8, #0x710]
   252cc: f81f83a8     	stur	x8, [x29, #-0x8]
   252d0: f9400068     	ldr	x8, [x3]
   252d4: 790023ff     	strh	wzr, [sp, #0x10]
   252d8: f90007ff     	str	xzr, [sp, #0x8]
   252dc: b4000188     	cbz	x8, 0x2530c <get_fake_sleep+0x64>
   252e0: d5384108     	mrs	x8, SP_EL0
   252e4: f9438908     	ldr	x8, [x8, #0x710]
   252e8: f85f83a9     	ldur	x9, [x29, #-0x8]
   252ec: eb09011f     	cmp	x8, x9
   252f0: 54000521     	b.ne	0x25394 <get_fake_sleep+0xec>
   252f4: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   252f8: a94357f6     	ldp	x22, x21, [sp, #0x30]
   252fc: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   25300: 910143ff     	add	sp, sp, #0x50
   25304: d50323bf     	autiasp
   25308: d65f03c0     	ret
   2530c: 90000008     	adrp	x8, 0x25000 <tp_game_partition_write+0x64>
		000000000002530c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25310: aa0103f5     	mov	x21, x1
   25314: aa0203f4     	mov	x20, x2
   25318: f9400116     	ldr	x22, [x8]
		0000000000025318:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   2531c: aa0303f3     	mov	x19, x3
   25320: f947e6c8     	ldr	x8, [x22, #0xfc8]
   25324: b4000128     	cbz	x8, 0x25348 <get_fake_sleep+0xa0>
   25328: aa1603e0     	mov	x0, x22
   2532c: b85fc110     	ldur	w16, [x8, #-0x4]
   25330: 7281af31     	movk	w17, #0xd79
   25334: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   25338: 6b11021f     	cmp	w16, w17
   2533c: 54000040     	b.eq	0x25344 <get_fake_sleep+0x9c>
   25340: d4304500     	brk	#0x8228
   25344: d63f0100     	blr	x8
   25348: b94482c2     	ldr	w2, [x22, #0x480]
   2534c: 90000000     	adrp	x0, 0x25000 <tp_game_partition_write+0x64>
		000000000002534c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1230a
   25350: 91000000     	add	x0, x0, #0x0
		0000000000025350:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1230a
   25354: 90000001     	adrp	x1, 0x25000 <tp_game_partition_write+0x64>
		0000000000025354:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x120c4
   25358: 91000021     	add	x1, x1, #0x0
		0000000000025358:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x120c4
   2535c: 94000000     	bl	0x2535c <get_fake_sleep+0xb4>
		000000000002535c:  R_AARCH64_CALL26	_printk
   25360: b94482c3     	ldr	w3, [x22, #0x480]
   25364: 90000002     	adrp	x2, 0x25000 <tp_game_partition_write+0x64>
		0000000000025364:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x121d2
   25368: 91000042     	add	x2, x2, #0x0
		0000000000025368:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x121d2
   2536c: 910023e0     	add	x0, sp, #0x8
   25370: 52800141     	mov	w1, #0xa                // =10
   25374: 94000000     	bl	0x25374 <get_fake_sleep+0xcc>
		0000000000025374:  R_AARCH64_CALL26	snprintf
   25378: 93407c04     	sxtw	x4, w0
   2537c: 910023e3     	add	x3, sp, #0x8
   25380: aa1403e1     	mov	x1, x20
   25384: aa1503e0     	mov	x0, x21
   25388: aa1303e2     	mov	x2, x19
   2538c: 94000000     	bl	0x2538c <get_fake_sleep+0xe4>
		000000000002538c:  R_AARCH64_CALL26	simple_read_from_buffer
   25390: 17ffffd4     	b	0x252e0 <get_fake_sleep+0x38>
   25394: 94000000     	bl	0x25394 <get_fake_sleep+0xec>
		0000000000025394:  R_AARCH64_CALL26	__stack_chk_fail
