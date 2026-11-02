
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000f24 <gpio_keys_close>:
     f24: f9416408     	ldr	x8, [x0, #0x2c8]
     f28: f9400108     	ldr	x8, [x8]
     f2c: f9401108     	ldr	x8, [x8, #0x20]
     f30: b40001c8     	cbz	x8, 0xf68 <gpio_keys_close+0x44>
     f34: d503233f     	paciasp
     f38: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     f3c: 910003fd     	mov	x29, sp
     f40: f9414800     	ldr	x0, [x0, #0x290]
     f44: b85fc110     	ldur	w16, [x8, #-0x4]
     f48: 72971911     	movk	w17, #0xb8c8
     f4c: 72ad9031     	movk	w17, #0x6c81, lsl #16
     f50: 6b11021f     	cmp	w16, w17
     f54: 54000040     	b.eq	0xf5c <gpio_keys_close+0x38>
     f58: d4304500     	brk	#0x8228
     f5c: d63f0100     	blr	x8
     f60: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     f64: d50323bf     	autiasp
     f68: d65f03c0     	ret
