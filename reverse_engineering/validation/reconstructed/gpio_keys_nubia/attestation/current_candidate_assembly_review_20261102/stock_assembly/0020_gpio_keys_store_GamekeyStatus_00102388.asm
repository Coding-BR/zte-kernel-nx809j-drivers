
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001c70 <gpio_keys_store_GamekeyStatus>:
    1c70: d503233f     	paciasp
    1c74: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1c78: f9000bf3     	str	x19, [sp, #0x10]
    1c7c: 910003fd     	mov	x29, sp
    1c80: 90000000     	adrp	x0, 0x1000 <gpio_keys_gpio_report_event+0x94>
		0000000000001c80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x386
    1c84: 91000000     	add	x0, x0, #0x0
		0000000000001c84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x386
    1c88: aa0303f3     	mov	x19, x3
    1c8c: 94000000     	bl	0x1c8c <gpio_keys_store_GamekeyStatus+0x1c>
		0000000000001c8c:  R_AARCH64_CALL26	_printk
    1c90: aa1303e0     	mov	x0, x19
    1c94: f9400bf3     	ldr	x19, [sp, #0x10]
    1c98: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1c9c: d50323bf     	autiasp
    1ca0: d65f03c0     	ret
