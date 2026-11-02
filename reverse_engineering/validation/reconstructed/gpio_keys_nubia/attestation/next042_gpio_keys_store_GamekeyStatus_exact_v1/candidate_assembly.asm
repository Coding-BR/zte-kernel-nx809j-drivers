
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000abc <gpio_keys_store_GamekeyStatus>:
     abc: d503233f     	paciasp
     ac0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     ac4: f9000bf3     	str	x19, [sp, #0x10]
     ac8: 910003fd     	mov	x29, sp
     acc: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000acc:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_store_GamekeyStatus_log
     ad0: 91000000     	add	x0, x0, #0x0
		0000000000000ad0:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_store_GamekeyStatus_log
     ad4: aa0303f3     	mov	x19, x3
     ad8: 94000000     	bl	0xad8 <gpio_keys_store_GamekeyStatus+0x1c>
		0000000000000ad8:  R_AARCH64_CALL26	_printk
     adc: aa1303e0     	mov	x0, x19
     ae0: f9400bf3     	ldr	x19, [sp, #0x10]
     ae4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     ae8: d50323bf     	autiasp
     aec: d65f03c0     	ret
