
/input/zte_misc.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000360 <battery_module_pack_vendor_get>:
     360: d503233f     	paciasp
     364: d10103ff     	sub	sp, sp, #0x40
     368: a9027bfd     	stp	x29, x30, [sp, #0x20]
     36c: a9034ff4     	stp	x20, x19, [sp, #0x30]
     370: 910083fd     	add	x29, sp, #0x20
     374: d5384108     	mrs	x8, SP_EL0
     378: aa0003f3     	mov	x19, x0
     37c: 910023e0     	add	x0, sp, #0x8
     380: f9438908     	ldr	x8, [x8, #0x710]
     384: 910013e2     	add	x2, sp, #0x4
     388: 52800141     	mov	w1, #0xa                // =10
     38c: f81f83a8     	stur	x8, [x29, #-0x8]
     390: b90007ff     	str	wzr, [sp, #0x4]
     394: 790023ff     	strh	wzr, [sp, #0x10]
     398: f90007ff     	str	xzr, [sp, #0x8]
     39c: 94000000     	bl	0x39c <battery_module_pack_vendor_get+0x3c>
		000000000000039c:  R_AARCH64_CALL26	kstrtoint
     3a0: 34000180     	cbz	w0, 0x3d0 <battery_module_pack_vendor_get+0x70>
     3a4: 12800000     	mov	w0, #-0x1               // =-1
     3a8: d5384108     	mrs	x8, SP_EL0
     3ac: f9438908     	ldr	x8, [x8, #0x710]
     3b0: f85f83a9     	ldur	x9, [x29, #-0x8]
     3b4: eb09011f     	cmp	x8, x9
     3b8: 54001be1     	b.ne	0x734 <battery_module_pack_vendor_get+0x3d4>
     3bc: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     3c0: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     3c4: 910103ff     	add	sp, sp, #0x40
     3c8: d50323bf     	autiasp
     3cc: d65f03c0     	ret
     3d0: b94007e1     	ldr	w1, [sp, #0x4]
     3d4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36b
     3d8: 91000000     	add	x0, x0, #0x0
		00000000000003d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36b
     3dc: 94000000     	bl	0x3dc <battery_module_pack_vendor_get+0x7c>
		00000000000003dc:  R_AARCH64_CALL26	_printk
     3e0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000003e0:  R_AARCH64_ADR_PREL_PG_HI21	resistance_kohm+0x20
     3e4: 52800da9     	mov	w9, #0x6d               // =109
     3e8: b98007ea     	ldrsw	x10, [sp, #0x4]
     3ec: b9400108     	ldr	w8, [x8]
		00000000000003ec:  R_AARCH64_LDST32_ABS_LO12_NC	resistance_kohm+0x20
     3f0: 1b097d09     	mul	w9, w8, w9
     3f4: 5289ba68     	mov	w8, #0x4dd3             // =19923
     3f8: 72a20c48     	movk	w8, #0x1062, lsl #16
     3fc: 9b287d4a     	smull	x10, w10, w8
     400: 5290a3e8     	mov	w8, #0x851f             // =34079
     404: 72aa3d68     	movk	w8, #0x51eb, lsl #16
     408: 9b287d29     	smull	x9, w9, w8
     40c: d360fd4b     	lsr	x11, x10, #32
     410: d37ffd4a     	lsr	x10, x10, #63
     414: d360fd2c     	lsr	x12, x9, #32
     418: d37ffd29     	lsr	x9, x9, #63
     41c: 0b8b1941     	add	w1, w10, w11, asr #6
     420: 0b8c1529     	add	w9, w9, w12, asr #5
     424: b90007e1     	str	w1, [sp, #0x4]
     428: 6b09003f     	cmp	w1, w9
     42c: 5400016c     	b.gt	0x458 <battery_module_pack_vendor_get+0xf8>
     430: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000430:  R_AARCH64_ADR_PREL_PG_HI21	resistance_kohm
     434: b940012a     	ldr	w10, [x9]
		0000000000000434:  R_AARCH64_LDST32_ABS_LO12_NC	resistance_kohm
     438: 52800b69     	mov	w9, #0x5b               // =91
     43c: 1b097d49     	mul	w9, w10, w9
     440: 9b287d28     	smull	x8, w9, w8
     444: d37ffd09     	lsr	x9, x8, #63
     448: 9365fd08     	asr	x8, x8, #37
     44c: 0b090108     	add	w8, w8, w9
     450: 6b08003f     	cmp	w1, w8
     454: 540000aa     	b.ge	0x468 <battery_module_pack_vendor_get+0x108>
     458: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000458:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28f
     45c: 91000000     	add	x0, x0, #0x0
		000000000000045c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28f
     460: 94000000     	bl	0x460 <battery_module_pack_vendor_get+0x100>
		0000000000000460:  R_AARCH64_CALL26	_printk
     464: 17ffffd0     	b	0x3a4 <battery_module_pack_vendor_get+0x44>
     468: 52800da9     	mov	w9, #0x6d               // =109
     46c: 1b097d4b     	mul	w11, w10, w9
     470: 5290a3ea     	mov	w10, #0x851f            // =34079
     474: 72aa3d6a     	movk	w10, #0x51eb, lsl #16
     478: 9b2a7d6b     	smull	x11, w11, w10
     47c: d37ffd6c     	lsr	x12, x11, #63
     480: 9365fd6b     	asr	x11, x11, #37
     484: 0b0c016b     	add	w11, w11, w12
     488: 6b0b003f     	cmp	w1, w11
     48c: 5400024a     	b.ge	0x4d4 <battery_module_pack_vendor_get+0x174>
     490: 6b08003f     	cmp	w1, w8
     494: 5400020d     	b.le	0x4d4 <battery_module_pack_vendor_get+0x174>
     498: aa1f03e8     	mov	x8, xzr
     49c: 90000009     	adrp	x9, 0x0 <.text>
		000000000000049c:  R_AARCH64_ADR_PREL_PG_HI21	battery_vendor_id
     4a0: 91000129     	add	x9, x9, #0x0
		00000000000004a0:  R_AARCH64_ADD_ABS_LO12_NC	battery_vendor_id
     4a4: b8687934     	ldr	w20, [x9, x8, lsl #2]
     4a8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae
     4ac: 91000000     	add	x0, x0, #0x0
		00000000000004ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae
     4b0: 2a1403e2     	mov	w2, w20
     4b4: 94000000     	bl	0x4b4 <battery_module_pack_vendor_get+0x154>
		00000000000004b4:  R_AARCH64_CALL26	_printk
     4b8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000004b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20
     4bc: 91000042     	add	x2, x2, #0x0
		00000000000004bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20
     4c0: aa1303e0     	mov	x0, x19
     4c4: 52820001     	mov	w1, #0x1000             // =4096
     4c8: 2a1403e3     	mov	w3, w20
     4cc: 94000000     	bl	0x4cc <battery_module_pack_vendor_get+0x16c>
		00000000000004cc:  R_AARCH64_CALL26	snprintf
     4d0: 17ffffb6     	b	0x3a8 <battery_module_pack_vendor_get+0x48>
     4d4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000004d4:  R_AARCH64_ADR_PREL_PG_HI21	resistance_kohm+0x4
     4d8: b9400108     	ldr	w8, [x8]
		00000000000004d8:  R_AARCH64_LDST32_ABS_LO12_NC	resistance_kohm+0x4
     4dc: 1b097d09     	mul	w9, w8, w9
     4e0: 9b2a7d29     	smull	x9, w9, w10
     4e4: d37ffd2a     	lsr	x10, x9, #63
     4e8: 9365fd29     	asr	x9, x9, #37
     4ec: 0b0a0129     	add	w9, w9, w10
     4f0: 6b09003f     	cmp	w1, w9
     4f4: 540001aa     	b.ge	0x528 <battery_module_pack_vendor_get+0x1c8>
     4f8: 52800b69     	mov	w9, #0x5b               // =91
     4fc: 1b097d08     	mul	w8, w8, w9
     500: 5290a3e9     	mov	w9, #0x851f             // =34079
     504: 72aa3d69     	movk	w9, #0x51eb, lsl #16
     508: 9b297d08     	smull	x8, w8, w9
     50c: d37ffd09     	lsr	x9, x8, #63
     510: 9365fd08     	asr	x8, x8, #37
     514: 0b090108     	add	w8, w8, w9
     518: 6b08003f     	cmp	w1, w8
     51c: 5400006d     	b.le	0x528 <battery_module_pack_vendor_get+0x1c8>
     520: 52800028     	mov	w8, #0x1                // =1
     524: 17ffffde     	b	0x49c <battery_module_pack_vendor_get+0x13c>
     528: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000528:  R_AARCH64_ADR_PREL_PG_HI21	resistance_kohm+0x8
     52c: 5290a3e9     	mov	w9, #0x851f             // =34079
     530: b940010a     	ldr	w10, [x8]
		0000000000000530:  R_AARCH64_LDST32_ABS_LO12_NC	resistance_kohm+0x8
     534: 52800da8     	mov	w8, #0x6d               // =109
     538: 72aa3d69     	movk	w9, #0x51eb, lsl #16
     53c: 1b087d4b     	mul	w11, w10, w8
     540: 9b297d6b     	smull	x11, w11, w9
     544: d37ffd6c     	lsr	x12, x11, #63
     548: 9365fd6b     	asr	x11, x11, #37
     54c: 0b0c016b     	add	w11, w11, w12
     550: 6b0b003f     	cmp	w1, w11
     554: 5400016a     	b.ge	0x580 <battery_module_pack_vendor_get+0x220>
     558: 52800b6b     	mov	w11, #0x5b              // =91
     55c: 1b0b7d4a     	mul	w10, w10, w11
     560: 9b297d4a     	smull	x10, w10, w9
     564: d37ffd4b     	lsr	x11, x10, #63
     568: 9365fd4a     	asr	x10, x10, #37
     56c: 0b0b014a     	add	w10, w10, w11
     570: 6b0a003f     	cmp	w1, w10
     574: 5400006d     	b.le	0x580 <battery_module_pack_vendor_get+0x220>
     578: 52800048     	mov	w8, #0x2                // =2
     57c: 17ffffc8     	b	0x49c <battery_module_pack_vendor_get+0x13c>
     580: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000580:  R_AARCH64_ADR_PREL_PG_HI21	resistance_kohm+0xc
     584: b940014a     	ldr	w10, [x10]
		0000000000000584:  R_AARCH64_LDST32_ABS_LO12_NC	resistance_kohm+0xc
     588: 1b087d48     	mul	w8, w10, w8
     58c: 9b297d08     	smull	x8, w8, w9
     590: d37ffd09     	lsr	x9, x8, #63
     594: 9365fd08     	asr	x8, x8, #37
     598: 0b090108     	add	w8, w8, w9
     59c: 6b08003f     	cmp	w1, w8
     5a0: 540001aa     	b.ge	0x5d4 <battery_module_pack_vendor_get+0x274>
     5a4: 52800b68     	mov	w8, #0x5b               // =91
     5a8: 5290a3e9     	mov	w9, #0x851f             // =34079
     5ac: 1b087d48     	mul	w8, w10, w8
     5b0: 72aa3d69     	movk	w9, #0x51eb, lsl #16
     5b4: 9b297d08     	smull	x8, w8, w9
     5b8: d37ffd09     	lsr	x9, x8, #63
     5bc: 9365fd08     	asr	x8, x8, #37
     5c0: 0b090108     	add	w8, w8, w9
     5c4: 6b08003f     	cmp	w1, w8
     5c8: 5400006d     	b.le	0x5d4 <battery_module_pack_vendor_get+0x274>
     5cc: 52800068     	mov	w8, #0x3                // =3
     5d0: 17ffffb3     	b	0x49c <battery_module_pack_vendor_get+0x13c>
     5d4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000005d4:  R_AARCH64_ADR_PREL_PG_HI21	resistance_kohm+0x10
     5d8: 5290a3e9     	mov	w9, #0x851f             // =34079
     5dc: b940010a     	ldr	w10, [x8]
		00000000000005dc:  R_AARCH64_LDST32_ABS_LO12_NC	resistance_kohm+0x10
     5e0: 52800da8     	mov	w8, #0x6d               // =109
     5e4: 72aa3d69     	movk	w9, #0x51eb, lsl #16
     5e8: 1b087d4b     	mul	w11, w10, w8
     5ec: 9b297d6b     	smull	x11, w11, w9
     5f0: d37ffd6c     	lsr	x12, x11, #63
     5f4: 9365fd6b     	asr	x11, x11, #37
     5f8: 0b0c016b     	add	w11, w11, w12
     5fc: 6b0b003f     	cmp	w1, w11
     600: 5400016a     	b.ge	0x62c <battery_module_pack_vendor_get+0x2cc>
     604: 52800b6b     	mov	w11, #0x5b              // =91
     608: 1b0b7d4a     	mul	w10, w10, w11
     60c: 9b297d4a     	smull	x10, w10, w9
     610: d37ffd4b     	lsr	x11, x10, #63
     614: 9365fd4a     	asr	x10, x10, #37
     618: 0b0b014a     	add	w10, w10, w11
     61c: 6b0a003f     	cmp	w1, w10
     620: 5400006d     	b.le	0x62c <battery_module_pack_vendor_get+0x2cc>
     624: 52800088     	mov	w8, #0x4                // =4
     628: 17ffff9d     	b	0x49c <battery_module_pack_vendor_get+0x13c>
     62c: 9000000a     	adrp	x10, 0x0 <.text>
		000000000000062c:  R_AARCH64_ADR_PREL_PG_HI21	resistance_kohm+0x14
     630: b940014a     	ldr	w10, [x10]
		0000000000000630:  R_AARCH64_LDST32_ABS_LO12_NC	resistance_kohm+0x14
     634: 1b087d48     	mul	w8, w10, w8
     638: 9b297d08     	smull	x8, w8, w9
     63c: d37ffd09     	lsr	x9, x8, #63
     640: 9365fd08     	asr	x8, x8, #37
     644: 0b090108     	add	w8, w8, w9
     648: 6b08003f     	cmp	w1, w8
     64c: 540001aa     	b.ge	0x680 <battery_module_pack_vendor_get+0x320>
     650: 52800b68     	mov	w8, #0x5b               // =91
     654: 5290a3e9     	mov	w9, #0x851f             // =34079
     658: 1b087d48     	mul	w8, w10, w8
     65c: 72aa3d69     	movk	w9, #0x51eb, lsl #16
     660: 9b297d08     	smull	x8, w8, w9
     664: d37ffd09     	lsr	x9, x8, #63
     668: 9365fd08     	asr	x8, x8, #37
     66c: 0b090108     	add	w8, w8, w9
     670: 6b08003f     	cmp	w1, w8
     674: 5400006d     	b.le	0x680 <battery_module_pack_vendor_get+0x320>
     678: 528000a8     	mov	w8, #0x5                // =5
     67c: 17ffff88     	b	0x49c <battery_module_pack_vendor_get+0x13c>
     680: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000680:  R_AARCH64_ADR_PREL_PG_HI21	resistance_kohm+0x18
     684: 5290a3e9     	mov	w9, #0x851f             // =34079
     688: b940010a     	ldr	w10, [x8]
		0000000000000688:  R_AARCH64_LDST32_ABS_LO12_NC	resistance_kohm+0x18
     68c: 52800da8     	mov	w8, #0x6d               // =109
     690: 72aa3d69     	movk	w9, #0x51eb, lsl #16
     694: 1b087d4b     	mul	w11, w10, w8
     698: 9b297d6b     	smull	x11, w11, w9
     69c: d37ffd6c     	lsr	x12, x11, #63
     6a0: 9365fd6b     	asr	x11, x11, #37
     6a4: 0b0c016b     	add	w11, w11, w12
     6a8: 6b0b003f     	cmp	w1, w11
     6ac: 5400016a     	b.ge	0x6d8 <battery_module_pack_vendor_get+0x378>
     6b0: 52800b6b     	mov	w11, #0x5b              // =91
     6b4: 1b0b7d4a     	mul	w10, w10, w11
     6b8: 9b297d4a     	smull	x10, w10, w9
     6bc: d37ffd4b     	lsr	x11, x10, #63
     6c0: 9365fd4a     	asr	x10, x10, #37
     6c4: 0b0b014a     	add	w10, w10, w11
     6c8: 6b0a003f     	cmp	w1, w10
     6cc: 5400006d     	b.le	0x6d8 <battery_module_pack_vendor_get+0x378>
     6d0: 528000c8     	mov	w8, #0x6                // =6
     6d4: 17ffff72     	b	0x49c <battery_module_pack_vendor_get+0x13c>
     6d8: 9000000a     	adrp	x10, 0x0 <.text>
		00000000000006d8:  R_AARCH64_ADR_PREL_PG_HI21	resistance_kohm+0x1c
     6dc: b940014a     	ldr	w10, [x10]
		00000000000006dc:  R_AARCH64_LDST32_ABS_LO12_NC	resistance_kohm+0x1c
     6e0: 1b087d48     	mul	w8, w10, w8
     6e4: 9b297d08     	smull	x8, w8, w9
     6e8: d37ffd09     	lsr	x9, x8, #63
     6ec: 9365fd08     	asr	x8, x8, #37
     6f0: 0b090108     	add	w8, w8, w9
     6f4: 6b08003f     	cmp	w1, w8
     6f8: 540001aa     	b.ge	0x72c <battery_module_pack_vendor_get+0x3cc>
     6fc: 52800b68     	mov	w8, #0x5b               // =91
     700: 5290a3e9     	mov	w9, #0x851f             // =34079
     704: 1b087d48     	mul	w8, w10, w8
     708: 72aa3d69     	movk	w9, #0x51eb, lsl #16
     70c: 9b297d08     	smull	x8, w8, w9
     710: d37ffd09     	lsr	x9, x8, #63
     714: 9365fd08     	asr	x8, x8, #37
     718: 0b090108     	add	w8, w8, w9
     71c: 6b08003f     	cmp	w1, w8
     720: 5400006d     	b.le	0x72c <battery_module_pack_vendor_get+0x3cc>
     724: 528000e8     	mov	w8, #0x7                // =7
     728: 17ffff5d     	b	0x49c <battery_module_pack_vendor_get+0x13c>
     72c: 2a1f03f4     	mov	w20, wzr
     730: 17ffff5e     	b	0x4a8 <battery_module_pack_vendor_get+0x148>
     734: 94000000     	bl	0x734 <battery_module_pack_vendor_get+0x3d4>
		0000000000000734:  R_AARCH64_CALL26	__stack_chk_fail
