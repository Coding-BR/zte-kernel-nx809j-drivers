
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004614 <index_store>:
    4614: d503233f     	paciasp
    4618: d10103ff     	sub	sp, sp, #0x40
    461c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4620: f90013f5     	str	x21, [sp, #0x20]
    4624: a9034ff4     	stp	x20, x19, [sp, #0x30]
    4628: 910043fd     	add	x29, sp, #0x10
    462c: d5384109     	mrs	x9, SP_EL0
    4630: aa0203e8     	mov	x8, x2
    4634: 910013e2     	add	x2, sp, #0x4
    4638: f9438929     	ldr	x9, [x9, #0x710]
    463c: 2a1f03e1     	mov	w1, wzr
    4640: aa0303f3     	mov	x19, x3
    4644: f90007e9     	str	x9, [sp, #0x8]
    4648: f9404c15     	ldr	x21, [x0, #0x98]
    464c: aa0803e0     	mov	x0, x8
    4650: b90007ff     	str	wzr, [sp, #0x4]
    4654: 94000000     	bl	0x4654 <index_store+0x40>
		0000000000004654:  R_AARCH64_CALL26	kstrtouint
    4658: 36f801c0     	tbz	w0, #0x1f, 0x4690 <index_store+0x7c>
    465c: 93407c13     	sxtw	x19, w0
    4660: d5384108     	mrs	x8, SP_EL0
    4664: f9438908     	ldr	x8, [x8, #0x710]
    4668: f94007e9     	ldr	x9, [sp, #0x8]
    466c: eb09011f     	cmp	x8, x9
    4670: 540005e1     	b.ne	0x472c <index_store+0x118>
    4674: aa1303e0     	mov	x0, x19
    4678: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    467c: f94013f5     	ldr	x21, [sp, #0x20]
    4680: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    4684: 910103ff     	add	sp, sp, #0x40
    4688: d50323bf     	autiasp
    468c: d65f03c0     	ret
    4690: b94007e4     	ldr	w4, [sp, #0x4]
    4694: 394ed2a8     	ldrb	w8, [x21, #0x3b4]
    4698: 6b08009f     	cmp	w4, w8
    469c: 54000149     	b.ls	0x46c4 <index_store+0xb0>
    46a0: 90000000     	adrp	x0, 0x4000 <awrw_store+0x1fc>
		00000000000046a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf8e
    46a4: 91000000     	add	x0, x0, #0x0
		00000000000046a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf8e
    46a8: 90000001     	adrp	x1, 0x4000 <awrw_store+0x1fc>
		00000000000046a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    46ac: 91000021     	add	x1, x1, #0x0
		00000000000046ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    46b0: 90000003     	adrp	x3, 0x4000 <awrw_store+0x1fc>
		00000000000046b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11af
    46b4: 91000063     	add	x3, x3, #0x0
		00000000000046b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11af
    46b8: 52812e22     	mov	w2, #0x971              // =2417
    46bc: 94000000     	bl	0x46bc <index_store+0xa8>
		00000000000046bc:  R_AARCH64_CALL26	_printk
    46c0: 17ffffe8     	b	0x4660 <index_store+0x4c>
    46c4: 90000000     	adrp	x0, 0x4000 <awrw_store+0x1fc>
		00000000000046c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a
    46c8: 91000000     	add	x0, x0, #0x0
		00000000000046c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a
    46cc: 90000001     	adrp	x1, 0x4000 <awrw_store+0x1fc>
		00000000000046cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    46d0: 91000021     	add	x1, x1, #0x0
		00000000000046d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    46d4: 90000003     	adrp	x3, 0x4000 <awrw_store+0x1fc>
		00000000000046d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11af
    46d8: 91000063     	add	x3, x3, #0x0
		00000000000046d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11af
    46dc: 52812e82     	mov	w2, #0x974              // =2420
    46e0: d102a2b4     	sub	x20, x21, #0xa8
    46e4: 94000000     	bl	0x46e4 <index_store+0xd0>
		00000000000046e4:  R_AARCH64_CALL26	_printk
    46e8: 910922a0     	add	x0, x21, #0x248
    46ec: 94000000     	bl	0x46ec <index_store+0xd8>
		00000000000046ec:  R_AARCH64_CALL26	mutex_lock
    46f0: b94007e1     	ldr	w1, [sp, #0x4]
    46f4: f94292a8     	ldr	x8, [x21, #0x520]
    46f8: aa1403e0     	mov	x0, x20
    46fc: b819c2a1     	stur	w1, [x21, #-0x64]
    4700: f9405508     	ldr	x8, [x8, #0xa8]
    4704: b85fc110     	ldur	w16, [x8, #-0x4]
    4708: 729bedd1     	movk	w17, #0xdf6e
    470c: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    4710: 6b11021f     	cmp	w16, w17
    4714: 54000040     	b.eq	0x471c <index_store+0x108>
    4718: d4304500     	brk	#0x8228
    471c: d63f0100     	blr	x8
    4720: 910922a0     	add	x0, x21, #0x248
    4724: 94000000     	bl	0x4724 <index_store+0x110>
		0000000000004724:  R_AARCH64_CALL26	mutex_unlock
    4728: 17ffffce     	b	0x4660 <index_store+0x4c>
    472c: 94000000     	bl	0x472c <index_store+0x118>
		000000000000472c:  R_AARCH64_CALL26	__stack_chk_fail
