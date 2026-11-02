
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001385c <syna_spi_alloc_mem>:
   1385c: d503233f     	paciasp
   13860: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   13864: a9015ff8     	stp	x24, x23, [sp, #0x10]
   13868: a90257f6     	stp	x22, x21, [sp, #0x20]
   1386c: a9034ff4     	stp	x20, x19, [sp, #0x30]
   13870: 910003fd     	mov	x29, sp
   13874: 90000015     	adrp	x21, 0x13000 <syna_spi_read+0x88>
		0000000000013874:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8b8
   13878: 90000016     	adrp	x22, 0x13000 <syna_spi_read+0x88>
		0000000000013878:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8b0
   1387c: 2a0003f4     	mov	w20, w0
   13880: b94002a9     	ldr	w9, [x21]
		0000000000013880:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8b8
   13884: f94002c8     	ldr	x8, [x22]
		0000000000013884:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8b0
   13888: 2a0103f3     	mov	w19, w1
   1388c: 6b00013f     	cmp	w9, w0
   13890: 54000322     	b.hs	0x138f4 <syna_spi_alloc_mem+0x98>
   13894: 90000017     	adrp	x23, 0x13000 <syna_spi_read+0x88>
		0000000000013894:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x890
   13898: f94002e9     	ldr	x9, [x23]
		0000000000013898:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x890
   1389c: b4000989     	cbz	x9, 0x139cc <syna_spi_alloc_mem+0x170>
   138a0: f9403920     	ldr	x0, [x9, #0x70]
   138a4: b4000940     	cbz	x0, 0x139cc <syna_spi_alloc_mem+0x170>
   138a8: b4000068     	cbz	x8, 0x138b4 <syna_spi_alloc_mem+0x58>
   138ac: aa0803e1     	mov	x1, x8
   138b0: 94000000     	bl	0x138b0 <syna_spi_alloc_mem+0x54>
		00000000000138b0:  R_AARCH64_CALL26	devm_kfree
   138b4: f94002e8     	ldr	x8, [x23]
		00000000000138b4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x890
   138b8: b4000988     	cbz	x8, 0x139e8 <syna_spi_alloc_mem+0x18c>
   138bc: f9403900     	ldr	x0, [x8, #0x70]
   138c0: b4000940     	cbz	x0, 0x139e8 <syna_spi_alloc_mem+0x18c>
   138c4: 0b141288     	add	w8, w20, w20, lsl #4
   138c8: 531d7108     	lsl	w8, w8, #3
   138cc: 7100011f     	cmp	w8, #0x0
   138d0: 54000c2d     	b.le	0x13a54 <syna_spi_alloc_mem+0x1f8>
   138d4: 52801108     	mov	w8, #0x88               // =136
   138d8: 5281b802     	mov	w2, #0xdc0              // =3520
   138dc: 9ba87e81     	umull	x1, w20, w8
   138e0: 94000000     	bl	0x138e0 <syna_spi_alloc_mem+0x84>
		00000000000138e0:  R_AARCH64_CALL26	devm_kmalloc
   138e4: f90002c0     	str	x0, [x22]
		00000000000138e4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8b0
   138e8: b4000c20     	cbz	x0, 0x13a6c <syna_spi_alloc_mem+0x210>
   138ec: b90002b4     	str	w20, [x21]
		00000000000138ec:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8b8
   138f0: 14000006     	b	0x13908 <syna_spi_alloc_mem+0xac>
   138f4: 0b141289     	add	w9, w20, w20, lsl #4
   138f8: aa0803e0     	mov	x0, x8
   138fc: 2a1f03e1     	mov	w1, wzr
   13900: 531d7122     	lsl	w2, w9, #3
   13904: 94000000     	bl	0x13904 <syna_spi_alloc_mem+0xa8>
		0000000000013904:  R_AARCH64_CALL26	memset
   13908: 90000015     	adrp	x21, 0x13000 <syna_spi_read+0x88>
		0000000000013908:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x898
   1390c: b94002a8     	ldr	w8, [x21]
		000000000001390c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x898
   13910: 6b13011f     	cmp	w8, w19
   13914: 54000582     	b.hs	0x139c4 <syna_spi_alloc_mem+0x168>
   13918: 90000016     	adrp	x22, 0x13000 <syna_spi_read+0x88>
		0000000000013918:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8a0
   1391c: 90000017     	adrp	x23, 0x13000 <syna_spi_read+0x88>
		000000000001391c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x890
   13920: f94002c1     	ldr	x1, [x22]
		0000000000013920:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a0
   13924: b40000e1     	cbz	x1, 0x13940 <syna_spi_alloc_mem+0xe4>
   13928: f94002e8     	ldr	x8, [x23]
		0000000000013928:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x890
   1392c: b40007c8     	cbz	x8, 0x13a24 <syna_spi_alloc_mem+0x1c8>
   13930: f9403900     	ldr	x0, [x8, #0x70]
   13934: b4000780     	cbz	x0, 0x13a24 <syna_spi_alloc_mem+0x1c8>
   13938: 94000000     	bl	0x13938 <syna_spi_alloc_mem+0xdc>
		0000000000013938:  R_AARCH64_CALL26	devm_kfree
   1393c: f90002df     	str	xzr, [x22]
		000000000001393c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a0
   13940: 90000018     	adrp	x24, 0x13000 <syna_spi_read+0x88>
		0000000000013940:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8a8
   13944: f9400301     	ldr	x1, [x24]
		0000000000013944:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a8
   13948: b40000e1     	cbz	x1, 0x13964 <syna_spi_alloc_mem+0x108>
   1394c: f94002e8     	ldr	x8, [x23]
		000000000001394c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x890
   13950: b4000768     	cbz	x8, 0x13a3c <syna_spi_alloc_mem+0x1e0>
   13954: f9403900     	ldr	x0, [x8, #0x70]
   13958: b4000720     	cbz	x0, 0x13a3c <syna_spi_alloc_mem+0x1e0>
   1395c: 94000000     	bl	0x1395c <syna_spi_alloc_mem+0x100>
		000000000001395c:  R_AARCH64_CALL26	devm_kfree
   13960: f900031f     	str	xzr, [x24]
		0000000000013960:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a8
   13964: f94002e8     	ldr	x8, [x23]
		0000000000013964:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x890
   13968: b4000468     	cbz	x8, 0x139f4 <syna_spi_alloc_mem+0x198>
   1396c: f9403900     	ldr	x0, [x8, #0x70]
   13970: b4000420     	cbz	x0, 0x139f4 <syna_spi_alloc_mem+0x198>
   13974: 7100027f     	cmp	w19, #0x0
   13978: 5400088d     	b.le	0x13a88 <syna_spi_alloc_mem+0x22c>
   1397c: 2a1303f4     	mov	w20, w19
   13980: 5281b802     	mov	w2, #0xdc0              // =3520
   13984: aa1403e1     	mov	x1, x20
   13988: 94000000     	bl	0x13988 <syna_spi_alloc_mem+0x12c>
		0000000000013988:  R_AARCH64_CALL26	devm_kmalloc
   1398c: f90002c0     	str	x0, [x22]
		000000000001398c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a0
   13990: b4000880     	cbz	x0, 0x13aa0 <syna_spi_alloc_mem+0x244>
   13994: f94002e8     	ldr	x8, [x23]
		0000000000013994:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x890
   13998: b4000348     	cbz	x8, 0x13a00 <syna_spi_alloc_mem+0x1a4>
   1399c: f9403900     	ldr	x0, [x8, #0x70]
   139a0: b4000300     	cbz	x0, 0x13a00 <syna_spi_alloc_mem+0x1a4>
   139a4: aa1403e1     	mov	x1, x20
   139a8: 5281b802     	mov	w2, #0xdc0              // =3520
   139ac: 94000000     	bl	0x139ac <syna_spi_alloc_mem+0x150>
		00000000000139ac:  R_AARCH64_CALL26	devm_kmalloc
   139b0: f9000300     	str	x0, [x24]
		00000000000139b0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a8
   139b4: b4000320     	cbz	x0, 0x13a18 <syna_spi_alloc_mem+0x1bc>
   139b8: 2a1f03e0     	mov	w0, wzr
   139bc: b90002b3     	str	w19, [x21]
		00000000000139bc:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x898
   139c0: 1400003f     	b	0x13abc <syna_spi_alloc_mem+0x260>
   139c4: 2a1f03e0     	mov	w0, wzr
   139c8: 1400003d     	b	0x13abc <syna_spi_alloc_mem+0x260>
   139cc: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		00000000000139cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   139d0: 91000000     	add	x0, x0, #0x0
		00000000000139d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   139d4: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		00000000000139d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   139d8: 91000021     	add	x1, x1, #0x0
		00000000000139d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   139dc: 94000000     	bl	0x139dc <syna_spi_alloc_mem+0x180>
		00000000000139dc:  R_AARCH64_CALL26	_printk
   139e0: f94002e8     	ldr	x8, [x23]
		00000000000139e0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x890
   139e4: b5fff6c8     	cbnz	x8, 0x138bc <syna_spi_alloc_mem+0x60>
   139e8: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		00000000000139e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   139ec: 91000000     	add	x0, x0, #0x0
		00000000000139ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   139f0: 1400001b     	b	0x13a5c <syna_spi_alloc_mem+0x200>
   139f4: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		00000000000139f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   139f8: 91000000     	add	x0, x0, #0x0
		00000000000139f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   139fc: 14000025     	b	0x13a90 <syna_spi_alloc_mem+0x234>
   13a00: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		0000000000013a00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   13a04: 91000000     	add	x0, x0, #0x0
		0000000000013a04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   13a08: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		0000000000013a08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   13a0c: 91000021     	add	x1, x1, #0x0
		0000000000013a0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   13a10: 94000000     	bl	0x13a10 <syna_spi_alloc_mem+0x1b4>
		0000000000013a10:  R_AARCH64_CALL26	_printk
   13a14: f900031f     	str	xzr, [x24]
		0000000000013a14:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a8
   13a18: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		0000000000013a18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x212c
   13a1c: 91000000     	add	x0, x0, #0x0
		0000000000013a1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x212c
   13a20: 14000022     	b	0x13aa8 <syna_spi_alloc_mem+0x24c>
   13a24: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		0000000000013a24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   13a28: 91000000     	add	x0, x0, #0x0
		0000000000013a28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   13a2c: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		0000000000013a2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   13a30: 91000021     	add	x1, x1, #0x0
		0000000000013a30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   13a34: 94000000     	bl	0x13a34 <syna_spi_alloc_mem+0x1d8>
		0000000000013a34:  R_AARCH64_CALL26	_printk
   13a38: 17ffffc1     	b	0x1393c <syna_spi_alloc_mem+0xe0>
   13a3c: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		0000000000013a3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   13a40: 91000000     	add	x0, x0, #0x0
		0000000000013a40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   13a44: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		0000000000013a44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   13a48: 91000021     	add	x1, x1, #0x0
		0000000000013a48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   13a4c: 94000000     	bl	0x13a4c <syna_spi_alloc_mem+0x1f0>
		0000000000013a4c:  R_AARCH64_CALL26	_printk
   13a50: 17ffffc4     	b	0x13960 <syna_spi_alloc_mem+0x104>
   13a54: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		0000000000013a54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   13a58: 91000000     	add	x0, x0, #0x0
		0000000000013a58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   13a5c: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		0000000000013a5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   13a60: 91000021     	add	x1, x1, #0x0
		0000000000013a60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   13a64: 94000000     	bl	0x13a64 <syna_spi_alloc_mem+0x208>
		0000000000013a64:  R_AARCH64_CALL26	_printk
   13a68: f90002df     	str	xzr, [x22]
		0000000000013a68:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8b0
   13a6c: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		0000000000013a6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33d8
   13a70: 91000000     	add	x0, x0, #0x0
		0000000000013a70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33d8
   13a74: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		0000000000013a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e27
   13a78: 91000021     	add	x1, x1, #0x0
		0000000000013a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e27
   13a7c: 94000000     	bl	0x13a7c <syna_spi_alloc_mem+0x220>
		0000000000013a7c:  R_AARCH64_CALL26	_printk
   13a80: b90002bf     	str	wzr, [x21]
		0000000000013a80:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8b8
   13a84: 1400000d     	b	0x13ab8 <syna_spi_alloc_mem+0x25c>
   13a88: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		0000000000013a88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   13a8c: 91000000     	add	x0, x0, #0x0
		0000000000013a8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   13a90: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		0000000000013a90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   13a94: 91000021     	add	x1, x1, #0x0
		0000000000013a94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   13a98: 94000000     	bl	0x13a98 <syna_spi_alloc_mem+0x23c>
		0000000000013a98:  R_AARCH64_CALL26	_printk
   13a9c: f90002df     	str	xzr, [x22]
		0000000000013a9c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a0
   13aa0: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		0000000000013aa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8bd9
   13aa4: 91000000     	add	x0, x0, #0x0
		0000000000013aa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8bd9
   13aa8: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		0000000000013aa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e27
   13aac: 91000021     	add	x1, x1, #0x0
		0000000000013aac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e27
   13ab0: 94000000     	bl	0x13ab0 <syna_spi_alloc_mem+0x254>
		0000000000013ab0:  R_AARCH64_CALL26	_printk
   13ab4: b90002bf     	str	wzr, [x21]
		0000000000013ab4:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x898
   13ab8: 12800160     	mov	w0, #-0xc               // =-12
   13abc: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   13ac0: a94257f6     	ldp	x22, x21, [sp, #0x20]
   13ac4: a9415ff8     	ldp	x24, x23, [sp, #0x10]
   13ac8: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   13acc: d50323bf     	autiasp
   13ad0: d65f03c0     	ret
