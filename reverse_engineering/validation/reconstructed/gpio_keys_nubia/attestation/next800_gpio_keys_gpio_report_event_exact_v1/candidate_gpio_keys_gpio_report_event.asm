
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000001a4 <gpio_keys_gpio_report_event>:
     1a4: d503233f     	paciasp
     1a8: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
     1ac: f9000bf9     	str	x25, [sp, #0x10]
     1b0: a9025ff8     	stp	x24, x23, [sp, #0x20]
     1b4: a90357f6     	stp	x22, x21, [sp, #0x30]
     1b8: a9044ff4     	stp	x20, x19, [sp, #0x40]
     1bc: 910003fd     	mov	x29, sp
     1c0: a9404c17     	ldp	x23, x19, [x0]
     1c4: aa0003f5     	mov	x21, x0
     1c8: b940c808     	ldr	w8, [x0, #0xc8]
     1cc: b9401af8     	ldr	w24, [x23, #0x18]
     1d0: 7100071f     	cmp	w24, #0x1
     1d4: 1a9f8714     	csinc	w20, w24, wzr, hi
     1d8: 37f802c8     	tbnz	w8, #0x1f, 0x230 <gpio_keys_gpio_report_event+0x8c>
     1dc: b940c6a0     	ldr	w0, [x21, #0xc4]
     1e0: 94000000     	bl	0x1e0 <gpio_keys_gpio_report_event+0x3c>
		00000000000001e0:  R_AARCH64_CALL26	gpio_to_desc
     1e4: 94000000     	bl	0x1e4 <gpio_keys_gpio_report_event+0x40>
		00000000000001e4:  R_AARCH64_CALL26	gpiod_get_raw_value
     1e8: 2a0003f6     	mov	w22, w0
     1ec: b940caa0     	ldr	w0, [x21, #0xc8]
     1f0: 710002df     	cmp	w22, #0x0
     1f4: 1a9f17f9     	cset	w25, eq
     1f8: 94000000     	bl	0x1f8 <gpio_keys_gpio_report_event+0x54>
		00000000000001f8:  R_AARCH64_CALL26	gpio_to_desc
     1fc: 94000000     	bl	0x1fc <gpio_keys_gpio_report_event+0x58>
		00000000000001fc:  R_AARCH64_CALL26	gpiod_get_raw_value
     200: 7100001f     	cmp	w0, #0x0
     204: 1a9f17e8     	cset	w8, eq
     208: 710002df     	cmp	w22, #0x0
     20c: 4a080329     	eor	w9, w25, w8
     210: 36000529     	tbz	w9, #0x0, 0x2b4 <gpio_keys_gpio_report_event+0x110>
     214: 1a9f17ea     	cset	w10, eq
     218: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000218:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x4
     21c: b940012b     	ldr	w11, [x9]
		000000000000021c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x4
     220: 2a0a0508     	orr	w8, w8, w10, lsl #1
     224: 6b08017f     	cmp	w11, w8
     228: 54000240     	b.eq	0x270 <gpio_keys_gpio_report_event+0xcc>
     22c: b9000128     	str	w8, [x9]
		000000000000022c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x4
     230: a94122a0     	ldp	x0, x8, [x21, #0x10]
     234: 79400116     	ldrh	w22, [x8]
     238: 94000000     	bl	0x238 <gpio_keys_gpio_report_event+0x94>
		0000000000000238:  R_AARCH64_CALL26	gpiod_get_value_cansleep
     23c: 71003edf     	cmp	w22, #0xf
     240: 54000061     	b.ne	0x24c <gpio_keys_gpio_report_event+0xa8>
     244: 7100171f     	cmp	w24, #0x5
     248: 54000220     	b.eq	0x28c <gpio_keys_gpio_report_event+0xe8>
     24c: 37f80260     	tbnz	w0, #0x1f, 0x298 <gpio_keys_gpio_report_event+0xf4>
     250: 71000f1f     	cmp	w24, #0x3
     254: 540003e1     	b.ne	0x2d0 <gpio_keys_gpio_report_event+0x12c>
     258: 35000580     	cbnz	w0, 0x308 <gpio_keys_gpio_report_event+0x164>
     25c: aa1303e0     	mov	x0, x19
     260: 2a1f03e1     	mov	w1, wzr
     264: 2a1f03e2     	mov	w2, wzr
     268: 2a1f03e3     	mov	w3, wzr
     26c: 94000000     	bl	0x26c <gpio_keys_gpio_report_event+0xc8>
		000000000000026c:  R_AARCH64_CALL26	input_event
     270: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     274: f9400bf9     	ldr	x25, [sp, #0x10]
     278: a94357f6     	ldp	x22, x21, [sp, #0x30]
     27c: a9425ff8     	ldp	x24, x23, [sp, #0x20]
     280: a8c57bfd     	ldp	x29, x30, [sp], #0x50
     284: d50323bf     	autiasp
     288: d65f03c0     	ret
     28c: 7100001f     	cmp	w0, #0x0
     290: 1a9f17e8     	cset	w8, eq
     294: 14000010     	b	0x2d4 <gpio_keys_gpio_report_event+0x130>
     298: f9414a68     	ldr	x8, [x19, #0x290]
     29c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000029c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d9
     2a0: 91000021     	add	x1, x1, #0x0
		00000000000002a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d9
     2a4: 2a0003e2     	mov	w2, w0
     2a8: aa0803e0     	mov	x0, x8
     2ac: 94000000     	bl	0x2ac <gpio_keys_gpio_report_event+0x108>
		00000000000002ac:  R_AARCH64_CALL26	_dev_err
     2b0: 17fffff0     	b	0x270 <gpio_keys_gpio_report_event+0xcc>
     2b4: 1a9f17e2     	cset	w2, eq
     2b8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x861
     2bc: 91000000     	add	x0, x0, #0x0
		00000000000002bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x861
     2c0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x605
     2c4: 91000021     	add	x1, x1, #0x0
		00000000000002c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x605
     2c8: 94000000     	bl	0x2c8 <gpio_keys_gpio_report_event+0x124>
		00000000000002c8:  R_AARCH64_CALL26	_printk
     2cc: 17ffffe9     	b	0x270 <gpio_keys_gpio_report_event+0xcc>
     2d0: 2a0003e8     	mov	w8, w0
     2d4: f9400ea9     	ldr	x9, [x21, #0x18]
     2d8: aa1303e0     	mov	x0, x19
     2dc: 2a1403e1     	mov	w1, w20
     2e0: 2a0803e3     	mov	w3, w8
     2e4: 2a0803f5     	mov	w21, w8
     2e8: 79400122     	ldrh	w2, [x9]
     2ec: 94000000     	bl	0x2ec <gpio_keys_gpio_report_event+0x148>
		00000000000002ec:  R_AARCH64_CALL26	input_event
     2f0: b94002e2     	ldr	w2, [x23]
     2f4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ac
     2f8: 91000000     	add	x0, x0, #0x0
		00000000000002f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ac
     2fc: 2a1403e1     	mov	w1, w20
     300: 2a1503e3     	mov	w3, w21
     304: 1400000b     	b	0x330 <gpio_keys_gpio_report_event+0x18c>
     308: b94002e2     	ldr	w2, [x23]
     30c: b9402ee3     	ldr	w3, [x23, #0x2c]
     310: aa1303e0     	mov	x0, x19
     314: 52800061     	mov	w1, #0x3                // =3
     318: 94000000     	bl	0x318 <gpio_keys_gpio_report_event+0x174>
		0000000000000318:  R_AARCH64_CALL26	input_event
     31c: b94002e2     	ldr	w2, [x23]
     320: b9402ee3     	ldr	w3, [x23, #0x2c]
     324: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000324:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35b
     328: 91000000     	add	x0, x0, #0x0
		0000000000000328:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35b
     32c: 52800061     	mov	w1, #0x3                // =3
     330: 94000000     	bl	0x330 <gpio_keys_gpio_report_event+0x18c>
		0000000000000330:  R_AARCH64_CALL26	_printk
     334: 17ffffca     	b	0x25c <gpio_keys_gpio_report_event+0xb8>
