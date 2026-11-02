
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001754 <aw22xxx_task_work>:
    1754: d503233f     	paciasp
    1758: d10103ff     	sub	sp, sp, #0x40
    175c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1760: f90013f5     	str	x21, [sp, #0x20]
    1764: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1768: 910043fd     	add	x29, sp, #0x10
    176c: d5384108     	mrs	x8, SP_EL0
    1770: 90000015     	adrp	x21, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001770:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1458
    1774: 910002b5     	add	x21, x21, #0x0
		0000000000001774:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1458
    1778: f9438908     	ldr	x8, [x8, #0x710]
    177c: aa0003f4     	mov	x20, x0
    1780: d107c013     	sub	x19, x0, #0x1f0
    1784: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1518
    1788: 91000000     	add	x0, x0, #0x0
		0000000000001788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1518
    178c: aa1503e1     	mov	x1, x21
    1790: f90007e8     	str	x8, [sp, #0x8]
    1794: 390013ff     	strb	wzr, [sp, #0x4]
    1798: 94000000     	bl	0x1798 <aw22xxx_task_work+0x44>
		0000000000001798:  R_AARCH64_CALL26	_printk
    179c: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		000000000000179c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf88
    17a0: 91000000     	add	x0, x0, #0x0
		00000000000017a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf88
    17a4: aa1503e1     	mov	x1, x21
    17a8: 94000000     	bl	0x17a8 <aw22xxx_task_work+0x54>
		00000000000017a8:  R_AARCH64_CALL26	_printk
    17ac: aa1303e0     	mov	x0, x19
    17b0: 528000a1     	mov	w1, #0x5                // =5
    17b4: 52801fe2     	mov	w2, #0xff               // =255
    17b8: 97fffa2a     	bl	0x60 <aw22xxx_i2c_write>
    17bc: 910013e2     	add	x2, sp, #0x4
    17c0: aa1303e0     	mov	x0, x19
    17c4: 52800081     	mov	w1, #0x4                // =4
    17c8: 97ffff16     	bl	0x1420 <aw22xxx_i2c_read>
    17cc: 394013e8     	ldrb	w8, [sp, #0x4]
    17d0: aa1303e0     	mov	x0, x19
    17d4: 52800081     	mov	w1, #0x4                // =4
    17d8: 121e7902     	and	w2, w8, #0xfffffffd
    17dc: 390013e2     	strb	w2, [sp, #0x4]
    17e0: 97fffa20     	bl	0x60 <aw22xxx_i2c_write>
    17e4: 910013e2     	add	x2, sp, #0x4
    17e8: aa1303e0     	mov	x0, x19
    17ec: 52800041     	mov	w1, #0x2                // =2
    17f0: 97ffff0c     	bl	0x1420 <aw22xxx_i2c_read>
    17f4: 394013e8     	ldrb	w8, [sp, #0x4]
    17f8: aa1303e0     	mov	x0, x19
    17fc: 52800041     	mov	w1, #0x2                // =2
    1800: 121f7902     	and	w2, w8, #0xfffffffe
    1804: 390013e2     	strb	w2, [sp, #0x4]
    1808: 97fffa16     	bl	0x60 <aw22xxx_i2c_write>
    180c: 5280fa00     	mov	w0, #0x7d0              // =2000
    1810: 52817701     	mov	w1, #0xbb8              // =3000
    1814: 52800042     	mov	w2, #0x2                // =2
    1818: 94000000     	bl	0x1818 <aw22xxx_task_work+0xc4>
		0000000000001818:  R_AARCH64_CALL26	usleep_range_state
    181c: 39443288     	ldrb	w8, [x20, #0x10c]
    1820: 35000188     	cbnz	w8, 0x1850 <aw22xxx_task_work+0xfc>
    1824: d5384108     	mrs	x8, SP_EL0
    1828: f9438908     	ldr	x8, [x8, #0x710]
    182c: f94007e9     	ldr	x9, [sp, #0x8]
    1830: eb09011f     	cmp	x8, x9
    1834: 54000ae1     	b.ne	0x1990 <aw22xxx_task_work+0x23c>
    1838: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    183c: f94013f5     	ldr	x21, [sp, #0x20]
    1840: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1844: 910103ff     	add	sp, sp, #0x40
    1848: d50323bf     	autiasp
    184c: d65f03c0     	ret
    1850: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001850:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x676
    1854: 91000000     	add	x0, x0, #0x0
		0000000000001854:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x676
    1858: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001858:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1458
    185c: 91000021     	add	x1, x1, #0x0
		000000000000185c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1458
    1860: 94000000     	bl	0x1860 <aw22xxx_task_work+0x10c>
		0000000000001860:  R_AARCH64_CALL26	_printk
    1864: 910013e2     	add	x2, sp, #0x4
    1868: aa1303e0     	mov	x0, x19
    186c: 52800041     	mov	w1, #0x2                // =2
    1870: 97fffeec     	bl	0x1420 <aw22xxx_i2c_read>
    1874: 394013e8     	ldrb	w8, [sp, #0x4]
    1878: aa1303e0     	mov	x0, x19
    187c: 52800041     	mov	w1, #0x2                // =2
    1880: 32000102     	orr	w2, w8, #0x1
    1884: 390013e2     	strb	w2, [sp, #0x4]
    1888: 97fff9f6     	bl	0x60 <aw22xxx_i2c_write>
    188c: 5280fa00     	mov	w0, #0x7d0              // =2000
    1890: 52817701     	mov	w1, #0xbb8              // =3000
    1894: 52800042     	mov	w2, #0x2                // =2
    1898: 94000000     	bl	0x1898 <aw22xxx_task_work+0x144>
		0000000000001898:  R_AARCH64_CALL26	usleep_range_state
    189c: 910013e2     	add	x2, sp, #0x4
    18a0: aa1303e0     	mov	x0, x19
    18a4: 52800081     	mov	w1, #0x4                // =4
    18a8: 97fffede     	bl	0x1420 <aw22xxx_i2c_read>
    18ac: 394013e8     	ldrb	w8, [sp, #0x4]
    18b0: aa1303e0     	mov	x0, x19
    18b4: 52800081     	mov	w1, #0x4                // =4
    18b8: 32000102     	orr	w2, w8, #0x1
    18bc: 390013e2     	strb	w2, [sp, #0x4]
    18c0: 97fff9e8     	bl	0x60 <aw22xxx_i2c_write>
    18c4: b9410288     	ldr	w8, [x20, #0x100]
    18c8: 528001e9     	mov	w9, #0xf                // =15
    18cc: aa1303e0     	mov	x0, x19
    18d0: 52801fe1     	mov	w1, #0xff               // =255
    18d4: 2a1f03e2     	mov	w2, wzr
    18d8: 7100391f     	cmp	w8, #0xe
    18dc: 1a888135     	csel	w21, w9, w8, hi
    18e0: 97fff9e0     	bl	0x60 <aw22xxx_i2c_write>
    18e4: aa1303e0     	mov	x0, x19
    18e8: 52800161     	mov	w1, #0xb                // =11
    18ec: 2a1503e2     	mov	w2, w21
    18f0: 97fff9dc     	bl	0x60 <aw22xxx_i2c_write>
    18f4: aa1303e0     	mov	x0, x19
    18f8: 52800421     	mov	w1, #0x21               // =33
    18fc: 52801c22     	mov	w2, #0xe1               // =225
    1900: 97fff9d8     	bl	0x60 <aw22xxx_i2c_write>
    1904: aa1303e0     	mov	x0, x19
    1908: 52800441     	mov	w1, #0x22               // =34
    190c: 2a1f03e2     	mov	w2, wzr
    1910: 97fff9d4     	bl	0x60 <aw22xxx_i2c_write>
    1914: aa1303e0     	mov	x0, x19
    1918: 52800401     	mov	w1, #0x20               // =32
    191c: 52800042     	mov	w2, #0x2                // =2
    1920: 97fff9d0     	bl	0x60 <aw22xxx_i2c_write>
    1924: aa1303e0     	mov	x0, x19
    1928: 52800461     	mov	w1, #0x23               // =35
    192c: 528007a2     	mov	w2, #0x3d               // =61
    1930: 97fff9cc     	bl	0x60 <aw22xxx_i2c_write>
    1934: aa1303e0     	mov	x0, x19
    1938: 52800401     	mov	w1, #0x20               // =32
    193c: 2a1f03e2     	mov	w2, wzr
    1940: 97fff9c8     	bl	0x60 <aw22xxx_i2c_write>
    1944: 39443282     	ldrb	w2, [x20, #0x10c]
    1948: aa1303e0     	mov	x0, x19
    194c: 528000a1     	mov	w1, #0x5                // =5
    1950: 97fff9c4     	bl	0x60 <aw22xxx_i2c_write>
    1954: 39443682     	ldrb	w2, [x20, #0x10d]
    1958: aa1303e0     	mov	x0, x19
    195c: 528000c1     	mov	w1, #0x6                // =6
    1960: 97fff9c0     	bl	0x60 <aw22xxx_i2c_write>
    1964: 910013e2     	add	x2, sp, #0x4
    1968: aa1303e0     	mov	x0, x19
    196c: 52800081     	mov	w1, #0x4                // =4
    1970: 97fffeac     	bl	0x1420 <aw22xxx_i2c_read>
    1974: 394013e8     	ldrb	w8, [sp, #0x4]
    1978: aa1303e0     	mov	x0, x19
    197c: 52800081     	mov	w1, #0x4                // =4
    1980: 321f0102     	orr	w2, w8, #0x2
    1984: 390013e2     	strb	w2, [sp, #0x4]
    1988: 97fff9b6     	bl	0x60 <aw22xxx_i2c_write>
    198c: 17ffffa6     	b	0x1824 <aw22xxx_task_work+0xd0>
    1990: 94000000     	bl	0x1990 <aw22xxx_task_work+0x23c>
		0000000000001990:  R_AARCH64_CALL26	__stack_chk_fail
