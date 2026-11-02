
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a7c <aw8693x_check_qualify>:
     a7c: d503233f     	paciasp
     a80: d10083ff     	sub	sp, sp, #0x20
     a84: a9017bfd     	stp	x29, x30, [sp, #0x10]
     a88: 910043fd     	add	x29, sp, #0x10
     a8c: d5384108     	mrs	x8, SP_EL0
     a90: 910013e2     	add	x2, sp, #0x4
     a94: 52800c81     	mov	w1, #0x64               // =100
     a98: f9438908     	ldr	x8, [x8, #0x710]
     a9c: 52800023     	mov	w3, #0x1                // =1
     aa0: f90007e8     	str	x8, [sp, #0x8]
     aa4: 390013ff     	strb	wzr, [sp, #0x4]
     aa8: 94000000     	bl	0xaa8 <aw8693x_check_qualify+0x2c>
		0000000000000aa8:  R_AARCH64_CALL26	i2c_r_bytes
     aac: 39c013e8     	ldrsb	w8, [sp, #0x4]
     ab0: 37f80168     	tbnz	w8, #0x1f, 0xadc <aw8693x_check_qualify+0x60>
     ab4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ab4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25d7
     ab8: 91000000     	add	x0, x0, #0x0
		0000000000000ab8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25d7
     abc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000abc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     ac0: 91000021     	add	x1, x1, #0x0
		0000000000000ac0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     ac4: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000ac4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x219f
     ac8: 91000063     	add	x3, x3, #0x0
		0000000000000ac8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x219f
     acc: 528026c2     	mov	w2, #0x136              // =310
     ad0: 94000000     	bl	0xad0 <aw8693x_check_qualify+0x54>
		0000000000000ad0:  R_AARCH64_CALL26	_printk
     ad4: 12800420     	mov	w0, #-0x22              // =-34
     ad8: 1400000a     	b	0xb00 <aw8693x_check_qualify+0x84>
     adc: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000adc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15c4
     ae0: 91000000     	add	x0, x0, #0x0
		0000000000000ae0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15c4
     ae4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ae4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     ae8: 91000021     	add	x1, x1, #0x0
		0000000000000ae8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     aec: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000aec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x219f
     af0: 91000063     	add	x3, x3, #0x0
		0000000000000af0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x219f
     af4: 52802722     	mov	w2, #0x139              // =313
     af8: 94000000     	bl	0xaf8 <aw8693x_check_qualify+0x7c>
		0000000000000af8:  R_AARCH64_CALL26	_printk
     afc: 2a1f03e0     	mov	w0, wzr
     b00: d5384108     	mrs	x8, SP_EL0
     b04: f9438908     	ldr	x8, [x8, #0x710]
     b08: f94007e9     	ldr	x9, [sp, #0x8]
     b0c: eb09011f     	cmp	x8, x9
     b10: 540000a1     	b.ne	0xb24 <aw8693x_check_qualify+0xa8>
     b14: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     b18: 910083ff     	add	sp, sp, #0x20
     b1c: d50323bf     	autiasp
     b20: d65f03c0     	ret
     b24: 94000000     	bl	0xb24 <aw8693x_check_qualify+0xa8>
		0000000000000b24:  R_AARCH64_CALL26	__stack_chk_fail
