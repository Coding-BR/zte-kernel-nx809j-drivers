
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000029a1c <syna_spi_read>:
   29a1c: d503233f     	paciasp
   29a20: d10303ff     	sub	sp, sp, #0xc0
   29a24: a9087bfd     	stp	x29, x30, [sp, #0x80]
   29a28: a9095ff8     	stp	x24, x23, [sp, #0x90]
   29a2c: a90a57f6     	stp	x22, x21, [sp, #0xa0]
   29a30: a90b4ff4     	stp	x20, x19, [sp, #0xb0]
   29a34: 910203fd     	add	x29, sp, #0x80
   29a38: d5384108     	mrs	x8, SP_EL0
   29a3c: f9438908     	ldr	x8, [x8, #0x710]
   29a40: f81f83a8     	stur	x8, [x29, #-0x8]
   29a44: f9400016     	ldr	x22, [x0]
   29a48: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   29a4c: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   29a50: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   29a54: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   29a58: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   29a5c: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   29a60: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   29a64: b4000f36     	cbz	x22, 0x29c48 <syna_spi_read+0x22c>
   29a68: f94002d5     	ldr	x21, [x22]
   29a6c: b4000f55     	cbz	x21, 0x29c54 <syna_spi_read+0x238>
   29a70: 9101c2c0     	add	x0, x22, #0x70
   29a74: 2a0203f3     	mov	w19, w2
   29a78: aa0103f4     	mov	x20, x1
   29a7c: 94000000     	bl	0x29a7c <syna_spi_read+0x60>
		0000000000029a7c:  R_AARCH64_CALL26	mutex_lock
   29a80: 529fffe8     	mov	w8, #0xffff             // =65535
   29a84: 6a33011f     	bics	wzr, w8, w19
   29a88: 54000f40     	b.eq	0x29c70 <syna_spi_read+0x254>
   29a8c: 910023e8     	add	x8, sp, #0x8
   29a90: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   29a94: 2a1303e1     	mov	w1, w19
   29a98: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   29a9c: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   29aa0: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   29aa4: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   29aa8: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   29aac: f90007e8     	str	x8, [sp, #0x8]
   29ab0: f9000be8     	str	x8, [sp, #0x10]
   29ab4: 91016108     	add	x8, x8, #0x58
   29ab8: f90033e8     	str	x8, [sp, #0x60]
   29abc: f90037e8     	str	x8, [sp, #0x68]
   29ac0: b94066c8     	ldr	w8, [x22, #0x64]
   29ac4: 7100011f     	cmp	w8, #0x0
   29ac8: 1a9f1660     	csinc	w0, w19, wzr, ne
   29acc: 94000000     	bl	0x29acc <syna_spi_read+0xb0>
		0000000000029acc:  R_AARCH64_CALL26	syna_spi_alloc_mem
   29ad0: 37f80de0     	tbnz	w0, #0x1f, 0x29c8c <syna_spi_read+0x270>
   29ad4: 90000018     	adrp	x24, 0x29000 <syna_spi_probe+0x710>
		0000000000029ad4:  R_AARCH64_ADR_PREL_PG_HI21	tx_buf
   29ad8: b94066c8     	ldr	w8, [x22, #0x64]
   29adc: 90000017     	adrp	x23, 0x29000 <syna_spi_probe+0x710>
		0000000000029adc:  R_AARCH64_ADR_PREL_PG_HI21	rx_buf
   29ae0: f9400300     	ldr	x0, [x24]
		0000000000029ae0:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   29ae4: 340004e8     	cbz	w8, 0x29b80 <syna_spi_read+0x164>
   29ae8: 52801fe8     	mov	w8, #0xff               // =255
   29aec: 39000008     	strb	w8, [x0]
   29af0: 340007b3     	cbz	w19, 0x29be4 <syna_spi_read+0x1c8>
   29af4: aa1f03e9     	mov	x9, xzr
   29af8: 2a1303ea     	mov	w10, w19
   29afc: 52800e0b     	mov	w11, #0x70              // =112
   29b00: 9000000c     	adrp	x12, 0x29000 <syna_spi_probe+0x710>
		0000000000029b00:  R_AARCH64_ADR_PREL_PG_HI21	xfer
   29b04: 5280002d     	mov	w13, #0x1               // =1
   29b08: 910023ee     	add	x14, sp, #0x8
   29b0c: f9400188     	ldr	x8, [x12]
		0000000000029b0c:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   29b10: 8b0b0100     	add	x0, x8, x11
   29b14: b81a000d     	stur	w13, [x0, #-0x60]
   29b18: f940030f     	ldr	x15, [x24]
		0000000000029b18:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   29b1c: f819000f     	stur	x15, [x0, #-0x70]
   29b20: f94002ef     	ldr	x15, [x23]
		0000000000029b20:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   29b24: 8b0901ef     	add	x15, x15, x9
   29b28: f819800f     	stur	x15, [x0, #-0x68]
   29b2c: f9400be1     	ldr	x1, [sp, #0x10]
   29b30: f940002f     	ldr	x15, [x1]
   29b34: eb0e01ff     	cmp	x15, x14
   29b38: 1a9f17ef     	cset	w15, eq
   29b3c: eb0e001f     	cmp	x0, x14
   29b40: 540001a0     	b.eq	0x29b74 <syna_spi_read+0x158>
   29b44: eb01001f     	cmp	x0, x1
   29b48: 54000160     	b.eq	0x29b74 <syna_spi_read+0x158>
   29b4c: 3600014f     	tbz	w15, #0x0, 0x29b74 <syna_spi_read+0x158>
   29b50: 8b0b0108     	add	x8, x8, x11
   29b54: f9000be0     	str	x0, [sp, #0x10]
   29b58: a900050e     	stp	x14, x1, [x8]
   29b5c: f9000020     	str	x0, [x1]
   29b60: 91000529     	add	x9, x9, #0x1
   29b64: 9102216b     	add	x11, x11, #0x88
   29b68: eb09015f     	cmp	x10, x9
   29b6c: 54fffd01     	b.ne	0x29b0c <syna_spi_read+0xf0>
   29b70: 1400001d     	b	0x29be4 <syna_spi_read+0x1c8>
   29b74: 910023e2     	add	x2, sp, #0x8
   29b78: 94000000     	bl	0x29b78 <syna_spi_read+0x15c>
		0000000000029b78:  R_AARCH64_CALL26	__list_add_valid_or_report
   29b7c: 17fffff9     	b	0x29b60 <syna_spi_read+0x144>
   29b80: 2a1303e2     	mov	w2, w19
   29b84: 52801fe1     	mov	w1, #0xff               // =255
   29b88: 94000000     	bl	0x29b88 <syna_spi_read+0x16c>
		0000000000029b88:  R_AARCH64_CALL26	memset
   29b8c: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x710>
		0000000000029b8c:  R_AARCH64_ADR_PREL_PG_HI21	xfer
   29b90: f9400309     	ldr	x9, [x24]
		0000000000029b90:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   29b94: 910023ea     	add	x10, sp, #0x8
   29b98: f9400108     	ldr	x8, [x8]
		0000000000029b98:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   29b9c: f9000109     	str	x9, [x8]
   29ba0: 9101c100     	add	x0, x8, #0x70
   29ba4: f94002e9     	ldr	x9, [x23]
		0000000000029ba4:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   29ba8: b9001113     	str	w19, [x8, #0x10]
   29bac: f9000509     	str	x9, [x8, #0x8]
   29bb0: f9400be1     	ldr	x1, [sp, #0x10]
   29bb4: f9400029     	ldr	x9, [x1]
   29bb8: eb0a013f     	cmp	x9, x10
   29bbc: 1a9f17e9     	cset	w9, eq
   29bc0: eb0a001f     	cmp	x0, x10
   29bc4: 54000960     	b.eq	0x29cf0 <syna_spi_read+0x2d4>
   29bc8: eb00003f     	cmp	x1, x0
   29bcc: 54000920     	b.eq	0x29cf0 <syna_spi_read+0x2d4>
   29bd0: 36000909     	tbz	w9, #0x0, 0x29cf0 <syna_spi_read+0x2d4>
   29bd4: 910023e9     	add	x9, sp, #0x8
   29bd8: f9000be0     	str	x0, [sp, #0x10]
   29bdc: a9070509     	stp	x9, x1, [x8, #0x70]
   29be0: f9000020     	str	x0, [x1]
   29be4: 910023e1     	add	x1, sp, #0x8
   29be8: aa1503e0     	mov	x0, x21
   29bec: 94000000     	bl	0x29bec <syna_spi_read+0x1d0>
		0000000000029bec:  R_AARCH64_CALL26	spi_sync
   29bf0: 350005e0     	cbnz	w0, 0x29cac <syna_spi_read+0x290>
   29bf4: b40006f4     	cbz	x20, 0x29cd0 <syna_spi_read+0x2b4>
   29bf8: f94002e1     	ldr	x1, [x23]
		0000000000029bf8:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   29bfc: b40006a1     	cbz	x1, 0x29cd0 <syna_spi_read+0x2b4>
   29c00: 2a1303e2     	mov	w2, w19
   29c04: aa1403e0     	mov	x0, x20
   29c08: 94000000     	bl	0x29c08 <syna_spi_read+0x1ec>
		0000000000029c08:  R_AARCH64_CALL26	memcpy
   29c0c: 9101c2c0     	add	x0, x22, #0x70
   29c10: 94000000     	bl	0x29c10 <syna_spi_read+0x1f4>
		0000000000029c10:  R_AARCH64_CALL26	mutex_unlock
   29c14: d5384108     	mrs	x8, SP_EL0
   29c18: f9438908     	ldr	x8, [x8, #0x710]
   29c1c: f85f83a9     	ldur	x9, [x29, #-0x8]
   29c20: eb09011f     	cmp	x8, x9
   29c24: 54000641     	b.ne	0x29cec <syna_spi_read+0x2d0>
   29c28: 2a1303e0     	mov	w0, w19
   29c2c: a94b4ff4     	ldp	x20, x19, [sp, #0xb0]
   29c30: a94a57f6     	ldp	x22, x21, [sp, #0xa0]
   29c34: a9495ff8     	ldp	x24, x23, [sp, #0x90]
   29c38: a9487bfd     	ldp	x29, x30, [sp, #0x80]
   29c3c: 910303ff     	add	sp, sp, #0xc0
   29c40: d50323bf     	autiasp
   29c44: d65f03c0     	ret
   29c48: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x710>
		0000000000029c48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c056
   29c4c: 91000000     	add	x0, x0, #0x0
		0000000000029c4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c056
   29c50: 14000003     	b	0x29c5c <syna_spi_read+0x240>
   29c54: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x710>
		0000000000029c54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bf80
   29c58: 91000000     	add	x0, x0, #0x0
		0000000000029c58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bf80
   29c5c: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x710>
		0000000000029c5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d19f
   29c60: 91000021     	add	x1, x1, #0x0
		0000000000029c60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d19f
   29c64: 94000000     	bl	0x29c64 <syna_spi_read+0x248>
		0000000000029c64:  R_AARCH64_CALL26	_printk
   29c68: 128000b3     	mov	w19, #-0x6              // =-6
   29c6c: 17ffffea     	b	0x29c14 <syna_spi_read+0x1f8>
   29c70: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x710>
		0000000000029c70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17cb2
   29c74: 91000000     	add	x0, x0, #0x0
		0000000000029c74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17cb2
   29c78: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x710>
		0000000000029c78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d19f
   29c7c: 91000021     	add	x1, x1, #0x0
		0000000000029c7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d19f
   29c80: 529fffe2     	mov	w2, #0xffff             // =65535
   29c84: 94000000     	bl	0x29c84 <syna_spi_read+0x268>
		0000000000029c84:  R_AARCH64_CALL26	_printk
   29c88: 14000017     	b	0x29ce4 <syna_spi_read+0x2c8>
   29c8c: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x710>
		0000000000029c8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cf19
   29c90: 91000108     	add	x8, x8, #0x0
		0000000000029c90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cf19
   29c94: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x710>
		0000000000029c94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d19f
   29c98: 91000021     	add	x1, x1, #0x0
		0000000000029c98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d19f
   29c9c: 2a0003f3     	mov	w19, w0
   29ca0: aa0803e0     	mov	x0, x8
   29ca4: 94000000     	bl	0x29ca4 <syna_spi_read+0x288>
		0000000000029ca4:  R_AARCH64_CALL26	_printk
   29ca8: 17ffffd9     	b	0x29c0c <syna_spi_read+0x1f0>
   29cac: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x710>
		0000000000029cac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1975e
   29cb0: 91000108     	add	x8, x8, #0x0
		0000000000029cb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1975e
   29cb4: 2a0003f3     	mov	w19, w0
   29cb8: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x710>
		0000000000029cb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d19f
   29cbc: 91000021     	add	x1, x1, #0x0
		0000000000029cbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d19f
   29cc0: aa0803e0     	mov	x0, x8
   29cc4: 2a1303e2     	mov	w2, w19
   29cc8: 94000000     	bl	0x29cc8 <syna_spi_read+0x2ac>
		0000000000029cc8:  R_AARCH64_CALL26	_printk
   29ccc: 17ffffd0     	b	0x29c0c <syna_spi_read+0x1f0>
   29cd0: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x710>
		0000000000029cd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c632
   29cd4: 91000000     	add	x0, x0, #0x0
		0000000000029cd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c632
   29cd8: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x710>
		0000000000029cd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d19f
   29cdc: 91000021     	add	x1, x1, #0x0
		0000000000029cdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d19f
   29ce0: 94000000     	bl	0x29ce0 <syna_spi_read+0x2c4>
		0000000000029ce0:  R_AARCH64_CALL26	_printk
   29ce4: 128002b3     	mov	w19, #-0x16             // =-22
   29ce8: 17ffffc9     	b	0x29c0c <syna_spi_read+0x1f0>
   29cec: 94000000     	bl	0x29cec <syna_spi_read+0x2d0>
		0000000000029cec:  R_AARCH64_CALL26	__stack_chk_fail
   29cf0: 910023e2     	add	x2, sp, #0x8
   29cf4: 94000000     	bl	0x29cf4 <syna_spi_read+0x2d8>
		0000000000029cf4:  R_AARCH64_CALL26	__list_add_valid_or_report
   29cf8: 17ffffbb     	b	0x29be4 <syna_spi_read+0x1c8>
