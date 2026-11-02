
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001ca8 <gpio_keys_resume>:
    1ca8: d503233f     	paciasp
    1cac: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    1cb0: a9015ff8     	stp	x24, x23, [sp, #0x10]
    1cb4: a90257f6     	stp	x22, x21, [sp, #0x20]
    1cb8: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1cbc: 910003fd     	mov	x29, sp
    1cc0: f9404c15     	ldr	x21, [x0, #0x98]
    1cc4: 79421808     	ldrh	w8, [x0, #0x10c]
    1cc8: f94006b6     	ldr	x22, [x21, #0x8]
    1ccc: 36000648     	tbz	w8, #0x0, 0x1d94 <gpio_keys_resume+0xec>
    1cd0: f940a408     	ldr	x8, [x0, #0x148]
    1cd4: b4000608     	cbz	x8, 0x1d94 <gpio_keys_resume+0xec>
    1cd8: f94002a8     	ldr	x8, [x21]
    1cdc: b9400908     	ldr	w8, [x8, #0x8]
    1ce0: 7100011f     	cmp	w8, #0x0
    1ce4: 5400084d     	b.le	0x1dec <gpio_keys_resume+0x144>
    1ce8: aa1f03f6     	mov	x22, xzr
    1cec: 90000013     	adrp	x19, 0x1000 <gpio_keys_gpio_report_event+0x94>
		0000000000001cec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a0
    1cf0: 91000273     	add	x19, x19, #0x0
		0000000000001cf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a0
    1cf4: 910412b7     	add	x23, x21, #0x104
    1cf8: 90000014     	adrp	x20, 0x1000 <gpio_keys_gpio_report_event+0x94>
		0000000000001cf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23d
    1cfc: 91000294     	add	x20, x20, #0x0
		0000000000001cfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23d
    1d00: 1400000b     	b	0x1d2c <gpio_keys_resume+0x84>
    1d04: b94002e0     	ldr	w0, [x23]
    1d08: 2a1f03e1     	mov	w1, wzr
    1d0c: 94000000     	bl	0x1d0c <gpio_keys_resume+0x64>
		0000000000001d0c:  R_AARCH64_CALL26	irq_set_irq_wake
    1d10: 35000340     	cbnz	w0, 0x1d78 <gpio_keys_resume+0xd0>
    1d14: f94002a8     	ldr	x8, [x21]
    1d18: 910006d6     	add	x22, x22, #0x1
    1d1c: 910442f7     	add	x23, x23, #0x110
    1d20: b9800909     	ldrsw	x9, [x8, #0x8]
    1d24: eb0902df     	cmp	x22, x9
    1d28: 540009ea     	b.ge	0x1e64 <gpio_keys_resume+0x1bc>
    1d2c: b94002e0     	ldr	w0, [x23]
    1d30: 39013aff     	strb	wzr, [x23, #0x4e]
    1d34: 94000000     	bl	0x1d34 <gpio_keys_resume+0x8c>
		0000000000001d34:  R_AARCH64_CALL26	irq_get_irq_data
    1d38: f9400808     	ldr	x8, [x0, #0x10]
    1d3c: 39400508     	ldrb	w8, [x8, #0x1]
    1d40: 3637fea8     	tbz	w8, #0x6, 0x1d14 <gpio_keys_resume+0x6c>
    1d44: b94046e8     	ldr	w8, [x23, #0x44]
    1d48: 34fffde8     	cbz	w8, 0x1d04 <gpio_keys_resume+0x5c>
    1d4c: b94002e0     	ldr	w0, [x23]
    1d50: 52800061     	mov	w1, #0x3                // =3
    1d54: 94000000     	bl	0x1d54 <gpio_keys_resume+0xac>
		0000000000001d54:  R_AARCH64_CALL26	irq_set_irq_type
    1d58: 34fffd60     	cbz	w0, 0x1d04 <gpio_keys_resume+0x5c>
    1d5c: f854c2e8     	ldur	x8, [x23, #-0xb4]
    1d60: 2a0003e3     	mov	w3, w0
    1d64: b94002e2     	ldr	w2, [x23]
    1d68: aa1403e1     	mov	x1, x20
    1d6c: f9414900     	ldr	x0, [x8, #0x290]
    1d70: 94000000     	bl	0x1d70 <gpio_keys_resume+0xc8>
		0000000000001d70:  R_AARCH64_CALL26	_dev_warn
    1d74: 17ffffe4     	b	0x1d04 <gpio_keys_resume+0x5c>
    1d78: f854c2e8     	ldur	x8, [x23, #-0xb4]
    1d7c: 2a0003e3     	mov	w3, w0
    1d80: b94002e2     	ldr	w2, [x23]
    1d84: aa1303e1     	mov	x1, x19
    1d88: f9414900     	ldr	x0, [x8, #0x290]
    1d8c: 94000000     	bl	0x1d8c <gpio_keys_resume+0xe4>
		0000000000001d8c:  R_AARCH64_CALL26	_dev_warn
    1d90: 17ffffe1     	b	0x1d14 <gpio_keys_resume+0x6c>
    1d94: 9107e2c0     	add	x0, x22, #0x1f8
    1d98: 94000000     	bl	0x1d98 <gpio_keys_resume+0xf0>
		0000000000001d98:  R_AARCH64_CALL26	mutex_lock
    1d9c: b9422ac8     	ldr	w8, [x22, #0x228]
    1da0: 340005a8     	cbz	w8, 0x1e54 <gpio_keys_resume+0x1ac>
    1da4: f94166d7     	ldr	x23, [x22, #0x2c8]
    1da8: f94002e8     	ldr	x8, [x23]
    1dac: f9400d09     	ldr	x9, [x8, #0x18]
    1db0: b4000249     	cbz	x9, 0x1df8 <gpio_keys_resume+0x150>
    1db4: f9414ac0     	ldr	x0, [x22, #0x290]
    1db8: b85fc130     	ldur	w16, [x9, #-0x4]
    1dbc: 72878171     	movk	w17, #0x3c0b
    1dc0: 72a54e11     	movk	w17, #0x2a70, lsl #16
    1dc4: 6b11021f     	cmp	w16, w17
    1dc8: 54000040     	b.eq	0x1dd0 <gpio_keys_resume+0x128>
    1dcc: d4304520     	brk	#0x8229
    1dd0: d63f0120     	blr	x9
    1dd4: 34000100     	cbz	w0, 0x1df4 <gpio_keys_resume+0x14c>
    1dd8: 2a0003f3     	mov	w19, w0
    1ddc: 9107e2c0     	add	x0, x22, #0x1f8
    1de0: 94000000     	bl	0x1de0 <gpio_keys_resume+0x138>
		0000000000001de0:  R_AARCH64_CALL26	mutex_unlock
    1de4: 2a1303e0     	mov	w0, w19
    1de8: 14000036     	b	0x1ec0 <gpio_keys_resume+0x218>
    1dec: f94006b3     	ldr	x19, [x21, #0x8]
    1df0: 1400002e     	b	0x1ea8 <gpio_keys_resume+0x200>
    1df4: f94002e8     	ldr	x8, [x23]
    1df8: b9400909     	ldr	w9, [x8, #0x8]
    1dfc: f94006f3     	ldr	x19, [x23, #0x8]
    1e00: 7100053f     	cmp	w9, #0x1
    1e04: 540001eb     	b.lt	0x1e40 <gpio_keys_resume+0x198>
    1e08: aa1f03f8     	mov	x24, xzr
    1e0c: 910122f4     	add	x20, x23, #0x48
    1e10: 14000006     	b	0x1e28 <gpio_keys_resume+0x180>
    1e14: b9800909     	ldrsw	x9, [x8, #0x8]
    1e18: 91000718     	add	x24, x24, #0x1
    1e1c: 91044294     	add	x20, x20, #0x110
    1e20: eb09031f     	cmp	x24, x9
    1e24: 540000ea     	b.ge	0x1e40 <gpio_keys_resume+0x198>
    1e28: f9400a89     	ldr	x9, [x20, #0x10]
    1e2c: b4ffff49     	cbz	x9, 0x1e14 <gpio_keys_resume+0x16c>
    1e30: aa1403e0     	mov	x0, x20
    1e34: 97fffc4e     	bl	0xf6c <gpio_keys_gpio_report_event>
    1e38: f94002e8     	ldr	x8, [x23]
    1e3c: 17fffff6     	b	0x1e14 <gpio_keys_resume+0x16c>
    1e40: aa1303e0     	mov	x0, x19
    1e44: 2a1f03e1     	mov	w1, wzr
    1e48: 2a1f03e2     	mov	w2, wzr
    1e4c: 2a1f03e3     	mov	w3, wzr
    1e50: 94000000     	bl	0x1e50 <gpio_keys_resume+0x1a8>
		0000000000001e50:  R_AARCH64_CALL26	input_event
    1e54: 9107e2c0     	add	x0, x22, #0x1f8
    1e58: 94000000     	bl	0x1e58 <gpio_keys_resume+0x1b0>
		0000000000001e58:  R_AARCH64_CALL26	mutex_unlock
    1e5c: f94002a8     	ldr	x8, [x21]
    1e60: b9400909     	ldr	w9, [x8, #0x8]
    1e64: f94006b3     	ldr	x19, [x21, #0x8]
    1e68: 7100053f     	cmp	w9, #0x1
    1e6c: 540001eb     	b.lt	0x1ea8 <gpio_keys_resume+0x200>
    1e70: aa1f03f6     	mov	x22, xzr
    1e74: 910122b4     	add	x20, x21, #0x48
    1e78: 14000006     	b	0x1e90 <gpio_keys_resume+0x1e8>
    1e7c: b9800909     	ldrsw	x9, [x8, #0x8]
    1e80: 910006d6     	add	x22, x22, #0x1
    1e84: 91044294     	add	x20, x20, #0x110
    1e88: eb0902df     	cmp	x22, x9
    1e8c: 540000ea     	b.ge	0x1ea8 <gpio_keys_resume+0x200>
    1e90: f9400a89     	ldr	x9, [x20, #0x10]
    1e94: b4ffff49     	cbz	x9, 0x1e7c <gpio_keys_resume+0x1d4>
    1e98: aa1403e0     	mov	x0, x20
    1e9c: 97fffc34     	bl	0xf6c <gpio_keys_gpio_report_event>
    1ea0: f94002a8     	ldr	x8, [x21]
    1ea4: 17fffff6     	b	0x1e7c <gpio_keys_resume+0x1d4>
    1ea8: aa1303e0     	mov	x0, x19
    1eac: 2a1f03e1     	mov	w1, wzr
    1eb0: 2a1f03e2     	mov	w2, wzr
    1eb4: 2a1f03e3     	mov	w3, wzr
    1eb8: 94000000     	bl	0x1eb8 <gpio_keys_resume+0x210>
		0000000000001eb8:  R_AARCH64_CALL26	input_event
    1ebc: 2a1f03e0     	mov	w0, wzr
    1ec0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1ec4: a94257f6     	ldp	x22, x21, [sp, #0x20]
    1ec8: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    1ecc: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    1ed0: d50323bf     	autiasp
    1ed4: d65f03c0     	ret
