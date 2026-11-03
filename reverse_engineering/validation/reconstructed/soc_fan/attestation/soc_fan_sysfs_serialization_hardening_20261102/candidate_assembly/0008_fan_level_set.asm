
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001520 <fan_level_set>:
    1520: d503233f     	paciasp
    1524: d10143ff     	sub	sp, sp, #0x50
    1528: a9027bfd     	stp	x29, x30, [sp, #0x20]
    152c: a90357f6     	stp	x22, x21, [sp, #0x30]
    1530: a9044ff4     	stp	x20, x19, [sp, #0x40]
    1534: 910083fd     	add	x29, sp, #0x20
    1538: d5384108     	mrs	x8, SP_EL0
    153c: 12001c33     	and	w19, w1, #0xff
    1540: f9438908     	ldr	x8, [x8, #0x710]
    1544: f81f83a8     	stur	x8, [x29, #-0x8]
    1548: 39400008     	ldrb	w8, [x0]
    154c: 6b13011f     	cmp	w8, w19
    1550: 54000bc0     	b.eq	0x16c8 <fan_level_set+0x1a8>
    1554: 90000016     	adrp	x22, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		0000000000001554:  R_AARCH64_ADR_PREL_PG_HI21	chip
    1558: aa0003f4     	mov	x20, x0
    155c: f94002c8     	ldr	x8, [x22]
		000000000000155c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1560: f9402515     	ldr	x21, [x8, #0x48]
    1564: 34000273     	cbz	w19, 0x15b0 <fan_level_set+0x90>
    1568: b40002d5     	cbz	x21, 0x15c0 <fan_level_set+0xa0>
    156c: aa1503e0     	mov	x0, x21
    1570: 94000000     	bl	0x1570 <fan_level_set+0x50>
		0000000000001570:  R_AARCH64_CALL26	regulator_is_enabled
    1574: 35000260     	cbnz	w0, 0x15c0 <fan_level_set+0xa0>
    1578: aa1503e0     	mov	x0, x21
    157c: 97ffff31     	bl	0x1240 <nb_fan_regulator_enable>
    1580: 2a0003f5     	mov	w21, w0
    1584: 52800140     	mov	w0, #0xa                // =10
    1588: 94000000     	bl	0x1588 <fan_level_set+0x68>
		0000000000001588:  R_AARCH64_CALL26	msleep
    158c: 90000000     	adrp	x0, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		000000000000158c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fc
    1590: 91000000     	add	x0, x0, #0x0
		0000000000001590:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fc
    1594: 90000001     	adrp	x1, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		0000000000001594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
    1598: 91000021     	add	x1, x1, #0x0
		0000000000001598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
    159c: 90000002     	adrp	x2, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		000000000000159c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb4f
    15a0: 91000042     	add	x2, x2, #0x0
		00000000000015a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb4f
    15a4: 52801da3     	mov	w3, #0xed               // =237
    15a8: 2a1503e4     	mov	w4, w21
    15ac: 1400006a     	b	0x1754 <fan_level_set+0x234>
    15b0: b4000095     	cbz	x21, 0x15c0 <fan_level_set+0xa0>
    15b4: aa1503e0     	mov	x0, x21
    15b8: 94000000     	bl	0x15b8 <fan_level_set+0x98>
		00000000000015b8:  R_AARCH64_CALL26	regulator_is_enabled
    15bc: 35000b80     	cbnz	w0, 0x172c <fan_level_set+0x20c>
    15c0: f9403688     	ldr	x8, [x20, #0x68]
    15c4: 5283e809     	mov	w9, #0x1f40             // =8000
    15c8: 7100027f     	cmp	w19, #0x0
    15cc: 1b097e69     	mul	w9, w19, w9
    15d0: 1a9f07ea     	cset	w10, ne
    15d4: f9402108     	ldr	x8, [x8, #0x40]
    15d8: a900a3e9     	stp	x9, x8, [sp, #0x8]
    15dc: f94002c8     	ldr	x8, [x22]
		00000000000015dc:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    15e0: 52938809     	mov	w9, #0x9c40             // =40000
    15e4: 390053ea     	strb	w10, [sp, #0x14]
    15e8: f9400508     	ldr	x8, [x8, #0x8]
    15ec: f90003e9     	str	x9, [sp]
    15f0: b9401100     	ldr	w0, [x8, #0x10]
    15f4: 94000000     	bl	0x15f4 <fan_level_set+0xd4>
		00000000000015f4:  R_AARCH64_CALL26	gpio_to_desc
    15f8: 94000000     	bl	0x15f8 <fan_level_set+0xd8>
		00000000000015f8:  R_AARCH64_CALL26	gpiod_get_raw_value
    15fc: 7100167f     	cmp	w19, #0x5
    1600: 54000241     	b.ne	0x1648 <fan_level_set+0x128>
    1604: 7100041f     	cmp	w0, #0x1
    1608: 540000e1     	b.ne	0x1624 <fan_level_set+0x104>
    160c: f94002c8     	ldr	x8, [x22]
		000000000000160c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1610: f9400508     	ldr	x8, [x8, #0x8]
    1614: b9401100     	ldr	w0, [x8, #0x10]
    1618: 94000000     	bl	0x1618 <fan_level_set+0xf8>
		0000000000001618:  R_AARCH64_CALL26	gpio_to_desc
    161c: 2a1f03e1     	mov	w1, wzr
    1620: 94000000     	bl	0x1620 <fan_level_set+0x100>
		0000000000001620:  R_AARCH64_CALL26	gpiod_direction_output_raw
    1624: f9403688     	ldr	x8, [x20, #0x68]
    1628: f9402109     	ldr	x9, [x8, #0x40]
    162c: b940290a     	ldr	w10, [x8, #0x28]
    1630: f9401108     	ldr	x8, [x8, #0x20]
    1634: a900a7ff     	stp	xzr, x9, [sp, #0x8]
    1638: b90013ea     	str	w10, [sp, #0x10]
    163c: f90003e8     	str	x8, [sp]
    1640: 79002bff     	strh	wzr, [sp, #0x14]
    1644: 14000008     	b	0x1664 <fan_level_set+0x144>
    1648: 350000e0     	cbnz	w0, 0x1664 <fan_level_set+0x144>
    164c: f94002c8     	ldr	x8, [x22]
		000000000000164c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1650: f9400508     	ldr	x8, [x8, #0x8]
    1654: b9401100     	ldr	w0, [x8, #0x10]
    1658: 94000000     	bl	0x1658 <fan_level_set+0x138>
		0000000000001658:  R_AARCH64_CALL26	gpio_to_desc
    165c: 52800021     	mov	w1, #0x1                // =1
    1660: 94000000     	bl	0x1660 <fan_level_set+0x140>
		0000000000001660:  R_AARCH64_CALL26	gpiod_direction_output_raw
    1664: f9403681     	ldr	x1, [x20, #0x68]
    1668: 910003e2     	mov	x2, sp
    166c: f9400c20     	ldr	x0, [x1, #0x18]
    1670: f941c808     	ldr	x8, [x0, #0x390]
    1674: f9400d08     	ldr	x8, [x8, #0x18]
    1678: b85fc110     	ldur	w16, [x8, #-0x4]
    167c: 7292fa11     	movk	w17, #0x97d0
    1680: 72bbba11     	movk	w17, #0xddd0, lsl #16
    1684: 6b11021f     	cmp	w16, w17
    1688: 54000040     	b.eq	0x1690 <fan_level_set+0x170>
    168c: d4304500     	brk	#0x8228
    1690: d63f0100     	blr	x8
    1694: 37f80300     	tbnz	w0, #0x1f, 0x16f4 <fan_level_set+0x1d4>
    1698: 39000293     	strb	w19, [x20]
    169c: d5384108     	mrs	x8, SP_EL0
    16a0: f9438908     	ldr	x8, [x8, #0x710]
    16a4: f85f83a9     	ldur	x9, [x29, #-0x8]
    16a8: eb09011f     	cmp	x8, x9
    16ac: 54000581     	b.ne	0x175c <fan_level_set+0x23c>
    16b0: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    16b4: a94357f6     	ldp	x22, x21, [sp, #0x30]
    16b8: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    16bc: 910143ff     	add	sp, sp, #0x50
    16c0: d50323bf     	autiasp
    16c4: d65f03c0     	ret
    16c8: 90000000     	adrp	x0, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		00000000000016c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xace
    16cc: 91000000     	add	x0, x0, #0x0
		00000000000016cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xace
    16d0: 90000001     	adrp	x1, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		00000000000016d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
    16d4: 91000021     	add	x1, x1, #0x0
		00000000000016d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
    16d8: 90000002     	adrp	x2, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		00000000000016d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21e
    16dc: 91000042     	add	x2, x2, #0x0
		00000000000016dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21e
    16e0: 52801283     	mov	w3, #0x94               // =148
    16e4: 2a1303e4     	mov	w4, w19
    16e8: 94000000     	bl	0x16e8 <fan_level_set+0x1c8>
		00000000000016e8:  R_AARCH64_CALL26	_printk
    16ec: 2a1f03e0     	mov	w0, wzr
    16f0: 17ffffeb     	b	0x169c <fan_level_set+0x17c>
    16f4: 90000008     	adrp	x8, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		00000000000016f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5eb
    16f8: 91000108     	add	x8, x8, #0x0
		00000000000016f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5eb
    16fc: 2a0003f4     	mov	w20, w0
    1700: 90000001     	adrp	x1, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		0000000000001700:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
    1704: 91000021     	add	x1, x1, #0x0
		0000000000001704:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
    1708: 90000002     	adrp	x2, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		0000000000001708:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21e
    170c: 91000042     	add	x2, x2, #0x0
		000000000000170c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21e
    1710: aa0803e0     	mov	x0, x8
    1714: 528017e3     	mov	w3, #0xbf               // =191
    1718: 2a1303e4     	mov	w4, w19
    171c: 2a1403e5     	mov	w5, w20
    1720: 94000000     	bl	0x1720 <fan_level_set+0x200>
		0000000000001720:  R_AARCH64_CALL26	_printk
    1724: 2a1403e0     	mov	w0, w20
    1728: 17ffffdd     	b	0x169c <fan_level_set+0x17c>
    172c: aa1503e0     	mov	x0, x21
    1730: 97fffee0     	bl	0x12b0 <nb_fan_regulator_disable>
    1734: 2a0003e4     	mov	w4, w0
    1738: 90000000     	adrp	x0, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		0000000000001738:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32
    173c: 91000000     	add	x0, x0, #0x0
		000000000000173c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32
    1740: 90000001     	adrp	x1, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		0000000000001740:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
    1744: 91000021     	add	x1, x1, #0x0
		0000000000001744:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
    1748: 90000002     	adrp	x2, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		0000000000001748:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb4f
    174c: 91000042     	add	x2, x2, #0x0
		000000000000174c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb4f
    1750: 52801ca3     	mov	w3, #0xe5               // =229
    1754: 94000000     	bl	0x1754 <fan_level_set+0x234>
		0000000000001754:  R_AARCH64_CALL26	_printk
    1758: 17ffff9a     	b	0x15c0 <fan_level_set+0xa0>
    175c: 94000000     	bl	0x175c <fan_level_set+0x23c>
		000000000000175c:  R_AARCH64_CALL26	__stack_chk_fail
