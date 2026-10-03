
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c48 <gpio_keys_gpio_report_event>:
     c48: d503233f     	paciasp
     c4c: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
     c50: f9000bf9     	str	x25, [sp, #0x10]
     c54: a9025ff8     	stp	x24, x23, [sp, #0x20]
     c58: a90357f6     	stp	x22, x21, [sp, #0x30]
     c5c: a9044ff4     	stp	x20, x19, [sp, #0x40]
     c60: 910003fd     	mov	x29, sp
     c64: a9404c17     	ldp	x23, x19, [x0]
     c68: aa0003f5     	mov	x21, x0
     c6c: b940c808     	ldr	w8, [x0, #0xc8]
     c70: b9401af8     	ldr	w24, [x23, #0x18]
     c74: 7100071f     	cmp	w24, #0x1
     c78: 1a9f8714     	csinc	w20, w24, wzr, hi
     c7c: 37f802c8     	tbnz	w8, #0x1f, 0xcd4 <gpio_keys_gpio_report_event+0x8c>
     c80: b940c6a0     	ldr	w0, [x21, #0xc4]
     c84: 94000000     	bl	0xc84 <gpio_keys_gpio_report_event+0x3c>
		0000000000000c84:  R_AARCH64_CALL26	gpio_to_desc
     c88: 94000000     	bl	0xc88 <gpio_keys_gpio_report_event+0x40>
		0000000000000c88:  R_AARCH64_CALL26	gpiod_get_raw_value
     c8c: 2a0003f6     	mov	w22, w0
     c90: b940caa0     	ldr	w0, [x21, #0xc8]
     c94: 710002df     	cmp	w22, #0x0
     c98: 1a9f17f9     	cset	w25, eq
     c9c: 94000000     	bl	0xc9c <gpio_keys_gpio_report_event+0x54>
		0000000000000c9c:  R_AARCH64_CALL26	gpio_to_desc
     ca0: 94000000     	bl	0xca0 <gpio_keys_gpio_report_event+0x58>
		0000000000000ca0:  R_AARCH64_CALL26	gpiod_get_raw_value
     ca4: 7100001f     	cmp	w0, #0x0
     ca8: 1a9f17e8     	cset	w8, eq
     cac: 710002df     	cmp	w22, #0x0
     cb0: 4a080329     	eor	w9, w25, w8
     cb4: 36000529     	tbz	w9, #0x0, 0xd58 <gpio_keys_gpio_report_event+0x110>
     cb8: 1a9f17ea     	cset	w10, eq
     cbc: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000cbc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x4
     cc0: b940012b     	ldr	w11, [x9]
		0000000000000cc0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x4
     cc4: 2a0a0508     	orr	w8, w8, w10, lsl #1
     cc8: 6b08017f     	cmp	w11, w8
     ccc: 54000240     	b.eq	0xd14 <gpio_keys_gpio_report_event+0xcc>
     cd0: b9000128     	str	w8, [x9]
		0000000000000cd0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x4
     cd4: a94122a0     	ldp	x0, x8, [x21, #0x10]
     cd8: 79400116     	ldrh	w22, [x8]
     cdc: 94000000     	bl	0xcdc <gpio_keys_gpio_report_event+0x94>
		0000000000000cdc:  R_AARCH64_CALL26	gpiod_get_value_cansleep
     ce0: 71003edf     	cmp	w22, #0xf
     ce4: 54000061     	b.ne	0xcf0 <gpio_keys_gpio_report_event+0xa8>
     ce8: 7100171f     	cmp	w24, #0x5
     cec: 54000220     	b.eq	0xd30 <gpio_keys_gpio_report_event+0xe8>
     cf0: 37f80260     	tbnz	w0, #0x1f, 0xd3c <gpio_keys_gpio_report_event+0xf4>
     cf4: 71000f1f     	cmp	w24, #0x3
     cf8: 540003e1     	b.ne	0xd74 <gpio_keys_gpio_report_event+0x12c>
     cfc: 35000580     	cbnz	w0, 0xdac <gpio_keys_gpio_report_event+0x164>
     d00: aa1303e0     	mov	x0, x19
     d04: 2a1f03e1     	mov	w1, wzr
     d08: 2a1f03e2     	mov	w2, wzr
     d0c: 2a1f03e3     	mov	w3, wzr
     d10: 94000000     	bl	0xd10 <gpio_keys_gpio_report_event+0xc8>
		0000000000000d10:  R_AARCH64_CALL26	input_event
     d14: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     d18: f9400bf9     	ldr	x25, [sp, #0x10]
     d1c: a94357f6     	ldp	x22, x21, [sp, #0x30]
     d20: a9425ff8     	ldp	x24, x23, [sp, #0x20]
     d24: a8c57bfd     	ldp	x29, x30, [sp], #0x50
     d28: d50323bf     	autiasp
     d2c: d65f03c0     	ret
     d30: 7100001f     	cmp	w0, #0x0
     d34: 1a9f17e8     	cset	w8, eq
     d38: 14000010     	b	0xd78 <gpio_keys_gpio_report_event+0x130>
     d3c: f9414a68     	ldr	x8, [x19, #0x290]
     d40: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a2
     d44: 91000021     	add	x1, x1, #0x0
		0000000000000d44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a2
     d48: 2a0003e2     	mov	w2, w0
     d4c: aa0803e0     	mov	x0, x8
     d50: 94000000     	bl	0xd50 <gpio_keys_gpio_report_event+0x108>
		0000000000000d50:  R_AARCH64_CALL26	_dev_err
     d54: 17fffff0     	b	0xd14 <gpio_keys_gpio_report_event+0xcc>
     d58: 1a9f17e2     	cset	w2, eq
     d5c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53e
     d60: 91000000     	add	x0, x0, #0x0
		0000000000000d60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53e
     d64: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ce
     d68: 91000021     	add	x1, x1, #0x0
		0000000000000d68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ce
     d6c: 94000000     	bl	0xd6c <gpio_keys_gpio_report_event+0x124>
		0000000000000d6c:  R_AARCH64_CALL26	_printk
     d70: 17ffffe9     	b	0xd14 <gpio_keys_gpio_report_event+0xcc>
     d74: 2a0003e8     	mov	w8, w0
     d78: f9400ea9     	ldr	x9, [x21, #0x18]
     d7c: aa1303e0     	mov	x0, x19
     d80: 2a1403e1     	mov	w1, w20
     d84: 2a0803e3     	mov	w3, w8
     d88: 2a0803f5     	mov	w21, w8
     d8c: 79400122     	ldrh	w2, [x9]
     d90: 94000000     	bl	0xd90 <gpio_keys_gpio_report_event+0x148>
		0000000000000d90:  R_AARCH64_CALL26	input_event
     d94: b94002e2     	ldr	w2, [x23]
     d98: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x489
     d9c: 91000000     	add	x0, x0, #0x0
		0000000000000d9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x489
     da0: 2a1403e1     	mov	w1, w20
     da4: 2a1503e3     	mov	w3, w21
     da8: 1400000b     	b	0xdd4 <gpio_keys_gpio_report_event+0x18c>
     dac: b94002e2     	ldr	w2, [x23]
     db0: b9402ee3     	ldr	w3, [x23, #0x2c]
     db4: aa1303e0     	mov	x0, x19
     db8: 52800061     	mov	w1, #0x3                // =3
     dbc: 94000000     	bl	0xdbc <gpio_keys_gpio_report_event+0x174>
		0000000000000dbc:  R_AARCH64_CALL26	input_event
     dc0: b94002e2     	ldr	w2, [x23]
     dc4: b9402ee3     	ldr	w3, [x23, #0x2c]
     dc8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000dc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a
     dcc: 91000000     	add	x0, x0, #0x0
		0000000000000dcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a
     dd0: 52800061     	mov	w1, #0x3                // =3
     dd4: 94000000     	bl	0xdd4 <gpio_keys_gpio_report_event+0x18c>
		0000000000000dd4:  R_AARCH64_CALL26	_printk
     dd8: 17ffffca     	b	0xd00 <gpio_keys_gpio_report_event+0xb8>
