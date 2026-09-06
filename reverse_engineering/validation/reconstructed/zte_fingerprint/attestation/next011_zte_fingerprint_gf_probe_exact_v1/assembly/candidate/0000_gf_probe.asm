
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001708 <gf_probe>:
    1708: d503233f     	paciasp
    170c: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    1710: a9015ff8     	stp	x24, x23, [sp, #0x10]
    1714: a90257f6     	stp	x22, x21, [sp, #0x20]
    1718: a9034ff4     	stp	x20, x19, [sp, #0x30]
    171c: 910003fd     	mov	x29, sp
    1720: aa0003f3     	mov	x19, x0
    1724: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		0000000000001724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf94
    1728: 91000000     	add	x0, x0, #0x0
		0000000000001728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf94
    172c: 90000001     	adrp	x1, 0x1000 <gf_release+0xd8>
		000000000000172c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfab
    1730: 91000021     	add	x1, x1, #0x0
		0000000000001730:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfab
    1734: 94000000     	bl	0x1734 <gf_probe+0x2c>
		0000000000001734:  R_AARCH64_CALL26	_printk
    1738: 928002a8     	mov	x8, #-0x16              // =-22
    173c: 90000017     	adrp	x23, 0x1000 <gf_release+0xd8>
		000000000000173c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    1740: 910002f7     	add	x23, x23, #0x0
		0000000000001740:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
    1744: f2dffd48     	movk	x8, #0xffea, lsl #32
    1748: 52800141     	mov	w1, #0xa                // =10
    174c: f90002f7     	str	x23, [x23]
    1750: f90006f7     	str	x23, [x23, #0x8]
    1754: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		0000000000001754:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a1
    1758: 91000000     	add	x0, x0, #0x0
		0000000000001758:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a1
    175c: f80342e8     	stur	x8, [x23, #0x34]
    1760: 128002a8     	mov	w8, #-0x16              // =-22
    1764: 90000003     	adrp	x3, 0x1000 <gf_release+0xd8>
		0000000000001764:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f5
    1768: 91000063     	add	x3, x3, #0x0
		0000000000001768:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f5
    176c: 72a000c1     	movk	w1, #0x6, lsl #16
    1770: 52800022     	mov	w2, #0x1                // =1
    1774: f9000af3     	str	x19, [x23, #0x10]
    1778: f803c2e8     	stur	x8, [x23, #0x3c]
    177c: 7900d2ff     	strh	wzr, [x23, #0x68]
    1780: 94000000     	bl	0x1780 <gf_probe+0x78>
		0000000000001780:  R_AARCH64_CALL26	alloc_workqueue
    1784: f9004ee0     	str	x0, [x23, #0x98]
    1788: b4000300     	cbz	x0, 0x17e8 <gf_probe+0xe0>
    178c: 90000014     	adrp	x20, 0x1000 <gf_release+0xd8>
		000000000000178c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xb0
    1790: 91000294     	add	x20, x20, #0x0
		0000000000001790:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0xb0
    1794: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    1798: aa1403f3     	mov	x19, x20
    179c: 90000001     	adrp	x1, 0x1000 <gf_release+0xd8>
		000000000000179c:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    17a0: 91000021     	add	x1, x1, #0x0
		00000000000017a0:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    17a4: f8008e68     	str	x8, [x19, #0x8]!
    17a8: 91004288     	add	x8, x20, #0x10
    17ac: f9000a88     	str	x8, [x20, #0x10]
    17b0: 9100a280     	add	x0, x20, #0x28
    17b4: 52a00402     	mov	w2, #0x200000           // =2097152
    17b8: f9000e88     	str	x8, [x20, #0x18]
    17bc: 90000008     	adrp	x8, 0x1000 <gf_release+0xd8>
		00000000000017bc:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1c68
    17c0: 91000108     	add	x8, x8, #0x0
		00000000000017c0:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1c68
    17c4: aa1f03e3     	mov	x3, xzr
    17c8: aa1f03e4     	mov	x4, xzr
    17cc: f9001288     	str	x8, [x20, #0x20]
    17d0: 94000000     	bl	0x17d0 <gf_probe+0xc8>
		00000000000017d0:  R_AARCH64_CALL26	init_timer_key
    17d4: f9400281     	ldr	x1, [x20]
    17d8: 52800400     	mov	w0, #0x20               // =32
    17dc: aa1303e2     	mov	x2, x19
    17e0: 52809c43     	mov	w3, #0x4e2              // =1250
    17e4: 94000000     	bl	0x17e4 <gf_probe+0xdc>
		00000000000017e4:  R_AARCH64_CALL26	queue_delayed_work_on
    17e8: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		00000000000017e8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
    17ec: 91000000     	add	x0, x0, #0x0
		00000000000017ec:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
    17f0: 94000000     	bl	0x17f0 <gf_probe+0xe8>
		00000000000017f0:  R_AARCH64_CALL26	mutex_lock
    17f4: 90000008     	adrp	x8, 0x1000 <gf_release+0xd8>
		00000000000017f4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    17f8: 90000013     	adrp	x19, 0x1000 <gf_release+0xd8>
		00000000000017f8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
    17fc: 91000273     	add	x19, x19, #0x0
		00000000000017fc:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x10
    1800: f9400108     	ldr	x8, [x8]
		0000000000001800:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
    1804: b2607d08     	orr	x8, x8, #0xffffffff00000000
    1808: b100051f     	cmn	x8, #0x1
    180c: 54000300     	b.eq	0x186c <gf_probe+0x164>
    1810: aa2803e8     	mvn	x8, x8
    1814: 90000009     	adrp	x9, 0x1000 <gf_release+0xd8>
		0000000000001814:  R_AARCH64_ADR_PREL_PG_HI21	.bss
    1818: 90000016     	adrp	x22, 0x1000 <gf_release+0xd8>
		0000000000001818:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
    181c: dac00108     	rbit	x8, x8
    1820: b9400129     	ldr	w9, [x9]
		0000000000001820:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
    1824: f94002c0     	ldr	x0, [x22]
		0000000000001824:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
    1828: 90000014     	adrp	x20, 0x1000 <gf_release+0xd8>
		0000000000001828:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x63f
    182c: 91000294     	add	x20, x20, #0x0
		000000000000182c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x63f
    1830: aa1303e3     	mov	x3, x19
    1834: dac01118     	clz	x24, x8
    1838: f9400e68     	ldr	x8, [x19, #0x18]
    183c: aa1403e4     	mov	x4, x20
    1840: 2a095302     	orr	w2, w24, w9, lsl #20
    1844: 91004101     	add	x1, x8, #0x10
    1848: b9000262     	str	w2, [x19]
    184c: 94000000     	bl	0x184c <gf_probe+0x144>
		000000000000184c:  R_AARCH64_CALL26	device_create
    1850: b13ffc1f     	cmn	x0, #0xfff
    1854: 54000283     	b.lo	0x18a4 <gf_probe+0x19c>
    1858: aa0003f5     	mov	x21, x0
    185c: 34000255     	cbz	w21, 0x18a4 <gf_probe+0x19c>
    1860: 90000008     	adrp	x8, 0x1000 <gf_release+0xd8>
		0000000000001860:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
    1864: b900011f     	str	wzr, [x8]
		0000000000001864:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x10
    1868: 14000005     	b	0x187c <gf_probe+0x174>
    186c: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		000000000000186c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
    1870: 91000000     	add	x0, x0, #0x0
		0000000000001870:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
    1874: 94000000     	bl	0x1874 <gf_probe+0x16c>
		0000000000001874:  R_AARCH64_CALL26	mutex_unlock
    1878: 12800255     	mov	w21, #-0x13             // =-19
    187c: aa1303e0     	mov	x0, x19
    1880: 94000000     	bl	0x1880 <gf_probe+0x178>
		0000000000001880:  R_AARCH64_CALL26	gf_cleanup
    1884: 3901c27f     	strb	wzr, [x19, #0x70]
    1888: 2a1503e0     	mov	w0, w21
    188c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1890: a94257f6     	ldp	x22, x21, [sp, #0x20]
    1894: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    1898: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    189c: d50323bf     	autiasp
    18a0: d65f03c0     	ret
    18a4: 52800028     	mov	w8, #0x1                // =1
    18a8: 9ad82108     	lsl	x8, x8, x24
    18ac: 1400008a     	b	0x1ad4 <gf_probe+0x3cc>
    18b0: 90000009     	adrp	x9, 0x1000 <gf_release+0xd8>
		00000000000018b0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    18b4: 91000129     	add	x9, x9, #0x0
		00000000000018b4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1f0
    18b8: f828313f     	stset	x8, [x9]
    18bc: 90000008     	adrp	x8, 0x1000 <gf_release+0xd8>
		00000000000018bc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x60
    18c0: 91000108     	add	x8, x8, #0x0
		00000000000018c0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x60
    18c4: f9400102     	ldr	x2, [x8]
    18c8: f9400449     	ldr	x9, [x2, #0x8]
    18cc: eb08013f     	cmp	x9, x8
    18d0: 54000f61     	b.ne	0x1abc <gf_probe+0x3b4>
    18d4: eb0802ff     	cmp	x23, x8
    18d8: 54000f20     	b.eq	0x1abc <gf_probe+0x3b4>
    18dc: eb17005f     	cmp	x2, x23
    18e0: 54000ee0     	b.eq	0x1abc <gf_probe+0x3b4>
    18e4: f9000457     	str	x23, [x2, #0x8]
    18e8: a90022e2     	stp	x2, x8, [x23]
    18ec: f9000117     	str	x23, [x8]
    18f0: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		00000000000018f0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
    18f4: 91000000     	add	x0, x0, #0x0
		00000000000018f4:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
    18f8: 94000000     	bl	0x18f8 <gf_probe+0x1f0>
		00000000000018f8:  R_AARCH64_CALL26	mutex_unlock
    18fc: 94000000     	bl	0x18fc <gf_probe+0x1f4>
		00000000000018fc:  R_AARCH64_CALL26	input_allocate_device
    1900: 90000017     	adrp	x23, 0x1000 <gf_release+0xd8>
		0000000000001900:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x40
    1904: f90002e0     	str	x0, [x23]
		0000000000001904:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    1908: b5000100     	cbnz	x0, 0x1928 <gf_probe+0x220>
    190c: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		000000000000190c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1015
    1910: 91000000     	add	x0, x0, #0x0
		0000000000001910:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1015
    1914: 90000001     	adrp	x1, 0x1000 <gf_release+0xd8>
		0000000000001914:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfab
    1918: 91000021     	add	x1, x1, #0x0
		0000000000001918:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfab
    191c: 94000000     	bl	0x191c <gf_probe+0x214>
		000000000000191c:  R_AARCH64_CALL26	_printk
    1920: 12800175     	mov	w21, #-0xc              // =-12
    1924: 1400004b     	b	0x1a50 <gf_probe+0x348>
    1928: 52800021     	mov	w1, #0x1                // =1
    192c: 52800cc2     	mov	w2, #0x66               // =102
    1930: 94000000     	bl	0x1930 <gf_probe+0x228>
		0000000000001930:  R_AARCH64_CALL26	input_set_capability
    1934: f94002e0     	ldr	x0, [x23]
		0000000000001934:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    1938: 52800021     	mov	w1, #0x1                // =1
    193c: 52801162     	mov	w2, #0x8b               // =139
    1940: 94000000     	bl	0x1940 <gf_probe+0x238>
		0000000000001940:  R_AARCH64_CALL26	input_set_capability
    1944: f94002e0     	ldr	x0, [x23]
		0000000000001944:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    1948: 52800021     	mov	w1, #0x1                // =1
    194c: 528013c2     	mov	w2, #0x9e               // =158
    1950: 94000000     	bl	0x1950 <gf_probe+0x248>
		0000000000001950:  R_AARCH64_CALL26	input_set_capability
    1954: f94002e0     	ldr	x0, [x23]
		0000000000001954:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    1958: 52800021     	mov	w1, #0x1                // =1
    195c: 52800e82     	mov	w2, #0x74               // =116
    1960: 94000000     	bl	0x1960 <gf_probe+0x258>
		0000000000001960:  R_AARCH64_CALL26	input_set_capability
    1964: f94002e0     	ldr	x0, [x23]
		0000000000001964:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    1968: 52800021     	mov	w1, #0x1                // =1
    196c: 52800ce2     	mov	w2, #0x67               // =103
    1970: 94000000     	bl	0x1970 <gf_probe+0x268>
		0000000000001970:  R_AARCH64_CALL26	input_set_capability
    1974: f94002e0     	ldr	x0, [x23]
		0000000000001974:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    1978: 52800021     	mov	w1, #0x1                // =1
    197c: 52800d82     	mov	w2, #0x6c               // =108
    1980: 94000000     	bl	0x1980 <gf_probe+0x278>
		0000000000001980:  R_AARCH64_CALL26	input_set_capability
    1984: f94002e0     	ldr	x0, [x23]
		0000000000001984:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    1988: 52800021     	mov	w1, #0x1                // =1
    198c: 52800d42     	mov	w2, #0x6a               // =106
    1990: 94000000     	bl	0x1990 <gf_probe+0x288>
		0000000000001990:  R_AARCH64_CALL26	input_set_capability
    1994: f94002e0     	ldr	x0, [x23]
		0000000000001994:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    1998: 52800021     	mov	w1, #0x1                // =1
    199c: 52800d22     	mov	w2, #0x69               // =105
    19a0: 94000000     	bl	0x19a0 <gf_probe+0x298>
		00000000000019a0:  R_AARCH64_CALL26	input_set_capability
    19a4: f94002e0     	ldr	x0, [x23]
		00000000000019a4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    19a8: 52800021     	mov	w1, #0x1                // =1
    19ac: 52801a82     	mov	w2, #0xd4               // =212
    19b0: 94000000     	bl	0x19b0 <gf_probe+0x2a8>
		00000000000019b0:  R_AARCH64_CALL26	input_set_capability
    19b4: f94002e0     	ldr	x0, [x23]
		00000000000019b4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    19b8: 52800021     	mov	w1, #0x1                // =1
    19bc: 52800e42     	mov	w2, #0x72               // =114
    19c0: 94000000     	bl	0x19c0 <gf_probe+0x2b8>
		00000000000019c0:  R_AARCH64_CALL26	input_set_capability
    19c4: f94002e0     	ldr	x0, [x23]
		00000000000019c4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    19c8: 52800021     	mov	w1, #0x1                // =1
    19cc: 52800e62     	mov	w2, #0x73               // =115
    19d0: 94000000     	bl	0x19d0 <gf_probe+0x2c8>
		00000000000019d0:  R_AARCH64_CALL26	input_set_capability
    19d4: f94002e0     	ldr	x0, [x23]
		00000000000019d4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    19d8: 52800021     	mov	w1, #0x1                // =1
    19dc: 52801b22     	mov	w2, #0xd9               // =217
    19e0: 94000000     	bl	0x19e0 <gf_probe+0x2d8>
		00000000000019e0:  R_AARCH64_CALL26	input_set_capability
    19e4: f94002e0     	ldr	x0, [x23]
		00000000000019e4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    19e8: 52800021     	mov	w1, #0x1                // =1
    19ec: 52801b02     	mov	w2, #0xd8               // =216
    19f0: 94000000     	bl	0x19f0 <gf_probe+0x2e8>
		00000000000019f0:  R_AARCH64_CALL26	input_set_capability
    19f4: f94002e8     	ldr	x8, [x23]
		00000000000019f4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    19f8: f9000114     	str	x20, [x8]
    19fc: f94002e0     	ldr	x0, [x23]
		00000000000019fc:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    1a00: 94000000     	bl	0x1a00 <gf_probe+0x2f8>
		0000000000001a00:  R_AARCH64_CALL26	input_register_device
    1a04: 2a0003f5     	mov	w21, w0
    1a08: 35000180     	cbnz	w0, 0x1a38 <gf_probe+0x330>
    1a0c: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		0000000000001a0c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x120
    1a10: 91000000     	add	x0, x0, #0x0
		0000000000001a10:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x120
    1a14: 94000000     	bl	0x1a14 <gf_probe+0x30c>
		0000000000001a14:  R_AARCH64_CALL26	wakeup_source_add
    1a18: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		0000000000001a18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38a
    1a1c: 91000000     	add	x0, x0, #0x0
		0000000000001a1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38a
    1a20: 52800021     	mov	w1, #0x1                // =1
    1a24: 52800042     	mov	w2, #0x2                // =2
    1a28: 52800083     	mov	w3, #0x4                // =4
    1a2c: 52800044     	mov	w4, #0x2                // =2
    1a30: 94000000     	bl	0x1a30 <gf_probe+0x328>
		0000000000001a30:  R_AARCH64_CALL26	_printk
    1a34: 17ffff95     	b	0x1888 <gf_probe+0x180>
    1a38: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		0000000000001a38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x45e
    1a3c: 91000000     	add	x0, x0, #0x0
		0000000000001a3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x45e
    1a40: 94000000     	bl	0x1a40 <gf_probe+0x338>
		0000000000001a40:  R_AARCH64_CALL26	_printk
    1a44: f94002e0     	ldr	x0, [x23]
		0000000000001a44:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    1a48: b4000040     	cbz	x0, 0x1a50 <gf_probe+0x348>
    1a4c: 94000000     	bl	0x1a4c <gf_probe+0x344>
		0000000000001a4c:  R_AARCH64_CALL26	input_free_device
    1a50: 90000014     	adrp	x20, 0x1000 <gf_release+0xd8>
		0000000000001a50:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
    1a54: b9400288     	ldr	w8, [x20]
		0000000000001a54:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x10
    1a58: 34fff128     	cbz	w8, 0x187c <gf_probe+0x174>
    1a5c: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		0000000000001a5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9b6
    1a60: 91000000     	add	x0, x0, #0x0
		0000000000001a60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9b6
    1a64: 2a1503e1     	mov	w1, w21
    1a68: 94000000     	bl	0x1a68 <gf_probe+0x360>
		0000000000001a68:  R_AARCH64_CALL26	_printk
    1a6c: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		0000000000001a6c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
    1a70: 91000000     	add	x0, x0, #0x0
		0000000000001a70:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
    1a74: 94000000     	bl	0x1a74 <gf_probe+0x36c>
		0000000000001a74:  R_AARCH64_CALL26	mutex_lock
    1a78: 940000ca     	bl	0x1da0 <list_del>
    1a7c: f94002c0     	ldr	x0, [x22]
		0000000000001a7c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
    1a80: b9400281     	ldr	w1, [x20]
		0000000000001a80:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x10
    1a84: 94000000     	bl	0x1a84 <gf_probe+0x37c>
		0000000000001a84:  R_AARCH64_CALL26	device_destroy
    1a88: b9400288     	ldr	w8, [x20]
		0000000000001a88:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x10
    1a8c: 5280002a     	mov	w10, #0x1               // =1
    1a90: d3464d09     	ubfx	x9, x8, #6, #14
    1a94: 9ac82148     	lsl	x8, x10, x8
    1a98: 14000017     	b	0x1af4 <gf_probe+0x3ec>
    1a9c: 9000000a     	adrp	x10, 0x1000 <gf_release+0xd8>
		0000000000001a9c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    1aa0: 9100014a     	add	x10, x10, #0x0
		0000000000001aa0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1f0
    1aa4: 8b090d49     	add	x9, x10, x9, lsl #3
    1aa8: f828113f     	stclr	x8, [x9]
    1aac: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		0000000000001aac:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
    1ab0: 91000000     	add	x0, x0, #0x0
		0000000000001ab0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
    1ab4: 94000000     	bl	0x1ab4 <gf_probe+0x3ac>
		0000000000001ab4:  R_AARCH64_CALL26	mutex_unlock
    1ab8: 17ffff71     	b	0x187c <gf_probe+0x174>
    1abc: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		0000000000001abc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    1ac0: 91000000     	add	x0, x0, #0x0
		0000000000001ac0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
    1ac4: 90000001     	adrp	x1, 0x1000 <gf_release+0xd8>
		0000000000001ac4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x60
    1ac8: 91000021     	add	x1, x1, #0x0
		0000000000001ac8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x60
    1acc: 94000000     	bl	0x1acc <gf_probe+0x3c4>
		0000000000001acc:  R_AARCH64_CALL26	__list_add_valid_or_report
    1ad0: 17ffff88     	b	0x18f0 <gf_probe+0x1e8>
    1ad4: 90000009     	adrp	x9, 0x1000 <gf_release+0xd8>
		0000000000001ad4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    1ad8: 91000129     	add	x9, x9, #0x0
		0000000000001ad8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1f0
    1adc: f9800131     	prfm	pstl1strm, [x9]
    1ae0: c85f7d2a     	ldxr	x10, [x9]
    1ae4: aa08014a     	orr	x10, x10, x8
    1ae8: c80b7d2a     	stxr	w11, x10, [x9]
    1aec: 35ffffab     	cbnz	w11, 0x1ae0 <gf_probe+0x3d8>
    1af0: 17ffff73     	b	0x18bc <gf_probe+0x1b4>
    1af4: 9000000a     	adrp	x10, 0x1000 <gf_release+0xd8>
		0000000000001af4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    1af8: 9100014a     	add	x10, x10, #0x0
		0000000000001af8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1f0
    1afc: 8b090d49     	add	x9, x10, x9, lsl #3
    1b00: f9800131     	prfm	pstl1strm, [x9]
    1b04: c85f7d2a     	ldxr	x10, [x9]
    1b08: 8a28014a     	bic	x10, x10, x8
    1b0c: c80b7d2a     	stxr	w11, x10, [x9]
    1b10: 35ffffab     	cbnz	w11, 0x1b04 <gf_probe+0x3fc>
    1b14: 17ffffe6     	b	0x1aac <gf_probe+0x3a4>
