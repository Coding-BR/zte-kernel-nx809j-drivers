
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b58 <gpio_keys_shutdown>:
     b58: d503233f     	paciasp
     b5c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     b60: f9000bf3     	str	x19, [sp, #0x10]
     b64: 910003fd     	mov	x29, sp
     b68: aa0003f3     	mov	x19, x0
     b6c: 91004000     	add	x0, x0, #0x10
     b70: 94000000     	bl	0xb70 <gpio_keys_shutdown+0x18>
		0000000000000b70:  R_AARCH64_CALL26	gpio_keys_suspend
     b74: 350000a0     	cbnz	w0, 0xb88 <gpio_keys_shutdown+0x30>
     b78: f9400bf3     	ldr	x19, [sp, #0x10]
     b7c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     b80: d50323bf     	autiasp
     b84: d65f03c0     	ret
     b88: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa1e
     b8c: 91000021     	add	x1, x1, #0x0
		0000000000000b8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa1e
     b90: 91004260     	add	x0, x19, #0x10
     b94: 94000000     	bl	0xb94 <gpio_keys_shutdown+0x3c>
		0000000000000b94:  R_AARCH64_CALL26	_dev_err
     b98: 17fffff8     	b	0xb78 <gpio_keys_shutdown+0x20>
