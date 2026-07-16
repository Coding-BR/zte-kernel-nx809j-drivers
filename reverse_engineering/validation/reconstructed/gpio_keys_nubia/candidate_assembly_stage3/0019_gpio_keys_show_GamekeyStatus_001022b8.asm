
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001ba8 <gpio_keys_show_GamekeyStatus>:
    1ba8: d503233f     	paciasp
    1bac: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1bb0: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1bb4: 910003fd     	mov	x29, sp
    1bb8: f9404c09     	ldr	x9, [x0, #0x98]
    1bbc: aa0203f3     	mov	x19, x2
    1bc0: f9400128     	ldr	x8, [x9]
    1bc4: b9400908     	ldr	w8, [x8, #0x8]
    1bc8: 7100051f     	cmp	w8, #0x1
    1bcc: 5400034b     	b.lt	0x1c34 <gpio_keys_show_GamekeyStatus+0x8c>
    1bd0: 91044134     	add	x20, x9, #0x110
    1bd4: 14000004     	b	0x1be4 <gpio_keys_show_GamekeyStatus+0x3c>
    1bd8: f1000508     	subs	x8, x8, #0x1
    1bdc: 91044294     	add	x20, x20, #0x110
    1be0: 540002a0     	b.eq	0x1c34 <gpio_keys_show_GamekeyStatus+0x8c>
    1be4: f8538289     	ldur	x9, [x20, #-0xc8]
    1be8: b4ffff89     	cbz	x9, 0x1bd8 <gpio_keys_show_GamekeyStatus+0x30>
    1bec: f855028a     	ldur	x10, [x20, #-0xb0]
    1bf0: 7940014a     	ldrh	w10, [x10]
    1bf4: 71003d5f     	cmp	w10, #0xf
    1bf8: 54ffff01     	b.ne	0x1bd8 <gpio_keys_show_GamekeyStatus+0x30>
    1bfc: b9401929     	ldr	w9, [x9, #0x18]
    1c00: 7100153f     	cmp	w9, #0x5
    1c04: 54fffea1     	b.ne	0x1bd8 <gpio_keys_show_GamekeyStatus+0x30>
    1c08: f8548280     	ldur	x0, [x20, #-0xb8]
    1c0c: 94000000     	bl	0x1c0c <gpio_keys_show_GamekeyStatus+0x64>
		0000000000001c0c:  R_AARCH64_CALL26	gpiod_get_value_cansleep
    1c10: b9400288     	ldr	w8, [x20]
    1c14: 2a0003f4     	mov	w20, w0
    1c18: 2a0803e0     	mov	w0, w8
    1c1c: 94000000     	bl	0x1c1c <gpio_keys_show_GamekeyStatus+0x74>
		0000000000001c1c:  R_AARCH64_CALL26	gpio_to_desc
    1c20: 94000000     	bl	0x1c20 <gpio_keys_show_GamekeyStatus+0x78>
		0000000000001c20:  R_AARCH64_CALL26	gpiod_get_raw_value
    1c24: 7100029f     	cmp	w20, #0x0
    1c28: 7a400804     	ccmp	w0, #0x0, #0x4, eq
    1c2c: 1a9f07f4     	cset	w20, ne
    1c30: 14000002     	b	0x1c38 <gpio_keys_show_GamekeyStatus+0x90>
    1c34: 12800014     	mov	w20, #-0x1              // =-1
    1c38: 90000000     	adrp	x0, 0x1000 <gpio_keys_gpio_report_event+0x8c>
		0000000000001c38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d
    1c3c: 91000000     	add	x0, x0, #0x0
		0000000000001c3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d
    1c40: 2a1403e1     	mov	w1, w20
    1c44: 94000000     	bl	0x1c44 <gpio_keys_show_GamekeyStatus+0x9c>
		0000000000001c44:  R_AARCH64_CALL26	_printk
    1c48: 90000002     	adrp	x2, 0x1000 <gpio_keys_gpio_report_event+0x8c>
		0000000000001c48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cf
    1c4c: 91000042     	add	x2, x2, #0x0
		0000000000001c4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cf
    1c50: aa1303e0     	mov	x0, x19
    1c54: 52800081     	mov	w1, #0x4                // =4
    1c58: 2a1403e3     	mov	w3, w20
    1c5c: 94000000     	bl	0x1c5c <gpio_keys_show_GamekeyStatus+0xb4>
		0000000000001c5c:  R_AARCH64_CALL26	snprintf
    1c60: 93407c00     	sxtw	x0, w0
    1c64: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1c68: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1c6c: d50323bf     	autiasp
    1c70: d65f03c0     	ret
