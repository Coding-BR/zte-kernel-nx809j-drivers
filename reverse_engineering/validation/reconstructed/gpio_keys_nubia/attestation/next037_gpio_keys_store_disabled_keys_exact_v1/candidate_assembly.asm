
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000096c <gpio_keys_store_disabled_keys>:
     96c: d503233f     	paciasp
     970: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     974: f9000bf3     	str	x19, [sp, #0x10]
     978: 910003fd     	mov	x29, sp
     97c: f9404c00     	ldr	x0, [x0, #0x98]
     980: aa0203e1     	mov	x1, x2
     984: 52800022     	mov	w2, #0x1                // =1
     988: aa0303f3     	mov	x19, x3
     98c: 94000000     	bl	0x98c <gpio_keys_store_disabled_keys+0x20>
		000000000000098c:  R_AARCH64_CALL26	gpio_keys_attr_store_helper
     990: f100001f     	cmp	x0, #0x0
     994: 9a800260     	csel	x0, x19, x0, eq
     998: f9400bf3     	ldr	x19, [sp, #0x10]
     99c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     9a0: d50323bf     	autiasp
     9a4: d65f03c0     	ret
