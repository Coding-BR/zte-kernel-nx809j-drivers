
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000015f0 <zte_charger_policy_get_prop_by_name>:
    15f0: d503233f     	paciasp
    15f4: d10103ff     	sub	sp, sp, #0x40
    15f8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    15fc: a90257f6     	stp	x22, x21, [sp, #0x20]
    1600: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1604: 910043fd     	add	x29, sp, #0x10
    1608: d5384108     	mrs	x8, SP_EL0
    160c: f9438908     	ldr	x8, [x8, #0x710]
    1610: f90007e8     	str	x8, [sp, #0x8]
    1614: f90003ff     	str	xzr, [sp]
    1618: b4000360     	cbz	x0, 0x1684 <zte_charger_policy_get_prop_by_name+0x94>
    161c: aa0203f5     	mov	x21, x2
    1620: 2a0103f4     	mov	w20, w1
    1624: aa0003f3     	mov	x19, x0
    1628: 94000000     	bl	0x1628 <zte_charger_policy_get_prop_by_name+0x38>
		0000000000001628:  R_AARCH64_CALL26	zte_power_supply_get_by_name
    162c: b40003a0     	cbz	x0, 0x16a0 <zte_charger_policy_get_prop_by_name+0xb0>
    1630: 910003e2     	mov	x2, sp
    1634: 2a1403e1     	mov	w1, w20
    1638: aa0003f6     	mov	x22, x0
    163c: 94000000     	bl	0x163c <zte_charger_policy_get_prop_by_name+0x4c>
		000000000000163c:  R_AARCH64_CALL26	zte_power_supply_get_property
    1640: 37f80400     	tbnz	w0, #0x1f, 0x16c0 <zte_charger_policy_get_prop_by_name+0xd0>
    1644: b94003e8     	ldr	w8, [sp]
    1648: aa1603e0     	mov	x0, x22
    164c: b90002a8     	str	w8, [x21]
    1650: 94000000     	bl	0x1650 <zte_charger_policy_get_prop_by_name+0x60>
		0000000000001650:  R_AARCH64_CALL26	zte_power_supply_put
    1654: 2a1f03e0     	mov	w0, wzr
    1658: d5384108     	mrs	x8, SP_EL0
    165c: f9438908     	ldr	x8, [x8, #0x710]
    1660: f94007e9     	ldr	x9, [sp, #0x8]
    1664: eb09011f     	cmp	x8, x9
    1668: 54000441     	b.ne	0x16f0 <zte_charger_policy_get_prop_by_name+0x100>
    166c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1670: a94257f6     	ldp	x22, x21, [sp, #0x20]
    1674: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1678: 910103ff     	add	sp, sp, #0x40
    167c: d50323bf     	autiasp
    1680: d65f03c0     	ret
    1684: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001684:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1da
    1688: 91000000     	add	x0, x0, #0x0
		0000000000001688:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1da
    168c: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		000000000000168c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1301
    1690: 91000021     	add	x1, x1, #0x0
		0000000000001690:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1301
    1694: 94000000     	bl	0x1694 <zte_charger_policy_get_prop_by_name+0xa4>
		0000000000001694:  R_AARCH64_CALL26	_printk
    1698: 128002a0     	mov	w0, #-0x16              // =-22
    169c: 17ffffef     	b	0x1658 <zte_charger_policy_get_prop_by_name+0x68>
    16a0: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		00000000000016a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x152b
    16a4: 91000000     	add	x0, x0, #0x0
		00000000000016a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x152b
    16a8: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		00000000000016a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1301
    16ac: 91000021     	add	x1, x1, #0x0
		00000000000016ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1301
    16b0: aa1303e2     	mov	x2, x19
    16b4: 94000000     	bl	0x16b4 <zte_charger_policy_get_prop_by_name+0xc4>
		00000000000016b4:  R_AARCH64_CALL26	_printk
    16b8: 128002a0     	mov	w0, #-0x16              // =-22
    16bc: 17ffffe7     	b	0x1658 <zte_charger_policy_get_prop_by_name+0x68>
    16c0: 90000008     	adrp	x8, 0x1000 <charger_policy_enable_status_set+0x60>
		00000000000016c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x163a
    16c4: 91000108     	add	x8, x8, #0x0
		00000000000016c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x163a
    16c8: 2a0003f5     	mov	w21, w0
    16cc: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		00000000000016cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1301
    16d0: 91000021     	add	x1, x1, #0x0
		00000000000016d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1301
    16d4: aa0803e0     	mov	x0, x8
    16d8: aa1303e2     	mov	x2, x19
    16dc: 2a1403e3     	mov	w3, w20
    16e0: 2a1503e4     	mov	w4, w21
    16e4: 94000000     	bl	0x16e4 <zte_charger_policy_get_prop_by_name+0xf4>
		00000000000016e4:  R_AARCH64_CALL26	_printk
    16e8: 2a1503e0     	mov	w0, w21
    16ec: 17ffffdb     	b	0x1658 <zte_charger_policy_get_prop_by_name+0x68>
    16f0: 94000000     	bl	0x16f0 <zte_charger_policy_get_prop_by_name+0x100>
		00000000000016f0:  R_AARCH64_CALL26	__stack_chk_fail
