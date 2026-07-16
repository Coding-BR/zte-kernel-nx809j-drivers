
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000e20 <gpio_keys_shutdown>:
     e20: d503233f     	paciasp
     e24: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     e28: f9000bf3     	str	x19, [sp, #0x10]
     e2c: 910003fd     	mov	x29, sp
     e30: aa0003f3     	mov	x19, x0
     e34: 91004000     	add	x0, x0, #0x10
     e38: 9400016f     	bl	0x13f4 <gpio_keys_suspend>
     e3c: 350000a0     	cbnz	w0, 0xe50 <gpio_keys_shutdown+0x30>
     e40: f9400bf3     	ldr	x19, [sp, #0x10]
     e44: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     e48: d50323bf     	autiasp
     e4c: d65f03c0     	ret
     e50: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x323
     e54: 91000021     	add	x1, x1, #0x0
		0000000000000e54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x323
     e58: 91004260     	add	x0, x19, #0x10
     e5c: 94000000     	bl	0xe5c <gpio_keys_shutdown+0x3c>
		0000000000000e5c:  R_AARCH64_CALL26	_dev_err
     e60: 17fffff8     	b	0xe40 <gpio_keys_shutdown+0x20>
