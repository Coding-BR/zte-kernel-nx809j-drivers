
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000008e8 <aw_i2c_probe>:
     8e8: d503233f     	paciasp
     8ec: d10143ff     	sub	sp, sp, #0x50
     8f0: a9017bfd     	stp	x29, x30, [sp, #0x10]
     8f4: a9025ff8     	stp	x24, x23, [sp, #0x20]
     8f8: a90357f6     	stp	x22, x21, [sp, #0x30]
     8fc: a9044ff4     	stp	x20, x19, [sp, #0x40]
     900: 910043fd     	add	x29, sp, #0x10
     904: d5384108     	mrs	x8, SP_EL0
     908: aa0003f4     	mov	x20, x0
     90c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000090c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
     910: 91000021     	add	x1, x1, #0x0
		0000000000000910:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
     914: f9438908     	ldr	x8, [x8, #0x710]
     918: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000918:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x4b5
     91c: 91000042     	add	x2, x2, #0x0
		000000000000091c:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x4b5
     920: f90007e8     	str	x8, [sp, #0x8]
     924: f9418416     	ldr	x22, [x0, #0x308]
     928: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000928:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xf32
     92c: 91000000     	add	x0, x0, #0x0
		000000000000092c:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xf32
     930: 94000000     	bl	0x930 <aw_i2c_probe+0x48>
		0000000000000930:  R_AARCH64_CALL26	_printk
     934: f9400e80     	ldr	x0, [x20, #0x18]
     938: f9400808     	ldr	x8, [x0, #0x10]
     93c: f9401108     	ldr	x8, [x8, #0x20]
     940: b85fc110     	ldur	w16, [x8, #-0x4]
     944: 729d62d1     	movk	w17, #0xeb16
     948: 72af9851     	movk	w17, #0x7cc2, lsl #16
     94c: 6b11021f     	cmp	w16, w17
     950: 54000040     	b.eq	0x958 <aw_i2c_probe+0x70>
     954: d4304500     	brk	#0x8228
     958: d63f0100     	blr	x8
     95c: 36000280     	tbz	w0, #0x0, 0x9ac <aw_i2c_probe+0xc4>
     960: 91008295     	add	x21, x20, #0x20
     964: 52806f01     	mov	w1, #0x378              // =888
     968: 5281b802     	mov	w2, #0xdc0              // =3520
     96c: aa1503e0     	mov	x0, x21
     970: 94000000     	bl	0x970 <aw_i2c_probe+0x88>
		0000000000000970:  R_AARCH64_CALL26	devm_kmalloc
     974: b50002e0     	cbnz	x0, 0x9d0 <aw_i2c_probe+0xe8>
     978: 12800160     	mov	w0, #-0xc               // =-12
     97c: d5384108     	mrs	x8, SP_EL0
     980: f9438908     	ldr	x8, [x8, #0x710]
     984: f94007e9     	ldr	x9, [sp, #0x8]
     988: eb09011f     	cmp	x8, x9
     98c: 54002a41     	b.ne	0xed4 <aw_i2c_probe+0x5ec>
     990: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     994: a94357f6     	ldp	x22, x21, [sp, #0x30]
     998: a9425ff8     	ldp	x24, x23, [sp, #0x20]
     99c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     9a0: 910143ff     	add	sp, sp, #0x50
     9a4: d50323bf     	autiasp
     9a8: d65f03c0     	ret
     9ac: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009ac:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x3de
     9b0: 91000000     	add	x0, x0, #0x0
		00000000000009b0:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x3de
     9b4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009b4:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
     9b8: 91000021     	add	x1, x1, #0x0
		00000000000009b8:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
     9bc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000009bc:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x4b5
     9c0: 91000042     	add	x2, x2, #0x0
		00000000000009c0:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x4b5
     9c4: 94000000     	bl	0x9c4 <aw_i2c_probe+0xdc>
		00000000000009c4:  R_AARCH64_CALL26	_printk
     9c8: 12800080     	mov	w0, #-0x5               // =-5
     9cc: 17ffffec     	b	0x97c <aw_i2c_probe+0x94>
     9d0: a91e5015     	stp	x21, x20, [x0, #0x1e0]
     9d4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009d4:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xd5c
     9d8: 91000021     	add	x1, x1, #0x0
		00000000000009d8:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xd5c
     9dc: f9005e80     	str	x0, [x20, #0xb8]
     9e0: aa0003f7     	mov	x23, x0
     9e4: aa1603e0     	mov	x0, x22
     9e8: 2a1f03e2     	mov	w2, wzr
     9ec: 94000000     	bl	0x9ec <aw_i2c_probe+0x104>
		00000000000009ec:  R_AARCH64_CALL26	of_get_named_gpio
     9f0: 2a0003e4     	mov	w4, w0
     9f4: aa1703f3     	mov	x19, x23
     9f8: b9001ae0     	str	w0, [x23, #0x18]
     9fc: 37f803e0     	tbnz	w0, #0x1f, 0xa78 <aw_i2c_probe+0x190>
     a00: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a00:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x1048
     a04: 91000021     	add	x1, x1, #0x0
		0000000000000a04:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x1048
     a08: 2a0403e0     	mov	w0, w4
     a0c: 94000000     	bl	0xa0c <aw_i2c_probe+0x124>
		0000000000000a0c:  R_AARCH64_CALL26	gpio_request
     a10: b9401a64     	ldr	w4, [x19, #0x18]
     a14: 2a0003f7     	mov	w23, w0
     a18: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a18:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x251
     a1c: 91000000     	add	x0, x0, #0x0
		0000000000000a1c:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x251
     a20: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a20:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
     a24: 91000021     	add	x1, x1, #0x0
		0000000000000a24:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
     a28: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000a28:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xa9c
     a2c: 91000063     	add	x3, x3, #0x0
		0000000000000a2c:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xa9c
     a30: 52804dc2     	mov	w2, #0x26e              // =622
     a34: 2a1703e5     	mov	w5, w23
     a38: 94000000     	bl	0xa38 <aw_i2c_probe+0x150>
		0000000000000a38:  R_AARCH64_CALL26	_printk
     a3c: 36f80557     	tbz	w23, #0x1f, 0xae4 <aw_i2c_probe+0x1fc>
     a40: b9401a64     	ldr	w4, [x19, #0x18]
     a44: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a44:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x344
     a48: 91000000     	add	x0, x0, #0x0
		0000000000000a48:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x344
     a4c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a4c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
     a50: 91000021     	add	x1, x1, #0x0
		0000000000000a50:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
     a54: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000a54:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xa9c
     a58: 91000063     	add	x3, x3, #0x0
		0000000000000a58:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xa9c
     a5c: 52804e02     	mov	w2, #0x270              // =624
     a60: 2a1703e5     	mov	w5, w23
     a64: 2a1703f4     	mov	w20, w23
     a68: 94000000     	bl	0xa68 <aw_i2c_probe+0x180>
		0000000000000a68:  R_AARCH64_CALL26	_printk
     a6c: 128002a8     	mov	w8, #-0x16              // =-22
     a70: b9001a68     	str	w8, [x19, #0x18]
     a74: 1400000c     	b	0xaa4 <aw_i2c_probe+0x1bc>
     a78: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a78:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x21b
     a7c: 91000000     	add	x0, x0, #0x0
		0000000000000a7c:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x21b
     a80: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a80:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
     a84: 91000021     	add	x1, x1, #0x0
		0000000000000a84:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
     a88: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000a88:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xa9c
     a8c: 91000063     	add	x3, x3, #0x0
		0000000000000a8c:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xa9c
     a90: 52804d22     	mov	w2, #0x269              // =617
     a94: 94000000     	bl	0xa94 <aw_i2c_probe+0x1ac>
		0000000000000a94:  R_AARCH64_CALL26	_printk
     a98: 128002a8     	mov	w8, #-0x16              // =-22
     a9c: b9001a68     	str	w8, [x19, #0x18]
     aa0: 12804094     	mov	w20, #-0x205            // =-517
     aa4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000aa4:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x73a
     aa8: 91000000     	add	x0, x0, #0x0
		0000000000000aa8:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x73a
     aac: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000aac:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
     ab0: 91000021     	add	x1, x1, #0x0
		0000000000000ab0:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
     ab4: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000ab4:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x4b5
     ab8: 91000063     	add	x3, x3, #0x0
		0000000000000ab8:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x4b5
     abc: 52808942     	mov	w2, #0x44a              // =1098
     ac0: 2a1403e4     	mov	w4, w20
     ac4: 94000000     	bl	0xac4 <aw_i2c_probe+0x1dc>
		0000000000000ac4:  R_AARCH64_CALL26	_printk
     ac8: b9401a60     	ldr	w0, [x19, #0x18]
     acc: 37f80080     	tbnz	w0, #0x1f, 0xadc <aw_i2c_probe+0x1f4>
     ad0: 94000000     	bl	0xad0 <aw_i2c_probe+0x1e8>
		0000000000000ad0:  R_AARCH64_CALL26	gpio_free
     ad4: 128002a8     	mov	w8, #-0x16              // =-22
     ad8: b9001a68     	str	w8, [x19, #0x18]
     adc: 2a1403e0     	mov	w0, w20
     ae0: 17ffffa7     	b	0x97c <aw_i2c_probe+0x94>
     ae4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ae4:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x603
     ae8: 91000000     	add	x0, x0, #0x0
		0000000000000ae8:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x603
     aec: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000aec:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
     af0: 91000021     	add	x1, x1, #0x0
		0000000000000af0:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
     af4: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000af4:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xa9c
     af8: 91000063     	add	x3, x3, #0x0
		0000000000000af8:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xa9c
     afc: 52804e82     	mov	w2, #0x274              // =628
     b00: 94000000     	bl	0xb00 <aw_i2c_probe+0x218>
		0000000000000b00:  R_AARCH64_CALL26	_printk
     b04: b9401a60     	ldr	w0, [x19, #0x18]
     b08: 94000000     	bl	0xb08 <aw_i2c_probe+0x220>
		0000000000000b08:  R_AARCH64_CALL26	gpio_to_desc
     b0c: 52800021     	mov	w1, #0x1                // =1
     b10: 94000000     	bl	0xb10 <aw_i2c_probe+0x228>
		0000000000000b10:  R_AARCH64_CALL26	gpiod_direction_output_raw
     b14: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b14:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xd01
     b18: 91000021     	add	x1, x1, #0x0
		0000000000000b18:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xd01
     b1c: aa1603e0     	mov	x0, x22
     b20: 2a1f03e2     	mov	w2, wzr
     b24: 94000000     	bl	0xb24 <aw_i2c_probe+0x23c>
		0000000000000b24:  R_AARCH64_CALL26	of_get_named_gpio
     b28: 2a0003e4     	mov	w4, w0
     b2c: b9000660     	str	w0, [x19, #0x4]
     b30: 36f80180     	tbz	w0, #0x1f, 0xb60 <aw_i2c_probe+0x278>
     b34: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b34:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x954
     b38: 91000000     	add	x0, x0, #0x0
		0000000000000b38:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x954
     b3c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b3c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
     b40: 91000021     	add	x1, x1, #0x0
		0000000000000b40:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
     b44: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000b44:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xa9c
     b48: 91000063     	add	x3, x3, #0x0
		0000000000000b48:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xa9c
     b4c: 52804f82     	mov	w2, #0x27c              // =636
     b50: 94000000     	bl	0xb50 <aw_i2c_probe+0x268>
		0000000000000b50:  R_AARCH64_CALL26	_printk
     b54: 128002a8     	mov	w8, #-0x16              // =-22
     b58: b9000668     	str	w8, [x19, #0x4]
     b5c: 17ffffd1     	b	0xaa0 <aw_i2c_probe+0x1b8>
     b60: 90000018     	adrp	x24, 0x0 <.text>
		0000000000000b60:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
     b64: 91000318     	add	x24, x24, #0x0
		0000000000000b64:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
     b68: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000b68:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xa9c
     b6c: 910002f7     	add	x23, x23, #0x0
		0000000000000b6c:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xa9c
     b70: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b70:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xddb
     b74: 91000000     	add	x0, x0, #0x0
		0000000000000b74:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xddb
     b78: aa1803e1     	mov	x1, x24
     b7c: 52805002     	mov	w2, #0x280              // =640
     b80: aa1703e3     	mov	x3, x23
     b84: 94000000     	bl	0xb84 <aw_i2c_probe+0x29c>
		0000000000000b84:  R_AARCH64_CALL26	_printk
     b88: d2800a08     	mov	x8, #0x50               // =80
     b8c: 52803849     	mov	w9, #0x1c2              // =450
     b90: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b90:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb2a
     b94: 91000000     	add	x0, x0, #0x0
		0000000000000b94:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb2a
     b98: f2c07fe8     	movk	x8, #0x3ff, lsl #32
     b9c: aa1803e1     	mov	x1, x24
     ba0: 528050c2     	mov	w2, #0x286              // =646
     ba4: aa1703e3     	mov	x3, x23
     ba8: 52807fe4     	mov	w4, #0x3ff              // =1023
     bac: 52800a05     	mov	w5, #0x50               // =80
     bb0: 52803846     	mov	w6, #0x1c2              // =450
     bb4: f9000668     	str	x8, [x19, #0x8]
     bb8: 79002a69     	strh	w9, [x19, #0x14]
     bbc: 94000000     	bl	0xbbc <aw_i2c_probe+0x2d4>
		0000000000000bbc:  R_AARCH64_CALL26	_printk
     bc0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000bc0:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x153
     bc4: 91000021     	add	x1, x1, #0x0
		0000000000000bc4:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x153
     bc8: aa1603e0     	mov	x0, x22
     bcc: aa1f03e2     	mov	x2, xzr
     bd0: 94000000     	bl	0xbd0 <aw_i2c_probe+0x2e8>
		0000000000000bd0:  R_AARCH64_CALL26	of_find_property
     bd4: f100001f     	cmp	x0, #0x0
     bd8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000bd8:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xf43
     bdc: 91000000     	add	x0, x0, #0x0
		0000000000000bdc:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xf43
     be0: 1a9f07e4     	cset	w4, ne
     be4: aa1803e1     	mov	x1, x24
     be8: 52805122     	mov	w2, #0x289              // =649
     bec: aa1703e3     	mov	x3, x23
     bf0: 390d1664     	strb	w4, [x19, #0x345]
     bf4: 94000000     	bl	0xbf4 <aw_i2c_probe+0x30c>
		0000000000000bf4:  R_AARCH64_CALL26	_printk
     bf8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000bf8:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xca8
     bfc: 91000021     	add	x1, x1, #0x0
		0000000000000bfc:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xca8
     c00: aa1603e0     	mov	x0, x22
     c04: aa1f03e2     	mov	x2, xzr
     c08: 94000000     	bl	0xc08 <aw_i2c_probe+0x320>
		0000000000000c08:  R_AARCH64_CALL26	of_find_property
     c0c: f100001f     	cmp	x0, #0x0
     c10: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c10:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb64
     c14: 91000000     	add	x0, x0, #0x0
		0000000000000c14:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb64
     c18: 1a9f07e4     	cset	w4, ne
     c1c: aa1803e1     	mov	x1, x24
     c20: 52805182     	mov	w2, #0x28c              // =652
     c24: aa1703e3     	mov	x3, x23
     c28: 390d1a64     	strb	w4, [x19, #0x346]
     c2c: 94000000     	bl	0xc2c <aw_i2c_probe+0x344>
		0000000000000c2c:  R_AARCH64_CALL26	_printk
     c30: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c30:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xbbe
     c34: 91000021     	add	x1, x1, #0x0
		0000000000000c34:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xbbe
     c38: 910d2262     	add	x2, x19, #0x348
     c3c: aa1603e0     	mov	x0, x22
     c40: 52800023     	mov	w3, #0x1                // =1
     c44: aa1f03e4     	mov	x4, xzr
     c48: 94000000     	bl	0xc48 <aw_i2c_probe+0x360>
		0000000000000c48:  R_AARCH64_CALL26	of_property_read_variable_u32_array
     c4c: 36f80120     	tbz	w0, #0x1f, 0xc70 <aw_i2c_probe+0x388>
     c50: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c50:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xed1
     c54: 91000000     	add	x0, x0, #0x0
		0000000000000c54:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xed1
     c58: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c58:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
     c5c: 91000021     	add	x1, x1, #0x0
		0000000000000c5c:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
     c60: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000c60:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xa9c
     c64: 91000063     	add	x3, x3, #0x0
		0000000000000c64:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xa9c
     c68: 52805202     	mov	w2, #0x290              // =656
     c6c: 94000000     	bl	0xc6c <aw_i2c_probe+0x384>
		0000000000000c6c:  R_AARCH64_CALL26	_printk
     c70: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c70:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x76d
     c74: 91000021     	add	x1, x1, #0x0
		0000000000000c74:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x76d
     c78: 910d3262     	add	x2, x19, #0x34c
     c7c: aa1603e0     	mov	x0, x22
     c80: 52800023     	mov	w3, #0x1                // =1
     c84: aa1f03e4     	mov	x4, xzr
     c88: 94000000     	bl	0xc88 <aw_i2c_probe+0x3a0>
		0000000000000c88:  R_AARCH64_CALL26	of_property_read_variable_u32_array
     c8c: 36f80120     	tbz	w0, #0x1f, 0xcb0 <aw_i2c_probe+0x3c8>
     c90: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c90:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x987
     c94: 91000000     	add	x0, x0, #0x0
		0000000000000c94:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x987
     c98: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c98:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
     c9c: 91000021     	add	x1, x1, #0x0
		0000000000000c9c:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
     ca0: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000ca0:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xa9c
     ca4: 91000063     	add	x3, x3, #0x0
		0000000000000ca4:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xa9c
     ca8: 52805262     	mov	w2, #0x293              // =659
     cac: 94000000     	bl	0xcac <aw_i2c_probe+0x3c4>
		0000000000000cac:  R_AARCH64_CALL26	_printk
     cb0: b943b681     	ldr	w1, [x20, #0x3b4]
     cb4: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000cb4:  R_AARCH64_ADR_PREL_PG_HI21	irq_handle
     cb8: 91000063     	add	x3, x3, #0x0
		0000000000000cb8:  R_AARCH64_ADD_ABS_LO12_NC	irq_handle
     cbc: 90000005     	adrp	x5, 0x0 <.text>
		0000000000000cbc:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
     cc0: 910000a5     	add	x5, x5, #0x0
		0000000000000cc0:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
     cc4: aa1503e0     	mov	x0, x21
     cc8: aa1f03e2     	mov	x2, xzr
     ccc: 52840044     	mov	w4, #0x2002             // =8194
     cd0: aa1303e6     	mov	x6, x19
     cd4: 94000000     	bl	0xcd4 <aw_i2c_probe+0x3ec>
		0000000000000cd4:  R_AARCH64_CALL26	devm_request_threaded_irq
     cd8: 340000a0     	cbz	w0, 0xcec <aw_i2c_probe+0x404>
     cdc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000cdc:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x664
     ce0: 91000021     	add	x1, x1, #0x0
		0000000000000ce0:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x664
     ce4: aa1503e0     	mov	x0, x21
     ce8: 94000000     	bl	0xce8 <aw_i2c_probe+0x400>
		0000000000000ce8:  R_AARCH64_CALL26	_dev_err
     cec: aa1303e0     	mov	x0, x19
     cf0: 2a1f03e1     	mov	w1, wzr
     cf4: 52955542     	mov	w2, #0xaaaa             // =43690
     cf8: 79000bff     	strh	wzr, [sp, #0x4]
     cfc: 97fffdd0     	bl	0x43c <haptic_i2c_write>
		0000000000000cfc:  R_AARCH64_CALL26	haptic_i2c_write
     d00: 52817700     	mov	w0, #0xbb8              // =3000
     d04: 5281b581     	mov	w1, #0xdac              // =3500
     d08: 52800042     	mov	w2, #0x2                // =2
     d0c: 94000000     	bl	0xd0c <aw_i2c_probe+0x424>
		0000000000000d0c:  R_AARCH64_CALL26	usleep_range_state
     d10: 910013e2     	add	x2, sp, #0x4
     d14: aa1303e0     	mov	x0, x19
     d18: 2a1f03e1     	mov	w1, wzr
     d1c: 97fffe36     	bl	0x5f4 <haptic_i2c_read>
		0000000000000d1c:  R_AARCH64_CALL26	haptic_i2c_read
     d20: 36f802c0     	tbz	w0, #0x1f, 0xd78 <aw_i2c_probe+0x490>
     d24: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000d24:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x55d
     d28: 91000108     	add	x8, x8, #0x0
		0000000000000d28:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x55d
     d2c: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000d2c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
     d30: 91000294     	add	x20, x20, #0x0
		0000000000000d30:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
     d34: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000d34:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xf7a
     d38: 91000063     	add	x3, x3, #0x0
		0000000000000d38:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xf7a
     d3c: 2a0003e4     	mov	w4, w0
     d40: aa0803e0     	mov	x0, x8
     d44: aa1403e1     	mov	x1, x20
     d48: 528019a2     	mov	w2, #0xcd               // =205
     d4c: 94000000     	bl	0xd4c <aw_i2c_probe+0x464>
		0000000000000d4c:  R_AARCH64_CALL26	_printk
     d50: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d50:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xe0a
     d54: 91000000     	add	x0, x0, #0x0
		0000000000000d54:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xe0a
     d58: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000d58:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x840
     d5c: 91000063     	add	x3, x3, #0x0
		0000000000000d5c:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x840
     d60: aa1403e1     	mov	x1, x20
     d64: 52801bc2     	mov	w2, #0xde               // =222
     d68: 12800084     	mov	w4, #-0x5               // =-5
     d6c: 12800094     	mov	w20, #-0x5              // =-5
     d70: 94000000     	bl	0xd70 <aw_i2c_probe+0x488>
		0000000000000d70:  R_AARCH64_CALL26	_printk
     d74: 14000002     	b	0xd7c <aw_i2c_probe+0x494>
     d78: 2a0003f4     	mov	w20, w0
     d7c: 79400be4     	ldrh	w4, [sp, #0x4]
     d80: 528c04e8     	mov	w8, #0x6027             // =24615
     d84: 6b08009f     	cmp	w4, w8
     d88: 540006c1     	b.ne	0xe60 <aw_i2c_probe+0x578>
     d8c: d28eec29     	mov	x9, #0x7761             // =30561
     d90: 79000668     	strh	w8, [x19, #0x2]
     d94: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000d94:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_data_base+0x110
     d98: f2a6c709     	movk	x9, #0x3638, lsl #16
     d9c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d9c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x191
     da0: 91000000     	add	x0, x0, #0x0
		0000000000000da0:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x191
     da4: f2c64669     	movk	x9, #0x3233, lsl #32
     da8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000da8:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
     dac: 91000021     	add	x1, x1, #0x0
		0000000000000dac:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
     db0: f2e00609     	movk	x9, #0x30, lsl #48
     db4: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000db4:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x840
     db8: 91000063     	add	x3, x3, #0x0
		0000000000000db8:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x840
     dbc: 52801c62     	mov	w2, #0xe3               // =227
     dc0: f9000109     	str	x9, [x8]
		0000000000000dc0:  R_AARCH64_LDST64_ABS_LO12_NC	aw86320_data_base+0x110
     dc4: 94000000     	bl	0xdc4 <aw_i2c_probe+0x4dc>
		0000000000000dc4:  R_AARCH64_CALL26	_printk
     dc8: 2a1403e4     	mov	w4, w20
     dcc: 37f80654     	tbnz	w20, #0x1f, 0xe94 <aw_i2c_probe+0x5ac>
     dd0: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000dd0:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_bss_base
     dd4: f9000113     	str	x19, [x8]
		0000000000000dd4:  R_AARCH64_LDST64_ABS_LO12_NC	aw86320_bss_base
     dd8: 940000f5     	bl	0x11ac <create_pump_proc_entry>
		0000000000000dd8:  R_AARCH64_CALL26	create_pump_proc_entry
     ddc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ddc:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x333
     de0: 91000021     	add	x1, x1, #0x0
		0000000000000de0:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x333
     de4: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000de4:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_bss_base+0x8
     de8: 91000042     	add	x2, x2, #0x0
		0000000000000de8:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_bss_base+0x8
     dec: 9107c260     	add	x0, x19, #0x1f0
     df0: 94000000     	bl	0xdf0 <aw_i2c_probe+0x508>
		0000000000000df0:  R_AARCH64_CALL26	__mutex_init
     df4: aa1303e0     	mov	x0, x19
     df8: 9400017d     	bl	0x13ec <aw86320_misc_para_init>
		0000000000000df8:  R_AARCH64_CALL26	aw86320_misc_para_init
     dfc: aa1303e0     	mov	x0, x19
     e00: 52800021     	mov	w1, #0x1                // =1
     e04: 12800602     	mov	w2, #-0x31              // =-49
     e08: 52800203     	mov	w3, #0x10               // =16
     e0c: 940008bb     	bl	0x30f8 <haptic_i2c_write_bits>
		0000000000000e0c:  R_AARCH64_CALL26	haptic_i2c_write_bits
     e10: aa1303e0     	mov	x0, x19
     e14: 2a1f03e1     	mov	w1, wzr
     e18: 97fffcff     	bl	0x214 <aw86320_play_mode>
		0000000000000e18:  R_AARCH64_CALL26	aw86320_play_mode
     e1c: aa1303e0     	mov	x0, x19
     e20: 940001a3     	bl	0x14ac <aw86320_interrupt_setup>
		0000000000000e20:  R_AARCH64_CALL26	aw86320_interrupt_setup
     e24: aa1303e0     	mov	x0, x19
     e28: 9400028d     	bl	0x185c <ram_work_init>
		0000000000000e28:  R_AARCH64_CALL26	ram_work_init
     e2c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e2c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xa50
     e30: 91000000     	add	x0, x0, #0x0
		0000000000000e30:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xa50
     e34: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e34:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
     e38: 91000021     	add	x1, x1, #0x0
		0000000000000e38:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
     e3c: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000e3c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x4b5
     e40: 91000063     	add	x3, x3, #0x0
		0000000000000e40:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x4b5
     e44: 52808d82     	mov	w2, #0x46c              // =1132
     e48: 94000000     	bl	0xe48 <aw_i2c_probe+0x560>
		0000000000000e48:  R_AARCH64_CALL26	_printk
     e4c: aa1303e0     	mov	x0, x19
     e50: 2a1f03e1     	mov	w1, wzr
     e54: 940002a0     	bl	0x18d4 <enableMicroPump>
		0000000000000e54:  R_AARCH64_CALL26	enableMicroPump
     e58: 2a1f03e0     	mov	w0, wzr
     e5c: 17fffec8     	b	0x97c <aw_i2c_probe+0x94>
     e60: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e60:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x529
     e64: 91000000     	add	x0, x0, #0x0
		0000000000000e64:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x529
     e68: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e68:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
     e6c: 91000021     	add	x1, x1, #0x0
		0000000000000e6c:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
     e70: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000e70:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x840
     e74: 91000063     	add	x3, x3, #0x0
		0000000000000e74:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x840
     e78: 52801cc2     	mov	w2, #0xe6               // =230
     e7c: 94000000     	bl	0xe7c <aw_i2c_probe+0x594>
		0000000000000e7c:  R_AARCH64_CALL26	_printk
     e80: 5280fa00     	mov	w0, #0x7d0              // =2000
     e84: 52813881     	mov	w1, #0x9c4              // =2500
     e88: 52800042     	mov	w2, #0x2                // =2
     e8c: 94000000     	bl	0xe8c <aw_i2c_probe+0x5a4>
		0000000000000e8c:  R_AARCH64_CALL26	usleep_range_state
     e90: 128002a4     	mov	w4, #-0x16              // =-22
     e94: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e94:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x4fd
     e98: 91000000     	add	x0, x0, #0x0
		0000000000000e98:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x4fd
     e9c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e9c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
     ea0: 91000021     	add	x1, x1, #0x0
		0000000000000ea0:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
     ea4: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000ea4:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x4b5
     ea8: 91000063     	add	x3, x3, #0x0
		0000000000000ea8:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x4b5
     eac: 52808b42     	mov	w2, #0x45a              // =1114
     eb0: 2a0403f4     	mov	w20, w4
     eb4: 94000000     	bl	0xeb4 <aw_i2c_probe+0x5cc>
		0000000000000eb4:  R_AARCH64_CALL26	_printk
     eb8: b9401a60     	ldr	w0, [x19, #0x18]
     ebc: 94000000     	bl	0xebc <aw_i2c_probe+0x5d4>
		0000000000000ebc:  R_AARCH64_CALL26	gpio_to_desc
     ec0: 2a1f03e1     	mov	w1, wzr
     ec4: 94000000     	bl	0xec4 <aw_i2c_probe+0x5dc>
		0000000000000ec4:  R_AARCH64_CALL26	gpiod_direction_output_raw
     ec8: b9401a60     	ldr	w0, [x19, #0x18]
     ecc: 36ffe020     	tbz	w0, #0x1f, 0xad0 <aw_i2c_probe+0x1e8>
     ed0: 17ffff03     	b	0xadc <aw_i2c_probe+0x1f4>
     ed4: 94000000     	bl	0xed4 <aw_i2c_probe+0x5ec>
		0000000000000ed4:  R_AARCH64_CALL26	__stack_chk_fail
