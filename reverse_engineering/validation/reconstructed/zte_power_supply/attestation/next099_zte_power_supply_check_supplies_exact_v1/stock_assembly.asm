
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000017c4 <zte_power_supply_check_supplies>:
    17c4: d503233f     	paciasp
    17c8: d10283ff     	sub	sp, sp, #0xa0
    17cc: a9067bfd     	stp	x29, x30, [sp, #0x60]
    17d0: a9075ff8     	stp	x24, x23, [sp, #0x70]
    17d4: a90857f6     	stp	x22, x21, [sp, #0x80]
    17d8: a9094ff4     	stp	x20, x19, [sp, #0x90]
    17dc: 910183fd     	add	x29, sp, #0x60
    17e0: d5384108     	mrs	x8, SP_EL0
    17e4: aa0003f3     	mov	x19, x0
    17e8: f9438908     	ldr	x8, [x8, #0x710]
    17ec: f81f83a8     	stur	x8, [x29, #-0x8]
    17f0: f9400c08     	ldr	x8, [x0, #0x18]
    17f4: b4000068     	cbz	x8, 0x1800 <zte_power_supply_check_supplies+0x3c>
    17f8: f9401268     	ldr	x8, [x19, #0x20]
    17fc: b5000788     	cbnz	x8, 0x18ec <zte_power_supply_check_supplies+0x128>
    1800: f9401668     	ldr	x8, [x19, #0x28]
    1804: b4000748     	cbz	x8, 0x18ec <zte_power_supply_check_supplies+0x128>
    1808: 2a1f03f4     	mov	w20, wzr
    180c: 90000015     	adrp	x21, 0x1000 <zte_power_supply_powers+0x8>
		000000000000180c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c6
    1810: 910002b5     	add	x21, x21, #0x0
		0000000000001810:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c6
    1814: 90000017     	adrp	x23, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001814:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_class
    1818: 90000016     	adrp	x22, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001818:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1a6c
    181c: 910002d6     	add	x22, x22, #0x0
		000000000000181c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1a6c
    1820: 12804098     	mov	w24, #-0x205            // =-517
    1824: f9401660     	ldr	x0, [x19, #0x28]
    1828: 910023e5     	add	x5, sp, #0x8
    182c: aa1503e1     	mov	x1, x21
    1830: aa1f03e2     	mov	x2, xzr
    1834: 2a1f03e3     	mov	w3, wzr
    1838: 2a1403e4     	mov	w4, w20
    183c: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    1840: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    1844: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    1848: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    184c: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    1850: 94000000     	bl	0x1850 <zte_power_supply_check_supplies+0x8c>
		0000000000001850:  R_AARCH64_CALL26	__of_parse_phandle_with_args
    1854: 35000260     	cbnz	w0, 0x18a0 <zte_power_supply_check_supplies+0xdc>
    1858: f94007e2     	ldr	x2, [sp, #0x8]
    185c: b4000222     	cbz	x2, 0x18a0 <zte_power_supply_check_supplies+0xdc>
    1860: f94002e0     	ldr	x0, [x23]
		0000000000001860:  R_AARCH64_LDST64_ABS_LO12_NC	zte_power_supply_class
    1864: aa1f03e1     	mov	x1, xzr
    1868: aa1603e3     	mov	x3, x22
    186c: 11000694     	add	w20, w20, #0x1
    1870: 94000000     	bl	0x1870 <zte_power_supply_check_supplies+0xac>
		0000000000001870:  R_AARCH64_CALL26	class_for_each_device
    1874: 7100041f     	cmp	w0, #0x1
    1878: 1a8003e8     	csel	w8, wzr, w0, eq
    187c: 7100001f     	cmp	w0, #0x0
    1880: 1a880308     	csel	w8, w24, w8, eq
    1884: 34fffd08     	cbz	w8, 0x1824 <zte_power_supply_check_supplies+0x60>
    1888: 90000001     	adrp	x1, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001888:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x135
    188c: 91000021     	add	x1, x1, #0x0
		000000000000188c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x135
    1890: 9100e260     	add	x0, x19, #0x38
    1894: 2a0803f4     	mov	w20, w8
    1898: 94000000     	bl	0x1898 <zte_power_supply_check_supplies+0xd4>
		0000000000001898:  R_AARCH64_CALL26	_dev_info
    189c: 1400002f     	b	0x1958 <zte_power_supply_check_supplies+0x194>
    18a0: 34000274     	cbz	w20, 0x18ec <zte_power_supply_check_supplies+0x128>
    18a4: 9100e260     	add	x0, x19, #0x38
    18a8: 52800101     	mov	w1, #0x8                // =8
    18ac: 5281b802     	mov	w2, #0xdc0              // =3520
    18b0: 94000000     	bl	0x18b0 <zte_power_supply_check_supplies+0xec>
		00000000000018b0:  R_AARCH64_CALL26	devm_kmalloc
    18b4: f9000e60     	str	x0, [x19, #0x18]
    18b8: b4000160     	cbz	x0, 0x18e4 <zte_power_supply_check_supplies+0x120>
    18bc: 37f80534     	tbnz	w20, #0x1f, 0x1960 <zte_power_supply_check_supplies+0x19c>
    18c0: d37d7e81     	ubfiz	x1, x20, #3, #32
    18c4: 9100e260     	add	x0, x19, #0x38
    18c8: 5281b802     	mov	w2, #0xdc0              // =3520
    18cc: 94000000     	bl	0x18cc <zte_power_supply_check_supplies+0x108>
		00000000000018cc:  R_AARCH64_CALL26	devm_kmalloc
    18d0: f9400e68     	ldr	x8, [x19, #0x18]
    18d4: f9000100     	str	x0, [x8]
    18d8: f9400e68     	ldr	x8, [x19, #0x18]
    18dc: f9400108     	ldr	x8, [x8]
    18e0: b5000208     	cbnz	x8, 0x1920 <zte_power_supply_check_supplies+0x15c>
    18e4: 12800160     	mov	w0, #-0xc               // =-12
    18e8: 14000002     	b	0x18f0 <zte_power_supply_check_supplies+0x12c>
    18ec: 2a1f03e0     	mov	w0, wzr
    18f0: d5384108     	mrs	x8, SP_EL0
    18f4: f9438908     	ldr	x8, [x8, #0x710]
    18f8: f85f83a9     	ldur	x9, [x29, #-0x8]
    18fc: eb09011f     	cmp	x8, x9
    1900: 54000361     	b.ne	0x196c <zte_power_supply_check_supplies+0x1a8>
    1904: a9494ff4     	ldp	x20, x19, [sp, #0x90]
    1908: a94857f6     	ldp	x22, x21, [sp, #0x80]
    190c: a9475ff8     	ldp	x24, x23, [sp, #0x70]
    1910: a9467bfd     	ldp	x29, x30, [sp, #0x60]
    1914: 910283ff     	add	sp, sp, #0xa0
    1918: d50323bf     	autiasp
    191c: d65f03c0     	ret
    1920: f94002e0     	ldr	x0, [x23]
		0000000000001920:  R_AARCH64_LDST64_ABS_LO12_NC	zte_power_supply_class
    1924: 90000003     	adrp	x3, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001924:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1a84
    1928: 91000063     	add	x3, x3, #0x0
		0000000000001928:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1a84
    192c: aa1f03e1     	mov	x1, xzr
    1930: aa1303e2     	mov	x2, x19
    1934: 94000000     	bl	0x1934 <zte_power_supply_check_supplies+0x170>
		0000000000001934:  R_AARCH64_CALL26	class_for_each_device
    1938: 2a0003f4     	mov	w20, w0
    193c: 90000001     	adrp	x1, 0x1000 <zte_power_supply_powers+0x8>
		000000000000193c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f7
    1940: 91000021     	add	x1, x1, #0x0
		0000000000001940:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f7
    1944: 90000002     	adrp	x2, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001944:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa4
    1948: 91000042     	add	x2, x2, #0x0
		0000000000001948:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa4
    194c: 9100e260     	add	x0, x19, #0x38
    1950: 2a1403e3     	mov	w3, w20
    1954: 94000000     	bl	0x1954 <zte_power_supply_check_supplies+0x190>
		0000000000001954:  R_AARCH64_CALL26	_dev_info
    1958: 2a1403e0     	mov	w0, w20
    195c: 17ffffe5     	b	0x18f0 <zte_power_supply_check_supplies+0x12c>
    1960: aa0003e8     	mov	x8, x0
    1964: aa1f03e0     	mov	x0, xzr
    1968: 17ffffdb     	b	0x18d4 <zte_power_supply_check_supplies+0x110>
    196c: 94000000     	bl	0x196c <zte_power_supply_check_supplies+0x1a8>
		000000000000196c:  R_AARCH64_CALL26	__stack_chk_fail
