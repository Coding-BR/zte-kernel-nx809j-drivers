
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000888 <gpio_keys_store_GamekeyStatus>:
     888: d503233f     	paciasp
     88c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     890: f9000bf3     	str	x19, [sp, #0x10]
     894: 910003fd     	mov	x29, sp
     898: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000898:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_store_GamekeyStatus_log
     89c: 91000000     	add	x0, x0, #0x0
		000000000000089c:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_store_GamekeyStatus_log
     8a0: aa0303f3     	mov	x19, x3
     8a4: 94000000     	bl	0x8a4 <gpio_keys_store_GamekeyStatus+0x1c>
		00000000000008a4:  R_AARCH64_CALL26	_printk
     8a8: aa1303e0     	mov	x0, x19
     8ac: f9400bf3     	ldr	x19, [sp, #0x10]
     8b0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     8b4: d50323bf     	autiasp
     8b8: d65f03c0     	ret
