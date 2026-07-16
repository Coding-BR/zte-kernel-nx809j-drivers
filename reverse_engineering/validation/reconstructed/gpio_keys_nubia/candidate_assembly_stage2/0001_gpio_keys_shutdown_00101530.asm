
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000dcc <gpio_keys_shutdown>:
     dcc: d503233f     	paciasp
     dd0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     dd4: f9000bf3     	str	x19, [sp, #0x10]
     dd8: 910003fd     	mov	x29, sp
     ddc: aa0003f3     	mov	x19, x0
     de0: 91004000     	add	x0, x0, #0x10
     de4: 9400016f     	bl	0x13a0 <gpio_keys_suspend>
     de8: 350000a0     	cbnz	w0, 0xdfc <gpio_keys_shutdown+0x30>
     dec: f9400bf3     	ldr	x19, [sp, #0x10]
     df0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     df4: d50323bf     	autiasp
     df8: d65f03c0     	ret
     dfc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000dfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x319
     e00: 91000021     	add	x1, x1, #0x0
		0000000000000e00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x319
     e04: 91004260     	add	x0, x19, #0x10
     e08: 94000000     	bl	0xe08 <gpio_keys_shutdown+0x3c>
		0000000000000e08:  R_AARCH64_CALL26	_dev_err
     e0c: 17fffff8     	b	0xdec <gpio_keys_shutdown+0x20>
