
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
     1a8: b4001ea0     	cbz	x0, 0x57c <rdbg_open+0x3f8>
     1ac: 9000001a     	adrp	x26, 0x0 <.text>
		00000000000001ac:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     1b0: f9400348     	ldr	x8, [x26]
		00000000000001b0:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     1b4: b4001e48     	cbz	x8, 0x57c <rdbg_open+0x3f8>
     1b8: b9404c09     	ldr	w9, [x0, #0x4c]
     1bc: 92404d35     	and	x21, x9, #0xfffff
     1c0: 52803909     	mov	w9, #0x1c8              // =456
     1c4: 9ba922b8     	umaddl	x24, w21, w9, x8
     1c8: 39418308     	ldrb	w8, [x24, #0x60]
     1cc: 7100051f     	cmp	w8, #0x1
     1d0: 54001e00     	b.eq	0x590 <rdbg_open+0x40c>
     1d4: 710042bf     	cmp	w21, #0x10
     1d8: 54002722     	b.hs	0x6bc <rdbg_open+0x538>
     1dc: 52800308     	mov	w8, #0x18               // =24
     1e0: 90000009     	adrp	x9, 0x0 <.text>
		00000000000001e0:  R_AARCH64_ADR_PREL_PG_HI21	proc_info
     1e4: 91000129     	add	x9, x9, #0x0
		00000000000001e4:  R_AARCH64_ADD_ABS_LO12_NC	proc_info
     1e8: 9ba826b7     	umaddl	x23, w21, w8, x9
     1ec: aa1803f3     	mov	x19, x24
     1f0: f9400ae8     	ldr	x8, [x23, #0x10]
     1f4: f8070e68     	str	x8, [x19, #0x70]!
     1f8: b4001dc8     	cbz	x8, 0x5b0 <rdbg_open+0x42c>
     1fc: b9400af6     	ldr	w22, [x23, #0x8]
     200: aa0103f4     	mov	x20, x1
     204: 12800000     	mov	w0, #-0x1               // =-1
     208: aa1303e2     	mov	x2, x19
     20c: 2a1603e1     	mov	w1, w22
     210: 94000000     	bl	0x210 <rdbg_open+0x8c>
		0000000000000210:  R_AARCH64_CALL26	qcom_smem_get
     214: b13ffc1f     	cmn	x0, #0xfff
     218: f9003700     	str	x0, [x24, #0x68]
     21c: 54001da2     	b.hs	0x5d0 <rdbg_open+0x44c>
     220: b4001f00     	cbz	x0, 0x600 <rdbg_open+0x47c>
     224: f9400268     	ldr	x8, [x19]
     228: 91002409     	add	x9, x0, #0x9
     22c: d341fd0a     	lsr	x10, x8, #1
     230: 927df128     	and	x8, x9, #0xfffffffffffffff8
     234: 4b080009     	sub	w9, w0, w8
     238: 0b0a0129     	add	w9, w9, w10
     23c: b204cfea     	mov	x10, #-0xf0f0f0f0f0f0f10 // =-1085102592571150096
     240: 93407d29     	sxtw	x9, w9
     244: f29e1e2a     	movk	x10, #0xf0f1
     248: d1008129     	sub	x9, x9, #0x20
     24c: 9bca7d29     	umulh	x9, x9, x10
     250: d347fd29     	lsr	x9, x9, #7
     254: 7100053f     	cmp	w9, #0x1
     258: 54001f4b     	b.lt	0x640 <rdbg_open+0x4bc>
     25c: 5319612a     	lsl	w10, w9, #7
     260: d37e7929     	ubfiz	x9, x9, #2, #31
     264: 32089ff9     	mov	w25, #-0xff0100         // =-16711936
     268: 8b2ac108     	add	x8, x8, w10, sxtw
     26c: 8b090108     	add	x8, x8, x9
     270: 321f0329     	orr	w9, w25, #0x2
     274: b9401108     	ldr	w8, [x8, #0x10]
     278: 6b09011f     	cmp	w8, w9
     27c: 54001d81     	b.ne	0x62c <rdbg_open+0x4a8>
     280: d503201f     	nop
     284: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000284:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x30
     288: 5281b801     	mov	w1, #0xdc0              // =3520
     28c: 52800702     	mov	w2, #0x38               // =56
     290: f9400100     	ldr	x0, [x8]
		0000000000000290:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x30
     294: 94000000     	bl	0x294 <rdbg_open+0x110>
		0000000000000294:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     298: aa0003f3     	mov	x19, x0
     29c: b40022d3     	cbz	x19, 0x6f4 <rdbg_open+0x570>
     2a0: aa1303e0     	mov	x0, x19
     2a4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20d
     2a8: 91000021     	add	x1, x1, #0x0
		00000000000002a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20d
     2ac: 90000002     	adrp	x2, 0x0 <.text>
		00000000000002ac:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     2b0: 91000042     	add	x2, x2, #0x0
		00000000000002b0:  R_AARCH64_ADD_ABS_LO12_NC	.bss
     2b4: f8008418     	str	x24, [x0], #0x8
     2b8: 94000000     	bl	0x2b8 <rdbg_open+0x134>
		00000000000002b8:  R_AARCH64_CALL26	__mutex_init
     2bc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0
     2c0: 91000021     	add	x1, x1, #0x0
		00000000000002c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0
     2c4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000002c4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x2
     2c8: 91000042     	add	x2, x2, #0x0
		00000000000002c8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x2
     2cc: 91004300     	add	x0, x24, #0x10
     2d0: b9000b1f     	str	wzr, [x24, #0x8]
     2d4: 94000000     	bl	0x2d4 <rdbg_open+0x150>
		00000000000002d4:  R_AARCH64_CALL26	__init_swait_queue_head
     2d8: 52803908     	mov	w8, #0x1c8              // =456
     2dc: f9400349     	ldr	x9, [x26]
		00000000000002dc:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     2e0: b9402f00     	ldr	w0, [x24, #0x2c]
     2e4: 9ba826a5     	umaddl	x5, w21, w8, x9
     2e8: f94002e4     	ldr	x4, [x23]
     2ec: 90000002     	adrp	x2, 0x0 <.text>
		00000000000002ec:  R_AARCH64_ADR_PREL_PG_HI21	on_interrupt_from
     2f0: 91000042     	add	x2, x2, #0x0
		00000000000002f0:  R_AARCH64_ADD_ABS_LO12_NC	on_interrupt_from
     2f4: aa1f03e1     	mov	x1, xzr
     2f8: 52840063     	mov	w3, #0x2003             // =8195
     2fc: 94000000     	bl	0x2fc <rdbg_open+0x178>
		00000000000002fc:  R_AARCH64_CALL26	request_threaded_irq
     300: 35001b80     	cbnz	w0, 0x670 <rdbg_open+0x4ec>
     304: 91046316     	add	x22, x24, #0x118
     308: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000308:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x117
     30c: 91000021     	add	x1, x1, #0x0
		000000000000030c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x117
     310: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000310:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1
     314: 91000042     	add	x2, x2, #0x0
		0000000000000314:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1
     318: aa1603e0     	mov	x0, x22
     31c: 94000000     	bl	0x31c <rdbg_open+0x198>
		000000000000031c:  R_AARCH64_CALL26	__mutex_init
     320: b940ab08     	ldr	w8, [x24, #0xa8]
     324: 6b19011f     	cmp	w8, w25
     328: 54002040     	b.eq	0x730 <rdbg_open+0x5ac>
     32c: f940371b     	ldr	x27, [x24, #0x68]
     330: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fe
     334: 91000021     	add	x1, x1, #0x0
		0000000000000334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fe
     338: b400201b     	cbz	x27, 0x738 <rdbg_open+0x5b4>
     33c: f9403b08     	ldr	x8, [x24, #0x70]
     340: 927f7d09     	and	x9, x8, #0x1fffffffe
     344: b4001fa9     	cbz	x9, 0x738 <rdbg_open+0x5b4>
     348: d341fd1c     	lsr	x28, x8, #1
     34c: 91002768     	add	x8, x27, #0x9
     350: b204cfea     	mov	x10, #-0xf0f0f0f0f0f0f10 // =-1085102592571150096
     354: 927df108     	and	x8, x8, #0xfffffffffffffff8
     358: f29e1e2a     	movk	x10, #0xf0f1
     35c: f9005316     	str	x22, [x24, #0xa0]
     360: 0b1b0389     	add	w9, w28, w27
     364: f9003f1b     	str	x27, [x24, #0x78]
     368: 4b080129     	sub	w9, w9, w8
     36c: 93407d29     	sxtw	x9, w9
     370: d1008129     	sub	x9, x9, #0x20
     374: 9bca7d29     	umulh	x9, x9, x10
     378: d347fd29     	lsr	x9, x9, #7
     37c: 7100053f     	cmp	w9, #0x1
     380: 54001dcb     	b.lt	0x738 <rdbg_open+0x5b4>
     384: 5319612a     	lsl	w10, w9, #7
     388: f9004b08     	str	x8, [x24, #0x90]
     38c: d37e792b     	ubfiz	x11, x9, #2, #31
     390: b9009b09     	str	w9, [x24, #0x98]
     394: 52800029     	mov	w9, #0x1                // =1
     398: 8b2ac108     	add	x8, x8, w10, sxtw
     39c: b900c309     	str	w9, [x24, #0xc0]
     3a0: 8b0b010a     	add	x10, x8, x11
     3a4: 9100414a     	add	x10, x10, #0x10
     3a8: a9082b08     	stp	x8, x10, [x24, #0x80]
     3ac: 39000369     	strb	w9, [x27]
     3b0: b9409b08     	ldr	w8, [x24, #0x98]
     3b4: 34001c28     	cbz	w8, 0x738 <rdbg_open+0x5b4>
     3b8: aa1f03e8     	mov	x8, xzr
     3bc: 52800209     	mov	w9, #0x10               // =16
     3c0: 529fffea     	mov	w10, #0xffff            // =65535
     3c4: f940430b     	ldr	x11, [x24, #0x80]
     3c8: 91000508     	add	x8, x8, #0x1
     3cc: 7829696a     	strh	w10, [x11, x9]
     3d0: 91001129     	add	x9, x9, #0x4
     3d4: b9409b17     	ldr	w23, [x24, #0x98]
     3d8: eb17011f     	cmp	x8, x23
     3dc: 54ffff43     	b.lo	0x3c4 <rdbg_open+0x240>
     3e0: 71000aff     	cmp	w23, #0x2
     3e4: 54001a63     	b.lo	0x730 <rdbg_open+0x5ac>
     3e8: d503201f     	nop
     3ec: aa1703e0     	mov	x0, x23
     3f0: 5281b801     	mov	w1, #0xdc0              // =3520
     3f4: 94000000     	bl	0x3f4 <rdbg_open+0x270>
		00000000000003f4:  R_AARCH64_CALL26	__kmalloc_noprof
     3f8: f9005f00     	str	x0, [x24, #0xb8]
     3fc: b40019a0     	cbz	x0, 0x730 <rdbg_open+0x5ac>
     400: 510006e8     	sub	w8, w23, #0x1
     404: 2a1f03e1     	mov	w1, wzr
     408: aa1703e2     	mov	x2, x23
     40c: b900b708     	str	w8, [x24, #0xb4]
     410: 94000000     	bl	0x410 <rdbg_open+0x28c>
		0000000000000410:  R_AARCH64_CALL26	memset
     414: f9404308     	ldr	x8, [x24, #0x80]
     418: b900b31f     	str	wzr, [x24, #0xb0]
     41c: 11000729     	add	w9, w25, #0x1
     420: b900091f     	str	wzr, [x8, #0x8]
     424: f9404308     	ldr	x8, [x24, #0x80]
     428: b9000d1f     	str	wzr, [x8, #0xc]
     42c: f9404308     	ldr	x8, [x24, #0x80]
     430: b940010a     	ldr	w10, [x8]
     434: 6b09015f     	cmp	w10, w9
     438: 540000a1     	b.ne	0x44c <rdbg_open+0x2c8>
     43c: b9400509     	ldr	w9, [x8, #0x4]
     440: 11000529     	add	w9, w9, #0x1
     444: b9000509     	str	w9, [x8, #0x4]
     448: 14000005     	b	0x45c <rdbg_open+0x2d8>
     44c: 5280002a     	mov	w10, #0x1               // =1
     450: b900050a     	str	w10, [x8, #0x4]
     454: f9404308     	ldr	x8, [x24, #0x80]
     458: b9000109     	str	w9, [x8]
     45c: b940fb08     	ldr	w8, [x24, #0xf8]
     460: b900ab19     	str	w25, [x24, #0xa8]
     464: 6b19011f     	cmp	w8, w25
     468: 54001240     	b.eq	0x6b0 <rdbg_open+0x52c>
     46c: 8b1c0368     	add	x8, x27, x28
     470: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000470:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x343
     474: 91000021     	add	x1, x1, #0x0
		0000000000000474:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x343
     478: b4001608     	cbz	x8, 0x738 <rdbg_open+0x5b4>
     47c: f9403b09     	ldr	x9, [x24, #0x70]
     480: 927f7d2a     	and	x10, x9, #0x1fffffffe
     484: b40015aa     	cbz	x10, 0x738 <rdbg_open+0x5b4>
     488: 9100250a     	add	x10, x8, #0x9
     48c: d341fd2b     	lsr	x11, x9, #1
     490: f9007b16     	str	x22, [x24, #0xf0]
     494: 927df149     	and	x9, x10, #0xfffffffffffffff8
     498: f9006708     	str	x8, [x24, #0xc8]
     49c: 4b09010a     	sub	w10, w8, w9
     4a0: 0b0b014a     	add	w10, w10, w11
     4a4: b204cfeb     	mov	x11, #-0xf0f0f0f0f0f0f10 // =-1085102592571150096
     4a8: 93407d4a     	sxtw	x10, w10
     4ac: f29e1e2b     	movk	x11, #0xf0f1
     4b0: d100814a     	sub	x10, x10, #0x20
     4b4: 9bcb7d4a     	umulh	x10, x10, x11
     4b8: d347fd4a     	lsr	x10, x10, #7
     4bc: 7100055f     	cmp	w10, #0x1
     4c0: 540013cb     	b.lt	0x738 <rdbg_open+0x5b4>
     4c4: 5319614b     	lsl	w11, w10, #7
     4c8: f9007309     	str	x9, [x24, #0xe0]
     4cc: d37e794c     	ubfiz	x12, x10, #2, #31
     4d0: b900eb0a     	str	w10, [x24, #0xe8]
     4d4: 5280004a     	mov	w10, #0x2               // =2
     4d8: 8b2bc129     	add	x9, x9, w11, sxtw
     4dc: b901130a     	str	w10, [x24, #0x110]
     4e0: 8b0c012a     	add	x10, x9, x12
     4e4: 9100414a     	add	x10, x10, #0x10
     4e8: a90d2b09     	stp	x9, x10, [x24, #0xd0]
     4ec: 52800029     	mov	w9, #0x1                // =1
     4f0: 39000509     	strb	w9, [x8, #0x1]
     4f4: b940eb08     	ldr	w8, [x24, #0xe8]
     4f8: 34000168     	cbz	w8, 0x524 <rdbg_open+0x3a0>
     4fc: aa1f03e8     	mov	x8, xzr
     500: 52800209     	mov	w9, #0x10               // =16
     504: 529fffea     	mov	w10, #0xffff            // =65535
     508: f9406f0b     	ldr	x11, [x24, #0xd8]
     50c: 91000508     	add	x8, x8, #0x1
     510: 7829696a     	strh	w10, [x11, x9]
     514: 91001129     	add	x9, x9, #0x4
     518: b940eb0b     	ldr	w11, [x24, #0xe8]
     51c: eb0b011f     	cmp	x8, x11
     520: 54ffff43     	b.lo	0x508 <rdbg_open+0x384>
     524: f9406f08     	ldr	x8, [x24, #0xd8]
     528: 1100072a     	add	w10, w25, #0x1
     52c: b900091f     	str	wzr, [x8, #0x8]
     530: f9406f08     	ldr	x8, [x24, #0xd8]
     534: b9000d1f     	str	wzr, [x8, #0xc]
     538: f9406b09     	ldr	x9, [x24, #0xd0]
     53c: b9400128     	ldr	w8, [x9]
     540: 6b0a011f     	cmp	w8, w10
     544: 2a1f03e8     	mov	w8, wzr
     548: 54000041     	b.ne	0x550 <rdbg_open+0x3cc>
     54c: b9400528     	ldr	w8, [x9, #0x4]
     550: f9406f09     	ldr	x9, [x24, #0xd8]
     554: 2a1f03e0     	mov	w0, wzr
     558: b9000528     	str	w8, [x9, #0x4]
     55c: 11000b29     	add	w9, w25, #0x2
     560: f9406f08     	ldr	x8, [x24, #0xd8]
     564: b9000109     	str	w9, [x8]
     568: 52800028     	mov	w8, #0x1                // =1
     56c: b900fb19     	str	w25, [x24, #0xf8]
     570: 39018308     	strb	w8, [x24, #0x60]
     574: f9001293     	str	x19, [x20, #0x20]
     578: 140000a8     	b	0x818 <rdbg_open+0x694>
     57c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000057c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62
     580: 91000000     	add	x0, x0, #0x0
		0000000000000580:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62
     584: 94000000     	bl	0x584 <rdbg_open+0x400>
		0000000000000584:  R_AARCH64_CALL26	_printk
     588: 12800240     	mov	w0, #-0x13              // =-19
     58c: 140000a3     	b	0x818 <rdbg_open+0x694>
     590: f9400300     	ldr	x0, [x24]
     594: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f2
     598: 91000021     	add	x1, x1, #0x0
		0000000000000598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f2
     59c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000059c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     5a0: 91000042     	add	x2, x2, #0x0
		00000000000005a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     5a4: 94000000     	bl	0x5a4 <rdbg_open+0x420>
		00000000000005a4:  R_AARCH64_CALL26	_dev_err
     5a8: 12800200     	mov	w0, #-0x11              // =-17
     5ac: 1400009b     	b	0x818 <rdbg_open+0x694>
     5b0: f9400300     	ldr	x0, [x24]
     5b4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36f
     5b8: 91000021     	add	x1, x1, #0x0
		00000000000005b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36f
     5bc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000005bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     5c0: 91000042     	add	x2, x2, #0x0
		00000000000005c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     5c4: 94000000     	bl	0x5c4 <rdbg_open+0x440>
		00000000000005c4:  R_AARCH64_CALL26	_dev_err
     5c8: 12800160     	mov	w0, #-0xc               // =-12
     5cc: 14000093     	b	0x818 <rdbg_open+0x694>
     5d0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e
     5d4: 91000000     	add	x0, x0, #0x0
		00000000000005d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e
     5d8: 94000000     	bl	0x5d8 <rdbg_open+0x454>
		00000000000005d8:  R_AARCH64_CALL26	_printk
     5dc: f9403700     	ldr	x0, [x24, #0x68]
     5e0: b100081f     	cmn	x0, #0x2
     5e4: 54ffe1e1     	b.ne	0x220 <rdbg_open+0x9c>
     5e8: 2a1503e0     	mov	w0, w21
     5ec: 2a1603e1     	mov	w1, w22
     5f0: aa1303e2     	mov	x2, x19
     5f4: 94000000     	bl	0x5f4 <rdbg_open+0x470>
		00000000000005f4:  R_AARCH64_CALL26	qcom_smem_get
     5f8: f9003700     	str	x0, [x24, #0x68]
     5fc: 17ffff09     	b	0x220 <rdbg_open+0x9c>
     600: f9400300     	ldr	x0, [x24]
     604: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x143
     608: 91000021     	add	x1, x1, #0x0
		0000000000000608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x143
     60c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000060c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     610: 91000042     	add	x2, x2, #0x0
		0000000000000610:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     614: 94000000     	bl	0x614 <rdbg_open+0x490>
		0000000000000614:  R_AARCH64_CALL26	_dev_err
     618: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000618:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b
     61c: 91000000     	add	x0, x0, #0x0
		000000000000061c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b
     620: 94000000     	bl	0x620 <rdbg_open+0x49c>
		0000000000000620:  R_AARCH64_CALL26	_printk
     624: 12800160     	mov	w0, #-0xc               // =-12
     628: 1400007c     	b	0x818 <rdbg_open+0x694>
     62c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000062c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23b
     630: 91000000     	add	x0, x0, #0x0
		0000000000000630:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23b
     634: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000634:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x389
     638: 91000021     	add	x1, x1, #0x0
		0000000000000638:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x389
     63c: 94000000     	bl	0x63c <rdbg_open+0x4b8>
		000000000000063c:  R_AARCH64_CALL26	_printk
     640: f9400300     	ldr	x0, [x24]
     644: f94002e3     	ldr	x3, [x23]
     648: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000648:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26f
     64c: 91000021     	add	x1, x1, #0x0
		000000000000064c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26f
     650: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000650:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     654: 91000042     	add	x2, x2, #0x0
		0000000000000654:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     658: 94000000     	bl	0x658 <rdbg_open+0x4d4>
		0000000000000658:  R_AARCH64_CALL26	_dev_err
     65c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000065c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x402
     660: 91000000     	add	x0, x0, #0x0
		0000000000000660:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x402
     664: 94000000     	bl	0x664 <rdbg_open+0x4e0>
		0000000000000664:  R_AARCH64_CALL26	_printk
     668: 128008a0     	mov	w0, #-0x46              // =-70
     66c: 1400006b     	b	0x818 <rdbg_open+0x694>
     670: f9400308     	ldr	x8, [x24]
     674: b9402f04     	ldr	w4, [x24, #0x2c]
     678: 2a0003f4     	mov	w20, w0
     67c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000067c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe4
     680: 91000021     	add	x1, x1, #0x0
		0000000000000680:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe4
     684: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000684:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     688: 91000042     	add	x2, x2, #0x0
		0000000000000688:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     68c: aa0803e0     	mov	x0, x8
     690: 2a1403e3     	mov	w3, w20
     694: 94000000     	bl	0x694 <rdbg_open+0x510>
		0000000000000694:  R_AARCH64_CALL26	_dev_err
     698: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000698:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x167
     69c: 91000000     	add	x0, x0, #0x0
		000000000000069c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x167
     6a0: 2a1403e1     	mov	w1, w20
     6a4: 2a1403f5     	mov	w21, w20
     6a8: 94000000     	bl	0x6a8 <rdbg_open+0x524>
		00000000000006a8:  R_AARCH64_CALL26	_printk
     6ac: 14000058     	b	0x80c <rdbg_open+0x688>
     6b0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x343
     6b4: 91000021     	add	x1, x1, #0x0
		00000000000006b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x343
     6b8: 14000020     	b	0x738 <rdbg_open+0x5b4>
     6bc: d42aa240     	brk	#0x5512
     6c0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000006c0:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x30
     6c4: d5384116     	mrs	x22, SP_EL0
     6c8: f9402adb     	ldr	x27, [x22, #0x50]
     6cc: f9400100     	ldr	x0, [x8]
		00000000000006cc:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x30
     6d0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000006d0:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags
     6d4: 91000108     	add	x8, x8, #0x0
		00000000000006d4:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags
     6d8: 5281b801     	mov	w1, #0xdc0              // =3520
     6dc: 52800702     	mov	w2, #0x38               // =56
     6e0: f9002ac8     	str	x8, [x22, #0x50]
     6e4: 94000000     	bl	0x6e4 <rdbg_open+0x560>
		00000000000006e4:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     6e8: aa0003f3     	mov	x19, x0
     6ec: f9002adb     	str	x27, [x22, #0x50]
     6f0: b5ffdd93     	cbnz	x19, 0x2a0 <rdbg_open+0x11c>
     6f4: 12800160     	mov	w0, #-0xc               // =-12
     6f8: 14000048     	b	0x818 <rdbg_open+0x694>
     6fc: d5384109     	mrs	x9, SP_EL0
     700: f9402928     	ldr	x8, [x9, #0x50]
     704: aa1703e0     	mov	x0, x23
     708: 5281b801     	mov	w1, #0xdc0              // =3520
     70c: a90023e9     	stp	x9, x8, [sp]
     710: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000710:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x28
     714: 91000108     	add	x8, x8, #0x0
		0000000000000714:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x28
     718: f9002928     	str	x8, [x9, #0x50]
     71c: 94000000     	bl	0x71c <rdbg_open+0x598>
		000000000000071c:  R_AARCH64_CALL26	__kmalloc_noprof
     720: a94023e9     	ldp	x9, x8, [sp]
     724: f9002928     	str	x8, [x9, #0x50]
     728: f9005f00     	str	x0, [x24, #0xb8]
     72c: b5ffe6a0     	cbnz	x0, 0x400 <rdbg_open+0x27c>
     730: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000730:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fe
     734: 91000021     	add	x1, x1, #0x0
		0000000000000734:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fe
     738: f9400300     	ldr	x0, [x24]
     73c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000073c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c7
     740: 91000042     	add	x2, x2, #0x0
		0000000000000740:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c7
     744: 94000000     	bl	0x744 <rdbg_open+0x5c0>
		0000000000000744:  R_AARCH64_CALL26	_dev_err
     748: f9400300     	ldr	x0, [x24]
     74c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000074c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a7
     750: 91000021     	add	x1, x1, #0x0
		0000000000000750:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a7
     754: 12800162     	mov	w2, #-0xc               // =-12
     758: 94000000     	bl	0x758 <rdbg_open+0x5d4>
		0000000000000758:  R_AARCH64_CALL26	_dev_err
     75c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000075c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x456
     760: 91000000     	add	x0, x0, #0x0
		0000000000000760:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x456
     764: 12800161     	mov	w1, #-0xc               // =-12
     768: 94000000     	bl	0x768 <rdbg_open+0x5e4>
		0000000000000768:  R_AARCH64_CALL26	_printk
     76c: 52803908     	mov	w8, #0x1c8              // =456
     770: f9400349     	ldr	x9, [x26]
		0000000000000770:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     774: b9402f00     	ldr	w0, [x24, #0x2c]
     778: 9ba826a1     	umaddl	x1, w21, w8, x9
     77c: 94000000     	bl	0x77c <rdbg_open+0x5f8>
		000000000000077c:  R_AARCH64_CALL26	free_irq
     780: b940ab08     	ldr	w8, [x24, #0xa8]
     784: 6b19011f     	cmp	w8, w25
     788: 540001e1     	b.ne	0x7c4 <rdbg_open+0x640>
     78c: b940c308     	ldr	w8, [x24, #0xc0]
     790: 7100091f     	cmp	w8, #0x2
     794: 54000120     	b.eq	0x7b8 <rdbg_open+0x634>
     798: 7100051f     	cmp	w8, #0x1
     79c: 54000121     	b.ne	0x7c0 <rdbg_open+0x63c>
     7a0: f9404308     	ldr	x8, [x24, #0x80]
     7a4: b900011f     	str	wzr, [x8]
     7a8: f9405f00     	ldr	x0, [x24, #0xb8]
     7ac: 94000000     	bl	0x7ac <rdbg_open+0x628>
		00000000000007ac:  R_AARCH64_CALL26	kfree
     7b0: f9005f1f     	str	xzr, [x24, #0xb8]
     7b4: 14000003     	b	0x7c0 <rdbg_open+0x63c>
     7b8: f9404708     	ldr	x8, [x24, #0x88]
     7bc: b900011f     	str	wzr, [x8]
     7c0: b900ab1f     	str	wzr, [x24, #0xa8]
     7c4: b940fb08     	ldr	w8, [x24, #0xf8]
     7c8: 6b19011f     	cmp	w8, w25
     7cc: 540001e1     	b.ne	0x808 <rdbg_open+0x684>
     7d0: b9411308     	ldr	w8, [x24, #0x110]
     7d4: 7100091f     	cmp	w8, #0x2
     7d8: 54000120     	b.eq	0x7fc <rdbg_open+0x678>
     7dc: 7100051f     	cmp	w8, #0x1
     7e0: 54000121     	b.ne	0x804 <rdbg_open+0x680>
     7e4: f9406b08     	ldr	x8, [x24, #0xd0]
     7e8: b900011f     	str	wzr, [x8]
     7ec: f9408700     	ldr	x0, [x24, #0x108]
     7f0: 94000000     	bl	0x7f0 <rdbg_open+0x66c>
		00000000000007f0:  R_AARCH64_CALL26	kfree
     7f4: f900871f     	str	xzr, [x24, #0x108]
     7f8: 14000003     	b	0x804 <rdbg_open+0x680>
     7fc: f9406f08     	ldr	x8, [x24, #0xd8]
     800: b900011f     	str	wzr, [x8]
     804: b900fb1f     	str	wzr, [x24, #0xf8]
     808: 12800175     	mov	w21, #-0xc              // =-12
     80c: aa1303e0     	mov	x0, x19
     810: 94000000     	bl	0x810 <rdbg_open+0x68c>
		0000000000000810:  R_AARCH64_CALL26	kfree
     814: 2a1503e0     	mov	w0, w21
     818: a9464ff4     	ldp	x20, x19, [sp, #0x60]
     81c: a94557f6     	ldp	x22, x21, [sp, #0x50]
     820: a9445ff8     	ldp	x24, x23, [sp, #0x40]
     824: a94367fa     	ldp	x26, x25, [sp, #0x30]
     828: a9426ffc     	ldp	x28, x27, [sp, #0x20]
     82c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     830: 9101c3ff     	add	sp, sp, #0x70
     834: d50323bf     	autiasp
     838: d65f03c0     	ret
