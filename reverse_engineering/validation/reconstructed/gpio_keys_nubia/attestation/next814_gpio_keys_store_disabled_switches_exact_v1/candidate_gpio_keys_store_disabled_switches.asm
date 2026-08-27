
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000778 <gpio_keys_store_disabled_switches>:
     778: d503233f     	paciasp
     77c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     780: f9000bf3     	str	x19, [sp, #0x10]
     784: 910003fd     	mov	x29, sp
     788: f9404c00     	ldr	x0, [x0, #0x98]
     78c: aa0203e1     	mov	x1, x2
     790: 528000a2     	mov	w2, #0x5                // =5
     794: aa0303f3     	mov	x19, x3
     798: 97ffff23     	bl	0x424 <gpio_keys_attr_store_helper+0xd0>
		0000000000000798:  R_AARCH64_CALL26	gpio_keys_attr_store_helper
     79c: f100001f     	cmp	x0, #0x0
     7a0: 9a800260     	csel	x0, x19, x0, eq
     7a4: f9400bf3     	ldr	x19, [sp, #0x10]
     7a8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     7ac: d50323bf     	autiasp
     7b0: d65f03c0     	ret
