
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000016f4 <zte_charger_policy_set_prop_by_name>:
    16f4: d503233f     	paciasp
    16f8: d10103ff     	sub	sp, sp, #0x40
    16fc: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1700: a90257f6     	stp	x22, x21, [sp, #0x20]
    1704: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1708: 910043fd     	add	x29, sp, #0x10
    170c: d5384108     	mrs	x8, SP_EL0
    1710: f9438908     	ldr	x8, [x8, #0x710]
    1714: f90007e8     	str	x8, [sp, #0x8]
    1718: f90003ff     	str	xzr, [sp]
    171c: b4000340     	cbz	x0, 0x1784 <zte_charger_policy_set_prop_by_name+0x90>
    1720: 2a0203f6     	mov	w22, w2
    1724: 2a0103f4     	mov	w20, w1
    1728: aa0003f3     	mov	x19, x0
    172c: 94000000     	bl	0x172c <zte_charger_policy_set_prop_by_name+0x38>
		000000000000172c:  R_AARCH64_CALL26	zte_power_supply_get_by_name
    1730: b4000380     	cbz	x0, 0x17a0 <zte_charger_policy_set_prop_by_name+0xac>
    1734: 910003e2     	mov	x2, sp
    1738: 2a1403e1     	mov	w1, w20
    173c: aa0003f5     	mov	x21, x0
    1740: b90003f6     	str	w22, [sp]
    1744: 94000000     	bl	0x1744 <zte_charger_policy_set_prop_by_name+0x50>
		0000000000001744:  R_AARCH64_CALL26	zte_power_supply_set_property
    1748: 37f803c0     	tbnz	w0, #0x1f, 0x17c0 <zte_charger_policy_set_prop_by_name+0xcc>
    174c: aa1503e0     	mov	x0, x21
    1750: 94000000     	bl	0x1750 <zte_charger_policy_set_prop_by_name+0x5c>
		0000000000001750:  R_AARCH64_CALL26	zte_power_supply_put
    1754: 2a1f03e0     	mov	w0, wzr
    1758: d5384108     	mrs	x8, SP_EL0
    175c: f9438908     	ldr	x8, [x8, #0x710]
    1760: f94007e9     	ldr	x9, [sp, #0x8]
    1764: eb09011f     	cmp	x8, x9
    1768: 54000441     	b.ne	0x17f0 <zte_charger_policy_set_prop_by_name+0xfc>
    176c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1770: a94257f6     	ldp	x22, x21, [sp, #0x20]
    1774: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1778: 910103ff     	add	sp, sp, #0x40
    177c: d50323bf     	autiasp
    1780: d65f03c0     	ret
    1784: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1da
    1788: 91000000     	add	x0, x0, #0x0
		0000000000001788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1da
    178c: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		000000000000178c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be9
    1790: 91000021     	add	x1, x1, #0x0
		0000000000001790:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be9
    1794: 94000000     	bl	0x1794 <zte_charger_policy_set_prop_by_name+0xa0>
		0000000000001794:  R_AARCH64_CALL26	_printk
    1798: 128002a0     	mov	w0, #-0x16              // =-22
    179c: 17ffffef     	b	0x1758 <zte_charger_policy_set_prop_by_name+0x64>
    17a0: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		00000000000017a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x152b
    17a4: 91000000     	add	x0, x0, #0x0
		00000000000017a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x152b
    17a8: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		00000000000017a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be9
    17ac: 91000021     	add	x1, x1, #0x0
		00000000000017ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be9
    17b0: aa1303e2     	mov	x2, x19
    17b4: 94000000     	bl	0x17b4 <zte_charger_policy_set_prop_by_name+0xc0>
		00000000000017b4:  R_AARCH64_CALL26	_printk
    17b8: 128002a0     	mov	w0, #-0x16              // =-22
    17bc: 17ffffe7     	b	0x1758 <zte_charger_policy_set_prop_by_name+0x64>
    17c0: 90000008     	adrp	x8, 0x1000 <charger_policy_enable_status_set+0x60>
		00000000000017c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x163a
    17c4: 91000108     	add	x8, x8, #0x0
		00000000000017c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x163a
    17c8: 2a0003f5     	mov	w21, w0
    17cc: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		00000000000017cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be9
    17d0: 91000021     	add	x1, x1, #0x0
		00000000000017d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be9
    17d4: aa0803e0     	mov	x0, x8
    17d8: aa1303e2     	mov	x2, x19
    17dc: 2a1403e3     	mov	w3, w20
    17e0: 2a1503e4     	mov	w4, w21
    17e4: 94000000     	bl	0x17e4 <zte_charger_policy_set_prop_by_name+0xf0>
		00000000000017e4:  R_AARCH64_CALL26	_printk
    17e8: 2a1503e0     	mov	w0, w21
    17ec: 17ffffdb     	b	0x1758 <zte_charger_policy_set_prop_by_name+0x64>
    17f0: 94000000     	bl	0x17f0 <zte_charger_policy_set_prop_by_name+0xfc>
		00000000000017f0:  R_AARCH64_CALL26	__stack_chk_fail
