
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000520 <charger_policy_disable_cas>:
     520: d503233f     	paciasp
     524: d10103ff     	sub	sp, sp, #0x40
     528: a9017bfd     	stp	x29, x30, [sp, #0x10]
     52c: f90013f5     	str	x21, [sp, #0x20]
     530: a9034ff4     	stp	x20, x19, [sp, #0x30]
     534: 910043fd     	add	x29, sp, #0x10
     538: d5384108     	mrs	x8, SP_EL0
     53c: 12000034     	and	w20, w1, #0x1
     540: aa0003f3     	mov	x19, x0
     544: f9438908     	ldr	x8, [x8, #0x710]
     548: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000548:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20b2
     54c: 91000000     	add	x0, x0, #0x0
		000000000000054c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20b2
     550: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000550:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ee0
     554: 91000021     	add	x1, x1, #0x0
		0000000000000554:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ee0
     558: 2a1403e2     	mov	w2, w20
     55c: f90007e8     	str	x8, [sp, #0x8]
     560: 94000000     	bl	0x560 <charger_policy_disable_cas+0x40>
		0000000000000560:  R_AARCH64_CALL26	_printk
     564: f940ea73     	ldr	x19, [x19, #0x1d0]
     568: f90003ff     	str	xzr, [sp]
     56c: b40002f3     	cbz	x19, 0x5c8 <charger_policy_disable_cas+0xa8>
     570: aa1303e0     	mov	x0, x19
     574: 94000000     	bl	0x574 <charger_policy_disable_cas+0x54>
		0000000000000574:  R_AARCH64_CALL26	power_supply_get_by_name
     578: b4000360     	cbz	x0, 0x5e4 <charger_policy_disable_cas+0xc4>
     57c: 910003e2     	mov	x2, sp
     580: 528000a1     	mov	w1, #0x5                // =5
     584: aa0003f5     	mov	x21, x0
     588: b90003f4     	str	w20, [sp]
     58c: 94000000     	bl	0x58c <charger_policy_disable_cas+0x6c>
		000000000000058c:  R_AARCH64_CALL26	power_supply_set_property
     590: 37f803a0     	tbnz	w0, #0x1f, 0x604 <charger_policy_disable_cas+0xe4>
     594: aa1503e0     	mov	x0, x21
     598: 94000000     	bl	0x598 <charger_policy_disable_cas+0x78>
		0000000000000598:  R_AARCH64_CALL26	power_supply_put
     59c: d5384108     	mrs	x8, SP_EL0
     5a0: f9438908     	ldr	x8, [x8, #0x710]
     5a4: f94007e9     	ldr	x9, [sp, #0x8]
     5a8: eb09011f     	cmp	x8, x9
     5ac: 540004e1     	b.ne	0x648 <charger_policy_disable_cas+0x128>
     5b0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     5b4: f94013f5     	ldr	x21, [sp, #0x20]
     5b8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     5bc: 910103ff     	add	sp, sp, #0x40
     5c0: d50323bf     	autiasp
     5c4: d65f03c0     	ret
     5c8: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000005c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fe
     5cc: 91000000     	add	x0, x0, #0x0
		00000000000005cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fe
     5d0: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000005d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d6
     5d4: 91000021     	add	x1, x1, #0x0
		00000000000005d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d6
     5d8: 94000000     	bl	0x5d8 <charger_policy_disable_cas+0xb8>
		00000000000005d8:  R_AARCH64_CALL26	_printk
     5dc: 128002b3     	mov	w19, #-0x16             // =-22
     5e0: 14000013     	b	0x62c <charger_policy_disable_cas+0x10c>
     5e4: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000005e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aec
     5e8: 91000000     	add	x0, x0, #0x0
		00000000000005e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aec
     5ec: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000005ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d6
     5f0: 91000021     	add	x1, x1, #0x0
		00000000000005f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d6
     5f4: aa1303e2     	mov	x2, x19
     5f8: 94000000     	bl	0x5f8 <charger_policy_disable_cas+0xd8>
		00000000000005f8:  R_AARCH64_CALL26	_printk
     5fc: 128002b3     	mov	w19, #-0x16             // =-22
     600: 1400000b     	b	0x62c <charger_policy_disable_cas+0x10c>
     604: 90000008     	adrp	x8, 0x0 <charger_policy_get_prop_by_name>
		0000000000000604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c7a
     608: 91000108     	add	x8, x8, #0x0
		0000000000000608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c7a
     60c: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		000000000000060c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d6
     610: 91000021     	add	x1, x1, #0x0
		0000000000000610:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d6
     614: 2a0003e4     	mov	w4, w0
     618: aa0803e0     	mov	x0, x8
     61c: aa1303e2     	mov	x2, x19
     620: 528000a3     	mov	w3, #0x5                // =5
     624: 2a0403f3     	mov	w19, w4
     628: 94000000     	bl	0x628 <charger_policy_disable_cas+0x108>
		0000000000000628:  R_AARCH64_CALL26	_printk
     62c: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		000000000000062c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xae2
     630: 91000000     	add	x0, x0, #0x0
		0000000000000630:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xae2
     634: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000634:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ee0
     638: 91000021     	add	x1, x1, #0x0
		0000000000000638:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ee0
     63c: 2a1303e2     	mov	w2, w19
     640: 94000000     	bl	0x640 <charger_policy_disable_cas+0x120>
		0000000000000640:  R_AARCH64_CALL26	_printk
     644: 17ffffd6     	b	0x59c <charger_policy_disable_cas+0x7c>
     648: 94000000     	bl	0x648 <charger_policy_disable_cas+0x128>
		0000000000000648:  R_AARCH64_CALL26	__stack_chk_fail
