
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000017d8 <gpio_keys_store_disabled_keys>:
    17d8: d503233f     	paciasp
    17dc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    17e0: f9000bf3     	str	x19, [sp, #0x10]
    17e4: 910003fd     	mov	x29, sp
    17e8: f9404c00     	ldr	x0, [x0, #0x98]
    17ec: aa0203e1     	mov	x1, x2
    17f0: 52800022     	mov	w2, #0x1                // =1
    17f4: aa0303f3     	mov	x19, x3
    17f8: 94000007     	bl	0x1814 <gpio_keys_attr_store_helper>
    17fc: f100001f     	cmp	x0, #0x0
    1800: 9a800260     	csel	x0, x19, x0, eq
    1804: f9400bf3     	ldr	x19, [sp, #0x10]
    1808: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    180c: d50323bf     	autiasp
    1810: d65f03c0     	ret
