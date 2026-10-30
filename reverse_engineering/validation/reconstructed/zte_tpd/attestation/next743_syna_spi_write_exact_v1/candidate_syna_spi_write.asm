
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000029a40 <syna_spi_write>:
   29a40: d503233f     	paciasp
   29a44: d10303ff     	sub	sp, sp, #0xc0
   29a48: a9087bfd     	stp	x29, x30, [sp, #0x80]
   29a4c: a9095ff8     	stp	x24, x23, [sp, #0x90]
   29a50: a90a57f6     	stp	x22, x21, [sp, #0xa0]
   29a54: a90b4ff4     	stp	x20, x19, [sp, #0xb0]
   29a58: 910203fd     	add	x29, sp, #0x80
   29a5c: d5384108     	mrs	x8, SP_EL0
   29a60: f9438908     	ldr	x8, [x8, #0x710]
   29a64: f81f83a8     	stur	x8, [x29, #-0x8]
   29a68: f9400017     	ldr	x23, [x0]
   29a6c: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   29a70: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   29a74: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   29a78: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   29a7c: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   29a80: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   29a84: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   29a88: b4000dd7     	cbz	x23, 0x29c40 <syna_spi_write+0x200>
   29a8c: f94002f4     	ldr	x20, [x23]
   29a90: b4000df4     	cbz	x20, 0x29c4c <syna_spi_write+0x20c>
   29a94: 9101c2e0     	add	x0, x23, #0x70
   29a98: 2a0203f3     	mov	w19, w2
   29a9c: aa0103f5     	mov	x21, x1
   29aa0: 94000000     	bl	0x29aa0 <syna_spi_write+0x60>
		0000000000029aa0:  R_AARCH64_CALL26	mutex_lock
   29aa4: 529fffe8     	mov	w8, #0xffff             // =65535
   29aa8: 6a33011f     	bics	wzr, w8, w19
   29aac: 54000de0     	b.eq	0x29c68 <syna_spi_write+0x228>
   29ab0: 910023e8     	add	x8, sp, #0x8
   29ab4: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   29ab8: 2a1303e1     	mov	w1, w19
   29abc: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   29ac0: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   29ac4: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   29ac8: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   29acc: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   29ad0: f90007e8     	str	x8, [sp, #0x8]
   29ad4: f9000be8     	str	x8, [sp, #0x10]
   29ad8: 91016108     	add	x8, x8, #0x58
   29adc: f90033e8     	str	x8, [sp, #0x60]
   29ae0: f90037e8     	str	x8, [sp, #0x68]
   29ae4: b94066e8     	ldr	w8, [x23, #0x64]
   29ae8: 7100011f     	cmp	w8, #0x0
   29aec: 1a9f1660     	csinc	w0, w19, wzr, ne
   29af0: 94000000     	bl	0x29af0 <syna_spi_write+0xb0>
		0000000000029af0:  R_AARCH64_CALL26	syna_spi_alloc_mem
   29af4: 37f80ca0     	tbnz	w0, #0x1f, 0x29c88 <syna_spi_write+0x248>
   29af8: b4000d95     	cbz	x21, 0x29ca8 <syna_spi_write+0x268>
   29afc: 90000018     	adrp	x24, 0x29000 <syna_spi_probe+0x9d0>
		0000000000029afc:  R_AARCH64_ADR_PREL_PG_HI21	tx_buf
   29b00: f9400300     	ldr	x0, [x24]
		0000000000029b00:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   29b04: b4000d20     	cbz	x0, 0x29ca8 <syna_spi_write+0x268>
   29b08: 2a1303f6     	mov	w22, w19
   29b0c: aa1503e1     	mov	x1, x21
   29b10: aa1603e2     	mov	x2, x22
   29b14: 94000000     	bl	0x29b14 <syna_spi_write+0xd4>
		0000000000029b14:  R_AARCH64_CALL26	memcpy
   29b18: b94066e8     	ldr	w8, [x23, #0x64]
   29b1c: 34000448     	cbz	w8, 0x29ba4 <syna_spi_write+0x164>
   29b20: 340006b3     	cbz	w19, 0x29bf4 <syna_spi_write+0x1b4>
   29b24: aa1f03e9     	mov	x9, xzr
   29b28: 52800e0a     	mov	w10, #0x70              // =112
   29b2c: 9000000b     	adrp	x11, 0x29000 <syna_spi_probe+0x9d0>
		0000000000029b2c:  R_AARCH64_ADR_PREL_PG_HI21	xfer
   29b30: 5280002c     	mov	w12, #0x1               // =1
   29b34: 910023ed     	add	x13, sp, #0x8
   29b38: f9400168     	ldr	x8, [x11]
		0000000000029b38:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   29b3c: 8b0a0100     	add	x0, x8, x10
   29b40: b81a000c     	stur	w12, [x0, #-0x60]
   29b44: f940030e     	ldr	x14, [x24]
		0000000000029b44:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   29b48: 8b0901ce     	add	x14, x14, x9
   29b4c: f819000e     	stur	x14, [x0, #-0x70]
   29b50: f9400be1     	ldr	x1, [sp, #0x10]
   29b54: f940002e     	ldr	x14, [x1]
   29b58: eb0d01df     	cmp	x14, x13
   29b5c: 1a9f17ee     	cset	w14, eq
   29b60: eb0d001f     	cmp	x0, x13
   29b64: 540001a0     	b.eq	0x29b98 <syna_spi_write+0x158>
   29b68: eb01001f     	cmp	x0, x1
   29b6c: 54000160     	b.eq	0x29b98 <syna_spi_write+0x158>
   29b70: 3600014e     	tbz	w14, #0x0, 0x29b98 <syna_spi_write+0x158>
   29b74: 8b0a0108     	add	x8, x8, x10
   29b78: f9000be0     	str	x0, [sp, #0x10]
   29b7c: a900050d     	stp	x13, x1, [x8]
   29b80: f9000020     	str	x0, [x1]
   29b84: 91000529     	add	x9, x9, #0x1
   29b88: 9102214a     	add	x10, x10, #0x88
   29b8c: eb0902df     	cmp	x22, x9
   29b90: 54fffd41     	b.ne	0x29b38 <syna_spi_write+0xf8>
   29b94: 14000018     	b	0x29bf4 <syna_spi_write+0x1b4>
   29b98: 910023e2     	add	x2, sp, #0x8
   29b9c: 94000000     	bl	0x29b9c <syna_spi_write+0x15c>
		0000000000029b9c:  R_AARCH64_CALL26	__list_add_valid_or_report
   29ba0: 17fffff9     	b	0x29b84 <syna_spi_write+0x144>
   29ba4: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x9d0>
		0000000000029ba4:  R_AARCH64_ADR_PREL_PG_HI21	xfer
   29ba8: f9400309     	ldr	x9, [x24]
		0000000000029ba8:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   29bac: 910023ea     	add	x10, sp, #0x8
   29bb0: f9400108     	ldr	x8, [x8]
		0000000000029bb0:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   29bb4: f9000109     	str	x9, [x8]
   29bb8: 9101c100     	add	x0, x8, #0x70
   29bbc: f9400be1     	ldr	x1, [sp, #0x10]
   29bc0: b9001113     	str	w19, [x8, #0x10]
   29bc4: f9400029     	ldr	x9, [x1]
   29bc8: eb0a013f     	cmp	x9, x10
   29bcc: 1a9f17e9     	cset	w9, eq
   29bd0: eb0a001f     	cmp	x0, x10
   29bd4: 540008c0     	b.eq	0x29cec <syna_spi_write+0x2ac>
   29bd8: eb00003f     	cmp	x1, x0
   29bdc: 54000880     	b.eq	0x29cec <syna_spi_write+0x2ac>
   29be0: 36000869     	tbz	w9, #0x0, 0x29cec <syna_spi_write+0x2ac>
   29be4: 910023e9     	add	x9, sp, #0x8
   29be8: f9000be0     	str	x0, [sp, #0x10]
   29bec: a9070509     	stp	x9, x1, [x8, #0x70]
   29bf0: f9000020     	str	x0, [x1]
   29bf4: 910023e1     	add	x1, sp, #0x8
   29bf8: aa1403e0     	mov	x0, x20
   29bfc: 94000000     	bl	0x29bfc <syna_spi_write+0x1bc>
		0000000000029bfc:  R_AARCH64_CALL26	spi_sync
   29c00: 35000620     	cbnz	w0, 0x29cc4 <syna_spi_write+0x284>
   29c04: 9101c2e0     	add	x0, x23, #0x70
   29c08: 94000000     	bl	0x29c08 <syna_spi_write+0x1c8>
		0000000000029c08:  R_AARCH64_CALL26	mutex_unlock
   29c0c: d5384108     	mrs	x8, SP_EL0
   29c10: f9438908     	ldr	x8, [x8, #0x710]
   29c14: f85f83a9     	ldur	x9, [x29, #-0x8]
   29c18: eb09011f     	cmp	x8, x9
   29c1c: 54000661     	b.ne	0x29ce8 <syna_spi_write+0x2a8>
   29c20: 2a1303e0     	mov	w0, w19
   29c24: a94b4ff4     	ldp	x20, x19, [sp, #0xb0]
   29c28: a94a57f6     	ldp	x22, x21, [sp, #0xa0]
   29c2c: a9495ff8     	ldp	x24, x23, [sp, #0x90]
   29c30: a9487bfd     	ldp	x29, x30, [sp, #0x80]
   29c34: 910303ff     	add	sp, sp, #0xc0
   29c38: d50323bf     	autiasp
   29c3c: d65f03c0     	ret
   29c40: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x9d0>
		0000000000029c40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c0e6
   29c44: 91000000     	add	x0, x0, #0x0
		0000000000029c44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c0e6
   29c48: 14000003     	b	0x29c54 <syna_spi_write+0x214>
   29c4c: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x9d0>
		0000000000029c4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c010
   29c50: 91000000     	add	x0, x0, #0x0
		0000000000029c50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c010
   29c54: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x9d0>
		0000000000029c54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d996
   29c58: 91000021     	add	x1, x1, #0x0
		0000000000029c58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d996
   29c5c: 94000000     	bl	0x29c5c <syna_spi_write+0x21c>
		0000000000029c5c:  R_AARCH64_CALL26	_printk
   29c60: 128000b3     	mov	w19, #-0x6              // =-6
   29c64: 17ffffea     	b	0x29c0c <syna_spi_write+0x1cc>
   29c68: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x9d0>
		0000000000029c68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a6b8
   29c6c: 91000000     	add	x0, x0, #0x0
		0000000000029c6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a6b8
   29c70: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x9d0>
		0000000000029c70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d996
   29c74: 91000021     	add	x1, x1, #0x0
		0000000000029c74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d996
   29c78: 529fffe2     	mov	w2, #0xffff             // =65535
   29c7c: 94000000     	bl	0x29c7c <syna_spi_write+0x23c>
		0000000000029c7c:  R_AARCH64_CALL26	_printk
   29c80: 128002b3     	mov	w19, #-0x16             // =-22
   29c84: 17ffffe0     	b	0x29c04 <syna_spi_write+0x1c4>
   29c88: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x9d0>
		0000000000029c88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19a5a
   29c8c: 91000108     	add	x8, x8, #0x0
		0000000000029c8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19a5a
   29c90: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x9d0>
		0000000000029c90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d996
   29c94: 91000021     	add	x1, x1, #0x0
		0000000000029c94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d996
   29c98: 2a0003f3     	mov	w19, w0
   29c9c: aa0803e0     	mov	x0, x8
   29ca0: 94000000     	bl	0x29ca0 <syna_spi_write+0x260>
		0000000000029ca0:  R_AARCH64_CALL26	_printk
   29ca4: 17ffffd8     	b	0x29c04 <syna_spi_write+0x1c4>
   29ca8: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x9d0>
		0000000000029ca8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b7b7
   29cac: 91000000     	add	x0, x0, #0x0
		0000000000029cac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b7b7
   29cb0: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x9d0>
		0000000000029cb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d996
   29cb4: 91000021     	add	x1, x1, #0x0
		0000000000029cb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d996
   29cb8: 94000000     	bl	0x29cb8 <syna_spi_write+0x278>
		0000000000029cb8:  R_AARCH64_CALL26	_printk
   29cbc: 128002b3     	mov	w19, #-0x16             // =-22
   29cc0: 17ffffd1     	b	0x29c04 <syna_spi_write+0x1c4>
   29cc4: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x9d0>
		0000000000029cc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bb9f
   29cc8: 91000108     	add	x8, x8, #0x0
		0000000000029cc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bb9f
   29ccc: 2a0003f3     	mov	w19, w0
   29cd0: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x9d0>
		0000000000029cd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d996
   29cd4: 91000021     	add	x1, x1, #0x0
		0000000000029cd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d996
   29cd8: aa0803e0     	mov	x0, x8
   29cdc: 2a1303e2     	mov	w2, w19
   29ce0: 94000000     	bl	0x29ce0 <syna_spi_write+0x2a0>
		0000000000029ce0:  R_AARCH64_CALL26	_printk
   29ce4: 17ffffc8     	b	0x29c04 <syna_spi_write+0x1c4>
   29ce8: 94000000     	bl	0x29ce8 <syna_spi_write+0x2a8>
		0000000000029ce8:  R_AARCH64_CALL26	__stack_chk_fail
   29cec: 910023e2     	add	x2, sp, #0x8
   29cf0: 94000000     	bl	0x29cf0 <syna_spi_write+0x2b0>
		0000000000029cf0:  R_AARCH64_CALL26	__list_add_valid_or_report
   29cf4: 17ffffc0     	b	0x29bf4 <syna_spi_write+0x1b4>
