
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003b20 <trig_store>:
    3b20: d503233f     	paciasp
    3b24: d10243ff     	sub	sp, sp, #0x90
    3b28: a9067bfd     	stp	x29, x30, [sp, #0x60]
    3b2c: f9003bf5     	str	x21, [sp, #0x70]
    3b30: a9084ff4     	stp	x20, x19, [sp, #0x80]
    3b34: 910183fd     	add	x29, sp, #0x60
    3b38: d5384109     	mrs	x9, SP_EL0
    3b3c: aa0203e8     	mov	x8, x2
    3b40: aa0303f3     	mov	x19, x3
    3b44: f9438929     	ldr	x9, [x9, #0x710]
    3b48: 90000001     	adrp	x1, 0x3000 <aw8693x_get_wav_loop+0x30>
		0000000000003b48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17c2
    3b4c: 91000021     	add	x1, x1, #0x0
		0000000000003b4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17c2
    3b50: 9100c3e2     	add	x2, sp, #0x30
    3b54: f81f83a9     	stur	x9, [x29, #-0x8]
    3b58: 9100c3e9     	add	x9, sp, #0x30
    3b5c: 9100612a     	add	x10, x9, #0x18
    3b60: f9404c15     	ldr	x21, [x0, #0x98]
    3b64: 9100812b     	add	x11, x9, #0x20
    3b68: 9100712c     	add	x12, x9, #0x1c
    3b6c: b27e0123     	orr	x3, x9, #0x4
    3b70: 91002124     	add	x4, x9, #0x8
    3b74: 91003125     	add	x5, x9, #0xc
    3b78: 91004126     	add	x6, x9, #0x10
    3b7c: 91005127     	add	x7, x9, #0x14
    3b80: aa0803e0     	mov	x0, x8
    3b84: b90053ff     	str	wzr, [sp, #0x50]
    3b88: a9047fff     	stp	xzr, xzr, [sp, #0x40]
    3b8c: a9037fff     	stp	xzr, xzr, [sp, #0x30]
    3b90: a900afec     	stp	x12, x11, [sp, #0x8]
    3b94: f90003ea     	str	x10, [sp]
    3b98: 94000000     	bl	0x3b98 <trig_store+0x78>
		0000000000003b98:  R_AARCH64_CALL26	sscanf
    3b9c: 7100241f     	cmp	w0, #0x9
    3ba0: 540001a0     	b.eq	0x3bd4 <trig_store+0xb4>
    3ba4: d5384108     	mrs	x8, SP_EL0
    3ba8: f9438908     	ldr	x8, [x8, #0x710]
    3bac: f85f83a9     	ldur	x9, [x29, #-0x8]
    3bb0: eb09011f     	cmp	x8, x9
    3bb4: 54000ea1     	b.ne	0x3d88 <trig_store+0x268>
    3bb8: aa1303e0     	mov	x0, x19
    3bbc: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    3bc0: f9403bf5     	ldr	x21, [sp, #0x70]
    3bc4: a9467bfd     	ldp	x29, x30, [sp, #0x60]
    3bc8: 910243ff     	add	sp, sp, #0x90
    3bcc: d50323bf     	autiasp
    3bd0: d65f03c0     	ret
    3bd4: 294617e4     	ldp	w4, w5, [sp, #0x30]
    3bd8: 29471fe6     	ldp	w6, w7, [sp, #0x38]
    3bdc: 294827e8     	ldp	w8, w9, [sp, #0x40]
    3be0: 29492fea     	ldp	w10, w11, [sp, #0x48]
    3be4: b94053ec     	ldr	w12, [sp, #0x50]
    3be8: 90000000     	adrp	x0, 0x3000 <aw8693x_get_wav_loop+0x30>
		0000000000003be8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23e3
    3bec: 91000000     	add	x0, x0, #0x0
		0000000000003bec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23e3
    3bf0: 90000001     	adrp	x1, 0x3000 <aw8693x_get_wav_loop+0x30>
		0000000000003bf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    3bf4: 91000021     	add	x1, x1, #0x0
		0000000000003bf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    3bf8: 90000003     	adrp	x3, 0x3000 <aw8693x_get_wav_loop+0x30>
		0000000000003bf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25a8
    3bfc: 91000063     	add	x3, x3, #0x0
		0000000000003bfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25a8
    3c00: 52811342     	mov	w2, #0x89a              // =2202
    3c04: b90023ec     	str	w12, [sp, #0x20]
    3c08: b9001beb     	str	w11, [sp, #0x18]
    3c0c: b90013ea     	str	w10, [sp, #0x10]
    3c10: b9000be9     	str	w9, [sp, #0x8]
    3c14: b90003e8     	str	w8, [sp]
    3c18: 94000000     	bl	0x3c18 <trig_store+0xf8>
		0000000000003c18:  R_AARCH64_CALL26	_printk
    3c1c: b94033e8     	ldr	w8, [sp, #0x30]
    3c20: 51001109     	sub	w9, w8, #0x4
    3c24: 3100113f     	cmn	w9, #0x4
    3c28: 54000689     	b.ls	0x3cf8 <trig_store+0x1d8>
    3c2c: 71000508     	subs	w8, w8, #0x1
    3c30: 54000081     	b.ne	0x3c40 <trig_store+0x120>
    3c34: 39505ea9     	ldrb	w9, [x21, #0x417]
    3c38: 7100053f     	cmp	w9, #0x1
    3c3c: 54000940     	b.eq	0x3d64 <trig_store+0x244>
    3c40: 3855e2a9     	ldurb	w9, [x21, #-0xa2]
    3c44: 360006c9     	tbz	w9, #0x0, 0x3d1c <trig_store+0x1fc>
    3c48: b94043e9     	ldr	w9, [sp, #0x40]
    3c4c: 394ed2ab     	ldrb	w11, [x21, #0x3b4]
    3c50: 6b0b013f     	cmp	w9, w11
    3c54: 54000768     	b.hi	0x3d40 <trig_store+0x220>
    3c58: b9404bea     	ldr	w10, [sp, #0x48]
    3c5c: 6b0b015f     	cmp	w10, w11
    3c60: 54000708     	b.hi	0x3d40 <trig_store+0x220>
    3c64: 528001ab     	mov	w11, #0xd               // =13
    3c68: b94037ec     	ldr	w12, [sp, #0x34]
    3c6c: b90033e8     	str	w8, [sp, #0x30]
    3c70: 9bab550b     	umaddl	x11, w8, w11, x21
    3c74: 910922a0     	add	x0, x21, #0x248
    3c78: d102a2b4     	sub	x20, x21, #0xa8
    3c7c: 3914fd6c     	strb	w12, [x11, #0x53f]
    3c80: b9403be8     	ldr	w8, [sp, #0x38]
    3c84: 39150168     	strb	w8, [x11, #0x540]
    3c88: b9403fe8     	ldr	w8, [sp, #0x3c]
    3c8c: 39150d69     	strb	w9, [x11, #0x543]
    3c90: 39150568     	strb	w8, [x11, #0x541]
    3c94: b94047e8     	ldr	w8, [sp, #0x44]
    3c98: 3915116a     	strb	w10, [x11, #0x544]
    3c9c: 39150968     	strb	w8, [x11, #0x542]
    3ca0: b9404fe8     	ldr	w8, [sp, #0x4c]
    3ca4: 3914f568     	strb	w8, [x11, #0x53d]
    3ca8: b94053e8     	ldr	w8, [sp, #0x50]
    3cac: 3914f968     	strb	w8, [x11, #0x53e]
    3cb0: 94000000     	bl	0x3cb0 <trig_store+0x190>
		0000000000003cb0:  R_AARCH64_CALL26	mutex_lock
    3cb4: b94033e8     	ldr	w8, [sp, #0x30]
    3cb8: 7100091f     	cmp	w8, #0x2
    3cbc: 54000140     	b.eq	0x3ce4 <trig_store+0x1c4>
    3cc0: 7100051f     	cmp	w8, #0x1
    3cc4: 540000a0     	b.eq	0x3cd8 <trig_store+0x1b8>
    3cc8: 35000128     	cbnz	w8, 0x3cec <trig_store+0x1cc>
    3ccc: aa1403e0     	mov	x0, x20
    3cd0: 9400002f     	bl	0x3d8c <aw8693x_trig1_param_config>
    3cd4: 14000006     	b	0x3cec <trig_store+0x1cc>
    3cd8: aa1403e0     	mov	x0, x20
    3cdc: 9400006a     	bl	0x3e84 <aw8693x_trig2_param_config>
    3ce0: 14000003     	b	0x3cec <trig_store+0x1cc>
    3ce4: aa1403e0     	mov	x0, x20
    3ce8: 940000a4     	bl	0x3f78 <aw8693x_trig3_param_config>
    3cec: 910922a0     	add	x0, x21, #0x248
    3cf0: 94000000     	bl	0x3cf0 <trig_store+0x1d0>
		0000000000003cf0:  R_AARCH64_CALL26	mutex_unlock
    3cf4: 17ffffac     	b	0x3ba4 <trig_store+0x84>
    3cf8: 90000000     	adrp	x0, 0x3000 <aw8693x_get_wav_loop+0x30>
		0000000000003cf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29ae
    3cfc: 91000000     	add	x0, x0, #0x0
		0000000000003cfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29ae
    3d00: 90000001     	adrp	x1, 0x3000 <aw8693x_get_wav_loop+0x30>
		0000000000003d00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    3d04: 91000021     	add	x1, x1, #0x0
		0000000000003d04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    3d08: 90000003     	adrp	x3, 0x3000 <aw8693x_get_wav_loop+0x30>
		0000000000003d08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25a8
    3d0c: 91000063     	add	x3, x3, #0x0
		0000000000003d0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25a8
    3d10: 52811382     	mov	w2, #0x89c              // =2204
    3d14: 94000000     	bl	0x3d14 <trig_store+0x1f4>
		0000000000003d14:  R_AARCH64_CALL26	_printk
    3d18: 17ffffa3     	b	0x3ba4 <trig_store+0x84>
    3d1c: 90000000     	adrp	x0, 0x3000 <aw8693x_get_wav_loop+0x30>
		0000000000003d1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ab3
    3d20: 91000000     	add	x0, x0, #0x0
		0000000000003d20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ab3
    3d24: 90000001     	adrp	x1, 0x3000 <aw8693x_get_wav_loop+0x30>
		0000000000003d24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    3d28: 91000021     	add	x1, x1, #0x0
		0000000000003d28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    3d2c: 90000003     	adrp	x3, 0x3000 <aw8693x_get_wav_loop+0x30>
		0000000000003d2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25a8
    3d30: 91000063     	add	x3, x3, #0x0
		0000000000003d30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25a8
    3d34: 52811482     	mov	w2, #0x8a4              // =2212
    3d38: 94000000     	bl	0x3d38 <trig_store+0x218>
		0000000000003d38:  R_AARCH64_CALL26	_printk
    3d3c: 17ffff9a     	b	0x3ba4 <trig_store+0x84>
    3d40: 90000000     	adrp	x0, 0x3000 <aw8693x_get_wav_loop+0x30>
		0000000000003d40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2170
    3d44: 91000000     	add	x0, x0, #0x0
		0000000000003d44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2170
    3d48: 90000001     	adrp	x1, 0x3000 <aw8693x_get_wav_loop+0x30>
		0000000000003d48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    3d4c: 91000021     	add	x1, x1, #0x0
		0000000000003d4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    3d50: 90000003     	adrp	x3, 0x3000 <aw8693x_get_wav_loop+0x30>
		0000000000003d50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25a8
    3d54: 91000063     	add	x3, x3, #0x0
		0000000000003d54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25a8
    3d58: 52811522     	mov	w2, #0x8a9              // =2217
    3d5c: 94000000     	bl	0x3d5c <trig_store+0x23c>
		0000000000003d5c:  R_AARCH64_CALL26	_printk
    3d60: 17ffff91     	b	0x3ba4 <trig_store+0x84>
    3d64: 90000000     	adrp	x0, 0x3000 <aw8693x_get_wav_loop+0x30>
		0000000000003d64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x82e
    3d68: 91000000     	add	x0, x0, #0x0
		0000000000003d68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x82e
    3d6c: 90000001     	adrp	x1, 0x3000 <aw8693x_get_wav_loop+0x30>
		0000000000003d6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    3d70: 91000021     	add	x1, x1, #0x0
		0000000000003d70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    3d74: 90000003     	adrp	x3, 0x3000 <aw8693x_get_wav_loop+0x30>
		0000000000003d74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25a8
    3d78: 91000063     	add	x3, x3, #0x0
		0000000000003d78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25a8
    3d7c: 52811402     	mov	w2, #0x8a0              // =2208
    3d80: 94000000     	bl	0x3d80 <trig_store+0x260>
		0000000000003d80:  R_AARCH64_CALL26	_printk
    3d84: 17ffff88     	b	0x3ba4 <trig_store+0x84>
    3d88: 94000000     	bl	0x3d88 <trig_store+0x268>
		0000000000003d88:  R_AARCH64_CALL26	__stack_chk_fail
