
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000017d0 <gpio_keys_store_disabled_keys>:
    17d0: d503233f     	paciasp
    17d4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    17d8: f9000bf3     	str	x19, [sp, #0x10]
    17dc: 910003fd     	mov	x29, sp
    17e0: f9404c00     	ldr	x0, [x0, #0x98]
    17e4: aa0203e1     	mov	x1, x2
    17e8: 52800022     	mov	w2, #0x1                // =1
    17ec: aa0303f3     	mov	x19, x3
    17f0: 94000007     	bl	0x180c <gpio_keys_attr_store_helper>
    17f4: f100001f     	cmp	x0, #0x0
    17f8: 9a800260     	csel	x0, x19, x0, eq
    17fc: f9400bf3     	ldr	x19, [sp, #0x10]
    1800: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1804: d50323bf     	autiasp
    1808: d65f03c0     	ret
