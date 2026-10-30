
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000009cc <nubia_get_gpio_status>:
     9cc: d503233f     	paciasp
     9d0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     9d4: f9000bf3     	str	x19, [sp, #0x10]
     9d8: 910003fd     	mov	x29, sp
     9dc: 2a0003f3     	mov	w19, w0
     9e0: 94000000     	bl	0x9e0 <nubia_get_gpio_status+0x14>
		00000000000009e0:  R_AARCH64_CALL26	gpio_to_desc
     9e4: 94000000     	bl	0x9e4 <nubia_get_gpio_status+0x18>
		00000000000009e4:  R_AARCH64_CALL26	gpiod_direction_input
     9e8: 52800020     	mov	w0, #0x1                // =1
     9ec: 94000000     	bl	0x9ec <nubia_get_gpio_status+0x20>
		00000000000009ec:  R_AARCH64_CALL26	msleep
     9f0: 2a1303e0     	mov	w0, w19
     9f4: 94000000     	bl	0x9f4 <nubia_get_gpio_status+0x28>
		00000000000009f4:  R_AARCH64_CALL26	gpio_to_desc
     9f8: 94000000     	bl	0x9f8 <nubia_get_gpio_status+0x2c>
		00000000000009f8:  R_AARCH64_CALL26	gpiod_get_raw_value
     9fc: 90000008     	adrp	x8, 0x0 <.text>
		00000000000009fc:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_bss_base+0x18
     a00: b9400108     	ldr	w8, [x8]
		0000000000000a00:  R_AARCH64_LDST32_ABS_LO12_NC	nubia_hw_exact_bss_base+0x18
     a04: 7100051f     	cmp	w8, #0x1
     a08: 540000a0     	b.eq	0xa1c <nubia_get_gpio_status+0x50>
     a0c: f9400bf3     	ldr	x19, [sp, #0x10]
     a10: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     a14: d50323bf     	autiasp
     a18: d65f03c0     	ret
     a1c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000a1c:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x5f9
     a20: 91000108     	add	x8, x8, #0x0
		0000000000000a20:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x5f9
     a24: 12001c01     	and	w1, w0, #0xff
     a28: 2a0003f3     	mov	w19, w0
     a2c: aa0803e0     	mov	x0, x8
     a30: 94000000     	bl	0xa30 <nubia_get_gpio_status+0x64>
		0000000000000a30:  R_AARCH64_CALL26	_printk
     a34: 2a1303e0     	mov	w0, w19
     a38: 17fffff5     	b	0xa0c <nubia_get_gpio_status+0x40>
