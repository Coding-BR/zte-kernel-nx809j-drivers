
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008a2c <aw_i2c_probe>:
    8a2c: d503233f     	paciasp
    8a30: d10243ff     	sub	sp, sp, #0x90
    8a34: a9037bfd     	stp	x29, x30, [sp, #0x30]
    8a38: a9046ffc     	stp	x28, x27, [sp, #0x40]
    8a3c: a90567fa     	stp	x26, x25, [sp, #0x50]
    8a40: a9065ff8     	stp	x24, x23, [sp, #0x60]
    8a44: a90757f6     	stp	x22, x21, [sp, #0x70]
    8a48: a9084ff4     	stp	x20, x19, [sp, #0x80]
    8a4c: 9100c3fd     	add	x29, sp, #0x30
    8a50: d5384108     	mrs	x8, SP_EL0
    8a54: aa0003f6     	mov	x22, x0
    8a58: f9438908     	ldr	x8, [x8, #0x710]
    8a5c: f81f83a8     	stur	x8, [x29, #-0x8]
    8a60: f9418415     	ldr	x21, [x0, #0x308]
    8a64: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008a64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ce8
    8a68: 91000000     	add	x0, x0, #0x0
		0000000000008a68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ce8
    8a6c: 94000000     	bl	0x8a6c <aw_i2c_probe+0x40>
		0000000000008a6c:  R_AARCH64_CALL26	_printk
    8a70: f9400ec0     	ldr	x0, [x22, #0x18]
    8a74: f9400808     	ldr	x8, [x0, #0x10]
    8a78: f9401108     	ldr	x8, [x8, #0x20]
    8a7c: b85fc110     	ldur	w16, [x8, #-0x4]
    8a80: 729d62d1     	movk	w17, #0xeb16
    8a84: 72af9851     	movk	w17, #0x7cc2, lsl #16
    8a88: 6b11021f     	cmp	w16, w17
    8a8c: 54000040     	b.eq	0x8a94 <aw_i2c_probe+0x68>
    8a90: d4304500     	brk	#0x8228
    8a94: d63f0100     	blr	x8
    8a98: 360002c0     	tbz	w0, #0x0, 0x8af0 <aw_i2c_probe+0xc4>
    8a9c: 910082d4     	add	x20, x22, #0x20
    8aa0: 5280df01     	mov	w1, #0x6f8              // =1784
    8aa4: 5281b802     	mov	w2, #0xdc0              // =3520
    8aa8: aa1403e0     	mov	x0, x20
    8aac: 94000000     	bl	0x8aac <aw_i2c_probe+0x80>
		0000000000008aac:  R_AARCH64_CALL26	devm_kmalloc
    8ab0: b50002a0     	cbnz	x0, 0x8b04 <aw_i2c_probe+0xd8>
    8ab4: 12800160     	mov	w0, #-0xc               // =-12
    8ab8: d5384108     	mrs	x8, SP_EL0
    8abc: f9438908     	ldr	x8, [x8, #0x710]
    8ac0: f85f83a9     	ldur	x9, [x29, #-0x8]
    8ac4: eb09011f     	cmp	x8, x9
    8ac8: 54006861     	b.ne	0x97d4 <aw_i2c_probe+0xda8>
    8acc: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    8ad0: a94757f6     	ldp	x22, x21, [sp, #0x70]
    8ad4: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    8ad8: a94567fa     	ldp	x26, x25, [sp, #0x50]
    8adc: a9446ffc     	ldp	x28, x27, [sp, #0x40]
    8ae0: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    8ae4: 910243ff     	add	sp, sp, #0x90
    8ae8: d50323bf     	autiasp
    8aec: d65f03c0     	ret
    8af0: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008af0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3874
    8af4: 91000000     	add	x0, x0, #0x0
		0000000000008af4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3874
    8af8: 94000000     	bl	0x8af8 <aw_i2c_probe+0xcc>
		0000000000008af8:  R_AARCH64_CALL26	_printk
    8afc: 12800080     	mov	w0, #-0x5               // =-5
    8b00: 17ffffee     	b	0x8ab8 <aw_i2c_probe+0x8c>
    8b04: aa0003f3     	mov	x19, x0
    8b08: f9019014     	str	x20, [x0, #0x320]
    8b0c: f9019416     	str	x22, [x0, #0x328]
    8b10: f9005ec0     	str	x0, [x22, #0xb8]
    8b14: b5001dd5     	cbnz	x21, 0x8ecc <aw_i2c_probe+0x4a0>
    8b18: 12800008     	mov	w8, #-0x1               // =-1
    8b1c: b9005e68     	str	w8, [x19, #0x5c]
    8b20: b9005268     	str	w8, [x19, #0x50]
    8b24: b9405e61     	ldr	w1, [x19, #0x5c]
    8b28: 37f800e1     	tbnz	w1, #0x1f, 0x8b44 <aw_i2c_probe+0x118>
    8b2c: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008b2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x457e
    8b30: 91000063     	add	x3, x3, #0x0
		0000000000008b30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x457e
    8b34: aa1403e0     	mov	x0, x20
    8b38: aa1f03e2     	mov	x2, xzr
    8b3c: 94000000     	bl	0x8b3c <aw_i2c_probe+0x110>
		0000000000008b3c:  R_AARCH64_CALL26	devm_gpio_request_one
    8b40: 350022a0     	cbnz	w0, 0x8f94 <aw_i2c_probe+0x568>
    8b44: b9405261     	ldr	w1, [x19, #0x50]
    8b48: 37f800e1     	tbnz	w1, #0x1f, 0x8b64 <aw_i2c_probe+0x138>
    8b4c: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008b4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x487e
    8b50: 91000063     	add	x3, x3, #0x0
		0000000000008b50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x487e
    8b54: aa1403e0     	mov	x0, x20
    8b58: 52800022     	mov	w2, #0x1                // =1
    8b5c: 94000000     	bl	0x8b5c <aw_i2c_probe+0x130>
		0000000000008b5c:  R_AARCH64_CALL26	devm_gpio_request_one
    8b60: 350022e0     	cbnz	w0, 0x8fbc <aw_i2c_probe+0x590>
    8b64: 2a1f03f6     	mov	w22, wzr
    8b68: 2a1f03f9     	mov	w25, wzr
    8b6c: 52800408     	mov	w8, #0x20               // =32
    8b70: 90000017     	adrp	x23, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008b70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    8b74: 910002f7     	add	x23, x23, #0x0
		0000000000008b74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    8b78: 90000018     	adrp	x24, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008b78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3270
    8b7c: 91000318     	add	x24, x24, #0x0
		0000000000008b7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3270
    8b80: 9000001a     	adrp	x26, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008b80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    8b84: 9100035a     	add	x26, x26, #0x0
		0000000000008b84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    8b88: 910013fc     	add	x28, sp, #0x4
    8b8c: 391bce68     	strb	w8, [x19, #0x6f3]
    8b90: 1400000f     	b	0x8bcc <aw_i2c_probe+0x1a0>
    8b94: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008b94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24f6
    8b98: 91000000     	add	x0, x0, #0x0
		0000000000008b98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24f6
    8b9c: aa1703e1     	mov	x1, x23
    8ba0: 52804262     	mov	w2, #0x213              // =531
    8ba4: aa1a03e3     	mov	x3, x26
    8ba8: 2a1903e4     	mov	w4, w25
    8bac: 94000000     	bl	0x8bac <aw_i2c_probe+0x180>
		0000000000008bac:  R_AARCH64_CALL26	_printk
    8bb0: 5280fa00     	mov	w0, #0x7d0              // =2000
    8bb4: 52813881     	mov	w1, #0x9c4              // =2500
    8bb8: 52800042     	mov	w2, #0x2                // =2
    8bbc: 94000000     	bl	0x8bbc <aw_i2c_probe+0x190>
		0000000000008bbc:  R_AARCH64_CALL26	usleep_range_state
    8bc0: 710012df     	cmp	w22, #0x4
    8bc4: 110006d6     	add	w22, w22, #0x1
    8bc8: 540047e2     	b.hs	0x94c4 <aw_i2c_probe+0xa98>
    8bcc: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008bcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x270a
    8bd0: 91000000     	add	x0, x0, #0x0
		0000000000008bd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x270a
    8bd4: aa1703e1     	mov	x1, x23
    8bd8: 52802e22     	mov	w2, #0x171              // =369
    8bdc: aa1803e3     	mov	x3, x24
    8be0: 94000000     	bl	0x8be0 <aw_i2c_probe+0x1b4>
		0000000000008be0:  R_AARCH64_CALL26	_printk
    8be4: b9405e60     	ldr	w0, [x19, #0x5c]
    8be8: 37f80220     	tbnz	w0, #0x1f, 0x8c2c <aw_i2c_probe+0x200>
    8bec: 94000000     	bl	0x8bec <aw_i2c_probe+0x1c0>
		0000000000008bec:  R_AARCH64_CALL26	gpio_to_desc
    8bf0: 2a1f03e1     	mov	w1, wzr
    8bf4: 94000000     	bl	0x8bf4 <aw_i2c_probe+0x1c8>
		0000000000008bf4:  R_AARCH64_CALL26	gpiod_set_raw_value_cansleep
    8bf8: 52807d00     	mov	w0, #0x3e8              // =1000
    8bfc: 5280fa01     	mov	w1, #0x7d0              // =2000
    8c00: 52800042     	mov	w2, #0x2                // =2
    8c04: 94000000     	bl	0x8c04 <aw_i2c_probe+0x1d8>
		0000000000008c04:  R_AARCH64_CALL26	usleep_range_state
    8c08: b9405e60     	ldr	w0, [x19, #0x5c]
    8c0c: 94000000     	bl	0x8c0c <aw_i2c_probe+0x1e0>
		0000000000008c0c:  R_AARCH64_CALL26	gpio_to_desc
    8c10: 52800021     	mov	w1, #0x1                // =1
    8c14: 94000000     	bl	0x8c14 <aw_i2c_probe+0x1e8>
		0000000000008c14:  R_AARCH64_CALL26	gpiod_set_raw_value_cansleep
    8c18: 5283e800     	mov	w0, #0x1f40             // =8000
    8c1c: 52842681     	mov	w1, #0x2134             // =8500
    8c20: 52800042     	mov	w2, #0x2                // =2
    8c24: 94000000     	bl	0x8c24 <aw_i2c_probe+0x1f8>
		0000000000008c24:  R_AARCH64_CALL26	usleep_range_state
    8c28: 14000007     	b	0x8c44 <aw_i2c_probe+0x218>
    8c2c: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008c2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x252a
    8c30: 91000000     	add	x0, x0, #0x0
		0000000000008c30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x252a
    8c34: aa1703e1     	mov	x1, x23
    8c38: 52802f02     	mov	w2, #0x178              // =376
    8c3c: aa1803e3     	mov	x3, x24
    8c40: 94000000     	bl	0x8c40 <aw_i2c_probe+0x214>
		0000000000008c40:  R_AARCH64_CALL26	_printk
    8c44: f9419668     	ldr	x8, [x19, #0x328]
    8c48: 52a0002a     	mov	w10, #0x10000           // =65536
    8c4c: 910023e1     	add	x1, sp, #0x8
    8c50: 52800042     	mov	w2, #0x2                // =2
    8c54: 79000bff     	strh	wzr, [sp, #0x4]
    8c58: 79400509     	ldrh	w9, [x8, #0x2]
    8c5c: f90013fc     	str	x28, [sp, #0x20]
    8c60: f9400d00     	ldr	x0, [x8, #0x18]
    8c64: b800a3ea     	stur	w10, [sp, #0xa]
    8c68: 910003ea     	mov	x10, sp
    8c6c: 790013e9     	strh	w9, [sp, #0x8]
    8c70: 790033e9     	strh	w9, [sp, #0x18]
    8c74: 320083e9     	mov	w9, #0x10001            // =65537
    8c78: 390003ff     	strb	wzr, [sp]
    8c7c: 79001fff     	strh	wzr, [sp, #0xe]
    8c80: f9000bea     	str	x10, [sp, #0x10]
    8c84: b801a3e9     	stur	w9, [sp, #0x1a]
    8c88: 79003fff     	strh	wzr, [sp, #0x1e]
    8c8c: 94000000     	bl	0x8c8c <aw_i2c_probe+0x260>
		0000000000008c8c:  R_AARCH64_CALL26	i2c_transfer
    8c90: 2a0003fb     	mov	w27, w0
    8c94: 36f80120     	tbz	w0, #0x1f, 0x8cb8 <aw_i2c_probe+0x28c>
    8c98: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008c98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24b0
    8c9c: 91000000     	add	x0, x0, #0x0
		0000000000008c9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24b0
    8ca0: aa1703e1     	mov	x1, x23
    8ca4: 52800ca2     	mov	w2, #0x65               // =101
    8ca8: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008ca8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x265c
    8cac: 91000063     	add	x3, x3, #0x0
		0000000000008cac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x265c
    8cb0: 94000000     	bl	0x8cb0 <aw_i2c_probe+0x284>
		0000000000008cb0:  R_AARCH64_CALL26	_printk
    8cb4: 14000031     	b	0x8d78 <aw_i2c_probe+0x34c>
    8cb8: 71000b7f     	cmp	w27, #0x2
    8cbc: 540004e1     	b.ne	0x8d58 <aw_i2c_probe+0x32c>
    8cc0: 394013fb     	ldrb	w27, [sp, #0x4]
    8cc4: 721e137f     	tst	w27, #0x7c
    8cc8: 54000361     	b.ne	0x8d34 <aw_i2c_probe+0x308>
    8ccc: f9419668     	ldr	x8, [x19, #0x328]
    8cd0: 52800ae9     	mov	w9, #0x57               // =87
    8cd4: 52a0002a     	mov	w10, #0x10000           // =65536
    8cd8: 390003e9     	strb	w9, [sp]
    8cdc: 910023e1     	add	x1, sp, #0x8
    8ce0: 52800042     	mov	w2, #0x2                // =2
    8ce4: 79400509     	ldrh	w9, [x8, #0x2]
    8ce8: f90013fc     	str	x28, [sp, #0x20]
    8cec: f9400d00     	ldr	x0, [x8, #0x18]
    8cf0: b800a3ea     	stur	w10, [sp, #0xa]
    8cf4: 910003ea     	mov	x10, sp
    8cf8: 790013e9     	strh	w9, [sp, #0x8]
    8cfc: 790033e9     	strh	w9, [sp, #0x18]
    8d00: 52800029     	mov	w9, #0x1                // =1
    8d04: 72a00049     	movk	w9, #0x2, lsl #16
    8d08: 79001fff     	strh	wzr, [sp, #0xe]
    8d0c: f9000bea     	str	x10, [sp, #0x10]
    8d10: b801a3e9     	stur	w9, [sp, #0x1a]
    8d14: 79003fff     	strh	wzr, [sp, #0x1e]
    8d18: 94000000     	bl	0x8d18 <aw_i2c_probe+0x2ec>
		0000000000008d18:  R_AARCH64_CALL26	i2c_transfer
    8d1c: 2a0003fb     	mov	w27, w0
    8d20: 37fffbc0     	tbnz	w0, #0x1f, 0x8c98 <aw_i2c_probe+0x26c>
    8d24: 71000b7f     	cmp	w27, #0x2
    8d28: 54000181     	b.ne	0x8d58 <aw_i2c_probe+0x32c>
    8d2c: 79400be8     	ldrh	w8, [sp, #0x4]
    8d30: 5ac0051b     	rev16	w27, w8
    8d34: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008d34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2742
    8d38: 91000000     	add	x0, x0, #0x0
		0000000000008d38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2742
    8d3c: aa1703e1     	mov	x1, x23
    8d40: 528037a2     	mov	w2, #0x1bd              // =445
    8d44: aa1a03e3     	mov	x3, x26
    8d48: 2a1b03e4     	mov	w4, w27
    8d4c: 94000000     	bl	0x8d4c <aw_i2c_probe+0x320>
		0000000000008d4c:  R_AARCH64_CALL26	_printk
    8d50: 2a1b03f9     	mov	w25, w27
    8d54: 14000017     	b	0x8db0 <aw_i2c_probe+0x384>
    8d58: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008d58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3216
    8d5c: 91000000     	add	x0, x0, #0x0
		0000000000008d5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3216
    8d60: aa1703e1     	mov	x1, x23
    8d64: 52800d02     	mov	w2, #0x68               // =104
    8d68: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008d68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x265c
    8d6c: 91000063     	add	x3, x3, #0x0
		0000000000008d6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x265c
    8d70: 94000000     	bl	0x8d70 <aw_i2c_probe+0x344>
		0000000000008d70:  R_AARCH64_CALL26	_printk
    8d74: 128000bb     	mov	w27, #-0x6              // =-6
    8d78: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008d78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2742
    8d7c: 91000000     	add	x0, x0, #0x0
		0000000000008d7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2742
    8d80: aa1703e1     	mov	x1, x23
    8d84: 528037a2     	mov	w2, #0x1bd              // =445
    8d88: aa1a03e3     	mov	x3, x26
    8d8c: 2a1903e4     	mov	w4, w25
    8d90: 94000000     	bl	0x8d90 <aw_i2c_probe+0x364>
		0000000000008d90:  R_AARCH64_CALL26	_printk
    8d94: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008d94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4468
    8d98: 91000000     	add	x0, x0, #0x0
		0000000000008d98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4468
    8d9c: aa1703e1     	mov	x1, x23
    8da0: 528037e2     	mov	w2, #0x1bf              // =447
    8da4: aa1a03e3     	mov	x3, x26
    8da8: 2a1b03e4     	mov	w4, w27
    8dac: 94000000     	bl	0x8dac <aw_i2c_probe+0x380>
		0000000000008dac:  R_AARCH64_CALL26	_printk
    8db0: 528e2de8     	mov	w8, #0x716f             // =29039
    8db4: 6b08033f     	cmp	w25, w8
    8db8: 540001cd     	b.le	0x8df0 <aw_i2c_probe+0x3c4>
    8dbc: 52924be8     	mov	w8, #0x925f             // =37471
    8dc0: 6b08033f     	cmp	w25, w8
    8dc4: 5400028c     	b.gt	0x8e14 <aw_i2c_probe+0x3e8>
    8dc8: 528e2fe8     	mov	w8, #0x717f             // =29055
    8dcc: 6b08033f     	cmp	w25, w8
    8dd0: 5400044c     	b.gt	0x8e58 <aw_i2c_probe+0x42c>
    8dd4: 528e2e08     	mov	w8, #0x7170             // =29040
    8dd8: 6b08033f     	cmp	w25, w8
    8ddc: 54001c80     	b.eq	0x916c <aw_i2c_probe+0x740>
    8de0: 528e2e28     	mov	w8, #0x7171             // =29041
    8de4: 6b08033f     	cmp	w25, w8
    8de8: 54ffed61     	b.ne	0x8b94 <aw_i2c_probe+0x168>
    8dec: 140000f7     	b	0x91c8 <aw_i2c_probe+0x79c>
    8df0: 71001b3f     	cmp	w25, #0x6
    8df4: 5400024d     	b.le	0x8e3c <aw_i2c_probe+0x410>
    8df8: 71025b3f     	cmp	w25, #0x96
    8dfc: 540004ac     	b.gt	0x8e90 <aw_i2c_probe+0x464>
    8e00: 71001f3f     	cmp	w25, #0x7
    8e04: 54001f80     	b.eq	0x91f4 <aw_i2c_probe+0x7c8>
    8e08: 7102573f     	cmp	w25, #0x95
    8e0c: 54ffec41     	b.ne	0x8b94 <aw_i2c_probe+0x168>
    8e10: 140000e2     	b	0x9198 <aw_i2c_probe+0x76c>
    8e14: 52924fe8     	mov	w8, #0x927f             // =37503
    8e18: 6b08033f     	cmp	w25, w8
    8e1c: 540002cc     	b.gt	0x8e74 <aw_i2c_probe+0x448>
    8e20: 52924c08     	mov	w8, #0x9260             // =37472
    8e24: 6b08033f     	cmp	w25, w8
    8e28: 54001120     	b.eq	0x904c <aw_i2c_probe+0x620>
    8e2c: 52924e08     	mov	w8, #0x9270             // =37488
    8e30: 6b08033f     	cmp	w25, w8
    8e34: 54ffeb01     	b.ne	0x8b94 <aw_i2c_probe+0x168>
    8e38: 14000107     	b	0x9254 <aw_i2c_probe+0x828>
    8e3c: 7100133f     	cmp	w25, #0x4
    8e40: 54001640     	b.eq	0x9108 <aw_i2c_probe+0x6dc>
    8e44: 7100173f     	cmp	w25, #0x5
    8e48: 540017a0     	b.eq	0x913c <aw_i2c_probe+0x710>
    8e4c: 71001b3f     	cmp	w25, #0x6
    8e50: 54ffea21     	b.ne	0x8b94 <aw_i2c_probe+0x168>
    8e54: 14000093     	b	0x90a0 <aw_i2c_probe+0x674>
    8e58: 528e3008     	mov	w8, #0x7180             // =29056
    8e5c: 6b08033f     	cmp	w25, w8
    8e60: 540010a0     	b.eq	0x9074 <aw_i2c_probe+0x648>
    8e64: 52924a08     	mov	w8, #0x9250             // =37456
    8e68: 6b08033f     	cmp	w25, w8
    8e6c: 54ffe941     	b.ne	0x8b94 <aw_i2c_probe+0x168>
    8e70: 14000103     	b	0x927c <aw_i2c_probe+0x850>
    8e74: 52925008     	mov	w8, #0x9280             // =37504
    8e78: 6b08033f     	cmp	w25, w8
    8e7c: 54002140     	b.eq	0x92a4 <aw_i2c_probe+0x878>
    8e80: 52927008     	mov	w8, #0x9380             // =37760
    8e84: 6b08033f     	cmp	w25, w8
    8e88: 54ffe861     	b.ne	0x8b94 <aw_i2c_probe+0x168>
    8e8c: 140000e7     	b	0x9228 <aw_i2c_probe+0x7fc>
    8e90: 71025f3f     	cmp	w25, #0x97
    8e94: 54001200     	b.eq	0x90d4 <aw_i2c_probe+0x6a8>
    8e98: 528e2a08     	mov	w8, #0x7150             // =29008
    8e9c: 6b08033f     	cmp	w25, w8
    8ea0: 54ffe7a1     	b.ne	0x8b94 <aw_i2c_probe+0x168>
    8ea4: b9004a68     	str	w8, [x19, #0x48]
    8ea8: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008ea8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x237e
    8eac: 91000000     	add	x0, x0, #0x0
		0000000000008eac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x237e
    8eb0: 3900127f     	strb	wzr, [x19, #0x4]
    8eb4: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008eb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    8eb8: 91000021     	add	x1, x1, #0x0
		0000000000008eb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    8ebc: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008ebc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    8ec0: 91000063     	add	x3, x3, #0x0
		0000000000008ec0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    8ec4: 52803d02     	mov	w2, #0x1e8              // =488
    8ec8: 14000100     	b	0x92c8 <aw_i2c_probe+0x89c>
    8ecc: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008ecc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dda
    8ed0: 91000021     	add	x1, x1, #0x0
		0000000000008ed0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dda
    8ed4: aa1503e0     	mov	x0, x21
    8ed8: 2a1f03e2     	mov	w2, wzr
    8edc: 94000000     	bl	0x8edc <aw_i2c_probe+0x4b0>
		0000000000008edc:  R_AARCH64_CALL26	of_get_named_gpio
    8ee0: b9005e60     	str	w0, [x19, #0x5c]
    8ee4: 36f80260     	tbz	w0, #0x1f, 0x8f30 <aw_i2c_probe+0x504>
    8ee8: 90000015     	adrp	x21, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008ee8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    8eec: 910002b5     	add	x21, x21, #0x0
		0000000000008eec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    8ef0: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008ef0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x343e
    8ef4: 91000000     	add	x0, x0, #0x0
		0000000000008ef4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x343e
    8ef8: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008ef8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2de6
    8efc: 91000063     	add	x3, x3, #0x0
		0000000000008efc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2de6
    8f00: aa1503e1     	mov	x1, x21
    8f04: 52802a02     	mov	w2, #0x150              // =336
    8f08: 94000000     	bl	0x8f08 <aw_i2c_probe+0x4dc>
		0000000000008f08:  R_AARCH64_CALL26	_printk
    8f0c: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008f0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e46
    8f10: 91000000     	add	x0, x0, #0x0
		0000000000008f10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e46
    8f14: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008f14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2668
    8f18: 91000063     	add	x3, x3, #0x0
		0000000000008f18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2668
    8f1c: aa1503e1     	mov	x1, x21
    8f20: 52821f42     	mov	w2, #0x10fa             // =4346
    8f24: 94000000     	bl	0x8f24 <aw_i2c_probe+0x4f8>
		0000000000008f24:  R_AARCH64_CALL26	_printk
    8f28: 12800015     	mov	w21, #-0x1              // =-1
    8f2c: 14000139     	b	0x9410 <aw_i2c_probe+0x9e4>
    8f30: 2a0003e4     	mov	w4, w0
    8f34: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008f34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20f0
    8f38: 91000000     	add	x0, x0, #0x0
		0000000000008f38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20f0
    8f3c: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008f3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    8f40: 91000021     	add	x1, x1, #0x0
		0000000000008f40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    8f44: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008f44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2de6
    8f48: 91000063     	add	x3, x3, #0x0
		0000000000008f48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2de6
    8f4c: 52802a62     	mov	w2, #0x153              // =339
    8f50: 94000000     	bl	0x8f50 <aw_i2c_probe+0x524>
		0000000000008f50:  R_AARCH64_CALL26	_printk
    8f54: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008f54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x411a
    8f58: 91000021     	add	x1, x1, #0x0
		0000000000008f58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x411a
    8f5c: aa1503e0     	mov	x0, x21
    8f60: 2a1f03e2     	mov	w2, wzr
    8f64: 94000000     	bl	0x8f64 <aw_i2c_probe+0x538>
		0000000000008f64:  R_AARCH64_CALL26	of_get_named_gpio
    8f68: b9005260     	str	w0, [x19, #0x50]
    8f6c: 36f803c0     	tbz	w0, #0x1f, 0x8fe4 <aw_i2c_probe+0x5b8>
    8f70: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008f70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b96
    8f74: 91000000     	add	x0, x0, #0x0
		0000000000008f74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b96
    8f78: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008f78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    8f7c: 91000021     	add	x1, x1, #0x0
		0000000000008f7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    8f80: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008f80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2de6
    8f84: 91000063     	add	x3, x3, #0x0
		0000000000008f84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2de6
    8f88: 52802ac2     	mov	w2, #0x156              // =342
    8f8c: 94000000     	bl	0x8f8c <aw_i2c_probe+0x560>
		0000000000008f8c:  R_AARCH64_CALL26	_printk
    8f90: 1400001e     	b	0x9008 <aw_i2c_probe+0x5dc>
    8f94: 2a0003f5     	mov	w21, w0
    8f98: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008f98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e6c
    8f9c: 91000000     	add	x0, x0, #0x0
		0000000000008f9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e6c
    8fa0: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008fa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    8fa4: 91000021     	add	x1, x1, #0x0
		0000000000008fa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    8fa8: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008fa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2668
    8fac: 91000063     	add	x3, x3, #0x0
		0000000000008fac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2668
    8fb0: 528220c2     	mov	w2, #0x1106             // =4358
    8fb4: 94000000     	bl	0x8fb4 <aw_i2c_probe+0x588>
		0000000000008fb4:  R_AARCH64_CALL26	_printk
    8fb8: 14000116     	b	0x9410 <aw_i2c_probe+0x9e4>
    8fbc: 2a0003f5     	mov	w21, w0
    8fc0: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008fc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4886
    8fc4: 91000000     	add	x0, x0, #0x0
		0000000000008fc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4886
    8fc8: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008fc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    8fcc: 91000021     	add	x1, x1, #0x0
		0000000000008fcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    8fd0: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008fd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2668
    8fd4: 91000063     	add	x3, x3, #0x0
		0000000000008fd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2668
    8fd8: 52822522     	mov	w2, #0x1129             // =4393
    8fdc: 94000000     	bl	0x8fdc <aw_i2c_probe+0x5b0>
		0000000000008fdc:  R_AARCH64_CALL26	_printk
    8fe0: 14000109     	b	0x9404 <aw_i2c_probe+0x9d8>
    8fe4: 2a0003e4     	mov	w4, w0
    8fe8: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008fe8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4438
    8fec: 91000000     	add	x0, x0, #0x0
		0000000000008fec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4438
    8ff0: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008ff0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    8ff4: 91000021     	add	x1, x1, #0x0
		0000000000008ff4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    8ff8: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008ff8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2de6
    8ffc: 91000063     	add	x3, x3, #0x0
		0000000000008ffc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2de6
    9000: 52802b02     	mov	w2, #0x158              // =344
    9004: 94000000     	bl	0x9004 <aw_i2c_probe+0x5d8>
		0000000000009004:  R_AARCH64_CALL26	_printk
    9008: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009008:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4666
    900c: 91000021     	add	x1, x1, #0x0
		000000000000900c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4666
    9010: 91118262     	add	x2, x19, #0x460
    9014: aa1503e0     	mov	x0, x21
    9018: 52800023     	mov	w3, #0x1                // =1
    901c: aa1f03e4     	mov	x4, xzr
    9020: 94000000     	bl	0x9020 <aw_i2c_probe+0x5f4>
		0000000000009020:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    9024: 36ffd800     	tbz	w0, #0x1f, 0x8b24 <aw_i2c_probe+0xf8>
    9028: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ba8
    902c: 91000000     	add	x0, x0, #0x0
		000000000000902c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ba8
    9030: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009030:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9034: 91000021     	add	x1, x1, #0x0
		0000000000009034:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9038: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009038:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2de6
    903c: 91000063     	add	x3, x3, #0x0
		000000000000903c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2de6
    9040: 52802b62     	mov	w2, #0x15b              // =347
    9044: 94000000     	bl	0x9044 <aw_i2c_probe+0x618>
		0000000000009044:  R_AARCH64_CALL26	_printk
    9048: 17fffeb7     	b	0x8b24 <aw_i2c_probe+0xf8>
    904c: b9004a68     	str	w8, [x19, #0x48]
    9050: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009050:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bbe
    9054: 91000000     	add	x0, x0, #0x0
		0000000000009054:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bbe
    9058: 39005a7f     	strb	wzr, [x19, #0x16]
    905c: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		000000000000905c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9060: 91000021     	add	x1, x1, #0x0
		0000000000009060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9064: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    9068: 91000063     	add	x3, x3, #0x0
		0000000000009068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    906c: 52804022     	mov	w2, #0x201              // =513
    9070: 14000096     	b	0x92c8 <aw_i2c_probe+0x89c>
    9074: 52800029     	mov	w9, #0x1                // =1
    9078: b9004a68     	str	w8, [x19, #0x48]
    907c: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		000000000000907c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24d2
    9080: 91000000     	add	x0, x0, #0x0
		0000000000009080:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24d2
    9084: 39001269     	strb	w9, [x19, #0x4]
    9088: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009088:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    908c: 91000021     	add	x1, x1, #0x0
		000000000000908c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9090: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    9094: 91000063     	add	x3, x3, #0x0
		0000000000009094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    9098: 52803ee2     	mov	w2, #0x1f7              // =503
    909c: 1400008b     	b	0x92c8 <aw_i2c_probe+0x89c>
    90a0: 528000c8     	mov	w8, #0x6                // =6
    90a4: 52800029     	mov	w9, #0x1                // =1
    90a8: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000090a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d28
    90ac: 91000000     	add	x0, x0, #0x0
		00000000000090ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d28
    90b0: b9004a68     	str	w8, [x19, #0x48]
    90b4: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000090b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    90b8: 91000021     	add	x1, x1, #0x0
		00000000000090b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    90bc: 39005a69     	strb	w9, [x19, #0x16]
    90c0: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000090c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    90c4: 91000063     	add	x3, x3, #0x0
		00000000000090c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    90c8: 39001269     	strb	w9, [x19, #0x4]
    90cc: 52803c62     	mov	w2, #0x1e3              // =483
    90d0: 1400007e     	b	0x92c8 <aw_i2c_probe+0x89c>
    90d4: 528012e8     	mov	w8, #0x97               // =151
    90d8: 52800029     	mov	w9, #0x1                // =1
    90dc: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000090dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28ee
    90e0: 91000000     	add	x0, x0, #0x0
		00000000000090e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28ee
    90e4: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000090e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    90e8: 91000021     	add	x1, x1, #0x0
		00000000000090e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    90ec: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000090ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    90f0: 91000063     	add	x3, x3, #0x0
		00000000000090f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    90f4: 52803962     	mov	w2, #0x1cb              // =459
    90f8: b9004a68     	str	w8, [x19, #0x48]
    90fc: 39005a69     	strb	w9, [x19, #0x16]
    9100: 3900127f     	strb	wzr, [x19, #0x4]
    9104: 14000071     	b	0x92c8 <aw_i2c_probe+0x89c>
    9108: 52800088     	mov	w8, #0x4                // =4
    910c: 52800029     	mov	w9, #0x1                // =1
    9110: 3900127f     	strb	wzr, [x19, #0x4]
    9114: b9004a68     	str	w8, [x19, #0x48]
    9118: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009118:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x466c
    911c: 91000000     	add	x0, x0, #0x0
		000000000000911c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x466c
    9120: 39005a69     	strb	w9, [x19, #0x16]
    9124: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009124:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9128: 91000021     	add	x1, x1, #0x0
		0000000000009128:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    912c: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		000000000000912c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    9130: 91000063     	add	x3, x3, #0x0
		0000000000009130:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    9134: 52803ae2     	mov	w2, #0x1d7              // =471
    9138: 14000064     	b	0x92c8 <aw_i2c_probe+0x89c>
    913c: 528000a8     	mov	w8, #0x5                // =5
    9140: 39005a7f     	strb	wzr, [x19, #0x16]
    9144: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009144:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4124
    9148: 91000000     	add	x0, x0, #0x0
		0000000000009148:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4124
    914c: b9004a68     	str	w8, [x19, #0x48]
    9150: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9154: 91000021     	add	x1, x1, #0x0
		0000000000009154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9158: 3900127f     	strb	wzr, [x19, #0x4]
    915c: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		000000000000915c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    9160: 91000063     	add	x3, x3, #0x0
		0000000000009160:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    9164: 52803a22     	mov	w2, #0x1d1              // =465
    9168: 14000058     	b	0x92c8 <aw_i2c_probe+0x89c>
    916c: 52800029     	mov	w9, #0x1                // =1
    9170: b9004a68     	str	w8, [x19, #0x48]
    9174: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009174:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3120
    9178: 91000000     	add	x0, x0, #0x0
		0000000000009178:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3120
    917c: 39001269     	strb	w9, [x19, #0x4]
    9180: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009180:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9184: 91000021     	add	x1, x1, #0x0
		0000000000009184:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9188: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009188:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    918c: 91000063     	add	x3, x3, #0x0
		000000000000918c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    9190: 52803da2     	mov	w2, #0x1ed              // =493
    9194: 1400004d     	b	0x92c8 <aw_i2c_probe+0x89c>
    9198: 528012a8     	mov	w8, #0x95               // =149
    919c: 39005a7f     	strb	wzr, [x19, #0x16]
    91a0: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000091a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x47da
    91a4: 91000000     	add	x0, x0, #0x0
		00000000000091a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x47da
    91a8: b9004a68     	str	w8, [x19, #0x48]
    91ac: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000091ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    91b0: 91000021     	add	x1, x1, #0x0
		00000000000091b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    91b4: 3900127f     	strb	wzr, [x19, #0x4]
    91b8: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000091b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    91bc: 91000063     	add	x3, x3, #0x0
		00000000000091bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    91c0: 528038a2     	mov	w2, #0x1c5              // =453
    91c4: 14000041     	b	0x92c8 <aw_i2c_probe+0x89c>
    91c8: 52800029     	mov	w9, #0x1                // =1
    91cc: b9004a68     	str	w8, [x19, #0x48]
    91d0: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000091d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38b6
    91d4: 91000000     	add	x0, x0, #0x0
		00000000000091d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38b6
    91d8: 39001269     	strb	w9, [x19, #0x4]
    91dc: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000091dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    91e0: 91000021     	add	x1, x1, #0x0
		00000000000091e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    91e4: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000091e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    91e8: 91000063     	add	x3, x3, #0x0
		00000000000091e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    91ec: 52803e42     	mov	w2, #0x1f2              // =498
    91f0: 14000036     	b	0x92c8 <aw_i2c_probe+0x89c>
    91f4: 528000e8     	mov	w8, #0x7                // =7
    91f8: 52800029     	mov	w9, #0x1                // =1
    91fc: 39005a7f     	strb	wzr, [x19, #0x16]
    9200: b9004a68     	str	w8, [x19, #0x48]
    9204: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009204:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3466
    9208: 91000000     	add	x0, x0, #0x0
		0000000000009208:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3466
    920c: 39001269     	strb	w9, [x19, #0x4]
    9210: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009210:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9214: 91000021     	add	x1, x1, #0x0
		0000000000009214:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9218: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    921c: 91000063     	add	x3, x3, #0x0
		000000000000921c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    9220: 52803ba2     	mov	w2, #0x1dd              // =477
    9224: 14000029     	b	0x92c8 <aw_i2c_probe+0x89c>
    9228: 52800809     	mov	w9, #0x40               // =64
    922c: b9004a68     	str	w8, [x19, #0x48]
    9230: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009230:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f5a
    9234: 91000000     	add	x0, x0, #0x0
		0000000000009234:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f5a
    9238: 391bce69     	strb	w9, [x19, #0x6f3]
    923c: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		000000000000923c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9240: 91000021     	add	x1, x1, #0x0
		0000000000009240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9244: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009244:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    9248: 91000063     	add	x3, x3, #0x0
		0000000000009248:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    924c: 52804202     	mov	w2, #0x210              // =528
    9250: 1400001e     	b	0x92c8 <aw_i2c_probe+0x89c>
    9254: b9004a68     	str	w8, [x19, #0x48]
    9258: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009258:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36f2
    925c: 91000000     	add	x0, x0, #0x0
		000000000000925c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36f2
    9260: 39005a7f     	strb	wzr, [x19, #0x16]
    9264: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009264:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9268: 91000021     	add	x1, x1, #0x0
		0000000000009268:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    926c: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		000000000000926c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    9270: 91000063     	add	x3, x3, #0x0
		0000000000009270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    9274: 528040c2     	mov	w2, #0x206              // =518
    9278: 14000014     	b	0x92c8 <aw_i2c_probe+0x89c>
    927c: b9004a68     	str	w8, [x19, #0x48]
    9280: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38da
    9284: 91000000     	add	x0, x0, #0x0
		0000000000009284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38da
    9288: 39005a7f     	strb	wzr, [x19, #0x16]
    928c: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		000000000000928c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9290: 91000021     	add	x1, x1, #0x0
		0000000000009290:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9294: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    9298: 91000063     	add	x3, x3, #0x0
		0000000000009298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    929c: 52803f82     	mov	w2, #0x1fc              // =508
    92a0: 1400000a     	b	0x92c8 <aw_i2c_probe+0x89c>
    92a4: b9004a68     	str	w8, [x19, #0x48]
    92a8: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000092a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3be2
    92ac: 91000000     	add	x0, x0, #0x0
		00000000000092ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3be2
    92b0: 39005a7f     	strb	wzr, [x19, #0x16]
    92b4: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000092b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    92b8: 91000021     	add	x1, x1, #0x0
		00000000000092b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    92bc: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000092bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    92c0: 91000063     	add	x3, x3, #0x0
		00000000000092c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    92c4: 52804162     	mov	w2, #0x20b              // =523
    92c8: 94000000     	bl	0x92c8 <aw_i2c_probe+0x89c>
		00000000000092c8:  R_AARCH64_CALL26	_printk
    92cc: 52801548     	mov	w8, #0xaa               // =170
    92d0: 910023e2     	add	x2, sp, #0x8
    92d4: aa1303e0     	mov	x0, x19
    92d8: 2a1f03e1     	mov	w1, wzr
    92dc: 52800023     	mov	w3, #0x1                // =1
    92e0: 390023e8     	strb	w8, [sp, #0x8]
    92e4: 94000000     	bl	0x92e4 <aw_i2c_probe+0x8b8>
		00000000000092e4:  R_AARCH64_CALL26	i2c_w_bytes
    92e8: 52817700     	mov	w0, #0xbb8              // =3000
    92ec: 5281b581     	mov	w1, #0xdac              // =3500
    92f0: 52800042     	mov	w2, #0x2                // =2
    92f4: 94000000     	bl	0x92f4 <aw_i2c_probe+0x8c8>
		00000000000092f4:  R_AARCH64_CALL26	usleep_range_state
    92f8: b9404a68     	ldr	w8, [x19, #0x48]
    92fc: 7100011f     	cmp	w8, #0x0
    9300: 5400022c     	b.gt	0x9344 <aw_i2c_probe+0x918>
    9304: 90000015     	adrp	x21, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009304:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9308: 910002b5     	add	x21, x21, #0x0
		0000000000009308:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    930c: 90000016     	adrp	x22, 0x9000 <aw_i2c_probe+0x5d4>
		000000000000930c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2df4
    9310: 910002d6     	add	x22, x22, #0x0
		0000000000009310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2df4
    9314: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009314:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2860
    9318: 91000000     	add	x0, x0, #0x0
		0000000000009318:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2860
    931c: aa1503e1     	mov	x1, x21
    9320: 528043e2     	mov	w2, #0x21f              // =543
    9324: aa1603e3     	mov	x3, x22
    9328: 94000000     	bl	0x9328 <aw_i2c_probe+0x8fc>
		0000000000009328:  R_AARCH64_CALL26	_printk
    932c: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		000000000000932c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x211a
    9330: 91000000     	add	x0, x0, #0x0
		0000000000009330:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x211a
    9334: aa1503e1     	mov	x1, x21
    9338: 52804402     	mov	w2, #0x220              // =544
    933c: aa1603e3     	mov	x3, x22
    9340: 14000023     	b	0x93cc <aw_i2c_probe+0x9a0>
    9344: 52927009     	mov	w9, #0x9380             // =37760
    9348: 6b09011f     	cmp	w8, w9
    934c: 54000321     	b.ne	0x93b0 <aw_i2c_probe+0x984>
    9350: 90000008     	adrp	x8, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009350:  R_AARCH64_ADR_PREL_PG_HI21	aw8693x_func_list
    9354: 91000108     	add	x8, x8, #0x0
		0000000000009354:  R_AARCH64_ADD_ABS_LO12_NC	aw8693x_func_list
    9358: aa1303e0     	mov	x0, x19
    935c: f9401109     	ldr	x9, [x8, #0x20]
    9360: f902e668     	str	x8, [x19, #0x5c8]
    9364: b85fc130     	ldur	w16, [x9, #-0x4]
    9368: 729e3e11     	movk	w17, #0xf1f0
    936c: 72aa2591     	movk	w17, #0x512c, lsl #16
    9370: 6b11021f     	cmp	w16, w17
    9374: 54000040     	b.eq	0x937c <aw_i2c_probe+0x950>
    9378: d4304520     	brk	#0x8229
    937c: d63f0120     	blr	x9
    9380: 36f80520     	tbz	w0, #0x1f, 0x9424 <aw_i2c_probe+0x9f8>
    9384: 90000008     	adrp	x8, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009384:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2676
    9388: 91000108     	add	x8, x8, #0x0
		0000000000009388:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2676
    938c: 2a0003e4     	mov	w4, w0
    9390: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009390:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9394: 91000021     	add	x1, x1, #0x0
		0000000000009394:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9398: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009398:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2668
    939c: 91000063     	add	x3, x3, #0x0
		000000000000939c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2668
    93a0: aa0803e0     	mov	x0, x8
    93a4: 52822962     	mov	w2, #0x114b             // =4427
    93a8: 2a0403f5     	mov	w21, w4
    93ac: 14000012     	b	0x93f4 <aw_i2c_probe+0x9c8>
    93b0: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000093b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2542
    93b4: 91000000     	add	x0, x0, #0x0
		00000000000093b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2542
    93b8: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000093b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    93bc: 91000021     	add	x1, x1, #0x0
		00000000000093bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    93c0: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000093c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2df4
    93c4: 91000063     	add	x3, x3, #0x0
		00000000000093c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2df4
    93c8: 52804802     	mov	w2, #0x240              // =576
    93cc: 94000000     	bl	0x93cc <aw_i2c_probe+0x9a0>
		00000000000093cc:  R_AARCH64_CALL26	_printk
    93d0: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000093d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x430a
    93d4: 91000000     	add	x0, x0, #0x0
		00000000000093d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x430a
    93d8: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000093d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    93dc: 91000021     	add	x1, x1, #0x0
		00000000000093dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    93e0: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000093e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2668
    93e4: 91000063     	add	x3, x3, #0x0
		00000000000093e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2668
    93e8: 52822882     	mov	w2, #0x1144             // =4420
    93ec: 128002a4     	mov	w4, #-0x16              // =-22
    93f0: 128002b5     	mov	w21, #-0x16             // =-22
    93f4: 94000000     	bl	0x93f4 <aw_i2c_probe+0x9c8>
		00000000000093f4:  R_AARCH64_CALL26	_printk
    93f8: b9405260     	ldr	w0, [x19, #0x50]
    93fc: 37f80040     	tbnz	w0, #0x1f, 0x9404 <aw_i2c_probe+0x9d8>
    9400: 94000000     	bl	0x9400 <aw_i2c_probe+0x9d4>
		0000000000009400:  R_AARCH64_CALL26	gpio_free
    9404: b9405e60     	ldr	w0, [x19, #0x5c]
    9408: 37f80040     	tbnz	w0, #0x1f, 0x9410 <aw_i2c_probe+0x9e4>
    940c: 94000000     	bl	0x940c <aw_i2c_probe+0x9e0>
		000000000000940c:  R_AARCH64_CALL26	gpio_free
    9410: aa1403e0     	mov	x0, x20
    9414: aa1303e1     	mov	x1, x19
    9418: 94000000     	bl	0x9418 <aw_i2c_probe+0x9ec>
		0000000000009418:  R_AARCH64_CALL26	devm_kfree
    941c: 2a1503e0     	mov	w0, w21
    9420: 17fffda6     	b	0x8ab8 <aw_i2c_probe+0x8c>
    9424: f942e668     	ldr	x8, [x19, #0x5c8]
    9428: aa1403e0     	mov	x0, x20
    942c: aa1303e1     	mov	x1, x19
    9430: aa1503e2     	mov	x2, x21
    9434: f9407108     	ldr	x8, [x8, #0xe0]
    9438: b85fc110     	ldur	w16, [x8, #-0x4]
    943c: 729a6551     	movk	w17, #0xd32a
    9440: 72a5cef1     	movk	w17, #0x2e77, lsl #16
    9444: 6b11021f     	cmp	w16, w17
    9448: 54000040     	b.eq	0x9450 <aw_i2c_probe+0xa24>
    944c: d4304500     	brk	#0x8228
    9450: d63f0100     	blr	x8
    9454: aa1403e0     	mov	x0, x20
    9458: aa1303e1     	mov	x1, x19
    945c: 9400015e     	bl	0x99d4 <irq_handle+0x12c>
		000000000000945c:  R_AARCH64_CALL26	irq_config
    9460: 35000420     	cbnz	w0, 0x94e4 <aw_i2c_probe+0xab8>
    9464: aa1303e0     	mov	x0, x19
    9468: 9400019b     	bl	0x9ad4 <irq_handle+0x22c>
		0000000000009468:  R_AARCH64_CALL26	vibrator_init
    946c: aa1303e0     	mov	x0, x19
    9470: 94000201     	bl	0x9c74 <irq_handle+0x3cc>
		0000000000009470:  R_AARCH64_CALL26	haptic_init
    9474: 52800141     	mov	w1, #0xa                // =10
    9478: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009478:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ba4
    947c: 91000000     	add	x0, x0, #0x0
		000000000000947c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ba4
    9480: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009480:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d0a
    9484: 91000063     	add	x3, x3, #0x0
		0000000000009484:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d0a
    9488: 72a000c1     	movk	w1, #0x6, lsl #16
    948c: 52800022     	mov	w2, #0x1                // =1
    9490: 94000000     	bl	0x9490 <aw_i2c_probe+0xa64>
		0000000000009490:  R_AARCH64_CALL26	alloc_workqueue
    9494: f9022660     	str	x0, [x19, #0x448]
    9498: b50003c0     	cbnz	x0, 0x9510 <aw_i2c_probe+0xae4>
    949c: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		000000000000949c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28b0
    94a0: 91000000     	add	x0, x0, #0x0
		00000000000094a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28b0
    94a4: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000094a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    94a8: 91000021     	add	x1, x1, #0x0
		00000000000094a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    94ac: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000094ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2668
    94b0: 91000063     	add	x3, x3, #0x0
		00000000000094b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2668
    94b4: 52822da2     	mov	w2, #0x116d             // =4461
    94b8: 94000000     	bl	0x94b8 <aw_i2c_probe+0xa8c>
		00000000000094b8:  R_AARCH64_CALL26	_printk
    94bc: 2a1f03f5     	mov	w21, wzr
    94c0: 17ffffce     	b	0x93f8 <aw_i2c_probe+0x9cc>
    94c4: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000094c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2352
    94c8: 91000000     	add	x0, x0, #0x0
		00000000000094c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2352
    94cc: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000094cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    94d0: 91000021     	add	x1, x1, #0x0
		00000000000094d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    94d4: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000094d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2668
    94d8: 91000063     	add	x3, x3, #0x0
		00000000000094d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2668
    94dc: 528227a2     	mov	w2, #0x113d             // =4413
    94e0: 17ffffc3     	b	0x93ec <aw_i2c_probe+0x9c0>
    94e4: 90000008     	adrp	x8, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000094e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c6
    94e8: 91000108     	add	x8, x8, #0x0
		00000000000094e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c6
    94ec: 2a0003e4     	mov	w4, w0
    94f0: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000094f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    94f4: 91000021     	add	x1, x1, #0x0
		00000000000094f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    94f8: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000094f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2668
    94fc: 91000063     	add	x3, x3, #0x0
		00000000000094fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2668
    9500: aa0803e0     	mov	x0, x8
    9504: 52822b22     	mov	w2, #0x1159             // =4441
    9508: 2a0403f5     	mov	w21, w4
    950c: 17ffffba     	b	0x93f4 <aw_i2c_probe+0x9c8>
    9510: f942e668     	ldr	x8, [x19, #0x5c8]
    9514: aa1303e0     	mov	x0, x19
    9518: f9400508     	ldr	x8, [x8, #0x8]
    951c: b85fc110     	ldur	w16, [x8, #-0x4]
    9520: 729e3e11     	movk	w17, #0xf1f0
    9524: 72aa2591     	movk	w17, #0x512c, lsl #16
    9528: 6b11021f     	cmp	w16, w17
    952c: 54000040     	b.eq	0x9534 <aw_i2c_probe+0xb08>
    9530: d4304500     	brk	#0x8228
    9534: d63f0100     	blr	x8
    9538: aa1303e0     	mov	x0, x19
    953c: 9400026b     	bl	0x9ee8 <vibrator_work_routine+0x260>
		000000000000953c:  R_AARCH64_CALL26	ram_work_init
    9540: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009540:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36c2
    9544: 91000000     	add	x0, x0, #0x0
		0000000000009544:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36c2
    9548: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009548:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    954c: 91000021     	add	x1, x1, #0x0
		000000000000954c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9550: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009550:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2668
    9554: 91000063     	add	x3, x3, #0x0
		0000000000009554:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2668
    9558: 52822e42     	mov	w2, #0x1172             // =4466
    955c: 94000000     	bl	0x955c <aw_i2c_probe+0xb30>
		000000000000955c:  R_AARCH64_CALL26	_printk
    9560: d503201f     	nop
    9564: 5287d000     	mov	w0, #0x3e80             // =16000
    9568: 52819801     	mov	w1, #0xcc0              // =3264
    956c: 94000000     	bl	0x956c <aw_i2c_probe+0xb40>
		000000000000956c:  R_AARCH64_CALL26	__kmalloc_large_noprof
    9570: f9030660     	str	x0, [x19, #0x608]
    9574: b4001480     	cbz	x0, 0x9804 <aw_i2c_probe+0xdd8>
    9578: d503201f     	nop
    957c: 52819800     	mov	w0, #0xcc0              // =3264
    9580: 52800041     	mov	w1, #0x2                // =2
    9584: 94000000     	bl	0x9584 <aw_i2c_probe+0xb58>
		0000000000009584:  R_AARCH64_CALL26	get_free_pages_noprof
    9588: f9030a60     	str	x0, [x19, #0x610]
    958c: b40015c0     	cbz	x0, 0x9844 <aw_i2c_probe+0xe18>
    9590: d378dc08     	lsl	x8, x0, #8
    9594: d2c01009     	mov	x9, #0x8000000000       // =549755813888
    9598: 8b882128     	add	x8, x9, x8, asr #8
    959c: d346fd08     	lsr	x8, x8, #6
    95a0: 927acd08     	and	x8, x8, #0x3ffffffffffffc0
    95a4: 140000b7     	b	0x9880 <aw_i2c_probe+0xe54>
    95a8: b25f7be9     	mov	x9, #-0x200000000       // =-8589934592
    95ac: f2b80009     	movk	x9, #0xc000, lsl #16
    95b0: 8b090108     	add	x8, x8, x9
    95b4: 52880009     	mov	w9, #0x4000             // =16384
    95b8: f829311f     	stset	x9, [x8]
    95bc: f9430a68     	ldr	x8, [x19, #0x610]
    95c0: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000095c0:  R_AARCH64_ADR_PREL_PG_HI21	richtap_misc
    95c4: 91000000     	add	x0, x0, #0x0
		00000000000095c4:  R_AARCH64_ADD_ABS_LO12_NC	richtap_misc
    95c8: 91100109     	add	x9, x8, #0x400
    95cc: f9000509     	str	x9, [x8, #0x8]
    95d0: f9430a69     	ldr	x9, [x19, #0x610]
    95d4: 9120012a     	add	x10, x9, #0x800
    95d8: f902050a     	str	x10, [x8, #0x408]
    95dc: f9430a68     	ldr	x8, [x19, #0x610]
    95e0: 9130010a     	add	x10, x8, #0xc00
    95e4: f904052a     	str	x10, [x9, #0x808]
    95e8: f9430a69     	ldr	x9, [x19, #0x610]
    95ec: 9140052a     	add	x10, x9, #0x1, lsl #12  // =0x1000
    95f0: f906050a     	str	x10, [x8, #0xc08]
    95f4: 5282800a     	mov	w10, #0x1400            // =5120
    95f8: f9430a68     	ldr	x8, [x19, #0x610]
    95fc: 8b0a010a     	add	x10, x8, x10
    9600: f908052a     	str	x10, [x9, #0x1008]
    9604: 5283000a     	mov	w10, #0x1800            // =6144
    9608: f9430a69     	ldr	x9, [x19, #0x610]
    960c: 8b0a012a     	add	x10, x9, x10
    9610: f90a050a     	str	x10, [x8, #0x1408]
    9614: 5283800a     	mov	w10, #0x1c00            // =7168
    9618: f9430a68     	ldr	x8, [x19, #0x610]
    961c: 8b0a010a     	add	x10, x8, x10
    9620: f90c052a     	str	x10, [x9, #0x1808]
    9624: f9430a69     	ldr	x9, [x19, #0x610]
    9628: 9140092a     	add	x10, x9, #0x2, lsl #12  // =0x2000
    962c: f90e050a     	str	x10, [x8, #0x1c08]
    9630: 5284800a     	mov	w10, #0x2400            // =9216
    9634: f9430a68     	ldr	x8, [x19, #0x610]
    9638: 8b0a010a     	add	x10, x8, x10
    963c: f910052a     	str	x10, [x9, #0x2008]
    9640: 5285000a     	mov	w10, #0x2800            // =10240
    9644: f9430a69     	ldr	x9, [x19, #0x610]
    9648: 8b0a012a     	add	x10, x9, x10
    964c: f912050a     	str	x10, [x8, #0x2408]
    9650: 5285800a     	mov	w10, #0x2c00            // =11264
    9654: f9430a68     	ldr	x8, [x19, #0x610]
    9658: 8b0a010a     	add	x10, x8, x10
    965c: f914052a     	str	x10, [x9, #0x2808]
    9660: f9430a69     	ldr	x9, [x19, #0x610]
    9664: 91400d2a     	add	x10, x9, #0x3, lsl #12  // =0x3000
    9668: f916050a     	str	x10, [x8, #0x2c08]
    966c: 5286800a     	mov	w10, #0x3400            // =13312
    9670: f9430a68     	ldr	x8, [x19, #0x610]
    9674: 8b0a010a     	add	x10, x8, x10
    9678: f918052a     	str	x10, [x9, #0x3008]
    967c: 5287000a     	mov	w10, #0x3800            // =14336
    9680: f9430a69     	ldr	x9, [x19, #0x610]
    9684: 8b0a012a     	add	x10, x9, x10
    9688: f91a050a     	str	x10, [x8, #0x3408]
    968c: 5287800a     	mov	w10, #0x3c00            // =15360
    9690: f9430a68     	ldr	x8, [x19, #0x610]
    9694: 8b0a010a     	add	x10, x8, x10
    9698: f91c052a     	str	x10, [x9, #0x3808]
    969c: f9430a69     	ldr	x9, [x19, #0x610]
    96a0: f91e0509     	str	x9, [x8, #0x3c08]
    96a4: f9430a68     	ldr	x8, [x19, #0x610]
    96a8: f9400509     	ldr	x9, [x8, #0x8]
    96ac: 3900051f     	strb	wzr, [x8, #0x1]
    96b0: 52800028     	mov	w8, #0x1                // =1
    96b4: f940052a     	ldr	x10, [x9, #0x8]
    96b8: 39000528     	strb	w8, [x9, #0x1]
    96bc: 52800049     	mov	w9, #0x2                // =2
    96c0: f940054b     	ldr	x11, [x10, #0x8]
    96c4: 39000549     	strb	w9, [x10, #0x1]
    96c8: 52800069     	mov	w9, #0x3                // =3
    96cc: f940056a     	ldr	x10, [x11, #0x8]
    96d0: 39000569     	strb	w9, [x11, #0x1]
    96d4: 52800089     	mov	w9, #0x4                // =4
    96d8: f940054b     	ldr	x11, [x10, #0x8]
    96dc: 39000549     	strb	w9, [x10, #0x1]
    96e0: 528000a9     	mov	w9, #0x5                // =5
    96e4: f940056a     	ldr	x10, [x11, #0x8]
    96e8: 39000569     	strb	w9, [x11, #0x1]
    96ec: 528000c9     	mov	w9, #0x6                // =6
    96f0: f940054b     	ldr	x11, [x10, #0x8]
    96f4: 39000549     	strb	w9, [x10, #0x1]
    96f8: 528000e9     	mov	w9, #0x7                // =7
    96fc: f940056a     	ldr	x10, [x11, #0x8]
    9700: 39000569     	strb	w9, [x11, #0x1]
    9704: 52800109     	mov	w9, #0x8                // =8
    9708: f940054b     	ldr	x11, [x10, #0x8]
    970c: 39000549     	strb	w9, [x10, #0x1]
    9710: 52800129     	mov	w9, #0x9                // =9
    9714: f940056a     	ldr	x10, [x11, #0x8]
    9718: 39000569     	strb	w9, [x11, #0x1]
    971c: 52800149     	mov	w9, #0xa                // =10
    9720: f940054b     	ldr	x11, [x10, #0x8]
    9724: 39000549     	strb	w9, [x10, #0x1]
    9728: 52800169     	mov	w9, #0xb                // =11
    972c: f940056a     	ldr	x10, [x11, #0x8]
    9730: 39000569     	strb	w9, [x11, #0x1]
    9734: 52800189     	mov	w9, #0xc                // =12
    9738: f940054b     	ldr	x11, [x10, #0x8]
    973c: 39000549     	strb	w9, [x10, #0x1]
    9740: 528001a9     	mov	w9, #0xd                // =13
    9744: f940056a     	ldr	x10, [x11, #0x8]
    9748: 39000569     	strb	w9, [x11, #0x1]
    974c: 528001c9     	mov	w9, #0xe                // =14
    9750: f940054b     	ldr	x11, [x10, #0x8]
    9754: 39000549     	strb	w9, [x10, #0x1]
    9758: 528001e9     	mov	w9, #0xf                // =15
    975c: 39000569     	strb	w9, [x11, #0x1]
    9760: b26b7be9     	mov	x9, #0xfffffffe00000    // =4503599625273344
    9764: 790c3268     	strh	w8, [x19, #0x618]
    9768: 91194268     	add	x8, x19, #0x650
    976c: f9032669     	str	x9, [x19, #0x648]
    9770: f9032a68     	str	x8, [x19, #0x650]
    9774: f9032e68     	str	x8, [x19, #0x658]
    9778: 90000008     	adrp	x8, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009778:  R_AARCH64_ADR_PREL_PG_HI21	richtap_rtp_work
    977c: 91000108     	add	x8, x8, #0x0
		000000000000977c:  R_AARCH64_ADD_ABS_LO12_NC	richtap_rtp_work
    9780: f9033268     	str	x8, [x19, #0x660]
    9784: 9119c268     	add	x8, x19, #0x670
    9788: f9033669     	str	x9, [x19, #0x668]
    978c: f9033a68     	str	x8, [x19, #0x670]
    9790: f9033e68     	str	x8, [x19, #0x678]
    9794: 90000008     	adrp	x8, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009794:  R_AARCH64_ADR_PREL_PG_HI21	richtap_stop_work
    9798: 91000108     	add	x8, x8, #0x0
		0000000000009798:  R_AARCH64_ADD_ABS_LO12_NC	richtap_stop_work
    979c: f9034268     	str	x8, [x19, #0x680]
    97a0: 9118c268     	add	x8, x19, #0x630
    97a4: f9031669     	str	x9, [x19, #0x628]
    97a8: f9031a68     	str	x8, [x19, #0x630]
    97ac: f9031e68     	str	x8, [x19, #0x638]
    97b0: 90000008     	adrp	x8, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000097b0:  R_AARCH64_ADR_PREL_PG_HI21	tiktap_work_routine
    97b4: 91000108     	add	x8, x8, #0x0
		00000000000097b4:  R_AARCH64_ADD_ABS_LO12_NC	tiktap_work_routine
    97b8: f9032268     	str	x8, [x19, #0x640]
    97bc: b906be7f     	str	wzr, [x19, #0x6bc]
    97c0: 94000000     	bl	0x97c0 <aw_i2c_probe+0xd94>
		00000000000097c0:  R_AARCH64_CALL26	misc_register
    97c4: 2a1f03e0     	mov	w0, wzr
    97c8: 90000008     	adrp	x8, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000097c8:  R_AARCH64_ADR_PREL_PG_HI21	g_aw_haptic
    97cc: f9000113     	str	x19, [x8]
		00000000000097cc:  R_AARCH64_LDST64_ABS_LO12_NC	g_aw_haptic
    97d0: 17fffcba     	b	0x8ab8 <aw_i2c_probe+0x8c>
    97d4: 94000000     	bl	0x97d4 <aw_i2c_probe+0xda8>
		00000000000097d4:  R_AARCH64_CALL26	__stack_chk_fail
    97d8: d5384115     	mrs	x21, SP_EL0
    97dc: f9402ab6     	ldr	x22, [x21, #0x50]
    97e0: 90000008     	adrp	x8, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000097e0:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xa0
    97e4: 91000108     	add	x8, x8, #0x0
		00000000000097e4:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xa0
    97e8: 5287d000     	mov	w0, #0x3e80             // =16000
    97ec: 52819801     	mov	w1, #0xcc0              // =3264
    97f0: f9002aa8     	str	x8, [x21, #0x50]
    97f4: 94000000     	bl	0x97f4 <aw_i2c_probe+0xdc8>
		00000000000097f4:  R_AARCH64_CALL26	__kmalloc_large_noprof
    97f8: f9002ab6     	str	x22, [x21, #0x50]
    97fc: f9030660     	str	x0, [x19, #0x608]
    9800: b5ffebc0     	cbnz	x0, 0x9578 <aw_i2c_probe+0xb4c>
    9804: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009804:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x389c
    9808: 91000021     	add	x1, x1, #0x0
		0000000000009808:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x389c
    980c: aa1403e0     	mov	x0, x20
    9810: 94000000     	bl	0x9810 <aw_i2c_probe+0xde4>
		0000000000009810:  R_AARCH64_CALL26	_dev_err
    9814: 14000012     	b	0x985c <aw_i2c_probe+0xe30>
    9818: d5384115     	mrs	x21, SP_EL0
    981c: f9402ab6     	ldr	x22, [x21, #0x50]
    9820: 90000008     	adrp	x8, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009820:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xc8
    9824: 91000108     	add	x8, x8, #0x0
		0000000000009824:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xc8
    9828: 52819800     	mov	w0, #0xcc0              // =3264
    982c: 52800041     	mov	w1, #0x2                // =2
    9830: f9002aa8     	str	x8, [x21, #0x50]
    9834: 94000000     	bl	0x9834 <aw_i2c_probe+0xe08>
		0000000000009834:  R_AARCH64_CALL26	get_free_pages_noprof
    9838: f9002ab6     	str	x22, [x21, #0x50]
    983c: f9030a60     	str	x0, [x19, #0x610]
    9840: b5ffea80     	cbnz	x0, 0x9590 <aw_i2c_probe+0xb64>
    9844: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009844:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x341e
    9848: 91000021     	add	x1, x1, #0x0
		0000000000009848:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x341e
    984c: aa1403e0     	mov	x0, x20
    9850: 94000000     	bl	0x9850 <aw_i2c_probe+0xe24>
		0000000000009850:  R_AARCH64_CALL26	_dev_err
    9854: f9430660     	ldr	x0, [x19, #0x608]
    9858: 94000000     	bl	0x9858 <aw_i2c_probe+0xe2c>
		0000000000009858:  R_AARCH64_CALL26	kfree
    985c: b9405260     	ldr	w0, [x19, #0x50]
    9860: 94000000     	bl	0x9860 <aw_i2c_probe+0xe34>
		0000000000009860:  R_AARCH64_CALL26	gpio_to_desc
    9864: 94000000     	bl	0x9864 <aw_i2c_probe+0xe38>
		0000000000009864:  R_AARCH64_CALL26	gpiod_to_irq
    9868: 2a0003e1     	mov	w1, w0
    986c: aa1403e0     	mov	x0, x20
    9870: aa1303e2     	mov	x2, x19
    9874: 94000000     	bl	0x9874 <aw_i2c_probe+0xe48>
		0000000000009874:  R_AARCH64_CALL26	devm_free_irq
    9878: 2a1f03f5     	mov	w21, wzr
    987c: 17fffedf     	b	0x93f8 <aw_i2c_probe+0x9cc>
    9880: b25f7be9     	mov	x9, #-0x200000000       // =-8589934592
    9884: f2b80009     	movk	x9, #0xc000, lsl #16
    9888: 8b090108     	add	x8, x8, x9
    988c: f9800111     	prfm	pstl1strm, [x8]
    9890: c85f7d09     	ldxr	x9, [x8]
    9894: b2720129     	orr	x9, x9, #0x4000
    9898: c80a7d09     	stxr	w10, x9, [x8]
    989c: 35ffffaa     	cbnz	w10, 0x9890 <aw_i2c_probe+0xe64>
    98a0: 17ffff47     	b	0x95bc <aw_i2c_probe+0xb90>
