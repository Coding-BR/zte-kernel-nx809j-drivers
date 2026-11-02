
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006aac <set_screen_off_awake>:
    6aac: d503233f     	paciasp
    6ab0: d100c3ff     	sub	sp, sp, #0x30
    6ab4: a9017bfd     	stp	x29, x30, [sp, #0x10]
    6ab8: a9024ff4     	stp	x20, x19, [sp, #0x20]
    6abc: 910043fd     	add	x29, sp, #0x10
    6ac0: d5384108     	mrs	x8, SP_EL0
    6ac4: aa0203f3     	mov	x19, x2
    6ac8: aa0103e0     	mov	x0, x1
    6acc: f9438908     	ldr	x8, [x8, #0x710]
    6ad0: 910013e3     	add	x3, sp, #0x4
    6ad4: aa0203e1     	mov	x1, x2
    6ad8: 52800142     	mov	w2, #0xa                // =10
    6adc: f90007e8     	str	x8, [sp, #0x8]
    6ae0: 90000008     	adrp	x8, 0x6000 <tp_pen_only_write+0x70>
		0000000000006ae0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    6ae4: f9400114     	ldr	x20, [x8]
		0000000000006ae4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    6ae8: b90007ff     	str	wzr, [sp, #0x4]
    6aec: 94000000     	bl	0x6aec <set_screen_off_awake+0x40>
		0000000000006aec:  R_AARCH64_CALL26	kstrtouint_from_user
    6af0: 340001a0     	cbz	w0, 0x6b24 <set_screen_off_awake+0x78>
    6af4: 928002b3     	mov	x19, #-0x16             // =-22
    6af8: d5384108     	mrs	x8, SP_EL0
    6afc: f9438908     	ldr	x8, [x8, #0x710]
    6b00: f94007e9     	ldr	x9, [sp, #0x8]
    6b04: eb09011f     	cmp	x8, x9
    6b08: 54000381     	b.ne	0x6b78 <set_screen_off_awake+0xcc>
    6b0c: aa1303e0     	mov	x0, x19
    6b10: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    6b14: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    6b18: 9100c3ff     	add	sp, sp, #0x30
    6b1c: d50323bf     	autiasp
    6b20: d65f03c0     	ret
    6b24: b94007e8     	ldr	w8, [sp, #0x4]
    6b28: 90000000     	adrp	x0, 0x6000 <tp_pen_only_write+0x70>
		0000000000006b28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x610f
    6b2c: 91000000     	add	x0, x0, #0x0
		0000000000006b2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x610f
    6b30: 90000001     	adrp	x1, 0x6000 <tp_pen_only_write+0x70>
		0000000000006b30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9bc
    6b34: 91000021     	add	x1, x1, #0x0
		0000000000006b34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9bc
    6b38: 7100011f     	cmp	w8, #0x0
    6b3c: 1a9f07e2     	cset	w2, ne
    6b40: b90007e2     	str	w2, [sp, #0x4]
    6b44: 94000000     	bl	0x6b44 <set_screen_off_awake+0x98>
		0000000000006b44:  R_AARCH64_CALL26	_printk
    6b48: f947f288     	ldr	x8, [x20, #0xfe0]
    6b4c: b4fffd68     	cbz	x8, 0x6af8 <set_screen_off_awake+0x4c>
    6b50: b94007e1     	ldr	w1, [sp, #0x4]
    6b54: aa1403e0     	mov	x0, x20
    6b58: b85fc110     	ldur	w16, [x8, #-0x4]
    6b5c: 72969331     	movk	w17, #0xb499
    6b60: 72ad5f11     	movk	w17, #0x6af8, lsl #16
    6b64: 6b11021f     	cmp	w16, w17
    6b68: 54000040     	b.eq	0x6b70 <set_screen_off_awake+0xc4>
    6b6c: d4304500     	brk	#0x8228
    6b70: d63f0100     	blr	x8
    6b74: 17ffffe1     	b	0x6af8 <set_screen_off_awake+0x4c>
    6b78: 94000000     	bl	0x6b78 <set_screen_off_awake+0xcc>
		0000000000006b78:  R_AARCH64_CALL26	__stack_chk_fail
