
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004c5c <aw8693x_get_lra_resistance>:
    4c5c: d503233f     	paciasp
    4c60: d10103ff     	sub	sp, sp, #0x40
    4c64: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4c68: f90013f5     	str	x21, [sp, #0x20]
    4c6c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    4c70: 910043fd     	add	x29, sp, #0x10
    4c74: d5384108     	mrs	x8, SP_EL0
    4c78: aa0003f3     	mov	x19, x0
    4c7c: f9438908     	ldr	x8, [x8, #0x710]
    4c80: f90007e8     	str	x8, [sp, #0x8]
    4c84: 390003ff     	strb	wzr, [sp]
    4c88: 79000bff     	strh	wzr, [sp, #0x4]
    4c8c: 94000000     	bl	0x4c8c <aw8693x_get_lra_resistance+0x30>
		0000000000004c8c:  R_AARCH64_CALL26	aw8693x_stop
    4c90: aa1303e0     	mov	x0, x19
    4c94: 528008a1     	mov	w1, #0x45               // =69
    4c98: 12800082     	mov	w2, #-0x5               // =-5
    4c9c: 52800083     	mov	w3, #0x4                // =4
    4ca0: 94000000     	bl	0x4ca0 <aw8693x_get_lra_resistance+0x44>
		0000000000004ca0:  R_AARCH64_CALL26	i2c_w_bits
    4ca4: 52803e80     	mov	w0, #0x1f4              // =500
    4ca8: 52804b01     	mov	w1, #0x258              // =600
    4cac: 52800042     	mov	w2, #0x2                // =2
    4cb0: 94000000     	bl	0x4cb0 <aw8693x_get_lra_resistance+0x54>
		0000000000004cb0:  R_AARCH64_CALL26	usleep_range_state
    4cb4: aa1303e0     	mov	x0, x19
    4cb8: 528009c1     	mov	w1, #0x4e               // =78
    4cbc: 12800f02     	mov	w2, #-0x79              // =-121
    4cc0: 52800303     	mov	w3, #0x18               // =24
    4cc4: 94000000     	bl	0x4cc4 <aw8693x_get_lra_resistance+0x68>
		0000000000004cc4:  R_AARCH64_CALL26	i2c_w_bits
    4cc8: 910003e2     	mov	x2, sp
    4ccc: aa1303e0     	mov	x0, x19
    4cd0: 528009a1     	mov	w1, #0x4d               // =77
    4cd4: 52800023     	mov	w3, #0x1                // =1
    4cd8: 94000000     	bl	0x4cd8 <aw8693x_get_lra_resistance+0x7c>
		0000000000004cd8:  R_AARCH64_CALL26	i2c_r_bytes
    4cdc: 394003f4     	ldrb	w20, [sp]
    4ce0: 910003e2     	mov	x2, sp
    4ce4: aa1303e0     	mov	x0, x19
    4ce8: 528009c1     	mov	w1, #0x4e               // =78
    4cec: 52800023     	mov	w3, #0x1                // =1
    4cf0: 94000000     	bl	0x4cf0 <aw8693x_get_lra_resistance+0x94>
		0000000000004cf0:  R_AARCH64_CALL26	i2c_r_bytes
    4cf4: 394003f5     	ldrb	w21, [sp]
    4cf8: aa1303e0     	mov	x0, x19
    4cfc: 528009c1     	mov	w1, #0x4e               // =78
    4d00: 128000e2     	mov	w2, #-0x8               // =-8
    4d04: 52800083     	mov	w3, #0x4                // =4
    4d08: 94000000     	bl	0x4d08 <aw8693x_get_lra_resistance+0xac>
		0000000000004d08:  R_AARCH64_CALL26	i2c_w_bits
    4d0c: aa1303e0     	mov	x0, x19
    4d10: 528009a1     	mov	w1, #0x4d               // =77
    4d14: 128001e2     	mov	w2, #-0x10              // =-16
    4d18: 528000a3     	mov	w3, #0x5                // =5
    4d1c: 94000000     	bl	0x4d1c <aw8693x_get_lra_resistance+0xc0>
		0000000000004d1c:  R_AARCH64_CALL26	i2c_w_bits
    4d20: 52817700     	mov	w0, #0xbb8              // =3000
    4d24: 5281b581     	mov	w1, #0xdac              // =3500
    4d28: 52800042     	mov	w2, #0x2                // =2
    4d2c: 94000000     	bl	0x4d2c <aw8693x_get_lra_resistance+0xd0>
		0000000000004d2c:  R_AARCH64_CALL26	usleep_range_state
    4d30: aa1303e0     	mov	x0, x19
    4d34: 528009a1     	mov	w1, #0x4d               // =77
    4d38: 12800062     	mov	w2, #-0x4               // =-4
    4d3c: 2a1f03e3     	mov	w3, wzr
    4d40: 94000000     	bl	0x4d40 <aw8693x_get_lra_resistance+0xe4>
		0000000000004d40:  R_AARCH64_CALL26	i2c_w_bits
    4d44: aa1303e0     	mov	x0, x19
    4d48: 528008a1     	mov	w1, #0x45               // =69
    4d4c: 12800082     	mov	w2, #-0x5               // =-5
    4d50: 2a1f03e3     	mov	w3, wzr
    4d54: 94000000     	bl	0x4d54 <aw8693x_get_lra_resistance+0xf8>
		0000000000004d54:  R_AARCH64_CALL26	i2c_w_bits
    4d58: 121e0683     	and	w3, w20, #0xc
    4d5c: aa1303e0     	mov	x0, x19
    4d60: 528009a1     	mov	w1, #0x4d               // =77
    4d64: 12800182     	mov	w2, #-0xd               // =-13
    4d68: 94000000     	bl	0x4d68 <aw8693x_get_lra_resistance+0x10c>
		0000000000004d68:  R_AARCH64_CALL26	i2c_w_bits
    4d6c: 12000aa3     	and	w3, w21, #0x7
    4d70: aa1303e0     	mov	x0, x19
    4d74: 528009c1     	mov	w1, #0x4e               // =78
    4d78: 128000e2     	mov	w2, #-0x8               // =-8
    4d7c: 94000000     	bl	0x4d7c <aw8693x_get_lra_resistance+0x120>
		0000000000004d7c:  R_AARCH64_CALL26	i2c_w_bits
    4d80: 910013e2     	add	x2, sp, #0x4
    4d84: aa1303e0     	mov	x0, x19
    4d88: 528009e1     	mov	w1, #0x4f               // =79
    4d8c: 52800043     	mov	w3, #0x2                // =2
    4d90: 94000000     	bl	0x4d90 <aw8693x_get_lra_resistance+0x134>
		0000000000004d90:  R_AARCH64_CALL26	i2c_r_bytes
    4d94: 394013e8     	ldrb	w8, [sp, #0x4]
    4d98: 394017e9     	ldrb	w9, [sp, #0x5]
    4d9c: 33180509     	bfi	w9, w8, #8, #2
    4da0: 5289da08     	mov	w8, #0x4ed0             // =20176
    4da4: 72a00128     	movk	w8, #0x9, lsl #16
    4da8: 1b087d28     	mul	w8, w9, w8
    4dac: 5280cd29     	mov	w9, #0x669              // =1641
    4db0: 72acd009     	movk	w9, #0x6680, lsl #16
    4db4: 9ba97d08     	umull	x8, w8, w9
    4db8: d36cfd08     	lsr	x8, x8, #44
    4dbc: b9006668     	str	w8, [x19, #0x64]
    4dc0: d5384108     	mrs	x8, SP_EL0
    4dc4: f9438908     	ldr	x8, [x8, #0x710]
    4dc8: f94007e9     	ldr	x9, [sp, #0x8]
    4dcc: eb09011f     	cmp	x8, x9
    4dd0: 540000e1     	b.ne	0x4dec <aw8693x_get_lra_resistance+0x190>
    4dd4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    4dd8: f94013f5     	ldr	x21, [sp, #0x20]
    4ddc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    4de0: 910103ff     	add	sp, sp, #0x40
    4de4: d50323bf     	autiasp
    4de8: d65f03c0     	ret
    4dec: 94000000     	bl	0x4dec <aw8693x_get_lra_resistance+0x190>
		0000000000004dec:  R_AARCH64_CALL26	__stack_chk_fail
