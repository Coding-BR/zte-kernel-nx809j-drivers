
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001b68 <gpio_keys_store_disabled_switches>:
    1b68: d503233f     	paciasp
    1b6c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1b70: f9000bf3     	str	x19, [sp, #0x10]
    1b74: 910003fd     	mov	x29, sp
    1b78: f9404c00     	ldr	x0, [x0, #0x98]
    1b7c: aa0203e1     	mov	x1, x2
    1b80: 528000a2     	mov	w2, #0x5                // =5
    1b84: aa0303f3     	mov	x19, x3
    1b88: 97ffff23     	bl	0x1814 <gpio_keys_attr_store_helper>
    1b8c: f100001f     	cmp	x0, #0x0
    1b90: 9a800260     	csel	x0, x19, x0, eq
    1b94: f9400bf3     	ldr	x19, [sp, #0x10]
    1b98: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1b9c: d50323bf     	autiasp
    1ba0: d65f03c0     	ret
