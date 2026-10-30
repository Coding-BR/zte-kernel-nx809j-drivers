
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000153c <ghost_debug_read>:
    153c: d503233f     	paciasp
    1540: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    1544: a90167fa     	stp	x26, x25, [sp, #0x10]
    1548: a9025ff8     	stp	x24, x23, [sp, #0x20]
    154c: a90357f6     	stp	x22, x21, [sp, #0x30]
    1550: a9044ff4     	stp	x20, x19, [sp, #0x40]
    1554: 910003fd     	mov	x29, sp
    1558: f9400068     	ldr	x8, [x3]
    155c: b4000128     	cbz	x8, 0x1580 <ghost_debug_read+0x44>
    1560: aa1f03e0     	mov	x0, xzr
    1564: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    1568: a94357f6     	ldp	x22, x21, [sp, #0x30]
    156c: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    1570: a94167fa     	ldp	x26, x25, [sp, #0x10]
    1574: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    1578: d50323bf     	autiasp
    157c: d65f03c0     	ret
    1580: 90000008     	adrp	x8, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001580:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    1584: aa0103f5     	mov	x21, x1
    1588: aa0203f4     	mov	x20, x2
    158c: f9400117     	ldr	x23, [x8]
		000000000000158c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    1590: aa0303f3     	mov	x19, x3
    1594: d503201f     	nop
    1598: 90000008     	adrp	x8, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001598:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
    159c: 5281b801     	mov	w1, #0xdc0              // =3520
    15a0: 52820002     	mov	w2, #0x1000             // =4096
    15a4: f9400100     	ldr	x0, [x8]
		00000000000015a4:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
    15a8: 94000000     	bl	0x15a8 <ghost_debug_read+0x6c>
		00000000000015a8:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    15ac: b5000240     	cbnz	x0, 0x15f4 <ghost_debug_read+0xb8>
    15b0: 90000000     	adrp	x0, 0x1000 <get_tp_chip_id+0xf4>
		00000000000015b0:  R_AARCH64_ADR_PREL_PG_HI21	unk_33404
    15b4: 91000000     	add	x0, x0, #0x0
		00000000000015b4:  R_AARCH64_ADD_ABS_LO12_NC	unk_33404
    15b8: 94000000     	bl	0x15b8 <ghost_debug_read+0x7c>
		00000000000015b8:  R_AARCH64_CALL26	_printk
    15bc: 92800160     	mov	x0, #-0xc               // =-12
    15c0: 17ffffe9     	b	0x1564 <ghost_debug_read+0x28>
    15c4: 90000008     	adrp	x8, 0x1000 <get_tp_chip_id+0xf4>
		00000000000015c4:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags
    15c8: 91000108     	add	x8, x8, #0x0
		00000000000015c8:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags
    15cc: d5384116     	mrs	x22, SP_EL0
    15d0: f9402ad8     	ldr	x24, [x22, #0x50]
    15d4: f9002ac8     	str	x8, [x22, #0x50]
    15d8: 90000008     	adrp	x8, 0x1000 <get_tp_chip_id+0xf4>
		00000000000015d8:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
    15dc: f9400100     	ldr	x0, [x8]
		00000000000015dc:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
    15e0: 5281b801     	mov	w1, #0xdc0              // =3520
    15e4: 52820002     	mov	w2, #0x1000             // =4096
    15e8: 94000000     	bl	0x15e8 <ghost_debug_read+0xac>
		00000000000015e8:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    15ec: f9002ad8     	str	x24, [x22, #0x50]
    15f0: b4fffe00     	cbz	x0, 0x15b0 <ghost_debug_read+0x74>
    15f4: 395246e1     	ldrb	w1, [x23, #0x491]
    15f8: 90000008     	adrp	x8, 0x1000 <get_tp_chip_id+0xf4>
		00000000000015f8:  R_AARCH64_ADR_PREL_PG_HI21	unk_333B9
    15fc: 91000108     	add	x8, x8, #0x0
		00000000000015fc:  R_AARCH64_ADD_ABS_LO12_NC	unk_333B9
    1600: aa0003f6     	mov	x22, x0
    1604: aa0803e0     	mov	x0, x8
    1608: 94000000     	bl	0x1608 <ghost_debug_read+0xcc>
		0000000000001608:  R_AARCH64_CALL26	_printk
    160c: 39524ae1     	ldrb	w1, [x23, #0x492]
    1610: 90000000     	adrp	x0, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001610:  R_AARCH64_ADR_PREL_PG_HI21	unk_35E38
    1614: 91000000     	add	x0, x0, #0x0
		0000000000001614:  R_AARCH64_ADD_ABS_LO12_NC	unk_35E38
    1618: 94000000     	bl	0x1618 <ghost_debug_read+0xdc>
		0000000000001618:  R_AARCH64_CALL26	_printk
    161c: 39524ee1     	ldrb	w1, [x23, #0x493]
    1620: 90000000     	adrp	x0, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001620:  R_AARCH64_ADR_PREL_PG_HI21	unk_333DE
    1624: 91000000     	add	x0, x0, #0x0
		0000000000001624:  R_AARCH64_ADD_ABS_LO12_NC	unk_333DE
    1628: 94000000     	bl	0x1628 <ghost_debug_read+0xec>
		0000000000001628:  R_AARCH64_CALL26	_printk
    162c: 395252e1     	ldrb	w1, [x23, #0x494]
    1630: 90000000     	adrp	x0, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001630:  R_AARCH64_ADR_PREL_PG_HI21	unk_33A77
    1634: 91000000     	add	x0, x0, #0x0
		0000000000001634:  R_AARCH64_ADD_ABS_LO12_NC	unk_33A77
    1638: 94000000     	bl	0x1638 <ghost_debug_read+0xfc>
		0000000000001638:  R_AARCH64_CALL26	_printk
    163c: 395256e1     	ldrb	w1, [x23, #0x495]
    1640: 90000000     	adrp	x0, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001640:  R_AARCH64_ADR_PREL_PG_HI21	unk_396F5
    1644: 91000000     	add	x0, x0, #0x0
		0000000000001644:  R_AARCH64_ADD_ABS_LO12_NC	unk_396F5
    1648: 94000000     	bl	0x1648 <ghost_debug_read+0x10c>
		0000000000001648:  R_AARCH64_CALL26	_printk
    164c: b9449ae1     	ldr	w1, [x23, #0x498]
    1650: 90000000     	adrp	x0, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001650:  R_AARCH64_ADR_PREL_PG_HI21	unk_38C31
    1654: 91000000     	add	x0, x0, #0x0
		0000000000001654:  R_AARCH64_ADD_ABS_LO12_NC	unk_38C31
    1658: 94000000     	bl	0x1658 <ghost_debug_read+0x11c>
		0000000000001658:  R_AARCH64_CALL26	_printk
    165c: b9449ee1     	ldr	w1, [x23, #0x49c]
    1660: 90000000     	adrp	x0, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001660:  R_AARCH64_ADR_PREL_PG_HI21	unk_364EF
    1664: 91000000     	add	x0, x0, #0x0
		0000000000001664:  R_AARCH64_ADD_ABS_LO12_NC	unk_364EF
    1668: 94000000     	bl	0x1668 <ghost_debug_read+0x12c>
		0000000000001668:  R_AARCH64_CALL26	_printk
    166c: b944a2e1     	ldr	w1, [x23, #0x4a0]
    1670: 90000000     	adrp	x0, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001670:  R_AARCH64_ADR_PREL_PG_HI21	unk_31D70
    1674: 91000000     	add	x0, x0, #0x0
		0000000000001674:  R_AARCH64_ADD_ABS_LO12_NC	unk_31D70
    1678: 94000000     	bl	0x1678 <ghost_debug_read+0x13c>
		0000000000001678:  R_AARCH64_CALL26	_printk
    167c: b944a6e1     	ldr	w1, [x23, #0x4a4]
    1680: 90000000     	adrp	x0, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001680:  R_AARCH64_ADR_PREL_PG_HI21	unk_33A9C
    1684: 91000000     	add	x0, x0, #0x0
		0000000000001684:  R_AARCH64_ADD_ABS_LO12_NC	unk_33A9C
    1688: 94000000     	bl	0x1688 <ghost_debug_read+0x14c>
		0000000000001688:  R_AARCH64_CALL26	_printk
    168c: 90000001     	adrp	x1, 0x1000 <get_tp_chip_id+0xf4>
		000000000000168c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x509b
    1690: 91000021     	add	x1, x1, #0x0
		0000000000001690:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x509b
    1694: 9100a6c0     	add	x0, x22, #0x29
    1698: 52801502     	mov	w2, #0xa8               // =168
    169c: 94000000     	bl	0x169c <ghost_debug_read+0x160>
		000000000000169c:  R_AARCH64_CALL26	memcpy
    16a0: 90000009     	adrp	x9, 0x1000 <get_tp_chip_id+0xf4>
		00000000000016a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b13
    16a4: 91000129     	add	x9, x9, #0x0
		00000000000016a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b13
    16a8: 52800148     	mov	w8, #0xa                // =10
    16ac: a9412d2a     	ldp	x10, x11, [x9, #0x10]
    16b0: f940112c     	ldr	x12, [x9, #0x20]
    16b4: a9403529     	ldp	x9, x13, [x9]
    16b8: 790052c8     	strh	w8, [x22, #0x28]
    16bc: f90012cc     	str	x12, [x22, #0x20]
    16c0: 90000002     	adrp	x2, 0x1000 <get_tp_chip_id+0xf4>
		00000000000016c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d5a
    16c4: 91000042     	add	x2, x2, #0x0
		00000000000016c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d5a
    16c8: a9012eca     	stp	x10, x11, [x22, #0x10]
    16cc: 9103eac0     	add	x0, x22, #0xfa
    16d0: 52820001     	mov	w1, #0x1000             // =4096
    16d4: a90036c9     	stp	x9, x13, [x22]
    16d8: 52820018     	mov	w24, #0x1000            // =4096
    16dc: 780f92c8     	sturh	w8, [x22, #0xf9]
    16e0: f80d92cd     	stur	x13, [x22, #0xd9]
    16e4: f80e12ca     	stur	x10, [x22, #0xe1]
    16e8: f80e92cb     	stur	x11, [x22, #0xe9]
    16ec: f80f12cc     	stur	x12, [x22, #0xf1]
    16f0: f80d12c9     	stur	x9, [x22, #0xd1]
    16f4: 395246e3     	ldrb	w3, [x23, #0x491]
    16f8: 94000000     	bl	0x16f8 <ghost_debug_read+0x1bc>
		00000000000016f8:  R_AARCH64_CALL26	snprintf
    16fc: 93407c1a     	sxtw	x26, w0
    1700: 1103e808     	add	w8, w0, #0xfa
    1704: 5281e0d9     	mov	w25, #0xf06             // =3846
    1708: 8b28c2c0     	add	x0, x22, w8, sxtw
    170c: 39524ae3     	ldrb	w3, [x23, #0x492]
    1710: 90000002     	adrp	x2, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001710:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d79
    1714: 91000042     	add	x2, x2, #0x0
		0000000000001714:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d79
    1718: cb1a0321     	sub	x1, x25, x26
    171c: 94000000     	bl	0x171c <ghost_debug_read+0x1e0>
		000000000000171c:  R_AARCH64_CALL26	snprintf
    1720: 8b20c348     	add	x8, x26, w0, sxtw
    1724: 39524ee3     	ldrb	w3, [x23, #0x493]
    1728: 90000002     	adrp	x2, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001728:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaca
    172c: 91000042     	add	x2, x2, #0x0
		000000000000172c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaca
    1730: 9103e91a     	add	x26, x8, #0xfa
    1734: cb080321     	sub	x1, x25, x8
    1738: 8b1a02c0     	add	x0, x22, x26
    173c: 94000000     	bl	0x173c <ghost_debug_read+0x200>
		000000000000173c:  R_AARCH64_CALL26	snprintf
    1740: 8b20c359     	add	x25, x26, w0, sxtw
    1744: 395252e3     	ldrb	w3, [x23, #0x494]
    1748: 90000002     	adrp	x2, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001748:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11c2
    174c: 91000042     	add	x2, x2, #0x0
		000000000000174c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11c2
    1750: cb190301     	sub	x1, x24, x25
    1754: 8b1902c0     	add	x0, x22, x25
    1758: 94000000     	bl	0x1758 <ghost_debug_read+0x21c>
		0000000000001758:  R_AARCH64_CALL26	snprintf
    175c: 8b20c339     	add	x25, x25, w0, sxtw
    1760: 395256e3     	ldrb	w3, [x23, #0x495]
    1764: 90000002     	adrp	x2, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001764:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5700
    1768: 91000042     	add	x2, x2, #0x0
		0000000000001768:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5700
    176c: cb190301     	sub	x1, x24, x25
    1770: 8b1902c0     	add	x0, x22, x25
    1774: 94000000     	bl	0x1774 <ghost_debug_read+0x238>
		0000000000001774:  R_AARCH64_CALL26	snprintf
    1778: 8b20c339     	add	x25, x25, w0, sxtw
    177c: b9449ae3     	ldr	w3, [x23, #0x498]
    1780: 90000002     	adrp	x2, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001780:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f53
    1784: 91000042     	add	x2, x2, #0x0
		0000000000001784:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f53
    1788: cb190301     	sub	x1, x24, x25
    178c: 8b1902c0     	add	x0, x22, x25
    1790: 94000000     	bl	0x1790 <ghost_debug_read+0x254>
		0000000000001790:  R_AARCH64_CALL26	snprintf
    1794: 8b20c339     	add	x25, x25, w0, sxtw
    1798: b9449ee3     	ldr	w3, [x23, #0x49c]
    179c: 90000002     	adrp	x2, 0x1000 <get_tp_chip_id+0xf4>
		000000000000179c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ae4
    17a0: 91000042     	add	x2, x2, #0x0
		00000000000017a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ae4
    17a4: cb190301     	sub	x1, x24, x25
    17a8: 8b1902c0     	add	x0, x22, x25
    17ac: 94000000     	bl	0x17ac <ghost_debug_read+0x270>
		00000000000017ac:  R_AARCH64_CALL26	snprintf
    17b0: 8b20c339     	add	x25, x25, w0, sxtw
    17b4: b944a2e3     	ldr	w3, [x23, #0x4a0]
    17b8: 90000002     	adrp	x2, 0x1000 <get_tp_chip_id+0xf4>
		00000000000017b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e1
    17bc: 91000042     	add	x2, x2, #0x0
		00000000000017bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e1
    17c0: cb190301     	sub	x1, x24, x25
    17c4: 8b1902c0     	add	x0, x22, x25
    17c8: 94000000     	bl	0x17c8 <ghost_debug_read+0x28c>
		00000000000017c8:  R_AARCH64_CALL26	snprintf
    17cc: 8b20c339     	add	x25, x25, w0, sxtw
    17d0: b944a6e3     	ldr	w3, [x23, #0x4a4]
    17d4: 90000002     	adrp	x2, 0x1000 <get_tp_chip_id+0xf4>
		00000000000017d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f22
    17d8: 91000042     	add	x2, x2, #0x0
		00000000000017d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f22
    17dc: cb190301     	sub	x1, x24, x25
    17e0: 8b1902c0     	add	x0, x22, x25
    17e4: 94000000     	bl	0x17e4 <ghost_debug_read+0x2a8>
		00000000000017e4:  R_AARCH64_CALL26	snprintf
    17e8: 8b20c337     	add	x23, x25, w0, sxtw
    17ec: aa1503e0     	mov	x0, x21
    17f0: aa1403e1     	mov	x1, x20
    17f4: aa1303e2     	mov	x2, x19
    17f8: aa1603e3     	mov	x3, x22
    17fc: aa1703e4     	mov	x4, x23
    1800: 94000000     	bl	0x1800 <ghost_debug_read+0x2c4>
		0000000000001800:  R_AARCH64_CALL26	simple_read_from_buffer
    1804: aa1603e0     	mov	x0, x22
    1808: 94000000     	bl	0x1808 <ghost_debug_read+0x2cc>
		0000000000001808:  R_AARCH64_CALL26	kfree
    180c: aa1703e0     	mov	x0, x23
    1810: 17ffff55     	b	0x1564 <ghost_debug_read+0x28>
