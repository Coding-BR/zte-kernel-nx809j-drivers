
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000015f28 <tp_sensibility_level_read>:
   15f28: d503233f     	paciasp
   15f2c: d10143ff     	sub	sp, sp, #0x50
   15f30: a9027bfd     	stp	x29, x30, [sp, #0x20]
   15f34: a90357f6     	stp	x22, x21, [sp, #0x30]
   15f38: a9044ff4     	stp	x20, x19, [sp, #0x40]
   15f3c: 910083fd     	add	x29, sp, #0x20
   15f40: d5384108     	mrs	x8, SP_EL0
   15f44: aa1f03e0     	mov	x0, xzr
   15f48: f9438908     	ldr	x8, [x8, #0x710]
   15f4c: f81f83a8     	stur	x8, [x29, #-0x8]
   15f50: f9400068     	ldr	x8, [x3]
   15f54: 790023ff     	strh	wzr, [sp, #0x10]
   15f58: f90007ff     	str	xzr, [sp, #0x8]
   15f5c: b4000188     	cbz	x8, 0x15f8c <tp_sensibility_level_read+0x64>
   15f60: d5384108     	mrs	x8, SP_EL0
   15f64: f9438908     	ldr	x8, [x8, #0x710]
   15f68: f85f83a9     	ldur	x9, [x29, #-0x8]
   15f6c: eb09011f     	cmp	x8, x9
   15f70: 54000521     	b.ne	0x16014 <tp_sensibility_level_read+0xec>
   15f74: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   15f78: a94357f6     	ldp	x22, x21, [sp, #0x30]
   15f7c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   15f80: 910143ff     	add	sp, sp, #0x50
   15f84: d50323bf     	autiasp
   15f88: d65f03c0     	ret
   15f8c: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015f8c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   15f90: aa0103f5     	mov	x21, x1
   15f94: aa0203f4     	mov	x20, x2
   15f98: f9400116     	ldr	x22, [x8]
		0000000000015f98:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   15f9c: aa0303f3     	mov	x19, x3
   15fa0: f947b2c8     	ldr	x8, [x22, #0xf60]
   15fa4: b4000128     	cbz	x8, 0x15fc8 <tp_sensibility_level_read+0xa0>
   15fa8: aa1603e0     	mov	x0, x22
   15fac: b85fc110     	ldur	w16, [x8, #-0x4]
   15fb0: 7281af31     	movk	w17, #0xd79
   15fb4: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   15fb8: 6b11021f     	cmp	w16, w17
   15fbc: 54000040     	b.eq	0x15fc4 <tp_sensibility_level_read+0x9c>
   15fc0: d4304500     	brk	#0x8228
   15fc4: d63f0100     	blr	x8
   15fc8: 394102c2     	ldrb	w2, [x22, #0x40]
   15fcc: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015fcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c803
   15fd0: 91000000     	add	x0, x0, #0x0
		0000000000015fd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c803
   15fd4: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015fd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x174f0
   15fd8: 91000021     	add	x1, x1, #0x0
		0000000000015fd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x174f0
   15fdc: 94000000     	bl	0x15fdc <tp_sensibility_level_read+0xb4>
		0000000000015fdc:  R_AARCH64_CALL26	_printk
   15fe0: 394102c3     	ldrb	w3, [x22, #0x40]
   15fe4: 90000002     	adrp	x2, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015fe4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac39
   15fe8: 91000042     	add	x2, x2, #0x0
		0000000000015fe8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac39
   15fec: 910023e0     	add	x0, sp, #0x8
   15ff0: 52800141     	mov	w1, #0xa                // =10
   15ff4: 94000000     	bl	0x15ff4 <tp_sensibility_level_read+0xcc>
		0000000000015ff4:  R_AARCH64_CALL26	snprintf
   15ff8: 93407c04     	sxtw	x4, w0
   15ffc: 910023e3     	add	x3, sp, #0x8
   16000: aa1403e1     	mov	x1, x20
   16004: aa1503e0     	mov	x0, x21
   16008: aa1303e2     	mov	x2, x19
   1600c: 94000000     	bl	0x1600c <tp_sensibility_level_read+0xe4>
		000000000001600c:  R_AARCH64_CALL26	simple_read_from_buffer
   16010: 17ffffd4     	b	0x15f60 <tp_sensibility_level_read+0x38>
   16014: 94000000     	bl	0x16014 <tp_sensibility_level_read+0xec>
		0000000000016014:  R_AARCH64_CALL26	__stack_chk_fail
