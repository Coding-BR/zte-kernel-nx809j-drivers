
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000018c4 <gpio_keys_store_disabled_keys>:
    18c4: d503233f     	paciasp
    18c8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    18cc: f9000bf3     	str	x19, [sp, #0x10]
    18d0: 910003fd     	mov	x29, sp
    18d4: f9404c00     	ldr	x0, [x0, #0x98]
    18d8: aa0203e1     	mov	x1, x2
    18dc: 52800022     	mov	w2, #0x1                // =1
    18e0: aa0303f3     	mov	x19, x3
    18e4: 94000007     	bl	0x1900 <gpio_keys_attr_store_helper>
    18e8: f100001f     	cmp	x0, #0x0
    18ec: 9a800260     	csel	x0, x19, x0, eq
    18f0: f9400bf3     	ldr	x19, [sp, #0x10]
    18f4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    18f8: d50323bf     	autiasp
    18fc: d65f03c0     	ret
