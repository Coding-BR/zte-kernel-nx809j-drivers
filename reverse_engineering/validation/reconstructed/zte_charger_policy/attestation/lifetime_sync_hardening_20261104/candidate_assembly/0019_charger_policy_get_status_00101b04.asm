
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001d18 <charger_policy_get_status>:
    1d18: d503233f     	paciasp
    1d1c: d100c3ff     	sub	sp, sp, #0x30
    1d20: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1d24: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1d28: 910043fd     	add	x29, sp, #0x10
    1d2c: d5384108     	mrs	x8, SP_EL0
    1d30: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001d30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2244
    1d34: 91000000     	add	x0, x0, #0x0
		0000000000001d34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2244
    1d38: f9438908     	ldr	x8, [x8, #0x710]
    1d3c: f90007e8     	str	x8, [sp, #0x8]
    1d40: f90003ff     	str	xzr, [sp]
    1d44: 94000000     	bl	0x1d44 <charger_policy_get_status+0x2c>
		0000000000001d44:  R_AARCH64_CALL26	power_supply_get_by_name
    1d48: b40002a0     	cbz	x0, 0x1d9c <charger_policy_get_status+0x84>
    1d4c: 910003e2     	mov	x2, sp
    1d50: 528000a1     	mov	w1, #0x5                // =5
    1d54: aa0003f3     	mov	x19, x0
    1d58: 94000000     	bl	0x1d58 <charger_policy_get_status+0x40>
		0000000000001d58:  R_AARCH64_CALL26	power_supply_get_property
    1d5c: 37f80300     	tbnz	w0, #0x1f, 0x1dbc <charger_policy_get_status+0xa4>
    1d60: b94003f4     	ldr	w20, [sp]
    1d64: aa1303e0     	mov	x0, x19
    1d68: 94000000     	bl	0x1d68 <charger_policy_get_status+0x50>
		0000000000001d68:  R_AARCH64_CALL26	power_supply_put
    1d6c: 7100029f     	cmp	w20, #0x0
    1d70: 1a9f07e0     	cset	w0, ne
    1d74: d5384108     	mrs	x8, SP_EL0
    1d78: f9438908     	ldr	x8, [x8, #0x710]
    1d7c: f94007e9     	ldr	x9, [sp, #0x8]
    1d80: eb09011f     	cmp	x8, x9
    1d84: 54000321     	b.ne	0x1de8 <charger_policy_get_status+0xd0>
    1d88: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1d8c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1d90: 9100c3ff     	add	sp, sp, #0x30
    1d94: d50323bf     	autiasp
    1d98: d65f03c0     	ret
    1d9c: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001d9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aec
    1da0: 91000000     	add	x0, x0, #0x0
		0000000000001da0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aec
    1da4: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001da4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8ba
    1da8: 91000021     	add	x1, x1, #0x0
		0000000000001da8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8ba
    1dac: 90000002     	adrp	x2, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001dac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2244
    1db0: 91000042     	add	x2, x2, #0x0
		0000000000001db0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2244
    1db4: 94000000     	bl	0x1db4 <charger_policy_get_status+0x9c>
		0000000000001db4:  R_AARCH64_CALL26	_printk
    1db8: 1400000a     	b	0x1de0 <charger_policy_get_status+0xc8>
    1dbc: 2a0003e4     	mov	w4, w0
    1dc0: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001dc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2320
    1dc4: 91000000     	add	x0, x0, #0x0
		0000000000001dc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2320
    1dc8: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001dc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8ba
    1dcc: 91000021     	add	x1, x1, #0x0
		0000000000001dcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8ba
    1dd0: 90000002     	adrp	x2, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001dd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2244
    1dd4: 91000042     	add	x2, x2, #0x0
		0000000000001dd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2244
    1dd8: 528000a3     	mov	w3, #0x5                // =5
    1ddc: 94000000     	bl	0x1ddc <charger_policy_get_status+0xc4>
		0000000000001ddc:  R_AARCH64_CALL26	_printk
    1de0: 2a1f03e0     	mov	w0, wzr
    1de4: 17ffffe4     	b	0x1d74 <charger_policy_get_status+0x5c>
    1de8: 94000000     	bl	0x1de8 <charger_policy_get_status+0xd0>
		0000000000001de8:  R_AARCH64_CALL26	__stack_chk_fail
