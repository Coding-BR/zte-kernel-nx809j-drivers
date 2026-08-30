
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000015ae8 <set_tp_report_rate>:
   15ae8: d503233f     	paciasp
   15aec: d100c3ff     	sub	sp, sp, #0x30
   15af0: a9017bfd     	stp	x29, x30, [sp, #0x10]
   15af4: a9024ff4     	stp	x20, x19, [sp, #0x20]
   15af8: 910043fd     	add	x29, sp, #0x10
   15afc: d5384108     	mrs	x8, SP_EL0
   15b00: aa0203f3     	mov	x19, x2
   15b04: aa0103e0     	mov	x0, x1
   15b08: f9438908     	ldr	x8, [x8, #0x710]
   15b0c: 910013e3     	add	x3, sp, #0x4
   15b10: aa0203e1     	mov	x1, x2
   15b14: 52800142     	mov	w2, #0xa                // =10
   15b18: f90007e8     	str	x8, [sp, #0x8]
   15b1c: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015b1c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   15b20: f9400114     	ldr	x20, [x8]
		0000000000015b20:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   15b24: b90007ff     	str	wzr, [sp, #0x4]
   15b28: 94000000     	bl	0x15b28 <set_tp_report_rate+0x40>
		0000000000015b28:  R_AARCH64_CALL26	kstrtouint_from_user
   15b2c: 340001a0     	cbz	w0, 0x15b60 <set_tp_report_rate+0x78>
   15b30: 928002b3     	mov	x19, #-0x16             // =-22
   15b34: d5384108     	mrs	x8, SP_EL0
   15b38: f9438908     	ldr	x8, [x8, #0x710]
   15b3c: f94007e9     	ldr	x9, [sp, #0x8]
   15b40: eb09011f     	cmp	x8, x9
   15b44: 54000321     	b.ne	0x15ba8 <set_tp_report_rate+0xc0>
   15b48: aa1303e0     	mov	x0, x19
   15b4c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   15b50: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   15b54: 9100c3ff     	add	sp, sp, #0x30
   15b58: d50323bf     	autiasp
   15b5c: d65f03c0     	ret
   15b60: b94007e2     	ldr	w2, [sp, #0x4]
   15b64: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015b64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d88
   15b68: 91000000     	add	x0, x0, #0x0
		0000000000015b68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d88
   15b6c: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015b6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c5a9
   15b70: 91000021     	add	x1, x1, #0x0
		0000000000015b70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c5a9
   15b74: 94000000     	bl	0x15b74 <set_tp_report_rate+0x8c>
		0000000000015b74:  R_AARCH64_CALL26	_printk
   15b78: f9478a88     	ldr	x8, [x20, #0xf10]
   15b7c: b4fffdc8     	cbz	x8, 0x15b34 <set_tp_report_rate+0x4c>
   15b80: b94007e1     	ldr	w1, [sp, #0x4]
   15b84: aa1403e0     	mov	x0, x20
   15b88: b85fc110     	ldur	w16, [x8, #-0x4]
   15b8c: 72969331     	movk	w17, #0xb499
   15b90: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   15b94: 6b11021f     	cmp	w16, w17
   15b98: 54000040     	b.eq	0x15ba0 <set_tp_report_rate+0xb8>
   15b9c: d4304500     	brk	#0x8228
   15ba0: d63f0100     	blr	x8
   15ba4: 17ffffe4     	b	0x15b34 <set_tp_report_rate+0x4c>
   15ba8: 94000000     	bl	0x15ba8 <set_tp_report_rate+0xc0>
		0000000000015ba8:  R_AARCH64_CALL26	__stack_chk_fail
