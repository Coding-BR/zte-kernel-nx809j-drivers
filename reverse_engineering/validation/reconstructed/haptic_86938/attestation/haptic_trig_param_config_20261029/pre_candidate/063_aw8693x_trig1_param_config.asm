
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003d8c <aw8693x_trig1_param_config>:
    3d8c: d503233f     	paciasp
    3d90: d100c3ff     	sub	sp, sp, #0x30
    3d94: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3d98: f90013f3     	str	x19, [sp, #0x20]
    3d9c: 910043fd     	add	x29, sp, #0x10
    3da0: d5384108     	mrs	x8, SP_EL0
    3da4: 12800fea     	mov	w10, #-0x80             // =-128
    3da8: 52800721     	mov	w1, #0x39               // =57
    3dac: f9438908     	ldr	x8, [x8, #0x710]
    3db0: 12801e02     	mov	w2, #-0xf1              // =-241
    3db4: aa0003f3     	mov	x19, x0
    3db8: f90007e8     	str	x8, [sp, #0x8]
    3dbc: 39579c08     	ldrb	w8, [x0, #0x5e7]
    3dc0: 3957a009     	ldrb	w9, [x0, #0x5e8]
    3dc4: 7100011f     	cmp	w8, #0x0
    3dc8: 1a9f07e8     	cset	w8, ne
    3dcc: 7100013f     	cmp	w9, #0x0
    3dd0: 531a650b     	lsl	w11, w8, #6
    3dd4: 331a010a     	bfi	w10, w8, #6, #1
    3dd8: 39579408     	ldrb	w8, [x0, #0x5e5]
    3ddc: 1a8a0169     	csel	w9, w11, w10, eq
    3de0: 7100011f     	cmp	w8, #0x0
    3de4: 39579808     	ldrb	w8, [x0, #0x5e6]
    3de8: 321b012a     	orr	w10, w9, #0x20
    3dec: 1a8a0129     	csel	w9, w9, w10, eq
    3df0: 7100011f     	cmp	w8, #0x0
    3df4: 321c012a     	orr	w10, w9, #0x10
    3df8: 1a8a0123     	csel	w3, w9, w10, eq
    3dfc: 94000000     	bl	0x3dfc <aw8693x_trig1_param_config+0x70>
		0000000000003dfc:  R_AARCH64_CALL26	i2c_w_bits
    3e00: 3957a668     	ldrb	w8, [x19, #0x5e9]
    3e04: 910013e2     	add	x2, sp, #0x4
    3e08: aa1303e0     	mov	x0, x19
    3e0c: 52800661     	mov	w1, #0x33               // =51
    3e10: 52800023     	mov	w3, #0x1                // =1
    3e14: 7100011f     	cmp	w8, #0x0
    3e18: 3957ae68     	ldrb	w8, [x19, #0x5eb]
    3e1c: 1a9f07e9     	cset	w9, ne
    3e20: 2a091d08     	orr	w8, w8, w9, lsl #7
    3e24: 390013e8     	strb	w8, [sp, #0x4]
    3e28: 94000000     	bl	0x3e28 <aw8693x_trig1_param_config+0x9c>
		0000000000003e28:  R_AARCH64_CALL26	i2c_w_bytes
    3e2c: 3957aa68     	ldrb	w8, [x19, #0x5ea]
    3e30: 910013e2     	add	x2, sp, #0x4
    3e34: aa1303e0     	mov	x0, x19
    3e38: 528006c1     	mov	w1, #0x36               // =54
    3e3c: 52800023     	mov	w3, #0x1                // =1
    3e40: 7100011f     	cmp	w8, #0x0
    3e44: 3957b268     	ldrb	w8, [x19, #0x5ec]
    3e48: 1a9f07e9     	cset	w9, ne
    3e4c: 2a091d08     	orr	w8, w8, w9, lsl #7
    3e50: 390013e8     	strb	w8, [sp, #0x4]
    3e54: 94000000     	bl	0x3e54 <aw8693x_trig1_param_config+0xc8>
		0000000000003e54:  R_AARCH64_CALL26	i2c_w_bytes
    3e58: d5384108     	mrs	x8, SP_EL0
    3e5c: f9438908     	ldr	x8, [x8, #0x710]
    3e60: f94007e9     	ldr	x9, [sp, #0x8]
    3e64: eb09011f     	cmp	x8, x9
    3e68: 540000c1     	b.ne	0x3e80 <aw8693x_trig1_param_config+0xf4>
    3e6c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    3e70: f94013f3     	ldr	x19, [sp, #0x20]
    3e74: 9100c3ff     	add	sp, sp, #0x30
    3e78: d50323bf     	autiasp
    3e7c: d65f03c0     	ret
    3e80: 94000000     	bl	0x3e80 <aw8693x_trig1_param_config+0xf4>
		0000000000003e80:  R_AARCH64_CALL26	__stack_chk_fail
