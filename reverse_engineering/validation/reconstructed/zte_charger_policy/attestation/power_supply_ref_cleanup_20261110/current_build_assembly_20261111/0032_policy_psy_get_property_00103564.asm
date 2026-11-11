
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001b18 <policy_psy_get_property>:
    1b18: d503233f     	paciasp
    1b1c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1b20: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1b24: 910003fd     	mov	x29, sp
    1b28: aa0203f3     	mov	x19, x2
    1b2c: 2a0103f4     	mov	w20, w1
    1b30: 94000000     	bl	0x1b30 <policy_psy_get_property+0x18>
		0000000000001b30:  R_AARCH64_CALL26	power_supply_get_drvdata
    1b34: b4000400     	cbz	x0, 0x1bb4 <policy_psy_get_property+0x9c>
    1b38: 7100129f     	cmp	w20, #0x4
    1b3c: 54000260     	b.eq	0x1b88 <policy_psy_get_property+0x70>
    1b40: 7100169f     	cmp	w20, #0x5
    1b44: 54000461     	b.ne	0x1bd0 <policy_psy_get_property+0xb8>
    1b48: 39486408     	ldrb	w8, [x0, #0x219]
    1b4c: 7100051f     	cmp	w8, #0x1
    1b50: 540000c1     	b.ne	0x1b68 <policy_psy_get_property+0x50>
    1b54: aa0003f4     	mov	x20, x0
    1b58: 97ffff3c     	bl	0x1848 <charger_policy_cap_min_get+0xc>
		0000000000001b58:  R_AARCH64_CALL26	charger_policy_check_usb_present
    1b5c: 2a0003e8     	mov	w8, w0
    1b60: aa1403e0     	mov	x0, x20
    1b64: 370000e8     	tbnz	w8, #0x0, 0x1b80 <policy_psy_get_property+0x68>
    1b68: 39486808     	ldrb	w8, [x0, #0x21a]
    1b6c: 7100051f     	cmp	w8, #0x1
    1b70: 54000141     	b.ne	0x1b98 <policy_psy_get_property+0x80>
    1b74: 39486c08     	ldrb	w8, [x0, #0x21b]
    1b78: 7100051f     	cmp	w8, #0x1
    1b7c: 540000e1     	b.ne	0x1b98 <policy_psy_get_property+0x80>
    1b80: 52800029     	mov	w9, #0x1                // =1
    1b84: 14000002     	b	0x1b8c <policy_psy_get_property+0x74>
    1b88: b941ec09     	ldr	w9, [x0, #0x1ec]
    1b8c: 2a1f03e8     	mov	w8, wzr
    1b90: b9000269     	str	w9, [x19]
    1b94: 14000003     	b	0x1ba0 <policy_psy_get_property+0x88>
    1b98: 2a1f03e8     	mov	w8, wzr
    1b9c: b900027f     	str	wzr, [x19]
    1ba0: 2a0803e0     	mov	w0, w8
    1ba4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1ba8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1bac: d50323bf     	autiasp
    1bb0: d65f03c0     	ret
    1bb4: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001bb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23f6
    1bb8: 91000000     	add	x0, x0, #0x0
		0000000000001bb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23f6
    1bbc: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001bbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1546
    1bc0: 91000021     	add	x1, x1, #0x0
		0000000000001bc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1546
    1bc4: 94000000     	bl	0x1bc4 <policy_psy_get_property+0xac>
		0000000000001bc4:  R_AARCH64_CALL26	_printk
    1bc8: 12800788     	mov	w8, #-0x3d              // =-61
    1bcc: 17fffff5     	b	0x1ba0 <policy_psy_get_property+0x88>
    1bd0: 71000e9f     	cmp	w20, #0x3
    1bd4: 540001e1     	b.ne	0x1c10 <policy_psy_get_property+0xf8>
    1bd8: b941e802     	ldr	w2, [x0, #0x1e8]
    1bdc: 90000008     	adrp	x8, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001bdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d0
    1be0: 91000108     	add	x8, x8, #0x0
		0000000000001be0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d0
    1be4: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001be4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1546
    1be8: 91000021     	add	x1, x1, #0x0
		0000000000001be8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1546
    1bec: aa0003f4     	mov	x20, x0
    1bf0: aa0803e0     	mov	x0, x8
    1bf4: 94000000     	bl	0x1bf4 <policy_psy_get_property+0xdc>
		0000000000001bf4:  R_AARCH64_CALL26	_printk
    1bf8: b941ea89     	ldr	w9, [x20, #0x1e8]
    1bfc: 2a1f03e8     	mov	w8, wzr
    1c00: 7100013f     	cmp	w9, #0x0
    1c04: 1a9f17e9     	cset	w9, eq
    1c08: b9000269     	str	w9, [x19]
    1c0c: 17ffffe5     	b	0x1ba0 <policy_psy_get_property+0x88>
    1c10: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001c10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ce
    1c14: 91000000     	add	x0, x0, #0x0
		0000000000001c14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ce
    1c18: 2a1403e1     	mov	w1, w20
    1c1c: 94000000     	bl	0x1c1c <policy_psy_get_property+0x104>
		0000000000001c1c:  R_AARCH64_CALL26	_printk
    1c20: 128002a8     	mov	w8, #-0x16              // =-22
    1c24: 17ffffdf     	b	0x1ba0 <policy_psy_get_property+0x88>
