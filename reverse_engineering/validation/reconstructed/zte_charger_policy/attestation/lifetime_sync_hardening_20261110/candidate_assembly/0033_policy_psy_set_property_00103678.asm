
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001c1c <policy_psy_set_property>:
    1c1c: d503233f     	paciasp
    1c20: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1c24: f9000bf5     	str	x21, [sp, #0x10]
    1c28: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1c2c: 910003fd     	mov	x29, sp
    1c30: aa0203f4     	mov	x20, x2
    1c34: 2a0103f3     	mov	w19, w1
    1c38: 94000000     	bl	0x1c38 <policy_psy_set_property+0x1c>
		0000000000001c38:  R_AARCH64_CALL26	power_supply_get_drvdata
    1c3c: b4000420     	cbz	x0, 0x1cc0 <policy_psy_set_property+0xa4>
    1c40: 7100127f     	cmp	w19, #0x4
    1c44: 540001e1     	b.ne	0x1c80 <policy_psy_set_property+0x64>
    1c48: b9400288     	ldr	w8, [x20]
    1c4c: 2a1f03f3     	mov	w19, wzr
    1c50: b901ec08     	str	w8, [x0, #0x1ec]
    1c54: f9405001     	ldr	x1, [x0, #0xa0]
    1c58: 9102a002     	add	x2, x0, #0xa8
    1c5c: 52800400     	mov	w0, #0x20               // =32
    1c60: 52800323     	mov	w3, #0x19               // =25
    1c64: 94000000     	bl	0x1c64 <policy_psy_set_property+0x48>
		0000000000001c64:  R_AARCH64_CALL26	queue_delayed_work_on
    1c68: 2a1303e0     	mov	w0, w19
    1c6c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1c70: f9400bf5     	ldr	x21, [sp, #0x10]
    1c74: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1c78: d50323bf     	autiasp
    1c7c: d65f03c0     	ret
    1c80: aa0003f5     	mov	x21, x0
    1c84: 71000e7f     	cmp	w19, #0x3
    1c88: 540002a1     	b.ne	0x1cdc <policy_psy_set_property+0xc0>
    1c8c: b9400282     	ldr	w2, [x20]
    1c90: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001c90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17b8
    1c94: 91000000     	add	x0, x0, #0x0
		0000000000001c94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17b8
    1c98: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001c98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f6a
    1c9c: 91000021     	add	x1, x1, #0x0
		0000000000001c9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f6a
    1ca0: 94000000     	bl	0x1ca0 <policy_psy_set_property+0x84>
		0000000000001ca0:  R_AARCH64_CALL26	_printk
    1ca4: b9400288     	ldr	w8, [x20]
    1ca8: 2a1f03f3     	mov	w19, wzr
    1cac: aa1503e0     	mov	x0, x21
    1cb0: 7100011f     	cmp	w8, #0x0
    1cb4: 1a9f17e8     	cset	w8, eq
    1cb8: b901eaa8     	str	w8, [x21, #0x1e8]
    1cbc: 17ffffe6     	b	0x1c54 <policy_psy_set_property+0x38>
    1cc0: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001cc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23f6
    1cc4: 91000000     	add	x0, x0, #0x0
		0000000000001cc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23f6
    1cc8: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001cc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f6a
    1ccc: 91000021     	add	x1, x1, #0x0
		0000000000001ccc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f6a
    1cd0: 94000000     	bl	0x1cd0 <policy_psy_set_property+0xb4>
		0000000000001cd0:  R_AARCH64_CALL26	_printk
    1cd4: 12800793     	mov	w19, #-0x3d             // =-61
    1cd8: 17ffffe4     	b	0x1c68 <policy_psy_set_property+0x4c>
    1cdc: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001cdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ce
    1ce0: 91000000     	add	x0, x0, #0x0
		0000000000001ce0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ce
    1ce4: 2a1303e1     	mov	w1, w19
    1ce8: 94000000     	bl	0x1ce8 <policy_psy_set_property+0xcc>
		0000000000001ce8:  R_AARCH64_CALL26	_printk
    1cec: 128002b3     	mov	w19, #-0x16             // =-22
    1cf0: aa1503e0     	mov	x0, x21
    1cf4: 17ffffd8     	b	0x1c54 <policy_psy_set_property+0x38>
