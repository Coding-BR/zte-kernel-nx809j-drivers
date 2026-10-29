
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d10 <i2c_w_bits>:
     d10: d503233f     	paciasp
     d14: d10183ff     	sub	sp, sp, #0x60
     d18: a9037bfd     	stp	x29, x30, [sp, #0x30]
     d1c: a90457f6     	stp	x22, x21, [sp, #0x40]
     d20: a9054ff4     	stp	x20, x19, [sp, #0x50]
     d24: 9100c3fd     	add	x29, sp, #0x30
     d28: d5384108     	mrs	x8, SP_EL0
     d2c: 52a00029     	mov	w9, #0x10000            // =65536
     d30: aa0003f4     	mov	x20, x0
     d34: f9438908     	ldr	x8, [x8, #0x710]
     d38: 2a0203f6     	mov	w22, w2
     d3c: 2a0103f3     	mov	w19, w1
     d40: 52800042     	mov	w2, #0x2                // =2
     d44: 2a0303f5     	mov	w21, w3
     d48: f81f83a8     	stur	x8, [x29, #-0x8]
     d4c: f9419408     	ldr	x8, [x0, #0x328]
     d50: 390013e1     	strb	w1, [sp, #0x4]
     d54: 910023e1     	add	x1, sp, #0x8
     d58: 390003ff     	strb	wzr, [sp]
     d5c: 7940050a     	ldrh	w10, [x8, #0x2]
     d60: b800a3e9     	stur	w9, [sp, #0xa]
     d64: 910013e9     	add	x9, sp, #0x4
     d68: f9000be9     	str	x9, [sp, #0x10]
     d6c: 910003e9     	mov	x9, sp
     d70: f90013e9     	str	x9, [sp, #0x20]
     d74: 320083e9     	mov	w9, #0x10001            // =65537
     d78: f9400d00     	ldr	x0, [x8, #0x18]
     d7c: 79001fff     	strh	wzr, [sp, #0xe]
     d80: 790013ea     	strh	w10, [sp, #0x8]
     d84: 790033ea     	strh	w10, [sp, #0x18]
     d88: b801a3e9     	stur	w9, [sp, #0x1a]
     d8c: 79003fff     	strh	wzr, [sp, #0x1e]
     d90: 94000000     	bl	0xd90 <i2c_w_bits+0x80>
		0000000000000d90:  R_AARCH64_CALL26	i2c_transfer
     d94: 37f80340     	tbnz	w0, #0x1f, 0xdfc <i2c_w_bits+0xec>
     d98: 7100081f     	cmp	w0, #0x2
     d9c: 54000441     	b.ne	0xe24 <i2c_w_bits+0x114>
     da0: 394003e8     	ldrb	w8, [sp]
     da4: 0a3602a9     	bic	w9, w21, w22
     da8: 910003e2     	mov	x2, sp
     dac: aa1403e0     	mov	x0, x20
     db0: 2a1303e1     	mov	w1, w19
     db4: 52800023     	mov	w3, #0x1                // =1
     db8: 0a160108     	and	w8, w8, w22
     dbc: 2a090108     	orr	w8, w8, w9
     dc0: 390003e8     	strb	w8, [sp]
     dc4: 94000000     	bl	0xdc4 <i2c_w_bits+0xb4>
		0000000000000dc4:  R_AARCH64_CALL26	i2c_w_bytes
     dc8: 37f80500     	tbnz	w0, #0x1f, 0xe68 <i2c_w_bits+0x158>
     dcc: 2a1f03e0     	mov	w0, wzr
     dd0: d5384108     	mrs	x8, SP_EL0
     dd4: f9438908     	ldr	x8, [x8, #0x710]
     dd8: f85f83a9     	ldur	x9, [x29, #-0x8]
     ddc: eb09011f     	cmp	x8, x9
     de0: 540005e1     	b.ne	0xe9c <i2c_w_bits+0x18c>
     de4: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     de8: a94457f6     	ldp	x22, x21, [sp, #0x40]
     dec: a9437bfd     	ldp	x29, x30, [sp, #0x30]
     df0: 910183ff     	add	sp, sp, #0x60
     df4: d50323bf     	autiasp
     df8: d65f03c0     	ret
     dfc: 2a0003f3     	mov	w19, w0
     e00: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x94
     e04: 91000000     	add	x0, x0, #0x0
		0000000000000e04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x94
     e08: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
     e0c: 91000021     	add	x1, x1, #0x0
		0000000000000e0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
     e10: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000e10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc7
     e14: 91000063     	add	x3, x3, #0x0
		0000000000000e14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc7
     e18: 52800ca2     	mov	w2, #0x65               // =101
     e1c: 94000000     	bl	0xe1c <i2c_w_bits+0x10c>
		0000000000000e1c:  R_AARCH64_CALL26	_printk
     e20: 1400000a     	b	0xe48 <i2c_w_bits+0x138>
     e24: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16e
     e28: 91000000     	add	x0, x0, #0x0
		0000000000000e28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16e
     e2c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
     e30: 91000021     	add	x1, x1, #0x0
		0000000000000e30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
     e34: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000e34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc7
     e38: 91000063     	add	x3, x3, #0x0
		0000000000000e38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc7
     e3c: 52800d02     	mov	w2, #0x68               // =104
     e40: 94000000     	bl	0xe40 <i2c_w_bits+0x130>
		0000000000000e40:  R_AARCH64_CALL26	_printk
     e44: 128000b3     	mov	w19, #-0x6              // =-6
     e48: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22f
     e4c: 91000000     	add	x0, x0, #0x0
		0000000000000e4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22f
     e50: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
     e54: 91000021     	add	x1, x1, #0x0
		0000000000000e54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
     e58: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000e58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32a
     e5c: 91000063     	add	x3, x3, #0x0
		0000000000000e5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32a
     e60: 528010e2     	mov	w2, #0x87               // =135
     e64: 1400000a     	b	0xe8c <i2c_w_bits+0x17c>
     e68: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000e68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x301
     e6c: 91000108     	add	x8, x8, #0x0
		0000000000000e6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x301
     e70: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
     e74: 91000021     	add	x1, x1, #0x0
		0000000000000e74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
     e78: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000e78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32a
     e7c: 91000063     	add	x3, x3, #0x0
		0000000000000e7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32a
     e80: 2a0003f3     	mov	w19, w0
     e84: aa0803e0     	mov	x0, x8
     e88: 528011c2     	mov	w2, #0x8e               // =142
     e8c: 2a1303e4     	mov	w4, w19
     e90: 94000000     	bl	0xe90 <i2c_w_bits+0x180>
		0000000000000e90:  R_AARCH64_CALL26	_printk
     e94: 2a1303e0     	mov	w0, w19
     e98: 17ffffce     	b	0xdd0 <i2c_w_bits+0xc0>
     e9c: 94000000     	bl	0xe9c <i2c_w_bits+0x18c>
		0000000000000e9c:  R_AARCH64_CALL26	__stack_chk_fail
