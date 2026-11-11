
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001628 <gf_probe>:
    1628: d503233f     	paciasp
    162c: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    1630: f9000bf9     	str	x25, [sp, #0x10]
    1634: a9025ff8     	stp	x24, x23, [sp, #0x20]
    1638: a90357f6     	stp	x22, x21, [sp, #0x30]
    163c: a9044ff4     	stp	x20, x19, [sp, #0x40]
    1640: 910003fd     	mov	x29, sp
    1644: aa0003f4     	mov	x20, x0
    1648: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		0000000000001648:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13a1
    164c: 91000000     	add	x0, x0, #0x0
		000000000000164c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13a1
    1650: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3cc>
		0000000000001650:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13b8
    1654: 91000021     	add	x1, x1, #0x0
		0000000000001654:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13b8
    1658: 94000000     	bl	0x1658 <gf_probe+0x30>
		0000000000001658:  R_AARCH64_CALL26	_printk
    165c: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		000000000000165c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    1660: 91000000     	add	x0, x0, #0x0
		0000000000001660:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1664: 94000000     	bl	0x1664 <gf_probe+0x3c>
		0000000000001664:  R_AARCH64_CALL26	mutex_lock
    1668: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3cc>
		0000000000001668:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x38
    166c: 91000108     	add	x8, x8, #0x0
		000000000000166c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x38
    1670: b9401909     	ldr	w9, [x8, #0x18]
    1674: 350019c9     	cbnz	w9, 0x19ac <gf_probe+0x384>
    1678: f9400109     	ldr	x9, [x8]
    167c: b5001989     	cbnz	x9, 0x19ac <gf_probe+0x384>
    1680: 39414908     	ldrb	w8, [x8, #0x52]
    1684: 35001948     	cbnz	w8, 0x19ac <gf_probe+0x384>
    1688: 90000013     	adrp	x19, 0x1000 <gf_ioctl+0x3cc>
		0000000000001688:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    168c: 91000273     	add	x19, x19, #0x0
		000000000000168c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
    1690: 90000016     	adrp	x22, 0x1000 <gf_ioctl+0x3cc>
		0000000000001690:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e8
    1694: 91002268     	add	x8, x19, #0x8
    1698: 90000015     	adrp	x21, 0x1000 <gf_ioctl+0x3cc>
		0000000000001698:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    169c: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		000000000000169c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    16a0: 91000000     	add	x0, x0, #0x0
		00000000000016a0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    16a4: f9000668     	str	x8, [x19, #0x8]
    16a8: f9000a68     	str	x8, [x19, #0x10]
    16ac: 928002a8     	mov	x8, #-0x16              // =-22
    16b0: f2dffd48     	movk	x8, #0xffea, lsl #32
    16b4: b900027f     	str	wzr, [x19]
    16b8: f803c268     	stur	x8, [x19, #0x3c]
    16bc: 128002a8     	mov	w8, #-0x16              // =-22
    16c0: b9003a7f     	str	wzr, [x19, #0x38]
    16c4: a901fe74     	stp	x20, xzr, [x19, #0x18]
    16c8: b9004e7f     	str	wzr, [x19, #0x4c]
    16cc: f9001a7f     	str	xzr, [x19, #0x30]
    16d0: f9003e7f     	str	xzr, [x19, #0x78]
    16d4: f900527f     	str	xzr, [x19, #0xa0]
    16d8: f90002df     	str	xzr, [x22]
		00000000000016d8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
    16dc: f90002bf     	str	xzr, [x21]
		00000000000016dc:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
    16e0: f8044268     	stur	x8, [x19, #0x44]
    16e4: b900727f     	str	wzr, [x19, #0x70]
    16e8: 94000000     	bl	0x16e8 <gf_probe+0xc0>
		00000000000016e8:  R_AARCH64_CALL26	mutex_unlock
    16ec: 94000000     	bl	0x16ec <gf_probe+0xc4>
		00000000000016ec:  R_AARCH64_CALL26	input_allocate_device
    16f0: 90000018     	adrp	x24, 0x1000 <gf_ioctl+0x3cc>
		00000000000016f0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xb8
    16f4: 91000318     	add	x24, x24, #0x0
		00000000000016f4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0xb8
    16f8: 90000017     	adrp	x23, 0x1000 <gf_ioctl+0x3cc>
		00000000000016f8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x48
    16fc: f9001a60     	str	x0, [x19, #0x30]
    1700: b4001660     	cbz	x0, 0x19cc <gf_probe+0x3a4>
    1704: 52800021     	mov	w1, #0x1                // =1
    1708: 52800cc2     	mov	w2, #0x66               // =102
    170c: 94000000     	bl	0x170c <gf_probe+0xe4>
		000000000000170c:  R_AARCH64_CALL26	input_set_capability
    1710: f94002e0     	ldr	x0, [x23]
		0000000000001710:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1714: 52800021     	mov	w1, #0x1                // =1
    1718: 52801162     	mov	w2, #0x8b               // =139
    171c: 94000000     	bl	0x171c <gf_probe+0xf4>
		000000000000171c:  R_AARCH64_CALL26	input_set_capability
    1720: f94002e0     	ldr	x0, [x23]
		0000000000001720:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1724: 52800021     	mov	w1, #0x1                // =1
    1728: 528013c2     	mov	w2, #0x9e               // =158
    172c: 94000000     	bl	0x172c <gf_probe+0x104>
		000000000000172c:  R_AARCH64_CALL26	input_set_capability
    1730: f94002e0     	ldr	x0, [x23]
		0000000000001730:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1734: 52800021     	mov	w1, #0x1                // =1
    1738: 52800e82     	mov	w2, #0x74               // =116
    173c: 94000000     	bl	0x173c <gf_probe+0x114>
		000000000000173c:  R_AARCH64_CALL26	input_set_capability
    1740: f94002e0     	ldr	x0, [x23]
		0000000000001740:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1744: 52800021     	mov	w1, #0x1                // =1
    1748: 52800ce2     	mov	w2, #0x67               // =103
    174c: 94000000     	bl	0x174c <gf_probe+0x124>
		000000000000174c:  R_AARCH64_CALL26	input_set_capability
    1750: f94002e0     	ldr	x0, [x23]
		0000000000001750:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1754: 52800021     	mov	w1, #0x1                // =1
    1758: 52800d82     	mov	w2, #0x6c               // =108
    175c: 94000000     	bl	0x175c <gf_probe+0x134>
		000000000000175c:  R_AARCH64_CALL26	input_set_capability
    1760: f94002e0     	ldr	x0, [x23]
		0000000000001760:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1764: 52800021     	mov	w1, #0x1                // =1
    1768: 52800d42     	mov	w2, #0x6a               // =106
    176c: 94000000     	bl	0x176c <gf_probe+0x144>
		000000000000176c:  R_AARCH64_CALL26	input_set_capability
    1770: f94002e0     	ldr	x0, [x23]
		0000000000001770:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1774: 52800021     	mov	w1, #0x1                // =1
    1778: 52800d22     	mov	w2, #0x69               // =105
    177c: 94000000     	bl	0x177c <gf_probe+0x154>
		000000000000177c:  R_AARCH64_CALL26	input_set_capability
    1780: f94002e0     	ldr	x0, [x23]
		0000000000001780:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1784: 52800021     	mov	w1, #0x1                // =1
    1788: 52801a82     	mov	w2, #0xd4               // =212
    178c: 94000000     	bl	0x178c <gf_probe+0x164>
		000000000000178c:  R_AARCH64_CALL26	input_set_capability
    1790: f94002e0     	ldr	x0, [x23]
		0000000000001790:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1794: 52800021     	mov	w1, #0x1                // =1
    1798: 52800e42     	mov	w2, #0x72               // =114
    179c: 94000000     	bl	0x179c <gf_probe+0x174>
		000000000000179c:  R_AARCH64_CALL26	input_set_capability
    17a0: f94002e0     	ldr	x0, [x23]
		00000000000017a0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    17a4: 52800021     	mov	w1, #0x1                // =1
    17a8: 52800e62     	mov	w2, #0x73               // =115
    17ac: 94000000     	bl	0x17ac <gf_probe+0x184>
		00000000000017ac:  R_AARCH64_CALL26	input_set_capability
    17b0: f94002e0     	ldr	x0, [x23]
		00000000000017b0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    17b4: 52800021     	mov	w1, #0x1                // =1
    17b8: 52801b22     	mov	w2, #0xd9               // =217
    17bc: 94000000     	bl	0x17bc <gf_probe+0x194>
		00000000000017bc:  R_AARCH64_CALL26	input_set_capability
    17c0: f94002e0     	ldr	x0, [x23]
		00000000000017c0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    17c4: 52800021     	mov	w1, #0x1                // =1
    17c8: 52801b02     	mov	w2, #0xd8               // =216
    17cc: 94000000     	bl	0x17cc <gf_probe+0x1a4>
		00000000000017cc:  R_AARCH64_CALL26	input_set_capability
    17d0: f94002e8     	ldr	x8, [x23]
		00000000000017d0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    17d4: 90000009     	adrp	x9, 0x1000 <gf_ioctl+0x3cc>
		00000000000017d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9b6
    17d8: 91000129     	add	x9, x9, #0x0
		00000000000017d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9b6
    17dc: f9000109     	str	x9, [x8]
    17e0: f94002e0     	ldr	x0, [x23]
		00000000000017e0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    17e4: 94000000     	bl	0x17e4 <gf_probe+0x1bc>
		00000000000017e4:  R_AARCH64_CALL26	input_register_device
    17e8: 35001020     	cbnz	w0, 0x19ec <gf_probe+0x3c4>
    17ec: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		00000000000017ec:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x128
    17f0: 91000000     	add	x0, x0, #0x0
		00000000000017f0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x128
    17f4: 94000000     	bl	0x17f4 <gf_probe+0x1cc>
		00000000000017f4:  R_AARCH64_CALL26	wakeup_source_add
    17f8: 52800141     	mov	w1, #0xa                // =10
    17fc: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		00000000000017fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb8a
    1800: 91000000     	add	x0, x0, #0x0
		0000000000001800:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb8a
    1804: 90000003     	adrp	x3, 0x1000 <gf_ioctl+0x3cc>
		0000000000001804:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6c
    1808: 91000063     	add	x3, x3, #0x0
		0000000000001808:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6c
    180c: 72a000c1     	movk	w1, #0x6, lsl #16
    1810: 52800022     	mov	w2, #0x1                // =1
    1814: 94000000     	bl	0x1814 <gf_probe+0x1ec>
		0000000000001814:  R_AARCH64_CALL26	alloc_workqueue
    1818: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3cc>
		0000000000001818:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xb8
    181c: f9000100     	str	x0, [x8]
		000000000000181c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0xb8
    1820: b40002c0     	cbz	x0, 0x1878 <gf_probe+0x250>
    1824: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    1828: aa1803f4     	mov	x20, x24
    182c: 91004309     	add	x9, x24, #0x10
    1830: f8008e88     	str	x8, [x20, #0x8]!
    1834: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3cc>
		0000000000001834:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1c9c
    1838: 91000108     	add	x8, x8, #0x0
		0000000000001838:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1c9c
    183c: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3cc>
		000000000000183c:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    1840: 91000021     	add	x1, x1, #0x0
		0000000000001840:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    1844: 9100a300     	add	x0, x24, #0x28
    1848: 52a00402     	mov	w2, #0x200000           // =2097152
    184c: aa1f03e3     	mov	x3, xzr
    1850: aa1f03e4     	mov	x4, xzr
    1854: f9000b09     	str	x9, [x24, #0x10]
    1858: f9000f09     	str	x9, [x24, #0x18]
    185c: f9001308     	str	x8, [x24, #0x20]
    1860: 94000000     	bl	0x1860 <gf_probe+0x238>
		0000000000001860:  R_AARCH64_CALL26	init_timer_key
    1864: f9400301     	ldr	x1, [x24]
    1868: 52800400     	mov	w0, #0x20               // =32
    186c: aa1403e2     	mov	x2, x20
    1870: 52809c43     	mov	w3, #0x4e2              // =1250
    1874: 94000000     	bl	0x1874 <gf_probe+0x24c>
		0000000000001874:  R_AARCH64_CALL26	queue_delayed_work_on
    1878: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		0000000000001878:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    187c: 91000000     	add	x0, x0, #0x0
		000000000000187c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1880: 94000000     	bl	0x1880 <gf_probe+0x258>
		0000000000001880:  R_AARCH64_CALL26	mutex_lock
    1884: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3cc>
		0000000000001884:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    1888: f9400108     	ldr	x8, [x8]
		0000000000001888:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    188c: b2607d08     	orr	x8, x8, #0xffffffff00000000
    1890: b100051f     	cmn	x8, #0x1
    1894: 54000340     	b.eq	0x18fc <gf_probe+0x2d4>
    1898: aa2803e8     	mvn	x8, x8
    189c: 90000009     	adrp	x9, 0x1000 <gf_ioctl+0x3cc>
		000000000000189c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
    18a0: 90000004     	adrp	x4, 0x1000 <gf_ioctl+0x3cc>
		00000000000018a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9b6
    18a4: 91000084     	add	x4, x4, #0x0
		00000000000018a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9b6
    18a8: dac00108     	rbit	x8, x8
    18ac: b9400129     	ldr	w9, [x9]
		00000000000018ac:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
    18b0: aa1303e3     	mov	x3, x19
    18b4: dac01119     	clz	x25, x8
    18b8: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3cc>
		00000000000018b8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
    18bc: f9400100     	ldr	x0, [x8]
		00000000000018bc:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
    18c0: f9400e68     	ldr	x8, [x19, #0x18]
    18c4: 2a095322     	orr	w2, w25, w9, lsl #20
    18c8: 91004101     	add	x1, x8, #0x10
    18cc: b9000262     	str	w2, [x19]
    18d0: 94000000     	bl	0x18d0 <gf_probe+0x2a8>
		00000000000018d0:  R_AARCH64_CALL26	device_create
    18d4: b13ffc1f     	cmn	x0, #0xfff
    18d8: 54000963     	b.lo	0x1a04 <gf_probe+0x3dc>
    18dc: aa0003f4     	mov	x20, x0
    18e0: 34000934     	cbz	w20, 0x1a04 <gf_probe+0x3dc>
    18e4: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3cc>
		00000000000018e4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    18e8: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		00000000000018e8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    18ec: 91000000     	add	x0, x0, #0x0
		00000000000018ec:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    18f0: b900011f     	str	wzr, [x8]
		00000000000018f0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
    18f4: 94000000     	bl	0x18f4 <gf_probe+0x2cc>
		00000000000018f4:  R_AARCH64_CALL26	mutex_unlock
    18f8: 14000005     	b	0x190c <gf_probe+0x2e4>
    18fc: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		00000000000018fc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    1900: 91000000     	add	x0, x0, #0x0
		0000000000001900:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1904: 94000000     	bl	0x1904 <gf_probe+0x2dc>
		0000000000001904:  R_AARCH64_CALL26	mutex_unlock
    1908: 12800254     	mov	w20, #-0x13             // =-19
    190c: 52800039     	mov	w25, #0x1               // =1
    1910: 52800028     	mov	w8, #0x1                // =1
    1914: 90000009     	adrp	x9, 0x1000 <gf_ioctl+0x3cc>
		0000000000001914:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8b
    1918: 91000129     	add	x9, x9, #0x0
		0000000000001918:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x8b
    191c: 39000128     	strb	w8, [x9]
    1920: f842d128     	ldur	x8, [x9, #0x2d]
    1924: b40000c8     	cbz	x8, 0x193c <gf_probe+0x314>
    1928: 91002300     	add	x0, x24, #0x8
    192c: 94000000     	bl	0x192c <gf_probe+0x304>
		000000000000192c:  R_AARCH64_CALL26	cancel_delayed_work_sync
    1930: f9400300     	ldr	x0, [x24]
    1934: 94000000     	bl	0x1934 <gf_probe+0x30c>
		0000000000001934:  R_AARCH64_CALL26	destroy_workqueue
    1938: f900031f     	str	xzr, [x24]
    193c: f94002c0     	ldr	x0, [x22]
		000000000000193c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
    1940: b4000060     	cbz	x0, 0x194c <gf_probe+0x324>
    1944: 94000000     	bl	0x1944 <gf_probe+0x31c>
		0000000000001944:  R_AARCH64_CALL26	panel_event_notifier_unregister
    1948: f90002df     	str	xzr, [x22]
		0000000000001948:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
    194c: f90002bf     	str	xzr, [x21]
		000000000000194c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
    1950: 340000f9     	cbz	w25, 0x196c <gf_probe+0x344>
    1954: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		0000000000001954:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x128
    1958: 91000000     	add	x0, x0, #0x0
		0000000000001958:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x128
    195c: 94000000     	bl	0x195c <gf_probe+0x334>
		000000000000195c:  R_AARCH64_CALL26	wakeup_source_remove
    1960: f94002e0     	ldr	x0, [x23]
		0000000000001960:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1964: 94000000     	bl	0x1964 <gf_probe+0x33c>
		0000000000001964:  R_AARCH64_CALL26	input_unregister_device
    1968: 14000004     	b	0x1978 <gf_probe+0x350>
    196c: f94002e0     	ldr	x0, [x23]
		000000000000196c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1970: b4000040     	cbz	x0, 0x1978 <gf_probe+0x350>
    1974: 94000000     	bl	0x1974 <gf_probe+0x34c>
		0000000000001974:  R_AARCH64_CALL26	input_free_device
    1978: aa1303e0     	mov	x0, x19
    197c: f9001a7f     	str	xzr, [x19, #0x30]
    1980: 94000000     	bl	0x1980 <gf_probe+0x358>
		0000000000001980:  R_AARCH64_CALL26	gf_cleanup
    1984: 3901c27f     	strb	wzr, [x19, #0x70]
    1988: f9000e7f     	str	xzr, [x19, #0x18]
    198c: 2a1403e0     	mov	w0, w20
    1990: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    1994: f9400bf9     	ldr	x25, [sp, #0x10]
    1998: a94357f6     	ldp	x22, x21, [sp, #0x30]
    199c: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    19a0: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    19a4: d50323bf     	autiasp
    19a8: d65f03c0     	ret
    19ac: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		00000000000019ac:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    19b0: 91000000     	add	x0, x0, #0x0
		00000000000019b0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    19b4: 94000000     	bl	0x19b4 <gf_probe+0x38c>
		00000000000019b4:  R_AARCH64_CALL26	mutex_unlock
    19b8: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		00000000000019b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x423
    19bc: 91000000     	add	x0, x0, #0x0
		00000000000019bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x423
    19c0: 94000000     	bl	0x19c0 <gf_probe+0x398>
		00000000000019c0:  R_AARCH64_CALL26	_printk
    19c4: 128001f4     	mov	w20, #-0x10             // =-16
    19c8: 17fffff1     	b	0x198c <gf_probe+0x364>
    19cc: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		00000000000019cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1439
    19d0: 91000000     	add	x0, x0, #0x0
		00000000000019d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1439
    19d4: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3cc>
		00000000000019d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13b8
    19d8: 91000021     	add	x1, x1, #0x0
		00000000000019d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13b8
    19dc: 94000000     	bl	0x19dc <gf_probe+0x3b4>
		00000000000019dc:  R_AARCH64_CALL26	_printk
    19e0: 2a1f03f9     	mov	w25, wzr
    19e4: 12800174     	mov	w20, #-0xc              // =-12
    19e8: 17ffffca     	b	0x1910 <gf_probe+0x2e8>
    19ec: 2a0003f4     	mov	w20, w0
    19f0: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		00000000000019f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x768
    19f4: 91000000     	add	x0, x0, #0x0
		00000000000019f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x768
    19f8: 94000000     	bl	0x19f8 <gf_probe+0x3d0>
		00000000000019f8:  R_AARCH64_CALL26	_printk
    19fc: 2a1f03f9     	mov	w25, wzr
    1a00: 17ffffc4     	b	0x1910 <gf_probe+0x2e8>
    1a04: 52800028     	mov	w8, #0x1                // =1
    1a08: 9ad92108     	lsl	x8, x8, x25
    1a0c: 14000025     	b	0x1aa0 <gf_probe+0x478>
    1a10: 90000009     	adrp	x9, 0x1000 <gf_ioctl+0x3cc>
		0000000000001a10:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    1a14: 91000129     	add	x9, x9, #0x0
		0000000000001a14:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1f8
    1a18: f828313f     	stset	x8, [x9]
    1a1c: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3cc>
		0000000000001a1c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x198
    1a20: 91000108     	add	x8, x8, #0x0
		0000000000001a20:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x198
    1a24: f9400102     	ldr	x2, [x8]
    1a28: f9400449     	ldr	x9, [x2, #0x8]
    1a2c: eb08013f     	cmp	x9, x8
    1a30: 540002c1     	b.ne	0x1a88 <gf_probe+0x460>
    1a34: 90000009     	adrp	x9, 0x1000 <gf_ioctl+0x3cc>
		0000000000001a34:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x20
    1a38: 91000129     	add	x9, x9, #0x0
		0000000000001a38:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x20
    1a3c: eb08013f     	cmp	x9, x8
    1a40: 54000240     	b.eq	0x1a88 <gf_probe+0x460>
    1a44: eb09005f     	cmp	x2, x9
    1a48: 54000200     	b.eq	0x1a88 <gf_probe+0x460>
    1a4c: f9000449     	str	x9, [x2, #0x8]
    1a50: a9002122     	stp	x2, x8, [x9]
    1a54: f9000109     	str	x9, [x8]
    1a58: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		0000000000001a58:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    1a5c: 91000000     	add	x0, x0, #0x0
		0000000000001a5c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1a60: 94000000     	bl	0x1a60 <gf_probe+0x438>
		0000000000001a60:  R_AARCH64_CALL26	mutex_unlock
    1a64: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		0000000000001a64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x66a
    1a68: 91000000     	add	x0, x0, #0x0
		0000000000001a68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x66a
    1a6c: 52800021     	mov	w1, #0x1                // =1
    1a70: 52800042     	mov	w2, #0x2                // =2
    1a74: 52800083     	mov	w3, #0x4                // =4
    1a78: 52800044     	mov	w4, #0x2                // =2
    1a7c: 94000000     	bl	0x1a7c <gf_probe+0x454>
		0000000000001a7c:  R_AARCH64_CALL26	_printk
    1a80: 2a1f03f4     	mov	w20, wzr
    1a84: 17ffffc2     	b	0x198c <gf_probe+0x364>
    1a88: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		0000000000001a88:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x20
    1a8c: 91000000     	add	x0, x0, #0x0
		0000000000001a8c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x20
    1a90: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3cc>
		0000000000001a90:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x198
    1a94: 91000021     	add	x1, x1, #0x0
		0000000000001a94:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x198
    1a98: 94000000     	bl	0x1a98 <gf_probe+0x470>
		0000000000001a98:  R_AARCH64_CALL26	__list_add_valid_or_report
    1a9c: 17ffffef     	b	0x1a58 <gf_probe+0x430>
    1aa0: 90000009     	adrp	x9, 0x1000 <gf_ioctl+0x3cc>
		0000000000001aa0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    1aa4: 91000129     	add	x9, x9, #0x0
		0000000000001aa4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1f8
    1aa8: f9800131     	prfm	pstl1strm, [x9]
    1aac: c85f7d2a     	ldxr	x10, [x9]
    1ab0: aa08014a     	orr	x10, x10, x8
    1ab4: c80b7d2a     	stxr	w11, x10, [x9]
    1ab8: 35ffffab     	cbnz	w11, 0x1aac <gf_probe+0x484>
    1abc: 17ffffd8     	b	0x1a1c <gf_probe+0x3f4>
