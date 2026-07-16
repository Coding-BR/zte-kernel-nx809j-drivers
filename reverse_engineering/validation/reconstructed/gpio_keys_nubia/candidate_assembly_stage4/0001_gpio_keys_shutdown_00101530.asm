
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000e18 <gpio_keys_shutdown>:
     e18: d503233f     	paciasp
     e1c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     e20: f9000bf3     	str	x19, [sp, #0x10]
     e24: 910003fd     	mov	x29, sp
     e28: aa0003f3     	mov	x19, x0
     e2c: 91004000     	add	x0, x0, #0x10
     e30: 9400016f     	bl	0x13ec <gpio_keys_suspend>
     e34: 350000a0     	cbnz	w0, 0xe48 <gpio_keys_shutdown+0x30>
     e38: f9400bf3     	ldr	x19, [sp, #0x10]
     e3c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     e40: d50323bf     	autiasp
     e44: d65f03c0     	ret
     e48: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x323
     e4c: 91000021     	add	x1, x1, #0x0
		0000000000000e4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x323
     e50: 91004260     	add	x0, x19, #0x10
     e54: 94000000     	bl	0xe54 <gpio_keys_shutdown+0x3c>
		0000000000000e54:  R_AARCH64_CALL26	_dev_err
     e58: 17fffff8     	b	0xe38 <gpio_keys_shutdown+0x20>
