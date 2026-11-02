
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001f5c <zte_touch_probe>:
    1f5c: d503233f     	paciasp
    1f60: d10103ff     	sub	sp, sp, #0x40
    1f64: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1f68: a90257f6     	stp	x22, x21, [sp, #0x20]
    1f6c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1f70: 910043fd     	add	x29, sp, #0x10
    1f74: d5384108     	mrs	x8, SP_EL0
    1f78: aa0003f4     	mov	x20, x0
    1f7c: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001f7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbb7
    1f80: 91000000     	add	x0, x0, #0x0
		0000000000001f80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbb7
    1f84: f9438908     	ldr	x8, [x8, #0x710]
    1f88: 90000001     	adrp	x1, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001f88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d89
    1f8c: 91000021     	add	x1, x1, #0x0
		0000000000001f8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d89
    1f90: 52816542     	mov	w2, #0xb2a              // =2858
    1f94: f90007e8     	str	x8, [sp, #0x8]
    1f98: 94000000     	bl	0x1f98 <zte_touch_probe+0x3c>
		0000000000001f98:  R_AARCH64_CALL26	_printk
    1f9c: 91004280     	add	x0, x20, #0x10
    1fa0: 52820101     	mov	w1, #0x1008             // =4104
    1fa4: 5281b802     	mov	w2, #0xdc0              // =3520
    1fa8: 94000000     	bl	0x1fa8 <zte_touch_probe+0x4c>
		0000000000001fa8:  R_AARCH64_CALL26	devm_kmalloc
    1fac: b50000a0     	cbnz	x0, 0x1fc0 <zte_touch_probe+0x64>
    1fb0: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001fb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb898
    1fb4: 91000000     	add	x0, x0, #0x0
		0000000000001fb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb898
    1fb8: 94000000     	bl	0x1fb8 <zte_touch_probe+0x5c>
		0000000000001fb8:  R_AARCH64_CALL26	_printk
    1fbc: 14000246     	b	0x28d4 <zte_touch_probe+0x978>
    1fc0: 90000015     	adrp	x21, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001fc0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    1fc4: aa0003f3     	mov	x19, x0
    1fc8: f906e414     	str	x20, [x0, #0xdc8]
    1fcc: f90002a0     	str	x0, [x21]
		0000000000001fcc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    1fd0: f9005680     	str	x0, [x20, #0xa8]
    1fd4: 94000000     	bl	0x1fd4 <zte_touch_probe+0x78>
		0000000000001fd4:  R_AARCH64_CALL26	zte_touch_pdev_register
    1fd8: f9417e94     	ldr	x20, [x20, #0x2f8]
    1fdc: 90000001     	adrp	x1, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001fdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43fe
    1fe0: 91000021     	add	x1, x1, #0x0
		0000000000001fe0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43fe
    1fe4: aa1f03e2     	mov	x2, xzr
    1fe8: b90007ff     	str	wzr, [sp, #0x4]
    1fec: aa1403e0     	mov	x0, x20
    1ff0: 94000000     	bl	0x1ff0 <zte_touch_probe+0x94>
		0000000000001ff0:  R_AARCH64_CALL26	of_find_property
    1ff4: f100001f     	cmp	x0, #0x0
    1ff8: 1a9f07e8     	cset	w8, ne
    1ffc: 39006e68     	strb	w8, [x19, #0x1b]
    2000: b4000080     	cbz	x0, 0x2010 <zte_touch_probe+0xb4>
    2004: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002004:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d99
    2008: 91000000     	add	x0, x0, #0x0
		0000000000002008:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d99
    200c: 94000000     	bl	0x200c <zte_touch_probe+0xb0>
		000000000000200c:  R_AARCH64_CALL26	_printk
    2010: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		0000000000002010:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36eb
    2014: 91000021     	add	x1, x1, #0x0
		0000000000002014:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36eb
    2018: aa1403e0     	mov	x0, x20
    201c: aa1f03e2     	mov	x2, xzr
    2020: 94000000     	bl	0x2020 <zte_touch_probe+0xc4>
		0000000000002020:  R_AARCH64_CALL26	of_find_property
    2024: f100001f     	cmp	x0, #0x0
    2028: 1a9f07e8     	cset	w8, ne
    202c: 39009668     	strb	w8, [x19, #0x25]
    2030: b40006c0     	cbz	x0, 0x2108 <zte_touch_probe+0x1ac>
    2034: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002034:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e95
    2038: 91000000     	add	x0, x0, #0x0
		0000000000002038:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e95
    203c: 94000000     	bl	0x203c <zte_touch_probe+0xe0>
		000000000000203c:  R_AARCH64_CALL26	_printk
    2040: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		0000000000002040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9515
    2044: 91000021     	add	x1, x1, #0x0
		0000000000002044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9515
    2048: 910013e2     	add	x2, sp, #0x4
    204c: aa1403e0     	mov	x0, x20
    2050: 52800023     	mov	w3, #0x1                // =1
    2054: aa1f03e4     	mov	x4, xzr
    2058: 94000000     	bl	0x2058 <zte_touch_probe+0xfc>
		0000000000002058:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    205c: 37f80060     	tbnz	w0, #0x1f, 0x2068 <zte_touch_probe+0x10c>
    2060: b94007e8     	ldr	w8, [sp, #0x4]
    2064: 79007a68     	strh	w8, [x19, #0x3c]
    2068: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		0000000000002068:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbe2d
    206c: 91000021     	add	x1, x1, #0x0
		000000000000206c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbe2d
    2070: 910013e2     	add	x2, sp, #0x4
    2074: aa1403e0     	mov	x0, x20
    2078: 52800023     	mov	w3, #0x1                // =1
    207c: aa1f03e4     	mov	x4, xzr
    2080: 94000000     	bl	0x2080 <zte_touch_probe+0x124>
		0000000000002080:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    2084: 37f80060     	tbnz	w0, #0x1f, 0x2090 <zte_touch_probe+0x134>
    2088: b94007e8     	ldr	w8, [sp, #0x4]
    208c: 3900d268     	strb	w8, [x19, #0x34]
    2090: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		0000000000002090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbe46
    2094: 91000021     	add	x1, x1, #0x0
		0000000000002094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbe46
    2098: 910013e2     	add	x2, sp, #0x4
    209c: aa1403e0     	mov	x0, x20
    20a0: 52800023     	mov	w3, #0x1                // =1
    20a4: aa1f03e4     	mov	x4, xzr
    20a8: 94000000     	bl	0x20a8 <zte_touch_probe+0x14c>
		00000000000020a8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    20ac: 37f80060     	tbnz	w0, #0x1f, 0x20b8 <zte_touch_probe+0x15c>
    20b0: b94007e8     	ldr	w8, [sp, #0x4]
    20b4: 3900d668     	strb	w8, [x19, #0x35]
    20b8: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		00000000000020b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x952d
    20bc: 91000021     	add	x1, x1, #0x0
		00000000000020bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x952d
    20c0: 910013e2     	add	x2, sp, #0x4
    20c4: aa1403e0     	mov	x0, x20
    20c8: 52800023     	mov	w3, #0x1                // =1
    20cc: aa1f03e4     	mov	x4, xzr
    20d0: 94000000     	bl	0x20d0 <zte_touch_probe+0x174>
		00000000000020d0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    20d4: 37f80060     	tbnz	w0, #0x1f, 0x20e0 <zte_touch_probe+0x184>
    20d8: b94007e8     	ldr	w8, [sp, #0x4]
    20dc: 3900da68     	strb	w8, [x19, #0x36]
    20e0: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		00000000000020e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x179f
    20e4: 91000021     	add	x1, x1, #0x0
		00000000000020e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x179f
    20e8: 910013e2     	add	x2, sp, #0x4
    20ec: aa1403e0     	mov	x0, x20
    20f0: 52800023     	mov	w3, #0x1                // =1
    20f4: aa1f03e4     	mov	x4, xzr
    20f8: 94000000     	bl	0x20f8 <zte_touch_probe+0x19c>
		00000000000020f8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    20fc: 37f80060     	tbnz	w0, #0x1f, 0x2108 <zte_touch_probe+0x1ac>
    2100: b94007e8     	ldr	w8, [sp, #0x4]
    2104: 3900de68     	strb	w8, [x19, #0x37]
    2108: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		0000000000002108:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x798a
    210c: 91000021     	add	x1, x1, #0x0
		000000000000210c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x798a
    2110: aa1403e0     	mov	x0, x20
    2114: aa1f03e2     	mov	x2, xzr
    2118: 94000000     	bl	0x2118 <zte_touch_probe+0x1bc>
		0000000000002118:  R_AARCH64_CALL26	of_find_property
    211c: f100001f     	cmp	x0, #0x0
    2120: 1a9f07e8     	cset	w8, ne
    2124: 39124268     	strb	w8, [x19, #0x490]
    2128: b4000de0     	cbz	x0, 0x22e4 <zte_touch_probe+0x388>
    212c: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		000000000000212c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a3e
    2130: 91000000     	add	x0, x0, #0x0
		0000000000002130:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a3e
    2134: 94000000     	bl	0x2134 <zte_touch_probe+0x1d8>
		0000000000002134:  R_AARCH64_CALL26	_printk
    2138: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		0000000000002138:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11ab
    213c: 91000021     	add	x1, x1, #0x0
		000000000000213c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11ab
    2140: 910013e2     	add	x2, sp, #0x4
    2144: aa1403e0     	mov	x0, x20
    2148: 52800023     	mov	w3, #0x1                // =1
    214c: aa1f03e4     	mov	x4, xzr
    2150: 94000000     	bl	0x2150 <zte_touch_probe+0x1f4>
		0000000000002150:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    2154: 394013e8     	ldrb	w8, [sp, #0x4]
    2158: 7100001f     	cmp	w0, #0x0
    215c: 52800329     	mov	w9, #0x19               // =25
    2160: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		0000000000002160:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7f01
    2164: 91000021     	add	x1, x1, #0x0
		0000000000002164:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7f01
    2168: 910013e2     	add	x2, sp, #0x4
    216c: 1a89a108     	csel	w8, w8, w9, ge
    2170: aa1403e0     	mov	x0, x20
    2174: 52800023     	mov	w3, #0x1                // =1
    2178: aa1f03e4     	mov	x4, xzr
    217c: 39124668     	strb	w8, [x19, #0x491]
    2180: 94000000     	bl	0x2180 <zte_touch_probe+0x224>
		0000000000002180:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    2184: 394013e8     	ldrb	w8, [sp, #0x4]
    2188: 7100001f     	cmp	w0, #0x0
    218c: 52800289     	mov	w9, #0x14               // =20
    2190: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		0000000000002190:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36fd
    2194: 91000021     	add	x1, x1, #0x0
		0000000000002194:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36fd
    2198: 910013e2     	add	x2, sp, #0x4
    219c: 1a89a108     	csel	w8, w8, w9, ge
    21a0: aa1403e0     	mov	x0, x20
    21a4: 52800023     	mov	w3, #0x1                // =1
    21a8: aa1f03e4     	mov	x4, xzr
    21ac: 39124a68     	strb	w8, [x19, #0x492]
    21b0: 94000000     	bl	0x21b0 <zte_touch_probe+0x254>
		00000000000021b0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    21b4: 394013e8     	ldrb	w8, [sp, #0x4]
    21b8: 7100001f     	cmp	w0, #0x0
    21bc: 528000a9     	mov	w9, #0x5                // =5
    21c0: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		00000000000021c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a5d
    21c4: 91000021     	add	x1, x1, #0x0
		00000000000021c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a5d
    21c8: 910013e2     	add	x2, sp, #0x4
    21cc: 1a89a108     	csel	w8, w8, w9, ge
    21d0: aa1403e0     	mov	x0, x20
    21d4: 52800023     	mov	w3, #0x1                // =1
    21d8: aa1f03e4     	mov	x4, xzr
    21dc: 39124e68     	strb	w8, [x19, #0x493]
    21e0: 94000000     	bl	0x21e0 <zte_touch_probe+0x284>
		00000000000021e0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    21e4: 394013e8     	ldrb	w8, [sp, #0x4]
    21e8: 7100001f     	cmp	w0, #0x0
    21ec: 52800109     	mov	w9, #0x8                // =8
    21f0: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		00000000000021f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5072
    21f4: 91000021     	add	x1, x1, #0x0
		00000000000021f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5072
    21f8: 910013e2     	add	x2, sp, #0x4
    21fc: 1a89a108     	csel	w8, w8, w9, ge
    2200: aa1403e0     	mov	x0, x20
    2204: 52800023     	mov	w3, #0x1                // =1
    2208: aa1f03e4     	mov	x4, xzr
    220c: 39125268     	strb	w8, [x19, #0x494]
    2210: 94000000     	bl	0x2210 <zte_touch_probe+0x2b4>
		0000000000002210:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    2214: 394013e8     	ldrb	w8, [sp, #0x4]
    2218: 7100001f     	cmp	w0, #0x0
    221c: 52800469     	mov	w9, #0x23               // =35
    2220: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		0000000000002220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbcc
    2224: 91000021     	add	x1, x1, #0x0
		0000000000002224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbcc
    2228: 910013e2     	add	x2, sp, #0x4
    222c: 1a89a108     	csel	w8, w8, w9, ge
    2230: aa1403e0     	mov	x0, x20
    2234: 52800023     	mov	w3, #0x1                // =1
    2238: aa1f03e4     	mov	x4, xzr
    223c: 39125668     	strb	w8, [x19, #0x495]
    2240: 94000000     	bl	0x2240 <zte_touch_probe+0x2e4>
		0000000000002240:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    2244: b94007e8     	ldr	w8, [sp, #0x4]
    2248: 7100001f     	cmp	w0, #0x0
    224c: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		000000000000224c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbe6
    2250: 91000021     	add	x1, x1, #0x0
		0000000000002250:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbe6
    2254: 910013e2     	add	x2, sp, #0x4
    2258: aa1403e0     	mov	x0, x20
    225c: 5a9fa108     	csinv	w8, w8, wzr, ge
    2260: 52800023     	mov	w3, #0x1                // =1
    2264: aa1f03e4     	mov	x4, xzr
    2268: b9049a68     	str	w8, [x19, #0x498]
    226c: 94000000     	bl	0x226c <zte_touch_probe+0x310>
		000000000000226c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    2270: b94007e8     	ldr	w8, [sp, #0x4]
    2274: 7100001f     	cmp	w0, #0x0
    2278: 52828029     	mov	w9, #0x1401             // =5121
    227c: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		000000000000227c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7f1c
    2280: 91000021     	add	x1, x1, #0x0
		0000000000002280:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7f1c
    2284: 910013e2     	add	x2, sp, #0x4
    2288: 1a89a108     	csel	w8, w8, w9, ge
    228c: aa1403e0     	mov	x0, x20
    2290: 52800023     	mov	w3, #0x1                // =1
    2294: aa1f03e4     	mov	x4, xzr
    2298: b9049e68     	str	w8, [x19, #0x49c]
    229c: 94000000     	bl	0x229c <zte_touch_probe+0x340>
		000000000000229c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    22a0: b94007e8     	ldr	w8, [sp, #0x4]
    22a4: 7100001f     	cmp	w0, #0x0
    22a8: 52806436     	mov	w22, #0x321             // =801
    22ac: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		00000000000022ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc07
    22b0: 91000021     	add	x1, x1, #0x0
		00000000000022b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc07
    22b4: 910013e2     	add	x2, sp, #0x4
    22b8: 1a96a108     	csel	w8, w8, w22, ge
    22bc: aa1403e0     	mov	x0, x20
    22c0: 52800023     	mov	w3, #0x1                // =1
    22c4: aa1f03e4     	mov	x4, xzr
    22c8: b904a268     	str	w8, [x19, #0x4a0]
    22cc: 94000000     	bl	0x22cc <zte_touch_probe+0x370>
		00000000000022cc:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    22d0: b94007e8     	ldr	w8, [sp, #0x4]
    22d4: 7100001f     	cmp	w0, #0x0
    22d8: 39524661     	ldrb	w1, [x19, #0x491]
    22dc: 1a96a108     	csel	w8, w8, w22, ge
    22e0: 1400000d     	b	0x2314 <zte_touch_probe+0x3b8>
    22e4: 52828329     	mov	w9, #0x1419             // =5145
    22e8: 91124668     	add	x8, x19, #0x491
    22ec: 5280046a     	mov	w10, #0x23              // =35
    22f0: 72a100a9     	movk	w9, #0x805, lsl #16
    22f4: 52800321     	mov	w1, #0x19               // =25
    22f8: 3912566a     	strb	w10, [x19, #0x495]
    22fc: b9000109     	str	w9, [x8]
    2300: 92de6fc8     	mov	x8, #-0xf37e00000001    // =-267722491428865
    2304: f2e00008     	movk	x8, #0x0, lsl #48
    2308: f9024e68     	str	x8, [x19, #0x498]
    230c: 52806428     	mov	w8, #0x321              // =801
    2310: b904a268     	str	w8, [x19, #0x4a0]
    2314: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002314:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1db4
    2318: 91000000     	add	x0, x0, #0x0
		0000000000002318:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1db4
    231c: b904a668     	str	w8, [x19, #0x4a4]
    2320: 94000000     	bl	0x2320 <zte_touch_probe+0x3c4>
		0000000000002320:  R_AARCH64_CALL26	_printk
    2324: 39524a61     	ldrb	w1, [x19, #0x492]
    2328: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x49a0
    232c: 91000000     	add	x0, x0, #0x0
		000000000000232c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x49a0
    2330: 94000000     	bl	0x2330 <zte_touch_probe+0x3d4>
		0000000000002330:  R_AARCH64_CALL26	_printk
    2334: 39524e61     	ldrb	w1, [x19, #0x493]
    2338: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dd9
    233c: 91000000     	add	x0, x0, #0x0
		000000000000233c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dd9
    2340: 94000000     	bl	0x2340 <zte_touch_probe+0x3e4>
		0000000000002340:  R_AARCH64_CALL26	_printk
    2344: 39525261     	ldrb	w1, [x19, #0x494]
    2348: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002348:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x248a
    234c: 91000000     	add	x0, x0, #0x0
		000000000000234c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x248a
    2350: 94000000     	bl	0x2350 <zte_touch_probe+0x3f4>
		0000000000002350:  R_AARCH64_CALL26	_printk
    2354: 39525661     	ldrb	w1, [x19, #0x495]
    2358: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002358:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8498
    235c: 91000000     	add	x0, x0, #0x0
		000000000000235c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8498
    2360: 94000000     	bl	0x2360 <zte_touch_probe+0x404>
		0000000000002360:  R_AARCH64_CALL26	_printk
    2364: b9449a61     	ldr	w1, [x19, #0x498]
    2368: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002368:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79a1
    236c: 91000000     	add	x0, x0, #0x0
		000000000000236c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79a1
    2370: 94000000     	bl	0x2370 <zte_touch_probe+0x414>
		0000000000002370:  R_AARCH64_CALL26	_printk
    2374: b9449e61     	ldr	w1, [x19, #0x49c]
    2378: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x508d
    237c: 91000000     	add	x0, x0, #0x0
		000000000000237c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x508d
    2380: 94000000     	bl	0x2380 <zte_touch_probe+0x424>
		0000000000002380:  R_AARCH64_CALL26	_printk
    2384: b944a261     	ldr	w1, [x19, #0x4a0]
    2388: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002388:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x60e
    238c: 91000000     	add	x0, x0, #0x0
		000000000000238c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x60e
    2390: 94000000     	bl	0x2390 <zte_touch_probe+0x434>
		0000000000002390:  R_AARCH64_CALL26	_printk
    2394: b944a661     	ldr	w1, [x19, #0x4a4]
    2398: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002398:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24af
    239c: 91000000     	add	x0, x0, #0x0
		000000000000239c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24af
    23a0: 94000000     	bl	0x23a0 <zte_touch_probe+0x444>
		00000000000023a0:  R_AARCH64_CALL26	_printk
    23a4: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		00000000000023a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x50b7
    23a8: 91000021     	add	x1, x1, #0x0
		00000000000023a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x50b7
    23ac: 910013e2     	add	x2, sp, #0x4
    23b0: aa1403e0     	mov	x0, x20
    23b4: 52800023     	mov	w3, #0x1                // =1
    23b8: aa1f03e4     	mov	x4, xzr
    23bc: 94000000     	bl	0x23bc <zte_touch_probe+0x460>
		00000000000023bc:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    23c0: 36f82a20     	tbz	w0, #0x1f, 0x2904 <zte_touch_probe+0x9a8>
    23c4: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		00000000000023c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24d8
    23c8: 91000021     	add	x1, x1, #0x0
		00000000000023c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24d8
    23cc: 910013e2     	add	x2, sp, #0x4
    23d0: aa1403e0     	mov	x0, x20
    23d4: 52800023     	mov	w3, #0x1                // =1
    23d8: aa1f03e4     	mov	x4, xzr
    23dc: 94000000     	bl	0x23dc <zte_touch_probe+0x480>
		00000000000023dc:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    23e0: 36f82c00     	tbz	w0, #0x1f, 0x2960 <zte_touch_probe+0xa04>
    23e4: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		00000000000023e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7f3c
    23e8: 91000021     	add	x1, x1, #0x0
		00000000000023e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7f3c
    23ec: aa1403e0     	mov	x0, x20
    23f0: aa1f03e2     	mov	x2, xzr
    23f4: 94000000     	bl	0x23f4 <zte_touch_probe+0x498>
		00000000000023f4:  R_AARCH64_CALL26	of_find_property
    23f8: f100001f     	cmp	x0, #0x0
    23fc: 1a9f07e8     	cset	w8, ne
    2400: 39007268     	strb	w8, [x19, #0x1c]
    2404: b5002c40     	cbnz	x0, 0x298c <zte_touch_probe+0xa30>
    2408: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		0000000000002408:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9501
    240c: 91000021     	add	x1, x1, #0x0
		000000000000240c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9501
    2410: 90000002     	adrp	x2, 0x2000 <zte_touch_probe+0xa4>
		0000000000002410:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
    2414: 91000042     	add	x2, x2, #0x0
		0000000000002414:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x10
    2418: 91318260     	add	x0, x19, #0xc60
    241c: 94000000     	bl	0x241c <zte_touch_probe+0x4c0>
		000000000000241c:  R_AARCH64_CALL26	__mutex_init
    2420: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		0000000000002420:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d
    2424: 91000021     	add	x1, x1, #0x0
		0000000000002424:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d
    2428: 90000002     	adrp	x2, 0x2000 <zte_touch_probe+0xa4>
		0000000000002428:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x11
    242c: 91000042     	add	x2, x2, #0x0
		000000000000242c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x11
    2430: 91324260     	add	x0, x19, #0xc90
    2434: 94000000     	bl	0x2434 <zte_touch_probe+0x4d8>
		0000000000002434:  R_AARCH64_CALL26	__mutex_init
    2438: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		0000000000002438:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e7b
    243c: 91000021     	add	x1, x1, #0x0
		000000000000243c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e7b
    2440: 90000002     	adrp	x2, 0x2000 <zte_touch_probe+0xa4>
		0000000000002440:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x12
    2444: 91000042     	add	x2, x2, #0x0
		0000000000002444:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x12
    2448: 91330260     	add	x0, x19, #0xcc0
    244c: 94000000     	bl	0x244c <zte_touch_probe+0x4f0>
		000000000000244c:  R_AARCH64_CALL26	__mutex_init
    2450: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002450:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16bd
    2454: 91000000     	add	x0, x0, #0x0
		0000000000002454:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16bd
    2458: aa1f03e1     	mov	x1, xzr
    245c: 94000000     	bl	0x245c <zte_touch_probe+0x500>
		000000000000245c:  R_AARCH64_CALL26	proc_mkdir
    2460: 90000014     	adrp	x20, 0x2000 <zte_touch_probe+0xa4>
		0000000000002460:  R_AARCH64_ADR_PREL_PG_HI21	tpd_proc_dir
    2464: f9000280     	str	x0, [x20]
		0000000000002464:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    2468: b4002d60     	cbz	x0, 0x2a14 <zte_touch_probe+0xab8>
    246c: aa0003e2     	mov	x2, x0
    2470: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002470:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30d2
    2474: 91000000     	add	x0, x0, #0x0
		0000000000002474:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30d2
    2478: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		0000000000002478:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x1b8
    247c: 91000063     	add	x3, x3, #0x0
		000000000000247c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x1b8
    2480: 52803681     	mov	w1, #0x1b4              // =436
    2484: 94000000     	bl	0x2484 <zte_touch_probe+0x528>
		0000000000002484:  R_AARCH64_CALL26	proc_create
    2488: b40036e0     	cbz	x0, 0x2b64 <zte_touch_probe+0xc08>
    248c: f9400282     	ldr	x2, [x20]
		000000000000248c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    2490: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002490:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30e1
    2494: 91000000     	add	x0, x0, #0x0
		0000000000002494:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30e1
    2498: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		0000000000002498:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x218
    249c: 91000063     	add	x3, x3, #0x0
		000000000000249c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x218
    24a0: 52803681     	mov	w1, #0x1b4              // =436
    24a4: 94000000     	bl	0x24a4 <zte_touch_probe+0x548>
		00000000000024a4:  R_AARCH64_CALL26	proc_create
    24a8: b4003660     	cbz	x0, 0x2b74 <zte_touch_probe+0xc18>
    24ac: f9400282     	ldr	x2, [x20]
		00000000000024ac:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    24b0: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		00000000000024b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb88c
    24b4: 91000000     	add	x0, x0, #0x0
		00000000000024b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb88c
    24b8: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		00000000000024b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x278
    24bc: 91000063     	add	x3, x3, #0x0
		00000000000024bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x278
    24c0: 52803681     	mov	w1, #0x1b4              // =436
    24c4: 94000000     	bl	0x24c4 <zte_touch_probe+0x568>
		00000000000024c4:  R_AARCH64_CALL26	proc_create
    24c8: b40035e0     	cbz	x0, 0x2b84 <zte_touch_probe+0xc28>
    24cc: f9400282     	ldr	x2, [x20]
		00000000000024cc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    24d0: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		00000000000024d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d0a
    24d4: 91000000     	add	x0, x0, #0x0
		00000000000024d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d0a
    24d8: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		00000000000024d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x2d8
    24dc: 91000063     	add	x3, x3, #0x0
		00000000000024dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x2d8
    24e0: 52803681     	mov	w1, #0x1b4              // =436
    24e4: 94000000     	bl	0x24e4 <zte_touch_probe+0x588>
		00000000000024e4:  R_AARCH64_CALL26	proc_create
    24e8: b4003560     	cbz	x0, 0x2b94 <zte_touch_probe+0xc38>
    24ec: f9400282     	ldr	x2, [x20]
		00000000000024ec:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    24f0: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		00000000000024f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3de1
    24f4: 91000000     	add	x0, x0, #0x0
		00000000000024f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3de1
    24f8: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		00000000000024f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x338
    24fc: 91000063     	add	x3, x3, #0x0
		00000000000024fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x338
    2500: 52803681     	mov	w1, #0x1b4              // =436
    2504: 94000000     	bl	0x2504 <zte_touch_probe+0x5a8>
		0000000000002504:  R_AARCH64_CALL26	proc_create
    2508: b40034e0     	cbz	x0, 0x2ba4 <zte_touch_probe+0xc48>
    250c: f9400282     	ldr	x2, [x20]
		000000000000250c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    2510: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002510:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5523
    2514: 91000000     	add	x0, x0, #0x0
		0000000000002514:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5523
    2518: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		0000000000002518:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x398
    251c: 91000063     	add	x3, x3, #0x0
		000000000000251c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x398
    2520: 52803681     	mov	w1, #0x1b4              // =436
    2524: 94000000     	bl	0x2524 <zte_touch_probe+0x5c8>
		0000000000002524:  R_AARCH64_CALL26	proc_create
    2528: b4003460     	cbz	x0, 0x2bb4 <zte_touch_probe+0xc58>
    252c: f9400282     	ldr	x2, [x20]
		000000000000252c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    2530: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002530:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x94f3
    2534: 91000000     	add	x0, x0, #0x0
		0000000000002534:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x94f3
    2538: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		0000000000002538:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x3f8
    253c: 91000063     	add	x3, x3, #0x0
		000000000000253c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x3f8
    2540: 52803681     	mov	w1, #0x1b4              // =436
    2544: 94000000     	bl	0x2544 <zte_touch_probe+0x5e8>
		0000000000002544:  R_AARCH64_CALL26	proc_create
    2548: b40033e0     	cbz	x0, 0x2bc4 <zte_touch_probe+0xc68>
    254c: f9400282     	ldr	x2, [x20]
		000000000000254c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    2550: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002550:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d15
    2554: 91000000     	add	x0, x0, #0x0
		0000000000002554:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d15
    2558: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		0000000000002558:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x458
    255c: 91000063     	add	x3, x3, #0x0
		000000000000255c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x458
    2560: 52803681     	mov	w1, #0x1b4              // =436
    2564: 94000000     	bl	0x2564 <zte_touch_probe+0x608>
		0000000000002564:  R_AARCH64_CALL26	proc_create
    2568: b4003360     	cbz	x0, 0x2bd4 <zte_touch_probe+0xc78>
    256c: f9400282     	ldr	x2, [x20]
		000000000000256c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    2570: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002570:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1786
    2574: 91000000     	add	x0, x0, #0x0
		0000000000002574:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1786
    2578: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		0000000000002578:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x4b8
    257c: 91000063     	add	x3, x3, #0x0
		000000000000257c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x4b8
    2580: 52803681     	mov	w1, #0x1b4              // =436
    2584: 94000000     	bl	0x2584 <zte_touch_probe+0x628>
		0000000000002584:  R_AARCH64_CALL26	proc_create
    2588: b40032e0     	cbz	x0, 0x2be4 <zte_touch_probe+0xc88>
    258c: f9400282     	ldr	x2, [x20]
		000000000000258c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    2590: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002590:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8454
    2594: 91000000     	add	x0, x0, #0x0
		0000000000002594:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8454
    2598: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		0000000000002598:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x518
    259c: 91000063     	add	x3, x3, #0x0
		000000000000259c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x518
    25a0: 52803681     	mov	w1, #0x1b4              // =436
    25a4: 94000000     	bl	0x25a4 <zte_touch_probe+0x648>
		00000000000025a4:  R_AARCH64_CALL26	proc_create
    25a8: b4003260     	cbz	x0, 0x2bf4 <zte_touch_probe+0xc98>
    25ac: f9400282     	ldr	x2, [x20]
		00000000000025ac:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    25b0: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		00000000000025b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x245c
    25b4: 91000000     	add	x0, x0, #0x0
		00000000000025b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x245c
    25b8: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		00000000000025b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x578
    25bc: 91000063     	add	x3, x3, #0x0
		00000000000025bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x578
    25c0: 52803681     	mov	w1, #0x1b4              // =436
    25c4: 94000000     	bl	0x25c4 <zte_touch_probe+0x668>
		00000000000025c4:  R_AARCH64_CALL26	proc_create
    25c8: b40031e0     	cbz	x0, 0x2c04 <zte_touch_probe+0xca8>
    25cc: f9400282     	ldr	x2, [x20]
		00000000000025cc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    25d0: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		00000000000025d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x440a
    25d4: 91000000     	add	x0, x0, #0x0
		00000000000025d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x440a
    25d8: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		00000000000025d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x5d8
    25dc: 91000063     	add	x3, x3, #0x0
		00000000000025dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x5d8
    25e0: 52803681     	mov	w1, #0x1b4              // =436
    25e4: 94000000     	bl	0x25e4 <zte_touch_probe+0x688>
		00000000000025e4:  R_AARCH64_CALL26	proc_create
    25e8: b4003160     	cbz	x0, 0x2c14 <zte_touch_probe+0xcb8>
    25ec: f9400282     	ldr	x2, [x20]
		00000000000025ec:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    25f0: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		00000000000025f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5033
    25f4: 91000000     	add	x0, x0, #0x0
		00000000000025f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5033
    25f8: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		00000000000025f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x638
    25fc: 91000063     	add	x3, x3, #0x0
		00000000000025fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x638
    2600: 52803681     	mov	w1, #0x1b4              // =436
    2604: 94000000     	bl	0x2604 <zte_touch_probe+0x6a8>
		0000000000002604:  R_AARCH64_CALL26	proc_create
    2608: b40030e0     	cbz	x0, 0x2c24 <zte_touch_probe+0xcc8>
    260c: f9400282     	ldr	x2, [x20]
		000000000000260c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    2610: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002610:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fc
    2614: 91000000     	add	x0, x0, #0x0
		0000000000002614:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fc
    2618: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		0000000000002618:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x698
    261c: 91000063     	add	x3, x3, #0x0
		000000000000261c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x698
    2620: 52803681     	mov	w1, #0x1b4              // =436
    2624: 94000000     	bl	0x2624 <zte_touch_probe+0x6c8>
		0000000000002624:  R_AARCH64_CALL26	proc_create
    2628: b4003060     	cbz	x0, 0x2c34 <zte_touch_probe+0xcd8>
    262c: f9400282     	ldr	x2, [x20]
		000000000000262c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    2630: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002630:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a55
    2634: 91000000     	add	x0, x0, #0x0
		0000000000002634:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a55
    2638: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		0000000000002638:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x6f8
    263c: 91000063     	add	x3, x3, #0x0
		000000000000263c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x6f8
    2640: 52803681     	mov	w1, #0x1b4              // =436
    2644: 94000000     	bl	0x2644 <zte_touch_probe+0x6e8>
		0000000000002644:  R_AARCH64_CALL26	proc_create
    2648: b4002fe0     	cbz	x0, 0x2c44 <zte_touch_probe+0xce8>
    264c: f9400282     	ldr	x2, [x20]
		000000000000264c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    2650: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002650:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7350
    2654: 91000000     	add	x0, x0, #0x0
		0000000000002654:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7350
    2658: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		0000000000002658:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x758
    265c: 91000063     	add	x3, x3, #0x0
		000000000000265c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x758
    2660: 52803681     	mov	w1, #0x1b4              // =436
    2664: 94000000     	bl	0x2664 <zte_touch_probe+0x708>
		0000000000002664:  R_AARCH64_CALL26	proc_create
    2668: b4002f60     	cbz	x0, 0x2c54 <zte_touch_probe+0xcf8>
    266c: f9400282     	ldr	x2, [x20]
		000000000000266c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    2670: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002670:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1790
    2674: 91000000     	add	x0, x0, #0x0
		0000000000002674:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1790
    2678: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		0000000000002678:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x7b8
    267c: 91000063     	add	x3, x3, #0x0
		000000000000267c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x7b8
    2680: 52803681     	mov	w1, #0x1b4              // =436
    2684: 94000000     	bl	0x2684 <zte_touch_probe+0x728>
		0000000000002684:  R_AARCH64_CALL26	proc_create
    2688: b4002ee0     	cbz	x0, 0x2c64 <zte_touch_probe+0xd08>
    268c: f9400282     	ldr	x2, [x20]
		000000000000268c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    2690: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002690:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d2a
    2694: 91000000     	add	x0, x0, #0x0
		0000000000002694:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d2a
    2698: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		0000000000002698:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x818
    269c: 91000063     	add	x3, x3, #0x0
		000000000000269c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x818
    26a0: 52803681     	mov	w1, #0x1b4              // =436
    26a4: 94000000     	bl	0x26a4 <zte_touch_probe+0x748>
		00000000000026a4:  R_AARCH64_CALL26	proc_create
    26a8: b4002e60     	cbz	x0, 0x2c74 <zte_touch_probe+0xd18>
    26ac: f9400282     	ldr	x2, [x20]
		00000000000026ac:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    26b0: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		00000000000026b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7f8f
    26b4: 91000000     	add	x0, x0, #0x0
		00000000000026b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7f8f
    26b8: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		00000000000026b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x878
    26bc: 91000063     	add	x3, x3, #0x0
		00000000000026bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x878
    26c0: 52803681     	mov	w1, #0x1b4              // =436
    26c4: 94000000     	bl	0x26c4 <zte_touch_probe+0x768>
		00000000000026c4:  R_AARCH64_CALL26	proc_create
    26c8: b4002de0     	cbz	x0, 0x2c84 <zte_touch_probe+0xd28>
    26cc: f9400282     	ldr	x2, [x20]
		00000000000026cc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    26d0: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		00000000000026d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x552b
    26d4: 91000000     	add	x0, x0, #0x0
		00000000000026d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x552b
    26d8: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		00000000000026d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x8d8
    26dc: 91000063     	add	x3, x3, #0x0
		00000000000026dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x8d8
    26e0: 52803681     	mov	w1, #0x1b4              // =436
    26e4: 94000000     	bl	0x26e4 <zte_touch_probe+0x788>
		00000000000026e4:  R_AARCH64_CALL26	proc_create
    26e8: b4002d60     	cbz	x0, 0x2c94 <zte_touch_probe+0xd38>
    26ec: f9400282     	ldr	x2, [x20]
		00000000000026ec:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    26f0: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		00000000000026f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb65
    26f4: 91000000     	add	x0, x0, #0x0
		00000000000026f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb65
    26f8: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		00000000000026f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x938
    26fc: 91000063     	add	x3, x3, #0x0
		00000000000026fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x938
    2700: 52803681     	mov	w1, #0x1b4              // =436
    2704: 94000000     	bl	0x2704 <zte_touch_probe+0x7a8>
		0000000000002704:  R_AARCH64_CALL26	proc_create
    2708: b4002ce0     	cbz	x0, 0x2ca4 <zte_touch_probe+0xd48>
    270c: f9400282     	ldr	x2, [x20]
		000000000000270c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    2710: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002710:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7eb8
    2714: 91000000     	add	x0, x0, #0x0
		0000000000002714:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7eb8
    2718: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		0000000000002718:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x998
    271c: 91000063     	add	x3, x3, #0x0
		000000000000271c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x998
    2720: 52803681     	mov	w1, #0x1b4              // =436
    2724: 94000000     	bl	0x2724 <zte_touch_probe+0x7c8>
		0000000000002724:  R_AARCH64_CALL26	proc_create
    2728: b4002c60     	cbz	x0, 0x2cb4 <zte_touch_probe+0xd58>
    272c: f9400282     	ldr	x2, [x20]
		000000000000272c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    2730: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002730:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30ee
    2734: 91000000     	add	x0, x0, #0x0
		0000000000002734:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30ee
    2738: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		0000000000002738:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x9f8
    273c: 91000063     	add	x3, x3, #0x0
		000000000000273c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x9f8
    2740: 52803681     	mov	w1, #0x1b4              // =436
    2744: 94000000     	bl	0x2744 <zte_touch_probe+0x7e8>
		0000000000002744:  R_AARCH64_CALL26	proc_create
    2748: b4002be0     	cbz	x0, 0x2cc4 <zte_touch_probe+0xd68>
    274c: f9400282     	ldr	x2, [x20]
		000000000000274c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    2750: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002750:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x40
    2754: 91000000     	add	x0, x0, #0x0
		0000000000002754:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x40
    2758: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		0000000000002758:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xa58
    275c: 91000063     	add	x3, x3, #0x0
		000000000000275c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xa58
    2760: 52803681     	mov	w1, #0x1b4              // =436
    2764: 94000000     	bl	0x2764 <zte_touch_probe+0x808>
		0000000000002764:  R_AARCH64_CALL26	proc_create
    2768: b4002b60     	cbz	x0, 0x2cd4 <zte_touch_probe+0xd78>
    276c: f9400282     	ldr	x2, [x20]
		000000000000276c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    2770: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002770:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ec1
    2774: 91000000     	add	x0, x0, #0x0
		0000000000002774:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ec1
    2778: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		0000000000002778:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xab8
    277c: 91000063     	add	x3, x3, #0x0
		000000000000277c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xab8
    2780: 52803681     	mov	w1, #0x1b4              // =436
    2784: 94000000     	bl	0x2784 <zte_touch_probe+0x828>
		0000000000002784:  R_AARCH64_CALL26	proc_create
    2788: b4002ae0     	cbz	x0, 0x2ce4 <zte_touch_probe+0xd88>
    278c: f9400282     	ldr	x2, [x20]
		000000000000278c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    2790: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002790:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x845f
    2794: 91000000     	add	x0, x0, #0x0
		0000000000002794:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x845f
    2798: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		0000000000002798:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xb18
    279c: 91000063     	add	x3, x3, #0x0
		000000000000279c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xb18
    27a0: 52803681     	mov	w1, #0x1b4              // =436
    27a4: 94000000     	bl	0x27a4 <zte_touch_probe+0x848>
		00000000000027a4:  R_AARCH64_CALL26	proc_create
    27a8: b4002a60     	cbz	x0, 0x2cf4 <zte_touch_probe+0xd98>
    27ac: f9400282     	ldr	x2, [x20]
		00000000000027ac:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    27b0: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		00000000000027b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x735a
    27b4: 91000000     	add	x0, x0, #0x0
		00000000000027b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x735a
    27b8: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		00000000000027b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xb78
    27bc: 91000063     	add	x3, x3, #0x0
		00000000000027bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xb78
    27c0: 52803681     	mov	w1, #0x1b4              // =436
    27c4: 94000000     	bl	0x27c4 <zte_touch_probe+0x868>
		00000000000027c4:  R_AARCH64_CALL26	proc_create
    27c8: b40029e0     	cbz	x0, 0x2d04 <zte_touch_probe+0xda8>
    27cc: f9400282     	ldr	x2, [x20]
		00000000000027cc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    27d0: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		00000000000027d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5537
    27d4: 91000000     	add	x0, x0, #0x0
		00000000000027d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5537
    27d8: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		00000000000027d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xbd8
    27dc: 91000063     	add	x3, x3, #0x0
		00000000000027dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xbd8
    27e0: 52803681     	mov	w1, #0x1b4              // =436
    27e4: 94000000     	bl	0x27e4 <zte_touch_probe+0x888>
		00000000000027e4:  R_AARCH64_CALL26	proc_create
    27e8: b4002960     	cbz	x0, 0x2d14 <zte_touch_probe+0xdb8>
    27ec: f9400282     	ldr	x2, [x20]
		00000000000027ec:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    27f0: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		00000000000027f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a8d
    27f4: 91000000     	add	x0, x0, #0x0
		00000000000027f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a8d
    27f8: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		00000000000027f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xc38
    27fc: 91000063     	add	x3, x3, #0x0
		00000000000027fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xc38
    2800: 52803681     	mov	w1, #0x1b4              // =436
    2804: 94000000     	bl	0x2804 <zte_touch_probe+0x8a8>
		0000000000002804:  R_AARCH64_CALL26	proc_create
    2808: b40028e0     	cbz	x0, 0x2d24 <zte_touch_probe+0xdc8>
    280c: f9400282     	ldr	x2, [x20]
		000000000000280c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    2810: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002810:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x846a
    2814: 91000000     	add	x0, x0, #0x0
		0000000000002814:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x846a
    2818: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		0000000000002818:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xc98
    281c: 91000063     	add	x3, x3, #0x0
		000000000000281c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xc98
    2820: 52803681     	mov	w1, #0x1b4              // =436
    2824: 94000000     	bl	0x2824 <zte_touch_probe+0x8c8>
		0000000000002824:  R_AARCH64_CALL26	proc_create
    2828: b4002860     	cbz	x0, 0x2d34 <zte_touch_probe+0xdd8>
    282c: f9400282     	ldr	x2, [x20]
		000000000000282c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    2830: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002830:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2467
    2834: 91000000     	add	x0, x0, #0x0
		0000000000002834:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2467
    2838: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		0000000000002838:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xcf8
    283c: 91000063     	add	x3, x3, #0x0
		000000000000283c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xcf8
    2840: 52803681     	mov	w1, #0x1b4              // =436
    2844: 94000000     	bl	0x2844 <zte_touch_probe+0x8e8>
		0000000000002844:  R_AARCH64_CALL26	proc_create
    2848: b40027e0     	cbz	x0, 0x2d44 <zte_touch_probe+0xde8>
    284c: f9400282     	ldr	x2, [x20]
		000000000000284c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    2850: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002850:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9d9c
    2854: 91000000     	add	x0, x0, #0x0
		0000000000002854:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9d9c
    2858: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		0000000000002858:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xd58
    285c: 91000063     	add	x3, x3, #0x0
		000000000000285c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xd58
    2860: 52803681     	mov	w1, #0x1b4              // =436
    2864: 94000000     	bl	0x2864 <zte_touch_probe+0x908>
		0000000000002864:  R_AARCH64_CALL26	proc_create
    2868: b4002760     	cbz	x0, 0x2d54 <zte_touch_probe+0xdf8>
    286c: f9400282     	ldr	x2, [x20]
		000000000000286c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    2870: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002870:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x60a5
    2874: 91000000     	add	x0, x0, #0x0
		0000000000002874:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x60a5
    2878: 90000003     	adrp	x3, 0x2000 <zte_touch_probe+0xa4>
		0000000000002878:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xdb8
    287c: 91000063     	add	x3, x3, #0x0
		000000000000287c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xdb8
    2880: 52803681     	mov	w1, #0x1b4              // =436
    2884: 94000000     	bl	0x2884 <zte_touch_probe+0x928>
		0000000000002884:  R_AARCH64_CALL26	proc_create
    2888: b40026e0     	cbz	x0, 0x2d64 <zte_touch_probe+0xe08>
    288c: f94002b4     	ldr	x20, [x21]
		000000000000288c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    2890: f946ea88     	ldr	x8, [x20, #0xdd0]
    2894: b4000cc8     	cbz	x8, 0x2a2c <zte_touch_probe+0xad0>
    2898: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002898:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3eaf
    289c: 91000000     	add	x0, x0, #0x0
		000000000000289c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3eaf
    28a0: 91004101     	add	x1, x8, #0x10
    28a4: 94000000     	bl	0x28a4 <zte_touch_probe+0x948>
		00000000000028a4:  R_AARCH64_CALL26	kobject_create_and_add
    28a8: f9062a80     	str	x0, [x20, #0xc50]
    28ac: b4002640     	cbz	x0, 0x2d74 <zte_touch_probe+0xe18>
    28b0: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		00000000000028b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xe18
    28b4: 91000021     	add	x1, x1, #0x0
		00000000000028b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xe18
    28b8: 94000000     	bl	0x28b8 <zte_touch_probe+0x95c>
		00000000000028b8:  R_AARCH64_CALL26	sysfs_create_bin_file
    28bc: 35002640     	cbnz	w0, 0x2d84 <zte_touch_probe+0xe28>
    28c0: 94000000     	bl	0x28c0 <zte_touch_probe+0x964>
		00000000000028c0:  R_AARCH64_CALL26	tpd_clean_all_event
    28c4: 94000000     	bl	0x28c4 <zte_touch_probe+0x968>
		00000000000028c4:  R_AARCH64_CALL26	ghost_check_reset
    28c8: 94000000     	bl	0x28c8 <zte_touch_probe+0x96c>
		00000000000028c8:  R_AARCH64_CALL26	ufp_mac_init
    28cc: 94000000     	bl	0x28cc <zte_touch_probe+0x970>
		00000000000028cc:  R_AARCH64_CALL26	tpd_workqueue_init
    28d0: 34000b60     	cbz	w0, 0x2a3c <zte_touch_probe+0xae0>
    28d4: 12800160     	mov	w0, #-0xc               // =-12
    28d8: d5384108     	mrs	x8, SP_EL0
    28dc: f9438908     	ldr	x8, [x8, #0x710]
    28e0: f94007e9     	ldr	x9, [sp, #0x8]
    28e4: eb09011f     	cmp	x8, x9
    28e8: 54002781     	b.ne	0x2dd8 <zte_touch_probe+0xe7c>
    28ec: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    28f0: a94257f6     	ldp	x22, x21, [sp, #0x20]
    28f4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    28f8: 910103ff     	add	sp, sp, #0x40
    28fc: d50323bf     	autiasp
    2900: d65f03c0     	ret
    2904: b94007e8     	ldr	w8, [sp, #0x4]
    2908: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002908:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb8c5
    290c: 91000000     	add	x0, x0, #0x0
		000000000000290c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb8c5
    2910: 12001d01     	and	w1, w8, #0xff
    2914: 39009268     	strb	w8, [x19, #0x24]
    2918: 94000000     	bl	0x2918 <zte_touch_probe+0x9bc>
		0000000000002918:  R_AARCH64_CALL26	_printk
    291c: 39409268     	ldrb	w8, [x19, #0x24]
    2920: 34ffd528     	cbz	w8, 0x23c4 <zte_touch_probe+0x468>
    2924: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		0000000000002924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbe60
    2928: 91000021     	add	x1, x1, #0x0
		0000000000002928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbe60
    292c: 910013e2     	add	x2, sp, #0x4
    2930: aa1403e0     	mov	x0, x20
    2934: 52800023     	mov	w3, #0x1                // =1
    2938: aa1f03e4     	mov	x4, xzr
    293c: 94000000     	bl	0x293c <zte_touch_probe+0x9e0>
		000000000000293c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    2940: 37ffd420     	tbnz	w0, #0x1f, 0x23c4 <zte_touch_probe+0x468>
    2944: b94007e8     	ldr	w8, [sp, #0x4]
    2948: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002948:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x49c4
    294c: 91000000     	add	x0, x0, #0x0
		000000000000294c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x49c4
    2950: 12003d01     	and	w1, w8, #0xffff
    2954: 79007e68     	strh	w8, [x19, #0x3e]
    2958: 94000000     	bl	0x2958 <zte_touch_probe+0x9fc>
		0000000000002958:  R_AARCH64_CALL26	_printk
    295c: 17fffe9a     	b	0x23c4 <zte_touch_probe+0x468>
    2960: b94007e8     	ldr	w8, [sp, #0x4]
    2964: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002964:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a60
    2968: 91000000     	add	x0, x0, #0x0
		0000000000002968:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a60
    296c: 12001d01     	and	w1, w8, #0xff
    2970: 39009a68     	strb	w8, [x19, #0x26]
    2974: 94000000     	bl	0x2974 <zte_touch_probe+0xa18>
		0000000000002974:  R_AARCH64_CALL26	_printk
    2978: 39409a68     	ldrb	w8, [x19, #0x26]
    297c: 3200c3e9     	mov	w9, #0x1010101          // =16843009
    2980: 1b097d08     	mul	w8, w8, w9
    2984: b8027268     	stur	w8, [x19, #0x27]
    2988: 17fffe97     	b	0x23e4 <zte_touch_probe+0x488>
    298c: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		000000000000298c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x73a5
    2990: 91000000     	add	x0, x0, #0x0
		0000000000002990:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x73a5
    2994: 94000000     	bl	0x2994 <zte_touch_probe+0xa38>
		0000000000002994:  R_AARCH64_CALL26	_printk
    2998: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		0000000000002998:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc27
    299c: 91000021     	add	x1, x1, #0x0
		000000000000299c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc27
    29a0: 910013e2     	add	x2, sp, #0x4
    29a4: aa1403e0     	mov	x0, x20
    29a8: 52800023     	mov	w3, #0x1                // =1
    29ac: aa1f03e4     	mov	x4, xzr
    29b0: 94000000     	bl	0x29b0 <zte_touch_probe+0xa54>
		00000000000029b0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    29b4: 36f81f60     	tbz	w0, #0x1f, 0x2da0 <zte_touch_probe+0xe44>
    29b8: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		00000000000029b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb8e2
    29bc: 91000021     	add	x1, x1, #0x0
		00000000000029bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb8e2
    29c0: 910013e2     	add	x2, sp, #0x4
    29c4: aa1403e0     	mov	x0, x20
    29c8: 52800023     	mov	w3, #0x1                // =1
    29cc: aa1f03e4     	mov	x4, xzr
    29d0: 94000000     	bl	0x29d0 <zte_touch_probe+0xa74>
		00000000000029d0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    29d4: 36f81f40     	tbz	w0, #0x1f, 0x2dbc <zte_touch_probe+0xe60>
    29d8: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		00000000000029d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x60d8
    29dc: 91000021     	add	x1, x1, #0x0
		00000000000029dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x60d8
    29e0: 910013e2     	add	x2, sp, #0x4
    29e4: aa1403e0     	mov	x0, x20
    29e8: 52800023     	mov	w3, #0x1                // =1
    29ec: aa1f03e4     	mov	x4, xzr
    29f0: 94000000     	bl	0x29f0 <zte_touch_probe+0xa94>
		00000000000029f0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    29f4: 37ffd0a0     	tbnz	w0, #0x1f, 0x2408 <zte_touch_probe+0x4ac>
    29f8: b94007e8     	ldr	w8, [sp, #0x4]
    29fc: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		00000000000029fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11c7
    2a00: 91000000     	add	x0, x0, #0x0
		0000000000002a00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11c7
    2a04: 12003d01     	and	w1, w8, #0xffff
    2a08: 79004668     	strh	w8, [x19, #0x22]
    2a0c: 94000000     	bl	0x2a0c <zte_touch_probe+0xab0>
		0000000000002a0c:  R_AARCH64_CALL26	_printk
    2a10: 17fffe7e     	b	0x2408 <zte_touch_probe+0x4ac>
    2a14: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002a14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8eba
    2a18: 91000000     	add	x0, x0, #0x0
		0000000000002a18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8eba
    2a1c: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		0000000000002a1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30ff
    2a20: 91000021     	add	x1, x1, #0x0
		0000000000002a20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30ff
    2a24: 94000000     	bl	0x2a24 <zte_touch_probe+0xac8>
		0000000000002a24:  R_AARCH64_CALL26	_printk
    2a28: 17ffff99     	b	0x288c <zte_touch_probe+0x930>
    2a2c: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002a2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5afe
    2a30: 91000000     	add	x0, x0, #0x0
		0000000000002a30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5afe
    2a34: 94000000     	bl	0x2a34 <zte_touch_probe+0xad8>
		0000000000002a34:  R_AARCH64_CALL26	_printk
    2a38: 17ffffa2     	b	0x28c0 <zte_touch_probe+0x964>
    2a3c: f9425a61     	ldr	x1, [x19, #0x4b0]
    2a40: 91234262     	add	x2, x19, #0x8d0
    2a44: 52800400     	mov	w0, #0x20               // =32
    2a48: 52802ee3     	mov	w3, #0x177              // =375
    2a4c: 94000000     	bl	0x2a4c <zte_touch_probe+0xaf0>
		0000000000002a4c:  R_AARCH64_CALL26	queue_delayed_work_on
    2a50: f94002a8     	ldr	x8, [x21]
		0000000000002a50:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    2a54: 90000009     	adrp	x9, 0x2000 <zte_touch_probe+0xa4>
		0000000000002a54:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
    2a58: 91294262     	add	x2, x19, #0xa50
    2a5c: 52800400     	mov	w0, #0x20               // =32
    2a60: 52809c43     	mov	w3, #0x4e2              // =1250
    2a64: f905f51f     	str	xzr, [x8, #0xbe8]
    2a68: 392fc11f     	strb	wzr, [x8, #0xbf0]
    2a6c: f940012a     	ldr	x10, [x9]
		0000000000002a6c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    2a70: f905fd0a     	str	x10, [x8, #0xbf8]
    2a74: f940012a     	ldr	x10, [x9]
		0000000000002a74:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    2a78: f905a90a     	str	x10, [x8, #0xb50]
    2a7c: f940012a     	ldr	x10, [x9]
		0000000000002a7c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    2a80: f905ad0a     	str	x10, [x8, #0xb58]
    2a84: f940012a     	ldr	x10, [x9]
		0000000000002a84:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    2a88: f905b10a     	str	x10, [x8, #0xb60]
    2a8c: f940012a     	ldr	x10, [x9]
		0000000000002a8c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    2a90: f905b50a     	str	x10, [x8, #0xb68]
    2a94: f940012a     	ldr	x10, [x9]
		0000000000002a94:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    2a98: f905b90a     	str	x10, [x8, #0xb70]
    2a9c: f940012a     	ldr	x10, [x9]
		0000000000002a9c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    2aa0: f905bd0a     	str	x10, [x8, #0xb78]
    2aa4: f940012a     	ldr	x10, [x9]
		0000000000002aa4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    2aa8: f905c10a     	str	x10, [x8, #0xb80]
    2aac: f940012a     	ldr	x10, [x9]
		0000000000002aac:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    2ab0: f905c50a     	str	x10, [x8, #0xb88]
    2ab4: f940012a     	ldr	x10, [x9]
		0000000000002ab4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    2ab8: f905c90a     	str	x10, [x8, #0xb90]
    2abc: f940012a     	ldr	x10, [x9]
		0000000000002abc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    2ac0: f905cd0a     	str	x10, [x8, #0xb98]
    2ac4: f940012a     	ldr	x10, [x9]
		0000000000002ac4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    2ac8: f905d10a     	str	x10, [x8, #0xba0]
    2acc: f940012a     	ldr	x10, [x9]
		0000000000002acc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    2ad0: f905d50a     	str	x10, [x8, #0xba8]
    2ad4: f940012a     	ldr	x10, [x9]
		0000000000002ad4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    2ad8: f905d90a     	str	x10, [x8, #0xbb0]
    2adc: f940012a     	ldr	x10, [x9]
		0000000000002adc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    2ae0: f905dd0a     	str	x10, [x8, #0xbb8]
    2ae4: f940012a     	ldr	x10, [x9]
		0000000000002ae4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    2ae8: f905e10a     	str	x10, [x8, #0xbc0]
    2aec: f940012a     	ldr	x10, [x9]
		0000000000002aec:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    2af0: f905e50a     	str	x10, [x8, #0xbc8]
    2af4: f940012a     	ldr	x10, [x9]
		0000000000002af4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    2af8: f905e90a     	str	x10, [x8, #0xbd0]
    2afc: f940012a     	ldr	x10, [x9]
		0000000000002afc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    2b00: f905ed0a     	str	x10, [x8, #0xbd8]
    2b04: f9400129     	ldr	x9, [x9]
		0000000000002b04:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    2b08: f905f109     	str	x9, [x8, #0xbe0]
    2b0c: f9425e61     	ldr	x1, [x19, #0x4b8]
    2b10: 94000000     	bl	0x2b10 <zte_touch_probe+0xbb4>
		0000000000002b10:  R_AARCH64_CALL26	queue_delayed_work_on
    2b14: 52801fe8     	mov	w8, #0xff               // =255
    2b18: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		0000000000002b18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2aeb
    2b1c: 91000021     	add	x1, x1, #0x0
		0000000000002b1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2aeb
    2b20: 90000002     	adrp	x2, 0x2000 <zte_touch_probe+0xa4>
		0000000000002b20:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x13
    2b24: 91000042     	add	x2, x2, #0x0
		0000000000002b24:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x13
    2b28: 9137a260     	add	x0, x19, #0xde8
    2b2c: 3900767f     	strb	wzr, [x19, #0x1d]
    2b30: 39300268     	strb	w8, [x19, #0xc00]
    2b34: b904aa7f     	str	wzr, [x19, #0x4a8]
    2b38: b90de27f     	str	wzr, [x19, #0xde0]
    2b3c: 94000000     	bl	0x2b3c <zte_touch_probe+0xbe0>
		0000000000002b3c:  R_AARCH64_CALL26	__init_swait_queue_head
    2b40: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002b40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7392
    2b44: 91000000     	add	x0, x0, #0x0
		0000000000002b44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7392
    2b48: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		0000000000002b48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d89
    2b4c: 91000021     	add	x1, x1, #0x0
		0000000000002b4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d89
    2b50: 52816a22     	mov	w2, #0xb51              // =2897
    2b54: 3938067f     	strb	wzr, [x19, #0xe01]
    2b58: 94000000     	bl	0x2b58 <zte_touch_probe+0xbfc>
		0000000000002b58:  R_AARCH64_CALL26	_printk
    2b5c: 2a1f03e0     	mov	w0, wzr
    2b60: 17ffff5e     	b	0x28d8 <zte_touch_probe+0x97c>
    2b64: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002b64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x50cb
    2b68: 91000000     	add	x0, x0, #0x0
		0000000000002b68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x50cb
    2b6c: 94000000     	bl	0x2b6c <zte_touch_probe+0xc10>
		0000000000002b6c:  R_AARCH64_CALL26	_printk
    2b70: 17fffe47     	b	0x248c <zte_touch_probe+0x530>
    2b74: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002b74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x371a
    2b78: 91000000     	add	x0, x0, #0x0
		0000000000002b78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x371a
    2b7c: 94000000     	bl	0x2b7c <zte_touch_probe+0xc20>
		0000000000002b7c:  R_AARCH64_CALL26	_printk
    2b80: 17fffe4b     	b	0x24ac <zte_touch_probe+0x550>
    2b84: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002b84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d53
    2b88: 91000000     	add	x0, x0, #0x0
		0000000000002b88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d53
    2b8c: 94000000     	bl	0x2b8c <zte_touch_probe+0xc30>
		0000000000002b8c:  R_AARCH64_CALL26	_printk
    2b90: 17fffe4f     	b	0x24cc <zte_touch_probe+0x570>
    2b94: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002b94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb2bf
    2b98: 91000000     	add	x0, x0, #0x0
		0000000000002b98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb2bf
    2b9c: 94000000     	bl	0x2b9c <zte_touch_probe+0xc40>
		0000000000002b9c:  R_AARCH64_CALL26	_printk
    2ba0: 17fffe53     	b	0x24ec <zte_touch_probe+0x590>
    2ba4: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002ba4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc3f
    2ba8: 91000000     	add	x0, x0, #0x0
		0000000000002ba8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc3f
    2bac: 94000000     	bl	0x2bac <zte_touch_probe+0xc50>
		0000000000002bac:  R_AARCH64_CALL26	_printk
    2bb0: 17fffe57     	b	0x250c <zte_touch_probe+0x5b0>
    2bb4: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002bb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7f4b
    2bb8: 91000000     	add	x0, x0, #0x0
		0000000000002bb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7f4b
    2bbc: 94000000     	bl	0x2bbc <zte_touch_probe+0xc60>
		0000000000002bbc:  R_AARCH64_CALL26	_printk
    2bc0: 17fffe5b     	b	0x252c <zte_touch_probe+0x5d0>
    2bc4: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002bc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7f6a
    2bc8: 91000000     	add	x0, x0, #0x0
		0000000000002bc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7f6a
    2bcc: 94000000     	bl	0x2bcc <zte_touch_probe+0xc70>
		0000000000002bcc:  R_AARCH64_CALL26	_printk
    2bd0: 17fffe5f     	b	0x254c <zte_touch_probe+0x5f0>
    2bd4: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002bd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x64
    2bd8: 91000000     	add	x0, x0, #0x0
		0000000000002bd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x64
    2bdc: 94000000     	bl	0x2bdc <zte_touch_probe+0xc80>
		0000000000002bdc:  R_AARCH64_CALL26	_printk
    2be0: 17fffe63     	b	0x256c <zte_touch_probe+0x610>
    2be4: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002be4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa4dd
    2be8: 91000000     	add	x0, x0, #0x0
		0000000000002be8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa4dd
    2bec: 94000000     	bl	0x2bec <zte_touch_probe+0xc90>
		0000000000002bec:  R_AARCH64_CALL26	_printk
    2bf0: 17fffe67     	b	0x258c <zte_touch_probe+0x630>
    2bf4: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002bf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9d7a
    2bf8: 91000000     	add	x0, x0, #0x0
		0000000000002bf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9d7a
    2bfc: 94000000     	bl	0x2bfc <zte_touch_probe+0xca0>
		0000000000002bfc:  R_AARCH64_CALL26	_printk
    2c00: 17fffe6b     	b	0x25ac <zte_touch_probe+0x650>
    2c04: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002c04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5580
    2c08: 91000000     	add	x0, x0, #0x0
		0000000000002c08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5580
    2c0c: 94000000     	bl	0x2c0c <zte_touch_probe+0xcb0>
		0000000000002c0c:  R_AARCH64_CALL26	_printk
    2c10: 17fffe6f     	b	0x25cc <zte_touch_probe+0x670>
    2c14: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002c14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x73bf
    2c18: 91000000     	add	x0, x0, #0x0
		0000000000002c18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x73bf
    2c1c: 94000000     	bl	0x2c1c <zte_touch_probe+0xcc0>
		0000000000002c1c:  R_AARCH64_CALL26	_printk
    2c20: 17fffe73     	b	0x25ec <zte_touch_probe+0x690>
    2c24: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002c24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x60ee
    2c28: 91000000     	add	x0, x0, #0x0
		0000000000002c28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x60ee
    2c2c: 94000000     	bl	0x2c2c <zte_touch_probe+0xcd0>
		0000000000002c2c:  R_AARCH64_CALL26	_printk
    2c30: 17fffe77     	b	0x260c <zte_touch_probe+0x6b0>
    2c34: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002c34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x84bc
    2c38: 91000000     	add	x0, x0, #0x0
		0000000000002c38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x84bc
    2c3c: 94000000     	bl	0x2c3c <zte_touch_probe+0xce0>
		0000000000002c3c:  R_AARCH64_CALL26	_printk
    2c40: 17fffe7b     	b	0x262c <zte_touch_probe+0x6d0>
    2c44: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002c44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a79
    2c48: 91000000     	add	x0, x0, #0x0
		0000000000002c48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a79
    2c4c: 94000000     	bl	0x2c4c <zte_touch_probe+0xcf0>
		0000000000002c4c:  R_AARCH64_CALL26	_printk
    2c50: 17fffe7f     	b	0x264c <zte_touch_probe+0x6f0>
    2c54: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002c54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3dfc
    2c58: 91000000     	add	x0, x0, #0x0
		0000000000002c58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3dfc
    2c5c: 94000000     	bl	0x2c5c <zte_touch_probe+0xd00>
		0000000000002c5c:  R_AARCH64_CALL26	_printk
    2c60: 17fffe83     	b	0x266c <zte_touch_probe+0x710>
    2c64: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002c64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x49e1
    2c68: 91000000     	add	x0, x0, #0x0
		0000000000002c68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x49e1
    2c6c: 94000000     	bl	0x2c6c <zte_touch_probe+0xd10>
		0000000000002c6c:  R_AARCH64_CALL26	_printk
    2c70: 17fffe87     	b	0x268c <zte_touch_probe+0x730>
    2c74: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002c74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb8fa
    2c78: 91000000     	add	x0, x0, #0x0
		0000000000002c78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb8fa
    2c7c: 94000000     	bl	0x2c7c <zte_touch_probe+0xd20>
		0000000000002c7c:  R_AARCH64_CALL26	_printk
    2c80: 17fffe8b     	b	0x26ac <zte_touch_probe+0x750>
    2c84: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002c84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79c4
    2c88: 91000000     	add	x0, x0, #0x0
		0000000000002c88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79c4
    2c8c: 94000000     	bl	0x2c8c <zte_touch_probe+0xd30>
		0000000000002c8c:  R_AARCH64_CALL26	_printk
    2c90: 17fffe8f     	b	0x26cc <zte_touch_probe+0x770>
    2c94: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002c94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4416
    2c98: 91000000     	add	x0, x0, #0x0
		0000000000002c98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4416
    2c9c: 94000000     	bl	0x2c9c <zte_touch_probe+0xd40>
		0000000000002c9c:  R_AARCH64_CALL26	_printk
    2ca0: 17fffe93     	b	0x26ec <zte_touch_probe+0x790>
    2ca4: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002ca4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb2e1
    2ca8: 91000000     	add	x0, x0, #0x0
		0000000000002ca8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb2e1
    2cac: 94000000     	bl	0x2cac <zte_touch_probe+0xd50>
		0000000000002cac:  R_AARCH64_CALL26	_printk
    2cb0: 17fffe97     	b	0x270c <zte_touch_probe+0x7b0>
    2cb4: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002cb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbe74
    2cb8: 91000000     	add	x0, x0, #0x0
		0000000000002cb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbe74
    2cbc: 94000000     	bl	0x2cbc <zte_touch_probe+0xd60>
		0000000000002cbc:  R_AARCH64_CALL26	_printk
    2cc0: 17fffe9b     	b	0x272c <zte_touch_probe+0x7d0>
    2cc4: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002cc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6842
    2cc8: 91000000     	add	x0, x0, #0x0
		0000000000002cc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6842
    2ccc: 94000000     	bl	0x2ccc <zte_touch_probe+0xd70>
		0000000000002ccc:  R_AARCH64_CALL26	_printk
    2cd0: 17fffe9f     	b	0x274c <zte_touch_probe+0x7f0>
    2cd4: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002cd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x686a
    2cd8: 91000000     	add	x0, x0, #0x0
		0000000000002cd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x686a
    2cdc: 94000000     	bl	0x2cdc <zte_touch_probe+0xd80>
		0000000000002cdc:  R_AARCH64_CALL26	_printk
    2ce0: 17fffea3     	b	0x276c <zte_touch_probe+0x810>
    2ce4: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002ce4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x373e
    2ce8: 91000000     	add	x0, x0, #0x0
		0000000000002ce8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x373e
    2cec: 94000000     	bl	0x2cec <zte_touch_probe+0xd90>
		0000000000002cec:  R_AARCH64_CALL26	_printk
    2cf0: 17fffea7     	b	0x278c <zte_touch_probe+0x830>
    2cf4: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002cf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24fc
    2cf8: 91000000     	add	x0, x0, #0x0
		0000000000002cf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24fc
    2cfc: 94000000     	bl	0x2cfc <zte_touch_probe+0xda0>
		0000000000002cfc:  R_AARCH64_CALL26	_printk
    2d00: 17fffeab     	b	0x27ac <zte_touch_probe+0x850>
    2d04: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002d04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79eb
    2d08: 91000000     	add	x0, x0, #0x0
		0000000000002d08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79eb
    2d0c: 94000000     	bl	0x2d0c <zte_touch_probe+0xdb0>
		0000000000002d0c:  R_AARCH64_CALL26	_printk
    2d10: 17fffeaf     	b	0x27cc <zte_touch_probe+0x870>
    2d14: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002d14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x73e2
    2d18: 91000000     	add	x0, x0, #0x0
		0000000000002d18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x73e2
    2d1c: 94000000     	bl	0x2d1c <zte_touch_probe+0xdc0>
		0000000000002d1c:  R_AARCH64_CALL26	_printk
    2d20: 17fffeb3     	b	0x27ec <zte_touch_probe+0x890>
    2d24: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002d24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x375f
    2d28: 91000000     	add	x0, x0, #0x0
		0000000000002d28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x375f
    2d2c: 94000000     	bl	0x2d2c <zte_touch_probe+0xdd0>
		0000000000002d2c:  R_AARCH64_CALL26	_printk
    2d30: 17fffeb7     	b	0x280c <zte_touch_probe+0x8b0>
    2d34: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002d34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8edb
    2d38: 91000000     	add	x0, x0, #0x0
		0000000000002d38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8edb
    2d3c: 94000000     	bl	0x2d3c <zte_touch_probe+0xde0>
		0000000000002d3c:  R_AARCH64_CALL26	_printk
    2d40: 17fffebb     	b	0x282c <zte_touch_probe+0x8d0>
    2d44: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002d44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a98
    2d48: 91000000     	add	x0, x0, #0x0
		0000000000002d48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a98
    2d4c: 94000000     	bl	0x2d4c <zte_touch_probe+0xdf0>
		0000000000002d4c:  R_AARCH64_CALL26	_printk
    2d50: 17fffebf     	b	0x284c <zte_touch_probe+0x8f0>
    2d54: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002d54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x50f1
    2d58: 91000000     	add	x0, x0, #0x0
		0000000000002d58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x50f1
    2d5c: 94000000     	bl	0x2d5c <zte_touch_probe+0xe00>
		0000000000002d5c:  R_AARCH64_CALL26	_printk
    2d60: 17fffec3     	b	0x286c <zte_touch_probe+0x910>
    2d64: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002d64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x251e
    2d68: 91000000     	add	x0, x0, #0x0
		0000000000002d68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x251e
    2d6c: 94000000     	bl	0x2d6c <zte_touch_probe+0xe10>
		0000000000002d6c:  R_AARCH64_CALL26	_printk
    2d70: 17fffec7     	b	0x288c <zte_touch_probe+0x930>
    2d74: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002d74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1eb7
    2d78: 91000000     	add	x0, x0, #0x0
		0000000000002d78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1eb7
    2d7c: 94000000     	bl	0x2d7c <zte_touch_probe+0xe20>
		0000000000002d7c:  R_AARCH64_CALL26	_printk
    2d80: 17fffed0     	b	0x28c0 <zte_touch_probe+0x964>
    2d84: 2a0003e1     	mov	w1, w0
    2d88: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002d88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3eb8
    2d8c: 91000000     	add	x0, x0, #0x0
		0000000000002d8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3eb8
    2d90: 94000000     	bl	0x2d90 <zte_touch_probe+0xe34>
		0000000000002d90:  R_AARCH64_CALL26	_printk
    2d94: f9462a80     	ldr	x0, [x20, #0xc50]
    2d98: 94000000     	bl	0x2d98 <zte_touch_probe+0xe3c>
		0000000000002d98:  R_AARCH64_CALL26	kobject_put
    2d9c: 17fffec9     	b	0x28c0 <zte_touch_probe+0x964>
    2da0: b94007e8     	ldr	w8, [sp, #0x4]
    2da4: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002da4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x60b7
    2da8: 91000000     	add	x0, x0, #0x0
		0000000000002da8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x60b7
    2dac: 12003d01     	and	w1, w8, #0xffff
    2db0: 79003e68     	strh	w8, [x19, #0x1e]
    2db4: 94000000     	bl	0x2db4 <zte_touch_probe+0xe58>
		0000000000002db4:  R_AARCH64_CALL26	_printk
    2db8: 17ffff00     	b	0x29b8 <zte_touch_probe+0xa5c>
    2dbc: b94007e8     	ldr	w8, [sp, #0x4]
    2dc0: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002dc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17b9
    2dc4: 91000000     	add	x0, x0, #0x0
		0000000000002dc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17b9
    2dc8: 12003d01     	and	w1, w8, #0xffff
    2dcc: 79004268     	strh	w8, [x19, #0x20]
    2dd0: 94000000     	bl	0x2dd0 <zte_touch_probe+0xe74>
		0000000000002dd0:  R_AARCH64_CALL26	_printk
    2dd4: 17ffff01     	b	0x29d8 <zte_touch_probe+0xa7c>
    2dd8: 94000000     	bl	0x2dd8 <zte_touch_probe+0xe7c>
		0000000000002dd8:  R_AARCH64_CALL26	__stack_chk_fail
