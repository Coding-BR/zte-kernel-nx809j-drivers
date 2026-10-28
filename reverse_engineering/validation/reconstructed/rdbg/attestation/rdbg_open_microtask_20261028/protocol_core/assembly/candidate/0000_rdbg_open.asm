
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000160 <rdbg_open>:
     160: d503233f     	paciasp
     164: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
     168: a90167fa     	stp	x26, x25, [sp, #0x10]
     16c: a9025ff8     	stp	x24, x23, [sp, #0x20]
     170: a90357f6     	stp	x22, x21, [sp, #0x30]
     174: a9044ff4     	stp	x20, x19, [sp, #0x40]
     178: 910003fd     	mov	x29, sp
     17c: b4001ca0     	cbz	x0, 0x510 <rdbg_open+0x3b0>
     180: 90000018     	adrp	x24, 0x0 <.text>
		0000000000000180:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     184: f9400308     	ldr	x8, [x24]
		0000000000000184:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     188: b4001c48     	cbz	x8, 0x510 <rdbg_open+0x3b0>
     18c: b9404c09     	ldr	w9, [x0, #0x4c]
     190: 92404d34     	and	x20, x9, #0xfffff
     194: 52803909     	mov	w9, #0x1c8              // =456
     198: 9ba92297     	umaddl	x23, w20, w9, x8
     19c: 394182e8     	ldrb	w8, [x23, #0x60]
     1a0: 7100051f     	cmp	w8, #0x1
     1a4: 54001c00     	b.eq	0x524 <rdbg_open+0x3c4>
     1a8: 7100429f     	cmp	w20, #0x10
     1ac: 540024e2     	b.hs	0x648 <rdbg_open+0x4e8>
     1b0: 52800308     	mov	w8, #0x18               // =24
     1b4: 90000009     	adrp	x9, 0x0 <.text>
		00000000000001b4:  R_AARCH64_ADR_PREL_PG_HI21	proc_info
     1b8: 91000129     	add	x9, x9, #0x0
		00000000000001b8:  R_AARCH64_ADD_ABS_LO12_NC	proc_info
     1bc: 9ba82699     	umaddl	x25, w20, w8, x9
     1c0: aa1703f5     	mov	x21, x23
     1c4: f9400b28     	ldr	x8, [x25, #0x10]
     1c8: f8070ea8     	str	x8, [x21, #0x70]!
     1cc: b4001bc8     	cbz	x8, 0x544 <rdbg_open+0x3e4>
     1d0: b9400b36     	ldr	w22, [x25, #0x8]
     1d4: aa0103f3     	mov	x19, x1
     1d8: 12800000     	mov	w0, #-0x1               // =-1
     1dc: aa1503e2     	mov	x2, x21
     1e0: 2a1603e1     	mov	w1, w22
     1e4: 94000000     	bl	0x1e4 <rdbg_open+0x84>
		00000000000001e4:  R_AARCH64_CALL26	qcom_smem_get
     1e8: b13ffc1f     	cmn	x0, #0xfff
     1ec: f90036e0     	str	x0, [x23, #0x68]
     1f0: 54001b82     	b.hs	0x560 <rdbg_open+0x400>
     1f4: b4001ce0     	cbz	x0, 0x590 <rdbg_open+0x430>
     1f8: f94002a8     	ldr	x8, [x21]
     1fc: 91002409     	add	x9, x0, #0x9
     200: d341fd0a     	lsr	x10, x8, #1
     204: 927df128     	and	x8, x9, #0xfffffffffffffff8
     208: 4b080009     	sub	w9, w0, w8
     20c: 0b0a0129     	add	w9, w9, w10
     210: b204cfea     	mov	x10, #-0xf0f0f0f0f0f0f10 // =-1085102592571150096
     214: 93407d29     	sxtw	x9, w9
     218: f29e1e2a     	movk	x10, #0xf0f1
     21c: d1008129     	sub	x9, x9, #0x20
     220: 9bca7d29     	umulh	x9, x9, x10
     224: d347fd29     	lsr	x9, x9, #7
     228: 7100053f     	cmp	w9, #0x1
     22c: 54001d0b     	b.lt	0x5cc <rdbg_open+0x46c>
     230: 5319612a     	lsl	w10, w9, #7
     234: d37e7929     	ubfiz	x9, x9, #2, #31
     238: 32089ff5     	mov	w21, #-0xff0100         // =-16711936
     23c: 8b2ac108     	add	x8, x8, w10, sxtw
     240: 8b090108     	add	x8, x8, x9
     244: 321f02a9     	orr	w9, w21, #0x2
     248: b9401108     	ldr	w8, [x8, #0x10]
     24c: 6b09011f     	cmp	w8, w9
     250: 54001b41     	b.ne	0x5b8 <rdbg_open+0x458>
     254: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000254:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x150
     258: 91000021     	add	x1, x1, #0x0
		0000000000000258:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x150
     25c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000025c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1
     260: 91000042     	add	x2, x2, #0x0
		0000000000000260:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1
     264: 910042e0     	add	x0, x23, #0x10
     268: b9000aff     	str	wzr, [x23, #0x8]
     26c: 94000000     	bl	0x26c <rdbg_open+0x10c>
		000000000000026c:  R_AARCH64_CALL26	__init_swait_queue_head
     270: 52803908     	mov	w8, #0x1c8              // =456
     274: f9400309     	ldr	x9, [x24]
		0000000000000274:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     278: b9402ee0     	ldr	w0, [x23, #0x2c]
     27c: 9ba82685     	umaddl	x5, w20, w8, x9
     280: f9400324     	ldr	x4, [x25]
     284: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000284:  R_AARCH64_ADR_PREL_PG_HI21	on_interrupt_from
     288: 91000042     	add	x2, x2, #0x0
		0000000000000288:  R_AARCH64_ADD_ABS_LO12_NC	on_interrupt_from
     28c: aa1f03e1     	mov	x1, xzr
     290: 52840063     	mov	w3, #0x2003             // =8195
     294: 94000000     	bl	0x294 <rdbg_open+0x134>
		0000000000000294:  R_AARCH64_CALL26	request_threaded_irq
     298: 35001b20     	cbnz	w0, 0x5fc <rdbg_open+0x49c>
     29c: 910462f4     	add	x20, x23, #0x118
     2a0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xeb
     2a4: 91000021     	add	x1, x1, #0x0
		00000000000002a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xeb
     2a8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000002a8:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     2ac: 91000042     	add	x2, x2, #0x0
		00000000000002ac:  R_AARCH64_ADD_ABS_LO12_NC	.bss
     2b0: aa1403e0     	mov	x0, x20
     2b4: 94000000     	bl	0x2b4 <rdbg_open+0x154>
		00000000000002b4:  R_AARCH64_CALL26	__mutex_init
     2b8: b940aae8     	ldr	w8, [x23, #0xa8]
     2bc: 6b15011f     	cmp	w8, w21
     2c0: 54001dc0     	b.eq	0x678 <rdbg_open+0x518>
     2c4: f94036f6     	ldr	x22, [x23, #0x68]
     2c8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x217
     2cc: 91000021     	add	x1, x1, #0x0
		00000000000002cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x217
     2d0: b4001d96     	cbz	x22, 0x680 <rdbg_open+0x520>
     2d4: f9403ae8     	ldr	x8, [x23, #0x70]
     2d8: 927f7d09     	and	x9, x8, #0x1fffffffe
     2dc: b4001d29     	cbz	x9, 0x680 <rdbg_open+0x520>
     2e0: d341fd18     	lsr	x24, x8, #1
     2e4: 910026c8     	add	x8, x22, #0x9
     2e8: b204cfea     	mov	x10, #-0xf0f0f0f0f0f0f10 // =-1085102592571150096
     2ec: 927df108     	and	x8, x8, #0xfffffffffffffff8
     2f0: f29e1e2a     	movk	x10, #0xf0f1
     2f4: f90052f4     	str	x20, [x23, #0xa0]
     2f8: 0b160309     	add	w9, w24, w22
     2fc: f9003ef6     	str	x22, [x23, #0x78]
     300: 4b080129     	sub	w9, w9, w8
     304: 93407d29     	sxtw	x9, w9
     308: d1008129     	sub	x9, x9, #0x20
     30c: 9bca7d29     	umulh	x9, x9, x10
     310: d347fd29     	lsr	x9, x9, #7
     314: 7100053f     	cmp	w9, #0x1
     318: 54001b4b     	b.lt	0x680 <rdbg_open+0x520>
     31c: 5319612a     	lsl	w10, w9, #7
     320: f9004ae8     	str	x8, [x23, #0x90]
     324: d37e792b     	ubfiz	x11, x9, #2, #31
     328: b9009ae9     	str	w9, [x23, #0x98]
     32c: 52800029     	mov	w9, #0x1                // =1
     330: 8b2ac108     	add	x8, x8, w10, sxtw
     334: b900c2e9     	str	w9, [x23, #0xc0]
     338: 8b0b010a     	add	x10, x8, x11
     33c: 9100414a     	add	x10, x10, #0x10
     340: a9082ae8     	stp	x8, x10, [x23, #0x80]
     344: 390002c9     	strb	w9, [x22]
     348: b9409ae8     	ldr	w8, [x23, #0x98]
     34c: 340019a8     	cbz	w8, 0x680 <rdbg_open+0x520>
     350: aa1f03e8     	mov	x8, xzr
     354: 52800209     	mov	w9, #0x10               // =16
     358: 529fffea     	mov	w10, #0xffff            // =65535
     35c: f94042eb     	ldr	x11, [x23, #0x80]
     360: 91000508     	add	x8, x8, #0x1
     364: 7829696a     	strh	w10, [x11, x9]
     368: 91001129     	add	x9, x9, #0x4
     36c: b9409af4     	ldr	w20, [x23, #0x98]
     370: eb14011f     	cmp	x8, x20
     374: 54ffff43     	b.lo	0x35c <rdbg_open+0x1fc>
     378: 71000a9f     	cmp	w20, #0x2
     37c: 540017e3     	b.lo	0x678 <rdbg_open+0x518>
     380: d503201f     	nop
     384: aa1403e0     	mov	x0, x20
     388: 5281b801     	mov	w1, #0xdc0              // =3520
     38c: 94000000     	bl	0x38c <rdbg_open+0x22c>
		000000000000038c:  R_AARCH64_CALL26	__kmalloc_noprof
     390: f9005ee0     	str	x0, [x23, #0xb8]
     394: b4001720     	cbz	x0, 0x678 <rdbg_open+0x518>
     398: 51000688     	sub	w8, w20, #0x1
     39c: 2a1f03e1     	mov	w1, wzr
     3a0: aa1403e2     	mov	x2, x20
     3a4: b900b6e8     	str	w8, [x23, #0xb4]
     3a8: 94000000     	bl	0x3a8 <rdbg_open+0x248>
		00000000000003a8:  R_AARCH64_CALL26	memset
     3ac: f94042e8     	ldr	x8, [x23, #0x80]
     3b0: b900b2ff     	str	wzr, [x23, #0xb0]
     3b4: 110006a9     	add	w9, w21, #0x1
     3b8: b900091f     	str	wzr, [x8, #0x8]
     3bc: f94042e8     	ldr	x8, [x23, #0x80]
     3c0: b9000d1f     	str	wzr, [x8, #0xc]
     3c4: f94042e8     	ldr	x8, [x23, #0x80]
     3c8: b940010a     	ldr	w10, [x8]
     3cc: 6b09015f     	cmp	w10, w9
     3d0: 540000a1     	b.ne	0x3e4 <rdbg_open+0x284>
     3d4: b9400509     	ldr	w9, [x8, #0x4]
     3d8: 11000529     	add	w9, w9, #0x1
     3dc: b9000509     	str	w9, [x8, #0x4]
     3e0: 14000005     	b	0x3f4 <rdbg_open+0x294>
     3e4: 5280002a     	mov	w10, #0x1               // =1
     3e8: b900050a     	str	w10, [x8, #0x4]
     3ec: f94042e8     	ldr	x8, [x23, #0x80]
     3f0: b9000109     	str	w9, [x8]
     3f4: b940fae8     	ldr	w8, [x23, #0xf8]
     3f8: b900aaf5     	str	w21, [x23, #0xa8]
     3fc: 6b15011f     	cmp	w8, w21
     400: 540011e0     	b.eq	0x63c <rdbg_open+0x4dc>
     404: 8b1802c8     	add	x8, x22, x24
     408: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000408:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23b
     40c: 91000021     	add	x1, x1, #0x0
		000000000000040c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23b
     410: b4001388     	cbz	x8, 0x680 <rdbg_open+0x520>
     414: f9403ae9     	ldr	x9, [x23, #0x70]
     418: 927f7d2a     	and	x10, x9, #0x1fffffffe
     41c: b400132a     	cbz	x10, 0x680 <rdbg_open+0x520>
     420: 9100250a     	add	x10, x8, #0x9
     424: d341fd2b     	lsr	x11, x9, #1
     428: f90066e8     	str	x8, [x23, #0xc8]
     42c: 927df149     	and	x9, x10, #0xfffffffffffffff8
     430: 4b09010a     	sub	w10, w8, w9
     434: 0b0b014a     	add	w10, w10, w11
     438: b204cfeb     	mov	x11, #-0xf0f0f0f0f0f0f10 // =-1085102592571150096
     43c: 93407d4a     	sxtw	x10, w10
     440: f29e1e2b     	movk	x11, #0xf0f1
     444: d100814a     	sub	x10, x10, #0x20
     448: 9bcb7d4a     	umulh	x10, x10, x11
     44c: d347fd4a     	lsr	x10, x10, #7
     450: 7100055f     	cmp	w10, #0x1
     454: 5400116b     	b.lt	0x680 <rdbg_open+0x520>
     458: 5319614b     	lsl	w11, w10, #7
     45c: f90072e9     	str	x9, [x23, #0xe0]
     460: d37e794c     	ubfiz	x12, x10, #2, #31
     464: b900eaea     	str	w10, [x23, #0xe8]
     468: 5280004a     	mov	w10, #0x2               // =2
     46c: 8b2bc129     	add	x9, x9, w11, sxtw
     470: b90112ea     	str	w10, [x23, #0x110]
     474: 8b0c012a     	add	x10, x9, x12
     478: 9100414a     	add	x10, x10, #0x10
     47c: a90d2ae9     	stp	x9, x10, [x23, #0xd0]
     480: 52800029     	mov	w9, #0x1                // =1
     484: 39000509     	strb	w9, [x8, #0x1]
     488: b940eae8     	ldr	w8, [x23, #0xe8]
     48c: 34000168     	cbz	w8, 0x4b8 <rdbg_open+0x358>
     490: aa1f03e8     	mov	x8, xzr
     494: 52800209     	mov	w9, #0x10               // =16
     498: 529fffea     	mov	w10, #0xffff            // =65535
     49c: f9406eeb     	ldr	x11, [x23, #0xd8]
     4a0: 91000508     	add	x8, x8, #0x1
     4a4: 7829696a     	strh	w10, [x11, x9]
     4a8: 91001129     	add	x9, x9, #0x4
     4ac: b940eaeb     	ldr	w11, [x23, #0xe8]
     4b0: eb0b011f     	cmp	x8, x11
     4b4: 54ffff43     	b.lo	0x49c <rdbg_open+0x33c>
     4b8: f9406ee8     	ldr	x8, [x23, #0xd8]
     4bc: 110006aa     	add	w10, w21, #0x1
     4c0: b900091f     	str	wzr, [x8, #0x8]
     4c4: f9406ee8     	ldr	x8, [x23, #0xd8]
     4c8: b9000d1f     	str	wzr, [x8, #0xc]
     4cc: f9406ae9     	ldr	x9, [x23, #0xd0]
     4d0: b9400128     	ldr	w8, [x9]
     4d4: 6b0a011f     	cmp	w8, w10
     4d8: 2a1f03e8     	mov	w8, wzr
     4dc: 54000041     	b.ne	0x4e4 <rdbg_open+0x384>
     4e0: b9400528     	ldr	w8, [x9, #0x4]
     4e4: f9406ee9     	ldr	x9, [x23, #0xd8]
     4e8: 2a1f03e0     	mov	w0, wzr
     4ec: b9000528     	str	w8, [x9, #0x4]
     4f0: 11000aa9     	add	w9, w21, #0x2
     4f4: f9406ee8     	ldr	x8, [x23, #0xd8]
     4f8: b9000109     	str	w9, [x8]
     4fc: 52800028     	mov	w8, #0x1                // =1
     500: b900faf5     	str	w21, [x23, #0xf8]
     504: 390182e8     	strb	w8, [x23, #0x60]
     508: f9001277     	str	x23, [x19, #0x20]
     50c: 1400008d     	b	0x740 <rdbg_open+0x5e0>
     510: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000510:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36
     514: 91000000     	add	x0, x0, #0x0
		0000000000000514:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36
     518: 94000000     	bl	0x518 <rdbg_open+0x3b8>
		0000000000000518:  R_AARCH64_CALL26	_printk
     51c: 12800240     	mov	w0, #-0x13              // =-19
     520: 14000088     	b	0x740 <rdbg_open+0x5e0>
     524: f94002e0     	ldr	x0, [x23]
     528: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000528:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x164
     52c: 91000021     	add	x1, x1, #0x0
		000000000000052c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x164
     530: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000530:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5
     534: 91000042     	add	x2, x2, #0x0
		0000000000000534:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5
     538: 94000000     	bl	0x538 <rdbg_open+0x3d8>
		0000000000000538:  R_AARCH64_CALL26	_dev_err
     53c: 12800200     	mov	w0, #-0x11              // =-17
     540: 14000080     	b	0x740 <rdbg_open+0x5e0>
     544: f94002e0     	ldr	x0, [x23]
     548: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000548:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25f
     54c: 91000021     	add	x1, x1, #0x0
		000000000000054c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25f
     550: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000550:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5
     554: 91000042     	add	x2, x2, #0x0
		0000000000000554:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5
     558: 94000000     	bl	0x558 <rdbg_open+0x3f8>
		0000000000000558:  R_AARCH64_CALL26	_dev_err
     55c: 14000078     	b	0x73c <rdbg_open+0x5dc>
     560: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000560:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52
     564: 91000000     	add	x0, x0, #0x0
		0000000000000564:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52
     568: 94000000     	bl	0x568 <rdbg_open+0x408>
		0000000000000568:  R_AARCH64_CALL26	_printk
     56c: f94036e0     	ldr	x0, [x23, #0x68]
     570: b100081f     	cmn	x0, #0x2
     574: 54ffe401     	b.ne	0x1f4 <rdbg_open+0x94>
     578: 2a1403e0     	mov	w0, w20
     57c: 2a1603e1     	mov	w1, w22
     580: aa1503e2     	mov	x2, x21
     584: 94000000     	bl	0x584 <rdbg_open+0x424>
		0000000000000584:  R_AARCH64_CALL26	qcom_smem_get
     588: f90036e0     	str	x0, [x23, #0x68]
     58c: 17ffff1a     	b	0x1f4 <rdbg_open+0x94>
     590: f94002e0     	ldr	x0, [x23]
     594: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x102
     598: 91000021     	add	x1, x1, #0x0
		0000000000000598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x102
     59c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000059c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5
     5a0: 91000042     	add	x2, x2, #0x0
		00000000000005a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5
     5a4: 94000000     	bl	0x5a4 <rdbg_open+0x444>
		00000000000005a4:  R_AARCH64_CALL26	_dev_err
     5a8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf
     5ac: 91000000     	add	x0, x0, #0x0
		00000000000005ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf
     5b0: 94000000     	bl	0x5b0 <rdbg_open+0x450>
		00000000000005b0:  R_AARCH64_CALL26	_printk
     5b4: 14000062     	b	0x73c <rdbg_open+0x5dc>
     5b8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17f
     5bc: 91000000     	add	x0, x0, #0x0
		00000000000005bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17f
     5c0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x279
     5c4: 91000021     	add	x1, x1, #0x0
		00000000000005c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x279
     5c8: 94000000     	bl	0x5c8 <rdbg_open+0x468>
		00000000000005c8:  R_AARCH64_CALL26	_printk
     5cc: f94002e0     	ldr	x0, [x23]
     5d0: f9400323     	ldr	x3, [x25]
     5d4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c1
     5d8: 91000021     	add	x1, x1, #0x0
		00000000000005d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c1
     5dc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000005dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5
     5e0: 91000042     	add	x2, x2, #0x0
		00000000000005e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5
     5e4: 94000000     	bl	0x5e4 <rdbg_open+0x484>
		00000000000005e4:  R_AARCH64_CALL26	_dev_err
     5e8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x297
     5ec: 91000000     	add	x0, x0, #0x0
		00000000000005ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x297
     5f0: 94000000     	bl	0x5f0 <rdbg_open+0x490>
		00000000000005f0:  R_AARCH64_CALL26	_printk
     5f4: 128008a0     	mov	w0, #-0x46              // =-70
     5f8: 14000052     	b	0x740 <rdbg_open+0x5e0>
     5fc: f94002e8     	ldr	x8, [x23]
     600: b9402ee4     	ldr	w4, [x23, #0x2c]
     604: 2a0003f3     	mov	w19, w0
     608: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000608:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb8
     60c: 91000021     	add	x1, x1, #0x0
		000000000000060c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb8
     610: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000610:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5
     614: 91000042     	add	x2, x2, #0x0
		0000000000000614:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5
     618: aa0803e0     	mov	x0, x8
     61c: 2a1303e3     	mov	w3, w19
     620: 94000000     	bl	0x620 <rdbg_open+0x4c0>
		0000000000000620:  R_AARCH64_CALL26	_dev_err
     624: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000624:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x126
     628: 91000000     	add	x0, x0, #0x0
		0000000000000628:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x126
     62c: 2a1303e1     	mov	w1, w19
     630: 94000000     	bl	0x630 <rdbg_open+0x4d0>
		0000000000000630:  R_AARCH64_CALL26	_printk
     634: 2a1303e0     	mov	w0, w19
     638: 14000042     	b	0x740 <rdbg_open+0x5e0>
     63c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000063c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23b
     640: 91000021     	add	x1, x1, #0x0
		0000000000000640:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23b
     644: 1400000f     	b	0x680 <rdbg_open+0x520>
     648: d42aa240     	brk	#0x5512
     64c: d5384119     	mrs	x25, SP_EL0
     650: f9402b3a     	ldr	x26, [x25, #0x50]
     654: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000654:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags
     658: 91000108     	add	x8, x8, #0x0
		0000000000000658:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags
     65c: aa1403e0     	mov	x0, x20
     660: 5281b801     	mov	w1, #0xdc0              // =3520
     664: f9002b28     	str	x8, [x25, #0x50]
     668: 94000000     	bl	0x668 <rdbg_open+0x508>
		0000000000000668:  R_AARCH64_CALL26	__kmalloc_noprof
     66c: f9002b3a     	str	x26, [x25, #0x50]
     670: f9005ee0     	str	x0, [x23, #0xb8]
     674: b5ffe920     	cbnz	x0, 0x398 <rdbg_open+0x238>
     678: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000678:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x217
     67c: 91000021     	add	x1, x1, #0x0
		000000000000067c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x217
     680: f94002e0     	ldr	x0, [x23]
     684: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000684:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x208
     688: 91000042     	add	x2, x2, #0x0
		0000000000000688:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x208
     68c: 94000000     	bl	0x68c <rdbg_open+0x52c>
		000000000000068c:  R_AARCH64_CALL26	_dev_err
     690: f94002e0     	ldr	x0, [x23]
     694: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000694:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e8
     698: 91000021     	add	x1, x1, #0x0
		0000000000000698:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e8
     69c: 12800162     	mov	w2, #-0xc               // =-12
     6a0: 94000000     	bl	0x6a0 <rdbg_open+0x540>
		00000000000006a0:  R_AARCH64_CALL26	_dev_err
     6a4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bf
     6a8: 91000000     	add	x0, x0, #0x0
		00000000000006a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bf
     6ac: 12800161     	mov	w1, #-0xc               // =-12
     6b0: 94000000     	bl	0x6b0 <rdbg_open+0x550>
		00000000000006b0:  R_AARCH64_CALL26	_printk
     6b4: b940aae8     	ldr	w8, [x23, #0xa8]
     6b8: 6b15011f     	cmp	w8, w21
     6bc: 540001e1     	b.ne	0x6f8 <rdbg_open+0x598>
     6c0: b940c2e8     	ldr	w8, [x23, #0xc0]
     6c4: 7100091f     	cmp	w8, #0x2
     6c8: 54000120     	b.eq	0x6ec <rdbg_open+0x58c>
     6cc: 7100051f     	cmp	w8, #0x1
     6d0: 54000121     	b.ne	0x6f4 <rdbg_open+0x594>
     6d4: f94042e8     	ldr	x8, [x23, #0x80]
     6d8: b900011f     	str	wzr, [x8]
     6dc: f9405ee0     	ldr	x0, [x23, #0xb8]
     6e0: 94000000     	bl	0x6e0 <rdbg_open+0x580>
		00000000000006e0:  R_AARCH64_CALL26	kfree
     6e4: f9005eff     	str	xzr, [x23, #0xb8]
     6e8: 14000003     	b	0x6f4 <rdbg_open+0x594>
     6ec: f94046e8     	ldr	x8, [x23, #0x88]
     6f0: b900011f     	str	wzr, [x8]
     6f4: b900aaff     	str	wzr, [x23, #0xa8]
     6f8: b940fae8     	ldr	w8, [x23, #0xf8]
     6fc: 6b15011f     	cmp	w8, w21
     700: 540001e1     	b.ne	0x73c <rdbg_open+0x5dc>
     704: b94112e8     	ldr	w8, [x23, #0x110]
     708: 7100091f     	cmp	w8, #0x2
     70c: 54000120     	b.eq	0x730 <rdbg_open+0x5d0>
     710: 7100051f     	cmp	w8, #0x1
     714: 54000121     	b.ne	0x738 <rdbg_open+0x5d8>
     718: f9406ae8     	ldr	x8, [x23, #0xd0]
     71c: b900011f     	str	wzr, [x8]
     720: f94086e0     	ldr	x0, [x23, #0x108]
     724: 94000000     	bl	0x724 <rdbg_open+0x5c4>
		0000000000000724:  R_AARCH64_CALL26	kfree
     728: f90086ff     	str	xzr, [x23, #0x108]
     72c: 14000003     	b	0x738 <rdbg_open+0x5d8>
     730: f9406ee8     	ldr	x8, [x23, #0xd8]
     734: b900011f     	str	wzr, [x8]
     738: b900faff     	str	wzr, [x23, #0xf8]
     73c: 12800160     	mov	w0, #-0xc               // =-12
     740: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     744: a94357f6     	ldp	x22, x21, [sp, #0x30]
     748: a9425ff8     	ldp	x24, x23, [sp, #0x20]
     74c: a94167fa     	ldp	x26, x25, [sp, #0x10]
     750: a8c57bfd     	ldp	x29, x30, [sp], #0x50
     754: d50323bf     	autiasp
     758: d65f03c0     	ret
