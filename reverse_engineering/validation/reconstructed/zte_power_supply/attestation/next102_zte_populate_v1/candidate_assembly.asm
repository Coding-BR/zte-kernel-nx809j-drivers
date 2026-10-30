
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000185c <__zte_power_supply_populate_supplied_from>:
    185c: d503233f     	paciasp
    1860: d10243ff     	sub	sp, sp, #0x90
    1864: a9067bfd     	stp	x29, x30, [sp, #0x60]
    1868: a90757f6     	stp	x22, x21, [sp, #0x70]
    186c: a9084ff4     	stp	x20, x19, [sp, #0x80]
    1870: 910183fd     	add	x29, sp, #0x60
    1874: d5384108     	mrs	x8, SP_EL0
    1878: aa0103f3     	mov	x19, x1
    187c: 12800015     	mov	w21, #-0x1              // =-1
    1880: f9438908     	ldr	x8, [x8, #0x710]
    1884: 90000014     	adrp	x20, 0x1000 <zte_power_supply_set_battery_charged+0x28>
		0000000000001884:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x304
    1888: 91000294     	add	x20, x20, #0x0
		0000000000001888:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x304
    188c: f81f83a8     	stur	x8, [x29, #-0x8]
    1890: f9404c16     	ldr	x22, [x0, #0x98]
    1894: f9401660     	ldr	x0, [x19, #0x28]
    1898: 110006a4     	add	w4, w21, #0x1
    189c: 910023e5     	add	x5, sp, #0x8
    18a0: aa1403e1     	mov	x1, x20
    18a4: aa1f03e2     	mov	x2, xzr
    18a8: 2a1f03e3     	mov	w3, wzr
    18ac: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    18b0: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    18b4: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    18b8: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    18bc: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    18c0: 94000000     	bl	0x18c0 <__zte_power_supply_populate_supplied_from+0x64>
		00000000000018c0:  R_AARCH64_CALL26	__of_parse_phandle_with_args
    18c4: 350002c0     	cbnz	w0, 0x191c <__zte_power_supply_populate_supplied_from+0xc0>
    18c8: f94007e8     	ldr	x8, [sp, #0x8]
    18cc: b4000288     	cbz	x8, 0x191c <__zte_power_supply_populate_supplied_from+0xc0>
    18d0: f94016c9     	ldr	x9, [x22, #0x28]
    18d4: 110006b5     	add	w21, w21, #0x1
    18d8: eb09011f     	cmp	x8, x9
    18dc: 54fffdc1     	b.ne	0x1894 <__zte_power_supply_populate_supplied_from+0x38>
    18e0: f9400268     	ldr	x8, [x19]
    18e4: f94002c9     	ldr	x9, [x22]
    18e8: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x28>
		00000000000018e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x65e
    18ec: 91000021     	add	x1, x1, #0x0
		00000000000018ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x65e
    18f0: 9100e260     	add	x0, x19, #0x38
    18f4: f9400102     	ldr	x2, [x8]
    18f8: f9400123     	ldr	x3, [x9]
    18fc: 94000000     	bl	0x18fc <__zte_power_supply_populate_supplied_from+0xa0>
		00000000000018fc:  R_AARCH64_CALL26	_dev_info
    1900: f94002c8     	ldr	x8, [x22]
    1904: f9400e69     	ldr	x9, [x19, #0x18]
    1908: f9400108     	ldr	x8, [x8]
    190c: f835d928     	str	x8, [x9, w21, sxtw #3]
    1910: f9401268     	ldr	x8, [x19, #0x20]
    1914: 91000508     	add	x8, x8, #0x1
    1918: f9001268     	str	x8, [x19, #0x20]
    191c: d5384108     	mrs	x8, SP_EL0
    1920: f9438908     	ldr	x8, [x8, #0x710]
    1924: f85f83a9     	ldur	x9, [x29, #-0x8]
    1928: eb09011f     	cmp	x8, x9
    192c: 54000101     	b.ne	0x194c <__zte_power_supply_populate_supplied_from+0xf0>
    1930: 2a1f03e0     	mov	w0, wzr
    1934: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    1938: a94757f6     	ldp	x22, x21, [sp, #0x70]
    193c: a9467bfd     	ldp	x29, x30, [sp, #0x60]
    1940: 910243ff     	add	sp, sp, #0x90
    1944: d50323bf     	autiasp
    1948: d65f03c0     	ret
    194c: 94000000     	bl	0x194c <__zte_power_supply_populate_supplied_from+0xf0>
		000000000000194c:  R_AARCH64_CALL26	__stack_chk_fail
