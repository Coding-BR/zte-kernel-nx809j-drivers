
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000024b4 <aw8693x_trig_init>:
    24b4: d503233f     	paciasp
    24b8: d10103ff     	sub	sp, sp, #0x40
    24bc: a9027bfd     	stp	x29, x30, [sp, #0x20]
    24c0: a9034ff4     	stp	x20, x19, [sp, #0x30]
    24c4: 910083fd     	add	x29, sp, #0x20
    24c8: d5384108     	mrs	x8, SP_EL0
    24cc: aa0003f3     	mov	x19, x0
    24d0: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000024d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb54
    24d4: 91000000     	add	x0, x0, #0x0
		00000000000024d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb54
    24d8: f9438908     	ldr	x8, [x8, #0x710]
    24dc: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000024dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    24e0: 91000021     	add	x1, x1, #0x0
		00000000000024e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    24e4: 90000003     	adrp	x3, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000024e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
    24e8: 91000063     	add	x3, x3, #0x0
		00000000000024e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
    24ec: 5280c322     	mov	w2, #0x619              // =1561
    24f0: f81f83a8     	stur	x8, [x29, #-0x8]
    24f4: 94000000     	bl	0x24f4 <aw8693x_trig_init+0x40>
		00000000000024f4:  R_AARCH64_CALL26	_printk
    24f8: 3952fe68     	ldrb	w8, [x19, #0x4bf]
    24fc: 7100051f     	cmp	w8, #0x1
    2500: 54001660     	b.eq	0x27cc <aw8693x_trig_init+0x318>
    2504: 39529668     	ldrb	w8, [x19, #0x4a5]
    2508: 39529e6a     	ldrb	w10, [x19, #0x4a7]
    250c: 12800feb     	mov	w11, #-0x80             // =-128
    2510: 39529a69     	ldrb	w9, [x19, #0x4a6]
    2514: 3952a66c     	ldrb	w12, [x19, #0x4a9]
    2518: aa1303e0     	mov	x0, x19
    251c: 7100011f     	cmp	w8, #0x0
    2520: 39179e68     	strb	w8, [x19, #0x5e7]
    2524: 52800721     	mov	w1, #0x39               // =57
    2528: 1a9f07e8     	cset	w8, ne
    252c: 3917a66a     	strb	w10, [x19, #0x5e9]
    2530: 3952a26a     	ldrb	w10, [x19, #0x4a8]
    2534: 531a650d     	lsl	w13, w8, #6
    2538: 331a010b     	bfi	w11, w8, #6, #1
    253c: 3952ae68     	ldrb	w8, [x19, #0x4ab]
    2540: 7100013f     	cmp	w9, #0x0
    2544: 3917a269     	strb	w9, [x19, #0x5e8]
    2548: 3952aa69     	ldrb	w9, [x19, #0x4aa]
    254c: 3917ae6a     	strb	w10, [x19, #0x5eb]
    2550: 1a8b01aa     	csel	w10, w13, w11, eq
    2554: 3952b26b     	ldrb	w11, [x19, #0x4ac]
    2558: 3917aa6c     	strb	w12, [x19, #0x5ea]
    255c: 321b014c     	orr	w12, w10, #0x20
    2560: 7100011f     	cmp	w8, #0x0
    2564: 3917b269     	strb	w9, [x19, #0x5ec]
    2568: 1a8c0149     	csel	w9, w10, w12, eq
    256c: 7100017f     	cmp	w11, #0x0
    2570: 39179668     	strb	w8, [x19, #0x5e5]
    2574: 321c0128     	orr	w8, w9, #0x10
    2578: 12801e02     	mov	w2, #-0xf1              // =-241
    257c: 1a880123     	csel	w3, w9, w8, eq
    2580: 39179a6b     	strb	w11, [x19, #0x5e6]
    2584: 94000000     	bl	0x2584 <aw8693x_trig_init+0xd0>
		0000000000002584:  R_AARCH64_CALL26	i2c_w_bits
    2588: 3957a668     	ldrb	w8, [x19, #0x5e9]
    258c: 910033e2     	add	x2, sp, #0xc
    2590: aa1303e0     	mov	x0, x19
    2594: 52800661     	mov	w1, #0x33               // =51
    2598: 52800023     	mov	w3, #0x1                // =1
    259c: 7100011f     	cmp	w8, #0x0
    25a0: 3957ae68     	ldrb	w8, [x19, #0x5eb]
    25a4: 1a9f07e9     	cset	w9, ne
    25a8: 2a091d08     	orr	w8, w8, w9, lsl #7
    25ac: 390033e8     	strb	w8, [sp, #0xc]
    25b0: 94000000     	bl	0x25b0 <aw8693x_trig_init+0xfc>
		00000000000025b0:  R_AARCH64_CALL26	i2c_w_bytes
    25b4: 3957aa68     	ldrb	w8, [x19, #0x5ea]
    25b8: 910033e2     	add	x2, sp, #0xc
    25bc: aa1303e0     	mov	x0, x19
    25c0: 528006c1     	mov	w1, #0x36               // =54
    25c4: 52800023     	mov	w3, #0x1                // =1
    25c8: 7100011f     	cmp	w8, #0x0
    25cc: 3957b268     	ldrb	w8, [x19, #0x5ec]
    25d0: 1a9f07e9     	cset	w9, ne
    25d4: 2a091d08     	orr	w8, w8, w9, lsl #7
    25d8: 390033e8     	strb	w8, [sp, #0xc]
    25dc: 94000000     	bl	0x25dc <aw8693x_trig_init+0x128>
		00000000000025dc:  R_AARCH64_CALL26	i2c_w_bytes
    25e0: 3952b668     	ldrb	w8, [x19, #0x4ad]
    25e4: 3952be6a     	ldrb	w10, [x19, #0x4af]
    25e8: 5280010d     	mov	w13, #0x8               // =8
    25ec: 3952ba69     	ldrb	w9, [x19, #0x4ae]
    25f0: 3952c26b     	ldrb	w11, [x19, #0x4b0]
    25f4: aa1303e0     	mov	x0, x19
    25f8: 7100011f     	cmp	w8, #0x0
    25fc: 3917da6a     	strb	w10, [x19, #0x5f6]
    2600: 52800721     	mov	w1, #0x39               // =57
    2604: 1a9f07ea     	cset	w10, ne
    2608: 3917d268     	strb	w8, [x19, #0x5f4]
    260c: 3952c668     	ldrb	w8, [x19, #0x4b1]
    2610: 531e754c     	lsl	w12, w10, #2
    2614: 331e014d     	bfi	w13, w10, #2, #1
    2618: 3952da6a     	ldrb	w10, [x19, #0x4b6]
    261c: 3917d669     	strb	w9, [x19, #0x5f5]
    2620: 7100013f     	cmp	w9, #0x0
    2624: 3952de69     	ldrb	w9, [x19, #0x4b7]
    2628: 3917e26b     	strb	w11, [x19, #0x5f8]
    262c: 3952ca6b     	ldrb	w11, [x19, #0x4b2]
    2630: 1a8d018c     	csel	w12, w12, w13, eq
    2634: 39180a6a     	strb	w10, [x19, #0x602]
    2638: 3952e26a     	ldrb	w10, [x19, #0x4b8]
    263c: 9117fe6d     	add	x13, x19, #0x5ff
    2640: 3917de68     	strb	w8, [x19, #0x5f7]
    2644: 3952ce68     	ldrb	w8, [x19, #0x4b3]
    2648: 128001e2     	mov	w2, #-0x10              // =-16
    264c: 3917e66b     	strb	w11, [x19, #0x5f9]
    2650: 3952d66b     	ldrb	w11, [x19, #0x4b5]
    2654: 39180e69     	strb	w9, [x19, #0x603]
    2658: 3952e669     	ldrb	w9, [x19, #0x4b9]
    265c: 7100011f     	cmp	w8, #0x0
    2660: 3918166a     	strb	w10, [x19, #0x605]
    2664: 3952d26a     	ldrb	w10, [x19, #0x4b4]
    2668: 3918066b     	strb	w11, [x19, #0x601]
    266c: 9112ee6b     	add	x11, x19, #0x4bb
    2670: 39181269     	strb	w9, [x19, #0x604]
    2674: 321f0189     	orr	w9, w12, #0x2
    2678: 7940016b     	ldrh	w11, [x11]
    267c: 3917ca68     	strb	w8, [x19, #0x5f2]
    2680: 3952ea68     	ldrb	w8, [x19, #0x4ba]
    2684: 1a890189     	csel	w9, w12, w9, eq
    2688: 7100015f     	cmp	w10, #0x0
    268c: 3917ce6a     	strb	w10, [x19, #0x5f3]
    2690: 1a890523     	cinc	w3, w9, ne
    2694: 39181a68     	strb	w8, [x19, #0x606]
    2698: 790001ab     	strh	w11, [x13]
    269c: 94000000     	bl	0x269c <aw8693x_trig_init+0x1e8>
		000000000000269c:  R_AARCH64_CALL26	i2c_w_bits
    26a0: 3957da68     	ldrb	w8, [x19, #0x5f6]
    26a4: 910043e2     	add	x2, sp, #0x10
    26a8: aa1303e0     	mov	x0, x19
    26ac: 52800681     	mov	w1, #0x34               // =52
    26b0: 52800023     	mov	w3, #0x1                // =1
    26b4: 7100011f     	cmp	w8, #0x0
    26b8: 3957e268     	ldrb	w8, [x19, #0x5f8]
    26bc: 1a9f07e9     	cset	w9, ne
    26c0: 2a091d08     	orr	w8, w8, w9, lsl #7
    26c4: 390043e8     	strb	w8, [sp, #0x10]
    26c8: 94000000     	bl	0x26c8 <aw8693x_trig_init+0x214>
		00000000000026c8:  R_AARCH64_CALL26	i2c_w_bytes
    26cc: 3957de68     	ldrb	w8, [x19, #0x5f7]
    26d0: 910043e2     	add	x2, sp, #0x10
    26d4: aa1303e0     	mov	x0, x19
    26d8: 528006e1     	mov	w1, #0x37               // =55
    26dc: 52800023     	mov	w3, #0x1                // =1
    26e0: 7100011f     	cmp	w8, #0x0
    26e4: 3957e668     	ldrb	w8, [x19, #0x5f9]
    26e8: 1a9f07e9     	cset	w9, ne
    26ec: 2a091d08     	orr	w8, w8, w9, lsl #7
    26f0: 390043e8     	strb	w8, [sp, #0x10]
    26f4: 94000000     	bl	0x26f4 <aw8693x_trig_init+0x240>
		00000000000026f4:  R_AARCH64_CALL26	i2c_w_bytes
    26f8: 39580668     	ldrb	w8, [x19, #0x601]
    26fc: 39580a69     	ldrb	w9, [x19, #0x602]
    2700: 12800fea     	mov	w10, #-0x80             // =-128
    2704: aa1303e0     	mov	x0, x19
    2708: 52800741     	mov	w1, #0x3a               // =58
    270c: 12801e02     	mov	w2, #-0xf1              // =-241
    2710: 7100011f     	cmp	w8, #0x0
    2714: 1a9f07e8     	cset	w8, ne
    2718: 7100013f     	cmp	w9, #0x0
    271c: 531a650b     	lsl	w11, w8, #6
    2720: 331a010a     	bfi	w10, w8, #6, #1
    2724: 3957fe68     	ldrb	w8, [x19, #0x5ff]
    2728: 1a8a0169     	csel	w9, w11, w10, eq
    272c: 7100011f     	cmp	w8, #0x0
    2730: 39580268     	ldrb	w8, [x19, #0x600]
    2734: 321b012a     	orr	w10, w9, #0x20
    2738: 1a8a0129     	csel	w9, w9, w10, eq
    273c: 7100011f     	cmp	w8, #0x0
    2740: 321c012a     	orr	w10, w9, #0x10
    2744: 1a8a0123     	csel	w3, w9, w10, eq
    2748: 94000000     	bl	0x2748 <aw8693x_trig_init+0x294>
		0000000000002748:  R_AARCH64_CALL26	i2c_w_bits
    274c: 39580e68     	ldrb	w8, [x19, #0x603]
    2750: d10033a2     	sub	x2, x29, #0xc
    2754: aa1303e0     	mov	x0, x19
    2758: 528006a1     	mov	w1, #0x35               // =53
    275c: 52800023     	mov	w3, #0x1                // =1
    2760: 7100011f     	cmp	w8, #0x0
    2764: 39581668     	ldrb	w8, [x19, #0x605]
    2768: 1a9f07e9     	cset	w9, ne
    276c: 2a091d08     	orr	w8, w8, w9, lsl #7
    2770: 381f43a8     	sturb	w8, [x29, #-0xc]
    2774: 94000000     	bl	0x2774 <aw8693x_trig_init+0x2c0>
		0000000000002774:  R_AARCH64_CALL26	i2c_w_bytes
    2778: 39581268     	ldrb	w8, [x19, #0x604]
    277c: d10033a2     	sub	x2, x29, #0xc
    2780: aa1303e0     	mov	x0, x19
    2784: 52800701     	mov	w1, #0x38               // =56
    2788: 52800023     	mov	w3, #0x1                // =1
    278c: 7100011f     	cmp	w8, #0x0
    2790: 39581a68     	ldrb	w8, [x19, #0x606]
    2794: 1a9f07e9     	cset	w9, ne
    2798: 2a091d08     	orr	w8, w8, w9, lsl #7
    279c: 381f43a8     	sturb	w8, [x29, #-0xc]
    27a0: 94000000     	bl	0x27a0 <aw8693x_trig_init+0x2ec>
		00000000000027a0:  R_AARCH64_CALL26	i2c_w_bytes
    27a4: d5384108     	mrs	x8, SP_EL0
    27a8: f9438908     	ldr	x8, [x8, #0x710]
    27ac: f85f83a9     	ldur	x9, [x29, #-0x8]
    27b0: eb09011f     	cmp	x8, x9
    27b4: 54000541     	b.ne	0x285c <aw8693x_trig_init+0x3a8>
    27b8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    27bc: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    27c0: 910103ff     	add	sp, sp, #0x40
    27c4: d50323bf     	autiasp
    27c8: d65f03c0     	ret
    27cc: 90000014     	adrp	x20, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000027cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    27d0: 91000294     	add	x20, x20, #0x0
		00000000000027d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    27d4: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000027d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe70
    27d8: 91000000     	add	x0, x0, #0x0
		00000000000027d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe70
    27dc: 90000003     	adrp	x3, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000027dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
    27e0: 91000063     	add	x3, x3, #0x0
		00000000000027e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
    27e4: aa1403e1     	mov	x1, x20
    27e8: 5280c362     	mov	w2, #0x61b              // =1563
    27ec: 94000000     	bl	0x27ec <aw8693x_trig_init+0x338>
		00000000000027ec:  R_AARCH64_CALL26	_printk
    27f0: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000027f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb54
    27f4: 91000000     	add	x0, x0, #0x0
		00000000000027f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb54
    27f8: 90000003     	adrp	x3, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000027f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be6
    27fc: 91000063     	add	x3, x3, #0x0
		00000000000027fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be6
    2800: aa1403e1     	mov	x1, x20
    2804: 52806162     	mov	w2, #0x30b              // =779
    2808: 94000000     	bl	0x2808 <aw8693x_trig_init+0x354>
		0000000000002808:  R_AARCH64_CALL26	_printk
    280c: 52800d88     	mov	w8, #0x6c               // =108
    2810: 910023e2     	add	x2, sp, #0x8
    2814: aa1303e0     	mov	x0, x19
    2818: 528007c1     	mov	w1, #0x3e               // =62
    281c: 52800023     	mov	w3, #0x1                // =1
    2820: 390023e8     	strb	w8, [sp, #0x8]
    2824: 94000000     	bl	0x2824 <aw8693x_trig_init+0x370>
		0000000000002824:  R_AARCH64_CALL26	i2c_w_bytes
    2828: 52800ea8     	mov	w8, #0x75               // =117
    282c: 910023e2     	add	x2, sp, #0x8
    2830: aa1303e0     	mov	x0, x19
    2834: 52800781     	mov	w1, #0x3c               // =60
    2838: 52800023     	mov	w3, #0x1                // =1
    283c: 390023e8     	strb	w8, [sp, #0x8]
    2840: 94000000     	bl	0x2840 <aw8693x_trig_init+0x38c>
		0000000000002840:  R_AARCH64_CALL26	i2c_w_bytes
    2844: aa1303e0     	mov	x0, x19
    2848: 52800741     	mov	w1, #0x3a               // =58
    284c: 12800102     	mov	w2, #-0x9               // =-9
    2850: 52800103     	mov	w3, #0x8                // =8
    2854: 94000000     	bl	0x2854 <aw8693x_trig_init+0x3a0>
		0000000000002854:  R_AARCH64_CALL26	i2c_w_bits
    2858: 17ffff62     	b	0x25e0 <aw8693x_trig_init+0x12c>
    285c: 94000000     	bl	0x285c <aw8693x_trig_init+0x3a8>
		000000000000285c:  R_AARCH64_CALL26	__stack_chk_fail
