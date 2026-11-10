
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a10 <gpio_keys_store_disabled_switches>:
     a10: d503233f     	paciasp
     a14: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     a18: f9000bf3     	str	x19, [sp, #0x10]
     a1c: 910003fd     	mov	x29, sp
     a20: f9404c00     	ldr	x0, [x0, #0x98]
     a24: aa0203e1     	mov	x1, x2
     a28: 528000a2     	mov	w2, #0x5                // =5
     a2c: aa0303f3     	mov	x19, x3
     a30: 97ffff23     	bl	0x6bc <gpio_keys_attr_store_helper+0xd0>
		0000000000000a30:  R_AARCH64_CALL26	gpio_keys_attr_store_helper
     a34: f100001f     	cmp	x0, #0x0
     a38: 9a800260     	csel	x0, x19, x0, eq
     a3c: f9400bf3     	ldr	x19, [sp, #0x10]
     a40: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     a44: d50323bf     	autiasp
     a48: d65f03c0     	ret
