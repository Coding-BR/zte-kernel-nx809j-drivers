
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000009d0 <gpio_keys_store_disabled_keys>:
     9d0: d503233f     	paciasp
     9d4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     9d8: f9000bf3     	str	x19, [sp, #0x10]
     9dc: 910003fd     	mov	x29, sp
     9e0: f9404c00     	ldr	x0, [x0, #0x98]
     9e4: aa0203e1     	mov	x1, x2
     9e8: 52800022     	mov	w2, #0x1                // =1
     9ec: aa0303f3     	mov	x19, x3
     9f0: 94000000     	bl	0x9f0 <gpio_keys_store_disabled_keys+0x20>
		00000000000009f0:  R_AARCH64_CALL26	gpio_keys_attr_store_helper
     9f4: f100001f     	cmp	x0, #0x0
     9f8: 9a800260     	csel	x0, x19, x0, eq
     9fc: f9400bf3     	ldr	x19, [sp, #0x10]
     a00: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     a04: d50323bf     	autiasp
     a08: d65f03c0     	ret
