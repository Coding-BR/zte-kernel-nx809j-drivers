
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000252ac <tp_fold_state_read>:
   252ac: d503233f     	paciasp
   252b0: d10143ff     	sub	sp, sp, #0x50
   252b4: a9027bfd     	stp	x29, x30, [sp, #0x20]
   252b8: a90357f6     	stp	x22, x21, [sp, #0x30]
   252bc: a9044ff4     	stp	x20, x19, [sp, #0x40]
   252c0: 910083fd     	add	x29, sp, #0x20
   252c4: d5384108     	mrs	x8, SP_EL0
   252c8: aa1f03e0     	mov	x0, xzr
   252cc: f9438908     	ldr	x8, [x8, #0x710]
   252d0: f81f83a8     	stur	x8, [x29, #-0x8]
   252d4: f9400068     	ldr	x8, [x3]
   252d8: 790023ff     	strh	wzr, [sp, #0x10]
   252dc: f90007ff     	str	xzr, [sp, #0x8]
   252e0: b4000188     	cbz	x8, 0x25310 <tp_fold_state_read+0x64>
   252e4: d5384108     	mrs	x8, SP_EL0
   252e8: f9438908     	ldr	x8, [x8, #0x710]
   252ec: f85f83a9     	ldur	x9, [x29, #-0x8]
   252f0: eb09011f     	cmp	x8, x9
   252f4: 54000521     	b.ne	0x25398 <tp_fold_state_read+0xec>
   252f8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   252fc: a94357f6     	ldp	x22, x21, [sp, #0x30]
   25300: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   25304: 910143ff     	add	sp, sp, #0x50
   25308: d50323bf     	autiasp
   2530c: d65f03c0     	ret
   25310: 90000008     	adrp	x8, 0x25000 <syna_recovery_game_mode_after_reset+0x110>
		0000000000025310:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25314: aa0103f5     	mov	x21, x1
   25318: aa0203f4     	mov	x20, x2
   2531c: f9400116     	ldr	x22, [x8]
		000000000002531c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25320: aa0303f3     	mov	x19, x3
   25324: f947dec8     	ldr	x8, [x22, #0xfb8]
   25328: b4000128     	cbz	x8, 0x2534c <tp_fold_state_read+0xa0>
   2532c: aa1603e0     	mov	x0, x22
   25330: b85fc110     	ldur	w16, [x8, #-0x4]
   25334: 7281af31     	movk	w17, #0xd79
   25338: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   2533c: 6b11021f     	cmp	w16, w17
   25340: 54000040     	b.eq	0x25348 <tp_fold_state_read+0x9c>
   25344: d4304500     	brk	#0x8228
   25348: d63f0100     	blr	x8
   2534c: b9447ec2     	ldr	w2, [x22, #0x47c]
   25350: 90000000     	adrp	x0, 0x25000 <syna_recovery_game_mode_after_reset+0x110>
		0000000000025350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11fc2
   25354: 91000000     	add	x0, x0, #0x0
		0000000000025354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11fc2
   25358: 90000001     	adrp	x1, 0x25000 <syna_recovery_game_mode_after_reset+0x110>
		0000000000025358:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11fd6
   2535c: 91000021     	add	x1, x1, #0x0
		000000000002535c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11fd6
   25360: 94000000     	bl	0x25360 <tp_fold_state_read+0xb4>
		0000000000025360:  R_AARCH64_CALL26	_printk
   25364: b9447ec3     	ldr	w3, [x22, #0x47c]
   25368: 90000002     	adrp	x2, 0x25000 <syna_recovery_game_mode_after_reset+0x110>
		0000000000025368:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x121d2
   2536c: 91000042     	add	x2, x2, #0x0
		000000000002536c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x121d2
   25370: 910023e0     	add	x0, sp, #0x8
   25374: 52800141     	mov	w1, #0xa                // =10
   25378: 94000000     	bl	0x25378 <tp_fold_state_read+0xcc>
		0000000000025378:  R_AARCH64_CALL26	snprintf
   2537c: 93407c04     	sxtw	x4, w0
   25380: 910023e3     	add	x3, sp, #0x8
   25384: aa1403e1     	mov	x1, x20
   25388: aa1503e0     	mov	x0, x21
   2538c: aa1303e2     	mov	x2, x19
   25390: 94000000     	bl	0x25390 <tp_fold_state_read+0xe4>
		0000000000025390:  R_AARCH64_CALL26	simple_read_from_buffer
   25394: 17ffffd4     	b	0x252e4 <tp_fold_state_read+0x38>
   25398: 94000000     	bl	0x25398 <tp_fold_state_read+0xec>
		0000000000025398:  R_AARCH64_CALL26	__stack_chk_fail
