
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000017a4 <zte_power_supply_check_supplies>:
    17a4: d503233f     	paciasp
    17a8: d10283ff     	sub	sp, sp, #0xa0
    17ac: a9067bfd     	stp	x29, x30, [sp, #0x60]
    17b0: a9075ff8     	stp	x24, x23, [sp, #0x70]
    17b4: a90857f6     	stp	x22, x21, [sp, #0x80]
    17b8: a9094ff4     	stp	x20, x19, [sp, #0x90]
    17bc: 910183fd     	add	x29, sp, #0x60
    17c0: d5384108     	mrs	x8, SP_EL0
    17c4: aa0003f3     	mov	x19, x0
    17c8: f9438908     	ldr	x8, [x8, #0x710]
    17cc: f81f83a8     	stur	x8, [x29, #-0x8]
    17d0: f9400c08     	ldr	x8, [x0, #0x18]
    17d4: b4000068     	cbz	x8, 0x17e0 <zte_power_supply_check_supplies+0x3c>
    17d8: f9401268     	ldr	x8, [x19, #0x20]
    17dc: b5000788     	cbnz	x8, 0x18cc <zte_power_supply_check_supplies+0x128>
    17e0: f9401668     	ldr	x8, [x19, #0x28]
    17e4: b4000748     	cbz	x8, 0x18cc <zte_power_supply_check_supplies+0x128>
    17e8: 2a1f03f4     	mov	w20, wzr
    17ec: 90000015     	adrp	x21, 0x1000 <zte_power_supply_uevent+0x104>
		00000000000017ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x298
    17f0: 910002b5     	add	x21, x21, #0x0
		00000000000017f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x298
    17f4: 90000017     	adrp	x23, 0x1000 <zte_power_supply_uevent+0x104>
		00000000000017f4:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_class
    17f8: 90000016     	adrp	x22, 0x1000 <zte_power_supply_uevent+0x104>
		00000000000017f8:  R_AARCH64_ADR_PREL_PG_HI21	__zte_power_supply_find_supply_from_node
    17fc: 910002d6     	add	x22, x22, #0x0
		00000000000017fc:  R_AARCH64_ADD_ABS_LO12_NC	__zte_power_supply_find_supply_from_node
    1800: 12804098     	mov	w24, #-0x205            // =-517
    1804: f9401660     	ldr	x0, [x19, #0x28]
    1808: 910023e5     	add	x5, sp, #0x8
    180c: aa1503e1     	mov	x1, x21
    1810: aa1f03e2     	mov	x2, xzr
    1814: 2a1f03e3     	mov	w3, wzr
    1818: 2a1403e4     	mov	w4, w20
    181c: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    1820: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    1824: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    1828: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    182c: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    1830: 94000000     	bl	0x1830 <zte_power_supply_check_supplies+0x8c>
		0000000000001830:  R_AARCH64_CALL26	__of_parse_phandle_with_args
    1834: 35000260     	cbnz	w0, 0x1880 <zte_power_supply_check_supplies+0xdc>
    1838: f94007e2     	ldr	x2, [sp, #0x8]
    183c: b4000222     	cbz	x2, 0x1880 <zte_power_supply_check_supplies+0xdc>
    1840: f94002e0     	ldr	x0, [x23]
		0000000000001840:  R_AARCH64_LDST64_ABS_LO12_NC	zte_power_supply_class
    1844: aa1f03e1     	mov	x1, xzr
    1848: aa1603e3     	mov	x3, x22
    184c: 11000694     	add	w20, w20, #0x1
    1850: 94000000     	bl	0x1850 <zte_power_supply_check_supplies+0xac>
		0000000000001850:  R_AARCH64_CALL26	class_for_each_device
    1854: 7100041f     	cmp	w0, #0x1
    1858: 1a8003e8     	csel	w8, wzr, w0, eq
    185c: 7100001f     	cmp	w0, #0x0
    1860: 1a880308     	csel	w8, w24, w8, eq
    1864: 34fffd08     	cbz	w8, 0x1804 <zte_power_supply_check_supplies+0x60>
    1868: 90000001     	adrp	x1, 0x1000 <zte_power_supply_uevent+0x104>
		0000000000001868:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188
    186c: 91000021     	add	x1, x1, #0x0
		000000000000186c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188
    1870: 9100e260     	add	x0, x19, #0x38
    1874: 2a0803f4     	mov	w20, w8
    1878: 94000000     	bl	0x1878 <zte_power_supply_check_supplies+0xd4>
		0000000000001878:  R_AARCH64_CALL26	_dev_info
    187c: 1400002f     	b	0x1938 <zte_power_supply_check_supplies+0x194>
    1880: 34000274     	cbz	w20, 0x18cc <zte_power_supply_check_supplies+0x128>
    1884: 9100e260     	add	x0, x19, #0x38
    1888: 52800101     	mov	w1, #0x8                // =8
    188c: 5281b802     	mov	w2, #0xdc0              // =3520
    1890: 94000000     	bl	0x1890 <zte_power_supply_check_supplies+0xec>
		0000000000001890:  R_AARCH64_CALL26	devm_kmalloc
    1894: f9000e60     	str	x0, [x19, #0x18]
    1898: b4000160     	cbz	x0, 0x18c4 <zte_power_supply_check_supplies+0x120>
    189c: 37f80534     	tbnz	w20, #0x1f, 0x1940 <zte_power_supply_check_supplies+0x19c>
    18a0: d37d7e81     	ubfiz	x1, x20, #3, #32
    18a4: 9100e260     	add	x0, x19, #0x38
    18a8: 5281b802     	mov	w2, #0xdc0              // =3520
    18ac: 94000000     	bl	0x18ac <zte_power_supply_check_supplies+0x108>
		00000000000018ac:  R_AARCH64_CALL26	devm_kmalloc
    18b0: f9400e68     	ldr	x8, [x19, #0x18]
    18b4: f9000100     	str	x0, [x8]
    18b8: f9400e68     	ldr	x8, [x19, #0x18]
    18bc: f9400108     	ldr	x8, [x8]
    18c0: b5000208     	cbnz	x8, 0x1900 <zte_power_supply_check_supplies+0x15c>
    18c4: 12800160     	mov	w0, #-0xc               // =-12
    18c8: 14000002     	b	0x18d0 <zte_power_supply_check_supplies+0x12c>
    18cc: 2a1f03e0     	mov	w0, wzr
    18d0: d5384108     	mrs	x8, SP_EL0
    18d4: f9438908     	ldr	x8, [x8, #0x710]
    18d8: f85f83a9     	ldur	x9, [x29, #-0x8]
    18dc: eb09011f     	cmp	x8, x9
    18e0: 54000361     	b.ne	0x194c <zte_power_supply_check_supplies+0x1a8>
    18e4: a9494ff4     	ldp	x20, x19, [sp, #0x90]
    18e8: a94857f6     	ldp	x22, x21, [sp, #0x80]
    18ec: a9475ff8     	ldp	x24, x23, [sp, #0x70]
    18f0: a9467bfd     	ldp	x29, x30, [sp, #0x60]
    18f4: 910283ff     	add	sp, sp, #0xa0
    18f8: d50323bf     	autiasp
    18fc: d65f03c0     	ret
    1900: f94002e0     	ldr	x0, [x23]
		0000000000001900:  R_AARCH64_LDST64_ABS_LO12_NC	zte_power_supply_class
    1904: 90000003     	adrp	x3, 0x1000 <zte_power_supply_uevent+0x104>
		0000000000001904:  R_AARCH64_ADR_PREL_PG_HI21	__zte_power_supply_populate_supplied_from
    1908: 91000063     	add	x3, x3, #0x0
		0000000000001908:  R_AARCH64_ADD_ABS_LO12_NC	__zte_power_supply_populate_supplied_from
    190c: aa1f03e1     	mov	x1, xzr
    1910: aa1303e2     	mov	x2, x19
    1914: 94000000     	bl	0x1914 <zte_power_supply_check_supplies+0x170>
		0000000000001914:  R_AARCH64_CALL26	class_for_each_device
    1918: 2a0003f4     	mov	w20, w0
    191c: 90000001     	adrp	x1, 0x1000 <zte_power_supply_uevent+0x104>
		000000000000191c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x579
    1920: 91000021     	add	x1, x1, #0x0
		0000000000001920:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x579
    1924: 90000002     	adrp	x2, 0x1000 <zte_power_supply_uevent+0x104>
		0000000000001924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xca
    1928: 91000042     	add	x2, x2, #0x0
		0000000000001928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xca
    192c: 9100e260     	add	x0, x19, #0x38
    1930: 2a1403e3     	mov	w3, w20
    1934: 94000000     	bl	0x1934 <zte_power_supply_check_supplies+0x190>
		0000000000001934:  R_AARCH64_CALL26	_dev_info
    1938: 2a1403e0     	mov	w0, w20
    193c: 17ffffe5     	b	0x18d0 <zte_power_supply_check_supplies+0x12c>
    1940: aa0003e8     	mov	x8, x0
    1944: aa1f03e0     	mov	x0, xzr
    1948: 17ffffdb     	b	0x18b4 <zte_power_supply_check_supplies+0x110>
    194c: 94000000     	bl	0x194c <zte_power_supply_check_supplies+0x1a8>
		000000000000194c:  R_AARCH64_CALL26	__stack_chk_fail
