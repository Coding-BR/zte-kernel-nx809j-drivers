
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000102c <charger_policy_get_status>:
    102c: d503233f     	paciasp
    1030: d100c3ff     	sub	sp, sp, #0x30
    1034: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1038: a9024ff4     	stp	x20, x19, [sp, #0x20]
    103c: 910043fd     	add	x29, sp, #0x10
    1040: d5384108     	mrs	x8, SP_EL0
    1044: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_get+0x58>
		0000000000001044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e8f
    1048: 91000000     	add	x0, x0, #0x0
		0000000000001048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e8f
    104c: f9438908     	ldr	x8, [x8, #0x710]
    1050: f90007e8     	str	x8, [sp, #0x8]
    1054: f90003ff     	str	xzr, [sp]
    1058: 94000000     	bl	0x1058 <charger_policy_get_status+0x2c>
		0000000000001058:  R_AARCH64_CALL26	power_supply_get_by_name
    105c: b40002a0     	cbz	x0, 0x10b0 <charger_policy_get_status+0x84>
    1060: 910003e2     	mov	x2, sp
    1064: 528000a1     	mov	w1, #0x5                // =5
    1068: aa0003f3     	mov	x19, x0
    106c: 94000000     	bl	0x106c <charger_policy_get_status+0x40>
		000000000000106c:  R_AARCH64_CALL26	power_supply_get_property
    1070: 37f80300     	tbnz	w0, #0x1f, 0x10d0 <charger_policy_get_status+0xa4>
    1074: b94003f4     	ldr	w20, [sp]
    1078: aa1303e0     	mov	x0, x19
    107c: 94000000     	bl	0x107c <charger_policy_get_status+0x50>
		000000000000107c:  R_AARCH64_CALL26	power_supply_put
    1080: 7100029f     	cmp	w20, #0x0
    1084: 1a9f07e0     	cset	w0, ne
    1088: d5384108     	mrs	x8, SP_EL0
    108c: f9438908     	ldr	x8, [x8, #0x710]
    1090: f94007e9     	ldr	x9, [sp, #0x8]
    1094: eb09011f     	cmp	x8, x9
    1098: 54000321     	b.ne	0x10fc <charger_policy_get_status+0xd0>
    109c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    10a0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    10a4: 9100c3ff     	add	sp, sp, #0x30
    10a8: d50323bf     	autiasp
    10ac: d65f03c0     	ret
    10b0: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_get+0x58>
		00000000000010b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1950
    10b4: 91000000     	add	x0, x0, #0x0
		00000000000010b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1950
    10b8: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_get+0x58>
		00000000000010b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85d
    10bc: 91000021     	add	x1, x1, #0x0
		00000000000010bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85d
    10c0: 90000002     	adrp	x2, 0x1000 <charger_policy_enable_status_get+0x58>
		00000000000010c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e8f
    10c4: 91000042     	add	x2, x2, #0x0
		00000000000010c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e8f
    10c8: 94000000     	bl	0x10c8 <charger_policy_get_status+0x9c>
		00000000000010c8:  R_AARCH64_CALL26	_printk
    10cc: 1400000a     	b	0x10f4 <charger_policy_get_status+0xc8>
    10d0: 2a0003e4     	mov	w4, w0
    10d4: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_get+0x58>
		00000000000010d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2011
    10d8: 91000000     	add	x0, x0, #0x0
		00000000000010d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2011
    10dc: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_get+0x58>
		00000000000010dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85d
    10e0: 91000021     	add	x1, x1, #0x0
		00000000000010e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85d
    10e4: 90000002     	adrp	x2, 0x1000 <charger_policy_enable_status_get+0x58>
		00000000000010e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e8f
    10e8: 91000042     	add	x2, x2, #0x0
		00000000000010e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e8f
    10ec: 528000a3     	mov	w3, #0x5                // =5
    10f0: 94000000     	bl	0x10f0 <charger_policy_get_status+0xc4>
		00000000000010f0:  R_AARCH64_CALL26	_printk
    10f4: 2a1f03e0     	mov	w0, wzr
    10f8: 17ffffe4     	b	0x1088 <charger_policy_get_status+0x5c>
    10fc: 94000000     	bl	0x10fc <charger_policy_get_status+0xd0>
		00000000000010fc:  R_AARCH64_CALL26	__stack_chk_fail
