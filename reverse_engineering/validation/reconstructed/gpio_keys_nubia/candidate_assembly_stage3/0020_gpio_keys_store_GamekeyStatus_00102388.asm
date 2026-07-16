
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001c78 <gpio_keys_store_GamekeyStatus>:
    1c78: d503233f     	paciasp
    1c7c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1c80: f9000bf3     	str	x19, [sp, #0x10]
    1c84: 910003fd     	mov	x29, sp
    1c88: 90000000     	adrp	x0, 0x1000 <gpio_keys_gpio_report_event+0x8c>
		0000000000001c88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x386
    1c8c: 91000000     	add	x0, x0, #0x0
		0000000000001c8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x386
    1c90: aa0303f3     	mov	x19, x3
    1c94: 94000000     	bl	0x1c94 <gpio_keys_store_GamekeyStatus+0x1c>
		0000000000001c94:  R_AARCH64_CALL26	_printk
    1c98: aa1303e0     	mov	x0, x19
    1c9c: f9400bf3     	ldr	x19, [sp, #0x10]
    1ca0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1ca4: d50323bf     	autiasp
    1ca8: d65f03c0     	ret
