
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c64 <gpio_keys_close>:
     c64: f9416408     	ldr	x8, [x0, #0x2c8]
     c68: f9400108     	ldr	x8, [x8]
     c6c: f9401108     	ldr	x8, [x8, #0x20]
     c70: b40001c8     	cbz	x8, 0xca8 <gpio_keys_close+0x44>
     c74: d503233f     	paciasp
     c78: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     c7c: 910003fd     	mov	x29, sp
     c80: f9414800     	ldr	x0, [x0, #0x290]
     c84: b85fc110     	ldur	w16, [x8, #-0x4]
     c88: 72971911     	movk	w17, #0xb8c8
     c8c: 72ad9031     	movk	w17, #0x6c81, lsl #16
     c90: 6b11021f     	cmp	w16, w17
     c94: 54000040     	b.eq	0xc9c <gpio_keys_close+0x38>
     c98: d4304500     	brk	#0x8228
     c9c: d63f0100     	blr	x8
     ca0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     ca4: d50323bf     	autiasp
     ca8: d65f03c0     	ret
