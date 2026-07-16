
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000e68 <gpio_keys_open>:
     e68: d503233f     	paciasp
     e6c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     e70: a90157f6     	stp	x22, x21, [sp, #0x10]
     e74: a9024ff4     	stp	x20, x19, [sp, #0x20]
     e78: 910003fd     	mov	x29, sp
     e7c: f9416415     	ldr	x21, [x0, #0x2c8]
     e80: f94002a8     	ldr	x8, [x21]
     e84: f9400d09     	ldr	x9, [x8, #0x18]
     e88: b4000169     	cbz	x9, 0xeb4 <gpio_keys_open+0x4c>
     e8c: f9414800     	ldr	x0, [x0, #0x290]
     e90: b85fc130     	ldur	w16, [x9, #-0x4]
     e94: 72878171     	movk	w17, #0x3c0b
     e98: 72a54e11     	movk	w17, #0x2a70, lsl #16
     e9c: 6b11021f     	cmp	w16, w17
     ea0: 54000040     	b.eq	0xea8 <gpio_keys_open+0x40>
     ea4: d4304520     	brk	#0x8229
     ea8: d63f0120     	blr	x9
     eac: 35000340     	cbnz	w0, 0xf14 <gpio_keys_open+0xac>
     eb0: f94002a8     	ldr	x8, [x21]
     eb4: b9400909     	ldr	w9, [x8, #0x8]
     eb8: f94006b3     	ldr	x19, [x21, #0x8]
     ebc: 7100053f     	cmp	w9, #0x1
     ec0: 540001eb     	b.lt	0xefc <gpio_keys_open+0x94>
     ec4: aa1f03f6     	mov	x22, xzr
     ec8: 910122b4     	add	x20, x21, #0x48
     ecc: 14000006     	b	0xee4 <gpio_keys_open+0x7c>
     ed0: b9800909     	ldrsw	x9, [x8, #0x8]
     ed4: 910006d6     	add	x22, x22, #0x1
     ed8: 91044294     	add	x20, x20, #0x110
     edc: eb0902df     	cmp	x22, x9
     ee0: 540000ea     	b.ge	0xefc <gpio_keys_open+0x94>
     ee4: f9400a89     	ldr	x9, [x20, #0x10]
     ee8: b4ffff49     	cbz	x9, 0xed0 <gpio_keys_open+0x68>
     eec: aa1403e0     	mov	x0, x20
     ef0: 94000021     	bl	0xf74 <gpio_keys_gpio_report_event>
     ef4: f94002a8     	ldr	x8, [x21]
     ef8: 17fffff6     	b	0xed0 <gpio_keys_open+0x68>
     efc: aa1303e0     	mov	x0, x19
     f00: 2a1f03e1     	mov	w1, wzr
     f04: 2a1f03e2     	mov	w2, wzr
     f08: 2a1f03e3     	mov	w3, wzr
     f0c: 94000000     	bl	0xf0c <gpio_keys_open+0xa4>
		0000000000000f0c:  R_AARCH64_CALL26	input_event
     f10: 2a1f03e0     	mov	w0, wzr
     f14: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     f18: a94157f6     	ldp	x22, x21, [sp, #0x10]
     f1c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     f20: d50323bf     	autiasp
     f24: d65f03c0     	ret
