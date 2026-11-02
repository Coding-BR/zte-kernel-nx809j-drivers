
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000015c0c <get_follow_hand_level>:
   15c0c: d503233f     	paciasp
   15c10: d10143ff     	sub	sp, sp, #0x50
   15c14: a9027bfd     	stp	x29, x30, [sp, #0x20]
   15c18: a90357f6     	stp	x22, x21, [sp, #0x30]
   15c1c: a9044ff4     	stp	x20, x19, [sp, #0x40]
   15c20: 910083fd     	add	x29, sp, #0x20
   15c24: d5384108     	mrs	x8, SP_EL0
   15c28: aa1f03e0     	mov	x0, xzr
   15c2c: f9438908     	ldr	x8, [x8, #0x710]
   15c30: f81f83a8     	stur	x8, [x29, #-0x8]
   15c34: f9400068     	ldr	x8, [x3]
   15c38: 790023ff     	strh	wzr, [sp, #0x10]
   15c3c: f90007ff     	str	xzr, [sp, #0x8]
   15c40: b4000188     	cbz	x8, 0x15c70 <get_follow_hand_level+0x64>
   15c44: d5384108     	mrs	x8, SP_EL0
   15c48: f9438908     	ldr	x8, [x8, #0x710]
   15c4c: f85f83a9     	ldur	x9, [x29, #-0x8]
   15c50: eb09011f     	cmp	x8, x9
   15c54: 54000521     	b.ne	0x15cf8 <get_follow_hand_level+0xec>
   15c58: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   15c5c: a94357f6     	ldp	x22, x21, [sp, #0x30]
   15c60: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   15c64: 910143ff     	add	sp, sp, #0x50
   15c68: d50323bf     	autiasp
   15c6c: d65f03c0     	ret
   15c70: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015c70:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   15c74: aa0103f5     	mov	x21, x1
   15c78: aa0203f4     	mov	x20, x2
   15c7c: f9400116     	ldr	x22, [x8]
		0000000000015c7c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   15c80: aa0303f3     	mov	x19, x3
   15c84: f94796c8     	ldr	x8, [x22, #0xf28]
   15c88: b4000128     	cbz	x8, 0x15cac <get_follow_hand_level+0xa0>
   15c8c: aa1603e0     	mov	x0, x22
   15c90: b85fc110     	ldur	w16, [x8, #-0x4]
   15c94: 7281af31     	movk	w17, #0xd79
   15c98: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   15c9c: 6b11021f     	cmp	w16, w17
   15ca0: 54000040     	b.eq	0x15ca8 <get_follow_hand_level+0x9c>
   15ca4: d4304500     	brk	#0x8228
   15ca8: d63f0100     	blr	x8
   15cac: b9446ac2     	ldr	w2, [x22, #0x468]
   15cb0: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015cb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b33c
   15cb4: 91000000     	add	x0, x0, #0x0
		0000000000015cb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b33c
   15cb8: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015cb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18fb4
   15cbc: 91000021     	add	x1, x1, #0x0
		0000000000015cbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18fb4
   15cc0: 94000000     	bl	0x15cc0 <get_follow_hand_level+0xb4>
		0000000000015cc0:  R_AARCH64_CALL26	_printk
   15cc4: b9446ac3     	ldr	w3, [x22, #0x468]
   15cc8: 90000002     	adrp	x2, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015cc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac39
   15ccc: 91000042     	add	x2, x2, #0x0
		0000000000015ccc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac39
   15cd0: 910023e0     	add	x0, sp, #0x8
   15cd4: 52800141     	mov	w1, #0xa                // =10
   15cd8: 94000000     	bl	0x15cd8 <get_follow_hand_level+0xcc>
		0000000000015cd8:  R_AARCH64_CALL26	snprintf
   15cdc: 93407c04     	sxtw	x4, w0
   15ce0: 910023e3     	add	x3, sp, #0x8
   15ce4: aa1403e1     	mov	x1, x20
   15ce8: aa1503e0     	mov	x0, x21
   15cec: aa1303e2     	mov	x2, x19
   15cf0: 94000000     	bl	0x15cf0 <get_follow_hand_level+0xe4>
		0000000000015cf0:  R_AARCH64_CALL26	simple_read_from_buffer
   15cf4: 17ffffd4     	b	0x15c44 <get_follow_hand_level+0x38>
   15cf8: 94000000     	bl	0x15cf8 <get_follow_hand_level+0xec>
		0000000000015cf8:  R_AARCH64_CALL26	__stack_chk_fail
