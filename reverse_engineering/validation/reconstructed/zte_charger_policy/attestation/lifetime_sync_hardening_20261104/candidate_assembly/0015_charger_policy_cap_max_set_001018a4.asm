
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000018a8 <charger_policy_cap_max_set>:
    18a8: d503233f     	paciasp
    18ac: d100c3ff     	sub	sp, sp, #0x30
    18b0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    18b4: f90013f3     	str	x19, [sp, #0x20]
    18b8: 910043fd     	add	x29, sp, #0x10
    18bc: d5384108     	mrs	x8, SP_EL0
    18c0: f9438908     	ldr	x8, [x8, #0x710]
    18c4: f90007e8     	str	x8, [sp, #0x8]
    18c8: b90007ff     	str	wzr, [sp, #0x4]
    18cc: b5000101     	cbnz	x1, 0x18ec <charger_policy_cap_max_set+0x44>
    18d0: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000018d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9e
    18d4: 91000000     	add	x0, x0, #0x0
		00000000000018d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9e
    18d8: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000018d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23da
    18dc: 91000021     	add	x1, x1, #0x0
		00000000000018dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23da
    18e0: 94000000     	bl	0x18e0 <charger_policy_cap_max_set+0x38>
		00000000000018e0:  R_AARCH64_CALL26	_printk
    18e4: 128002a0     	mov	w0, #-0x16              // =-22
    18e8: 14000010     	b	0x1928 <charger_policy_cap_max_set+0x80>
    18ec: aa0103f3     	mov	x19, x1
    18f0: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000018f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19dc
    18f4: 91000021     	add	x1, x1, #0x0
		00000000000018f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19dc
    18f8: 910013e2     	add	x2, sp, #0x4
    18fc: 94000000     	bl	0x18fc <charger_policy_cap_max_set+0x54>
		00000000000018fc:  R_AARCH64_CALL26	sscanf
    1900: b94007e2     	ldr	w2, [sp, #0x4]
    1904: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001904:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a4
    1908: 91000000     	add	x0, x0, #0x0
		0000000000001908:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a4
    190c: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		000000000000190c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23da
    1910: 91000021     	add	x1, x1, #0x0
		0000000000001910:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23da
    1914: b901aa7f     	str	wzr, [x19, #0x1a8]
    1918: b901a262     	str	w2, [x19, #0x1a0]
    191c: b9019a62     	str	w2, [x19, #0x198]
    1920: 94000000     	bl	0x1920 <charger_policy_cap_max_set+0x78>
		0000000000001920:  R_AARCH64_CALL26	_printk
    1924: 2a1f03e0     	mov	w0, wzr
    1928: d5384108     	mrs	x8, SP_EL0
    192c: f9438908     	ldr	x8, [x8, #0x710]
    1930: f94007e9     	ldr	x9, [sp, #0x8]
    1934: eb09011f     	cmp	x8, x9
    1938: 540000c1     	b.ne	0x1950 <charger_policy_cap_max_set+0xa8>
    193c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1940: f94013f3     	ldr	x19, [sp, #0x20]
    1944: 9100c3ff     	add	sp, sp, #0x30
    1948: d50323bf     	autiasp
    194c: d65f03c0     	ret
    1950: 94000000     	bl	0x1950 <charger_policy_cap_max_set+0xa8>
		0000000000001950:  R_AARCH64_CALL26	__stack_chk_fail
