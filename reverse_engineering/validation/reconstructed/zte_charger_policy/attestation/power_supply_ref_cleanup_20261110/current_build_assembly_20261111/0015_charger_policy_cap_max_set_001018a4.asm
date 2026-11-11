
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000018b8 <charger_policy_cap_max_set>:
    18b8: d503233f     	paciasp
    18bc: d100c3ff     	sub	sp, sp, #0x30
    18c0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    18c4: f90013f3     	str	x19, [sp, #0x20]
    18c8: 910043fd     	add	x29, sp, #0x10
    18cc: d5384108     	mrs	x8, SP_EL0
    18d0: f9438908     	ldr	x8, [x8, #0x710]
    18d4: f90007e8     	str	x8, [sp, #0x8]
    18d8: b90007ff     	str	wzr, [sp, #0x4]
    18dc: b5000101     	cbnz	x1, 0x18fc <charger_policy_cap_max_set+0x44>
    18e0: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		00000000000018e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9e
    18e4: 91000000     	add	x0, x0, #0x0
		00000000000018e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9e
    18e8: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		00000000000018e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23da
    18ec: 91000021     	add	x1, x1, #0x0
		00000000000018ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23da
    18f0: 94000000     	bl	0x18f0 <charger_policy_cap_max_set+0x38>
		00000000000018f0:  R_AARCH64_CALL26	_printk
    18f4: 128002a0     	mov	w0, #-0x16              // =-22
    18f8: 14000010     	b	0x1938 <charger_policy_cap_max_set+0x80>
    18fc: aa0103f3     	mov	x19, x1
    1900: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001900:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19dc
    1904: 91000021     	add	x1, x1, #0x0
		0000000000001904:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19dc
    1908: 910013e2     	add	x2, sp, #0x4
    190c: 94000000     	bl	0x190c <charger_policy_cap_max_set+0x54>
		000000000000190c:  R_AARCH64_CALL26	sscanf
    1910: b94007e2     	ldr	w2, [sp, #0x4]
    1914: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001914:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a4
    1918: 91000000     	add	x0, x0, #0x0
		0000000000001918:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a4
    191c: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		000000000000191c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23da
    1920: 91000021     	add	x1, x1, #0x0
		0000000000001920:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23da
    1924: b901aa7f     	str	wzr, [x19, #0x1a8]
    1928: b901a262     	str	w2, [x19, #0x1a0]
    192c: b9019a62     	str	w2, [x19, #0x198]
    1930: 94000000     	bl	0x1930 <charger_policy_cap_max_set+0x78>
		0000000000001930:  R_AARCH64_CALL26	_printk
    1934: 2a1f03e0     	mov	w0, wzr
    1938: d5384108     	mrs	x8, SP_EL0
    193c: f9438908     	ldr	x8, [x8, #0x710]
    1940: f94007e9     	ldr	x9, [sp, #0x8]
    1944: eb09011f     	cmp	x8, x9
    1948: 540000c1     	b.ne	0x1960 <charger_policy_cap_max_set+0xa8>
    194c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1950: f94013f3     	ldr	x19, [sp, #0x20]
    1954: 9100c3ff     	add	sp, sp, #0x30
    1958: d50323bf     	autiasp
    195c: d65f03c0     	ret
    1960: 94000000     	bl	0x1960 <charger_policy_cap_max_set+0xa8>
		0000000000001960:  R_AARCH64_CALL26	__stack_chk_fail
