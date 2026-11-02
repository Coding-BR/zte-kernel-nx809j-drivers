
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025dd0 <tp_single_game_write>:
   25dd0: d503233f     	paciasp
   25dd4: d100c3ff     	sub	sp, sp, #0x30
   25dd8: a9017bfd     	stp	x29, x30, [sp, #0x10]
   25ddc: a9024ff4     	stp	x20, x19, [sp, #0x20]
   25de0: 910043fd     	add	x29, sp, #0x10
   25de4: d5384108     	mrs	x8, SP_EL0
   25de8: aa0203f3     	mov	x19, x2
   25dec: aa0103e0     	mov	x0, x1
   25df0: f9438908     	ldr	x8, [x8, #0x710]
   25df4: 910013e3     	add	x3, sp, #0x4
   25df8: aa0203e1     	mov	x1, x2
   25dfc: 52800142     	mov	w2, #0xa                // =10
   25e00: f90007e8     	str	x8, [sp, #0x8]
   25e04: 90000008     	adrp	x8, 0x25000 <tp_glove_read+0x5c>
		0000000000025e04:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25e08: f9400114     	ldr	x20, [x8]
		0000000000025e08:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25e0c: b90007ff     	str	wzr, [sp, #0x4]
   25e10: 94000000     	bl	0x25e10 <tp_single_game_write+0x40>
		0000000000025e10:  R_AARCH64_CALL26	kstrtouint_from_user
   25e14: 340001a0     	cbz	w0, 0x25e48 <tp_single_game_write+0x78>
   25e18: 928002b3     	mov	x19, #-0x16             // =-22
   25e1c: d5384108     	mrs	x8, SP_EL0
   25e20: f9438908     	ldr	x8, [x8, #0x710]
   25e24: f94007e9     	ldr	x9, [sp, #0x8]
   25e28: eb09011f     	cmp	x8, x9
   25e2c: 540003a1     	b.ne	0x25ea0 <tp_single_game_write+0xd0>
   25e30: aa1303e0     	mov	x0, x19
   25e34: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   25e38: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   25e3c: 9100c3ff     	add	sp, sp, #0x30
   25e40: d50323bf     	autiasp
   25e44: d65f03c0     	ret
   25e48: b94007e8     	ldr	w8, [sp, #0x4]
   25e4c: 90000000     	adrp	x0, 0x25000 <tp_glove_read+0x5c>
		0000000000025e4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x629a
   25e50: 91000000     	add	x0, x0, #0x0
		0000000000025e50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x629a
   25e54: 90000001     	adrp	x1, 0x25000 <tp_glove_read+0x5c>
		0000000000025e54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb5c0
   25e58: 91000021     	add	x1, x1, #0x0
		0000000000025e58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb5c0
   25e5c: 7100011f     	cmp	w8, #0x0
   25e60: 528000a8     	mov	w8, #0x5                // =5
   25e64: 1a8803e2     	csel	w2, wzr, w8, eq
   25e68: b90007e2     	str	w2, [sp, #0x4]
   25e6c: 94000000     	bl	0x25e6c <tp_single_game_write+0x9c>
		0000000000025e6c:  R_AARCH64_CALL26	_printk
   25e70: f9477288     	ldr	x8, [x20, #0xee0]
   25e74: b4fffd48     	cbz	x8, 0x25e1c <tp_single_game_write+0x4c>
   25e78: b94007e1     	ldr	w1, [sp, #0x4]
   25e7c: aa1403e0     	mov	x0, x20
   25e80: b85fc110     	ldur	w16, [x8, #-0x4]
   25e84: 72969331     	movk	w17, #0xb499
   25e88: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   25e8c: 6b11021f     	cmp	w16, w17
   25e90: 54000040     	b.eq	0x25e98 <tp_single_game_write+0xc8>
   25e94: d4304500     	brk	#0x8228
   25e98: d63f0100     	blr	x8
   25e9c: 17ffffe0     	b	0x25e1c <tp_single_game_write+0x4c>
   25ea0: 94000000     	bl	0x25ea0 <tp_single_game_write+0xd0>
		0000000000025ea0:  R_AARCH64_CALL26	__stack_chk_fail
