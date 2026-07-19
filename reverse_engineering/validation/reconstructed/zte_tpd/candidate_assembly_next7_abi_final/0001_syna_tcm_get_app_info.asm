
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000010a0c <syna_tcm_get_app_info>:
   10a0c: d503233f     	paciasp
   10a10: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   10a14: f9000bf5     	str	x21, [sp, #0x10]
   10a18: a9024ff4     	stp	x20, x19, [sp, #0x20]
   10a1c: 910003fd     	mov	x29, sp
   10a20: b4000a40     	cbz	x0, 0x10b68 <syna_tcm_get_app_info+0x15c>
   10a24: 2a0203f5     	mov	w21, w2
   10a28: 39402402     	ldrb	w2, [x0, #0x9]
   10a2c: aa0003f3     	mov	x19, x0
   10a30: 7100045f     	cmp	w2, #0x1
   10a34: 54000a81     	b.ne	0x10b84 <syna_tcm_get_app_info+0x178>
   10a38: aa0103f4     	mov	x20, x1
   10a3c: 350000b5     	cbnz	w21, 0x10a50 <syna_tcm_get_app_info+0x44>
   10a40: f9402668     	ldr	x8, [x19, #0x48]
   10a44: 39405108     	ldrb	w8, [x8, #0x14]
   10a48: 36001148     	tbz	w8, #0x0, 0x10c70 <syna_tcm_get_app_info+0x264>
   10a4c: 2a1f03f5     	mov	w21, wzr
   10a50: f941ce68     	ldr	x8, [x19, #0x398]
   10a54: aa1303e0     	mov	x0, x19
   10a58: 52800401     	mov	w1, #0x20               // =32
   10a5c: aa1f03e2     	mov	x2, xzr
   10a60: 2a1f03e3     	mov	w3, wzr
   10a64: aa1f03e4     	mov	x4, xzr
   10a68: 2a1503e5     	mov	w5, w21
   10a6c: b85fc110     	ldur	w16, [x8, #-0x4]
   10a70: 728751d1     	movk	w17, #0x3a8e
   10a74: 72a48411     	movk	w17, #0x2420, lsl #16
   10a78: 6b11021f     	cmp	w16, w17
   10a7c: 54000040     	b.eq	0x10a84 <syna_tcm_get_app_info+0x78>
   10a80: d4304500     	brk	#0x8228
   10a84: d63f0100     	blr	x8
   10a88: 37f808c0     	tbnz	w0, #0x1f, 0x10ba0 <syna_tcm_get_app_info+0x194>
   10a8c: b9415668     	ldr	w8, [x19, #0x154]
   10a90: 39462262     	ldrb	w2, [x19, #0x188]
   10a94: 52800609     	mov	w9, #0x30               // =48
   10a98: 7100c11f     	cmp	w8, #0x30
   10a9c: 1a893115     	csel	w21, w8, w9, lo
   10aa0: 35000942     	cbnz	w2, 0x10bc8 <syna_tcm_get_app_info+0x1bc>
   10aa4: 91056260     	add	x0, x19, #0x158
   10aa8: 94000000     	bl	0x10aa8 <syna_tcm_get_app_info+0x9c>
		0000000000010aa8:  R_AARCH64_CALL26	mutex_lock
   10aac: 39462268     	ldrb	w8, [x19, #0x188]
   10ab0: f940a661     	ldr	x1, [x19, #0x148]
   10ab4: 11000508     	add	w8, w8, #0x1
   10ab8: 39062268     	strb	w8, [x19, #0x188]
   10abc: b4000a01     	cbz	x1, 0x10bfc <syna_tcm_get_app_info+0x1f0>
   10ac0: b9415262     	ldr	w2, [x19, #0x150]
   10ac4: 6b0202bf     	cmp	w21, w2
   10ac8: 540008c8     	b.hi	0x10be0 <syna_tcm_get_app_info+0x1d4>
   10acc: 9102c260     	add	x0, x19, #0xb0
   10ad0: aa1503e2     	mov	x2, x21
   10ad4: 94000000     	bl	0x10ad4 <syna_tcm_get_app_info+0xc8>
		0000000000010ad4:  R_AARCH64_CALL26	memcpy
   10ad8: 39462262     	ldrb	w2, [x19, #0x188]
   10adc: 7100045f     	cmp	w2, #0x1
   10ae0: 54000aa1     	b.ne	0x10c34 <syna_tcm_get_app_info+0x228>
   10ae4: 2a1f03e8     	mov	w8, wzr
   10ae8: 91056260     	add	x0, x19, #0x158
   10aec: 39062268     	strb	w8, [x19, #0x188]
   10af0: 94000000     	bl	0x10af0 <syna_tcm_get_app_info+0xe4>
		0000000000010af0:  R_AARCH64_CALL26	mutex_unlock
   10af4: b40000b4     	cbz	x20, 0x10b08 <syna_tcm_get_app_info+0xfc>
   10af8: 9102c261     	add	x1, x19, #0xb0
   10afc: aa1403e0     	mov	x0, x20
   10b00: aa1503e2     	mov	x2, x21
   10b04: 94000000     	bl	0x10b04 <syna_tcm_get_app_info+0xf8>
		0000000000010b04:  R_AARCH64_CALL26	memcpy
   10b08: 79416662     	ldrh	w2, [x19, #0xb2]
   10b0c: 35000242     	cbnz	w2, 0x10b54 <syna_tcm_get_app_info+0x148>
   10b10: 7941a268     	ldrh	w8, [x19, #0xd0]
   10b14: 7941a669     	ldrh	w9, [x19, #0xd2]
   10b18: 2a1f03e0     	mov	w0, wzr
   10b1c: 7941b66b     	ldrh	w11, [x19, #0xda]
   10b20: 29022668     	stp	w8, w9, [x19, #0x10]
   10b24: 7941aa68     	ldrh	w8, [x19, #0xd4]
   10b28: 7941b269     	ldrh	w9, [x19, #0xd8]
   10b2c: b9001a68     	str	w8, [x19, #0x18]
   10b30: a94c2a68     	ldp	x8, x10, [x19, #0xc0]
   10b34: 2903ae69     	stp	w9, w11, [x19, #0x1c]
   10b38: f802c26a     	stur	x10, [x19, #0x2c]
   10b3c: f8024268     	stur	x8, [x19, #0x24]
   10b40: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   10b44: f9400bf5     	ldr	x21, [sp, #0x10]
   10b48: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   10b4c: d50323bf     	autiasp
   10b50: d65f03c0     	ret
   10b54: 7103fc5f     	cmp	w2, #0xff
   10b58: 540007e1     	b.ne	0x10c54 <syna_tcm_get_app_info+0x248>
   10b5c: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010b5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3aab
   10b60: 91000000     	add	x0, x0, #0x0
		0000000000010b60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3aab
   10b64: 1400003e     	b	0x10c5c <syna_tcm_get_app_info+0x250>
   10b68: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010b68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd77
   10b6c: 91000000     	add	x0, x0, #0x0
		0000000000010b6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd77
   10b70: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010b70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93a
   10b74: 91000021     	add	x1, x1, #0x0
		0000000000010b74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93a
   10b78: 94000000     	bl	0x10b78 <syna_tcm_get_app_info+0x16c>
		0000000000010b78:  R_AARCH64_CALL26	_printk
   10b7c: 12801e00     	mov	w0, #-0xf1              // =-241
   10b80: 17fffff0     	b	0x10b40 <syna_tcm_get_app_info+0x134>
   10b84: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010b84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x115a
   10b88: 91000000     	add	x0, x0, #0x0
		0000000000010b88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x115a
   10b8c: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010b8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93a
   10b90: 91000021     	add	x1, x1, #0x0
		0000000000010b90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93a
   10b94: 94000000     	bl	0x10b94 <syna_tcm_get_app_info+0x188>
		0000000000010b94:  R_AARCH64_CALL26	_printk
   10b98: 12801e00     	mov	w0, #-0xf1              // =-241
   10b9c: 17ffffe9     	b	0x10b40 <syna_tcm_get_app_info+0x134>
   10ba0: 90000008     	adrp	x8, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010ba0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x368f
   10ba4: 91000108     	add	x8, x8, #0x0
		0000000000010ba4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x368f
   10ba8: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010ba8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93a
   10bac: 91000021     	add	x1, x1, #0x0
		0000000000010bac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93a
   10bb0: 2a0003f3     	mov	w19, w0
   10bb4: aa0803e0     	mov	x0, x8
   10bb8: 52800402     	mov	w2, #0x20               // =32
   10bbc: 94000000     	bl	0x10bbc <syna_tcm_get_app_info+0x1b0>
		0000000000010bbc:  R_AARCH64_CALL26	_printk
   10bc0: 2a1303e0     	mov	w0, w19
   10bc4: 17ffffdf     	b	0x10b40 <syna_tcm_get_app_info+0x134>
   10bc8: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010bc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c79
   10bcc: 91000000     	add	x0, x0, #0x0
		0000000000010bcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c79
   10bd0: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010bd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bfd
   10bd4: 91000021     	add	x1, x1, #0x0
		0000000000010bd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bfd
   10bd8: 94000000     	bl	0x10bd8 <syna_tcm_get_app_info+0x1cc>
		0000000000010bd8:  R_AARCH64_CALL26	_printk
   10bdc: 17ffffb2     	b	0x10aa4 <syna_tcm_get_app_info+0x98>
   10be0: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010be0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3294
   10be4: 91000000     	add	x0, x0, #0x0
		0000000000010be4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3294
   10be8: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010be8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaea
   10bec: 91000021     	add	x1, x1, #0x0
		0000000000010bec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaea
   10bf0: 52800603     	mov	w3, #0x30               // =48
   10bf4: 2a1503e4     	mov	w4, w21
   10bf8: 94000000     	bl	0x10bf8 <syna_tcm_get_app_info+0x1ec>
		0000000000010bf8:  R_AARCH64_CALL26	_printk
   10bfc: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010bfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27a0
   10c00: 91000000     	add	x0, x0, #0x0
		0000000000010c00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27a0
   10c04: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010c04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93a
   10c08: 91000021     	add	x1, x1, #0x0
		0000000000010c08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93a
   10c0c: 94000000     	bl	0x10c0c <syna_tcm_get_app_info+0x200>
		0000000000010c0c:  R_AARCH64_CALL26	_printk
   10c10: 39462262     	ldrb	w2, [x19, #0x188]
   10c14: 7100045f     	cmp	w2, #0x1
   10c18: 540003a1     	b.ne	0x10c8c <syna_tcm_get_app_info+0x280>
   10c1c: 2a1f03e8     	mov	w8, wzr
   10c20: 91056260     	add	x0, x19, #0x158
   10c24: 39062268     	strb	w8, [x19, #0x188]
   10c28: 94000000     	bl	0x10c28 <syna_tcm_get_app_info+0x21c>
		0000000000010c28:  R_AARCH64_CALL26	mutex_unlock
   10c2c: 128002a0     	mov	w0, #-0x16              // =-22
   10c30: 17ffffc4     	b	0x10b40 <syna_tcm_get_app_info+0x134>
   10c34: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010c34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c79
   10c38: 91000000     	add	x0, x0, #0x0
		0000000000010c38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c79
   10c3c: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010c3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x473d
   10c40: 91000021     	add	x1, x1, #0x0
		0000000000010c40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x473d
   10c44: 94000000     	bl	0x10c44 <syna_tcm_get_app_info+0x238>
		0000000000010c44:  R_AARCH64_CALL26	_printk
   10c48: 39462268     	ldrb	w8, [x19, #0x188]
   10c4c: 51000508     	sub	w8, w8, #0x1
   10c50: 17ffffa6     	b	0x10ae8 <syna_tcm_get_app_info+0xdc>
   10c54: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010c54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be8
   10c58: 91000000     	add	x0, x0, #0x0
		0000000000010c58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be8
   10c5c: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010c5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93a
   10c60: 91000021     	add	x1, x1, #0x0
		0000000000010c60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93a
   10c64: 94000000     	bl	0x10c64 <syna_tcm_get_app_info+0x258>
		0000000000010c64:  R_AARCH64_CALL26	_printk
   10c68: 12801e20     	mov	w0, #-0xf2              // =-242
   10c6c: 17ffffb5     	b	0x10b40 <syna_tcm_get_app_info+0x134>
   10c70: b9420e75     	ldr	w21, [x19, #0x20c]
   10c74: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010c74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4105
   10c78: 91000000     	add	x0, x0, #0x0
		0000000000010c78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4105
   10c7c: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010c7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93a
   10c80: 91000021     	add	x1, x1, #0x0
		0000000000010c80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93a
   10c84: 94000000     	bl	0x10c84 <syna_tcm_get_app_info+0x278>
		0000000000010c84:  R_AARCH64_CALL26	_printk
   10c88: 17ffff72     	b	0x10a50 <syna_tcm_get_app_info+0x44>
   10c8c: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010c8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c79
   10c90: 91000000     	add	x0, x0, #0x0
		0000000000010c90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c79
   10c94: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010c94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x473d
   10c98: 91000021     	add	x1, x1, #0x0
		0000000000010c98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x473d
   10c9c: 94000000     	bl	0x10c9c <syna_tcm_get_app_info+0x290>
		0000000000010c9c:  R_AARCH64_CALL26	_printk
   10ca0: 39462268     	ldrb	w8, [x19, #0x188]
   10ca4: 51000508     	sub	w8, w8, #0x1
   10ca8: 17ffffde     	b	0x10c20 <syna_tcm_get_app_info+0x214>
