
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000014a4 <aw22xxx_parse_led_cdev>:
    14a4: d503233f     	paciasp
    14a8: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    14ac: f9000bf9     	str	x25, [sp, #0x10]
    14b0: a9025ff8     	stp	x24, x23, [sp, #0x20]
    14b4: a90357f6     	stp	x22, x21, [sp, #0x30]
    14b8: a9044ff4     	stp	x20, x19, [sp, #0x40]
    14bc: 910003fd     	mov	x29, sp
    14c0: aa0103f4     	mov	x20, x1
    14c4: aa0003f3     	mov	x19, x0
    14c8: 90000000     	adrp	x0, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000014c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8dd
    14cc: 91000000     	add	x0, x0, #0x0
		00000000000014cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8dd
    14d0: 90000001     	adrp	x1, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000014d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c8
    14d4: 91000021     	add	x1, x1, #0x0
		00000000000014d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c8
    14d8: 94000000     	bl	0x14d8 <aw22xxx_parse_led_cdev+0x34>
		00000000000014d8:  R_AARCH64_CALL26	_printk
    14dc: aa1403e0     	mov	x0, x20
    14e0: aa1f03e1     	mov	x1, xzr
    14e4: 94000000     	bl	0x14e4 <aw22xxx_parse_led_cdev+0x40>
		00000000000014e4:  R_AARCH64_CALL26	of_get_next_child
    14e8: b4000520     	cbz	x0, 0x158c <aw22xxx_parse_led_cdev+0xe8>
    14ec: aa0003f5     	mov	x21, x0
    14f0: 90000016     	adrp	x22, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000014f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9dd
    14f4: 910002d6     	add	x22, x22, #0x0
		00000000000014f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9dd
    14f8: 90000017     	adrp	x23, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000014f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf33
    14fc: 910002f7     	add	x23, x23, #0x0
		00000000000014fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf33
    1500: 90000018     	adrp	x24, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001500:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x673
    1504: 91000318     	add	x24, x24, #0x0
		0000000000001504:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x673
    1508: 90000019     	adrp	x25, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001508:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x39d
    150c: 91000339     	add	x25, x25, #0x0
		000000000000150c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x39d
    1510: 91004262     	add	x2, x19, #0x10
    1514: aa1503e0     	mov	x0, x21
    1518: aa1603e1     	mov	x1, x22
    151c: 94000000     	bl	0x151c <aw22xxx_parse_led_cdev+0x78>
		000000000000151c:  R_AARCH64_CALL26	of_property_read_string
    1520: 37f80960     	tbnz	w0, #0x1f, 0x164c <aw22xxx_parse_led_cdev+0x1a8>
    1524: 910bc262     	add	x2, x19, #0x2f0
    1528: aa1503e0     	mov	x0, x21
    152c: aa1703e1     	mov	x1, x23
    1530: 52800023     	mov	w3, #0x1                // =1
    1534: aa1f03e4     	mov	x4, xzr
    1538: 94000000     	bl	0x1538 <aw22xxx_parse_led_cdev+0x94>
		0000000000001538:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    153c: 37f80940     	tbnz	w0, #0x1f, 0x1664 <aw22xxx_parse_led_cdev+0x1c0>
    1540: 91006262     	add	x2, x19, #0x18
    1544: aa1503e0     	mov	x0, x21
    1548: aa1803e1     	mov	x1, x24
    154c: 52800023     	mov	w3, #0x1                // =1
    1550: aa1f03e4     	mov	x4, xzr
    1554: 94000000     	bl	0x1554 <aw22xxx_parse_led_cdev+0xb0>
		0000000000001554:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1558: 37f80920     	tbnz	w0, #0x1f, 0x167c <aw22xxx_parse_led_cdev+0x1d8>
    155c: 91007262     	add	x2, x19, #0x1c
    1560: aa1503e0     	mov	x0, x21
    1564: aa1903e1     	mov	x1, x25
    1568: 52800023     	mov	w3, #0x1                // =1
    156c: aa1f03e4     	mov	x4, xzr
    1570: 94000000     	bl	0x1570 <aw22xxx_parse_led_cdev+0xcc>
		0000000000001570:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1574: 37f80900     	tbnz	w0, #0x1f, 0x1694 <aw22xxx_parse_led_cdev+0x1f0>
    1578: aa1403e0     	mov	x0, x20
    157c: aa1503e1     	mov	x1, x21
    1580: 94000000     	bl	0x1580 <aw22xxx_parse_led_cdev+0xdc>
		0000000000001580:  R_AARCH64_CALL26	of_get_next_child
    1584: aa0003f5     	mov	x21, x0
    1588: b5fffc40     	cbnz	x0, 0x1510 <aw22xxx_parse_led_cdev+0x6c>
    158c: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    1590: 91076269     	add	x9, x19, #0x1d8
    1594: 91004261     	add	x1, x19, #0x10
    1598: f900ea68     	str	x8, [x19, #0x1d0]
    159c: aa1f03e2     	mov	x2, xzr
    15a0: f900ee69     	str	x9, [x19, #0x1d8]
    15a4: f900f269     	str	x9, [x19, #0x1e0]
    15a8: 90000009     	adrp	x9, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000015a8:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1a48
    15ac: 91000129     	add	x9, x9, #0x0
		00000000000015ac:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1a48
    15b0: a91ea269     	stp	x9, x8, [x19, #0x1e8]
    15b4: 9107e268     	add	x8, x19, #0x1f8
    15b8: f900fe68     	str	x8, [x19, #0x1f8]
    15bc: f9010268     	str	x8, [x19, #0x200]
    15c0: 90000008     	adrp	x8, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000015c0:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1c98
    15c4: 91000108     	add	x8, x8, #0x0
		00000000000015c4:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1c98
    15c8: f9400660     	ldr	x0, [x19, #0x8]
    15cc: f9010668     	str	x8, [x19, #0x208]
    15d0: 90000008     	adrp	x8, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000015d0:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1efc
    15d4: 91000108     	add	x8, x8, #0x0
		00000000000015d4:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1efc
    15d8: f9001a68     	str	x8, [x19, #0x30]
    15dc: 94000000     	bl	0x15dc <aw22xxx_parse_led_cdev+0x138>
		00000000000015dc:  R_AARCH64_CALL26	led_classdev_register_ext
    15e0: 350001a0     	cbnz	w0, 0x1614 <aw22xxx_parse_led_cdev+0x170>
    15e4: f9403260     	ldr	x0, [x19, #0x60]
    15e8: 90000001     	adrp	x1, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000015e8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x398
    15ec: 91000021     	add	x1, x1, #0x0
		00000000000015ec:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x398
    15f0: 94000000     	bl	0x15f0 <aw22xxx_parse_led_cdev+0x14c>
		00000000000015f0:  R_AARCH64_CALL26	sysfs_create_group
    15f4: 350001c0     	cbnz	w0, 0x162c <aw22xxx_parse_led_cdev+0x188>
    15f8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    15fc: f9400bf9     	ldr	x25, [sp, #0x10]
    1600: a94357f6     	ldp	x22, x21, [sp, #0x30]
    1604: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    1608: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    160c: d50323bf     	autiasp
    1610: d65f03c0     	ret
    1614: 2a0003e2     	mov	w2, w0
    1618: f9400660     	ldr	x0, [x19, #0x8]
    161c: 90000001     	adrp	x1, 0x1000 <aw22xxx_read_chipid+0x17c>
		000000000000161c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xce3
    1620: 91000021     	add	x1, x1, #0x0
		0000000000001620:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xce3
    1624: 94000000     	bl	0x1624 <aw22xxx_parse_led_cdev+0x180>
		0000000000001624:  R_AARCH64_CALL26	_dev_err
    1628: 17fffff4     	b	0x15f8 <aw22xxx_parse_led_cdev+0x154>
    162c: 2a0003e2     	mov	w2, w0
    1630: f9400660     	ldr	x0, [x19, #0x8]
    1634: 90000001     	adrp	x1, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001634:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1887
    1638: 91000021     	add	x1, x1, #0x0
		0000000000001638:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1887
    163c: 94000000     	bl	0x163c <aw22xxx_parse_led_cdev+0x198>
		000000000000163c:  R_AARCH64_CALL26	_dev_err
    1640: 91004260     	add	x0, x19, #0x10
    1644: 94000000     	bl	0x1644 <aw22xxx_parse_led_cdev+0x1a0>
		0000000000001644:  R_AARCH64_CALL26	led_classdev_unregister
    1648: 17ffffec     	b	0x15f8 <aw22xxx_parse_led_cdev+0x154>
    164c: 2a0003e2     	mov	w2, w0
    1650: f9400660     	ldr	x0, [x19, #0x8]
    1654: 90000001     	adrp	x1, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001654:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x120f
    1658: 91000021     	add	x1, x1, #0x0
		0000000000001658:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x120f
    165c: 94000000     	bl	0x165c <aw22xxx_parse_led_cdev+0x1b8>
		000000000000165c:  R_AARCH64_CALL26	_dev_err
    1660: 17ffffe6     	b	0x15f8 <aw22xxx_parse_led_cdev+0x154>
    1664: 2a0003e2     	mov	w2, w0
    1668: f9400660     	ldr	x0, [x19, #0x8]
    166c: 90000001     	adrp	x1, 0x1000 <aw22xxx_read_chipid+0x17c>
		000000000000166c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1758
    1670: 91000021     	add	x1, x1, #0x0
		0000000000001670:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1758
    1674: 94000000     	bl	0x1674 <aw22xxx_parse_led_cdev+0x1d0>
		0000000000001674:  R_AARCH64_CALL26	_dev_err
    1678: 17ffffe0     	b	0x15f8 <aw22xxx_parse_led_cdev+0x154>
    167c: 2a0003e2     	mov	w2, w0
    1680: f9400660     	ldr	x0, [x19, #0x8]
    1684: 90000001     	adrp	x1, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001684:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc00
    1688: 91000021     	add	x1, x1, #0x0
		0000000000001688:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc00
    168c: 94000000     	bl	0x168c <aw22xxx_parse_led_cdev+0x1e8>
		000000000000168c:  R_AARCH64_CALL26	_dev_err
    1690: 17ffffda     	b	0x15f8 <aw22xxx_parse_led_cdev+0x154>
    1694: 2a0003e2     	mov	w2, w0
    1698: f9400660     	ldr	x0, [x19, #0x8]
    169c: 90000001     	adrp	x1, 0x1000 <aw22xxx_read_chipid+0x17c>
		000000000000169c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14d8
    16a0: 91000021     	add	x1, x1, #0x0
		00000000000016a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14d8
    16a4: 94000000     	bl	0x16a4 <aw22xxx_parse_led_cdev+0x200>
		00000000000016a4:  R_AARCH64_CALL26	_dev_err
    16a8: 17ffffd4     	b	0x15f8 <aw22xxx_parse_led_cdev+0x154>
