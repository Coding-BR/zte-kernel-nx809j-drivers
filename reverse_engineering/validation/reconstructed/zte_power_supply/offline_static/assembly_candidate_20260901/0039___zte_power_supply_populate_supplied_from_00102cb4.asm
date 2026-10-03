
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000207c <__zte_power_supply_populate_supplied_from>:
    207c: d503233f     	paciasp
    2080: d10243ff     	sub	sp, sp, #0x90
    2084: a9067bfd     	stp	x29, x30, [sp, #0x60]
    2088: a90757f6     	stp	x22, x21, [sp, #0x70]
    208c: a9084ff4     	stp	x20, x19, [sp, #0x80]
    2090: 910183fd     	add	x29, sp, #0x60
    2094: d5384108     	mrs	x8, SP_EL0
    2098: aa0103f3     	mov	x19, x1
    209c: 12800014     	mov	w20, #-0x1              // =-1
    20a0: f9438908     	ldr	x8, [x8, #0x710]
    20a4: 90000015     	adrp	x21, 0x2000 <__zte_power_supply_changed_work+0x94>
		00000000000020a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35e
    20a8: 910002b5     	add	x21, x21, #0x0
		00000000000020a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35e
    20ac: f81f83a8     	stur	x8, [x29, #-0x8]
    20b0: f9404c16     	ldr	x22, [x0, #0x98]
    20b4: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    20b8: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    20bc: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    20c0: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    20c4: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    20c8: f9401660     	ldr	x0, [x19, #0x28]
    20cc: 11000694     	add	w20, w20, #0x1
    20d0: 910023e5     	add	x5, sp, #0x8
    20d4: aa1503e1     	mov	x1, x21
    20d8: aa1f03e2     	mov	x2, xzr
    20dc: 2a1f03e3     	mov	w3, wzr
    20e0: 2a1403e4     	mov	w4, w20
    20e4: 94000000     	bl	0x20e4 <__zte_power_supply_populate_supplied_from+0x68>
		00000000000020e4:  R_AARCH64_CALL26	__of_parse_phandle_with_args
    20e8: 350002a0     	cbnz	w0, 0x213c <__zte_power_supply_populate_supplied_from+0xc0>
    20ec: f94007e8     	ldr	x8, [sp, #0x8]
    20f0: b4000268     	cbz	x8, 0x213c <__zte_power_supply_populate_supplied_from+0xc0>
    20f4: f94016c9     	ldr	x9, [x22, #0x28]
    20f8: eb09011f     	cmp	x8, x9
    20fc: 54fffe61     	b.ne	0x20c8 <__zte_power_supply_populate_supplied_from+0x4c>
    2100: f9400268     	ldr	x8, [x19]
    2104: f94002c9     	ldr	x9, [x22]
    2108: 90000001     	adrp	x1, 0x2000 <__zte_power_supply_changed_work+0x94>
		0000000000002108:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x648
    210c: 91000021     	add	x1, x1, #0x0
		000000000000210c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x648
    2110: 9100e260     	add	x0, x19, #0x38
    2114: f9400102     	ldr	x2, [x8]
    2118: f9400123     	ldr	x3, [x9]
    211c: 94000000     	bl	0x211c <__zte_power_supply_populate_supplied_from+0xa0>
		000000000000211c:  R_AARCH64_CALL26	_dev_info
    2120: f94002c8     	ldr	x8, [x22]
    2124: f9400e69     	ldr	x9, [x19, #0x18]
    2128: f9400108     	ldr	x8, [x8]
    212c: f834d928     	str	x8, [x9, w20, sxtw #3]
    2130: f9401268     	ldr	x8, [x19, #0x20]
    2134: 91000508     	add	x8, x8, #0x1
    2138: f9001268     	str	x8, [x19, #0x20]
    213c: d5384108     	mrs	x8, SP_EL0
    2140: f9438908     	ldr	x8, [x8, #0x710]
    2144: f85f83a9     	ldur	x9, [x29, #-0x8]
    2148: eb09011f     	cmp	x8, x9
    214c: 54000101     	b.ne	0x216c <__zte_power_supply_populate_supplied_from+0xf0>
    2150: 2a1f03e0     	mov	w0, wzr
    2154: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    2158: a94757f6     	ldp	x22, x21, [sp, #0x70]
    215c: a9467bfd     	ldp	x29, x30, [sp, #0x60]
    2160: 910243ff     	add	sp, sp, #0x90
    2164: d50323bf     	autiasp
    2168: d65f03c0     	ret
    216c: 94000000     	bl	0x216c <__zte_power_supply_populate_supplied_from+0xf0>
		000000000000216c:  R_AARCH64_CALL26	__stack_chk_fail
