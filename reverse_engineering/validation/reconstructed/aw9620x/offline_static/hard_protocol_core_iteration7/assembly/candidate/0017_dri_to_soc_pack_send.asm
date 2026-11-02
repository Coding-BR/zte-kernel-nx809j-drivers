
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000202c <dri_to_soc_pack_send>:
    202c: d503233f     	paciasp
    2030: d10203ff     	sub	sp, sp, #0x80
    2034: a9027bfd     	stp	x29, x30, [sp, #0x20]
    2038: a9036ffc     	stp	x28, x27, [sp, #0x30]
    203c: a90467fa     	stp	x26, x25, [sp, #0x40]
    2040: a9055ff8     	stp	x24, x23, [sp, #0x50]
    2044: a90657f6     	stp	x22, x21, [sp, #0x60]
    2048: a9074ff4     	stp	x20, x19, [sp, #0x70]
    204c: 910083fd     	add	x29, sp, #0x20
    2050: d5384108     	mrs	x8, SP_EL0
    2054: aa0403f6     	mov	x22, x4
    2058: 2a0303f5     	mov	w21, w3
    205c: f9438908     	ldr	x8, [x8, #0x710]
    2060: 2a0203f8     	mov	w24, w2
    2064: 2a0103f9     	mov	w25, w1
    2068: aa0003f3     	mov	x19, x0
    206c: f81f83a8     	stur	x8, [x29, #-0x8]
    2070: d503201f     	nop
    2074: 2a1503e8     	mov	w8, w21
    2078: 5281b801     	mov	w1, #0xdc0              // =3520
    207c: 92403d17     	and	x23, x8, #0xffff
    2080: 91003ae0     	add	x0, x23, #0xe
    2084: 94000000     	bl	0x2084 <dri_to_soc_pack_send+0x58>
		0000000000002084:  R_AARCH64_CALL26	__kmalloc_noprof
    2088: aa0003f4     	mov	x20, x0
    208c: f9401a61     	ldr	x1, [x19, #0x30]
    2090: b5000334     	cbnz	x20, 0x20f4 <dri_to_soc_pack_send+0xc8>
    2094: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		0000000000002094:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    2098: 91000000     	add	x0, x0, #0x0
		0000000000002098:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    209c: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		000000000000209c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x28f6
    20a0: 91000042     	add	x2, x2, #0x0
		00000000000020a0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x28f6
    20a4: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		00000000000020a4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xe8
    20a8: 91000063     	add	x3, x3, #0x0
		00000000000020a8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xe8
    20ac: 5280cc84     	mov	w4, #0x664              // =1636
    20b0: 94000000     	bl	0x20b0 <dri_to_soc_pack_send+0x84>
		00000000000020b0:  R_AARCH64_CALL26	_dev_printk
    20b4: 12800000     	mov	w0, #-0x1               // =-1
    20b8: 1400006c     	b	0x2268 <dri_to_soc_pack_send+0x23c>
    20bc: 2a1503e9     	mov	w9, w21
    20c0: d538411a     	mrs	x26, SP_EL0
    20c4: f9402b5b     	ldr	x27, [x26, #0x50]
    20c8: 92403d37     	and	x23, x9, #0xffff
    20cc: 90000008     	adrp	x8, 0x2000 <get_pack_checksum+0xa0>
		00000000000020cc:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_codetag_base
    20d0: 91000108     	add	x8, x8, #0x0
		00000000000020d0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_codetag_base
    20d4: 91003ae0     	add	x0, x23, #0xe
    20d8: 5281b801     	mov	w1, #0xdc0              // =3520
    20dc: f9002b48     	str	x8, [x26, #0x50]
    20e0: 94000000     	bl	0x20e0 <dri_to_soc_pack_send+0xb4>
		00000000000020e0:  R_AARCH64_CALL26	__kmalloc_noprof
    20e4: aa0003f4     	mov	x20, x0
    20e8: f9002b5b     	str	x27, [x26, #0x50]
    20ec: f9401a61     	ldr	x1, [x19, #0x30]
    20f0: b4fffd34     	cbz	x20, 0x2094 <dri_to_soc_pack_send+0x68>
    20f4: 9000001b     	adrp	x27, 0x2000 <get_pack_checksum+0xa0>
		00000000000020f4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    20f8: 9100037b     	add	x27, x27, #0x0
		00000000000020f8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    20fc: 9000001c     	adrp	x28, 0x2000 <get_pack_checksum+0xa0>
		00000000000020fc:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xebd
    2100: 9100039c     	add	x28, x28, #0x0
		0000000000002100:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xebd
    2104: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		0000000000002104:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xe8
    2108: 91000063     	add	x3, x3, #0x0
		0000000000002108:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xe8
    210c: aa1b03e0     	mov	x0, x27
    2110: aa1c03e2     	mov	x2, x28
    2114: 5280cd04     	mov	w4, #0x668              // =1640
    2118: 94000000     	bl	0x2118 <dri_to_soc_pack_send+0xec>
		0000000000002118:  R_AARCH64_CALL26	_dev_printk
    211c: 110032a8     	add	w8, w21, #0xc
    2120: 52800109     	mov	w9, #0x8                // =8
    2124: f9401a61     	ldr	x1, [x19, #0x30]
    2128: 53087d0a     	lsr	w10, w8, #8
    212c: 72a04009     	movk	w9, #0x200, lsl #16
    2130: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		0000000000002130:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base
    2134: 91000063     	add	x3, x3, #0x0
		0000000000002134:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base
    2138: aa1b03e0     	mov	x0, x27
    213c: aa1c03e2     	mov	x2, x28
    2140: 5280c964     	mov	w4, #0x64b              // =1611
    2144: b9000289     	str	w9, [x20]
    2148: 12003eba     	and	w26, w21, #0xffff
    214c: 3900128a     	strb	w10, [x20, #0x4]
    2150: 39001688     	strb	w8, [x20, #0x5]
    2154: 94000000     	bl	0x2154 <dri_to_soc_pack_send+0x128>
		0000000000002154:  R_AARCH64_CALL26	_dev_printk
    2158: 12001f08     	and	w8, w24, #0xff
    215c: 0b390108     	add	w8, w8, w25, uxtb
    2160: 0b1a011b     	add	w27, w8, w26
    2164: 3400015a     	cbz	w26, 0x218c <dri_to_soc_pack_send+0x160>
    2168: 2a1503e9     	mov	w9, w21
    216c: aa1f03e8     	mov	x8, xzr
    2170: 92403d29     	and	x9, x9, #0xffff
    2174: b8686aca     	ldr	w10, [x22, x8]
    2178: 91001108     	add	x8, x8, #0x4
    217c: eb09011f     	cmp	x8, x9
    2180: 5ac0094a     	rev	w10, w10
    2184: 0b1b015b     	add	w27, w10, w27
    2188: 54ffff63     	b.lo	0x2174 <dri_to_soc_pack_send+0x148>
    218c: f9401a61     	ldr	x1, [x19, #0x30]
    2190: 9000001c     	adrp	x28, 0x2000 <get_pack_checksum+0xa0>
		0000000000002190:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    2194: 9100039c     	add	x28, x28, #0x0
		0000000000002194:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    2198: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002198:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x26f5
    219c: 91000042     	add	x2, x2, #0x0
		000000000000219c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x26f5
    21a0: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		00000000000021a0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base
    21a4: 91000063     	add	x3, x3, #0x0
		00000000000021a4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base
    21a8: aa1c03e0     	mov	x0, x28
    21ac: 5280ca84     	mov	w4, #0x654              // =1620
    21b0: 2a1b03e5     	mov	w5, w27
    21b4: 94000000     	bl	0x21b4 <dri_to_soc_pack_send+0x188>
		00000000000021b4:  R_AARCH64_CALL26	_dev_printk
    21b8: 4b1b03e8     	neg	w8, w27
    21bc: f9401a61     	ldr	x1, [x19, #0x30]
    21c0: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		00000000000021c0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3769
    21c4: 91000042     	add	x2, x2, #0x0
		00000000000021c4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3769
    21c8: 53187d09     	lsr	w9, w8, #24
    21cc: 53107d0a     	lsr	w10, w8, #16
    21d0: 39002688     	strb	w8, [x20, #0x9]
    21d4: 53087d08     	lsr	w8, w8, #8
    21d8: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		00000000000021d8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xe8
    21dc: 91000063     	add	x3, x3, #0x0
		00000000000021dc:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xe8
    21e0: aa1c03e0     	mov	x0, x28
    21e4: 5280d0e4     	mov	w4, #0x687              // =1671
    21e8: 39002288     	strb	w8, [x20, #0x8]
    21ec: 53087ea8     	lsr	w8, w21, #8
    21f0: 2a1a03e5     	mov	w5, w26
    21f4: 39001a89     	strb	w9, [x20, #0x6]
    21f8: 39001e8a     	strb	w10, [x20, #0x7]
    21fc: 39002a99     	strb	w25, [x20, #0xa]
    2200: 39002e98     	strb	w24, [x20, #0xb]
    2204: 39003288     	strb	w8, [x20, #0xc]
    2208: 39003695     	strb	w21, [x20, #0xd]
    220c: 94000000     	bl	0x220c <dri_to_soc_pack_send+0x1e0>
		000000000000220c:  R_AARCH64_CALL26	_dev_printk
    2210: 3400049a     	cbz	w26, 0x22a0 <dri_to_soc_pack_send+0x274>
    2214: 92403ea2     	and	x2, x21, #0xffff
    2218: eb0202ff     	cmp	x23, x2
    221c: 54001663     	b.lo	0x24e8 <dri_to_soc_pack_send+0x4bc>
    2220: 91003a80     	add	x0, x20, #0xe
    2224: aa1603e1     	mov	x1, x22
    2228: 94000000     	bl	0x2228 <dri_to_soc_pack_send+0x1fc>
		0000000000002228:  R_AARCH64_CALL26	memcpy
    222c: f9401668     	ldr	x8, [x19, #0x28]
    2230: f90007ff     	str	xzr, [sp, #0x8]
    2234: 11003ab5     	add	w21, w21, #0xe
    2238: 910023e1     	add	x1, sp, #0x8
    223c: 52800022     	mov	w2, #0x1                // =1
    2240: 79400509     	ldrh	w9, [x8, #0x2]
    2244: f9400d00     	ldr	x0, [x8, #0x18]
    2248: 79001bf5     	strh	w21, [sp, #0xc]
    224c: f9000bf4     	str	x20, [sp, #0x10]
    2250: 790013e9     	strh	w9, [sp, #0x8]
    2254: 94000000     	bl	0x2254 <dri_to_soc_pack_send+0x228>
		0000000000002254:  R_AARCH64_CALL26	i2c_transfer
    2258: 37f80380     	tbnz	w0, #0x1f, 0x22c8 <dri_to_soc_pack_send+0x29c>
    225c: aa1403e0     	mov	x0, x20
    2260: 94000000     	bl	0x2260 <dri_to_soc_pack_send+0x234>
		0000000000002260:  R_AARCH64_CALL26	kfree
    2264: 2a1f03e0     	mov	w0, wzr
    2268: d5384108     	mrs	x8, SP_EL0
    226c: f9438908     	ldr	x8, [x8, #0x710]
    2270: f85f83a9     	ldur	x9, [x29, #-0x8]
    2274: eb09011f     	cmp	x8, x9
    2278: 54001361     	b.ne	0x24e4 <dri_to_soc_pack_send+0x4b8>
    227c: a9474ff4     	ldp	x20, x19, [sp, #0x70]
    2280: a94657f6     	ldp	x22, x21, [sp, #0x60]
    2284: a9455ff8     	ldp	x24, x23, [sp, #0x50]
    2288: a94467fa     	ldp	x26, x25, [sp, #0x40]
    228c: a9436ffc     	ldp	x28, x27, [sp, #0x30]
    2290: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    2294: 910203ff     	add	sp, sp, #0x80
    2298: d50323bf     	autiasp
    229c: d65f03c0     	ret
    22a0: f9401a61     	ldr	x1, [x19, #0x30]
    22a4: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		00000000000022a4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    22a8: 91000000     	add	x0, x0, #0x0
		00000000000022a8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    22ac: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		00000000000022ac:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1489
    22b0: 91000042     	add	x2, x2, #0x0
		00000000000022b0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1489
    22b4: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		00000000000022b4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xe8
    22b8: 91000063     	add	x3, x3, #0x0
		00000000000022b8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xe8
    22bc: 5280d184     	mov	w4, #0x68c              // =1676
    22c0: 94000000     	bl	0x22c0 <dri_to_soc_pack_send+0x294>
		00000000000022c0:  R_AARCH64_CALL26	_dev_printk
    22c4: 17ffffda     	b	0x222c <dri_to_soc_pack_send+0x200>
    22c8: f9401a61     	ldr	x1, [x19, #0x30]
    22cc: 2a0003e6     	mov	w6, w0
    22d0: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		00000000000022d0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    22d4: 91000000     	add	x0, x0, #0x0
		00000000000022d4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    22d8: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		00000000000022d8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x22f8
    22dc: 91000042     	add	x2, x2, #0x0
		00000000000022dc:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x22f8
    22e0: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		00000000000022e0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xe8
    22e4: 91000063     	add	x3, x3, #0x0
		00000000000022e4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xe8
    22e8: 5280d364     	mov	w4, #0x69b              // =1691
    22ec: 528000a5     	mov	w5, #0x5                // =5
    22f0: 94000000     	bl	0x22f0 <dri_to_soc_pack_send+0x2c4>
		00000000000022f0:  R_AARCH64_CALL26	_dev_printk
    22f4: f9401668     	ldr	x8, [x19, #0x28]
    22f8: f90007ff     	str	xzr, [sp, #0x8]
    22fc: 910023e1     	add	x1, sp, #0x8
    2300: 52800022     	mov	w2, #0x1                // =1
    2304: 79400509     	ldrh	w9, [x8, #0x2]
    2308: f9400d00     	ldr	x0, [x8, #0x18]
    230c: 79001bf5     	strh	w21, [sp, #0xc]
    2310: f9000bf4     	str	x20, [sp, #0x10]
    2314: 790013e9     	strh	w9, [sp, #0x8]
    2318: 94000000     	bl	0x2318 <dri_to_soc_pack_send+0x2ec>
		0000000000002318:  R_AARCH64_CALL26	i2c_transfer
    231c: 36fffa00     	tbz	w0, #0x1f, 0x225c <dri_to_soc_pack_send+0x230>
    2320: f9401a61     	ldr	x1, [x19, #0x30]
    2324: 2a0003e6     	mov	w6, w0
    2328: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		0000000000002328:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    232c: 91000000     	add	x0, x0, #0x0
		000000000000232c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    2330: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002330:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x22f8
    2334: 91000042     	add	x2, x2, #0x0
		0000000000002334:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x22f8
    2338: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		0000000000002338:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xe8
    233c: 91000063     	add	x3, x3, #0x0
		000000000000233c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xe8
    2340: 5280d364     	mov	w4, #0x69b              // =1691
    2344: 52800085     	mov	w5, #0x4                // =4
    2348: 94000000     	bl	0x2348 <dri_to_soc_pack_send+0x31c>
		0000000000002348:  R_AARCH64_CALL26	_dev_printk
    234c: f9401668     	ldr	x8, [x19, #0x28]
    2350: f90007ff     	str	xzr, [sp, #0x8]
    2354: 910023e1     	add	x1, sp, #0x8
    2358: 52800022     	mov	w2, #0x1                // =1
    235c: 79400509     	ldrh	w9, [x8, #0x2]
    2360: f9400d00     	ldr	x0, [x8, #0x18]
    2364: 79001bf5     	strh	w21, [sp, #0xc]
    2368: f9000bf4     	str	x20, [sp, #0x10]
    236c: 790013e9     	strh	w9, [sp, #0x8]
    2370: 94000000     	bl	0x2370 <dri_to_soc_pack_send+0x344>
		0000000000002370:  R_AARCH64_CALL26	i2c_transfer
    2374: 36fff740     	tbz	w0, #0x1f, 0x225c <dri_to_soc_pack_send+0x230>
    2378: f9401a61     	ldr	x1, [x19, #0x30]
    237c: 2a0003e6     	mov	w6, w0
    2380: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		0000000000002380:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    2384: 91000000     	add	x0, x0, #0x0
		0000000000002384:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    2388: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002388:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x22f8
    238c: 91000042     	add	x2, x2, #0x0
		000000000000238c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x22f8
    2390: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		0000000000002390:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xe8
    2394: 91000063     	add	x3, x3, #0x0
		0000000000002394:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xe8
    2398: 5280d364     	mov	w4, #0x69b              // =1691
    239c: 52800065     	mov	w5, #0x3                // =3
    23a0: 94000000     	bl	0x23a0 <dri_to_soc_pack_send+0x374>
		00000000000023a0:  R_AARCH64_CALL26	_dev_printk
    23a4: f9401668     	ldr	x8, [x19, #0x28]
    23a8: f90007ff     	str	xzr, [sp, #0x8]
    23ac: 910023e1     	add	x1, sp, #0x8
    23b0: 52800022     	mov	w2, #0x1                // =1
    23b4: 79400509     	ldrh	w9, [x8, #0x2]
    23b8: f9400d00     	ldr	x0, [x8, #0x18]
    23bc: 79001bf5     	strh	w21, [sp, #0xc]
    23c0: f9000bf4     	str	x20, [sp, #0x10]
    23c4: 790013e9     	strh	w9, [sp, #0x8]
    23c8: 94000000     	bl	0x23c8 <dri_to_soc_pack_send+0x39c>
		00000000000023c8:  R_AARCH64_CALL26	i2c_transfer
    23cc: 36fff480     	tbz	w0, #0x1f, 0x225c <dri_to_soc_pack_send+0x230>
    23d0: f9401a61     	ldr	x1, [x19, #0x30]
    23d4: 2a0003e6     	mov	w6, w0
    23d8: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		00000000000023d8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    23dc: 91000000     	add	x0, x0, #0x0
		00000000000023dc:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    23e0: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		00000000000023e0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x22f8
    23e4: 91000042     	add	x2, x2, #0x0
		00000000000023e4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x22f8
    23e8: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		00000000000023e8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xe8
    23ec: 91000063     	add	x3, x3, #0x0
		00000000000023ec:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xe8
    23f0: 5280d364     	mov	w4, #0x69b              // =1691
    23f4: 52800045     	mov	w5, #0x2                // =2
    23f8: 94000000     	bl	0x23f8 <dri_to_soc_pack_send+0x3cc>
		00000000000023f8:  R_AARCH64_CALL26	_dev_printk
    23fc: f9401668     	ldr	x8, [x19, #0x28]
    2400: f90007ff     	str	xzr, [sp, #0x8]
    2404: 910023e1     	add	x1, sp, #0x8
    2408: 52800022     	mov	w2, #0x1                // =1
    240c: 79400509     	ldrh	w9, [x8, #0x2]
    2410: f9400d00     	ldr	x0, [x8, #0x18]
    2414: 79001bf5     	strh	w21, [sp, #0xc]
    2418: f9000bf4     	str	x20, [sp, #0x10]
    241c: 790013e9     	strh	w9, [sp, #0x8]
    2420: 94000000     	bl	0x2420 <dri_to_soc_pack_send+0x3f4>
		0000000000002420:  R_AARCH64_CALL26	i2c_transfer
    2424: 36fff1c0     	tbz	w0, #0x1f, 0x225c <dri_to_soc_pack_send+0x230>
    2428: f9401a61     	ldr	x1, [x19, #0x30]
    242c: 2a0003e6     	mov	w6, w0
    2430: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		0000000000002430:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    2434: 91000000     	add	x0, x0, #0x0
		0000000000002434:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    2438: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002438:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x22f8
    243c: 91000042     	add	x2, x2, #0x0
		000000000000243c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x22f8
    2440: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		0000000000002440:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xe8
    2444: 91000063     	add	x3, x3, #0x0
		0000000000002444:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xe8
    2448: 5280d364     	mov	w4, #0x69b              // =1691
    244c: 52800025     	mov	w5, #0x1                // =1
    2450: 94000000     	bl	0x2450 <dri_to_soc_pack_send+0x424>
		0000000000002450:  R_AARCH64_CALL26	_dev_printk
    2454: f9401668     	ldr	x8, [x19, #0x28]
    2458: f90007ff     	str	xzr, [sp, #0x8]
    245c: 910023e1     	add	x1, sp, #0x8
    2460: 52800022     	mov	w2, #0x1                // =1
    2464: 79400509     	ldrh	w9, [x8, #0x2]
    2468: f9400d00     	ldr	x0, [x8, #0x18]
    246c: 79001bf5     	strh	w21, [sp, #0xc]
    2470: f9000bf4     	str	x20, [sp, #0x10]
    2474: 790013e9     	strh	w9, [sp, #0x8]
    2478: 94000000     	bl	0x2478 <dri_to_soc_pack_send+0x44c>
		0000000000002478:  R_AARCH64_CALL26	i2c_transfer
    247c: 36ffef00     	tbz	w0, #0x1f, 0x225c <dri_to_soc_pack_send+0x230>
    2480: 2a0003f5     	mov	w21, w0
    2484: f9401a61     	ldr	x1, [x19, #0x30]
    2488: 90000016     	adrp	x22, 0x2000 <get_pack_checksum+0xa0>
		0000000000002488:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xe8
    248c: 910002d6     	add	x22, x22, #0x0
		000000000000248c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xe8
    2490: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		0000000000002490:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    2494: 91000000     	add	x0, x0, #0x0
		0000000000002494:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    2498: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002498:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x22f8
    249c: 91000042     	add	x2, x2, #0x0
		000000000000249c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x22f8
    24a0: aa1603e3     	mov	x3, x22
    24a4: 5280d364     	mov	w4, #0x69b              // =1691
    24a8: 2a1f03e5     	mov	w5, wzr
    24ac: 2a1503e6     	mov	w6, w21
    24b0: 94000000     	bl	0x24b0 <dri_to_soc_pack_send+0x484>
		00000000000024b0:  R_AARCH64_CALL26	_dev_printk
    24b4: aa1403e0     	mov	x0, x20
    24b8: 94000000     	bl	0x24b8 <dri_to_soc_pack_send+0x48c>
		00000000000024b8:  R_AARCH64_CALL26	kfree
    24bc: f9401a61     	ldr	x1, [x19, #0x30]
    24c0: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		00000000000024c0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    24c4: 91000000     	add	x0, x0, #0x0
		00000000000024c4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    24c8: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		00000000000024c8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x131a
    24cc: 91000042     	add	x2, x2, #0x0
		00000000000024cc:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x131a
    24d0: aa1603e3     	mov	x3, x22
    24d4: 5280d484     	mov	w4, #0x6a4              // =1700
    24d8: 2a1503e5     	mov	w5, w21
    24dc: 94000000     	bl	0x24dc <dri_to_soc_pack_send+0x4b0>
		00000000000024dc:  R_AARCH64_CALL26	_dev_printk
    24e0: 17fffef5     	b	0x20b4 <dri_to_soc_pack_send+0x88>
    24e4: 94000000     	bl	0x24e4 <dri_to_soc_pack_send+0x4b8>
		00000000000024e4:  R_AARCH64_CALL26	__stack_chk_fail
    24e8: 52800220     	mov	w0, #0x11               // =17
    24ec: aa1703e1     	mov	x1, x23
    24f0: 94000000     	bl	0x24f0 <dri_to_soc_pack_send+0x4c4>
		00000000000024f0:  R_AARCH64_CALL26	__fortify_panic
