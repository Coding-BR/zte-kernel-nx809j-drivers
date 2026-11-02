
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025604 <get_rotation_limit_level>:
   25604: d503233f     	paciasp
   25608: d10143ff     	sub	sp, sp, #0x50
   2560c: a9027bfd     	stp	x29, x30, [sp, #0x20]
   25610: a90357f6     	stp	x22, x21, [sp, #0x30]
   25614: a9044ff4     	stp	x20, x19, [sp, #0x40]
   25618: 910083fd     	add	x29, sp, #0x20
   2561c: d5384108     	mrs	x8, SP_EL0
   25620: aa1f03e0     	mov	x0, xzr
   25624: f9438908     	ldr	x8, [x8, #0x710]
   25628: f81f83a8     	stur	x8, [x29, #-0x8]
   2562c: f9400068     	ldr	x8, [x3]
   25630: 790023ff     	strh	wzr, [sp, #0x10]
   25634: f90007ff     	str	xzr, [sp, #0x8]
   25638: b4000188     	cbz	x8, 0x25668 <get_rotation_limit_level+0x64>
   2563c: d5384108     	mrs	x8, SP_EL0
   25640: f9438908     	ldr	x8, [x8, #0x710]
   25644: f85f83a9     	ldur	x9, [x29, #-0x8]
   25648: eb09011f     	cmp	x8, x9
   2564c: 54000521     	b.ne	0x256f0 <get_rotation_limit_level+0xec>
   25650: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   25654: a94357f6     	ldp	x22, x21, [sp, #0x30]
   25658: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   2565c: 910143ff     	add	sp, sp, #0x50
   25660: d50323bf     	autiasp
   25664: d65f03c0     	ret
   25668: 90000008     	adrp	x8, 0x25000 <tp_glove_read>
		0000000000025668:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   2566c: aa0103f5     	mov	x21, x1
   25670: aa0203f4     	mov	x20, x2
   25674: f9400116     	ldr	x22, [x8]
		0000000000025674:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25678: aa0303f3     	mov	x19, x3
   2567c: f94746c8     	ldr	x8, [x22, #0xe88]
   25680: b4000128     	cbz	x8, 0x256a4 <get_rotation_limit_level+0xa0>
   25684: aa1603e0     	mov	x0, x22
   25688: b85fc110     	ldur	w16, [x8, #-0x4]
   2568c: 7281af31     	movk	w17, #0xd79
   25690: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   25694: 6b11021f     	cmp	w16, w17
   25698: 54000040     	b.eq	0x256a0 <get_rotation_limit_level+0x9c>
   2569c: d4304500     	brk	#0x8228
   256a0: d63f0100     	blr	x8
   256a4: b9400ec2     	ldr	w2, [x22, #0xc]
   256a8: 90000000     	adrp	x0, 0x25000 <tp_glove_read>
		00000000000256a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9144
   256ac: 91000000     	add	x0, x0, #0x0
		00000000000256ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9144
   256b0: 90000001     	adrp	x1, 0x25000 <tp_glove_read>
		00000000000256b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x871a
   256b4: 91000021     	add	x1, x1, #0x0
		00000000000256b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x871a
   256b8: 94000000     	bl	0x256b8 <get_rotation_limit_level+0xb4>
		00000000000256b8:  R_AARCH64_CALL26	_printk
   256bc: b9400ec3     	ldr	w3, [x22, #0xc]
   256c0: 90000002     	adrp	x2, 0x25000 <tp_glove_read>
		00000000000256c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81d4
   256c4: 91000042     	add	x2, x2, #0x0
		00000000000256c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81d4
   256c8: 910023e0     	add	x0, sp, #0x8
   256cc: 52800141     	mov	w1, #0xa                // =10
   256d0: 94000000     	bl	0x256d0 <get_rotation_limit_level+0xcc>
		00000000000256d0:  R_AARCH64_CALL26	snprintf
   256d4: 93407c04     	sxtw	x4, w0
   256d8: 910023e3     	add	x3, sp, #0x8
   256dc: aa1403e1     	mov	x1, x20
   256e0: aa1503e0     	mov	x0, x21
   256e4: aa1303e2     	mov	x2, x19
   256e8: 94000000     	bl	0x256e8 <get_rotation_limit_level+0xe4>
		00000000000256e8:  R_AARCH64_CALL26	simple_read_from_buffer
   256ec: 17ffffd4     	b	0x2563c <get_rotation_limit_level+0x38>
   256f0: 94000000     	bl	0x256f0 <get_rotation_limit_level+0xec>
		00000000000256f0:  R_AARCH64_CALL26	__stack_chk_fail
