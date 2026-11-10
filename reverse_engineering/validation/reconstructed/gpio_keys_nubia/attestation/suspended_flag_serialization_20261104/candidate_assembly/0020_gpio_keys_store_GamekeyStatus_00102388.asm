
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b20 <gpio_keys_store_GamekeyStatus>:
     b20: d503233f     	paciasp
     b24: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     b28: f9000bf3     	str	x19, [sp, #0x10]
     b2c: 910003fd     	mov	x29, sp
     b30: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b30:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_store_GamekeyStatus_log
     b34: 91000000     	add	x0, x0, #0x0
		0000000000000b34:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_store_GamekeyStatus_log
     b38: aa0303f3     	mov	x19, x3
     b3c: 94000000     	bl	0xb3c <gpio_keys_store_GamekeyStatus+0x1c>
		0000000000000b3c:  R_AARCH64_CALL26	_printk
     b40: aa1303e0     	mov	x0, x19
     b44: f9400bf3     	ldr	x19, [sp, #0x10]
     b48: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     b4c: d50323bf     	autiasp
     b50: d65f03c0     	ret
