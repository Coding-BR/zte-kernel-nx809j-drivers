
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000013d18 <syna_sysfs_info_show>:
   13d18: d503233f     	paciasp
   13d1c: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   13d20: a90167fa     	stp	x26, x25, [sp, #0x10]
   13d24: a9025ff8     	stp	x24, x23, [sp, #0x20]
   13d28: a90357f6     	stp	x22, x21, [sp, #0x30]
   13d2c: a9044ff4     	stp	x20, x19, [sp, #0x40]
   13d30: 910003fd     	mov	x29, sp
   13d34: f9400c08     	ldr	x8, [x0, #0x18]
   13d38: aa0203f4     	mov	x20, x2
   13d3c: 90000002     	adrp	x2, 0x13000 <syna_spi_read+0x88>
		0000000000013d3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa776
   13d40: 91000042     	add	x2, x2, #0x0
		0000000000013d40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa776
   13d44: 90000004     	adrp	x4, 0x13000 <syna_spi_read+0x88>
		0000000000013d44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8092
   13d48: 91000084     	add	x4, x4, #0x0
		0000000000013d48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8092
   13d4c: f9404d17     	ldr	x23, [x8, #0x98]
   13d50: aa1403e0     	mov	x0, x20
   13d54: 52820001     	mov	w1, #0x1000             // =4096
   13d58: 52800023     	mov	w3, #0x1                // =1
   13d5c: f94002f6     	ldr	x22, [x23]
   13d60: 94000000     	bl	0x13d60 <syna_sysfs_info_show+0x48>
		0000000000013d60:  R_AARCH64_CALL26	scnprintf
   13d64: 2a0003f3     	mov	w19, w0
   13d68: 37f81aa0     	tbnz	w0, #0x1f, 0x140bc <syna_sysfs_info_show+0x3a4>
   13d6c: 2a1303e8     	mov	w8, w19
   13d70: 52820009     	mov	w9, #0x1000             // =4096
   13d74: 90000002     	adrp	x2, 0x13000 <syna_spi_read+0x88>
		0000000000013d74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87e1
   13d78: 91000042     	add	x2, x2, #0x0
		0000000000013d78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87e1
   13d7c: 8b080294     	add	x20, x20, x8
   13d80: cb080121     	sub	x1, x9, x8
   13d84: aa1403e0     	mov	x0, x20
   13d88: 52800043     	mov	w3, #0x2                // =2
   13d8c: 52800184     	mov	w4, #0xc                // =12
   13d90: 94000000     	bl	0x13d90 <syna_sysfs_info_show+0x78>
		0000000000013d90:  R_AARCH64_CALL26	scnprintf
   13d94: 37f81920     	tbnz	w0, #0x1f, 0x140b8 <syna_sysfs_info_show+0x3a0>
   13d98: b9457ee8     	ldr	w8, [x23, #0x57c]
   13d9c: 39560ae9     	ldrb	w9, [x23, #0x582]
   13da0: 2a0003ea     	mov	w10, w0
   13da4: 8b204280     	add	x0, x20, w0, uxtw
   13da8: 0b130155     	add	w21, w10, w19
   13dac: 71000d1f     	cmp	w8, #0x3
   13db0: 36000489     	tbz	w9, #0x0, 0x13e40 <syna_sysfs_info_show+0x128>
   13db4: 54000480     	b.eq	0x13e44 <syna_sysfs_info_show+0x12c>
   13db8: 52820008     	mov	w8, #0x1000             // =4096
   13dbc: b94386e4     	ldr	w4, [x23, #0x384]
   13dc0: 90000002     	adrp	x2, 0x13000 <syna_spi_read+0x88>
		0000000000013dc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2cea
   13dc4: 91000042     	add	x2, x2, #0x0
		0000000000013dc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2cea
   13dc8: cb354101     	sub	x1, x8, w21, uxtw
   13dcc: 90000003     	adrp	x3, 0x13000 <syna_spi_read+0x88>
		0000000000013dcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x76dc
   13dd0: 91000063     	add	x3, x3, #0x0
		0000000000013dd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x76dc
   13dd4: aa0003f4     	mov	x20, x0
   13dd8: 94000000     	bl	0x13dd8 <syna_sysfs_info_show+0xc0>
		0000000000013dd8:  R_AARCH64_CALL26	scnprintf
   13ddc: 2a0003f3     	mov	w19, w0
   13de0: 37f816e0     	tbnz	w0, #0x1f, 0x140bc <syna_sysfs_info_show+0x3a4>
   13de4: 8b334294     	add	x20, x20, w19, uxtw
   13de8: 0b150275     	add	w21, w19, w21
   13dec: 52820008     	mov	w8, #0x1000             // =4096
   13df0: 394202c3     	ldrb	w3, [x22, #0x80]
   13df4: cb150101     	sub	x1, x8, x21
   13df8: 90000002     	adrp	x2, 0x13000 <syna_spi_read+0x88>
		0000000000013df8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa08e
   13dfc: 91000042     	add	x2, x2, #0x0
		0000000000013dfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa08e
   13e00: aa1403e0     	mov	x0, x20
   13e04: 94000000     	bl	0x13e04 <syna_sysfs_info_show+0xec>
		0000000000013e04:  R_AARCH64_CALL26	scnprintf
   13e08: 2a0003f3     	mov	w19, w0
   13e0c: 37f81580     	tbnz	w0, #0x1f, 0x140bc <syna_sysfs_info_show+0x3a4>
   13e10: 394206c3     	ldrb	w3, [x22, #0x81]
   13e14: 8b334294     	add	x20, x20, w19, uxtw
   13e18: 0b150275     	add	w21, w19, w21
   13e1c: 52820008     	mov	w8, #0x1000             // =4096
   13e20: 71002c7f     	cmp	w3, #0xb
   13e24: 54000260     	b.eq	0x13e70 <syna_sysfs_info_show+0x158>
   13e28: 7100047f     	cmp	w3, #0x1
   13e2c: 540002a1     	b.ne	0x13e80 <syna_sysfs_info_show+0x168>
   13e30: cb354101     	sub	x1, x8, w21, uxtw
   13e34: 90000002     	adrp	x2, 0x13000 <syna_spi_read+0x88>
		0000000000013e34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x64a0
   13e38: 91000042     	add	x2, x2, #0x0
		0000000000013e38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x64a0
   13e3c: 14000014     	b	0x13e8c <syna_sysfs_info_show+0x174>
   13e40: 540000a1     	b.ne	0x13e54 <syna_sysfs_info_show+0x13c>
   13e44: 52820008     	mov	w8, #0x1000             // =4096
   13e48: 90000002     	adrp	x2, 0x13000 <syna_spi_read+0x88>
		0000000000013e48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d3d
   13e4c: 91000042     	add	x2, x2, #0x0
		0000000000013e4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d3d
   13e50: 14000004     	b	0x13e60 <syna_sysfs_info_show+0x148>
   13e54: 52820008     	mov	w8, #0x1000             // =4096
   13e58: 90000002     	adrp	x2, 0x13000 <syna_spi_read+0x88>
		0000000000013e58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc246
   13e5c: 91000042     	add	x2, x2, #0x0
		0000000000013e5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc246
   13e60: cb354101     	sub	x1, x8, w21, uxtw
   13e64: 94000000     	bl	0x13e64 <syna_sysfs_info_show+0x14c>
		0000000000013e64:  R_AARCH64_CALL26	scnprintf
   13e68: 0b150013     	add	w19, w0, w21
   13e6c: 14000094     	b	0x140bc <syna_sysfs_info_show+0x3a4>
   13e70: cb354101     	sub	x1, x8, w21, uxtw
   13e74: 90000002     	adrp	x2, 0x13000 <syna_spi_read+0x88>
		0000000000013e74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x46e7
   13e78: 91000042     	add	x2, x2, #0x0
		0000000000013e78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x46e7
   13e7c: 14000004     	b	0x13e8c <syna_sysfs_info_show+0x174>
   13e80: cb354101     	sub	x1, x8, w21, uxtw
   13e84: 90000002     	adrp	x2, 0x13000 <syna_spi_read+0x88>
		0000000000013e84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x278b
   13e88: 91000042     	add	x2, x2, #0x0
		0000000000013e88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x278b
   13e8c: aa1403e0     	mov	x0, x20
   13e90: 94000000     	bl	0x13e90 <syna_sysfs_info_show+0x178>
		0000000000013e90:  R_AARCH64_CALL26	scnprintf
   13e94: 2a0003f3     	mov	w19, w0
   13e98: 37f81120     	tbnz	w0, #0x1f, 0x140bc <syna_sysfs_info_show+0x3a4>
   13e9c: 8b334294     	add	x20, x20, w19, uxtw
   13ea0: 0b150275     	add	w21, w19, w21
   13ea4: 52820017     	mov	w23, #0x1000            // =4096
   13ea8: cb1502e1     	sub	x1, x23, x21
   13eac: 90000002     	adrp	x2, 0x13000 <syna_spi_read+0x88>
		0000000000013eac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x706a
   13eb0: 91000042     	add	x2, x2, #0x0
		0000000000013eb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x706a
   13eb4: aa1403e0     	mov	x0, x20
   13eb8: 94000000     	bl	0x13eb8 <syna_sysfs_info_show+0x1a0>
		0000000000013eb8:  R_AARCH64_CALL26	scnprintf
   13ebc: 2a0003f3     	mov	w19, w0
   13ec0: 37f80fe0     	tbnz	w0, #0x1f, 0x140bc <syna_sysfs_info_show+0x3a4>
   13ec4: b1020ac9     	adds	x9, x22, #0x82
   13ec8: 54001180     	b.eq	0x140f8 <syna_sysfs_info_show+0x3e0>
   13ecc: 8b334288     	add	x8, x20, w19, uxtw
   13ed0: b4001148     	cbz	x8, 0x140f8 <syna_sysfs_info_show+0x3e0>
   13ed4: 0b1302aa     	add	w10, w21, w19
   13ed8: 4b0a02e3     	sub	w3, w23, w10
   13edc: 71003c7f     	cmp	w3, #0xf
   13ee0: 54000fe9     	b.ls	0x140dc <syna_sysfs_info_show+0x3c4>
   13ee4: a9402d29     	ldp	x9, x11, [x9]
   13ee8: 11004155     	add	w21, w10, #0x10
   13eec: 5282000a     	mov	w10, #0x1000            // =4096
   13ef0: 91004114     	add	x20, x8, #0x10
   13ef4: 90000002     	adrp	x2, 0x13000 <syna_spi_read+0x88>
		0000000000013ef4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a13
   13ef8: 91000042     	add	x2, x2, #0x0
		0000000000013ef8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a13
   13efc: cb150141     	sub	x1, x10, x21
   13f00: aa1403e0     	mov	x0, x20
   13f04: a9002d09     	stp	x9, x11, [x8]
   13f08: 94000000     	bl	0x13f08 <syna_sysfs_info_show+0x1f0>
		0000000000013f08:  R_AARCH64_CALL26	scnprintf
   13f0c: 2a0003f3     	mov	w19, w0
   13f10: 37f80d60     	tbnz	w0, #0x1f, 0x140bc <syna_sysfs_info_show+0x3a4>
   13f14: 8b334294     	add	x20, x20, w19, uxtw
   13f18: 0b150273     	add	w19, w19, w21
   13f1c: 52820008     	mov	w8, #0x1000             // =4096
   13f20: b9400ec3     	ldr	w3, [x22, #0xc]
   13f24: cb130101     	sub	x1, x8, x19
   13f28: 90000002     	adrp	x2, 0x13000 <syna_spi_read+0x88>
		0000000000013f28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa0d5
   13f2c: 91000042     	add	x2, x2, #0x0
		0000000000013f2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa0d5
   13f30: aa1403e0     	mov	x0, x20
   13f34: 94000000     	bl	0x13f34 <syna_sysfs_info_show+0x21c>
		0000000000013f34:  R_AARCH64_CALL26	scnprintf
   13f38: 37f80c00     	tbnz	w0, #0x1f, 0x140b8 <syna_sysfs_info_show+0x3a0>
   13f3c: 394206c8     	ldrb	w8, [x22, #0x81]
   13f40: 0b130013     	add	w19, w0, w19
   13f44: 7100051f     	cmp	w8, #0x1
   13f48: 54000ba1     	b.ne	0x140bc <syna_sysfs_info_show+0x3a4>
   13f4c: 52820008     	mov	w8, #0x1000             // =4096
   13f50: 8b204294     	add	x20, x20, w0, uxtw
   13f54: 90000002     	adrp	x2, 0x13000 <syna_spi_read+0x88>
		0000000000013f54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x470f
   13f58: 91000042     	add	x2, x2, #0x0
		0000000000013f58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x470f
   13f5c: cb334101     	sub	x1, x8, w19, uxtw
   13f60: aa1403e0     	mov	x0, x20
   13f64: 94000000     	bl	0x13f64 <syna_sysfs_info_show+0x24c>
		0000000000013f64:  R_AARCH64_CALL26	scnprintf
   13f68: 37f80a80     	tbnz	w0, #0x1f, 0x140b8 <syna_sysfs_info_show+0x3a0>
   13f6c: 8b204294     	add	x20, x20, w0, uxtw
   13f70: aa1f03f8     	mov	x24, xzr
   13f74: 0b130017     	add	w23, w0, w19
   13f78: 910092d9     	add	x25, x22, #0x24
   13f7c: 5282001a     	mov	w26, #0x1000            // =4096
   13f80: 90000015     	adrp	x21, 0x13000 <syna_spi_read+0x88>
		0000000000013f80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d58
   13f84: 910002b5     	add	x21, x21, #0x0
		0000000000013f84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d58
   13f88: cb374341     	sub	x1, x26, w23, uxtw
   13f8c: 38786b23     	ldrb	w3, [x25, x24]
   13f90: aa1403e0     	mov	x0, x20
   13f94: aa1503e2     	mov	x2, x21
   13f98: 94000000     	bl	0x13f98 <syna_sysfs_info_show+0x280>
		0000000000013f98:  R_AARCH64_CALL26	scnprintf
   13f9c: 2a0003f3     	mov	w19, w0
   13fa0: 37f808e0     	tbnz	w0, #0x1f, 0x140bc <syna_sysfs_info_show+0x3a4>
   13fa4: 91000718     	add	x24, x24, #0x1
   13fa8: 8b334294     	add	x20, x20, w19, uxtw
   13fac: 0b170277     	add	w23, w19, w23
   13fb0: f100431f     	cmp	x24, #0x10
   13fb4: 54fffea1     	b.ne	0x13f88 <syna_sysfs_info_show+0x270>
   13fb8: 52820008     	mov	w8, #0x1000             // =4096
   13fbc: 90000002     	adrp	x2, 0x13000 <syna_spi_read+0x88>
		0000000000013fbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a13
   13fc0: 91000042     	add	x2, x2, #0x0
		0000000000013fc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a13
   13fc4: cb374101     	sub	x1, x8, w23, uxtw
   13fc8: aa1403e0     	mov	x0, x20
   13fcc: 94000000     	bl	0x13fcc <syna_sysfs_info_show+0x2b4>
		0000000000013fcc:  R_AARCH64_CALL26	scnprintf
   13fd0: 2a0003f3     	mov	w19, w0
   13fd4: 37f80740     	tbnz	w0, #0x1f, 0x140bc <syna_sysfs_info_show+0x3a4>
   13fd8: 8b334294     	add	x20, x20, w19, uxtw
   13fdc: 0b170275     	add	w21, w19, w23
   13fe0: 52820008     	mov	w8, #0x1000             // =4096
   13fe4: 294212c3     	ldp	w3, w4, [x22, #0x10]
   13fe8: cb150101     	sub	x1, x8, x21
   13fec: 90000002     	adrp	x2, 0x13000 <syna_spi_read+0x88>
		0000000000013fec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x82d8
   13ff0: 91000042     	add	x2, x2, #0x0
		0000000000013ff0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x82d8
   13ff4: aa1403e0     	mov	x0, x20
   13ff8: 94000000     	bl	0x13ff8 <syna_sysfs_info_show+0x2e0>
		0000000000013ff8:  R_AARCH64_CALL26	scnprintf
   13ffc: 2a0003f3     	mov	w19, w0
   14000: 37f805e0     	tbnz	w0, #0x1f, 0x140bc <syna_sysfs_info_show+0x3a4>
   14004: 8b334294     	add	x20, x20, w19, uxtw
   14008: 0b150275     	add	w21, w19, w21
   1400c: 52820008     	mov	w8, #0x1000             // =4096
   14010: b9401ac3     	ldr	w3, [x22, #0x18]
   14014: cb150101     	sub	x1, x8, x21
   14018: 90000002     	adrp	x2, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4724
   1401c: 91000042     	add	x2, x2, #0x0
		000000000001401c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4724
   14020: aa1403e0     	mov	x0, x20
   14024: 94000000     	bl	0x14024 <syna_sysfs_info_show+0x30c>
		0000000000014024:  R_AARCH64_CALL26	scnprintf
   14028: 2a0003f3     	mov	w19, w0
   1402c: 37f80480     	tbnz	w0, #0x1f, 0x140bc <syna_sysfs_info_show+0x3a4>
   14030: 8b334294     	add	x20, x20, w19, uxtw
   14034: 0b150275     	add	w21, w19, w21
   14038: 52820008     	mov	w8, #0x1000             // =4096
   1403c: 29438ec4     	ldp	w4, w3, [x22, #0x1c]
   14040: cb150101     	sub	x1, x8, x21
   14044: 90000002     	adrp	x2, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xee9
   14048: 91000042     	add	x2, x2, #0x0
		0000000000014048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xee9
   1404c: aa1403e0     	mov	x0, x20
   14050: 94000000     	bl	0x14050 <syna_sysfs_info_show+0x338>
		0000000000014050:  R_AARCH64_CALL26	scnprintf
   14054: 2a0003f3     	mov	w19, w0
   14058: 37f80320     	tbnz	w0, #0x1f, 0x140bc <syna_sysfs_info_show+0x3a4>
   1405c: 8b334294     	add	x20, x20, w19, uxtw
   14060: 0b150275     	add	w21, w19, w21
   14064: 52820008     	mov	w8, #0x1000             // =4096
   14068: b9403ec3     	ldr	w3, [x22, #0x3c]
   1406c: cb150101     	sub	x1, x8, x21
   14070: 90000002     	adrp	x2, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014070:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d1a
   14074: 91000042     	add	x2, x2, #0x0
		0000000000014074:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d1a
   14078: aa1403e0     	mov	x0, x20
   1407c: 94000000     	bl	0x1407c <syna_sysfs_info_show+0x364>
		000000000001407c:  R_AARCH64_CALL26	scnprintf
   14080: 2a0003f3     	mov	w19, w0
   14084: 37f801c0     	tbnz	w0, #0x1f, 0x140bc <syna_sysfs_info_show+0x3a4>
   14088: 8b334280     	add	x0, x20, w19, uxtw
   1408c: 0b150273     	add	w19, w19, w21
   14090: 52820008     	mov	w8, #0x1000             // =4096
   14094: b9403ac3     	ldr	w3, [x22, #0x38]
   14098: cb130101     	sub	x1, x8, x19
   1409c: 90000002     	adrp	x2, 0x14000 <syna_sysfs_info_show+0x2e8>
		000000000001409c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x76e0
   140a0: 91000042     	add	x2, x2, #0x0
		00000000000140a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x76e0
   140a4: 94000000     	bl	0x140a4 <syna_sysfs_info_show+0x38c>
		00000000000140a4:  R_AARCH64_CALL26	scnprintf
   140a8: 7100001f     	cmp	w0, #0x0
   140ac: 1a93b3e8     	csel	w8, wzr, w19, lt
   140b0: 0b000113     	add	w19, w8, w0
   140b4: 14000002     	b	0x140bc <syna_sysfs_info_show+0x3a4>
   140b8: 2a0003f3     	mov	w19, w0
   140bc: 93407e60     	sxtw	x0, w19
   140c0: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   140c4: a94357f6     	ldp	x22, x21, [sp, #0x30]
   140c8: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   140cc: a94167fa     	ldp	x26, x25, [sp, #0x10]
   140d0: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   140d4: d50323bf     	autiasp
   140d8: d65f03c0     	ret
   140dc: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		00000000000140dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   140e0: 91000000     	add	x0, x0, #0x0
		00000000000140e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   140e4: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		00000000000140e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   140e8: 91000021     	add	x1, x1, #0x0
		00000000000140e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   140ec: 52800202     	mov	w2, #0x10               // =16
   140f0: 52800204     	mov	w4, #0x10               // =16
   140f4: 94000000     	bl	0x140f4 <syna_sysfs_info_show+0x3dc>
		00000000000140f4:  R_AARCH64_CALL26	_printk
   140f8: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		00000000000140f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa0a6
   140fc: 91000000     	add	x0, x0, #0x0
		00000000000140fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa0a6
   14100: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014100:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27ac
   14104: 91000021     	add	x1, x1, #0x0
		0000000000014104:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27ac
   14108: 94000000     	bl	0x14108 <syna_sysfs_info_show+0x3f0>
		0000000000014108:  R_AARCH64_CALL26	_printk
   1410c: 128002b3     	mov	w19, #-0x16             // =-22
   14110: 17ffffeb     	b	0x140bc <syna_sysfs_info_show+0x3a4>
