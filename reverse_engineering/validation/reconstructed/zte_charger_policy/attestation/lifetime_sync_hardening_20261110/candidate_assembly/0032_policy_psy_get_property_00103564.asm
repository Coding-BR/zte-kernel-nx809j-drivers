
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001b08 <policy_psy_get_property>:
    1b08: d503233f     	paciasp
    1b0c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1b10: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1b14: 910003fd     	mov	x29, sp
    1b18: aa0203f3     	mov	x19, x2
    1b1c: 2a0103f4     	mov	w20, w1
    1b20: 94000000     	bl	0x1b20 <policy_psy_get_property+0x18>
		0000000000001b20:  R_AARCH64_CALL26	power_supply_get_drvdata
    1b24: b4000400     	cbz	x0, 0x1ba4 <policy_psy_get_property+0x9c>
    1b28: 7100129f     	cmp	w20, #0x4
    1b2c: 54000260     	b.eq	0x1b78 <policy_psy_get_property+0x70>
    1b30: 7100169f     	cmp	w20, #0x5
    1b34: 54000461     	b.ne	0x1bc0 <policy_psy_get_property+0xb8>
    1b38: 39486408     	ldrb	w8, [x0, #0x219]
    1b3c: 7100051f     	cmp	w8, #0x1
    1b40: 540000c1     	b.ne	0x1b58 <policy_psy_get_property+0x50>
    1b44: aa0003f4     	mov	x20, x0
    1b48: 97ffff3c     	bl	0x1838 <charger_policy_cap_min_get+0xc>
		0000000000001b48:  R_AARCH64_CALL26	charger_policy_check_usb_present
    1b4c: 2a0003e8     	mov	w8, w0
    1b50: aa1403e0     	mov	x0, x20
    1b54: 370000e8     	tbnz	w8, #0x0, 0x1b70 <policy_psy_get_property+0x68>
    1b58: 39486808     	ldrb	w8, [x0, #0x21a]
    1b5c: 7100051f     	cmp	w8, #0x1
    1b60: 54000141     	b.ne	0x1b88 <policy_psy_get_property+0x80>
    1b64: 39486c08     	ldrb	w8, [x0, #0x21b]
    1b68: 7100051f     	cmp	w8, #0x1
    1b6c: 540000e1     	b.ne	0x1b88 <policy_psy_get_property+0x80>
    1b70: 52800029     	mov	w9, #0x1                // =1
    1b74: 14000002     	b	0x1b7c <policy_psy_get_property+0x74>
    1b78: b941ec09     	ldr	w9, [x0, #0x1ec]
    1b7c: 2a1f03e8     	mov	w8, wzr
    1b80: b9000269     	str	w9, [x19]
    1b84: 14000003     	b	0x1b90 <policy_psy_get_property+0x88>
    1b88: 2a1f03e8     	mov	w8, wzr
    1b8c: b900027f     	str	wzr, [x19]
    1b90: 2a0803e0     	mov	w0, w8
    1b94: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1b98: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1b9c: d50323bf     	autiasp
    1ba0: d65f03c0     	ret
    1ba4: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001ba4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23f6
    1ba8: 91000000     	add	x0, x0, #0x0
		0000000000001ba8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23f6
    1bac: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001bac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1546
    1bb0: 91000021     	add	x1, x1, #0x0
		0000000000001bb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1546
    1bb4: 94000000     	bl	0x1bb4 <policy_psy_get_property+0xac>
		0000000000001bb4:  R_AARCH64_CALL26	_printk
    1bb8: 12800788     	mov	w8, #-0x3d              // =-61
    1bbc: 17fffff5     	b	0x1b90 <policy_psy_get_property+0x88>
    1bc0: 71000e9f     	cmp	w20, #0x3
    1bc4: 540001e1     	b.ne	0x1c00 <policy_psy_get_property+0xf8>
    1bc8: b941e802     	ldr	w2, [x0, #0x1e8]
    1bcc: 90000008     	adrp	x8, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001bcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d0
    1bd0: 91000108     	add	x8, x8, #0x0
		0000000000001bd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d0
    1bd4: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001bd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1546
    1bd8: 91000021     	add	x1, x1, #0x0
		0000000000001bd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1546
    1bdc: aa0003f4     	mov	x20, x0
    1be0: aa0803e0     	mov	x0, x8
    1be4: 94000000     	bl	0x1be4 <policy_psy_get_property+0xdc>
		0000000000001be4:  R_AARCH64_CALL26	_printk
    1be8: b941ea89     	ldr	w9, [x20, #0x1e8]
    1bec: 2a1f03e8     	mov	w8, wzr
    1bf0: 7100013f     	cmp	w9, #0x0
    1bf4: 1a9f17e9     	cset	w9, eq
    1bf8: b9000269     	str	w9, [x19]
    1bfc: 17ffffe5     	b	0x1b90 <policy_psy_get_property+0x88>
    1c00: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001c00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ce
    1c04: 91000000     	add	x0, x0, #0x0
		0000000000001c04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ce
    1c08: 2a1403e1     	mov	w1, w20
    1c0c: 94000000     	bl	0x1c0c <policy_psy_get_property+0x104>
		0000000000001c0c:  R_AARCH64_CALL26	_printk
    1c10: 128002a8     	mov	w8, #-0x16              // =-22
    1c14: 17ffffdf     	b	0x1b90 <policy_psy_get_property+0x88>
