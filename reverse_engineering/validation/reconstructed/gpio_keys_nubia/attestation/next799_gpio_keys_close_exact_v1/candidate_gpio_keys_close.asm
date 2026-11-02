
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000004c <gpio_keys_close>:
      4c: f9416408     	ldr	x8, [x0, #0x2c8]
      50: f9400108     	ldr	x8, [x8]
      54: f9401108     	ldr	x8, [x8, #0x20]
      58: b40001c8     	cbz	x8, 0x90 <gpio_keys_close+0x44>
      5c: d503233f     	paciasp
      60: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
      64: 910003fd     	mov	x29, sp
      68: f9414800     	ldr	x0, [x0, #0x290]
      6c: b85fc110     	ldur	w16, [x8, #-0x4]
      70: 72971911     	movk	w17, #0xb8c8
      74: 72ad9031     	movk	w17, #0x6c81, lsl #16
      78: 6b11021f     	cmp	w16, w17
      7c: 54000040     	b.eq	0x84 <gpio_keys_close+0x38>
      80: d4304500     	brk	#0x8228
      84: d63f0100     	blr	x8
      88: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      8c: d50323bf     	autiasp
      90: d65f03c0     	ret
