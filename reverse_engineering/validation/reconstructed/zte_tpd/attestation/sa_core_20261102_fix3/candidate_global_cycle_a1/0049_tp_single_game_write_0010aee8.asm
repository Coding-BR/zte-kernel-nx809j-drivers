
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025e2c <tp_single_game_write>:
   25e2c: d503233f     	paciasp
   25e30: d100c3ff     	sub	sp, sp, #0x30
   25e34: a9017bfd     	stp	x29, x30, [sp, #0x10]
   25e38: a9024ff4     	stp	x20, x19, [sp, #0x20]
   25e3c: 910043fd     	add	x29, sp, #0x10
   25e40: d5384108     	mrs	x8, SP_EL0
   25e44: aa0203f3     	mov	x19, x2
   25e48: aa0103e0     	mov	x0, x1
   25e4c: f9438908     	ldr	x8, [x8, #0x710]
   25e50: 910013e3     	add	x3, sp, #0x4
   25e54: aa0203e1     	mov	x1, x2
   25e58: 52800142     	mov	w2, #0xa                // =10
   25e5c: f90007e8     	str	x8, [sp, #0x8]
   25e60: 90000008     	adrp	x8, 0x25000 <tp_glove_read>
		0000000000025e60:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25e64: f9400114     	ldr	x20, [x8]
		0000000000025e64:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25e68: b90007ff     	str	wzr, [sp, #0x4]
   25e6c: 94000000     	bl	0x25e6c <tp_single_game_write+0x40>
		0000000000025e6c:  R_AARCH64_CALL26	kstrtouint_from_user
   25e70: 340001a0     	cbz	w0, 0x25ea4 <tp_single_game_write+0x78>
   25e74: 928002b3     	mov	x19, #-0x16             // =-22
   25e78: d5384108     	mrs	x8, SP_EL0
   25e7c: f9438908     	ldr	x8, [x8, #0x710]
   25e80: f94007e9     	ldr	x9, [sp, #0x8]
   25e84: eb09011f     	cmp	x8, x9
   25e88: 540003a1     	b.ne	0x25efc <tp_single_game_write+0xd0>
   25e8c: aa1303e0     	mov	x0, x19
   25e90: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   25e94: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   25e98: 9100c3ff     	add	sp, sp, #0x30
   25e9c: d50323bf     	autiasp
   25ea0: d65f03c0     	ret
   25ea4: b94007e8     	ldr	w8, [sp, #0x4]
   25ea8: 90000000     	adrp	x0, 0x25000 <tp_glove_read>
		0000000000025ea8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x629a
   25eac: 91000000     	add	x0, x0, #0x0
		0000000000025eac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x629a
   25eb0: 90000001     	adrp	x1, 0x25000 <tp_glove_read>
		0000000000025eb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb5c0
   25eb4: 91000021     	add	x1, x1, #0x0
		0000000000025eb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb5c0
   25eb8: 7100011f     	cmp	w8, #0x0
   25ebc: 528000a8     	mov	w8, #0x5                // =5
   25ec0: 1a8803e2     	csel	w2, wzr, w8, eq
   25ec4: b90007e2     	str	w2, [sp, #0x4]
   25ec8: 94000000     	bl	0x25ec8 <tp_single_game_write+0x9c>
		0000000000025ec8:  R_AARCH64_CALL26	_printk
   25ecc: f9477288     	ldr	x8, [x20, #0xee0]
   25ed0: b4fffd48     	cbz	x8, 0x25e78 <tp_single_game_write+0x4c>
   25ed4: b94007e1     	ldr	w1, [sp, #0x4]
   25ed8: aa1403e0     	mov	x0, x20
   25edc: b85fc110     	ldur	w16, [x8, #-0x4]
   25ee0: 72969331     	movk	w17, #0xb499
   25ee4: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   25ee8: 6b11021f     	cmp	w16, w17
   25eec: 54000040     	b.eq	0x25ef4 <tp_single_game_write+0xc8>
   25ef0: d4304500     	brk	#0x8228
   25ef4: d63f0100     	blr	x8
   25ef8: 17ffffe0     	b	0x25e78 <tp_single_game_write+0x4c>
   25efc: 94000000     	bl	0x25efc <tp_single_game_write+0xd0>
		0000000000025efc:  R_AARCH64_CALL26	__stack_chk_fail
