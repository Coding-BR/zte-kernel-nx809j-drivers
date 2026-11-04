
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d18 <charger_policy_status_ide>:
     d18: d503233f     	paciasp
     d1c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     d20: a90157f6     	stp	x22, x21, [sp, #0x10]
     d24: a9024ff4     	stp	x20, x19, [sp, #0x20]
     d28: 910003fd     	mov	x29, sp
     d2c: 39487408     	ldrb	w8, [x0, #0x21d]
     d30: aa0003f3     	mov	x19, x0
     d34: 7100051f     	cmp	w8, #0x1
     d38: 540002e0     	b.eq	0xd94 <charger_policy_status_ide+0x7c>
     d3c: 52800020     	mov	w0, #0x1                // =1
     d40: 52800036     	mov	w22, #0x1               // =1
     d44: 94000000     	bl	0xd44 <charger_policy_status_ide+0x2c>
		0000000000000d44:  R_AARCH64_CALL26	ktime_get_with_offset
     d48: 94000000     	bl	0xd48 <charger_policy_status_ide+0x30>
		0000000000000d48:  R_AARCH64_CALL26	ns_to_timespec64
     d4c: 39486668     	ldrb	w8, [x19, #0x219]
     d50: 7100051f     	cmp	w8, #0x1
     d54: 54000300     	b.eq	0xdb4 <charger_policy_status_ide+0x9c>
     d58: f9410663     	ldr	x3, [x19, #0x208]
     d5c: b4000563     	cbz	x3, 0xe08 <charger_policy_status_ide+0xf0>
     d60: 39487668     	ldrb	w8, [x19, #0x21d]
     d64: 7100051f     	cmp	w8, #0x1
     d68: 54000680     	b.eq	0xe38 <charger_policy_status_ide+0x120>
     d6c: b941f668     	ldr	w8, [x19, #0x1f4]
     d70: cb030009     	sub	x9, x0, x3
     d74: eb08013f     	cmp	x9, x8
     d78: 540007aa     	b.ge	0xe6c <charger_policy_status_ide+0x154>
     d7c: 2a1f03e0     	mov	w0, wzr
     d80: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     d84: a94157f6     	ldp	x22, x21, [sp, #0x10]
     d88: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     d8c: d50323bf     	autiasp
     d90: d65f03c0     	ret
     d94: 39486662     	ldrb	w2, [x19, #0x219]
     d98: 39486a63     	ldrb	w3, [x19, #0x21a]
     d9c: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000d9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23a4
     da0: 91000000     	add	x0, x0, #0x0
		0000000000000da0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23a4
     da4: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000da4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26b6
     da8: 91000021     	add	x1, x1, #0x0
		0000000000000da8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26b6
     dac: 94000000     	bl	0xdac <charger_policy_status_ide+0x94>
		0000000000000dac:  R_AARCH64_CALL26	_printk
     db0: 17ffffe3     	b	0xd3c <charger_policy_status_ide+0x24>
     db4: 90000008     	adrp	x8, 0x0 <charger_policy_get_prop_by_name>
		0000000000000db4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19a4
     db8: 91000108     	add	x8, x8, #0x0
		0000000000000db8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19a4
     dbc: 90000014     	adrp	x20, 0x0 <charger_policy_get_prop_by_name>
		0000000000000dbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26b6
     dc0: 91000294     	add	x20, x20, #0x0
		0000000000000dc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26b6
     dc4: aa0003f5     	mov	x21, x0
     dc8: aa0803e0     	mov	x0, x8
     dcc: aa1403e1     	mov	x1, x20
     dd0: 94000000     	bl	0xdd0 <charger_policy_status_ide+0xb8>
		0000000000000dd0:  R_AARCH64_CALL26	_printk
     dd4: aa1303e0     	mov	x0, x19
     dd8: 52800021     	mov	w1, #0x1                // =1
     ddc: 94000000     	bl	0xddc <charger_policy_status_ide+0xc4>
		0000000000000ddc:  R_AARCH64_CALL26	charger_policy_disable_cas
     de0: b941ee68     	ldr	w8, [x19, #0x1ec]
     de4: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000de4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1376
     de8: 91000000     	add	x0, x0, #0x0
		0000000000000de8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1376
     dec: aa1403e1     	mov	x1, x20
     df0: aa1503e2     	mov	x2, x21
     df4: b901ee76     	str	w22, [x19, #0x1ec]
     df8: b901f268     	str	w8, [x19, #0x1f0]
     dfc: f9010675     	str	x21, [x19, #0x208]
     e00: 94000000     	bl	0xe00 <charger_policy_status_ide+0xe8>
		0000000000000e00:  R_AARCH64_CALL26	_printk
     e04: 17ffffde     	b	0xd7c <charger_policy_status_ide+0x64>
     e08: 90000008     	adrp	x8, 0x0 <charger_policy_get_prop_by_name>
		0000000000000e08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x84a
     e0c: 91000108     	add	x8, x8, #0x0
		0000000000000e0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x84a
     e10: aa0003f4     	mov	x20, x0
     e14: f9010660     	str	x0, [x19, #0x208]
     e18: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000e18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26b6
     e1c: 91000021     	add	x1, x1, #0x0
		0000000000000e1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26b6
     e20: aa0803e0     	mov	x0, x8
     e24: aa1403e2     	mov	x2, x20
     e28: 94000000     	bl	0xe28 <charger_policy_status_ide+0x110>
		0000000000000e28:  R_AARCH64_CALL26	_printk
     e2c: f9410663     	ldr	x3, [x19, #0x208]
     e30: aa1403e0     	mov	x0, x20
     e34: 17ffffcb     	b	0xd60 <charger_policy_status_ide+0x48>
     e38: b941f665     	ldr	w5, [x19, #0x1f4]
     e3c: 90000008     	adrp	x8, 0x0 <charger_policy_get_prop_by_name>
		0000000000000e3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x162a
     e40: 91000108     	add	x8, x8, #0x0
		0000000000000e40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x162a
     e44: aa0003f4     	mov	x20, x0
     e48: cb030004     	sub	x4, x0, x3
     e4c: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000e4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26b6
     e50: 91000021     	add	x1, x1, #0x0
		0000000000000e50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26b6
     e54: aa0803e0     	mov	x0, x8
     e58: aa1403e2     	mov	x2, x20
     e5c: 94000000     	bl	0xe5c <charger_policy_status_ide+0x144>
		0000000000000e5c:  R_AARCH64_CALL26	_printk
     e60: f9410663     	ldr	x3, [x19, #0x208]
     e64: aa1403e0     	mov	x0, x20
     e68: 17ffffc1     	b	0xd6c <charger_policy_status_ide+0x54>
     e6c: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000e6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe34
     e70: 91000000     	add	x0, x0, #0x0
		0000000000000e70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe34
     e74: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000e74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26b6
     e78: 91000021     	add	x1, x1, #0x0
		0000000000000e78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26b6
     e7c: 94000000     	bl	0xe7c <charger_policy_status_ide+0x164>
		0000000000000e7c:  R_AARCH64_CALL26	_printk
     e80: aa1303e0     	mov	x0, x19
     e84: 52800021     	mov	w1, #0x1                // =1
     e88: 52800034     	mov	w20, #0x1               // =1
     e8c: 94000000     	bl	0xe8c <charger_policy_status_ide+0x174>
		0000000000000e8c:  R_AARCH64_CALL26	charger_policy_disable_cas
     e90: b941ee68     	ldr	w8, [x19, #0x1ec]
     e94: 39086e74     	strb	w20, [x19, #0x21b]
     e98: b901ee74     	str	w20, [x19, #0x1ec]
     e9c: b901f268     	str	w8, [x19, #0x1f0]
     ea0: 17ffffb7     	b	0xd7c <charger_policy_status_ide+0x64>
