
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000268 <gpio_keys_resume>:
     268: d503233f     	paciasp
     26c: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     270: a9015ff8     	stp	x24, x23, [sp, #0x10]
     274: a90257f6     	stp	x22, x21, [sp, #0x20]
     278: a9034ff4     	stp	x20, x19, [sp, #0x30]
     27c: 910003fd     	mov	x29, sp
     280: f9404c15     	ldr	x21, [x0, #0x98]
     284: 79421808     	ldrh	w8, [x0, #0x10c]
     288: f94006b6     	ldr	x22, [x21, #0x8]
     28c: 36000648     	tbz	w8, #0x0, 0x354 <gpio_keys_resume+0xec>
     290: f940a408     	ldr	x8, [x0, #0x148]
     294: b4000608     	cbz	x8, 0x354 <gpio_keys_resume+0xec>
     298: f94002a8     	ldr	x8, [x21]
     29c: b9400908     	ldr	w8, [x8, #0x8]
     2a0: 7100011f     	cmp	w8, #0x0
     2a4: 5400084d     	b.le	0x3ac <gpio_keys_resume+0x144>
     2a8: aa1f03f6     	mov	x22, xzr
     2ac: 90000013     	adrp	x19, 0x0 <.text>
		00000000000002ac:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_resume_disable_wake_message
     2b0: 91000273     	add	x19, x19, #0x0
		00000000000002b0:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_resume_disable_wake_message
     2b4: 910412b7     	add	x23, x21, #0x104
     2b8: 90000014     	adrp	x20, 0x0 <.text>
		00000000000002b8:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_resume_restore_trigger_message
     2bc: 91000294     	add	x20, x20, #0x0
		00000000000002bc:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_resume_restore_trigger_message
     2c0: 1400000b     	b	0x2ec <gpio_keys_resume+0x84>
     2c4: b94002e0     	ldr	w0, [x23]
     2c8: 2a1f03e1     	mov	w1, wzr
     2cc: 94000000     	bl	0x2cc <gpio_keys_resume+0x64>
		00000000000002cc:  R_AARCH64_CALL26	irq_set_irq_wake
     2d0: 35000340     	cbnz	w0, 0x338 <gpio_keys_resume+0xd0>
     2d4: f94002a8     	ldr	x8, [x21]
     2d8: 910006d6     	add	x22, x22, #0x1
     2dc: 910442f7     	add	x23, x23, #0x110
     2e0: b9800909     	ldrsw	x9, [x8, #0x8]
     2e4: eb0902df     	cmp	x22, x9
     2e8: 540009ea     	b.ge	0x424 <gpio_keys_resume+0x1bc>
     2ec: b94002e0     	ldr	w0, [x23]
     2f0: 1400006a     	b	0x498 <gpio_keys_resume+0x230>
     2f4: 94000000     	bl	0x2f4 <gpio_keys_resume+0x8c>
		00000000000002f4:  R_AARCH64_CALL26	irq_get_irq_data
     2f8: f9400808     	ldr	x8, [x0, #0x10]
     2fc: 39400508     	ldrb	w8, [x8, #0x1]
     300: 3637fea8     	tbz	w8, #0x6, 0x2d4 <gpio_keys_resume+0x6c>
     304: b94046e8     	ldr	w8, [x23, #0x44]
     308: 34fffde8     	cbz	w8, 0x2c4 <gpio_keys_resume+0x5c>
     30c: b94002e0     	ldr	w0, [x23]
     310: 52800061     	mov	w1, #0x3                // =3
     314: 94000000     	bl	0x314 <gpio_keys_resume+0xac>
		0000000000000314:  R_AARCH64_CALL26	irq_set_irq_type
     318: 34fffd60     	cbz	w0, 0x2c4 <gpio_keys_resume+0x5c>
     31c: f854c2e8     	ldur	x8, [x23, #-0xb4]
     320: 2a0003e3     	mov	w3, w0
     324: b94002e2     	ldr	w2, [x23]
     328: aa1403e1     	mov	x1, x20
     32c: f9414900     	ldr	x0, [x8, #0x290]
     330: 94000000     	bl	0x330 <gpio_keys_resume+0xc8>
		0000000000000330:  R_AARCH64_CALL26	_dev_warn
     334: 17ffffe4     	b	0x2c4 <gpio_keys_resume+0x5c>
     338: f854c2e8     	ldur	x8, [x23, #-0xb4]
     33c: 2a0003e3     	mov	w3, w0
     340: b94002e2     	ldr	w2, [x23]
     344: aa1303e1     	mov	x1, x19
     348: f9414900     	ldr	x0, [x8, #0x290]
     34c: 94000000     	bl	0x34c <gpio_keys_resume+0xe4>
		000000000000034c:  R_AARCH64_CALL26	_dev_warn
     350: 17ffffe1     	b	0x2d4 <gpio_keys_resume+0x6c>
     354: 9107e2c0     	add	x0, x22, #0x1f8
     358: 94000000     	bl	0x358 <gpio_keys_resume+0xf0>
		0000000000000358:  R_AARCH64_CALL26	mutex_lock
     35c: b9422ac8     	ldr	w8, [x22, #0x228]
     360: 340005a8     	cbz	w8, 0x414 <gpio_keys_resume+0x1ac>
     364: f94166d7     	ldr	x23, [x22, #0x2c8]
     368: f94002e8     	ldr	x8, [x23]
     36c: f9400d09     	ldr	x9, [x8, #0x18]
     370: b4000249     	cbz	x9, 0x3b8 <gpio_keys_resume+0x150>
     374: f9414ac0     	ldr	x0, [x22, #0x290]
     378: b85fc130     	ldur	w16, [x9, #-0x4]
     37c: 72878171     	movk	w17, #0x3c0b
     380: 72a54e11     	movk	w17, #0x2a70, lsl #16
     384: 6b11021f     	cmp	w16, w17
     388: 54000040     	b.eq	0x390 <gpio_keys_resume+0x128>
     38c: d4304520     	brk	#0x8229
     390: d63f0120     	blr	x9
     394: 34000100     	cbz	w0, 0x3b4 <gpio_keys_resume+0x14c>
     398: 2a0003f3     	mov	w19, w0
     39c: 9107e2c0     	add	x0, x22, #0x1f8
     3a0: 94000000     	bl	0x3a0 <gpio_keys_resume+0x138>
		00000000000003a0:  R_AARCH64_CALL26	mutex_unlock
     3a4: 2a1303e0     	mov	w0, w19
     3a8: 14000036     	b	0x480 <gpio_keys_resume+0x218>
     3ac: f94006b3     	ldr	x19, [x21, #0x8]
     3b0: 1400002e     	b	0x468 <gpio_keys_resume+0x200>
     3b4: f94002e8     	ldr	x8, [x23]
     3b8: b9400909     	ldr	w9, [x8, #0x8]
     3bc: f94006f3     	ldr	x19, [x23, #0x8]
     3c0: 7100053f     	cmp	w9, #0x1
     3c4: 540001eb     	b.lt	0x400 <gpio_keys_resume+0x198>
     3c8: aa1f03f8     	mov	x24, xzr
     3cc: 910122f4     	add	x20, x23, #0x48
     3d0: 14000006     	b	0x3e8 <gpio_keys_resume+0x180>
     3d4: b9800909     	ldrsw	x9, [x8, #0x8]
     3d8: 91000718     	add	x24, x24, #0x1
     3dc: 91044294     	add	x20, x20, #0x110
     3e0: eb09031f     	cmp	x24, x9
     3e4: 540000ea     	b.ge	0x400 <gpio_keys_resume+0x198>
     3e8: f9400a89     	ldr	x9, [x20, #0x10]
     3ec: b4ffff49     	cbz	x9, 0x3d4 <gpio_keys_resume+0x16c>
     3f0: aa1403e0     	mov	x0, x20
     3f4: 97fffc4e     	bl	0xfffffffffffff52c <gpio_keys_gpio_report_event+0xffffffffffffd544>
		00000000000003f4:  R_AARCH64_CALL26	gpio_keys_gpio_report_event
     3f8: f94002e8     	ldr	x8, [x23]
     3fc: 17fffff6     	b	0x3d4 <gpio_keys_resume+0x16c>
     400: aa1303e0     	mov	x0, x19
     404: 2a1f03e1     	mov	w1, wzr
     408: 2a1f03e2     	mov	w2, wzr
     40c: 2a1f03e3     	mov	w3, wzr
     410: 94000000     	bl	0x410 <gpio_keys_resume+0x1a8>
		0000000000000410:  R_AARCH64_CALL26	input_event
     414: 9107e2c0     	add	x0, x22, #0x1f8
     418: 94000000     	bl	0x418 <gpio_keys_resume+0x1b0>
		0000000000000418:  R_AARCH64_CALL26	mutex_unlock
     41c: f94002a8     	ldr	x8, [x21]
     420: b9400909     	ldr	w9, [x8, #0x8]
     424: f94006b3     	ldr	x19, [x21, #0x8]
     428: 7100053f     	cmp	w9, #0x1
     42c: 540001eb     	b.lt	0x468 <gpio_keys_resume+0x200>
     430: aa1f03f6     	mov	x22, xzr
     434: 910122b4     	add	x20, x21, #0x48
     438: 14000006     	b	0x450 <gpio_keys_resume+0x1e8>
     43c: b9800909     	ldrsw	x9, [x8, #0x8]
     440: 910006d6     	add	x22, x22, #0x1
     444: 91044294     	add	x20, x20, #0x110
     448: eb0902df     	cmp	x22, x9
     44c: 540000ea     	b.ge	0x468 <gpio_keys_resume+0x200>
     450: f9400a89     	ldr	x9, [x20, #0x10]
     454: b4ffff49     	cbz	x9, 0x43c <gpio_keys_resume+0x1d4>
     458: aa1403e0     	mov	x0, x20
     45c: 97fffc34     	bl	0xfffffffffffff52c <gpio_keys_gpio_report_event+0xffffffffffffd544>
		000000000000045c:  R_AARCH64_CALL26	gpio_keys_gpio_report_event
     460: f94002a8     	ldr	x8, [x21]
     464: 17fffff6     	b	0x43c <gpio_keys_resume+0x1d4>
     468: aa1303e0     	mov	x0, x19
     46c: 2a1f03e1     	mov	w1, wzr
     470: 2a1f03e2     	mov	w2, wzr
     474: 2a1f03e3     	mov	w3, wzr
     478: 94000000     	bl	0x478 <gpio_keys_resume+0x210>
		0000000000000478:  R_AARCH64_CALL26	input_event
     47c: 2a1f03e0     	mov	w0, wzr
     480: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     484: a94257f6     	ldp	x22, x21, [sp, #0x20]
     488: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     48c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     490: d50323bf     	autiasp
     494: d65f03c0     	ret
     498: 91013ae0     	add	x0, x23, #0x4e
     49c: 2a1f03e1     	mov	w1, wzr
     4a0: 94000000     	bl	0x4a0 <gpio_keys_resume+0x238>
		00000000000004a0:  R_AARCH64_CALL26	gpio_keys_suspended_write_serialized
     4a4: b94002e0     	ldr	w0, [x23]
     4a8: 17ffff93     	b	0x2f4 <gpio_keys_resume+0x8c>
