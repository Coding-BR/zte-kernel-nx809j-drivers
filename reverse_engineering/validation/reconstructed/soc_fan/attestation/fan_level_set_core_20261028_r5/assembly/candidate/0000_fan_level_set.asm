
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000036c <fan_level_set>:
     36c: d503233f     	paciasp
     370: d10143ff     	sub	sp, sp, #0x50
     374: a9027bfd     	stp	x29, x30, [sp, #0x20]
     378: a90357f6     	stp	x22, x21, [sp, #0x30]
     37c: a9044ff4     	stp	x20, x19, [sp, #0x40]
     380: 910083fd     	add	x29, sp, #0x20
     384: d5384108     	mrs	x8, SP_EL0
     388: 12001c33     	and	w19, w1, #0xff
     38c: f9438908     	ldr	x8, [x8, #0x710]
     390: f81f83a8     	stur	x8, [x29, #-0x8]
     394: 39400008     	ldrb	w8, [x0]
     398: 6b13011f     	cmp	w8, w19
     39c: 54000bc0     	b.eq	0x514 <fan_level_set+0x1a8>
     3a0: 90000016     	adrp	x22, 0x0 <.text>
		00000000000003a0:  R_AARCH64_ADR_PREL_PG_HI21	chip
     3a4: aa0003f4     	mov	x20, x0
     3a8: f94002c8     	ldr	x8, [x22]
		00000000000003a8:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     3ac: f9402515     	ldr	x21, [x8, #0x48]
     3b0: 34000273     	cbz	w19, 0x3fc <fan_level_set+0x90>
     3b4: b40002d5     	cbz	x21, 0x40c <fan_level_set+0xa0>
     3b8: aa1503e0     	mov	x0, x21
     3bc: 94000000     	bl	0x3bc <fan_level_set+0x50>
		00000000000003bc:  R_AARCH64_CALL26	regulator_is_enabled
     3c0: 35000260     	cbnz	w0, 0x40c <fan_level_set+0xa0>
     3c4: aa1503e0     	mov	x0, x21
     3c8: 94000000     	bl	0x3c8 <fan_level_set+0x5c>
		00000000000003c8:  R_AARCH64_CALL26	regulator_enable
     3cc: 2a0003f5     	mov	w21, w0
     3d0: 52800140     	mov	w0, #0xa                // =10
     3d4: 94000000     	bl	0x3d4 <fan_level_set+0x68>
		00000000000003d4:  R_AARCH64_CALL26	msleep
     3d8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2de
     3dc: 91000000     	add	x0, x0, #0x0
		00000000000003dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2de
     3e0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e8
     3e4: 91000021     	add	x1, x1, #0x0
		00000000000003e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e8
     3e8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000003e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x359
     3ec: 91000042     	add	x2, x2, #0x0
		00000000000003ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x359
     3f0: 52801da3     	mov	w3, #0xed               // =237
     3f4: 2a1503e4     	mov	w4, w21
     3f8: 1400006a     	b	0x5a0 <fan_level_set+0x234>
     3fc: b4000095     	cbz	x21, 0x40c <fan_level_set+0xa0>
     400: aa1503e0     	mov	x0, x21
     404: 94000000     	bl	0x404 <fan_level_set+0x98>
		0000000000000404:  R_AARCH64_CALL26	regulator_is_enabled
     408: 35000b80     	cbnz	w0, 0x578 <fan_level_set+0x20c>
     40c: f9403688     	ldr	x8, [x20, #0x68]
     410: 5283e809     	mov	w9, #0x1f40             // =8000
     414: 7100027f     	cmp	w19, #0x0
     418: 1b097e69     	mul	w9, w19, w9
     41c: 1a9f07ea     	cset	w10, ne
     420: f9402108     	ldr	x8, [x8, #0x40]
     424: a900a3e9     	stp	x9, x8, [sp, #0x8]
     428: f94002c8     	ldr	x8, [x22]
		0000000000000428:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     42c: 52938809     	mov	w9, #0x9c40             // =40000
     430: 390053ea     	strb	w10, [sp, #0x14]
     434: f9400508     	ldr	x8, [x8, #0x8]
     438: f90003e9     	str	x9, [sp]
     43c: b9401100     	ldr	w0, [x8, #0x10]
     440: 94000000     	bl	0x440 <fan_level_set+0xd4>
		0000000000000440:  R_AARCH64_CALL26	gpio_to_desc
     444: 94000000     	bl	0x444 <fan_level_set+0xd8>
		0000000000000444:  R_AARCH64_CALL26	gpiod_get_raw_value
     448: 7100167f     	cmp	w19, #0x5
     44c: 54000241     	b.ne	0x494 <fan_level_set+0x128>
     450: 7100041f     	cmp	w0, #0x1
     454: 540000e1     	b.ne	0x470 <fan_level_set+0x104>
     458: f94002c8     	ldr	x8, [x22]
		0000000000000458:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     45c: f9400508     	ldr	x8, [x8, #0x8]
     460: b9401100     	ldr	w0, [x8, #0x10]
     464: 94000000     	bl	0x464 <fan_level_set+0xf8>
		0000000000000464:  R_AARCH64_CALL26	gpio_to_desc
     468: 2a1f03e1     	mov	w1, wzr
     46c: 94000000     	bl	0x46c <fan_level_set+0x100>
		000000000000046c:  R_AARCH64_CALL26	gpiod_direction_output_raw
     470: f9403688     	ldr	x8, [x20, #0x68]
     474: f9402109     	ldr	x9, [x8, #0x40]
     478: b940290a     	ldr	w10, [x8, #0x28]
     47c: f9401108     	ldr	x8, [x8, #0x20]
     480: a900a7ff     	stp	xzr, x9, [sp, #0x8]
     484: b90013ea     	str	w10, [sp, #0x10]
     488: f90003e8     	str	x8, [sp]
     48c: 79002bff     	strh	wzr, [sp, #0x14]
     490: 14000008     	b	0x4b0 <fan_level_set+0x144>
     494: 350000e0     	cbnz	w0, 0x4b0 <fan_level_set+0x144>
     498: f94002c8     	ldr	x8, [x22]
		0000000000000498:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     49c: f9400508     	ldr	x8, [x8, #0x8]
     4a0: b9401100     	ldr	w0, [x8, #0x10]
     4a4: 94000000     	bl	0x4a4 <fan_level_set+0x138>
		00000000000004a4:  R_AARCH64_CALL26	gpio_to_desc
     4a8: 52800021     	mov	w1, #0x1                // =1
     4ac: 94000000     	bl	0x4ac <fan_level_set+0x140>
		00000000000004ac:  R_AARCH64_CALL26	gpiod_direction_output_raw
     4b0: f9403681     	ldr	x1, [x20, #0x68]
     4b4: 910003e2     	mov	x2, sp
     4b8: f9400c20     	ldr	x0, [x1, #0x18]
     4bc: f941c808     	ldr	x8, [x0, #0x390]
     4c0: f9400d08     	ldr	x8, [x8, #0x18]
     4c4: b85fc110     	ldur	w16, [x8, #-0x4]
     4c8: 7292fa11     	movk	w17, #0x97d0
     4cc: 72bbba11     	movk	w17, #0xddd0, lsl #16
     4d0: 6b11021f     	cmp	w16, w17
     4d4: 54000040     	b.eq	0x4dc <fan_level_set+0x170>
     4d8: d4304500     	brk	#0x8228
     4dc: d63f0100     	blr	x8
     4e0: 37f80300     	tbnz	w0, #0x1f, 0x540 <fan_level_set+0x1d4>
     4e4: 39000293     	strb	w19, [x20]
     4e8: d5384108     	mrs	x8, SP_EL0
     4ec: f9438908     	ldr	x8, [x8, #0x710]
     4f0: f85f83a9     	ldur	x9, [x29, #-0x8]
     4f4: eb09011f     	cmp	x8, x9
     4f8: 54000581     	b.ne	0x5a8 <fan_level_set+0x23c>
     4fc: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     500: a94357f6     	ldp	x22, x21, [sp, #0x30]
     504: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     508: 910143ff     	add	sp, sp, #0x50
     50c: d50323bf     	autiasp
     510: d65f03c0     	ret
     514: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000514:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x333
     518: 91000000     	add	x0, x0, #0x0
		0000000000000518:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x333
     51c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000051c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e8
     520: 91000021     	add	x1, x1, #0x0
		0000000000000520:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e8
     524: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000524:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa0
     528: 91000042     	add	x2, x2, #0x0
		0000000000000528:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa0
     52c: 52801283     	mov	w3, #0x94               // =148
     530: 2a1303e4     	mov	w4, w19
     534: 94000000     	bl	0x534 <fan_level_set+0x1c8>
		0000000000000534:  R_AARCH64_CALL26	_printk
     538: 2a1f03e0     	mov	w0, wzr
     53c: 17ffffeb     	b	0x4e8 <fan_level_set+0x17c>
     540: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000540:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d
     544: 91000108     	add	x8, x8, #0x0
		0000000000000544:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d
     548: 2a0003f4     	mov	w20, w0
     54c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000054c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e8
     550: 91000021     	add	x1, x1, #0x0
		0000000000000550:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e8
     554: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000554:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa0
     558: 91000042     	add	x2, x2, #0x0
		0000000000000558:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa0
     55c: aa0803e0     	mov	x0, x8
     560: 528017e3     	mov	w3, #0xbf               // =191
     564: 2a1303e4     	mov	w4, w19
     568: 2a1403e5     	mov	w5, w20
     56c: 94000000     	bl	0x56c <fan_level_set+0x200>
		000000000000056c:  R_AARCH64_CALL26	_printk
     570: 2a1403e0     	mov	w0, w20
     574: 17ffffdd     	b	0x4e8 <fan_level_set+0x17c>
     578: aa1503e0     	mov	x0, x21
     57c: 94000000     	bl	0x57c <fan_level_set+0x210>
		000000000000057c:  R_AARCH64_CALL26	regulator_disable
     580: 2a0003e4     	mov	w4, w0
     584: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000584:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     588: 91000000     	add	x0, x0, #0x0
		0000000000000588:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     58c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000058c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e8
     590: 91000021     	add	x1, x1, #0x0
		0000000000000590:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e8
     594: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x359
     598: 91000042     	add	x2, x2, #0x0
		0000000000000598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x359
     59c: 52801ca3     	mov	w3, #0xe5               // =229
     5a0: 94000000     	bl	0x5a0 <fan_level_set+0x234>
		00000000000005a0:  R_AARCH64_CALL26	_printk
     5a4: 17ffff9a     	b	0x40c <fan_level_set+0xa0>
     5a8: 94000000     	bl	0x5a8 <fan_level_set+0x23c>
		00000000000005a8:  R_AARCH64_CALL26	__stack_chk_fail
