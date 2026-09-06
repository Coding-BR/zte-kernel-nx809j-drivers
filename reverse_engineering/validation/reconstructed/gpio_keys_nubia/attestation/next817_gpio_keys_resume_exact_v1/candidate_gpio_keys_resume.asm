
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000218 <gpio_keys_resume>:
     218: d503233f     	paciasp
     21c: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     220: a9015ff8     	stp	x24, x23, [sp, #0x10]
     224: a90257f6     	stp	x22, x21, [sp, #0x20]
     228: a9034ff4     	stp	x20, x19, [sp, #0x30]
     22c: 910003fd     	mov	x29, sp
     230: f9404c15     	ldr	x21, [x0, #0x98]
     234: 79421808     	ldrh	w8, [x0, #0x10c]
     238: f94006b6     	ldr	x22, [x21, #0x8]
     23c: 36000648     	tbz	w8, #0x0, 0x304 <gpio_keys_resume+0xec>
     240: f940a408     	ldr	x8, [x0, #0x148]
     244: b4000608     	cbz	x8, 0x304 <gpio_keys_resume+0xec>
     248: f94002a8     	ldr	x8, [x21]
     24c: b9400908     	ldr	w8, [x8, #0x8]
     250: 7100011f     	cmp	w8, #0x0
     254: 5400084d     	b.le	0x35c <gpio_keys_resume+0x144>
     258: aa1f03f6     	mov	x22, xzr
     25c: 90000013     	adrp	x19, 0x0 <.text>
		000000000000025c:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_resume_disable_wake_message
     260: 91000273     	add	x19, x19, #0x0
		0000000000000260:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_resume_disable_wake_message
     264: 910412b7     	add	x23, x21, #0x104
     268: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000268:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_resume_restore_trigger_message
     26c: 91000294     	add	x20, x20, #0x0
		000000000000026c:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_resume_restore_trigger_message
     270: 1400000b     	b	0x29c <gpio_keys_resume+0x84>
     274: b94002e0     	ldr	w0, [x23]
     278: 2a1f03e1     	mov	w1, wzr
     27c: 94000000     	bl	0x27c <gpio_keys_resume+0x64>
		000000000000027c:  R_AARCH64_CALL26	irq_set_irq_wake
     280: 35000340     	cbnz	w0, 0x2e8 <gpio_keys_resume+0xd0>
     284: f94002a8     	ldr	x8, [x21]
     288: 910006d6     	add	x22, x22, #0x1
     28c: 910442f7     	add	x23, x23, #0x110
     290: b9800909     	ldrsw	x9, [x8, #0x8]
     294: eb0902df     	cmp	x22, x9
     298: 540009ea     	b.ge	0x3d4 <gpio_keys_resume+0x1bc>
     29c: b94002e0     	ldr	w0, [x23]
     2a0: 39013aff     	strb	wzr, [x23, #0x4e]
     2a4: 94000000     	bl	0x2a4 <gpio_keys_resume+0x8c>
		00000000000002a4:  R_AARCH64_CALL26	irq_get_irq_data
     2a8: f9400808     	ldr	x8, [x0, #0x10]
     2ac: 39400508     	ldrb	w8, [x8, #0x1]
     2b0: 3637fea8     	tbz	w8, #0x6, 0x284 <gpio_keys_resume+0x6c>
     2b4: b94046e8     	ldr	w8, [x23, #0x44]
     2b8: 34fffde8     	cbz	w8, 0x274 <gpio_keys_resume+0x5c>
     2bc: b94002e0     	ldr	w0, [x23]
     2c0: 52800061     	mov	w1, #0x3                // =3
     2c4: 94000000     	bl	0x2c4 <gpio_keys_resume+0xac>
		00000000000002c4:  R_AARCH64_CALL26	irq_set_irq_type
     2c8: 34fffd60     	cbz	w0, 0x274 <gpio_keys_resume+0x5c>
     2cc: f854c2e8     	ldur	x8, [x23, #-0xb4]
     2d0: 2a0003e3     	mov	w3, w0
     2d4: b94002e2     	ldr	w2, [x23]
     2d8: aa1403e1     	mov	x1, x20
     2dc: f9414900     	ldr	x0, [x8, #0x290]
     2e0: 94000000     	bl	0x2e0 <gpio_keys_resume+0xc8>
		00000000000002e0:  R_AARCH64_CALL26	_dev_warn
     2e4: 17ffffe4     	b	0x274 <gpio_keys_resume+0x5c>
     2e8: f854c2e8     	ldur	x8, [x23, #-0xb4]
     2ec: 2a0003e3     	mov	w3, w0
     2f0: b94002e2     	ldr	w2, [x23]
     2f4: aa1303e1     	mov	x1, x19
     2f8: f9414900     	ldr	x0, [x8, #0x290]
     2fc: 94000000     	bl	0x2fc <gpio_keys_resume+0xe4>
		00000000000002fc:  R_AARCH64_CALL26	_dev_warn
     300: 17ffffe1     	b	0x284 <gpio_keys_resume+0x6c>
     304: 9107e2c0     	add	x0, x22, #0x1f8
     308: 94000000     	bl	0x308 <gpio_keys_resume+0xf0>
		0000000000000308:  R_AARCH64_CALL26	mutex_lock
     30c: b9422ac8     	ldr	w8, [x22, #0x228]
     310: 340005a8     	cbz	w8, 0x3c4 <gpio_keys_resume+0x1ac>
     314: f94166d7     	ldr	x23, [x22, #0x2c8]
     318: f94002e8     	ldr	x8, [x23]
     31c: f9400d09     	ldr	x9, [x8, #0x18]
     320: b4000249     	cbz	x9, 0x368 <gpio_keys_resume+0x150>
     324: f9414ac0     	ldr	x0, [x22, #0x290]
     328: b85fc130     	ldur	w16, [x9, #-0x4]
     32c: 72878171     	movk	w17, #0x3c0b
     330: 72a54e11     	movk	w17, #0x2a70, lsl #16
     334: 6b11021f     	cmp	w16, w17
     338: 54000040     	b.eq	0x340 <gpio_keys_resume+0x128>
     33c: d4304520     	brk	#0x8229
     340: d63f0120     	blr	x9
     344: 34000100     	cbz	w0, 0x364 <gpio_keys_resume+0x14c>
     348: 2a0003f3     	mov	w19, w0
     34c: 9107e2c0     	add	x0, x22, #0x1f8
     350: 94000000     	bl	0x350 <gpio_keys_resume+0x138>
		0000000000000350:  R_AARCH64_CALL26	mutex_unlock
     354: 2a1303e0     	mov	w0, w19
     358: 14000036     	b	0x430 <gpio_keys_resume+0x218>
     35c: f94006b3     	ldr	x19, [x21, #0x8]
     360: 1400002e     	b	0x418 <gpio_keys_resume+0x200>
     364: f94002e8     	ldr	x8, [x23]
     368: b9400909     	ldr	w9, [x8, #0x8]
     36c: f94006f3     	ldr	x19, [x23, #0x8]
     370: 7100053f     	cmp	w9, #0x1
     374: 540001eb     	b.lt	0x3b0 <gpio_keys_resume+0x198>
     378: aa1f03f8     	mov	x24, xzr
     37c: 910122f4     	add	x20, x23, #0x48
     380: 14000006     	b	0x398 <gpio_keys_resume+0x180>
     384: b9800909     	ldrsw	x9, [x8, #0x8]
     388: 91000718     	add	x24, x24, #0x1
     38c: 91044294     	add	x20, x20, #0x110
     390: eb09031f     	cmp	x24, x9
     394: 540000ea     	b.ge	0x3b0 <gpio_keys_resume+0x198>
     398: f9400a89     	ldr	x9, [x20, #0x10]
     39c: b4ffff49     	cbz	x9, 0x384 <gpio_keys_resume+0x16c>
     3a0: aa1403e0     	mov	x0, x20
     3a4: 97fffc4e     	bl	0xfffffffffffff4dc <gpio_keys_probe+0xffffffffffffe3c8>
		00000000000003a4:  R_AARCH64_CALL26	gpio_keys_gpio_report_event
     3a8: f94002e8     	ldr	x8, [x23]
     3ac: 17fffff6     	b	0x384 <gpio_keys_resume+0x16c>
     3b0: aa1303e0     	mov	x0, x19
     3b4: 2a1f03e1     	mov	w1, wzr
     3b8: 2a1f03e2     	mov	w2, wzr
     3bc: 2a1f03e3     	mov	w3, wzr
     3c0: 94000000     	bl	0x3c0 <gpio_keys_resume+0x1a8>
		00000000000003c0:  R_AARCH64_CALL26	input_event
     3c4: 9107e2c0     	add	x0, x22, #0x1f8
     3c8: 94000000     	bl	0x3c8 <gpio_keys_resume+0x1b0>
		00000000000003c8:  R_AARCH64_CALL26	mutex_unlock
     3cc: f94002a8     	ldr	x8, [x21]
     3d0: b9400909     	ldr	w9, [x8, #0x8]
     3d4: f94006b3     	ldr	x19, [x21, #0x8]
     3d8: 7100053f     	cmp	w9, #0x1
     3dc: 540001eb     	b.lt	0x418 <gpio_keys_resume+0x200>
     3e0: aa1f03f6     	mov	x22, xzr
     3e4: 910122b4     	add	x20, x21, #0x48
     3e8: 14000006     	b	0x400 <gpio_keys_resume+0x1e8>
     3ec: b9800909     	ldrsw	x9, [x8, #0x8]
     3f0: 910006d6     	add	x22, x22, #0x1
     3f4: 91044294     	add	x20, x20, #0x110
     3f8: eb0902df     	cmp	x22, x9
     3fc: 540000ea     	b.ge	0x418 <gpio_keys_resume+0x200>
     400: f9400a89     	ldr	x9, [x20, #0x10]
     404: b4ffff49     	cbz	x9, 0x3ec <gpio_keys_resume+0x1d4>
     408: aa1403e0     	mov	x0, x20
     40c: 97fffc34     	bl	0xfffffffffffff4dc <gpio_keys_probe+0xffffffffffffe3c8>
		000000000000040c:  R_AARCH64_CALL26	gpio_keys_gpio_report_event
     410: f94002a8     	ldr	x8, [x21]
     414: 17fffff6     	b	0x3ec <gpio_keys_resume+0x1d4>
     418: aa1303e0     	mov	x0, x19
     41c: 2a1f03e1     	mov	w1, wzr
     420: 2a1f03e2     	mov	w2, wzr
     424: 2a1f03e3     	mov	w3, wzr
     428: 94000000     	bl	0x428 <gpio_keys_resume+0x210>
		0000000000000428:  R_AARCH64_CALL26	input_event
     42c: 2a1f03e0     	mov	w0, wzr
     430: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     434: a94257f6     	ldp	x22, x21, [sp, #0x20]
     438: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     43c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     440: d50323bf     	autiasp
     444: d65f03c0     	ret
