
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000029f50 <tp_glove_read>:
   29f50: d503233f     	paciasp
   29f54: d10143ff     	sub	sp, sp, #0x50
   29f58: a9027bfd     	stp	x29, x30, [sp, #0x20]
   29f5c: a90357f6     	stp	x22, x21, [sp, #0x30]
   29f60: a9044ff4     	stp	x20, x19, [sp, #0x40]
   29f64: 910083fd     	add	x29, sp, #0x20
   29f68: d5384108     	mrs	x8, SP_EL0
   29f6c: aa1f03e0     	mov	x0, xzr
   29f70: f9438908     	ldr	x8, [x8, #0x710]
   29f74: f81f83a8     	stur	x8, [x29, #-0x8]
   29f78: f9400068     	ldr	x8, [x3]
   29f7c: 790023ff     	strh	wzr, [sp, #0x10]
   29f80: f90007ff     	str	xzr, [sp, #0x8]
   29f84: b4000188     	cbz	x8, 0x29fb4 <tp_glove_read+0x64>
   29f88: d5384108     	mrs	x8, SP_EL0
   29f8c: f9438908     	ldr	x8, [x8, #0x710]
   29f90: f85f83a9     	ldur	x9, [x29, #-0x8]
   29f94: eb09011f     	cmp	x8, x9
   29f98: 54000521     	b.ne	0x2a03c <tp_glove_read+0xec>
   29f9c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   29fa0: a94357f6     	ldp	x22, x21, [sp, #0x30]
   29fa4: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   29fa8: 910143ff     	add	sp, sp, #0x50
   29fac: d50323bf     	autiasp
   29fb0: d65f03c0     	ret
   29fb4: 90000008     	adrp	x8, 0x29000 <syna_tcm_testing_noise+0xa0>
		0000000000029fb4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   29fb8: aa0103f5     	mov	x21, x1
   29fbc: aa0203f4     	mov	x20, x2
   29fc0: f9400116     	ldr	x22, [x8]
		0000000000029fc0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   29fc4: aa0303f3     	mov	x19, x3
   29fc8: f94726c8     	ldr	x8, [x22, #0xe48]
   29fcc: b4000128     	cbz	x8, 0x29ff0 <tp_glove_read+0xa0>
   29fd0: aa1603e0     	mov	x0, x22
   29fd4: b85fc110     	ldur	w16, [x8, #-0x4]
   29fd8: 7281af31     	movk	w17, #0xd79
   29fdc: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   29fe0: 6b11021f     	cmp	w16, w17
   29fe4: 54000040     	b.eq	0x29fec <tp_glove_read+0x9c>
   29fe8: d4304500     	brk	#0x8228
   29fec: d63f0100     	blr	x8
   29ff0: b9400ac2     	ldr	w2, [x22, #0x8]
   29ff4: 90000000     	adrp	x0, 0x29000 <syna_tcm_testing_noise+0xa0>
		0000000000029ff4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c2c5
   29ff8: 91000000     	add	x0, x0, #0x0
		0000000000029ff8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c2c5
   29ffc: 90000001     	adrp	x1, 0x29000 <syna_tcm_testing_noise+0xa0>
		0000000000029ffc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d8f6
   2a000: 91000021     	add	x1, x1, #0x0
		000000000002a000:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d8f6
   2a004: 94000000     	bl	0x2a004 <tp_glove_read+0xb4>
		000000000002a004:  R_AARCH64_CALL26	_printk
   2a008: b9400ac3     	ldr	w3, [x22, #0x8]
   2a00c: 90000002     	adrp	x2, 0x2a000 <tp_glove_read+0xb0>
		000000000002a00c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ba14
   2a010: 91000042     	add	x2, x2, #0x0
		000000000002a010:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ba14
   2a014: 910023e0     	add	x0, sp, #0x8
   2a018: 52800141     	mov	w1, #0xa                // =10
   2a01c: 94000000     	bl	0x2a01c <tp_glove_read+0xcc>
		000000000002a01c:  R_AARCH64_CALL26	snprintf
   2a020: 93407c04     	sxtw	x4, w0
   2a024: 910023e3     	add	x3, sp, #0x8
   2a028: aa1403e1     	mov	x1, x20
   2a02c: aa1503e0     	mov	x0, x21
   2a030: aa1303e2     	mov	x2, x19
   2a034: 94000000     	bl	0x2a034 <tp_glove_read+0xe4>
		000000000002a034:  R_AARCH64_CALL26	simple_read_from_buffer
   2a038: 17ffffd4     	b	0x29f88 <tp_glove_read+0x38>
   2a03c: 94000000     	bl	0x2a03c <tp_glove_read+0xec>
		000000000002a03c:  R_AARCH64_CALL26	__stack_chk_fail
