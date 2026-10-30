
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003900 <syna_tcm_read_cs_data>:
    3900: d503233f     	paciasp
    3904: d10543ff     	sub	sp, sp, #0x150
    3908: a90f7bfd     	stp	x29, x30, [sp, #0xf0]
    390c: a9106ffc     	stp	x28, x27, [sp, #0x100]
    3910: a91167fa     	stp	x26, x25, [sp, #0x110]
    3914: a9125ff8     	stp	x24, x23, [sp, #0x120]
    3918: a91357f6     	stp	x22, x21, [sp, #0x130]
    391c: a9144ff4     	stp	x20, x19, [sp, #0x140]
    3920: 9103c3fd     	add	x29, sp, #0xf0
    3924: d5384108     	mrs	x8, SP_EL0
    3928: f9438908     	ldr	x8, [x8, #0x710]
    392c: f81f83a8     	stur	x8, [x29, #-0x8]
    3930: a90dffff     	stp	xzr, xzr, [sp, #0xd8]
    3934: a90cffff     	stp	xzr, xzr, [sp, #0xc8]
    3938: a90bffff     	stp	xzr, xzr, [sp, #0xb8]
    393c: a90affff     	stp	xzr, xzr, [sp, #0xa8]
    3940: a909ffff     	stp	xzr, xzr, [sp, #0x98]
    3944: a908ffff     	stp	xzr, xzr, [sp, #0x88]
    3948: a907ffff     	stp	xzr, xzr, [sp, #0x78]
    394c: a906ffff     	stp	xzr, xzr, [sp, #0x68]
    3950: a905ffff     	stp	xzr, xzr, [sp, #0x58]
    3954: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    3958: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    395c: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    3960: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    3964: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    3968: b4000de0     	cbz	x0, 0x3b24 <syna_tcm_read_cs_data+0x224>
    396c: aa0103f5     	mov	x21, x1
    3970: b4000e01     	cbz	x1, 0x3b30 <syna_tcm_read_cs_data+0x230>
    3974: 2a0203f4     	mov	w20, w2
    3978: 34000dc2     	cbz	w2, 0x3b30 <syna_tcm_read_cs_data+0x230>
    397c: 2a0403f7     	mov	w23, w4
    3980: 2a0303f8     	mov	w24, w3
    3984: aa0003f3     	mov	x19, x0
    3988: a90dffff     	stp	xzr, xzr, [sp, #0xd8]
    398c: a90cffff     	stp	xzr, xzr, [sp, #0xc8]
    3990: a90bffff     	stp	xzr, xzr, [sp, #0xb8]
    3994: a90affff     	stp	xzr, xzr, [sp, #0xa8]
    3998: a909ffff     	stp	xzr, xzr, [sp, #0x98]
    399c: a908ffff     	stp	xzr, xzr, [sp, #0x88]
    39a0: a907ffff     	stp	xzr, xzr, [sp, #0x78]
    39a4: a906ffff     	stp	xzr, xzr, [sp, #0x68]
    39a8: a905ffff     	stp	xzr, xzr, [sp, #0x58]
    39ac: f9002bff     	str	xzr, [sp, #0x50]
    39b0: 34000084     	cbz	w4, 0x39c0 <syna_tcm_read_cs_data+0xc0>
    39b4: b9420e79     	ldr	w25, [x19, #0x20c]
    39b8: b941ea76     	ldr	w22, [x19, #0x1e8]
    39bc: 14000003     	b	0x39c8 <syna_tcm_read_cs_data+0xc8>
    39c0: 2a1f03f6     	mov	w22, wzr
    39c4: 2a1f03f9     	mov	w25, wzr
    39c8: 910143e8     	add	x8, sp, #0x50
    39cc: 9000001a     	adrp	x26, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000039cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb000
    39d0: 9100035a     	add	x26, x26, #0x0
		00000000000039d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb000
    39d4: 9000001b     	adrp	x27, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000039d4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x964
    39d8: 9100037b     	add	x27, x27, #0x0
		00000000000039d8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x964
    39dc: 91014100     	add	x0, x8, #0x50
    39e0: aa1a03e1     	mov	x1, x26
    39e4: aa1b03e2     	mov	x2, x27
    39e8: a9097fff     	stp	xzr, xzr, [sp, #0x90]
    39ec: 94000000     	bl	0x39ec <syna_tcm_read_cs_data+0xec>
		00000000000039ec:  R_AARCH64_CALL26	__mutex_init
    39f0: 910023e8     	add	x8, sp, #0x8
    39f4: aa1a03e1     	mov	x1, x26
    39f8: aa1b03e2     	mov	x2, x27
    39fc: 91004100     	add	x0, x8, #0x10
    3a00: 390123ff     	strb	wzr, [sp, #0x48]
    3a04: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    3a08: 94000000     	bl	0x3a08 <syna_tcm_read_cs_data+0x108>
		0000000000003a08:  R_AARCH64_CALL26	__mutex_init
    3a0c: 910143e1     	add	x1, sp, #0x50
    3a10: aa1303e0     	mov	x0, x19
    3a14: 2a1903e2     	mov	w2, w25
    3a18: 2a1603e3     	mov	w3, w22
    3a1c: 94000000     	bl	0x3a1c <syna_tcm_read_cs_data+0x11c>
		0000000000003a1c:  R_AARCH64_CALL26	syna_tcm_set_up_flash_access
    3a20: 37f80960     	tbnz	w0, #0x1f, 0x3b4c <syna_tcm_read_cs_data+0x24c>
    3a24: b9407fe8     	ldr	w8, [sp, #0x7c]
    3a28: 340000a8     	cbz	w8, 0x3a3c <syna_tcm_read_cs_data+0x13c>
    3a2c: 0b080289     	add	w9, w20, w8
    3a30: 51000529     	sub	w9, w9, #0x1
    3a34: 1ac80929     	udiv	w9, w9, w8
    3a38: 14000002     	b	0x3a40 <syna_tcm_read_cs_data+0x140>
    3a3c: 2a1f03e9     	mov	w9, wzr
    3a40: 1b087d23     	mul	w3, w9, w8
    3a44: 910143e1     	add	x1, sp, #0x50
    3a48: 910023e2     	add	x2, sp, #0x8
    3a4c: aa1303e0     	mov	x0, x19
    3a50: 2a1803e4     	mov	w4, w24
    3a54: 2a1703e5     	mov	w5, w23
    3a58: 94000000     	bl	0x3a58 <syna_tcm_read_cs_data+0x158>
		0000000000003a58:  R_AARCH64_CALL26	syna_tcm_read_flash_boot_cs_config
    3a5c: 37f80b00     	tbnz	w0, #0x1f, 0x3bbc <syna_tcm_read_cs_data+0x2bc>
    3a60: f94007e1     	ldr	x1, [sp, #0x8]
    3a64: b4000c81     	cbz	x1, 0x3bf4 <syna_tcm_read_cs_data+0x2f4>
    3a68: b94013e2     	ldr	w2, [sp, #0x10]
    3a6c: 6b14005f     	cmp	w2, w20
    3a70: 54000b43     	b.lo	0x3bd8 <syna_tcm_read_cs_data+0x2d8>
    3a74: 2a1403e2     	mov	w2, w20
    3a78: aa1503e0     	mov	x0, x21
    3a7c: 94000000     	bl	0x3a7c <syna_tcm_read_cs_data+0x17c>
		0000000000003a7c:  R_AARCH64_CALL26	memcpy
    3a80: 2a1f03f4     	mov	w20, wzr
    3a84: 39402668     	ldrb	w8, [x19, #0x9]
    3a88: 71002d1f     	cmp	w8, #0xb
    3a8c: 540000a1     	b.ne	0x3aa0 <syna_tcm_read_cs_data+0x1a0>
    3a90: aa1303e0     	mov	x0, x19
    3a94: 52800021     	mov	w1, #0x1                // =1
    3a98: 2a1603e2     	mov	w2, w22
    3a9c: 94000000     	bl	0x3a9c <syna_tcm_read_cs_data+0x19c>
		0000000000003a9c:  R_AARCH64_CALL26	syna_tcm_switch_fw_mode
    3aa0: 394123e2     	ldrb	w2, [sp, #0x48]
    3aa4: 350005c2     	cbnz	w2, 0x3b5c <syna_tcm_read_cs_data+0x25c>
    3aa8: f94007f3     	ldr	x19, [sp, #0x8]
    3aac: 94000000     	bl	0x3aac <syna_tcm_read_cs_data+0x1ac>
		0000000000003aac:  R_AARCH64_CALL26	syna_request_managed_device
    3ab0: b4000620     	cbz	x0, 0x3b74 <syna_tcm_read_cs_data+0x274>
    3ab4: b4000073     	cbz	x19, 0x3ac0 <syna_tcm_read_cs_data+0x1c0>
    3ab8: aa1303e1     	mov	x1, x19
    3abc: 94000000     	bl	0x3abc <syna_tcm_read_cs_data+0x1bc>
		0000000000003abc:  R_AARCH64_CALL26	devm_kfree
    3ac0: 394343e2     	ldrb	w2, [sp, #0xd0]
    3ac4: f9000bff     	str	xzr, [sp, #0x10]
    3ac8: 390123ff     	strb	wzr, [sp, #0x48]
    3acc: 35000602     	cbnz	w2, 0x3b8c <syna_tcm_read_cs_data+0x28c>
    3ad0: f9404bf3     	ldr	x19, [sp, #0x90]
    3ad4: 94000000     	bl	0x3ad4 <syna_tcm_read_cs_data+0x1d4>
		0000000000003ad4:  R_AARCH64_CALL26	syna_request_managed_device
    3ad8: b4000660     	cbz	x0, 0x3ba4 <syna_tcm_read_cs_data+0x2a4>
    3adc: b4000073     	cbz	x19, 0x3ae8 <syna_tcm_read_cs_data+0x1e8>
    3ae0: aa1303e1     	mov	x1, x19
    3ae4: 94000000     	bl	0x3ae4 <syna_tcm_read_cs_data+0x1e4>
		0000000000003ae4:  R_AARCH64_CALL26	devm_kfree
    3ae8: 2a1403e0     	mov	w0, w20
    3aec: d5384108     	mrs	x8, SP_EL0
    3af0: f9438908     	ldr	x8, [x8, #0x710]
    3af4: f85f83a9     	ldur	x9, [x29, #-0x8]
    3af8: eb09011f     	cmp	x8, x9
    3afc: 540008a1     	b.ne	0x3c10 <syna_tcm_read_cs_data+0x310>
    3b00: a9544ff4     	ldp	x20, x19, [sp, #0x140]
    3b04: a95357f6     	ldp	x22, x21, [sp, #0x130]
    3b08: a9525ff8     	ldp	x24, x23, [sp, #0x120]
    3b0c: a95167fa     	ldp	x26, x25, [sp, #0x110]
    3b10: a9506ffc     	ldp	x28, x27, [sp, #0x100]
    3b14: a94f7bfd     	ldp	x29, x30, [sp, #0xf0]
    3b18: 910543ff     	add	sp, sp, #0x150
    3b1c: d50323bf     	autiasp
    3b20: d65f03c0     	ret
    3b24: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003b24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
    3b28: 91000000     	add	x0, x0, #0x0
		0000000000003b28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
    3b2c: 14000003     	b	0x3b38 <syna_tcm_read_cs_data+0x238>
    3b30: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003b30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3624
    3b34: 91000000     	add	x0, x0, #0x0
		0000000000003b34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3624
    3b38: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003b38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2980
    3b3c: 91000021     	add	x1, x1, #0x0
		0000000000003b3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2980
    3b40: 94000000     	bl	0x3b40 <syna_tcm_read_cs_data+0x240>
		0000000000003b40:  R_AARCH64_CALL26	_printk
    3b44: 12801e00     	mov	w0, #-0xf1              // =-241
    3b48: 17ffffe9     	b	0x3aec <syna_tcm_read_cs_data+0x1ec>
    3b4c: 2a0003f4     	mov	w20, w0
    3b50: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003b50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1552
    3b54: 91000000     	add	x0, x0, #0x0
		0000000000003b54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1552
    3b58: 1400001c     	b	0x3bc8 <syna_tcm_read_cs_data+0x2c8>
    3b5c: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003b5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
    3b60: 91000000     	add	x0, x0, #0x0
		0000000000003b60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
    3b64: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003b64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
    3b68: 91000021     	add	x1, x1, #0x0
		0000000000003b68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
    3b6c: 94000000     	bl	0x3b6c <syna_tcm_read_cs_data+0x26c>
		0000000000003b6c:  R_AARCH64_CALL26	_printk
    3b70: 17ffffce     	b	0x3aa8 <syna_tcm_read_cs_data+0x1a8>
    3b74: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003b74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
    3b78: 91000000     	add	x0, x0, #0x0
		0000000000003b78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
    3b7c: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003b7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
    3b80: 91000021     	add	x1, x1, #0x0
		0000000000003b80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
    3b84: 94000000     	bl	0x3b84 <syna_tcm_read_cs_data+0x284>
		0000000000003b84:  R_AARCH64_CALL26	_printk
    3b88: 17ffffce     	b	0x3ac0 <syna_tcm_read_cs_data+0x1c0>
    3b8c: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003b8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
    3b90: 91000000     	add	x0, x0, #0x0
		0000000000003b90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
    3b94: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003b94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
    3b98: 91000021     	add	x1, x1, #0x0
		0000000000003b98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
    3b9c: 94000000     	bl	0x3b9c <syna_tcm_read_cs_data+0x29c>
		0000000000003b9c:  R_AARCH64_CALL26	_printk
    3ba0: 17ffffcc     	b	0x3ad0 <syna_tcm_read_cs_data+0x1d0>
    3ba4: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003ba4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
    3ba8: 91000000     	add	x0, x0, #0x0
		0000000000003ba8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
    3bac: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003bac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
    3bb0: 91000021     	add	x1, x1, #0x0
		0000000000003bb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
    3bb4: 94000000     	bl	0x3bb4 <syna_tcm_read_cs_data+0x2b4>
		0000000000003bb4:  R_AARCH64_CALL26	_printk
    3bb8: 17ffffcc     	b	0x3ae8 <syna_tcm_read_cs_data+0x1e8>
    3bbc: 2a0003f4     	mov	w20, w0
    3bc0: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003bc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23cc
    3bc4: 91000000     	add	x0, x0, #0x0
		0000000000003bc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23cc
    3bc8: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003bc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2980
    3bcc: 91000021     	add	x1, x1, #0x0
		0000000000003bcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2980
    3bd0: 94000000     	bl	0x3bd0 <syna_tcm_read_cs_data+0x2d0>
		0000000000003bd0:  R_AARCH64_CALL26	_printk
    3bd4: 17ffffac     	b	0x3a84 <syna_tcm_read_cs_data+0x184>
    3bd8: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003bd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
    3bdc: 91000000     	add	x0, x0, #0x0
		0000000000003bdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
    3be0: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003be0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
    3be4: 91000021     	add	x1, x1, #0x0
		0000000000003be4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
    3be8: 2a1403e3     	mov	w3, w20
    3bec: 2a1403e4     	mov	w4, w20
    3bf0: 94000000     	bl	0x3bf0 <syna_tcm_read_cs_data+0x2f0>
		0000000000003bf0:  R_AARCH64_CALL26	_printk
    3bf4: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003bf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc698
    3bf8: 91000000     	add	x0, x0, #0x0
		0000000000003bf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc698
    3bfc: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003bfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2980
    3c00: 91000021     	add	x1, x1, #0x0
		0000000000003c00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2980
    3c04: 94000000     	bl	0x3c04 <syna_tcm_read_cs_data+0x304>
		0000000000003c04:  R_AARCH64_CALL26	_printk
    3c08: 128002b4     	mov	w20, #-0x16             // =-22
    3c0c: 17ffff9e     	b	0x3a84 <syna_tcm_read_cs_data+0x184>
    3c10: 94000000     	bl	0x3c10 <syna_tcm_read_cs_data+0x310>
		0000000000003c10:  R_AARCH64_CALL26	__stack_chk_fail
