
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000e60 <gpio_keys_open>:
     e60: d503233f     	paciasp
     e64: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     e68: a90157f6     	stp	x22, x21, [sp, #0x10]
     e6c: a9024ff4     	stp	x20, x19, [sp, #0x20]
     e70: 910003fd     	mov	x29, sp
     e74: f9416415     	ldr	x21, [x0, #0x2c8]
     e78: f94002a8     	ldr	x8, [x21]
     e7c: f9400d09     	ldr	x9, [x8, #0x18]
     e80: b4000169     	cbz	x9, 0xeac <gpio_keys_open+0x4c>
     e84: f9414800     	ldr	x0, [x0, #0x290]
     e88: b85fc130     	ldur	w16, [x9, #-0x4]
     e8c: 72878171     	movk	w17, #0x3c0b
     e90: 72a54e11     	movk	w17, #0x2a70, lsl #16
     e94: 6b11021f     	cmp	w16, w17
     e98: 54000040     	b.eq	0xea0 <gpio_keys_open+0x40>
     e9c: d4304520     	brk	#0x8229
     ea0: d63f0120     	blr	x9
     ea4: 35000340     	cbnz	w0, 0xf0c <gpio_keys_open+0xac>
     ea8: f94002a8     	ldr	x8, [x21]
     eac: b9400909     	ldr	w9, [x8, #0x8]
     eb0: f94006b3     	ldr	x19, [x21, #0x8]
     eb4: 7100053f     	cmp	w9, #0x1
     eb8: 540001eb     	b.lt	0xef4 <gpio_keys_open+0x94>
     ebc: aa1f03f6     	mov	x22, xzr
     ec0: 910122b4     	add	x20, x21, #0x48
     ec4: 14000006     	b	0xedc <gpio_keys_open+0x7c>
     ec8: b9800909     	ldrsw	x9, [x8, #0x8]
     ecc: 910006d6     	add	x22, x22, #0x1
     ed0: 91044294     	add	x20, x20, #0x110
     ed4: eb0902df     	cmp	x22, x9
     ed8: 540000ea     	b.ge	0xef4 <gpio_keys_open+0x94>
     edc: f9400a89     	ldr	x9, [x20, #0x10]
     ee0: b4ffff49     	cbz	x9, 0xec8 <gpio_keys_open+0x68>
     ee4: aa1403e0     	mov	x0, x20
     ee8: 94000021     	bl	0xf6c <gpio_keys_gpio_report_event>
     eec: f94002a8     	ldr	x8, [x21]
     ef0: 17fffff6     	b	0xec8 <gpio_keys_open+0x68>
     ef4: aa1303e0     	mov	x0, x19
     ef8: 2a1f03e1     	mov	w1, wzr
     efc: 2a1f03e2     	mov	w2, wzr
     f00: 2a1f03e3     	mov	w3, wzr
     f04: 94000000     	bl	0xf04 <gpio_keys_open+0xa4>
		0000000000000f04:  R_AARCH64_CALL26	input_event
     f08: 2a1f03e0     	mov	w0, wzr
     f0c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     f10: a94157f6     	ldp	x22, x21, [sp, #0x10]
     f14: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     f18: d50323bf     	autiasp
     f1c: d65f03c0     	ret
