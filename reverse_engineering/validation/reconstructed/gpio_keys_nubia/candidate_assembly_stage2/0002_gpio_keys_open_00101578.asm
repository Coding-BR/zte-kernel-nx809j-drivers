
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000e14 <gpio_keys_open>:
     e14: d503233f     	paciasp
     e18: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     e1c: a90157f6     	stp	x22, x21, [sp, #0x10]
     e20: a9024ff4     	stp	x20, x19, [sp, #0x20]
     e24: 910003fd     	mov	x29, sp
     e28: f9416415     	ldr	x21, [x0, #0x2c8]
     e2c: f94002a8     	ldr	x8, [x21]
     e30: f9400d09     	ldr	x9, [x8, #0x18]
     e34: b4000169     	cbz	x9, 0xe60 <gpio_keys_open+0x4c>
     e38: f9414800     	ldr	x0, [x0, #0x290]
     e3c: b85fc130     	ldur	w16, [x9, #-0x4]
     e40: 72878171     	movk	w17, #0x3c0b
     e44: 72a54e11     	movk	w17, #0x2a70, lsl #16
     e48: 6b11021f     	cmp	w16, w17
     e4c: 54000040     	b.eq	0xe54 <gpio_keys_open+0x40>
     e50: d4304520     	brk	#0x8229
     e54: d63f0120     	blr	x9
     e58: 35000340     	cbnz	w0, 0xec0 <gpio_keys_open+0xac>
     e5c: f94002a8     	ldr	x8, [x21]
     e60: b9400909     	ldr	w9, [x8, #0x8]
     e64: f94006b3     	ldr	x19, [x21, #0x8]
     e68: 7100053f     	cmp	w9, #0x1
     e6c: 540001eb     	b.lt	0xea8 <gpio_keys_open+0x94>
     e70: aa1f03f6     	mov	x22, xzr
     e74: 910122b4     	add	x20, x21, #0x48
     e78: 14000006     	b	0xe90 <gpio_keys_open+0x7c>
     e7c: b9800909     	ldrsw	x9, [x8, #0x8]
     e80: 910006d6     	add	x22, x22, #0x1
     e84: 91044294     	add	x20, x20, #0x110
     e88: eb0902df     	cmp	x22, x9
     e8c: 540000ea     	b.ge	0xea8 <gpio_keys_open+0x94>
     e90: f9400a89     	ldr	x9, [x20, #0x10]
     e94: b4ffff49     	cbz	x9, 0xe7c <gpio_keys_open+0x68>
     e98: aa1403e0     	mov	x0, x20
     e9c: 94000021     	bl	0xf20 <gpio_keys_gpio_report_event>
     ea0: f94002a8     	ldr	x8, [x21]
     ea4: 17fffff6     	b	0xe7c <gpio_keys_open+0x68>
     ea8: aa1303e0     	mov	x0, x19
     eac: 2a1f03e1     	mov	w1, wzr
     eb0: 2a1f03e2     	mov	w2, wzr
     eb4: 2a1f03e3     	mov	w3, wzr
     eb8: 94000000     	bl	0xeb8 <gpio_keys_open+0xa4>
		0000000000000eb8:  R_AARCH64_CALL26	input_event
     ebc: 2a1f03e0     	mov	w0, wzr
     ec0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     ec4: a94157f6     	ldp	x22, x21, [sp, #0x10]
     ec8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     ecc: d50323bf     	autiasp
     ed0: d65f03c0     	ret
