
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001cb0 <gpio_keys_resume>:
    1cb0: d503233f     	paciasp
    1cb4: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    1cb8: a9015ff8     	stp	x24, x23, [sp, #0x10]
    1cbc: a90257f6     	stp	x22, x21, [sp, #0x20]
    1cc0: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1cc4: 910003fd     	mov	x29, sp
    1cc8: f9404c15     	ldr	x21, [x0, #0x98]
    1ccc: 79421808     	ldrh	w8, [x0, #0x10c]
    1cd0: f94006b6     	ldr	x22, [x21, #0x8]
    1cd4: 36000648     	tbz	w8, #0x0, 0x1d9c <gpio_keys_resume+0xec>
    1cd8: f940a408     	ldr	x8, [x0, #0x148]
    1cdc: b4000608     	cbz	x8, 0x1d9c <gpio_keys_resume+0xec>
    1ce0: f94002a8     	ldr	x8, [x21]
    1ce4: b9400908     	ldr	w8, [x8, #0x8]
    1ce8: 7100011f     	cmp	w8, #0x0
    1cec: 5400084d     	b.le	0x1df4 <gpio_keys_resume+0x144>
    1cf0: aa1f03f6     	mov	x22, xzr
    1cf4: 90000013     	adrp	x19, 0x1000 <gpio_keys_gpio_report_event+0x8c>
		0000000000001cf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a0
    1cf8: 91000273     	add	x19, x19, #0x0
		0000000000001cf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a0
    1cfc: 910412b7     	add	x23, x21, #0x104
    1d00: 90000014     	adrp	x20, 0x1000 <gpio_keys_gpio_report_event+0x8c>
		0000000000001d00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23d
    1d04: 91000294     	add	x20, x20, #0x0
		0000000000001d04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23d
    1d08: 1400000b     	b	0x1d34 <gpio_keys_resume+0x84>
    1d0c: b94002e0     	ldr	w0, [x23]
    1d10: 2a1f03e1     	mov	w1, wzr
    1d14: 94000000     	bl	0x1d14 <gpio_keys_resume+0x64>
		0000000000001d14:  R_AARCH64_CALL26	irq_set_irq_wake
    1d18: 35000340     	cbnz	w0, 0x1d80 <gpio_keys_resume+0xd0>
    1d1c: f94002a8     	ldr	x8, [x21]
    1d20: 910006d6     	add	x22, x22, #0x1
    1d24: 910442f7     	add	x23, x23, #0x110
    1d28: b9800909     	ldrsw	x9, [x8, #0x8]
    1d2c: eb0902df     	cmp	x22, x9
    1d30: 540009ea     	b.ge	0x1e6c <gpio_keys_resume+0x1bc>
    1d34: b94002e0     	ldr	w0, [x23]
    1d38: 39013aff     	strb	wzr, [x23, #0x4e]
    1d3c: 94000000     	bl	0x1d3c <gpio_keys_resume+0x8c>
		0000000000001d3c:  R_AARCH64_CALL26	irq_get_irq_data
    1d40: f9400808     	ldr	x8, [x0, #0x10]
    1d44: 39400508     	ldrb	w8, [x8, #0x1]
    1d48: 3637fea8     	tbz	w8, #0x6, 0x1d1c <gpio_keys_resume+0x6c>
    1d4c: b94046e8     	ldr	w8, [x23, #0x44]
    1d50: 34fffde8     	cbz	w8, 0x1d0c <gpio_keys_resume+0x5c>
    1d54: b94002e0     	ldr	w0, [x23]
    1d58: 52800061     	mov	w1, #0x3                // =3
    1d5c: 94000000     	bl	0x1d5c <gpio_keys_resume+0xac>
		0000000000001d5c:  R_AARCH64_CALL26	irq_set_irq_type
    1d60: 34fffd60     	cbz	w0, 0x1d0c <gpio_keys_resume+0x5c>
    1d64: f854c2e8     	ldur	x8, [x23, #-0xb4]
    1d68: 2a0003e3     	mov	w3, w0
    1d6c: b94002e2     	ldr	w2, [x23]
    1d70: aa1403e1     	mov	x1, x20
    1d74: f9414900     	ldr	x0, [x8, #0x290]
    1d78: 94000000     	bl	0x1d78 <gpio_keys_resume+0xc8>
		0000000000001d78:  R_AARCH64_CALL26	_dev_warn
    1d7c: 17ffffe4     	b	0x1d0c <gpio_keys_resume+0x5c>
    1d80: f854c2e8     	ldur	x8, [x23, #-0xb4]
    1d84: 2a0003e3     	mov	w3, w0
    1d88: b94002e2     	ldr	w2, [x23]
    1d8c: aa1303e1     	mov	x1, x19
    1d90: f9414900     	ldr	x0, [x8, #0x290]
    1d94: 94000000     	bl	0x1d94 <gpio_keys_resume+0xe4>
		0000000000001d94:  R_AARCH64_CALL26	_dev_warn
    1d98: 17ffffe1     	b	0x1d1c <gpio_keys_resume+0x6c>
    1d9c: 9107e2c0     	add	x0, x22, #0x1f8
    1da0: 94000000     	bl	0x1da0 <gpio_keys_resume+0xf0>
		0000000000001da0:  R_AARCH64_CALL26	mutex_lock
    1da4: b9422ac8     	ldr	w8, [x22, #0x228]
    1da8: 340005a8     	cbz	w8, 0x1e5c <gpio_keys_resume+0x1ac>
    1dac: f94166d7     	ldr	x23, [x22, #0x2c8]
    1db0: f94002e8     	ldr	x8, [x23]
    1db4: f9400d09     	ldr	x9, [x8, #0x18]
    1db8: b4000249     	cbz	x9, 0x1e00 <gpio_keys_resume+0x150>
    1dbc: f9414ac0     	ldr	x0, [x22, #0x290]
    1dc0: b85fc130     	ldur	w16, [x9, #-0x4]
    1dc4: 72878171     	movk	w17, #0x3c0b
    1dc8: 72a54e11     	movk	w17, #0x2a70, lsl #16
    1dcc: 6b11021f     	cmp	w16, w17
    1dd0: 54000040     	b.eq	0x1dd8 <gpio_keys_resume+0x128>
    1dd4: d4304520     	brk	#0x8229
    1dd8: d63f0120     	blr	x9
    1ddc: 34000100     	cbz	w0, 0x1dfc <gpio_keys_resume+0x14c>
    1de0: 2a0003f3     	mov	w19, w0
    1de4: 9107e2c0     	add	x0, x22, #0x1f8
    1de8: 94000000     	bl	0x1de8 <gpio_keys_resume+0x138>
		0000000000001de8:  R_AARCH64_CALL26	mutex_unlock
    1dec: 2a1303e0     	mov	w0, w19
    1df0: 14000036     	b	0x1ec8 <gpio_keys_resume+0x218>
    1df4: f94006b3     	ldr	x19, [x21, #0x8]
    1df8: 1400002e     	b	0x1eb0 <gpio_keys_resume+0x200>
    1dfc: f94002e8     	ldr	x8, [x23]
    1e00: b9400909     	ldr	w9, [x8, #0x8]
    1e04: f94006f3     	ldr	x19, [x23, #0x8]
    1e08: 7100053f     	cmp	w9, #0x1
    1e0c: 540001eb     	b.lt	0x1e48 <gpio_keys_resume+0x198>
    1e10: aa1f03f8     	mov	x24, xzr
    1e14: 910122f4     	add	x20, x23, #0x48
    1e18: 14000006     	b	0x1e30 <gpio_keys_resume+0x180>
    1e1c: b9800909     	ldrsw	x9, [x8, #0x8]
    1e20: 91000718     	add	x24, x24, #0x1
    1e24: 91044294     	add	x20, x20, #0x110
    1e28: eb09031f     	cmp	x24, x9
    1e2c: 540000ea     	b.ge	0x1e48 <gpio_keys_resume+0x198>
    1e30: f9400a89     	ldr	x9, [x20, #0x10]
    1e34: b4ffff49     	cbz	x9, 0x1e1c <gpio_keys_resume+0x16c>
    1e38: aa1403e0     	mov	x0, x20
    1e3c: 97fffc4e     	bl	0xf74 <gpio_keys_gpio_report_event>
    1e40: f94002e8     	ldr	x8, [x23]
    1e44: 17fffff6     	b	0x1e1c <gpio_keys_resume+0x16c>
    1e48: aa1303e0     	mov	x0, x19
    1e4c: 2a1f03e1     	mov	w1, wzr
    1e50: 2a1f03e2     	mov	w2, wzr
    1e54: 2a1f03e3     	mov	w3, wzr
    1e58: 94000000     	bl	0x1e58 <gpio_keys_resume+0x1a8>
		0000000000001e58:  R_AARCH64_CALL26	input_event
    1e5c: 9107e2c0     	add	x0, x22, #0x1f8
    1e60: 94000000     	bl	0x1e60 <gpio_keys_resume+0x1b0>
		0000000000001e60:  R_AARCH64_CALL26	mutex_unlock
    1e64: f94002a8     	ldr	x8, [x21]
    1e68: b9400909     	ldr	w9, [x8, #0x8]
    1e6c: f94006b3     	ldr	x19, [x21, #0x8]
    1e70: 7100053f     	cmp	w9, #0x1
    1e74: 540001eb     	b.lt	0x1eb0 <gpio_keys_resume+0x200>
    1e78: aa1f03f6     	mov	x22, xzr
    1e7c: 910122b4     	add	x20, x21, #0x48
    1e80: 14000006     	b	0x1e98 <gpio_keys_resume+0x1e8>
    1e84: b9800909     	ldrsw	x9, [x8, #0x8]
    1e88: 910006d6     	add	x22, x22, #0x1
    1e8c: 91044294     	add	x20, x20, #0x110
    1e90: eb0902df     	cmp	x22, x9
    1e94: 540000ea     	b.ge	0x1eb0 <gpio_keys_resume+0x200>
    1e98: f9400a89     	ldr	x9, [x20, #0x10]
    1e9c: b4ffff49     	cbz	x9, 0x1e84 <gpio_keys_resume+0x1d4>
    1ea0: aa1403e0     	mov	x0, x20
    1ea4: 97fffc34     	bl	0xf74 <gpio_keys_gpio_report_event>
    1ea8: f94002a8     	ldr	x8, [x21]
    1eac: 17fffff6     	b	0x1e84 <gpio_keys_resume+0x1d4>
    1eb0: aa1303e0     	mov	x0, x19
    1eb4: 2a1f03e1     	mov	w1, wzr
    1eb8: 2a1f03e2     	mov	w2, wzr
    1ebc: 2a1f03e3     	mov	w3, wzr
    1ec0: 94000000     	bl	0x1ec0 <gpio_keys_resume+0x210>
		0000000000001ec0:  R_AARCH64_CALL26	input_event
    1ec4: 2a1f03e0     	mov	w0, wzr
    1ec8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1ecc: a94257f6     	ldp	x22, x21, [sp, #0x20]
    1ed0: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    1ed4: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    1ed8: d50323bf     	autiasp
    1edc: d65f03c0     	ret
