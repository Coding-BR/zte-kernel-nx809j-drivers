
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <gpio_keys_shutdown>:
       4: d503233f     	paciasp
       8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
       c: f9000bf3     	str	x19, [sp, #0x10]
      10: 910003fd     	mov	x29, sp
      14: aa0003f3     	mov	x19, x0
      18: 91004000     	add	x0, x0, #0x10
      1c: 9400000c     	bl	0x4c <gpio_keys_suspend>
      20: 350000a0     	cbnz	w0, 0x34 <gpio_keys_shutdown+0x30>
      24: f9400bf3     	ldr	x19, [sp, #0x10]
      28: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      2c: d50323bf     	autiasp
      30: d65f03c0     	ret
      34: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000034:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x323
      38: 91000021     	add	x1, x1, #0x0
		0000000000000038:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x323
      3c: 91004260     	add	x0, x19, #0x10
      40: 94000000     	bl	0x40 <gpio_keys_shutdown+0x3c>
		0000000000000040:  R_AARCH64_CALL26	_dev_err
      44: 17fffff8     	b	0x24 <gpio_keys_shutdown+0x20>
