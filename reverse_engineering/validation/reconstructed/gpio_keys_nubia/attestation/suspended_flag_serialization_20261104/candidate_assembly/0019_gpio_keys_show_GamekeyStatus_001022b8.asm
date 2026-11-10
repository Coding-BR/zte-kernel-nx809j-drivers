
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a50 <gpio_keys_show_GamekeyStatus>:
     a50: d503233f     	paciasp
     a54: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     a58: a9014ff4     	stp	x20, x19, [sp, #0x10]
     a5c: 910003fd     	mov	x29, sp
     a60: f9404c09     	ldr	x9, [x0, #0x98]
     a64: aa0203f3     	mov	x19, x2
     a68: f9400128     	ldr	x8, [x9]
     a6c: b9400908     	ldr	w8, [x8, #0x8]
     a70: 7100051f     	cmp	w8, #0x1
     a74: 5400034b     	b.lt	0xadc <gpio_keys_show_GamekeyStatus+0x8c>
     a78: 91044134     	add	x20, x9, #0x110
     a7c: 14000004     	b	0xa8c <gpio_keys_show_GamekeyStatus+0x3c>
     a80: f1000508     	subs	x8, x8, #0x1
     a84: 91044294     	add	x20, x20, #0x110
     a88: 540002a0     	b.eq	0xadc <gpio_keys_show_GamekeyStatus+0x8c>
     a8c: f8538289     	ldur	x9, [x20, #-0xc8]
     a90: b4ffff89     	cbz	x9, 0xa80 <gpio_keys_show_GamekeyStatus+0x30>
     a94: f855028a     	ldur	x10, [x20, #-0xb0]
     a98: 7940014a     	ldrh	w10, [x10]
     a9c: 71003d5f     	cmp	w10, #0xf
     aa0: 54ffff01     	b.ne	0xa80 <gpio_keys_show_GamekeyStatus+0x30>
     aa4: b9401929     	ldr	w9, [x9, #0x18]
     aa8: 7100153f     	cmp	w9, #0x5
     aac: 54fffea1     	b.ne	0xa80 <gpio_keys_show_GamekeyStatus+0x30>
     ab0: f8548280     	ldur	x0, [x20, #-0xb8]
     ab4: 94000000     	bl	0xab4 <gpio_keys_show_GamekeyStatus+0x64>
		0000000000000ab4:  R_AARCH64_CALL26	gpiod_get_value_cansleep
     ab8: b9400288     	ldr	w8, [x20]
     abc: 2a0003f4     	mov	w20, w0
     ac0: 2a0803e0     	mov	w0, w8
     ac4: 94000000     	bl	0xac4 <gpio_keys_show_GamekeyStatus+0x74>
		0000000000000ac4:  R_AARCH64_CALL26	gpio_to_desc
     ac8: 94000000     	bl	0xac8 <gpio_keys_show_GamekeyStatus+0x78>
		0000000000000ac8:  R_AARCH64_CALL26	gpiod_get_raw_value
     acc: 7100029f     	cmp	w20, #0x0
     ad0: 7a400804     	ccmp	w0, #0x0, #0x4, eq
     ad4: 1a9f07f4     	cset	w20, ne
     ad8: 14000002     	b	0xae0 <gpio_keys_show_GamekeyStatus+0x90>
     adc: 12800014     	mov	w20, #-0x1              // =-1
     ae0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ae0:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_show_GamekeyStatus_log
     ae4: 91000000     	add	x0, x0, #0x0
		0000000000000ae4:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_show_GamekeyStatus_log
     ae8: 2a1403e1     	mov	w1, w20
     aec: 94000000     	bl	0xaec <gpio_keys_show_GamekeyStatus+0x9c>
		0000000000000aec:  R_AARCH64_CALL26	_printk
     af0: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000af0:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_show_GamekeyStatus_fmt
     af4: 91000042     	add	x2, x2, #0x0
		0000000000000af4:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_show_GamekeyStatus_fmt
     af8: aa1303e0     	mov	x0, x19
     afc: 52800081     	mov	w1, #0x4                // =4
     b00: 2a1403e3     	mov	w3, w20
     b04: 94000000     	bl	0xb04 <gpio_keys_show_GamekeyStatus+0xb4>
		0000000000000b04:  R_AARCH64_CALL26	snprintf
     b08: 93407c00     	sxtw	x0, w0
     b0c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     b10: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     b14: d50323bf     	autiasp
     b18: d65f03c0     	ret
