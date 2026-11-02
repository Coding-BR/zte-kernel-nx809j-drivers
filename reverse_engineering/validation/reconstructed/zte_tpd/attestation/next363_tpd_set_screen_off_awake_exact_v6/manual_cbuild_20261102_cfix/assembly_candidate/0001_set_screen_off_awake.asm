
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016de4 <set_screen_off_awake>:
   16de4: d503233f     	paciasp
   16de8: d100c3ff     	sub	sp, sp, #0x30
   16dec: a9017bfd     	stp	x29, x30, [sp, #0x10]
   16df0: a9024ff4     	stp	x20, x19, [sp, #0x20]
   16df4: 910043fd     	add	x29, sp, #0x10
   16df8: d5384108     	mrs	x8, SP_EL0
   16dfc: aa0203f3     	mov	x19, x2
   16e00: aa0103e0     	mov	x0, x1
   16e04: f9438908     	ldr	x8, [x8, #0x710]
   16e08: 910013e3     	add	x3, sp, #0x4
   16e0c: aa0203e1     	mov	x1, x2
   16e10: 52800142     	mov	w2, #0xa                // =10
   16e14: f90007e8     	str	x8, [sp, #0x8]
   16e18: 90000008     	adrp	x8, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016e18:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   16e1c: f9400114     	ldr	x20, [x8]
		0000000000016e1c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   16e20: b90007ff     	str	wzr, [sp, #0x4]
   16e24: 94000000     	bl	0x16e24 <set_screen_off_awake+0x40>
		0000000000016e24:  R_AARCH64_CALL26	kstrtouint_from_user
   16e28: 340001a0     	cbz	w0, 0x16e5c <set_screen_off_awake+0x78>
   16e2c: 928002b3     	mov	x19, #-0x16             // =-22
   16e30: d5384108     	mrs	x8, SP_EL0
   16e34: f9438908     	ldr	x8, [x8, #0x710]
   16e38: f94007e9     	ldr	x9, [sp, #0x8]
   16e3c: eb09011f     	cmp	x8, x9
   16e40: 54000381     	b.ne	0x16eb0 <set_screen_off_awake+0xcc>
   16e44: aa1303e0     	mov	x0, x19
   16e48: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   16e4c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   16e50: 9100c3ff     	add	sp, sp, #0x30
   16e54: d50323bf     	autiasp
   16e58: d65f03c0     	ret
   16e5c: b94007e8     	ldr	w8, [sp, #0x4]
   16e60: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016e60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x629a
   16e64: 91000000     	add	x0, x0, #0x0
		0000000000016e64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x629a
   16e68: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016e68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbc8e
   16e6c: 91000021     	add	x1, x1, #0x0
		0000000000016e6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbc8e
   16e70: 7100011f     	cmp	w8, #0x0
   16e74: 1a9f07e2     	cset	w2, ne
   16e78: b90007e2     	str	w2, [sp, #0x4]
   16e7c: 94000000     	bl	0x16e7c <set_screen_off_awake+0x98>
		0000000000016e7c:  R_AARCH64_CALL26	_printk
   16e80: f947f288     	ldr	x8, [x20, #0xfe0]
   16e84: b4fffd68     	cbz	x8, 0x16e30 <set_screen_off_awake+0x4c>
   16e88: b94007e1     	ldr	w1, [sp, #0x4]
   16e8c: aa1403e0     	mov	x0, x20
   16e90: b85fc110     	ldur	w16, [x8, #-0x4]
   16e94: 72969331     	movk	w17, #0xb499
   16e98: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   16e9c: 6b11021f     	cmp	w16, w17
   16ea0: 54000040     	b.eq	0x16ea8 <set_screen_off_awake+0xc4>
   16ea4: d4304500     	brk	#0x8228
   16ea8: d63f0100     	blr	x8
   16eac: 17ffffe1     	b	0x16e30 <set_screen_off_awake+0x4c>
   16eb0: 94000000     	bl	0x16eb0 <set_screen_off_awake+0xcc>
		0000000000016eb0:  R_AARCH64_CALL26	__stack_chk_fail
