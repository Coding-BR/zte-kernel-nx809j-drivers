
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000015d6c <get_stability_level>:
   15d6c: d503233f     	paciasp
   15d70: d10143ff     	sub	sp, sp, #0x50
   15d74: a9027bfd     	stp	x29, x30, [sp, #0x20]
   15d78: a90357f6     	stp	x22, x21, [sp, #0x30]
   15d7c: a9044ff4     	stp	x20, x19, [sp, #0x40]
   15d80: 910083fd     	add	x29, sp, #0x20
   15d84: d5384108     	mrs	x8, SP_EL0
   15d88: aa1f03e0     	mov	x0, xzr
   15d8c: f9438908     	ldr	x8, [x8, #0x710]
   15d90: f81f83a8     	stur	x8, [x29, #-0x8]
   15d94: f9400068     	ldr	x8, [x3]
   15d98: 790023ff     	strh	wzr, [sp, #0x10]
   15d9c: f90007ff     	str	xzr, [sp, #0x8]
   15da0: b4000188     	cbz	x8, 0x15dd0 <get_stability_level+0x64>
   15da4: d5384108     	mrs	x8, SP_EL0
   15da8: f9438908     	ldr	x8, [x8, #0x710]
   15dac: f85f83a9     	ldur	x9, [x29, #-0x8]
   15db0: eb09011f     	cmp	x8, x9
   15db4: 54000521     	b.ne	0x15e58 <get_stability_level+0xec>
   15db8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   15dbc: a94357f6     	ldp	x22, x21, [sp, #0x30]
   15dc0: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   15dc4: 910143ff     	add	sp, sp, #0x50
   15dc8: d50323bf     	autiasp
   15dcc: d65f03c0     	ret
   15dd0: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015dd0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   15dd4: aa0103f5     	mov	x21, x1
   15dd8: aa0203f4     	mov	x20, x2
   15ddc: f9400116     	ldr	x22, [x8]
		0000000000015ddc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   15de0: aa0303f3     	mov	x19, x3
   15de4: f9479ec8     	ldr	x8, [x22, #0xf38]
   15de8: b4000128     	cbz	x8, 0x15e0c <get_stability_level+0xa0>
   15dec: aa1603e0     	mov	x0, x22
   15df0: b85fc110     	ldur	w16, [x8, #-0x4]
   15df4: 7281af31     	movk	w17, #0xd79
   15df8: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   15dfc: 6b11021f     	cmp	w16, w17
   15e00: 54000040     	b.eq	0x15e08 <get_stability_level+0x9c>
   15e04: d4304500     	brk	#0x8228
   15e08: d63f0100     	blr	x8
   15e0c: b9446ec2     	ldr	w2, [x22, #0x46c]
   15e10: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015e10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b33c
   15e14: 91000000     	add	x0, x0, #0x0
		0000000000015e14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b33c
   15e18: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015e18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1794d
   15e1c: 91000021     	add	x1, x1, #0x0
		0000000000015e1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1794d
   15e20: 94000000     	bl	0x15e20 <get_stability_level+0xb4>
		0000000000015e20:  R_AARCH64_CALL26	_printk
   15e24: b9446ec3     	ldr	w3, [x22, #0x46c]
   15e28: 90000002     	adrp	x2, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015e28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac39
   15e2c: 91000042     	add	x2, x2, #0x0
		0000000000015e2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac39
   15e30: 910023e0     	add	x0, sp, #0x8
   15e34: 52800141     	mov	w1, #0xa                // =10
   15e38: 94000000     	bl	0x15e38 <get_stability_level+0xcc>
		0000000000015e38:  R_AARCH64_CALL26	snprintf
   15e3c: 93407c04     	sxtw	x4, w0
   15e40: 910023e3     	add	x3, sp, #0x8
   15e44: aa1403e1     	mov	x1, x20
   15e48: aa1503e0     	mov	x0, x21
   15e4c: aa1303e2     	mov	x2, x19
   15e50: 94000000     	bl	0x15e50 <get_stability_level+0xe4>
		0000000000015e50:  R_AARCH64_CALL26	simple_read_from_buffer
   15e54: 17ffffd4     	b	0x15da4 <get_stability_level+0x38>
   15e58: 94000000     	bl	0x15e58 <get_stability_level+0xec>
		0000000000015e58:  R_AARCH64_CALL26	__stack_chk_fail
