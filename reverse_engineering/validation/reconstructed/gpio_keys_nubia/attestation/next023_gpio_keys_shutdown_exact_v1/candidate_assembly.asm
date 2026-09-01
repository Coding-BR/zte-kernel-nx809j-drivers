
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000af4 <gpio_keys_shutdown>:
     af4: d503233f     	paciasp
     af8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     afc: f9000bf3     	str	x19, [sp, #0x10]
     b00: 910003fd     	mov	x29, sp
     b04: aa0003f3     	mov	x19, x0
     b08: 91004000     	add	x0, x0, #0x10
     b0c: 94000000     	bl	0xb0c <gpio_keys_shutdown+0x18>
		0000000000000b0c:  R_AARCH64_CALL26	gpio_keys_suspend
     b10: 350000a0     	cbnz	w0, 0xb24 <gpio_keys_shutdown+0x30>
     b14: f9400bf3     	ldr	x19, [sp, #0x10]
     b18: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     b1c: d50323bf     	autiasp
     b20: d65f03c0     	ret
     b24: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa1e
     b28: 91000021     	add	x1, x1, #0x0
		0000000000000b28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa1e
     b2c: 91004260     	add	x0, x19, #0x10
     b30: 94000000     	bl	0xb30 <gpio_keys_shutdown+0x3c>
		0000000000000b30:  R_AARCH64_CALL26	_dev_err
     b34: 17fffff8     	b	0xb14 <gpio_keys_shutdown+0x20>
