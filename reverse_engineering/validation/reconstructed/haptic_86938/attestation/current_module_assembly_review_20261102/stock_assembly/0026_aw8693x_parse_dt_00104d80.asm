
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001f60 <aw8693x_parse_dt>:
    1f60: d503233f     	paciasp
    1f64: d10183ff     	sub	sp, sp, #0x60
    1f68: a9037bfd     	stp	x29, x30, [sp, #0x30]
    1f6c: a90457f6     	stp	x22, x21, [sp, #0x40]
    1f70: a9054ff4     	stp	x20, x19, [sp, #0x50]
    1f74: 9100c3fd     	add	x29, sp, #0x30
    1f78: d5384108     	mrs	x8, SP_EL0
    1f7c: aa0203f4     	mov	x20, x2
    1f80: aa0103f3     	mov	x19, x1
    1f84: f9438908     	ldr	x8, [x8, #0x710]
    1f88: 90000001     	adrp	x1, 0x1000 <aw8693x_stop+0xd4>
		0000000000001f88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x651
    1f8c: 91000021     	add	x1, x1, #0x0
		0000000000001f8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x651
    1f90: 91130662     	add	x2, x19, #0x4c1
    1f94: aa1403e0     	mov	x0, x20
    1f98: 52800023     	mov	w3, #0x1                // =1
    1f9c: aa1f03e4     	mov	x4, xzr
    1fa0: f81f83a8     	stur	x8, [x29, #-0x8]
    1fa4: 39003bff     	strb	wzr, [sp, #0xe]
    1fa8: 79001bff     	strh	wzr, [sp, #0xc]
    1fac: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    1fb0: f9000bff     	str	xzr, [sp, #0x10]
    1fb4: 94000000     	bl	0x1fb4 <aw8693x_parse_dt+0x54>
		0000000000001fb4:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    1fb8: 36f80120     	tbz	w0, #0x1f, 0x1fdc <aw8693x_parse_dt+0x7c>
    1fbc: 90000000     	adrp	x0, 0x1000 <aw8693x_stop+0xd4>
		0000000000001fbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2630
    1fc0: 91000000     	add	x0, x0, #0x0
		0000000000001fc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2630
    1fc4: 90000001     	adrp	x1, 0x1000 <aw8693x_stop+0xd4>
		0000000000001fc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    1fc8: 91000021     	add	x1, x1, #0x0
		0000000000001fc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    1fcc: 90000003     	adrp	x3, 0x1000 <aw8693x_stop+0xd4>
		0000000000001fcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b36
    1fd0: 91000063     	add	x3, x3, #0x0
		0000000000001fd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b36
    1fd4: 5280d5c2     	mov	w2, #0x6ae              // =1710
    1fd8: 94000000     	bl	0x1fd8 <aw8693x_parse_dt+0x78>
		0000000000001fd8:  R_AARCH64_CALL26	_printk
    1fdc: 90000001     	adrp	x1, 0x1000 <aw8693x_stop+0xd4>
		0000000000001fdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x132d
    1fe0: 91000021     	add	x1, x1, #0x0
		0000000000001fe0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x132d
    1fe4: 91130a62     	add	x2, x19, #0x4c2
    1fe8: aa1403e0     	mov	x0, x20
    1fec: 52800023     	mov	w3, #0x1                // =1
    1ff0: aa1f03e4     	mov	x4, xzr
    1ff4: 94000000     	bl	0x1ff4 <aw8693x_parse_dt+0x94>
		0000000000001ff4:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    1ff8: 36f80120     	tbz	w0, #0x1f, 0x201c <aw8693x_parse_dt+0xbc>
    1ffc: 90000000     	adrp	x0, 0x1000 <aw8693x_stop+0xd4>
		0000000000001ffc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15e4
    2000: 91000000     	add	x0, x0, #0x0
		0000000000002000:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15e4
    2004: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002004:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    2008: 91000021     	add	x1, x1, #0x0
		0000000000002008:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    200c: 90000003     	adrp	x3, 0x2000 <aw8693x_parse_dt+0xa0>
		000000000000200c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b36
    2010: 91000063     	add	x3, x3, #0x0
		0000000000002010:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b36
    2014: 5280d642     	mov	w2, #0x6b2              // =1714
    2018: 94000000     	bl	0x2018 <aw8693x_parse_dt+0xb8>
		0000000000002018:  R_AARCH64_CALL26	_printk
    201c: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		000000000000201c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10c6
    2020: 91000021     	add	x1, x1, #0x0
		0000000000002020:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10c6
    2024: 9111a262     	add	x2, x19, #0x468
    2028: aa1403e0     	mov	x0, x20
    202c: 52800023     	mov	w3, #0x1                // =1
    2030: aa1f03e4     	mov	x4, xzr
    2034: 94000000     	bl	0x2034 <aw8693x_parse_dt+0xd4>
		0000000000002034:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    2038: 36f80120     	tbz	w0, #0x1f, 0x205c <aw8693x_parse_dt+0xfc>
    203c: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		000000000000203c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f
    2040: 91000000     	add	x0, x0, #0x0
		0000000000002040:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f
    2044: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    2048: 91000021     	add	x1, x1, #0x0
		0000000000002048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    204c: 90000003     	adrp	x3, 0x2000 <aw8693x_parse_dt+0xa0>
		000000000000204c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b36
    2050: 91000063     	add	x3, x3, #0x0
		0000000000002050:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b36
    2054: 5280d6c2     	mov	w2, #0x6b6              // =1718
    2058: 94000000     	bl	0x2058 <aw8693x_parse_dt+0xf8>
		0000000000002058:  R_AARCH64_CALL26	_printk
    205c: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		000000000000205c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x265f
    2060: 91000021     	add	x1, x1, #0x0
		0000000000002060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x265f
    2064: 91118a62     	add	x2, x19, #0x462
    2068: aa1403e0     	mov	x0, x20
    206c: 52800023     	mov	w3, #0x1                // =1
    2070: aa1f03e4     	mov	x4, xzr
    2074: 94000000     	bl	0x2074 <aw8693x_parse_dt+0x114>
		0000000000002074:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    2078: 36f80120     	tbz	w0, #0x1f, 0x209c <aw8693x_parse_dt+0x13c>
    207c: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		000000000000207c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x149a
    2080: 91000000     	add	x0, x0, #0x0
		0000000000002080:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x149a
    2084: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002084:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    2088: 91000021     	add	x1, x1, #0x0
		0000000000002088:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    208c: 90000003     	adrp	x3, 0x2000 <aw8693x_parse_dt+0xa0>
		000000000000208c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b36
    2090: 91000063     	add	x3, x3, #0x0
		0000000000002090:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b36
    2094: 5280d742     	mov	w2, #0x6ba              // =1722
    2098: 94000000     	bl	0x2098 <aw8693x_parse_dt+0x138>
		0000000000002098:  R_AARCH64_CALL26	_printk
    209c: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		000000000000209c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc0
    20a0: 91000021     	add	x1, x1, #0x0
		00000000000020a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc0
    20a4: 91130e62     	add	x2, x19, #0x4c3
    20a8: aa1403e0     	mov	x0, x20
    20ac: 52800023     	mov	w3, #0x1                // =1
    20b0: aa1f03e4     	mov	x4, xzr
    20b4: 94000000     	bl	0x20b4 <aw8693x_parse_dt+0x154>
		00000000000020b4:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    20b8: 36f80120     	tbz	w0, #0x1f, 0x20dc <aw8693x_parse_dt+0x17c>
    20bc: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000020bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bb
    20c0: 91000000     	add	x0, x0, #0x0
		00000000000020c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bb
    20c4: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000020c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    20c8: 91000021     	add	x1, x1, #0x0
		00000000000020c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    20cc: 90000003     	adrp	x3, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000020cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b36
    20d0: 91000063     	add	x3, x3, #0x0
		00000000000020d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b36
    20d4: 5280d7c2     	mov	w2, #0x6be              // =1726
    20d8: 94000000     	bl	0x20d8 <aw8693x_parse_dt+0x178>
		00000000000020d8:  R_AARCH64_CALL26	_printk
    20dc: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000020dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b47
    20e0: 91000021     	add	x1, x1, #0x0
		00000000000020e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b47
    20e4: 91126a62     	add	x2, x19, #0x49a
    20e8: aa1403e0     	mov	x0, x20
    20ec: 52800023     	mov	w3, #0x1                // =1
    20f0: aa1f03e4     	mov	x4, xzr
    20f4: 94000000     	bl	0x20f4 <aw8693x_parse_dt+0x194>
		00000000000020f4:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    20f8: 36f80120     	tbz	w0, #0x1f, 0x211c <aw8693x_parse_dt+0x1bc>
    20fc: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000020fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd5
    2100: 91000000     	add	x0, x0, #0x0
		0000000000002100:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd5
    2104: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002104:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    2108: 91000021     	add	x1, x1, #0x0
		0000000000002108:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    210c: 90000003     	adrp	x3, 0x2000 <aw8693x_parse_dt+0xa0>
		000000000000210c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b36
    2110: 91000063     	add	x3, x3, #0x0
		0000000000002110:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b36
    2114: 5280d842     	mov	w2, #0x6c2              // =1730
    2118: 94000000     	bl	0x2118 <aw8693x_parse_dt+0x1b8>
		0000000000002118:  R_AARCH64_CALL26	_printk
    211c: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		000000000000211c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dc8
    2120: 91000021     	add	x1, x1, #0x0
		0000000000002120:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dc8
    2124: 91131262     	add	x2, x19, #0x4c4
    2128: aa1403e0     	mov	x0, x20
    212c: 52800023     	mov	w3, #0x1                // =1
    2130: aa1f03e4     	mov	x4, xzr
    2134: 94000000     	bl	0x2134 <aw8693x_parse_dt+0x1d4>
		0000000000002134:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    2138: 36f80120     	tbz	w0, #0x1f, 0x215c <aw8693x_parse_dt+0x1fc>
    213c: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		000000000000213c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dde
    2140: 91000000     	add	x0, x0, #0x0
		0000000000002140:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dde
    2144: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002144:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    2148: 91000021     	add	x1, x1, #0x0
		0000000000002148:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    214c: 90000003     	adrp	x3, 0x2000 <aw8693x_parse_dt+0xa0>
		000000000000214c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b36
    2150: 91000063     	add	x3, x3, #0x0
		0000000000002150:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b36
    2154: 5280d8c2     	mov	w2, #0x6c6              // =1734
    2158: 94000000     	bl	0x2158 <aw8693x_parse_dt+0x1f8>
		0000000000002158:  R_AARCH64_CALL26	_printk
    215c: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		000000000000215c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ee
    2160: 91000021     	add	x1, x1, #0x0
		0000000000002160:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ee
    2164: 91128262     	add	x2, x19, #0x4a0
    2168: aa1403e0     	mov	x0, x20
    216c: 52800023     	mov	w3, #0x1                // =1
    2170: aa1f03e4     	mov	x4, xzr
    2174: 94000000     	bl	0x2174 <aw8693x_parse_dt+0x214>
		0000000000002174:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    2178: 36f80120     	tbz	w0, #0x1f, 0x219c <aw8693x_parse_dt+0x23c>
    217c: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		000000000000217c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e0f
    2180: 91000000     	add	x0, x0, #0x0
		0000000000002180:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e0f
    2184: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002184:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    2188: 91000021     	add	x1, x1, #0x0
		0000000000002188:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    218c: 90000003     	adrp	x3, 0x2000 <aw8693x_parse_dt+0xa0>
		000000000000218c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b36
    2190: 91000063     	add	x3, x3, #0x0
		0000000000002190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b36
    2194: 5280d942     	mov	w2, #0x6ca              // =1738
    2198: 94000000     	bl	0x2198 <aw8693x_parse_dt+0x238>
		0000000000002198:  R_AARCH64_CALL26	_printk
    219c: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		000000000000219c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17fe
    21a0: 91000021     	add	x1, x1, #0x0
		00000000000021a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17fe
    21a4: 91128662     	add	x2, x19, #0x4a1
    21a8: aa1403e0     	mov	x0, x20
    21ac: 52800023     	mov	w3, #0x1                // =1
    21b0: aa1f03e4     	mov	x4, xzr
    21b4: 94000000     	bl	0x21b4 <aw8693x_parse_dt+0x254>
		00000000000021b4:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    21b8: 36f80120     	tbz	w0, #0x1f, 0x21dc <aw8693x_parse_dt+0x27c>
    21bc: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000021bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21dd
    21c0: 91000000     	add	x0, x0, #0x0
		00000000000021c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21dd
    21c4: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000021c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    21c8: 91000021     	add	x1, x1, #0x0
		00000000000021c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    21cc: 90000003     	adrp	x3, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000021cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b36
    21d0: 91000063     	add	x3, x3, #0x0
		00000000000021d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b36
    21d4: 5280d9c2     	mov	w2, #0x6ce              // =1742
    21d8: 94000000     	bl	0x21d8 <aw8693x_parse_dt+0x278>
		00000000000021d8:  R_AARCH64_CALL26	_printk
    21dc: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000021dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1618
    21e0: 91000021     	add	x1, x1, #0x0
		00000000000021e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1618
    21e4: 91127662     	add	x2, x19, #0x49d
    21e8: aa1403e0     	mov	x0, x20
    21ec: 52800023     	mov	w3, #0x1                // =1
    21f0: aa1f03e4     	mov	x4, xzr
    21f4: 94000000     	bl	0x21f4 <aw8693x_parse_dt+0x294>
		00000000000021f4:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    21f8: 36f80120     	tbz	w0, #0x1f, 0x221c <aw8693x_parse_dt+0x2bc>
    21fc: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000021fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x665
    2200: 91000000     	add	x0, x0, #0x0
		0000000000002200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x665
    2204: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002204:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    2208: 91000021     	add	x1, x1, #0x0
		0000000000002208:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    220c: 90000003     	adrp	x3, 0x2000 <aw8693x_parse_dt+0xa0>
		000000000000220c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b36
    2210: 91000063     	add	x3, x3, #0x0
		0000000000002210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b36
    2214: 5280da42     	mov	w2, #0x6d2              // =1746
    2218: 94000000     	bl	0x2218 <aw8693x_parse_dt+0x2b8>
		0000000000002218:  R_AARCH64_CALL26	_printk
    221c: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		000000000000221c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b1
    2220: 91000021     	add	x1, x1, #0x0
		0000000000002220:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b1
    2224: 91128e62     	add	x2, x19, #0x4a3
    2228: aa1403e0     	mov	x0, x20
    222c: 52800023     	mov	w3, #0x1                // =1
    2230: aa1f03e4     	mov	x4, xzr
    2234: 94000000     	bl	0x2234 <aw8693x_parse_dt+0x2d4>
		0000000000002234:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    2238: 36f80120     	tbz	w0, #0x1f, 0x225c <aw8693x_parse_dt+0x2fc>
    223c: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		000000000000223c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a0
    2240: 91000000     	add	x0, x0, #0x0
		0000000000002240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a0
    2244: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002244:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    2248: 91000021     	add	x1, x1, #0x0
		0000000000002248:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    224c: 90000003     	adrp	x3, 0x2000 <aw8693x_parse_dt+0xa0>
		000000000000224c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b36
    2250: 91000063     	add	x3, x3, #0x0
		0000000000002250:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b36
    2254: 5280dae2     	mov	w2, #0x6d7              // =1751
    2258: 94000000     	bl	0x2258 <aw8693x_parse_dt+0x2f8>
		0000000000002258:  R_AARCH64_CALL26	_printk
    225c: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		000000000000225c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc8d
    2260: 91000021     	add	x1, x1, #0x0
		0000000000002260:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc8d
    2264: 91127e62     	add	x2, x19, #0x49f
    2268: aa1403e0     	mov	x0, x20
    226c: 52800023     	mov	w3, #0x1                // =1
    2270: aa1f03e4     	mov	x4, xzr
    2274: 94000000     	bl	0x2274 <aw8693x_parse_dt+0x314>
		0000000000002274:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    2278: 36f80120     	tbz	w0, #0x1f, 0x229c <aw8693x_parse_dt+0x33c>
    227c: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		000000000000227c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24ad
    2280: 91000000     	add	x0, x0, #0x0
		0000000000002280:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24ad
    2284: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002284:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    2288: 91000021     	add	x1, x1, #0x0
		0000000000002288:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    228c: 90000003     	adrp	x3, 0x2000 <aw8693x_parse_dt+0xa0>
		000000000000228c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b36
    2290: 91000063     	add	x3, x3, #0x0
		0000000000002290:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b36
    2294: 5280db62     	mov	w2, #0x6db              // =1755
    2298: 94000000     	bl	0x2298 <aw8693x_parse_dt+0x338>
		0000000000002298:  R_AARCH64_CALL26	_printk
    229c: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		000000000000229c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x220f
    22a0: 91000021     	add	x1, x1, #0x0
		00000000000022a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x220f
    22a4: 91125662     	add	x2, x19, #0x495
    22a8: aa1403e0     	mov	x0, x20
    22ac: 52800023     	mov	w3, #0x1                // =1
    22b0: aa1f03e4     	mov	x4, xzr
    22b4: 94000000     	bl	0x22b4 <aw8693x_parse_dt+0x354>
		00000000000022b4:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    22b8: 36f80120     	tbz	w0, #0x1f, 0x22dc <aw8693x_parse_dt+0x37c>
    22bc: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000022bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c0a
    22c0: 91000000     	add	x0, x0, #0x0
		00000000000022c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c0a
    22c4: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000022c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    22c8: 91000021     	add	x1, x1, #0x0
		00000000000022c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    22cc: 90000003     	adrp	x3, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000022cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b36
    22d0: 91000063     	add	x3, x3, #0x0
		00000000000022d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b36
    22d4: 5280dbe2     	mov	w2, #0x6df              // =1759
    22d8: 94000000     	bl	0x22d8 <aw8693x_parse_dt+0x378>
		00000000000022d8:  R_AARCH64_CALL26	_printk
    22dc: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000022dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a39
    22e0: 91000021     	add	x1, x1, #0x0
		00000000000022e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a39
    22e4: 910033e2     	add	x2, sp, #0xc
    22e8: aa1403e0     	mov	x0, x20
    22ec: 52800063     	mov	w3, #0x3                // =3
    22f0: aa1f03e4     	mov	x4, xzr
    22f4: 94000000     	bl	0x22f4 <aw8693x_parse_dt+0x394>
		00000000000022f4:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    22f8: 37f800c0     	tbnz	w0, #0x1f, 0x2310 <aw8693x_parse_dt+0x3b0>
    22fc: 79401be8     	ldrh	w8, [sp, #0xc]
    2300: 39403be9     	ldrb	w9, [sp, #0xe]
    2304: 7908ca68     	strh	w8, [x19, #0x464]
    2308: 39119a69     	strb	w9, [x19, #0x466]
    230c: 14000009     	b	0x2330 <aw8693x_parse_dt+0x3d0>
    2310: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002310:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4f
    2314: 91000000     	add	x0, x0, #0x0
		0000000000002314:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4f
    2318: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002318:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    231c: 91000021     	add	x1, x1, #0x0
		000000000000231c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    2320: 90000003     	adrp	x3, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002320:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b36
    2324: 91000063     	add	x3, x3, #0x0
		0000000000002324:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b36
    2328: 5280dc82     	mov	w2, #0x6e4              // =1764
    232c: 94000000     	bl	0x232c <aw8693x_parse_dt+0x3cc>
		000000000000232c:  R_AARCH64_CALL26	_printk
    2330: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24de
    2334: 91000021     	add	x1, x1, #0x0
		0000000000002334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24de
    2338: 910043e2     	add	x2, sp, #0x10
    233c: aa1403e0     	mov	x0, x20
    2340: 52800303     	mov	w3, #0x18               // =24
    2344: aa1f03e4     	mov	x4, xzr
    2348: 94000000     	bl	0x2348 <aw8693x_parse_dt+0x3e8>
		0000000000002348:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    234c: 37f800e0     	tbnz	w0, #0x1f, 0x2368 <aw8693x_parse_dt+0x408>
    2350: a9412be8     	ldp	x8, x10, [sp, #0x10]
    2354: 91129669     	add	x9, x19, #0x4a5
    2358: f94013eb     	ldr	x11, [sp, #0x20]
    235c: a9002928     	stp	x8, x10, [x9]
    2360: f900092b     	str	x11, [x9, #0x10]
    2364: 14000009     	b	0x2388 <aw8693x_parse_dt+0x428>
    2368: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002368:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f04
    236c: 91000000     	add	x0, x0, #0x0
		000000000000236c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f04
    2370: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    2374: 91000021     	add	x1, x1, #0x0
		0000000000002374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    2378: 90000003     	adrp	x3, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b36
    237c: 91000063     	add	x3, x3, #0x0
		000000000000237c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b36
    2380: 5280dd62     	mov	w2, #0x6eb              // =1771
    2384: 94000000     	bl	0x2384 <aw8693x_parse_dt+0x424>
		0000000000002384:  R_AARCH64_CALL26	_printk
    2388: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002388:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1815
    238c: 91000021     	add	x1, x1, #0x0
		000000000000238c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1815
    2390: 91118e62     	add	x2, x19, #0x463
    2394: aa1403e0     	mov	x0, x20
    2398: 52800023     	mov	w3, #0x1                // =1
    239c: aa1f03e4     	mov	x4, xzr
    23a0: 94000000     	bl	0x23a0 <aw8693x_parse_dt+0x440>
		00000000000023a0:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    23a4: 36f80120     	tbz	w0, #0x1f, 0x23c8 <aw8693x_parse_dt+0x468>
    23a8: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000023a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14cd
    23ac: 91000000     	add	x0, x0, #0x0
		00000000000023ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14cd
    23b0: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000023b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    23b4: 91000021     	add	x1, x1, #0x0
		00000000000023b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    23b8: 90000003     	adrp	x3, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000023b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b36
    23bc: 91000063     	add	x3, x3, #0x0
		00000000000023bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b36
    23c0: 5280de42     	mov	w2, #0x6f2              // =1778
    23c4: 94000000     	bl	0x23c4 <aw8693x_parse_dt+0x464>
		00000000000023c4:  R_AARCH64_CALL26	_printk
    23c8: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000023c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10cd
    23cc: 91000021     	add	x1, x1, #0x0
		00000000000023cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10cd
    23d0: aa1403e0     	mov	x0, x20
    23d4: aa1f03e2     	mov	x2, xzr
    23d8: 94000000     	bl	0x23d8 <aw8693x_parse_dt+0x478>
		00000000000023d8:  R_AARCH64_CALL26	of_find_property
    23dc: f100001f     	cmp	x0, #0x0
    23e0: 90000015     	adrp	x21, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000023e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    23e4: 910002b5     	add	x21, x21, #0x0
		00000000000023e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    23e8: 90000016     	adrp	x22, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000023e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b36
    23ec: 910002d6     	add	x22, x22, #0x0
		00000000000023ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b36
    23f0: 1a9f07e4     	cset	w4, ne
    23f4: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000023f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2677
    23f8: 91000000     	add	x0, x0, #0x0
		00000000000023f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2677
    23fc: aa1503e1     	mov	x1, x21
    2400: 5280dec2     	mov	w2, #0x6f6              // =1782
    2404: aa1603e3     	mov	x3, x22
    2408: 39130264     	strb	w4, [x19, #0x4c0]
    240c: 94000000     	bl	0x240c <aw8693x_parse_dt+0x4ac>
		000000000000240c:  R_AARCH64_CALL26	_printk
    2410: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002410:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a00
    2414: 91000021     	add	x1, x1, #0x0
		0000000000002414:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a00
    2418: aa1403e0     	mov	x0, x20
    241c: aa1f03e2     	mov	x2, xzr
    2420: 94000000     	bl	0x2420 <aw8693x_parse_dt+0x4c0>
		0000000000002420:  R_AARCH64_CALL26	of_find_property
    2424: f100001f     	cmp	x0, #0x0
    2428: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002428:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb6b
    242c: 91000000     	add	x0, x0, #0x0
		000000000000242c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb6b
    2430: 1a9f07e4     	cset	w4, ne
    2434: aa1503e1     	mov	x1, x21
    2438: 5280df42     	mov	w2, #0x6fa              // =1786
    243c: aa1603e3     	mov	x3, x22
    2440: 3912f664     	strb	w4, [x19, #0x4bd]
    2444: 94000000     	bl	0x2444 <aw8693x_parse_dt+0x4e4>
		0000000000002444:  R_AARCH64_CALL26	_printk
    2448: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002448:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2696
    244c: 91000021     	add	x1, x1, #0x0
		000000000000244c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2696
    2450: aa1403e0     	mov	x0, x20
    2454: aa1f03e2     	mov	x2, xzr
    2458: 94000000     	bl	0x2458 <aw8693x_parse_dt+0x4f8>
		0000000000002458:  R_AARCH64_CALL26	of_find_property
    245c: f100001f     	cmp	x0, #0x0
    2460: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002460:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa8c
    2464: 91000000     	add	x0, x0, #0x0
		0000000000002464:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa8c
    2468: 1a9f07e4     	cset	w4, ne
    246c: aa1503e1     	mov	x1, x21
    2470: 5280dfc2     	mov	w2, #0x6fe              // =1790
    2474: aa1603e3     	mov	x3, x22
    2478: 3912fe64     	strb	w4, [x19, #0x4bf]
    247c: 94000000     	bl	0x247c <aw8693x_parse_dt+0x51c>
		000000000000247c:  R_AARCH64_CALL26	_printk
    2480: d5384108     	mrs	x8, SP_EL0
    2484: f9438908     	ldr	x8, [x8, #0x710]
    2488: f85f83a9     	ldur	x9, [x29, #-0x8]
    248c: eb09011f     	cmp	x8, x9
    2490: 540000e1     	b.ne	0x24ac <aw8693x_parse_dt+0x54c>
    2494: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    2498: a94457f6     	ldp	x22, x21, [sp, #0x40]
    249c: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    24a0: 910183ff     	add	sp, sp, #0x60
    24a4: d50323bf     	autiasp
    24a8: d65f03c0     	ret
    24ac: 94000000     	bl	0x24ac <aw8693x_parse_dt+0x54c>
		00000000000024ac:  R_AARCH64_CALL26	__stack_chk_fail
