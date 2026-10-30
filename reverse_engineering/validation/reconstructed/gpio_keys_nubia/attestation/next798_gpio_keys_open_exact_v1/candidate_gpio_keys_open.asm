
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000004c <gpio_keys_open>:
      4c: d503233f     	paciasp
      50: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
      54: a90157f6     	stp	x22, x21, [sp, #0x10]
      58: a9024ff4     	stp	x20, x19, [sp, #0x20]
      5c: 910003fd     	mov	x29, sp
      60: f9416415     	ldr	x21, [x0, #0x2c8]
      64: f94002a8     	ldr	x8, [x21]
      68: f9400d09     	ldr	x9, [x8, #0x18]
      6c: b4000169     	cbz	x9, 0x98 <gpio_keys_open+0x4c>
      70: f9414800     	ldr	x0, [x0, #0x290]
      74: b85fc130     	ldur	w16, [x9, #-0x4]
      78: 72878171     	movk	w17, #0x3c0b
      7c: 72a54e11     	movk	w17, #0x2a70, lsl #16
      80: 6b11021f     	cmp	w16, w17
      84: 54000040     	b.eq	0x8c <gpio_keys_open+0x40>
      88: d4304520     	brk	#0x8229
      8c: d63f0120     	blr	x9
      90: 35000340     	cbnz	w0, 0xf8 <gpio_keys_open+0xac>
      94: f94002a8     	ldr	x8, [x21]
      98: b9400909     	ldr	w9, [x8, #0x8]
      9c: f94006b3     	ldr	x19, [x21, #0x8]
      a0: 7100053f     	cmp	w9, #0x1
      a4: 540001eb     	b.lt	0xe0 <gpio_keys_open+0x94>
      a8: aa1f03f6     	mov	x22, xzr
      ac: 910122b4     	add	x20, x21, #0x48
      b0: 14000006     	b	0xc8 <gpio_keys_open+0x7c>
      b4: b9800909     	ldrsw	x9, [x8, #0x8]
      b8: 910006d6     	add	x22, x22, #0x1
      bc: 91044294     	add	x20, x20, #0x110
      c0: eb0902df     	cmp	x22, x9
      c4: 540000ea     	b.ge	0xe0 <gpio_keys_open+0x94>
      c8: f9400a89     	ldr	x9, [x20, #0x10]
      cc: b4ffff49     	cbz	x9, 0xb4 <gpio_keys_open+0x68>
      d0: aa1403e0     	mov	x0, x20
      d4: 94000021     	bl	0x158 <gpio_keys_gpio_report_event>
      d8: f94002a8     	ldr	x8, [x21]
      dc: 17fffff6     	b	0xb4 <gpio_keys_open+0x68>
      e0: aa1303e0     	mov	x0, x19
      e4: 2a1f03e1     	mov	w1, wzr
      e8: 2a1f03e2     	mov	w2, wzr
      ec: 2a1f03e3     	mov	w3, wzr
      f0: 94000000     	bl	0xf0 <gpio_keys_open+0xa4>
		00000000000000f0:  R_AARCH64_CALL26	input_event
      f4: 2a1f03e0     	mov	w0, wzr
      f8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
      fc: a94157f6     	ldp	x22, x21, [sp, #0x10]
     100: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     104: d50323bf     	autiasp
     108: d65f03c0     	ret
