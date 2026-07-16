
/input/zte_misc.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000005bc <battery_module_pack_vendor_get>:
     5bc: d503233f     	paciasp
     5c0: d10103ff     	sub	sp, sp, #0x40
     5c4: a9027bfd     	stp	x29, x30, [sp, #0x20]
     5c8: a9034ff4     	stp	x20, x19, [sp, #0x30]
     5cc: 910083fd     	add	x29, sp, #0x20
     5d0: d5384108     	mrs	x8, SP_EL0
     5d4: aa0003f3     	mov	x19, x0
     5d8: 910023e0     	add	x0, sp, #0x8
     5dc: f9438908     	ldr	x8, [x8, #0x710]
     5e0: 910013e2     	add	x2, sp, #0x4
     5e4: 52800141     	mov	w1, #0xa                // =10
     5e8: f81f83a8     	stur	x8, [x29, #-0x8]
     5ec: b90007ff     	str	wzr, [sp, #0x4]
     5f0: 790023ff     	strh	wzr, [sp, #0x10]
     5f4: f90007ff     	str	xzr, [sp, #0x8]
     5f8: 94000000     	bl	0x5f8 <battery_module_pack_vendor_get+0x3c>
		00000000000005f8:  R_AARCH64_CALL26	kstrtoint
     5fc: 34000180     	cbz	w0, 0x62c <battery_module_pack_vendor_get+0x70>
     600: 12800000     	mov	w0, #-0x1               // =-1
     604: d5384108     	mrs	x8, SP_EL0
     608: f9438908     	ldr	x8, [x8, #0x710]
     60c: f85f83a9     	ldur	x9, [x29, #-0x8]
     610: eb09011f     	cmp	x8, x9
     614: 54001be1     	b.ne	0x990 <battery_module_pack_vendor_get+0x3d4>
     618: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     61c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     620: 910103ff     	add	sp, sp, #0x40
     624: d50323bf     	autiasp
     628: d65f03c0     	ret
     62c: b94007e1     	ldr	w1, [sp, #0x4]
     630: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000630:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36b
     634: 91000000     	add	x0, x0, #0x0
		0000000000000634:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36b
     638: 94000000     	bl	0x638 <battery_module_pack_vendor_get+0x7c>
		0000000000000638:  R_AARCH64_CALL26	_printk
     63c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000063c:  R_AARCH64_ADR_PREL_PG_HI21	resistance_kohm+0x20
     640: 52800da9     	mov	w9, #0x6d               // =109
     644: b98007ea     	ldrsw	x10, [sp, #0x4]
     648: b9400108     	ldr	w8, [x8]
		0000000000000648:  R_AARCH64_LDST32_ABS_LO12_NC	resistance_kohm+0x20
     64c: 1b097d09     	mul	w9, w8, w9
     650: 5289ba68     	mov	w8, #0x4dd3             // =19923
     654: 72a20c48     	movk	w8, #0x1062, lsl #16
     658: 9b287d4a     	smull	x10, w10, w8
     65c: 5290a3e8     	mov	w8, #0x851f             // =34079
     660: 72aa3d68     	movk	w8, #0x51eb, lsl #16
     664: 9b287d29     	smull	x9, w9, w8
     668: d360fd4b     	lsr	x11, x10, #32
     66c: d37ffd4a     	lsr	x10, x10, #63
     670: d360fd2c     	lsr	x12, x9, #32
     674: d37ffd29     	lsr	x9, x9, #63
     678: 0b8b1941     	add	w1, w10, w11, asr #6
     67c: 0b8c1529     	add	w9, w9, w12, asr #5
     680: b90007e1     	str	w1, [sp, #0x4]
     684: 6b09003f     	cmp	w1, w9
     688: 5400016c     	b.gt	0x6b4 <battery_module_pack_vendor_get+0xf8>
     68c: 90000009     	adrp	x9, 0x0 <.text>
		000000000000068c:  R_AARCH64_ADR_PREL_PG_HI21	resistance_kohm
     690: b940012a     	ldr	w10, [x9]
		0000000000000690:  R_AARCH64_LDST32_ABS_LO12_NC	resistance_kohm
     694: 52800b69     	mov	w9, #0x5b               // =91
     698: 1b097d49     	mul	w9, w10, w9
     69c: 9b287d28     	smull	x8, w9, w8
     6a0: d37ffd09     	lsr	x9, x8, #63
     6a4: 9365fd08     	asr	x8, x8, #37
     6a8: 0b090108     	add	w8, w8, w9
     6ac: 6b08003f     	cmp	w1, w8
     6b0: 540000aa     	b.ge	0x6c4 <battery_module_pack_vendor_get+0x108>
     6b4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28f
     6b8: 91000000     	add	x0, x0, #0x0
		00000000000006b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28f
     6bc: 94000000     	bl	0x6bc <battery_module_pack_vendor_get+0x100>
		00000000000006bc:  R_AARCH64_CALL26	_printk
     6c0: 17ffffd0     	b	0x600 <battery_module_pack_vendor_get+0x44>
     6c4: 52800da9     	mov	w9, #0x6d               // =109
     6c8: 1b097d4b     	mul	w11, w10, w9
     6cc: 5290a3ea     	mov	w10, #0x851f            // =34079
     6d0: 72aa3d6a     	movk	w10, #0x51eb, lsl #16
     6d4: 9b2a7d6b     	smull	x11, w11, w10
     6d8: d37ffd6c     	lsr	x12, x11, #63
     6dc: 9365fd6b     	asr	x11, x11, #37
     6e0: 0b0c016b     	add	w11, w11, w12
     6e4: 6b0b003f     	cmp	w1, w11
     6e8: 5400024a     	b.ge	0x730 <battery_module_pack_vendor_get+0x174>
     6ec: 6b08003f     	cmp	w1, w8
     6f0: 5400020d     	b.le	0x730 <battery_module_pack_vendor_get+0x174>
     6f4: aa1f03e8     	mov	x8, xzr
     6f8: 90000009     	adrp	x9, 0x0 <.text>
		00000000000006f8:  R_AARCH64_ADR_PREL_PG_HI21	battery_vendor_id
     6fc: 91000129     	add	x9, x9, #0x0
		00000000000006fc:  R_AARCH64_ADD_ABS_LO12_NC	battery_vendor_id
     700: b8687934     	ldr	w20, [x9, x8, lsl #2]
     704: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000704:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae
     708: 91000000     	add	x0, x0, #0x0
		0000000000000708:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae
     70c: 2a1403e2     	mov	w2, w20
     710: 94000000     	bl	0x710 <battery_module_pack_vendor_get+0x154>
		0000000000000710:  R_AARCH64_CALL26	_printk
     714: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000714:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     718: 91000042     	add	x2, x2, #0x0
		0000000000000718:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     71c: aa1303e0     	mov	x0, x19
     720: 52820001     	mov	w1, #0x1000             // =4096
     724: 2a1403e3     	mov	w3, w20
     728: 94000000     	bl	0x728 <battery_module_pack_vendor_get+0x16c>
		0000000000000728:  R_AARCH64_CALL26	snprintf
     72c: 17ffffb6     	b	0x604 <battery_module_pack_vendor_get+0x48>
     730: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000730:  R_AARCH64_ADR_PREL_PG_HI21	resistance_kohm+0x4
     734: b9400108     	ldr	w8, [x8]
		0000000000000734:  R_AARCH64_LDST32_ABS_LO12_NC	resistance_kohm+0x4
     738: 1b097d09     	mul	w9, w8, w9
     73c: 9b2a7d29     	smull	x9, w9, w10
     740: d37ffd2a     	lsr	x10, x9, #63
     744: 9365fd29     	asr	x9, x9, #37
     748: 0b0a0129     	add	w9, w9, w10
     74c: 6b09003f     	cmp	w1, w9
     750: 540001aa     	b.ge	0x784 <battery_module_pack_vendor_get+0x1c8>
     754: 52800b69     	mov	w9, #0x5b               // =91
     758: 1b097d08     	mul	w8, w8, w9
     75c: 5290a3e9     	mov	w9, #0x851f             // =34079
     760: 72aa3d69     	movk	w9, #0x51eb, lsl #16
     764: 9b297d08     	smull	x8, w8, w9
     768: d37ffd09     	lsr	x9, x8, #63
     76c: 9365fd08     	asr	x8, x8, #37
     770: 0b090108     	add	w8, w8, w9
     774: 6b08003f     	cmp	w1, w8
     778: 5400006d     	b.le	0x784 <battery_module_pack_vendor_get+0x1c8>
     77c: 52800028     	mov	w8, #0x1                // =1
     780: 17ffffde     	b	0x6f8 <battery_module_pack_vendor_get+0x13c>
     784: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000784:  R_AARCH64_ADR_PREL_PG_HI21	resistance_kohm+0x8
     788: 5290a3e9     	mov	w9, #0x851f             // =34079
     78c: b940010a     	ldr	w10, [x8]
		000000000000078c:  R_AARCH64_LDST32_ABS_LO12_NC	resistance_kohm+0x8
     790: 52800da8     	mov	w8, #0x6d               // =109
     794: 72aa3d69     	movk	w9, #0x51eb, lsl #16
     798: 1b087d4b     	mul	w11, w10, w8
     79c: 9b297d6b     	smull	x11, w11, w9
     7a0: d37ffd6c     	lsr	x12, x11, #63
     7a4: 9365fd6b     	asr	x11, x11, #37
     7a8: 0b0c016b     	add	w11, w11, w12
     7ac: 6b0b003f     	cmp	w1, w11
     7b0: 5400016a     	b.ge	0x7dc <battery_module_pack_vendor_get+0x220>
     7b4: 52800b6b     	mov	w11, #0x5b              // =91
     7b8: 1b0b7d4a     	mul	w10, w10, w11
     7bc: 9b297d4a     	smull	x10, w10, w9
     7c0: d37ffd4b     	lsr	x11, x10, #63
     7c4: 9365fd4a     	asr	x10, x10, #37
     7c8: 0b0b014a     	add	w10, w10, w11
     7cc: 6b0a003f     	cmp	w1, w10
     7d0: 5400006d     	b.le	0x7dc <battery_module_pack_vendor_get+0x220>
     7d4: 52800048     	mov	w8, #0x2                // =2
     7d8: 17ffffc8     	b	0x6f8 <battery_module_pack_vendor_get+0x13c>
     7dc: 9000000a     	adrp	x10, 0x0 <.text>
		00000000000007dc:  R_AARCH64_ADR_PREL_PG_HI21	resistance_kohm+0xc
     7e0: b940014a     	ldr	w10, [x10]
		00000000000007e0:  R_AARCH64_LDST32_ABS_LO12_NC	resistance_kohm+0xc
     7e4: 1b087d48     	mul	w8, w10, w8
     7e8: 9b297d08     	smull	x8, w8, w9
     7ec: d37ffd09     	lsr	x9, x8, #63
     7f0: 9365fd08     	asr	x8, x8, #37
     7f4: 0b090108     	add	w8, w8, w9
     7f8: 6b08003f     	cmp	w1, w8
     7fc: 540001aa     	b.ge	0x830 <battery_module_pack_vendor_get+0x274>
     800: 52800b68     	mov	w8, #0x5b               // =91
     804: 5290a3e9     	mov	w9, #0x851f             // =34079
     808: 1b087d48     	mul	w8, w10, w8
     80c: 72aa3d69     	movk	w9, #0x51eb, lsl #16
     810: 9b297d08     	smull	x8, w8, w9
     814: d37ffd09     	lsr	x9, x8, #63
     818: 9365fd08     	asr	x8, x8, #37
     81c: 0b090108     	add	w8, w8, w9
     820: 6b08003f     	cmp	w1, w8
     824: 5400006d     	b.le	0x830 <battery_module_pack_vendor_get+0x274>
     828: 52800068     	mov	w8, #0x3                // =3
     82c: 17ffffb3     	b	0x6f8 <battery_module_pack_vendor_get+0x13c>
     830: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000830:  R_AARCH64_ADR_PREL_PG_HI21	resistance_kohm+0x10
     834: 5290a3e9     	mov	w9, #0x851f             // =34079
     838: b940010a     	ldr	w10, [x8]
		0000000000000838:  R_AARCH64_LDST32_ABS_LO12_NC	resistance_kohm+0x10
     83c: 52800da8     	mov	w8, #0x6d               // =109
     840: 72aa3d69     	movk	w9, #0x51eb, lsl #16
     844: 1b087d4b     	mul	w11, w10, w8
     848: 9b297d6b     	smull	x11, w11, w9
     84c: d37ffd6c     	lsr	x12, x11, #63
     850: 9365fd6b     	asr	x11, x11, #37
     854: 0b0c016b     	add	w11, w11, w12
     858: 6b0b003f     	cmp	w1, w11
     85c: 5400016a     	b.ge	0x888 <battery_module_pack_vendor_get+0x2cc>
     860: 52800b6b     	mov	w11, #0x5b              // =91
     864: 1b0b7d4a     	mul	w10, w10, w11
     868: 9b297d4a     	smull	x10, w10, w9
     86c: d37ffd4b     	lsr	x11, x10, #63
     870: 9365fd4a     	asr	x10, x10, #37
     874: 0b0b014a     	add	w10, w10, w11
     878: 6b0a003f     	cmp	w1, w10
     87c: 5400006d     	b.le	0x888 <battery_module_pack_vendor_get+0x2cc>
     880: 52800088     	mov	w8, #0x4                // =4
     884: 17ffff9d     	b	0x6f8 <battery_module_pack_vendor_get+0x13c>
     888: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000888:  R_AARCH64_ADR_PREL_PG_HI21	resistance_kohm+0x14
     88c: b940014a     	ldr	w10, [x10]
		000000000000088c:  R_AARCH64_LDST32_ABS_LO12_NC	resistance_kohm+0x14
     890: 1b087d48     	mul	w8, w10, w8
     894: 9b297d08     	smull	x8, w8, w9
     898: d37ffd09     	lsr	x9, x8, #63
     89c: 9365fd08     	asr	x8, x8, #37
     8a0: 0b090108     	add	w8, w8, w9
     8a4: 6b08003f     	cmp	w1, w8
     8a8: 540001aa     	b.ge	0x8dc <battery_module_pack_vendor_get+0x320>
     8ac: 52800b68     	mov	w8, #0x5b               // =91
     8b0: 5290a3e9     	mov	w9, #0x851f             // =34079
     8b4: 1b087d48     	mul	w8, w10, w8
     8b8: 72aa3d69     	movk	w9, #0x51eb, lsl #16
     8bc: 9b297d08     	smull	x8, w8, w9
     8c0: d37ffd09     	lsr	x9, x8, #63
     8c4: 9365fd08     	asr	x8, x8, #37
     8c8: 0b090108     	add	w8, w8, w9
     8cc: 6b08003f     	cmp	w1, w8
     8d0: 5400006d     	b.le	0x8dc <battery_module_pack_vendor_get+0x320>
     8d4: 528000a8     	mov	w8, #0x5                // =5
     8d8: 17ffff88     	b	0x6f8 <battery_module_pack_vendor_get+0x13c>
     8dc: 90000008     	adrp	x8, 0x0 <.text>
		00000000000008dc:  R_AARCH64_ADR_PREL_PG_HI21	resistance_kohm+0x18
     8e0: 5290a3e9     	mov	w9, #0x851f             // =34079
     8e4: b940010a     	ldr	w10, [x8]
		00000000000008e4:  R_AARCH64_LDST32_ABS_LO12_NC	resistance_kohm+0x18
     8e8: 52800da8     	mov	w8, #0x6d               // =109
     8ec: 72aa3d69     	movk	w9, #0x51eb, lsl #16
     8f0: 1b087d4b     	mul	w11, w10, w8
     8f4: 9b297d6b     	smull	x11, w11, w9
     8f8: d37ffd6c     	lsr	x12, x11, #63
     8fc: 9365fd6b     	asr	x11, x11, #37
     900: 0b0c016b     	add	w11, w11, w12
     904: 6b0b003f     	cmp	w1, w11
     908: 5400016a     	b.ge	0x934 <battery_module_pack_vendor_get+0x378>
     90c: 52800b6b     	mov	w11, #0x5b              // =91
     910: 1b0b7d4a     	mul	w10, w10, w11
     914: 9b297d4a     	smull	x10, w10, w9
     918: d37ffd4b     	lsr	x11, x10, #63
     91c: 9365fd4a     	asr	x10, x10, #37
     920: 0b0b014a     	add	w10, w10, w11
     924: 6b0a003f     	cmp	w1, w10
     928: 5400006d     	b.le	0x934 <battery_module_pack_vendor_get+0x378>
     92c: 528000c8     	mov	w8, #0x6                // =6
     930: 17ffff72     	b	0x6f8 <battery_module_pack_vendor_get+0x13c>
     934: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000934:  R_AARCH64_ADR_PREL_PG_HI21	resistance_kohm+0x1c
     938: b940014a     	ldr	w10, [x10]
		0000000000000938:  R_AARCH64_LDST32_ABS_LO12_NC	resistance_kohm+0x1c
     93c: 1b087d48     	mul	w8, w10, w8
     940: 9b297d08     	smull	x8, w8, w9
     944: d37ffd09     	lsr	x9, x8, #63
     948: 9365fd08     	asr	x8, x8, #37
     94c: 0b090108     	add	w8, w8, w9
     950: 6b08003f     	cmp	w1, w8
     954: 540001aa     	b.ge	0x988 <battery_module_pack_vendor_get+0x3cc>
     958: 52800b68     	mov	w8, #0x5b               // =91
     95c: 5290a3e9     	mov	w9, #0x851f             // =34079
     960: 1b087d48     	mul	w8, w10, w8
     964: 72aa3d69     	movk	w9, #0x51eb, lsl #16
     968: 9b297d08     	smull	x8, w8, w9
     96c: d37ffd09     	lsr	x9, x8, #63
     970: 9365fd08     	asr	x8, x8, #37
     974: 0b090108     	add	w8, w8, w9
     978: 6b08003f     	cmp	w1, w8
     97c: 5400006d     	b.le	0x988 <battery_module_pack_vendor_get+0x3cc>
     980: 528000e8     	mov	w8, #0x7                // =7
     984: 17ffff5d     	b	0x6f8 <battery_module_pack_vendor_get+0x13c>
     988: 2a1f03f4     	mov	w20, wzr
     98c: 17ffff5e     	b	0x704 <battery_module_pack_vendor_get+0x148>
     990: 94000000     	bl	0x990 <battery_module_pack_vendor_get+0x3d4>
		0000000000000990:  R_AARCH64_CALL26	__stack_chk_fail
