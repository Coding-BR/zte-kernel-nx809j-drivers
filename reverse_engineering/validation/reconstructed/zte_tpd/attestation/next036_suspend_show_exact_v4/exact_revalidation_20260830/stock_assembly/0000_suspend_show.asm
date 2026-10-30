
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000392c <suspend_show>:
    392c: d503233f     	paciasp
    3930: d10183ff     	sub	sp, sp, #0x60
    3934: a9037bfd     	stp	x29, x30, [sp, #0x30]
    3938: a90457f6     	stp	x22, x21, [sp, #0x40]
    393c: a9054ff4     	stp	x20, x19, [sp, #0x50]
    3940: 9100c3fd     	add	x29, sp, #0x30
    3944: d5384108     	mrs	x8, SP_EL0
    3948: aa1f03e0     	mov	x0, xzr
    394c: f9438908     	ldr	x8, [x8, #0x710]
    3950: f81f83a8     	stur	x8, [x29, #-0x8]
    3954: f9400068     	ldr	x8, [x3]
    3958: f801e3ff     	stur	xzr, [sp, #0x1e]
    395c: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    3960: f90007ff     	str	xzr, [sp, #0x8]
    3964: b4000188     	cbz	x8, 0x3994 <suspend_show+0x68>
    3968: d5384108     	mrs	x8, SP_EL0
    396c: f9438908     	ldr	x8, [x8, #0x710]
    3970: f85f83a9     	ldur	x9, [x29, #-0x8]
    3974: eb09011f     	cmp	x8, x9
    3978: 54000521     	b.ne	0x3a1c <suspend_show+0xf0>
    397c: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    3980: a94457f6     	ldp	x22, x21, [sp, #0x40]
    3984: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    3988: 910183ff     	add	sp, sp, #0x60
    398c: d50323bf     	autiasp
    3990: d65f03c0     	ret
    3994: 90000008     	adrp	x8, 0x3000 <tp_module_info_read+0x104>
		0000000000003994:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    3998: aa0103f5     	mov	x21, x1
    399c: aa0203f4     	mov	x20, x2
    39a0: f9400116     	ldr	x22, [x8]
		00000000000039a0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    39a4: aa0303f3     	mov	x19, x3
    39a8: f9472ec8     	ldr	x8, [x22, #0xe58]
    39ac: b4000128     	cbz	x8, 0x39d0 <suspend_show+0xa4>
    39b0: aa1603e0     	mov	x0, x22
    39b4: b85fc110     	ldur	w16, [x8, #-0x4]
    39b8: 7281af31     	movk	w17, #0xd79
    39bc: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    39c0: 6b11021f     	cmp	w16, w17
    39c4: 54000040     	b.eq	0x39cc <suspend_show+0xa0>
    39c8: d4304500     	brk	#0x8228
    39cc: d63f0100     	blr	x8
    39d0: 394056c2     	ldrb	w2, [x22, #0x15]
    39d4: 90000000     	adrp	x0, 0x3000 <tp_module_info_read+0x104>
		00000000000039d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8efe
    39d8: 91000000     	add	x0, x0, #0x0
		00000000000039d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8efe
    39dc: 90000001     	adrp	x1, 0x3000 <tp_module_info_read+0x104>
		00000000000039dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a07
    39e0: 91000021     	add	x1, x1, #0x0
		00000000000039e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a07
    39e4: 94000000     	bl	0x39e4 <suspend_show+0xb8>
		00000000000039e4:  R_AARCH64_CALL26	_printk
    39e8: 394056c3     	ldrb	w3, [x22, #0x15]
    39ec: 90000002     	adrp	x2, 0x3000 <tp_module_info_read+0x104>
		00000000000039ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3115
    39f0: 91000042     	add	x2, x2, #0x0
		00000000000039f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3115
    39f4: 910023e0     	add	x0, sp, #0x8
    39f8: 528003c1     	mov	w1, #0x1e               // =30
    39fc: 94000000     	bl	0x39fc <suspend_show+0xd0>
		00000000000039fc:  R_AARCH64_CALL26	snprintf
    3a00: 93407c04     	sxtw	x4, w0
    3a04: 910023e3     	add	x3, sp, #0x8
    3a08: aa1403e1     	mov	x1, x20
    3a0c: aa1503e0     	mov	x0, x21
    3a10: aa1303e2     	mov	x2, x19
    3a14: 94000000     	bl	0x3a14 <suspend_show+0xe8>
		0000000000003a14:  R_AARCH64_CALL26	simple_read_from_buffer
    3a18: 17ffffd4     	b	0x3968 <suspend_show+0x3c>
    3a1c: 94000000     	bl	0x3a1c <suspend_show+0xf0>
		0000000000003a1c:  R_AARCH64_CALL26	__stack_chk_fail
