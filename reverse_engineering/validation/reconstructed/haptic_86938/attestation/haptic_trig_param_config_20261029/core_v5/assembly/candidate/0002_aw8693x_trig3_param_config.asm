
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001b08 <aw8693x_trig3_param_config>:
    1b08: d503233f     	paciasp
    1b0c: d100c3ff     	sub	sp, sp, #0x30
    1b10: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1b14: f90013f3     	str	x19, [sp, #0x20]
    1b18: 910043fd     	add	x29, sp, #0x10
    1b1c: d5384108     	mrs	x8, SP_EL0
    1b20: 12800fea     	mov	w10, #-0x80             // =-128
    1b24: 52800741     	mov	w1, #0x3a               // =58
    1b28: f9438908     	ldr	x8, [x8, #0x710]
    1b2c: 12801e02     	mov	w2, #-0xf1              // =-241
    1b30: aa0003f3     	mov	x19, x0
    1b34: f90007e8     	str	x8, [sp, #0x8]
    1b38: 39580408     	ldrb	w8, [x0, #0x601]
    1b3c: 39580809     	ldrb	w9, [x0, #0x602]
    1b40: 7100011f     	cmp	w8, #0x0
    1b44: 1a9f07e8     	cset	w8, ne
    1b48: 7100013f     	cmp	w9, #0x0
    1b4c: 531a650b     	lsl	w11, w8, #6
    1b50: 331a010a     	bfi	w10, w8, #6, #1
    1b54: 3957fc08     	ldrb	w8, [x0, #0x5ff]
    1b58: 1a8a0169     	csel	w9, w11, w10, eq
    1b5c: 7100011f     	cmp	w8, #0x0
    1b60: 39580008     	ldrb	w8, [x0, #0x600]
    1b64: 321b012a     	orr	w10, w9, #0x20
    1b68: 1a8a0129     	csel	w9, w9, w10, eq
    1b6c: 7100011f     	cmp	w8, #0x0
    1b70: 321c012a     	orr	w10, w9, #0x10
    1b74: 1a8a0123     	csel	w3, w9, w10, eq
    1b78: 94000000     	bl	0x1b78 <aw8693x_trig3_param_config+0x70>
		0000000000001b78:  R_AARCH64_CALL26	i2c_w_bits
    1b7c: 39580e68     	ldrb	w8, [x19, #0x603]
    1b80: 910013e2     	add	x2, sp, #0x4
    1b84: aa1303e0     	mov	x0, x19
    1b88: 528006a1     	mov	w1, #0x35               // =53
    1b8c: 52800023     	mov	w3, #0x1                // =1
    1b90: 7100011f     	cmp	w8, #0x0
    1b94: 39581668     	ldrb	w8, [x19, #0x605]
    1b98: 1a9f07e9     	cset	w9, ne
    1b9c: 2a091d08     	orr	w8, w8, w9, lsl #7
    1ba0: 390013e8     	strb	w8, [sp, #0x4]
    1ba4: 94000000     	bl	0x1ba4 <aw8693x_trig3_param_config+0x9c>
		0000000000001ba4:  R_AARCH64_CALL26	i2c_w_bytes
    1ba8: 39581268     	ldrb	w8, [x19, #0x604]
    1bac: 910013e2     	add	x2, sp, #0x4
    1bb0: aa1303e0     	mov	x0, x19
    1bb4: 52800701     	mov	w1, #0x38               // =56
    1bb8: 52800023     	mov	w3, #0x1                // =1
    1bbc: 7100011f     	cmp	w8, #0x0
    1bc0: 39581a68     	ldrb	w8, [x19, #0x606]
    1bc4: 1a9f07e9     	cset	w9, ne
    1bc8: 2a091d08     	orr	w8, w8, w9, lsl #7
    1bcc: 390013e8     	strb	w8, [sp, #0x4]
    1bd0: 94000000     	bl	0x1bd0 <aw8693x_trig3_param_config+0xc8>
		0000000000001bd0:  R_AARCH64_CALL26	i2c_w_bytes
    1bd4: d5384108     	mrs	x8, SP_EL0
    1bd8: f9438908     	ldr	x8, [x8, #0x710]
    1bdc: f94007e9     	ldr	x9, [sp, #0x8]
    1be0: eb09011f     	cmp	x8, x9
    1be4: 540000c1     	b.ne	0x1bfc <aw8693x_trig3_param_config+0xf4>
    1be8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1bec: f94013f3     	ldr	x19, [sp, #0x20]
    1bf0: 9100c3ff     	add	sp, sp, #0x30
    1bf4: d50323bf     	autiasp
    1bf8: d65f03c0     	ret
    1bfc: 94000000     	bl	0x1bfc <aw8693x_trig3_param_config+0xf4>
		0000000000001bfc:  R_AARCH64_CALL26	__stack_chk_fail
