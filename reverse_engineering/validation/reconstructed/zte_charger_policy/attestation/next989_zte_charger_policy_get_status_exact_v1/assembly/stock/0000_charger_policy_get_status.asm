
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000010d4 <charger_policy_get_status>:
    10d4: d503233f     	paciasp
    10d8: d100c3ff     	sub	sp, sp, #0x30
    10dc: a9017bfd     	stp	x29, x30, [sp, #0x10]
    10e0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    10e4: 910043fd     	add	x29, sp, #0x10
    10e8: d5384108     	mrs	x8, SP_EL0
    10ec: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		00000000000010ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d1f
    10f0: 91000000     	add	x0, x0, #0x0
		00000000000010f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d1f
    10f4: f9438908     	ldr	x8, [x8, #0x710]
    10f8: f90007e8     	str	x8, [sp, #0x8]
    10fc: f90003ff     	str	xzr, [sp]
    1100: 94000000     	bl	0x1100 <charger_policy_get_status+0x2c>
		0000000000001100:  R_AARCH64_CALL26	power_supply_get_by_name
    1104: b40002a0     	cbz	x0, 0x1158 <charger_policy_get_status+0x84>
    1108: 910003e2     	mov	x2, sp
    110c: 528000a1     	mov	w1, #0x5                // =5
    1110: aa0003f3     	mov	x19, x0
    1114: 94000000     	bl	0x1114 <charger_policy_get_status+0x40>
		0000000000001114:  R_AARCH64_CALL26	power_supply_get_property
    1118: 37f80300     	tbnz	w0, #0x1f, 0x1178 <charger_policy_get_status+0xa4>
    111c: b94003f4     	ldr	w20, [sp]
    1120: aa1303e0     	mov	x0, x19
    1124: 94000000     	bl	0x1124 <charger_policy_get_status+0x50>
		0000000000001124:  R_AARCH64_CALL26	power_supply_put
    1128: 7100029f     	cmp	w20, #0x0
    112c: 1a9f07e0     	cset	w0, ne
    1130: d5384108     	mrs	x8, SP_EL0
    1134: f9438908     	ldr	x8, [x8, #0x710]
    1138: f94007e9     	ldr	x9, [sp, #0x8]
    113c: eb09011f     	cmp	x8, x9
    1140: 54000321     	b.ne	0x11a4 <charger_policy_get_status+0xd0>
    1144: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1148: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    114c: 9100c3ff     	add	sp, sp, #0x30
    1150: d50323bf     	autiasp
    1154: d65f03c0     	ret
    1158: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001158:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x152b
    115c: 91000000     	add	x0, x0, #0x0
		000000000000115c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x152b
    1160: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001160:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6cc
    1164: 91000021     	add	x1, x1, #0x0
		0000000000001164:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6cc
    1168: 90000002     	adrp	x2, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001168:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d1f
    116c: 91000042     	add	x2, x2, #0x0
		000000000000116c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d1f
    1170: 94000000     	bl	0x1170 <charger_policy_get_status+0x9c>
		0000000000001170:  R_AARCH64_CALL26	_printk
    1174: 1400000a     	b	0x119c <charger_policy_get_status+0xc8>
    1178: 2a0003e4     	mov	w4, w0
    117c: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		000000000000117c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ed1
    1180: 91000000     	add	x0, x0, #0x0
		0000000000001180:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ed1
    1184: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001184:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6cc
    1188: 91000021     	add	x1, x1, #0x0
		0000000000001188:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6cc
    118c: 90000002     	adrp	x2, 0x1000 <charger_policy_enable_status_set+0x60>
		000000000000118c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d1f
    1190: 91000042     	add	x2, x2, #0x0
		0000000000001190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d1f
    1194: 528000a3     	mov	w3, #0x5                // =5
    1198: 94000000     	bl	0x1198 <charger_policy_get_status+0xc4>
		0000000000001198:  R_AARCH64_CALL26	_printk
    119c: 2a1f03e0     	mov	w0, wzr
    11a0: 17ffffe4     	b	0x1130 <charger_policy_get_status+0x5c>
    11a4: 94000000     	bl	0x11a4 <charger_policy_get_status+0xd0>
		00000000000011a4:  R_AARCH64_CALL26	__stack_chk_fail
