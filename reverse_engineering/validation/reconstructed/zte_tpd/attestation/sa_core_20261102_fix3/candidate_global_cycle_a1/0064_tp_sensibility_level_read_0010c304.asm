
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000015f84 <tp_sensibility_level_read>:
   15f84: d503233f     	paciasp
   15f88: d10143ff     	sub	sp, sp, #0x50
   15f8c: a9027bfd     	stp	x29, x30, [sp, #0x20]
   15f90: a90357f6     	stp	x22, x21, [sp, #0x30]
   15f94: a9044ff4     	stp	x20, x19, [sp, #0x40]
   15f98: 910083fd     	add	x29, sp, #0x20
   15f9c: d5384108     	mrs	x8, SP_EL0
   15fa0: aa1f03e0     	mov	x0, xzr
   15fa4: f9438908     	ldr	x8, [x8, #0x710]
   15fa8: f81f83a8     	stur	x8, [x29, #-0x8]
   15fac: f9400068     	ldr	x8, [x3]
   15fb0: 790023ff     	strh	wzr, [sp, #0x10]
   15fb4: f90007ff     	str	xzr, [sp, #0x8]
   15fb8: b4000188     	cbz	x8, 0x15fe8 <tp_sensibility_level_read+0x64>
   15fbc: d5384108     	mrs	x8, SP_EL0
   15fc0: f9438908     	ldr	x8, [x8, #0x710]
   15fc4: f85f83a9     	ldur	x9, [x29, #-0x8]
   15fc8: eb09011f     	cmp	x8, x9
   15fcc: 54000521     	b.ne	0x16070 <tp_sensibility_level_read+0xec>
   15fd0: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   15fd4: a94357f6     	ldp	x22, x21, [sp, #0x30]
   15fd8: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   15fdc: 910143ff     	add	sp, sp, #0x50
   15fe0: d50323bf     	autiasp
   15fe4: d65f03c0     	ret
   15fe8: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015fe8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   15fec: aa0103f5     	mov	x21, x1
   15ff0: aa0203f4     	mov	x20, x2
   15ff4: f9400116     	ldr	x22, [x8]
		0000000000015ff4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   15ff8: aa0303f3     	mov	x19, x3
   15ffc: f947b2c8     	ldr	x8, [x22, #0xf60]
   16000: b4000128     	cbz	x8, 0x16024 <tp_sensibility_level_read+0xa0>
   16004: aa1603e0     	mov	x0, x22
   16008: b85fc110     	ldur	w16, [x8, #-0x4]
   1600c: 7281af31     	movk	w17, #0xd79
   16010: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   16014: 6b11021f     	cmp	w16, w17
   16018: 54000040     	b.eq	0x16020 <tp_sensibility_level_read+0x9c>
   1601c: d4304500     	brk	#0x8228
   16020: d63f0100     	blr	x8
   16024: 394102c2     	ldrb	w2, [x22, #0x40]
   16028: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c81c
   1602c: 91000000     	add	x0, x0, #0x0
		000000000001602c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c81c
   16030: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016030:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x174f0
   16034: 91000021     	add	x1, x1, #0x0
		0000000000016034:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x174f0
   16038: 94000000     	bl	0x16038 <tp_sensibility_level_read+0xb4>
		0000000000016038:  R_AARCH64_CALL26	_printk
   1603c: 394102c3     	ldrb	w3, [x22, #0x40]
   16040: 90000002     	adrp	x2, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac39
   16044: 91000042     	add	x2, x2, #0x0
		0000000000016044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac39
   16048: 910023e0     	add	x0, sp, #0x8
   1604c: 52800141     	mov	w1, #0xa                // =10
   16050: 94000000     	bl	0x16050 <tp_sensibility_level_read+0xcc>
		0000000000016050:  R_AARCH64_CALL26	snprintf
   16054: 93407c04     	sxtw	x4, w0
   16058: 910023e3     	add	x3, sp, #0x8
   1605c: aa1403e1     	mov	x1, x20
   16060: aa1503e0     	mov	x0, x21
   16064: aa1303e2     	mov	x2, x19
   16068: 94000000     	bl	0x16068 <tp_sensibility_level_read+0xe4>
		0000000000016068:  R_AARCH64_CALL26	simple_read_from_buffer
   1606c: 17ffffd4     	b	0x15fbc <tp_sensibility_level_read+0x38>
   16070: 94000000     	bl	0x16070 <tp_sensibility_level_read+0xec>
		0000000000016070:  R_AARCH64_CALL26	__stack_chk_fail
