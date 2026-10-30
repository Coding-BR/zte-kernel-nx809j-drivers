
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001a10 <aw8693x_trig2_param_config>:
    1a10: d503233f     	paciasp
    1a14: d100c3ff     	sub	sp, sp, #0x30
    1a18: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1a1c: f90013f3     	str	x19, [sp, #0x20]
    1a20: 910043fd     	add	x29, sp, #0x10
    1a24: d5384108     	mrs	x8, SP_EL0
    1a28: 5280010a     	mov	w10, #0x8               // =8
    1a2c: 52800721     	mov	w1, #0x39               // =57
    1a30: f9438908     	ldr	x8, [x8, #0x710]
    1a34: 128001e2     	mov	w2, #-0x10              // =-16
    1a38: aa0003f3     	mov	x19, x0
    1a3c: f90007e8     	str	x8, [sp, #0x8]
    1a40: 3957d008     	ldrb	w8, [x0, #0x5f4]
    1a44: 3957d409     	ldrb	w9, [x0, #0x5f5]
    1a48: 7100011f     	cmp	w8, #0x0
    1a4c: 1a9f07e8     	cset	w8, ne
    1a50: 7100013f     	cmp	w9, #0x0
    1a54: 531e750b     	lsl	w11, w8, #2
    1a58: 331e010a     	bfi	w10, w8, #2, #1
    1a5c: 3957c808     	ldrb	w8, [x0, #0x5f2]
    1a60: 1a8a0169     	csel	w9, w11, w10, eq
    1a64: 3957cc0a     	ldrb	w10, [x0, #0x5f3]
    1a68: 7100011f     	cmp	w8, #0x0
    1a6c: 321f012b     	orr	w11, w9, #0x2
    1a70: 1a8b0128     	csel	w8, w9, w11, eq
    1a74: 7100015f     	cmp	w10, #0x0
    1a78: 1a880503     	cinc	w3, w8, ne
    1a7c: 94000000     	bl	0x1a7c <aw8693x_trig2_param_config+0x6c>
		0000000000001a7c:  R_AARCH64_CALL26	i2c_w_bits
    1a80: 3957da68     	ldrb	w8, [x19, #0x5f6]
    1a84: 910013e2     	add	x2, sp, #0x4
    1a88: aa1303e0     	mov	x0, x19
    1a8c: 52800681     	mov	w1, #0x34               // =52
    1a90: 52800023     	mov	w3, #0x1                // =1
    1a94: 7100011f     	cmp	w8, #0x0
    1a98: 3957e268     	ldrb	w8, [x19, #0x5f8]
    1a9c: 1a9f07e9     	cset	w9, ne
    1aa0: 2a091d08     	orr	w8, w8, w9, lsl #7
    1aa4: 390013e8     	strb	w8, [sp, #0x4]
    1aa8: 94000000     	bl	0x1aa8 <aw8693x_trig2_param_config+0x98>
		0000000000001aa8:  R_AARCH64_CALL26	i2c_w_bytes
    1aac: 3957de68     	ldrb	w8, [x19, #0x5f7]
    1ab0: 910013e2     	add	x2, sp, #0x4
    1ab4: aa1303e0     	mov	x0, x19
    1ab8: 528006e1     	mov	w1, #0x37               // =55
    1abc: 52800023     	mov	w3, #0x1                // =1
    1ac0: 7100011f     	cmp	w8, #0x0
    1ac4: 3957e668     	ldrb	w8, [x19, #0x5f9]
    1ac8: 1a9f07e9     	cset	w9, ne
    1acc: 2a091d08     	orr	w8, w8, w9, lsl #7
    1ad0: 390013e8     	strb	w8, [sp, #0x4]
    1ad4: 94000000     	bl	0x1ad4 <aw8693x_trig2_param_config+0xc4>
		0000000000001ad4:  R_AARCH64_CALL26	i2c_w_bytes
    1ad8: d5384108     	mrs	x8, SP_EL0
    1adc: f9438908     	ldr	x8, [x8, #0x710]
    1ae0: f94007e9     	ldr	x9, [sp, #0x8]
    1ae4: eb09011f     	cmp	x8, x9
    1ae8: 540000c1     	b.ne	0x1b00 <aw8693x_trig2_param_config+0xf0>
    1aec: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1af0: f94013f3     	ldr	x19, [sp, #0x20]
    1af4: 9100c3ff     	add	sp, sp, #0x30
    1af8: d50323bf     	autiasp
    1afc: d65f03c0     	ret
    1b00: 94000000     	bl	0x1b00 <aw8693x_trig2_param_config+0xf0>
		0000000000001b00:  R_AARCH64_CALL26	__stack_chk_fail
