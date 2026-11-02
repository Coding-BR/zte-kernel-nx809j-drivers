
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000015dc8 <get_stability_level>:
   15dc8: d503233f     	paciasp
   15dcc: d10143ff     	sub	sp, sp, #0x50
   15dd0: a9027bfd     	stp	x29, x30, [sp, #0x20]
   15dd4: a90357f6     	stp	x22, x21, [sp, #0x30]
   15dd8: a9044ff4     	stp	x20, x19, [sp, #0x40]
   15ddc: 910083fd     	add	x29, sp, #0x20
   15de0: d5384108     	mrs	x8, SP_EL0
   15de4: aa1f03e0     	mov	x0, xzr
   15de8: f9438908     	ldr	x8, [x8, #0x710]
   15dec: f81f83a8     	stur	x8, [x29, #-0x8]
   15df0: f9400068     	ldr	x8, [x3]
   15df4: 790023ff     	strh	wzr, [sp, #0x10]
   15df8: f90007ff     	str	xzr, [sp, #0x8]
   15dfc: b4000188     	cbz	x8, 0x15e2c <get_stability_level+0x64>
   15e00: d5384108     	mrs	x8, SP_EL0
   15e04: f9438908     	ldr	x8, [x8, #0x710]
   15e08: f85f83a9     	ldur	x9, [x29, #-0x8]
   15e0c: eb09011f     	cmp	x8, x9
   15e10: 54000521     	b.ne	0x15eb4 <get_stability_level+0xec>
   15e14: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   15e18: a94357f6     	ldp	x22, x21, [sp, #0x30]
   15e1c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   15e20: 910143ff     	add	sp, sp, #0x50
   15e24: d50323bf     	autiasp
   15e28: d65f03c0     	ret
   15e2c: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015e2c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   15e30: aa0103f5     	mov	x21, x1
   15e34: aa0203f4     	mov	x20, x2
   15e38: f9400116     	ldr	x22, [x8]
		0000000000015e38:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   15e3c: aa0303f3     	mov	x19, x3
   15e40: f9479ec8     	ldr	x8, [x22, #0xf38]
   15e44: b4000128     	cbz	x8, 0x15e68 <get_stability_level+0xa0>
   15e48: aa1603e0     	mov	x0, x22
   15e4c: b85fc110     	ldur	w16, [x8, #-0x4]
   15e50: 7281af31     	movk	w17, #0xd79
   15e54: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   15e58: 6b11021f     	cmp	w16, w17
   15e5c: 54000040     	b.eq	0x15e64 <get_stability_level+0x9c>
   15e60: d4304500     	brk	#0x8228
   15e64: d63f0100     	blr	x8
   15e68: b9446ec2     	ldr	w2, [x22, #0x46c]
   15e6c: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015e6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b33c
   15e70: 91000000     	add	x0, x0, #0x0
		0000000000015e70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b33c
   15e74: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015e74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1794d
   15e78: 91000021     	add	x1, x1, #0x0
		0000000000015e78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1794d
   15e7c: 94000000     	bl	0x15e7c <get_stability_level+0xb4>
		0000000000015e7c:  R_AARCH64_CALL26	_printk
   15e80: b9446ec3     	ldr	w3, [x22, #0x46c]
   15e84: 90000002     	adrp	x2, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015e84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac39
   15e88: 91000042     	add	x2, x2, #0x0
		0000000000015e88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac39
   15e8c: 910023e0     	add	x0, sp, #0x8
   15e90: 52800141     	mov	w1, #0xa                // =10
   15e94: 94000000     	bl	0x15e94 <get_stability_level+0xcc>
		0000000000015e94:  R_AARCH64_CALL26	snprintf
   15e98: 93407c04     	sxtw	x4, w0
   15e9c: 910023e3     	add	x3, sp, #0x8
   15ea0: aa1403e1     	mov	x1, x20
   15ea4: aa1503e0     	mov	x0, x21
   15ea8: aa1303e2     	mov	x2, x19
   15eac: 94000000     	bl	0x15eac <get_stability_level+0xe4>
		0000000000015eac:  R_AARCH64_CALL26	simple_read_from_buffer
   15eb0: 17ffffd4     	b	0x15e00 <get_stability_level+0x38>
   15eb4: 94000000     	bl	0x15eb4 <get_stability_level+0xec>
		0000000000015eb4:  R_AARCH64_CALL26	__stack_chk_fail
