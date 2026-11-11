
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d28 <charger_policy_status_ide>:
     d28: d503233f     	paciasp
     d2c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     d30: a90157f6     	stp	x22, x21, [sp, #0x10]
     d34: a9024ff4     	stp	x20, x19, [sp, #0x20]
     d38: 910003fd     	mov	x29, sp
     d3c: 39487408     	ldrb	w8, [x0, #0x21d]
     d40: aa0003f3     	mov	x19, x0
     d44: 7100051f     	cmp	w8, #0x1
     d48: 540002e0     	b.eq	0xda4 <charger_policy_status_ide+0x7c>
     d4c: 52800020     	mov	w0, #0x1                // =1
     d50: 52800036     	mov	w22, #0x1               // =1
     d54: 94000000     	bl	0xd54 <charger_policy_status_ide+0x2c>
		0000000000000d54:  R_AARCH64_CALL26	ktime_get_with_offset
     d58: 94000000     	bl	0xd58 <charger_policy_status_ide+0x30>
		0000000000000d58:  R_AARCH64_CALL26	ns_to_timespec64
     d5c: 39486668     	ldrb	w8, [x19, #0x219]
     d60: 7100051f     	cmp	w8, #0x1
     d64: 54000300     	b.eq	0xdc4 <charger_policy_status_ide+0x9c>
     d68: f9410663     	ldr	x3, [x19, #0x208]
     d6c: b4000563     	cbz	x3, 0xe18 <charger_policy_status_ide+0xf0>
     d70: 39487668     	ldrb	w8, [x19, #0x21d]
     d74: 7100051f     	cmp	w8, #0x1
     d78: 54000680     	b.eq	0xe48 <charger_policy_status_ide+0x120>
     d7c: b941f668     	ldr	w8, [x19, #0x1f4]
     d80: cb030009     	sub	x9, x0, x3
     d84: eb08013f     	cmp	x9, x8
     d88: 540007aa     	b.ge	0xe7c <charger_policy_status_ide+0x154>
     d8c: 2a1f03e0     	mov	w0, wzr
     d90: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     d94: a94157f6     	ldp	x22, x21, [sp, #0x10]
     d98: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     d9c: d50323bf     	autiasp
     da0: d65f03c0     	ret
     da4: 39486662     	ldrb	w2, [x19, #0x219]
     da8: 39486a63     	ldrb	w3, [x19, #0x21a]
     dac: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000dac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23a4
     db0: 91000000     	add	x0, x0, #0x0
		0000000000000db0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23a4
     db4: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000db4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26b6
     db8: 91000021     	add	x1, x1, #0x0
		0000000000000db8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26b6
     dbc: 94000000     	bl	0xdbc <charger_policy_status_ide+0x94>
		0000000000000dbc:  R_AARCH64_CALL26	_printk
     dc0: 17ffffe3     	b	0xd4c <charger_policy_status_ide+0x24>
     dc4: 90000008     	adrp	x8, 0x0 <charger_policy_get_prop_by_name>
		0000000000000dc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19a4
     dc8: 91000108     	add	x8, x8, #0x0
		0000000000000dc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19a4
     dcc: 90000014     	adrp	x20, 0x0 <charger_policy_get_prop_by_name>
		0000000000000dcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26b6
     dd0: 91000294     	add	x20, x20, #0x0
		0000000000000dd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26b6
     dd4: aa0003f5     	mov	x21, x0
     dd8: aa0803e0     	mov	x0, x8
     ddc: aa1403e1     	mov	x1, x20
     de0: 94000000     	bl	0xde0 <charger_policy_status_ide+0xb8>
		0000000000000de0:  R_AARCH64_CALL26	_printk
     de4: aa1303e0     	mov	x0, x19
     de8: 52800021     	mov	w1, #0x1                // =1
     dec: 94000000     	bl	0xdec <charger_policy_status_ide+0xc4>
		0000000000000dec:  R_AARCH64_CALL26	charger_policy_disable_cas
     df0: b941ee68     	ldr	w8, [x19, #0x1ec]
     df4: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000df4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1376
     df8: 91000000     	add	x0, x0, #0x0
		0000000000000df8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1376
     dfc: aa1403e1     	mov	x1, x20
     e00: aa1503e2     	mov	x2, x21
     e04: b901ee76     	str	w22, [x19, #0x1ec]
     e08: b901f268     	str	w8, [x19, #0x1f0]
     e0c: f9010675     	str	x21, [x19, #0x208]
     e10: 94000000     	bl	0xe10 <charger_policy_status_ide+0xe8>
		0000000000000e10:  R_AARCH64_CALL26	_printk
     e14: 17ffffde     	b	0xd8c <charger_policy_status_ide+0x64>
     e18: 90000008     	adrp	x8, 0x0 <charger_policy_get_prop_by_name>
		0000000000000e18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x84a
     e1c: 91000108     	add	x8, x8, #0x0
		0000000000000e1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x84a
     e20: aa0003f4     	mov	x20, x0
     e24: f9010660     	str	x0, [x19, #0x208]
     e28: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000e28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26b6
     e2c: 91000021     	add	x1, x1, #0x0
		0000000000000e2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26b6
     e30: aa0803e0     	mov	x0, x8
     e34: aa1403e2     	mov	x2, x20
     e38: 94000000     	bl	0xe38 <charger_policy_status_ide+0x110>
		0000000000000e38:  R_AARCH64_CALL26	_printk
     e3c: f9410663     	ldr	x3, [x19, #0x208]
     e40: aa1403e0     	mov	x0, x20
     e44: 17ffffcb     	b	0xd70 <charger_policy_status_ide+0x48>
     e48: b941f665     	ldr	w5, [x19, #0x1f4]
     e4c: 90000008     	adrp	x8, 0x0 <charger_policy_get_prop_by_name>
		0000000000000e4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x162a
     e50: 91000108     	add	x8, x8, #0x0
		0000000000000e50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x162a
     e54: aa0003f4     	mov	x20, x0
     e58: cb030004     	sub	x4, x0, x3
     e5c: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000e5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26b6
     e60: 91000021     	add	x1, x1, #0x0
		0000000000000e60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26b6
     e64: aa0803e0     	mov	x0, x8
     e68: aa1403e2     	mov	x2, x20
     e6c: 94000000     	bl	0xe6c <charger_policy_status_ide+0x144>
		0000000000000e6c:  R_AARCH64_CALL26	_printk
     e70: f9410663     	ldr	x3, [x19, #0x208]
     e74: aa1403e0     	mov	x0, x20
     e78: 17ffffc1     	b	0xd7c <charger_policy_status_ide+0x54>
     e7c: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000e7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe34
     e80: 91000000     	add	x0, x0, #0x0
		0000000000000e80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe34
     e84: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000e84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26b6
     e88: 91000021     	add	x1, x1, #0x0
		0000000000000e88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26b6
     e8c: 94000000     	bl	0xe8c <charger_policy_status_ide+0x164>
		0000000000000e8c:  R_AARCH64_CALL26	_printk
     e90: aa1303e0     	mov	x0, x19
     e94: 52800021     	mov	w1, #0x1                // =1
     e98: 52800034     	mov	w20, #0x1               // =1
     e9c: 94000000     	bl	0xe9c <charger_policy_status_ide+0x174>
		0000000000000e9c:  R_AARCH64_CALL26	charger_policy_disable_cas
     ea0: b941ee68     	ldr	w8, [x19, #0x1ec]
     ea4: 39086e74     	strb	w20, [x19, #0x21b]
     ea8: b901ee74     	str	w20, [x19, #0x1ec]
     eac: b901f268     	str	w8, [x19, #0x1f0]
     eb0: 17ffffb7     	b	0xd8c <charger_policy_status_ide+0x64>
