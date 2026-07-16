
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000aac <nubia_get_gpio_status>:
     aac: d503233f     	paciasp
     ab0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     ab4: f9000bf3     	str	x19, [sp, #0x10]
     ab8: 910003fd     	mov	x29, sp
     abc: 2a0003f3     	mov	w19, w0
     ac0: 94000000     	bl	0xac0 <nubia_get_gpio_status+0x14>
		0000000000000ac0:  R_AARCH64_CALL26	gpio_to_desc
     ac4: 94000000     	bl	0xac4 <nubia_get_gpio_status+0x18>
		0000000000000ac4:  R_AARCH64_CALL26	gpiod_direction_input
     ac8: 52800020     	mov	w0, #0x1                // =1
     acc: 94000000     	bl	0xacc <nubia_get_gpio_status+0x20>
		0000000000000acc:  R_AARCH64_CALL26	msleep
     ad0: 2a1303e0     	mov	w0, w19
     ad4: 94000000     	bl	0xad4 <nubia_get_gpio_status+0x28>
		0000000000000ad4:  R_AARCH64_CALL26	gpio_to_desc
     ad8: 94000000     	bl	0xad8 <nubia_get_gpio_status+0x2c>
		0000000000000ad8:  R_AARCH64_CALL26	gpiod_get_raw_value
     adc: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000adc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     ae0: b9400108     	ldr	w8, [x8]
		0000000000000ae0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     ae4: 7100051f     	cmp	w8, #0x1
     ae8: 540000a0     	b.eq	0xafc <nubia_get_gpio_status+0x50>
     aec: f9400bf3     	ldr	x19, [sp, #0x10]
     af0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     af4: d50323bf     	autiasp
     af8: d65f03c0     	ret
     afc: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000afc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f9
     b00: 91000108     	add	x8, x8, #0x0
		0000000000000b00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f9
     b04: 12001c01     	and	w1, w0, #0xff
     b08: 2a0003f3     	mov	w19, w0
     b0c: aa0803e0     	mov	x0, x8
     b10: 94000000     	bl	0xb10 <nubia_get_gpio_status+0x64>
		0000000000000b10:  R_AARCH64_CALL26	_printk
     b14: 2a1303e0     	mov	w0, w19
     b18: 17fffff5     	b	0xaec <nubia_get_gpio_status+0x40>
