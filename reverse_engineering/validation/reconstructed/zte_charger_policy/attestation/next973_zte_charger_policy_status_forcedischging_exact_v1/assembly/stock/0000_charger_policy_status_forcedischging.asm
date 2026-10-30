
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000730 <charger_policy_status_forcedischging>:
     730: d503233f     	paciasp
     734: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     738: f9000bf5     	str	x21, [sp, #0x10]
     73c: a9024ff4     	stp	x20, x19, [sp, #0x20]
     740: 910003fd     	mov	x29, sp
     744: 2a1f03e1     	mov	w1, wzr
     748: 2a1f03e2     	mov	w2, wzr
     74c: aa0003f3     	mov	x19, x0
     750: 94000322     	bl	0x13d8 <charger_policy_ctrl_charging_enable>
     754: 37000060     	tbnz	w0, #0x0, 0x760 <charger_policy_status_forcedischging+0x30>
     758: 9100a260     	add	x0, x19, #0x28
     75c: 94000000     	bl	0x75c <charger_policy_status_forcedischging+0x2c>
		000000000000075c:  R_AARCH64_CALL26	alarm_try_to_cancel
     760: aa1303e0     	mov	x0, x19
     764: 94000424     	bl	0x17f4 <charger_policy_check_soc_reach_min>
     768: 370000e0     	tbnz	w0, #0x0, 0x784 <charger_policy_status_forcedischging+0x54>
     76c: 2a1f03e0     	mov	w0, wzr
     770: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     774: f9400bf5     	ldr	x21, [sp, #0x10]
     778: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     77c: d50323bf     	autiasp
     780: d65f03c0     	ret
     784: 52800020     	mov	w0, #0x1                // =1
     788: 52800035     	mov	w21, #0x1               // =1
     78c: 94000000     	bl	0x78c <charger_policy_status_forcedischging+0x5c>
		000000000000078c:  R_AARCH64_CALL26	ktime_get_with_offset
     790: 94000000     	bl	0x790 <charger_policy_status_forcedischging+0x60>
		0000000000000790:  R_AARCH64_CALL26	ns_to_timespec64
     794: b941ee68     	ldr	w8, [x19, #0x1ec]
     798: aa0003f4     	mov	x20, x0
     79c: aa1303e0     	mov	x0, x19
     7a0: 52800021     	mov	w1, #0x1                // =1
     7a4: 52800022     	mov	w2, #0x1                // =1
     7a8: b901ee75     	str	w21, [x19, #0x1ec]
     7ac: b901f268     	str	w8, [x19, #0x1f0]
     7b0: 9400030a     	bl	0x13d8 <charger_policy_ctrl_charging_enable>
     7b4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x988
     7b8: 91000000     	add	x0, x0, #0x0
		00000000000007b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x988
     7bc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x127b
     7c0: 91000021     	add	x1, x1, #0x0
		00000000000007c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x127b
     7c4: aa1403e2     	mov	x2, x20
     7c8: f9010674     	str	x20, [x19, #0x208]
     7cc: 94000000     	bl	0x7cc <charger_policy_status_forcedischging+0x9c>
		00000000000007cc:  R_AARCH64_CALL26	_printk
     7d0: 17ffffe7     	b	0x76c <charger_policy_status_forcedischging+0x3c>
