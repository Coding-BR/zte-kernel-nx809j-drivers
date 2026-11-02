
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004c8c <aw8693x_get_lra_resistance>:
    4c8c: d503233f     	paciasp
    4c90: d10103ff     	sub	sp, sp, #0x40
    4c94: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4c98: f90013f5     	str	x21, [sp, #0x20]
    4c9c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    4ca0: 910043fd     	add	x29, sp, #0x10
    4ca4: d5384108     	mrs	x8, SP_EL0
    4ca8: aa0003f3     	mov	x19, x0
    4cac: f9438908     	ldr	x8, [x8, #0x710]
    4cb0: f90007e8     	str	x8, [sp, #0x8]
    4cb4: 390003ff     	strb	wzr, [sp]
    4cb8: 79000bff     	strh	wzr, [sp, #0x4]
    4cbc: 94000000     	bl	0x4cbc <aw8693x_get_lra_resistance+0x30>
		0000000000004cbc:  R_AARCH64_CALL26	aw8693x_stop
    4cc0: aa1303e0     	mov	x0, x19
    4cc4: 528008a1     	mov	w1, #0x45               // =69
    4cc8: 12800082     	mov	w2, #-0x5               // =-5
    4ccc: 52800083     	mov	w3, #0x4                // =4
    4cd0: 94000000     	bl	0x4cd0 <aw8693x_get_lra_resistance+0x44>
		0000000000004cd0:  R_AARCH64_CALL26	i2c_w_bits
    4cd4: 52803e80     	mov	w0, #0x1f4              // =500
    4cd8: 52804b01     	mov	w1, #0x258              // =600
    4cdc: 52800042     	mov	w2, #0x2                // =2
    4ce0: 94000000     	bl	0x4ce0 <aw8693x_get_lra_resistance+0x54>
		0000000000004ce0:  R_AARCH64_CALL26	usleep_range_state
    4ce4: aa1303e0     	mov	x0, x19
    4ce8: 528009c1     	mov	w1, #0x4e               // =78
    4cec: 12800f02     	mov	w2, #-0x79              // =-121
    4cf0: 52800303     	mov	w3, #0x18               // =24
    4cf4: 94000000     	bl	0x4cf4 <aw8693x_get_lra_resistance+0x68>
		0000000000004cf4:  R_AARCH64_CALL26	i2c_w_bits
    4cf8: 910003e2     	mov	x2, sp
    4cfc: aa1303e0     	mov	x0, x19
    4d00: 528009a1     	mov	w1, #0x4d               // =77
    4d04: 52800023     	mov	w3, #0x1                // =1
    4d08: 94000000     	bl	0x4d08 <aw8693x_get_lra_resistance+0x7c>
		0000000000004d08:  R_AARCH64_CALL26	i2c_r_bytes
    4d0c: 394003f4     	ldrb	w20, [sp]
    4d10: 910003e2     	mov	x2, sp
    4d14: aa1303e0     	mov	x0, x19
    4d18: 528009c1     	mov	w1, #0x4e               // =78
    4d1c: 52800023     	mov	w3, #0x1                // =1
    4d20: 94000000     	bl	0x4d20 <aw8693x_get_lra_resistance+0x94>
		0000000000004d20:  R_AARCH64_CALL26	i2c_r_bytes
    4d24: 394003f5     	ldrb	w21, [sp]
    4d28: aa1303e0     	mov	x0, x19
    4d2c: 528009c1     	mov	w1, #0x4e               // =78
    4d30: 128000e2     	mov	w2, #-0x8               // =-8
    4d34: 52800083     	mov	w3, #0x4                // =4
    4d38: 94000000     	bl	0x4d38 <aw8693x_get_lra_resistance+0xac>
		0000000000004d38:  R_AARCH64_CALL26	i2c_w_bits
    4d3c: aa1303e0     	mov	x0, x19
    4d40: 528009a1     	mov	w1, #0x4d               // =77
    4d44: 128001e2     	mov	w2, #-0x10              // =-16
    4d48: 528000a3     	mov	w3, #0x5                // =5
    4d4c: 94000000     	bl	0x4d4c <aw8693x_get_lra_resistance+0xc0>
		0000000000004d4c:  R_AARCH64_CALL26	i2c_w_bits
    4d50: 52817700     	mov	w0, #0xbb8              // =3000
    4d54: 5281b581     	mov	w1, #0xdac              // =3500
    4d58: 52800042     	mov	w2, #0x2                // =2
    4d5c: 94000000     	bl	0x4d5c <aw8693x_get_lra_resistance+0xd0>
		0000000000004d5c:  R_AARCH64_CALL26	usleep_range_state
    4d60: aa1303e0     	mov	x0, x19
    4d64: 528009a1     	mov	w1, #0x4d               // =77
    4d68: 12800062     	mov	w2, #-0x4               // =-4
    4d6c: 2a1f03e3     	mov	w3, wzr
    4d70: 94000000     	bl	0x4d70 <aw8693x_get_lra_resistance+0xe4>
		0000000000004d70:  R_AARCH64_CALL26	i2c_w_bits
    4d74: aa1303e0     	mov	x0, x19
    4d78: 528008a1     	mov	w1, #0x45               // =69
    4d7c: 12800082     	mov	w2, #-0x5               // =-5
    4d80: 2a1f03e3     	mov	w3, wzr
    4d84: 94000000     	bl	0x4d84 <aw8693x_get_lra_resistance+0xf8>
		0000000000004d84:  R_AARCH64_CALL26	i2c_w_bits
    4d88: 121e0683     	and	w3, w20, #0xc
    4d8c: aa1303e0     	mov	x0, x19
    4d90: 528009a1     	mov	w1, #0x4d               // =77
    4d94: 12800182     	mov	w2, #-0xd               // =-13
    4d98: 94000000     	bl	0x4d98 <aw8693x_get_lra_resistance+0x10c>
		0000000000004d98:  R_AARCH64_CALL26	i2c_w_bits
    4d9c: 12000aa3     	and	w3, w21, #0x7
    4da0: aa1303e0     	mov	x0, x19
    4da4: 528009c1     	mov	w1, #0x4e               // =78
    4da8: 128000e2     	mov	w2, #-0x8               // =-8
    4dac: 94000000     	bl	0x4dac <aw8693x_get_lra_resistance+0x120>
		0000000000004dac:  R_AARCH64_CALL26	i2c_w_bits
    4db0: 910013e2     	add	x2, sp, #0x4
    4db4: aa1303e0     	mov	x0, x19
    4db8: 528009e1     	mov	w1, #0x4f               // =79
    4dbc: 52800043     	mov	w3, #0x2                // =2
    4dc0: 94000000     	bl	0x4dc0 <aw8693x_get_lra_resistance+0x134>
		0000000000004dc0:  R_AARCH64_CALL26	i2c_r_bytes
    4dc4: 394013e8     	ldrb	w8, [sp, #0x4]
    4dc8: 394017e9     	ldrb	w9, [sp, #0x5]
    4dcc: 33180509     	bfi	w9, w8, #8, #2
    4dd0: 5289da08     	mov	w8, #0x4ed0             // =20176
    4dd4: 72a00128     	movk	w8, #0x9, lsl #16
    4dd8: 1b087d28     	mul	w8, w9, w8
    4ddc: 5280cd29     	mov	w9, #0x669              // =1641
    4de0: 72acd009     	movk	w9, #0x6680, lsl #16
    4de4: 9ba97d08     	umull	x8, w8, w9
    4de8: d36cfd08     	lsr	x8, x8, #44
    4dec: b9006668     	str	w8, [x19, #0x64]
    4df0: d5384108     	mrs	x8, SP_EL0
    4df4: f9438908     	ldr	x8, [x8, #0x710]
    4df8: f94007e9     	ldr	x9, [sp, #0x8]
    4dfc: eb09011f     	cmp	x8, x9
    4e00: 540000e1     	b.ne	0x4e1c <aw8693x_get_lra_resistance+0x190>
    4e04: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    4e08: f94013f5     	ldr	x21, [sp, #0x20]
    4e0c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    4e10: 910103ff     	add	sp, sp, #0x40
    4e14: d50323bf     	autiasp
    4e18: d65f03c0     	ret
    4e1c: 94000000     	bl	0x4e1c <aw8693x_get_lra_resistance+0x190>
		0000000000004e1c:  R_AARCH64_CALL26	__stack_chk_fail
