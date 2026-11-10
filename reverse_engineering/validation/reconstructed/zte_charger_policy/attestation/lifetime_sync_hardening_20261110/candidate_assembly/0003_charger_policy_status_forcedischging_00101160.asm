
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001180 <charger_policy_status_forcedischging>:
    1180: d503233f     	paciasp
    1184: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1188: f9000bf5     	str	x21, [sp, #0x10]
    118c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1190: 910003fd     	mov	x29, sp
    1194: 2a1f03e1     	mov	w1, wzr
    1198: 2a1f03e2     	mov	w2, wzr
    119c: aa0003f3     	mov	x19, x0
    11a0: 94000000     	bl	0x11a0 <charger_policy_status_forcedischging+0x20>
		00000000000011a0:  R_AARCH64_CALL26	charger_policy_ctrl_charging_enable
    11a4: 37000060     	tbnz	w0, #0x0, 0x11b0 <charger_policy_status_forcedischging+0x30>
    11a8: 9100a260     	add	x0, x19, #0x28
    11ac: 94000000     	bl	0x11ac <charger_policy_status_forcedischging+0x2c>
		00000000000011ac:  R_AARCH64_CALL26	alarm_try_to_cancel
    11b0: aa1303e0     	mov	x0, x19
    11b4: 94000000     	bl	0x11b4 <charger_policy_status_forcedischging+0x34>
		00000000000011b4:  R_AARCH64_CALL26	charger_policy_check_soc_reach_min
    11b8: 370000e0     	tbnz	w0, #0x0, 0x11d4 <charger_policy_status_forcedischging+0x54>
    11bc: 2a1f03e0     	mov	w0, wzr
    11c0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    11c4: f9400bf5     	ldr	x21, [sp, #0x10]
    11c8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    11cc: d50323bf     	autiasp
    11d0: d65f03c0     	ret
    11d4: 52800020     	mov	w0, #0x1                // =1
    11d8: 52800035     	mov	w21, #0x1               // =1
    11dc: 94000000     	bl	0x11dc <charger_policy_status_forcedischging+0x5c>
		00000000000011dc:  R_AARCH64_CALL26	ktime_get_with_offset
    11e0: 94000000     	bl	0x11e0 <charger_policy_status_forcedischging+0x60>
		00000000000011e0:  R_AARCH64_CALL26	ns_to_timespec64
    11e4: b941ee68     	ldr	w8, [x19, #0x1ec]
    11e8: aa0003f4     	mov	x20, x0
    11ec: aa1303e0     	mov	x0, x19
    11f0: 52800021     	mov	w1, #0x1                // =1
    11f4: 52800022     	mov	w2, #0x1                // =1
    11f8: b901ee75     	str	w21, [x19, #0x1ec]
    11fc: b901f268     	str	w8, [x19, #0x1f0]
    1200: 94000000     	bl	0x1200 <charger_policy_status_forcedischging+0x80>
		0000000000001200:  R_AARCH64_CALL26	charger_policy_ctrl_charging_enable
    1204: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001204:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb10
    1208: 91000000     	add	x0, x0, #0x0
		0000000000001208:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb10
    120c: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		000000000000120c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1674
    1210: 91000021     	add	x1, x1, #0x0
		0000000000001210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1674
    1214: aa1403e2     	mov	x2, x20
    1218: f9010674     	str	x20, [x19, #0x208]
    121c: 94000000     	bl	0x121c <charger_policy_status_forcedischging+0x9c>
		000000000000121c:  R_AARCH64_CALL26	_printk
    1220: 17ffffe7     	b	0x11bc <charger_policy_status_forcedischging+0x3c>
