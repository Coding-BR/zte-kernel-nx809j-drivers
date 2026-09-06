
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002bec <aw22xxx_cfg_loaded>:
    2bec: d503233f     	paciasp
    2bf0: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    2bf4: a90167fa     	stp	x26, x25, [sp, #0x10]
    2bf8: a9025ff8     	stp	x24, x23, [sp, #0x20]
    2bfc: a90357f6     	stp	x22, x21, [sp, #0x30]
    2c00: a9044ff4     	stp	x20, x19, [sp, #0x40]
    2c04: 910003fd     	mov	x29, sp
    2c08: aa0103f3     	mov	x19, x1
    2c0c: aa0003f4     	mov	x20, x0
    2c10: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002c10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8dd
    2c14: 91000000     	add	x0, x0, #0x0
		0000000000002c14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8dd
    2c18: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002c18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1515
    2c1c: 91000021     	add	x1, x1, #0x0
		0000000000002c1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1515
    2c20: 94000000     	bl	0x2c20 <aw22xxx_cfg_loaded+0x34>
		0000000000002c20:  R_AARCH64_CALL26	_printk
    2c24: b9430262     	ldr	w2, [x19, #0x300]
    2c28: b5000134     	cbnz	x20, 0x2c4c <aw22xxx_cfg_loaded+0x60>
    2c2c: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002c2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b4
    2c30: 91000000     	add	x0, x0, #0x0
		0000000000002c30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b4
    2c34: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002c34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1515
    2c38: 91000021     	add	x1, x1, #0x0
		0000000000002c38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1515
    2c3c: 94000000     	bl	0x2c3c <aw22xxx_cfg_loaded+0x50>
		0000000000002c3c:  R_AARCH64_CALL26	_printk
    2c40: aa1f03e0     	mov	x0, xzr
    2c44: 94000000     	bl	0x2c44 <aw22xxx_cfg_loaded+0x58>
		0000000000002c44:  R_AARCH64_CALL26	release_firmware
    2c48: 14000021     	b	0x2ccc <aw22xxx_cfg_loaded+0xe0>
    2c4c: f9400283     	ldr	x3, [x20]
    2c50: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002c50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d8
    2c54: 91000000     	add	x0, x0, #0x0
		0000000000002c54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d8
    2c58: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002c58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1515
    2c5c: 91000021     	add	x1, x1, #0x0
		0000000000002c5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1515
    2c60: 94000000     	bl	0x2c60 <aw22xxx_cfg_loaded+0x74>
		0000000000002c60:  R_AARCH64_CALL26	_printk
    2c64: f9400288     	ldr	x8, [x20]
    2c68: b5000408     	cbnz	x8, 0x2ce8 <aw22xxx_cfg_loaded+0xfc>
    2c6c: aa1403e0     	mov	x0, x20
    2c70: 94000000     	bl	0x2c70 <aw22xxx_cfg_loaded+0x84>
		0000000000002c70:  R_AARCH64_CALL26	release_firmware
    2c74: b942f268     	ldr	w8, [x19, #0x2f0]
    2c78: 7100311f     	cmp	w8, #0xc
    2c7c: 54000a48     	b.hi	0x2dc4 <aw22xxx_cfg_loaded+0x1d8>
    2c80: 90000009     	adrp	x9, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002c80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x140
    2c84: 91000129     	add	x9, x9, #0x0
		0000000000002c84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x140
    2c88: aa1303e0     	mov	x0, x19
    2c8c: 38686928     	ldrb	w8, [x9, x8]
    2c90: 528001e9     	mov	w9, #0xf                // =15
    2c94: 52801fe1     	mov	w1, #0xff               // =255
    2c98: 2a1f03e2     	mov	w2, wzr
    2c9c: 71003d1f     	cmp	w8, #0xf
    2ca0: 1a893114     	csel	w20, w8, w9, lo
    2ca4: 97fff5de     	bl	0x41c <aw22xxx_i2c_write>
    2ca8: aa1303e0     	mov	x0, x19
    2cac: 52800161     	mov	w1, #0xb                // =11
    2cb0: 2a1403e2     	mov	w2, w20
    2cb4: 97fff5da     	bl	0x41c <aw22xxx_i2c_write>
    2cb8: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002cb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x850
    2cbc: 91000000     	add	x0, x0, #0x0
		0000000000002cbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x850
    2cc0: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002cc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1515
    2cc4: 91000021     	add	x1, x1, #0x0
		0000000000002cc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1515
    2cc8: 94000000     	bl	0x2cc8 <aw22xxx_cfg_loaded+0xdc>
		0000000000002cc8:  R_AARCH64_CALL26	_printk
    2ccc: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    2cd0: a94357f6     	ldp	x22, x21, [sp, #0x30]
    2cd4: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    2cd8: a94167fa     	ldp	x26, x25, [sp, #0x10]
    2cdc: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    2ce0: d50323bf     	autiasp
    2ce4: d65f03c0     	ret
    2ce8: aa1f03fa     	mov	x26, xzr
    2cec: 2a1f03f6     	mov	w22, wzr
    2cf0: 910c3275     	add	x21, x19, #0x30c
    2cf4: 52800057     	mov	w23, #0x2               // =2
    2cf8: 52801578     	mov	w24, #0xab              // =171
    2cfc: 52800219     	mov	w25, #0x10              // =16
    2d00: 14000009     	b	0x2d24 <aw22xxx_cfg_loaded+0x138>
    2d04: 39400502     	ldrb	w2, [x8, #0x1]
    2d08: aa1303e0     	mov	x0, x19
    2d0c: 97fff5c4     	bl	0x41c <aw22xxx_i2c_write>
    2d10: 93407efa     	sxtw	x26, w23
    2d14: f9400288     	ldr	x8, [x20]
    2d18: 11000af7     	add	w23, w23, #0x2
    2d1c: eb1a011f     	cmp	x8, x26
    2d20: 54fffa69     	b.ls	0x2c6c <aw22xxx_cfg_loaded+0x80>
    2d24: f9400688     	ldr	x8, [x20, #0x8]
    2d28: 8b1a0108     	add	x8, x8, x26
    2d2c: 39400101     	ldrb	w1, [x8]
    2d30: 7103fc3f     	cmp	w1, #0xff
    2d34: 54000041     	b.ne	0x2d3c <aw22xxx_cfg_loaded+0x150>
    2d38: 39400516     	ldrb	w22, [x8, #0x1]
    2d3c: 394c1269     	ldrb	w9, [x19, #0x304]
    2d40: 7100053f     	cmp	w9, #0x1
    2d44: 54000200     	b.eq	0x2d84 <aw22xxx_cfg_loaded+0x198>
    2d48: 710006df     	cmp	w22, #0x1
    2d4c: 540001c1     	b.ne	0x2d84 <aw22xxx_cfg_loaded+0x198>
    2d50: 51004029     	sub	w9, w1, #0x10
    2d54: 71006d3f     	cmp	w9, #0x1b
    2d58: 54fffd62     	b.hs	0x2d04 <aw22xxx_cfg_loaded+0x118>
    2d5c: 12001d28     	and	w8, w9, #0xff
    2d60: 1b187d08     	mul	w8, w8, w24
    2d64: 53097d08     	lsr	w8, w8, #9
    2d68: 0b08050a     	add	w10, w8, w8, lsl #1
    2d6c: b8685aa8     	ldr	w8, [x21, w8, uxtw #2]
    2d70: 4b0a0129     	sub	w9, w9, w10
    2d74: 531d1129     	ubfiz	w9, w9, #3, #5
    2d78: 4b090329     	sub	w9, w25, w9
    2d7c: 1ac92502     	lsr	w2, w8, w9
    2d80: 17ffffe2     	b	0x2d08 <aw22xxx_cfg_loaded+0x11c>
    2d84: 39400502     	ldrb	w2, [x8, #0x1]
    2d88: aa1303e0     	mov	x0, x19
    2d8c: 97fff5a4     	bl	0x41c <aw22xxx_i2c_write>
    2d90: 35fffc16     	cbnz	w22, 0x2d10 <aw22xxx_cfg_loaded+0x124>
    2d94: f9400688     	ldr	x8, [x20, #0x8]
    2d98: 8b1a0108     	add	x8, x8, x26
    2d9c: 39400109     	ldrb	w9, [x8]
    2da0: 7100093f     	cmp	w9, #0x2
    2da4: 54fffb61     	b.ne	0x2d10 <aw22xxx_cfg_loaded+0x124>
    2da8: 39400508     	ldrb	w8, [x8, #0x1]
    2dac: 3607fb28     	tbz	w8, #0x0, 0x2d10 <aw22xxx_cfg_loaded+0x124>
    2db0: 5280fa00     	mov	w0, #0x7d0              // =2000
    2db4: 52813881     	mov	w1, #0x9c4              // =2500
    2db8: 52800042     	mov	w2, #0x2                // =2
    2dbc: 94000000     	bl	0x2dbc <aw22xxx_cfg_loaded+0x1d0>
		0000000000002dbc:  R_AARCH64_CALL26	usleep_range_state
    2dc0: 17ffffd4     	b	0x2d10 <aw22xxx_cfg_loaded+0x124>
    2dc4: d42aa240     	brk	#0x5512
