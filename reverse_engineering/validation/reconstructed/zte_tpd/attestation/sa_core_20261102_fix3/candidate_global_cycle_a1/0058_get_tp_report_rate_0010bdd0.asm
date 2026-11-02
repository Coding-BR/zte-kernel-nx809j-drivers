
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000015a50 <get_tp_report_rate>:
   15a50: d503233f     	paciasp
   15a54: d10143ff     	sub	sp, sp, #0x50
   15a58: a9027bfd     	stp	x29, x30, [sp, #0x20]
   15a5c: a90357f6     	stp	x22, x21, [sp, #0x30]
   15a60: a9044ff4     	stp	x20, x19, [sp, #0x40]
   15a64: 910083fd     	add	x29, sp, #0x20
   15a68: d5384108     	mrs	x8, SP_EL0
   15a6c: aa1f03e0     	mov	x0, xzr
   15a70: f9438908     	ldr	x8, [x8, #0x710]
   15a74: f81f83a8     	stur	x8, [x29, #-0x8]
   15a78: f9400068     	ldr	x8, [x3]
   15a7c: 790023ff     	strh	wzr, [sp, #0x10]
   15a80: f90007ff     	str	xzr, [sp, #0x8]
   15a84: b4000188     	cbz	x8, 0x15ab4 <get_tp_report_rate+0x64>
   15a88: d5384108     	mrs	x8, SP_EL0
   15a8c: f9438908     	ldr	x8, [x8, #0x710]
   15a90: f85f83a9     	ldur	x9, [x29, #-0x8]
   15a94: eb09011f     	cmp	x8, x9
   15a98: 54000521     	b.ne	0x15b3c <get_tp_report_rate+0xec>
   15a9c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   15aa0: a94357f6     	ldp	x22, x21, [sp, #0x30]
   15aa4: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   15aa8: 910143ff     	add	sp, sp, #0x50
   15aac: d50323bf     	autiasp
   15ab0: d65f03c0     	ret
   15ab4: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015ab4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   15ab8: aa0103f5     	mov	x21, x1
   15abc: aa0203f4     	mov	x20, x2
   15ac0: f9400116     	ldr	x22, [x8]
		0000000000015ac0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   15ac4: aa0303f3     	mov	x19, x3
   15ac8: f9478ec8     	ldr	x8, [x22, #0xf18]
   15acc: b4000128     	cbz	x8, 0x15af0 <get_tp_report_rate+0xa0>
   15ad0: aa1603e0     	mov	x0, x22
   15ad4: b85fc110     	ldur	w16, [x8, #-0x4]
   15ad8: 7281af31     	movk	w17, #0xd79
   15adc: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   15ae0: 6b11021f     	cmp	w16, w17
   15ae4: 54000040     	b.eq	0x15aec <get_tp_report_rate+0x9c>
   15ae8: d4304500     	brk	#0x8228
   15aec: d63f0100     	blr	x8
   15af0: b94466c2     	ldr	w2, [x22, #0x464]
   15af4: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015af4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b33c
   15af8: 91000000     	add	x0, x0, #0x0
		0000000000015af8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b33c
   15afc: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015afc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17ffd
   15b00: 91000021     	add	x1, x1, #0x0
		0000000000015b00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17ffd
   15b04: 94000000     	bl	0x15b04 <get_tp_report_rate+0xb4>
		0000000000015b04:  R_AARCH64_CALL26	_printk
   15b08: b94466c3     	ldr	w3, [x22, #0x464]
   15b0c: 90000002     	adrp	x2, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015b0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac39
   15b10: 91000042     	add	x2, x2, #0x0
		0000000000015b10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac39
   15b14: 910023e0     	add	x0, sp, #0x8
   15b18: 52800141     	mov	w1, #0xa                // =10
   15b1c: 94000000     	bl	0x15b1c <get_tp_report_rate+0xcc>
		0000000000015b1c:  R_AARCH64_CALL26	snprintf
   15b20: 93407c04     	sxtw	x4, w0
   15b24: 910023e3     	add	x3, sp, #0x8
   15b28: aa1403e1     	mov	x1, x20
   15b2c: aa1503e0     	mov	x0, x21
   15b30: aa1303e2     	mov	x2, x19
   15b34: 94000000     	bl	0x15b34 <get_tp_report_rate+0xe4>
		0000000000015b34:  R_AARCH64_CALL26	simple_read_from_buffer
   15b38: 17ffffd4     	b	0x15a88 <get_tp_report_rate+0x38>
   15b3c: 94000000     	bl	0x15b3c <get_tp_report_rate+0xec>
		0000000000015b3c:  R_AARCH64_CALL26	__stack_chk_fail
