
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000009ec <gpio_keys_show_GamekeyStatus>:
     9ec: d503233f     	paciasp
     9f0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     9f4: a9014ff4     	stp	x20, x19, [sp, #0x10]
     9f8: 910003fd     	mov	x29, sp
     9fc: f9404c09     	ldr	x9, [x0, #0x98]
     a00: aa0203f3     	mov	x19, x2
     a04: f9400128     	ldr	x8, [x9]
     a08: b9400908     	ldr	w8, [x8, #0x8]
     a0c: 7100051f     	cmp	w8, #0x1
     a10: 5400034b     	b.lt	0xa78 <gpio_keys_show_GamekeyStatus+0x8c>
     a14: 91044134     	add	x20, x9, #0x110
     a18: 14000004     	b	0xa28 <gpio_keys_show_GamekeyStatus+0x3c>
     a1c: f1000508     	subs	x8, x8, #0x1
     a20: 91044294     	add	x20, x20, #0x110
     a24: 540002a0     	b.eq	0xa78 <gpio_keys_show_GamekeyStatus+0x8c>
     a28: f8538289     	ldur	x9, [x20, #-0xc8]
     a2c: b4ffff89     	cbz	x9, 0xa1c <gpio_keys_show_GamekeyStatus+0x30>
     a30: f855028a     	ldur	x10, [x20, #-0xb0]
     a34: 7940014a     	ldrh	w10, [x10]
     a38: 71003d5f     	cmp	w10, #0xf
     a3c: 54ffff01     	b.ne	0xa1c <gpio_keys_show_GamekeyStatus+0x30>
     a40: b9401929     	ldr	w9, [x9, #0x18]
     a44: 7100153f     	cmp	w9, #0x5
     a48: 54fffea1     	b.ne	0xa1c <gpio_keys_show_GamekeyStatus+0x30>
     a4c: f8548280     	ldur	x0, [x20, #-0xb8]
     a50: 94000000     	bl	0xa50 <gpio_keys_show_GamekeyStatus+0x64>
		0000000000000a50:  R_AARCH64_CALL26	gpiod_get_value_cansleep
     a54: b9400288     	ldr	w8, [x20]
     a58: 2a0003f4     	mov	w20, w0
     a5c: 2a0803e0     	mov	w0, w8
     a60: 94000000     	bl	0xa60 <gpio_keys_show_GamekeyStatus+0x74>
		0000000000000a60:  R_AARCH64_CALL26	gpio_to_desc
     a64: 94000000     	bl	0xa64 <gpio_keys_show_GamekeyStatus+0x78>
		0000000000000a64:  R_AARCH64_CALL26	gpiod_get_raw_value
     a68: 7100029f     	cmp	w20, #0x0
     a6c: 7a400804     	ccmp	w0, #0x0, #0x4, eq
     a70: 1a9f07f4     	cset	w20, ne
     a74: 14000002     	b	0xa7c <gpio_keys_show_GamekeyStatus+0x90>
     a78: 12800014     	mov	w20, #-0x1              // =-1
     a7c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a7c:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_show_GamekeyStatus_log
     a80: 91000000     	add	x0, x0, #0x0
		0000000000000a80:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_show_GamekeyStatus_log
     a84: 2a1403e1     	mov	w1, w20
     a88: 94000000     	bl	0xa88 <gpio_keys_show_GamekeyStatus+0x9c>
		0000000000000a88:  R_AARCH64_CALL26	_printk
     a8c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a8c:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_show_GamekeyStatus_fmt
     a90: 91000042     	add	x2, x2, #0x0
		0000000000000a90:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_show_GamekeyStatus_fmt
     a94: aa1303e0     	mov	x0, x19
     a98: 52800081     	mov	w1, #0x4                // =4
     a9c: 2a1403e3     	mov	w3, w20
     aa0: 94000000     	bl	0xaa0 <gpio_keys_show_GamekeyStatus+0xb4>
		0000000000000aa0:  R_AARCH64_CALL26	snprintf
     aa4: 93407c00     	sxtw	x0, w0
     aa8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     aac: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     ab0: d50323bf     	autiasp
     ab4: d65f03c0     	ret
