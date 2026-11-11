
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000019e4 <charger_policy_enable_status_set>:
    19e4: d503233f     	paciasp
    19e8: d100c3ff     	sub	sp, sp, #0x30
    19ec: a9017bfd     	stp	x29, x30, [sp, #0x10]
    19f0: f90013f3     	str	x19, [sp, #0x20]
    19f4: 910043fd     	add	x29, sp, #0x10
    19f8: d5384108     	mrs	x8, SP_EL0
    19fc: f9438908     	ldr	x8, [x8, #0x710]
    1a00: f90007e8     	str	x8, [sp, #0x8]
    1a04: b90007ff     	str	wzr, [sp, #0x4]
    1a08: b5000101     	cbnz	x1, 0x1a28 <charger_policy_enable_status_set+0x44>
    1a0c: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001a0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9e
    1a10: 91000000     	add	x0, x0, #0x0
		0000000000001a10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9e
    1a14: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001a14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f48
    1a18: 91000021     	add	x1, x1, #0x0
		0000000000001a18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f48
    1a1c: 94000000     	bl	0x1a1c <charger_policy_enable_status_set+0x38>
		0000000000001a1c:  R_AARCH64_CALL26	_printk
    1a20: 128002a0     	mov	w0, #-0x16              // =-22
    1a24: 14000010     	b	0x1a64 <charger_policy_enable_status_set+0x80>
    1a28: aa0103f3     	mov	x19, x1
    1a2c: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001a2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19dc
    1a30: 91000021     	add	x1, x1, #0x0
		0000000000001a30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19dc
    1a34: 910013e2     	add	x2, sp, #0x4
    1a38: 94000000     	bl	0x1a38 <charger_policy_enable_status_set+0x54>
		0000000000001a38:  R_AARCH64_CALL26	sscanf
    1a3c: b94007e8     	ldr	w8, [sp, #0x4]
    1a40: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001a40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5e6
    1a44: 91000000     	add	x0, x0, #0x0
		0000000000001a44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5e6
    1a48: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001a48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f48
    1a4c: 91000021     	add	x1, x1, #0x0
		0000000000001a4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f48
    1a50: 7100011f     	cmp	w8, #0x0
    1a54: 1a9f17e2     	cset	w2, eq
    1a58: b901ea62     	str	w2, [x19, #0x1e8]
    1a5c: 94000000     	bl	0x1a5c <charger_policy_enable_status_set+0x78>
		0000000000001a5c:  R_AARCH64_CALL26	_printk
    1a60: 2a1f03e0     	mov	w0, wzr
    1a64: d5384108     	mrs	x8, SP_EL0
    1a68: f9438908     	ldr	x8, [x8, #0x710]
    1a6c: f94007e9     	ldr	x9, [sp, #0x8]
    1a70: eb09011f     	cmp	x8, x9
    1a74: 540000c1     	b.ne	0x1a8c <charger_policy_enable_status_set+0xa8>
    1a78: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1a7c: f94013f3     	ldr	x19, [sp, #0x20]
    1a80: 9100c3ff     	add	sp, sp, #0x30
    1a84: d50323bf     	autiasp
    1a88: d65f03c0     	ret
    1a8c: 94000000     	bl	0x1a8c <charger_policy_enable_status_set+0xa8>
		0000000000001a8c:  R_AARCH64_CALL26	__stack_chk_fail
