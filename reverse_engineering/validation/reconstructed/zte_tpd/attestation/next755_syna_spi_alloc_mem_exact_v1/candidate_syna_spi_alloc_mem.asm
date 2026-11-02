
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000029a10 <syna_spi_alloc_mem>:
   29a10: d503233f     	paciasp
   29a14: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   29a18: a9015ff8     	stp	x24, x23, [sp, #0x10]
   29a1c: a90257f6     	stp	x22, x21, [sp, #0x20]
   29a20: a9034ff4     	stp	x20, x19, [sp, #0x30]
   29a24: 910003fd     	mov	x29, sp
   29a28: 90000015     	adrp	x21, 0x29000 <syna_spi_probe+0xf24>
		0000000000029a28:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6420
   29a2c: 90000016     	adrp	x22, 0x29000 <syna_spi_probe+0xf24>
		0000000000029a2c:  R_AARCH64_ADR_PREL_PG_HI21	xfer
   29a30: 2a0003f4     	mov	w20, w0
   29a34: b94002a9     	ldr	w9, [x21]
		0000000000029a34:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x6420
   29a38: f94002c8     	ldr	x8, [x22]
		0000000000029a38:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   29a3c: 2a0103f3     	mov	w19, w1
   29a40: 6b00013f     	cmp	w9, w0
   29a44: 54000322     	b.hs	0x29aa8 <syna_spi_alloc_mem+0x98>
   29a48: 90000017     	adrp	x23, 0x29000 <syna_spi_probe+0xf24>
		0000000000029a48:  R_AARCH64_ADR_PREL_PG_HI21	p_device
   29a4c: f94002e9     	ldr	x9, [x23]
		0000000000029a4c:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   29a50: b4000989     	cbz	x9, 0x29b80 <syna_spi_alloc_mem+0x170>
   29a54: f9403920     	ldr	x0, [x9, #0x70]
   29a58: b4000940     	cbz	x0, 0x29b80 <syna_spi_alloc_mem+0x170>
   29a5c: b4000068     	cbz	x8, 0x29a68 <syna_spi_alloc_mem+0x58>
   29a60: aa0803e1     	mov	x1, x8
   29a64: 94000000     	bl	0x29a64 <syna_spi_alloc_mem+0x54>
		0000000000029a64:  R_AARCH64_CALL26	devm_kfree
   29a68: f94002e8     	ldr	x8, [x23]
		0000000000029a68:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   29a6c: b4000988     	cbz	x8, 0x29b9c <syna_spi_alloc_mem+0x18c>
   29a70: f9403900     	ldr	x0, [x8, #0x70]
   29a74: b4000940     	cbz	x0, 0x29b9c <syna_spi_alloc_mem+0x18c>
   29a78: 0b141288     	add	w8, w20, w20, lsl #4
   29a7c: 531d7108     	lsl	w8, w8, #3
   29a80: 7100011f     	cmp	w8, #0x0
   29a84: 54000c2d     	b.le	0x29c08 <syna_spi_alloc_mem+0x1f8>
   29a88: 52801108     	mov	w8, #0x88               // =136
   29a8c: 5281b802     	mov	w2, #0xdc0              // =3520
   29a90: 9ba87e81     	umull	x1, w20, w8
   29a94: 94000000     	bl	0x29a94 <syna_spi_alloc_mem+0x84>
		0000000000029a94:  R_AARCH64_CALL26	devm_kmalloc
   29a98: f90002c0     	str	x0, [x22]
		0000000000029a98:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   29a9c: b4000c20     	cbz	x0, 0x29c20 <syna_spi_alloc_mem+0x210>
   29aa0: b90002b4     	str	w20, [x21]
		0000000000029aa0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x6420
   29aa4: 14000006     	b	0x29abc <syna_spi_alloc_mem+0xac>
   29aa8: 0b141289     	add	w9, w20, w20, lsl #4
   29aac: aa0803e0     	mov	x0, x8
   29ab0: 2a1f03e1     	mov	w1, wzr
   29ab4: 531d7122     	lsl	w2, w9, #3
   29ab8: 94000000     	bl	0x29ab8 <syna_spi_alloc_mem+0xa8>
		0000000000029ab8:  R_AARCH64_CALL26	memset
   29abc: 90000015     	adrp	x21, 0x29000 <syna_spi_probe+0xf24>
		0000000000029abc:  R_AARCH64_ADR_PREL_PG_HI21	buf_size
   29ac0: b94002a8     	ldr	w8, [x21]
		0000000000029ac0:  R_AARCH64_LDST32_ABS_LO12_NC	buf_size
   29ac4: 6b13011f     	cmp	w8, w19
   29ac8: 54000582     	b.hs	0x29b78 <syna_spi_alloc_mem+0x168>
   29acc: 90000016     	adrp	x22, 0x29000 <syna_spi_probe+0xf24>
		0000000000029acc:  R_AARCH64_ADR_PREL_PG_HI21	rx_buf
   29ad0: 90000017     	adrp	x23, 0x29000 <syna_spi_probe+0xf24>
		0000000000029ad0:  R_AARCH64_ADR_PREL_PG_HI21	p_device
   29ad4: f94002c1     	ldr	x1, [x22]
		0000000000029ad4:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   29ad8: b40000e1     	cbz	x1, 0x29af4 <syna_spi_alloc_mem+0xe4>
   29adc: f94002e8     	ldr	x8, [x23]
		0000000000029adc:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   29ae0: b40007c8     	cbz	x8, 0x29bd8 <syna_spi_alloc_mem+0x1c8>
   29ae4: f9403900     	ldr	x0, [x8, #0x70]
   29ae8: b4000780     	cbz	x0, 0x29bd8 <syna_spi_alloc_mem+0x1c8>
   29aec: 94000000     	bl	0x29aec <syna_spi_alloc_mem+0xdc>
		0000000000029aec:  R_AARCH64_CALL26	devm_kfree
   29af0: f90002df     	str	xzr, [x22]
		0000000000029af0:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   29af4: 90000018     	adrp	x24, 0x29000 <syna_spi_probe+0xf24>
		0000000000029af4:  R_AARCH64_ADR_PREL_PG_HI21	tx_buf
   29af8: f9400301     	ldr	x1, [x24]
		0000000000029af8:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   29afc: b40000e1     	cbz	x1, 0x29b18 <syna_spi_alloc_mem+0x108>
   29b00: f94002e8     	ldr	x8, [x23]
		0000000000029b00:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   29b04: b4000768     	cbz	x8, 0x29bf0 <syna_spi_alloc_mem+0x1e0>
   29b08: f9403900     	ldr	x0, [x8, #0x70]
   29b0c: b4000720     	cbz	x0, 0x29bf0 <syna_spi_alloc_mem+0x1e0>
   29b10: 94000000     	bl	0x29b10 <syna_spi_alloc_mem+0x100>
		0000000000029b10:  R_AARCH64_CALL26	devm_kfree
   29b14: f900031f     	str	xzr, [x24]
		0000000000029b14:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   29b18: f94002e8     	ldr	x8, [x23]
		0000000000029b18:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   29b1c: b4000468     	cbz	x8, 0x29ba8 <syna_spi_alloc_mem+0x198>
   29b20: f9403900     	ldr	x0, [x8, #0x70]
   29b24: b4000420     	cbz	x0, 0x29ba8 <syna_spi_alloc_mem+0x198>
   29b28: 7100027f     	cmp	w19, #0x0
   29b2c: 5400088d     	b.le	0x29c3c <syna_spi_alloc_mem+0x22c>
   29b30: 2a1303f4     	mov	w20, w19
   29b34: 5281b802     	mov	w2, #0xdc0              // =3520
   29b38: aa1403e1     	mov	x1, x20
   29b3c: 94000000     	bl	0x29b3c <syna_spi_alloc_mem+0x12c>
		0000000000029b3c:  R_AARCH64_CALL26	devm_kmalloc
   29b40: f90002c0     	str	x0, [x22]
		0000000000029b40:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   29b44: b4000880     	cbz	x0, 0x29c54 <syna_spi_alloc_mem+0x244>
   29b48: f94002e8     	ldr	x8, [x23]
		0000000000029b48:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   29b4c: b4000348     	cbz	x8, 0x29bb4 <syna_spi_alloc_mem+0x1a4>
   29b50: f9403900     	ldr	x0, [x8, #0x70]
   29b54: b4000300     	cbz	x0, 0x29bb4 <syna_spi_alloc_mem+0x1a4>
   29b58: aa1403e1     	mov	x1, x20
   29b5c: 5281b802     	mov	w2, #0xdc0              // =3520
   29b60: 94000000     	bl	0x29b60 <syna_spi_alloc_mem+0x150>
		0000000000029b60:  R_AARCH64_CALL26	devm_kmalloc
   29b64: f9000300     	str	x0, [x24]
		0000000000029b64:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   29b68: b4000320     	cbz	x0, 0x29bcc <syna_spi_alloc_mem+0x1bc>
   29b6c: 2a1f03e0     	mov	w0, wzr
   29b70: b90002b3     	str	w19, [x21]
		0000000000029b70:  R_AARCH64_LDST32_ABS_LO12_NC	buf_size
   29b74: 1400003f     	b	0x29c70 <syna_spi_alloc_mem+0x260>
   29b78: 2a1f03e0     	mov	w0, wzr
   29b7c: 1400003d     	b	0x29c70 <syna_spi_alloc_mem+0x260>
   29b80: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0xf24>
		0000000000029b80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cf10
   29b84: 91000000     	add	x0, x0, #0x0
		0000000000029b84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cf10
   29b88: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0xf24>
		0000000000029b88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8bf
   29b8c: 91000021     	add	x1, x1, #0x0
		0000000000029b8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8bf
   29b90: 94000000     	bl	0x29b90 <syna_spi_alloc_mem+0x180>
		0000000000029b90:  R_AARCH64_CALL26	_printk
   29b94: f94002e8     	ldr	x8, [x23]
		0000000000029b94:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   29b98: b5fff6c8     	cbnz	x8, 0x29a70 <syna_spi_alloc_mem+0x60>
   29b9c: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0xf24>
		0000000000029b9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cf10
   29ba0: 91000000     	add	x0, x0, #0x0
		0000000000029ba0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cf10
   29ba4: 1400001b     	b	0x29c10 <syna_spi_alloc_mem+0x200>
   29ba8: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0xf24>
		0000000000029ba8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cf10
   29bac: 91000000     	add	x0, x0, #0x0
		0000000000029bac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cf10
   29bb0: 14000025     	b	0x29c44 <syna_spi_alloc_mem+0x234>
   29bb4: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0xf24>
		0000000000029bb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cf10
   29bb8: 91000000     	add	x0, x0, #0x0
		0000000000029bb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cf10
   29bbc: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0xf24>
		0000000000029bbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19c49
   29bc0: 91000021     	add	x1, x1, #0x0
		0000000000029bc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19c49
   29bc4: 94000000     	bl	0x29bc4 <syna_spi_alloc_mem+0x1b4>
		0000000000029bc4:  R_AARCH64_CALL26	_printk
   29bc8: f900031f     	str	xzr, [x24]
		0000000000029bc8:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   29bcc: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0xf24>
		0000000000029bcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x187b9
   29bd0: 91000000     	add	x0, x0, #0x0
		0000000000029bd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x187b9
   29bd4: 14000022     	b	0x29c5c <syna_spi_alloc_mem+0x24c>
   29bd8: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0xf24>
		0000000000029bd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cf10
   29bdc: 91000000     	add	x0, x0, #0x0
		0000000000029bdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cf10
   29be0: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0xf24>
		0000000000029be0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8bf
   29be4: 91000021     	add	x1, x1, #0x0
		0000000000029be4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8bf
   29be8: 94000000     	bl	0x29be8 <syna_spi_alloc_mem+0x1d8>
		0000000000029be8:  R_AARCH64_CALL26	_printk
   29bec: 17ffffc1     	b	0x29af0 <syna_spi_alloc_mem+0xe0>
   29bf0: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0xf24>
		0000000000029bf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cf10
   29bf4: 91000000     	add	x0, x0, #0x0
		0000000000029bf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cf10
   29bf8: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0xf24>
		0000000000029bf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8bf
   29bfc: 91000021     	add	x1, x1, #0x0
		0000000000029bfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8bf
   29c00: 94000000     	bl	0x29c00 <syna_spi_alloc_mem+0x1f0>
		0000000000029c00:  R_AARCH64_CALL26	_printk
   29c04: 17ffffc4     	b	0x29b14 <syna_spi_alloc_mem+0x104>
   29c08: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0xf24>
		0000000000029c08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af4e
   29c0c: 91000000     	add	x0, x0, #0x0
		0000000000029c0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af4e
   29c10: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0xf24>
		0000000000029c10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19c49
   29c14: 91000021     	add	x1, x1, #0x0
		0000000000029c14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19c49
   29c18: 94000000     	bl	0x29c18 <syna_spi_alloc_mem+0x208>
		0000000000029c18:  R_AARCH64_CALL26	_printk
   29c1c: f90002df     	str	xzr, [x22]
		0000000000029c1c:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   29c20: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0xf24>
		0000000000029c20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1921d
   29c24: 91000000     	add	x0, x0, #0x0
		0000000000029c24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1921d
   29c28: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0xf24>
		0000000000029c28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19f6b
   29c2c: 91000021     	add	x1, x1, #0x0
		0000000000029c2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19f6b
   29c30: 94000000     	bl	0x29c30 <syna_spi_alloc_mem+0x220>
		0000000000029c30:  R_AARCH64_CALL26	_printk
   29c34: b90002bf     	str	wzr, [x21]
		0000000000029c34:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x6420
   29c38: 1400000d     	b	0x29c6c <syna_spi_alloc_mem+0x25c>
   29c3c: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0xf24>
		0000000000029c3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af4e
   29c40: 91000000     	add	x0, x0, #0x0
		0000000000029c40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af4e
   29c44: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0xf24>
		0000000000029c44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19c49
   29c48: 91000021     	add	x1, x1, #0x0
		0000000000029c48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19c49
   29c4c: 94000000     	bl	0x29c4c <syna_spi_alloc_mem+0x23c>
		0000000000029c4c:  R_AARCH64_CALL26	_printk
   29c50: f90002df     	str	xzr, [x22]
		0000000000029c50:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   29c54: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0xf24>
		0000000000029c54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c187
   29c58: 91000000     	add	x0, x0, #0x0
		0000000000029c58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c187
   29c5c: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0xf24>
		0000000000029c5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19f6b
   29c60: 91000021     	add	x1, x1, #0x0
		0000000000029c60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19f6b
   29c64: 94000000     	bl	0x29c64 <syna_spi_alloc_mem+0x254>
		0000000000029c64:  R_AARCH64_CALL26	_printk
   29c68: b90002bf     	str	wzr, [x21]
		0000000000029c68:  R_AARCH64_LDST32_ABS_LO12_NC	buf_size
   29c6c: 12800160     	mov	w0, #-0xc               // =-12
   29c70: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   29c74: a94257f6     	ldp	x22, x21, [sp, #0x20]
   29c78: a9415ff8     	ldp	x24, x23, [sp, #0x10]
   29c7c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   29c80: d50323bf     	autiasp
   29c84: d65f03c0     	ret
