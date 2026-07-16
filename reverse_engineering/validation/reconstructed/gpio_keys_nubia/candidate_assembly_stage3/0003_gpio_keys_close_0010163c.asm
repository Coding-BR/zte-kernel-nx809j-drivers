
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000f2c <gpio_keys_close>:
     f2c: f9416408     	ldr	x8, [x0, #0x2c8]
     f30: f9400108     	ldr	x8, [x8]
     f34: f9401108     	ldr	x8, [x8, #0x20]
     f38: b40001c8     	cbz	x8, 0xf70 <gpio_keys_close+0x44>
     f3c: d503233f     	paciasp
     f40: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     f44: 910003fd     	mov	x29, sp
     f48: f9414800     	ldr	x0, [x0, #0x290]
     f4c: b85fc110     	ldur	w16, [x8, #-0x4]
     f50: 72971911     	movk	w17, #0xb8c8
     f54: 72ad9031     	movk	w17, #0x6c81, lsl #16
     f58: 6b11021f     	cmp	w16, w17
     f5c: 54000040     	b.eq	0xf64 <gpio_keys_close+0x38>
     f60: d4304500     	brk	#0x8228
     f64: d63f0100     	blr	x8
     f68: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     f6c: d50323bf     	autiasp
     f70: d65f03c0     	ret
