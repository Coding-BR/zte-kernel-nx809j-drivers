
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
     1a8: b4001fa0     	cbz	x0, 0x59c <rdbg_open+0x418>
     1ac: 9000001a     	adrp	x26, 0x0 <.text>
		00000000000001ac:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     1b0: f9400348     	ldr	x8, [x26]
		00000000000001b0:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     1b4: b4001f48     	cbz	x8, 0x59c <rdbg_open+0x418>
     1b8: b9404c09     	ldr	w9, [x0, #0x4c]
     1bc: 92404d35     	and	x21, x9, #0xfffff
     1c0: 52803909     	mov	w9, #0x1c8              // =456
     1c4: 9ba922b8     	umaddl	x24, w21, w9, x8
     1c8: 39418308     	ldrb	w8, [x24, #0x60]
     1cc: 7100051f     	cmp	w8, #0x1
     1d0: 54001f00     	b.eq	0x5b0 <rdbg_open+0x42c>
     1d4: 710042bf     	cmp	w21, #0x10
     1d8: 54002822     	b.hs	0x6dc <rdbg_open+0x558>
     1dc: 52800308     	mov	w8, #0x18               // =24
     1e0: 90000009     	adrp	x9, 0x0 <.text>
		00000000000001e0:  R_AARCH64_ADR_PREL_PG_HI21	proc_info
     1e4: 91000129     	add	x9, x9, #0x0
		00000000000001e4:  R_AARCH64_ADD_ABS_LO12_NC	proc_info
     1e8: 9ba826b7     	umaddl	x23, w21, w8, x9
     1ec: aa1803f3     	mov	x19, x24
     1f0: f9400ae8     	ldr	x8, [x23, #0x10]
     1f4: f8070e68     	str	x8, [x19, #0x70]!
     1f8: b4001ec8     	cbz	x8, 0x5d0 <rdbg_open+0x44c>
     1fc: b9400af6     	ldr	w22, [x23, #0x8]
     200: aa0103f4     	mov	x20, x1
     204: 12800000     	mov	w0, #-0x1               // =-1
     208: aa1303e2     	mov	x2, x19
     20c: 2a1603e1     	mov	w1, w22
     210: 94000000     	bl	0x210 <rdbg_open+0x8c>
		0000000000000210:  R_AARCH64_CALL26	qcom_smem_get
     214: b13ffc1f     	cmn	x0, #0xfff
     218: f9003700     	str	x0, [x24, #0x68]
     21c: 54001ea2     	b.hs	0x5f0 <rdbg_open+0x46c>
     220: b4002000     	cbz	x0, 0x620 <rdbg_open+0x49c>
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
     258: 5400204b     	b.lt	0x660 <rdbg_open+0x4dc>
     25c: 5319612a     	lsl	w10, w9, #7
     260: d37e7929     	ubfiz	x9, x9, #2, #31
     264: 32089ff9     	mov	w25, #-0xff0100         // =-16711936
     268: 8b2ac108     	add	x8, x8, w10, sxtw
     26c: 8b090108     	add	x8, x8, x9
     270: 321f0329     	orr	w9, w25, #0x2
     274: b9401108     	ldr	w8, [x8, #0x10]
     278: 6b09011f     	cmp	w8, w9
     27c: 54001e81     	b.ne	0x64c <rdbg_open+0x4c8>
     280: d503201f     	nop
     284: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000284:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x30
     288: 5281b801     	mov	w1, #0xdc0              // =3520
     28c: 52800802     	mov	w2, #0x40               // =64
     290: f9400100     	ldr	x0, [x8]
		0000000000000290:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x30
     294: 94000000     	bl	0x294 <rdbg_open+0x110>
		0000000000000294:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     298: aa0003f3     	mov	x19, x0
     29c: b40023d3     	cbz	x19, 0x714 <rdbg_open+0x590>
     2a0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20d
     2a4: 91000021     	add	x1, x1, #0x0
		00000000000002a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20d
     2a8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000002a8:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     2ac: 91000042     	add	x2, x2, #0x0
		00000000000002ac:  R_AARCH64_ADD_ABS_LO12_NC	.bss
     2b0: 91002260     	add	x0, x19, #0x8
     2b4: f9000278     	str	x24, [x19]
     2b8: 94000000     	bl	0x2b8 <rdbg_open+0x134>
		00000000000002b8:  R_AARCH64_CALL26	__mutex_init
     2bc: 90000016     	adrp	x22, 0x0 <.text>
		00000000000002bc:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_input_irq_lock
     2c0: 910002d6     	add	x22, x22, #0x0
		00000000000002c0:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_input_irq_lock
     2c4: aa1603e0     	mov	x0, x22
     2c8: 94000000     	bl	0x2c8 <rdbg_open+0x144>
		00000000000002c8:  R_AARCH64_CALL26	mutex_lock
     2cc: b9402f08     	ldr	w8, [x24, #0x2c]
     2d0: aa1603e0     	mov	x0, x22
     2d4: b9003a68     	str	w8, [x19, #0x38]
     2d8: 94000000     	bl	0x2d8 <rdbg_open+0x154>
		00000000000002d8:  R_AARCH64_CALL26	mutex_unlock
     2dc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0
     2e0: 91000021     	add	x1, x1, #0x0
		00000000000002e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0
     2e4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000002e4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x2
     2e8: 91000042     	add	x2, x2, #0x0
		00000000000002e8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x2
     2ec: 91004300     	add	x0, x24, #0x10
     2f0: b9000b1f     	str	wzr, [x24, #0x8]
     2f4: 94000000     	bl	0x2f4 <rdbg_open+0x170>
		00000000000002f4:  R_AARCH64_CALL26	__init_swait_queue_head
     2f8: 52803908     	mov	w8, #0x1c8              // =456
     2fc: f9400349     	ldr	x9, [x26]
		00000000000002fc:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     300: b9403a60     	ldr	w0, [x19, #0x38]
     304: 9ba826a5     	umaddl	x5, w21, w8, x9
     308: f94002e4     	ldr	x4, [x23]
     30c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000030c:  R_AARCH64_ADR_PREL_PG_HI21	on_interrupt_from
     310: 91000042     	add	x2, x2, #0x0
		0000000000000310:  R_AARCH64_ADD_ABS_LO12_NC	on_interrupt_from
     314: aa1f03e1     	mov	x1, xzr
     318: 52840063     	mov	w3, #0x2003             // =8195
     31c: 94000000     	bl	0x31c <rdbg_open+0x198>
		000000000000031c:  R_AARCH64_CALL26	request_threaded_irq
     320: 35001b80     	cbnz	w0, 0x690 <rdbg_open+0x50c>
     324: 91046316     	add	x22, x24, #0x118
     328: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x117
     32c: 91000021     	add	x1, x1, #0x0
		000000000000032c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x117
     330: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000330:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1
     334: 91000042     	add	x2, x2, #0x0
		0000000000000334:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1
     338: aa1603e0     	mov	x0, x22
     33c: 94000000     	bl	0x33c <rdbg_open+0x1b8>
		000000000000033c:  R_AARCH64_CALL26	__mutex_init
     340: b940ab08     	ldr	w8, [x24, #0xa8]
     344: 6b19011f     	cmp	w8, w25
     348: 54002040     	b.eq	0x750 <rdbg_open+0x5cc>
     34c: f940371b     	ldr	x27, [x24, #0x68]
     350: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fe
     354: 91000021     	add	x1, x1, #0x0
		0000000000000354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fe
     358: b400201b     	cbz	x27, 0x758 <rdbg_open+0x5d4>
     35c: f9403b08     	ldr	x8, [x24, #0x70]
     360: 927f7d09     	and	x9, x8, #0x1fffffffe
     364: b4001fa9     	cbz	x9, 0x758 <rdbg_open+0x5d4>
     368: d341fd1c     	lsr	x28, x8, #1
     36c: 91002768     	add	x8, x27, #0x9
     370: b204cfea     	mov	x10, #-0xf0f0f0f0f0f0f10 // =-1085102592571150096
     374: 927df108     	and	x8, x8, #0xfffffffffffffff8
     378: f29e1e2a     	movk	x10, #0xf0f1
     37c: f9005316     	str	x22, [x24, #0xa0]
     380: 0b1b0389     	add	w9, w28, w27
     384: f9003f1b     	str	x27, [x24, #0x78]
     388: 4b080129     	sub	w9, w9, w8
     38c: 93407d29     	sxtw	x9, w9
     390: d1008129     	sub	x9, x9, #0x20
     394: 9bca7d29     	umulh	x9, x9, x10
     398: d347fd29     	lsr	x9, x9, #7
     39c: 7100053f     	cmp	w9, #0x1
     3a0: 54001dcb     	b.lt	0x758 <rdbg_open+0x5d4>
     3a4: 5319612a     	lsl	w10, w9, #7
     3a8: f9004b08     	str	x8, [x24, #0x90]
     3ac: d37e792b     	ubfiz	x11, x9, #2, #31
     3b0: b9009b09     	str	w9, [x24, #0x98]
     3b4: 52800029     	mov	w9, #0x1                // =1
     3b8: 8b2ac108     	add	x8, x8, w10, sxtw
     3bc: b900c309     	str	w9, [x24, #0xc0]
     3c0: 8b0b010a     	add	x10, x8, x11
     3c4: 9100414a     	add	x10, x10, #0x10
     3c8: a9082b08     	stp	x8, x10, [x24, #0x80]
     3cc: 39000369     	strb	w9, [x27]
     3d0: b9409b08     	ldr	w8, [x24, #0x98]
     3d4: 34001c28     	cbz	w8, 0x758 <rdbg_open+0x5d4>
     3d8: aa1f03e8     	mov	x8, xzr
     3dc: 52800209     	mov	w9, #0x10               // =16
     3e0: 529fffea     	mov	w10, #0xffff            // =65535
     3e4: f940430b     	ldr	x11, [x24, #0x80]
     3e8: 91000508     	add	x8, x8, #0x1
     3ec: 7829696a     	strh	w10, [x11, x9]
     3f0: 91001129     	add	x9, x9, #0x4
     3f4: b9409b17     	ldr	w23, [x24, #0x98]
     3f8: eb17011f     	cmp	x8, x23
     3fc: 54ffff43     	b.lo	0x3e4 <rdbg_open+0x260>
     400: 71000aff     	cmp	w23, #0x2
     404: 54001a63     	b.lo	0x750 <rdbg_open+0x5cc>
     408: d503201f     	nop
     40c: aa1703e0     	mov	x0, x23
     410: 5281b801     	mov	w1, #0xdc0              // =3520
     414: 94000000     	bl	0x414 <rdbg_open+0x290>
		0000000000000414:  R_AARCH64_CALL26	__kmalloc_noprof
     418: f9005f00     	str	x0, [x24, #0xb8]
     41c: b40019a0     	cbz	x0, 0x750 <rdbg_open+0x5cc>
     420: 510006e8     	sub	w8, w23, #0x1
     424: 2a1f03e1     	mov	w1, wzr
     428: aa1703e2     	mov	x2, x23
     42c: b900b708     	str	w8, [x24, #0xb4]
     430: 94000000     	bl	0x430 <rdbg_open+0x2ac>
		0000000000000430:  R_AARCH64_CALL26	memset
     434: f9404308     	ldr	x8, [x24, #0x80]
     438: b900b31f     	str	wzr, [x24, #0xb0]
     43c: 11000729     	add	w9, w25, #0x1
     440: b900091f     	str	wzr, [x8, #0x8]
     444: f9404308     	ldr	x8, [x24, #0x80]
     448: b9000d1f     	str	wzr, [x8, #0xc]
     44c: f9404308     	ldr	x8, [x24, #0x80]
     450: b940010a     	ldr	w10, [x8]
     454: 6b09015f     	cmp	w10, w9
     458: 540000a1     	b.ne	0x46c <rdbg_open+0x2e8>
     45c: b9400509     	ldr	w9, [x8, #0x4]
     460: 11000529     	add	w9, w9, #0x1
     464: b9000509     	str	w9, [x8, #0x4]
     468: 14000005     	b	0x47c <rdbg_open+0x2f8>
     46c: 5280002a     	mov	w10, #0x1               // =1
     470: b900050a     	str	w10, [x8, #0x4]
     474: f9404308     	ldr	x8, [x24, #0x80]
     478: b9000109     	str	w9, [x8]
     47c: b940fb08     	ldr	w8, [x24, #0xf8]
     480: b900ab19     	str	w25, [x24, #0xa8]
     484: 6b19011f     	cmp	w8, w25
     488: 54001240     	b.eq	0x6d0 <rdbg_open+0x54c>
     48c: 8b1c0368     	add	x8, x27, x28
     490: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000490:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x343
     494: 91000021     	add	x1, x1, #0x0
		0000000000000494:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x343
     498: b4001608     	cbz	x8, 0x758 <rdbg_open+0x5d4>
     49c: f9403b09     	ldr	x9, [x24, #0x70]
     4a0: 927f7d2a     	and	x10, x9, #0x1fffffffe
     4a4: b40015aa     	cbz	x10, 0x758 <rdbg_open+0x5d4>
     4a8: 9100250a     	add	x10, x8, #0x9
     4ac: d341fd2b     	lsr	x11, x9, #1
     4b0: f9007b16     	str	x22, [x24, #0xf0]
     4b4: 927df149     	and	x9, x10, #0xfffffffffffffff8
     4b8: f9006708     	str	x8, [x24, #0xc8]
     4bc: 4b09010a     	sub	w10, w8, w9
     4c0: 0b0b014a     	add	w10, w10, w11
     4c4: b204cfeb     	mov	x11, #-0xf0f0f0f0f0f0f10 // =-1085102592571150096
     4c8: 93407d4a     	sxtw	x10, w10
     4cc: f29e1e2b     	movk	x11, #0xf0f1
     4d0: d100814a     	sub	x10, x10, #0x20
     4d4: 9bcb7d4a     	umulh	x10, x10, x11
     4d8: d347fd4a     	lsr	x10, x10, #7
     4dc: 7100055f     	cmp	w10, #0x1
     4e0: 540013cb     	b.lt	0x758 <rdbg_open+0x5d4>
     4e4: 5319614b     	lsl	w11, w10, #7
     4e8: f9007309     	str	x9, [x24, #0xe0]
     4ec: d37e794c     	ubfiz	x12, x10, #2, #31
     4f0: b900eb0a     	str	w10, [x24, #0xe8]
     4f4: 5280004a     	mov	w10, #0x2               // =2
     4f8: 8b2bc129     	add	x9, x9, w11, sxtw
     4fc: b901130a     	str	w10, [x24, #0x110]
     500: 8b0c012a     	add	x10, x9, x12
     504: 9100414a     	add	x10, x10, #0x10
     508: a90d2b09     	stp	x9, x10, [x24, #0xd0]
     50c: 52800029     	mov	w9, #0x1                // =1
     510: 39000509     	strb	w9, [x8, #0x1]
     514: b940eb08     	ldr	w8, [x24, #0xe8]
     518: 34000168     	cbz	w8, 0x544 <rdbg_open+0x3c0>
     51c: aa1f03e8     	mov	x8, xzr
     520: 52800209     	mov	w9, #0x10               // =16
     524: 529fffea     	mov	w10, #0xffff            // =65535
     528: f9406f0b     	ldr	x11, [x24, #0xd8]
     52c: 91000508     	add	x8, x8, #0x1
     530: 7829696a     	strh	w10, [x11, x9]
     534: 91001129     	add	x9, x9, #0x4
     538: b940eb0b     	ldr	w11, [x24, #0xe8]
     53c: eb0b011f     	cmp	x8, x11
     540: 54ffff43     	b.lo	0x528 <rdbg_open+0x3a4>
     544: f9406f08     	ldr	x8, [x24, #0xd8]
     548: 1100072a     	add	w10, w25, #0x1
     54c: b900091f     	str	wzr, [x8, #0x8]
     550: f9406f08     	ldr	x8, [x24, #0xd8]
     554: b9000d1f     	str	wzr, [x8, #0xc]
     558: f9406b09     	ldr	x9, [x24, #0xd0]
     55c: b9400128     	ldr	w8, [x9]
     560: 6b0a011f     	cmp	w8, w10
     564: 2a1f03e8     	mov	w8, wzr
     568: 54000041     	b.ne	0x570 <rdbg_open+0x3ec>
     56c: b9400528     	ldr	w8, [x9, #0x4]
     570: f9406f09     	ldr	x9, [x24, #0xd8]
     574: 2a1f03e0     	mov	w0, wzr
     578: b9000528     	str	w8, [x9, #0x4]
     57c: 11000b29     	add	w9, w25, #0x2
     580: f9406f08     	ldr	x8, [x24, #0xd8]
     584: b9000109     	str	w9, [x8]
     588: 52800028     	mov	w8, #0x1                // =1
     58c: b900fb19     	str	w25, [x24, #0xf8]
     590: 39018308     	strb	w8, [x24, #0x60]
     594: f9001293     	str	x19, [x20, #0x20]
     598: 140000a8     	b	0x838 <rdbg_open+0x6b4>
     59c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000059c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62
     5a0: 91000000     	add	x0, x0, #0x0
		00000000000005a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62
     5a4: 94000000     	bl	0x5a4 <rdbg_open+0x420>
		00000000000005a4:  R_AARCH64_CALL26	_printk
     5a8: 12800240     	mov	w0, #-0x13              // =-19
     5ac: 140000a3     	b	0x838 <rdbg_open+0x6b4>
     5b0: f9400300     	ldr	x0, [x24]
     5b4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f2
     5b8: 91000021     	add	x1, x1, #0x0
		00000000000005b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f2
     5bc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000005bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     5c0: 91000042     	add	x2, x2, #0x0
		00000000000005c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     5c4: 94000000     	bl	0x5c4 <rdbg_open+0x440>
		00000000000005c4:  R_AARCH64_CALL26	_dev_err
     5c8: 12800200     	mov	w0, #-0x11              // =-17
     5cc: 1400009b     	b	0x838 <rdbg_open+0x6b4>
     5d0: f9400300     	ldr	x0, [x24]
     5d4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36f
     5d8: 91000021     	add	x1, x1, #0x0
		00000000000005d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36f
     5dc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000005dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     5e0: 91000042     	add	x2, x2, #0x0
		00000000000005e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     5e4: 94000000     	bl	0x5e4 <rdbg_open+0x460>
		00000000000005e4:  R_AARCH64_CALL26	_dev_err
     5e8: 12800160     	mov	w0, #-0xc               // =-12
     5ec: 14000093     	b	0x838 <rdbg_open+0x6b4>
     5f0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e
     5f4: 91000000     	add	x0, x0, #0x0
		00000000000005f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e
     5f8: 94000000     	bl	0x5f8 <rdbg_open+0x474>
		00000000000005f8:  R_AARCH64_CALL26	_printk
     5fc: f9403700     	ldr	x0, [x24, #0x68]
     600: b100081f     	cmn	x0, #0x2
     604: 54ffe0e1     	b.ne	0x220 <rdbg_open+0x9c>
     608: 2a1503e0     	mov	w0, w21
     60c: 2a1603e1     	mov	w1, w22
     610: aa1303e2     	mov	x2, x19
     614: 94000000     	bl	0x614 <rdbg_open+0x490>
		0000000000000614:  R_AARCH64_CALL26	qcom_smem_get
     618: f9003700     	str	x0, [x24, #0x68]
     61c: 17ffff01     	b	0x220 <rdbg_open+0x9c>
     620: f9400300     	ldr	x0, [x24]
     624: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000624:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x143
     628: 91000021     	add	x1, x1, #0x0
		0000000000000628:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x143
     62c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000062c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     630: 91000042     	add	x2, x2, #0x0
		0000000000000630:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     634: 94000000     	bl	0x634 <rdbg_open+0x4b0>
		0000000000000634:  R_AARCH64_CALL26	_dev_err
     638: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000638:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b
     63c: 91000000     	add	x0, x0, #0x0
		000000000000063c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b
     640: 94000000     	bl	0x640 <rdbg_open+0x4bc>
		0000000000000640:  R_AARCH64_CALL26	_printk
     644: 12800160     	mov	w0, #-0xc               // =-12
     648: 1400007c     	b	0x838 <rdbg_open+0x6b4>
     64c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000064c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23b
     650: 91000000     	add	x0, x0, #0x0
		0000000000000650:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23b
     654: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000654:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x389
     658: 91000021     	add	x1, x1, #0x0
		0000000000000658:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x389
     65c: 94000000     	bl	0x65c <rdbg_open+0x4d8>
		000000000000065c:  R_AARCH64_CALL26	_printk
     660: f9400300     	ldr	x0, [x24]
     664: f94002e3     	ldr	x3, [x23]
     668: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000668:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26f
     66c: 91000021     	add	x1, x1, #0x0
		000000000000066c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26f
     670: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000670:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     674: 91000042     	add	x2, x2, #0x0
		0000000000000674:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     678: 94000000     	bl	0x678 <rdbg_open+0x4f4>
		0000000000000678:  R_AARCH64_CALL26	_dev_err
     67c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000067c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x402
     680: 91000000     	add	x0, x0, #0x0
		0000000000000680:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x402
     684: 94000000     	bl	0x684 <rdbg_open+0x500>
		0000000000000684:  R_AARCH64_CALL26	_printk
     688: 128008a0     	mov	w0, #-0x46              // =-70
     68c: 1400006b     	b	0x838 <rdbg_open+0x6b4>
     690: f9400308     	ldr	x8, [x24]
     694: b9403a64     	ldr	w4, [x19, #0x38]
     698: 2a0003f4     	mov	w20, w0
     69c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000069c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe4
     6a0: 91000021     	add	x1, x1, #0x0
		00000000000006a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe4
     6a4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000006a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     6a8: 91000042     	add	x2, x2, #0x0
		00000000000006a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     6ac: aa0803e0     	mov	x0, x8
     6b0: 2a1403e3     	mov	w3, w20
     6b4: 94000000     	bl	0x6b4 <rdbg_open+0x530>
		00000000000006b4:  R_AARCH64_CALL26	_dev_err
     6b8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x167
     6bc: 91000000     	add	x0, x0, #0x0
		00000000000006bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x167
     6c0: 2a1403e1     	mov	w1, w20
     6c4: 2a1403f5     	mov	w21, w20
     6c8: 94000000     	bl	0x6c8 <rdbg_open+0x544>
		00000000000006c8:  R_AARCH64_CALL26	_printk
     6cc: 14000058     	b	0x82c <rdbg_open+0x6a8>
     6d0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x343
     6d4: 91000021     	add	x1, x1, #0x0
		00000000000006d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x343
     6d8: 14000020     	b	0x758 <rdbg_open+0x5d4>
     6dc: d42aa240     	brk	#0x5512
     6e0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000006e0:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x30
     6e4: d5384116     	mrs	x22, SP_EL0
     6e8: f9402adb     	ldr	x27, [x22, #0x50]
     6ec: f9400100     	ldr	x0, [x8]
		00000000000006ec:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x30
     6f0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000006f0:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags
     6f4: 91000108     	add	x8, x8, #0x0
		00000000000006f4:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags
     6f8: 5281b801     	mov	w1, #0xdc0              // =3520
     6fc: 52800802     	mov	w2, #0x40               // =64
     700: f9002ac8     	str	x8, [x22, #0x50]
     704: 94000000     	bl	0x704 <rdbg_open+0x580>
		0000000000000704:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     708: aa0003f3     	mov	x19, x0
     70c: f9002adb     	str	x27, [x22, #0x50]
     710: b5ffdc93     	cbnz	x19, 0x2a0 <rdbg_open+0x11c>
     714: 12800160     	mov	w0, #-0xc               // =-12
     718: 14000048     	b	0x838 <rdbg_open+0x6b4>
     71c: d5384109     	mrs	x9, SP_EL0
     720: f9402928     	ldr	x8, [x9, #0x50]
     724: aa1703e0     	mov	x0, x23
     728: 5281b801     	mov	w1, #0xdc0              // =3520
     72c: a90023e9     	stp	x9, x8, [sp]
     730: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000730:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x28
     734: 91000108     	add	x8, x8, #0x0
		0000000000000734:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x28
     738: f9002928     	str	x8, [x9, #0x50]
     73c: 94000000     	bl	0x73c <rdbg_open+0x5b8>
		000000000000073c:  R_AARCH64_CALL26	__kmalloc_noprof
     740: a94023e9     	ldp	x9, x8, [sp]
     744: f9002928     	str	x8, [x9, #0x50]
     748: f9005f00     	str	x0, [x24, #0xb8]
     74c: b5ffe6a0     	cbnz	x0, 0x420 <rdbg_open+0x29c>
     750: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000750:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fe
     754: 91000021     	add	x1, x1, #0x0
		0000000000000754:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fe
     758: f9400300     	ldr	x0, [x24]
     75c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000075c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c7
     760: 91000042     	add	x2, x2, #0x0
		0000000000000760:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c7
     764: 94000000     	bl	0x764 <rdbg_open+0x5e0>
		0000000000000764:  R_AARCH64_CALL26	_dev_err
     768: f9400300     	ldr	x0, [x24]
     76c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000076c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a7
     770: 91000021     	add	x1, x1, #0x0
		0000000000000770:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a7
     774: 12800162     	mov	w2, #-0xc               // =-12
     778: 94000000     	bl	0x778 <rdbg_open+0x5f4>
		0000000000000778:  R_AARCH64_CALL26	_dev_err
     77c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000077c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x456
     780: 91000000     	add	x0, x0, #0x0
		0000000000000780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x456
     784: 12800161     	mov	w1, #-0xc               // =-12
     788: 94000000     	bl	0x788 <rdbg_open+0x604>
		0000000000000788:  R_AARCH64_CALL26	_printk
     78c: 52803908     	mov	w8, #0x1c8              // =456
     790: f9400349     	ldr	x9, [x26]
		0000000000000790:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     794: b9403a60     	ldr	w0, [x19, #0x38]
     798: 9ba826a1     	umaddl	x1, w21, w8, x9
     79c: 94000000     	bl	0x79c <rdbg_open+0x618>
		000000000000079c:  R_AARCH64_CALL26	free_irq
     7a0: b940ab08     	ldr	w8, [x24, #0xa8]
     7a4: 6b19011f     	cmp	w8, w25
     7a8: 540001e1     	b.ne	0x7e4 <rdbg_open+0x660>
     7ac: b940c308     	ldr	w8, [x24, #0xc0]
     7b0: 7100091f     	cmp	w8, #0x2
     7b4: 54000120     	b.eq	0x7d8 <rdbg_open+0x654>
     7b8: 7100051f     	cmp	w8, #0x1
     7bc: 54000121     	b.ne	0x7e0 <rdbg_open+0x65c>
     7c0: f9404308     	ldr	x8, [x24, #0x80]
     7c4: b900011f     	str	wzr, [x8]
     7c8: f9405f00     	ldr	x0, [x24, #0xb8]
     7cc: 94000000     	bl	0x7cc <rdbg_open+0x648>
		00000000000007cc:  R_AARCH64_CALL26	kfree
     7d0: f9005f1f     	str	xzr, [x24, #0xb8]
     7d4: 14000003     	b	0x7e0 <rdbg_open+0x65c>
     7d8: f9404708     	ldr	x8, [x24, #0x88]
     7dc: b900011f     	str	wzr, [x8]
     7e0: b900ab1f     	str	wzr, [x24, #0xa8]
     7e4: b940fb08     	ldr	w8, [x24, #0xf8]
     7e8: 6b19011f     	cmp	w8, w25
     7ec: 540001e1     	b.ne	0x828 <rdbg_open+0x6a4>
     7f0: b9411308     	ldr	w8, [x24, #0x110]
     7f4: 7100091f     	cmp	w8, #0x2
     7f8: 54000120     	b.eq	0x81c <rdbg_open+0x698>
     7fc: 7100051f     	cmp	w8, #0x1
     800: 54000121     	b.ne	0x824 <rdbg_open+0x6a0>
     804: f9406b08     	ldr	x8, [x24, #0xd0]
     808: b900011f     	str	wzr, [x8]
     80c: f9408700     	ldr	x0, [x24, #0x108]
     810: 94000000     	bl	0x810 <rdbg_open+0x68c>
		0000000000000810:  R_AARCH64_CALL26	kfree
     814: f900871f     	str	xzr, [x24, #0x108]
     818: 14000003     	b	0x824 <rdbg_open+0x6a0>
     81c: f9406f08     	ldr	x8, [x24, #0xd8]
     820: b900011f     	str	wzr, [x8]
     824: b900fb1f     	str	wzr, [x24, #0xf8]
     828: 12800175     	mov	w21, #-0xc              // =-12
     82c: aa1303e0     	mov	x0, x19
     830: 94000000     	bl	0x830 <rdbg_open+0x6ac>
		0000000000000830:  R_AARCH64_CALL26	kfree
     834: 2a1503e0     	mov	w0, w21
     838: a9464ff4     	ldp	x20, x19, [sp, #0x60]
     83c: a94557f6     	ldp	x22, x21, [sp, #0x50]
     840: a9445ff8     	ldp	x24, x23, [sp, #0x40]
     844: a94367fa     	ldp	x26, x25, [sp, #0x30]
     848: a9426ffc     	ldp	x28, x27, [sp, #0x20]
     84c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     850: 9101c3ff     	add	sp, sp, #0x70
     854: d50323bf     	autiasp
     858: d65f03c0     	ret
