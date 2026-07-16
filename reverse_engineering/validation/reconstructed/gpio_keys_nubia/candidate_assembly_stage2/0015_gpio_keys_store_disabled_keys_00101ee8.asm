
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001784 <gpio_keys_store_disabled_keys>:
    1784: d503233f     	paciasp
    1788: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    178c: f9000bf3     	str	x19, [sp, #0x10]
    1790: 910003fd     	mov	x29, sp
    1794: f9404c00     	ldr	x0, [x0, #0x98]
    1798: aa0203e1     	mov	x1, x2
    179c: 52800022     	mov	w2, #0x1                // =1
    17a0: aa0303f3     	mov	x19, x3
    17a4: 94000007     	bl	0x17c0 <gpio_keys_attr_store_helper>
    17a8: f100001f     	cmp	x0, #0x0
    17ac: 9a800260     	csel	x0, x19, x0, eq
    17b0: f9400bf3     	ldr	x19, [sp, #0x10]
    17b4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    17b8: d50323bf     	autiasp
    17bc: d65f03c0     	ret
