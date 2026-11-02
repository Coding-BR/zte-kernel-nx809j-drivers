
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000159f4 <get_tp_report_rate>:
   159f4: d503233f     	paciasp
   159f8: d10143ff     	sub	sp, sp, #0x50
   159fc: a9027bfd     	stp	x29, x30, [sp, #0x20]
   15a00: a90357f6     	stp	x22, x21, [sp, #0x30]
   15a04: a9044ff4     	stp	x20, x19, [sp, #0x40]
   15a08: 910083fd     	add	x29, sp, #0x20
   15a0c: d5384108     	mrs	x8, SP_EL0
   15a10: aa1f03e0     	mov	x0, xzr
   15a14: f9438908     	ldr	x8, [x8, #0x710]
   15a18: f81f83a8     	stur	x8, [x29, #-0x8]
   15a1c: f9400068     	ldr	x8, [x3]
   15a20: 790023ff     	strh	wzr, [sp, #0x10]
   15a24: f90007ff     	str	xzr, [sp, #0x8]
   15a28: b4000188     	cbz	x8, 0x15a58 <get_tp_report_rate+0x64>
   15a2c: d5384108     	mrs	x8, SP_EL0
   15a30: f9438908     	ldr	x8, [x8, #0x710]
   15a34: f85f83a9     	ldur	x9, [x29, #-0x8]
   15a38: eb09011f     	cmp	x8, x9
   15a3c: 54000521     	b.ne	0x15ae0 <get_tp_report_rate+0xec>
   15a40: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   15a44: a94357f6     	ldp	x22, x21, [sp, #0x30]
   15a48: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   15a4c: 910143ff     	add	sp, sp, #0x50
   15a50: d50323bf     	autiasp
   15a54: d65f03c0     	ret
   15a58: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015a58:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   15a5c: aa0103f5     	mov	x21, x1
   15a60: aa0203f4     	mov	x20, x2
   15a64: f9400116     	ldr	x22, [x8]
		0000000000015a64:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   15a68: aa0303f3     	mov	x19, x3
   15a6c: f9478ec8     	ldr	x8, [x22, #0xf18]
   15a70: b4000128     	cbz	x8, 0x15a94 <get_tp_report_rate+0xa0>
   15a74: aa1603e0     	mov	x0, x22
   15a78: b85fc110     	ldur	w16, [x8, #-0x4]
   15a7c: 7281af31     	movk	w17, #0xd79
   15a80: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   15a84: 6b11021f     	cmp	w16, w17
   15a88: 54000040     	b.eq	0x15a90 <get_tp_report_rate+0x9c>
   15a8c: d4304500     	brk	#0x8228
   15a90: d63f0100     	blr	x8
   15a94: b94466c2     	ldr	w2, [x22, #0x464]
   15a98: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015a98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b33c
   15a9c: 91000000     	add	x0, x0, #0x0
		0000000000015a9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b33c
   15aa0: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015aa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17ffd
   15aa4: 91000021     	add	x1, x1, #0x0
		0000000000015aa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17ffd
   15aa8: 94000000     	bl	0x15aa8 <get_tp_report_rate+0xb4>
		0000000000015aa8:  R_AARCH64_CALL26	_printk
   15aac: b94466c3     	ldr	w3, [x22, #0x464]
   15ab0: 90000002     	adrp	x2, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015ab0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac39
   15ab4: 91000042     	add	x2, x2, #0x0
		0000000000015ab4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac39
   15ab8: 910023e0     	add	x0, sp, #0x8
   15abc: 52800141     	mov	w1, #0xa                // =10
   15ac0: 94000000     	bl	0x15ac0 <get_tp_report_rate+0xcc>
		0000000000015ac0:  R_AARCH64_CALL26	snprintf
   15ac4: 93407c04     	sxtw	x4, w0
   15ac8: 910023e3     	add	x3, sp, #0x8
   15acc: aa1403e1     	mov	x1, x20
   15ad0: aa1503e0     	mov	x0, x21
   15ad4: aa1303e2     	mov	x2, x19
   15ad8: 94000000     	bl	0x15ad8 <get_tp_report_rate+0xe4>
		0000000000015ad8:  R_AARCH64_CALL26	simple_read_from_buffer
   15adc: 17ffffd4     	b	0x15a2c <get_tp_report_rate+0x38>
   15ae0: 94000000     	bl	0x15ae0 <get_tp_report_rate+0xec>
		0000000000015ae0:  R_AARCH64_CALL26	__stack_chk_fail
