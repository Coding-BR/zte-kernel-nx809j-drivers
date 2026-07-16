
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ed8 <gpio_keys_close>:
     ed8: f9416408     	ldr	x8, [x0, #0x2c8]
     edc: f9400108     	ldr	x8, [x8]
     ee0: f9401108     	ldr	x8, [x8, #0x20]
     ee4: b40001c8     	cbz	x8, 0xf1c <gpio_keys_close+0x44>
     ee8: d503233f     	paciasp
     eec: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     ef0: 910003fd     	mov	x29, sp
     ef4: f9414800     	ldr	x0, [x0, #0x290]
     ef8: b85fc110     	ldur	w16, [x8, #-0x4]
     efc: 72971911     	movk	w17, #0xb8c8
     f00: 72ad9031     	movk	w17, #0x6c81, lsl #16
     f04: 6b11021f     	cmp	w16, w17
     f08: 54000040     	b.eq	0xf10 <gpio_keys_close+0x38>
     f0c: d4304500     	brk	#0x8228
     f10: d63f0100     	blr	x8
     f14: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     f18: d50323bf     	autiasp
     f1c: d65f03c0     	ret
