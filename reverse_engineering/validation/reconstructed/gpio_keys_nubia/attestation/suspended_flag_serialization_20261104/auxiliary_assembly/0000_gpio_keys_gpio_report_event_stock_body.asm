
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000cac <gpio_keys_gpio_report_event_stock_body>:
     cac: d503233f     	paciasp
     cb0: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
     cb4: f9000bf9     	str	x25, [sp, #0x10]
     cb8: a9025ff8     	stp	x24, x23, [sp, #0x20]
     cbc: a90357f6     	stp	x22, x21, [sp, #0x30]
     cc0: a9044ff4     	stp	x20, x19, [sp, #0x40]
     cc4: 910003fd     	mov	x29, sp
     cc8: a9404c17     	ldp	x23, x19, [x0]
     ccc: aa0003f5     	mov	x21, x0
     cd0: b940c808     	ldr	w8, [x0, #0xc8]
     cd4: b9401af8     	ldr	w24, [x23, #0x18]
     cd8: 7100071f     	cmp	w24, #0x1
     cdc: 1a9f8714     	csinc	w20, w24, wzr, hi
     ce0: 37f802c8     	tbnz	w8, #0x1f, 0xd38 <gpio_keys_gpio_report_event_stock_body+0x8c>
     ce4: b940c6a0     	ldr	w0, [x21, #0xc4]
     ce8: 94000000     	bl	0xce8 <gpio_keys_gpio_report_event_stock_body+0x3c>
		0000000000000ce8:  R_AARCH64_CALL26	gpio_to_desc
     cec: 94000000     	bl	0xcec <gpio_keys_gpio_report_event_stock_body+0x40>
		0000000000000cec:  R_AARCH64_CALL26	gpiod_get_raw_value
     cf0: 2a0003f6     	mov	w22, w0
     cf4: b940caa0     	ldr	w0, [x21, #0xc8]
     cf8: 710002df     	cmp	w22, #0x0
     cfc: 1a9f17f9     	cset	w25, eq
     d00: 94000000     	bl	0xd00 <gpio_keys_gpio_report_event_stock_body+0x54>
		0000000000000d00:  R_AARCH64_CALL26	gpio_to_desc
     d04: 94000000     	bl	0xd04 <gpio_keys_gpio_report_event_stock_body+0x58>
		0000000000000d04:  R_AARCH64_CALL26	gpiod_get_raw_value
     d08: 7100001f     	cmp	w0, #0x0
     d0c: 1a9f17e8     	cset	w8, eq
     d10: 710002df     	cmp	w22, #0x0
     d14: 4a080329     	eor	w9, w25, w8
     d18: 36000529     	tbz	w9, #0x0, 0xdbc <gpio_keys_gpio_report_event_stock_body+0x110>
     d1c: 1a9f17ea     	cset	w10, eq
     d20: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000d20:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x4
     d24: b940012b     	ldr	w11, [x9]
		0000000000000d24:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x4
     d28: 2a0a0508     	orr	w8, w8, w10, lsl #1
     d2c: 6b08017f     	cmp	w11, w8
     d30: 54000240     	b.eq	0xd78 <gpio_keys_gpio_report_event_stock_body+0xcc>
     d34: b9000128     	str	w8, [x9]
		0000000000000d34:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x4
     d38: a94122a0     	ldp	x0, x8, [x21, #0x10]
     d3c: 79400116     	ldrh	w22, [x8]
     d40: 94000000     	bl	0xd40 <gpio_keys_gpio_report_event_stock_body+0x94>
		0000000000000d40:  R_AARCH64_CALL26	gpiod_get_value_cansleep
     d44: 71003edf     	cmp	w22, #0xf
     d48: 54000061     	b.ne	0xd54 <gpio_keys_gpio_report_event_stock_body+0xa8>
     d4c: 7100171f     	cmp	w24, #0x5
     d50: 54000220     	b.eq	0xd94 <gpio_keys_gpio_report_event_stock_body+0xe8>
     d54: 37f80260     	tbnz	w0, #0x1f, 0xda0 <gpio_keys_gpio_report_event_stock_body+0xf4>
     d58: 71000f1f     	cmp	w24, #0x3
     d5c: 540003e1     	b.ne	0xdd8 <gpio_keys_gpio_report_event_stock_body+0x12c>
     d60: 35000580     	cbnz	w0, 0xe10 <gpio_keys_gpio_report_event_stock_body+0x164>
     d64: aa1303e0     	mov	x0, x19
     d68: 2a1f03e1     	mov	w1, wzr
     d6c: 2a1f03e2     	mov	w2, wzr
     d70: 2a1f03e3     	mov	w3, wzr
     d74: 94000000     	bl	0xd74 <gpio_keys_gpio_report_event_stock_body+0xc8>
		0000000000000d74:  R_AARCH64_CALL26	input_event
     d78: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     d7c: f9400bf9     	ldr	x25, [sp, #0x10]
     d80: a94357f6     	ldp	x22, x21, [sp, #0x30]
     d84: a9425ff8     	ldp	x24, x23, [sp, #0x20]
     d88: a8c57bfd     	ldp	x29, x30, [sp], #0x50
     d8c: d50323bf     	autiasp
     d90: d65f03c0     	ret
     d94: 7100001f     	cmp	w0, #0x0
     d98: 1a9f17e8     	cset	w8, eq
     d9c: 14000010     	b	0xddc <gpio_keys_gpio_report_event_stock_body+0x130>
     da0: f9414a68     	ldr	x8, [x19, #0x290]
     da4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000da4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a2
     da8: 91000021     	add	x1, x1, #0x0
		0000000000000da8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a2
     dac: 2a0003e2     	mov	w2, w0
     db0: aa0803e0     	mov	x0, x8
     db4: 94000000     	bl	0xdb4 <gpio_keys_gpio_report_event_stock_body+0x108>
		0000000000000db4:  R_AARCH64_CALL26	_dev_err
     db8: 17fffff0     	b	0xd78 <gpio_keys_gpio_report_event_stock_body+0xcc>
     dbc: 1a9f17e2     	cset	w2, eq
     dc0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000dc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53e
     dc4: 91000000     	add	x0, x0, #0x0
		0000000000000dc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53e
     dc8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000dc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ce
     dcc: 91000021     	add	x1, x1, #0x0
		0000000000000dcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ce
     dd0: 94000000     	bl	0xdd0 <gpio_keys_gpio_report_event_stock_body+0x124>
		0000000000000dd0:  R_AARCH64_CALL26	_printk
     dd4: 17ffffe9     	b	0xd78 <gpio_keys_gpio_report_event_stock_body+0xcc>
     dd8: 2a0003e8     	mov	w8, w0
     ddc: f9400ea9     	ldr	x9, [x21, #0x18]
     de0: aa1303e0     	mov	x0, x19
     de4: 2a1403e1     	mov	w1, w20
     de8: 2a0803e3     	mov	w3, w8
     dec: 2a0803f5     	mov	w21, w8
     df0: 79400122     	ldrh	w2, [x9]
     df4: 94000000     	bl	0xdf4 <gpio_keys_gpio_report_event_stock_body+0x148>
		0000000000000df4:  R_AARCH64_CALL26	input_event
     df8: b94002e2     	ldr	w2, [x23]
     dfc: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000dfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x489
     e00: 91000000     	add	x0, x0, #0x0
		0000000000000e00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x489
     e04: 2a1403e1     	mov	w1, w20
     e08: 2a1503e3     	mov	w3, w21
     e0c: 1400000b     	b	0xe38 <gpio_keys_gpio_report_event_stock_body+0x18c>
     e10: b94002e2     	ldr	w2, [x23]
     e14: b9402ee3     	ldr	w3, [x23, #0x2c]
     e18: aa1303e0     	mov	x0, x19
     e1c: 52800061     	mov	w1, #0x3                // =3
     e20: 94000000     	bl	0xe20 <gpio_keys_gpio_report_event_stock_body+0x174>
		0000000000000e20:  R_AARCH64_CALL26	input_event
     e24: b94002e2     	ldr	w2, [x23]
     e28: b9402ee3     	ldr	w3, [x23, #0x2c]
     e2c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a
     e30: 91000000     	add	x0, x0, #0x0
		0000000000000e30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a
     e34: 52800061     	mov	w1, #0x3                // =3
     e38: 94000000     	bl	0xe38 <gpio_keys_gpio_report_event_stock_body+0x18c>
		0000000000000e38:  R_AARCH64_CALL26	_printk
     e3c: 17ffffca     	b	0xd64 <gpio_keys_gpio_report_event_stock_body+0xb8>
