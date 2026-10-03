
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016d88 <set_screen_off_awake>:
   16d88: d503233f     	paciasp
   16d8c: d100c3ff     	sub	sp, sp, #0x30
   16d90: a9017bfd     	stp	x29, x30, [sp, #0x10]
   16d94: a9024ff4     	stp	x20, x19, [sp, #0x20]
   16d98: 910043fd     	add	x29, sp, #0x10
   16d9c: d5384108     	mrs	x8, SP_EL0
   16da0: aa0203f3     	mov	x19, x2
   16da4: aa0103e0     	mov	x0, x1
   16da8: f9438908     	ldr	x8, [x8, #0x710]
   16dac: 910013e3     	add	x3, sp, #0x4
   16db0: aa0203e1     	mov	x1, x2
   16db4: 52800142     	mov	w2, #0xa                // =10
   16db8: f90007e8     	str	x8, [sp, #0x8]
   16dbc: 90000008     	adrp	x8, 0x16000 <tp_sensibility_level_read+0xd8>
		0000000000016dbc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   16dc0: f9400114     	ldr	x20, [x8]
		0000000000016dc0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   16dc4: b90007ff     	str	wzr, [sp, #0x4]
   16dc8: 94000000     	bl	0x16dc8 <set_screen_off_awake+0x40>
		0000000000016dc8:  R_AARCH64_CALL26	kstrtouint_from_user
   16dcc: 340001a0     	cbz	w0, 0x16e00 <set_screen_off_awake+0x78>
   16dd0: 928002b3     	mov	x19, #-0x16             // =-22
   16dd4: d5384108     	mrs	x8, SP_EL0
   16dd8: f9438908     	ldr	x8, [x8, #0x710]
   16ddc: f94007e9     	ldr	x9, [sp, #0x8]
   16de0: eb09011f     	cmp	x8, x9
   16de4: 54000381     	b.ne	0x16e54 <set_screen_off_awake+0xcc>
   16de8: aa1303e0     	mov	x0, x19
   16dec: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   16df0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   16df4: 9100c3ff     	add	sp, sp, #0x30
   16df8: d50323bf     	autiasp
   16dfc: d65f03c0     	ret
   16e00: b94007e8     	ldr	w8, [sp, #0x4]
   16e04: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0xd8>
		0000000000016e04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x629a
   16e08: 91000000     	add	x0, x0, #0x0
		0000000000016e08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x629a
   16e0c: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0xd8>
		0000000000016e0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbc8e
   16e10: 91000021     	add	x1, x1, #0x0
		0000000000016e10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbc8e
   16e14: 7100011f     	cmp	w8, #0x0
   16e18: 1a9f07e2     	cset	w2, ne
   16e1c: b90007e2     	str	w2, [sp, #0x4]
   16e20: 94000000     	bl	0x16e20 <set_screen_off_awake+0x98>
		0000000000016e20:  R_AARCH64_CALL26	_printk
   16e24: f947f288     	ldr	x8, [x20, #0xfe0]
   16e28: b4fffd68     	cbz	x8, 0x16dd4 <set_screen_off_awake+0x4c>
   16e2c: b94007e1     	ldr	w1, [sp, #0x4]
   16e30: aa1403e0     	mov	x0, x20
   16e34: b85fc110     	ldur	w16, [x8, #-0x4]
   16e38: 72969331     	movk	w17, #0xb499
   16e3c: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   16e40: 6b11021f     	cmp	w16, w17
   16e44: 54000040     	b.eq	0x16e4c <set_screen_off_awake+0xc4>
   16e48: d4304500     	brk	#0x8228
   16e4c: d63f0100     	blr	x8
   16e50: 17ffffe1     	b	0x16dd4 <set_screen_off_awake+0x4c>
   16e54: 94000000     	bl	0x16e54 <set_screen_off_awake+0xcc>
		0000000000016e54:  R_AARCH64_CALL26	__stack_chk_fail
