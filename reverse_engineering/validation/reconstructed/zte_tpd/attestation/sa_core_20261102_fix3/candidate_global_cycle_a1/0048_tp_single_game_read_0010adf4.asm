
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025d38 <tp_single_game_read>:
   25d38: d503233f     	paciasp
   25d3c: d10143ff     	sub	sp, sp, #0x50
   25d40: a9027bfd     	stp	x29, x30, [sp, #0x20]
   25d44: a90357f6     	stp	x22, x21, [sp, #0x30]
   25d48: a9044ff4     	stp	x20, x19, [sp, #0x40]
   25d4c: 910083fd     	add	x29, sp, #0x20
   25d50: d5384108     	mrs	x8, SP_EL0
   25d54: aa1f03e0     	mov	x0, xzr
   25d58: f9438908     	ldr	x8, [x8, #0x710]
   25d5c: f81f83a8     	stur	x8, [x29, #-0x8]
   25d60: f9400068     	ldr	x8, [x3]
   25d64: 790023ff     	strh	wzr, [sp, #0x10]
   25d68: f90007ff     	str	xzr, [sp, #0x8]
   25d6c: b4000188     	cbz	x8, 0x25d9c <tp_single_game_read+0x64>
   25d70: d5384108     	mrs	x8, SP_EL0
   25d74: f9438908     	ldr	x8, [x8, #0x710]
   25d78: f85f83a9     	ldur	x9, [x29, #-0x8]
   25d7c: eb09011f     	cmp	x8, x9
   25d80: 54000521     	b.ne	0x25e24 <tp_single_game_read+0xec>
   25d84: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   25d88: a94357f6     	ldp	x22, x21, [sp, #0x30]
   25d8c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   25d90: 910143ff     	add	sp, sp, #0x50
   25d94: d50323bf     	autiasp
   25d98: d65f03c0     	ret
   25d9c: 90000008     	adrp	x8, 0x25000 <tp_glove_read>
		0000000000025d9c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25da0: aa0103f5     	mov	x21, x1
   25da4: aa0203f4     	mov	x20, x2
   25da8: f9400116     	ldr	x22, [x8]
		0000000000025da8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25dac: aa0303f3     	mov	x19, x3
   25db0: f9476ec8     	ldr	x8, [x22, #0xed8]
   25db4: b4000128     	cbz	x8, 0x25dd8 <tp_single_game_read+0xa0>
   25db8: aa1603e0     	mov	x0, x22
   25dbc: b85fc110     	ldur	w16, [x8, #-0x4]
   25dc0: 7281af31     	movk	w17, #0xd79
   25dc4: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   25dc8: 6b11021f     	cmp	w16, w17
   25dcc: 54000040     	b.eq	0x25dd4 <tp_single_game_read+0x9c>
   25dd0: d4304500     	brk	#0x8228
   25dd4: d63f0100     	blr	x8
   25dd8: b94456c2     	ldr	w2, [x22, #0x454]
   25ddc: 90000000     	adrp	x0, 0x25000 <tp_glove_read>
		0000000000025ddc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b36
   25de0: 91000000     	add	x0, x0, #0x0
		0000000000025de0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b36
   25de4: 90000001     	adrp	x1, 0x25000 <tp_glove_read>
		0000000000025de4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3862
   25de8: 91000021     	add	x1, x1, #0x0
		0000000000025de8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3862
   25dec: 94000000     	bl	0x25dec <tp_single_game_read+0xb4>
		0000000000025dec:  R_AARCH64_CALL26	_printk
   25df0: b94456c3     	ldr	w3, [x22, #0x454]
   25df4: 90000002     	adrp	x2, 0x25000 <tp_glove_read>
		0000000000025df4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81d4
   25df8: 91000042     	add	x2, x2, #0x0
		0000000000025df8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81d4
   25dfc: 910023e0     	add	x0, sp, #0x8
   25e00: 52800141     	mov	w1, #0xa                // =10
   25e04: 94000000     	bl	0x25e04 <tp_single_game_read+0xcc>
		0000000000025e04:  R_AARCH64_CALL26	snprintf
   25e08: 93407c04     	sxtw	x4, w0
   25e0c: 910023e3     	add	x3, sp, #0x8
   25e10: aa1403e1     	mov	x1, x20
   25e14: aa1503e0     	mov	x0, x21
   25e18: aa1303e2     	mov	x2, x19
   25e1c: 94000000     	bl	0x25e1c <tp_single_game_read+0xe4>
		0000000000025e1c:  R_AARCH64_CALL26	simple_read_from_buffer
   25e20: 17ffffd4     	b	0x25d70 <tp_single_game_read+0x38>
   25e24: 94000000     	bl	0x25e24 <tp_single_game_read+0xec>
		0000000000025e24:  R_AARCH64_CALL26	__stack_chk_fail
