
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003ac0 <aw8693x_protect_config>:
    3ac0: d503233f     	paciasp
    3ac4: d10103ff     	sub	sp, sp, #0x40
    3ac8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3acc: f90013f5     	str	x21, [sp, #0x20]
    3ad0: a9034ff4     	stp	x20, x19, [sp, #0x30]
    3ad4: 910043fd     	add	x29, sp, #0x10
    3ad8: d5384108     	mrs	x8, SP_EL0
    3adc: 2a0203f4     	mov	w20, w2
    3ae0: 12001c55     	and	w21, w2, #0xff
    3ae4: f9438908     	ldr	x8, [x8, #0x710]
    3ae8: 12801002     	mov	w2, #-0x81              // =-129
    3aec: 2a1f03e3     	mov	w3, wzr
    3af0: aa0003f3     	mov	x19, x0
    3af4: f90007e8     	str	x8, [sp, #0x8]
    3af8: 390013e1     	strb	w1, [sp, #0x4]
    3afc: 52800901     	mov	w1, #0x48               // =72
    3b00: 94000000     	bl	0x3b00 <aw8693x_protect_config+0x40>
		0000000000003b00:  R_AARCH64_CALL26	i2c_w_bits
    3b04: 350001f5     	cbnz	w21, 0x3b40 <aw8693x_protect_config+0x80>
    3b08: 90000000     	adrp	x0, 0x3000 <f0_show+0xb4>
		0000000000003b08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x80
    3b0c: 91000000     	add	x0, x0, #0x0
		0000000000003b0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x80
    3b10: 90000001     	adrp	x1, 0x3000 <f0_show+0xb4>
		0000000000003b10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    3b14: 91000021     	add	x1, x1, #0x0
		0000000000003b14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    3b18: 90000003     	adrp	x3, 0x3000 <f0_show+0xb4>
		0000000000003b18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9b6
    3b1c: 91000063     	add	x3, x3, #0x0
		0000000000003b1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9b6
    3b20: 52805da2     	mov	w2, #0x2ed              // =749
    3b24: 94000000     	bl	0x3b24 <aw8693x_protect_config+0x64>
		0000000000003b24:  R_AARCH64_CALL26	_printk
    3b28: aa1303e0     	mov	x0, x19
    3b2c: 52800941     	mov	w1, #0x4a               // =74
    3b30: 12801002     	mov	w2, #-0x81              // =-129
    3b34: 2a1f03e3     	mov	w3, wzr
    3b38: 94000000     	bl	0x3b38 <aw8693x_protect_config+0x78>
		0000000000003b38:  R_AARCH64_CALL26	i2c_w_bits
    3b3c: 14000015     	b	0x3b90 <aw8693x_protect_config+0xd0>
    3b40: 90000000     	adrp	x0, 0x3000 <f0_show+0xb4>
		0000000000003b40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x800
    3b44: 91000000     	add	x0, x0, #0x0
		0000000000003b44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x800
    3b48: 90000001     	adrp	x1, 0x3000 <f0_show+0xb4>
		0000000000003b48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    3b4c: 91000021     	add	x1, x1, #0x0
		0000000000003b4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    3b50: 90000003     	adrp	x3, 0x3000 <f0_show+0xb4>
		0000000000003b50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9b6
    3b54: 91000063     	add	x3, x3, #0x0
		0000000000003b54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9b6
    3b58: 52805cc2     	mov	w2, #0x2e6              // =742
    3b5c: 94000000     	bl	0x3b5c <aw8693x_protect_config+0x9c>
		0000000000003b5c:  R_AARCH64_CALL26	_printk
    3b60: 32190288     	orr	w8, w20, #0x80
    3b64: 910003e2     	mov	x2, sp
    3b68: aa1303e0     	mov	x0, x19
    3b6c: 52800941     	mov	w1, #0x4a               // =74
    3b70: 52800023     	mov	w3, #0x1                // =1
    3b74: 390003e8     	strb	w8, [sp]
    3b78: 94000000     	bl	0x3b78 <aw8693x_protect_config+0xb8>
		0000000000003b78:  R_AARCH64_CALL26	i2c_w_bytes
    3b7c: 910013e2     	add	x2, sp, #0x4
    3b80: aa1303e0     	mov	x0, x19
    3b84: 52800961     	mov	w1, #0x4b               // =75
    3b88: 52800023     	mov	w3, #0x1                // =1
    3b8c: 94000000     	bl	0x3b8c <aw8693x_protect_config+0xcc>
		0000000000003b8c:  R_AARCH64_CALL26	i2c_w_bytes
    3b90: d5384108     	mrs	x8, SP_EL0
    3b94: f9438908     	ldr	x8, [x8, #0x710]
    3b98: f94007e9     	ldr	x9, [sp, #0x8]
    3b9c: eb09011f     	cmp	x8, x9
    3ba0: 540000e1     	b.ne	0x3bbc <aw8693x_protect_config+0xfc>
    3ba4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    3ba8: f94013f5     	ldr	x21, [sp, #0x20]
    3bac: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    3bb0: 910103ff     	add	sp, sp, #0x40
    3bb4: d50323bf     	autiasp
    3bb8: d65f03c0     	ret
    3bbc: 94000000     	bl	0x3bbc <aw8693x_protect_config+0xfc>
		0000000000003bbc:  R_AARCH64_CALL26	__stack_chk_fail
