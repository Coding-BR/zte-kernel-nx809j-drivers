
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000015b44 <set_tp_report_rate>:
   15b44: d503233f     	paciasp
   15b48: d100c3ff     	sub	sp, sp, #0x30
   15b4c: a9017bfd     	stp	x29, x30, [sp, #0x10]
   15b50: a9024ff4     	stp	x20, x19, [sp, #0x20]
   15b54: 910043fd     	add	x29, sp, #0x10
   15b58: d5384108     	mrs	x8, SP_EL0
   15b5c: aa0203f3     	mov	x19, x2
   15b60: aa0103e0     	mov	x0, x1
   15b64: f9438908     	ldr	x8, [x8, #0x710]
   15b68: 910013e3     	add	x3, sp, #0x4
   15b6c: aa0203e1     	mov	x1, x2
   15b70: 52800142     	mov	w2, #0xa                // =10
   15b74: f90007e8     	str	x8, [sp, #0x8]
   15b78: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015b78:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   15b7c: f9400114     	ldr	x20, [x8]
		0000000000015b7c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   15b80: b90007ff     	str	wzr, [sp, #0x4]
   15b84: 94000000     	bl	0x15b84 <set_tp_report_rate+0x40>
		0000000000015b84:  R_AARCH64_CALL26	kstrtouint_from_user
   15b88: 340001a0     	cbz	w0, 0x15bbc <set_tp_report_rate+0x78>
   15b8c: 928002b3     	mov	x19, #-0x16             // =-22
   15b90: d5384108     	mrs	x8, SP_EL0
   15b94: f9438908     	ldr	x8, [x8, #0x710]
   15b98: f94007e9     	ldr	x9, [sp, #0x8]
   15b9c: eb09011f     	cmp	x8, x9
   15ba0: 54000321     	b.ne	0x15c04 <set_tp_report_rate+0xc0>
   15ba4: aa1303e0     	mov	x0, x19
   15ba8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   15bac: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   15bb0: 9100c3ff     	add	sp, sp, #0x30
   15bb4: d50323bf     	autiasp
   15bb8: d65f03c0     	ret
   15bbc: b94007e2     	ldr	w2, [sp, #0x4]
   15bc0: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015bc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d88
   15bc4: 91000000     	add	x0, x0, #0x0
		0000000000015bc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d88
   15bc8: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015bc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c5c2
   15bcc: 91000021     	add	x1, x1, #0x0
		0000000000015bcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c5c2
   15bd0: 94000000     	bl	0x15bd0 <set_tp_report_rate+0x8c>
		0000000000015bd0:  R_AARCH64_CALL26	_printk
   15bd4: f9478a88     	ldr	x8, [x20, #0xf10]
   15bd8: b4fffdc8     	cbz	x8, 0x15b90 <set_tp_report_rate+0x4c>
   15bdc: b94007e1     	ldr	w1, [sp, #0x4]
   15be0: aa1403e0     	mov	x0, x20
   15be4: b85fc110     	ldur	w16, [x8, #-0x4]
   15be8: 72969331     	movk	w17, #0xb499
   15bec: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   15bf0: 6b11021f     	cmp	w16, w17
   15bf4: 54000040     	b.eq	0x15bfc <set_tp_report_rate+0xb8>
   15bf8: d4304500     	brk	#0x8228
   15bfc: d63f0100     	blr	x8
   15c00: 17ffffe4     	b	0x15b90 <set_tp_report_rate+0x4c>
   15c04: 94000000     	bl	0x15c04 <set_tp_report_rate+0xc0>
		0000000000015c04:  R_AARCH64_CALL26	__stack_chk_fail
