
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ba0 <gpio_keys_open>:
     ba0: d503233f     	paciasp
     ba4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     ba8: a90157f6     	stp	x22, x21, [sp, #0x10]
     bac: a9024ff4     	stp	x20, x19, [sp, #0x20]
     bb0: 910003fd     	mov	x29, sp
     bb4: f9416415     	ldr	x21, [x0, #0x2c8]
     bb8: f94002a8     	ldr	x8, [x21]
     bbc: f9400d09     	ldr	x9, [x8, #0x18]
     bc0: b4000169     	cbz	x9, 0xbec <gpio_keys_open+0x4c>
     bc4: f9414800     	ldr	x0, [x0, #0x290]
     bc8: b85fc130     	ldur	w16, [x9, #-0x4]
     bcc: 72878171     	movk	w17, #0x3c0b
     bd0: 72a54e11     	movk	w17, #0x2a70, lsl #16
     bd4: 6b11021f     	cmp	w16, w17
     bd8: 54000040     	b.eq	0xbe0 <gpio_keys_open+0x40>
     bdc: d4304520     	brk	#0x8229
     be0: d63f0120     	blr	x9
     be4: 35000340     	cbnz	w0, 0xc4c <gpio_keys_open+0xac>
     be8: f94002a8     	ldr	x8, [x21]
     bec: b9400909     	ldr	w9, [x8, #0x8]
     bf0: f94006b3     	ldr	x19, [x21, #0x8]
     bf4: 7100053f     	cmp	w9, #0x1
     bf8: 540001eb     	b.lt	0xc34 <gpio_keys_open+0x94>
     bfc: aa1f03f6     	mov	x22, xzr
     c00: 910122b4     	add	x20, x21, #0x48
     c04: 14000006     	b	0xc1c <gpio_keys_open+0x7c>
     c08: b9800909     	ldrsw	x9, [x8, #0x8]
     c0c: 910006d6     	add	x22, x22, #0x1
     c10: 91044294     	add	x20, x20, #0x110
     c14: eb0902df     	cmp	x22, x9
     c18: 540000ea     	b.ge	0xc34 <gpio_keys_open+0x94>
     c1c: f9400a89     	ldr	x9, [x20, #0x10]
     c20: b4ffff49     	cbz	x9, 0xc08 <gpio_keys_open+0x68>
     c24: aa1403e0     	mov	x0, x20
     c28: 94000000     	bl	0xc28 <gpio_keys_open+0x88>
		0000000000000c28:  R_AARCH64_CALL26	gpio_keys_gpio_report_event
     c2c: f94002a8     	ldr	x8, [x21]
     c30: 17fffff6     	b	0xc08 <gpio_keys_open+0x68>
     c34: aa1303e0     	mov	x0, x19
     c38: 2a1f03e1     	mov	w1, wzr
     c3c: 2a1f03e2     	mov	w2, wzr
     c40: 2a1f03e3     	mov	w3, wzr
     c44: 94000000     	bl	0xc44 <gpio_keys_open+0xa4>
		0000000000000c44:  R_AARCH64_CALL26	input_event
     c48: 2a1f03e0     	mov	w0, wzr
     c4c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     c50: a94157f6     	ldp	x22, x21, [sp, #0x10]
     c54: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     c58: d50323bf     	autiasp
     c5c: d65f03c0     	ret
