
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000013a8 <fan_level_set>:
    13a8: d503233f     	paciasp
    13ac: d10143ff     	sub	sp, sp, #0x50
    13b0: a9027bfd     	stp	x29, x30, [sp, #0x20]
    13b4: a90357f6     	stp	x22, x21, [sp, #0x30]
    13b8: a9044ff4     	stp	x20, x19, [sp, #0x40]
    13bc: 910083fd     	add	x29, sp, #0x20
    13c0: d5384108     	mrs	x8, SP_EL0
    13c4: 12001c33     	and	w19, w1, #0xff
    13c8: f9438908     	ldr	x8, [x8, #0x710]
    13cc: f81f83a8     	stur	x8, [x29, #-0x8]
    13d0: 39400008     	ldrb	w8, [x0]
    13d4: 6b13011f     	cmp	w8, w19
    13d8: 54000bc0     	b.eq	0x1550 <fan_level_set+0x1a8>
    13dc: 90000016     	adrp	x22, 0x1000 <nb_fan_parse_dt+0x268>
		00000000000013dc:  R_AARCH64_ADR_PREL_PG_HI21	chip
    13e0: aa0003f4     	mov	x20, x0
    13e4: f94002c8     	ldr	x8, [x22]
		00000000000013e4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    13e8: f9402515     	ldr	x21, [x8, #0x48]
    13ec: 34000273     	cbz	w19, 0x1438 <fan_level_set+0x90>
    13f0: b40002d5     	cbz	x21, 0x1448 <fan_level_set+0xa0>
    13f4: aa1503e0     	mov	x0, x21
    13f8: 94000000     	bl	0x13f8 <fan_level_set+0x50>
		00000000000013f8:  R_AARCH64_CALL26	regulator_is_enabled
    13fc: 35000260     	cbnz	w0, 0x1448 <fan_level_set+0xa0>
    1400: aa1503e0     	mov	x0, x21
    1404: 94000000     	bl	0x1404 <fan_level_set+0x5c>
		0000000000001404:  R_AARCH64_CALL26	regulator_enable
    1408: 2a0003f5     	mov	w21, w0
    140c: 52800140     	mov	w0, #0xa                // =10
    1410: 94000000     	bl	0x1410 <fan_level_set+0x68>
		0000000000001410:  R_AARCH64_CALL26	msleep
    1414: 90000000     	adrp	x0, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001414:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c9
    1418: 91000000     	add	x0, x0, #0x0
		0000000000001418:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c9
    141c: 90000001     	adrp	x1, 0x1000 <nb_fan_parse_dt+0x268>
		000000000000141c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    1420: 91000021     	add	x1, x1, #0x0
		0000000000001420:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    1424: 90000002     	adrp	x2, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001424:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb1c
    1428: 91000042     	add	x2, x2, #0x0
		0000000000001428:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb1c
    142c: 52801da3     	mov	w3, #0xed               // =237
    1430: 2a1503e4     	mov	w4, w21
    1434: 1400006a     	b	0x15dc <fan_level_set+0x234>
    1438: b4000095     	cbz	x21, 0x1448 <fan_level_set+0xa0>
    143c: aa1503e0     	mov	x0, x21
    1440: 94000000     	bl	0x1440 <fan_level_set+0x98>
		0000000000001440:  R_AARCH64_CALL26	regulator_is_enabled
    1444: 35000b80     	cbnz	w0, 0x15b4 <fan_level_set+0x20c>
    1448: f9403688     	ldr	x8, [x20, #0x68]
    144c: 5283e809     	mov	w9, #0x1f40             // =8000
    1450: 7100027f     	cmp	w19, #0x0
    1454: 1b097e69     	mul	w9, w19, w9
    1458: 1a9f07ea     	cset	w10, ne
    145c: f9402108     	ldr	x8, [x8, #0x40]
    1460: a900a3e9     	stp	x9, x8, [sp, #0x8]
    1464: f94002c8     	ldr	x8, [x22]
		0000000000001464:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1468: 52938809     	mov	w9, #0x9c40             // =40000
    146c: 390053ea     	strb	w10, [sp, #0x14]
    1470: f9400508     	ldr	x8, [x8, #0x8]
    1474: f90003e9     	str	x9, [sp]
    1478: b9401100     	ldr	w0, [x8, #0x10]
    147c: 94000000     	bl	0x147c <fan_level_set+0xd4>
		000000000000147c:  R_AARCH64_CALL26	gpio_to_desc
    1480: 94000000     	bl	0x1480 <fan_level_set+0xd8>
		0000000000001480:  R_AARCH64_CALL26	gpiod_get_raw_value
    1484: 7100167f     	cmp	w19, #0x5
    1488: 54000241     	b.ne	0x14d0 <fan_level_set+0x128>
    148c: 7100041f     	cmp	w0, #0x1
    1490: 540000e1     	b.ne	0x14ac <fan_level_set+0x104>
    1494: f94002c8     	ldr	x8, [x22]
		0000000000001494:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1498: f9400508     	ldr	x8, [x8, #0x8]
    149c: b9401100     	ldr	w0, [x8, #0x10]
    14a0: 94000000     	bl	0x14a0 <fan_level_set+0xf8>
		00000000000014a0:  R_AARCH64_CALL26	gpio_to_desc
    14a4: 2a1f03e1     	mov	w1, wzr
    14a8: 94000000     	bl	0x14a8 <fan_level_set+0x100>
		00000000000014a8:  R_AARCH64_CALL26	gpiod_direction_output_raw
    14ac: f9403688     	ldr	x8, [x20, #0x68]
    14b0: f9402109     	ldr	x9, [x8, #0x40]
    14b4: b940290a     	ldr	w10, [x8, #0x28]
    14b8: f9401108     	ldr	x8, [x8, #0x20]
    14bc: a900a7ff     	stp	xzr, x9, [sp, #0x8]
    14c0: b90013ea     	str	w10, [sp, #0x10]
    14c4: f90003e8     	str	x8, [sp]
    14c8: 79002bff     	strh	wzr, [sp, #0x14]
    14cc: 14000008     	b	0x14ec <fan_level_set+0x144>
    14d0: 350000e0     	cbnz	w0, 0x14ec <fan_level_set+0x144>
    14d4: f94002c8     	ldr	x8, [x22]
		00000000000014d4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    14d8: f9400508     	ldr	x8, [x8, #0x8]
    14dc: b9401100     	ldr	w0, [x8, #0x10]
    14e0: 94000000     	bl	0x14e0 <fan_level_set+0x138>
		00000000000014e0:  R_AARCH64_CALL26	gpio_to_desc
    14e4: 52800021     	mov	w1, #0x1                // =1
    14e8: 94000000     	bl	0x14e8 <fan_level_set+0x140>
		00000000000014e8:  R_AARCH64_CALL26	gpiod_direction_output_raw
    14ec: f9403681     	ldr	x1, [x20, #0x68]
    14f0: 910003e2     	mov	x2, sp
    14f4: f9400c20     	ldr	x0, [x1, #0x18]
    14f8: f941c808     	ldr	x8, [x0, #0x390]
    14fc: f9400d08     	ldr	x8, [x8, #0x18]
    1500: b85fc110     	ldur	w16, [x8, #-0x4]
    1504: 7292fa11     	movk	w17, #0x97d0
    1508: 72bbba11     	movk	w17, #0xddd0, lsl #16
    150c: 6b11021f     	cmp	w16, w17
    1510: 54000040     	b.eq	0x1518 <fan_level_set+0x170>
    1514: d4304500     	brk	#0x8228
    1518: d63f0100     	blr	x8
    151c: 37f80300     	tbnz	w0, #0x1f, 0x157c <fan_level_set+0x1d4>
    1520: 39000293     	strb	w19, [x20]
    1524: d5384108     	mrs	x8, SP_EL0
    1528: f9438908     	ldr	x8, [x8, #0x710]
    152c: f85f83a9     	ldur	x9, [x29, #-0x8]
    1530: eb09011f     	cmp	x8, x9
    1534: 54000581     	b.ne	0x15e4 <fan_level_set+0x23c>
    1538: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    153c: a94357f6     	ldp	x22, x21, [sp, #0x30]
    1540: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    1544: 910143ff     	add	sp, sp, #0x50
    1548: d50323bf     	autiasp
    154c: d65f03c0     	ret
    1550: 90000000     	adrp	x0, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001550:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa9b
    1554: 91000000     	add	x0, x0, #0x0
		0000000000001554:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa9b
    1558: 90000001     	adrp	x1, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001558:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    155c: 91000021     	add	x1, x1, #0x0
		000000000000155c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    1560: 90000002     	adrp	x2, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001560:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21e
    1564: 91000042     	add	x2, x2, #0x0
		0000000000001564:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21e
    1568: 52801283     	mov	w3, #0x94               // =148
    156c: 2a1303e4     	mov	w4, w19
    1570: 94000000     	bl	0x1570 <fan_level_set+0x1c8>
		0000000000001570:  R_AARCH64_CALL26	_printk
    1574: 2a1f03e0     	mov	w0, wzr
    1578: 17ffffeb     	b	0x1524 <fan_level_set+0x17c>
    157c: 90000008     	adrp	x8, 0x1000 <nb_fan_parse_dt+0x268>
		000000000000157c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b8
    1580: 91000108     	add	x8, x8, #0x0
		0000000000001580:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b8
    1584: 2a0003f4     	mov	w20, w0
    1588: 90000001     	adrp	x1, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001588:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    158c: 91000021     	add	x1, x1, #0x0
		000000000000158c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    1590: 90000002     	adrp	x2, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001590:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21e
    1594: 91000042     	add	x2, x2, #0x0
		0000000000001594:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21e
    1598: aa0803e0     	mov	x0, x8
    159c: 528017e3     	mov	w3, #0xbf               // =191
    15a0: 2a1303e4     	mov	w4, w19
    15a4: 2a1403e5     	mov	w5, w20
    15a8: 94000000     	bl	0x15a8 <fan_level_set+0x200>
		00000000000015a8:  R_AARCH64_CALL26	_printk
    15ac: 2a1403e0     	mov	w0, w20
    15b0: 17ffffdd     	b	0x1524 <fan_level_set+0x17c>
    15b4: aa1503e0     	mov	x0, x21
    15b8: 94000000     	bl	0x15b8 <fan_level_set+0x210>
		00000000000015b8:  R_AARCH64_CALL26	regulator_disable
    15bc: 2a0003e4     	mov	w4, w0
    15c0: 90000000     	adrp	x0, 0x1000 <nb_fan_parse_dt+0x268>
		00000000000015c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32
    15c4: 91000000     	add	x0, x0, #0x0
		00000000000015c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32
    15c8: 90000001     	adrp	x1, 0x1000 <nb_fan_parse_dt+0x268>
		00000000000015c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    15cc: 91000021     	add	x1, x1, #0x0
		00000000000015cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    15d0: 90000002     	adrp	x2, 0x1000 <nb_fan_parse_dt+0x268>
		00000000000015d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb1c
    15d4: 91000042     	add	x2, x2, #0x0
		00000000000015d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb1c
    15d8: 52801ca3     	mov	w3, #0xe5               // =229
    15dc: 94000000     	bl	0x15dc <fan_level_set+0x234>
		00000000000015dc:  R_AARCH64_CALL26	_printk
    15e0: 17ffff9a     	b	0x1448 <fan_level_set+0xa0>
    15e4: 94000000     	bl	0x15e4 <fan_level_set+0x23c>
		00000000000015e4:  R_AARCH64_CALL26	__stack_chk_fail
