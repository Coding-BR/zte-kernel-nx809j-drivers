
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008a5c <aw_i2c_probe>:
    8a5c: d503233f     	paciasp
    8a60: d10243ff     	sub	sp, sp, #0x90
    8a64: a9037bfd     	stp	x29, x30, [sp, #0x30]
    8a68: a9046ffc     	stp	x28, x27, [sp, #0x40]
    8a6c: a90567fa     	stp	x26, x25, [sp, #0x50]
    8a70: a9065ff8     	stp	x24, x23, [sp, #0x60]
    8a74: a90757f6     	stp	x22, x21, [sp, #0x70]
    8a78: a9084ff4     	stp	x20, x19, [sp, #0x80]
    8a7c: 9100c3fd     	add	x29, sp, #0x30
    8a80: d5384108     	mrs	x8, SP_EL0
    8a84: aa0003f6     	mov	x22, x0
    8a88: f9438908     	ldr	x8, [x8, #0x710]
    8a8c: f81f83a8     	stur	x8, [x29, #-0x8]
    8a90: f9418415     	ldr	x21, [x0, #0x308]
    8a94: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008a94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ce8
    8a98: 91000000     	add	x0, x0, #0x0
		0000000000008a98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ce8
    8a9c: 94000000     	bl	0x8a9c <aw_i2c_probe+0x40>
		0000000000008a9c:  R_AARCH64_CALL26	_printk
    8aa0: f9400ec0     	ldr	x0, [x22, #0x18]
    8aa4: f9400808     	ldr	x8, [x0, #0x10]
    8aa8: f9401108     	ldr	x8, [x8, #0x20]
    8aac: b85fc110     	ldur	w16, [x8, #-0x4]
    8ab0: 729d62d1     	movk	w17, #0xeb16
    8ab4: 72af9851     	movk	w17, #0x7cc2, lsl #16
    8ab8: 6b11021f     	cmp	w16, w17
    8abc: 54000040     	b.eq	0x8ac4 <aw_i2c_probe+0x68>
    8ac0: d4304500     	brk	#0x8228
    8ac4: d63f0100     	blr	x8
    8ac8: 360002c0     	tbz	w0, #0x0, 0x8b20 <aw_i2c_probe+0xc4>
    8acc: 910082d4     	add	x20, x22, #0x20
    8ad0: 5280df01     	mov	w1, #0x6f8              // =1784
    8ad4: 5281b802     	mov	w2, #0xdc0              // =3520
    8ad8: aa1403e0     	mov	x0, x20
    8adc: 94000000     	bl	0x8adc <aw_i2c_probe+0x80>
		0000000000008adc:  R_AARCH64_CALL26	devm_kmalloc
    8ae0: b50002a0     	cbnz	x0, 0x8b34 <aw_i2c_probe+0xd8>
    8ae4: 12800160     	mov	w0, #-0xc               // =-12
    8ae8: d5384108     	mrs	x8, SP_EL0
    8aec: f9438908     	ldr	x8, [x8, #0x710]
    8af0: f85f83a9     	ldur	x9, [x29, #-0x8]
    8af4: eb09011f     	cmp	x8, x9
    8af8: 54006861     	b.ne	0x9804 <aw_i2c_probe+0xda8>
    8afc: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    8b00: a94757f6     	ldp	x22, x21, [sp, #0x70]
    8b04: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    8b08: a94567fa     	ldp	x26, x25, [sp, #0x50]
    8b0c: a9446ffc     	ldp	x28, x27, [sp, #0x40]
    8b10: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    8b14: 910243ff     	add	sp, sp, #0x90
    8b18: d50323bf     	autiasp
    8b1c: d65f03c0     	ret
    8b20: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008b20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3874
    8b24: 91000000     	add	x0, x0, #0x0
		0000000000008b24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3874
    8b28: 94000000     	bl	0x8b28 <aw_i2c_probe+0xcc>
		0000000000008b28:  R_AARCH64_CALL26	_printk
    8b2c: 12800080     	mov	w0, #-0x5               // =-5
    8b30: 17ffffee     	b	0x8ae8 <aw_i2c_probe+0x8c>
    8b34: aa0003f3     	mov	x19, x0
    8b38: f9019014     	str	x20, [x0, #0x320]
    8b3c: f9019416     	str	x22, [x0, #0x328]
    8b40: f9005ec0     	str	x0, [x22, #0xb8]
    8b44: b5001dd5     	cbnz	x21, 0x8efc <aw_i2c_probe+0x4a0>
    8b48: 12800008     	mov	w8, #-0x1               // =-1
    8b4c: b9005e68     	str	w8, [x19, #0x5c]
    8b50: b9005268     	str	w8, [x19, #0x50]
    8b54: b9405e61     	ldr	w1, [x19, #0x5c]
    8b58: 37f800e1     	tbnz	w1, #0x1f, 0x8b74 <aw_i2c_probe+0x118>
    8b5c: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008b5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x457e
    8b60: 91000063     	add	x3, x3, #0x0
		0000000000008b60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x457e
    8b64: aa1403e0     	mov	x0, x20
    8b68: aa1f03e2     	mov	x2, xzr
    8b6c: 94000000     	bl	0x8b6c <aw_i2c_probe+0x110>
		0000000000008b6c:  R_AARCH64_CALL26	devm_gpio_request_one
    8b70: 350022a0     	cbnz	w0, 0x8fc4 <aw_i2c_probe+0x568>
    8b74: b9405261     	ldr	w1, [x19, #0x50]
    8b78: 37f800e1     	tbnz	w1, #0x1f, 0x8b94 <aw_i2c_probe+0x138>
    8b7c: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008b7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x487e
    8b80: 91000063     	add	x3, x3, #0x0
		0000000000008b80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x487e
    8b84: aa1403e0     	mov	x0, x20
    8b88: 52800022     	mov	w2, #0x1                // =1
    8b8c: 94000000     	bl	0x8b8c <aw_i2c_probe+0x130>
		0000000000008b8c:  R_AARCH64_CALL26	devm_gpio_request_one
    8b90: 350022e0     	cbnz	w0, 0x8fec <aw_i2c_probe+0x590>
    8b94: 2a1f03f6     	mov	w22, wzr
    8b98: 2a1f03f9     	mov	w25, wzr
    8b9c: 52800408     	mov	w8, #0x20               // =32
    8ba0: 90000017     	adrp	x23, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008ba0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    8ba4: 910002f7     	add	x23, x23, #0x0
		0000000000008ba4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    8ba8: 90000018     	adrp	x24, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008ba8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3270
    8bac: 91000318     	add	x24, x24, #0x0
		0000000000008bac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3270
    8bb0: 9000001a     	adrp	x26, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008bb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    8bb4: 9100035a     	add	x26, x26, #0x0
		0000000000008bb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    8bb8: 910013fc     	add	x28, sp, #0x4
    8bbc: 391bce68     	strb	w8, [x19, #0x6f3]
    8bc0: 1400000f     	b	0x8bfc <aw_i2c_probe+0x1a0>
    8bc4: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008bc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24f6
    8bc8: 91000000     	add	x0, x0, #0x0
		0000000000008bc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24f6
    8bcc: aa1703e1     	mov	x1, x23
    8bd0: 52804262     	mov	w2, #0x213              // =531
    8bd4: aa1a03e3     	mov	x3, x26
    8bd8: 2a1903e4     	mov	w4, w25
    8bdc: 94000000     	bl	0x8bdc <aw_i2c_probe+0x180>
		0000000000008bdc:  R_AARCH64_CALL26	_printk
    8be0: 5280fa00     	mov	w0, #0x7d0              // =2000
    8be4: 52813881     	mov	w1, #0x9c4              // =2500
    8be8: 52800042     	mov	w2, #0x2                // =2
    8bec: 94000000     	bl	0x8bec <aw_i2c_probe+0x190>
		0000000000008bec:  R_AARCH64_CALL26	usleep_range_state
    8bf0: 710012df     	cmp	w22, #0x4
    8bf4: 110006d6     	add	w22, w22, #0x1
    8bf8: 540047e2     	b.hs	0x94f4 <aw_i2c_probe+0xa98>
    8bfc: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008bfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x270a
    8c00: 91000000     	add	x0, x0, #0x0
		0000000000008c00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x270a
    8c04: aa1703e1     	mov	x1, x23
    8c08: 52802e22     	mov	w2, #0x171              // =369
    8c0c: aa1803e3     	mov	x3, x24
    8c10: 94000000     	bl	0x8c10 <aw_i2c_probe+0x1b4>
		0000000000008c10:  R_AARCH64_CALL26	_printk
    8c14: b9405e60     	ldr	w0, [x19, #0x5c]
    8c18: 37f80220     	tbnz	w0, #0x1f, 0x8c5c <aw_i2c_probe+0x200>
    8c1c: 94000000     	bl	0x8c1c <aw_i2c_probe+0x1c0>
		0000000000008c1c:  R_AARCH64_CALL26	gpio_to_desc
    8c20: 2a1f03e1     	mov	w1, wzr
    8c24: 94000000     	bl	0x8c24 <aw_i2c_probe+0x1c8>
		0000000000008c24:  R_AARCH64_CALL26	gpiod_set_raw_value_cansleep
    8c28: 52807d00     	mov	w0, #0x3e8              // =1000
    8c2c: 5280fa01     	mov	w1, #0x7d0              // =2000
    8c30: 52800042     	mov	w2, #0x2                // =2
    8c34: 94000000     	bl	0x8c34 <aw_i2c_probe+0x1d8>
		0000000000008c34:  R_AARCH64_CALL26	usleep_range_state
    8c38: b9405e60     	ldr	w0, [x19, #0x5c]
    8c3c: 94000000     	bl	0x8c3c <aw_i2c_probe+0x1e0>
		0000000000008c3c:  R_AARCH64_CALL26	gpio_to_desc
    8c40: 52800021     	mov	w1, #0x1                // =1
    8c44: 94000000     	bl	0x8c44 <aw_i2c_probe+0x1e8>
		0000000000008c44:  R_AARCH64_CALL26	gpiod_set_raw_value_cansleep
    8c48: 5283e800     	mov	w0, #0x1f40             // =8000
    8c4c: 52842681     	mov	w1, #0x2134             // =8500
    8c50: 52800042     	mov	w2, #0x2                // =2
    8c54: 94000000     	bl	0x8c54 <aw_i2c_probe+0x1f8>
		0000000000008c54:  R_AARCH64_CALL26	usleep_range_state
    8c58: 14000007     	b	0x8c74 <aw_i2c_probe+0x218>
    8c5c: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008c5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x252a
    8c60: 91000000     	add	x0, x0, #0x0
		0000000000008c60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x252a
    8c64: aa1703e1     	mov	x1, x23
    8c68: 52802f02     	mov	w2, #0x178              // =376
    8c6c: aa1803e3     	mov	x3, x24
    8c70: 94000000     	bl	0x8c70 <aw_i2c_probe+0x214>
		0000000000008c70:  R_AARCH64_CALL26	_printk
    8c74: f9419668     	ldr	x8, [x19, #0x328]
    8c78: 52a0002a     	mov	w10, #0x10000           // =65536
    8c7c: 910023e1     	add	x1, sp, #0x8
    8c80: 52800042     	mov	w2, #0x2                // =2
    8c84: 79000bff     	strh	wzr, [sp, #0x4]
    8c88: 79400509     	ldrh	w9, [x8, #0x2]
    8c8c: f90013fc     	str	x28, [sp, #0x20]
    8c90: f9400d00     	ldr	x0, [x8, #0x18]
    8c94: b800a3ea     	stur	w10, [sp, #0xa]
    8c98: 910003ea     	mov	x10, sp
    8c9c: 790013e9     	strh	w9, [sp, #0x8]
    8ca0: 790033e9     	strh	w9, [sp, #0x18]
    8ca4: 320083e9     	mov	w9, #0x10001            // =65537
    8ca8: 390003ff     	strb	wzr, [sp]
    8cac: 79001fff     	strh	wzr, [sp, #0xe]
    8cb0: f9000bea     	str	x10, [sp, #0x10]
    8cb4: b801a3e9     	stur	w9, [sp, #0x1a]
    8cb8: 79003fff     	strh	wzr, [sp, #0x1e]
    8cbc: 94000000     	bl	0x8cbc <aw_i2c_probe+0x260>
		0000000000008cbc:  R_AARCH64_CALL26	i2c_transfer
    8cc0: 2a0003fb     	mov	w27, w0
    8cc4: 36f80120     	tbz	w0, #0x1f, 0x8ce8 <aw_i2c_probe+0x28c>
    8cc8: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008cc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24b0
    8ccc: 91000000     	add	x0, x0, #0x0
		0000000000008ccc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24b0
    8cd0: aa1703e1     	mov	x1, x23
    8cd4: 52800ca2     	mov	w2, #0x65               // =101
    8cd8: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008cd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x265c
    8cdc: 91000063     	add	x3, x3, #0x0
		0000000000008cdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x265c
    8ce0: 94000000     	bl	0x8ce0 <aw_i2c_probe+0x284>
		0000000000008ce0:  R_AARCH64_CALL26	_printk
    8ce4: 14000031     	b	0x8da8 <aw_i2c_probe+0x34c>
    8ce8: 71000b7f     	cmp	w27, #0x2
    8cec: 540004e1     	b.ne	0x8d88 <aw_i2c_probe+0x32c>
    8cf0: 394013fb     	ldrb	w27, [sp, #0x4]
    8cf4: 721e137f     	tst	w27, #0x7c
    8cf8: 54000361     	b.ne	0x8d64 <aw_i2c_probe+0x308>
    8cfc: f9419668     	ldr	x8, [x19, #0x328]
    8d00: 52800ae9     	mov	w9, #0x57               // =87
    8d04: 52a0002a     	mov	w10, #0x10000           // =65536
    8d08: 390003e9     	strb	w9, [sp]
    8d0c: 910023e1     	add	x1, sp, #0x8
    8d10: 52800042     	mov	w2, #0x2                // =2
    8d14: 79400509     	ldrh	w9, [x8, #0x2]
    8d18: f90013fc     	str	x28, [sp, #0x20]
    8d1c: f9400d00     	ldr	x0, [x8, #0x18]
    8d20: b800a3ea     	stur	w10, [sp, #0xa]
    8d24: 910003ea     	mov	x10, sp
    8d28: 790013e9     	strh	w9, [sp, #0x8]
    8d2c: 790033e9     	strh	w9, [sp, #0x18]
    8d30: 52800029     	mov	w9, #0x1                // =1
    8d34: 72a00049     	movk	w9, #0x2, lsl #16
    8d38: 79001fff     	strh	wzr, [sp, #0xe]
    8d3c: f9000bea     	str	x10, [sp, #0x10]
    8d40: b801a3e9     	stur	w9, [sp, #0x1a]
    8d44: 79003fff     	strh	wzr, [sp, #0x1e]
    8d48: 94000000     	bl	0x8d48 <aw_i2c_probe+0x2ec>
		0000000000008d48:  R_AARCH64_CALL26	i2c_transfer
    8d4c: 2a0003fb     	mov	w27, w0
    8d50: 37fffbc0     	tbnz	w0, #0x1f, 0x8cc8 <aw_i2c_probe+0x26c>
    8d54: 71000b7f     	cmp	w27, #0x2
    8d58: 54000181     	b.ne	0x8d88 <aw_i2c_probe+0x32c>
    8d5c: 79400be8     	ldrh	w8, [sp, #0x4]
    8d60: 5ac0051b     	rev16	w27, w8
    8d64: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008d64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2742
    8d68: 91000000     	add	x0, x0, #0x0
		0000000000008d68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2742
    8d6c: aa1703e1     	mov	x1, x23
    8d70: 528037a2     	mov	w2, #0x1bd              // =445
    8d74: aa1a03e3     	mov	x3, x26
    8d78: 2a1b03e4     	mov	w4, w27
    8d7c: 94000000     	bl	0x8d7c <aw_i2c_probe+0x320>
		0000000000008d7c:  R_AARCH64_CALL26	_printk
    8d80: 2a1b03f9     	mov	w25, w27
    8d84: 14000017     	b	0x8de0 <aw_i2c_probe+0x384>
    8d88: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008d88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3216
    8d8c: 91000000     	add	x0, x0, #0x0
		0000000000008d8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3216
    8d90: aa1703e1     	mov	x1, x23
    8d94: 52800d02     	mov	w2, #0x68               // =104
    8d98: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008d98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x265c
    8d9c: 91000063     	add	x3, x3, #0x0
		0000000000008d9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x265c
    8da0: 94000000     	bl	0x8da0 <aw_i2c_probe+0x344>
		0000000000008da0:  R_AARCH64_CALL26	_printk
    8da4: 128000bb     	mov	w27, #-0x6              // =-6
    8da8: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008da8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2742
    8dac: 91000000     	add	x0, x0, #0x0
		0000000000008dac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2742
    8db0: aa1703e1     	mov	x1, x23
    8db4: 528037a2     	mov	w2, #0x1bd              // =445
    8db8: aa1a03e3     	mov	x3, x26
    8dbc: 2a1903e4     	mov	w4, w25
    8dc0: 94000000     	bl	0x8dc0 <aw_i2c_probe+0x364>
		0000000000008dc0:  R_AARCH64_CALL26	_printk
    8dc4: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008dc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4468
    8dc8: 91000000     	add	x0, x0, #0x0
		0000000000008dc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4468
    8dcc: aa1703e1     	mov	x1, x23
    8dd0: 528037e2     	mov	w2, #0x1bf              // =447
    8dd4: aa1a03e3     	mov	x3, x26
    8dd8: 2a1b03e4     	mov	w4, w27
    8ddc: 94000000     	bl	0x8ddc <aw_i2c_probe+0x380>
		0000000000008ddc:  R_AARCH64_CALL26	_printk
    8de0: 528e2de8     	mov	w8, #0x716f             // =29039
    8de4: 6b08033f     	cmp	w25, w8
    8de8: 540001cd     	b.le	0x8e20 <aw_i2c_probe+0x3c4>
    8dec: 52924be8     	mov	w8, #0x925f             // =37471
    8df0: 6b08033f     	cmp	w25, w8
    8df4: 5400028c     	b.gt	0x8e44 <aw_i2c_probe+0x3e8>
    8df8: 528e2fe8     	mov	w8, #0x717f             // =29055
    8dfc: 6b08033f     	cmp	w25, w8
    8e00: 5400044c     	b.gt	0x8e88 <aw_i2c_probe+0x42c>
    8e04: 528e2e08     	mov	w8, #0x7170             // =29040
    8e08: 6b08033f     	cmp	w25, w8
    8e0c: 54001c80     	b.eq	0x919c <aw_i2c_probe+0x740>
    8e10: 528e2e28     	mov	w8, #0x7171             // =29041
    8e14: 6b08033f     	cmp	w25, w8
    8e18: 54ffed61     	b.ne	0x8bc4 <aw_i2c_probe+0x168>
    8e1c: 140000f7     	b	0x91f8 <aw_i2c_probe+0x79c>
    8e20: 71001b3f     	cmp	w25, #0x6
    8e24: 5400024d     	b.le	0x8e6c <aw_i2c_probe+0x410>
    8e28: 71025b3f     	cmp	w25, #0x96
    8e2c: 540004ac     	b.gt	0x8ec0 <aw_i2c_probe+0x464>
    8e30: 71001f3f     	cmp	w25, #0x7
    8e34: 54001f80     	b.eq	0x9224 <aw_i2c_probe+0x7c8>
    8e38: 7102573f     	cmp	w25, #0x95
    8e3c: 54ffec41     	b.ne	0x8bc4 <aw_i2c_probe+0x168>
    8e40: 140000e2     	b	0x91c8 <aw_i2c_probe+0x76c>
    8e44: 52924fe8     	mov	w8, #0x927f             // =37503
    8e48: 6b08033f     	cmp	w25, w8
    8e4c: 540002cc     	b.gt	0x8ea4 <aw_i2c_probe+0x448>
    8e50: 52924c08     	mov	w8, #0x9260             // =37472
    8e54: 6b08033f     	cmp	w25, w8
    8e58: 54001120     	b.eq	0x907c <aw_i2c_probe+0x620>
    8e5c: 52924e08     	mov	w8, #0x9270             // =37488
    8e60: 6b08033f     	cmp	w25, w8
    8e64: 54ffeb01     	b.ne	0x8bc4 <aw_i2c_probe+0x168>
    8e68: 14000107     	b	0x9284 <aw_i2c_probe+0x828>
    8e6c: 7100133f     	cmp	w25, #0x4
    8e70: 54001640     	b.eq	0x9138 <aw_i2c_probe+0x6dc>
    8e74: 7100173f     	cmp	w25, #0x5
    8e78: 540017a0     	b.eq	0x916c <aw_i2c_probe+0x710>
    8e7c: 71001b3f     	cmp	w25, #0x6
    8e80: 54ffea21     	b.ne	0x8bc4 <aw_i2c_probe+0x168>
    8e84: 14000093     	b	0x90d0 <aw_i2c_probe+0x674>
    8e88: 528e3008     	mov	w8, #0x7180             // =29056
    8e8c: 6b08033f     	cmp	w25, w8
    8e90: 540010a0     	b.eq	0x90a4 <aw_i2c_probe+0x648>
    8e94: 52924a08     	mov	w8, #0x9250             // =37456
    8e98: 6b08033f     	cmp	w25, w8
    8e9c: 54ffe941     	b.ne	0x8bc4 <aw_i2c_probe+0x168>
    8ea0: 14000103     	b	0x92ac <aw_i2c_probe+0x850>
    8ea4: 52925008     	mov	w8, #0x9280             // =37504
    8ea8: 6b08033f     	cmp	w25, w8
    8eac: 54002140     	b.eq	0x92d4 <aw_i2c_probe+0x878>
    8eb0: 52927008     	mov	w8, #0x9380             // =37760
    8eb4: 6b08033f     	cmp	w25, w8
    8eb8: 54ffe861     	b.ne	0x8bc4 <aw_i2c_probe+0x168>
    8ebc: 140000e7     	b	0x9258 <aw_i2c_probe+0x7fc>
    8ec0: 71025f3f     	cmp	w25, #0x97
    8ec4: 54001200     	b.eq	0x9104 <aw_i2c_probe+0x6a8>
    8ec8: 528e2a08     	mov	w8, #0x7150             // =29008
    8ecc: 6b08033f     	cmp	w25, w8
    8ed0: 54ffe7a1     	b.ne	0x8bc4 <aw_i2c_probe+0x168>
    8ed4: b9004a68     	str	w8, [x19, #0x48]
    8ed8: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008ed8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x237e
    8edc: 91000000     	add	x0, x0, #0x0
		0000000000008edc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x237e
    8ee0: 3900127f     	strb	wzr, [x19, #0x4]
    8ee4: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008ee4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    8ee8: 91000021     	add	x1, x1, #0x0
		0000000000008ee8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    8eec: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008eec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    8ef0: 91000063     	add	x3, x3, #0x0
		0000000000008ef0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    8ef4: 52803d02     	mov	w2, #0x1e8              // =488
    8ef8: 14000100     	b	0x92f8 <aw_i2c_probe+0x89c>
    8efc: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008efc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dda
    8f00: 91000021     	add	x1, x1, #0x0
		0000000000008f00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dda
    8f04: aa1503e0     	mov	x0, x21
    8f08: 2a1f03e2     	mov	w2, wzr
    8f0c: 94000000     	bl	0x8f0c <aw_i2c_probe+0x4b0>
		0000000000008f0c:  R_AARCH64_CALL26	of_get_named_gpio
    8f10: b9005e60     	str	w0, [x19, #0x5c]
    8f14: 36f80260     	tbz	w0, #0x1f, 0x8f60 <aw_i2c_probe+0x504>
    8f18: 90000015     	adrp	x21, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008f18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    8f1c: 910002b5     	add	x21, x21, #0x0
		0000000000008f1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    8f20: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008f20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x343e
    8f24: 91000000     	add	x0, x0, #0x0
		0000000000008f24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x343e
    8f28: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008f28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2de6
    8f2c: 91000063     	add	x3, x3, #0x0
		0000000000008f2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2de6
    8f30: aa1503e1     	mov	x1, x21
    8f34: 52802a02     	mov	w2, #0x150              // =336
    8f38: 94000000     	bl	0x8f38 <aw_i2c_probe+0x4dc>
		0000000000008f38:  R_AARCH64_CALL26	_printk
    8f3c: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008f3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e46
    8f40: 91000000     	add	x0, x0, #0x0
		0000000000008f40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e46
    8f44: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008f44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2668
    8f48: 91000063     	add	x3, x3, #0x0
		0000000000008f48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2668
    8f4c: aa1503e1     	mov	x1, x21
    8f50: 52821f42     	mov	w2, #0x10fa             // =4346
    8f54: 94000000     	bl	0x8f54 <aw_i2c_probe+0x4f8>
		0000000000008f54:  R_AARCH64_CALL26	_printk
    8f58: 12800015     	mov	w21, #-0x1              // =-1
    8f5c: 14000139     	b	0x9440 <aw_i2c_probe+0x9e4>
    8f60: 2a0003e4     	mov	w4, w0
    8f64: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008f64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20f0
    8f68: 91000000     	add	x0, x0, #0x0
		0000000000008f68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20f0
    8f6c: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008f6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    8f70: 91000021     	add	x1, x1, #0x0
		0000000000008f70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    8f74: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008f74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2de6
    8f78: 91000063     	add	x3, x3, #0x0
		0000000000008f78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2de6
    8f7c: 52802a62     	mov	w2, #0x153              // =339
    8f80: 94000000     	bl	0x8f80 <aw_i2c_probe+0x524>
		0000000000008f80:  R_AARCH64_CALL26	_printk
    8f84: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008f84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x411a
    8f88: 91000021     	add	x1, x1, #0x0
		0000000000008f88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x411a
    8f8c: aa1503e0     	mov	x0, x21
    8f90: 2a1f03e2     	mov	w2, wzr
    8f94: 94000000     	bl	0x8f94 <aw_i2c_probe+0x538>
		0000000000008f94:  R_AARCH64_CALL26	of_get_named_gpio
    8f98: b9005260     	str	w0, [x19, #0x50]
    8f9c: 36f803c0     	tbz	w0, #0x1f, 0x9014 <aw_i2c_probe+0x5b8>
    8fa0: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008fa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b96
    8fa4: 91000000     	add	x0, x0, #0x0
		0000000000008fa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b96
    8fa8: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008fa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    8fac: 91000021     	add	x1, x1, #0x0
		0000000000008fac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    8fb0: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008fb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2de6
    8fb4: 91000063     	add	x3, x3, #0x0
		0000000000008fb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2de6
    8fb8: 52802ac2     	mov	w2, #0x156              // =342
    8fbc: 94000000     	bl	0x8fbc <aw_i2c_probe+0x560>
		0000000000008fbc:  R_AARCH64_CALL26	_printk
    8fc0: 1400001e     	b	0x9038 <aw_i2c_probe+0x5dc>
    8fc4: 2a0003f5     	mov	w21, w0
    8fc8: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008fc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e6c
    8fcc: 91000000     	add	x0, x0, #0x0
		0000000000008fcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e6c
    8fd0: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008fd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    8fd4: 91000021     	add	x1, x1, #0x0
		0000000000008fd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    8fd8: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008fd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2668
    8fdc: 91000063     	add	x3, x3, #0x0
		0000000000008fdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2668
    8fe0: 528220c2     	mov	w2, #0x1106             // =4358
    8fe4: 94000000     	bl	0x8fe4 <aw_i2c_probe+0x588>
		0000000000008fe4:  R_AARCH64_CALL26	_printk
    8fe8: 14000116     	b	0x9440 <aw_i2c_probe+0x9e4>
    8fec: 2a0003f5     	mov	w21, w0
    8ff0: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008ff0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4886
    8ff4: 91000000     	add	x0, x0, #0x0
		0000000000008ff4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4886
    8ff8: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008ff8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    8ffc: 91000021     	add	x1, x1, #0x0
		0000000000008ffc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9000: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009000:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2668
    9004: 91000063     	add	x3, x3, #0x0
		0000000000009004:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2668
    9008: 52822522     	mov	w2, #0x1129             // =4393
    900c: 94000000     	bl	0x900c <aw_i2c_probe+0x5b0>
		000000000000900c:  R_AARCH64_CALL26	_printk
    9010: 14000109     	b	0x9434 <aw_i2c_probe+0x9d8>
    9014: 2a0003e4     	mov	w4, w0
    9018: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4438
    901c: 91000000     	add	x0, x0, #0x0
		000000000000901c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4438
    9020: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009020:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9024: 91000021     	add	x1, x1, #0x0
		0000000000009024:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9028: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2de6
    902c: 91000063     	add	x3, x3, #0x0
		000000000000902c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2de6
    9030: 52802b02     	mov	w2, #0x158              // =344
    9034: 94000000     	bl	0x9034 <aw_i2c_probe+0x5d8>
		0000000000009034:  R_AARCH64_CALL26	_printk
    9038: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009038:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4666
    903c: 91000021     	add	x1, x1, #0x0
		000000000000903c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4666
    9040: 91118262     	add	x2, x19, #0x460
    9044: aa1503e0     	mov	x0, x21
    9048: 52800023     	mov	w3, #0x1                // =1
    904c: aa1f03e4     	mov	x4, xzr
    9050: 94000000     	bl	0x9050 <aw_i2c_probe+0x5f4>
		0000000000009050:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    9054: 36ffd800     	tbz	w0, #0x1f, 0x8b54 <aw_i2c_probe+0xf8>
    9058: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009058:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ba8
    905c: 91000000     	add	x0, x0, #0x0
		000000000000905c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ba8
    9060: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009060:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9064: 91000021     	add	x1, x1, #0x0
		0000000000009064:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9068: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009068:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2de6
    906c: 91000063     	add	x3, x3, #0x0
		000000000000906c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2de6
    9070: 52802b62     	mov	w2, #0x15b              // =347
    9074: 94000000     	bl	0x9074 <aw_i2c_probe+0x618>
		0000000000009074:  R_AARCH64_CALL26	_printk
    9078: 17fffeb7     	b	0x8b54 <aw_i2c_probe+0xf8>
    907c: b9004a68     	str	w8, [x19, #0x48]
    9080: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009080:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bbe
    9084: 91000000     	add	x0, x0, #0x0
		0000000000009084:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bbe
    9088: 39005a7f     	strb	wzr, [x19, #0x16]
    908c: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		000000000000908c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9090: 91000021     	add	x1, x1, #0x0
		0000000000009090:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9094: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    9098: 91000063     	add	x3, x3, #0x0
		0000000000009098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    909c: 52804022     	mov	w2, #0x201              // =513
    90a0: 14000096     	b	0x92f8 <aw_i2c_probe+0x89c>
    90a4: 52800029     	mov	w9, #0x1                // =1
    90a8: b9004a68     	str	w8, [x19, #0x48]
    90ac: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000090ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24d2
    90b0: 91000000     	add	x0, x0, #0x0
		00000000000090b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24d2
    90b4: 39001269     	strb	w9, [x19, #0x4]
    90b8: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000090b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    90bc: 91000021     	add	x1, x1, #0x0
		00000000000090bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    90c0: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000090c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    90c4: 91000063     	add	x3, x3, #0x0
		00000000000090c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    90c8: 52803ee2     	mov	w2, #0x1f7              // =503
    90cc: 1400008b     	b	0x92f8 <aw_i2c_probe+0x89c>
    90d0: 528000c8     	mov	w8, #0x6                // =6
    90d4: 52800029     	mov	w9, #0x1                // =1
    90d8: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000090d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d28
    90dc: 91000000     	add	x0, x0, #0x0
		00000000000090dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d28
    90e0: b9004a68     	str	w8, [x19, #0x48]
    90e4: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000090e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    90e8: 91000021     	add	x1, x1, #0x0
		00000000000090e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    90ec: 39005a69     	strb	w9, [x19, #0x16]
    90f0: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000090f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    90f4: 91000063     	add	x3, x3, #0x0
		00000000000090f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    90f8: 39001269     	strb	w9, [x19, #0x4]
    90fc: 52803c62     	mov	w2, #0x1e3              // =483
    9100: 1400007e     	b	0x92f8 <aw_i2c_probe+0x89c>
    9104: 528012e8     	mov	w8, #0x97               // =151
    9108: 52800029     	mov	w9, #0x1                // =1
    910c: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		000000000000910c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28ee
    9110: 91000000     	add	x0, x0, #0x0
		0000000000009110:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28ee
    9114: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009114:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9118: 91000021     	add	x1, x1, #0x0
		0000000000009118:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    911c: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		000000000000911c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    9120: 91000063     	add	x3, x3, #0x0
		0000000000009120:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    9124: 52803962     	mov	w2, #0x1cb              // =459
    9128: b9004a68     	str	w8, [x19, #0x48]
    912c: 39005a69     	strb	w9, [x19, #0x16]
    9130: 3900127f     	strb	wzr, [x19, #0x4]
    9134: 14000071     	b	0x92f8 <aw_i2c_probe+0x89c>
    9138: 52800088     	mov	w8, #0x4                // =4
    913c: 52800029     	mov	w9, #0x1                // =1
    9140: 3900127f     	strb	wzr, [x19, #0x4]
    9144: b9004a68     	str	w8, [x19, #0x48]
    9148: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009148:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x466c
    914c: 91000000     	add	x0, x0, #0x0
		000000000000914c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x466c
    9150: 39005a69     	strb	w9, [x19, #0x16]
    9154: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009154:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9158: 91000021     	add	x1, x1, #0x0
		0000000000009158:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    915c: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		000000000000915c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    9160: 91000063     	add	x3, x3, #0x0
		0000000000009160:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    9164: 52803ae2     	mov	w2, #0x1d7              // =471
    9168: 14000064     	b	0x92f8 <aw_i2c_probe+0x89c>
    916c: 528000a8     	mov	w8, #0x5                // =5
    9170: 39005a7f     	strb	wzr, [x19, #0x16]
    9174: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009174:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4124
    9178: 91000000     	add	x0, x0, #0x0
		0000000000009178:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4124
    917c: b9004a68     	str	w8, [x19, #0x48]
    9180: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009180:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9184: 91000021     	add	x1, x1, #0x0
		0000000000009184:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9188: 3900127f     	strb	wzr, [x19, #0x4]
    918c: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		000000000000918c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    9190: 91000063     	add	x3, x3, #0x0
		0000000000009190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    9194: 52803a22     	mov	w2, #0x1d1              // =465
    9198: 14000058     	b	0x92f8 <aw_i2c_probe+0x89c>
    919c: 52800029     	mov	w9, #0x1                // =1
    91a0: b9004a68     	str	w8, [x19, #0x48]
    91a4: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000091a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3120
    91a8: 91000000     	add	x0, x0, #0x0
		00000000000091a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3120
    91ac: 39001269     	strb	w9, [x19, #0x4]
    91b0: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000091b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    91b4: 91000021     	add	x1, x1, #0x0
		00000000000091b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    91b8: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000091b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    91bc: 91000063     	add	x3, x3, #0x0
		00000000000091bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    91c0: 52803da2     	mov	w2, #0x1ed              // =493
    91c4: 1400004d     	b	0x92f8 <aw_i2c_probe+0x89c>
    91c8: 528012a8     	mov	w8, #0x95               // =149
    91cc: 39005a7f     	strb	wzr, [x19, #0x16]
    91d0: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000091d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x47da
    91d4: 91000000     	add	x0, x0, #0x0
		00000000000091d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x47da
    91d8: b9004a68     	str	w8, [x19, #0x48]
    91dc: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000091dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    91e0: 91000021     	add	x1, x1, #0x0
		00000000000091e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    91e4: 3900127f     	strb	wzr, [x19, #0x4]
    91e8: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000091e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    91ec: 91000063     	add	x3, x3, #0x0
		00000000000091ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    91f0: 528038a2     	mov	w2, #0x1c5              // =453
    91f4: 14000041     	b	0x92f8 <aw_i2c_probe+0x89c>
    91f8: 52800029     	mov	w9, #0x1                // =1
    91fc: b9004a68     	str	w8, [x19, #0x48]
    9200: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009200:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38b6
    9204: 91000000     	add	x0, x0, #0x0
		0000000000009204:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38b6
    9208: 39001269     	strb	w9, [x19, #0x4]
    920c: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		000000000000920c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9210: 91000021     	add	x1, x1, #0x0
		0000000000009210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9214: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009214:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    9218: 91000063     	add	x3, x3, #0x0
		0000000000009218:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    921c: 52803e42     	mov	w2, #0x1f2              // =498
    9220: 14000036     	b	0x92f8 <aw_i2c_probe+0x89c>
    9224: 528000e8     	mov	w8, #0x7                // =7
    9228: 52800029     	mov	w9, #0x1                // =1
    922c: 39005a7f     	strb	wzr, [x19, #0x16]
    9230: b9004a68     	str	w8, [x19, #0x48]
    9234: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009234:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3466
    9238: 91000000     	add	x0, x0, #0x0
		0000000000009238:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3466
    923c: 39001269     	strb	w9, [x19, #0x4]
    9240: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009240:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9244: 91000021     	add	x1, x1, #0x0
		0000000000009244:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9248: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009248:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    924c: 91000063     	add	x3, x3, #0x0
		000000000000924c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    9250: 52803ba2     	mov	w2, #0x1dd              // =477
    9254: 14000029     	b	0x92f8 <aw_i2c_probe+0x89c>
    9258: 52800809     	mov	w9, #0x40               // =64
    925c: b9004a68     	str	w8, [x19, #0x48]
    9260: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009260:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f5a
    9264: 91000000     	add	x0, x0, #0x0
		0000000000009264:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f5a
    9268: 391bce69     	strb	w9, [x19, #0x6f3]
    926c: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		000000000000926c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9270: 91000021     	add	x1, x1, #0x0
		0000000000009270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9274: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009274:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    9278: 91000063     	add	x3, x3, #0x0
		0000000000009278:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    927c: 52804202     	mov	w2, #0x210              // =528
    9280: 1400001e     	b	0x92f8 <aw_i2c_probe+0x89c>
    9284: b9004a68     	str	w8, [x19, #0x48]
    9288: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36f2
    928c: 91000000     	add	x0, x0, #0x0
		000000000000928c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36f2
    9290: 39005a7f     	strb	wzr, [x19, #0x16]
    9294: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9298: 91000021     	add	x1, x1, #0x0
		0000000000009298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    929c: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		000000000000929c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    92a0: 91000063     	add	x3, x3, #0x0
		00000000000092a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    92a4: 528040c2     	mov	w2, #0x206              // =518
    92a8: 14000014     	b	0x92f8 <aw_i2c_probe+0x89c>
    92ac: b9004a68     	str	w8, [x19, #0x48]
    92b0: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000092b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38da
    92b4: 91000000     	add	x0, x0, #0x0
		00000000000092b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38da
    92b8: 39005a7f     	strb	wzr, [x19, #0x16]
    92bc: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000092bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    92c0: 91000021     	add	x1, x1, #0x0
		00000000000092c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    92c4: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000092c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    92c8: 91000063     	add	x3, x3, #0x0
		00000000000092c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    92cc: 52803f82     	mov	w2, #0x1fc              // =508
    92d0: 1400000a     	b	0x92f8 <aw_i2c_probe+0x89c>
    92d4: b9004a68     	str	w8, [x19, #0x48]
    92d8: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000092d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3be2
    92dc: 91000000     	add	x0, x0, #0x0
		00000000000092dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3be2
    92e0: 39005a7f     	strb	wzr, [x19, #0x16]
    92e4: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000092e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    92e8: 91000021     	add	x1, x1, #0x0
		00000000000092e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    92ec: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000092ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f32
    92f0: 91000063     	add	x3, x3, #0x0
		00000000000092f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f32
    92f4: 52804162     	mov	w2, #0x20b              // =523
    92f8: 94000000     	bl	0x92f8 <aw_i2c_probe+0x89c>
		00000000000092f8:  R_AARCH64_CALL26	_printk
    92fc: 52801548     	mov	w8, #0xaa               // =170
    9300: 910023e2     	add	x2, sp, #0x8
    9304: aa1303e0     	mov	x0, x19
    9308: 2a1f03e1     	mov	w1, wzr
    930c: 52800023     	mov	w3, #0x1                // =1
    9310: 390023e8     	strb	w8, [sp, #0x8]
    9314: 94000000     	bl	0x9314 <aw_i2c_probe+0x8b8>
		0000000000009314:  R_AARCH64_CALL26	i2c_w_bytes
    9318: 52817700     	mov	w0, #0xbb8              // =3000
    931c: 5281b581     	mov	w1, #0xdac              // =3500
    9320: 52800042     	mov	w2, #0x2                // =2
    9324: 94000000     	bl	0x9324 <aw_i2c_probe+0x8c8>
		0000000000009324:  R_AARCH64_CALL26	usleep_range_state
    9328: b9404a68     	ldr	w8, [x19, #0x48]
    932c: 7100011f     	cmp	w8, #0x0
    9330: 5400022c     	b.gt	0x9374 <aw_i2c_probe+0x918>
    9334: 90000015     	adrp	x21, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009334:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9338: 910002b5     	add	x21, x21, #0x0
		0000000000009338:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    933c: 90000016     	adrp	x22, 0x9000 <aw_i2c_probe+0x5a4>
		000000000000933c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2df4
    9340: 910002d6     	add	x22, x22, #0x0
		0000000000009340:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2df4
    9344: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2860
    9348: 91000000     	add	x0, x0, #0x0
		0000000000009348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2860
    934c: aa1503e1     	mov	x1, x21
    9350: 528043e2     	mov	w2, #0x21f              // =543
    9354: aa1603e3     	mov	x3, x22
    9358: 94000000     	bl	0x9358 <aw_i2c_probe+0x8fc>
		0000000000009358:  R_AARCH64_CALL26	_printk
    935c: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		000000000000935c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x211a
    9360: 91000000     	add	x0, x0, #0x0
		0000000000009360:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x211a
    9364: aa1503e1     	mov	x1, x21
    9368: 52804402     	mov	w2, #0x220              // =544
    936c: aa1603e3     	mov	x3, x22
    9370: 14000023     	b	0x93fc <aw_i2c_probe+0x9a0>
    9374: 52927009     	mov	w9, #0x9380             // =37760
    9378: 6b09011f     	cmp	w8, w9
    937c: 54000321     	b.ne	0x93e0 <aw_i2c_probe+0x984>
    9380: 90000008     	adrp	x8, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009380:  R_AARCH64_ADR_PREL_PG_HI21	aw8693x_func_list
    9384: 91000108     	add	x8, x8, #0x0
		0000000000009384:  R_AARCH64_ADD_ABS_LO12_NC	aw8693x_func_list
    9388: aa1303e0     	mov	x0, x19
    938c: f9401109     	ldr	x9, [x8, #0x20]
    9390: f902e668     	str	x8, [x19, #0x5c8]
    9394: b85fc130     	ldur	w16, [x9, #-0x4]
    9398: 729e3e11     	movk	w17, #0xf1f0
    939c: 72aa2591     	movk	w17, #0x512c, lsl #16
    93a0: 6b11021f     	cmp	w16, w17
    93a4: 54000040     	b.eq	0x93ac <aw_i2c_probe+0x950>
    93a8: d4304520     	brk	#0x8229
    93ac: d63f0120     	blr	x9
    93b0: 36f80520     	tbz	w0, #0x1f, 0x9454 <aw_i2c_probe+0x9f8>
    93b4: 90000008     	adrp	x8, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000093b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2676
    93b8: 91000108     	add	x8, x8, #0x0
		00000000000093b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2676
    93bc: 2a0003e4     	mov	w4, w0
    93c0: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000093c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    93c4: 91000021     	add	x1, x1, #0x0
		00000000000093c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    93c8: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000093c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2668
    93cc: 91000063     	add	x3, x3, #0x0
		00000000000093cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2668
    93d0: aa0803e0     	mov	x0, x8
    93d4: 52822962     	mov	w2, #0x114b             // =4427
    93d8: 2a0403f5     	mov	w21, w4
    93dc: 14000012     	b	0x9424 <aw_i2c_probe+0x9c8>
    93e0: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000093e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2542
    93e4: 91000000     	add	x0, x0, #0x0
		00000000000093e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2542
    93e8: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000093e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    93ec: 91000021     	add	x1, x1, #0x0
		00000000000093ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    93f0: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000093f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2df4
    93f4: 91000063     	add	x3, x3, #0x0
		00000000000093f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2df4
    93f8: 52804802     	mov	w2, #0x240              // =576
    93fc: 94000000     	bl	0x93fc <aw_i2c_probe+0x9a0>
		00000000000093fc:  R_AARCH64_CALL26	_printk
    9400: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009400:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x430a
    9404: 91000000     	add	x0, x0, #0x0
		0000000000009404:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x430a
    9408: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009408:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    940c: 91000021     	add	x1, x1, #0x0
		000000000000940c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9410: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009410:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2668
    9414: 91000063     	add	x3, x3, #0x0
		0000000000009414:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2668
    9418: 52822882     	mov	w2, #0x1144             // =4420
    941c: 128002a4     	mov	w4, #-0x16              // =-22
    9420: 128002b5     	mov	w21, #-0x16             // =-22
    9424: 94000000     	bl	0x9424 <aw_i2c_probe+0x9c8>
		0000000000009424:  R_AARCH64_CALL26	_printk
    9428: b9405260     	ldr	w0, [x19, #0x50]
    942c: 37f80040     	tbnz	w0, #0x1f, 0x9434 <aw_i2c_probe+0x9d8>
    9430: 94000000     	bl	0x9430 <aw_i2c_probe+0x9d4>
		0000000000009430:  R_AARCH64_CALL26	gpio_free
    9434: b9405e60     	ldr	w0, [x19, #0x5c]
    9438: 37f80040     	tbnz	w0, #0x1f, 0x9440 <aw_i2c_probe+0x9e4>
    943c: 94000000     	bl	0x943c <aw_i2c_probe+0x9e0>
		000000000000943c:  R_AARCH64_CALL26	gpio_free
    9440: aa1403e0     	mov	x0, x20
    9444: aa1303e1     	mov	x1, x19
    9448: 94000000     	bl	0x9448 <aw_i2c_probe+0x9ec>
		0000000000009448:  R_AARCH64_CALL26	devm_kfree
    944c: 2a1503e0     	mov	w0, w21
    9450: 17fffda6     	b	0x8ae8 <aw_i2c_probe+0x8c>
    9454: f942e668     	ldr	x8, [x19, #0x5c8]
    9458: aa1403e0     	mov	x0, x20
    945c: aa1303e1     	mov	x1, x19
    9460: aa1503e2     	mov	x2, x21
    9464: f9407108     	ldr	x8, [x8, #0xe0]
    9468: b85fc110     	ldur	w16, [x8, #-0x4]
    946c: 729a6551     	movk	w17, #0xd32a
    9470: 72a5cef1     	movk	w17, #0x2e77, lsl #16
    9474: 6b11021f     	cmp	w16, w17
    9478: 54000040     	b.eq	0x9480 <aw_i2c_probe+0xa24>
    947c: d4304500     	brk	#0x8228
    9480: d63f0100     	blr	x8
    9484: aa1403e0     	mov	x0, x20
    9488: aa1303e1     	mov	x1, x19
    948c: 9400015e     	bl	0x9a04 <irq_handle+0x12c>
		000000000000948c:  R_AARCH64_CALL26	irq_config
    9490: 35000420     	cbnz	w0, 0x9514 <aw_i2c_probe+0xab8>
    9494: aa1303e0     	mov	x0, x19
    9498: 9400019b     	bl	0x9b04 <irq_handle+0x22c>
		0000000000009498:  R_AARCH64_CALL26	vibrator_init
    949c: aa1303e0     	mov	x0, x19
    94a0: 94000201     	bl	0x9ca4 <irq_handle+0x3cc>
		00000000000094a0:  R_AARCH64_CALL26	haptic_init
    94a4: 52800141     	mov	w1, #0xa                // =10
    94a8: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000094a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ba4
    94ac: 91000000     	add	x0, x0, #0x0
		00000000000094ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ba4
    94b0: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000094b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d0a
    94b4: 91000063     	add	x3, x3, #0x0
		00000000000094b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d0a
    94b8: 72a000c1     	movk	w1, #0x6, lsl #16
    94bc: 52800022     	mov	w2, #0x1                // =1
    94c0: 94000000     	bl	0x94c0 <aw_i2c_probe+0xa64>
		00000000000094c0:  R_AARCH64_CALL26	alloc_workqueue
    94c4: f9022660     	str	x0, [x19, #0x448]
    94c8: b50003c0     	cbnz	x0, 0x9540 <aw_i2c_probe+0xae4>
    94cc: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000094cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28b0
    94d0: 91000000     	add	x0, x0, #0x0
		00000000000094d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28b0
    94d4: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000094d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    94d8: 91000021     	add	x1, x1, #0x0
		00000000000094d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    94dc: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000094dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2668
    94e0: 91000063     	add	x3, x3, #0x0
		00000000000094e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2668
    94e4: 52822da2     	mov	w2, #0x116d             // =4461
    94e8: 94000000     	bl	0x94e8 <aw_i2c_probe+0xa8c>
		00000000000094e8:  R_AARCH64_CALL26	_printk
    94ec: 2a1f03f5     	mov	w21, wzr
    94f0: 17ffffce     	b	0x9428 <aw_i2c_probe+0x9cc>
    94f4: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000094f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2352
    94f8: 91000000     	add	x0, x0, #0x0
		00000000000094f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2352
    94fc: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000094fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9500: 91000021     	add	x1, x1, #0x0
		0000000000009500:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9504: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009504:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2668
    9508: 91000063     	add	x3, x3, #0x0
		0000000000009508:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2668
    950c: 528227a2     	mov	w2, #0x113d             // =4413
    9510: 17ffffc3     	b	0x941c <aw_i2c_probe+0x9c0>
    9514: 90000008     	adrp	x8, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009514:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c6
    9518: 91000108     	add	x8, x8, #0x0
		0000000000009518:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c6
    951c: 2a0003e4     	mov	w4, w0
    9520: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009520:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9524: 91000021     	add	x1, x1, #0x0
		0000000000009524:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9528: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009528:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2668
    952c: 91000063     	add	x3, x3, #0x0
		000000000000952c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2668
    9530: aa0803e0     	mov	x0, x8
    9534: 52822b22     	mov	w2, #0x1159             // =4441
    9538: 2a0403f5     	mov	w21, w4
    953c: 17ffffba     	b	0x9424 <aw_i2c_probe+0x9c8>
    9540: f942e668     	ldr	x8, [x19, #0x5c8]
    9544: aa1303e0     	mov	x0, x19
    9548: f9400508     	ldr	x8, [x8, #0x8]
    954c: b85fc110     	ldur	w16, [x8, #-0x4]
    9550: 729e3e11     	movk	w17, #0xf1f0
    9554: 72aa2591     	movk	w17, #0x512c, lsl #16
    9558: 6b11021f     	cmp	w16, w17
    955c: 54000040     	b.eq	0x9564 <aw_i2c_probe+0xb08>
    9560: d4304500     	brk	#0x8228
    9564: d63f0100     	blr	x8
    9568: aa1303e0     	mov	x0, x19
    956c: 9400026b     	bl	0x9f18 <vibrator_work_routine+0x260>
		000000000000956c:  R_AARCH64_CALL26	ram_work_init
    9570: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009570:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36c2
    9574: 91000000     	add	x0, x0, #0x0
		0000000000009574:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36c2
    9578: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009578:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    957c: 91000021     	add	x1, x1, #0x0
		000000000000957c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9580: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009580:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2668
    9584: 91000063     	add	x3, x3, #0x0
		0000000000009584:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2668
    9588: 52822e42     	mov	w2, #0x1172             // =4466
    958c: 94000000     	bl	0x958c <aw_i2c_probe+0xb30>
		000000000000958c:  R_AARCH64_CALL26	_printk
    9590: d503201f     	nop
    9594: 5287d000     	mov	w0, #0x3e80             // =16000
    9598: 52819801     	mov	w1, #0xcc0              // =3264
    959c: 94000000     	bl	0x959c <aw_i2c_probe+0xb40>
		000000000000959c:  R_AARCH64_CALL26	__kmalloc_large_noprof
    95a0: f9030660     	str	x0, [x19, #0x608]
    95a4: b4001480     	cbz	x0, 0x9834 <aw_i2c_probe+0xdd8>
    95a8: d503201f     	nop
    95ac: 52819800     	mov	w0, #0xcc0              // =3264
    95b0: 52800041     	mov	w1, #0x2                // =2
    95b4: 94000000     	bl	0x95b4 <aw_i2c_probe+0xb58>
		00000000000095b4:  R_AARCH64_CALL26	get_free_pages_noprof
    95b8: f9030a60     	str	x0, [x19, #0x610]
    95bc: b40015c0     	cbz	x0, 0x9874 <aw_i2c_probe+0xe18>
    95c0: d378dc08     	lsl	x8, x0, #8
    95c4: d2c01009     	mov	x9, #0x8000000000       // =549755813888
    95c8: 8b882128     	add	x8, x9, x8, asr #8
    95cc: d346fd08     	lsr	x8, x8, #6
    95d0: 927acd08     	and	x8, x8, #0x3ffffffffffffc0
    95d4: 140000b7     	b	0x98b0 <aw_i2c_probe+0xe54>
    95d8: b25f7be9     	mov	x9, #-0x200000000       // =-8589934592
    95dc: f2b80009     	movk	x9, #0xc000, lsl #16
    95e0: 8b090108     	add	x8, x8, x9
    95e4: 52880009     	mov	w9, #0x4000             // =16384
    95e8: f829311f     	stset	x9, [x8]
    95ec: f9430a68     	ldr	x8, [x19, #0x610]
    95f0: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000095f0:  R_AARCH64_ADR_PREL_PG_HI21	richtap_misc
    95f4: 91000000     	add	x0, x0, #0x0
		00000000000095f4:  R_AARCH64_ADD_ABS_LO12_NC	richtap_misc
    95f8: 91100109     	add	x9, x8, #0x400
    95fc: f9000509     	str	x9, [x8, #0x8]
    9600: f9430a69     	ldr	x9, [x19, #0x610]
    9604: 9120012a     	add	x10, x9, #0x800
    9608: f902050a     	str	x10, [x8, #0x408]
    960c: f9430a68     	ldr	x8, [x19, #0x610]
    9610: 9130010a     	add	x10, x8, #0xc00
    9614: f904052a     	str	x10, [x9, #0x808]
    9618: f9430a69     	ldr	x9, [x19, #0x610]
    961c: 9140052a     	add	x10, x9, #0x1, lsl #12  // =0x1000
    9620: f906050a     	str	x10, [x8, #0xc08]
    9624: 5282800a     	mov	w10, #0x1400            // =5120
    9628: f9430a68     	ldr	x8, [x19, #0x610]
    962c: 8b0a010a     	add	x10, x8, x10
    9630: f908052a     	str	x10, [x9, #0x1008]
    9634: 5283000a     	mov	w10, #0x1800            // =6144
    9638: f9430a69     	ldr	x9, [x19, #0x610]
    963c: 8b0a012a     	add	x10, x9, x10
    9640: f90a050a     	str	x10, [x8, #0x1408]
    9644: 5283800a     	mov	w10, #0x1c00            // =7168
    9648: f9430a68     	ldr	x8, [x19, #0x610]
    964c: 8b0a010a     	add	x10, x8, x10
    9650: f90c052a     	str	x10, [x9, #0x1808]
    9654: f9430a69     	ldr	x9, [x19, #0x610]
    9658: 9140092a     	add	x10, x9, #0x2, lsl #12  // =0x2000
    965c: f90e050a     	str	x10, [x8, #0x1c08]
    9660: 5284800a     	mov	w10, #0x2400            // =9216
    9664: f9430a68     	ldr	x8, [x19, #0x610]
    9668: 8b0a010a     	add	x10, x8, x10
    966c: f910052a     	str	x10, [x9, #0x2008]
    9670: 5285000a     	mov	w10, #0x2800            // =10240
    9674: f9430a69     	ldr	x9, [x19, #0x610]
    9678: 8b0a012a     	add	x10, x9, x10
    967c: f912050a     	str	x10, [x8, #0x2408]
    9680: 5285800a     	mov	w10, #0x2c00            // =11264
    9684: f9430a68     	ldr	x8, [x19, #0x610]
    9688: 8b0a010a     	add	x10, x8, x10
    968c: f914052a     	str	x10, [x9, #0x2808]
    9690: f9430a69     	ldr	x9, [x19, #0x610]
    9694: 91400d2a     	add	x10, x9, #0x3, lsl #12  // =0x3000
    9698: f916050a     	str	x10, [x8, #0x2c08]
    969c: 5286800a     	mov	w10, #0x3400            // =13312
    96a0: f9430a68     	ldr	x8, [x19, #0x610]
    96a4: 8b0a010a     	add	x10, x8, x10
    96a8: f918052a     	str	x10, [x9, #0x3008]
    96ac: 5287000a     	mov	w10, #0x3800            // =14336
    96b0: f9430a69     	ldr	x9, [x19, #0x610]
    96b4: 8b0a012a     	add	x10, x9, x10
    96b8: f91a050a     	str	x10, [x8, #0x3408]
    96bc: 5287800a     	mov	w10, #0x3c00            // =15360
    96c0: f9430a68     	ldr	x8, [x19, #0x610]
    96c4: 8b0a010a     	add	x10, x8, x10
    96c8: f91c052a     	str	x10, [x9, #0x3808]
    96cc: f9430a69     	ldr	x9, [x19, #0x610]
    96d0: f91e0509     	str	x9, [x8, #0x3c08]
    96d4: f9430a68     	ldr	x8, [x19, #0x610]
    96d8: f9400509     	ldr	x9, [x8, #0x8]
    96dc: 3900051f     	strb	wzr, [x8, #0x1]
    96e0: 52800028     	mov	w8, #0x1                // =1
    96e4: f940052a     	ldr	x10, [x9, #0x8]
    96e8: 39000528     	strb	w8, [x9, #0x1]
    96ec: 52800049     	mov	w9, #0x2                // =2
    96f0: f940054b     	ldr	x11, [x10, #0x8]
    96f4: 39000549     	strb	w9, [x10, #0x1]
    96f8: 52800069     	mov	w9, #0x3                // =3
    96fc: f940056a     	ldr	x10, [x11, #0x8]
    9700: 39000569     	strb	w9, [x11, #0x1]
    9704: 52800089     	mov	w9, #0x4                // =4
    9708: f940054b     	ldr	x11, [x10, #0x8]
    970c: 39000549     	strb	w9, [x10, #0x1]
    9710: 528000a9     	mov	w9, #0x5                // =5
    9714: f940056a     	ldr	x10, [x11, #0x8]
    9718: 39000569     	strb	w9, [x11, #0x1]
    971c: 528000c9     	mov	w9, #0x6                // =6
    9720: f940054b     	ldr	x11, [x10, #0x8]
    9724: 39000549     	strb	w9, [x10, #0x1]
    9728: 528000e9     	mov	w9, #0x7                // =7
    972c: f940056a     	ldr	x10, [x11, #0x8]
    9730: 39000569     	strb	w9, [x11, #0x1]
    9734: 52800109     	mov	w9, #0x8                // =8
    9738: f940054b     	ldr	x11, [x10, #0x8]
    973c: 39000549     	strb	w9, [x10, #0x1]
    9740: 52800129     	mov	w9, #0x9                // =9
    9744: f940056a     	ldr	x10, [x11, #0x8]
    9748: 39000569     	strb	w9, [x11, #0x1]
    974c: 52800149     	mov	w9, #0xa                // =10
    9750: f940054b     	ldr	x11, [x10, #0x8]
    9754: 39000549     	strb	w9, [x10, #0x1]
    9758: 52800169     	mov	w9, #0xb                // =11
    975c: f940056a     	ldr	x10, [x11, #0x8]
    9760: 39000569     	strb	w9, [x11, #0x1]
    9764: 52800189     	mov	w9, #0xc                // =12
    9768: f940054b     	ldr	x11, [x10, #0x8]
    976c: 39000549     	strb	w9, [x10, #0x1]
    9770: 528001a9     	mov	w9, #0xd                // =13
    9774: f940056a     	ldr	x10, [x11, #0x8]
    9778: 39000569     	strb	w9, [x11, #0x1]
    977c: 528001c9     	mov	w9, #0xe                // =14
    9780: f940054b     	ldr	x11, [x10, #0x8]
    9784: 39000549     	strb	w9, [x10, #0x1]
    9788: 528001e9     	mov	w9, #0xf                // =15
    978c: 39000569     	strb	w9, [x11, #0x1]
    9790: b26b7be9     	mov	x9, #0xfffffffe00000    // =4503599625273344
    9794: 790c3268     	strh	w8, [x19, #0x618]
    9798: 91194268     	add	x8, x19, #0x650
    979c: f9032669     	str	x9, [x19, #0x648]
    97a0: f9032a68     	str	x8, [x19, #0x650]
    97a4: f9032e68     	str	x8, [x19, #0x658]
    97a8: 90000008     	adrp	x8, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000097a8:  R_AARCH64_ADR_PREL_PG_HI21	richtap_rtp_work
    97ac: 91000108     	add	x8, x8, #0x0
		00000000000097ac:  R_AARCH64_ADD_ABS_LO12_NC	richtap_rtp_work
    97b0: f9033268     	str	x8, [x19, #0x660]
    97b4: 9119c268     	add	x8, x19, #0x670
    97b8: f9033669     	str	x9, [x19, #0x668]
    97bc: f9033a68     	str	x8, [x19, #0x670]
    97c0: f9033e68     	str	x8, [x19, #0x678]
    97c4: 90000008     	adrp	x8, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000097c4:  R_AARCH64_ADR_PREL_PG_HI21	richtap_stop_work
    97c8: 91000108     	add	x8, x8, #0x0
		00000000000097c8:  R_AARCH64_ADD_ABS_LO12_NC	richtap_stop_work
    97cc: f9034268     	str	x8, [x19, #0x680]
    97d0: 9118c268     	add	x8, x19, #0x630
    97d4: f9031669     	str	x9, [x19, #0x628]
    97d8: f9031a68     	str	x8, [x19, #0x630]
    97dc: f9031e68     	str	x8, [x19, #0x638]
    97e0: 90000008     	adrp	x8, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000097e0:  R_AARCH64_ADR_PREL_PG_HI21	tiktap_work_routine
    97e4: 91000108     	add	x8, x8, #0x0
		00000000000097e4:  R_AARCH64_ADD_ABS_LO12_NC	tiktap_work_routine
    97e8: f9032268     	str	x8, [x19, #0x640]
    97ec: b906be7f     	str	wzr, [x19, #0x6bc]
    97f0: 94000000     	bl	0x97f0 <aw_i2c_probe+0xd94>
		00000000000097f0:  R_AARCH64_CALL26	misc_register
    97f4: 2a1f03e0     	mov	w0, wzr
    97f8: 90000008     	adrp	x8, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000097f8:  R_AARCH64_ADR_PREL_PG_HI21	g_aw_haptic
    97fc: f9000113     	str	x19, [x8]
		00000000000097fc:  R_AARCH64_LDST64_ABS_LO12_NC	g_aw_haptic
    9800: 17fffcba     	b	0x8ae8 <aw_i2c_probe+0x8c>
    9804: 94000000     	bl	0x9804 <aw_i2c_probe+0xda8>
		0000000000009804:  R_AARCH64_CALL26	__stack_chk_fail
    9808: d5384115     	mrs	x21, SP_EL0
    980c: f9402ab6     	ldr	x22, [x21, #0x50]
    9810: 90000008     	adrp	x8, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009810:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xa0
    9814: 91000108     	add	x8, x8, #0x0
		0000000000009814:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xa0
    9818: 5287d000     	mov	w0, #0x3e80             // =16000
    981c: 52819801     	mov	w1, #0xcc0              // =3264
    9820: f9002aa8     	str	x8, [x21, #0x50]
    9824: 94000000     	bl	0x9824 <aw_i2c_probe+0xdc8>
		0000000000009824:  R_AARCH64_CALL26	__kmalloc_large_noprof
    9828: f9002ab6     	str	x22, [x21, #0x50]
    982c: f9030660     	str	x0, [x19, #0x608]
    9830: b5ffebc0     	cbnz	x0, 0x95a8 <aw_i2c_probe+0xb4c>
    9834: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009834:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x389c
    9838: 91000021     	add	x1, x1, #0x0
		0000000000009838:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x389c
    983c: aa1403e0     	mov	x0, x20
    9840: 94000000     	bl	0x9840 <aw_i2c_probe+0xde4>
		0000000000009840:  R_AARCH64_CALL26	_dev_err
    9844: 14000012     	b	0x988c <aw_i2c_probe+0xe30>
    9848: d5384115     	mrs	x21, SP_EL0
    984c: f9402ab6     	ldr	x22, [x21, #0x50]
    9850: 90000008     	adrp	x8, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009850:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xc8
    9854: 91000108     	add	x8, x8, #0x0
		0000000000009854:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xc8
    9858: 52819800     	mov	w0, #0xcc0              // =3264
    985c: 52800041     	mov	w1, #0x2                // =2
    9860: f9002aa8     	str	x8, [x21, #0x50]
    9864: 94000000     	bl	0x9864 <aw_i2c_probe+0xe08>
		0000000000009864:  R_AARCH64_CALL26	get_free_pages_noprof
    9868: f9002ab6     	str	x22, [x21, #0x50]
    986c: f9030a60     	str	x0, [x19, #0x610]
    9870: b5ffea80     	cbnz	x0, 0x95c0 <aw_i2c_probe+0xb64>
    9874: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009874:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x341e
    9878: 91000021     	add	x1, x1, #0x0
		0000000000009878:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x341e
    987c: aa1403e0     	mov	x0, x20
    9880: 94000000     	bl	0x9880 <aw_i2c_probe+0xe24>
		0000000000009880:  R_AARCH64_CALL26	_dev_err
    9884: f9430660     	ldr	x0, [x19, #0x608]
    9888: 94000000     	bl	0x9888 <aw_i2c_probe+0xe2c>
		0000000000009888:  R_AARCH64_CALL26	kfree
    988c: b9405260     	ldr	w0, [x19, #0x50]
    9890: 94000000     	bl	0x9890 <aw_i2c_probe+0xe34>
		0000000000009890:  R_AARCH64_CALL26	gpio_to_desc
    9894: 94000000     	bl	0x9894 <aw_i2c_probe+0xe38>
		0000000000009894:  R_AARCH64_CALL26	gpiod_to_irq
    9898: 2a0003e1     	mov	w1, w0
    989c: aa1403e0     	mov	x0, x20
    98a0: aa1303e2     	mov	x2, x19
    98a4: 94000000     	bl	0x98a4 <aw_i2c_probe+0xe48>
		00000000000098a4:  R_AARCH64_CALL26	devm_free_irq
    98a8: 2a1f03f5     	mov	w21, wzr
    98ac: 17fffedf     	b	0x9428 <aw_i2c_probe+0x9cc>
    98b0: b25f7be9     	mov	x9, #-0x200000000       // =-8589934592
    98b4: f2b80009     	movk	x9, #0xc000, lsl #16
    98b8: 8b090108     	add	x8, x8, x9
    98bc: f9800111     	prfm	pstl1strm, [x8]
    98c0: c85f7d09     	ldxr	x9, [x8]
    98c4: b2720129     	orr	x9, x9, #0x4000
    98c8: c80a7d09     	stxr	w10, x9, [x8]
    98cc: 35ffffaa     	cbnz	w10, 0x98c0 <aw_i2c_probe+0xe64>
    98d0: 17ffff47     	b	0x95ec <aw_i2c_probe+0xb90>
