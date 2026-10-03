
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000003e8 <gpio_keys_store_disabled_keys>:
     3e8: d503233f     	paciasp
     3ec: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     3f0: f9000bf3     	str	x19, [sp, #0x10]
     3f4: 910003fd     	mov	x29, sp
     3f8: f9404c00     	ldr	x0, [x0, #0x98]
     3fc: aa0203e1     	mov	x1, x2
     400: 52800022     	mov	w2, #0x1                // =1
     404: aa0303f3     	mov	x19, x3
     408: 94000000     	bl	0x408 <gpio_keys_store_disabled_keys+0x20>
		0000000000000408:  R_AARCH64_CALL26	gpio_keys_attr_store_helper
     40c: f100001f     	cmp	x0, #0x0
     410: 9a800260     	csel	x0, x19, x0, eq
     414: f9400bf3     	ldr	x19, [sp, #0x10]
     418: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     41c: d50323bf     	autiasp
     420: d65f03c0     	ret
