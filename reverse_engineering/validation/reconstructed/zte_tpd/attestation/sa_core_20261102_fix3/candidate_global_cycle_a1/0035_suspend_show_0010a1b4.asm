
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001b584 <suspend_show>:
   1b584: d503233f     	paciasp
   1b588: d10183ff     	sub	sp, sp, #0x60
   1b58c: a9037bfd     	stp	x29, x30, [sp, #0x30]
   1b590: a90457f6     	stp	x22, x21, [sp, #0x40]
   1b594: a9054ff4     	stp	x20, x19, [sp, #0x50]
   1b598: 9100c3fd     	add	x29, sp, #0x30
   1b59c: d5384108     	mrs	x8, SP_EL0
   1b5a0: aa1f03e0     	mov	x0, xzr
   1b5a4: f9438908     	ldr	x8, [x8, #0x710]
   1b5a8: f81f83a8     	stur	x8, [x29, #-0x8]
   1b5ac: f9400068     	ldr	x8, [x3]
   1b5b0: f801e3ff     	stur	xzr, [sp, #0x1e]
   1b5b4: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   1b5b8: f90007ff     	str	xzr, [sp, #0x8]
   1b5bc: b4000188     	cbz	x8, 0x1b5ec <suspend_show+0x68>
   1b5c0: d5384108     	mrs	x8, SP_EL0
   1b5c4: f9438908     	ldr	x8, [x8, #0x710]
   1b5c8: f85f83a9     	ldur	x9, [x29, #-0x8]
   1b5cc: eb09011f     	cmp	x8, x9
   1b5d0: 54000521     	b.ne	0x1b674 <suspend_show+0xf0>
   1b5d4: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   1b5d8: a94457f6     	ldp	x22, x21, [sp, #0x40]
   1b5dc: a9437bfd     	ldp	x29, x30, [sp, #0x30]
   1b5e0: 910183ff     	add	sp, sp, #0x60
   1b5e4: d50323bf     	autiasp
   1b5e8: d65f03c0     	ret
   1b5ec: 90000008     	adrp	x8, 0x1b000 <string_change+0x3a8>
		000000000001b5ec:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1b5f0: aa0103f5     	mov	x21, x1
   1b5f4: aa0203f4     	mov	x20, x2
   1b5f8: f9400116     	ldr	x22, [x8]
		000000000001b5f8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1b5fc: aa0303f3     	mov	x19, x3
   1b600: f9472ec8     	ldr	x8, [x22, #0xe58]
   1b604: b4000128     	cbz	x8, 0x1b628 <suspend_show+0xa4>
   1b608: aa1603e0     	mov	x0, x22
   1b60c: b85fc110     	ldur	w16, [x8, #-0x4]
   1b610: 7281af31     	movk	w17, #0xd79
   1b614: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   1b618: 6b11021f     	cmp	w16, w17
   1b61c: 54000040     	b.eq	0x1b624 <suspend_show+0xa0>
   1b620: d4304500     	brk	#0x8228
   1b624: d63f0100     	blr	x8
   1b628: 394056c2     	ldrb	w2, [x22, #0x15]
   1b62c: 90000000     	adrp	x0, 0x1b000 <string_change+0x3a8>
		000000000001b62c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9144
   1b630: 91000000     	add	x0, x0, #0x0
		000000000001b630:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9144
   1b634: 90000001     	adrp	x1, 0x1b000 <string_change+0x3a8>
		000000000001b634:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b14
   1b638: 91000021     	add	x1, x1, #0x0
		000000000001b638:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b14
   1b63c: 94000000     	bl	0x1b63c <suspend_show+0xb8>
		000000000001b63c:  R_AARCH64_CALL26	_printk
   1b640: 394056c3     	ldrb	w3, [x22, #0x15]
   1b644: 90000002     	adrp	x2, 0x1b000 <string_change+0x3a8>
		000000000001b644:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31ca
   1b648: 91000042     	add	x2, x2, #0x0
		000000000001b648:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31ca
   1b64c: 910023e0     	add	x0, sp, #0x8
   1b650: 528003c1     	mov	w1, #0x1e               // =30
   1b654: 94000000     	bl	0x1b654 <suspend_show+0xd0>
		000000000001b654:  R_AARCH64_CALL26	snprintf
   1b658: 93407c04     	sxtw	x4, w0
   1b65c: 910023e3     	add	x3, sp, #0x8
   1b660: aa1403e1     	mov	x1, x20
   1b664: aa1503e0     	mov	x0, x21
   1b668: aa1303e2     	mov	x2, x19
   1b66c: 94000000     	bl	0x1b66c <suspend_show+0xe8>
		000000000001b66c:  R_AARCH64_CALL26	simple_read_from_buffer
   1b670: 17ffffd4     	b	0x1b5c0 <suspend_show+0x3c>
   1b674: 94000000     	bl	0x1b674 <suspend_show+0xf0>
		000000000001b674:  R_AARCH64_CALL26	__stack_chk_fail
