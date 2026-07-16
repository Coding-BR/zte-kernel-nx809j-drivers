
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001c5c <gpio_keys_resume>:
    1c5c: d503233f     	paciasp
    1c60: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    1c64: a9015ff8     	stp	x24, x23, [sp, #0x10]
    1c68: a90257f6     	stp	x22, x21, [sp, #0x20]
    1c6c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1c70: 910003fd     	mov	x29, sp
    1c74: f9404c15     	ldr	x21, [x0, #0x98]
    1c78: 79421808     	ldrh	w8, [x0, #0x10c]
    1c7c: f94006b6     	ldr	x22, [x21, #0x8]
    1c80: 36000648     	tbz	w8, #0x0, 0x1d48 <gpio_keys_resume+0xec>
    1c84: f940a408     	ldr	x8, [x0, #0x148]
    1c88: b4000608     	cbz	x8, 0x1d48 <gpio_keys_resume+0xec>
    1c8c: f94002a8     	ldr	x8, [x21]
    1c90: b9400908     	ldr	w8, [x8, #0x8]
    1c94: 7100011f     	cmp	w8, #0x0
    1c98: 5400084d     	b.le	0x1da0 <gpio_keys_resume+0x144>
    1c9c: aa1f03f6     	mov	x22, xzr
    1ca0: 90000013     	adrp	x19, 0x1000 <gpio_keys_gpio_report_event+0xe0>
		0000000000001ca0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x54d
    1ca4: 91000273     	add	x19, x19, #0x0
		0000000000001ca4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x54d
    1ca8: 910412b7     	add	x23, x21, #0x104
    1cac: 90000014     	adrp	x20, 0x1000 <gpio_keys_gpio_report_event+0xe0>
		0000000000001cac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24b
    1cb0: 91000294     	add	x20, x20, #0x0
		0000000000001cb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24b
    1cb4: 1400000b     	b	0x1ce0 <gpio_keys_resume+0x84>
    1cb8: b94002e0     	ldr	w0, [x23]
    1cbc: 2a1f03e1     	mov	w1, wzr
    1cc0: 94000000     	bl	0x1cc0 <gpio_keys_resume+0x64>
		0000000000001cc0:  R_AARCH64_CALL26	irq_set_irq_wake
    1cc4: 35000340     	cbnz	w0, 0x1d2c <gpio_keys_resume+0xd0>
    1cc8: f94002a8     	ldr	x8, [x21]
    1ccc: 910006d6     	add	x22, x22, #0x1
    1cd0: 910442f7     	add	x23, x23, #0x110
    1cd4: b9800909     	ldrsw	x9, [x8, #0x8]
    1cd8: eb0902df     	cmp	x22, x9
    1cdc: 540009ea     	b.ge	0x1e18 <gpio_keys_resume+0x1bc>
    1ce0: b94002e0     	ldr	w0, [x23]
    1ce4: 39013aff     	strb	wzr, [x23, #0x4e]
    1ce8: 94000000     	bl	0x1ce8 <gpio_keys_resume+0x8c>
		0000000000001ce8:  R_AARCH64_CALL26	irq_get_irq_data
    1cec: f9400808     	ldr	x8, [x0, #0x10]
    1cf0: 39400508     	ldrb	w8, [x8, #0x1]
    1cf4: 3637fea8     	tbz	w8, #0x6, 0x1cc8 <gpio_keys_resume+0x6c>
    1cf8: b94046e8     	ldr	w8, [x23, #0x44]
    1cfc: 34fffde8     	cbz	w8, 0x1cb8 <gpio_keys_resume+0x5c>
    1d00: b94002e0     	ldr	w0, [x23]
    1d04: 52800061     	mov	w1, #0x3                // =3
    1d08: 94000000     	bl	0x1d08 <gpio_keys_resume+0xac>
		0000000000001d08:  R_AARCH64_CALL26	irq_set_irq_type
    1d0c: 34fffd60     	cbz	w0, 0x1cb8 <gpio_keys_resume+0x5c>
    1d10: f854c2e8     	ldur	x8, [x23, #-0xb4]
    1d14: 2a0003e3     	mov	w3, w0
    1d18: b94002e2     	ldr	w2, [x23]
    1d1c: aa1403e1     	mov	x1, x20
    1d20: f9414900     	ldr	x0, [x8, #0x290]
    1d24: 94000000     	bl	0x1d24 <gpio_keys_resume+0xc8>
		0000000000001d24:  R_AARCH64_CALL26	_dev_warn
    1d28: 17ffffe4     	b	0x1cb8 <gpio_keys_resume+0x5c>
    1d2c: f854c2e8     	ldur	x8, [x23, #-0xb4]
    1d30: 2a0003e3     	mov	w3, w0
    1d34: b94002e2     	ldr	w2, [x23]
    1d38: aa1303e1     	mov	x1, x19
    1d3c: f9414900     	ldr	x0, [x8, #0x290]
    1d40: 94000000     	bl	0x1d40 <gpio_keys_resume+0xe4>
		0000000000001d40:  R_AARCH64_CALL26	_dev_warn
    1d44: 17ffffe1     	b	0x1cc8 <gpio_keys_resume+0x6c>
    1d48: 9107e2c0     	add	x0, x22, #0x1f8
    1d4c: 94000000     	bl	0x1d4c <gpio_keys_resume+0xf0>
		0000000000001d4c:  R_AARCH64_CALL26	mutex_lock
    1d50: b9422ac8     	ldr	w8, [x22, #0x228]
    1d54: 340005a8     	cbz	w8, 0x1e08 <gpio_keys_resume+0x1ac>
    1d58: f94166d7     	ldr	x23, [x22, #0x2c8]
    1d5c: f94002e8     	ldr	x8, [x23]
    1d60: f9400d09     	ldr	x9, [x8, #0x18]
    1d64: b4000249     	cbz	x9, 0x1dac <gpio_keys_resume+0x150>
    1d68: f9414ac0     	ldr	x0, [x22, #0x290]
    1d6c: b85fc130     	ldur	w16, [x9, #-0x4]
    1d70: 72878171     	movk	w17, #0x3c0b
    1d74: 72a54e11     	movk	w17, #0x2a70, lsl #16
    1d78: 6b11021f     	cmp	w16, w17
    1d7c: 54000040     	b.eq	0x1d84 <gpio_keys_resume+0x128>
    1d80: d4304520     	brk	#0x8229
    1d84: d63f0120     	blr	x9
    1d88: 34000100     	cbz	w0, 0x1da8 <gpio_keys_resume+0x14c>
    1d8c: 2a0003f3     	mov	w19, w0
    1d90: 9107e2c0     	add	x0, x22, #0x1f8
    1d94: 94000000     	bl	0x1d94 <gpio_keys_resume+0x138>
		0000000000001d94:  R_AARCH64_CALL26	mutex_unlock
    1d98: 2a1303e0     	mov	w0, w19
    1d9c: 14000036     	b	0x1e74 <gpio_keys_resume+0x218>
    1da0: f94006b3     	ldr	x19, [x21, #0x8]
    1da4: 1400002e     	b	0x1e5c <gpio_keys_resume+0x200>
    1da8: f94002e8     	ldr	x8, [x23]
    1dac: b9400909     	ldr	w9, [x8, #0x8]
    1db0: f94006f3     	ldr	x19, [x23, #0x8]
    1db4: 7100053f     	cmp	w9, #0x1
    1db8: 540001eb     	b.lt	0x1df4 <gpio_keys_resume+0x198>
    1dbc: aa1f03f8     	mov	x24, xzr
    1dc0: 910122f4     	add	x20, x23, #0x48
    1dc4: 14000006     	b	0x1ddc <gpio_keys_resume+0x180>
    1dc8: b9800909     	ldrsw	x9, [x8, #0x8]
    1dcc: 91000718     	add	x24, x24, #0x1
    1dd0: 91044294     	add	x20, x20, #0x110
    1dd4: eb09031f     	cmp	x24, x9
    1dd8: 540000ea     	b.ge	0x1df4 <gpio_keys_resume+0x198>
    1ddc: f9400a89     	ldr	x9, [x20, #0x10]
    1de0: b4ffff49     	cbz	x9, 0x1dc8 <gpio_keys_resume+0x16c>
    1de4: aa1403e0     	mov	x0, x20
    1de8: 97fffc4e     	bl	0xf20 <gpio_keys_gpio_report_event>
    1dec: f94002e8     	ldr	x8, [x23]
    1df0: 17fffff6     	b	0x1dc8 <gpio_keys_resume+0x16c>
    1df4: aa1303e0     	mov	x0, x19
    1df8: 2a1f03e1     	mov	w1, wzr
    1dfc: 2a1f03e2     	mov	w2, wzr
    1e00: 2a1f03e3     	mov	w3, wzr
    1e04: 94000000     	bl	0x1e04 <gpio_keys_resume+0x1a8>
		0000000000001e04:  R_AARCH64_CALL26	input_event
    1e08: 9107e2c0     	add	x0, x22, #0x1f8
    1e0c: 94000000     	bl	0x1e0c <gpio_keys_resume+0x1b0>
		0000000000001e0c:  R_AARCH64_CALL26	mutex_unlock
    1e10: f94002a8     	ldr	x8, [x21]
    1e14: b9400909     	ldr	w9, [x8, #0x8]
    1e18: f94006b3     	ldr	x19, [x21, #0x8]
    1e1c: 7100053f     	cmp	w9, #0x1
    1e20: 540001eb     	b.lt	0x1e5c <gpio_keys_resume+0x200>
    1e24: aa1f03f6     	mov	x22, xzr
    1e28: 910122b4     	add	x20, x21, #0x48
    1e2c: 14000006     	b	0x1e44 <gpio_keys_resume+0x1e8>
    1e30: b9800909     	ldrsw	x9, [x8, #0x8]
    1e34: 910006d6     	add	x22, x22, #0x1
    1e38: 91044294     	add	x20, x20, #0x110
    1e3c: eb0902df     	cmp	x22, x9
    1e40: 540000ea     	b.ge	0x1e5c <gpio_keys_resume+0x200>
    1e44: f9400a89     	ldr	x9, [x20, #0x10]
    1e48: b4ffff49     	cbz	x9, 0x1e30 <gpio_keys_resume+0x1d4>
    1e4c: aa1403e0     	mov	x0, x20
    1e50: 97fffc34     	bl	0xf20 <gpio_keys_gpio_report_event>
    1e54: f94002a8     	ldr	x8, [x21]
    1e58: 17fffff6     	b	0x1e30 <gpio_keys_resume+0x1d4>
    1e5c: aa1303e0     	mov	x0, x19
    1e60: 2a1f03e1     	mov	w1, wzr
    1e64: 2a1f03e2     	mov	w2, wzr
    1e68: 2a1f03e3     	mov	w3, wzr
    1e6c: 94000000     	bl	0x1e6c <gpio_keys_resume+0x210>
		0000000000001e6c:  R_AARCH64_CALL26	input_event
    1e70: 2a1f03e0     	mov	w0, wzr
    1e74: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1e78: a94257f6     	ldp	x22, x21, [sp, #0x20]
    1e7c: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    1e80: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    1e84: d50323bf     	autiasp
    1e88: d65f03c0     	ret
