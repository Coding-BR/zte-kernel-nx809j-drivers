
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000016c <rdbg_open>:
     16c: d503233f     	paciasp
     170: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
     174: a9016ffc     	stp	x28, x27, [sp, #0x10]
     178: a90267fa     	stp	x26, x25, [sp, #0x20]
     17c: a9035ff8     	stp	x24, x23, [sp, #0x30]
     180: a90457f6     	stp	x22, x21, [sp, #0x40]
     184: a9054ff4     	stp	x20, x19, [sp, #0x50]
     188: 910003fd     	mov	x29, sp
     18c: b4001ca0     	cbz	x0, 0x520 <rdbg_open+0x3b4>
     190: 90000018     	adrp	x24, 0x0 <.text>
		0000000000000190:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     194: f9400308     	ldr	x8, [x24]
		0000000000000194:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     198: b4001c48     	cbz	x8, 0x520 <rdbg_open+0x3b4>
     19c: b9404c09     	ldr	w9, [x0, #0x4c]
     1a0: 92404d34     	and	x20, x9, #0xfffff
     1a4: 52803909     	mov	w9, #0x1c8              // =456
     1a8: 9ba92297     	umaddl	x23, w20, w9, x8
     1ac: 394182e8     	ldrb	w8, [x23, #0x60]
     1b0: 7100051f     	cmp	w8, #0x1
     1b4: 54001c00     	b.eq	0x534 <rdbg_open+0x3c8>
     1b8: 7100429f     	cmp	w20, #0x10
     1bc: 540024e2     	b.hs	0x658 <rdbg_open+0x4ec>
     1c0: 52800308     	mov	w8, #0x18               // =24
     1c4: 90000009     	adrp	x9, 0x0 <.text>
		00000000000001c4:  R_AARCH64_ADR_PREL_PG_HI21	proc_info
     1c8: 91000129     	add	x9, x9, #0x0
		00000000000001c8:  R_AARCH64_ADD_ABS_LO12_NC	proc_info
     1cc: 9ba82699     	umaddl	x25, w20, w8, x9
     1d0: aa1703f5     	mov	x21, x23
     1d4: f9400b28     	ldr	x8, [x25, #0x10]
     1d8: f8070ea8     	str	x8, [x21, #0x70]!
     1dc: b4001bc8     	cbz	x8, 0x554 <rdbg_open+0x3e8>
     1e0: b9400b36     	ldr	w22, [x25, #0x8]
     1e4: aa0103f3     	mov	x19, x1
     1e8: 12800000     	mov	w0, #-0x1               // =-1
     1ec: aa1503e2     	mov	x2, x21
     1f0: 2a1603e1     	mov	w1, w22
     1f4: 94000000     	bl	0x1f4 <rdbg_open+0x88>
		00000000000001f4:  R_AARCH64_CALL26	qcom_smem_get
     1f8: b13ffc1f     	cmn	x0, #0xfff
     1fc: f90036e0     	str	x0, [x23, #0x68]
     200: 54001b82     	b.hs	0x570 <rdbg_open+0x404>
     204: b4001ce0     	cbz	x0, 0x5a0 <rdbg_open+0x434>
     208: f94002a8     	ldr	x8, [x21]
     20c: 91002409     	add	x9, x0, #0x9
     210: d341fd0a     	lsr	x10, x8, #1
     214: 927df128     	and	x8, x9, #0xfffffffffffffff8
     218: 4b080009     	sub	w9, w0, w8
     21c: 0b0a0129     	add	w9, w9, w10
     220: b204cfea     	mov	x10, #-0xf0f0f0f0f0f0f10 // =-1085102592571150096
     224: 93407d29     	sxtw	x9, w9
     228: f29e1e2a     	movk	x10, #0xf0f1
     22c: d1008129     	sub	x9, x9, #0x20
     230: 9bca7d29     	umulh	x9, x9, x10
     234: d347fd29     	lsr	x9, x9, #7
     238: 7100053f     	cmp	w9, #0x1
     23c: 54001d0b     	b.lt	0x5dc <rdbg_open+0x470>
     240: 5319612a     	lsl	w10, w9, #7
     244: d37e7929     	ubfiz	x9, x9, #2, #31
     248: 32089ff6     	mov	w22, #-0xff0100         // =-16711936
     24c: 8b2ac108     	add	x8, x8, w10, sxtw
     250: 8b090108     	add	x8, x8, x9
     254: 321f02c9     	orr	w9, w22, #0x2
     258: b9401108     	ldr	w8, [x8, #0x10]
     25c: 6b09011f     	cmp	w8, w9
     260: 54001b41     	b.ne	0x5c8 <rdbg_open+0x45c>
     264: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000264:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0
     268: 91000021     	add	x1, x1, #0x0
		0000000000000268:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0
     26c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000026c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1
     270: 91000042     	add	x2, x2, #0x0
		0000000000000270:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1
     274: 910042e0     	add	x0, x23, #0x10
     278: b9000aff     	str	wzr, [x23, #0x8]
     27c: 94000000     	bl	0x27c <rdbg_open+0x110>
		000000000000027c:  R_AARCH64_CALL26	__init_swait_queue_head
     280: 52803908     	mov	w8, #0x1c8              // =456
     284: f9400309     	ldr	x9, [x24]
		0000000000000284:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     288: b9402ee0     	ldr	w0, [x23, #0x2c]
     28c: 9ba82685     	umaddl	x5, w20, w8, x9
     290: f9400324     	ldr	x4, [x25]
     294: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000294:  R_AARCH64_ADR_PREL_PG_HI21	on_interrupt_from
     298: 91000042     	add	x2, x2, #0x0
		0000000000000298:  R_AARCH64_ADD_ABS_LO12_NC	on_interrupt_from
     29c: aa1f03e1     	mov	x1, xzr
     2a0: 52840063     	mov	w3, #0x2003             // =8195
     2a4: 94000000     	bl	0x2a4 <rdbg_open+0x138>
		00000000000002a4:  R_AARCH64_CALL26	request_threaded_irq
     2a8: 35001b20     	cbnz	w0, 0x60c <rdbg_open+0x4a0>
     2ac: 910462f5     	add	x21, x23, #0x118
     2b0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x117
     2b4: 91000021     	add	x1, x1, #0x0
		00000000000002b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x117
     2b8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000002b8:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     2bc: 91000042     	add	x2, x2, #0x0
		00000000000002bc:  R_AARCH64_ADD_ABS_LO12_NC	.bss
     2c0: aa1503e0     	mov	x0, x21
     2c4: 94000000     	bl	0x2c4 <rdbg_open+0x158>
		00000000000002c4:  R_AARCH64_CALL26	__mutex_init
     2c8: b940aae8     	ldr	w8, [x23, #0xa8]
     2cc: 6b16011f     	cmp	w8, w22
     2d0: 54001dc0     	b.eq	0x688 <rdbg_open+0x51c>
     2d4: f94036f9     	ldr	x25, [x23, #0x68]
     2d8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e4
     2dc: 91000021     	add	x1, x1, #0x0
		00000000000002dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e4
     2e0: b4001d99     	cbz	x25, 0x690 <rdbg_open+0x524>
     2e4: f9403ae8     	ldr	x8, [x23, #0x70]
     2e8: 927f7d09     	and	x9, x8, #0x1fffffffe
     2ec: b4001d29     	cbz	x9, 0x690 <rdbg_open+0x524>
     2f0: d341fd1a     	lsr	x26, x8, #1
     2f4: 91002728     	add	x8, x25, #0x9
     2f8: b204cfea     	mov	x10, #-0xf0f0f0f0f0f0f10 // =-1085102592571150096
     2fc: 927df108     	and	x8, x8, #0xfffffffffffffff8
     300: f29e1e2a     	movk	x10, #0xf0f1
     304: f90052f5     	str	x21, [x23, #0xa0]
     308: 0b190349     	add	w9, w26, w25
     30c: f9003ef9     	str	x25, [x23, #0x78]
     310: 4b080129     	sub	w9, w9, w8
     314: 93407d29     	sxtw	x9, w9
     318: d1008129     	sub	x9, x9, #0x20
     31c: 9bca7d29     	umulh	x9, x9, x10
     320: d347fd29     	lsr	x9, x9, #7
     324: 7100053f     	cmp	w9, #0x1
     328: 54001b4b     	b.lt	0x690 <rdbg_open+0x524>
     32c: 5319612a     	lsl	w10, w9, #7
     330: f9004ae8     	str	x8, [x23, #0x90]
     334: d37e792b     	ubfiz	x11, x9, #2, #31
     338: b9009ae9     	str	w9, [x23, #0x98]
     33c: 52800029     	mov	w9, #0x1                // =1
     340: 8b2ac108     	add	x8, x8, w10, sxtw
     344: b900c2e9     	str	w9, [x23, #0xc0]
     348: 8b0b010a     	add	x10, x8, x11
     34c: 9100414a     	add	x10, x10, #0x10
     350: a9082ae8     	stp	x8, x10, [x23, #0x80]
     354: 39000329     	strb	w9, [x25]
     358: b9409ae8     	ldr	w8, [x23, #0x98]
     35c: 340019a8     	cbz	w8, 0x690 <rdbg_open+0x524>
     360: aa1f03e8     	mov	x8, xzr
     364: 52800209     	mov	w9, #0x10               // =16
     368: 529fffea     	mov	w10, #0xffff            // =65535
     36c: f94042eb     	ldr	x11, [x23, #0x80]
     370: 91000508     	add	x8, x8, #0x1
     374: 7829696a     	strh	w10, [x11, x9]
     378: 91001129     	add	x9, x9, #0x4
     37c: b9409af5     	ldr	w21, [x23, #0x98]
     380: eb15011f     	cmp	x8, x21
     384: 54ffff43     	b.lo	0x36c <rdbg_open+0x200>
     388: 71000abf     	cmp	w21, #0x2
     38c: 540017e3     	b.lo	0x688 <rdbg_open+0x51c>
     390: d503201f     	nop
     394: aa1503e0     	mov	x0, x21
     398: 5281b801     	mov	w1, #0xdc0              // =3520
     39c: 94000000     	bl	0x39c <rdbg_open+0x230>
		000000000000039c:  R_AARCH64_CALL26	__kmalloc_noprof
     3a0: f9005ee0     	str	x0, [x23, #0xb8]
     3a4: b4001720     	cbz	x0, 0x688 <rdbg_open+0x51c>
     3a8: 510006a8     	sub	w8, w21, #0x1
     3ac: 2a1f03e1     	mov	w1, wzr
     3b0: aa1503e2     	mov	x2, x21
     3b4: b900b6e8     	str	w8, [x23, #0xb4]
     3b8: 94000000     	bl	0x3b8 <rdbg_open+0x24c>
		00000000000003b8:  R_AARCH64_CALL26	memset
     3bc: f94042e8     	ldr	x8, [x23, #0x80]
     3c0: b900b2ff     	str	wzr, [x23, #0xb0]
     3c4: 110006c9     	add	w9, w22, #0x1
     3c8: b900091f     	str	wzr, [x8, #0x8]
     3cc: f94042e8     	ldr	x8, [x23, #0x80]
     3d0: b9000d1f     	str	wzr, [x8, #0xc]
     3d4: f94042e8     	ldr	x8, [x23, #0x80]
     3d8: b940010a     	ldr	w10, [x8]
     3dc: 6b09015f     	cmp	w10, w9
     3e0: 540000a1     	b.ne	0x3f4 <rdbg_open+0x288>
     3e4: b9400509     	ldr	w9, [x8, #0x4]
     3e8: 11000529     	add	w9, w9, #0x1
     3ec: b9000509     	str	w9, [x8, #0x4]
     3f0: 14000005     	b	0x404 <rdbg_open+0x298>
     3f4: 5280002a     	mov	w10, #0x1               // =1
     3f8: b900050a     	str	w10, [x8, #0x4]
     3fc: f94042e8     	ldr	x8, [x23, #0x80]
     400: b9000109     	str	w9, [x8]
     404: b940fae8     	ldr	w8, [x23, #0xf8]
     408: b900aaf6     	str	w22, [x23, #0xa8]
     40c: 6b16011f     	cmp	w8, w22
     410: 540011e0     	b.eq	0x64c <rdbg_open+0x4e0>
     414: 8b1a0328     	add	x8, x25, x26
     418: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000418:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x329
     41c: 91000021     	add	x1, x1, #0x0
		000000000000041c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x329
     420: b4001388     	cbz	x8, 0x690 <rdbg_open+0x524>
     424: f9403ae9     	ldr	x9, [x23, #0x70]
     428: 927f7d2a     	and	x10, x9, #0x1fffffffe
     42c: b400132a     	cbz	x10, 0x690 <rdbg_open+0x524>
     430: 9100250a     	add	x10, x8, #0x9
     434: d341fd2b     	lsr	x11, x9, #1
     438: f90066e8     	str	x8, [x23, #0xc8]
     43c: 927df149     	and	x9, x10, #0xfffffffffffffff8
     440: 4b09010a     	sub	w10, w8, w9
     444: 0b0b014a     	add	w10, w10, w11
     448: b204cfeb     	mov	x11, #-0xf0f0f0f0f0f0f10 // =-1085102592571150096
     44c: 93407d4a     	sxtw	x10, w10
     450: f29e1e2b     	movk	x11, #0xf0f1
     454: d100814a     	sub	x10, x10, #0x20
     458: 9bcb7d4a     	umulh	x10, x10, x11
     45c: d347fd4a     	lsr	x10, x10, #7
     460: 7100055f     	cmp	w10, #0x1
     464: 5400116b     	b.lt	0x690 <rdbg_open+0x524>
     468: 5319614b     	lsl	w11, w10, #7
     46c: f90072e9     	str	x9, [x23, #0xe0]
     470: d37e794c     	ubfiz	x12, x10, #2, #31
     474: b900eaea     	str	w10, [x23, #0xe8]
     478: 5280004a     	mov	w10, #0x2               // =2
     47c: 8b2bc129     	add	x9, x9, w11, sxtw
     480: b90112ea     	str	w10, [x23, #0x110]
     484: 8b0c012a     	add	x10, x9, x12
     488: 9100414a     	add	x10, x10, #0x10
     48c: a90d2ae9     	stp	x9, x10, [x23, #0xd0]
     490: 52800029     	mov	w9, #0x1                // =1
     494: 39000509     	strb	w9, [x8, #0x1]
     498: b940eae8     	ldr	w8, [x23, #0xe8]
     49c: 34000168     	cbz	w8, 0x4c8 <rdbg_open+0x35c>
     4a0: aa1f03e8     	mov	x8, xzr
     4a4: 52800209     	mov	w9, #0x10               // =16
     4a8: 529fffea     	mov	w10, #0xffff            // =65535
     4ac: f9406eeb     	ldr	x11, [x23, #0xd8]
     4b0: 91000508     	add	x8, x8, #0x1
     4b4: 7829696a     	strh	w10, [x11, x9]
     4b8: 91001129     	add	x9, x9, #0x4
     4bc: b940eaeb     	ldr	w11, [x23, #0xe8]
     4c0: eb0b011f     	cmp	x8, x11
     4c4: 54ffff43     	b.lo	0x4ac <rdbg_open+0x340>
     4c8: f9406ee8     	ldr	x8, [x23, #0xd8]
     4cc: 110006ca     	add	w10, w22, #0x1
     4d0: b900091f     	str	wzr, [x8, #0x8]
     4d4: f9406ee8     	ldr	x8, [x23, #0xd8]
     4d8: b9000d1f     	str	wzr, [x8, #0xc]
     4dc: f9406ae9     	ldr	x9, [x23, #0xd0]
     4e0: b9400128     	ldr	w8, [x9]
     4e4: 6b0a011f     	cmp	w8, w10
     4e8: 2a1f03e8     	mov	w8, wzr
     4ec: 54000041     	b.ne	0x4f4 <rdbg_open+0x388>
     4f0: b9400528     	ldr	w8, [x9, #0x4]
     4f4: f9406ee9     	ldr	x9, [x23, #0xd8]
     4f8: 2a1f03e0     	mov	w0, wzr
     4fc: b9000528     	str	w8, [x9, #0x4]
     500: 11000ac9     	add	w9, w22, #0x2
     504: f9406ee8     	ldr	x8, [x23, #0xd8]
     508: b9000109     	str	w9, [x8]
     50c: 52800028     	mov	w8, #0x1                // =1
     510: b900faf6     	str	w22, [x23, #0xf8]
     514: 390182e8     	strb	w8, [x23, #0x60]
     518: f9001277     	str	x23, [x19, #0x20]
     51c: 14000092     	b	0x764 <rdbg_open+0x5f8>
     520: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000520:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62
     524: 91000000     	add	x0, x0, #0x0
		0000000000000524:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62
     528: 94000000     	bl	0x528 <rdbg_open+0x3bc>
		0000000000000528:  R_AARCH64_CALL26	_printk
     52c: 12800240     	mov	w0, #-0x13              // =-19
     530: 1400008d     	b	0x764 <rdbg_open+0x5f8>
     534: f94002e0     	ldr	x0, [x23]
     538: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000538:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f2
     53c: 91000021     	add	x1, x1, #0x0
		000000000000053c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f2
     540: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000540:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     544: 91000042     	add	x2, x2, #0x0
		0000000000000544:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     548: 94000000     	bl	0x548 <rdbg_open+0x3dc>
		0000000000000548:  R_AARCH64_CALL26	_dev_err
     54c: 12800200     	mov	w0, #-0x11              // =-17
     550: 14000085     	b	0x764 <rdbg_open+0x5f8>
     554: f94002e0     	ldr	x0, [x23]
     558: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000558:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x355
     55c: 91000021     	add	x1, x1, #0x0
		000000000000055c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x355
     560: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000560:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     564: 91000042     	add	x2, x2, #0x0
		0000000000000564:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     568: 94000000     	bl	0x568 <rdbg_open+0x3fc>
		0000000000000568:  R_AARCH64_CALL26	_dev_err
     56c: 1400007d     	b	0x760 <rdbg_open+0x5f4>
     570: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000570:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e
     574: 91000000     	add	x0, x0, #0x0
		0000000000000574:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e
     578: 94000000     	bl	0x578 <rdbg_open+0x40c>
		0000000000000578:  R_AARCH64_CALL26	_printk
     57c: f94036e0     	ldr	x0, [x23, #0x68]
     580: b100081f     	cmn	x0, #0x2
     584: 54ffe401     	b.ne	0x204 <rdbg_open+0x98>
     588: 2a1403e0     	mov	w0, w20
     58c: 2a1603e1     	mov	w1, w22
     590: aa1503e2     	mov	x2, x21
     594: 94000000     	bl	0x594 <rdbg_open+0x428>
		0000000000000594:  R_AARCH64_CALL26	qcom_smem_get
     598: f90036e0     	str	x0, [x23, #0x68]
     59c: 17ffff1a     	b	0x204 <rdbg_open+0x98>
     5a0: f94002e0     	ldr	x0, [x23]
     5a4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x143
     5a8: 91000021     	add	x1, x1, #0x0
		00000000000005a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x143
     5ac: 90000002     	adrp	x2, 0x0 <.text>
		00000000000005ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     5b0: 91000042     	add	x2, x2, #0x0
		00000000000005b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     5b4: 94000000     	bl	0x5b4 <rdbg_open+0x448>
		00000000000005b4:  R_AARCH64_CALL26	_dev_err
     5b8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b
     5bc: 91000000     	add	x0, x0, #0x0
		00000000000005bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b
     5c0: 94000000     	bl	0x5c0 <rdbg_open+0x454>
		00000000000005c0:  R_AARCH64_CALL26	_printk
     5c4: 14000067     	b	0x760 <rdbg_open+0x5f4>
     5c8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x221
     5cc: 91000000     	add	x0, x0, #0x0
		00000000000005cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x221
     5d0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36f
     5d4: 91000021     	add	x1, x1, #0x0
		00000000000005d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36f
     5d8: 94000000     	bl	0x5d8 <rdbg_open+0x46c>
		00000000000005d8:  R_AARCH64_CALL26	_printk
     5dc: f94002e0     	ldr	x0, [x23]
     5e0: f9400323     	ldr	x3, [x25]
     5e4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x255
     5e8: 91000021     	add	x1, x1, #0x0
		00000000000005e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x255
     5ec: 90000002     	adrp	x2, 0x0 <.text>
		00000000000005ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     5f0: 91000042     	add	x2, x2, #0x0
		00000000000005f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     5f4: 94000000     	bl	0x5f4 <rdbg_open+0x488>
		00000000000005f4:  R_AARCH64_CALL26	_dev_err
     5f8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e8
     5fc: 91000000     	add	x0, x0, #0x0
		00000000000005fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e8
     600: 94000000     	bl	0x600 <rdbg_open+0x494>
		0000000000000600:  R_AARCH64_CALL26	_printk
     604: 128008a0     	mov	w0, #-0x46              // =-70
     608: 14000057     	b	0x764 <rdbg_open+0x5f8>
     60c: f94002e8     	ldr	x8, [x23]
     610: b9402ee4     	ldr	w4, [x23, #0x2c]
     614: 2a0003f3     	mov	w19, w0
     618: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000618:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe4
     61c: 91000021     	add	x1, x1, #0x0
		000000000000061c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe4
     620: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000620:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     624: 91000042     	add	x2, x2, #0x0
		0000000000000624:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     628: aa0803e0     	mov	x0, x8
     62c: 2a1303e3     	mov	w3, w19
     630: 94000000     	bl	0x630 <rdbg_open+0x4c4>
		0000000000000630:  R_AARCH64_CALL26	_dev_err
     634: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000634:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x167
     638: 91000000     	add	x0, x0, #0x0
		0000000000000638:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x167
     63c: 2a1303e1     	mov	w1, w19
     640: 94000000     	bl	0x640 <rdbg_open+0x4d4>
		0000000000000640:  R_AARCH64_CALL26	_printk
     644: 2a1303e0     	mov	w0, w19
     648: 14000047     	b	0x764 <rdbg_open+0x5f8>
     64c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000064c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x329
     650: 91000021     	add	x1, x1, #0x0
		0000000000000650:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x329
     654: 1400000f     	b	0x690 <rdbg_open+0x524>
     658: d42aa240     	brk	#0x5512
     65c: d538411b     	mrs	x27, SP_EL0
     660: f9402b7c     	ldr	x28, [x27, #0x50]
     664: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000664:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags
     668: 91000108     	add	x8, x8, #0x0
		0000000000000668:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags
     66c: aa1503e0     	mov	x0, x21
     670: 5281b801     	mov	w1, #0xdc0              // =3520
     674: f9002b68     	str	x8, [x27, #0x50]
     678: 94000000     	bl	0x678 <rdbg_open+0x50c>
		0000000000000678:  R_AARCH64_CALL26	__kmalloc_noprof
     67c: f9002b7c     	str	x28, [x27, #0x50]
     680: f9005ee0     	str	x0, [x23, #0xb8]
     684: b5ffe920     	cbnz	x0, 0x3a8 <rdbg_open+0x23c>
     688: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000688:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e4
     68c: 91000021     	add	x1, x1, #0x0
		000000000000068c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e4
     690: f94002e0     	ldr	x0, [x23]
     694: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000694:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ad
     698: 91000042     	add	x2, x2, #0x0
		0000000000000698:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ad
     69c: 94000000     	bl	0x69c <rdbg_open+0x530>
		000000000000069c:  R_AARCH64_CALL26	_dev_err
     6a0: f94002e0     	ldr	x0, [x23]
     6a4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28d
     6a8: 91000021     	add	x1, x1, #0x0
		00000000000006a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28d
     6ac: 12800162     	mov	w2, #-0xc               // =-12
     6b0: 94000000     	bl	0x6b0 <rdbg_open+0x544>
		00000000000006b0:  R_AARCH64_CALL26	_dev_err
     6b4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43c
     6b8: 91000000     	add	x0, x0, #0x0
		00000000000006b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43c
     6bc: 12800161     	mov	w1, #-0xc               // =-12
     6c0: 94000000     	bl	0x6c0 <rdbg_open+0x554>
		00000000000006c0:  R_AARCH64_CALL26	_printk
     6c4: 52803908     	mov	w8, #0x1c8              // =456
     6c8: f9400309     	ldr	x9, [x24]
		00000000000006c8:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     6cc: b9402ee0     	ldr	w0, [x23, #0x2c]
     6d0: 9ba82681     	umaddl	x1, w20, w8, x9
     6d4: 94000000     	bl	0x6d4 <rdbg_open+0x568>
		00000000000006d4:  R_AARCH64_CALL26	free_irq
     6d8: b940aae8     	ldr	w8, [x23, #0xa8]
     6dc: 6b16011f     	cmp	w8, w22
     6e0: 540001e1     	b.ne	0x71c <rdbg_open+0x5b0>
     6e4: b940c2e8     	ldr	w8, [x23, #0xc0]
     6e8: 7100091f     	cmp	w8, #0x2
     6ec: 54000120     	b.eq	0x710 <rdbg_open+0x5a4>
     6f0: 7100051f     	cmp	w8, #0x1
     6f4: 54000121     	b.ne	0x718 <rdbg_open+0x5ac>
     6f8: f94042e8     	ldr	x8, [x23, #0x80]
     6fc: b900011f     	str	wzr, [x8]
     700: f9405ee0     	ldr	x0, [x23, #0xb8]
     704: 94000000     	bl	0x704 <rdbg_open+0x598>
		0000000000000704:  R_AARCH64_CALL26	kfree
     708: f9005eff     	str	xzr, [x23, #0xb8]
     70c: 14000003     	b	0x718 <rdbg_open+0x5ac>
     710: f94046e8     	ldr	x8, [x23, #0x88]
     714: b900011f     	str	wzr, [x8]
     718: b900aaff     	str	wzr, [x23, #0xa8]
     71c: b940fae8     	ldr	w8, [x23, #0xf8]
     720: 6b16011f     	cmp	w8, w22
     724: 540001e1     	b.ne	0x760 <rdbg_open+0x5f4>
     728: b94112e8     	ldr	w8, [x23, #0x110]
     72c: 7100091f     	cmp	w8, #0x2
     730: 54000120     	b.eq	0x754 <rdbg_open+0x5e8>
     734: 7100051f     	cmp	w8, #0x1
     738: 54000121     	b.ne	0x75c <rdbg_open+0x5f0>
     73c: f9406ae8     	ldr	x8, [x23, #0xd0]
     740: b900011f     	str	wzr, [x8]
     744: f94086e0     	ldr	x0, [x23, #0x108]
     748: 94000000     	bl	0x748 <rdbg_open+0x5dc>
		0000000000000748:  R_AARCH64_CALL26	kfree
     74c: f90086ff     	str	xzr, [x23, #0x108]
     750: 14000003     	b	0x75c <rdbg_open+0x5f0>
     754: f9406ee8     	ldr	x8, [x23, #0xd8]
     758: b900011f     	str	wzr, [x8]
     75c: b900faff     	str	wzr, [x23, #0xf8]
     760: 12800160     	mov	w0, #-0xc               // =-12
     764: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     768: a94457f6     	ldp	x22, x21, [sp, #0x40]
     76c: a9435ff8     	ldp	x24, x23, [sp, #0x30]
     770: a94267fa     	ldp	x26, x25, [sp, #0x20]
     774: a9416ffc     	ldp	x28, x27, [sp, #0x10]
     778: a8c67bfd     	ldp	x29, x30, [sp], #0x60
     77c: d50323bf     	autiasp
     780: d65f03c0     	ret
