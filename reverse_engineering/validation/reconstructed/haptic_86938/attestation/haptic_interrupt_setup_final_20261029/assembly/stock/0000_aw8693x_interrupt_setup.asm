
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002c10 <aw8693x_interrupt_setup>:
    2c10: d503233f     	paciasp
    2c14: d100c3ff     	sub	sp, sp, #0x30
    2c18: a9017bfd     	stp	x29, x30, [sp, #0x10]
    2c1c: f90013f3     	str	x19, [sp, #0x20]
    2c20: 910043fd     	add	x29, sp, #0x10
    2c24: d5384108     	mrs	x8, SP_EL0
    2c28: 910013e2     	add	x2, sp, #0x4
    2c2c: 52800041     	mov	w1, #0x2                // =2
    2c30: f9438908     	ldr	x8, [x8, #0x710]
    2c34: 52800023     	mov	w3, #0x1                // =1
    2c38: aa0003f3     	mov	x19, x0
    2c3c: f90007e8     	str	x8, [sp, #0x8]
    2c40: 390013ff     	strb	wzr, [sp, #0x4]
    2c44: 94000000     	bl	0x2c44 <aw8693x_interrupt_setup+0x34>
		0000000000002c44:  R_AARCH64_CALL26	i2c_r_bytes
    2c48: aa1303e0     	mov	x0, x19
    2c4c: 528008c1     	mov	w1, #0x46               // =70
    2c50: 12800302     	mov	w2, #-0x19              // =-25
    2c54: 52800103     	mov	w3, #0x8                // =8
    2c58: 94000000     	bl	0x2c58 <aw8693x_interrupt_setup+0x48>
		0000000000002c58:  R_AARCH64_CALL26	i2c_w_bits
    2c5c: aa1303e0     	mov	x0, x19
    2c60: 52800061     	mov	w1, #0x3                // =3
    2c64: 12801cc2     	mov	w2, #-0xe7              // =-231
    2c68: 52800803     	mov	w3, #0x40               // =64
    2c6c: 94000000     	bl	0x2c6c <aw8693x_interrupt_setup+0x5c>
		0000000000002c6c:  R_AARCH64_CALL26	i2c_w_bits
    2c70: d5384108     	mrs	x8, SP_EL0
    2c74: f9438908     	ldr	x8, [x8, #0x710]
    2c78: f94007e9     	ldr	x9, [sp, #0x8]
    2c7c: eb09011f     	cmp	x8, x9
    2c80: 540000c1     	b.ne	0x2c98 <aw8693x_interrupt_setup+0x88>
    2c84: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2c88: f94013f3     	ldr	x19, [sp, #0x20]
    2c8c: 9100c3ff     	add	sp, sp, #0x30
    2c90: d50323bf     	autiasp
    2c94: d65f03c0     	ret
    2c98: 94000000     	bl	0x2c98 <aw8693x_interrupt_setup+0x88>
		0000000000002c98:  R_AARCH64_CALL26	__stack_chk_fail
