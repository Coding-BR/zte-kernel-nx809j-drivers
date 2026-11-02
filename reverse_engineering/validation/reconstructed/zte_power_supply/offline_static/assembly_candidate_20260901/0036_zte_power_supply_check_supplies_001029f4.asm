
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001d58 <zte_power_supply_check_supplies>:
    1d58: d503233f     	paciasp
    1d5c: d10283ff     	sub	sp, sp, #0xa0
    1d60: a9067bfd     	stp	x29, x30, [sp, #0x60]
    1d64: f9003bf7     	str	x23, [sp, #0x70]
    1d68: a90857f6     	stp	x22, x21, [sp, #0x80]
    1d6c: a9094ff4     	stp	x20, x19, [sp, #0x90]
    1d70: 910183fd     	add	x29, sp, #0x60
    1d74: d5384108     	mrs	x8, SP_EL0
    1d78: aa0003f3     	mov	x19, x0
    1d7c: f9438908     	ldr	x8, [x8, #0x710]
    1d80: f81f83a8     	stur	x8, [x29, #-0x8]
    1d84: f9400c08     	ldr	x8, [x0, #0x18]
    1d88: b4000068     	cbz	x8, 0x1d94 <zte_power_supply_check_supplies+0x3c>
    1d8c: f9401268     	ldr	x8, [x19, #0x20]
    1d90: b5000908     	cbnz	x8, 0x1eb0 <zte_power_supply_check_supplies+0x158>
    1d94: f9401668     	ldr	x8, [x19, #0x28]
    1d98: b40008c8     	cbz	x8, 0x1eb0 <zte_power_supply_check_supplies+0x158>
    1d9c: 2a1f03f4     	mov	w20, wzr
    1da0: 90000015     	adrp	x21, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001da0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35e
    1da4: 910002b5     	add	x21, x21, #0x0
		0000000000001da4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35e
    1da8: 90000017     	adrp	x23, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001da8:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_class
    1dac: 90000016     	adrp	x22, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001dac:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x2064
    1db0: 910002d6     	add	x22, x22, #0x0
		0000000000001db0:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x2064
    1db4: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    1db8: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    1dbc: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    1dc0: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    1dc4: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    1dc8: f9401660     	ldr	x0, [x19, #0x28]
    1dcc: 910023e5     	add	x5, sp, #0x8
    1dd0: aa1503e1     	mov	x1, x21
    1dd4: aa1f03e2     	mov	x2, xzr
    1dd8: 2a1f03e3     	mov	w3, wzr
    1ddc: 2a1403e4     	mov	w4, w20
    1de0: 94000000     	bl	0x1de0 <zte_power_supply_check_supplies+0x88>
		0000000000001de0:  R_AARCH64_CALL26	__of_parse_phandle_with_args
    1de4: 35000260     	cbnz	w0, 0x1e30 <zte_power_supply_check_supplies+0xd8>
    1de8: f94007e2     	ldr	x2, [sp, #0x8]
    1dec: b4000222     	cbz	x2, 0x1e30 <zte_power_supply_check_supplies+0xd8>
    1df0: f94002e0     	ldr	x0, [x23]
		0000000000001df0:  R_AARCH64_LDST64_ABS_LO12_NC	zte_power_supply_class
    1df4: aa1f03e1     	mov	x1, xzr
    1df8: aa1603e3     	mov	x3, x22
    1dfc: 11000694     	add	w20, w20, #0x1
    1e00: 94000000     	bl	0x1e00 <zte_power_supply_check_supplies+0xa8>
		0000000000001e00:  R_AARCH64_CALL26	class_for_each_device
    1e04: 7100041f     	cmp	w0, #0x1
    1e08: 54fffe00     	b.eq	0x1dc8 <zte_power_supply_check_supplies+0x70>
    1e0c: 7100001f     	cmp	w0, #0x0
    1e10: 12804088     	mov	w8, #-0x205             // =-517
    1e14: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001e14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d6
    1e18: 91000021     	add	x1, x1, #0x0
		0000000000001e18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d6
    1e1c: 1a800114     	csel	w20, w8, w0, eq
    1e20: 9100e260     	add	x0, x19, #0x38
    1e24: 94000000     	bl	0x1e24 <zte_power_supply_check_supplies+0xcc>
		0000000000001e24:  R_AARCH64_CALL26	_dev_info
    1e28: 2a1403e0     	mov	w0, w20
    1e2c: 14000022     	b	0x1eb4 <zte_power_supply_check_supplies+0x15c>
    1e30: 34000414     	cbz	w20, 0x1eb0 <zte_power_supply_check_supplies+0x158>
    1e34: 9100e260     	add	x0, x19, #0x38
    1e38: 52800101     	mov	w1, #0x8                // =8
    1e3c: 5281b802     	mov	w2, #0xdc0              // =3520
    1e40: 94000000     	bl	0x1e40 <zte_power_supply_check_supplies+0xe8>
		0000000000001e40:  R_AARCH64_CALL26	devm_kmalloc
    1e44: f9000e60     	str	x0, [x19, #0x18]
    1e48: b4000160     	cbz	x0, 0x1e74 <zte_power_supply_check_supplies+0x11c>
    1e4c: 37f804d4     	tbnz	w20, #0x1f, 0x1ee4 <zte_power_supply_check_supplies+0x18c>
    1e50: d37d7e81     	ubfiz	x1, x20, #3, #32
    1e54: 9100e260     	add	x0, x19, #0x38
    1e58: 5281b802     	mov	w2, #0xdc0              // =3520
    1e5c: 94000000     	bl	0x1e5c <zte_power_supply_check_supplies+0x104>
		0000000000001e5c:  R_AARCH64_CALL26	devm_kmalloc
    1e60: f9400e68     	ldr	x8, [x19, #0x18]
    1e64: f9000100     	str	x0, [x8]
    1e68: f9400e68     	ldr	x8, [x19, #0x18]
    1e6c: f9400108     	ldr	x8, [x8]
    1e70: b5000068     	cbnz	x8, 0x1e7c <zte_power_supply_check_supplies+0x124>
    1e74: 12800160     	mov	w0, #-0xc               // =-12
    1e78: 1400000f     	b	0x1eb4 <zte_power_supply_check_supplies+0x15c>
    1e7c: f94002e0     	ldr	x0, [x23]
		0000000000001e7c:  R_AARCH64_LDST64_ABS_LO12_NC	zte_power_supply_class
    1e80: 90000003     	adrp	x3, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001e80:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x207c
    1e84: 91000063     	add	x3, x3, #0x0
		0000000000001e84:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x207c
    1e88: aa1f03e1     	mov	x1, xzr
    1e8c: aa1303e2     	mov	x2, x19
    1e90: 94000000     	bl	0x1e90 <zte_power_supply_check_supplies+0x138>
		0000000000001e90:  R_AARCH64_CALL26	class_for_each_device
    1e94: 2a0003e3     	mov	w3, w0
    1e98: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001e98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ab
    1e9c: 91000021     	add	x1, x1, #0x0
		0000000000001e9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ab
    1ea0: 90000002     	adrp	x2, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001ea0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13d
    1ea4: 91000042     	add	x2, x2, #0x0
		0000000000001ea4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13d
    1ea8: 9100e260     	add	x0, x19, #0x38
    1eac: 94000000     	bl	0x1eac <zte_power_supply_check_supplies+0x154>
		0000000000001eac:  R_AARCH64_CALL26	_dev_info
    1eb0: 2a1f03e0     	mov	w0, wzr
    1eb4: d5384108     	mrs	x8, SP_EL0
    1eb8: f9438908     	ldr	x8, [x8, #0x710]
    1ebc: f85f83a9     	ldur	x9, [x29, #-0x8]
    1ec0: eb09011f     	cmp	x8, x9
    1ec4: 54000161     	b.ne	0x1ef0 <zte_power_supply_check_supplies+0x198>
    1ec8: a9494ff4     	ldp	x20, x19, [sp, #0x90]
    1ecc: f9403bf7     	ldr	x23, [sp, #0x70]
    1ed0: a94857f6     	ldp	x22, x21, [sp, #0x80]
    1ed4: a9467bfd     	ldp	x29, x30, [sp, #0x60]
    1ed8: 910283ff     	add	sp, sp, #0xa0
    1edc: d50323bf     	autiasp
    1ee0: d65f03c0     	ret
    1ee4: aa0003e8     	mov	x8, x0
    1ee8: aa1f03e0     	mov	x0, xzr
    1eec: 17ffffde     	b	0x1e64 <zte_power_supply_check_supplies+0x10c>
    1ef0: 94000000     	bl	0x1ef0 <zte_power_supply_check_supplies+0x198>
		0000000000001ef0:  R_AARCH64_CALL26	__stack_chk_fail
