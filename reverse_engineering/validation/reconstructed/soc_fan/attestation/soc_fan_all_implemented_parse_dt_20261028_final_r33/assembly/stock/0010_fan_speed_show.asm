
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000130c <fan_speed_show>:
    130c: d503233f     	paciasp
    1310: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    1314: a9015ff8     	stp	x24, x23, [sp, #0x10]
    1318: a90257f6     	stp	x22, x21, [sp, #0x20]
    131c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1320: 910003fd     	mov	x29, sp
    1324: 90000017     	adrp	x23, 0x1000 <fan_level_show+0x28>
		0000000000001324:  R_AARCH64_ADR_PREL_PG_HI21	chip
    1328: aa0203f3     	mov	x19, x2
    132c: f94002e8     	ldr	x8, [x23]
		000000000000132c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1330: 91006100     	add	x0, x8, #0x18
    1334: 94000000     	bl	0x1334 <fan_speed_show+0x28>
		0000000000001334:  R_AARCH64_CALL26	mutex_lock
    1338: f94002e8     	ldr	x8, [x23]
		0000000000001338:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    133c: f9400515     	ldr	x21, [x8, #0x8]
    1340: 394002a8     	ldrb	w8, [x21]
    1344: 35000068     	cbnz	w8, 0x1350 <fan_speed_show+0x44>
    1348: 2a1f03f4     	mov	w20, wzr
    134c: 14000089     	b	0x1570 <fan_speed_show+0x264>
    1350: 52884801     	mov	w1, #0x4240             // =16960
    1354: 52800028     	mov	w8, #0x1                // =1
    1358: 9100a2a0     	add	x0, x21, #0x28
    135c: 72a001e1     	movk	w1, #0xf, lsl #16
    1360: aa1f03e2     	mov	x2, xzr
    1364: 52800023     	mov	w3, #0x1                // =1
    1368: 39000aa8     	strb	w8, [x21, #0x2]
    136c: 94000000     	bl	0x136c <fan_speed_show+0x60>
		000000000000136c:  R_AARCH64_CALL26	hrtimer_start_range_ns
    1370: 52807d00     	mov	w0, #0x3e8              // =1000
    1374: 94000000     	bl	0x1374 <fan_speed_show+0x68>
		0000000000001374:  R_AARCH64_CALL26	msleep
    1378: b9400aa8     	ldr	w8, [x21, #0x8]
    137c: 394002a4     	ldrb	w4, [x21]
    1380: 0b080908     	add	w8, w8, w8, lsl #2
    1384: 71000c9f     	cmp	w4, #0x3
    1388: 531d7114     	lsl	w20, w8, #3
    138c: 540000e1     	b.ne	0x13a8 <fan_speed_show+0x9c>
    1390: 713e829f     	cmp	w20, #0xfa0
    1394: 540000a9     	b.ls	0x13a8 <fan_speed_show+0x9c>
    1398: 52865908     	mov	w8, #0x32c8             // =13000
    139c: b9400aa9     	ldr	w9, [x21, #0x8]
    13a0: 0b080136     	add	w22, w9, w8
    13a4: 1400000e     	b	0x13dc <fan_speed_show+0xd0>
    13a8: 7100149f     	cmp	w4, #0x5
    13ac: 540000e0     	b.eq	0x13c8 <fan_speed_show+0xbc>
    13b0: 7100109f     	cmp	w4, #0x4
    13b4: 54000121     	b.ne	0x13d8 <fan_speed_show+0xcc>
    13b8: 713e829f     	cmp	w20, #0xfa0
    13bc: 540000e9     	b.ls	0x13d8 <fan_speed_show+0xcc>
    13c0: 5287d008     	mov	w8, #0x3e80             // =16000
    13c4: 17fffff6     	b	0x139c <fan_speed_show+0x90>
    13c8: 713e869f     	cmp	w20, #0xfa1
    13cc: 54000063     	b.lo	0x13d8 <fan_speed_show+0xcc>
    13d0: 52894708     	mov	w8, #0x4a38             // =19000
    13d4: 17fffff2     	b	0x139c <fan_speed_show+0x90>
    13d8: 2a1f03f6     	mov	w22, wzr
    13dc: 90000000     	adrp	x0, 0x1000 <fan_level_show+0x28>
		00000000000013dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7da
    13e0: 91000000     	add	x0, x0, #0x0
		00000000000013e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7da
    13e4: 90000001     	adrp	x1, 0x1000 <fan_level_show+0x28>
		00000000000013e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    13e8: 91000021     	add	x1, x1, #0x0
		00000000000013e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    13ec: 90000002     	adrp	x2, 0x1000 <fan_level_show+0x28>
		00000000000013ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb48
    13f0: 91000042     	add	x2, x2, #0x0
		00000000000013f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb48
    13f4: 52802503     	mov	w3, #0x128              // =296
    13f8: 2a1403e5     	mov	w5, w20
    13fc: 2a1603e6     	mov	w6, w22
    1400: 94000000     	bl	0x1400 <fan_speed_show+0xf4>
		0000000000001400:  R_AARCH64_CALL26	_printk
    1404: f94002e9     	ldr	x9, [x23]
		0000000000001404:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1408: 6b1402df     	cmp	w22, w20
    140c: 2a1f03e8     	mov	w8, wzr
    1410: 1a9482d4     	csel	w20, w22, w20, hi
    1414: 90000018     	adrp	x24, 0x1000 <fan_level_show+0x28>
		0000000000001414:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xc
    1418: f9400520     	ldr	x0, [x9, #0x8]
    141c: 39400015     	ldrb	w21, [x0]
    1420: 34000a75     	cbz	w21, 0x156c <fan_speed_show+0x260>
    1424: 52807d09     	mov	w9, #0x3e8              // =1000
    1428: 1b097ea9     	mul	w9, w21, w9
    142c: 6b14013f     	cmp	w9, w20
    1430: 540009e3     	b.lo	0x156c <fan_speed_show+0x260>
    1434: b9400308     	ldr	w8, [x24]
		0000000000001434:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
    1438: 7100291f     	cmp	w8, #0xa
    143c: 540009ac     	b.gt	0x1570 <fan_speed_show+0x264>
    1440: 2a1f03e1     	mov	w1, wzr
    1444: 97fffe54     	bl	0xd94 <fan_level_set>
    1448: f94002e8     	ldr	x8, [x23]
		0000000000001448:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    144c: f9402516     	ldr	x22, [x8, #0x48]
    1450: b40001f6     	cbz	x22, 0x148c <fan_speed_show+0x180>
    1454: aa1603e0     	mov	x0, x22
    1458: 94000000     	bl	0x1458 <fan_speed_show+0x14c>
		0000000000001458:  R_AARCH64_CALL26	regulator_is_enabled
    145c: 34000180     	cbz	w0, 0x148c <fan_speed_show+0x180>
    1460: aa1603e0     	mov	x0, x22
    1464: 94000000     	bl	0x1464 <fan_speed_show+0x158>
		0000000000001464:  R_AARCH64_CALL26	regulator_disable
    1468: 2a0003e4     	mov	w4, w0
    146c: 90000000     	adrp	x0, 0x1000 <fan_level_show+0x28>
		000000000000146c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32
    1470: 91000000     	add	x0, x0, #0x0
		0000000000001470:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32
    1474: 90000001     	adrp	x1, 0x1000 <fan_level_show+0x28>
		0000000000001474:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    1478: 91000021     	add	x1, x1, #0x0
		0000000000001478:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    147c: 90000002     	adrp	x2, 0x1000 <fan_level_show+0x28>
		000000000000147c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb10
    1480: 91000042     	add	x2, x2, #0x0
		0000000000001480:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb10
    1484: 52801ca3     	mov	w3, #0xe5               // =229
    1488: 94000000     	bl	0x1488 <fan_speed_show+0x17c>
		0000000000001488:  R_AARCH64_CALL26	_printk
    148c: 52800640     	mov	w0, #0x32               // =50
    1490: 94000000     	bl	0x1490 <fan_speed_show+0x184>
		0000000000001490:  R_AARCH64_CALL26	msleep
    1494: f94002e8     	ldr	x8, [x23]
		0000000000001494:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1498: f9402516     	ldr	x22, [x8, #0x48]
    149c: b4000256     	cbz	x22, 0x14e4 <fan_speed_show+0x1d8>
    14a0: aa1603e0     	mov	x0, x22
    14a4: 94000000     	bl	0x14a4 <fan_speed_show+0x198>
		00000000000014a4:  R_AARCH64_CALL26	regulator_is_enabled
    14a8: 350001e0     	cbnz	w0, 0x14e4 <fan_speed_show+0x1d8>
    14ac: aa1603e0     	mov	x0, x22
    14b0: 94000000     	bl	0x14b0 <fan_speed_show+0x1a4>
		00000000000014b0:  R_AARCH64_CALL26	regulator_enable
    14b4: 2a0003f6     	mov	w22, w0
    14b8: 52800140     	mov	w0, #0xa                // =10
    14bc: 94000000     	bl	0x14bc <fan_speed_show+0x1b0>
		00000000000014bc:  R_AARCH64_CALL26	msleep
    14c0: 90000000     	adrp	x0, 0x1000 <fan_level_show+0x28>
		00000000000014c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa0c
    14c4: 91000000     	add	x0, x0, #0x0
		00000000000014c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa0c
    14c8: 90000001     	adrp	x1, 0x1000 <fan_level_show+0x28>
		00000000000014c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    14cc: 91000021     	add	x1, x1, #0x0
		00000000000014cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    14d0: 90000002     	adrp	x2, 0x1000 <fan_level_show+0x28>
		00000000000014d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb10
    14d4: 91000042     	add	x2, x2, #0x0
		00000000000014d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb10
    14d8: 52801da3     	mov	w3, #0xed               // =237
    14dc: 2a1603e4     	mov	w4, w22
    14e0: 94000000     	bl	0x14e0 <fan_speed_show+0x1d4>
		00000000000014e0:  R_AARCH64_CALL26	_printk
    14e4: f94002e8     	ldr	x8, [x23]
		00000000000014e4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    14e8: 2a1503e1     	mov	w1, w21
    14ec: f9400500     	ldr	x0, [x8, #0x8]
    14f0: 97fffe29     	bl	0xd94 <fan_level_set>
    14f4: f94002e8     	ldr	x8, [x23]
		00000000000014f4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    14f8: b9400306     	ldr	w6, [x24]
		00000000000014f8:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
    14fc: 90000000     	adrp	x0, 0x1000 <fan_level_show+0x28>
		00000000000014fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc0c
    1500: 91000000     	add	x0, x0, #0x0
		0000000000001500:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc0c
    1504: 90000001     	adrp	x1, 0x1000 <fan_level_show+0x28>
		0000000000001504:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    1508: 91000021     	add	x1, x1, #0x0
		0000000000001508:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    150c: f9400508     	ldr	x8, [x8, #0x8]
    1510: 90000002     	adrp	x2, 0x1000 <fan_level_show+0x28>
		0000000000001510:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dc
    1514: 91000042     	add	x2, x2, #0x0
		0000000000001514:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dc
    1518: 528035a3     	mov	w3, #0x1ad              // =429
    151c: 2a1403e5     	mov	w5, w20
    1520: 39400104     	ldrb	w4, [x8]
    1524: 94000000     	bl	0x1524 <fan_speed_show+0x218>
		0000000000001524:  R_AARCH64_CALL26	_printk
    1528: b9400308     	ldr	w8, [x24]
		0000000000001528:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
    152c: 7100291f     	cmp	w8, #0xa
    1530: 540001c1     	b.ne	0x1568 <fan_speed_show+0x25c>
    1534: f94002e8     	ldr	x8, [x23]
		0000000000001534:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1538: 90000000     	adrp	x0, 0x1000 <fan_level_show+0x28>
		0000000000001538:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x630
    153c: 91000000     	add	x0, x0, #0x0
		000000000000153c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x630
    1540: 90000001     	adrp	x1, 0x1000 <fan_level_show+0x28>
		0000000000001540:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    1544: 91000021     	add	x1, x1, #0x0
		0000000000001544:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    1548: 90000002     	adrp	x2, 0x1000 <fan_level_show+0x28>
		0000000000001548:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dc
    154c: 91000042     	add	x2, x2, #0x0
		000000000000154c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dc
    1550: f9400508     	ldr	x8, [x8, #0x8]
    1554: 52803603     	mov	w3, #0x1b0              // =432
    1558: 2a1403e5     	mov	w5, w20
    155c: 39400104     	ldrb	w4, [x8]
    1560: 94000000     	bl	0x1560 <fan_speed_show+0x254>
		0000000000001560:  R_AARCH64_CALL26	_printk
    1564: b9400308     	ldr	w8, [x24]
		0000000000001564:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
    1568: 11000508     	add	w8, w8, #0x1
    156c: b9000308     	str	w8, [x24]
		000000000000156c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
    1570: 90000001     	adrp	x1, 0x1000 <fan_level_show+0x28>
		0000000000001570:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fb
    1574: 91000021     	add	x1, x1, #0x0
		0000000000001574:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fb
    1578: aa1303e0     	mov	x0, x19
    157c: 2a1403e2     	mov	w2, w20
    1580: 94000000     	bl	0x1580 <fan_speed_show+0x274>
		0000000000001580:  R_AARCH64_CALL26	sprintf
    1584: f94002e8     	ldr	x8, [x23]
		0000000000001584:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1588: 2a0003f3     	mov	w19, w0
    158c: 91006100     	add	x0, x8, #0x18
    1590: 94000000     	bl	0x1590 <fan_speed_show+0x284>
		0000000000001590:  R_AARCH64_CALL26	mutex_unlock
    1594: f94002e8     	ldr	x8, [x23]
		0000000000001594:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1598: 90000000     	adrp	x0, 0x1000 <fan_level_show+0x28>
		0000000000001598:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa97
    159c: 91000000     	add	x0, x0, #0x0
		000000000000159c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa97
    15a0: 90000001     	adrp	x1, 0x1000 <fan_level_show+0x28>
		00000000000015a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    15a4: 91000021     	add	x1, x1, #0x0
		00000000000015a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    15a8: 90000002     	adrp	x2, 0x1000 <fan_level_show+0x28>
		00000000000015a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a5
    15ac: 91000042     	add	x2, x2, #0x0
		00000000000015ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a5
    15b0: f9400508     	ldr	x8, [x8, #0x8]
    15b4: 52803883     	mov	w3, #0x1c4              // =452
    15b8: 2a1403e5     	mov	w5, w20
    15bc: 39400104     	ldrb	w4, [x8]
    15c0: 94000000     	bl	0x15c0 <fan_speed_show+0x2b4>
		00000000000015c0:  R_AARCH64_CALL26	_printk
    15c4: 93407e60     	sxtw	x0, w19
    15c8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    15cc: a94257f6     	ldp	x22, x21, [sp, #0x20]
    15d0: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    15d4: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    15d8: d50323bf     	autiasp
    15dc: d65f03c0     	ret
