
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016c1c <set_fake_sleep>:
   16c1c: d503233f     	paciasp
   16c20: d100c3ff     	sub	sp, sp, #0x30
   16c24: a9017bfd     	stp	x29, x30, [sp, #0x10]
   16c28: a9024ff4     	stp	x20, x19, [sp, #0x20]
   16c2c: 910043fd     	add	x29, sp, #0x10
   16c30: d5384108     	mrs	x8, SP_EL0
   16c34: aa0203f3     	mov	x19, x2
   16c38: aa0103e0     	mov	x0, x1
   16c3c: f9438908     	ldr	x8, [x8, #0x710]
   16c40: 910013e3     	add	x3, sp, #0x4
   16c44: aa0203e1     	mov	x1, x2
   16c48: 52800142     	mov	w2, #0xa                // =10
   16c4c: f90007e8     	str	x8, [sp, #0x8]
   16c50: 90000008     	adrp	x8, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016c50:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   16c54: f9400114     	ldr	x20, [x8]
		0000000000016c54:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   16c58: b90007ff     	str	wzr, [sp, #0x4]
   16c5c: 94000000     	bl	0x16c5c <set_fake_sleep+0x40>
		0000000000016c5c:  R_AARCH64_CALL26	kstrtouint_from_user
   16c60: 340001a0     	cbz	w0, 0x16c94 <set_fake_sleep+0x78>
   16c64: 928002b3     	mov	x19, #-0x16             // =-22
   16c68: d5384108     	mrs	x8, SP_EL0
   16c6c: f9438908     	ldr	x8, [x8, #0x710]
   16c70: f94007e9     	ldr	x9, [sp, #0x8]
   16c74: eb09011f     	cmp	x8, x9
   16c78: 54000381     	b.ne	0x16ce8 <set_fake_sleep+0xcc>
   16c7c: aa1303e0     	mov	x0, x19
   16c80: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   16c84: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   16c88: 9100c3ff     	add	sp, sp, #0x30
   16c8c: d50323bf     	autiasp
   16c90: d65f03c0     	ret
   16c94: b94007e8     	ldr	w8, [sp, #0x4]
   16c98: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016c98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x629a
   16c9c: 91000000     	add	x0, x0, #0x0
		0000000000016c9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x629a
   16ca0: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016ca0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f84
   16ca4: 91000021     	add	x1, x1, #0x0
		0000000000016ca4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f84
   16ca8: 7100011f     	cmp	w8, #0x0
   16cac: 1a9f07e2     	cset	w2, ne
   16cb0: b90007e2     	str	w2, [sp, #0x4]
   16cb4: 94000000     	bl	0x16cb4 <set_fake_sleep+0x98>
		0000000000016cb4:  R_AARCH64_CALL26	_printk
   16cb8: f947ea88     	ldr	x8, [x20, #0xfd0]
   16cbc: b4fffd68     	cbz	x8, 0x16c68 <set_fake_sleep+0x4c>
   16cc0: b94007e1     	ldr	w1, [sp, #0x4]
   16cc4: aa1403e0     	mov	x0, x20
   16cc8: b85fc110     	ldur	w16, [x8, #-0x4]
   16ccc: 72969331     	movk	w17, #0xb499
   16cd0: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   16cd4: 6b11021f     	cmp	w16, w17
   16cd8: 54000040     	b.eq	0x16ce0 <set_fake_sleep+0xc4>
   16cdc: d4304500     	brk	#0x8228
   16ce0: d63f0100     	blr	x8
   16ce4: 17ffffe1     	b	0x16c68 <set_fake_sleep+0x4c>
   16ce8: 94000000     	bl	0x16ce8 <set_fake_sleep+0xcc>
		0000000000016ce8:  R_AARCH64_CALL26	__stack_chk_fail
