
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a84 <nubia_get_gpio_status>:
     a84: d503233f     	paciasp
     a88: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     a8c: f9000bf3     	str	x19, [sp, #0x10]
     a90: 910003fd     	mov	x29, sp
     a94: 2a0003f3     	mov	w19, w0
     a98: 94000000     	bl	0xa98 <nubia_get_gpio_status+0x14>
		0000000000000a98:  R_AARCH64_CALL26	gpio_to_desc
     a9c: 94000000     	bl	0xa9c <nubia_get_gpio_status+0x18>
		0000000000000a9c:  R_AARCH64_CALL26	gpiod_direction_input
     aa0: 52800020     	mov	w0, #0x1                // =1
     aa4: 94000000     	bl	0xaa4 <nubia_get_gpio_status+0x20>
		0000000000000aa4:  R_AARCH64_CALL26	msleep
     aa8: 2a1303e0     	mov	w0, w19
     aac: 94000000     	bl	0xaac <nubia_get_gpio_status+0x28>
		0000000000000aac:  R_AARCH64_CALL26	gpio_to_desc
     ab0: 94000000     	bl	0xab0 <nubia_get_gpio_status+0x2c>
		0000000000000ab0:  R_AARCH64_CALL26	gpiod_get_raw_value
     ab4: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000ab4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     ab8: b9400108     	ldr	w8, [x8]
		0000000000000ab8:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     abc: 7100051f     	cmp	w8, #0x1
     ac0: 540000a0     	b.eq	0xad4 <nubia_get_gpio_status+0x50>
     ac4: f9400bf3     	ldr	x19, [sp, #0x10]
     ac8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     acc: d50323bf     	autiasp
     ad0: d65f03c0     	ret
     ad4: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000ad4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fd
     ad8: 91000108     	add	x8, x8, #0x0
		0000000000000ad8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fd
     adc: 12001c01     	and	w1, w0, #0xff
     ae0: 2a0003f3     	mov	w19, w0
     ae4: aa0803e0     	mov	x0, x8
     ae8: 94000000     	bl	0xae8 <nubia_get_gpio_status+0x64>
		0000000000000ae8:  R_AARCH64_CALL26	_printk
     aec: 2a1303e0     	mov	w0, w19
     af0: 17fffff5     	b	0xac4 <nubia_get_gpio_status+0x40>
