
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000184 <rdbg_open>:
     184: d503233f     	paciasp
     188: d101c3ff     	sub	sp, sp, #0x70
     18c: a9017bfd     	stp	x29, x30, [sp, #0x10]
     190: a9026ffc     	stp	x28, x27, [sp, #0x20]
     194: a90367fa     	stp	x26, x25, [sp, #0x30]
     198: a9045ff8     	stp	x24, x23, [sp, #0x40]
     19c: a90557f6     	stp	x22, x21, [sp, #0x50]
     1a0: a9064ff4     	stp	x20, x19, [sp, #0x60]
     1a4: 910043fd     	add	x29, sp, #0x10
     1a8: b4001fe0     	cbz	x0, 0x5a4 <rdbg_open+0x420>
     1ac: 9000001a     	adrp	x26, 0x0 <.text>
		00000000000001ac:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     1b0: f9400348     	ldr	x8, [x26]
		00000000000001b0:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     1b4: b4001f88     	cbz	x8, 0x5a4 <rdbg_open+0x420>
     1b8: b9404c09     	ldr	w9, [x0, #0x4c]
     1bc: 92404d35     	and	x21, x9, #0xfffff
     1c0: 52803909     	mov	w9, #0x1c8              // =456
     1c4: 9ba922b8     	umaddl	x24, w21, w9, x8
     1c8: 39418308     	ldrb	w8, [x24, #0x60]
     1cc: 7100051f     	cmp	w8, #0x1
     1d0: 54001f40     	b.eq	0x5b8 <rdbg_open+0x434>
     1d4: 710042bf     	cmp	w21, #0x10
     1d8: 54002962     	b.hs	0x704 <rdbg_open+0x580>
     1dc: 52800308     	mov	w8, #0x18               // =24
     1e0: 90000009     	adrp	x9, 0x0 <.text>
		00000000000001e0:  R_AARCH64_ADR_PREL_PG_HI21	proc_info
     1e4: 91000129     	add	x9, x9, #0x0
		00000000000001e4:  R_AARCH64_ADD_ABS_LO12_NC	proc_info
     1e8: 9ba826b7     	umaddl	x23, w21, w8, x9
     1ec: aa1803f3     	mov	x19, x24
     1f0: f9400ae8     	ldr	x8, [x23, #0x10]
     1f4: f8070e68     	str	x8, [x19, #0x70]!
     1f8: b4001f08     	cbz	x8, 0x5d8 <rdbg_open+0x454>
     1fc: b9400af6     	ldr	w22, [x23, #0x8]
     200: aa0103f4     	mov	x20, x1
     204: 12800000     	mov	w0, #-0x1               // =-1
     208: aa1303e2     	mov	x2, x19
     20c: 2a1603e1     	mov	w1, w22
     210: 94000000     	bl	0x210 <rdbg_open+0x8c>
		0000000000000210:  R_AARCH64_CALL26	qcom_smem_get
     214: b100081f     	cmn	x0, #0x2
     218: 54001f00     	b.eq	0x5f8 <rdbg_open+0x474>
     21c: b13ffc1f     	cmn	x0, #0xfff
     220: 54001fe2     	b.hs	0x61c <rdbg_open+0x498>
     224: b4002120     	cbz	x0, 0x648 <rdbg_open+0x4c4>
     228: f9403b08     	ldr	x8, [x24, #0x70]
     22c: 91002409     	add	x9, x0, #0x9
     230: f9003700     	str	x0, [x24, #0x68]
     234: d341fd0a     	lsr	x10, x8, #1
     238: 927df128     	and	x8, x9, #0xfffffffffffffff8
     23c: 4b080009     	sub	w9, w0, w8
     240: 0b0a0129     	add	w9, w9, w10
     244: b204cfea     	mov	x10, #-0xf0f0f0f0f0f0f10 // =-1085102592571150096
     248: 93407d29     	sxtw	x9, w9
     24c: f29e1e2a     	movk	x10, #0xf0f1
     250: d1008129     	sub	x9, x9, #0x20
     254: 9bca7d29     	umulh	x9, x9, x10
     258: d347fd29     	lsr	x9, x9, #7
     25c: 7100053f     	cmp	w9, #0x1
     260: 5400214b     	b.lt	0x688 <rdbg_open+0x504>
     264: 5319612a     	lsl	w10, w9, #7
     268: d37e7929     	ubfiz	x9, x9, #2, #31
     26c: 32089ff9     	mov	w25, #-0xff0100         // =-16711936
     270: 8b2ac108     	add	x8, x8, w10, sxtw
     274: 8b090108     	add	x8, x8, x9
     278: 321f0329     	orr	w9, w25, #0x2
     27c: b9401108     	ldr	w8, [x8, #0x10]
     280: 6b09011f     	cmp	w8, w9
     284: 54001f81     	b.ne	0x674 <rdbg_open+0x4f0>
     288: d503201f     	nop
     28c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000028c:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x30
     290: 5281b801     	mov	w1, #0xdc0              // =3520
     294: 52800802     	mov	w2, #0x40               // =64
     298: f9400100     	ldr	x0, [x8]
		0000000000000298:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x30
     29c: 94000000     	bl	0x29c <rdbg_open+0x118>
		000000000000029c:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     2a0: aa0003f3     	mov	x19, x0
     2a4: b40024d3     	cbz	x19, 0x73c <rdbg_open+0x5b8>
     2a8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22f
     2ac: 91000021     	add	x1, x1, #0x0
		00000000000002ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22f
     2b0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000002b0:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     2b4: 91000042     	add	x2, x2, #0x0
		00000000000002b4:  R_AARCH64_ADD_ABS_LO12_NC	.bss
     2b8: 91002260     	add	x0, x19, #0x8
     2bc: f9000278     	str	x24, [x19]
     2c0: 94000000     	bl	0x2c0 <rdbg_open+0x13c>
		00000000000002c0:  R_AARCH64_CALL26	__mutex_init
     2c4: 90000016     	adrp	x22, 0x0 <.text>
		00000000000002c4:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_input_irq_lock
     2c8: 910002d6     	add	x22, x22, #0x0
		00000000000002c8:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_input_irq_lock
     2cc: aa1603e0     	mov	x0, x22
     2d0: 94000000     	bl	0x2d0 <rdbg_open+0x14c>
		00000000000002d0:  R_AARCH64_CALL26	mutex_lock
     2d4: b9402f08     	ldr	w8, [x24, #0x2c]
     2d8: aa1603e0     	mov	x0, x22
     2dc: b9003a68     	str	w8, [x19, #0x38]
     2e0: 94000000     	bl	0x2e0 <rdbg_open+0x15c>
		00000000000002e0:  R_AARCH64_CALL26	mutex_unlock
     2e4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0
     2e8: 91000021     	add	x1, x1, #0x0
		00000000000002e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0
     2ec: 90000002     	adrp	x2, 0x0 <.text>
		00000000000002ec:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x2
     2f0: 91000042     	add	x2, x2, #0x0
		00000000000002f0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x2
     2f4: 91004300     	add	x0, x24, #0x10
     2f8: b9000b1f     	str	wzr, [x24, #0x8]
     2fc: 94000000     	bl	0x2fc <rdbg_open+0x178>
		00000000000002fc:  R_AARCH64_CALL26	__init_swait_queue_head
     300: 52803908     	mov	w8, #0x1c8              // =456
     304: f9400349     	ldr	x9, [x26]
		0000000000000304:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     308: b9403a60     	ldr	w0, [x19, #0x38]
     30c: 9ba826a5     	umaddl	x5, w21, w8, x9
     310: f94002e4     	ldr	x4, [x23]
     314: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000314:  R_AARCH64_ADR_PREL_PG_HI21	on_interrupt_from
     318: 91000042     	add	x2, x2, #0x0
		0000000000000318:  R_AARCH64_ADD_ABS_LO12_NC	on_interrupt_from
     31c: aa1f03e1     	mov	x1, xzr
     320: 52840063     	mov	w3, #0x2003             // =8195
     324: 94000000     	bl	0x324 <rdbg_open+0x1a0>
		0000000000000324:  R_AARCH64_CALL26	request_threaded_irq
     328: 35001c80     	cbnz	w0, 0x6b8 <rdbg_open+0x534>
     32c: 91046316     	add	x22, x24, #0x118
     330: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x117
     334: 91000021     	add	x1, x1, #0x0
		0000000000000334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x117
     338: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000338:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1
     33c: 91000042     	add	x2, x2, #0x0
		000000000000033c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1
     340: aa1603e0     	mov	x0, x22
     344: 94000000     	bl	0x344 <rdbg_open+0x1c0>
		0000000000000344:  R_AARCH64_CALL26	__mutex_init
     348: b940ab08     	ldr	w8, [x24, #0xa8]
     34c: 6b19011f     	cmp	w8, w25
     350: 54002140     	b.eq	0x778 <rdbg_open+0x5f4>
     354: f940371b     	ldr	x27, [x24, #0x68]
     358: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000358:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x320
     35c: 91000021     	add	x1, x1, #0x0
		000000000000035c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x320
     360: b400211b     	cbz	x27, 0x780 <rdbg_open+0x5fc>
     364: f9403b08     	ldr	x8, [x24, #0x70]
     368: 927f7d09     	and	x9, x8, #0x1fffffffe
     36c: b40020a9     	cbz	x9, 0x780 <rdbg_open+0x5fc>
     370: d341fd1c     	lsr	x28, x8, #1
     374: 91002768     	add	x8, x27, #0x9
     378: b204cfea     	mov	x10, #-0xf0f0f0f0f0f0f10 // =-1085102592571150096
     37c: 927df108     	and	x8, x8, #0xfffffffffffffff8
     380: f29e1e2a     	movk	x10, #0xf0f1
     384: f9005316     	str	x22, [x24, #0xa0]
     388: 0b1b0389     	add	w9, w28, w27
     38c: f9003f1b     	str	x27, [x24, #0x78]
     390: 4b080129     	sub	w9, w9, w8
     394: 93407d29     	sxtw	x9, w9
     398: d1008129     	sub	x9, x9, #0x20
     39c: 9bca7d29     	umulh	x9, x9, x10
     3a0: d347fd29     	lsr	x9, x9, #7
     3a4: 7100053f     	cmp	w9, #0x1
     3a8: 54001ecb     	b.lt	0x780 <rdbg_open+0x5fc>
     3ac: 5319612a     	lsl	w10, w9, #7
     3b0: f9004b08     	str	x8, [x24, #0x90]
     3b4: d37e792b     	ubfiz	x11, x9, #2, #31
     3b8: b9009b09     	str	w9, [x24, #0x98]
     3bc: 52800029     	mov	w9, #0x1                // =1
     3c0: 8b2ac108     	add	x8, x8, w10, sxtw
     3c4: b900c309     	str	w9, [x24, #0xc0]
     3c8: 8b0b010a     	add	x10, x8, x11
     3cc: 9100414a     	add	x10, x10, #0x10
     3d0: a9082b08     	stp	x8, x10, [x24, #0x80]
     3d4: 39000369     	strb	w9, [x27]
     3d8: b9409b08     	ldr	w8, [x24, #0x98]
     3dc: 34001d28     	cbz	w8, 0x780 <rdbg_open+0x5fc>
     3e0: aa1f03e8     	mov	x8, xzr
     3e4: 52800209     	mov	w9, #0x10               // =16
     3e8: 529fffea     	mov	w10, #0xffff            // =65535
     3ec: f940430b     	ldr	x11, [x24, #0x80]
     3f0: 91000508     	add	x8, x8, #0x1
     3f4: 7829696a     	strh	w10, [x11, x9]
     3f8: 91001129     	add	x9, x9, #0x4
     3fc: b9409b17     	ldr	w23, [x24, #0x98]
     400: eb17011f     	cmp	x8, x23
     404: 54ffff43     	b.lo	0x3ec <rdbg_open+0x268>
     408: 71000aff     	cmp	w23, #0x2
     40c: 54001b63     	b.lo	0x778 <rdbg_open+0x5f4>
     410: d503201f     	nop
     414: aa1703e0     	mov	x0, x23
     418: 5281b801     	mov	w1, #0xdc0              // =3520
     41c: 94000000     	bl	0x41c <rdbg_open+0x298>
		000000000000041c:  R_AARCH64_CALL26	__kmalloc_noprof
     420: f9005f00     	str	x0, [x24, #0xb8]
     424: b4001aa0     	cbz	x0, 0x778 <rdbg_open+0x5f4>
     428: 510006e8     	sub	w8, w23, #0x1
     42c: 2a1f03e1     	mov	w1, wzr
     430: aa1703e2     	mov	x2, x23
     434: b900b708     	str	w8, [x24, #0xb4]
     438: 94000000     	bl	0x438 <rdbg_open+0x2b4>
		0000000000000438:  R_AARCH64_CALL26	memset
     43c: f9404308     	ldr	x8, [x24, #0x80]
     440: b900b31f     	str	wzr, [x24, #0xb0]
     444: 11000729     	add	w9, w25, #0x1
     448: b900091f     	str	wzr, [x8, #0x8]
     44c: f9404308     	ldr	x8, [x24, #0x80]
     450: b9000d1f     	str	wzr, [x8, #0xc]
     454: f9404308     	ldr	x8, [x24, #0x80]
     458: b940010a     	ldr	w10, [x8]
     45c: 6b09015f     	cmp	w10, w9
     460: 540000a1     	b.ne	0x474 <rdbg_open+0x2f0>
     464: b9400509     	ldr	w9, [x8, #0x4]
     468: 11000529     	add	w9, w9, #0x1
     46c: b9000509     	str	w9, [x8, #0x4]
     470: 14000005     	b	0x484 <rdbg_open+0x300>
     474: 5280002a     	mov	w10, #0x1               // =1
     478: b900050a     	str	w10, [x8, #0x4]
     47c: f9404308     	ldr	x8, [x24, #0x80]
     480: b9000109     	str	w9, [x8]
     484: b940fb08     	ldr	w8, [x24, #0xf8]
     488: b900ab19     	str	w25, [x24, #0xa8]
     48c: 6b19011f     	cmp	w8, w25
     490: 54001340     	b.eq	0x6f8 <rdbg_open+0x574>
     494: 8b1c0368     	add	x8, x27, x28
     498: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000498:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x365
     49c: 91000021     	add	x1, x1, #0x0
		000000000000049c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x365
     4a0: b4001708     	cbz	x8, 0x780 <rdbg_open+0x5fc>
     4a4: f9403b09     	ldr	x9, [x24, #0x70]
     4a8: 927f7d2a     	and	x10, x9, #0x1fffffffe
     4ac: b40016aa     	cbz	x10, 0x780 <rdbg_open+0x5fc>
     4b0: 9100250a     	add	x10, x8, #0x9
     4b4: d341fd2b     	lsr	x11, x9, #1
     4b8: f9007b16     	str	x22, [x24, #0xf0]
     4bc: 927df149     	and	x9, x10, #0xfffffffffffffff8
     4c0: f9006708     	str	x8, [x24, #0xc8]
     4c4: 4b09010a     	sub	w10, w8, w9
     4c8: 0b0b014a     	add	w10, w10, w11
     4cc: b204cfeb     	mov	x11, #-0xf0f0f0f0f0f0f10 // =-1085102592571150096
     4d0: 93407d4a     	sxtw	x10, w10
     4d4: f29e1e2b     	movk	x11, #0xf0f1
     4d8: d100814a     	sub	x10, x10, #0x20
     4dc: 9bcb7d4a     	umulh	x10, x10, x11
     4e0: d347fd4a     	lsr	x10, x10, #7
     4e4: 7100055f     	cmp	w10, #0x1
     4e8: 540014cb     	b.lt	0x780 <rdbg_open+0x5fc>
     4ec: 5319614b     	lsl	w11, w10, #7
     4f0: f9007309     	str	x9, [x24, #0xe0]
     4f4: d37e794c     	ubfiz	x12, x10, #2, #31
     4f8: b900eb0a     	str	w10, [x24, #0xe8]
     4fc: 5280004a     	mov	w10, #0x2               // =2
     500: 8b2bc129     	add	x9, x9, w11, sxtw
     504: b901130a     	str	w10, [x24, #0x110]
     508: 8b0c012a     	add	x10, x9, x12
     50c: 9100414a     	add	x10, x10, #0x10
     510: a90d2b09     	stp	x9, x10, [x24, #0xd0]
     514: 52800029     	mov	w9, #0x1                // =1
     518: 39000509     	strb	w9, [x8, #0x1]
     51c: b940eb08     	ldr	w8, [x24, #0xe8]
     520: 34000168     	cbz	w8, 0x54c <rdbg_open+0x3c8>
     524: aa1f03e8     	mov	x8, xzr
     528: 52800209     	mov	w9, #0x10               // =16
     52c: 529fffea     	mov	w10, #0xffff            // =65535
     530: f9406f0b     	ldr	x11, [x24, #0xd8]
     534: 91000508     	add	x8, x8, #0x1
     538: 7829696a     	strh	w10, [x11, x9]
     53c: 91001129     	add	x9, x9, #0x4
     540: b940eb0b     	ldr	w11, [x24, #0xe8]
     544: eb0b011f     	cmp	x8, x11
     548: 54ffff43     	b.lo	0x530 <rdbg_open+0x3ac>
     54c: f9406f08     	ldr	x8, [x24, #0xd8]
     550: 1100072a     	add	w10, w25, #0x1
     554: b900091f     	str	wzr, [x8, #0x8]
     558: f9406f08     	ldr	x8, [x24, #0xd8]
     55c: b9000d1f     	str	wzr, [x8, #0xc]
     560: f9406b09     	ldr	x9, [x24, #0xd0]
     564: b9400128     	ldr	w8, [x9]
     568: 6b0a011f     	cmp	w8, w10
     56c: 2a1f03e8     	mov	w8, wzr
     570: 54000041     	b.ne	0x578 <rdbg_open+0x3f4>
     574: b9400528     	ldr	w8, [x9, #0x4]
     578: f9406f09     	ldr	x9, [x24, #0xd8]
     57c: 2a1f03e0     	mov	w0, wzr
     580: b9000528     	str	w8, [x9, #0x4]
     584: 11000b29     	add	w9, w25, #0x2
     588: f9406f08     	ldr	x8, [x24, #0xd8]
     58c: b9000109     	str	w9, [x8]
     590: 52800028     	mov	w8, #0x1                // =1
     594: b900fb19     	str	w25, [x24, #0xf8]
     598: 39018308     	strb	w8, [x24, #0x60]
     59c: f9001293     	str	x19, [x20, #0x20]
     5a0: 140000b0     	b	0x860 <rdbg_open+0x6dc>
     5a4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62
     5a8: 91000000     	add	x0, x0, #0x0
		00000000000005a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62
     5ac: 94000000     	bl	0x5ac <rdbg_open+0x428>
		00000000000005ac:  R_AARCH64_CALL26	_printk
     5b0: 12800240     	mov	w0, #-0x13              // =-19
     5b4: 140000ab     	b	0x860 <rdbg_open+0x6dc>
     5b8: f9400300     	ldr	x0, [x24]
     5bc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x214
     5c0: 91000021     	add	x1, x1, #0x0
		00000000000005c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x214
     5c4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000005c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     5c8: 91000042     	add	x2, x2, #0x0
		00000000000005c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     5cc: 94000000     	bl	0x5cc <rdbg_open+0x448>
		00000000000005cc:  R_AARCH64_CALL26	_dev_err
     5d0: 12800200     	mov	w0, #-0x11              // =-17
     5d4: 140000a3     	b	0x860 <rdbg_open+0x6dc>
     5d8: f9400300     	ldr	x0, [x24]
     5dc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x391
     5e0: 91000021     	add	x1, x1, #0x0
		00000000000005e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x391
     5e4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000005e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     5e8: 91000042     	add	x2, x2, #0x0
		00000000000005e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     5ec: 94000000     	bl	0x5ec <rdbg_open+0x468>
		00000000000005ec:  R_AARCH64_CALL26	_dev_err
     5f0: 12800160     	mov	w0, #-0xc               // =-12
     5f4: 1400009b     	b	0x860 <rdbg_open+0x6dc>
     5f8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e
     5fc: 91000000     	add	x0, x0, #0x0
		00000000000005fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e
     600: 94000000     	bl	0x600 <rdbg_open+0x47c>
		0000000000000600:  R_AARCH64_CALL26	_printk
     604: 2a1503e0     	mov	w0, w21
     608: 2a1603e1     	mov	w1, w22
     60c: aa1303e2     	mov	x2, x19
     610: 94000000     	bl	0x610 <rdbg_open+0x48c>
		0000000000000610:  R_AARCH64_CALL26	qcom_smem_get
     614: b13ffc1f     	cmn	x0, #0xfff
     618: 54ffe063     	b.lo	0x224 <rdbg_open+0xa0>
     61c: f9400308     	ldr	x8, [x24]
     620: aa0003f3     	mov	x19, x0
     624: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000624:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f2
     628: 91000021     	add	x1, x1, #0x0
		0000000000000628:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f2
     62c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000062c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     630: 91000042     	add	x2, x2, #0x0
		0000000000000630:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     634: aa0803e0     	mov	x0, x8
     638: 2a1303e3     	mov	w3, w19
     63c: 94000000     	bl	0x63c <rdbg_open+0x4b8>
		000000000000063c:  R_AARCH64_CALL26	_dev_err
     640: aa1303e0     	mov	x0, x19
     644: 14000087     	b	0x860 <rdbg_open+0x6dc>
     648: f9400300     	ldr	x0, [x24]
     64c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000064c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x143
     650: 91000021     	add	x1, x1, #0x0
		0000000000000650:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x143
     654: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000654:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     658: 91000042     	add	x2, x2, #0x0
		0000000000000658:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     65c: 94000000     	bl	0x65c <rdbg_open+0x4d8>
		000000000000065c:  R_AARCH64_CALL26	_dev_err
     660: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000660:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b
     664: 91000000     	add	x0, x0, #0x0
		0000000000000664:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b
     668: 94000000     	bl	0x668 <rdbg_open+0x4e4>
		0000000000000668:  R_AARCH64_CALL26	_printk
     66c: 12800160     	mov	w0, #-0xc               // =-12
     670: 1400007c     	b	0x860 <rdbg_open+0x6dc>
     674: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000674:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25d
     678: 91000000     	add	x0, x0, #0x0
		0000000000000678:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25d
     67c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000067c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ab
     680: 91000021     	add	x1, x1, #0x0
		0000000000000680:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ab
     684: 94000000     	bl	0x684 <rdbg_open+0x500>
		0000000000000684:  R_AARCH64_CALL26	_printk
     688: f9400300     	ldr	x0, [x24]
     68c: f94002e3     	ldr	x3, [x23]
     690: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000690:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x291
     694: 91000021     	add	x1, x1, #0x0
		0000000000000694:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x291
     698: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000698:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     69c: 91000042     	add	x2, x2, #0x0
		000000000000069c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     6a0: 94000000     	bl	0x6a0 <rdbg_open+0x51c>
		00000000000006a0:  R_AARCH64_CALL26	_dev_err
     6a4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x424
     6a8: 91000000     	add	x0, x0, #0x0
		00000000000006a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x424
     6ac: 94000000     	bl	0x6ac <rdbg_open+0x528>
		00000000000006ac:  R_AARCH64_CALL26	_printk
     6b0: 128008a0     	mov	w0, #-0x46              // =-70
     6b4: 1400006b     	b	0x860 <rdbg_open+0x6dc>
     6b8: f9400308     	ldr	x8, [x24]
     6bc: b9403a64     	ldr	w4, [x19, #0x38]
     6c0: aa0003f4     	mov	x20, x0
     6c4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe4
     6c8: 91000021     	add	x1, x1, #0x0
		00000000000006c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe4
     6cc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000006cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     6d0: 91000042     	add	x2, x2, #0x0
		00000000000006d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     6d4: aa0803e0     	mov	x0, x8
     6d8: 2a1403e3     	mov	w3, w20
     6dc: 94000000     	bl	0x6dc <rdbg_open+0x558>
		00000000000006dc:  R_AARCH64_CALL26	_dev_err
     6e0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x167
     6e4: 91000000     	add	x0, x0, #0x0
		00000000000006e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x167
     6e8: 2a1403e1     	mov	w1, w20
     6ec: aa1403f5     	mov	x21, x20
     6f0: 94000000     	bl	0x6f0 <rdbg_open+0x56c>
		00000000000006f0:  R_AARCH64_CALL26	_printk
     6f4: 14000058     	b	0x854 <rdbg_open+0x6d0>
     6f8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x365
     6fc: 91000021     	add	x1, x1, #0x0
		00000000000006fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x365
     700: 14000020     	b	0x780 <rdbg_open+0x5fc>
     704: d42aa240     	brk	#0x5512
     708: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000708:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x30
     70c: d5384116     	mrs	x22, SP_EL0
     710: f9402adb     	ldr	x27, [x22, #0x50]
     714: f9400100     	ldr	x0, [x8]
		0000000000000714:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x30
     718: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000718:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags
     71c: 91000108     	add	x8, x8, #0x0
		000000000000071c:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags
     720: 5281b801     	mov	w1, #0xdc0              // =3520
     724: 52800802     	mov	w2, #0x40               // =64
     728: f9002ac8     	str	x8, [x22, #0x50]
     72c: 94000000     	bl	0x72c <rdbg_open+0x5a8>
		000000000000072c:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     730: aa0003f3     	mov	x19, x0
     734: f9002adb     	str	x27, [x22, #0x50]
     738: b5ffdb93     	cbnz	x19, 0x2a8 <rdbg_open+0x124>
     73c: 12800160     	mov	w0, #-0xc               // =-12
     740: 14000048     	b	0x860 <rdbg_open+0x6dc>
     744: d5384109     	mrs	x9, SP_EL0
     748: f9402928     	ldr	x8, [x9, #0x50]
     74c: aa1703e0     	mov	x0, x23
     750: 5281b801     	mov	w1, #0xdc0              // =3520
     754: a90023e9     	stp	x9, x8, [sp]
     758: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000758:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x28
     75c: 91000108     	add	x8, x8, #0x0
		000000000000075c:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x28
     760: f9002928     	str	x8, [x9, #0x50]
     764: 94000000     	bl	0x764 <rdbg_open+0x5e0>
		0000000000000764:  R_AARCH64_CALL26	__kmalloc_noprof
     768: a94023e9     	ldp	x9, x8, [sp]
     76c: f9002928     	str	x8, [x9, #0x50]
     770: f9005f00     	str	x0, [x24, #0xb8]
     774: b5ffe5a0     	cbnz	x0, 0x428 <rdbg_open+0x2a4>
     778: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000778:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x320
     77c: 91000021     	add	x1, x1, #0x0
		000000000000077c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x320
     780: f9400300     	ldr	x0, [x24]
     784: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e9
     788: 91000042     	add	x2, x2, #0x0
		0000000000000788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e9
     78c: 94000000     	bl	0x78c <rdbg_open+0x608>
		000000000000078c:  R_AARCH64_CALL26	_dev_err
     790: f9400300     	ldr	x0, [x24]
     794: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000794:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9
     798: 91000021     	add	x1, x1, #0x0
		0000000000000798:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9
     79c: 12800162     	mov	w2, #-0xc               // =-12
     7a0: 94000000     	bl	0x7a0 <rdbg_open+0x61c>
		00000000000007a0:  R_AARCH64_CALL26	_dev_err
     7a4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x478
     7a8: 91000000     	add	x0, x0, #0x0
		00000000000007a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x478
     7ac: 12800161     	mov	w1, #-0xc               // =-12
     7b0: 94000000     	bl	0x7b0 <rdbg_open+0x62c>
		00000000000007b0:  R_AARCH64_CALL26	_printk
     7b4: 52803908     	mov	w8, #0x1c8              // =456
     7b8: f9400349     	ldr	x9, [x26]
		00000000000007b8:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     7bc: b9403a60     	ldr	w0, [x19, #0x38]
     7c0: 9ba826a1     	umaddl	x1, w21, w8, x9
     7c4: 94000000     	bl	0x7c4 <rdbg_open+0x640>
		00000000000007c4:  R_AARCH64_CALL26	free_irq
     7c8: b940ab08     	ldr	w8, [x24, #0xa8]
     7cc: 6b19011f     	cmp	w8, w25
     7d0: 540001e1     	b.ne	0x80c <rdbg_open+0x688>
     7d4: b940c308     	ldr	w8, [x24, #0xc0]
     7d8: 7100091f     	cmp	w8, #0x2
     7dc: 54000120     	b.eq	0x800 <rdbg_open+0x67c>
     7e0: 7100051f     	cmp	w8, #0x1
     7e4: 54000121     	b.ne	0x808 <rdbg_open+0x684>
     7e8: f9404308     	ldr	x8, [x24, #0x80]
     7ec: b900011f     	str	wzr, [x8]
     7f0: f9405f00     	ldr	x0, [x24, #0xb8]
     7f4: 94000000     	bl	0x7f4 <rdbg_open+0x670>
		00000000000007f4:  R_AARCH64_CALL26	kfree
     7f8: f9005f1f     	str	xzr, [x24, #0xb8]
     7fc: 14000003     	b	0x808 <rdbg_open+0x684>
     800: f9404708     	ldr	x8, [x24, #0x88]
     804: b900011f     	str	wzr, [x8]
     808: b900ab1f     	str	wzr, [x24, #0xa8]
     80c: b940fb08     	ldr	w8, [x24, #0xf8]
     810: 6b19011f     	cmp	w8, w25
     814: 540001e1     	b.ne	0x850 <rdbg_open+0x6cc>
     818: b9411308     	ldr	w8, [x24, #0x110]
     81c: 7100091f     	cmp	w8, #0x2
     820: 54000120     	b.eq	0x844 <rdbg_open+0x6c0>
     824: 7100051f     	cmp	w8, #0x1
     828: 54000121     	b.ne	0x84c <rdbg_open+0x6c8>
     82c: f9406b08     	ldr	x8, [x24, #0xd0]
     830: b900011f     	str	wzr, [x8]
     834: f9408700     	ldr	x0, [x24, #0x108]
     838: 94000000     	bl	0x838 <rdbg_open+0x6b4>
		0000000000000838:  R_AARCH64_CALL26	kfree
     83c: f900871f     	str	xzr, [x24, #0x108]
     840: 14000003     	b	0x84c <rdbg_open+0x6c8>
     844: f9406f08     	ldr	x8, [x24, #0xd8]
     848: b900011f     	str	wzr, [x8]
     84c: b900fb1f     	str	wzr, [x24, #0xf8]
     850: 12800175     	mov	w21, #-0xc              // =-12
     854: aa1303e0     	mov	x0, x19
     858: 94000000     	bl	0x858 <rdbg_open+0x6d4>
		0000000000000858:  R_AARCH64_CALL26	kfree
     85c: aa1503e0     	mov	x0, x21
     860: a9464ff4     	ldp	x20, x19, [sp, #0x60]
     864: a94557f6     	ldp	x22, x21, [sp, #0x50]
     868: a9445ff8     	ldp	x24, x23, [sp, #0x40]
     86c: a94367fa     	ldp	x26, x25, [sp, #0x30]
     870: a9426ffc     	ldp	x28, x27, [sp, #0x20]
     874: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     878: 9101c3ff     	add	sp, sp, #0x70
     87c: d50323bf     	autiasp
     880: d65f03c0     	ret
