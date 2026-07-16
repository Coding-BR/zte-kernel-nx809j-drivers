
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001c24 <gpio_keys_store_GamekeyStatus>:
    1c24: d503233f     	paciasp
    1c28: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1c2c: f9000bf3     	str	x19, [sp, #0x10]
    1c30: 910003fd     	mov	x29, sp
    1c34: 90000000     	adrp	x0, 0x1000 <gpio_keys_gpio_report_event+0xe0>
		0000000000001c34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37c
    1c38: 91000000     	add	x0, x0, #0x0
		0000000000001c38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37c
    1c3c: aa0303f3     	mov	x19, x3
    1c40: 94000000     	bl	0x1c40 <gpio_keys_store_GamekeyStatus+0x1c>
		0000000000001c40:  R_AARCH64_CALL26	_printk
    1c44: aa1303e0     	mov	x0, x19
    1c48: f9400bf3     	ldr	x19, [sp, #0x10]
    1c4c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1c50: d50323bf     	autiasp
    1c54: d65f03c0     	ret
