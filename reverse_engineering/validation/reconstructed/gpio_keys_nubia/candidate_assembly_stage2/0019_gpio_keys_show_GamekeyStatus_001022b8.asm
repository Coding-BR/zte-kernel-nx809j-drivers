
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001b54 <gpio_keys_show_GamekeyStatus>:
    1b54: d503233f     	paciasp
    1b58: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1b5c: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1b60: 910003fd     	mov	x29, sp
    1b64: f9404c09     	ldr	x9, [x0, #0x98]
    1b68: aa0203f3     	mov	x19, x2
    1b6c: f9400128     	ldr	x8, [x9]
    1b70: b9400908     	ldr	w8, [x8, #0x8]
    1b74: 7100051f     	cmp	w8, #0x1
    1b78: 5400034b     	b.lt	0x1be0 <gpio_keys_show_GamekeyStatus+0x8c>
    1b7c: 91044134     	add	x20, x9, #0x110
    1b80: 14000004     	b	0x1b90 <gpio_keys_show_GamekeyStatus+0x3c>
    1b84: f1000508     	subs	x8, x8, #0x1
    1b88: 91044294     	add	x20, x20, #0x110
    1b8c: 540002a0     	b.eq	0x1be0 <gpio_keys_show_GamekeyStatus+0x8c>
    1b90: f8538289     	ldur	x9, [x20, #-0xc8]
    1b94: b4ffff89     	cbz	x9, 0x1b84 <gpio_keys_show_GamekeyStatus+0x30>
    1b98: f855028a     	ldur	x10, [x20, #-0xb0]
    1b9c: 7940014a     	ldrh	w10, [x10]
    1ba0: 71003d5f     	cmp	w10, #0xf
    1ba4: 54ffff01     	b.ne	0x1b84 <gpio_keys_show_GamekeyStatus+0x30>
    1ba8: b9401929     	ldr	w9, [x9, #0x18]
    1bac: 7100153f     	cmp	w9, #0x5
    1bb0: 54fffea1     	b.ne	0x1b84 <gpio_keys_show_GamekeyStatus+0x30>
    1bb4: f8548280     	ldur	x0, [x20, #-0xb8]
    1bb8: 94000000     	bl	0x1bb8 <gpio_keys_show_GamekeyStatus+0x64>
		0000000000001bb8:  R_AARCH64_CALL26	gpiod_get_value_cansleep
    1bbc: b9400288     	ldr	w8, [x20]
    1bc0: 2a0003f4     	mov	w20, w0
    1bc4: 2a0803e0     	mov	w0, w8
    1bc8: 94000000     	bl	0x1bc8 <gpio_keys_show_GamekeyStatus+0x74>
		0000000000001bc8:  R_AARCH64_CALL26	gpio_to_desc
    1bcc: 94000000     	bl	0x1bcc <gpio_keys_show_GamekeyStatus+0x78>
		0000000000001bcc:  R_AARCH64_CALL26	gpiod_get_raw_value
    1bd0: 7100029f     	cmp	w20, #0x0
    1bd4: 7a400804     	ccmp	w0, #0x0, #0x4, eq
    1bd8: 1a9f07f4     	cset	w20, ne
    1bdc: 14000002     	b	0x1be4 <gpio_keys_show_GamekeyStatus+0x90>
    1be0: 12800014     	mov	w20, #-0x1              // =-1
    1be4: 90000000     	adrp	x0, 0x1000 <gpio_keys_gpio_report_event+0xe0>
		0000000000001be4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x127
    1be8: 91000000     	add	x0, x0, #0x0
		0000000000001be8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x127
    1bec: 2a1403e1     	mov	w1, w20
    1bf0: 94000000     	bl	0x1bf0 <gpio_keys_show_GamekeyStatus+0x9c>
		0000000000001bf0:  R_AARCH64_CALL26	_printk
    1bf4: 90000002     	adrp	x2, 0x1000 <gpio_keys_gpio_report_event+0xe0>
		0000000000001bf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dd
    1bf8: 91000042     	add	x2, x2, #0x0
		0000000000001bf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dd
    1bfc: aa1303e0     	mov	x0, x19
    1c00: 52800081     	mov	w1, #0x4                // =4
    1c04: 2a1403e3     	mov	w3, w20
    1c08: 94000000     	bl	0x1c08 <gpio_keys_show_GamekeyStatus+0xb4>
		0000000000001c08:  R_AARCH64_CALL26	snprintf
    1c0c: 93407c00     	sxtw	x0, w0
    1c10: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1c14: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1c18: d50323bf     	autiasp
    1c1c: d65f03c0     	ret
