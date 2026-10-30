
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001c04 <trig_store>:
    1c04: d503233f     	paciasp
    1c08: d10243ff     	sub	sp, sp, #0x90
    1c0c: a9067bfd     	stp	x29, x30, [sp, #0x60]
    1c10: f9003bf5     	str	x21, [sp, #0x70]
    1c14: a9084ff4     	stp	x20, x19, [sp, #0x80]
    1c18: 910183fd     	add	x29, sp, #0x60
    1c1c: d5384109     	mrs	x9, SP_EL0
    1c20: aa0203e8     	mov	x8, x2
    1c24: aa0303f3     	mov	x19, x3
    1c28: f9438929     	ldr	x9, [x9, #0x710]
    1c2c: 90000001     	adrp	x1, 0x1000 <aw8693x_set_bst_vol+0x18>
		0000000000001c2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23d
    1c30: 91000021     	add	x1, x1, #0x0
		0000000000001c30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23d
    1c34: 9100c3e2     	add	x2, sp, #0x30
    1c38: f81f83a9     	stur	x9, [x29, #-0x8]
    1c3c: 9100c3e9     	add	x9, sp, #0x30
    1c40: 9100612a     	add	x10, x9, #0x18
    1c44: f9404c15     	ldr	x21, [x0, #0x98]
    1c48: 9100812b     	add	x11, x9, #0x20
    1c4c: 9100712c     	add	x12, x9, #0x1c
    1c50: b27e0123     	orr	x3, x9, #0x4
    1c54: 91002124     	add	x4, x9, #0x8
    1c58: 91003125     	add	x5, x9, #0xc
    1c5c: 91004126     	add	x6, x9, #0x10
    1c60: 91005127     	add	x7, x9, #0x14
    1c64: aa0803e0     	mov	x0, x8
    1c68: b90053ff     	str	wzr, [sp, #0x50]
    1c6c: a9047fff     	stp	xzr, xzr, [sp, #0x40]
    1c70: a9037fff     	stp	xzr, xzr, [sp, #0x30]
    1c74: a900afec     	stp	x12, x11, [sp, #0x8]
    1c78: f90003ea     	str	x10, [sp]
    1c7c: 94000000     	bl	0x1c7c <trig_store+0x78>
		0000000000001c7c:  R_AARCH64_CALL26	sscanf
    1c80: 7100241f     	cmp	w0, #0x9
    1c84: 540001a0     	b.eq	0x1cb8 <trig_store+0xb4>
    1c88: d5384108     	mrs	x8, SP_EL0
    1c8c: f9438908     	ldr	x8, [x8, #0x710]
    1c90: f85f83a9     	ldur	x9, [x29, #-0x8]
    1c94: eb09011f     	cmp	x8, x9
    1c98: 54000ea1     	b.ne	0x1e6c <trig_store+0x268>
    1c9c: aa1303e0     	mov	x0, x19
    1ca0: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    1ca4: f9403bf5     	ldr	x21, [sp, #0x70]
    1ca8: a9467bfd     	ldp	x29, x30, [sp, #0x60]
    1cac: 910243ff     	add	sp, sp, #0x90
    1cb0: d50323bf     	autiasp
    1cb4: d65f03c0     	ret
    1cb8: 294617e4     	ldp	w4, w5, [sp, #0x30]
    1cbc: 29471fe6     	ldp	w6, w7, [sp, #0x38]
    1cc0: 294827e8     	ldp	w8, w9, [sp, #0x40]
    1cc4: 29492fea     	ldp	w10, w11, [sp, #0x48]
    1cc8: b94053ec     	ldr	w12, [sp, #0x50]
    1ccc: 90000000     	adrp	x0, 0x1000 <aw8693x_set_bst_vol+0x18>
		0000000000001ccc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x41c
    1cd0: 91000000     	add	x0, x0, #0x0
		0000000000001cd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x41c
    1cd4: 90000001     	adrp	x1, 0x1000 <aw8693x_set_bst_vol+0x18>
		0000000000001cd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    1cd8: 91000021     	add	x1, x1, #0x0
		0000000000001cd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    1cdc: 90000003     	adrp	x3, 0x1000 <aw8693x_set_bst_vol+0x18>
		0000000000001cdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x472
    1ce0: 91000063     	add	x3, x3, #0x0
		0000000000001ce0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x472
    1ce4: 52811342     	mov	w2, #0x89a              // =2202
    1ce8: b90023ec     	str	w12, [sp, #0x20]
    1cec: b9001beb     	str	w11, [sp, #0x18]
    1cf0: b90013ea     	str	w10, [sp, #0x10]
    1cf4: b9000be9     	str	w9, [sp, #0x8]
    1cf8: b90003e8     	str	w8, [sp]
    1cfc: 94000000     	bl	0x1cfc <trig_store+0xf8>
		0000000000001cfc:  R_AARCH64_CALL26	_printk
    1d00: b94033e8     	ldr	w8, [sp, #0x30]
    1d04: 51001109     	sub	w9, w8, #0x4
    1d08: 3100113f     	cmn	w9, #0x4
    1d0c: 54000689     	b.ls	0x1ddc <trig_store+0x1d8>
    1d10: 71000508     	subs	w8, w8, #0x1
    1d14: 54000081     	b.ne	0x1d24 <trig_store+0x120>
    1d18: 39505ea9     	ldrb	w9, [x21, #0x417]
    1d1c: 7100053f     	cmp	w9, #0x1
    1d20: 54000940     	b.eq	0x1e48 <trig_store+0x244>
    1d24: 3855e2a9     	ldurb	w9, [x21, #-0xa2]
    1d28: 360006c9     	tbz	w9, #0x0, 0x1e00 <trig_store+0x1fc>
    1d2c: b94043e9     	ldr	w9, [sp, #0x40]
    1d30: 394ed2ab     	ldrb	w11, [x21, #0x3b4]
    1d34: 6b0b013f     	cmp	w9, w11
    1d38: 54000768     	b.hi	0x1e24 <trig_store+0x220>
    1d3c: b9404bea     	ldr	w10, [sp, #0x48]
    1d40: 6b0b015f     	cmp	w10, w11
    1d44: 54000708     	b.hi	0x1e24 <trig_store+0x220>
    1d48: 528001ab     	mov	w11, #0xd               // =13
    1d4c: b94037ec     	ldr	w12, [sp, #0x34]
    1d50: b90033e8     	str	w8, [sp, #0x30]
    1d54: 9bab550b     	umaddl	x11, w8, w11, x21
    1d58: 910922a0     	add	x0, x21, #0x248
    1d5c: d102a2b4     	sub	x20, x21, #0xa8
    1d60: 3914fd6c     	strb	w12, [x11, #0x53f]
    1d64: b9403be8     	ldr	w8, [sp, #0x38]
    1d68: 39150168     	strb	w8, [x11, #0x540]
    1d6c: b9403fe8     	ldr	w8, [sp, #0x3c]
    1d70: 39150d69     	strb	w9, [x11, #0x543]
    1d74: 39150568     	strb	w8, [x11, #0x541]
    1d78: b94047e8     	ldr	w8, [sp, #0x44]
    1d7c: 3915116a     	strb	w10, [x11, #0x544]
    1d80: 39150968     	strb	w8, [x11, #0x542]
    1d84: b9404fe8     	ldr	w8, [sp, #0x4c]
    1d88: 3914f568     	strb	w8, [x11, #0x53d]
    1d8c: b94053e8     	ldr	w8, [sp, #0x50]
    1d90: 3914f968     	strb	w8, [x11, #0x53e]
    1d94: 94000000     	bl	0x1d94 <trig_store+0x190>
		0000000000001d94:  R_AARCH64_CALL26	mutex_lock
    1d98: b94033e8     	ldr	w8, [sp, #0x30]
    1d9c: 7100091f     	cmp	w8, #0x2
    1da0: 54000140     	b.eq	0x1dc8 <trig_store+0x1c4>
    1da4: 7100051f     	cmp	w8, #0x1
    1da8: 540000a0     	b.eq	0x1dbc <trig_store+0x1b8>
    1dac: 35000128     	cbnz	w8, 0x1dd0 <trig_store+0x1cc>
    1db0: aa1403e0     	mov	x0, x20
    1db4: 94000000     	bl	0x1db4 <trig_store+0x1b0>
		0000000000001db4:  R_AARCH64_CALL26	aw8693x_trig1_param_config
    1db8: 14000006     	b	0x1dd0 <trig_store+0x1cc>
    1dbc: aa1403e0     	mov	x0, x20
    1dc0: 94000000     	bl	0x1dc0 <trig_store+0x1bc>
		0000000000001dc0:  R_AARCH64_CALL26	aw8693x_trig2_param_config
    1dc4: 14000003     	b	0x1dd0 <trig_store+0x1cc>
    1dc8: aa1403e0     	mov	x0, x20
    1dcc: 94000000     	bl	0x1dcc <trig_store+0x1c8>
		0000000000001dcc:  R_AARCH64_CALL26	aw8693x_trig3_param_config
    1dd0: 910922a0     	add	x0, x21, #0x248
    1dd4: 94000000     	bl	0x1dd4 <trig_store+0x1d0>
		0000000000001dd4:  R_AARCH64_CALL26	mutex_unlock
    1dd8: 17ffffac     	b	0x1c88 <trig_store+0x84>
    1ddc: 90000000     	adrp	x0, 0x1000 <aw8693x_set_bst_vol+0x18>
		0000000000001ddc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ee
    1de0: 91000000     	add	x0, x0, #0x0
		0000000000001de0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ee
    1de4: 90000001     	adrp	x1, 0x1000 <aw8693x_set_bst_vol+0x18>
		0000000000001de4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    1de8: 91000021     	add	x1, x1, #0x0
		0000000000001de8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    1dec: 90000003     	adrp	x3, 0x1000 <aw8693x_set_bst_vol+0x18>
		0000000000001dec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x472
    1df0: 91000063     	add	x3, x3, #0x0
		0000000000001df0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x472
    1df4: 52811382     	mov	w2, #0x89c              // =2204
    1df8: 94000000     	bl	0x1df8 <trig_store+0x1f4>
		0000000000001df8:  R_AARCH64_CALL26	_printk
    1dfc: 17ffffa3     	b	0x1c88 <trig_store+0x84>
    1e00: 90000000     	adrp	x0, 0x1000 <aw8693x_set_bst_vol+0x18>
		0000000000001e00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x51c
    1e04: 91000000     	add	x0, x0, #0x0
		0000000000001e04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x51c
    1e08: 90000001     	adrp	x1, 0x1000 <aw8693x_set_bst_vol+0x18>
		0000000000001e08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    1e0c: 91000021     	add	x1, x1, #0x0
		0000000000001e0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    1e10: 90000003     	adrp	x3, 0x1000 <aw8693x_set_bst_vol+0x18>
		0000000000001e10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x472
    1e14: 91000063     	add	x3, x3, #0x0
		0000000000001e14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x472
    1e18: 52811482     	mov	w2, #0x8a4              // =2212
    1e1c: 94000000     	bl	0x1e1c <trig_store+0x218>
		0000000000001e1c:  R_AARCH64_CALL26	_printk
    1e20: 17ffff9a     	b	0x1c88 <trig_store+0x84>
    1e24: 90000000     	adrp	x0, 0x1000 <aw8693x_set_bst_vol+0x18>
		0000000000001e24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3cc
    1e28: 91000000     	add	x0, x0, #0x0
		0000000000001e28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3cc
    1e2c: 90000001     	adrp	x1, 0x1000 <aw8693x_set_bst_vol+0x18>
		0000000000001e2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    1e30: 91000021     	add	x1, x1, #0x0
		0000000000001e30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    1e34: 90000003     	adrp	x3, 0x1000 <aw8693x_set_bst_vol+0x18>
		0000000000001e34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x472
    1e38: 91000063     	add	x3, x3, #0x0
		0000000000001e38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x472
    1e3c: 52811522     	mov	w2, #0x8a9              // =2217
    1e40: 94000000     	bl	0x1e40 <trig_store+0x23c>
		0000000000001e40:  R_AARCH64_CALL26	_printk
    1e44: 17ffff91     	b	0x1c88 <trig_store+0x84>
    1e48: 90000000     	adrp	x0, 0x1000 <aw8693x_set_bst_vol+0x18>
		0000000000001e48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb6
    1e4c: 91000000     	add	x0, x0, #0x0
		0000000000001e4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb6
    1e50: 90000001     	adrp	x1, 0x1000 <aw8693x_set_bst_vol+0x18>
		0000000000001e50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    1e54: 91000021     	add	x1, x1, #0x0
		0000000000001e54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    1e58: 90000003     	adrp	x3, 0x1000 <aw8693x_set_bst_vol+0x18>
		0000000000001e58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x472
    1e5c: 91000063     	add	x3, x3, #0x0
		0000000000001e5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x472
    1e60: 52811402     	mov	w2, #0x8a0              // =2208
    1e64: 94000000     	bl	0x1e64 <trig_store+0x260>
		0000000000001e64:  R_AARCH64_CALL26	_printk
    1e68: 17ffff88     	b	0x1c88 <trig_store+0x84>
    1e6c: 94000000     	bl	0x1e6c <trig_store+0x268>
		0000000000001e6c:  R_AARCH64_CALL26	__stack_chk_fail
