
/input/fresh_candidate_unpromoted.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001190 <charger_policy_status_forcedischging>:
    1190: d503233f     	paciasp
    1194: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1198: f9000bf5     	str	x21, [sp, #0x10]
    119c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    11a0: 910003fd     	mov	x29, sp
    11a4: 2a1f03e1     	mov	w1, wzr
    11a8: 2a1f03e2     	mov	w2, wzr
    11ac: aa0003f3     	mov	x19, x0
    11b0: 94000000     	bl	0x11b0 <charger_policy_status_forcedischging+0x20>
		00000000000011b0:  R_AARCH64_CALL26	charger_policy_ctrl_charging_enable
    11b4: 37000060     	tbnz	w0, #0x0, 0x11c0 <charger_policy_status_forcedischging+0x30>
    11b8: 9100a260     	add	x0, x19, #0x28
    11bc: 94000000     	bl	0x11bc <charger_policy_status_forcedischging+0x2c>
		00000000000011bc:  R_AARCH64_CALL26	alarm_try_to_cancel
    11c0: aa1303e0     	mov	x0, x19
    11c4: 94000000     	bl	0x11c4 <charger_policy_status_forcedischging+0x34>
		00000000000011c4:  R_AARCH64_CALL26	charger_policy_check_soc_reach_min
    11c8: 370000e0     	tbnz	w0, #0x0, 0x11e4 <charger_policy_status_forcedischging+0x54>
    11cc: 2a1f03e0     	mov	w0, wzr
    11d0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    11d4: f9400bf5     	ldr	x21, [sp, #0x10]
    11d8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    11dc: d50323bf     	autiasp
    11e0: d65f03c0     	ret
    11e4: 52800020     	mov	w0, #0x1                // =1
    11e8: 52800035     	mov	w21, #0x1               // =1
    11ec: 94000000     	bl	0x11ec <charger_policy_status_forcedischging+0x5c>
		00000000000011ec:  R_AARCH64_CALL26	ktime_get_with_offset
    11f0: 94000000     	bl	0x11f0 <charger_policy_status_forcedischging+0x60>
		00000000000011f0:  R_AARCH64_CALL26	ns_to_timespec64
    11f4: b941ee68     	ldr	w8, [x19, #0x1ec]
    11f8: aa0003f4     	mov	x20, x0
    11fc: aa1303e0     	mov	x0, x19
    1200: 52800021     	mov	w1, #0x1                // =1
    1204: 52800022     	mov	w2, #0x1                // =1
    1208: b901ee75     	str	w21, [x19, #0x1ec]
    120c: b901f268     	str	w8, [x19, #0x1f0]
    1210: 94000000     	bl	0x1210 <charger_policy_status_forcedischging+0x80>
		0000000000001210:  R_AARCH64_CALL26	charger_policy_ctrl_charging_enable
    1214: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001214:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb10
    1218: 91000000     	add	x0, x0, #0x0
		0000000000001218:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb10
    121c: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		000000000000121c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1674
    1220: 91000021     	add	x1, x1, #0x0
		0000000000001220:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1674
    1224: aa1403e2     	mov	x2, x20
    1228: f9010674     	str	x20, [x19, #0x208]
    122c: 94000000     	bl	0x122c <charger_policy_status_forcedischging+0x9c>
		000000000000122c:  R_AARCH64_CALL26	_printk
    1230: 17ffffe7     	b	0x11cc <charger_policy_status_forcedischging+0x3c>
