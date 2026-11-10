
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001780 <charger_policy_cap_min_set>:
    1780: d503233f     	paciasp
    1784: d100c3ff     	sub	sp, sp, #0x30
    1788: a9017bfd     	stp	x29, x30, [sp, #0x10]
    178c: f90013f3     	str	x19, [sp, #0x20]
    1790: 910043fd     	add	x29, sp, #0x10
    1794: d5384108     	mrs	x8, SP_EL0
    1798: f9438908     	ldr	x8, [x8, #0x710]
    179c: f90007e8     	str	x8, [sp, #0x8]
    17a0: b90007ff     	str	wzr, [sp, #0x4]
    17a4: b5000101     	cbnz	x1, 0x17c4 <charger_policy_cap_min_set+0x44>
    17a8: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000017a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9e
    17ac: 91000000     	add	x0, x0, #0x0
		00000000000017ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9e
    17b0: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000017b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1db8
    17b4: 91000021     	add	x1, x1, #0x0
		00000000000017b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1db8
    17b8: 94000000     	bl	0x17b8 <charger_policy_cap_min_set+0x38>
		00000000000017b8:  R_AARCH64_CALL26	_printk
    17bc: 128002a0     	mov	w0, #-0x16              // =-22
    17c0: 1400000f     	b	0x17fc <charger_policy_cap_min_set+0x7c>
    17c4: aa0103f3     	mov	x19, x1
    17c8: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000017c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19dc
    17cc: 91000021     	add	x1, x1, #0x0
		00000000000017cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19dc
    17d0: 910013e2     	add	x2, sp, #0x4
    17d4: 94000000     	bl	0x17d4 <charger_policy_cap_min_set+0x54>
		00000000000017d4:  R_AARCH64_CALL26	sscanf
    17d8: b94007e2     	ldr	w2, [sp, #0x4]
    17dc: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000017dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb84
    17e0: 91000000     	add	x0, x0, #0x0
		00000000000017e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb84
    17e4: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000017e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1db8
    17e8: 91000021     	add	x1, x1, #0x0
		00000000000017e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1db8
    17ec: b901a662     	str	w2, [x19, #0x1a4]
    17f0: b9019e62     	str	w2, [x19, #0x19c]
    17f4: 94000000     	bl	0x17f4 <charger_policy_cap_min_set+0x74>
		00000000000017f4:  R_AARCH64_CALL26	_printk
    17f8: 2a1f03e0     	mov	w0, wzr
    17fc: d5384108     	mrs	x8, SP_EL0
    1800: f9438908     	ldr	x8, [x8, #0x710]
    1804: f94007e9     	ldr	x9, [sp, #0x8]
    1808: eb09011f     	cmp	x8, x9
    180c: 540000c1     	b.ne	0x1824 <charger_policy_cap_min_set+0xa4>
    1810: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1814: f94013f3     	ldr	x19, [sp, #0x20]
    1818: 9100c3ff     	add	sp, sp, #0x30
    181c: d50323bf     	autiasp
    1820: d65f03c0     	ret
    1824: 94000000     	bl	0x1824 <charger_policy_cap_min_set+0xa4>
		0000000000001824:  R_AARCH64_CALL26	__stack_chk_fail
