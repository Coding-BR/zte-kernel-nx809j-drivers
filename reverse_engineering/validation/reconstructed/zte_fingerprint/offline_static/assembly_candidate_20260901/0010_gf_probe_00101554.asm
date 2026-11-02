
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000016f0 <gf_probe>:
    16f0: d503233f     	paciasp
    16f4: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    16f8: f9000bf9     	str	x25, [sp, #0x10]
    16fc: a9025ff8     	stp	x24, x23, [sp, #0x20]
    1700: a90357f6     	stp	x22, x21, [sp, #0x30]
    1704: a9044ff4     	stp	x20, x19, [sp, #0x40]
    1708: 910003fd     	mov	x29, sp
    170c: aa0003f4     	mov	x20, x0
    1710: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001710:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x664
    1714: 91000000     	add	x0, x0, #0x0
		0000000000001714:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x664
    1718: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001718:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe1f
    171c: 91000021     	add	x1, x1, #0x0
		000000000000171c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe1f
    1720: 94000000     	bl	0x1720 <gf_probe+0x30>
		0000000000001720:  R_AARCH64_CALL26	_printk
    1724: 928002a8     	mov	x8, #-0x16              // =-22
    1728: 90000018     	adrp	x24, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001728:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    172c: 91000318     	add	x24, x24, #0x0
		000000000000172c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
    1730: f2dffd48     	movk	x8, #0xffea, lsl #32
    1734: f9000318     	str	x24, [x24]
    1738: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001738:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x50c
    173c: 91000000     	add	x0, x0, #0x0
		000000000000173c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x50c
    1740: f9000718     	str	x24, [x24, #0x8]
    1744: 52800141     	mov	w1, #0xa                // =10
    1748: f8034308     	stur	x8, [x24, #0x34]
    174c: 128002a8     	mov	w8, #-0x16              // =-22
    1750: 52800022     	mov	w2, #0x1                // =1
    1754: b9003f08     	str	w8, [x24, #0x3c]
    1758: 3901a31f     	strb	wzr, [x24, #0x68]
    175c: f9000b14     	str	x20, [x24, #0x10]
    1760: 94000000     	bl	0x1760 <gf_probe+0x70>
		0000000000001760:  R_AARCH64_CALL26	alloc_workqueue
    1764: f9004f00     	str	x0, [x24, #0x98]
    1768: b4000300     	cbz	x0, 0x17c8 <gf_probe+0xd8>
    176c: 90000015     	adrp	x21, 0x1000 <_inline_copy_from_user+0x20>
		000000000000176c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xb0
    1770: 910002b5     	add	x21, x21, #0x0
		0000000000001770:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0xb0
    1774: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    1778: aa1503f3     	mov	x19, x21
    177c: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		000000000000177c:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    1780: 91000021     	add	x1, x1, #0x0
		0000000000001780:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    1784: f8008e68     	str	x8, [x19, #0x8]!
    1788: 910042a8     	add	x8, x21, #0x10
    178c: f9000aa8     	str	x8, [x21, #0x10]
    1790: 9100a2a0     	add	x0, x21, #0x28
    1794: 52a00402     	mov	w2, #0x200000           // =2097152
    1798: f9000ea8     	str	x8, [x21, #0x18]
    179c: 90000008     	adrp	x8, 0x1000 <_inline_copy_from_user+0x20>
		000000000000179c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1c40
    17a0: 91000108     	add	x8, x8, #0x0
		00000000000017a0:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1c40
    17a4: aa1f03e3     	mov	x3, xzr
    17a8: aa1f03e4     	mov	x4, xzr
    17ac: f90012a8     	str	x8, [x21, #0x20]
    17b0: 94000000     	bl	0x17b0 <gf_probe+0xc0>
		00000000000017b0:  R_AARCH64_CALL26	init_timer_key
    17b4: f94002a1     	ldr	x1, [x21]
    17b8: 52800400     	mov	w0, #0x20               // =32
    17bc: aa1303e2     	mov	x2, x19
    17c0: 52802723     	mov	w3, #0x139              // =313
    17c4: 94000000     	bl	0x17c4 <gf_probe+0xd4>
		00000000000017c4:  R_AARCH64_CALL26	queue_delayed_work_on
    17c8: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		00000000000017c8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
    17cc: 91000000     	add	x0, x0, #0x0
		00000000000017cc:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
    17d0: 94000000     	bl	0x17d0 <gf_probe+0xe0>
		00000000000017d0:  R_AARCH64_CALL26	mutex_lock
    17d4: 90000008     	adrp	x8, 0x1000 <_inline_copy_from_user+0x20>
		00000000000017d4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    17d8: 90000013     	adrp	x19, 0x1000 <_inline_copy_from_user+0x20>
		00000000000017d8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
    17dc: 91000273     	add	x19, x19, #0x0
		00000000000017dc:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x10
    17e0: f9400108     	ldr	x8, [x8]
		00000000000017e0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
    17e4: b2607d08     	orr	x8, x8, #0xffffffff00000000
    17e8: b100051f     	cmn	x8, #0x1
    17ec: 540000c1     	b.ne	0x1804 <gf_probe+0x114>
    17f0: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		00000000000017f0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
    17f4: 91000000     	add	x0, x0, #0x0
		00000000000017f4:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
    17f8: 94000000     	bl	0x17f8 <gf_probe+0x108>
		00000000000017f8:  R_AARCH64_CALL26	mutex_unlock
    17fc: 12800255     	mov	w21, #-0x13             // =-19
    1800: 14000094     	b	0x1a50 <gf_probe+0x360>
    1804: aa2803e8     	mvn	x8, x8
    1808: 90000009     	adrp	x9, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001808:  R_AARCH64_ADR_PREL_PG_HI21	.bss
    180c: 90000017     	adrp	x23, 0x1000 <_inline_copy_from_user+0x20>
		000000000000180c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
    1810: dac00108     	rbit	x8, x8
    1814: b9400129     	ldr	w9, [x9]
		0000000000001814:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
    1818: f94002e0     	ldr	x0, [x23]
		0000000000001818:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
    181c: 90000016     	adrp	x22, 0x1000 <_inline_copy_from_user+0x20>
		000000000000181c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a8
    1820: 910002d6     	add	x22, x22, #0x0
		0000000000001820:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a8
    1824: 91004281     	add	x1, x20, #0x10
    1828: dac01119     	clz	x25, x8
    182c: aa1303e3     	mov	x3, x19
    1830: aa1603e4     	mov	x4, x22
    1834: 2a095322     	orr	w2, w25, w9, lsl #20
    1838: b9000262     	str	w2, [x19]
    183c: 94000000     	bl	0x183c <gf_probe+0x14c>
		000000000000183c:  R_AARCH64_CALL26	device_create
    1840: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    1844: 54000069     	b.ls	0x1850 <gf_probe+0x160>
    1848: aa0003f5     	mov	x21, x0
    184c: 14000081     	b	0x1a50 <gf_probe+0x360>
    1850: 52800028     	mov	w8, #0x1                // =1
    1854: 9ad92108     	lsl	x8, x8, x25
    1858: 14000095     	b	0x1aac <gf_probe+0x3bc>
    185c: 90000009     	adrp	x9, 0x1000 <_inline_copy_from_user+0x20>
		000000000000185c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    1860: 91000129     	add	x9, x9, #0x0
		0000000000001860:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1f0
    1864: f828313f     	stset	x8, [x9]
    1868: 90000008     	adrp	x8, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001868:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x60
    186c: 91000108     	add	x8, x8, #0x0
		000000000000186c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x60
    1870: f9400501     	ldr	x1, [x8, #0x8]
    1874: f9400029     	ldr	x9, [x1]
    1878: eb08013f     	cmp	x9, x8
    187c: 540010c1     	b.ne	0x1a94 <gf_probe+0x3a4>
    1880: eb18003f     	cmp	x1, x24
    1884: 54001080     	b.eq	0x1a94 <gf_probe+0x3a4>
    1888: eb08031f     	cmp	x24, x8
    188c: 54001040     	b.eq	0x1a94 <gf_probe+0x3a4>
    1890: f9000518     	str	x24, [x8, #0x8]
    1894: a9000708     	stp	x8, x1, [x24]
    1898: f9000038     	str	x24, [x1]
    189c: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		000000000000189c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
    18a0: 91000000     	add	x0, x0, #0x0
		00000000000018a0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
    18a4: 94000000     	bl	0x18a4 <gf_probe+0x1b4>
		00000000000018a4:  R_AARCH64_CALL26	mutex_unlock
    18a8: 94000000     	bl	0x18a8 <gf_probe+0x1b8>
		00000000000018a8:  R_AARCH64_CALL26	input_allocate_device
    18ac: 90000018     	adrp	x24, 0x1000 <_inline_copy_from_user+0x20>
		00000000000018ac:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x38
    18b0: f9000300     	str	x0, [x24]
		00000000000018b0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x38
    18b4: b5000100     	cbnz	x0, 0x18d4 <gf_probe+0x1e4>
    18b8: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		00000000000018b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3cd
    18bc: 91000000     	add	x0, x0, #0x0
		00000000000018bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3cd
    18c0: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		00000000000018c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe1f
    18c4: 91000021     	add	x1, x1, #0x0
		00000000000018c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe1f
    18c8: 94000000     	bl	0x18c8 <gf_probe+0x1d8>
		00000000000018c8:  R_AARCH64_CALL26	_printk
    18cc: 12800175     	mov	w21, #-0xc              // =-12
    18d0: 1400004c     	b	0x1a00 <gf_probe+0x310>
    18d4: f9000016     	str	x22, [x0]
    18d8: 52800021     	mov	w1, #0x1                // =1
    18dc: 52800cc2     	mov	w2, #0x66               // =102
    18e0: f9400300     	ldr	x0, [x24]
		00000000000018e0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x38
    18e4: 94000000     	bl	0x18e4 <gf_probe+0x1f4>
		00000000000018e4:  R_AARCH64_CALL26	input_set_capability
    18e8: f9400300     	ldr	x0, [x24]
		00000000000018e8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x38
    18ec: 52800021     	mov	w1, #0x1                // =1
    18f0: 52801162     	mov	w2, #0x8b               // =139
    18f4: 94000000     	bl	0x18f4 <gf_probe+0x204>
		00000000000018f4:  R_AARCH64_CALL26	input_set_capability
    18f8: f9400300     	ldr	x0, [x24]
		00000000000018f8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x38
    18fc: 52800021     	mov	w1, #0x1                // =1
    1900: 528013c2     	mov	w2, #0x9e               // =158
    1904: 94000000     	bl	0x1904 <gf_probe+0x214>
		0000000000001904:  R_AARCH64_CALL26	input_set_capability
    1908: f9400300     	ldr	x0, [x24]
		0000000000001908:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x38
    190c: 52800021     	mov	w1, #0x1                // =1
    1910: 52800e82     	mov	w2, #0x74               // =116
    1914: 94000000     	bl	0x1914 <gf_probe+0x224>
		0000000000001914:  R_AARCH64_CALL26	input_set_capability
    1918: f9400300     	ldr	x0, [x24]
		0000000000001918:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x38
    191c: 52800021     	mov	w1, #0x1                // =1
    1920: 52800ce2     	mov	w2, #0x67               // =103
    1924: 94000000     	bl	0x1924 <gf_probe+0x234>
		0000000000001924:  R_AARCH64_CALL26	input_set_capability
    1928: f9400300     	ldr	x0, [x24]
		0000000000001928:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x38
    192c: 52800021     	mov	w1, #0x1                // =1
    1930: 52800d82     	mov	w2, #0x6c               // =108
    1934: 94000000     	bl	0x1934 <gf_probe+0x244>
		0000000000001934:  R_AARCH64_CALL26	input_set_capability
    1938: f9400300     	ldr	x0, [x24]
		0000000000001938:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x38
    193c: 52800021     	mov	w1, #0x1                // =1
    1940: 52800d22     	mov	w2, #0x69               // =105
    1944: 94000000     	bl	0x1944 <gf_probe+0x254>
		0000000000001944:  R_AARCH64_CALL26	input_set_capability
    1948: f9400300     	ldr	x0, [x24]
		0000000000001948:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x38
    194c: 52800021     	mov	w1, #0x1                // =1
    1950: 52800d42     	mov	w2, #0x6a               // =106
    1954: 94000000     	bl	0x1954 <gf_probe+0x264>
		0000000000001954:  R_AARCH64_CALL26	input_set_capability
    1958: f9400300     	ldr	x0, [x24]
		0000000000001958:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x38
    195c: 52800021     	mov	w1, #0x1                // =1
    1960: 52801a82     	mov	w2, #0xd4               // =212
    1964: 94000000     	bl	0x1964 <gf_probe+0x274>
		0000000000001964:  R_AARCH64_CALL26	input_set_capability
    1968: f9400300     	ldr	x0, [x24]
		0000000000001968:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x38
    196c: 52800021     	mov	w1, #0x1                // =1
    1970: 52800e42     	mov	w2, #0x72               // =114
    1974: 94000000     	bl	0x1974 <gf_probe+0x284>
		0000000000001974:  R_AARCH64_CALL26	input_set_capability
    1978: f9400300     	ldr	x0, [x24]
		0000000000001978:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x38
    197c: 52800021     	mov	w1, #0x1                // =1
    1980: 52800e62     	mov	w2, #0x73               // =115
    1984: 94000000     	bl	0x1984 <gf_probe+0x294>
		0000000000001984:  R_AARCH64_CALL26	input_set_capability
    1988: f9400300     	ldr	x0, [x24]
		0000000000001988:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x38
    198c: 52800021     	mov	w1, #0x1                // =1
    1990: 528048e2     	mov	w2, #0x247              // =583
    1994: 94000000     	bl	0x1994 <gf_probe+0x2a4>
		0000000000001994:  R_AARCH64_CALL26	input_set_capability
    1998: f9400300     	ldr	x0, [x24]
		0000000000001998:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x38
    199c: 52800021     	mov	w1, #0x1                // =1
    19a0: 52801b02     	mov	w2, #0xd8               // =216
    19a4: 94000000     	bl	0x19a4 <gf_probe+0x2b4>
		00000000000019a4:  R_AARCH64_CALL26	input_set_capability
    19a8: f9400300     	ldr	x0, [x24]
		00000000000019a8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x38
    19ac: 94000000     	bl	0x19ac <gf_probe+0x2bc>
		00000000000019ac:  R_AARCH64_CALL26	input_register_device
    19b0: 2a0003f5     	mov	w21, w0
    19b4: 35000160     	cbnz	w0, 0x19e0 <gf_probe+0x2f0>
    19b8: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		00000000000019b8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x120
    19bc: 91000000     	add	x0, x0, #0x0
		00000000000019bc:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x120
    19c0: 94000000     	bl	0x19c0 <gf_probe+0x2d0>
		00000000000019c0:  R_AARCH64_CALL26	wakeup_source_add
    19c4: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		00000000000019c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x674
    19c8: 91000000     	add	x0, x0, #0x0
		00000000000019c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x674
    19cc: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		00000000000019cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe1f
    19d0: 91000021     	add	x1, x1, #0x0
		00000000000019d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe1f
    19d4: 94000000     	bl	0x19d4 <gf_probe+0x2e4>
		00000000000019d4:  R_AARCH64_CALL26	_printk
    19d8: f9005693     	str	x19, [x20, #0xa8]
    19dc: 14000026     	b	0x1a74 <gf_probe+0x384>
    19e0: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		00000000000019e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x51c
    19e4: 91000000     	add	x0, x0, #0x0
		00000000000019e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x51c
    19e8: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		00000000000019e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe1f
    19ec: 91000021     	add	x1, x1, #0x0
		00000000000019ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe1f
    19f0: 94000000     	bl	0x19f0 <gf_probe+0x300>
		00000000000019f0:  R_AARCH64_CALL26	_printk
    19f4: f9400300     	ldr	x0, [x24]
		00000000000019f4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x38
    19f8: 94000000     	bl	0x19f8 <gf_probe+0x308>
		00000000000019f8:  R_AARCH64_CALL26	input_free_device
    19fc: f900031f     	str	xzr, [x24]
		00000000000019fc:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x38
    1a00: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001a00:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
    1a04: 91000000     	add	x0, x0, #0x0
		0000000000001a04:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
    1a08: 94000000     	bl	0x1a08 <gf_probe+0x318>
		0000000000001a08:  R_AARCH64_CALL26	mutex_lock
    1a0c: 940000db     	bl	0x1d78 <list_del>
    1a10: 90000014     	adrp	x20, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001a10:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
    1a14: f94002e0     	ldr	x0, [x23]
		0000000000001a14:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
    1a18: b9400281     	ldr	w1, [x20]
		0000000000001a18:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x10
    1a1c: 94000000     	bl	0x1a1c <gf_probe+0x32c>
		0000000000001a1c:  R_AARCH64_CALL26	device_destroy
    1a20: b9400288     	ldr	w8, [x20]
		0000000000001a20:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x10
    1a24: 5280002a     	mov	w10, #0x1               // =1
    1a28: d3464d09     	ubfx	x9, x8, #6, #14
    1a2c: 9ac82148     	lsl	x8, x10, x8
    1a30: 14000027     	b	0x1acc <gf_probe+0x3dc>
    1a34: 9000000a     	adrp	x10, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001a34:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    1a38: 9100014a     	add	x10, x10, #0x0
		0000000000001a38:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1f0
    1a3c: 8b090d49     	add	x9, x10, x9, lsl #3
    1a40: f828113f     	stclr	x8, [x9]
    1a44: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001a44:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
    1a48: 91000000     	add	x0, x0, #0x0
		0000000000001a48:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
    1a4c: 94000000     	bl	0x1a4c <gf_probe+0x35c>
		0000000000001a4c:  R_AARCH64_CALL26	mutex_unlock
    1a50: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001a50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f4
    1a54: 91000000     	add	x0, x0, #0x0
		0000000000001a54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f4
    1a58: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001a58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe1f
    1a5c: 91000021     	add	x1, x1, #0x0
		0000000000001a5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe1f
    1a60: 2a1503e2     	mov	w2, w21
    1a64: 94000000     	bl	0x1a64 <gf_probe+0x374>
		0000000000001a64:  R_AARCH64_CALL26	_printk
    1a68: aa1303e0     	mov	x0, x19
    1a6c: 97fffc8c     	bl	0xc9c <gf_cleanup>
    1a70: 3901c27f     	strb	wzr, [x19, #0x70]
    1a74: 2a1503e0     	mov	w0, w21
    1a78: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    1a7c: f9400bf9     	ldr	x25, [sp, #0x10]
    1a80: a94357f6     	ldp	x22, x21, [sp, #0x30]
    1a84: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    1a88: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    1a8c: d50323bf     	autiasp
    1a90: d65f03c0     	ret
    1a94: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001a94:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    1a98: 91000000     	add	x0, x0, #0x0
		0000000000001a98:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
    1a9c: 90000002     	adrp	x2, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001a9c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x60
    1aa0: 91000042     	add	x2, x2, #0x0
		0000000000001aa0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x60
    1aa4: 94000000     	bl	0x1aa4 <gf_probe+0x3b4>
		0000000000001aa4:  R_AARCH64_CALL26	__list_add_valid_or_report
    1aa8: 17ffff7d     	b	0x189c <gf_probe+0x1ac>
    1aac: 90000009     	adrp	x9, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001aac:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    1ab0: 91000129     	add	x9, x9, #0x0
		0000000000001ab0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1f0
    1ab4: f9800131     	prfm	pstl1strm, [x9]
    1ab8: c85f7d2a     	ldxr	x10, [x9]
    1abc: aa08014a     	orr	x10, x10, x8
    1ac0: c80b7d2a     	stxr	w11, x10, [x9]
    1ac4: 35ffffab     	cbnz	w11, 0x1ab8 <gf_probe+0x3c8>
    1ac8: 17ffff68     	b	0x1868 <gf_probe+0x178>
    1acc: 9000000a     	adrp	x10, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001acc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    1ad0: 9100014a     	add	x10, x10, #0x0
		0000000000001ad0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1f0
    1ad4: 8b090d49     	add	x9, x10, x9, lsl #3
    1ad8: f9800131     	prfm	pstl1strm, [x9]
    1adc: c85f7d2a     	ldxr	x10, [x9]
    1ae0: 8a28014a     	bic	x10, x10, x8
    1ae4: c80b7d2a     	stxr	w11, x10, [x9]
    1ae8: 35ffffab     	cbnz	w11, 0x1adc <gf_probe+0x3ec>
    1aec: 17ffffd6     	b	0x1a44 <gf_probe+0x354>
