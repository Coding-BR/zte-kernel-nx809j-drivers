
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000015e60 <set_stability_level>:
   15e60: d503233f     	paciasp
   15e64: d100c3ff     	sub	sp, sp, #0x30
   15e68: a9017bfd     	stp	x29, x30, [sp, #0x10]
   15e6c: a9024ff4     	stp	x20, x19, [sp, #0x20]
   15e70: 910043fd     	add	x29, sp, #0x10
   15e74: d5384108     	mrs	x8, SP_EL0
   15e78: aa0203f3     	mov	x19, x2
   15e7c: aa0103e0     	mov	x0, x1
   15e80: f9438908     	ldr	x8, [x8, #0x710]
   15e84: 910013e3     	add	x3, sp, #0x4
   15e88: aa0203e1     	mov	x1, x2
   15e8c: 52800142     	mov	w2, #0xa                // =10
   15e90: f90007e8     	str	x8, [sp, #0x8]
   15e94: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015e94:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   15e98: f9400114     	ldr	x20, [x8]
		0000000000015e98:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   15e9c: b90007ff     	str	wzr, [sp, #0x4]
   15ea0: 94000000     	bl	0x15ea0 <set_stability_level+0x40>
		0000000000015ea0:  R_AARCH64_CALL26	kstrtouint_from_user
   15ea4: 340001a0     	cbz	w0, 0x15ed8 <set_stability_level+0x78>
   15ea8: 928002b3     	mov	x19, #-0x16             // =-22
   15eac: d5384108     	mrs	x8, SP_EL0
   15eb0: f9438908     	ldr	x8, [x8, #0x710]
   15eb4: f94007e9     	ldr	x9, [sp, #0x8]
   15eb8: eb09011f     	cmp	x8, x9
   15ebc: 54000321     	b.ne	0x15f20 <set_stability_level+0xc0>
   15ec0: aa1303e0     	mov	x0, x19
   15ec4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   15ec8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   15ecc: 9100c3ff     	add	sp, sp, #0x30
   15ed0: d50323bf     	autiasp
   15ed4: d65f03c0     	ret
   15ed8: b94007e2     	ldr	w2, [sp, #0x4]
   15edc: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015edc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d88
   15ee0: 91000000     	add	x0, x0, #0x0
		0000000000015ee0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d88
   15ee4: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015ee4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x176b6
   15ee8: 91000021     	add	x1, x1, #0x0
		0000000000015ee8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x176b6
   15eec: 94000000     	bl	0x15eec <set_stability_level+0x8c>
		0000000000015eec:  R_AARCH64_CALL26	_printk
   15ef0: f9479a88     	ldr	x8, [x20, #0xf30]
   15ef4: b4fffdc8     	cbz	x8, 0x15eac <set_stability_level+0x4c>
   15ef8: b94007e1     	ldr	w1, [sp, #0x4]
   15efc: aa1403e0     	mov	x0, x20
   15f00: b85fc110     	ldur	w16, [x8, #-0x4]
   15f04: 72969331     	movk	w17, #0xb499
   15f08: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   15f0c: 6b11021f     	cmp	w16, w17
   15f10: 54000040     	b.eq	0x15f18 <set_stability_level+0xb8>
   15f14: d4304500     	brk	#0x8228
   15f18: d63f0100     	blr	x8
   15f1c: 17ffffe4     	b	0x15eac <set_stability_level+0x4c>
   15f20: 94000000     	bl	0x15f20 <set_stability_level+0xc0>
		0000000000015f20:  R_AARCH64_CALL26	__stack_chk_fail
