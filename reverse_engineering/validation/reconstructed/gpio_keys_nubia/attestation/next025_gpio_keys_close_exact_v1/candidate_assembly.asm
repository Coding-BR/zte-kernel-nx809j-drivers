
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c00 <gpio_keys_close>:
     c00: f9416408     	ldr	x8, [x0, #0x2c8]
     c04: f9400108     	ldr	x8, [x8]
     c08: f9401108     	ldr	x8, [x8, #0x20]
     c0c: b40001c8     	cbz	x8, 0xc44 <gpio_keys_close+0x44>
     c10: d503233f     	paciasp
     c14: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     c18: 910003fd     	mov	x29, sp
     c1c: f9414800     	ldr	x0, [x0, #0x290]
     c20: b85fc110     	ldur	w16, [x8, #-0x4]
     c24: 72971911     	movk	w17, #0xb8c8
     c28: 72ad9031     	movk	w17, #0x6c81, lsl #16
     c2c: 6b11021f     	cmp	w16, w17
     c30: 54000040     	b.eq	0xc38 <gpio_keys_close+0x38>
     c34: d4304500     	brk	#0x8228
     c38: d63f0100     	blr	x8
     c3c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     c40: d50323bf     	autiasp
     c44: d65f03c0     	ret
