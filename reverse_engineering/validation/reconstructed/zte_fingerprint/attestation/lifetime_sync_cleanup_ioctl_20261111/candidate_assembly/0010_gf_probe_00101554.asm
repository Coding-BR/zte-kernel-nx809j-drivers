
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001608 <gf_probe>:
    1608: d503233f     	paciasp
    160c: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    1610: f9000bf9     	str	x25, [sp, #0x10]
    1614: a9025ff8     	stp	x24, x23, [sp, #0x20]
    1618: a90357f6     	stp	x22, x21, [sp, #0x30]
    161c: a9044ff4     	stp	x20, x19, [sp, #0x40]
    1620: 910003fd     	mov	x29, sp
    1624: aa0003f4     	mov	x20, x0
    1628: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001628:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13d3
    162c: 91000000     	add	x0, x0, #0x0
		000000000000162c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13d3
    1630: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3ec>
		0000000000001630:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13ea
    1634: 91000021     	add	x1, x1, #0x0
		0000000000001634:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13ea
    1638: 94000000     	bl	0x1638 <gf_probe+0x30>
		0000000000001638:  R_AARCH64_CALL26	_printk
    163c: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		000000000000163c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    1640: 91000000     	add	x0, x0, #0x0
		0000000000001640:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1644: 94000000     	bl	0x1644 <gf_probe+0x3c>
		0000000000001644:  R_AARCH64_CALL26	mutex_lock
    1648: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3ec>
		0000000000001648:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x38
    164c: 91000108     	add	x8, x8, #0x0
		000000000000164c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x38
    1650: b9401909     	ldr	w9, [x8, #0x18]
    1654: 350019c9     	cbnz	w9, 0x198c <gf_probe+0x384>
    1658: f9400109     	ldr	x9, [x8]
    165c: b5001989     	cbnz	x9, 0x198c <gf_probe+0x384>
    1660: 39414908     	ldrb	w8, [x8, #0x52]
    1664: 35001948     	cbnz	w8, 0x198c <gf_probe+0x384>
    1668: 90000013     	adrp	x19, 0x1000 <gf_ioctl+0x3ec>
		0000000000001668:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    166c: 91000273     	add	x19, x19, #0x0
		000000000000166c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
    1670: 90000016     	adrp	x22, 0x1000 <gf_ioctl+0x3ec>
		0000000000001670:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e8
    1674: 91002268     	add	x8, x19, #0x8
    1678: 90000015     	adrp	x21, 0x1000 <gf_ioctl+0x3ec>
		0000000000001678:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    167c: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		000000000000167c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    1680: 91000000     	add	x0, x0, #0x0
		0000000000001680:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1684: f9000668     	str	x8, [x19, #0x8]
    1688: f9000a68     	str	x8, [x19, #0x10]
    168c: 928002a8     	mov	x8, #-0x16              // =-22
    1690: f2dffd48     	movk	x8, #0xffea, lsl #32
    1694: b900027f     	str	wzr, [x19]
    1698: f803c268     	stur	x8, [x19, #0x3c]
    169c: 128002a8     	mov	w8, #-0x16              // =-22
    16a0: b9003a7f     	str	wzr, [x19, #0x38]
    16a4: a901fe74     	stp	x20, xzr, [x19, #0x18]
    16a8: b9004e7f     	str	wzr, [x19, #0x4c]
    16ac: f9001a7f     	str	xzr, [x19, #0x30]
    16b0: f9003e7f     	str	xzr, [x19, #0x78]
    16b4: f900527f     	str	xzr, [x19, #0xa0]
    16b8: f90002df     	str	xzr, [x22]
		00000000000016b8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
    16bc: f90002bf     	str	xzr, [x21]
		00000000000016bc:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
    16c0: f8044268     	stur	x8, [x19, #0x44]
    16c4: b900727f     	str	wzr, [x19, #0x70]
    16c8: 94000000     	bl	0x16c8 <gf_probe+0xc0>
		00000000000016c8:  R_AARCH64_CALL26	mutex_unlock
    16cc: 94000000     	bl	0x16cc <gf_probe+0xc4>
		00000000000016cc:  R_AARCH64_CALL26	input_allocate_device
    16d0: 90000018     	adrp	x24, 0x1000 <gf_ioctl+0x3ec>
		00000000000016d0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xb8
    16d4: 91000318     	add	x24, x24, #0x0
		00000000000016d4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0xb8
    16d8: 90000017     	adrp	x23, 0x1000 <gf_ioctl+0x3ec>
		00000000000016d8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x48
    16dc: f9001a60     	str	x0, [x19, #0x30]
    16e0: b4001660     	cbz	x0, 0x19ac <gf_probe+0x3a4>
    16e4: 52800021     	mov	w1, #0x1                // =1
    16e8: 52800cc2     	mov	w2, #0x66               // =102
    16ec: 94000000     	bl	0x16ec <gf_probe+0xe4>
		00000000000016ec:  R_AARCH64_CALL26	input_set_capability
    16f0: f94002e0     	ldr	x0, [x23]
		00000000000016f0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    16f4: 52800021     	mov	w1, #0x1                // =1
    16f8: 52801162     	mov	w2, #0x8b               // =139
    16fc: 94000000     	bl	0x16fc <gf_probe+0xf4>
		00000000000016fc:  R_AARCH64_CALL26	input_set_capability
    1700: f94002e0     	ldr	x0, [x23]
		0000000000001700:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1704: 52800021     	mov	w1, #0x1                // =1
    1708: 528013c2     	mov	w2, #0x9e               // =158
    170c: 94000000     	bl	0x170c <gf_probe+0x104>
		000000000000170c:  R_AARCH64_CALL26	input_set_capability
    1710: f94002e0     	ldr	x0, [x23]
		0000000000001710:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1714: 52800021     	mov	w1, #0x1                // =1
    1718: 52800e82     	mov	w2, #0x74               // =116
    171c: 94000000     	bl	0x171c <gf_probe+0x114>
		000000000000171c:  R_AARCH64_CALL26	input_set_capability
    1720: f94002e0     	ldr	x0, [x23]
		0000000000001720:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1724: 52800021     	mov	w1, #0x1                // =1
    1728: 52800ce2     	mov	w2, #0x67               // =103
    172c: 94000000     	bl	0x172c <gf_probe+0x124>
		000000000000172c:  R_AARCH64_CALL26	input_set_capability
    1730: f94002e0     	ldr	x0, [x23]
		0000000000001730:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1734: 52800021     	mov	w1, #0x1                // =1
    1738: 52800d82     	mov	w2, #0x6c               // =108
    173c: 94000000     	bl	0x173c <gf_probe+0x134>
		000000000000173c:  R_AARCH64_CALL26	input_set_capability
    1740: f94002e0     	ldr	x0, [x23]
		0000000000001740:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1744: 52800021     	mov	w1, #0x1                // =1
    1748: 52800d42     	mov	w2, #0x6a               // =106
    174c: 94000000     	bl	0x174c <gf_probe+0x144>
		000000000000174c:  R_AARCH64_CALL26	input_set_capability
    1750: f94002e0     	ldr	x0, [x23]
		0000000000001750:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1754: 52800021     	mov	w1, #0x1                // =1
    1758: 52800d22     	mov	w2, #0x69               // =105
    175c: 94000000     	bl	0x175c <gf_probe+0x154>
		000000000000175c:  R_AARCH64_CALL26	input_set_capability
    1760: f94002e0     	ldr	x0, [x23]
		0000000000001760:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1764: 52800021     	mov	w1, #0x1                // =1
    1768: 52801a82     	mov	w2, #0xd4               // =212
    176c: 94000000     	bl	0x176c <gf_probe+0x164>
		000000000000176c:  R_AARCH64_CALL26	input_set_capability
    1770: f94002e0     	ldr	x0, [x23]
		0000000000001770:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1774: 52800021     	mov	w1, #0x1                // =1
    1778: 52800e42     	mov	w2, #0x72               // =114
    177c: 94000000     	bl	0x177c <gf_probe+0x174>
		000000000000177c:  R_AARCH64_CALL26	input_set_capability
    1780: f94002e0     	ldr	x0, [x23]
		0000000000001780:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1784: 52800021     	mov	w1, #0x1                // =1
    1788: 52800e62     	mov	w2, #0x73               // =115
    178c: 94000000     	bl	0x178c <gf_probe+0x184>
		000000000000178c:  R_AARCH64_CALL26	input_set_capability
    1790: f94002e0     	ldr	x0, [x23]
		0000000000001790:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1794: 52800021     	mov	w1, #0x1                // =1
    1798: 52801b22     	mov	w2, #0xd9               // =217
    179c: 94000000     	bl	0x179c <gf_probe+0x194>
		000000000000179c:  R_AARCH64_CALL26	input_set_capability
    17a0: f94002e0     	ldr	x0, [x23]
		00000000000017a0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    17a4: 52800021     	mov	w1, #0x1                // =1
    17a8: 52801b02     	mov	w2, #0xd8               // =216
    17ac: 94000000     	bl	0x17ac <gf_probe+0x1a4>
		00000000000017ac:  R_AARCH64_CALL26	input_set_capability
    17b0: f94002e8     	ldr	x8, [x23]
		00000000000017b0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    17b4: 90000009     	adrp	x9, 0x1000 <gf_ioctl+0x3ec>
		00000000000017b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e8
    17b8: 91000129     	add	x9, x9, #0x0
		00000000000017b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e8
    17bc: f9000109     	str	x9, [x8]
    17c0: f94002e0     	ldr	x0, [x23]
		00000000000017c0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    17c4: 94000000     	bl	0x17c4 <gf_probe+0x1bc>
		00000000000017c4:  R_AARCH64_CALL26	input_register_device
    17c8: 35001020     	cbnz	w0, 0x19cc <gf_probe+0x3c4>
    17cc: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		00000000000017cc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x128
    17d0: 91000000     	add	x0, x0, #0x0
		00000000000017d0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x128
    17d4: 94000000     	bl	0x17d4 <gf_probe+0x1cc>
		00000000000017d4:  R_AARCH64_CALL26	wakeup_source_add
    17d8: 52800141     	mov	w1, #0xa                // =10
    17dc: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		00000000000017dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbbc
    17e0: 91000000     	add	x0, x0, #0x0
		00000000000017e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbbc
    17e4: 90000003     	adrp	x3, 0x1000 <gf_ioctl+0x3ec>
		00000000000017e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa9e
    17e8: 91000063     	add	x3, x3, #0x0
		00000000000017e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa9e
    17ec: 72a000c1     	movk	w1, #0x6, lsl #16
    17f0: 52800022     	mov	w2, #0x1                // =1
    17f4: 94000000     	bl	0x17f4 <gf_probe+0x1ec>
		00000000000017f4:  R_AARCH64_CALL26	alloc_workqueue
    17f8: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3ec>
		00000000000017f8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xb8
    17fc: f9000100     	str	x0, [x8]
		00000000000017fc:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0xb8
    1800: b40002c0     	cbz	x0, 0x1858 <gf_probe+0x250>
    1804: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    1808: aa1803f4     	mov	x20, x24
    180c: 91004309     	add	x9, x24, #0x10
    1810: f8008e88     	str	x8, [x20, #0x8]!
    1814: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3ec>
		0000000000001814:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1c7c
    1818: 91000108     	add	x8, x8, #0x0
		0000000000001818:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1c7c
    181c: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3ec>
		000000000000181c:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    1820: 91000021     	add	x1, x1, #0x0
		0000000000001820:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    1824: 9100a300     	add	x0, x24, #0x28
    1828: 52a00402     	mov	w2, #0x200000           // =2097152
    182c: aa1f03e3     	mov	x3, xzr
    1830: aa1f03e4     	mov	x4, xzr
    1834: f9000b09     	str	x9, [x24, #0x10]
    1838: f9000f09     	str	x9, [x24, #0x18]
    183c: f9001308     	str	x8, [x24, #0x20]
    1840: 94000000     	bl	0x1840 <gf_probe+0x238>
		0000000000001840:  R_AARCH64_CALL26	init_timer_key
    1844: f9400301     	ldr	x1, [x24]
    1848: 52800400     	mov	w0, #0x20               // =32
    184c: aa1403e2     	mov	x2, x20
    1850: 52809c43     	mov	w3, #0x4e2              // =1250
    1854: 94000000     	bl	0x1854 <gf_probe+0x24c>
		0000000000001854:  R_AARCH64_CALL26	queue_delayed_work_on
    1858: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001858:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    185c: 91000000     	add	x0, x0, #0x0
		000000000000185c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1860: 94000000     	bl	0x1860 <gf_probe+0x258>
		0000000000001860:  R_AARCH64_CALL26	mutex_lock
    1864: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3ec>
		0000000000001864:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    1868: f9400108     	ldr	x8, [x8]
		0000000000001868:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    186c: b2607d08     	orr	x8, x8, #0xffffffff00000000
    1870: b100051f     	cmn	x8, #0x1
    1874: 54000340     	b.eq	0x18dc <gf_probe+0x2d4>
    1878: aa2803e8     	mvn	x8, x8
    187c: 90000009     	adrp	x9, 0x1000 <gf_ioctl+0x3ec>
		000000000000187c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
    1880: 90000004     	adrp	x4, 0x1000 <gf_ioctl+0x3ec>
		0000000000001880:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e8
    1884: 91000084     	add	x4, x4, #0x0
		0000000000001884:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e8
    1888: dac00108     	rbit	x8, x8
    188c: b9400129     	ldr	w9, [x9]
		000000000000188c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
    1890: aa1303e3     	mov	x3, x19
    1894: dac01119     	clz	x25, x8
    1898: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3ec>
		0000000000001898:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
    189c: f9400100     	ldr	x0, [x8]
		000000000000189c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
    18a0: f9400e68     	ldr	x8, [x19, #0x18]
    18a4: 2a095322     	orr	w2, w25, w9, lsl #20
    18a8: 91004101     	add	x1, x8, #0x10
    18ac: b9000262     	str	w2, [x19]
    18b0: 94000000     	bl	0x18b0 <gf_probe+0x2a8>
		00000000000018b0:  R_AARCH64_CALL26	device_create
    18b4: b13ffc1f     	cmn	x0, #0xfff
    18b8: 54000963     	b.lo	0x19e4 <gf_probe+0x3dc>
    18bc: aa0003f4     	mov	x20, x0
    18c0: 34000934     	cbz	w20, 0x19e4 <gf_probe+0x3dc>
    18c4: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3ec>
		00000000000018c4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    18c8: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		00000000000018c8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    18cc: 91000000     	add	x0, x0, #0x0
		00000000000018cc:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    18d0: b900011f     	str	wzr, [x8]
		00000000000018d0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
    18d4: 94000000     	bl	0x18d4 <gf_probe+0x2cc>
		00000000000018d4:  R_AARCH64_CALL26	mutex_unlock
    18d8: 14000005     	b	0x18ec <gf_probe+0x2e4>
    18dc: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		00000000000018dc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    18e0: 91000000     	add	x0, x0, #0x0
		00000000000018e0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    18e4: 94000000     	bl	0x18e4 <gf_probe+0x2dc>
		00000000000018e4:  R_AARCH64_CALL26	mutex_unlock
    18e8: 12800254     	mov	w20, #-0x13             // =-19
    18ec: 52800039     	mov	w25, #0x1               // =1
    18f0: 52800028     	mov	w8, #0x1                // =1
    18f4: 90000009     	adrp	x9, 0x1000 <gf_ioctl+0x3ec>
		00000000000018f4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8b
    18f8: 91000129     	add	x9, x9, #0x0
		00000000000018f8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x8b
    18fc: 39000128     	strb	w8, [x9]
    1900: f842d128     	ldur	x8, [x9, #0x2d]
    1904: b40000c8     	cbz	x8, 0x191c <gf_probe+0x314>
    1908: 91002300     	add	x0, x24, #0x8
    190c: 94000000     	bl	0x190c <gf_probe+0x304>
		000000000000190c:  R_AARCH64_CALL26	cancel_delayed_work_sync
    1910: f9400300     	ldr	x0, [x24]
    1914: 94000000     	bl	0x1914 <gf_probe+0x30c>
		0000000000001914:  R_AARCH64_CALL26	destroy_workqueue
    1918: f900031f     	str	xzr, [x24]
    191c: f94002c0     	ldr	x0, [x22]
		000000000000191c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
    1920: b4000060     	cbz	x0, 0x192c <gf_probe+0x324>
    1924: 94000000     	bl	0x1924 <gf_probe+0x31c>
		0000000000001924:  R_AARCH64_CALL26	panel_event_notifier_unregister
    1928: f90002df     	str	xzr, [x22]
		0000000000001928:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
    192c: f90002bf     	str	xzr, [x21]
		000000000000192c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
    1930: 340000f9     	cbz	w25, 0x194c <gf_probe+0x344>
    1934: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001934:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x128
    1938: 91000000     	add	x0, x0, #0x0
		0000000000001938:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x128
    193c: 94000000     	bl	0x193c <gf_probe+0x334>
		000000000000193c:  R_AARCH64_CALL26	wakeup_source_remove
    1940: f94002e0     	ldr	x0, [x23]
		0000000000001940:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1944: 94000000     	bl	0x1944 <gf_probe+0x33c>
		0000000000001944:  R_AARCH64_CALL26	input_unregister_device
    1948: 14000004     	b	0x1958 <gf_probe+0x350>
    194c: f94002e0     	ldr	x0, [x23]
		000000000000194c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1950: b4000040     	cbz	x0, 0x1958 <gf_probe+0x350>
    1954: 94000000     	bl	0x1954 <gf_probe+0x34c>
		0000000000001954:  R_AARCH64_CALL26	input_free_device
    1958: aa1303e0     	mov	x0, x19
    195c: f9001a7f     	str	xzr, [x19, #0x30]
    1960: 94000000     	bl	0x1960 <gf_probe+0x358>
		0000000000001960:  R_AARCH64_CALL26	gf_cleanup
    1964: 3901c27f     	strb	wzr, [x19, #0x70]
    1968: f9000e7f     	str	xzr, [x19, #0x18]
    196c: 2a1403e0     	mov	w0, w20
    1970: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    1974: f9400bf9     	ldr	x25, [sp, #0x10]
    1978: a94357f6     	ldp	x22, x21, [sp, #0x30]
    197c: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    1980: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    1984: d50323bf     	autiasp
    1988: d65f03c0     	ret
    198c: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		000000000000198c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    1990: 91000000     	add	x0, x0, #0x0
		0000000000001990:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1994: 94000000     	bl	0x1994 <gf_probe+0x38c>
		0000000000001994:  R_AARCH64_CALL26	mutex_unlock
    1998: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001998:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x455
    199c: 91000000     	add	x0, x0, #0x0
		000000000000199c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x455
    19a0: 94000000     	bl	0x19a0 <gf_probe+0x398>
		00000000000019a0:  R_AARCH64_CALL26	_printk
    19a4: 128001f4     	mov	w20, #-0x10             // =-16
    19a8: 17fffff1     	b	0x196c <gf_probe+0x364>
    19ac: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		00000000000019ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x146b
    19b0: 91000000     	add	x0, x0, #0x0
		00000000000019b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x146b
    19b4: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3ec>
		00000000000019b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13ea
    19b8: 91000021     	add	x1, x1, #0x0
		00000000000019b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13ea
    19bc: 94000000     	bl	0x19bc <gf_probe+0x3b4>
		00000000000019bc:  R_AARCH64_CALL26	_printk
    19c0: 2a1f03f9     	mov	w25, wzr
    19c4: 12800174     	mov	w20, #-0xc              // =-12
    19c8: 17ffffca     	b	0x18f0 <gf_probe+0x2e8>
    19cc: 2a0003f4     	mov	w20, w0
    19d0: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		00000000000019d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79a
    19d4: 91000000     	add	x0, x0, #0x0
		00000000000019d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79a
    19d8: 94000000     	bl	0x19d8 <gf_probe+0x3d0>
		00000000000019d8:  R_AARCH64_CALL26	_printk
    19dc: 2a1f03f9     	mov	w25, wzr
    19e0: 17ffffc4     	b	0x18f0 <gf_probe+0x2e8>
    19e4: 52800028     	mov	w8, #0x1                // =1
    19e8: 9ad92108     	lsl	x8, x8, x25
    19ec: 14000025     	b	0x1a80 <gf_probe+0x478>
    19f0: 90000009     	adrp	x9, 0x1000 <gf_ioctl+0x3ec>
		00000000000019f0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    19f4: 91000129     	add	x9, x9, #0x0
		00000000000019f4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1f8
    19f8: f828313f     	stset	x8, [x9]
    19fc: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3ec>
		00000000000019fc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x198
    1a00: 91000108     	add	x8, x8, #0x0
		0000000000001a00:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x198
    1a04: f9400102     	ldr	x2, [x8]
    1a08: f9400449     	ldr	x9, [x2, #0x8]
    1a0c: eb08013f     	cmp	x9, x8
    1a10: 540002c1     	b.ne	0x1a68 <gf_probe+0x460>
    1a14: 90000009     	adrp	x9, 0x1000 <gf_ioctl+0x3ec>
		0000000000001a14:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x20
    1a18: 91000129     	add	x9, x9, #0x0
		0000000000001a18:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x20
    1a1c: eb08013f     	cmp	x9, x8
    1a20: 54000240     	b.eq	0x1a68 <gf_probe+0x460>
    1a24: eb09005f     	cmp	x2, x9
    1a28: 54000200     	b.eq	0x1a68 <gf_probe+0x460>
    1a2c: f9000449     	str	x9, [x2, #0x8]
    1a30: a9002122     	stp	x2, x8, [x9]
    1a34: f9000109     	str	x9, [x8]
    1a38: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001a38:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    1a3c: 91000000     	add	x0, x0, #0x0
		0000000000001a3c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1a40: 94000000     	bl	0x1a40 <gf_probe+0x438>
		0000000000001a40:  R_AARCH64_CALL26	mutex_unlock
    1a44: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001a44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x69c
    1a48: 91000000     	add	x0, x0, #0x0
		0000000000001a48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x69c
    1a4c: 52800021     	mov	w1, #0x1                // =1
    1a50: 52800042     	mov	w2, #0x2                // =2
    1a54: 52800083     	mov	w3, #0x4                // =4
    1a58: 52800044     	mov	w4, #0x2                // =2
    1a5c: 94000000     	bl	0x1a5c <gf_probe+0x454>
		0000000000001a5c:  R_AARCH64_CALL26	_printk
    1a60: 2a1f03f4     	mov	w20, wzr
    1a64: 17ffffc2     	b	0x196c <gf_probe+0x364>
    1a68: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001a68:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x20
    1a6c: 91000000     	add	x0, x0, #0x0
		0000000000001a6c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x20
    1a70: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3ec>
		0000000000001a70:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x198
    1a74: 91000021     	add	x1, x1, #0x0
		0000000000001a74:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x198
    1a78: 94000000     	bl	0x1a78 <gf_probe+0x470>
		0000000000001a78:  R_AARCH64_CALL26	__list_add_valid_or_report
    1a7c: 17ffffef     	b	0x1a38 <gf_probe+0x430>
    1a80: 90000009     	adrp	x9, 0x1000 <gf_ioctl+0x3ec>
		0000000000001a80:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    1a84: 91000129     	add	x9, x9, #0x0
		0000000000001a84:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1f8
    1a88: f9800131     	prfm	pstl1strm, [x9]
    1a8c: c85f7d2a     	ldxr	x10, [x9]
    1a90: aa08014a     	orr	x10, x10, x8
    1a94: c80b7d2a     	stxr	w11, x10, [x9]
    1a98: 35ffffab     	cbnz	w11, 0x1a8c <gf_probe+0x484>
    1a9c: 17ffffd8     	b	0x19fc <gf_probe+0x3f4>
