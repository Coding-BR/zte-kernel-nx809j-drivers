
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b08 <nubia_gpio_ctrl1>:
     b08: d503233f     	paciasp
     b0c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     b10: 910003fd     	mov	x29, sp
     b14: f9405408     	ldr	x8, [x0, #0xa8]
     b18: b4000108     	cbz	x8, 0xb38 <nubia_gpio_ctrl1+0x30>
     b1c: f9400901     	ldr	x1, [x8, #0x10]
     b20: b4000181     	cbz	x1, 0xb50 <nubia_gpio_ctrl1+0x48>
     b24: f9400100     	ldr	x0, [x8]
     b28: 94000000     	bl	0xb28 <nubia_gpio_ctrl1+0x20>
		0000000000000b28:  R_AARCH64_CALL26	pinctrl_select_state
     b2c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     b30: d50323bf     	autiasp
     b34: d65f03c0     	ret
     b38: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e2
     b3c: 91000021     	add	x1, x1, #0x0
		0000000000000b3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e2
     b40: 91004000     	add	x0, x0, #0x10
     b44: 94000000     	bl	0xb44 <nubia_gpio_ctrl1+0x3c>
		0000000000000b44:  R_AARCH64_CALL26	_dev_err
     b48: 128002a0     	mov	w0, #-0x16              // =-22
     b4c: 17fffff8     	b	0xb2c <nubia_gpio_ctrl1+0x24>
     b50: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6fe
     b54: 91000000     	add	x0, x0, #0x0
		0000000000000b54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6fe
     b58: 94000000     	bl	0xb58 <nubia_gpio_ctrl1+0x50>
		0000000000000b58:  R_AARCH64_CALL26	_printk
     b5c: 128002a0     	mov	w0, #-0x16              // =-22
     b60: 17fffff3     	b	0xb2c <nubia_gpio_ctrl1+0x24>
