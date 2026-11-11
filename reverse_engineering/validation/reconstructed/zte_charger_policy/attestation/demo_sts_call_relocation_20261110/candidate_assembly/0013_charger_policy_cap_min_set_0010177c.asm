
/input/fresh_candidate_unpromoted.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001790 <charger_policy_cap_min_set>:
    1790: d503233f     	paciasp
    1794: d100c3ff     	sub	sp, sp, #0x30
    1798: a9017bfd     	stp	x29, x30, [sp, #0x10]
    179c: f90013f3     	str	x19, [sp, #0x20]
    17a0: 910043fd     	add	x29, sp, #0x10
    17a4: d5384108     	mrs	x8, SP_EL0
    17a8: f9438908     	ldr	x8, [x8, #0x710]
    17ac: f90007e8     	str	x8, [sp, #0x8]
    17b0: b90007ff     	str	wzr, [sp, #0x4]
    17b4: b5000101     	cbnz	x1, 0x17d4 <charger_policy_cap_min_set+0x44>
    17b8: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		00000000000017b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9e
    17bc: 91000000     	add	x0, x0, #0x0
		00000000000017bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9e
    17c0: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		00000000000017c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1db8
    17c4: 91000021     	add	x1, x1, #0x0
		00000000000017c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1db8
    17c8: 94000000     	bl	0x17c8 <charger_policy_cap_min_set+0x38>
		00000000000017c8:  R_AARCH64_CALL26	_printk
    17cc: 128002a0     	mov	w0, #-0x16              // =-22
    17d0: 1400000f     	b	0x180c <charger_policy_cap_min_set+0x7c>
    17d4: aa0103f3     	mov	x19, x1
    17d8: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		00000000000017d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19dc
    17dc: 91000021     	add	x1, x1, #0x0
		00000000000017dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19dc
    17e0: 910013e2     	add	x2, sp, #0x4
    17e4: 94000000     	bl	0x17e4 <charger_policy_cap_min_set+0x54>
		00000000000017e4:  R_AARCH64_CALL26	sscanf
    17e8: b94007e2     	ldr	w2, [sp, #0x4]
    17ec: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		00000000000017ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb84
    17f0: 91000000     	add	x0, x0, #0x0
		00000000000017f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb84
    17f4: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		00000000000017f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1db8
    17f8: 91000021     	add	x1, x1, #0x0
		00000000000017f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1db8
    17fc: b901a662     	str	w2, [x19, #0x1a4]
    1800: b9019e62     	str	w2, [x19, #0x19c]
    1804: 94000000     	bl	0x1804 <charger_policy_cap_min_set+0x74>
		0000000000001804:  R_AARCH64_CALL26	_printk
    1808: 2a1f03e0     	mov	w0, wzr
    180c: d5384108     	mrs	x8, SP_EL0
    1810: f9438908     	ldr	x8, [x8, #0x710]
    1814: f94007e9     	ldr	x9, [sp, #0x8]
    1818: eb09011f     	cmp	x8, x9
    181c: 540000c1     	b.ne	0x1834 <charger_policy_cap_min_set+0xa4>
    1820: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1824: f94013f3     	ldr	x19, [sp, #0x20]
    1828: 9100c3ff     	add	sp, sp, #0x30
    182c: d50323bf     	autiasp
    1830: d65f03c0     	ret
    1834: 94000000     	bl	0x1834 <charger_policy_cap_min_set+0xa4>
		0000000000001834:  R_AARCH64_CALL26	__stack_chk_fail
