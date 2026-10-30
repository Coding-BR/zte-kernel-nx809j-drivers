
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003b3c <headset_state_show>:
    3b3c: d503233f     	paciasp
    3b40: d10183ff     	sub	sp, sp, #0x60
    3b44: a9037bfd     	stp	x29, x30, [sp, #0x30]
    3b48: a90457f6     	stp	x22, x21, [sp, #0x40]
    3b4c: a9054ff4     	stp	x20, x19, [sp, #0x50]
    3b50: 9100c3fd     	add	x29, sp, #0x30
    3b54: d5384108     	mrs	x8, SP_EL0
    3b58: aa1f03e0     	mov	x0, xzr
    3b5c: f9438908     	ldr	x8, [x8, #0x710]
    3b60: f81f83a8     	stur	x8, [x29, #-0x8]
    3b64: f9400068     	ldr	x8, [x3]
    3b68: f801e3ff     	stur	xzr, [sp, #0x1e]
    3b6c: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    3b70: f90007ff     	str	xzr, [sp, #0x8]
    3b74: b4000188     	cbz	x8, 0x3ba4 <headset_state_show+0x68>
    3b78: d5384108     	mrs	x8, SP_EL0
    3b7c: f9438908     	ldr	x8, [x8, #0x710]
    3b80: f85f83a9     	ldur	x9, [x29, #-0x8]
    3b84: eb09011f     	cmp	x8, x9
    3b88: 54000521     	b.ne	0x3c2c <headset_state_show+0xf0>
    3b8c: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    3b90: a94457f6     	ldp	x22, x21, [sp, #0x40]
    3b94: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    3b98: 910183ff     	add	sp, sp, #0x60
    3b9c: d50323bf     	autiasp
    3ba0: d65f03c0     	ret
    3ba4: 90000008     	adrp	x8, 0x3000 <tp_module_info_read+0x104>
		0000000000003ba4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    3ba8: aa0103f5     	mov	x21, x1
    3bac: aa0203f4     	mov	x20, x2
    3bb0: f9400116     	ldr	x22, [x8]
		0000000000003bb0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    3bb4: aa0303f3     	mov	x19, x3
    3bb8: f9473ec8     	ldr	x8, [x22, #0xe78]
    3bbc: b4000128     	cbz	x8, 0x3be0 <headset_state_show+0xa4>
    3bc0: aa1603e0     	mov	x0, x22
    3bc4: b85fc110     	ldur	w16, [x8, #-0x4]
    3bc8: 7281af31     	movk	w17, #0xd79
    3bcc: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    3bd0: 6b11021f     	cmp	w16, w17
    3bd4: 54000040     	b.eq	0x3bdc <headset_state_show+0xa0>
    3bd8: d4304500     	brk	#0x8228
    3bdc: d63f0100     	blr	x8
    3be0: 39405ec2     	ldrb	w2, [x22, #0x17]
    3be4: 90000000     	adrp	x0, 0x3000 <tp_module_info_read+0x104>
		0000000000003be4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8efe
    3be8: 91000000     	add	x0, x0, #0x0
		0000000000003be8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8efe
    3bec: 90000001     	adrp	x1, 0x3000 <tp_module_info_read+0x104>
		0000000000003bec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbea9
    3bf0: 91000021     	add	x1, x1, #0x0
		0000000000003bf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbea9
    3bf4: 94000000     	bl	0x3bf4 <headset_state_show+0xb8>
		0000000000003bf4:  R_AARCH64_CALL26	_printk
    3bf8: 39405ec3     	ldrb	w3, [x22, #0x17]
    3bfc: 90000002     	adrp	x2, 0x3000 <tp_module_info_read+0x104>
		0000000000003bfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xabaa
    3c00: 91000042     	add	x2, x2, #0x0
		0000000000003c00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xabaa
    3c04: 910023e0     	add	x0, sp, #0x8
    3c08: 528003c1     	mov	w1, #0x1e               // =30
    3c0c: 94000000     	bl	0x3c0c <headset_state_show+0xd0>
		0000000000003c0c:  R_AARCH64_CALL26	snprintf
    3c10: 93407c04     	sxtw	x4, w0
    3c14: 910023e3     	add	x3, sp, #0x8
    3c18: aa1403e1     	mov	x1, x20
    3c1c: aa1503e0     	mov	x0, x21
    3c20: aa1303e2     	mov	x2, x19
    3c24: 94000000     	bl	0x3c24 <headset_state_show+0xe8>
		0000000000003c24:  R_AARCH64_CALL26	simple_read_from_buffer
    3c28: 17ffffd4     	b	0x3b78 <headset_state_show+0x3c>
    3c2c: 94000000     	bl	0x3c2c <headset_state_show+0xf0>
		0000000000003c2c:  R_AARCH64_CALL26	__stack_chk_fail
