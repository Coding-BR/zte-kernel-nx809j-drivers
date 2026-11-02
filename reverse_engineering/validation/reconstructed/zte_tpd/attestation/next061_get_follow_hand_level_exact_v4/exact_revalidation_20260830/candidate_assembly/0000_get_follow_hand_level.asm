
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000015bb0 <get_follow_hand_level>:
   15bb0: d503233f     	paciasp
   15bb4: d10143ff     	sub	sp, sp, #0x50
   15bb8: a9027bfd     	stp	x29, x30, [sp, #0x20]
   15bbc: a90357f6     	stp	x22, x21, [sp, #0x30]
   15bc0: a9044ff4     	stp	x20, x19, [sp, #0x40]
   15bc4: 910083fd     	add	x29, sp, #0x20
   15bc8: d5384108     	mrs	x8, SP_EL0
   15bcc: aa1f03e0     	mov	x0, xzr
   15bd0: f9438908     	ldr	x8, [x8, #0x710]
   15bd4: f81f83a8     	stur	x8, [x29, #-0x8]
   15bd8: f9400068     	ldr	x8, [x3]
   15bdc: 790023ff     	strh	wzr, [sp, #0x10]
   15be0: f90007ff     	str	xzr, [sp, #0x8]
   15be4: b4000188     	cbz	x8, 0x15c14 <get_follow_hand_level+0x64>
   15be8: d5384108     	mrs	x8, SP_EL0
   15bec: f9438908     	ldr	x8, [x8, #0x710]
   15bf0: f85f83a9     	ldur	x9, [x29, #-0x8]
   15bf4: eb09011f     	cmp	x8, x9
   15bf8: 54000521     	b.ne	0x15c9c <get_follow_hand_level+0xec>
   15bfc: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   15c00: a94357f6     	ldp	x22, x21, [sp, #0x30]
   15c04: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   15c08: 910143ff     	add	sp, sp, #0x50
   15c0c: d50323bf     	autiasp
   15c10: d65f03c0     	ret
   15c14: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015c14:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   15c18: aa0103f5     	mov	x21, x1
   15c1c: aa0203f4     	mov	x20, x2
   15c20: f9400116     	ldr	x22, [x8]
		0000000000015c20:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   15c24: aa0303f3     	mov	x19, x3
   15c28: f94796c8     	ldr	x8, [x22, #0xf28]
   15c2c: b4000128     	cbz	x8, 0x15c50 <get_follow_hand_level+0xa0>
   15c30: aa1603e0     	mov	x0, x22
   15c34: b85fc110     	ldur	w16, [x8, #-0x4]
   15c38: 7281af31     	movk	w17, #0xd79
   15c3c: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   15c40: 6b11021f     	cmp	w16, w17
   15c44: 54000040     	b.eq	0x15c4c <get_follow_hand_level+0x9c>
   15c48: d4304500     	brk	#0x8228
   15c4c: d63f0100     	blr	x8
   15c50: b9446ac2     	ldr	w2, [x22, #0x468]
   15c54: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015c54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b33c
   15c58: 91000000     	add	x0, x0, #0x0
		0000000000015c58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b33c
   15c5c: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015c5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18fb4
   15c60: 91000021     	add	x1, x1, #0x0
		0000000000015c60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18fb4
   15c64: 94000000     	bl	0x15c64 <get_follow_hand_level+0xb4>
		0000000000015c64:  R_AARCH64_CALL26	_printk
   15c68: b9446ac3     	ldr	w3, [x22, #0x468]
   15c6c: 90000002     	adrp	x2, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015c6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac39
   15c70: 91000042     	add	x2, x2, #0x0
		0000000000015c70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac39
   15c74: 910023e0     	add	x0, sp, #0x8
   15c78: 52800141     	mov	w1, #0xa                // =10
   15c7c: 94000000     	bl	0x15c7c <get_follow_hand_level+0xcc>
		0000000000015c7c:  R_AARCH64_CALL26	snprintf
   15c80: 93407c04     	sxtw	x4, w0
   15c84: 910023e3     	add	x3, sp, #0x8
   15c88: aa1403e1     	mov	x1, x20
   15c8c: aa1503e0     	mov	x0, x21
   15c90: aa1303e2     	mov	x2, x19
   15c94: 94000000     	bl	0x15c94 <get_follow_hand_level+0xe4>
		0000000000015c94:  R_AARCH64_CALL26	simple_read_from_buffer
   15c98: 17ffffd4     	b	0x15be8 <get_follow_hand_level+0x38>
   15c9c: 94000000     	bl	0x15c9c <get_follow_hand_level+0xec>
		0000000000015c9c:  R_AARCH64_CALL26	__stack_chk_fail
