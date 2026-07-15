
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000017f4 <charger_policy_check_soc_reach_min>:
    17f4: d503233f     	paciasp
    17f8: d10103ff     	sub	sp, sp, #0x40
    17fc: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1800: f90013f5     	str	x21, [sp, #0x20]
    1804: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1808: 910043fd     	add	x29, sp, #0x10
    180c: d5384108     	mrs	x8, SP_EL0
    1810: aa0003f3     	mov	x19, x0
    1814: 910013e2     	add	x2, sp, #0x4
    1818: f9438908     	ldr	x8, [x8, #0x710]
    181c: 528005e1     	mov	w1, #0x2f               // =47
    1820: f90007e8     	str	x8, [sp, #0x8]
    1824: f940dc00     	ldr	x0, [x0, #0x1b8]
    1828: b90007ff     	str	wzr, [sp, #0x4]
    182c: 97fffe5f     	bl	0x11a8 <charger_policy_get_prop_by_name>
    1830: 37f805e0     	tbnz	w0, #0x1f, 0x18ec <charger_policy_check_soc_reach_min+0xf8>
    1834: 39487668     	ldrb	w8, [x19, #0x21d]
    1838: 7100051f     	cmp	w8, #0x1
    183c: 54000660     	b.eq	0x1908 <charger_policy_check_soc_reach_min+0x114>
    1840: 39486668     	ldrb	w8, [x19, #0x219]
    1844: 7100051f     	cmp	w8, #0x1
    1848: 54000181     	b.ne	0x1878 <charger_policy_check_soc_reach_min+0x84>
    184c: 39487268     	ldrb	w8, [x19, #0x21c]
    1850: b941a674     	ldr	w20, [x19, #0x1a4]
    1854: 37000068     	tbnz	w8, #0x0, 0x1860 <charger_policy_check_soc_reach_min+0x6c>
    1858: b941aa68     	ldr	w8, [x19, #0x1a8]
    185c: 4b080294     	sub	w20, w20, w8
    1860: 39487668     	ldrb	w8, [x19, #0x21d]
    1864: b94007f5     	ldr	w21, [sp, #0x4]
    1868: 7100051f     	cmp	w8, #0x1
    186c: 54000620     	b.eq	0x1930 <charger_policy_check_soc_reach_min+0x13c>
    1870: 6b1402bf     	cmp	w21, w20
    1874: 5400070d     	b.le	0x1954 <charger_policy_check_soc_reach_min+0x160>
    1878: 39486a68     	ldrb	w8, [x19, #0x21a]
    187c: 7100051f     	cmp	w8, #0x1
    1880: 540001e1     	b.ne	0x18bc <charger_policy_check_soc_reach_min+0xc8>
    1884: 39486e68     	ldrb	w8, [x19, #0x21b]
    1888: 7100051f     	cmp	w8, #0x1
    188c: 54000181     	b.ne	0x18bc <charger_policy_check_soc_reach_min+0xc8>
    1890: 39487268     	ldrb	w8, [x19, #0x21c]
    1894: b9419e74     	ldr	w20, [x19, #0x19c]
    1898: 37000068     	tbnz	w8, #0x0, 0x18a4 <charger_policy_check_soc_reach_min+0xb0>
    189c: b941aa68     	ldr	w8, [x19, #0x1a8]
    18a0: 4b080294     	sub	w20, w20, w8
    18a4: 39487668     	ldrb	w8, [x19, #0x21d]
    18a8: b94007f3     	ldr	w19, [sp, #0x4]
    18ac: 7100051f     	cmp	w8, #0x1
    18b0: 540005e0     	b.eq	0x196c <charger_policy_check_soc_reach_min+0x178>
    18b4: 6b14027f     	cmp	w19, w20
    18b8: 540006cd     	b.le	0x1990 <charger_policy_check_soc_reach_min+0x19c>
    18bc: 2a1f03e0     	mov	w0, wzr
    18c0: d5384108     	mrs	x8, SP_EL0
    18c4: f9438908     	ldr	x8, [x8, #0x710]
    18c8: f94007e9     	ldr	x9, [sp, #0x8]
    18cc: eb09011f     	cmp	x8, x9
    18d0: 54000721     	b.ne	0x19b4 <charger_policy_check_soc_reach_min+0x1c0>
    18d4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    18d8: f94013f5     	ldr	x21, [sp, #0x20]
    18dc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    18e0: 910103ff     	add	sp, sp, #0x40
    18e4: d50323bf     	autiasp
    18e8: d65f03c0     	ret
    18ec: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		00000000000018ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e4
    18f0: 91000000     	add	x0, x0, #0x0
		00000000000018f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e4
    18f4: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		00000000000018f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa88
    18f8: 91000021     	add	x1, x1, #0x0
		00000000000018f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa88
    18fc: 94000000     	bl	0x18fc <charger_policy_check_soc_reach_min+0x108>
		00000000000018fc:  R_AARCH64_CALL26	_printk
    1900: 2a1f03e0     	mov	w0, wzr
    1904: 17ffffef     	b	0x18c0 <charger_policy_check_soc_reach_min+0xcc>
    1908: 39486662     	ldrb	w2, [x19, #0x219]
    190c: 39486a63     	ldrb	w3, [x19, #0x21a]
    1910: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001910:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7aa
    1914: 91000000     	add	x0, x0, #0x0
		0000000000001914:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7aa
    1918: 39486e64     	ldrb	w4, [x19, #0x21b]
    191c: 39487265     	ldrb	w5, [x19, #0x21c]
    1920: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001920:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa88
    1924: 91000021     	add	x1, x1, #0x0
		0000000000001924:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa88
    1928: 94000000     	bl	0x1928 <charger_policy_check_soc_reach_min+0x134>
		0000000000001928:  R_AARCH64_CALL26	_printk
    192c: 17ffffc5     	b	0x1840 <charger_policy_check_soc_reach_min+0x4c>
    1930: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001930:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea1
    1934: 91000000     	add	x0, x0, #0x0
		0000000000001934:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea1
    1938: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001938:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa88
    193c: 91000021     	add	x1, x1, #0x0
		000000000000193c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa88
    1940: 2a1503e2     	mov	w2, w21
    1944: 2a1403e3     	mov	w3, w20
    1948: 94000000     	bl	0x1948 <charger_policy_check_soc_reach_min+0x154>
		0000000000001948:  R_AARCH64_CALL26	_printk
    194c: 6b1402bf     	cmp	w21, w20
    1950: 54fff94c     	b.gt	0x1878 <charger_policy_check_soc_reach_min+0x84>
    1954: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001954:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10ce
    1958: 91000000     	add	x0, x0, #0x0
		0000000000001958:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10ce
    195c: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		000000000000195c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa88
    1960: 91000021     	add	x1, x1, #0x0
		0000000000001960:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa88
    1964: 2a1503e2     	mov	w2, w21
    1968: 1400000f     	b	0x19a4 <charger_policy_check_soc_reach_min+0x1b0>
    196c: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		000000000000196c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7f3
    1970: 91000000     	add	x0, x0, #0x0
		0000000000001970:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7f3
    1974: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001974:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa88
    1978: 91000021     	add	x1, x1, #0x0
		0000000000001978:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa88
    197c: 2a1303e2     	mov	w2, w19
    1980: 2a1403e3     	mov	w3, w20
    1984: 94000000     	bl	0x1984 <charger_policy_check_soc_reach_min+0x190>
		0000000000001984:  R_AARCH64_CALL26	_printk
    1988: 6b14027f     	cmp	w19, w20
    198c: 54fff98c     	b.gt	0x18bc <charger_policy_check_soc_reach_min+0xc8>
    1990: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001990:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc9e
    1994: 91000000     	add	x0, x0, #0x0
		0000000000001994:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc9e
    1998: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001998:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa88
    199c: 91000021     	add	x1, x1, #0x0
		000000000000199c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa88
    19a0: 2a1303e2     	mov	w2, w19
    19a4: 2a1403e3     	mov	w3, w20
    19a8: 94000000     	bl	0x19a8 <charger_policy_check_soc_reach_min+0x1b4>
		00000000000019a8:  R_AARCH64_CALL26	_printk
    19ac: 52800020     	mov	w0, #0x1                // =1
    19b0: 17ffffc4     	b	0x18c0 <charger_policy_check_soc_reach_min+0xcc>
    19b4: 94000000     	bl	0x19b4 <charger_policy_check_soc_reach_min+0x1c0>
		00000000000019b4:  R_AARCH64_CALL26	__stack_chk_fail
