
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002b34 <policy_psy_get_property>:
    2b34: d503233f     	paciasp
    2b38: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    2b3c: a9014ff4     	stp	x20, x19, [sp, #0x10]
    2b40: 910003fd     	mov	x29, sp
    2b44: aa0203f3     	mov	x19, x2
    2b48: 2a0103f4     	mov	w20, w1
    2b4c: 94000000     	bl	0x2b4c <policy_psy_get_property+0x18>
		0000000000002b4c:  R_AARCH64_CALL26	power_supply_get_drvdata
    2b50: b4000400     	cbz	x0, 0x2bd0 <policy_psy_get_property+0x9c>
    2b54: 7100129f     	cmp	w20, #0x4
    2b58: 54000260     	b.eq	0x2ba4 <policy_psy_get_property+0x70>
    2b5c: 7100169f     	cmp	w20, #0x5
    2b60: 54000461     	b.ne	0x2bec <policy_psy_get_property+0xb8>
    2b64: 39486408     	ldrb	w8, [x0, #0x219]
    2b68: 7100051f     	cmp	w8, #0x1
    2b6c: 540000c1     	b.ne	0x2b84 <policy_psy_get_property+0x50>
    2b70: aa0003f4     	mov	x20, x0
    2b74: 97ffff3c     	bl	0x2864 <charger_policy_check_usb_present>
    2b78: 2a0003e8     	mov	w8, w0
    2b7c: aa1403e0     	mov	x0, x20
    2b80: 370000e8     	tbnz	w8, #0x0, 0x2b9c <policy_psy_get_property+0x68>
    2b84: 39486808     	ldrb	w8, [x0, #0x21a]
    2b88: 7100051f     	cmp	w8, #0x1
    2b8c: 54000141     	b.ne	0x2bb4 <policy_psy_get_property+0x80>
    2b90: 39486c08     	ldrb	w8, [x0, #0x21b]
    2b94: 7100051f     	cmp	w8, #0x1
    2b98: 540000e1     	b.ne	0x2bb4 <policy_psy_get_property+0x80>
    2b9c: 52800029     	mov	w9, #0x1                // =1
    2ba0: 14000002     	b	0x2ba8 <policy_psy_get_property+0x74>
    2ba4: b941ec09     	ldr	w9, [x0, #0x1ec]
    2ba8: 2a1f03e8     	mov	w8, wzr
    2bac: b9000269     	str	w9, [x19]
    2bb0: 14000003     	b	0x2bbc <policy_psy_get_property+0x88>
    2bb4: 2a1f03e8     	mov	w8, wzr
    2bb8: b900027f     	str	wzr, [x19]
    2bbc: 2a0803e0     	mov	w0, w8
    2bc0: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    2bc4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    2bc8: d50323bf     	autiasp
    2bcc: d65f03c0     	ret
    2bd0: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002bd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f6a
    2bd4: 91000000     	add	x0, x0, #0x0
		0000000000002bd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f6a
    2bd8: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		0000000000002bd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11c5
    2bdc: 91000021     	add	x1, x1, #0x0
		0000000000002bdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11c5
    2be0: 94000000     	bl	0x2be0 <policy_psy_get_property+0xac>
		0000000000002be0:  R_AARCH64_CALL26	_printk
    2be4: 12800788     	mov	w8, #-0x3d              // =-61
    2be8: 17fffff5     	b	0x2bbc <policy_psy_get_property+0x88>
    2bec: 71000e9f     	cmp	w20, #0x3
    2bf0: 540001e1     	b.ne	0x2c2c <policy_psy_get_property+0xf8>
    2bf4: b941e802     	ldr	w2, [x0, #0x1e8]
    2bf8: 90000008     	adrp	x8, 0x2000 <charger_policy_probe+0x644>
		0000000000002bf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x377
    2bfc: 91000108     	add	x8, x8, #0x0
		0000000000002bfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x377
    2c00: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		0000000000002c00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11c5
    2c04: 91000021     	add	x1, x1, #0x0
		0000000000002c04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11c5
    2c08: aa0003f4     	mov	x20, x0
    2c0c: aa0803e0     	mov	x0, x8
    2c10: 94000000     	bl	0x2c10 <policy_psy_get_property+0xdc>
		0000000000002c10:  R_AARCH64_CALL26	_printk
    2c14: b941ea89     	ldr	w9, [x20, #0x1e8]
    2c18: 2a1f03e8     	mov	w8, wzr
    2c1c: 7100013f     	cmp	w9, #0x0
    2c20: 1a9f17e9     	cset	w9, eq
    2c24: b9000269     	str	w9, [x19]
    2c28: 17ffffe5     	b	0x2bbc <policy_psy_get_property+0x88>
    2c2c: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002c2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xef6
    2c30: 91000000     	add	x0, x0, #0x0
		0000000000002c30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xef6
    2c34: 2a1403e1     	mov	w1, w20
    2c38: 94000000     	bl	0x2c38 <policy_psy_get_property+0x104>
		0000000000002c38:  R_AARCH64_CALL26	_printk
    2c3c: 128002a8     	mov	w8, #-0x16              // =-22
    2c40: 17ffffdf     	b	0x2bbc <policy_psy_get_property+0x88>
