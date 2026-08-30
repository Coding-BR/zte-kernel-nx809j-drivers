
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000023270 <syna_sysfs_info_show>:
   23270: d503233f     	paciasp
   23274: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   23278: a90167fa     	stp	x26, x25, [sp, #0x10]
   2327c: a9025ff8     	stp	x24, x23, [sp, #0x20]
   23280: a90357f6     	stp	x22, x21, [sp, #0x30]
   23284: a9044ff4     	stp	x20, x19, [sp, #0x40]
   23288: 910003fd     	mov	x29, sp
   2328c: f9400c08     	ldr	x8, [x0, #0x18]
   23290: aa0203f4     	mov	x20, x2
   23294: 90000002     	adrp	x2, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1beaf
   23298: 91000042     	add	x2, x2, #0x0
		0000000000023298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1beaf
   2329c: 90000004     	adrp	x4, 0x23000 <syna_spi_alloc_mem+0xc>
		000000000002329c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af0e
   232a0: 91000084     	add	x4, x4, #0x0
		00000000000232a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af0e
   232a4: f9404d17     	ldr	x23, [x8, #0x98]
   232a8: aa1403e0     	mov	x0, x20
   232ac: 52820001     	mov	w1, #0x1000             // =4096
   232b0: 52800023     	mov	w3, #0x1                // =1
   232b4: f94002f6     	ldr	x22, [x23]
   232b8: 94000000     	bl	0x232b8 <syna_sysfs_info_show+0x48>
		00000000000232b8:  R_AARCH64_CALL26	scnprintf
   232bc: 2a0003f3     	mov	w19, w0
   232c0: 37f81aa0     	tbnz	w0, #0x1f, 0x23614 <syna_sysfs_info_show+0x3a4>
   232c4: 2a1303e8     	mov	w8, w19
   232c8: 52820009     	mov	w9, #0x1000             // =4096
   232cc: 90000002     	adrp	x2, 0x23000 <syna_spi_alloc_mem+0xc>
		00000000000232cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b13a
   232d0: 91000042     	add	x2, x2, #0x0
		00000000000232d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b13a
   232d4: 8b080294     	add	x20, x20, x8
   232d8: cb080121     	sub	x1, x9, x8
   232dc: aa1403e0     	mov	x0, x20
   232e0: 52800043     	mov	w3, #0x2                // =2
   232e4: 52800184     	mov	w4, #0xc                // =12
   232e8: 94000000     	bl	0x232e8 <syna_sysfs_info_show+0x78>
		00000000000232e8:  R_AARCH64_CALL26	scnprintf
   232ec: 37f81920     	tbnz	w0, #0x1f, 0x23610 <syna_sysfs_info_show+0x3a0>
   232f0: b9457ee8     	ldr	w8, [x23, #0x57c]
   232f4: 39560ae9     	ldrb	w9, [x23, #0x582]
   232f8: 2a0003ea     	mov	w10, w0
   232fc: 8b204280     	add	x0, x20, w0, uxtw
   23300: 0b130155     	add	w21, w10, w19
   23304: 71000d1f     	cmp	w8, #0x3
   23308: 36000489     	tbz	w9, #0x0, 0x23398 <syna_sysfs_info_show+0x128>
   2330c: 54000480     	b.eq	0x2339c <syna_sysfs_info_show+0x12c>
   23310: 52820008     	mov	w8, #0x1000             // =4096
   23314: b94386e4     	ldr	w4, [x23, #0x384]
   23318: 90000002     	adrp	x2, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023318:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18866
   2331c: 91000042     	add	x2, x2, #0x0
		000000000002331c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18866
   23320: cb354101     	sub	x1, x8, w21, uxtw
   23324: 90000003     	adrp	x3, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023324:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a918
   23328: 91000063     	add	x3, x3, #0x0
		0000000000023328:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a918
   2332c: aa0003f4     	mov	x20, x0
   23330: 94000000     	bl	0x23330 <syna_sysfs_info_show+0xc0>
		0000000000023330:  R_AARCH64_CALL26	scnprintf
   23334: 2a0003f3     	mov	w19, w0
   23338: 37f816e0     	tbnz	w0, #0x1f, 0x23614 <syna_sysfs_info_show+0x3a4>
   2333c: 8b334294     	add	x20, x20, w19, uxtw
   23340: 0b150275     	add	w21, w19, w21
   23344: 52820008     	mov	w8, #0x1000             // =4096
   23348: 394202c3     	ldrb	w3, [x22, #0x80]
   2334c: cb150101     	sub	x1, x8, x21
   23350: 90000002     	adrp	x2, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bb40
   23354: 91000042     	add	x2, x2, #0x0
		0000000000023354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bb40
   23358: aa1403e0     	mov	x0, x20
   2335c: 94000000     	bl	0x2335c <syna_sysfs_info_show+0xec>
		000000000002335c:  R_AARCH64_CALL26	scnprintf
   23360: 2a0003f3     	mov	w19, w0
   23364: 37f81580     	tbnz	w0, #0x1f, 0x23614 <syna_sysfs_info_show+0x3a4>
   23368: 394206c3     	ldrb	w3, [x22, #0x81]
   2336c: 8b334294     	add	x20, x20, w19, uxtw
   23370: 0b150275     	add	w21, w19, w21
   23374: 52820008     	mov	w8, #0x1000             // =4096
   23378: 71002c7f     	cmp	w3, #0xb
   2337c: 54000260     	b.eq	0x233c8 <syna_sysfs_info_show+0x158>
   23380: 7100047f     	cmp	w3, #0x1
   23384: 540002a1     	b.ne	0x233d8 <syna_sysfs_info_show+0x168>
   23388: cb354101     	sub	x1, x8, w21, uxtw
   2338c: 90000002     	adrp	x2, 0x23000 <syna_spi_alloc_mem+0xc>
		000000000002338c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a08b
   23390: 91000042     	add	x2, x2, #0x0
		0000000000023390:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a08b
   23394: 14000014     	b	0x233e4 <syna_sysfs_info_show+0x174>
   23398: 540000a1     	b.ne	0x233ac <syna_sysfs_info_show+0x13c>
   2339c: 52820008     	mov	w8, #0x1000             // =4096
   233a0: 90000002     	adrp	x2, 0x23000 <syna_spi_alloc_mem+0xc>
		00000000000233a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d08
   233a4: 91000042     	add	x2, x2, #0x0
		00000000000233a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d08
   233a8: 14000004     	b	0x233b8 <syna_sysfs_info_show+0x148>
   233ac: 52820008     	mov	w8, #0x1000             // =4096
   233b0: 90000002     	adrp	x2, 0x23000 <syna_spi_alloc_mem+0xc>
		00000000000233b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c892
   233b4: 91000042     	add	x2, x2, #0x0
		00000000000233b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c892
   233b8: cb354101     	sub	x1, x8, w21, uxtw
   233bc: 94000000     	bl	0x233bc <syna_sysfs_info_show+0x14c>
		00000000000233bc:  R_AARCH64_CALL26	scnprintf
   233c0: 0b150013     	add	w19, w0, w21
   233c4: 14000094     	b	0x23614 <syna_sysfs_info_show+0x3a4>
   233c8: cb354101     	sub	x1, x8, w21, uxtw
   233cc: 90000002     	adrp	x2, 0x23000 <syna_spi_alloc_mem+0xc>
		00000000000233cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x193a7
   233d0: 91000042     	add	x2, x2, #0x0
		00000000000233d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x193a7
   233d4: 14000004     	b	0x233e4 <syna_sysfs_info_show+0x174>
   233d8: cb354101     	sub	x1, x8, w21, uxtw
   233dc: 90000002     	adrp	x2, 0x23000 <syna_spi_alloc_mem+0xc>
		00000000000233dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18616
   233e0: 91000042     	add	x2, x2, #0x0
		00000000000233e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18616
   233e4: aa1403e0     	mov	x0, x20
   233e8: 94000000     	bl	0x233e8 <syna_sysfs_info_show+0x178>
		00000000000233e8:  R_AARCH64_CALL26	scnprintf
   233ec: 2a0003f3     	mov	w19, w0
   233f0: 37f81120     	tbnz	w0, #0x1f, 0x23614 <syna_sysfs_info_show+0x3a4>
   233f4: 8b334294     	add	x20, x20, w19, uxtw
   233f8: 0b150275     	add	w21, w19, w21
   233fc: 52820017     	mov	w23, #0x1000            // =4096
   23400: cb1502e1     	sub	x1, x23, x21
   23404: 90000002     	adrp	x2, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023404:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a612
   23408: 91000042     	add	x2, x2, #0x0
		0000000000023408:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a612
   2340c: aa1403e0     	mov	x0, x20
   23410: 94000000     	bl	0x23410 <syna_sysfs_info_show+0x1a0>
		0000000000023410:  R_AARCH64_CALL26	scnprintf
   23414: 2a0003f3     	mov	w19, w0
   23418: 37f80fe0     	tbnz	w0, #0x1f, 0x23614 <syna_sysfs_info_show+0x3a4>
   2341c: b1020ac9     	adds	x9, x22, #0x82
   23420: 54001180     	b.eq	0x23650 <syna_sysfs_info_show+0x3e0>
   23424: 8b334288     	add	x8, x20, w19, uxtw
   23428: b4001148     	cbz	x8, 0x23650 <syna_sysfs_info_show+0x3e0>
   2342c: 0b1302aa     	add	w10, w21, w19
   23430: 4b0a02e3     	sub	w3, w23, w10
   23434: 71003c7f     	cmp	w3, #0xf
   23438: 54000fe9     	b.ls	0x23634 <syna_sysfs_info_show+0x3c4>
   2343c: a9402d29     	ldp	x9, x11, [x9]
   23440: 11004155     	add	w21, w10, #0x10
   23444: 5282000a     	mov	w10, #0x1000            // =4096
   23448: 91004114     	add	x20, x8, #0x10
   2344c: 90000002     	adrp	x2, 0x23000 <syna_spi_alloc_mem+0xc>
		000000000002344c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a9ab
   23450: 91000042     	add	x2, x2, #0x0
		0000000000023450:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a9ab
   23454: cb150141     	sub	x1, x10, x21
   23458: aa1403e0     	mov	x0, x20
   2345c: a9002d09     	stp	x9, x11, [x8]
   23460: 94000000     	bl	0x23460 <syna_sysfs_info_show+0x1f0>
		0000000000023460:  R_AARCH64_CALL26	scnprintf
   23464: 2a0003f3     	mov	w19, w0
   23468: 37f80d60     	tbnz	w0, #0x1f, 0x23614 <syna_sysfs_info_show+0x3a4>
   2346c: 8b334294     	add	x20, x20, w19, uxtw
   23470: 0b150273     	add	w19, w19, w21
   23474: 52820008     	mov	w8, #0x1000             // =4096
   23478: b9400ec3     	ldr	w3, [x22, #0xc]
   2347c: cb130101     	sub	x1, x8, x19
   23480: 90000002     	adrp	x2, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023480:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bb87
   23484: 91000042     	add	x2, x2, #0x0
		0000000000023484:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bb87
   23488: aa1403e0     	mov	x0, x20
   2348c: 94000000     	bl	0x2348c <syna_sysfs_info_show+0x21c>
		000000000002348c:  R_AARCH64_CALL26	scnprintf
   23490: 37f80c00     	tbnz	w0, #0x1f, 0x23610 <syna_sysfs_info_show+0x3a0>
   23494: 394206c8     	ldrb	w8, [x22, #0x81]
   23498: 0b130013     	add	w19, w0, w19
   2349c: 7100051f     	cmp	w8, #0x1
   234a0: 54000ba1     	b.ne	0x23614 <syna_sysfs_info_show+0x3a4>
   234a4: 52820008     	mov	w8, #0x1000             // =4096
   234a8: 8b204294     	add	x20, x20, w0, uxtw
   234ac: 90000002     	adrp	x2, 0x23000 <syna_spi_alloc_mem+0xc>
		00000000000234ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x193cf
   234b0: 91000042     	add	x2, x2, #0x0
		00000000000234b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x193cf
   234b4: cb334101     	sub	x1, x8, w19, uxtw
   234b8: aa1403e0     	mov	x0, x20
   234bc: 94000000     	bl	0x234bc <syna_sysfs_info_show+0x24c>
		00000000000234bc:  R_AARCH64_CALL26	scnprintf
   234c0: 37f80a80     	tbnz	w0, #0x1f, 0x23610 <syna_sysfs_info_show+0x3a0>
   234c4: 8b204294     	add	x20, x20, w0, uxtw
   234c8: aa1f03f8     	mov	x24, xzr
   234cc: 0b130017     	add	w23, w0, w19
   234d0: 910092d9     	add	x25, x22, #0x24
   234d4: 5282001a     	mov	w26, #0x1000            // =4096
   234d8: 90000015     	adrp	x21, 0x23000 <syna_spi_alloc_mem+0xc>
		00000000000234d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d23
   234dc: 910002b5     	add	x21, x21, #0x0
		00000000000234dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d23
   234e0: cb374341     	sub	x1, x26, w23, uxtw
   234e4: 38786b23     	ldrb	w3, [x25, x24]
   234e8: aa1403e0     	mov	x0, x20
   234ec: aa1503e2     	mov	x2, x21
   234f0: 94000000     	bl	0x234f0 <syna_sysfs_info_show+0x280>
		00000000000234f0:  R_AARCH64_CALL26	scnprintf
   234f4: 2a0003f3     	mov	w19, w0
   234f8: 37f808e0     	tbnz	w0, #0x1f, 0x23614 <syna_sysfs_info_show+0x3a4>
   234fc: 91000718     	add	x24, x24, #0x1
   23500: 8b334294     	add	x20, x20, w19, uxtw
   23504: 0b170277     	add	w23, w19, w23
   23508: f100431f     	cmp	x24, #0x10
   2350c: 54fffea1     	b.ne	0x234e0 <syna_sysfs_info_show+0x270>
   23510: 52820008     	mov	w8, #0x1000             // =4096
   23514: 90000002     	adrp	x2, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023514:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a9ab
   23518: 91000042     	add	x2, x2, #0x0
		0000000000023518:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a9ab
   2351c: cb374101     	sub	x1, x8, w23, uxtw
   23520: aa1403e0     	mov	x0, x20
   23524: 94000000     	bl	0x23524 <syna_sysfs_info_show+0x2b4>
		0000000000023524:  R_AARCH64_CALL26	scnprintf
   23528: 2a0003f3     	mov	w19, w0
   2352c: 37f80740     	tbnz	w0, #0x1f, 0x23614 <syna_sysfs_info_show+0x3a4>
   23530: 8b334294     	add	x20, x20, w19, uxtw
   23534: 0b170275     	add	w21, w19, w23
   23538: 52820008     	mov	w8, #0x1000             // =4096
   2353c: 294212c3     	ldp	w3, w4, [x22, #0x10]
   23540: cb150101     	sub	x1, x8, x21
   23544: 90000002     	adrp	x2, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023544:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af12
   23548: 91000042     	add	x2, x2, #0x0
		0000000000023548:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af12
   2354c: aa1403e0     	mov	x0, x20
   23550: 94000000     	bl	0x23550 <syna_sysfs_info_show+0x2e0>
		0000000000023550:  R_AARCH64_CALL26	scnprintf
   23554: 2a0003f3     	mov	w19, w0
   23558: 37f805e0     	tbnz	w0, #0x1f, 0x23614 <syna_sysfs_info_show+0x3a4>
   2355c: 8b334294     	add	x20, x20, w19, uxtw
   23560: 0b150275     	add	w21, w19, w21
   23564: 52820008     	mov	w8, #0x1000             // =4096
   23568: b9401ac3     	ldr	w3, [x22, #0x18]
   2356c: cb150101     	sub	x1, x8, x21
   23570: 90000002     	adrp	x2, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023570:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x193e4
   23574: 91000042     	add	x2, x2, #0x0
		0000000000023574:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x193e4
   23578: aa1403e0     	mov	x0, x20
   2357c: 94000000     	bl	0x2357c <syna_sysfs_info_show+0x30c>
		000000000002357c:  R_AARCH64_CALL26	scnprintf
   23580: 2a0003f3     	mov	w19, w0
   23584: 37f80480     	tbnz	w0, #0x1f, 0x23614 <syna_sysfs_info_show+0x3a4>
   23588: 8b334294     	add	x20, x20, w19, uxtw
   2358c: 0b150275     	add	w21, w19, w21
   23590: 52820008     	mov	w8, #0x1000             // =4096
   23594: 29438ec4     	ldp	w4, w3, [x22, #0x1c]
   23598: cb150101     	sub	x1, x8, x21
   2359c: 90000002     	adrp	x2, 0x23000 <syna_spi_alloc_mem+0xc>
		000000000002359c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17af3
   235a0: 91000042     	add	x2, x2, #0x0
		00000000000235a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17af3
   235a4: aa1403e0     	mov	x0, x20
   235a8: 94000000     	bl	0x235a8 <syna_sysfs_info_show+0x338>
		00000000000235a8:  R_AARCH64_CALL26	scnprintf
   235ac: 2a0003f3     	mov	w19, w0
   235b0: 37f80320     	tbnz	w0, #0x1f, 0x23614 <syna_sysfs_info_show+0x3a4>
   235b4: 8b334294     	add	x20, x20, w19, uxtw
   235b8: 0b150275     	add	w21, w19, w21
   235bc: 52820008     	mov	w8, #0x1000             // =4096
   235c0: b9403ec3     	ldr	w3, [x22, #0x3c]
   235c4: cb150101     	sub	x1, x8, x21
   235c8: 90000002     	adrp	x2, 0x23000 <syna_spi_alloc_mem+0xc>
		00000000000235c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18896
   235cc: 91000042     	add	x2, x2, #0x0
		00000000000235cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18896
   235d0: aa1403e0     	mov	x0, x20
   235d4: 94000000     	bl	0x235d4 <syna_sysfs_info_show+0x364>
		00000000000235d4:  R_AARCH64_CALL26	scnprintf
   235d8: 2a0003f3     	mov	w19, w0
   235dc: 37f801c0     	tbnz	w0, #0x1f, 0x23614 <syna_sysfs_info_show+0x3a4>
   235e0: 8b334280     	add	x0, x20, w19, uxtw
   235e4: 0b150273     	add	w19, w19, w21
   235e8: 52820008     	mov	w8, #0x1000             // =4096
   235ec: b9403ac3     	ldr	w3, [x22, #0x38]
   235f0: cb130101     	sub	x1, x8, x19
   235f4: 90000002     	adrp	x2, 0x23000 <syna_spi_alloc_mem+0xc>
		00000000000235f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a91c
   235f8: 91000042     	add	x2, x2, #0x0
		00000000000235f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a91c
   235fc: 94000000     	bl	0x235fc <syna_sysfs_info_show+0x38c>
		00000000000235fc:  R_AARCH64_CALL26	scnprintf
   23600: 7100001f     	cmp	w0, #0x0
   23604: 1a93b3e8     	csel	w8, wzr, w19, lt
   23608: 0b000113     	add	w19, w8, w0
   2360c: 14000002     	b	0x23614 <syna_sysfs_info_show+0x3a4>
   23610: 2a0003f3     	mov	w19, w0
   23614: 93407e60     	sxtw	x0, w19
   23618: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   2361c: a94357f6     	ldp	x22, x21, [sp, #0x30]
   23620: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   23624: a94167fa     	ldp	x26, x25, [sp, #0x10]
   23628: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   2362c: d50323bf     	autiasp
   23630: d65f03c0     	ret
   23634: 90000000     	adrp	x0, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023634:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac4c
   23638: 91000000     	add	x0, x0, #0x0
		0000000000023638:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac4c
   2363c: 90000001     	adrp	x1, 0x23000 <syna_spi_alloc_mem+0xc>
		000000000002363c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17dd6
   23640: 91000021     	add	x1, x1, #0x0
		0000000000023640:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17dd6
   23644: 52800202     	mov	w2, #0x10               // =16
   23648: 52800204     	mov	w4, #0x10               // =16
   2364c: 94000000     	bl	0x2364c <syna_sysfs_info_show+0x3dc>
		000000000002364c:  R_AARCH64_CALL26	_printk
   23650: 90000000     	adrp	x0, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023650:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bb58
   23654: 91000000     	add	x0, x0, #0x0
		0000000000023654:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bb58
   23658: 90000001     	adrp	x1, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023658:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18637
   2365c: 91000021     	add	x1, x1, #0x0
		000000000002365c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18637
   23660: 94000000     	bl	0x23660 <syna_sysfs_info_show+0x3f0>
		0000000000023660:  R_AARCH64_CALL26	_printk
   23664: 128002b3     	mov	w19, #-0x16             // =-22
   23668: 17ffffeb     	b	0x23614 <syna_sysfs_info_show+0x3a4>
