
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025b10 <tp_single_aod_read>:
   25b10: d503233f     	paciasp
   25b14: d10143ff     	sub	sp, sp, #0x50
   25b18: a9027bfd     	stp	x29, x30, [sp, #0x20]
   25b1c: a90357f6     	stp	x22, x21, [sp, #0x30]
   25b20: a9044ff4     	stp	x20, x19, [sp, #0x40]
   25b24: 910083fd     	add	x29, sp, #0x20
   25b28: d5384108     	mrs	x8, SP_EL0
   25b2c: aa1f03e0     	mov	x0, xzr
   25b30: f9438908     	ldr	x8, [x8, #0x710]
   25b34: f81f83a8     	stur	x8, [x29, #-0x8]
   25b38: f9400068     	ldr	x8, [x3]
   25b3c: 790023ff     	strh	wzr, [sp, #0x10]
   25b40: f90007ff     	str	xzr, [sp, #0x8]
   25b44: b4000188     	cbz	x8, 0x25b74 <tp_single_aod_read+0x64>
   25b48: d5384108     	mrs	x8, SP_EL0
   25b4c: f9438908     	ldr	x8, [x8, #0x710]
   25b50: f85f83a9     	ldur	x9, [x29, #-0x8]
   25b54: eb09011f     	cmp	x8, x9
   25b58: 54000521     	b.ne	0x25bfc <tp_single_aod_read+0xec>
   25b5c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   25b60: a94357f6     	ldp	x22, x21, [sp, #0x30]
   25b64: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   25b68: 910143ff     	add	sp, sp, #0x50
   25b6c: d50323bf     	autiasp
   25b70: d65f03c0     	ret
   25b74: 90000008     	adrp	x8, 0x25000 <tp_glove_read+0x5c>
		0000000000025b74:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25b78: aa0103f5     	mov	x21, x1
   25b7c: aa0203f4     	mov	x20, x2
   25b80: f9400116     	ldr	x22, [x8]
		0000000000025b80:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25b84: aa0303f3     	mov	x19, x3
   25b88: f94766c8     	ldr	x8, [x22, #0xec8]
   25b8c: b4000128     	cbz	x8, 0x25bb0 <tp_single_aod_read+0xa0>
   25b90: aa1603e0     	mov	x0, x22
   25b94: b85fc110     	ldur	w16, [x8, #-0x4]
   25b98: 7281af31     	movk	w17, #0xd79
   25b9c: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   25ba0: 6b11021f     	cmp	w16, w17
   25ba4: 54000040     	b.eq	0x25bac <tp_single_aod_read+0x9c>
   25ba8: d4304500     	brk	#0x8228
   25bac: d63f0100     	blr	x8
   25bb0: b94452c2     	ldr	w2, [x22, #0x450]
   25bb4: 90000000     	adrp	x0, 0x25000 <tp_glove_read+0x5c>
		0000000000025bb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b36
   25bb8: 91000000     	add	x0, x0, #0x0
		0000000000025bb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b36
   25bbc: 90000001     	adrp	x1, 0x25000 <tp_glove_read+0x5c>
		0000000000025bbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa01c
   25bc0: 91000021     	add	x1, x1, #0x0
		0000000000025bc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa01c
   25bc4: 94000000     	bl	0x25bc4 <tp_single_aod_read+0xb4>
		0000000000025bc4:  R_AARCH64_CALL26	_printk
   25bc8: b94452c3     	ldr	w3, [x22, #0x450]
   25bcc: 90000002     	adrp	x2, 0x25000 <tp_glove_read+0x5c>
		0000000000025bcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81d4
   25bd0: 91000042     	add	x2, x2, #0x0
		0000000000025bd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81d4
   25bd4: 910023e0     	add	x0, sp, #0x8
   25bd8: 52800141     	mov	w1, #0xa                // =10
   25bdc: 94000000     	bl	0x25bdc <tp_single_aod_read+0xcc>
		0000000000025bdc:  R_AARCH64_CALL26	snprintf
   25be0: 93407c04     	sxtw	x4, w0
   25be4: 910023e3     	add	x3, sp, #0x8
   25be8: aa1403e1     	mov	x1, x20
   25bec: aa1503e0     	mov	x0, x21
   25bf0: aa1303e2     	mov	x2, x19
   25bf4: 94000000     	bl	0x25bf4 <tp_single_aod_read+0xe4>
		0000000000025bf4:  R_AARCH64_CALL26	simple_read_from_buffer
   25bf8: 17ffffd4     	b	0x25b48 <tp_single_aod_read+0x38>
   25bfc: 94000000     	bl	0x25bfc <tp_single_aod_read+0xec>
		0000000000025bfc:  R_AARCH64_CALL26	__stack_chk_fail
