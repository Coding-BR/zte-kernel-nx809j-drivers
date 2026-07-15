
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002c48 <policy_psy_set_property>:
    2c48: d503233f     	paciasp
    2c4c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    2c50: f9000bf5     	str	x21, [sp, #0x10]
    2c54: a9024ff4     	stp	x20, x19, [sp, #0x20]
    2c58: 910003fd     	mov	x29, sp
    2c5c: aa0203f4     	mov	x20, x2
    2c60: 2a0103f3     	mov	w19, w1
    2c64: 94000000     	bl	0x2c64 <policy_psy_set_property+0x1c>
		0000000000002c64:  R_AARCH64_CALL26	power_supply_get_drvdata
    2c68: b4000420     	cbz	x0, 0x2cec <policy_psy_set_property+0xa4>
    2c6c: 7100127f     	cmp	w19, #0x4
    2c70: 540001e1     	b.ne	0x2cac <policy_psy_set_property+0x64>
    2c74: b9400288     	ldr	w8, [x20]
    2c78: 2a1f03f3     	mov	w19, wzr
    2c7c: b901ec08     	str	w8, [x0, #0x1ec]
    2c80: f9405001     	ldr	x1, [x0, #0xa0]
    2c84: 9102a002     	add	x2, x0, #0xa8
    2c88: 52800400     	mov	w0, #0x20               // =32
    2c8c: 52800323     	mov	w3, #0x19               // =25
    2c90: 94000000     	bl	0x2c90 <policy_psy_set_property+0x48>
		0000000000002c90:  R_AARCH64_CALL26	queue_delayed_work_on
    2c94: 2a1303e0     	mov	w0, w19
    2c98: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    2c9c: f9400bf5     	ldr	x21, [sp, #0x10]
    2ca0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    2ca4: d50323bf     	autiasp
    2ca8: d65f03c0     	ret
    2cac: aa0003f5     	mov	x21, x0
    2cb0: 71000e7f     	cmp	w19, #0x3
    2cb4: 540002a1     	b.ne	0x2d08 <policy_psy_set_property+0xc0>
    2cb8: b9400282     	ldr	w2, [x20]
    2cbc: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002cbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1369
    2cc0: 91000000     	add	x0, x0, #0x0
		0000000000002cc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1369
    2cc4: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		0000000000002cc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b25
    2cc8: 91000021     	add	x1, x1, #0x0
		0000000000002cc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b25
    2ccc: 94000000     	bl	0x2ccc <policy_psy_set_property+0x84>
		0000000000002ccc:  R_AARCH64_CALL26	_printk
    2cd0: b9400288     	ldr	w8, [x20]
    2cd4: 2a1f03f3     	mov	w19, wzr
    2cd8: aa1503e0     	mov	x0, x21
    2cdc: 7100011f     	cmp	w8, #0x0
    2ce0: 1a9f17e8     	cset	w8, eq
    2ce4: b901eaa8     	str	w8, [x21, #0x1e8]
    2ce8: 17ffffe6     	b	0x2c80 <policy_psy_set_property+0x38>
    2cec: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002cec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f6a
    2cf0: 91000000     	add	x0, x0, #0x0
		0000000000002cf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f6a
    2cf4: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		0000000000002cf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b25
    2cf8: 91000021     	add	x1, x1, #0x0
		0000000000002cf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b25
    2cfc: 94000000     	bl	0x2cfc <policy_psy_set_property+0xb4>
		0000000000002cfc:  R_AARCH64_CALL26	_printk
    2d00: 12800793     	mov	w19, #-0x3d             // =-61
    2d04: 17ffffe4     	b	0x2c94 <policy_psy_set_property+0x4c>
    2d08: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002d08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xef6
    2d0c: 91000000     	add	x0, x0, #0x0
		0000000000002d0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xef6
    2d10: 2a1303e1     	mov	w1, w19
    2d14: 94000000     	bl	0x2d14 <policy_psy_set_property+0xcc>
		0000000000002d14:  R_AARCH64_CALL26	_printk
    2d18: 128002b3     	mov	w19, #-0x16             // =-22
    2d1c: aa1503e0     	mov	x0, x21
    2d20: 17ffffd8     	b	0x2c80 <policy_psy_set_property+0x38>
