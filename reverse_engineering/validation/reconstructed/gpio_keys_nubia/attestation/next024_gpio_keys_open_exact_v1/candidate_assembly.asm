
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b3c <gpio_keys_open>:
     b3c: d503233f     	paciasp
     b40: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     b44: a90157f6     	stp	x22, x21, [sp, #0x10]
     b48: a9024ff4     	stp	x20, x19, [sp, #0x20]
     b4c: 910003fd     	mov	x29, sp
     b50: f9416415     	ldr	x21, [x0, #0x2c8]
     b54: f94002a8     	ldr	x8, [x21]
     b58: f9400d09     	ldr	x9, [x8, #0x18]
     b5c: b4000169     	cbz	x9, 0xb88 <gpio_keys_open+0x4c>
     b60: f9414800     	ldr	x0, [x0, #0x290]
     b64: b85fc130     	ldur	w16, [x9, #-0x4]
     b68: 72878171     	movk	w17, #0x3c0b
     b6c: 72a54e11     	movk	w17, #0x2a70, lsl #16
     b70: 6b11021f     	cmp	w16, w17
     b74: 54000040     	b.eq	0xb7c <gpio_keys_open+0x40>
     b78: d4304520     	brk	#0x8229
     b7c: d63f0120     	blr	x9
     b80: 35000340     	cbnz	w0, 0xbe8 <gpio_keys_open+0xac>
     b84: f94002a8     	ldr	x8, [x21]
     b88: b9400909     	ldr	w9, [x8, #0x8]
     b8c: f94006b3     	ldr	x19, [x21, #0x8]
     b90: 7100053f     	cmp	w9, #0x1
     b94: 540001eb     	b.lt	0xbd0 <gpio_keys_open+0x94>
     b98: aa1f03f6     	mov	x22, xzr
     b9c: 910122b4     	add	x20, x21, #0x48
     ba0: 14000006     	b	0xbb8 <gpio_keys_open+0x7c>
     ba4: b9800909     	ldrsw	x9, [x8, #0x8]
     ba8: 910006d6     	add	x22, x22, #0x1
     bac: 91044294     	add	x20, x20, #0x110
     bb0: eb0902df     	cmp	x22, x9
     bb4: 540000ea     	b.ge	0xbd0 <gpio_keys_open+0x94>
     bb8: f9400a89     	ldr	x9, [x20, #0x10]
     bbc: b4ffff49     	cbz	x9, 0xba4 <gpio_keys_open+0x68>
     bc0: aa1403e0     	mov	x0, x20
     bc4: 94000021     	bl	0xc48 <gpio_keys_gpio_report_event>
     bc8: f94002a8     	ldr	x8, [x21]
     bcc: 17fffff6     	b	0xba4 <gpio_keys_open+0x68>
     bd0: aa1303e0     	mov	x0, x19
     bd4: 2a1f03e1     	mov	w1, wzr
     bd8: 2a1f03e2     	mov	w2, wzr
     bdc: 2a1f03e3     	mov	w3, wzr
     be0: 94000000     	bl	0xbe0 <gpio_keys_open+0xa4>
		0000000000000be0:  R_AARCH64_CALL26	input_event
     be4: 2a1f03e0     	mov	w0, wzr
     be8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     bec: a94157f6     	ldp	x22, x21, [sp, #0x10]
     bf0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     bf4: d50323bf     	autiasp
     bf8: d65f03c0     	ret
