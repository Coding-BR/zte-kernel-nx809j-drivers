
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003f78 <aw8693x_trig3_param_config>:
    3f78: d503233f     	paciasp
    3f7c: d100c3ff     	sub	sp, sp, #0x30
    3f80: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3f84: f90013f3     	str	x19, [sp, #0x20]
    3f88: 910043fd     	add	x29, sp, #0x10
    3f8c: d5384108     	mrs	x8, SP_EL0
    3f90: 12800fea     	mov	w10, #-0x80             // =-128
    3f94: 52800741     	mov	w1, #0x3a               // =58
    3f98: f9438908     	ldr	x8, [x8, #0x710]
    3f9c: 12801e02     	mov	w2, #-0xf1              // =-241
    3fa0: aa0003f3     	mov	x19, x0
    3fa4: f90007e8     	str	x8, [sp, #0x8]
    3fa8: 39580408     	ldrb	w8, [x0, #0x601]
    3fac: 39580809     	ldrb	w9, [x0, #0x602]
    3fb0: 7100011f     	cmp	w8, #0x0
    3fb4: 1a9f07e8     	cset	w8, ne
    3fb8: 7100013f     	cmp	w9, #0x0
    3fbc: 531a650b     	lsl	w11, w8, #6
    3fc0: 331a010a     	bfi	w10, w8, #6, #1
    3fc4: 3957fc08     	ldrb	w8, [x0, #0x5ff]
    3fc8: 1a8a0169     	csel	w9, w11, w10, eq
    3fcc: 7100011f     	cmp	w8, #0x0
    3fd0: 39580008     	ldrb	w8, [x0, #0x600]
    3fd4: 321b012a     	orr	w10, w9, #0x20
    3fd8: 1a8a0129     	csel	w9, w9, w10, eq
    3fdc: 7100011f     	cmp	w8, #0x0
    3fe0: 321c012a     	orr	w10, w9, #0x10
    3fe4: 1a8a0123     	csel	w3, w9, w10, eq
    3fe8: 94000000     	bl	0x3fe8 <aw8693x_trig3_param_config+0x70>
		0000000000003fe8:  R_AARCH64_CALL26	i2c_w_bits
    3fec: 39580e68     	ldrb	w8, [x19, #0x603]
    3ff0: 910013e2     	add	x2, sp, #0x4
    3ff4: aa1303e0     	mov	x0, x19
    3ff8: 528006a1     	mov	w1, #0x35               // =53
    3ffc: 52800023     	mov	w3, #0x1                // =1
    4000: 7100011f     	cmp	w8, #0x0
    4004: 39581668     	ldrb	w8, [x19, #0x605]
    4008: 1a9f07e9     	cset	w9, ne
    400c: 2a091d08     	orr	w8, w8, w9, lsl #7
    4010: 390013e8     	strb	w8, [sp, #0x4]
    4014: 94000000     	bl	0x4014 <aw8693x_trig3_param_config+0x9c>
		0000000000004014:  R_AARCH64_CALL26	i2c_w_bytes
    4018: 39581268     	ldrb	w8, [x19, #0x604]
    401c: 910013e2     	add	x2, sp, #0x4
    4020: aa1303e0     	mov	x0, x19
    4024: 52800701     	mov	w1, #0x38               // =56
    4028: 52800023     	mov	w3, #0x1                // =1
    402c: 7100011f     	cmp	w8, #0x0
    4030: 39581a68     	ldrb	w8, [x19, #0x606]
    4034: 1a9f07e9     	cset	w9, ne
    4038: 2a091d08     	orr	w8, w8, w9, lsl #7
    403c: 390013e8     	strb	w8, [sp, #0x4]
    4040: 94000000     	bl	0x4040 <aw8693x_trig3_param_config+0xc8>
		0000000000004040:  R_AARCH64_CALL26	i2c_w_bytes
    4044: d5384108     	mrs	x8, SP_EL0
    4048: f9438908     	ldr	x8, [x8, #0x710]
    404c: f94007e9     	ldr	x9, [sp, #0x8]
    4050: eb09011f     	cmp	x8, x9
    4054: 540000c1     	b.ne	0x406c <aw8693x_trig3_param_config+0xf4>
    4058: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    405c: f94013f3     	ldr	x19, [sp, #0x20]
    4060: 9100c3ff     	add	sp, sp, #0x30
    4064: d50323bf     	autiasp
    4068: d65f03c0     	ret
    406c: 94000000     	bl	0x406c <aw8693x_trig3_param_config+0xf4>
		000000000000406c:  R_AARCH64_CALL26	__stack_chk_fail
