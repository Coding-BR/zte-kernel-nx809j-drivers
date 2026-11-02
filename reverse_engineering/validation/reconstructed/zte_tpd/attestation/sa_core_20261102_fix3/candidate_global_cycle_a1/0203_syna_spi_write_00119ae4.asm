
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000022b2c <syna_spi_write>:
   22b2c: d503233f     	paciasp
   22b30: d10303ff     	sub	sp, sp, #0xc0
   22b34: a9087bfd     	stp	x29, x30, [sp, #0x80]
   22b38: a9095ff8     	stp	x24, x23, [sp, #0x90]
   22b3c: a90a57f6     	stp	x22, x21, [sp, #0xa0]
   22b40: a90b4ff4     	stp	x20, x19, [sp, #0xb0]
   22b44: 910203fd     	add	x29, sp, #0x80
   22b48: d5384108     	mrs	x8, SP_EL0
   22b4c: f9438908     	ldr	x8, [x8, #0x710]
   22b50: f81f83a8     	stur	x8, [x29, #-0x8]
   22b54: f9400017     	ldr	x23, [x0]
   22b58: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   22b5c: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   22b60: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   22b64: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   22b68: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   22b6c: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   22b70: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   22b74: b4000dd7     	cbz	x23, 0x22d2c <syna_spi_write+0x200>
   22b78: f94002f4     	ldr	x20, [x23]
   22b7c: b4000df4     	cbz	x20, 0x22d38 <syna_spi_write+0x20c>
   22b80: 9101c2e0     	add	x0, x23, #0x70
   22b84: 2a0203f3     	mov	w19, w2
   22b88: aa0103f5     	mov	x21, x1
   22b8c: 94000000     	bl	0x22b8c <syna_spi_write+0x60>
		0000000000022b8c:  R_AARCH64_CALL26	mutex_lock
   22b90: 529fffe8     	mov	w8, #0xffff             // =65535
   22b94: 6a33011f     	bics	wzr, w8, w19
   22b98: 54000de0     	b.eq	0x22d54 <syna_spi_write+0x228>
   22b9c: 910023e8     	add	x8, sp, #0x8
   22ba0: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   22ba4: 2a1303e1     	mov	w1, w19
   22ba8: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   22bac: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   22bb0: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   22bb4: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   22bb8: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   22bbc: f90007e8     	str	x8, [sp, #0x8]
   22bc0: f9000be8     	str	x8, [sp, #0x10]
   22bc4: 91016108     	add	x8, x8, #0x58
   22bc8: f90033e8     	str	x8, [sp, #0x60]
   22bcc: f90037e8     	str	x8, [sp, #0x68]
   22bd0: b94066e8     	ldr	w8, [x23, #0x64]
   22bd4: 7100011f     	cmp	w8, #0x0
   22bd8: 1a9f1660     	csinc	w0, w19, wzr, ne
   22bdc: 94000000     	bl	0x22bdc <syna_spi_write+0xb0>
		0000000000022bdc:  R_AARCH64_CALL26	syna_spi_alloc_mem
   22be0: 37f80ca0     	tbnz	w0, #0x1f, 0x22d74 <syna_spi_write+0x248>
   22be4: b4000d95     	cbz	x21, 0x22d94 <syna_spi_write+0x268>
   22be8: 90000018     	adrp	x24, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022be8:  R_AARCH64_ADR_PREL_PG_HI21	tx_buf
   22bec: f9400300     	ldr	x0, [x24]
		0000000000022bec:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   22bf0: b4000d20     	cbz	x0, 0x22d94 <syna_spi_write+0x268>
   22bf4: 2a1303f6     	mov	w22, w19
   22bf8: aa1503e1     	mov	x1, x21
   22bfc: aa1603e2     	mov	x2, x22
   22c00: 94000000     	bl	0x22c00 <syna_spi_write+0xd4>
		0000000000022c00:  R_AARCH64_CALL26	memcpy
   22c04: b94066e8     	ldr	w8, [x23, #0x64]
   22c08: 34000448     	cbz	w8, 0x22c90 <syna_spi_write+0x164>
   22c0c: 340006b3     	cbz	w19, 0x22ce0 <syna_spi_write+0x1b4>
   22c10: aa1f03e9     	mov	x9, xzr
   22c14: 52800e0a     	mov	w10, #0x70              // =112
   22c18: 9000000b     	adrp	x11, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022c18:  R_AARCH64_ADR_PREL_PG_HI21	xfer
   22c1c: 5280002c     	mov	w12, #0x1               // =1
   22c20: 910023ed     	add	x13, sp, #0x8
   22c24: f9400168     	ldr	x8, [x11]
		0000000000022c24:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   22c28: 8b0a0100     	add	x0, x8, x10
   22c2c: b81a000c     	stur	w12, [x0, #-0x60]
   22c30: f940030e     	ldr	x14, [x24]
		0000000000022c30:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   22c34: 8b0901ce     	add	x14, x14, x9
   22c38: f819000e     	stur	x14, [x0, #-0x70]
   22c3c: f9400be1     	ldr	x1, [sp, #0x10]
   22c40: f940002e     	ldr	x14, [x1]
   22c44: eb0d01df     	cmp	x14, x13
   22c48: 1a9f17ee     	cset	w14, eq
   22c4c: eb0d001f     	cmp	x0, x13
   22c50: 540001a0     	b.eq	0x22c84 <syna_spi_write+0x158>
   22c54: eb01001f     	cmp	x0, x1
   22c58: 54000160     	b.eq	0x22c84 <syna_spi_write+0x158>
   22c5c: 3600014e     	tbz	w14, #0x0, 0x22c84 <syna_spi_write+0x158>
   22c60: 8b0a0108     	add	x8, x8, x10
   22c64: f9000be0     	str	x0, [sp, #0x10]
   22c68: a900050d     	stp	x13, x1, [x8]
   22c6c: f9000020     	str	x0, [x1]
   22c70: 91000529     	add	x9, x9, #0x1
   22c74: 9102214a     	add	x10, x10, #0x88
   22c78: eb0902df     	cmp	x22, x9
   22c7c: 54fffd41     	b.ne	0x22c24 <syna_spi_write+0xf8>
   22c80: 14000018     	b	0x22ce0 <syna_spi_write+0x1b4>
   22c84: 910023e2     	add	x2, sp, #0x8
   22c88: 94000000     	bl	0x22c88 <syna_spi_write+0x15c>
		0000000000022c88:  R_AARCH64_CALL26	__list_add_valid_or_report
   22c8c: 17fffff9     	b	0x22c70 <syna_spi_write+0x144>
   22c90: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022c90:  R_AARCH64_ADR_PREL_PG_HI21	xfer
   22c94: f9400309     	ldr	x9, [x24]
		0000000000022c94:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   22c98: 910023ea     	add	x10, sp, #0x8
   22c9c: f9400108     	ldr	x8, [x8]
		0000000000022c9c:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   22ca0: f9000109     	str	x9, [x8]
   22ca4: 9101c100     	add	x0, x8, #0x70
   22ca8: f9400be1     	ldr	x1, [sp, #0x10]
   22cac: b9001113     	str	w19, [x8, #0x10]
   22cb0: f9400029     	ldr	x9, [x1]
   22cb4: eb0a013f     	cmp	x9, x10
   22cb8: 1a9f17e9     	cset	w9, eq
   22cbc: eb0a001f     	cmp	x0, x10
   22cc0: 540008c0     	b.eq	0x22dd8 <syna_spi_write+0x2ac>
   22cc4: eb00003f     	cmp	x1, x0
   22cc8: 54000880     	b.eq	0x22dd8 <syna_spi_write+0x2ac>
   22ccc: 36000869     	tbz	w9, #0x0, 0x22dd8 <syna_spi_write+0x2ac>
   22cd0: 910023e9     	add	x9, sp, #0x8
   22cd4: f9000be0     	str	x0, [sp, #0x10]
   22cd8: a9070509     	stp	x9, x1, [x8, #0x70]
   22cdc: f9000020     	str	x0, [x1]
   22ce0: 910023e1     	add	x1, sp, #0x8
   22ce4: aa1403e0     	mov	x0, x20
   22ce8: 94000000     	bl	0x22ce8 <syna_spi_write+0x1bc>
		0000000000022ce8:  R_AARCH64_CALL26	spi_sync
   22cec: 35000620     	cbnz	w0, 0x22db0 <syna_spi_write+0x284>
   22cf0: 9101c2e0     	add	x0, x23, #0x70
   22cf4: 94000000     	bl	0x22cf4 <syna_spi_write+0x1c8>
		0000000000022cf4:  R_AARCH64_CALL26	mutex_unlock
   22cf8: d5384108     	mrs	x8, SP_EL0
   22cfc: f9438908     	ldr	x8, [x8, #0x710]
   22d00: f85f83a9     	ldur	x9, [x29, #-0x8]
   22d04: eb09011f     	cmp	x8, x9
   22d08: 54000661     	b.ne	0x22dd4 <syna_spi_write+0x2a8>
   22d0c: 2a1303e0     	mov	w0, w19
   22d10: a94b4ff4     	ldp	x20, x19, [sp, #0xb0]
   22d14: a94a57f6     	ldp	x22, x21, [sp, #0xa0]
   22d18: a9495ff8     	ldp	x24, x23, [sp, #0x90]
   22d1c: a9487bfd     	ldp	x29, x30, [sp, #0x80]
   22d20: 910303ff     	add	sp, sp, #0xc0
   22d24: d50323bf     	autiasp
   22d28: d65f03c0     	ret
   22d2c: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022d2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b3c2
   22d30: 91000000     	add	x0, x0, #0x0
		0000000000022d30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b3c2
   22d34: 14000003     	b	0x22d40 <syna_spi_write+0x214>
   22d38: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022d38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b2c3
   22d3c: 91000000     	add	x0, x0, #0x0
		0000000000022d3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b2c3
   22d40: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022d40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c98e
   22d44: 91000021     	add	x1, x1, #0x0
		0000000000022d44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c98e
   22d48: 94000000     	bl	0x22d48 <syna_spi_write+0x21c>
		0000000000022d48:  R_AARCH64_CALL26	_printk
   22d4c: 128000b3     	mov	w19, #-0x6              // =-6
   22d50: 17ffffea     	b	0x22cf8 <syna_spi_write+0x1cc>
   22d54: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022d54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19cdc
   22d58: 91000000     	add	x0, x0, #0x0
		0000000000022d58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19cdc
   22d5c: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022d5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c98e
   22d60: 91000021     	add	x1, x1, #0x0
		0000000000022d60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c98e
   22d64: 529fffe2     	mov	w2, #0xffff             // =65535
   22d68: 94000000     	bl	0x22d68 <syna_spi_write+0x23c>
		0000000000022d68:  R_AARCH64_CALL26	_printk
   22d6c: 128002b3     	mov	w19, #-0x16             // =-22
   22d70: 17ffffe0     	b	0x22cf0 <syna_spi_write+0x1c4>
   22d74: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022d74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19302
   22d78: 91000108     	add	x8, x8, #0x0
		0000000000022d78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19302
   22d7c: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022d7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c98e
   22d80: 91000021     	add	x1, x1, #0x0
		0000000000022d80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c98e
   22d84: 2a0003f3     	mov	w19, w0
   22d88: aa0803e0     	mov	x0, x8
   22d8c: 94000000     	bl	0x22d8c <syna_spi_write+0x260>
		0000000000022d8c:  R_AARCH64_CALL26	_printk
   22d90: 17ffffd8     	b	0x22cf0 <syna_spi_write+0x1c4>
   22d94: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022d94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1abe8
   22d98: 91000000     	add	x0, x0, #0x0
		0000000000022d98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1abe8
   22d9c: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022d9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c98e
   22da0: 91000021     	add	x1, x1, #0x0
		0000000000022da0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c98e
   22da4: 94000000     	bl	0x22da4 <syna_spi_write+0x278>
		0000000000022da4:  R_AARCH64_CALL26	_printk
   22da8: 128002b3     	mov	w19, #-0x16             // =-22
   22dac: 17ffffd1     	b	0x22cf0 <syna_spi_write+0x1c4>
   22db0: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022db0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aed5
   22db4: 91000108     	add	x8, x8, #0x0
		0000000000022db4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aed5
   22db8: 2a0003f3     	mov	w19, w0
   22dbc: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022dbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c98e
   22dc0: 91000021     	add	x1, x1, #0x0
		0000000000022dc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c98e
   22dc4: aa0803e0     	mov	x0, x8
   22dc8: 2a1303e2     	mov	w2, w19
   22dcc: 94000000     	bl	0x22dcc <syna_spi_write+0x2a0>
		0000000000022dcc:  R_AARCH64_CALL26	_printk
   22dd0: 17ffffc8     	b	0x22cf0 <syna_spi_write+0x1c4>
   22dd4: 94000000     	bl	0x22dd4 <syna_spi_write+0x2a8>
		0000000000022dd4:  R_AARCH64_CALL26	__stack_chk_fail
   22dd8: 910023e2     	add	x2, sp, #0x8
   22ddc: 94000000     	bl	0x22ddc <syna_spi_write+0x2b0>
		0000000000022ddc:  R_AARCH64_CALL26	__list_add_valid_or_report
   22de0: 17ffffc0     	b	0x22ce0 <syna_spi_write+0x1b4>
