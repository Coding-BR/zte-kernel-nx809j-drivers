
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000232cc <syna_sysfs_info_show>:
   232cc: d503233f     	paciasp
   232d0: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   232d4: a90167fa     	stp	x26, x25, [sp, #0x10]
   232d8: a9025ff8     	stp	x24, x23, [sp, #0x20]
   232dc: a90357f6     	stp	x22, x21, [sp, #0x30]
   232e0: a9044ff4     	stp	x20, x19, [sp, #0x40]
   232e4: 910003fd     	mov	x29, sp
   232e8: f9400c08     	ldr	x8, [x0, #0x18]
   232ec: aa0203f4     	mov	x20, x2
   232f0: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		00000000000232f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1beaf
   232f4: 91000042     	add	x2, x2, #0x0
		00000000000232f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1beaf
   232f8: 90000004     	adrp	x4, 0x23000 <syna_spi_power_on+0x218>
		00000000000232f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af0e
   232fc: 91000084     	add	x4, x4, #0x0
		00000000000232fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af0e
   23300: f9404d17     	ldr	x23, [x8, #0x98]
   23304: aa1403e0     	mov	x0, x20
   23308: 52820001     	mov	w1, #0x1000             // =4096
   2330c: 52800023     	mov	w3, #0x1                // =1
   23310: f94002f6     	ldr	x22, [x23]
   23314: 94000000     	bl	0x23314 <syna_sysfs_info_show+0x48>
		0000000000023314:  R_AARCH64_CALL26	scnprintf
   23318: 2a0003f3     	mov	w19, w0
   2331c: 37f81aa0     	tbnz	w0, #0x1f, 0x23670 <syna_sysfs_info_show+0x3a4>
   23320: 2a1303e8     	mov	w8, w19
   23324: 52820009     	mov	w9, #0x1000             // =4096
   23328: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		0000000000023328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b13a
   2332c: 91000042     	add	x2, x2, #0x0
		000000000002332c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b13a
   23330: 8b080294     	add	x20, x20, x8
   23334: cb080121     	sub	x1, x9, x8
   23338: aa1403e0     	mov	x0, x20
   2333c: 52800043     	mov	w3, #0x2                // =2
   23340: 52800184     	mov	w4, #0xc                // =12
   23344: 94000000     	bl	0x23344 <syna_sysfs_info_show+0x78>
		0000000000023344:  R_AARCH64_CALL26	scnprintf
   23348: 37f81920     	tbnz	w0, #0x1f, 0x2366c <syna_sysfs_info_show+0x3a0>
   2334c: b9457ee8     	ldr	w8, [x23, #0x57c]
   23350: 39560ae9     	ldrb	w9, [x23, #0x582]
   23354: 2a0003ea     	mov	w10, w0
   23358: 8b204280     	add	x0, x20, w0, uxtw
   2335c: 0b130155     	add	w21, w10, w19
   23360: 71000d1f     	cmp	w8, #0x3
   23364: 36000489     	tbz	w9, #0x0, 0x233f4 <syna_sysfs_info_show+0x128>
   23368: 54000480     	b.eq	0x233f8 <syna_sysfs_info_show+0x12c>
   2336c: 52820008     	mov	w8, #0x1000             // =4096
   23370: b94386e4     	ldr	w4, [x23, #0x384]
   23374: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		0000000000023374:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18866
   23378: 91000042     	add	x2, x2, #0x0
		0000000000023378:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18866
   2337c: cb354101     	sub	x1, x8, w21, uxtw
   23380: 90000003     	adrp	x3, 0x23000 <syna_spi_power_on+0x218>
		0000000000023380:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a918
   23384: 91000063     	add	x3, x3, #0x0
		0000000000023384:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a918
   23388: aa0003f4     	mov	x20, x0
   2338c: 94000000     	bl	0x2338c <syna_sysfs_info_show+0xc0>
		000000000002338c:  R_AARCH64_CALL26	scnprintf
   23390: 2a0003f3     	mov	w19, w0
   23394: 37f816e0     	tbnz	w0, #0x1f, 0x23670 <syna_sysfs_info_show+0x3a4>
   23398: 8b334294     	add	x20, x20, w19, uxtw
   2339c: 0b150275     	add	w21, w19, w21
   233a0: 52820008     	mov	w8, #0x1000             // =4096
   233a4: 394202c3     	ldrb	w3, [x22, #0x80]
   233a8: cb150101     	sub	x1, x8, x21
   233ac: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		00000000000233ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bb40
   233b0: 91000042     	add	x2, x2, #0x0
		00000000000233b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bb40
   233b4: aa1403e0     	mov	x0, x20
   233b8: 94000000     	bl	0x233b8 <syna_sysfs_info_show+0xec>
		00000000000233b8:  R_AARCH64_CALL26	scnprintf
   233bc: 2a0003f3     	mov	w19, w0
   233c0: 37f81580     	tbnz	w0, #0x1f, 0x23670 <syna_sysfs_info_show+0x3a4>
   233c4: 394206c3     	ldrb	w3, [x22, #0x81]
   233c8: 8b334294     	add	x20, x20, w19, uxtw
   233cc: 0b150275     	add	w21, w19, w21
   233d0: 52820008     	mov	w8, #0x1000             // =4096
   233d4: 71002c7f     	cmp	w3, #0xb
   233d8: 54000260     	b.eq	0x23424 <syna_sysfs_info_show+0x158>
   233dc: 7100047f     	cmp	w3, #0x1
   233e0: 540002a1     	b.ne	0x23434 <syna_sysfs_info_show+0x168>
   233e4: cb354101     	sub	x1, x8, w21, uxtw
   233e8: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		00000000000233e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a08b
   233ec: 91000042     	add	x2, x2, #0x0
		00000000000233ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a08b
   233f0: 14000014     	b	0x23440 <syna_sysfs_info_show+0x174>
   233f4: 540000a1     	b.ne	0x23408 <syna_sysfs_info_show+0x13c>
   233f8: 52820008     	mov	w8, #0x1000             // =4096
   233fc: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		00000000000233fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d08
   23400: 91000042     	add	x2, x2, #0x0
		0000000000023400:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d08
   23404: 14000004     	b	0x23414 <syna_sysfs_info_show+0x148>
   23408: 52820008     	mov	w8, #0x1000             // =4096
   2340c: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		000000000002340c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8ab
   23410: 91000042     	add	x2, x2, #0x0
		0000000000023410:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8ab
   23414: cb354101     	sub	x1, x8, w21, uxtw
   23418: 94000000     	bl	0x23418 <syna_sysfs_info_show+0x14c>
		0000000000023418:  R_AARCH64_CALL26	scnprintf
   2341c: 0b150013     	add	w19, w0, w21
   23420: 14000094     	b	0x23670 <syna_sysfs_info_show+0x3a4>
   23424: cb354101     	sub	x1, x8, w21, uxtw
   23428: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		0000000000023428:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x193a7
   2342c: 91000042     	add	x2, x2, #0x0
		000000000002342c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x193a7
   23430: 14000004     	b	0x23440 <syna_sysfs_info_show+0x174>
   23434: cb354101     	sub	x1, x8, w21, uxtw
   23438: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		0000000000023438:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18616
   2343c: 91000042     	add	x2, x2, #0x0
		000000000002343c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18616
   23440: aa1403e0     	mov	x0, x20
   23444: 94000000     	bl	0x23444 <syna_sysfs_info_show+0x178>
		0000000000023444:  R_AARCH64_CALL26	scnprintf
   23448: 2a0003f3     	mov	w19, w0
   2344c: 37f81120     	tbnz	w0, #0x1f, 0x23670 <syna_sysfs_info_show+0x3a4>
   23450: 8b334294     	add	x20, x20, w19, uxtw
   23454: 0b150275     	add	w21, w19, w21
   23458: 52820017     	mov	w23, #0x1000            // =4096
   2345c: cb1502e1     	sub	x1, x23, x21
   23460: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		0000000000023460:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a612
   23464: 91000042     	add	x2, x2, #0x0
		0000000000023464:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a612
   23468: aa1403e0     	mov	x0, x20
   2346c: 94000000     	bl	0x2346c <syna_sysfs_info_show+0x1a0>
		000000000002346c:  R_AARCH64_CALL26	scnprintf
   23470: 2a0003f3     	mov	w19, w0
   23474: 37f80fe0     	tbnz	w0, #0x1f, 0x23670 <syna_sysfs_info_show+0x3a4>
   23478: b1020ac9     	adds	x9, x22, #0x82
   2347c: 54001180     	b.eq	0x236ac <syna_sysfs_info_show+0x3e0>
   23480: 8b334288     	add	x8, x20, w19, uxtw
   23484: b4001148     	cbz	x8, 0x236ac <syna_sysfs_info_show+0x3e0>
   23488: 0b1302aa     	add	w10, w21, w19
   2348c: 4b0a02e3     	sub	w3, w23, w10
   23490: 71003c7f     	cmp	w3, #0xf
   23494: 54000fe9     	b.ls	0x23690 <syna_sysfs_info_show+0x3c4>
   23498: a9402d29     	ldp	x9, x11, [x9]
   2349c: 11004155     	add	w21, w10, #0x10
   234a0: 5282000a     	mov	w10, #0x1000            // =4096
   234a4: 91004114     	add	x20, x8, #0x10
   234a8: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		00000000000234a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a9ab
   234ac: 91000042     	add	x2, x2, #0x0
		00000000000234ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a9ab
   234b0: cb150141     	sub	x1, x10, x21
   234b4: aa1403e0     	mov	x0, x20
   234b8: a9002d09     	stp	x9, x11, [x8]
   234bc: 94000000     	bl	0x234bc <syna_sysfs_info_show+0x1f0>
		00000000000234bc:  R_AARCH64_CALL26	scnprintf
   234c0: 2a0003f3     	mov	w19, w0
   234c4: 37f80d60     	tbnz	w0, #0x1f, 0x23670 <syna_sysfs_info_show+0x3a4>
   234c8: 8b334294     	add	x20, x20, w19, uxtw
   234cc: 0b150273     	add	w19, w19, w21
   234d0: 52820008     	mov	w8, #0x1000             // =4096
   234d4: b9400ec3     	ldr	w3, [x22, #0xc]
   234d8: cb130101     	sub	x1, x8, x19
   234dc: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		00000000000234dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bb87
   234e0: 91000042     	add	x2, x2, #0x0
		00000000000234e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bb87
   234e4: aa1403e0     	mov	x0, x20
   234e8: 94000000     	bl	0x234e8 <syna_sysfs_info_show+0x21c>
		00000000000234e8:  R_AARCH64_CALL26	scnprintf
   234ec: 37f80c00     	tbnz	w0, #0x1f, 0x2366c <syna_sysfs_info_show+0x3a0>
   234f0: 394206c8     	ldrb	w8, [x22, #0x81]
   234f4: 0b130013     	add	w19, w0, w19
   234f8: 7100051f     	cmp	w8, #0x1
   234fc: 54000ba1     	b.ne	0x23670 <syna_sysfs_info_show+0x3a4>
   23500: 52820008     	mov	w8, #0x1000             // =4096
   23504: 8b204294     	add	x20, x20, w0, uxtw
   23508: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		0000000000023508:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x193cf
   2350c: 91000042     	add	x2, x2, #0x0
		000000000002350c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x193cf
   23510: cb334101     	sub	x1, x8, w19, uxtw
   23514: aa1403e0     	mov	x0, x20
   23518: 94000000     	bl	0x23518 <syna_sysfs_info_show+0x24c>
		0000000000023518:  R_AARCH64_CALL26	scnprintf
   2351c: 37f80a80     	tbnz	w0, #0x1f, 0x2366c <syna_sysfs_info_show+0x3a0>
   23520: 8b204294     	add	x20, x20, w0, uxtw
   23524: aa1f03f8     	mov	x24, xzr
   23528: 0b130017     	add	w23, w0, w19
   2352c: 910092d9     	add	x25, x22, #0x24
   23530: 5282001a     	mov	w26, #0x1000            // =4096
   23534: 90000015     	adrp	x21, 0x23000 <syna_spi_power_on+0x218>
		0000000000023534:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d23
   23538: 910002b5     	add	x21, x21, #0x0
		0000000000023538:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d23
   2353c: cb374341     	sub	x1, x26, w23, uxtw
   23540: 38786b23     	ldrb	w3, [x25, x24]
   23544: aa1403e0     	mov	x0, x20
   23548: aa1503e2     	mov	x2, x21
   2354c: 94000000     	bl	0x2354c <syna_sysfs_info_show+0x280>
		000000000002354c:  R_AARCH64_CALL26	scnprintf
   23550: 2a0003f3     	mov	w19, w0
   23554: 37f808e0     	tbnz	w0, #0x1f, 0x23670 <syna_sysfs_info_show+0x3a4>
   23558: 91000718     	add	x24, x24, #0x1
   2355c: 8b334294     	add	x20, x20, w19, uxtw
   23560: 0b170277     	add	w23, w19, w23
   23564: f100431f     	cmp	x24, #0x10
   23568: 54fffea1     	b.ne	0x2353c <syna_sysfs_info_show+0x270>
   2356c: 52820008     	mov	w8, #0x1000             // =4096
   23570: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		0000000000023570:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a9ab
   23574: 91000042     	add	x2, x2, #0x0
		0000000000023574:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a9ab
   23578: cb374101     	sub	x1, x8, w23, uxtw
   2357c: aa1403e0     	mov	x0, x20
   23580: 94000000     	bl	0x23580 <syna_sysfs_info_show+0x2b4>
		0000000000023580:  R_AARCH64_CALL26	scnprintf
   23584: 2a0003f3     	mov	w19, w0
   23588: 37f80740     	tbnz	w0, #0x1f, 0x23670 <syna_sysfs_info_show+0x3a4>
   2358c: 8b334294     	add	x20, x20, w19, uxtw
   23590: 0b170275     	add	w21, w19, w23
   23594: 52820008     	mov	w8, #0x1000             // =4096
   23598: 294212c3     	ldp	w3, w4, [x22, #0x10]
   2359c: cb150101     	sub	x1, x8, x21
   235a0: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		00000000000235a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af12
   235a4: 91000042     	add	x2, x2, #0x0
		00000000000235a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af12
   235a8: aa1403e0     	mov	x0, x20
   235ac: 94000000     	bl	0x235ac <syna_sysfs_info_show+0x2e0>
		00000000000235ac:  R_AARCH64_CALL26	scnprintf
   235b0: 2a0003f3     	mov	w19, w0
   235b4: 37f805e0     	tbnz	w0, #0x1f, 0x23670 <syna_sysfs_info_show+0x3a4>
   235b8: 8b334294     	add	x20, x20, w19, uxtw
   235bc: 0b150275     	add	w21, w19, w21
   235c0: 52820008     	mov	w8, #0x1000             // =4096
   235c4: b9401ac3     	ldr	w3, [x22, #0x18]
   235c8: cb150101     	sub	x1, x8, x21
   235cc: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		00000000000235cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x193e4
   235d0: 91000042     	add	x2, x2, #0x0
		00000000000235d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x193e4
   235d4: aa1403e0     	mov	x0, x20
   235d8: 94000000     	bl	0x235d8 <syna_sysfs_info_show+0x30c>
		00000000000235d8:  R_AARCH64_CALL26	scnprintf
   235dc: 2a0003f3     	mov	w19, w0
   235e0: 37f80480     	tbnz	w0, #0x1f, 0x23670 <syna_sysfs_info_show+0x3a4>
   235e4: 8b334294     	add	x20, x20, w19, uxtw
   235e8: 0b150275     	add	w21, w19, w21
   235ec: 52820008     	mov	w8, #0x1000             // =4096
   235f0: 29438ec4     	ldp	w4, w3, [x22, #0x1c]
   235f4: cb150101     	sub	x1, x8, x21
   235f8: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		00000000000235f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17af3
   235fc: 91000042     	add	x2, x2, #0x0
		00000000000235fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17af3
   23600: aa1403e0     	mov	x0, x20
   23604: 94000000     	bl	0x23604 <syna_sysfs_info_show+0x338>
		0000000000023604:  R_AARCH64_CALL26	scnprintf
   23608: 2a0003f3     	mov	w19, w0
   2360c: 37f80320     	tbnz	w0, #0x1f, 0x23670 <syna_sysfs_info_show+0x3a4>
   23610: 8b334294     	add	x20, x20, w19, uxtw
   23614: 0b150275     	add	w21, w19, w21
   23618: 52820008     	mov	w8, #0x1000             // =4096
   2361c: b9403ec3     	ldr	w3, [x22, #0x3c]
   23620: cb150101     	sub	x1, x8, x21
   23624: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		0000000000023624:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18896
   23628: 91000042     	add	x2, x2, #0x0
		0000000000023628:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18896
   2362c: aa1403e0     	mov	x0, x20
   23630: 94000000     	bl	0x23630 <syna_sysfs_info_show+0x364>
		0000000000023630:  R_AARCH64_CALL26	scnprintf
   23634: 2a0003f3     	mov	w19, w0
   23638: 37f801c0     	tbnz	w0, #0x1f, 0x23670 <syna_sysfs_info_show+0x3a4>
   2363c: 8b334280     	add	x0, x20, w19, uxtw
   23640: 0b150273     	add	w19, w19, w21
   23644: 52820008     	mov	w8, #0x1000             // =4096
   23648: b9403ac3     	ldr	w3, [x22, #0x38]
   2364c: cb130101     	sub	x1, x8, x19
   23650: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		0000000000023650:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a91c
   23654: 91000042     	add	x2, x2, #0x0
		0000000000023654:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a91c
   23658: 94000000     	bl	0x23658 <syna_sysfs_info_show+0x38c>
		0000000000023658:  R_AARCH64_CALL26	scnprintf
   2365c: 7100001f     	cmp	w0, #0x0
   23660: 1a93b3e8     	csel	w8, wzr, w19, lt
   23664: 0b000113     	add	w19, w8, w0
   23668: 14000002     	b	0x23670 <syna_sysfs_info_show+0x3a4>
   2366c: 2a0003f3     	mov	w19, w0
   23670: 93407e60     	sxtw	x0, w19
   23674: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   23678: a94357f6     	ldp	x22, x21, [sp, #0x30]
   2367c: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   23680: a94167fa     	ldp	x26, x25, [sp, #0x10]
   23684: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   23688: d50323bf     	autiasp
   2368c: d65f03c0     	ret
   23690: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		0000000000023690:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac4c
   23694: 91000000     	add	x0, x0, #0x0
		0000000000023694:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac4c
   23698: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		0000000000023698:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17dd6
   2369c: 91000021     	add	x1, x1, #0x0
		000000000002369c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17dd6
   236a0: 52800202     	mov	w2, #0x10               // =16
   236a4: 52800204     	mov	w4, #0x10               // =16
   236a8: 94000000     	bl	0x236a8 <syna_sysfs_info_show+0x3dc>
		00000000000236a8:  R_AARCH64_CALL26	_printk
   236ac: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		00000000000236ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bb58
   236b0: 91000000     	add	x0, x0, #0x0
		00000000000236b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bb58
   236b4: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		00000000000236b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18637
   236b8: 91000021     	add	x1, x1, #0x0
		00000000000236b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18637
   236bc: 94000000     	bl	0x236bc <syna_sysfs_info_show+0x3f0>
		00000000000236bc:  R_AARCH64_CALL26	_printk
   236c0: 128002b3     	mov	w19, #-0x16             // =-22
   236c4: 17ffffeb     	b	0x23670 <syna_sysfs_info_show+0x3a4>
