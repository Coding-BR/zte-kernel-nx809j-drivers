
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000007b8 <gpio_keys_show_GamekeyStatus>:
     7b8: d503233f     	paciasp
     7bc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     7c0: a9014ff4     	stp	x20, x19, [sp, #0x10]
     7c4: 910003fd     	mov	x29, sp
     7c8: f9404c09     	ldr	x9, [x0, #0x98]
     7cc: aa0203f3     	mov	x19, x2
     7d0: f9400128     	ldr	x8, [x9]
     7d4: b9400908     	ldr	w8, [x8, #0x8]
     7d8: 7100051f     	cmp	w8, #0x1
     7dc: 5400034b     	b.lt	0x844 <gpio_keys_show_GamekeyStatus+0x8c>
     7e0: 91044134     	add	x20, x9, #0x110
     7e4: 14000004     	b	0x7f4 <gpio_keys_show_GamekeyStatus+0x3c>
     7e8: f1000508     	subs	x8, x8, #0x1
     7ec: 91044294     	add	x20, x20, #0x110
     7f0: 540002a0     	b.eq	0x844 <gpio_keys_show_GamekeyStatus+0x8c>
     7f4: f8538289     	ldur	x9, [x20, #-0xc8]
     7f8: b4ffff89     	cbz	x9, 0x7e8 <gpio_keys_show_GamekeyStatus+0x30>
     7fc: f855028a     	ldur	x10, [x20, #-0xb0]
     800: 7940014a     	ldrh	w10, [x10]
     804: 71003d5f     	cmp	w10, #0xf
     808: 54ffff01     	b.ne	0x7e8 <gpio_keys_show_GamekeyStatus+0x30>
     80c: b9401929     	ldr	w9, [x9, #0x18]
     810: 7100153f     	cmp	w9, #0x5
     814: 54fffea1     	b.ne	0x7e8 <gpio_keys_show_GamekeyStatus+0x30>
     818: f8548280     	ldur	x0, [x20, #-0xb8]
     81c: 94000000     	bl	0x81c <gpio_keys_show_GamekeyStatus+0x64>
		000000000000081c:  R_AARCH64_CALL26	gpiod_get_value_cansleep
     820: b9400288     	ldr	w8, [x20]
     824: 2a0003f4     	mov	w20, w0
     828: 2a0803e0     	mov	w0, w8
     82c: 94000000     	bl	0x82c <gpio_keys_show_GamekeyStatus+0x74>
		000000000000082c:  R_AARCH64_CALL26	gpio_to_desc
     830: 94000000     	bl	0x830 <gpio_keys_show_GamekeyStatus+0x78>
		0000000000000830:  R_AARCH64_CALL26	gpiod_get_raw_value
     834: 7100029f     	cmp	w20, #0x0
     838: 7a400804     	ccmp	w0, #0x0, #0x4, eq
     83c: 1a9f07f4     	cset	w20, ne
     840: 14000002     	b	0x848 <gpio_keys_show_GamekeyStatus+0x90>
     844: 12800014     	mov	w20, #-0x1              // =-1
     848: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000848:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_show_GamekeyStatus_log
     84c: 91000000     	add	x0, x0, #0x0
		000000000000084c:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_show_GamekeyStatus_log
     850: 2a1403e1     	mov	w1, w20
     854: 94000000     	bl	0x854 <gpio_keys_show_GamekeyStatus+0x9c>
		0000000000000854:  R_AARCH64_CALL26	_printk
     858: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000858:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_show_GamekeyStatus_fmt
     85c: 91000042     	add	x2, x2, #0x0
		000000000000085c:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_show_GamekeyStatus_fmt
     860: aa1303e0     	mov	x0, x19
     864: 52800081     	mov	w1, #0x4                // =4
     868: 2a1403e3     	mov	w3, w20
     86c: 94000000     	bl	0x86c <gpio_keys_show_GamekeyStatus+0xb4>
		000000000000086c:  R_AARCH64_CALL26	snprintf
     870: 93407c00     	sxtw	x0, w0
     874: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     878: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     87c: d50323bf     	autiasp
     880: d65f03c0     	ret
