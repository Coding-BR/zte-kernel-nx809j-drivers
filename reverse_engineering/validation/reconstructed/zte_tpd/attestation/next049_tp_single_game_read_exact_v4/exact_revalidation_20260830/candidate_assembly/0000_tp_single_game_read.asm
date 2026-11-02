
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025cdc <tp_single_game_read>:
   25cdc: d503233f     	paciasp
   25ce0: d10143ff     	sub	sp, sp, #0x50
   25ce4: a9027bfd     	stp	x29, x30, [sp, #0x20]
   25ce8: a90357f6     	stp	x22, x21, [sp, #0x30]
   25cec: a9044ff4     	stp	x20, x19, [sp, #0x40]
   25cf0: 910083fd     	add	x29, sp, #0x20
   25cf4: d5384108     	mrs	x8, SP_EL0
   25cf8: aa1f03e0     	mov	x0, xzr
   25cfc: f9438908     	ldr	x8, [x8, #0x710]
   25d00: f81f83a8     	stur	x8, [x29, #-0x8]
   25d04: f9400068     	ldr	x8, [x3]
   25d08: 790023ff     	strh	wzr, [sp, #0x10]
   25d0c: f90007ff     	str	xzr, [sp, #0x8]
   25d10: b4000188     	cbz	x8, 0x25d40 <tp_single_game_read+0x64>
   25d14: d5384108     	mrs	x8, SP_EL0
   25d18: f9438908     	ldr	x8, [x8, #0x710]
   25d1c: f85f83a9     	ldur	x9, [x29, #-0x8]
   25d20: eb09011f     	cmp	x8, x9
   25d24: 54000521     	b.ne	0x25dc8 <tp_single_game_read+0xec>
   25d28: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   25d2c: a94357f6     	ldp	x22, x21, [sp, #0x30]
   25d30: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   25d34: 910143ff     	add	sp, sp, #0x50
   25d38: d50323bf     	autiasp
   25d3c: d65f03c0     	ret
   25d40: 90000008     	adrp	x8, 0x25000 <tp_glove_read+0x5c>
		0000000000025d40:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25d44: aa0103f5     	mov	x21, x1
   25d48: aa0203f4     	mov	x20, x2
   25d4c: f9400116     	ldr	x22, [x8]
		0000000000025d4c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25d50: aa0303f3     	mov	x19, x3
   25d54: f9476ec8     	ldr	x8, [x22, #0xed8]
   25d58: b4000128     	cbz	x8, 0x25d7c <tp_single_game_read+0xa0>
   25d5c: aa1603e0     	mov	x0, x22
   25d60: b85fc110     	ldur	w16, [x8, #-0x4]
   25d64: 7281af31     	movk	w17, #0xd79
   25d68: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   25d6c: 6b11021f     	cmp	w16, w17
   25d70: 54000040     	b.eq	0x25d78 <tp_single_game_read+0x9c>
   25d74: d4304500     	brk	#0x8228
   25d78: d63f0100     	blr	x8
   25d7c: b94456c2     	ldr	w2, [x22, #0x454]
   25d80: 90000000     	adrp	x0, 0x25000 <tp_glove_read+0x5c>
		0000000000025d80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b36
   25d84: 91000000     	add	x0, x0, #0x0
		0000000000025d84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b36
   25d88: 90000001     	adrp	x1, 0x25000 <tp_glove_read+0x5c>
		0000000000025d88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3862
   25d8c: 91000021     	add	x1, x1, #0x0
		0000000000025d8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3862
   25d90: 94000000     	bl	0x25d90 <tp_single_game_read+0xb4>
		0000000000025d90:  R_AARCH64_CALL26	_printk
   25d94: b94456c3     	ldr	w3, [x22, #0x454]
   25d98: 90000002     	adrp	x2, 0x25000 <tp_glove_read+0x5c>
		0000000000025d98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81d4
   25d9c: 91000042     	add	x2, x2, #0x0
		0000000000025d9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81d4
   25da0: 910023e0     	add	x0, sp, #0x8
   25da4: 52800141     	mov	w1, #0xa                // =10
   25da8: 94000000     	bl	0x25da8 <tp_single_game_read+0xcc>
		0000000000025da8:  R_AARCH64_CALL26	snprintf
   25dac: 93407c04     	sxtw	x4, w0
   25db0: 910023e3     	add	x3, sp, #0x8
   25db4: aa1403e1     	mov	x1, x20
   25db8: aa1503e0     	mov	x0, x21
   25dbc: aa1303e2     	mov	x2, x19
   25dc0: 94000000     	bl	0x25dc0 <tp_single_game_read+0xe4>
		0000000000025dc0:  R_AARCH64_CALL26	simple_read_from_buffer
   25dc4: 17ffffd4     	b	0x25d14 <tp_single_game_read+0x38>
   25dc8: 94000000     	bl	0x25dc8 <tp_single_game_read+0xec>
		0000000000025dc8:  R_AARCH64_CALL26	__stack_chk_fail
