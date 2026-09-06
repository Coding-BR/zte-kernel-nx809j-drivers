
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001ba0 <gpio_keys_show_GamekeyStatus>:
    1ba0: d503233f     	paciasp
    1ba4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1ba8: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1bac: 910003fd     	mov	x29, sp
    1bb0: f9404c09     	ldr	x9, [x0, #0x98]
    1bb4: aa0203f3     	mov	x19, x2
    1bb8: f9400128     	ldr	x8, [x9]
    1bbc: b9400908     	ldr	w8, [x8, #0x8]
    1bc0: 7100051f     	cmp	w8, #0x1
    1bc4: 5400034b     	b.lt	0x1c2c <gpio_keys_show_GamekeyStatus+0x8c>
    1bc8: 91044134     	add	x20, x9, #0x110
    1bcc: 14000004     	b	0x1bdc <gpio_keys_show_GamekeyStatus+0x3c>
    1bd0: f1000508     	subs	x8, x8, #0x1
    1bd4: 91044294     	add	x20, x20, #0x110
    1bd8: 540002a0     	b.eq	0x1c2c <gpio_keys_show_GamekeyStatus+0x8c>
    1bdc: f8538289     	ldur	x9, [x20, #-0xc8]
    1be0: b4ffff89     	cbz	x9, 0x1bd0 <gpio_keys_show_GamekeyStatus+0x30>
    1be4: f855028a     	ldur	x10, [x20, #-0xb0]
    1be8: 7940014a     	ldrh	w10, [x10]
    1bec: 71003d5f     	cmp	w10, #0xf
    1bf0: 54ffff01     	b.ne	0x1bd0 <gpio_keys_show_GamekeyStatus+0x30>
    1bf4: b9401929     	ldr	w9, [x9, #0x18]
    1bf8: 7100153f     	cmp	w9, #0x5
    1bfc: 54fffea1     	b.ne	0x1bd0 <gpio_keys_show_GamekeyStatus+0x30>
    1c00: f8548280     	ldur	x0, [x20, #-0xb8]
    1c04: 94000000     	bl	0x1c04 <gpio_keys_show_GamekeyStatus+0x64>
		0000000000001c04:  R_AARCH64_CALL26	gpiod_get_value_cansleep
    1c08: b9400288     	ldr	w8, [x20]
    1c0c: 2a0003f4     	mov	w20, w0
    1c10: 2a0803e0     	mov	w0, w8
    1c14: 94000000     	bl	0x1c14 <gpio_keys_show_GamekeyStatus+0x74>
		0000000000001c14:  R_AARCH64_CALL26	gpio_to_desc
    1c18: 94000000     	bl	0x1c18 <gpio_keys_show_GamekeyStatus+0x78>
		0000000000001c18:  R_AARCH64_CALL26	gpiod_get_raw_value
    1c1c: 7100029f     	cmp	w20, #0x0
    1c20: 7a400804     	ccmp	w0, #0x0, #0x4, eq
    1c24: 1a9f07f4     	cset	w20, ne
    1c28: 14000002     	b	0x1c30 <gpio_keys_show_GamekeyStatus+0x90>
    1c2c: 12800014     	mov	w20, #-0x1              // =-1
    1c30: 90000000     	adrp	x0, 0x1000 <gpio_keys_gpio_report_event+0x94>
		0000000000001c30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d
    1c34: 91000000     	add	x0, x0, #0x0
		0000000000001c34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d
    1c38: 2a1403e1     	mov	w1, w20
    1c3c: 94000000     	bl	0x1c3c <gpio_keys_show_GamekeyStatus+0x9c>
		0000000000001c3c:  R_AARCH64_CALL26	_printk
    1c40: 90000002     	adrp	x2, 0x1000 <gpio_keys_gpio_report_event+0x94>
		0000000000001c40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cf
    1c44: 91000042     	add	x2, x2, #0x0
		0000000000001c44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cf
    1c48: aa1303e0     	mov	x0, x19
    1c4c: 52800081     	mov	w1, #0x4                // =4
    1c50: 2a1403e3     	mov	w3, w20
    1c54: 94000000     	bl	0x1c54 <gpio_keys_show_GamekeyStatus+0xb4>
		0000000000001c54:  R_AARCH64_CALL26	snprintf
    1c58: 93407c00     	sxtw	x0, w0
    1c5c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1c60: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1c64: d50323bf     	autiasp
    1c68: d65f03c0     	ret
