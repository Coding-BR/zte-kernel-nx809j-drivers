
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <nubia_gpio_ctrl1>:
       4: d503233f     	paciasp
       8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
       c: 910003fd     	mov	x29, sp
      10: f9405408     	ldr	x8, [x0, #0xa8]
      14: b4000108     	cbz	x8, 0x34 <nubia_gpio_ctrl1+0x30>
      18: f9400901     	ldr	x1, [x8, #0x10]
      1c: b4000181     	cbz	x1, 0x4c <nubia_gpio_ctrl1+0x48>
      20: f9400100     	ldr	x0, [x8]
      24: 94000000     	bl	0x24 <nubia_gpio_ctrl1+0x20>
		0000000000000024:  R_AARCH64_CALL26	pinctrl_select_state
      28: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      2c: d50323bf     	autiasp
      30: d65f03c0     	ret
      34: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000034:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x40c
      38: 91000021     	add	x1, x1, #0x0
		0000000000000038:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x40c
      3c: 91004000     	add	x0, x0, #0x10
      40: 94000000     	bl	0x40 <nubia_gpio_ctrl1+0x3c>
		0000000000000040:  R_AARCH64_CALL26	_dev_err
      44: 128002a0     	mov	w0, #-0x16              // =-22
      48: 17fffff8     	b	0x28 <nubia_gpio_ctrl1+0x24>
      4c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000004c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x249
      50: 91000000     	add	x0, x0, #0x0
		0000000000000050:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x249
      54: 94000000     	bl	0x54 <nubia_gpio_ctrl1+0x50>
		0000000000000054:  R_AARCH64_CALL26	_printk
      58: 128002a0     	mov	w0, #-0x16              // =-22
      5c: 17fffff3     	b	0x28 <nubia_gpio_ctrl1+0x24>
