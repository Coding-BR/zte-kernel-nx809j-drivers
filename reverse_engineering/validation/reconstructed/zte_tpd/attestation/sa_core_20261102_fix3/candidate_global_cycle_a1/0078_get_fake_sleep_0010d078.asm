
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016b28 <get_fake_sleep>:
   16b28: d503233f     	paciasp
   16b2c: d10143ff     	sub	sp, sp, #0x50
   16b30: a9027bfd     	stp	x29, x30, [sp, #0x20]
   16b34: a90357f6     	stp	x22, x21, [sp, #0x30]
   16b38: a9044ff4     	stp	x20, x19, [sp, #0x40]
   16b3c: 910083fd     	add	x29, sp, #0x20
   16b40: d5384108     	mrs	x8, SP_EL0
   16b44: aa1f03e0     	mov	x0, xzr
   16b48: f9438908     	ldr	x8, [x8, #0x710]
   16b4c: f81f83a8     	stur	x8, [x29, #-0x8]
   16b50: f9400068     	ldr	x8, [x3]
   16b54: 790023ff     	strh	wzr, [sp, #0x10]
   16b58: f90007ff     	str	xzr, [sp, #0x8]
   16b5c: b4000188     	cbz	x8, 0x16b8c <get_fake_sleep+0x64>
   16b60: d5384108     	mrs	x8, SP_EL0
   16b64: f9438908     	ldr	x8, [x8, #0x710]
   16b68: f85f83a9     	ldur	x9, [x29, #-0x8]
   16b6c: eb09011f     	cmp	x8, x9
   16b70: 54000521     	b.ne	0x16c14 <get_fake_sleep+0xec>
   16b74: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   16b78: a94357f6     	ldp	x22, x21, [sp, #0x30]
   16b7c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   16b80: 910143ff     	add	sp, sp, #0x50
   16b84: d50323bf     	autiasp
   16b88: d65f03c0     	ret
   16b8c: 90000008     	adrp	x8, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016b8c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   16b90: aa0103f5     	mov	x21, x1
   16b94: aa0203f4     	mov	x20, x2
   16b98: f9400116     	ldr	x22, [x8]
		0000000000016b98:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   16b9c: aa0303f3     	mov	x19, x3
   16ba0: f947e6c8     	ldr	x8, [x22, #0xfc8]
   16ba4: b4000128     	cbz	x8, 0x16bc8 <get_fake_sleep+0xa0>
   16ba8: aa1603e0     	mov	x0, x22
   16bac: b85fc110     	ldur	w16, [x8, #-0x4]
   16bb0: 7281af31     	movk	w17, #0xd79
   16bb4: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   16bb8: 6b11021f     	cmp	w16, w17
   16bbc: 54000040     	b.eq	0x16bc4 <get_fake_sleep+0x9c>
   16bc0: d4304500     	brk	#0x8228
   16bc4: d63f0100     	blr	x8
   16bc8: b94482c2     	ldr	w2, [x22, #0x480]
   16bcc: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016bcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9144
   16bd0: 91000000     	add	x0, x0, #0x0
		0000000000016bd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9144
   16bd4: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016bd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62de
   16bd8: 91000021     	add	x1, x1, #0x0
		0000000000016bd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62de
   16bdc: 94000000     	bl	0x16bdc <get_fake_sleep+0xb4>
		0000000000016bdc:  R_AARCH64_CALL26	_printk
   16be0: b94482c3     	ldr	w3, [x22, #0x480]
   16be4: 90000002     	adrp	x2, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016be4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81d4
   16be8: 91000042     	add	x2, x2, #0x0
		0000000000016be8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81d4
   16bec: 910023e0     	add	x0, sp, #0x8
   16bf0: 52800141     	mov	w1, #0xa                // =10
   16bf4: 94000000     	bl	0x16bf4 <get_fake_sleep+0xcc>
		0000000000016bf4:  R_AARCH64_CALL26	snprintf
   16bf8: 93407c04     	sxtw	x4, w0
   16bfc: 910023e3     	add	x3, sp, #0x8
   16c00: aa1403e1     	mov	x1, x20
   16c04: aa1503e0     	mov	x0, x21
   16c08: aa1303e2     	mov	x2, x19
   16c0c: 94000000     	bl	0x16c0c <get_fake_sleep+0xe4>
		0000000000016c0c:  R_AARCH64_CALL26	simple_read_from_buffer
   16c10: 17ffffd4     	b	0x16b60 <get_fake_sleep+0x38>
   16c14: 94000000     	bl	0x16c14 <get_fake_sleep+0xec>
		0000000000016c14:  R_AARCH64_CALL26	__stack_chk_fail
