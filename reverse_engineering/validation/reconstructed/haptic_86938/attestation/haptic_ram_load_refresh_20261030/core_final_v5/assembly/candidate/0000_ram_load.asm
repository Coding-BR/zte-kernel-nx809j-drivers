
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001fcc <ram_load>:
    1fcc: d503233f     	paciasp
    1fd0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    1fd4: a9015ff8     	stp	x24, x23, [sp, #0x10]
    1fd8: a90257f6     	stp	x22, x21, [sp, #0x20]
    1fdc: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1fe0: 910003fd     	mov	x29, sp
    1fe4: 90000015     	adrp	x21, 0x1000 <aw8693x_set_bst_vol+0x18>
		0000000000001fe4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
    1fe8: 90000009     	adrp	x9, 0x1000 <aw8693x_set_bst_vol+0x18>
		0000000000001fe8:  R_AARCH64_ADR_PREL_PG_HI21	aw_ram_name
    1fec: aa0103f3     	mov	x19, x1
    1ff0: 394002a8     	ldrb	w8, [x21]
		0000000000001ff0:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x8
    1ff4: f9400124     	ldr	x4, [x9]
		0000000000001ff4:  R_AARCH64_LDST64_ABS_LO12_NC	aw_ram_name
    1ff8: 11000508     	add	w8, w8, #0x1
    1ffc: 390002a8     	strb	w8, [x21]
		0000000000001ffc:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x8
    2000: b50003c0     	cbnz	x0, 0x2078 <ram_load+0xac>
    2004: 90000000     	adrp	x0, 0x2000 <ram_load+0x34>
		0000000000002004:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x571
    2008: 91000000     	add	x0, x0, #0x0
		0000000000002008:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x571
    200c: 90000001     	adrp	x1, 0x2000 <ram_load+0x34>
		000000000000200c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    2010: 91000021     	add	x1, x1, #0x0
		0000000000002010:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    2014: 90000003     	adrp	x3, 0x2000 <ram_load+0x34>
		0000000000002014:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fa
    2018: 91000063     	add	x3, x3, #0x0
		0000000000002018:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fa
    201c: 5280dd22     	mov	w2, #0x6e9              // =1769
    2020: 94000000     	bl	0x2020 <ram_load+0x54>
		0000000000002020:  R_AARCH64_CALL26	_printk
    2024: aa1f03e0     	mov	x0, xzr
    2028: 94000000     	bl	0x2028 <ram_load+0x5c>
		0000000000002028:  R_AARCH64_CALL26	release_firmware
    202c: 394002a8     	ldrb	w8, [x21]
		000000000000202c:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x8
    2030: 7100511f     	cmp	w8, #0x14
    2034: 540016e8     	b.hi	0x2310 <ram_load+0x344>
    2038: 90000008     	adrp	x8, 0x2000 <ram_load+0x34>
		0000000000002038:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    203c: 910f0262     	add	x2, x19, #0x3c0
    2040: 52800400     	mov	w0, #0x20               // =32
    2044: f9400101     	ldr	x1, [x8]
		0000000000002044:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    2048: 52801f43     	mov	w3, #0xfa               // =250
    204c: 94000000     	bl	0x204c <ram_load+0x80>
		000000000000204c:  R_AARCH64_CALL26	queue_delayed_work_on
    2050: 394002a4     	ldrb	w4, [x21]
		0000000000002050:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x8
    2054: 90000000     	adrp	x0, 0x2000 <ram_load+0x34>
		0000000000002054:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x594
    2058: 91000000     	add	x0, x0, #0x0
		0000000000002058:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x594
    205c: 90000001     	adrp	x1, 0x2000 <ram_load+0x34>
		000000000000205c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    2060: 91000021     	add	x1, x1, #0x0
		0000000000002060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    2064: 90000003     	adrp	x3, 0x2000 <ram_load+0x34>
		0000000000002064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fa
    2068: 91000063     	add	x3, x3, #0x0
		0000000000002068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fa
    206c: 5280dde2     	mov	w2, #0x6ef              // =1775
    2070: 94000000     	bl	0x2070 <ram_load+0xa4>
		0000000000002070:  R_AARCH64_CALL26	_printk
    2074: 140000a7     	b	0x2310 <ram_load+0x344>
    2078: f9400005     	ldr	x5, [x0]
    207c: aa0003f4     	mov	x20, x0
    2080: 90000000     	adrp	x0, 0x2000 <ram_load+0x34>
		0000000000002080:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb2b
    2084: 91000000     	add	x0, x0, #0x0
		0000000000002084:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb2b
    2088: 90000001     	adrp	x1, 0x2000 <ram_load+0x34>
		0000000000002088:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    208c: 91000021     	add	x1, x1, #0x0
		000000000000208c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    2090: 90000003     	adrp	x3, 0x2000 <ram_load+0x34>
		0000000000002090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fa
    2094: 91000063     	add	x3, x3, #0x0
		0000000000002094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fa
    2098: 5280de82     	mov	w2, #0x6f4              // =1780
    209c: 94000000     	bl	0x209c <ram_load+0xd0>
		000000000000209c:  R_AARCH64_CALL26	_printk
    20a0: a9402289     	ldp	x9, x8, [x20]
    20a4: f1000d2e     	subs	x14, x9, #0x3
    20a8: 54000203     	b.lo	0x20e8 <ram_load+0x11c>
    20ac: d100092d     	sub	x13, x9, #0x2
    20b0: f10009bf     	cmp	x13, #0x2
    20b4: 54000762     	b.hs	0x21a0 <ram_load+0x1d4>
    20b8: 2a1f03eb     	mov	w11, wzr
    20bc: 5280004a     	mov	w10, #0x2               // =2
    20c0: 5280004c     	mov	w12, #0x2               // =2
    20c4: 1100058c     	add	w12, w12, #0x1
    20c8: 386a690d     	ldrb	w13, [x8, x10]
    20cc: 93407d8a     	sxtw	x10, w12
    20d0: 1100058c     	add	w12, w12, #0x1
    20d4: eb0a013f     	cmp	x9, x10
    20d8: 0b0d016b     	add	w11, w11, w13
    20dc: 54ffff68     	b.hi	0x20c8 <ram_load+0xfc>
    20e0: 12003d75     	and	w21, w11, #0xffff
    20e4: 14000002     	b	0x20ec <ram_load+0x120>
    20e8: 2a1f03f5     	mov	w21, wzr
    20ec: 79400108     	ldrh	w8, [x8]
    20f0: 5ac00908     	rev	w8, w8
    20f4: 6b4842bf     	cmp	w21, w8, lsr #16
    20f8: 540003c1     	b.ne	0x2170 <ram_load+0x1a4>
    20fc: 90000000     	adrp	x0, 0x2000 <ram_load+0x34>
		00000000000020fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd44
    2100: 91000000     	add	x0, x0, #0x0
		0000000000002100:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd44
    2104: 90000001     	adrp	x1, 0x2000 <ram_load+0x34>
		0000000000002104:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    2108: 91000021     	add	x1, x1, #0x0
		0000000000002108:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    210c: 90000003     	adrp	x3, 0x2000 <ram_load+0x34>
		000000000000210c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fa
    2110: 91000063     	add	x3, x3, #0x0
		0000000000002110:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fa
    2114: 5280dfa2     	mov	w2, #0x6fd              // =1789
    2118: 2a1503e4     	mov	w4, w21
    211c: 94000000     	bl	0x211c <ram_load+0x150>
		000000000000211c:  R_AARCH64_CALL26	_printk
    2120: b9045675     	str	w21, [x19, #0x454]
    2124: d503201f     	nop
    2128: f9400288     	ldr	x8, [x20]
    212c: 5281b801     	mov	w1, #0xdc0              // =3520
    2130: 91001116     	add	x22, x8, #0x4
    2134: aa1603e0     	mov	x0, x22
    2138: 94000000     	bl	0x2138 <ram_load+0x16c>
		0000000000002138:  R_AARCH64_CALL26	__kmalloc_noprof
    213c: aa0003f5     	mov	x21, x0
    2140: b5000835     	cbnz	x21, 0x2244 <ram_load+0x278>
    2144: aa1403e0     	mov	x0, x20
    2148: 94000000     	bl	0x2148 <ram_load+0x17c>
		0000000000002148:  R_AARCH64_CALL26	release_firmware
    214c: 90000000     	adrp	x0, 0x2000 <ram_load+0x34>
		000000000000214c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23e
    2150: 91000000     	add	x0, x0, #0x0
		0000000000002150:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23e
    2154: 90000001     	adrp	x1, 0x2000 <ram_load+0x34>
		0000000000002154:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    2158: 91000021     	add	x1, x1, #0x0
		0000000000002158:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    215c: 90000003     	adrp	x3, 0x2000 <ram_load+0x34>
		000000000000215c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fa
    2160: 91000063     	add	x3, x3, #0x0
		0000000000002160:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fa
    2164: 5280e082     	mov	w2, #0x704              // =1796
    2168: 94000000     	bl	0x2168 <ram_load+0x19c>
		0000000000002168:  R_AARCH64_CALL26	_printk
    216c: 14000069     	b	0x2310 <ram_load+0x344>
    2170: 90000000     	adrp	x0, 0x2000 <ram_load+0x34>
		0000000000002170:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22
    2174: 91000000     	add	x0, x0, #0x0
		0000000000002174:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22
    2178: 90000001     	adrp	x1, 0x2000 <ram_load+0x34>
		0000000000002178:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    217c: 91000021     	add	x1, x1, #0x0
		000000000000217c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    2180: 90000003     	adrp	x3, 0x2000 <ram_load+0x34>
		0000000000002180:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fa
    2184: 91000063     	add	x3, x3, #0x0
		0000000000002184:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fa
    2188: 5280df22     	mov	w2, #0x6f9              // =1785
    218c: 2a1503e4     	mov	w4, w21
    2190: 94000000     	bl	0x2190 <ram_load+0x1c4>
		0000000000002190:  R_AARCH64_CALL26	_printk
    2194: aa1403e0     	mov	x0, x20
    2198: 94000000     	bl	0x2198 <ram_load+0x1cc>
		0000000000002198:  R_AARCH64_CALL26	release_firmware
    219c: 1400005d     	b	0x2310 <ram_load+0x344>
    21a0: 529fffaa     	mov	w10, #0xfffd            // =65533
    21a4: 2a1f03eb     	mov	w11, wzr
    21a8: 5280004c     	mov	w12, #0x2               // =2
    21ac: 72afffea     	movk	w10, #0x7fff, lsl #16
    21b0: 6b0a01df     	cmp	w14, w10
    21b4: 5280004a     	mov	w10, #0x2               // =2
    21b8: 54fff868     	b.hi	0x20c4 <ram_load+0xf8>
    21bc: 321e73ef     	mov	w15, #0x7ffffffc        // =2147483644
    21c0: 6b0f01df     	cmp	w14, w15
    21c4: 54fff808     	b.hi	0x20c4 <ram_load+0xf8>
    21c8: d360fdce     	lsr	x14, x14, #32
    21cc: b5fff7ce     	cbnz	x14, 0x20c4 <ram_load+0xf8>
    21d0: 927ff9af     	and	x15, x13, #0xfffffffffffffffe
    21d4: 2a1f03eb     	mov	w11, wzr
    21d8: 91000d10     	add	x16, x8, #0x3
    21dc: 910009ea     	add	x10, x15, #0x2
    21e0: 110009ec     	add	w12, w15, #0x2
    21e4: aa0f03f1     	mov	x17, x15
    21e8: 385ff200     	ldurb	w0, [x16, #-0x1]
    21ec: 38402601     	ldrb	w1, [x16], #0x2
    21f0: f1000a31     	subs	x17, x17, #0x2
    21f4: 0b00016b     	add	w11, w11, w0
    21f8: 0b0101ce     	add	w14, w14, w1
    21fc: 54ffff61     	b.ne	0x21e8 <ram_load+0x21c>
    2200: eb0f01bf     	cmp	x13, x15
    2204: 0b0b01cb     	add	w11, w14, w11
    2208: 54fff5e1     	b.ne	0x20c4 <ram_load+0xf8>
    220c: 17ffffb5     	b	0x20e0 <ram_load+0x114>
    2210: 90000008     	adrp	x8, 0x2000 <ram_load+0x34>
		0000000000002210:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x28
    2214: 91000108     	add	x8, x8, #0x0
		0000000000002214:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x28
    2218: d5384117     	mrs	x23, SP_EL0
    221c: f9402af8     	ldr	x24, [x23, #0x50]
    2220: f9002ae8     	str	x8, [x23, #0x50]
    2224: 5281b801     	mov	w1, #0xdc0              // =3520
    2228: f9400288     	ldr	x8, [x20]
    222c: 91001116     	add	x22, x8, #0x4
    2230: aa1603e0     	mov	x0, x22
    2234: 94000000     	bl	0x2234 <ram_load+0x268>
		0000000000002234:  R_AARCH64_CALL26	__kmalloc_noprof
    2238: aa0003f5     	mov	x21, x0
    223c: f9002af8     	str	x24, [x23, #0x50]
    2240: b4fff835     	cbz	x21, 0x2144 <ram_load+0x178>
    2244: f10012c8     	subs	x8, x22, #0x4
    2248: 54000703     	b.lo	0x2328 <ram_load+0x35c>
    224c: f9400282     	ldr	x2, [x20]
    2250: 9a8833e1     	csel	x1, xzr, x8, lo
    2254: eb02003f     	cmp	x1, x2
    2258: b90002a2     	str	w2, [x21]
    225c: 54000683     	b.lo	0x232c <ram_load+0x360>
    2260: f9400681     	ldr	x1, [x20, #0x8]
    2264: 910012a0     	add	x0, x21, #0x4
    2268: 94000000     	bl	0x2268 <ram_load+0x29c>
		0000000000002268:  R_AARCH64_CALL26	memcpy
    226c: aa1403e0     	mov	x0, x20
    2270: 94000000     	bl	0x2270 <ram_load+0x2a4>
		0000000000002270:  R_AARCH64_CALL26	release_firmware
    2274: f942e668     	ldr	x8, [x19, #0x5c8]
    2278: aa1303e0     	mov	x0, x19
    227c: aa1503e1     	mov	x1, x21
    2280: f9401908     	ldr	x8, [x8, #0x30]
    2284: b85fc110     	ldur	w16, [x8, #-0x4]
    2288: 72818211     	movk	w17, #0xc10
    228c: 72ba2e11     	movk	w17, #0xd170, lsl #16
    2290: 6b11021f     	cmp	w16, w17
    2294: 54000040     	b.eq	0x229c <ram_load+0x2d0>
    2298: d4304500     	brk	#0x8228
    229c: d63f0100     	blr	x8
    22a0: 35000240     	cbnz	w0, 0x22e8 <ram_load+0x31c>
    22a4: b94002a8     	ldr	w8, [x21]
    22a8: 39517a69     	ldrb	w9, [x19, #0x45e]
    22ac: 5280002a     	mov	w10, #0x1               // =1
    22b0: 90000000     	adrp	x0, 0x2000 <ram_load+0x34>
		00000000000022b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x856
    22b4: 91000000     	add	x0, x0, #0x0
		00000000000022b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x856
    22b8: 90000001     	adrp	x1, 0x2000 <ram_load+0x34>
		00000000000022b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    22bc: 91000021     	add	x1, x1, #0x0
		00000000000022bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    22c0: 4b090108     	sub	w8, w8, w9
    22c4: 90000003     	adrp	x3, 0x2000 <ram_load+0x34>
		00000000000022c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fa
    22c8: 91000063     	add	x3, x3, #0x0
		00000000000022c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fa
    22cc: 5280e222     	mov	w2, #0x711              // =1809
    22d0: 39001a6a     	strb	w10, [x19, #0x6]
    22d4: b9045268     	str	w8, [x19, #0x450]
    22d8: 94000000     	bl	0x22d8 <ram_load+0x30c>
		00000000000022d8:  R_AARCH64_CALL26	_printk
    22dc: aa1303e0     	mov	x0, x19
    22e0: 94000000     	bl	0x22e0 <ram_load+0x314>
		00000000000022e0:  R_AARCH64_CALL26	get_ram_num
    22e4: 14000009     	b	0x2308 <ram_load+0x33c>
    22e8: 90000000     	adrp	x0, 0x2000 <ram_load+0x34>
		00000000000022e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc64
    22ec: 91000000     	add	x0, x0, #0x0
		00000000000022ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc64
    22f0: 90000001     	adrp	x1, 0x2000 <ram_load+0x34>
		00000000000022f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    22f4: 91000021     	add	x1, x1, #0x0
		00000000000022f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    22f8: 90000003     	adrp	x3, 0x2000 <ram_load+0x34>
		00000000000022f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fa
    22fc: 91000063     	add	x3, x3, #0x0
		00000000000022fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fa
    2300: 5280e182     	mov	w2, #0x70c              // =1804
    2304: 94000000     	bl	0x2304 <ram_load+0x338>
		0000000000002304:  R_AARCH64_CALL26	_printk
    2308: aa1503e0     	mov	x0, x21
    230c: 94000000     	bl	0x230c <ram_load+0x340>
		000000000000230c:  R_AARCH64_CALL26	kfree
    2310: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    2314: a94257f6     	ldp	x22, x21, [sp, #0x20]
    2318: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    231c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    2320: d50323bf     	autiasp
    2324: d65f03c0     	ret
    2328: d4200020     	brk	#0x1
    232c: 52800220     	mov	w0, #0x11               // =17
    2330: 94000000     	bl	0x2330 <ram_load+0x364>
		0000000000002330:  R_AARCH64_CALL26	__fortify_panic
