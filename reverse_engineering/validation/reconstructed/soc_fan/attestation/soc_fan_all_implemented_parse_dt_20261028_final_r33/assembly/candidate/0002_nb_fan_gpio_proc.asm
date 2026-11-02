
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000035c <nb_fan_gpio_proc>:
     35c: f9400408     	ldr	x8, [x0, #0x8]
     360: b5000068     	cbnz	x8, 0x36c <nb_fan_gpio_proc+0x10>
     364: 12800240     	mov	w0, #-0x13              // =-19
     368: d65f03c0     	ret
     36c: d503233f     	paciasp
     370: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     374: f9000bf5     	str	x21, [sp, #0x10]
     378: a9024ff4     	stp	x20, x19, [sp, #0x20]
     37c: 910003fd     	mov	x29, sp
     380: f9400008     	ldr	x8, [x0]
     384: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000384:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x291
     388: 91000021     	add	x1, x1, #0x0
		0000000000000388:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x291
     38c: aa0003f4     	mov	x20, x0
     390: 2a1f03e2     	mov	w2, wzr
     394: f9417513     	ldr	x19, [x8, #0x2e8]
     398: aa1303e0     	mov	x0, x19
     39c: 94000000     	bl	0x39c <nb_fan_gpio_proc+0x40>
		000000000000039c:  R_AARCH64_CALL26	of_get_named_gpio
     3a0: f9400688     	ldr	x8, [x20, #0x8]
     3a4: aa1403f5     	mov	x21, x20
     3a8: b9001500     	str	w0, [x8, #0x14]
     3ac: f9400688     	ldr	x8, [x20, #0x8]
     3b0: b9401500     	ldr	w0, [x8, #0x14]
     3b4: 36f80180     	tbz	w0, #0x1f, 0x3e4 <nb_fan_gpio_proc+0x88>
     3b8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a
     3bc: 91000000     	add	x0, x0, #0x0
		00000000000003bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a
     3c0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     3c4: 91000021     	add	x1, x1, #0x0
		00000000000003c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     3c8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000003c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc9
     3cc: 91000042     	add	x2, x2, #0x0
		00000000000003cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc9
     3d0: 52806863     	mov	w3, #0x343              // =835
     3d4: 94000000     	bl	0x3d4 <nb_fan_gpio_proc+0x78>
		00000000000003d4:  R_AARCH64_CALL26	_printk
     3d8: f94006a8     	ldr	x8, [x21, #0x8]
     3dc: b9401500     	ldr	w0, [x8, #0x14]
     3e0: 14000029     	b	0x484 <nb_fan_gpio_proc+0x128>
     3e4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x420
     3e8: 91000021     	add	x1, x1, #0x0
		00000000000003e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x420
     3ec: 94000000     	bl	0x3ec <nb_fan_gpio_proc+0x90>
		00000000000003ec:  R_AARCH64_CALL26	gpio_request
     3f0: f94006a8     	ldr	x8, [x21, #0x8]
     3f4: b9401504     	ldr	w4, [x8, #0x14]
     3f8: 35000300     	cbnz	w0, 0x458 <nb_fan_gpio_proc+0xfc>
     3fc: 2a0403e0     	mov	w0, w4
     400: 94000000     	bl	0x400 <nb_fan_gpio_proc+0xa4>
		0000000000000400:  R_AARCH64_CALL26	gpio_to_desc
     404: 94000000     	bl	0x404 <nb_fan_gpio_proc+0xa8>
		0000000000000404:  R_AARCH64_CALL26	gpiod_to_irq
     408: f94006a8     	ldr	x8, [x21, #0x8]
     40c: 52800043     	mov	w3, #0x2                // =2
     410: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000410:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x4
     414: 91000021     	add	x1, x1, #0x0
		0000000000000414:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x4
     418: 90000004     	adrp	x4, 0x0 <.text>
		0000000000000418:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16b
     41c: 91000084     	add	x4, x4, #0x0
		000000000000041c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16b
     420: b9001d00     	str	w0, [x8, #0x1c]
     424: aa1f03e2     	mov	x2, xzr
     428: 72a00403     	movk	w3, #0x20, lsl #16
     42c: f94006a8     	ldr	x8, [x21, #0x8]
     430: aa1503e5     	mov	x5, x21
     434: b9401d00     	ldr	w0, [x8, #0x1c]
     438: 94000000     	bl	0x438 <nb_fan_gpio_proc+0xdc>
		0000000000000438:  R_AARCH64_CALL26	request_threaded_irq
     43c: 36f802e0     	tbz	w0, #0x1f, 0x498 <nb_fan_gpio_proc+0x13c>
     440: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000440:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42f
     444: 91000108     	add	x8, x8, #0x0
		0000000000000444:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42f
     448: 2a0003f3     	mov	w19, w0
     44c: aa0803e0     	mov	x0, x8
     450: 94000000     	bl	0x450 <nb_fan_gpio_proc+0xf4>
		0000000000000450:  R_AARCH64_CALL26	_printk
     454: 1400000b     	b	0x480 <nb_fan_gpio_proc+0x124>
     458: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000458:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5e2
     45c: 91000108     	add	x8, x8, #0x0
		000000000000045c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5e2
     460: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000460:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     464: 91000021     	add	x1, x1, #0x0
		0000000000000464:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     468: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000468:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc9
     46c: 91000042     	add	x2, x2, #0x0
		000000000000046c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc9
     470: 2a0003f3     	mov	w19, w0
     474: aa0803e0     	mov	x0, x8
     478: 52806903     	mov	w3, #0x348              // =840
     47c: 94000000     	bl	0x47c <nb_fan_gpio_proc+0x120>
		000000000000047c:  R_AARCH64_CALL26	_printk
     480: 2a1303e0     	mov	w0, w19
     484: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     488: f9400bf5     	ldr	x21, [sp, #0x10]
     48c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     490: d50323bf     	autiasp
     494: d65f03c0     	ret
     498: f94006a8     	ldr	x8, [x21, #0x8]
     49c: b9401d00     	ldr	w0, [x8, #0x1c]
     4a0: 94000000     	bl	0x4a0 <nb_fan_gpio_proc+0x144>
		00000000000004a0:  R_AARCH64_CALL26	disable_irq
     4a4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x574
     4a8: 91000021     	add	x1, x1, #0x0
		00000000000004a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x574
     4ac: aa1303e0     	mov	x0, x19
     4b0: 2a1f03e2     	mov	w2, wzr
     4b4: 94000000     	bl	0x4b4 <nb_fan_gpio_proc+0x158>
		00000000000004b4:  R_AARCH64_CALL26	of_get_named_gpio
     4b8: f94006a9     	ldr	x9, [x21, #0x8]
     4bc: b9001120     	str	w0, [x9, #0x10]
     4c0: f94006a9     	ldr	x9, [x21, #0x8]
     4c4: b9401120     	ldr	w0, [x9, #0x10]
     4c8: 36f80180     	tbz	w0, #0x1f, 0x4f8 <nb_fan_gpio_proc+0x19c>
     4cc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f1
     4d0: 91000000     	add	x0, x0, #0x0
		00000000000004d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f1
     4d4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     4d8: 91000021     	add	x1, x1, #0x0
		00000000000004d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     4dc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000004dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc9
     4e0: 91000042     	add	x2, x2, #0x0
		00000000000004e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc9
     4e4: 52806aa3     	mov	w3, #0x355              // =853
     4e8: 94000000     	bl	0x4e8 <nb_fan_gpio_proc+0x18c>
		00000000000004e8:  R_AARCH64_CALL26	_printk
     4ec: f94006a8     	ldr	x8, [x21, #0x8]
     4f0: b9401100     	ldr	w0, [x8, #0x10]
     4f4: 17ffffe4     	b	0x484 <nb_fan_gpio_proc+0x128>
     4f8: 94000000     	bl	0x4f8 <nb_fan_gpio_proc+0x19c>
		00000000000004f8:  R_AARCH64_CALL26	gpio_to_desc
     4fc: 94000000     	bl	0x4fc <nb_fan_gpio_proc+0x1a0>
		00000000000004fc:  R_AARCH64_CALL26	gpiod_get_raw_value
     500: 2a0003e4     	mov	w4, w0
     504: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000504:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x65f
     508: 91000000     	add	x0, x0, #0x0
		0000000000000508:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x65f
     50c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000050c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     510: 91000021     	add	x1, x1, #0x0
		0000000000000510:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     514: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000514:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc9
     518: 91000042     	add	x2, x2, #0x0
		0000000000000518:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc9
     51c: 52806b03     	mov	w3, #0x358              // =856
     520: 94000000     	bl	0x520 <nb_fan_gpio_proc+0x1c4>
		0000000000000520:  R_AARCH64_CALL26	_printk
     524: 2a1f03e0     	mov	w0, wzr
     528: 17ffffd7     	b	0x484 <nb_fan_gpio_proc+0x128>
