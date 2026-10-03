
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000151c <aw22xxx_brightness_work>:
    151c: d503233f     	paciasp
    1520: d10103ff     	sub	sp, sp, #0x40
    1524: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1528: f90013f5     	str	x21, [sp, #0x20]
    152c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1530: 910043fd     	add	x29, sp, #0x10
    1534: d5384108     	mrs	x8, SP_EL0
    1538: 90000015     	adrp	x21, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001538:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17dc
    153c: 910002b5     	add	x21, x21, #0x0
		000000000000153c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17dc
    1540: f9438908     	ldr	x8, [x8, #0x710]
    1544: aa0003f4     	mov	x20, x0
    1548: d1074013     	sub	x19, x0, #0x1d0
    154c: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		000000000000154c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1518
    1550: 91000000     	add	x0, x0, #0x0
		0000000000001550:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1518
    1554: aa1503e1     	mov	x1, x21
    1558: f90007e8     	str	x8, [sp, #0x8]
    155c: 390013ff     	strb	wzr, [sp, #0x4]
    1560: 94000000     	bl	0x1560 <aw22xxx_brightness_work+0x44>
		0000000000001560:  R_AARCH64_CALL26	_printk
    1564: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001564:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf88
    1568: 91000000     	add	x0, x0, #0x0
		0000000000001568:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf88
    156c: aa1503e1     	mov	x1, x21
    1570: 94000000     	bl	0x1570 <aw22xxx_brightness_work+0x54>
		0000000000001570:  R_AARCH64_CALL26	_printk
    1574: aa1303e0     	mov	x0, x19
    1578: 528000a1     	mov	w1, #0x5                // =5
    157c: 52801fe2     	mov	w2, #0xff               // =255
    1580: 97fffab8     	bl	0x60 <aw22xxx_i2c_write>
    1584: 910013e2     	add	x2, sp, #0x4
    1588: aa1303e0     	mov	x0, x19
    158c: 52800081     	mov	w1, #0x4                // =4
    1590: 97ffffa4     	bl	0x1420 <aw22xxx_i2c_read>
    1594: 394013e8     	ldrb	w8, [sp, #0x4]
    1598: aa1303e0     	mov	x0, x19
    159c: 52800081     	mov	w1, #0x4                // =4
    15a0: 121e7902     	and	w2, w8, #0xfffffffd
    15a4: 390013e2     	strb	w2, [sp, #0x4]
    15a8: 97fffaae     	bl	0x60 <aw22xxx_i2c_write>
    15ac: 910013e2     	add	x2, sp, #0x4
    15b0: aa1303e0     	mov	x0, x19
    15b4: 52800041     	mov	w1, #0x2                // =2
    15b8: 97ffff9a     	bl	0x1420 <aw22xxx_i2c_read>
    15bc: 394013e8     	ldrb	w8, [sp, #0x4]
    15c0: aa1303e0     	mov	x0, x19
    15c4: 52800041     	mov	w1, #0x2                // =2
    15c8: 121f7902     	and	w2, w8, #0xfffffffe
    15cc: 390013e2     	strb	w2, [sp, #0x4]
    15d0: 97fffaa4     	bl	0x60 <aw22xxx_i2c_write>
    15d4: 5280fa00     	mov	w0, #0x7d0              // =2000
    15d8: 52817701     	mov	w1, #0xbb8              // =3000
    15dc: 52800042     	mov	w2, #0x2                // =2
    15e0: 94000000     	bl	0x15e0 <aw22xxx_brightness_work+0xc4>
		00000000000015e0:  R_AARCH64_CALL26	usleep_range_state
    15e4: d106e288     	sub	x8, x20, #0x1b8
    15e8: b9400108     	ldr	w8, [x8]
    15ec: 35000188     	cbnz	w8, 0x161c <aw22xxx_brightness_work+0x100>
    15f0: d5384108     	mrs	x8, SP_EL0
    15f4: f9438908     	ldr	x8, [x8, #0x710]
    15f8: f94007e9     	ldr	x9, [sp, #0x8]
    15fc: eb09011f     	cmp	x8, x9
    1600: 54000a61     	b.ne	0x174c <aw22xxx_brightness_work+0x230>
    1604: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1608: f94013f5     	ldr	x21, [sp, #0x20]
    160c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1610: 910103ff     	add	sp, sp, #0x40
    1614: d50323bf     	autiasp
    1618: d65f03c0     	ret
    161c: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		000000000000161c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1111
    1620: 91000000     	add	x0, x0, #0x0
		0000000000001620:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1111
    1624: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001624:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17dc
    1628: 91000021     	add	x1, x1, #0x0
		0000000000001628:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17dc
    162c: 94000000     	bl	0x162c <aw22xxx_brightness_work+0x110>
		000000000000162c:  R_AARCH64_CALL26	_printk
    1630: 910013e2     	add	x2, sp, #0x4
    1634: aa1303e0     	mov	x0, x19
    1638: 52800041     	mov	w1, #0x2                // =2
    163c: 97ffff79     	bl	0x1420 <aw22xxx_i2c_read>
    1640: 394013e8     	ldrb	w8, [sp, #0x4]
    1644: aa1303e0     	mov	x0, x19
    1648: 52800041     	mov	w1, #0x2                // =2
    164c: 32000102     	orr	w2, w8, #0x1
    1650: 390013e2     	strb	w2, [sp, #0x4]
    1654: 97fffa83     	bl	0x60 <aw22xxx_i2c_write>
    1658: 5280fa00     	mov	w0, #0x7d0              // =2000
    165c: 52817701     	mov	w1, #0xbb8              // =3000
    1660: 52800042     	mov	w2, #0x2                // =2
    1664: 94000000     	bl	0x1664 <aw22xxx_brightness_work+0x148>
		0000000000001664:  R_AARCH64_CALL26	usleep_range_state
    1668: 910013e2     	add	x2, sp, #0x4
    166c: aa1303e0     	mov	x0, x19
    1670: 52800081     	mov	w1, #0x4                // =4
    1674: 97ffff6b     	bl	0x1420 <aw22xxx_i2c_read>
    1678: 394013e8     	ldrb	w8, [sp, #0x4]
    167c: aa1303e0     	mov	x0, x19
    1680: 52800081     	mov	w1, #0x4                // =4
    1684: 32000102     	orr	w2, w8, #0x1
    1688: 390013e2     	strb	w2, [sp, #0x4]
    168c: 97fffa75     	bl	0x60 <aw22xxx_i2c_write>
    1690: b9412288     	ldr	w8, [x20, #0x120]
    1694: 528001e9     	mov	w9, #0xf                // =15
    1698: aa1303e0     	mov	x0, x19
    169c: 52801fe1     	mov	w1, #0xff               // =255
    16a0: 2a1f03e2     	mov	w2, wzr
    16a4: 7100391f     	cmp	w8, #0xe
    16a8: 1a888134     	csel	w20, w9, w8, hi
    16ac: 97fffa6d     	bl	0x60 <aw22xxx_i2c_write>
    16b0: aa1303e0     	mov	x0, x19
    16b4: 52800161     	mov	w1, #0xb                // =11
    16b8: 2a1403e2     	mov	w2, w20
    16bc: 97fffa69     	bl	0x60 <aw22xxx_i2c_write>
    16c0: aa1303e0     	mov	x0, x19
    16c4: 52800421     	mov	w1, #0x21               // =33
    16c8: 52801c22     	mov	w2, #0xe1               // =225
    16cc: 97fffa65     	bl	0x60 <aw22xxx_i2c_write>
    16d0: aa1303e0     	mov	x0, x19
    16d4: 52800441     	mov	w1, #0x22               // =34
    16d8: 2a1f03e2     	mov	w2, wzr
    16dc: 97fffa61     	bl	0x60 <aw22xxx_i2c_write>
    16e0: aa1303e0     	mov	x0, x19
    16e4: 52800401     	mov	w1, #0x20               // =32
    16e8: 52800042     	mov	w2, #0x2                // =2
    16ec: 97fffa5d     	bl	0x60 <aw22xxx_i2c_write>
    16f0: aa1303e0     	mov	x0, x19
    16f4: 52800461     	mov	w1, #0x23               // =35
    16f8: 528007a2     	mov	w2, #0x3d               // =61
    16fc: 97fffa59     	bl	0x60 <aw22xxx_i2c_write>
    1700: aa1303e0     	mov	x0, x19
    1704: 52800401     	mov	w1, #0x20               // =32
    1708: 2a1f03e2     	mov	w2, wzr
    170c: 97fffa55     	bl	0x60 <aw22xxx_i2c_write>
    1710: aa1303e0     	mov	x0, x19
    1714: 528000a1     	mov	w1, #0x5                // =5
    1718: 52801042     	mov	w2, #0x82               // =130
    171c: 97fffa51     	bl	0x60 <aw22xxx_i2c_write>
    1720: 910013e2     	add	x2, sp, #0x4
    1724: aa1303e0     	mov	x0, x19
    1728: 52800081     	mov	w1, #0x4                // =4
    172c: 97ffff3d     	bl	0x1420 <aw22xxx_i2c_read>
    1730: 394013e8     	ldrb	w8, [sp, #0x4]
    1734: aa1303e0     	mov	x0, x19
    1738: 52800081     	mov	w1, #0x4                // =4
    173c: 321f0102     	orr	w2, w8, #0x2
    1740: 390013e2     	strb	w2, [sp, #0x4]
    1744: 97fffa47     	bl	0x60 <aw22xxx_i2c_write>
    1748: 17ffffaa     	b	0x15f0 <aw22xxx_brightness_work+0xd4>
    174c: 94000000     	bl	0x174c <aw22xxx_brightness_work+0x230>
		000000000000174c:  R_AARCH64_CALL26	__stack_chk_fail
