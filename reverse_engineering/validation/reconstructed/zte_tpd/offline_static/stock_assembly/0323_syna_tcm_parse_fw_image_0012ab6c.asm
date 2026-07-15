
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000242e4 <syna_tcm_parse_fw_image>:
   242e4: d503233f     	paciasp
   242e8: d10203ff     	sub	sp, sp, #0x80
   242ec: a9027bfd     	stp	x29, x30, [sp, #0x20]
   242f0: a9036ffc     	stp	x28, x27, [sp, #0x30]
   242f4: a90467fa     	stp	x26, x25, [sp, #0x40]
   242f8: a9055ff8     	stp	x24, x23, [sp, #0x50]
   242fc: a90657f6     	stp	x22, x21, [sp, #0x60]
   24300: a9074ff4     	stp	x20, x19, [sp, #0x70]
   24304: 910083fd     	add	x29, sp, #0x20
   24308: b40015c0     	cbz	x0, 0x245c0 <syna_tcm_parse_fw_image+0x2dc>
   2430c: aa0203f9     	mov	x25, x2
   24310: b40015e2     	cbz	x2, 0x245cc <syna_tcm_parse_fw_image+0x2e8>
   24314: 2a0103f4     	mov	w20, w1
   24318: 34001601     	cbz	w1, 0x245d8 <syna_tcm_parse_fw_image+0x2f4>
   2431c: aa0003f3     	mov	x19, x0
   24320: 91001320     	add	x0, x25, #0x4
   24324: 2a1f03e1     	mov	w1, wzr
   24328: 52806182     	mov	w2, #0x30c              // =780
   2432c: 94000000     	bl	0x2432c <syna_tcm_parse_fw_image+0x48>
		000000000002432c:  R_AARCH64_CALL26	memset
   24330: f9000733     	str	x19, [x25, #0x8]
   24334: 5288e569     	mov	w9, #0x472b             // =18219
   24338: b9000334     	str	w20, [x25]
   2433c: 72a90309     	movk	w9, #0x4818, lsl #16
   24340: b9400268     	ldr	w8, [x19]
   24344: 6b09011f     	cmp	w8, w9
   24348: 540014e1     	b.ne	0x245e4 <syna_tcm_parse_fw_image+0x300>
   2434c: b9400668     	ldr	w8, [x19, #0x4]
   24350: b81fc3a8     	stur	w8, [x29, #-0x4]
   24354: 34001328     	cbz	w8, 0x245b8 <syna_tcm_parse_fw_image+0x2d4>
   24358: 2a1f03f5     	mov	w21, wzr
   2435c: 90000016     	adrp	x22, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		000000000002435c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10ee
   24360: 910002d6     	add	x22, x22, #0x0
		0000000000024360:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10ee
   24364: 90000017     	adrp	x23, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024364:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x4858
   24368: 910002f7     	add	x23, x23, #0x0
		0000000000024368:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x4858
   2436c: 9000001b     	adrp	x27, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		000000000002436c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x4910
   24370: 9100037b     	add	x27, x27, #0x0
		0000000000024370:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x4910
   24374: 91004328     	add	x8, x25, #0x10
   24378: 52800118     	mov	w24, #0x8               // =8
   2437c: f9000be8     	str	x8, [sp, #0x10]
   24380: 1400000a     	b	0x243a8 <syna_tcm_parse_fw_image+0xc4>
   24384: 52883b09     	mov	w9, #0x41d8             // =16856
   24388: 72b83f69     	movk	w9, #0xc1fb, lsl #16
   2438c: 6b09011f     	cmp	w8, w9
   24390: 54000600     	b.eq	0x24450 <syna_tcm_parse_fw_image+0x16c>
   24394: b85fc3a8     	ldur	w8, [x29, #-0x4]
   24398: 110006b5     	add	w21, w21, #0x1
   2439c: 11001318     	add	w24, w24, #0x4
   243a0: 6b0802bf     	cmp	w21, w8
   243a4: 540010a0     	b.eq	0x245b8 <syna_tcm_parse_fw_image+0x2d4>
   243a8: b8784a68     	ldr	w8, [x19, w24, uxtw]
   243ac: 529ca2c9     	mov	w9, #0xe516             // =58646
   243b0: 72af80a9     	movk	w9, #0x7c05, lsl #16
   243b4: 8b08027c     	add	x28, x19, x8
   243b8: b9400388     	ldr	w8, [x28]
   243bc: 6b09011f     	cmp	w8, w9
   243c0: 54fffe21     	b.ne	0x24384 <syna_tcm_parse_fw_image+0xa0>
   243c4: 528002d4     	mov	w20, #0x16              // =22
   243c8: 71005a9f     	cmp	w20, #0x16
   243cc: 54000088     	b.hi	0x243dc <syna_tcm_parse_fw_image+0xf8>
   243d0: f8745af9     	ldr	x25, [x23, w20, uxtw #3]
   243d4: f8745b7a     	ldr	x26, [x27, w20, uxtw #3]
   243d8: 14000003     	b	0x243e4 <syna_tcm_parse_fw_image+0x100>
   243dc: 52800059     	mov	w25, #0x2               // =2
   243e0: aa1603fa     	mov	x26, x22
   243e4: aa1a03e0     	mov	x0, x26
   243e8: aa1903e1     	mov	x1, x25
   243ec: 94000000     	bl	0x243ec <syna_tcm_parse_fw_image+0x108>
		00000000000243ec:  R_AARCH64_CALL26	strnlen
   243f0: aa0003e2     	mov	x2, x0
   243f4: eb19001f     	cmp	x0, x25
   243f8: 540011c8     	b.hi	0x24630 <syna_tcm_parse_fw_image+0x34c>
   243fc: 54001122     	b.hs	0x24620 <syna_tcm_parse_fw_image+0x33c>
   24400: 91001380     	add	x0, x28, #0x4
   24404: aa1a03e1     	mov	x1, x26
   24408: 94000000     	bl	0x24408 <syna_tcm_parse_fw_image+0x124>
		0000000000024408:  R_AARCH64_CALL26	strncmp
   2440c: 34000160     	cbz	w0, 0x24438 <syna_tcm_parse_fw_image+0x154>
   24410: 51000694     	sub	w20, w20, #0x1
   24414: 31000a9f     	cmn	w20, #0x2
   24418: 54fffd81     	b.ne	0x243c8 <syna_tcm_parse_fw_image+0xe4>
   2441c: 91001382     	add	x2, x28, #0x4
   24420: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024420:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c96
   24424: 91000000     	add	x0, x0, #0x0
		0000000000024424:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c96
   24428: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024428:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f45
   2442c: 91000021     	add	x1, x1, #0x0
		000000000002442c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f45
   24430: 94000000     	bl	0x24430 <syna_tcm_parse_fw_image+0x14c>
		0000000000024430:  R_AARCH64_CALL26	_printk
   24434: 17ffffd8     	b	0x24394 <syna_tcm_parse_fw_image+0xb0>
   24438: 71005e9f     	cmp	w20, #0x17
   2443c: 54fffac2     	b.hs	0x24394 <syna_tcm_parse_fw_image+0xb0>
   24440: 1100069a     	add	w26, w20, #0x1
   24444: 52800389     	mov	w9, #0x1c               // =28
   24448: 52800488     	mov	w8, #0x24               // =36
   2444c: 14000004     	b	0x2445c <syna_tcm_parse_fw_image+0x178>
   24450: 5280029a     	mov	w26, #0x14              // =20
   24454: 52800089     	mov	w9, #0x4                // =4
   24458: 52800108     	mov	w8, #0x8                // =8
   2445c: f9400beb     	ldr	x11, [sp, #0x10]
   24460: 2a1a03ea     	mov	w10, w26
   24464: ab0a1579     	adds	x25, x11, x10, lsl #5
   24468: 54000081     	b.ne	0x24478 <syna_tcm_parse_fw_image+0x194>
   2446c: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		000000000002446c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d10
   24470: 91000000     	add	x0, x0, #0x0
		0000000000024470:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d10
   24474: 14000004     	b	0x24484 <syna_tcm_parse_fw_image+0x1a0>
   24478: b50000fc     	cbnz	x28, 0x24494 <syna_tcm_parse_fw_image+0x1b0>
   2447c: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		000000000002447c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc3f9
   24480: 91000000     	add	x0, x0, #0x0
		0000000000024480:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc3f9
   24484: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024484:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaaff
   24488: 91000021     	add	x1, x1, #0x0
		0000000000024488:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaaff
   2448c: 94000000     	bl	0x2448c <syna_tcm_parse_fw_image+0x1a8>
		000000000002448c:  R_AARCH64_CALL26	_printk
   24490: 17ffffc1     	b	0x24394 <syna_tcm_parse_fw_image+0xb0>
   24494: b8696b94     	ldr	w20, [x28, x9]
   24498: 7100535f     	cmp	w26, #0x14
   2449c: 8b080381     	add	x1, x28, x8
   244a0: 540001c1     	b.ne	0x244d8 <syna_tcm_parse_fw_image+0x1f4>
   244a4: 52800288     	mov	w8, #0x14               // =20
   244a8: f9000721     	str	x1, [x25, #0x8]
   244ac: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		00000000000244ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8df1
   244b0: 91000000     	add	x0, x0, #0x0
		00000000000244b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8df1
   244b4: 39006328     	strb	w8, [x25, #0x18]
   244b8: 52800028     	mov	w8, #0x1                // =1
   244bc: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		00000000000244bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaaff
   244c0: 91000021     	add	x1, x1, #0x0
		00000000000244c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaaff
   244c4: 2a1403e2     	mov	w2, w20
   244c8: 29027f34     	stp	w20, wzr, [x25, #0x10]
   244cc: 39000328     	strb	w8, [x25]
   244d0: 94000000     	bl	0x244d0 <syna_tcm_parse_fw_image+0x1ec>
		00000000000244d0:  R_AARCH64_CALL26	_printk
   244d4: 14000022     	b	0x2455c <syna_tcm_parse_fw_image+0x278>
   244d8: b9402388     	ldr	w8, [x28, #0x20]
   244dc: 12800000     	mov	w0, #-0x1               // =-1
   244e0: aa1403e2     	mov	x2, x20
   244e4: f90003e1     	str	x1, [sp]
   244e8: b9000fe8     	str	w8, [sp, #0xc]
   244ec: 94000000     	bl	0x244ec <syna_tcm_parse_fw_image+0x208>
		00000000000244ec:  R_AARCH64_CALL26	crc32_le
   244f0: b9400fea     	ldr	w10, [sp, #0xc]
   244f4: 2a2003e4     	mvn	w4, w0
   244f8: 6b04015f     	cmp	w10, w4
   244fc: 54000421     	b.ne	0x24580 <syna_tcm_parse_fw_image+0x29c>
   24500: b9401b88     	ldr	w8, [x28, #0x18]
   24504: f94003e9     	ldr	x9, [sp]
   24508: aa1603e2     	mov	x2, x22
   2450c: 3900633a     	strb	w26, [x25, #0x18]
   24510: 531f7903     	lsl	w3, w8, #1
   24514: 51000748     	sub	w8, w26, #0x1
   24518: f9000729     	str	x9, [x25, #0x8]
   2451c: 52800029     	mov	w9, #0x1                // =1
   24520: 7100591f     	cmp	w8, #0x16
   24524: b9001f2a     	str	w10, [x25, #0x1c]
   24528: 39000329     	strb	w9, [x25]
   2452c: 29020f34     	stp	w20, w3, [x25, #0x10]
   24530: 54000088     	b.hi	0x24540 <syna_tcm_parse_fw_image+0x25c>
   24534: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024534:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x49c8
   24538: 91000129     	add	x9, x9, #0x0
		0000000000024538:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x49c8
   2453c: f8685922     	ldr	x2, [x9, w8, uxtw #3]
   24540: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024540:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29b5
   24544: 91000000     	add	x0, x0, #0x0
		0000000000024544:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29b5
   24548: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024548:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaaff
   2454c: 91000021     	add	x1, x1, #0x0
		000000000002454c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaaff
   24550: 2a0303e4     	mov	w4, w3
   24554: 2a1403e5     	mov	w5, w20
   24558: 94000000     	bl	0x24558 <syna_tcm_parse_fw_image+0x274>
		0000000000024558:  R_AARCH64_CALL26	_printk
   2455c: b9401324     	ldr	w4, [x25, #0x10]
   24560: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024560:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x789a
   24564: 91000000     	add	x0, x0, #0x0
		0000000000024564:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x789a
   24568: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024568:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10f0
   2456c: 91000021     	add	x1, x1, #0x0
		000000000002456c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10f0
   24570: 2a1a03e2     	mov	w2, w26
   24574: aa1903e3     	mov	x3, x25
   24578: 94000000     	bl	0x24578 <syna_tcm_parse_fw_image+0x294>
		0000000000024578:  R_AARCH64_CALL26	_printk
   2457c: 17ffff86     	b	0x24394 <syna_tcm_parse_fw_image+0xb0>
   24580: 51000748     	sub	w8, w26, #0x1
   24584: aa1603e2     	mov	x2, x22
   24588: 7100591f     	cmp	w8, #0x16
   2458c: 54000088     	b.hi	0x2459c <syna_tcm_parse_fw_image+0x2b8>
   24590: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024590:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x49c8
   24594: 91000129     	add	x9, x9, #0x0
		0000000000024594:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x49c8
   24598: f8685922     	ldr	x2, [x9, w8, uxtw #3]
   2459c: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		000000000002459c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb1e4
   245a0: 91000000     	add	x0, x0, #0x0
		00000000000245a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb1e4
   245a4: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		00000000000245a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaaff
   245a8: 91000021     	add	x1, x1, #0x0
		00000000000245a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaaff
   245ac: 2a0a03e3     	mov	w3, w10
   245b0: 94000000     	bl	0x245b0 <syna_tcm_parse_fw_image+0x2cc>
		00000000000245b0:  R_AARCH64_CALL26	_printk
   245b4: 17ffff78     	b	0x24394 <syna_tcm_parse_fw_image+0xb0>
   245b8: 2a1f03e0     	mov	w0, wzr
   245bc: 14000010     	b	0x245fc <syna_tcm_parse_fw_image+0x318>
   245c0: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		00000000000245c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x89c8
   245c4: 91000000     	add	x0, x0, #0x0
		00000000000245c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x89c8
   245c8: 14000009     	b	0x245ec <syna_tcm_parse_fw_image+0x308>
   245cc: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		00000000000245cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8db6
   245d0: 91000000     	add	x0, x0, #0x0
		00000000000245d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8db6
   245d4: 14000006     	b	0x245ec <syna_tcm_parse_fw_image+0x308>
   245d8: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		00000000000245d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bed
   245dc: 91000000     	add	x0, x0, #0x0
		00000000000245dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bed
   245e0: 14000003     	b	0x245ec <syna_tcm_parse_fw_image+0x308>
   245e4: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		00000000000245e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1636
   245e8: 91000000     	add	x0, x0, #0x0
		00000000000245e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1636
   245ec: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		00000000000245ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10f0
   245f0: 91000021     	add	x1, x1, #0x0
		00000000000245f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10f0
   245f4: 94000000     	bl	0x245f4 <syna_tcm_parse_fw_image+0x310>
		00000000000245f4:  R_AARCH64_CALL26	_printk
   245f8: 12801e00     	mov	w0, #-0xf1              // =-241
   245fc: a9474ff4     	ldp	x20, x19, [sp, #0x70]
   24600: a94657f6     	ldp	x22, x21, [sp, #0x60]
   24604: a9455ff8     	ldp	x24, x23, [sp, #0x50]
   24608: a94467fa     	ldp	x26, x25, [sp, #0x40]
   2460c: a9436ffc     	ldp	x28, x27, [sp, #0x30]
   24610: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   24614: 910203ff     	add	sp, sp, #0x80
   24618: d50323bf     	autiasp
   2461c: d65f03c0     	ret
   24620: 91000442     	add	x2, x2, #0x1
   24624: 52800080     	mov	w0, #0x4                // =4
   24628: aa1903e1     	mov	x1, x25
   2462c: 94000000     	bl	0x2462c <syna_tcm_parse_fw_image+0x348>
		000000000002462c:  R_AARCH64_CALL26	__fortify_panic
   24630: 91000442     	add	x2, x2, #0x1
   24634: 52800040     	mov	w0, #0x2                // =2
   24638: aa1903e1     	mov	x1, x25
   2463c: 94000000     	bl	0x2463c <syna_tcm_parse_fw_image+0x358>
		000000000002463c:  R_AARCH64_CALL26	__fortify_panic
