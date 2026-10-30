
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016bc0 <set_fake_sleep>:
   16bc0: d503233f     	paciasp
   16bc4: d100c3ff     	sub	sp, sp, #0x30
   16bc8: a9017bfd     	stp	x29, x30, [sp, #0x10]
   16bcc: a9024ff4     	stp	x20, x19, [sp, #0x20]
   16bd0: 910043fd     	add	x29, sp, #0x10
   16bd4: d5384108     	mrs	x8, SP_EL0
   16bd8: aa0203f3     	mov	x19, x2
   16bdc: aa0103e0     	mov	x0, x1
   16be0: f9438908     	ldr	x8, [x8, #0x710]
   16be4: 910013e3     	add	x3, sp, #0x4
   16be8: aa0203e1     	mov	x1, x2
   16bec: 52800142     	mov	w2, #0xa                // =10
   16bf0: f90007e8     	str	x8, [sp, #0x8]
   16bf4: 90000008     	adrp	x8, 0x16000 <tp_sensibility_level_read+0xd8>
		0000000000016bf4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   16bf8: f9400114     	ldr	x20, [x8]
		0000000000016bf8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   16bfc: b90007ff     	str	wzr, [sp, #0x4]
   16c00: 94000000     	bl	0x16c00 <set_fake_sleep+0x40>
		0000000000016c00:  R_AARCH64_CALL26	kstrtouint_from_user
   16c04: 340001a0     	cbz	w0, 0x16c38 <set_fake_sleep+0x78>
   16c08: 928002b3     	mov	x19, #-0x16             // =-22
   16c0c: d5384108     	mrs	x8, SP_EL0
   16c10: f9438908     	ldr	x8, [x8, #0x710]
   16c14: f94007e9     	ldr	x9, [sp, #0x8]
   16c18: eb09011f     	cmp	x8, x9
   16c1c: 54000381     	b.ne	0x16c8c <set_fake_sleep+0xcc>
   16c20: aa1303e0     	mov	x0, x19
   16c24: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   16c28: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   16c2c: 9100c3ff     	add	sp, sp, #0x30
   16c30: d50323bf     	autiasp
   16c34: d65f03c0     	ret
   16c38: b94007e8     	ldr	w8, [sp, #0x4]
   16c3c: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0xd8>
		0000000000016c3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x629a
   16c40: 91000000     	add	x0, x0, #0x0
		0000000000016c40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x629a
   16c44: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0xd8>
		0000000000016c44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f84
   16c48: 91000021     	add	x1, x1, #0x0
		0000000000016c48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f84
   16c4c: 7100011f     	cmp	w8, #0x0
   16c50: 1a9f07e2     	cset	w2, ne
   16c54: b90007e2     	str	w2, [sp, #0x4]
   16c58: 94000000     	bl	0x16c58 <set_fake_sleep+0x98>
		0000000000016c58:  R_AARCH64_CALL26	_printk
   16c5c: f947ea88     	ldr	x8, [x20, #0xfd0]
   16c60: b4fffd68     	cbz	x8, 0x16c0c <set_fake_sleep+0x4c>
   16c64: b94007e1     	ldr	w1, [sp, #0x4]
   16c68: aa1403e0     	mov	x0, x20
   16c6c: b85fc110     	ldur	w16, [x8, #-0x4]
   16c70: 72969331     	movk	w17, #0xb499
   16c74: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   16c78: 6b11021f     	cmp	w16, w17
   16c7c: 54000040     	b.eq	0x16c84 <set_fake_sleep+0xc4>
   16c80: d4304500     	brk	#0x8228
   16c84: d63f0100     	blr	x8
   16c88: 17ffffe1     	b	0x16c0c <set_fake_sleep+0x4c>
   16c8c: 94000000     	bl	0x16c8c <set_fake_sleep+0xcc>
		0000000000016c8c:  R_AARCH64_CALL26	__stack_chk_fail
