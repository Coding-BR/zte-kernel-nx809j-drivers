
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000163c <charger_policy_force_disching_sec_set>:
    163c: d503233f     	paciasp
    1640: d100c3ff     	sub	sp, sp, #0x30
    1644: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1648: f90013f3     	str	x19, [sp, #0x20]
    164c: 910043fd     	add	x29, sp, #0x10
    1650: d5384108     	mrs	x8, SP_EL0
    1654: f9438908     	ldr	x8, [x8, #0x710]
    1658: f90007e8     	str	x8, [sp, #0x8]
    165c: b90007ff     	str	wzr, [sp, #0x4]
    1660: b5000101     	cbnz	x1, 0x1680 <charger_policy_force_disching_sec_set+0x44>
    1664: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001664:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9e
    1668: 91000000     	add	x0, x0, #0x0
		0000000000001668:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9e
    166c: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		000000000000166c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c0
    1670: 91000021     	add	x1, x1, #0x0
		0000000000001670:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c0
    1674: 94000000     	bl	0x1674 <charger_policy_force_disching_sec_set+0x38>
		0000000000001674:  R_AARCH64_CALL26	_printk
    1678: 128002a0     	mov	w0, #-0x16              // =-22
    167c: 1400000e     	b	0x16b4 <charger_policy_force_disching_sec_set+0x78>
    1680: aa0103f3     	mov	x19, x1
    1684: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001684:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19dc
    1688: 91000021     	add	x1, x1, #0x0
		0000000000001688:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19dc
    168c: 910013e2     	add	x2, sp, #0x4
    1690: 94000000     	bl	0x1690 <charger_policy_force_disching_sec_set+0x54>
		0000000000001690:  R_AARCH64_CALL26	sscanf
    1694: b94007e2     	ldr	w2, [sp, #0x4]
    1698: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001698:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb52
    169c: 91000000     	add	x0, x0, #0x0
		000000000000169c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb52
    16a0: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000016a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c0
    16a4: 91000021     	add	x1, x1, #0x0
		00000000000016a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c0
    16a8: b901fa62     	str	w2, [x19, #0x1f8]
    16ac: 94000000     	bl	0x16ac <charger_policy_force_disching_sec_set+0x70>
		00000000000016ac:  R_AARCH64_CALL26	_printk
    16b0: 2a1f03e0     	mov	w0, wzr
    16b4: d5384108     	mrs	x8, SP_EL0
    16b8: f9438908     	ldr	x8, [x8, #0x710]
    16bc: f94007e9     	ldr	x9, [sp, #0x8]
    16c0: eb09011f     	cmp	x8, x9
    16c4: 540000c1     	b.ne	0x16dc <charger_policy_force_disching_sec_set+0xa0>
    16c8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    16cc: f94013f3     	ldr	x19, [sp, #0x20]
    16d0: 9100c3ff     	add	sp, sp, #0x30
    16d4: d50323bf     	autiasp
    16d8: d65f03c0     	ret
    16dc: 94000000     	bl	0x16dc <charger_policy_force_disching_sec_set+0xa0>
		00000000000016dc:  R_AARCH64_CALL26	__stack_chk_fail
