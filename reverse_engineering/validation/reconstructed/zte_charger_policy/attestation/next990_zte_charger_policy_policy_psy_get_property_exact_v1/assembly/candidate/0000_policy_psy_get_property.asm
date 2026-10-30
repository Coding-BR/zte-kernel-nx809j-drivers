
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001e6c <policy_psy_get_property>:
    1e6c: d503233f     	paciasp
    1e70: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1e74: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1e78: 910003fd     	mov	x29, sp
    1e7c: aa0203f3     	mov	x19, x2
    1e80: 2a0103f4     	mov	w20, w1
    1e84: 94000000     	bl	0x1e84 <policy_psy_get_property+0x18>
		0000000000001e84:  R_AARCH64_CALL26	power_supply_get_drvdata
    1e88: b4000400     	cbz	x0, 0x1f08 <policy_psy_get_property+0x9c>
    1e8c: 7100129f     	cmp	w20, #0x4
    1e90: 54000260     	b.eq	0x1edc <policy_psy_get_property+0x70>
    1e94: 7100169f     	cmp	w20, #0x5
    1e98: 54000461     	b.ne	0x1f24 <policy_psy_get_property+0xb8>
    1e9c: 39486408     	ldrb	w8, [x0, #0x219]
    1ea0: 7100051f     	cmp	w8, #0x1
    1ea4: 540000c1     	b.ne	0x1ebc <policy_psy_get_property+0x50>
    1ea8: aa0003f4     	mov	x20, x0
    1eac: 97ffff3c     	bl	0x1b9c <charger_policy_cap_min_get+0xc>
		0000000000001eac:  R_AARCH64_CALL26	charger_policy_check_usb_present
    1eb0: 2a0003e8     	mov	w8, w0
    1eb4: aa1403e0     	mov	x0, x20
    1eb8: 370000e8     	tbnz	w8, #0x0, 0x1ed4 <policy_psy_get_property+0x68>
    1ebc: 39486808     	ldrb	w8, [x0, #0x21a]
    1ec0: 7100051f     	cmp	w8, #0x1
    1ec4: 54000141     	b.ne	0x1eec <policy_psy_get_property+0x80>
    1ec8: 39486c08     	ldrb	w8, [x0, #0x21b]
    1ecc: 7100051f     	cmp	w8, #0x1
    1ed0: 540000e1     	b.ne	0x1eec <policy_psy_get_property+0x80>
    1ed4: 52800029     	mov	w9, #0x1                // =1
    1ed8: 14000002     	b	0x1ee0 <policy_psy_get_property+0x74>
    1edc: b941ec09     	ldr	w9, [x0, #0x1ec]
    1ee0: 2a1f03e8     	mov	w8, wzr
    1ee4: b9000269     	str	w9, [x19]
    1ee8: 14000003     	b	0x1ef4 <policy_psy_get_property+0x88>
    1eec: 2a1f03e8     	mov	w8, wzr
    1ef0: b900027f     	str	wzr, [x19]
    1ef4: 2a0803e0     	mov	w0, w8
    1ef8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1efc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1f00: d50323bf     	autiasp
    1f04: d65f03c0     	ret
    1f08: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001f08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d99
    1f0c: 91000000     	add	x0, x0, #0x0
		0000000000001f0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d99
    1f10: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001f10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a19
    1f14: 91000021     	add	x1, x1, #0x0
		0000000000001f14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a19
    1f18: 94000000     	bl	0x1f18 <policy_psy_get_property+0xac>
		0000000000001f18:  R_AARCH64_CALL26	_printk
    1f1c: 12800788     	mov	w8, #-0x3d              // =-61
    1f20: 17fffff5     	b	0x1ef4 <policy_psy_get_property+0x88>
    1f24: 71000e9f     	cmp	w20, #0x3
    1f28: 540001e1     	b.ne	0x1f64 <policy_psy_get_property+0xf8>
    1f2c: b941e802     	ldr	w2, [x0, #0x1e8]
    1f30: 90000008     	adrp	x8, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001f30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x402
    1f34: 91000108     	add	x8, x8, #0x0
		0000000000001f34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x402
    1f38: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001f38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a19
    1f3c: 91000021     	add	x1, x1, #0x0
		0000000000001f3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a19
    1f40: aa0003f4     	mov	x20, x0
    1f44: aa0803e0     	mov	x0, x8
    1f48: 94000000     	bl	0x1f48 <policy_psy_get_property+0xdc>
		0000000000001f48:  R_AARCH64_CALL26	_printk
    1f4c: b941ea89     	ldr	w9, [x20, #0x1e8]
    1f50: 2a1f03e8     	mov	w8, wzr
    1f54: 7100013f     	cmp	w9, #0x0
    1f58: 1a9f17e9     	cset	w9, eq
    1f5c: b9000269     	str	w9, [x19]
    1f60: 17ffffe5     	b	0x1ef4 <policy_psy_get_property+0x88>
    1f64: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001f64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1698
    1f68: 91000000     	add	x0, x0, #0x0
		0000000000001f68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1698
    1f6c: 2a1403e1     	mov	w1, w20
    1f70: 94000000     	bl	0x1f70 <policy_psy_get_property+0x104>
		0000000000001f70:  R_AARCH64_CALL26	_printk
    1f74: 128002a8     	mov	w8, #-0x16              // =-22
    1f78: 17ffffdf     	b	0x1ef4 <policy_psy_get_property+0x88>
