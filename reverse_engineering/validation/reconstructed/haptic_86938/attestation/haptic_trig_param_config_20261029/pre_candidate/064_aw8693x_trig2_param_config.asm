
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003e84 <aw8693x_trig2_param_config>:
    3e84: d503233f     	paciasp
    3e88: d100c3ff     	sub	sp, sp, #0x30
    3e8c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3e90: f90013f3     	str	x19, [sp, #0x20]
    3e94: 910043fd     	add	x29, sp, #0x10
    3e98: d5384108     	mrs	x8, SP_EL0
    3e9c: 5280010a     	mov	w10, #0x8               // =8
    3ea0: 52800721     	mov	w1, #0x39               // =57
    3ea4: f9438908     	ldr	x8, [x8, #0x710]
    3ea8: 128001e2     	mov	w2, #-0x10              // =-16
    3eac: aa0003f3     	mov	x19, x0
    3eb0: f90007e8     	str	x8, [sp, #0x8]
    3eb4: 3957d008     	ldrb	w8, [x0, #0x5f4]
    3eb8: 3957d409     	ldrb	w9, [x0, #0x5f5]
    3ebc: 7100011f     	cmp	w8, #0x0
    3ec0: 1a9f07e8     	cset	w8, ne
    3ec4: 7100013f     	cmp	w9, #0x0
    3ec8: 531e750b     	lsl	w11, w8, #2
    3ecc: 331e010a     	bfi	w10, w8, #2, #1
    3ed0: 3957c808     	ldrb	w8, [x0, #0x5f2]
    3ed4: 1a8a0169     	csel	w9, w11, w10, eq
    3ed8: 3957cc0a     	ldrb	w10, [x0, #0x5f3]
    3edc: 7100011f     	cmp	w8, #0x0
    3ee0: 321f012b     	orr	w11, w9, #0x2
    3ee4: 1a8b0128     	csel	w8, w9, w11, eq
    3ee8: 7100015f     	cmp	w10, #0x0
    3eec: 1a880503     	cinc	w3, w8, ne
    3ef0: 94000000     	bl	0x3ef0 <aw8693x_trig2_param_config+0x6c>
		0000000000003ef0:  R_AARCH64_CALL26	i2c_w_bits
    3ef4: 3957da68     	ldrb	w8, [x19, #0x5f6]
    3ef8: 910013e2     	add	x2, sp, #0x4
    3efc: aa1303e0     	mov	x0, x19
    3f00: 52800681     	mov	w1, #0x34               // =52
    3f04: 52800023     	mov	w3, #0x1                // =1
    3f08: 7100011f     	cmp	w8, #0x0
    3f0c: 3957e268     	ldrb	w8, [x19, #0x5f8]
    3f10: 1a9f07e9     	cset	w9, ne
    3f14: 2a091d08     	orr	w8, w8, w9, lsl #7
    3f18: 390013e8     	strb	w8, [sp, #0x4]
    3f1c: 94000000     	bl	0x3f1c <aw8693x_trig2_param_config+0x98>
		0000000000003f1c:  R_AARCH64_CALL26	i2c_w_bytes
    3f20: 3957de68     	ldrb	w8, [x19, #0x5f7]
    3f24: 910013e2     	add	x2, sp, #0x4
    3f28: aa1303e0     	mov	x0, x19
    3f2c: 528006e1     	mov	w1, #0x37               // =55
    3f30: 52800023     	mov	w3, #0x1                // =1
    3f34: 7100011f     	cmp	w8, #0x0
    3f38: 3957e668     	ldrb	w8, [x19, #0x5f9]
    3f3c: 1a9f07e9     	cset	w9, ne
    3f40: 2a091d08     	orr	w8, w8, w9, lsl #7
    3f44: 390013e8     	strb	w8, [sp, #0x4]
    3f48: 94000000     	bl	0x3f48 <aw8693x_trig2_param_config+0xc4>
		0000000000003f48:  R_AARCH64_CALL26	i2c_w_bytes
    3f4c: d5384108     	mrs	x8, SP_EL0
    3f50: f9438908     	ldr	x8, [x8, #0x710]
    3f54: f94007e9     	ldr	x9, [sp, #0x8]
    3f58: eb09011f     	cmp	x8, x9
    3f5c: 540000c1     	b.ne	0x3f74 <aw8693x_trig2_param_config+0xf0>
    3f60: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    3f64: f94013f3     	ldr	x19, [sp, #0x20]
    3f68: 9100c3ff     	add	sp, sp, #0x30
    3f6c: d50323bf     	autiasp
    3f70: d65f03c0     	ret
    3f74: 94000000     	bl	0x3f74 <aw8693x_trig2_param_config+0xf0>
		0000000000003f74:  R_AARCH64_CALL26	__stack_chk_fail
