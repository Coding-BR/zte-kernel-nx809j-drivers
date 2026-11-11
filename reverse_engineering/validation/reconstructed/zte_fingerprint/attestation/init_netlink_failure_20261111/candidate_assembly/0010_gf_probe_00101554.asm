
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000163c <gf_probe>:
    163c: d503233f     	paciasp
    1640: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    1644: f9000bf9     	str	x25, [sp, #0x10]
    1648: a9025ff8     	stp	x24, x23, [sp, #0x20]
    164c: a90357f6     	stp	x22, x21, [sp, #0x30]
    1650: a9044ff4     	stp	x20, x19, [sp, #0x40]
    1654: 910003fd     	mov	x29, sp
    1658: aa0003f4     	mov	x20, x0
    165c: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		000000000000165c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13d3
    1660: 91000000     	add	x0, x0, #0x0
		0000000000001660:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13d3
    1664: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3b8>
		0000000000001664:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13ea
    1668: 91000021     	add	x1, x1, #0x0
		0000000000001668:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13ea
    166c: 94000000     	bl	0x166c <gf_probe+0x30>
		000000000000166c:  R_AARCH64_CALL26	_printk
    1670: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001670:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    1674: 91000000     	add	x0, x0, #0x0
		0000000000001674:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1678: 94000000     	bl	0x1678 <gf_probe+0x3c>
		0000000000001678:  R_AARCH64_CALL26	mutex_lock
    167c: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3b8>
		000000000000167c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x38
    1680: 91000108     	add	x8, x8, #0x0
		0000000000001680:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x38
    1684: b9401909     	ldr	w9, [x8, #0x18]
    1688: 350019c9     	cbnz	w9, 0x19c0 <gf_probe+0x384>
    168c: f9400109     	ldr	x9, [x8]
    1690: b5001989     	cbnz	x9, 0x19c0 <gf_probe+0x384>
    1694: 39414908     	ldrb	w8, [x8, #0x52]
    1698: 35001948     	cbnz	w8, 0x19c0 <gf_probe+0x384>
    169c: 90000013     	adrp	x19, 0x1000 <gf_ioctl+0x3b8>
		000000000000169c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    16a0: 91000273     	add	x19, x19, #0x0
		00000000000016a0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
    16a4: 90000016     	adrp	x22, 0x1000 <gf_ioctl+0x3b8>
		00000000000016a4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e8
    16a8: 91002268     	add	x8, x19, #0x8
    16ac: 90000015     	adrp	x21, 0x1000 <gf_ioctl+0x3b8>
		00000000000016ac:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    16b0: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		00000000000016b0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    16b4: 91000000     	add	x0, x0, #0x0
		00000000000016b4:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    16b8: f9000668     	str	x8, [x19, #0x8]
    16bc: f9000a68     	str	x8, [x19, #0x10]
    16c0: 928002a8     	mov	x8, #-0x16              // =-22
    16c4: f2dffd48     	movk	x8, #0xffea, lsl #32
    16c8: b900027f     	str	wzr, [x19]
    16cc: f803c268     	stur	x8, [x19, #0x3c]
    16d0: 128002a8     	mov	w8, #-0x16              // =-22
    16d4: b9003a7f     	str	wzr, [x19, #0x38]
    16d8: a901fe74     	stp	x20, xzr, [x19, #0x18]
    16dc: b9004e7f     	str	wzr, [x19, #0x4c]
    16e0: f9001a7f     	str	xzr, [x19, #0x30]
    16e4: f9003e7f     	str	xzr, [x19, #0x78]
    16e8: f900527f     	str	xzr, [x19, #0xa0]
    16ec: f90002df     	str	xzr, [x22]
		00000000000016ec:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
    16f0: f90002bf     	str	xzr, [x21]
		00000000000016f0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
    16f4: f8044268     	stur	x8, [x19, #0x44]
    16f8: b900727f     	str	wzr, [x19, #0x70]
    16fc: 94000000     	bl	0x16fc <gf_probe+0xc0>
		00000000000016fc:  R_AARCH64_CALL26	mutex_unlock
    1700: 94000000     	bl	0x1700 <gf_probe+0xc4>
		0000000000001700:  R_AARCH64_CALL26	input_allocate_device
    1704: 90000018     	adrp	x24, 0x1000 <gf_ioctl+0x3b8>
		0000000000001704:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xb8
    1708: 91000318     	add	x24, x24, #0x0
		0000000000001708:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0xb8
    170c: 90000017     	adrp	x23, 0x1000 <gf_ioctl+0x3b8>
		000000000000170c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x48
    1710: f9001a60     	str	x0, [x19, #0x30]
    1714: b4001660     	cbz	x0, 0x19e0 <gf_probe+0x3a4>
    1718: 52800021     	mov	w1, #0x1                // =1
    171c: 52800cc2     	mov	w2, #0x66               // =102
    1720: 94000000     	bl	0x1720 <gf_probe+0xe4>
		0000000000001720:  R_AARCH64_CALL26	input_set_capability
    1724: f94002e0     	ldr	x0, [x23]
		0000000000001724:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1728: 52800021     	mov	w1, #0x1                // =1
    172c: 52801162     	mov	w2, #0x8b               // =139
    1730: 94000000     	bl	0x1730 <gf_probe+0xf4>
		0000000000001730:  R_AARCH64_CALL26	input_set_capability
    1734: f94002e0     	ldr	x0, [x23]
		0000000000001734:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1738: 52800021     	mov	w1, #0x1                // =1
    173c: 528013c2     	mov	w2, #0x9e               // =158
    1740: 94000000     	bl	0x1740 <gf_probe+0x104>
		0000000000001740:  R_AARCH64_CALL26	input_set_capability
    1744: f94002e0     	ldr	x0, [x23]
		0000000000001744:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1748: 52800021     	mov	w1, #0x1                // =1
    174c: 52800e82     	mov	w2, #0x74               // =116
    1750: 94000000     	bl	0x1750 <gf_probe+0x114>
		0000000000001750:  R_AARCH64_CALL26	input_set_capability
    1754: f94002e0     	ldr	x0, [x23]
		0000000000001754:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1758: 52800021     	mov	w1, #0x1                // =1
    175c: 52800ce2     	mov	w2, #0x67               // =103
    1760: 94000000     	bl	0x1760 <gf_probe+0x124>
		0000000000001760:  R_AARCH64_CALL26	input_set_capability
    1764: f94002e0     	ldr	x0, [x23]
		0000000000001764:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1768: 52800021     	mov	w1, #0x1                // =1
    176c: 52800d82     	mov	w2, #0x6c               // =108
    1770: 94000000     	bl	0x1770 <gf_probe+0x134>
		0000000000001770:  R_AARCH64_CALL26	input_set_capability
    1774: f94002e0     	ldr	x0, [x23]
		0000000000001774:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1778: 52800021     	mov	w1, #0x1                // =1
    177c: 52800d42     	mov	w2, #0x6a               // =106
    1780: 94000000     	bl	0x1780 <gf_probe+0x144>
		0000000000001780:  R_AARCH64_CALL26	input_set_capability
    1784: f94002e0     	ldr	x0, [x23]
		0000000000001784:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1788: 52800021     	mov	w1, #0x1                // =1
    178c: 52800d22     	mov	w2, #0x69               // =105
    1790: 94000000     	bl	0x1790 <gf_probe+0x154>
		0000000000001790:  R_AARCH64_CALL26	input_set_capability
    1794: f94002e0     	ldr	x0, [x23]
		0000000000001794:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1798: 52800021     	mov	w1, #0x1                // =1
    179c: 52801a82     	mov	w2, #0xd4               // =212
    17a0: 94000000     	bl	0x17a0 <gf_probe+0x164>
		00000000000017a0:  R_AARCH64_CALL26	input_set_capability
    17a4: f94002e0     	ldr	x0, [x23]
		00000000000017a4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    17a8: 52800021     	mov	w1, #0x1                // =1
    17ac: 52800e42     	mov	w2, #0x72               // =114
    17b0: 94000000     	bl	0x17b0 <gf_probe+0x174>
		00000000000017b0:  R_AARCH64_CALL26	input_set_capability
    17b4: f94002e0     	ldr	x0, [x23]
		00000000000017b4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    17b8: 52800021     	mov	w1, #0x1                // =1
    17bc: 52800e62     	mov	w2, #0x73               // =115
    17c0: 94000000     	bl	0x17c0 <gf_probe+0x184>
		00000000000017c0:  R_AARCH64_CALL26	input_set_capability
    17c4: f94002e0     	ldr	x0, [x23]
		00000000000017c4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    17c8: 52800021     	mov	w1, #0x1                // =1
    17cc: 52801b22     	mov	w2, #0xd9               // =217
    17d0: 94000000     	bl	0x17d0 <gf_probe+0x194>
		00000000000017d0:  R_AARCH64_CALL26	input_set_capability
    17d4: f94002e0     	ldr	x0, [x23]
		00000000000017d4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    17d8: 52800021     	mov	w1, #0x1                // =1
    17dc: 52801b02     	mov	w2, #0xd8               // =216
    17e0: 94000000     	bl	0x17e0 <gf_probe+0x1a4>
		00000000000017e0:  R_AARCH64_CALL26	input_set_capability
    17e4: f94002e8     	ldr	x8, [x23]
		00000000000017e4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    17e8: 90000009     	adrp	x9, 0x1000 <gf_ioctl+0x3b8>
		00000000000017e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e8
    17ec: 91000129     	add	x9, x9, #0x0
		00000000000017ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e8
    17f0: f9000109     	str	x9, [x8]
    17f4: f94002e0     	ldr	x0, [x23]
		00000000000017f4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    17f8: 94000000     	bl	0x17f8 <gf_probe+0x1bc>
		00000000000017f8:  R_AARCH64_CALL26	input_register_device
    17fc: 35001020     	cbnz	w0, 0x1a00 <gf_probe+0x3c4>
    1800: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001800:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x128
    1804: 91000000     	add	x0, x0, #0x0
		0000000000001804:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x128
    1808: 94000000     	bl	0x1808 <gf_probe+0x1cc>
		0000000000001808:  R_AARCH64_CALL26	wakeup_source_add
    180c: 52800141     	mov	w1, #0xa                // =10
    1810: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001810:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbbc
    1814: 91000000     	add	x0, x0, #0x0
		0000000000001814:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbbc
    1818: 90000003     	adrp	x3, 0x1000 <gf_ioctl+0x3b8>
		0000000000001818:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa9e
    181c: 91000063     	add	x3, x3, #0x0
		000000000000181c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa9e
    1820: 72a000c1     	movk	w1, #0x6, lsl #16
    1824: 52800022     	mov	w2, #0x1                // =1
    1828: 94000000     	bl	0x1828 <gf_probe+0x1ec>
		0000000000001828:  R_AARCH64_CALL26	alloc_workqueue
    182c: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3b8>
		000000000000182c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xb8
    1830: f9000100     	str	x0, [x8]
		0000000000001830:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0xb8
    1834: b40002c0     	cbz	x0, 0x188c <gf_probe+0x250>
    1838: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    183c: aa1803f4     	mov	x20, x24
    1840: 91004309     	add	x9, x24, #0x10
    1844: f8008e88     	str	x8, [x20, #0x8]!
    1848: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3b8>
		0000000000001848:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1cb0
    184c: 91000108     	add	x8, x8, #0x0
		000000000000184c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1cb0
    1850: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3b8>
		0000000000001850:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    1854: 91000021     	add	x1, x1, #0x0
		0000000000001854:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    1858: 9100a300     	add	x0, x24, #0x28
    185c: 52a00402     	mov	w2, #0x200000           // =2097152
    1860: aa1f03e3     	mov	x3, xzr
    1864: aa1f03e4     	mov	x4, xzr
    1868: f9000b09     	str	x9, [x24, #0x10]
    186c: f9000f09     	str	x9, [x24, #0x18]
    1870: f9001308     	str	x8, [x24, #0x20]
    1874: 94000000     	bl	0x1874 <gf_probe+0x238>
		0000000000001874:  R_AARCH64_CALL26	init_timer_key
    1878: f9400301     	ldr	x1, [x24]
    187c: 52800400     	mov	w0, #0x20               // =32
    1880: aa1403e2     	mov	x2, x20
    1884: 52809c43     	mov	w3, #0x4e2              // =1250
    1888: 94000000     	bl	0x1888 <gf_probe+0x24c>
		0000000000001888:  R_AARCH64_CALL26	queue_delayed_work_on
    188c: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		000000000000188c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    1890: 91000000     	add	x0, x0, #0x0
		0000000000001890:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1894: 94000000     	bl	0x1894 <gf_probe+0x258>
		0000000000001894:  R_AARCH64_CALL26	mutex_lock
    1898: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3b8>
		0000000000001898:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    189c: f9400108     	ldr	x8, [x8]
		000000000000189c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    18a0: b2607d08     	orr	x8, x8, #0xffffffff00000000
    18a4: b100051f     	cmn	x8, #0x1
    18a8: 54000340     	b.eq	0x1910 <gf_probe+0x2d4>
    18ac: aa2803e8     	mvn	x8, x8
    18b0: 90000009     	adrp	x9, 0x1000 <gf_ioctl+0x3b8>
		00000000000018b0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
    18b4: 90000004     	adrp	x4, 0x1000 <gf_ioctl+0x3b8>
		00000000000018b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e8
    18b8: 91000084     	add	x4, x4, #0x0
		00000000000018b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e8
    18bc: dac00108     	rbit	x8, x8
    18c0: b9400129     	ldr	w9, [x9]
		00000000000018c0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
    18c4: aa1303e3     	mov	x3, x19
    18c8: dac01119     	clz	x25, x8
    18cc: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3b8>
		00000000000018cc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
    18d0: f9400100     	ldr	x0, [x8]
		00000000000018d0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
    18d4: f9400e68     	ldr	x8, [x19, #0x18]
    18d8: 2a095322     	orr	w2, w25, w9, lsl #20
    18dc: 91004101     	add	x1, x8, #0x10
    18e0: b9000262     	str	w2, [x19]
    18e4: 94000000     	bl	0x18e4 <gf_probe+0x2a8>
		00000000000018e4:  R_AARCH64_CALL26	device_create
    18e8: b13ffc1f     	cmn	x0, #0xfff
    18ec: 54000963     	b.lo	0x1a18 <gf_probe+0x3dc>
    18f0: aa0003f4     	mov	x20, x0
    18f4: 34000934     	cbz	w20, 0x1a18 <gf_probe+0x3dc>
    18f8: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3b8>
		00000000000018f8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    18fc: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		00000000000018fc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    1900: 91000000     	add	x0, x0, #0x0
		0000000000001900:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1904: b900011f     	str	wzr, [x8]
		0000000000001904:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
    1908: 94000000     	bl	0x1908 <gf_probe+0x2cc>
		0000000000001908:  R_AARCH64_CALL26	mutex_unlock
    190c: 14000005     	b	0x1920 <gf_probe+0x2e4>
    1910: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001910:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    1914: 91000000     	add	x0, x0, #0x0
		0000000000001914:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1918: 94000000     	bl	0x1918 <gf_probe+0x2dc>
		0000000000001918:  R_AARCH64_CALL26	mutex_unlock
    191c: 12800254     	mov	w20, #-0x13             // =-19
    1920: 52800039     	mov	w25, #0x1               // =1
    1924: 52800028     	mov	w8, #0x1                // =1
    1928: 90000009     	adrp	x9, 0x1000 <gf_ioctl+0x3b8>
		0000000000001928:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8b
    192c: 91000129     	add	x9, x9, #0x0
		000000000000192c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x8b
    1930: 39000128     	strb	w8, [x9]
    1934: f842d128     	ldur	x8, [x9, #0x2d]
    1938: b40000c8     	cbz	x8, 0x1950 <gf_probe+0x314>
    193c: 91002300     	add	x0, x24, #0x8
    1940: 94000000     	bl	0x1940 <gf_probe+0x304>
		0000000000001940:  R_AARCH64_CALL26	cancel_delayed_work_sync
    1944: f9400300     	ldr	x0, [x24]
    1948: 94000000     	bl	0x1948 <gf_probe+0x30c>
		0000000000001948:  R_AARCH64_CALL26	destroy_workqueue
    194c: f900031f     	str	xzr, [x24]
    1950: f94002c0     	ldr	x0, [x22]
		0000000000001950:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
    1954: b4000060     	cbz	x0, 0x1960 <gf_probe+0x324>
    1958: 94000000     	bl	0x1958 <gf_probe+0x31c>
		0000000000001958:  R_AARCH64_CALL26	panel_event_notifier_unregister
    195c: f90002df     	str	xzr, [x22]
		000000000000195c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
    1960: f90002bf     	str	xzr, [x21]
		0000000000001960:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
    1964: 340000f9     	cbz	w25, 0x1980 <gf_probe+0x344>
    1968: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001968:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x128
    196c: 91000000     	add	x0, x0, #0x0
		000000000000196c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x128
    1970: 94000000     	bl	0x1970 <gf_probe+0x334>
		0000000000001970:  R_AARCH64_CALL26	wakeup_source_remove
    1974: f94002e0     	ldr	x0, [x23]
		0000000000001974:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1978: 94000000     	bl	0x1978 <gf_probe+0x33c>
		0000000000001978:  R_AARCH64_CALL26	input_unregister_device
    197c: 14000004     	b	0x198c <gf_probe+0x350>
    1980: f94002e0     	ldr	x0, [x23]
		0000000000001980:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1984: b4000040     	cbz	x0, 0x198c <gf_probe+0x350>
    1988: 94000000     	bl	0x1988 <gf_probe+0x34c>
		0000000000001988:  R_AARCH64_CALL26	input_free_device
    198c: aa1303e0     	mov	x0, x19
    1990: f9001a7f     	str	xzr, [x19, #0x30]
    1994: 94000000     	bl	0x1994 <gf_probe+0x358>
		0000000000001994:  R_AARCH64_CALL26	gf_cleanup
    1998: 3901c27f     	strb	wzr, [x19, #0x70]
    199c: f9000e7f     	str	xzr, [x19, #0x18]
    19a0: 2a1403e0     	mov	w0, w20
    19a4: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    19a8: f9400bf9     	ldr	x25, [sp, #0x10]
    19ac: a94357f6     	ldp	x22, x21, [sp, #0x30]
    19b0: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    19b4: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    19b8: d50323bf     	autiasp
    19bc: d65f03c0     	ret
    19c0: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		00000000000019c0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    19c4: 91000000     	add	x0, x0, #0x0
		00000000000019c4:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    19c8: 94000000     	bl	0x19c8 <gf_probe+0x38c>
		00000000000019c8:  R_AARCH64_CALL26	mutex_unlock
    19cc: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		00000000000019cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x455
    19d0: 91000000     	add	x0, x0, #0x0
		00000000000019d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x455
    19d4: 94000000     	bl	0x19d4 <gf_probe+0x398>
		00000000000019d4:  R_AARCH64_CALL26	_printk
    19d8: 128001f4     	mov	w20, #-0x10             // =-16
    19dc: 17fffff1     	b	0x19a0 <gf_probe+0x364>
    19e0: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		00000000000019e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x146b
    19e4: 91000000     	add	x0, x0, #0x0
		00000000000019e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x146b
    19e8: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3b8>
		00000000000019e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13ea
    19ec: 91000021     	add	x1, x1, #0x0
		00000000000019ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13ea
    19f0: 94000000     	bl	0x19f0 <gf_probe+0x3b4>
		00000000000019f0:  R_AARCH64_CALL26	_printk
    19f4: 2a1f03f9     	mov	w25, wzr
    19f8: 12800174     	mov	w20, #-0xc              // =-12
    19fc: 17ffffca     	b	0x1924 <gf_probe+0x2e8>
    1a00: 2a0003f4     	mov	w20, w0
    1a04: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001a04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79a
    1a08: 91000000     	add	x0, x0, #0x0
		0000000000001a08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79a
    1a0c: 94000000     	bl	0x1a0c <gf_probe+0x3d0>
		0000000000001a0c:  R_AARCH64_CALL26	_printk
    1a10: 2a1f03f9     	mov	w25, wzr
    1a14: 17ffffc4     	b	0x1924 <gf_probe+0x2e8>
    1a18: 52800028     	mov	w8, #0x1                // =1
    1a1c: 9ad92108     	lsl	x8, x8, x25
    1a20: 14000025     	b	0x1ab4 <gf_probe+0x478>
    1a24: 90000009     	adrp	x9, 0x1000 <gf_ioctl+0x3b8>
		0000000000001a24:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    1a28: 91000129     	add	x9, x9, #0x0
		0000000000001a28:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1f8
    1a2c: f828313f     	stset	x8, [x9]
    1a30: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3b8>
		0000000000001a30:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x198
    1a34: 91000108     	add	x8, x8, #0x0
		0000000000001a34:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x198
    1a38: f9400102     	ldr	x2, [x8]
    1a3c: f9400449     	ldr	x9, [x2, #0x8]
    1a40: eb08013f     	cmp	x9, x8
    1a44: 540002c1     	b.ne	0x1a9c <gf_probe+0x460>
    1a48: 90000009     	adrp	x9, 0x1000 <gf_ioctl+0x3b8>
		0000000000001a48:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x20
    1a4c: 91000129     	add	x9, x9, #0x0
		0000000000001a4c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x20
    1a50: eb08013f     	cmp	x9, x8
    1a54: 54000240     	b.eq	0x1a9c <gf_probe+0x460>
    1a58: eb09005f     	cmp	x2, x9
    1a5c: 54000200     	b.eq	0x1a9c <gf_probe+0x460>
    1a60: f9000449     	str	x9, [x2, #0x8]
    1a64: a9002122     	stp	x2, x8, [x9]
    1a68: f9000109     	str	x9, [x8]
    1a6c: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001a6c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    1a70: 91000000     	add	x0, x0, #0x0
		0000000000001a70:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1a74: 94000000     	bl	0x1a74 <gf_probe+0x438>
		0000000000001a74:  R_AARCH64_CALL26	mutex_unlock
    1a78: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001a78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x69c
    1a7c: 91000000     	add	x0, x0, #0x0
		0000000000001a7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x69c
    1a80: 52800021     	mov	w1, #0x1                // =1
    1a84: 52800042     	mov	w2, #0x2                // =2
    1a88: 52800083     	mov	w3, #0x4                // =4
    1a8c: 52800044     	mov	w4, #0x2                // =2
    1a90: 94000000     	bl	0x1a90 <gf_probe+0x454>
		0000000000001a90:  R_AARCH64_CALL26	_printk
    1a94: 2a1f03f4     	mov	w20, wzr
    1a98: 17ffffc2     	b	0x19a0 <gf_probe+0x364>
    1a9c: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001a9c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x20
    1aa0: 91000000     	add	x0, x0, #0x0
		0000000000001aa0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x20
    1aa4: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3b8>
		0000000000001aa4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x198
    1aa8: 91000021     	add	x1, x1, #0x0
		0000000000001aa8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x198
    1aac: 94000000     	bl	0x1aac <gf_probe+0x470>
		0000000000001aac:  R_AARCH64_CALL26	__list_add_valid_or_report
    1ab0: 17ffffef     	b	0x1a6c <gf_probe+0x430>
    1ab4: 90000009     	adrp	x9, 0x1000 <gf_ioctl+0x3b8>
		0000000000001ab4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    1ab8: 91000129     	add	x9, x9, #0x0
		0000000000001ab8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1f8
    1abc: f9800131     	prfm	pstl1strm, [x9]
    1ac0: c85f7d2a     	ldxr	x10, [x9]
    1ac4: aa08014a     	orr	x10, x10, x8
    1ac8: c80b7d2a     	stxr	w11, x10, [x9]
    1acc: 35ffffab     	cbnz	w11, 0x1ac0 <gf_probe+0x484>
    1ad0: 17ffffd8     	b	0x1a30 <gf_probe+0x3f4>
