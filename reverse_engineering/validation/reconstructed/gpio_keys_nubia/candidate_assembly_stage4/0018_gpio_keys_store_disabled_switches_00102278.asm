
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001b60 <gpio_keys_store_disabled_switches>:
    1b60: d503233f     	paciasp
    1b64: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1b68: f9000bf3     	str	x19, [sp, #0x10]
    1b6c: 910003fd     	mov	x29, sp
    1b70: f9404c00     	ldr	x0, [x0, #0x98]
    1b74: aa0203e1     	mov	x1, x2
    1b78: 528000a2     	mov	w2, #0x5                // =5
    1b7c: aa0303f3     	mov	x19, x3
    1b80: 97ffff23     	bl	0x180c <gpio_keys_attr_store_helper>
    1b84: f100001f     	cmp	x0, #0x0
    1b88: 9a800260     	csel	x0, x19, x0, eq
    1b8c: f9400bf3     	ldr	x19, [sp, #0x10]
    1b90: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1b94: d50323bf     	autiasp
    1b98: d65f03c0     	ret
