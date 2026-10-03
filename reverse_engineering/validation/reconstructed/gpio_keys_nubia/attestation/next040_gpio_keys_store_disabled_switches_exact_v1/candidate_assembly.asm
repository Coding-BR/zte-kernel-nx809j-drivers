
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000009ac <gpio_keys_store_disabled_switches>:
     9ac: d503233f     	paciasp
     9b0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     9b4: f9000bf3     	str	x19, [sp, #0x10]
     9b8: 910003fd     	mov	x29, sp
     9bc: f9404c00     	ldr	x0, [x0, #0x98]
     9c0: aa0203e1     	mov	x1, x2
     9c4: 528000a2     	mov	w2, #0x5                // =5
     9c8: aa0303f3     	mov	x19, x3
     9cc: 97ffff23     	bl	0x658 <gpio_keys_attr_store_helper+0xd0>
		00000000000009cc:  R_AARCH64_CALL26	gpio_keys_attr_store_helper
     9d0: f100001f     	cmp	x0, #0x0
     9d4: 9a800260     	csel	x0, x19, x0, eq
     9d8: f9400bf3     	ldr	x19, [sp, #0x10]
     9dc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     9e0: d50323bf     	autiasp
     9e4: d65f03c0     	ret
