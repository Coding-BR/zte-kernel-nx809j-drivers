
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000088cc <aw9620x_awrw_set>:
    88cc: d503233f     	paciasp
    88d0: d102c3ff     	sub	sp, sp, #0xb0
    88d4: a9057bfd     	stp	x29, x30, [sp, #0x50]
    88d8: a9066ffc     	stp	x28, x27, [sp, #0x60]
    88dc: a90767fa     	stp	x26, x25, [sp, #0x70]
    88e0: a9085ff8     	stp	x24, x23, [sp, #0x80]
    88e4: a90957f6     	stp	x22, x21, [sp, #0x90]
    88e8: a90a4ff4     	stp	x20, x19, [sp, #0xa0]
    88ec: 910143fd     	add	x29, sp, #0x50
    88f0: d5384108     	mrs	x8, SP_EL0
    88f4: aa0203f4     	mov	x20, x2
    88f8: aa0303f3     	mov	x19, x3
    88fc: f9438908     	ldr	x8, [x8, #0x710]
    8900: 90000001     	adrp	x1, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008900:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xc60
    8904: 91000021     	add	x1, x1, #0x0
		0000000000008904:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xc60
    8908: 910093e2     	add	x2, sp, #0x24
    890c: 910083e3     	add	x3, sp, #0x20
    8910: 910073e4     	add	x4, sp, #0x1c
    8914: f81f83a8     	stur	x8, [x29, #-0x8]
    8918: 910063e5     	add	x5, sp, #0x18
    891c: f9404c19     	ldr	x25, [x0, #0x98]
    8920: aa1403e0     	mov	x0, x20
    8924: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    8928: 94000000     	bl	0x8928 <aw9620x_awrw_set+0x5c>
		0000000000008928:  R_AARCH64_CALL26	sscanf
    892c: f85f8321     	ldur	x1, [x25, #-0x8]
    8930: 7100101f     	cmp	w0, #0x4
    8934: 54000aa1     	b.ne	0x8a88 <aw9620x_awrw_set+0x1bc>
    8938: 294417e6     	ldp	w6, w5, [sp, #0x20]
    893c: 29431fe8     	ldp	w8, w7, [sp, #0x18]
    8940: 90000000     	adrp	x0, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008940:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    8944: 91000000     	add	x0, x0, #0x0
		0000000000008944:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    8948: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008948:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x11e5
    894c: 91000042     	add	x2, x2, #0x0
		000000000000894c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x11e5
    8950: 90000003     	adrp	x3, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008950:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2a9b
    8954: 91000063     	add	x3, x3, #0x0
		0000000000008954:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2a9b
    8958: 528169e4     	mov	w4, #0xb4f              // =2895
    895c: b90003e8     	str	w8, [sp]
    8960: 94000000     	bl	0x8960 <aw9620x_awrw_set+0x94>
		0000000000008960:  R_AARCH64_CALL26	_dev_printk
    8964: b94027e8     	ldr	w8, [sp, #0x24]
    8968: 7100091f     	cmp	w8, #0x2
    896c: 54001702     	b.hs	0x8c4c <aw9620x_awrw_set+0x380>
    8970: 3908e328     	strb	w8, [x25, #0x238]
    8974: f9412321     	ldr	x1, [x25, #0x240]
    8978: b94023e8     	ldr	w8, [sp, #0x20]
    897c: 3908e728     	strb	w8, [x25, #0x239]
    8980: b9401fe9     	ldr	w9, [sp, #0x1c]
    8984: 3908eb29     	strb	w9, [x25, #0x23a]
    8988: 12001d29     	and	w9, w9, #0xff
    898c: b9401bea     	ldr	w10, [sp, #0x18]
    8990: 12001d4b     	and	w11, w10, #0xff
    8994: 3908ef2a     	strb	w10, [x25, #0x23b]
    8998: 1b097d69     	mul	w9, w11, w9
    899c: 0b280128     	add	w8, w9, w8, uxtb
    89a0: b9023f28     	str	w8, [x25, #0x23c]
    89a4: b40000a1     	cbz	x1, 0x89b8 <aw9620x_awrw_set+0xec>
    89a8: f85f8320     	ldur	x0, [x25, #-0x8]
    89ac: 94000000     	bl	0x89ac <aw9620x_awrw_set+0xe0>
		00000000000089ac:  R_AARCH64_CALL26	devm_kfree
    89b0: b9423f28     	ldr	w8, [x25, #0x23c]
    89b4: f901233f     	str	xzr, [x25, #0x240]
    89b8: f85f8320     	ldur	x0, [x25, #-0x8]
    89bc: 2a0803f5     	mov	w21, w8
    89c0: 5281b802     	mov	w2, #0xdc0              // =3520
    89c4: aa1503e1     	mov	x1, x21
    89c8: 94000000     	bl	0x89c8 <aw9620x_awrw_set+0xfc>
		00000000000089c8:  R_AARCH64_CALL26	devm_kmalloc
    89cc: f9012320     	str	x0, [x25, #0x240]
    89d0: b4001500     	cbz	x0, 0x8c70 <aw9620x_awrw_set+0x3a4>
    89d4: 3948e329     	ldrb	w9, [x25, #0x238]
    89d8: aa0003e8     	mov	x8, x0
    89dc: d100e320     	sub	x0, x25, #0x38
    89e0: 7100053f     	cmp	w9, #0x1
    89e4: 54000800     	b.eq	0x8ae4 <aw9620x_awrw_set+0x218>
    89e8: 35000609     	cbnz	w9, 0x8aa8 <aw9620x_awrw_set+0x1dc>
    89ec: b9423f22     	ldr	w2, [x25, #0x23c]
    89f0: aa1403e1     	mov	x1, x20
    89f4: 940000c1     	bl	0x8cf8 <aw9620x_awrw_data_analysis>
		00000000000089f4:  R_AARCH64_CALL26	aw9620x_awrw_data_analysis
    89f8: 350014e0     	cbnz	w0, 0x8c94 <aw9620x_awrw_set+0x3c8>
    89fc: 90000014     	adrp	x20, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		00000000000089fc:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    8a00: 91000294     	add	x20, x20, #0x0
		0000000000008a00:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    8a04: 90000015     	adrp	x21, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008a04:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2634
    8a08: 910002b5     	add	x21, x21, #0x0
		0000000000008a08:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2634
    8a0c: 528000b7     	mov	w23, #0x5               // =5
    8a10: 90000016     	adrp	x22, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008a10:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1e2c
    8a14: 910002d6     	add	x22, x22, #0x0
		0000000000008a14:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1e2c
    8a18: f85f0328     	ldur	x8, [x25, #-0x10]
    8a1c: f9412329     	ldr	x9, [x25, #0x240]
    8a20: 9100a3e1     	add	x1, sp, #0x28
    8a24: b9423f2a     	ldr	w10, [x25, #0x23c]
    8a28: f90017ff     	str	xzr, [sp, #0x28]
    8a2c: 52800022     	mov	w2, #0x1                // =1
    8a30: 7940050b     	ldrh	w11, [x8, #0x2]
    8a34: f9400d00     	ldr	x0, [x8, #0x18]
    8a38: f9001be9     	str	x9, [sp, #0x30]
    8a3c: 79005bea     	strh	w10, [sp, #0x2c]
    8a40: 790053eb     	strh	w11, [sp, #0x28]
    8a44: 94000000     	bl	0x8a44 <aw9620x_awrw_set+0x178>
		0000000000008a44:  R_AARCH64_CALL26	i2c_transfer
    8a48: 36f80bc0     	tbz	w0, #0x1f, 0x8bc0 <aw9620x_awrw_set+0x2f4>
    8a4c: f85f8321     	ldur	x1, [x25, #-0x8]
    8a50: 2a0003e5     	mov	w5, w0
    8a54: aa1403e0     	mov	x0, x20
    8a58: aa1503e2     	mov	x2, x21
    8a5c: aa1603e3     	mov	x3, x22
    8a60: 52805144     	mov	w4, #0x28a              // =650
    8a64: 94000000     	bl	0x8a64 <aw9620x_awrw_set+0x198>
		0000000000008a64:  R_AARCH64_CALL26	_dev_printk
    8a68: 5280fa00     	mov	w0, #0x7d0              // =2000
    8a6c: 52817701     	mov	w1, #0xbb8              // =3000
    8a70: 52800042     	mov	w2, #0x2                // =2
    8a74: 94000000     	bl	0x8a74 <aw9620x_awrw_set+0x1a8>
		0000000000008a74:  R_AARCH64_CALL26	usleep_range_state
    8a78: 72001eff     	tst	w23, #0xff
    8a7c: 510006f7     	sub	w23, w23, #0x1
    8a80: 54fffcc1     	b.ne	0x8a18 <aw9620x_awrw_set+0x14c>
    8a84: 1400008d     	b	0x8cb8 <aw9620x_awrw_set+0x3ec>
    8a88: 90000000     	adrp	x0, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008a88:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    8a8c: 91000000     	add	x0, x0, #0x0
		0000000000008a8c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    8a90: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008a90:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x34b2
    8a94: 91000042     	add	x2, x2, #0x0
		0000000000008a94:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x34b2
    8a98: 90000003     	adrp	x3, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008a98:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2a9b
    8a9c: 91000063     	add	x3, x3, #0x0
		0000000000008a9c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2a9b
    8aa0: 52816944     	mov	w4, #0xb4a              // =2890
    8aa4: 94000000     	bl	0x8aa4 <aw9620x_awrw_set+0x1d8>
		0000000000008aa4:  R_AARCH64_CALL26	_dev_printk
    8aa8: d5384108     	mrs	x8, SP_EL0
    8aac: f9438908     	ldr	x8, [x8, #0x710]
    8ab0: f85f83a9     	ldur	x9, [x29, #-0x8]
    8ab4: eb09011f     	cmp	x8, x9
    8ab8: 54001181     	b.ne	0x8ce8 <aw9620x_awrw_set+0x41c>
    8abc: aa1303e0     	mov	x0, x19
    8ac0: a94a4ff4     	ldp	x20, x19, [sp, #0xa0]
    8ac4: a94957f6     	ldp	x22, x21, [sp, #0x90]
    8ac8: a9485ff8     	ldp	x24, x23, [sp, #0x80]
    8acc: a94767fa     	ldp	x26, x25, [sp, #0x70]
    8ad0: a9466ffc     	ldp	x28, x27, [sp, #0x60]
    8ad4: a9457bfd     	ldp	x29, x30, [sp, #0x50]
    8ad8: 9102c3ff     	add	sp, sp, #0xb0
    8adc: d50323bf     	autiasp
    8ae0: d65f03c0     	ret
    8ae4: 3948e736     	ldrb	w22, [x25, #0x239]
    8ae8: 3948eb37     	ldrb	w23, [x25, #0x23a]
    8aec: aa1403e1     	mov	x1, x20
    8af0: 3948ef38     	ldrb	w24, [x25, #0x23b]
    8af4: f9000be8     	str	x8, [sp, #0x10]
    8af8: 2a1603e2     	mov	w2, w22
    8afc: 9400007f     	bl	0x8cf8 <aw9620x_awrw_data_analysis>
		0000000000008afc:  R_AARCH64_CALL26	aw9620x_awrw_data_analysis
    8b00: 35000940     	cbnz	w0, 0x8c28 <aw9620x_awrw_set+0x35c>
    8b04: 9bb77f14     	umull	x20, w24, w23
    8b08: 92401edb     	and	x27, x22, #0xff
    8b0c: 90000016     	adrp	x22, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008b0c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    8b10: 910002d6     	add	x22, x22, #0x0
		0000000000008b10:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    8b14: 528000bc     	mov	w28, #0x5               // =5
    8b18: 90000017     	adrp	x23, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008b18:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c08
    8b1c: 910002f7     	add	x23, x23, #0x0
		0000000000008b1c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c08
    8b20: 5280003a     	mov	w26, #0x1               // =1
    8b24: 90000018     	adrp	x24, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008b24:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x394c
    8b28: 91000318     	add	x24, x24, #0x0
		0000000000008b28:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x394c
    8b2c: f85f0328     	ldur	x8, [x25, #-0x10]
    8b30: f9412329     	ldr	x9, [x25, #0x240]
    8b34: 9100a3e1     	add	x1, sp, #0x28
    8b38: 3948e72a     	ldrb	w10, [x25, #0x239]
    8b3c: 3948eb2b     	ldrb	w11, [x25, #0x23a]
    8b40: 52800042     	mov	w2, #0x2                // =2
    8b44: 3948ef2c     	ldrb	w12, [x25, #0x23b]
    8b48: a9037fff     	stp	xzr, xzr, [sp, #0x30]
    8b4c: f90017ff     	str	xzr, [sp, #0x28]
    8b50: 7940050d     	ldrh	w13, [x8, #0x2]
    8b54: f9001be9     	str	x9, [sp, #0x30]
    8b58: 8b0a0129     	add	x9, x9, x10
    8b5c: 79005bea     	strh	w10, [sp, #0x2c]
    8b60: 1b0b7d8a     	mul	w10, w12, w11
    8b64: f90023e9     	str	x9, [sp, #0x40]
    8b68: f9400d00     	ldr	x0, [x8, #0x18]
    8b6c: 790053ed     	strh	w13, [sp, #0x28]
    8b70: 790073ed     	strh	w13, [sp, #0x38]
    8b74: 790077fa     	strh	w26, [sp, #0x3a]
    8b78: 79007bea     	strh	w10, [sp, #0x3c]
    8b7c: 94000000     	bl	0x8b7c <aw9620x_awrw_set+0x2b0>
		0000000000008b7c:  R_AARCH64_CALL26	i2c_transfer
    8b80: 36f802e0     	tbz	w0, #0x1f, 0x8bdc <aw9620x_awrw_set+0x310>
    8b84: f85f8321     	ldur	x1, [x25, #-0x8]
    8b88: 2a0003e5     	mov	w5, w0
    8b8c: aa1603e0     	mov	x0, x22
    8b90: aa1703e2     	mov	x2, x23
    8b94: aa1803e3     	mov	x3, x24
    8b98: 52805484     	mov	w4, #0x2a4              // =676
    8b9c: 94000000     	bl	0x8b9c <aw9620x_awrw_set+0x2d0>
		0000000000008b9c:  R_AARCH64_CALL26	_dev_printk
    8ba0: 5280fa00     	mov	w0, #0x7d0              // =2000
    8ba4: 52817701     	mov	w1, #0xbb8              // =3000
    8ba8: 52800042     	mov	w2, #0x2                // =2
    8bac: 94000000     	bl	0x8bac <aw9620x_awrw_set+0x2e0>
		0000000000008bac:  R_AARCH64_CALL26	usleep_range_state
    8bb0: 72001f9f     	tst	w28, #0xff
    8bb4: 5100079c     	sub	w28, w28, #0x1
    8bb8: 54fffba1     	b.ne	0x8b2c <aw9620x_awrw_set+0x260>
    8bbc: 14000009     	b	0x8be0 <aw9620x_awrw_set+0x314>
    8bc0: 373807d7     	tbnz	w23, #0x7, 0x8cb8 <aw9620x_awrw_set+0x3ec>
    8bc4: f9412321     	ldr	x1, [x25, #0x240]
    8bc8: b4fff701     	cbz	x1, 0x8aa8 <aw9620x_awrw_set+0x1dc>
    8bcc: f85f8320     	ldur	x0, [x25, #-0x8]
    8bd0: 94000000     	bl	0x8bd0 <aw9620x_awrw_set+0x304>
		0000000000008bd0:  R_AARCH64_CALL26	devm_kfree
    8bd4: f901233f     	str	xzr, [x25, #0x240]
    8bd8: 17ffffb4     	b	0x8aa8 <aw9620x_awrw_set+0x1dc>
    8bdc: 363ff67c     	tbz	w28, #0x7, 0x8aa8 <aw9620x_awrw_set+0x1dc>
    8be0: f85f8321     	ldur	x1, [x25, #-0x8]
    8be4: 90000000     	adrp	x0, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008be4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    8be8: 91000000     	add	x0, x0, #0x0
		0000000000008be8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    8bec: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008bec:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xb5e
    8bf0: 91000042     	add	x2, x2, #0x0
		0000000000008bf0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xb5e
    8bf4: 90000003     	adrp	x3, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008bf4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x394c
    8bf8: 91000063     	add	x3, x3, #0x0
		0000000000008bf8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x394c
    8bfc: 52805564     	mov	w4, #0x2ab              // =683
    8c00: 94000000     	bl	0x8c00 <aw9620x_awrw_set+0x334>
		0000000000008c00:  R_AARCH64_CALL26	_dev_printk
    8c04: eb1b02a8     	subs	x8, x21, x27
    8c08: 9a8833e1     	csel	x1, xzr, x8, lo
    8c0c: eb14003f     	cmp	x1, x20
    8c10: 540006e3     	b.lo	0x8cec <aw9620x_awrw_set+0x420>
    8c14: f9400be8     	ldr	x8, [sp, #0x10]
    8c18: 52801fe1     	mov	w1, #0xff               // =255
    8c1c: aa1403e2     	mov	x2, x20
    8c20: 8b1b0100     	add	x0, x8, x27
    8c24: 94000000     	bl	0x8c24 <aw9620x_awrw_set+0x358>
		0000000000008c24:  R_AARCH64_CALL26	memset
    8c28: f85f8321     	ldur	x1, [x25, #-0x8]
    8c2c: 90000000     	adrp	x0, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008c2c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    8c30: 91000000     	add	x0, x0, #0x0
		0000000000008c30:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    8c34: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008c34:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x34cc
    8c38: 91000042     	add	x2, x2, #0x0
		0000000000008c38:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x34cc
    8c3c: 90000003     	adrp	x3, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008c3c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2a9b
    8c40: 91000063     	add	x3, x3, #0x0
		0000000000008c40:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2a9b
    8c44: 52816f24     	mov	w4, #0xb79              // =2937
    8c48: 17ffff97     	b	0x8aa4 <aw9620x_awrw_set+0x1d8>
    8c4c: f85f8321     	ldur	x1, [x25, #-0x8]
    8c50: 90000000     	adrp	x0, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008c50:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    8c54: 91000000     	add	x0, x0, #0x0
		0000000000008c54:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    8c58: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008c58:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x22a9
    8c5c: 91000042     	add	x2, x2, #0x0
		0000000000008c5c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x22a9
    8c60: 90000003     	adrp	x3, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008c60:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2a9b
    8c64: 91000063     	add	x3, x3, #0x0
		0000000000008c64:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2a9b
    8c68: 52816a44     	mov	w4, #0xb52              // =2898
    8c6c: 17ffff8e     	b	0x8aa4 <aw9620x_awrw_set+0x1d8>
    8c70: f85f8321     	ldur	x1, [x25, #-0x8]
    8c74: 90000000     	adrp	x0, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008c74:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    8c78: 91000000     	add	x0, x0, #0x0
		0000000000008c78:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    8c7c: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008c7c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3637
    8c80: 91000042     	add	x2, x2, #0x0
		0000000000008c80:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3637
    8c84: 90000003     	adrp	x3, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008c84:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2a9b
    8c88: 91000063     	add	x3, x3, #0x0
		0000000000008c88:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2a9b
    8c8c: 52816d24     	mov	w4, #0xb69              // =2921
    8c90: 17ffff85     	b	0x8aa4 <aw9620x_awrw_set+0x1d8>
    8c94: f85f8321     	ldur	x1, [x25, #-0x8]
    8c98: 90000000     	adrp	x0, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008c98:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    8c9c: 91000000     	add	x0, x0, #0x0
		0000000000008c9c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    8ca0: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008ca0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3298
    8ca4: 91000042     	add	x2, x2, #0x0
		0000000000008ca4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3298
    8ca8: 90000003     	adrp	x3, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008ca8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2a9b
    8cac: 91000063     	add	x3, x3, #0x0
		0000000000008cac:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2a9b
    8cb0: 52816e04     	mov	w4, #0xb70              // =2928
    8cb4: 14000009     	b	0x8cd8 <aw9620x_awrw_set+0x40c>
    8cb8: f85f8321     	ldur	x1, [x25, #-0x8]
    8cbc: 90000000     	adrp	x0, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008cbc:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    8cc0: 91000000     	add	x0, x0, #0x0
		0000000000008cc0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    8cc4: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008cc4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xb5e
    8cc8: 91000042     	add	x2, x2, #0x0
		0000000000008cc8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xb5e
    8ccc: 90000003     	adrp	x3, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008ccc:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1e2c
    8cd0: 91000063     	add	x3, x3, #0x0
		0000000000008cd0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1e2c
    8cd4: 52805224     	mov	w4, #0x291              // =657
    8cd8: 94000000     	bl	0x8cd8 <aw9620x_awrw_set+0x40c>
		0000000000008cd8:  R_AARCH64_CALL26	_dev_printk
    8cdc: f9412321     	ldr	x1, [x25, #0x240]
    8ce0: b5fff761     	cbnz	x1, 0x8bcc <aw9620x_awrw_set+0x300>
    8ce4: 17ffff71     	b	0x8aa8 <aw9620x_awrw_set+0x1dc>
    8ce8: 94000000     	bl	0x8ce8 <aw9620x_awrw_set+0x41c>
		0000000000008ce8:  R_AARCH64_CALL26	__stack_chk_fail
    8cec: 528001e0     	mov	w0, #0xf                // =15
    8cf0: aa1403e2     	mov	x2, x20
    8cf4: 94000000     	bl	0x8cf4 <aw9620x_awrw_set+0x428>
		0000000000008cf4:  R_AARCH64_CALL26	__fortify_panic
