
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000013a0 <fan_level_set>:
    13a0: d503233f     	paciasp
    13a4: d10143ff     	sub	sp, sp, #0x50
    13a8: a9027bfd     	stp	x29, x30, [sp, #0x20]
    13ac: a90357f6     	stp	x22, x21, [sp, #0x30]
    13b0: a9044ff4     	stp	x20, x19, [sp, #0x40]
    13b4: 910083fd     	add	x29, sp, #0x20
    13b8: d5384108     	mrs	x8, SP_EL0
    13bc: 12001c33     	and	w19, w1, #0xff
    13c0: f9438908     	ldr	x8, [x8, #0x710]
    13c4: f81f83a8     	stur	x8, [x29, #-0x8]
    13c8: 39400008     	ldrb	w8, [x0]
    13cc: 6b13011f     	cmp	w8, w19
    13d0: 54000bc0     	b.eq	0x1548 <fan_level_set+0x1a8>
    13d4: 90000016     	adrp	x22, 0x1000 <nb_fan_parse_dt+0x268>
		00000000000013d4:  R_AARCH64_ADR_PREL_PG_HI21	chip
    13d8: aa0003f4     	mov	x20, x0
    13dc: f94002c8     	ldr	x8, [x22]
		00000000000013dc:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    13e0: f9402515     	ldr	x21, [x8, #0x48]
    13e4: 34000273     	cbz	w19, 0x1430 <fan_level_set+0x90>
    13e8: b40002d5     	cbz	x21, 0x1440 <fan_level_set+0xa0>
    13ec: aa1503e0     	mov	x0, x21
    13f0: 94000000     	bl	0x13f0 <fan_level_set+0x50>
		00000000000013f0:  R_AARCH64_CALL26	regulator_is_enabled
    13f4: 35000260     	cbnz	w0, 0x1440 <fan_level_set+0xa0>
    13f8: aa1503e0     	mov	x0, x21
    13fc: 94000000     	bl	0x13fc <fan_level_set+0x5c>
		00000000000013fc:  R_AARCH64_CALL26	regulator_enable
    1400: 2a0003f5     	mov	w21, w0
    1404: 52800140     	mov	w0, #0xa                // =10
    1408: 94000000     	bl	0x1408 <fan_level_set+0x68>
		0000000000001408:  R_AARCH64_CALL26	msleep
    140c: 90000000     	adrp	x0, 0x1000 <nb_fan_parse_dt+0x268>
		000000000000140c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c9
    1410: 91000000     	add	x0, x0, #0x0
		0000000000001410:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c9
    1414: 90000001     	adrp	x1, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001414:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    1418: 91000021     	add	x1, x1, #0x0
		0000000000001418:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    141c: 90000002     	adrp	x2, 0x1000 <nb_fan_parse_dt+0x268>
		000000000000141c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb1c
    1420: 91000042     	add	x2, x2, #0x0
		0000000000001420:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb1c
    1424: 52801da3     	mov	w3, #0xed               // =237
    1428: 2a1503e4     	mov	w4, w21
    142c: 1400006a     	b	0x15d4 <fan_level_set+0x234>
    1430: b4000095     	cbz	x21, 0x1440 <fan_level_set+0xa0>
    1434: aa1503e0     	mov	x0, x21
    1438: 94000000     	bl	0x1438 <fan_level_set+0x98>
		0000000000001438:  R_AARCH64_CALL26	regulator_is_enabled
    143c: 35000b80     	cbnz	w0, 0x15ac <fan_level_set+0x20c>
    1440: f9403688     	ldr	x8, [x20, #0x68]
    1444: 5283e809     	mov	w9, #0x1f40             // =8000
    1448: 7100027f     	cmp	w19, #0x0
    144c: 1b097e69     	mul	w9, w19, w9
    1450: 1a9f07ea     	cset	w10, ne
    1454: f9402108     	ldr	x8, [x8, #0x40]
    1458: a900a3e9     	stp	x9, x8, [sp, #0x8]
    145c: f94002c8     	ldr	x8, [x22]
		000000000000145c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1460: 52938809     	mov	w9, #0x9c40             // =40000
    1464: 390053ea     	strb	w10, [sp, #0x14]
    1468: f9400508     	ldr	x8, [x8, #0x8]
    146c: f90003e9     	str	x9, [sp]
    1470: b9401100     	ldr	w0, [x8, #0x10]
    1474: 94000000     	bl	0x1474 <fan_level_set+0xd4>
		0000000000001474:  R_AARCH64_CALL26	gpio_to_desc
    1478: 94000000     	bl	0x1478 <fan_level_set+0xd8>
		0000000000001478:  R_AARCH64_CALL26	gpiod_get_raw_value
    147c: 7100167f     	cmp	w19, #0x5
    1480: 54000241     	b.ne	0x14c8 <fan_level_set+0x128>
    1484: 7100041f     	cmp	w0, #0x1
    1488: 540000e1     	b.ne	0x14a4 <fan_level_set+0x104>
    148c: f94002c8     	ldr	x8, [x22]
		000000000000148c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1490: f9400508     	ldr	x8, [x8, #0x8]
    1494: b9401100     	ldr	w0, [x8, #0x10]
    1498: 94000000     	bl	0x1498 <fan_level_set+0xf8>
		0000000000001498:  R_AARCH64_CALL26	gpio_to_desc
    149c: 2a1f03e1     	mov	w1, wzr
    14a0: 94000000     	bl	0x14a0 <fan_level_set+0x100>
		00000000000014a0:  R_AARCH64_CALL26	gpiod_direction_output_raw
    14a4: f9403688     	ldr	x8, [x20, #0x68]
    14a8: f9402109     	ldr	x9, [x8, #0x40]
    14ac: b940290a     	ldr	w10, [x8, #0x28]
    14b0: f9401108     	ldr	x8, [x8, #0x20]
    14b4: a900a7ff     	stp	xzr, x9, [sp, #0x8]
    14b8: b90013ea     	str	w10, [sp, #0x10]
    14bc: f90003e8     	str	x8, [sp]
    14c0: 79002bff     	strh	wzr, [sp, #0x14]
    14c4: 14000008     	b	0x14e4 <fan_level_set+0x144>
    14c8: 350000e0     	cbnz	w0, 0x14e4 <fan_level_set+0x144>
    14cc: f94002c8     	ldr	x8, [x22]
		00000000000014cc:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    14d0: f9400508     	ldr	x8, [x8, #0x8]
    14d4: b9401100     	ldr	w0, [x8, #0x10]
    14d8: 94000000     	bl	0x14d8 <fan_level_set+0x138>
		00000000000014d8:  R_AARCH64_CALL26	gpio_to_desc
    14dc: 52800021     	mov	w1, #0x1                // =1
    14e0: 94000000     	bl	0x14e0 <fan_level_set+0x140>
		00000000000014e0:  R_AARCH64_CALL26	gpiod_direction_output_raw
    14e4: f9403681     	ldr	x1, [x20, #0x68]
    14e8: 910003e2     	mov	x2, sp
    14ec: f9400c20     	ldr	x0, [x1, #0x18]
    14f0: f941c808     	ldr	x8, [x0, #0x390]
    14f4: f9400d08     	ldr	x8, [x8, #0x18]
    14f8: b85fc110     	ldur	w16, [x8, #-0x4]
    14fc: 7292fa11     	movk	w17, #0x97d0
    1500: 72bbba11     	movk	w17, #0xddd0, lsl #16
    1504: 6b11021f     	cmp	w16, w17
    1508: 54000040     	b.eq	0x1510 <fan_level_set+0x170>
    150c: d4304500     	brk	#0x8228
    1510: d63f0100     	blr	x8
    1514: 37f80300     	tbnz	w0, #0x1f, 0x1574 <fan_level_set+0x1d4>
    1518: 39000293     	strb	w19, [x20]
    151c: d5384108     	mrs	x8, SP_EL0
    1520: f9438908     	ldr	x8, [x8, #0x710]
    1524: f85f83a9     	ldur	x9, [x29, #-0x8]
    1528: eb09011f     	cmp	x8, x9
    152c: 54000581     	b.ne	0x15dc <fan_level_set+0x23c>
    1530: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    1534: a94357f6     	ldp	x22, x21, [sp, #0x30]
    1538: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    153c: 910143ff     	add	sp, sp, #0x50
    1540: d50323bf     	autiasp
    1544: d65f03c0     	ret
    1548: 90000000     	adrp	x0, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001548:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa9b
    154c: 91000000     	add	x0, x0, #0x0
		000000000000154c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa9b
    1550: 90000001     	adrp	x1, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001550:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    1554: 91000021     	add	x1, x1, #0x0
		0000000000001554:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    1558: 90000002     	adrp	x2, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001558:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21e
    155c: 91000042     	add	x2, x2, #0x0
		000000000000155c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21e
    1560: 52801283     	mov	w3, #0x94               // =148
    1564: 2a1303e4     	mov	w4, w19
    1568: 94000000     	bl	0x1568 <fan_level_set+0x1c8>
		0000000000001568:  R_AARCH64_CALL26	_printk
    156c: 2a1f03e0     	mov	w0, wzr
    1570: 17ffffeb     	b	0x151c <fan_level_set+0x17c>
    1574: 90000008     	adrp	x8, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001574:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b8
    1578: 91000108     	add	x8, x8, #0x0
		0000000000001578:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b8
    157c: 2a0003f4     	mov	w20, w0
    1580: 90000001     	adrp	x1, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001580:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    1584: 91000021     	add	x1, x1, #0x0
		0000000000001584:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    1588: 90000002     	adrp	x2, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001588:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21e
    158c: 91000042     	add	x2, x2, #0x0
		000000000000158c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21e
    1590: aa0803e0     	mov	x0, x8
    1594: 528017e3     	mov	w3, #0xbf               // =191
    1598: 2a1303e4     	mov	w4, w19
    159c: 2a1403e5     	mov	w5, w20
    15a0: 94000000     	bl	0x15a0 <fan_level_set+0x200>
		00000000000015a0:  R_AARCH64_CALL26	_printk
    15a4: 2a1403e0     	mov	w0, w20
    15a8: 17ffffdd     	b	0x151c <fan_level_set+0x17c>
    15ac: aa1503e0     	mov	x0, x21
    15b0: 94000000     	bl	0x15b0 <fan_level_set+0x210>
		00000000000015b0:  R_AARCH64_CALL26	regulator_disable
    15b4: 2a0003e4     	mov	w4, w0
    15b8: 90000000     	adrp	x0, 0x1000 <nb_fan_parse_dt+0x268>
		00000000000015b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32
    15bc: 91000000     	add	x0, x0, #0x0
		00000000000015bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32
    15c0: 90000001     	adrp	x1, 0x1000 <nb_fan_parse_dt+0x268>
		00000000000015c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    15c4: 91000021     	add	x1, x1, #0x0
		00000000000015c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    15c8: 90000002     	adrp	x2, 0x1000 <nb_fan_parse_dt+0x268>
		00000000000015c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb1c
    15cc: 91000042     	add	x2, x2, #0x0
		00000000000015cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb1c
    15d0: 52801ca3     	mov	w3, #0xe5               // =229
    15d4: 94000000     	bl	0x15d4 <fan_level_set+0x234>
		00000000000015d4:  R_AARCH64_CALL26	_printk
    15d8: 17ffff9a     	b	0x1440 <fan_level_set+0xa0>
    15dc: 94000000     	bl	0x15dc <fan_level_set+0x23c>
		00000000000015dc:  R_AARCH64_CALL26	__stack_chk_fail
