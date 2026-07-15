
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000456c <tp_single_game_read>:
    456c: d503233f     	paciasp
    4570: d10143ff     	sub	sp, sp, #0x50
    4574: a9027bfd     	stp	x29, x30, [sp, #0x20]
    4578: a90357f6     	stp	x22, x21, [sp, #0x30]
    457c: a9044ff4     	stp	x20, x19, [sp, #0x40]
    4580: 910083fd     	add	x29, sp, #0x20
    4584: d5384108     	mrs	x8, SP_EL0
    4588: aa1f03e0     	mov	x0, xzr
    458c: f9438908     	ldr	x8, [x8, #0x710]
    4590: f81f83a8     	stur	x8, [x29, #-0x8]
    4594: f9400068     	ldr	x8, [x3]
    4598: 790023ff     	strh	wzr, [sp, #0x10]
    459c: f90007ff     	str	xzr, [sp, #0x8]
    45a0: b4000188     	cbz	x8, 0x45d0 <tp_single_game_read+0x64>
    45a4: d5384108     	mrs	x8, SP_EL0
    45a8: f9438908     	ldr	x8, [x8, #0x710]
    45ac: f85f83a9     	ldur	x9, [x29, #-0x8]
    45b0: eb09011f     	cmp	x8, x9
    45b4: 54000521     	b.ne	0x4658 <tp_single_game_read+0xec>
    45b8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    45bc: a94357f6     	ldp	x22, x21, [sp, #0x30]
    45c0: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    45c4: 910143ff     	add	sp, sp, #0x50
    45c8: d50323bf     	autiasp
    45cc: d65f03c0     	ret
    45d0: 90000008     	adrp	x8, 0x4000 <display_rotation_show+0xc>
		00000000000045d0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    45d4: aa0103f5     	mov	x21, x1
    45d8: aa0203f4     	mov	x20, x2
    45dc: f9400116     	ldr	x22, [x8]
		00000000000045dc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    45e0: aa0303f3     	mov	x19, x3
    45e4: f9476ec8     	ldr	x8, [x22, #0xed8]
    45e8: b4000128     	cbz	x8, 0x460c <tp_single_game_read+0xa0>
    45ec: aa1603e0     	mov	x0, x22
    45f0: b85fc110     	ldur	w16, [x8, #-0x4]
    45f4: 7281af31     	movk	w17, #0xd79
    45f8: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    45fc: 6b11021f     	cmp	w16, w17
    4600: 54000040     	b.eq	0x4608 <tp_single_game_read+0x9c>
    4604: d4304500     	brk	#0x8228
    4608: d63f0100     	blr	x8
    460c: b94456c2     	ldr	w2, [x22, #0x454]
    4610: 90000000     	adrp	x0, 0x4000 <display_rotation_show+0xc>
		0000000000004610:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a98
    4614: 91000000     	add	x0, x0, #0x0
		0000000000004614:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a98
    4618: 90000001     	adrp	x1, 0x4000 <display_rotation_show+0xc>
		0000000000004618:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3796
    461c: 91000021     	add	x1, x1, #0x0
		000000000000461c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3796
    4620: 94000000     	bl	0x4620 <tp_single_game_read+0xb4>
		0000000000004620:  R_AARCH64_CALL26	_printk
    4624: b94456c3     	ldr	w3, [x22, #0x454]
    4628: 90000002     	adrp	x2, 0x4000 <display_rotation_show+0xc>
		0000000000004628:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fca
    462c: 91000042     	add	x2, x2, #0x0
		000000000000462c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fca
    4630: 910023e0     	add	x0, sp, #0x8
    4634: 52800141     	mov	w1, #0xa                // =10
    4638: 94000000     	bl	0x4638 <tp_single_game_read+0xcc>
		0000000000004638:  R_AARCH64_CALL26	snprintf
    463c: 93407c04     	sxtw	x4, w0
    4640: 910023e3     	add	x3, sp, #0x8
    4644: aa1403e1     	mov	x1, x20
    4648: aa1503e0     	mov	x0, x21
    464c: aa1303e2     	mov	x2, x19
    4650: 94000000     	bl	0x4650 <tp_single_game_read+0xe4>
		0000000000004650:  R_AARCH64_CALL26	simple_read_from_buffer
    4654: 17ffffd4     	b	0x45a4 <tp_single_game_read+0x38>
    4658: 94000000     	bl	0x4658 <tp_single_game_read+0xec>
		0000000000004658:  R_AARCH64_CALL26	__stack_chk_fail
