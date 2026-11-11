
/input/fresh_candidate_unpromoted.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000164c <charger_policy_force_disching_sec_set>:
    164c: d503233f     	paciasp
    1650: d100c3ff     	sub	sp, sp, #0x30
    1654: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1658: f90013f3     	str	x19, [sp, #0x20]
    165c: 910043fd     	add	x29, sp, #0x10
    1660: d5384108     	mrs	x8, SP_EL0
    1664: f9438908     	ldr	x8, [x8, #0x710]
    1668: f90007e8     	str	x8, [sp, #0x8]
    166c: b90007ff     	str	wzr, [sp, #0x4]
    1670: b5000101     	cbnz	x1, 0x1690 <charger_policy_force_disching_sec_set+0x44>
    1674: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001674:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9e
    1678: 91000000     	add	x0, x0, #0x0
		0000000000001678:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9e
    167c: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		000000000000167c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c0
    1680: 91000021     	add	x1, x1, #0x0
		0000000000001680:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c0
    1684: 94000000     	bl	0x1684 <charger_policy_force_disching_sec_set+0x38>
		0000000000001684:  R_AARCH64_CALL26	_printk
    1688: 128002a0     	mov	w0, #-0x16              // =-22
    168c: 1400000e     	b	0x16c4 <charger_policy_force_disching_sec_set+0x78>
    1690: aa0103f3     	mov	x19, x1
    1694: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001694:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19dc
    1698: 91000021     	add	x1, x1, #0x0
		0000000000001698:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19dc
    169c: 910013e2     	add	x2, sp, #0x4
    16a0: 94000000     	bl	0x16a0 <charger_policy_force_disching_sec_set+0x54>
		00000000000016a0:  R_AARCH64_CALL26	sscanf
    16a4: b94007e2     	ldr	w2, [sp, #0x4]
    16a8: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		00000000000016a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb52
    16ac: 91000000     	add	x0, x0, #0x0
		00000000000016ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb52
    16b0: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		00000000000016b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c0
    16b4: 91000021     	add	x1, x1, #0x0
		00000000000016b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c0
    16b8: b901fa62     	str	w2, [x19, #0x1f8]
    16bc: 94000000     	bl	0x16bc <charger_policy_force_disching_sec_set+0x70>
		00000000000016bc:  R_AARCH64_CALL26	_printk
    16c0: 2a1f03e0     	mov	w0, wzr
    16c4: d5384108     	mrs	x8, SP_EL0
    16c8: f9438908     	ldr	x8, [x8, #0x710]
    16cc: f94007e9     	ldr	x9, [sp, #0x8]
    16d0: eb09011f     	cmp	x8, x9
    16d4: 540000c1     	b.ne	0x16ec <charger_policy_force_disching_sec_set+0xa0>
    16d8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    16dc: f94013f3     	ldr	x19, [sp, #0x20]
    16e0: 9100c3ff     	add	sp, sp, #0x30
    16e4: d50323bf     	autiasp
    16e8: d65f03c0     	ret
    16ec: 94000000     	bl	0x16ec <charger_policy_force_disching_sec_set+0xa0>
		00000000000016ec:  R_AARCH64_CALL26	__stack_chk_fail
