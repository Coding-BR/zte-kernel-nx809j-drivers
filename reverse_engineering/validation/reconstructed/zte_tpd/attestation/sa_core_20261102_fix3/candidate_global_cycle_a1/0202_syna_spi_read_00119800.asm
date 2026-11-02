
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000022848 <syna_spi_read>:
   22848: d503233f     	paciasp
   2284c: d10303ff     	sub	sp, sp, #0xc0
   22850: a9087bfd     	stp	x29, x30, [sp, #0x80]
   22854: a9095ff8     	stp	x24, x23, [sp, #0x90]
   22858: a90a57f6     	stp	x22, x21, [sp, #0xa0]
   2285c: a90b4ff4     	stp	x20, x19, [sp, #0xb0]
   22860: 910203fd     	add	x29, sp, #0x80
   22864: d5384108     	mrs	x8, SP_EL0
   22868: f9438908     	ldr	x8, [x8, #0x710]
   2286c: f81f83a8     	stur	x8, [x29, #-0x8]
   22870: f9400016     	ldr	x22, [x0]
   22874: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   22878: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   2287c: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   22880: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   22884: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   22888: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   2288c: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   22890: b4000f36     	cbz	x22, 0x22a74 <syna_spi_read+0x22c>
   22894: f94002d5     	ldr	x21, [x22]
   22898: b4000f55     	cbz	x21, 0x22a80 <syna_spi_read+0x238>
   2289c: 9101c2c0     	add	x0, x22, #0x70
   228a0: 2a0203f3     	mov	w19, w2
   228a4: aa0103f4     	mov	x20, x1
   228a8: 94000000     	bl	0x228a8 <syna_spi_read+0x60>
		00000000000228a8:  R_AARCH64_CALL26	mutex_lock
   228ac: 529fffe8     	mov	w8, #0xffff             // =65535
   228b0: 6a33011f     	bics	wzr, w8, w19
   228b4: 54000f40     	b.eq	0x22a9c <syna_spi_read+0x254>
   228b8: 910023e8     	add	x8, sp, #0x8
   228bc: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   228c0: 2a1303e1     	mov	w1, w19
   228c4: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   228c8: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   228cc: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   228d0: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   228d4: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   228d8: f90007e8     	str	x8, [sp, #0x8]
   228dc: f9000be8     	str	x8, [sp, #0x10]
   228e0: 91016108     	add	x8, x8, #0x58
   228e4: f90033e8     	str	x8, [sp, #0x60]
   228e8: f90037e8     	str	x8, [sp, #0x68]
   228ec: b94066c8     	ldr	w8, [x22, #0x64]
   228f0: 7100011f     	cmp	w8, #0x0
   228f4: 1a9f1660     	csinc	w0, w19, wzr, ne
   228f8: 94000000     	bl	0x228f8 <syna_spi_read+0xb0>
		00000000000228f8:  R_AARCH64_CALL26	syna_spi_alloc_mem
   228fc: 37f80de0     	tbnz	w0, #0x1f, 0x22ab8 <syna_spi_read+0x270>
   22900: 90000018     	adrp	x24, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022900:  R_AARCH64_ADR_PREL_PG_HI21	tx_buf
   22904: b94066c8     	ldr	w8, [x22, #0x64]
   22908: 90000017     	adrp	x23, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022908:  R_AARCH64_ADR_PREL_PG_HI21	rx_buf
   2290c: f9400300     	ldr	x0, [x24]
		000000000002290c:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   22910: 340004e8     	cbz	w8, 0x229ac <syna_spi_read+0x164>
   22914: 52801fe8     	mov	w8, #0xff               // =255
   22918: 39000008     	strb	w8, [x0]
   2291c: 340007b3     	cbz	w19, 0x22a10 <syna_spi_read+0x1c8>
   22920: aa1f03e9     	mov	x9, xzr
   22924: 2a1303ea     	mov	w10, w19
   22928: 52800e0b     	mov	w11, #0x70              // =112
   2292c: 9000000c     	adrp	x12, 0x22000 <syna_spi_probe+0x8e4>
		000000000002292c:  R_AARCH64_ADR_PREL_PG_HI21	xfer
   22930: 5280002d     	mov	w13, #0x1               // =1
   22934: 910023ee     	add	x14, sp, #0x8
   22938: f9400188     	ldr	x8, [x12]
		0000000000022938:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   2293c: 8b0b0100     	add	x0, x8, x11
   22940: b81a000d     	stur	w13, [x0, #-0x60]
   22944: f940030f     	ldr	x15, [x24]
		0000000000022944:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   22948: f819000f     	stur	x15, [x0, #-0x70]
   2294c: f94002ef     	ldr	x15, [x23]
		000000000002294c:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   22950: 8b0901ef     	add	x15, x15, x9
   22954: f819800f     	stur	x15, [x0, #-0x68]
   22958: f9400be1     	ldr	x1, [sp, #0x10]
   2295c: f940002f     	ldr	x15, [x1]
   22960: eb0e01ff     	cmp	x15, x14
   22964: 1a9f17ef     	cset	w15, eq
   22968: eb0e001f     	cmp	x0, x14
   2296c: 540001a0     	b.eq	0x229a0 <syna_spi_read+0x158>
   22970: eb01001f     	cmp	x0, x1
   22974: 54000160     	b.eq	0x229a0 <syna_spi_read+0x158>
   22978: 3600014f     	tbz	w15, #0x0, 0x229a0 <syna_spi_read+0x158>
   2297c: 8b0b0108     	add	x8, x8, x11
   22980: f9000be0     	str	x0, [sp, #0x10]
   22984: a900050e     	stp	x14, x1, [x8]
   22988: f9000020     	str	x0, [x1]
   2298c: 91000529     	add	x9, x9, #0x1
   22990: 9102216b     	add	x11, x11, #0x88
   22994: eb09015f     	cmp	x10, x9
   22998: 54fffd01     	b.ne	0x22938 <syna_spi_read+0xf0>
   2299c: 1400001d     	b	0x22a10 <syna_spi_read+0x1c8>
   229a0: 910023e2     	add	x2, sp, #0x8
   229a4: 94000000     	bl	0x229a4 <syna_spi_read+0x15c>
		00000000000229a4:  R_AARCH64_CALL26	__list_add_valid_or_report
   229a8: 17fffff9     	b	0x2298c <syna_spi_read+0x144>
   229ac: 2a1303e2     	mov	w2, w19
   229b0: 52801fe1     	mov	w1, #0xff               // =255
   229b4: 94000000     	bl	0x229b4 <syna_spi_read+0x16c>
		00000000000229b4:  R_AARCH64_CALL26	memset
   229b8: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		00000000000229b8:  R_AARCH64_ADR_PREL_PG_HI21	xfer
   229bc: f9400309     	ldr	x9, [x24]
		00000000000229bc:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   229c0: 910023ea     	add	x10, sp, #0x8
   229c4: f9400108     	ldr	x8, [x8]
		00000000000229c4:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   229c8: f9000109     	str	x9, [x8]
   229cc: 9101c100     	add	x0, x8, #0x70
   229d0: f94002e9     	ldr	x9, [x23]
		00000000000229d0:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   229d4: b9001113     	str	w19, [x8, #0x10]
   229d8: f9000509     	str	x9, [x8, #0x8]
   229dc: f9400be1     	ldr	x1, [sp, #0x10]
   229e0: f9400029     	ldr	x9, [x1]
   229e4: eb0a013f     	cmp	x9, x10
   229e8: 1a9f17e9     	cset	w9, eq
   229ec: eb0a001f     	cmp	x0, x10
   229f0: 54000960     	b.eq	0x22b1c <syna_spi_read+0x2d4>
   229f4: eb00003f     	cmp	x1, x0
   229f8: 54000920     	b.eq	0x22b1c <syna_spi_read+0x2d4>
   229fc: 36000909     	tbz	w9, #0x0, 0x22b1c <syna_spi_read+0x2d4>
   22a00: 910023e9     	add	x9, sp, #0x8
   22a04: f9000be0     	str	x0, [sp, #0x10]
   22a08: a9070509     	stp	x9, x1, [x8, #0x70]
   22a0c: f9000020     	str	x0, [x1]
   22a10: 910023e1     	add	x1, sp, #0x8
   22a14: aa1503e0     	mov	x0, x21
   22a18: 94000000     	bl	0x22a18 <syna_spi_read+0x1d0>
		0000000000022a18:  R_AARCH64_CALL26	spi_sync
   22a1c: 350005e0     	cbnz	w0, 0x22ad8 <syna_spi_read+0x290>
   22a20: b40006f4     	cbz	x20, 0x22afc <syna_spi_read+0x2b4>
   22a24: f94002e1     	ldr	x1, [x23]
		0000000000022a24:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   22a28: b40006a1     	cbz	x1, 0x22afc <syna_spi_read+0x2b4>
   22a2c: 2a1303e2     	mov	w2, w19
   22a30: aa1403e0     	mov	x0, x20
   22a34: 94000000     	bl	0x22a34 <syna_spi_read+0x1ec>
		0000000000022a34:  R_AARCH64_CALL26	memcpy
   22a38: 9101c2c0     	add	x0, x22, #0x70
   22a3c: 94000000     	bl	0x22a3c <syna_spi_read+0x1f4>
		0000000000022a3c:  R_AARCH64_CALL26	mutex_unlock
   22a40: d5384108     	mrs	x8, SP_EL0
   22a44: f9438908     	ldr	x8, [x8, #0x710]
   22a48: f85f83a9     	ldur	x9, [x29, #-0x8]
   22a4c: eb09011f     	cmp	x8, x9
   22a50: 54000641     	b.ne	0x22b18 <syna_spi_read+0x2d0>
   22a54: 2a1303e0     	mov	w0, w19
   22a58: a94b4ff4     	ldp	x20, x19, [sp, #0xb0]
   22a5c: a94a57f6     	ldp	x22, x21, [sp, #0xa0]
   22a60: a9495ff8     	ldp	x24, x23, [sp, #0x90]
   22a64: a9487bfd     	ldp	x29, x30, [sp, #0x80]
   22a68: 910303ff     	add	sp, sp, #0xc0
   22a6c: d50323bf     	autiasp
   22a70: d65f03c0     	ret
   22a74: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b3c2
   22a78: 91000000     	add	x0, x0, #0x0
		0000000000022a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b3c2
   22a7c: 14000003     	b	0x22a88 <syna_spi_read+0x240>
   22a80: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022a80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b2c3
   22a84: 91000000     	add	x0, x0, #0x0
		0000000000022a84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b2c3
   22a88: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022a88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c37e
   22a8c: 91000021     	add	x1, x1, #0x0
		0000000000022a8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c37e
   22a90: 94000000     	bl	0x22a90 <syna_spi_read+0x248>
		0000000000022a90:  R_AARCH64_CALL26	_printk
   22a94: 128000b3     	mov	w19, #-0x6              // =-6
   22a98: 17ffffea     	b	0x22a40 <syna_spi_read+0x1f8>
   22a9c: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022a9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17a9f
   22aa0: 91000000     	add	x0, x0, #0x0
		0000000000022aa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17a9f
   22aa4: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022aa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c37e
   22aa8: 91000021     	add	x1, x1, #0x0
		0000000000022aa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c37e
   22aac: 529fffe2     	mov	w2, #0xffff             // =65535
   22ab0: 94000000     	bl	0x22ab0 <syna_spi_read+0x268>
		0000000000022ab0:  R_AARCH64_CALL26	_printk
   22ab4: 14000017     	b	0x22b10 <syna_spi_read+0x2c8>
   22ab8: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022ab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c12d
   22abc: 91000108     	add	x8, x8, #0x0
		0000000000022abc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c12d
   22ac0: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022ac0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c37e
   22ac4: 91000021     	add	x1, x1, #0x0
		0000000000022ac4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c37e
   22ac8: 2a0003f3     	mov	w19, w0
   22acc: aa0803e0     	mov	x0, x8
   22ad0: 94000000     	bl	0x22ad0 <syna_spi_read+0x288>
		0000000000022ad0:  R_AARCH64_CALL26	_printk
   22ad4: 17ffffd9     	b	0x22a38 <syna_spi_read+0x1f0>
   22ad8: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022ad8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x190e9
   22adc: 91000108     	add	x8, x8, #0x0
		0000000000022adc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x190e9
   22ae0: 2a0003f3     	mov	w19, w0
   22ae4: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022ae4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c37e
   22ae8: 91000021     	add	x1, x1, #0x0
		0000000000022ae8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c37e
   22aec: aa0803e0     	mov	x0, x8
   22af0: 2a1303e2     	mov	w2, w19
   22af4: 94000000     	bl	0x22af4 <syna_spi_read+0x2ac>
		0000000000022af4:  R_AARCH64_CALL26	_printk
   22af8: 17ffffd0     	b	0x22a38 <syna_spi_read+0x1f0>
   22afc: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022afc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b8c7
   22b00: 91000000     	add	x0, x0, #0x0
		0000000000022b00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b8c7
   22b04: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022b04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c37e
   22b08: 91000021     	add	x1, x1, #0x0
		0000000000022b08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c37e
   22b0c: 94000000     	bl	0x22b0c <syna_spi_read+0x2c4>
		0000000000022b0c:  R_AARCH64_CALL26	_printk
   22b10: 128002b3     	mov	w19, #-0x16             // =-22
   22b14: 17ffffc9     	b	0x22a38 <syna_spi_read+0x1f0>
   22b18: 94000000     	bl	0x22b18 <syna_spi_read+0x2d0>
		0000000000022b18:  R_AARCH64_CALL26	__stack_chk_fail
   22b1c: 910023e2     	add	x2, sp, #0x8
   22b20: 94000000     	bl	0x22b20 <syna_spi_read+0x2d8>
		0000000000022b20:  R_AARCH64_CALL26	__list_add_valid_or_report
   22b24: 17ffffbb     	b	0x22a10 <syna_spi_read+0x1c8>
