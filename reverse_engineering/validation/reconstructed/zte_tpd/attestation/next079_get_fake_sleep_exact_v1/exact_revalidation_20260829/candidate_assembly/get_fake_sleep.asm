
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016acc <get_fake_sleep>:
   16acc: d503233f     	paciasp
   16ad0: d10143ff     	sub	sp, sp, #0x50
   16ad4: a9027bfd     	stp	x29, x30, [sp, #0x20]
   16ad8: a90357f6     	stp	x22, x21, [sp, #0x30]
   16adc: a9044ff4     	stp	x20, x19, [sp, #0x40]
   16ae0: 910083fd     	add	x29, sp, #0x20
   16ae4: d5384108     	mrs	x8, SP_EL0
   16ae8: aa1f03e0     	mov	x0, xzr
   16aec: f9438908     	ldr	x8, [x8, #0x710]
   16af0: f81f83a8     	stur	x8, [x29, #-0x8]
   16af4: f9400068     	ldr	x8, [x3]
   16af8: 790023ff     	strh	wzr, [sp, #0x10]
   16afc: f90007ff     	str	xzr, [sp, #0x8]
   16b00: b4000188     	cbz	x8, 0x16b30 <get_fake_sleep+0x64>
   16b04: d5384108     	mrs	x8, SP_EL0
   16b08: f9438908     	ldr	x8, [x8, #0x710]
   16b0c: f85f83a9     	ldur	x9, [x29, #-0x8]
   16b10: eb09011f     	cmp	x8, x9
   16b14: 54000521     	b.ne	0x16bb8 <get_fake_sleep+0xec>
   16b18: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   16b1c: a94357f6     	ldp	x22, x21, [sp, #0x30]
   16b20: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   16b24: 910143ff     	add	sp, sp, #0x50
   16b28: d50323bf     	autiasp
   16b2c: d65f03c0     	ret
   16b30: 90000008     	adrp	x8, 0x16000 <tp_sensibility_level_read+0xd8>
		0000000000016b30:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   16b34: aa0103f5     	mov	x21, x1
   16b38: aa0203f4     	mov	x20, x2
   16b3c: f9400116     	ldr	x22, [x8]
		0000000000016b3c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   16b40: aa0303f3     	mov	x19, x3
   16b44: f947e6c8     	ldr	x8, [x22, #0xfc8]
   16b48: b4000128     	cbz	x8, 0x16b6c <get_fake_sleep+0xa0>
   16b4c: aa1603e0     	mov	x0, x22
   16b50: b85fc110     	ldur	w16, [x8, #-0x4]
   16b54: 7281af31     	movk	w17, #0xd79
   16b58: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   16b5c: 6b11021f     	cmp	w16, w17
   16b60: 54000040     	b.eq	0x16b68 <get_fake_sleep+0x9c>
   16b64: d4304500     	brk	#0x8228
   16b68: d63f0100     	blr	x8
   16b6c: b94482c2     	ldr	w2, [x22, #0x480]
   16b70: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0xd8>
		0000000000016b70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9144
   16b74: 91000000     	add	x0, x0, #0x0
		0000000000016b74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9144
   16b78: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0xd8>
		0000000000016b78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62de
   16b7c: 91000021     	add	x1, x1, #0x0
		0000000000016b7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62de
   16b80: 94000000     	bl	0x16b80 <get_fake_sleep+0xb4>
		0000000000016b80:  R_AARCH64_CALL26	_printk
   16b84: b94482c3     	ldr	w3, [x22, #0x480]
   16b88: 90000002     	adrp	x2, 0x16000 <tp_sensibility_level_read+0xd8>
		0000000000016b88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81d4
   16b8c: 91000042     	add	x2, x2, #0x0
		0000000000016b8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81d4
   16b90: 910023e0     	add	x0, sp, #0x8
   16b94: 52800141     	mov	w1, #0xa                // =10
   16b98: 94000000     	bl	0x16b98 <get_fake_sleep+0xcc>
		0000000000016b98:  R_AARCH64_CALL26	snprintf
   16b9c: 93407c04     	sxtw	x4, w0
   16ba0: 910023e3     	add	x3, sp, #0x8
   16ba4: aa1403e1     	mov	x1, x20
   16ba8: aa1503e0     	mov	x0, x21
   16bac: aa1303e2     	mov	x2, x19
   16bb0: 94000000     	bl	0x16bb0 <get_fake_sleep+0xe4>
		0000000000016bb0:  R_AARCH64_CALL26	simple_read_from_buffer
   16bb4: 17ffffd4     	b	0x16b04 <get_fake_sleep+0x38>
   16bb8: 94000000     	bl	0x16bb8 <get_fake_sleep+0xec>
		0000000000016bb8:  R_AARCH64_CALL26	__stack_chk_fail
