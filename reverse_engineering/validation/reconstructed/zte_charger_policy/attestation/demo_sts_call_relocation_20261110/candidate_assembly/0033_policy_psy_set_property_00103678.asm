
/input/fresh_candidate_unpromoted.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001c2c <policy_psy_set_property>:
    1c2c: d503233f     	paciasp
    1c30: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1c34: f9000bf5     	str	x21, [sp, #0x10]
    1c38: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1c3c: 910003fd     	mov	x29, sp
    1c40: aa0203f4     	mov	x20, x2
    1c44: 2a0103f3     	mov	w19, w1
    1c48: 94000000     	bl	0x1c48 <policy_psy_set_property+0x1c>
		0000000000001c48:  R_AARCH64_CALL26	power_supply_get_drvdata
    1c4c: b4000420     	cbz	x0, 0x1cd0 <policy_psy_set_property+0xa4>
    1c50: 7100127f     	cmp	w19, #0x4
    1c54: 540001e1     	b.ne	0x1c90 <policy_psy_set_property+0x64>
    1c58: b9400288     	ldr	w8, [x20]
    1c5c: 2a1f03f3     	mov	w19, wzr
    1c60: b901ec08     	str	w8, [x0, #0x1ec]
    1c64: f9405001     	ldr	x1, [x0, #0xa0]
    1c68: 9102a002     	add	x2, x0, #0xa8
    1c6c: 52800400     	mov	w0, #0x20               // =32
    1c70: 52800323     	mov	w3, #0x19               // =25
    1c74: 94000000     	bl	0x1c74 <policy_psy_set_property+0x48>
		0000000000001c74:  R_AARCH64_CALL26	queue_delayed_work_on
    1c78: 2a1303e0     	mov	w0, w19
    1c7c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1c80: f9400bf5     	ldr	x21, [sp, #0x10]
    1c84: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1c88: d50323bf     	autiasp
    1c8c: d65f03c0     	ret
    1c90: aa0003f5     	mov	x21, x0
    1c94: 71000e7f     	cmp	w19, #0x3
    1c98: 540002a1     	b.ne	0x1cec <policy_psy_set_property+0xc0>
    1c9c: b9400282     	ldr	w2, [x20]
    1ca0: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001ca0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17b8
    1ca4: 91000000     	add	x0, x0, #0x0
		0000000000001ca4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17b8
    1ca8: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001ca8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f6a
    1cac: 91000021     	add	x1, x1, #0x0
		0000000000001cac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f6a
    1cb0: 94000000     	bl	0x1cb0 <policy_psy_set_property+0x84>
		0000000000001cb0:  R_AARCH64_CALL26	_printk
    1cb4: b9400288     	ldr	w8, [x20]
    1cb8: 2a1f03f3     	mov	w19, wzr
    1cbc: aa1503e0     	mov	x0, x21
    1cc0: 7100011f     	cmp	w8, #0x0
    1cc4: 1a9f17e8     	cset	w8, eq
    1cc8: b901eaa8     	str	w8, [x21, #0x1e8]
    1ccc: 17ffffe6     	b	0x1c64 <policy_psy_set_property+0x38>
    1cd0: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001cd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23f6
    1cd4: 91000000     	add	x0, x0, #0x0
		0000000000001cd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23f6
    1cd8: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001cd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f6a
    1cdc: 91000021     	add	x1, x1, #0x0
		0000000000001cdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f6a
    1ce0: 94000000     	bl	0x1ce0 <policy_psy_set_property+0xb4>
		0000000000001ce0:  R_AARCH64_CALL26	_printk
    1ce4: 12800793     	mov	w19, #-0x3d             // =-61
    1ce8: 17ffffe4     	b	0x1c78 <policy_psy_set_property+0x4c>
    1cec: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001cec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ce
    1cf0: 91000000     	add	x0, x0, #0x0
		0000000000001cf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ce
    1cf4: 2a1303e1     	mov	w1, w19
    1cf8: 94000000     	bl	0x1cf8 <policy_psy_set_property+0xcc>
		0000000000001cf8:  R_AARCH64_CALL26	_printk
    1cfc: 128002b3     	mov	w19, #-0x16             // =-22
    1d00: aa1503e0     	mov	x0, x21
    1d04: 17ffffd8     	b	0x1c64 <policy_psy_set_property+0x38>
