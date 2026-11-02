
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025b6c <tp_single_aod_read>:
   25b6c: d503233f     	paciasp
   25b70: d10143ff     	sub	sp, sp, #0x50
   25b74: a9027bfd     	stp	x29, x30, [sp, #0x20]
   25b78: a90357f6     	stp	x22, x21, [sp, #0x30]
   25b7c: a9044ff4     	stp	x20, x19, [sp, #0x40]
   25b80: 910083fd     	add	x29, sp, #0x20
   25b84: d5384108     	mrs	x8, SP_EL0
   25b88: aa1f03e0     	mov	x0, xzr
   25b8c: f9438908     	ldr	x8, [x8, #0x710]
   25b90: f81f83a8     	stur	x8, [x29, #-0x8]
   25b94: f9400068     	ldr	x8, [x3]
   25b98: 790023ff     	strh	wzr, [sp, #0x10]
   25b9c: f90007ff     	str	xzr, [sp, #0x8]
   25ba0: b4000188     	cbz	x8, 0x25bd0 <tp_single_aod_read+0x64>
   25ba4: d5384108     	mrs	x8, SP_EL0
   25ba8: f9438908     	ldr	x8, [x8, #0x710]
   25bac: f85f83a9     	ldur	x9, [x29, #-0x8]
   25bb0: eb09011f     	cmp	x8, x9
   25bb4: 54000521     	b.ne	0x25c58 <tp_single_aod_read+0xec>
   25bb8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   25bbc: a94357f6     	ldp	x22, x21, [sp, #0x30]
   25bc0: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   25bc4: 910143ff     	add	sp, sp, #0x50
   25bc8: d50323bf     	autiasp
   25bcc: d65f03c0     	ret
   25bd0: 90000008     	adrp	x8, 0x25000 <tp_glove_read>
		0000000000025bd0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25bd4: aa0103f5     	mov	x21, x1
   25bd8: aa0203f4     	mov	x20, x2
   25bdc: f9400116     	ldr	x22, [x8]
		0000000000025bdc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25be0: aa0303f3     	mov	x19, x3
   25be4: f94766c8     	ldr	x8, [x22, #0xec8]
   25be8: b4000128     	cbz	x8, 0x25c0c <tp_single_aod_read+0xa0>
   25bec: aa1603e0     	mov	x0, x22
   25bf0: b85fc110     	ldur	w16, [x8, #-0x4]
   25bf4: 7281af31     	movk	w17, #0xd79
   25bf8: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   25bfc: 6b11021f     	cmp	w16, w17
   25c00: 54000040     	b.eq	0x25c08 <tp_single_aod_read+0x9c>
   25c04: d4304500     	brk	#0x8228
   25c08: d63f0100     	blr	x8
   25c0c: b94452c2     	ldr	w2, [x22, #0x450]
   25c10: 90000000     	adrp	x0, 0x25000 <tp_glove_read>
		0000000000025c10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b36
   25c14: 91000000     	add	x0, x0, #0x0
		0000000000025c14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b36
   25c18: 90000001     	adrp	x1, 0x25000 <tp_glove_read>
		0000000000025c18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa01c
   25c1c: 91000021     	add	x1, x1, #0x0
		0000000000025c1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa01c
   25c20: 94000000     	bl	0x25c20 <tp_single_aod_read+0xb4>
		0000000000025c20:  R_AARCH64_CALL26	_printk
   25c24: b94452c3     	ldr	w3, [x22, #0x450]
   25c28: 90000002     	adrp	x2, 0x25000 <tp_glove_read>
		0000000000025c28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81d4
   25c2c: 91000042     	add	x2, x2, #0x0
		0000000000025c2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81d4
   25c30: 910023e0     	add	x0, sp, #0x8
   25c34: 52800141     	mov	w1, #0xa                // =10
   25c38: 94000000     	bl	0x25c38 <tp_single_aod_read+0xcc>
		0000000000025c38:  R_AARCH64_CALL26	snprintf
   25c3c: 93407c04     	sxtw	x4, w0
   25c40: 910023e3     	add	x3, sp, #0x8
   25c44: aa1403e1     	mov	x1, x20
   25c48: aa1503e0     	mov	x0, x21
   25c4c: aa1303e2     	mov	x2, x19
   25c50: 94000000     	bl	0x25c50 <tp_single_aod_read+0xe4>
		0000000000025c50:  R_AARCH64_CALL26	simple_read_from_buffer
   25c54: 17ffffd4     	b	0x25ba4 <tp_single_aod_read+0x38>
   25c58: 94000000     	bl	0x25c58 <tp_single_aod_read+0xec>
		0000000000025c58:  R_AARCH64_CALL26	__stack_chk_fail
