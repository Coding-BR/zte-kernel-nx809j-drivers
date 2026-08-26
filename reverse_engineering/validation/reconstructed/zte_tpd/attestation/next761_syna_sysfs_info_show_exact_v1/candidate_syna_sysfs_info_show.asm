
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000029898 <syna_sysfs_info_show>:
   29898: d503233f     	paciasp
   2989c: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   298a0: a90167fa     	stp	x26, x25, [sp, #0x10]
   298a4: a9025ff8     	stp	x24, x23, [sp, #0x20]
   298a8: a90357f6     	stp	x22, x21, [sp, #0x30]
   298ac: a9044ff4     	stp	x20, x19, [sp, #0x40]
   298b0: 910003fd     	mov	x29, sp
   298b4: f9400c08     	ldr	x8, [x0, #0x18]
   298b8: aa0203f4     	mov	x20, x2
   298bc: 90000002     	adrp	x2, 0x29000 <syna_spi_read+0x1ec>
		00000000000298bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ce93
   298c0: 91000042     	add	x2, x2, #0x0
		00000000000298c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ce93
   298c4: 90000004     	adrp	x4, 0x29000 <syna_spi_read+0x1ec>
		00000000000298c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bcbc
   298c8: 91000084     	add	x4, x4, #0x0
		00000000000298c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bcbc
   298cc: f9404d17     	ldr	x23, [x8, #0x98]
   298d0: aa1403e0     	mov	x0, x20
   298d4: 52820001     	mov	w1, #0x1000             // =4096
   298d8: 52800023     	mov	w3, #0x1                // =1
   298dc: f94002f6     	ldr	x22, [x23]
   298e0: 94000000     	bl	0x298e0 <syna_sysfs_info_show+0x48>
		00000000000298e0:  R_AARCH64_CALL26	scnprintf
   298e4: 2a0003f3     	mov	w19, w0
   298e8: 37f81aa0     	tbnz	w0, #0x1f, 0x29c3c <syna_sysfs_info_show+0x3a4>
   298ec: 2a1303e8     	mov	w8, w19
   298f0: 52820009     	mov	w9, #0x1000             // =4096
   298f4: 90000002     	adrp	x2, 0x29000 <syna_spi_read+0x1ec>
		00000000000298f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bf62
   298f8: 91000042     	add	x2, x2, #0x0
		00000000000298f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bf62
   298fc: 8b080294     	add	x20, x20, x8
   29900: cb080121     	sub	x1, x9, x8
   29904: aa1403e0     	mov	x0, x20
   29908: 52800043     	mov	w3, #0x2                // =2
   2990c: 52800184     	mov	w4, #0xc                // =12
   29910: 94000000     	bl	0x29910 <syna_sysfs_info_show+0x78>
		0000000000029910:  R_AARCH64_CALL26	scnprintf
   29914: 37f81920     	tbnz	w0, #0x1f, 0x29c38 <syna_sysfs_info_show+0x3a0>
   29918: b9457ee8     	ldr	w8, [x23, #0x57c]
   2991c: 39560ae9     	ldrb	w9, [x23, #0x582]
   29920: 2a0003ea     	mov	w10, w0
   29924: 8b204280     	add	x0, x20, w0, uxtw
   29928: 0b130155     	add	w21, w10, w19
   2992c: 71000d1f     	cmp	w8, #0x3
   29930: 36000489     	tbz	w9, #0x0, 0x299c0 <syna_sysfs_info_show+0x128>
   29934: 54000480     	b.eq	0x299c4 <syna_sysfs_info_show+0x12c>
   29938: 52820008     	mov	w8, #0x1000             // =4096
   2993c: b94386e4     	ldr	w4, [x23, #0x384]
   29940: 90000002     	adrp	x2, 0x29000 <syna_spi_read+0x1ec>
		0000000000029940:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18df4
   29944: 91000042     	add	x2, x2, #0x0
		0000000000029944:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18df4
   29948: cb354101     	sub	x1, x8, w21, uxtw
   2994c: 90000003     	adrp	x3, 0x29000 <syna_spi_read+0x1ec>
		000000000002994c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b55c
   29950: 91000063     	add	x3, x3, #0x0
		0000000000029950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b55c
   29954: aa0003f4     	mov	x20, x0
   29958: 94000000     	bl	0x29958 <syna_sysfs_info_show+0xc0>
		0000000000029958:  R_AARCH64_CALL26	scnprintf
   2995c: 2a0003f3     	mov	w19, w0
   29960: 37f816e0     	tbnz	w0, #0x1f, 0x29c3c <syna_sysfs_info_show+0x3a4>
   29964: 8b334294     	add	x20, x20, w19, uxtw
   29968: 0b150275     	add	w21, w19, w21
   2996c: 52820008     	mov	w8, #0x1000             // =4096
   29970: 394202c3     	ldrb	w3, [x22, #0x80]
   29974: cb150101     	sub	x1, x8, x21
   29978: 90000002     	adrp	x2, 0x29000 <syna_spi_read+0x1ec>
		0000000000029978:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cb29
   2997c: 91000042     	add	x2, x2, #0x0
		000000000002997c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cb29
   29980: aa1403e0     	mov	x0, x20
   29984: 94000000     	bl	0x29984 <syna_sysfs_info_show+0xec>
		0000000000029984:  R_AARCH64_CALL26	scnprintf
   29988: 2a0003f3     	mov	w19, w0
   2998c: 37f81580     	tbnz	w0, #0x1f, 0x29c3c <syna_sysfs_info_show+0x3a4>
   29990: 394206c3     	ldrb	w3, [x22, #0x81]
   29994: 8b334294     	add	x20, x20, w19, uxtw
   29998: 0b150275     	add	w21, w19, w21
   2999c: 52820008     	mov	w8, #0x1000             // =4096
   299a0: 71002c7f     	cmp	w3, #0xb
   299a4: 54000260     	b.eq	0x299f0 <syna_sysfs_info_show+0x158>
   299a8: 7100047f     	cmp	w3, #0x1
   299ac: 540002a1     	b.ne	0x29a00 <syna_sysfs_info_show+0x168>
   299b0: cb354101     	sub	x1, x8, w21, uxtw
   299b4: 90000002     	adrp	x2, 0x29000 <syna_spi_read+0x1ec>
		00000000000299b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1abd8
   299b8: 91000042     	add	x2, x2, #0x0
		00000000000299b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1abd8
   299bc: 14000014     	b	0x29a0c <syna_sysfs_info_show+0x174>
   299c0: 540000a1     	b.ne	0x299d4 <syna_sysfs_info_show+0x13c>
   299c4: 52820008     	mov	w8, #0x1000             // =4096
   299c8: 90000002     	adrp	x2, 0x29000 <syna_spi_read+0x1ec>
		00000000000299c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a796
   299cc: 91000042     	add	x2, x2, #0x0
		00000000000299cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a796
   299d0: 14000004     	b	0x299e0 <syna_sysfs_info_show+0x148>
   299d4: 52820008     	mov	w8, #0x1000             // =4096
   299d8: 90000002     	adrp	x2, 0x29000 <syna_spi_read+0x1ec>
		00000000000299d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d87a
   299dc: 91000042     	add	x2, x2, #0x0
		00000000000299dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d87a
   299e0: cb354101     	sub	x1, x8, w21, uxtw
   299e4: 94000000     	bl	0x299e4 <syna_sysfs_info_show+0x14c>
		00000000000299e4:  R_AARCH64_CALL26	scnprintf
   299e8: 0b150013     	add	w19, w0, w21
   299ec: 14000094     	b	0x29c3c <syna_sysfs_info_show+0x3a4>
   299f0: cb354101     	sub	x1, x8, w21, uxtw
   299f4: 90000002     	adrp	x2, 0x29000 <syna_spi_read+0x1ec>
		00000000000299f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19b5f
   299f8: 91000042     	add	x2, x2, #0x0
		00000000000299f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19b5f
   299fc: 14000004     	b	0x29a0c <syna_sysfs_info_show+0x174>
   29a00: cb354101     	sub	x1, x8, w21, uxtw
   29a04: 90000002     	adrp	x2, 0x29000 <syna_spi_read+0x1ec>
		0000000000029a04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18b35
   29a08: 91000042     	add	x2, x2, #0x0
		0000000000029a08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18b35
   29a0c: aa1403e0     	mov	x0, x20
   29a10: 94000000     	bl	0x29a10 <syna_sysfs_info_show+0x178>
		0000000000029a10:  R_AARCH64_CALL26	scnprintf
   29a14: 2a0003f3     	mov	w19, w0
   29a18: 37f81120     	tbnz	w0, #0x1f, 0x29c3c <syna_sysfs_info_show+0x3a4>
   29a1c: 8b334294     	add	x20, x20, w19, uxtw
   29a20: 0b150275     	add	w21, w19, w21
   29a24: 52820017     	mov	w23, #0x1000            // =4096
   29a28: cb1502e1     	sub	x1, x23, x21
   29a2c: 90000002     	adrp	x2, 0x29000 <syna_spi_read+0x1ec>
		0000000000029a2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b1a3
   29a30: 91000042     	add	x2, x2, #0x0
		0000000000029a30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b1a3
   29a34: aa1403e0     	mov	x0, x20
   29a38: 94000000     	bl	0x29a38 <syna_sysfs_info_show+0x1a0>
		0000000000029a38:  R_AARCH64_CALL26	scnprintf
   29a3c: 2a0003f3     	mov	w19, w0
   29a40: 37f80fe0     	tbnz	w0, #0x1f, 0x29c3c <syna_sysfs_info_show+0x3a4>
   29a44: b1020ac9     	adds	x9, x22, #0x82
   29a48: 54001180     	b.eq	0x29c78 <syna_sysfs_info_show+0x3e0>
   29a4c: 8b334288     	add	x8, x20, w19, uxtw
   29a50: b4001148     	cbz	x8, 0x29c78 <syna_sysfs_info_show+0x3e0>
   29a54: 0b1302aa     	add	w10, w21, w19
   29a58: 4b0a02e3     	sub	w3, w23, w10
   29a5c: 71003c7f     	cmp	w3, #0xf
   29a60: 54000fe9     	b.ls	0x29c5c <syna_sysfs_info_show+0x3c4>
   29a64: a9402d29     	ldp	x9, x11, [x9]
   29a68: 11004155     	add	w21, w10, #0x10
   29a6c: 5282000a     	mov	w10, #0x1000            // =4096
   29a70: 91004114     	add	x20, x8, #0x10
   29a74: 90000002     	adrp	x2, 0x29000 <syna_spi_read+0x1ec>
		0000000000029a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b620
   29a78: 91000042     	add	x2, x2, #0x0
		0000000000029a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b620
   29a7c: cb150141     	sub	x1, x10, x21
   29a80: aa1403e0     	mov	x0, x20
   29a84: a9002d09     	stp	x9, x11, [x8]
   29a88: 94000000     	bl	0x29a88 <syna_sysfs_info_show+0x1f0>
		0000000000029a88:  R_AARCH64_CALL26	scnprintf
   29a8c: 2a0003f3     	mov	w19, w0
   29a90: 37f80d60     	tbnz	w0, #0x1f, 0x29c3c <syna_sysfs_info_show+0x3a4>
   29a94: 8b334294     	add	x20, x20, w19, uxtw
   29a98: 0b150273     	add	w19, w19, w21
   29a9c: 52820008     	mov	w8, #0x1000             // =4096
   29aa0: b9400ec3     	ldr	w3, [x22, #0xc]
   29aa4: cb130101     	sub	x1, x8, x19
   29aa8: 90000002     	adrp	x2, 0x29000 <syna_spi_read+0x1ec>
		0000000000029aa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cb70
   29aac: 91000042     	add	x2, x2, #0x0
		0000000000029aac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cb70
   29ab0: aa1403e0     	mov	x0, x20
   29ab4: 94000000     	bl	0x29ab4 <syna_sysfs_info_show+0x21c>
		0000000000029ab4:  R_AARCH64_CALL26	scnprintf
   29ab8: 37f80c00     	tbnz	w0, #0x1f, 0x29c38 <syna_sysfs_info_show+0x3a0>
   29abc: 394206c8     	ldrb	w8, [x22, #0x81]
   29ac0: 0b130013     	add	w19, w0, w19
   29ac4: 7100051f     	cmp	w8, #0x1
   29ac8: 54000ba1     	b.ne	0x29c3c <syna_sysfs_info_show+0x3a4>
   29acc: 52820008     	mov	w8, #0x1000             // =4096
   29ad0: 8b204294     	add	x20, x20, w0, uxtw
   29ad4: 90000002     	adrp	x2, 0x29000 <syna_spi_read+0x1ec>
		0000000000029ad4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19b87
   29ad8: 91000042     	add	x2, x2, #0x0
		0000000000029ad8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19b87
   29adc: cb334101     	sub	x1, x8, w19, uxtw
   29ae0: aa1403e0     	mov	x0, x20
   29ae4: 94000000     	bl	0x29ae4 <syna_sysfs_info_show+0x24c>
		0000000000029ae4:  R_AARCH64_CALL26	scnprintf
   29ae8: 37f80a80     	tbnz	w0, #0x1f, 0x29c38 <syna_sysfs_info_show+0x3a0>
   29aec: 8b204294     	add	x20, x20, w0, uxtw
   29af0: aa1f03f8     	mov	x24, xzr
   29af4: 0b130017     	add	w23, w0, w19
   29af8: 910092d9     	add	x25, x22, #0x24
   29afc: 5282001a     	mov	w26, #0x1000            // =4096
   29b00: 90000015     	adrp	x21, 0x29000 <syna_spi_read+0x1ec>
		0000000000029b00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a7b1
   29b04: 910002b5     	add	x21, x21, #0x0
		0000000000029b04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a7b1
   29b08: cb374341     	sub	x1, x26, w23, uxtw
   29b0c: 38786b23     	ldrb	w3, [x25, x24]
   29b10: aa1403e0     	mov	x0, x20
   29b14: aa1503e2     	mov	x2, x21
   29b18: 94000000     	bl	0x29b18 <syna_sysfs_info_show+0x280>
		0000000000029b18:  R_AARCH64_CALL26	scnprintf
   29b1c: 2a0003f3     	mov	w19, w0
   29b20: 37f808e0     	tbnz	w0, #0x1f, 0x29c3c <syna_sysfs_info_show+0x3a4>
   29b24: 91000718     	add	x24, x24, #0x1
   29b28: 8b334294     	add	x20, x20, w19, uxtw
   29b2c: 0b170277     	add	w23, w19, w23
   29b30: f100431f     	cmp	x24, #0x10
   29b34: 54fffea1     	b.ne	0x29b08 <syna_sysfs_info_show+0x270>
   29b38: 52820008     	mov	w8, #0x1000             // =4096
   29b3c: 90000002     	adrp	x2, 0x29000 <syna_spi_read+0x1ec>
		0000000000029b3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b620
   29b40: 91000042     	add	x2, x2, #0x0
		0000000000029b40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b620
   29b44: cb374101     	sub	x1, x8, w23, uxtw
   29b48: aa1403e0     	mov	x0, x20
   29b4c: 94000000     	bl	0x29b4c <syna_sysfs_info_show+0x2b4>
		0000000000029b4c:  R_AARCH64_CALL26	scnprintf
   29b50: 2a0003f3     	mov	w19, w0
   29b54: 37f80740     	tbnz	w0, #0x1f, 0x29c3c <syna_sysfs_info_show+0x3a4>
   29b58: 8b334294     	add	x20, x20, w19, uxtw
   29b5c: 0b170275     	add	w21, w19, w23
   29b60: 52820008     	mov	w8, #0x1000             // =4096
   29b64: 294212c3     	ldp	w3, w4, [x22, #0x10]
   29b68: cb150101     	sub	x1, x8, x21
   29b6c: 90000002     	adrp	x2, 0x29000 <syna_spi_read+0x1ec>
		0000000000029b6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bcc0
   29b70: 91000042     	add	x2, x2, #0x0
		0000000000029b70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bcc0
   29b74: aa1403e0     	mov	x0, x20
   29b78: 94000000     	bl	0x29b78 <syna_sysfs_info_show+0x2e0>
		0000000000029b78:  R_AARCH64_CALL26	scnprintf
   29b7c: 2a0003f3     	mov	w19, w0
   29b80: 37f805e0     	tbnz	w0, #0x1f, 0x29c3c <syna_sysfs_info_show+0x3a4>
   29b84: 8b334294     	add	x20, x20, w19, uxtw
   29b88: 0b150275     	add	w21, w19, w21
   29b8c: 52820008     	mov	w8, #0x1000             // =4096
   29b90: b9401ac3     	ldr	w3, [x22, #0x18]
   29b94: cb150101     	sub	x1, x8, x21
   29b98: 90000002     	adrp	x2, 0x29000 <syna_spi_read+0x1ec>
		0000000000029b98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19b9c
   29b9c: 91000042     	add	x2, x2, #0x0
		0000000000029b9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19b9c
   29ba0: aa1403e0     	mov	x0, x20
   29ba4: 94000000     	bl	0x29ba4 <syna_sysfs_info_show+0x30c>
		0000000000029ba4:  R_AARCH64_CALL26	scnprintf
   29ba8: 2a0003f3     	mov	w19, w0
   29bac: 37f80480     	tbnz	w0, #0x1f, 0x29c3c <syna_sysfs_info_show+0x3a4>
   29bb0: 8b334294     	add	x20, x20, w19, uxtw
   29bb4: 0b150275     	add	w21, w19, w21
   29bb8: 52820008     	mov	w8, #0x1000             // =4096
   29bbc: 29438ec4     	ldp	w4, w3, [x22, #0x1c]
   29bc0: cb150101     	sub	x1, x8, x21
   29bc4: 90000002     	adrp	x2, 0x29000 <syna_spi_read+0x1ec>
		0000000000029bc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17cea
   29bc8: 91000042     	add	x2, x2, #0x0
		0000000000029bc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17cea
   29bcc: aa1403e0     	mov	x0, x20
   29bd0: 94000000     	bl	0x29bd0 <syna_sysfs_info_show+0x338>
		0000000000029bd0:  R_AARCH64_CALL26	scnprintf
   29bd4: 2a0003f3     	mov	w19, w0
   29bd8: 37f80320     	tbnz	w0, #0x1f, 0x29c3c <syna_sysfs_info_show+0x3a4>
   29bdc: 8b334294     	add	x20, x20, w19, uxtw
   29be0: 0b150275     	add	w21, w19, w21
   29be4: 52820008     	mov	w8, #0x1000             // =4096
   29be8: b9403ec3     	ldr	w3, [x22, #0x3c]
   29bec: cb150101     	sub	x1, x8, x21
   29bf0: 90000002     	adrp	x2, 0x29000 <syna_spi_read+0x1ec>
		0000000000029bf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18e24
   29bf4: 91000042     	add	x2, x2, #0x0
		0000000000029bf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18e24
   29bf8: aa1403e0     	mov	x0, x20
   29bfc: 94000000     	bl	0x29bfc <syna_sysfs_info_show+0x364>
		0000000000029bfc:  R_AARCH64_CALL26	scnprintf
   29c00: 2a0003f3     	mov	w19, w0
   29c04: 37f801c0     	tbnz	w0, #0x1f, 0x29c3c <syna_sysfs_info_show+0x3a4>
   29c08: 8b334280     	add	x0, x20, w19, uxtw
   29c0c: 0b150273     	add	w19, w19, w21
   29c10: 52820008     	mov	w8, #0x1000             // =4096
   29c14: b9403ac3     	ldr	w3, [x22, #0x38]
   29c18: cb130101     	sub	x1, x8, x19
   29c1c: 90000002     	adrp	x2, 0x29000 <syna_spi_read+0x1ec>
		0000000000029c1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b560
   29c20: 91000042     	add	x2, x2, #0x0
		0000000000029c20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b560
   29c24: 94000000     	bl	0x29c24 <syna_sysfs_info_show+0x38c>
		0000000000029c24:  R_AARCH64_CALL26	scnprintf
   29c28: 7100001f     	cmp	w0, #0x0
   29c2c: 1a93b3e8     	csel	w8, wzr, w19, lt
   29c30: 0b000113     	add	w19, w8, w0
   29c34: 14000002     	b	0x29c3c <syna_sysfs_info_show+0x3a4>
   29c38: 2a0003f3     	mov	w19, w0
   29c3c: 93407e60     	sxtw	x0, w19
   29c40: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   29c44: a94357f6     	ldp	x22, x21, [sp, #0x30]
   29c48: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   29c4c: a94167fa     	ldp	x26, x25, [sp, #0x10]
   29c50: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   29c54: d50323bf     	autiasp
   29c58: d65f03c0     	ret
   29c5c: 90000000     	adrp	x0, 0x29000 <syna_spi_read+0x1ec>
		0000000000029c5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b91b
   29c60: 91000000     	add	x0, x0, #0x0
		0000000000029c60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b91b
   29c64: 90000001     	adrp	x1, 0x29000 <syna_spi_read+0x1ec>
		0000000000029c64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18061
   29c68: 91000021     	add	x1, x1, #0x0
		0000000000029c68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18061
   29c6c: 52800202     	mov	w2, #0x10               // =16
   29c70: 52800204     	mov	w4, #0x10               // =16
   29c74: 94000000     	bl	0x29c74 <syna_sysfs_info_show+0x3dc>
		0000000000029c74:  R_AARCH64_CALL26	_printk
   29c78: 90000000     	adrp	x0, 0x29000 <syna_spi_read+0x1ec>
		0000000000029c78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cb41
   29c7c: 91000000     	add	x0, x0, #0x0
		0000000000029c7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cb41
   29c80: 90000001     	adrp	x1, 0x29000 <syna_spi_read+0x1ec>
		0000000000029c80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18b56
   29c84: 91000021     	add	x1, x1, #0x0
		0000000000029c84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18b56
   29c88: 94000000     	bl	0x29c88 <syna_sysfs_info_show+0x3f0>
		0000000000029c88:  R_AARCH64_CALL26	_printk
   29c8c: 128002b3     	mov	w19, #-0x16             // =-22
   29c90: 17ffffeb     	b	0x29c3c <syna_sysfs_info_show+0x3a4>
