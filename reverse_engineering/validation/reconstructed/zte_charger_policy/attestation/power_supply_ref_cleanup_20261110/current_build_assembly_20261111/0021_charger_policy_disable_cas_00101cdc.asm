
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000530 <charger_policy_disable_cas>:
     530: d503233f     	paciasp
     534: d10103ff     	sub	sp, sp, #0x40
     538: a9017bfd     	stp	x29, x30, [sp, #0x10]
     53c: f90013f5     	str	x21, [sp, #0x20]
     540: a9034ff4     	stp	x20, x19, [sp, #0x30]
     544: 910043fd     	add	x29, sp, #0x10
     548: d5384108     	mrs	x8, SP_EL0
     54c: 12000034     	and	w20, w1, #0x1
     550: aa0003f3     	mov	x19, x0
     554: f9438908     	ldr	x8, [x8, #0x710]
     558: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000558:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20b2
     55c: 91000000     	add	x0, x0, #0x0
		000000000000055c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20b2
     560: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000560:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ee0
     564: 91000021     	add	x1, x1, #0x0
		0000000000000564:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ee0
     568: 2a1403e2     	mov	w2, w20
     56c: f90007e8     	str	x8, [sp, #0x8]
     570: 94000000     	bl	0x570 <charger_policy_disable_cas+0x40>
		0000000000000570:  R_AARCH64_CALL26	_printk
     574: f940ea73     	ldr	x19, [x19, #0x1d0]
     578: f90003ff     	str	xzr, [sp]
     57c: b40002f3     	cbz	x19, 0x5d8 <charger_policy_disable_cas+0xa8>
     580: aa1303e0     	mov	x0, x19
     584: 94000000     	bl	0x584 <charger_policy_disable_cas+0x54>
		0000000000000584:  R_AARCH64_CALL26	power_supply_get_by_name
     588: b4000360     	cbz	x0, 0x5f4 <charger_policy_disable_cas+0xc4>
     58c: 910003e2     	mov	x2, sp
     590: 528000a1     	mov	w1, #0x5                // =5
     594: aa0003f5     	mov	x21, x0
     598: b90003f4     	str	w20, [sp]
     59c: 94000000     	bl	0x59c <charger_policy_disable_cas+0x6c>
		000000000000059c:  R_AARCH64_CALL26	power_supply_set_property
     5a0: 37f803a0     	tbnz	w0, #0x1f, 0x614 <charger_policy_disable_cas+0xe4>
     5a4: aa1503e0     	mov	x0, x21
     5a8: 94000000     	bl	0x5a8 <charger_policy_disable_cas+0x78>
		00000000000005a8:  R_AARCH64_CALL26	power_supply_put
     5ac: d5384108     	mrs	x8, SP_EL0
     5b0: f9438908     	ldr	x8, [x8, #0x710]
     5b4: f94007e9     	ldr	x9, [sp, #0x8]
     5b8: eb09011f     	cmp	x8, x9
     5bc: 540004e1     	b.ne	0x658 <charger_policy_disable_cas+0x128>
     5c0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     5c4: f94013f5     	ldr	x21, [sp, #0x20]
     5c8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     5cc: 910103ff     	add	sp, sp, #0x40
     5d0: d50323bf     	autiasp
     5d4: d65f03c0     	ret
     5d8: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000005d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fe
     5dc: 91000000     	add	x0, x0, #0x0
		00000000000005dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fe
     5e0: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000005e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d6
     5e4: 91000021     	add	x1, x1, #0x0
		00000000000005e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d6
     5e8: 94000000     	bl	0x5e8 <charger_policy_disable_cas+0xb8>
		00000000000005e8:  R_AARCH64_CALL26	_printk
     5ec: 128002b3     	mov	w19, #-0x16             // =-22
     5f0: 14000013     	b	0x63c <charger_policy_disable_cas+0x10c>
     5f4: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000005f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aec
     5f8: 91000000     	add	x0, x0, #0x0
		00000000000005f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aec
     5fc: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000005fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d6
     600: 91000021     	add	x1, x1, #0x0
		0000000000000600:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d6
     604: aa1303e2     	mov	x2, x19
     608: 94000000     	bl	0x608 <charger_policy_disable_cas+0xd8>
		0000000000000608:  R_AARCH64_CALL26	_printk
     60c: 128002b3     	mov	w19, #-0x16             // =-22
     610: 1400000b     	b	0x63c <charger_policy_disable_cas+0x10c>
     614: 90000008     	adrp	x8, 0x0 <charger_policy_get_prop_by_name>
		0000000000000614:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c7a
     618: 91000108     	add	x8, x8, #0x0
		0000000000000618:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c7a
     61c: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		000000000000061c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d6
     620: 91000021     	add	x1, x1, #0x0
		0000000000000620:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d6
     624: 2a0003e4     	mov	w4, w0
     628: aa0803e0     	mov	x0, x8
     62c: aa1303e2     	mov	x2, x19
     630: 528000a3     	mov	w3, #0x5                // =5
     634: 2a0403f3     	mov	w19, w4
     638: 94000000     	bl	0x638 <charger_policy_disable_cas+0x108>
		0000000000000638:  R_AARCH64_CALL26	_printk
     63c: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		000000000000063c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xae2
     640: 91000000     	add	x0, x0, #0x0
		0000000000000640:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xae2
     644: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000644:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ee0
     648: 91000021     	add	x1, x1, #0x0
		0000000000000648:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ee0
     64c: 2a1303e2     	mov	w2, w19
     650: 94000000     	bl	0x650 <charger_policy_disable_cas+0x120>
		0000000000000650:  R_AARCH64_CALL26	_printk
     654: 17ffffd6     	b	0x5ac <charger_policy_disable_cas+0x7c>
     658: 94000000     	bl	0x658 <charger_policy_disable_cas+0x128>
		0000000000000658:  R_AARCH64_CALL26	__stack_chk_fail
