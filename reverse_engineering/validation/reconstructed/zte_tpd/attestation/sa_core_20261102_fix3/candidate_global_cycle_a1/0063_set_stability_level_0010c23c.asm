
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000015ebc <set_stability_level>:
   15ebc: d503233f     	paciasp
   15ec0: d100c3ff     	sub	sp, sp, #0x30
   15ec4: a9017bfd     	stp	x29, x30, [sp, #0x10]
   15ec8: a9024ff4     	stp	x20, x19, [sp, #0x20]
   15ecc: 910043fd     	add	x29, sp, #0x10
   15ed0: d5384108     	mrs	x8, SP_EL0
   15ed4: aa0203f3     	mov	x19, x2
   15ed8: aa0103e0     	mov	x0, x1
   15edc: f9438908     	ldr	x8, [x8, #0x710]
   15ee0: 910013e3     	add	x3, sp, #0x4
   15ee4: aa0203e1     	mov	x1, x2
   15ee8: 52800142     	mov	w2, #0xa                // =10
   15eec: f90007e8     	str	x8, [sp, #0x8]
   15ef0: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015ef0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   15ef4: f9400114     	ldr	x20, [x8]
		0000000000015ef4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   15ef8: b90007ff     	str	wzr, [sp, #0x4]
   15efc: 94000000     	bl	0x15efc <set_stability_level+0x40>
		0000000000015efc:  R_AARCH64_CALL26	kstrtouint_from_user
   15f00: 340001a0     	cbz	w0, 0x15f34 <set_stability_level+0x78>
   15f04: 928002b3     	mov	x19, #-0x16             // =-22
   15f08: d5384108     	mrs	x8, SP_EL0
   15f0c: f9438908     	ldr	x8, [x8, #0x710]
   15f10: f94007e9     	ldr	x9, [sp, #0x8]
   15f14: eb09011f     	cmp	x8, x9
   15f18: 54000321     	b.ne	0x15f7c <set_stability_level+0xc0>
   15f1c: aa1303e0     	mov	x0, x19
   15f20: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   15f24: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   15f28: 9100c3ff     	add	sp, sp, #0x30
   15f2c: d50323bf     	autiasp
   15f30: d65f03c0     	ret
   15f34: b94007e2     	ldr	w2, [sp, #0x4]
   15f38: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015f38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d88
   15f3c: 91000000     	add	x0, x0, #0x0
		0000000000015f3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d88
   15f40: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015f40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x176b6
   15f44: 91000021     	add	x1, x1, #0x0
		0000000000015f44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x176b6
   15f48: 94000000     	bl	0x15f48 <set_stability_level+0x8c>
		0000000000015f48:  R_AARCH64_CALL26	_printk
   15f4c: f9479a88     	ldr	x8, [x20, #0xf30]
   15f50: b4fffdc8     	cbz	x8, 0x15f08 <set_stability_level+0x4c>
   15f54: b94007e1     	ldr	w1, [sp, #0x4]
   15f58: aa1403e0     	mov	x0, x20
   15f5c: b85fc110     	ldur	w16, [x8, #-0x4]
   15f60: 72969331     	movk	w17, #0xb499
   15f64: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   15f68: 6b11021f     	cmp	w16, w17
   15f6c: 54000040     	b.eq	0x15f74 <set_stability_level+0xb8>
   15f70: d4304500     	brk	#0x8228
   15f74: d63f0100     	blr	x8
   15f78: 17ffffe4     	b	0x15f08 <set_stability_level+0x4c>
   15f7c: 94000000     	bl	0x15f7c <set_stability_level+0xc0>
		0000000000015f7c:  R_AARCH64_CALL26	__stack_chk_fail
