
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000255a8 <get_rotation_limit_level>:
   255a8: d503233f     	paciasp
   255ac: d10143ff     	sub	sp, sp, #0x50
   255b0: a9027bfd     	stp	x29, x30, [sp, #0x20]
   255b4: a90357f6     	stp	x22, x21, [sp, #0x30]
   255b8: a9044ff4     	stp	x20, x19, [sp, #0x40]
   255bc: 910083fd     	add	x29, sp, #0x20
   255c0: d5384108     	mrs	x8, SP_EL0
   255c4: aa1f03e0     	mov	x0, xzr
   255c8: f9438908     	ldr	x8, [x8, #0x710]
   255cc: f81f83a8     	stur	x8, [x29, #-0x8]
   255d0: f9400068     	ldr	x8, [x3]
   255d4: 790023ff     	strh	wzr, [sp, #0x10]
   255d8: f90007ff     	str	xzr, [sp, #0x8]
   255dc: b4000188     	cbz	x8, 0x2560c <get_rotation_limit_level+0x64>
   255e0: d5384108     	mrs	x8, SP_EL0
   255e4: f9438908     	ldr	x8, [x8, #0x710]
   255e8: f85f83a9     	ldur	x9, [x29, #-0x8]
   255ec: eb09011f     	cmp	x8, x9
   255f0: 54000521     	b.ne	0x25694 <get_rotation_limit_level+0xec>
   255f4: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   255f8: a94357f6     	ldp	x22, x21, [sp, #0x30]
   255fc: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   25600: 910143ff     	add	sp, sp, #0x50
   25604: d50323bf     	autiasp
   25608: d65f03c0     	ret
   2560c: 90000008     	adrp	x8, 0x25000 <tp_glove_read+0x5c>
		000000000002560c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25610: aa0103f5     	mov	x21, x1
   25614: aa0203f4     	mov	x20, x2
   25618: f9400116     	ldr	x22, [x8]
		0000000000025618:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   2561c: aa0303f3     	mov	x19, x3
   25620: f94746c8     	ldr	x8, [x22, #0xe88]
   25624: b4000128     	cbz	x8, 0x25648 <get_rotation_limit_level+0xa0>
   25628: aa1603e0     	mov	x0, x22
   2562c: b85fc110     	ldur	w16, [x8, #-0x4]
   25630: 7281af31     	movk	w17, #0xd79
   25634: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   25638: 6b11021f     	cmp	w16, w17
   2563c: 54000040     	b.eq	0x25644 <get_rotation_limit_level+0x9c>
   25640: d4304500     	brk	#0x8228
   25644: d63f0100     	blr	x8
   25648: b9400ec2     	ldr	w2, [x22, #0xc]
   2564c: 90000000     	adrp	x0, 0x25000 <tp_glove_read+0x5c>
		000000000002564c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9144
   25650: 91000000     	add	x0, x0, #0x0
		0000000000025650:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9144
   25654: 90000001     	adrp	x1, 0x25000 <tp_glove_read+0x5c>
		0000000000025654:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x871a
   25658: 91000021     	add	x1, x1, #0x0
		0000000000025658:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x871a
   2565c: 94000000     	bl	0x2565c <get_rotation_limit_level+0xb4>
		000000000002565c:  R_AARCH64_CALL26	_printk
   25660: b9400ec3     	ldr	w3, [x22, #0xc]
   25664: 90000002     	adrp	x2, 0x25000 <tp_glove_read+0x5c>
		0000000000025664:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81d4
   25668: 91000042     	add	x2, x2, #0x0
		0000000000025668:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81d4
   2566c: 910023e0     	add	x0, sp, #0x8
   25670: 52800141     	mov	w1, #0xa                // =10
   25674: 94000000     	bl	0x25674 <get_rotation_limit_level+0xcc>
		0000000000025674:  R_AARCH64_CALL26	snprintf
   25678: 93407c04     	sxtw	x4, w0
   2567c: 910023e3     	add	x3, sp, #0x8
   25680: aa1403e1     	mov	x1, x20
   25684: aa1503e0     	mov	x0, x21
   25688: aa1303e2     	mov	x2, x19
   2568c: 94000000     	bl	0x2568c <get_rotation_limit_level+0xe4>
		000000000002568c:  R_AARCH64_CALL26	simple_read_from_buffer
   25690: 17ffffd4     	b	0x255e0 <get_rotation_limit_level+0x38>
   25694: 94000000     	bl	0x25694 <get_rotation_limit_level+0xec>
		0000000000025694:  R_AARCH64_CALL26	__stack_chk_fail
