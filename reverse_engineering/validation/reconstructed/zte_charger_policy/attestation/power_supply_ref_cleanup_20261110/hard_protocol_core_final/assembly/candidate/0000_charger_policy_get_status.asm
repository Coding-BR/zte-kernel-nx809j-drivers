
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001d28 <charger_policy_get_status>:
    1d28: d503233f     	paciasp
    1d2c: d100c3ff     	sub	sp, sp, #0x30
    1d30: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1d34: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1d38: 910043fd     	add	x29, sp, #0x10
    1d3c: d5384108     	mrs	x8, SP_EL0
    1d40: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001d40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2244
    1d44: 91000000     	add	x0, x0, #0x0
		0000000000001d44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2244
    1d48: f9438908     	ldr	x8, [x8, #0x710]
    1d4c: f90007e8     	str	x8, [sp, #0x8]
    1d50: f90003ff     	str	xzr, [sp]
    1d54: 94000000     	bl	0x1d54 <charger_policy_get_status+0x2c>
		0000000000001d54:  R_AARCH64_CALL26	power_supply_get_by_name
    1d58: b40002a0     	cbz	x0, 0x1dac <charger_policy_get_status+0x84>
    1d5c: 910003e2     	mov	x2, sp
    1d60: 528000a1     	mov	w1, #0x5                // =5
    1d64: aa0003f3     	mov	x19, x0
    1d68: 94000000     	bl	0x1d68 <charger_policy_get_status+0x40>
		0000000000001d68:  R_AARCH64_CALL26	power_supply_get_property
    1d6c: 37f80300     	tbnz	w0, #0x1f, 0x1dcc <charger_policy_get_status+0xa4>
    1d70: b94003f4     	ldr	w20, [sp]
    1d74: aa1303e0     	mov	x0, x19
    1d78: 94000000     	bl	0x1d78 <charger_policy_get_status+0x50>
		0000000000001d78:  R_AARCH64_CALL26	power_supply_put
    1d7c: 7100029f     	cmp	w20, #0x0
    1d80: 1a9f07e0     	cset	w0, ne
    1d84: d5384108     	mrs	x8, SP_EL0
    1d88: f9438908     	ldr	x8, [x8, #0x710]
    1d8c: f94007e9     	ldr	x9, [sp, #0x8]
    1d90: eb09011f     	cmp	x8, x9
    1d94: 54000381     	b.ne	0x1e04 <charger_policy_get_status+0xdc>
    1d98: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1d9c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1da0: 9100c3ff     	add	sp, sp, #0x30
    1da4: d50323bf     	autiasp
    1da8: d65f03c0     	ret
    1dac: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001dac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aec
    1db0: 91000000     	add	x0, x0, #0x0
		0000000000001db0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aec
    1db4: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001db4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8ba
    1db8: 91000021     	add	x1, x1, #0x0
		0000000000001db8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8ba
    1dbc: 90000002     	adrp	x2, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001dbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2244
    1dc0: 91000042     	add	x2, x2, #0x0
		0000000000001dc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2244
    1dc4: 94000000     	bl	0x1dc4 <charger_policy_get_status+0x9c>
		0000000000001dc4:  R_AARCH64_CALL26	_printk
    1dc8: 1400000d     	b	0x1dfc <charger_policy_get_status+0xd4>
    1dcc: 2a0003f4     	mov	w20, w0
    1dd0: aa1303e0     	mov	x0, x19
    1dd4: 94000000     	bl	0x1dd4 <charger_policy_get_status+0xac>
		0000000000001dd4:  R_AARCH64_CALL26	power_supply_put
    1dd8: 2a1403e4     	mov	w4, w20
    1ddc: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001ddc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2320
    1de0: 91000000     	add	x0, x0, #0x0
		0000000000001de0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2320
    1de4: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001de4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8ba
    1de8: 91000021     	add	x1, x1, #0x0
		0000000000001de8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8ba
    1dec: 90000002     	adrp	x2, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001dec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2244
    1df0: 91000042     	add	x2, x2, #0x0
		0000000000001df0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2244
    1df4: 528000a3     	mov	w3, #0x5                // =5
    1df8: 94000000     	bl	0x1df8 <charger_policy_get_status+0xd0>
		0000000000001df8:  R_AARCH64_CALL26	_printk
    1dfc: 2a1f03e0     	mov	w0, wzr
    1e00: 17ffffe1     	b	0x1d84 <charger_policy_get_status+0x5c>
    1e04: 94000000     	bl	0x1e04 <charger_policy_get_status+0xdc>
		0000000000001e04:  R_AARCH64_CALL26	__stack_chk_fail
