
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000001f0 <rdbg_open>:
     1f0: d503233f     	paciasp
     1f4: d101c3ff     	sub	sp, sp, #0x70
     1f8: a9017bfd     	stp	x29, x30, [sp, #0x10]
     1fc: a9026ffc     	stp	x28, x27, [sp, #0x20]
     200: a90367fa     	stp	x26, x25, [sp, #0x30]
     204: a9045ff8     	stp	x24, x23, [sp, #0x40]
     208: a90557f6     	stp	x22, x21, [sp, #0x50]
     20c: a9064ff4     	stp	x20, x19, [sp, #0x60]
     210: 910043fd     	add	x29, sp, #0x10
     214: b4001b00     	cbz	x0, 0x574 <rdbg_open+0x384>
     218: 90000019     	adrp	x25, 0x0 <.text>
		0000000000000218:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     21c: f9400328     	ldr	x8, [x25]
		000000000000021c:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     220: b4001aa8     	cbz	x8, 0x574 <rdbg_open+0x384>
     224: b9404c08     	ldr	w8, [x0, #0x4c]
     228: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000228:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x94
     22c: b9400129     	ldr	w9, [x9]
		000000000000022c:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     230: 92404d13     	and	x19, x8, #0xfffff
     234: 6b09027f     	cmp	w19, w9
     238: 540017ea     	b.ge	0x534 <rdbg_open+0x344>
     23c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000023c:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_file_lifecycle_lock
     240: 91000000     	add	x0, x0, #0x0
		0000000000000240:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_file_lifecycle_lock
     244: aa0103fb     	mov	x27, x1
     248: 94000000     	bl	0x248 <rdbg_open+0x58>
		0000000000000248:  R_AARCH64_CALL26	mutex_lock
     24c: 7100427f     	cmp	w19, #0x10
     250: 54002de2     	b.hs	0x80c <rdbg_open+0x61c>
     254: 52800308     	mov	w8, #0x18               // =24
     258: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000258:  R_AARCH64_ADR_PREL_PG_HI21	proc_info
     25c: 91000129     	add	x9, x9, #0x0
		000000000000025c:  R_AARCH64_ADD_ABS_LO12_NC	proc_info
     260: 9ba82668     	umaddl	x8, w19, w8, x9
     264: f9400115     	ldr	x21, [x8]
     268: b40016b5     	cbz	x21, 0x53c <rdbg_open+0x34c>
     26c: 52803909     	mov	w9, #0x1c8              // =456
     270: f940032a     	ldr	x10, [x25]
		0000000000000270:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     274: 12800256     	mov	w22, #-0x13             // =-19
     278: 9ba92a78     	umaddl	x24, w19, w9, x10
     27c: f9400300     	ldr	x0, [x24]
     280: b4001600     	cbz	x0, 0x540 <rdbg_open+0x350>
     284: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
     288: 540015c8     	b.hi	0x540 <rdbg_open+0x350>
     28c: 39418309     	ldrb	w9, [x24, #0x60]
     290: 37001809     	tbnz	w9, #0x0, 0x590 <rdbg_open+0x3a0>
     294: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000294:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_active_file_contexts
     298: 91000129     	add	x9, x9, #0x0
		0000000000000298:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_active_file_contexts
     29c: f8737929     	ldr	x9, [x9, x19, lsl #3]
     2a0: b5001789     	cbnz	x9, 0x590 <rdbg_open+0x3a0>
     2a4: f9400909     	ldr	x9, [x8, #0x10]
     2a8: aa1803f4     	mov	x20, x24
     2ac: f8070e89     	str	x9, [x20, #0x70]!
     2b0: b4002229     	cbz	x9, 0x6f4 <rdbg_open+0x504>
     2b4: b9400917     	ldr	w23, [x8, #0x8]
     2b8: 12800000     	mov	w0, #-0x1               // =-1
     2bc: aa1403e2     	mov	x2, x20
     2c0: 2a1703e1     	mov	w1, w23
     2c4: 94000000     	bl	0x2c4 <rdbg_open+0xd4>
		00000000000002c4:  R_AARCH64_CALL26	qcom_smem_get
     2c8: aa0003f6     	mov	x22, x0
     2cc: b100081f     	cmn	x0, #0x2
     2d0: 54002200     	b.eq	0x710 <rdbg_open+0x520>
     2d4: b13ffedf     	cmn	x22, #0xfff
     2d8: 54002302     	b.hs	0x738 <rdbg_open+0x548>
     2dc: b40023f6     	cbz	x22, 0x758 <rdbg_open+0x568>
     2e0: f9403b08     	ldr	x8, [x24, #0x70]
     2e4: 910026c9     	add	x9, x22, #0x9
     2e8: f9003716     	str	x22, [x24, #0x68]
     2ec: d341fd0a     	lsr	x10, x8, #1
     2f0: 927df128     	and	x8, x9, #0xfffffffffffffff8
     2f4: 4b0802c9     	sub	w9, w22, w8
     2f8: 0b0a0129     	add	w9, w9, w10
     2fc: b204cfea     	mov	x10, #-0xf0f0f0f0f0f0f10 // =-1085102592571150096
     300: 93407d29     	sxtw	x9, w9
     304: f29e1e2a     	movk	x10, #0xf0f1
     308: d1008129     	sub	x9, x9, #0x20
     30c: 9bca7d29     	umulh	x9, x9, x10
     310: d347fd29     	lsr	x9, x9, #7
     314: 7100053f     	cmp	w9, #0x1
     318: 5400240b     	b.lt	0x798 <rdbg_open+0x5a8>
     31c: 5319612a     	lsl	w10, w9, #7
     320: d37e7929     	ubfiz	x9, x9, #2, #31
     324: 32089ff7     	mov	w23, #-0xff0100         // =-16711936
     328: 8b2ac108     	add	x8, x8, w10, sxtw
     32c: 8b090108     	add	x8, x8, x9
     330: 321f02e9     	orr	w9, w23, #0x2
     334: b9401108     	ldr	w8, [x8, #0x10]
     338: 6b09011f     	cmp	w8, w9
     33c: 54002241     	b.ne	0x784 <rdbg_open+0x594>
     340: d503201f     	nop
     344: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000344:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x30
     348: 5281b801     	mov	w1, #0xdc0              // =3520
     34c: 52800802     	mov	w2, #0x40               // =64
     350: f9400100     	ldr	x0, [x8]
		0000000000000350:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x30
     354: 94000000     	bl	0x354 <rdbg_open+0x164>
		0000000000000354:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     358: aa0003f4     	mov	x20, x0
     35c: b4002754     	cbz	x20, 0x844 <rdbg_open+0x654>
     360: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000360:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x253
     364: 91000021     	add	x1, x1, #0x0
		0000000000000364:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x253
     368: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000368:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     36c: 91000042     	add	x2, x2, #0x0
		000000000000036c:  R_AARCH64_ADD_ABS_LO12_NC	.bss
     370: 91002280     	add	x0, x20, #0x8
     374: f9000298     	str	x24, [x20]
     378: 94000000     	bl	0x378 <rdbg_open+0x188>
		0000000000000378:  R_AARCH64_CALL26	__mutex_init
     37c: 90000016     	adrp	x22, 0x0 <.text>
		000000000000037c:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_input_irq_lock
     380: 910002d6     	add	x22, x22, #0x0
		0000000000000380:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_input_irq_lock
     384: aa1603e0     	mov	x0, x22
     388: 94000000     	bl	0x388 <rdbg_open+0x198>
		0000000000000388:  R_AARCH64_CALL26	mutex_lock
     38c: b9402f08     	ldr	w8, [x24, #0x2c]
     390: aa1603e0     	mov	x0, x22
     394: b9003a88     	str	w8, [x20, #0x38]
     398: 94000000     	bl	0x398 <rdbg_open+0x1a8>
		0000000000000398:  R_AARCH64_CALL26	mutex_unlock
     39c: b9403a88     	ldr	w8, [x20, #0x38]
     3a0: 37f80f48     	tbnz	w8, #0x1f, 0x588 <rdbg_open+0x398>
     3a4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d4
     3a8: 91000021     	add	x1, x1, #0x0
		00000000000003a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d4
     3ac: 90000002     	adrp	x2, 0x0 <.text>
		00000000000003ac:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x2
     3b0: 91000042     	add	x2, x2, #0x0
		00000000000003b0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x2
     3b4: 91004300     	add	x0, x24, #0x10
     3b8: b9000b1f     	str	wzr, [x24, #0x8]
     3bc: 94000000     	bl	0x3bc <rdbg_open+0x1cc>
		00000000000003bc:  R_AARCH64_CALL26	__init_swait_queue_head
     3c0: 52803908     	mov	w8, #0x1c8              // =456
     3c4: f9400329     	ldr	x9, [x25]
		00000000000003c4:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     3c8: b9403a80     	ldr	w0, [x20, #0x38]
     3cc: 9ba82665     	umaddl	x5, w19, w8, x9
     3d0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000003d0:  R_AARCH64_ADR_PREL_PG_HI21	on_interrupt_from
     3d4: 91000042     	add	x2, x2, #0x0
		00000000000003d4:  R_AARCH64_ADD_ABS_LO12_NC	on_interrupt_from
     3d8: aa1f03e1     	mov	x1, xzr
     3dc: 52840063     	mov	w3, #0x2003             // =8195
     3e0: aa1503e4     	mov	x4, x21
     3e4: 94000000     	bl	0x3e4 <rdbg_open+0x1f4>
		00000000000003e4:  R_AARCH64_CALL26	request_threaded_irq
     3e8: 35001f00     	cbnz	w0, 0x7c8 <rdbg_open+0x5d8>
     3ec: 91046315     	add	x21, x24, #0x118
     3f0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13b
     3f4: 91000021     	add	x1, x1, #0x0
		00000000000003f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13b
     3f8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000003f8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1
     3fc: 91000042     	add	x2, x2, #0x0
		00000000000003fc:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1
     400: aa1503e0     	mov	x0, x21
     404: 94000000     	bl	0x404 <rdbg_open+0x214>
		0000000000000404:  R_AARCH64_CALL26	__mutex_init
     408: b940ab08     	ldr	w8, [x24, #0xa8]
     40c: 6b17011f     	cmp	w8, w23
     410: 54002380     	b.eq	0x880 <rdbg_open+0x690>
     414: f940371c     	ldr	x28, [x24, #0x68]
     418: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000418:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x344
     41c: 91000021     	add	x1, x1, #0x0
		000000000000041c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x344
     420: b400235c     	cbz	x28, 0x888 <rdbg_open+0x698>
     424: f9403b08     	ldr	x8, [x24, #0x70]
     428: 927f7d09     	and	x9, x8, #0x1fffffffe
     42c: b40022e9     	cbz	x9, 0x888 <rdbg_open+0x698>
     430: d341fd1a     	lsr	x26, x8, #1
     434: 91002788     	add	x8, x28, #0x9
     438: b204cfea     	mov	x10, #-0xf0f0f0f0f0f0f10 // =-1085102592571150096
     43c: 927df108     	and	x8, x8, #0xfffffffffffffff8
     440: f29e1e2a     	movk	x10, #0xf0f1
     444: f9005315     	str	x21, [x24, #0xa0]
     448: 0b1c0349     	add	w9, w26, w28
     44c: f9003f1c     	str	x28, [x24, #0x78]
     450: 4b080129     	sub	w9, w9, w8
     454: 93407d29     	sxtw	x9, w9
     458: d1008129     	sub	x9, x9, #0x20
     45c: 9bca7d29     	umulh	x9, x9, x10
     460: d347fd29     	lsr	x9, x9, #7
     464: 7100053f     	cmp	w9, #0x1
     468: 5400210b     	b.lt	0x888 <rdbg_open+0x698>
     46c: 5319612a     	lsl	w10, w9, #7
     470: f9004b08     	str	x8, [x24, #0x90]
     474: d37e792b     	ubfiz	x11, x9, #2, #31
     478: b9009b09     	str	w9, [x24, #0x98]
     47c: 52800029     	mov	w9, #0x1                // =1
     480: 8b2ac108     	add	x8, x8, w10, sxtw
     484: b900c309     	str	w9, [x24, #0xc0]
     488: 8b0b010a     	add	x10, x8, x11
     48c: 9100414a     	add	x10, x10, #0x10
     490: a9082b08     	stp	x8, x10, [x24, #0x80]
     494: 39000389     	strb	w9, [x28]
     498: b9409b08     	ldr	w8, [x24, #0x98]
     49c: 34001f68     	cbz	w8, 0x888 <rdbg_open+0x698>
     4a0: aa1f03e8     	mov	x8, xzr
     4a4: 52800209     	mov	w9, #0x10               // =16
     4a8: 529fffea     	mov	w10, #0xffff            // =65535
     4ac: f940430b     	ldr	x11, [x24, #0x80]
     4b0: 91000508     	add	x8, x8, #0x1
     4b4: 7829696a     	strh	w10, [x11, x9]
     4b8: 91001129     	add	x9, x9, #0x4
     4bc: b9409b16     	ldr	w22, [x24, #0x98]
     4c0: eb16011f     	cmp	x8, x22
     4c4: 54ffff43     	b.lo	0x4ac <rdbg_open+0x2bc>
     4c8: 71000adf     	cmp	w22, #0x2
     4cc: 54001da3     	b.lo	0x880 <rdbg_open+0x690>
     4d0: d503201f     	nop
     4d4: aa1603e0     	mov	x0, x22
     4d8: 5281b801     	mov	w1, #0xdc0              // =3520
     4dc: 94000000     	bl	0x4dc <rdbg_open+0x2ec>
		00000000000004dc:  R_AARCH64_CALL26	__kmalloc_noprof
     4e0: f9005f00     	str	x0, [x24, #0xb8]
     4e4: b4001ce0     	cbz	x0, 0x880 <rdbg_open+0x690>
     4e8: 510006c8     	sub	w8, w22, #0x1
     4ec: 2a1f03e1     	mov	w1, wzr
     4f0: aa1603e2     	mov	x2, x22
     4f4: b900b708     	str	w8, [x24, #0xb4]
     4f8: 94000000     	bl	0x4f8 <rdbg_open+0x308>
		00000000000004f8:  R_AARCH64_CALL26	memset
     4fc: f9404308     	ldr	x8, [x24, #0x80]
     500: b900b31f     	str	wzr, [x24, #0xb0]
     504: 110006e9     	add	w9, w23, #0x1
     508: b900091f     	str	wzr, [x8, #0x8]
     50c: f9404308     	ldr	x8, [x24, #0x80]
     510: b9000d1f     	str	wzr, [x8, #0xc]
     514: f9404308     	ldr	x8, [x24, #0x80]
     518: b940010a     	ldr	w10, [x8]
     51c: 6b09015f     	cmp	w10, w9
     520: 54000461     	b.ne	0x5ac <rdbg_open+0x3bc>
     524: b9400509     	ldr	w9, [x8, #0x4]
     528: 11000529     	add	w9, w9, #0x1
     52c: b9000509     	str	w9, [x8, #0x4]
     530: 14000023     	b	0x5bc <rdbg_open+0x3cc>
     534: 12800256     	mov	w22, #-0x13             // =-19
     538: 14000005     	b	0x54c <rdbg_open+0x35c>
     53c: 12800256     	mov	w22, #-0x13             // =-19
     540: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000540:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_file_lifecycle_lock
     544: 91000000     	add	x0, x0, #0x0
		0000000000000544:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_file_lifecycle_lock
     548: 94000000     	bl	0x548 <rdbg_open+0x358>
		0000000000000548:  R_AARCH64_CALL26	mutex_unlock
     54c: 2a1603e0     	mov	w0, w22
     550: a9464ff4     	ldp	x20, x19, [sp, #0x60]
     554: a94557f6     	ldp	x22, x21, [sp, #0x50]
     558: a9445ff8     	ldp	x24, x23, [sp, #0x40]
     55c: a94367fa     	ldp	x26, x25, [sp, #0x30]
     560: a9426ffc     	ldp	x28, x27, [sp, #0x20]
     564: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     568: 9101c3ff     	add	sp, sp, #0x70
     56c: d50323bf     	autiasp
     570: d65f03c0     	ret
     574: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000574:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x86
     578: 91000000     	add	x0, x0, #0x0
		0000000000000578:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x86
     57c: 94000000     	bl	0x57c <rdbg_open+0x38c>
		000000000000057c:  R_AARCH64_CALL26	_printk
     580: 12800256     	mov	w22, #-0x13             // =-19
     584: 17fffff2     	b	0x54c <rdbg_open+0x35c>
     588: 12800256     	mov	w22, #-0x13             // =-19
     58c: 140000d9     	b	0x8f0 <rdbg_open+0x700>
     590: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000590:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x238
     594: 91000021     	add	x1, x1, #0x0
		0000000000000594:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x238
     598: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000598:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     59c: 91000042     	add	x2, x2, #0x0
		000000000000059c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     5a0: 94000000     	bl	0x5a0 <rdbg_open+0x3b0>
		00000000000005a0:  R_AARCH64_CALL26	_dev_err
     5a4: 12800216     	mov	w22, #-0x11             // =-17
     5a8: 17ffffe6     	b	0x540 <rdbg_open+0x350>
     5ac: 5280002a     	mov	w10, #0x1               // =1
     5b0: b900050a     	str	w10, [x8, #0x4]
     5b4: f9404308     	ldr	x8, [x24, #0x80]
     5b8: b9000109     	str	w9, [x8]
     5bc: b940fb08     	ldr	w8, [x24, #0xf8]
     5c0: b900ab17     	str	w23, [x24, #0xa8]
     5c4: 6b17011f     	cmp	w8, w23
     5c8: 540011c0     	b.eq	0x800 <rdbg_open+0x610>
     5cc: 8b1a0388     	add	x8, x28, x26
     5d0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x389
     5d4: 91000021     	add	x1, x1, #0x0
		00000000000005d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x389
     5d8: b4001588     	cbz	x8, 0x888 <rdbg_open+0x698>
     5dc: f9403b09     	ldr	x9, [x24, #0x70]
     5e0: 927f7d2a     	and	x10, x9, #0x1fffffffe
     5e4: b400152a     	cbz	x10, 0x888 <rdbg_open+0x698>
     5e8: 9100250a     	add	x10, x8, #0x9
     5ec: d341fd2b     	lsr	x11, x9, #1
     5f0: f9007b15     	str	x21, [x24, #0xf0]
     5f4: 927df149     	and	x9, x10, #0xfffffffffffffff8
     5f8: f9006708     	str	x8, [x24, #0xc8]
     5fc: 4b09010a     	sub	w10, w8, w9
     600: 0b0b014a     	add	w10, w10, w11
     604: b204cfeb     	mov	x11, #-0xf0f0f0f0f0f0f10 // =-1085102592571150096
     608: 93407d4a     	sxtw	x10, w10
     60c: f29e1e2b     	movk	x11, #0xf0f1
     610: d100814a     	sub	x10, x10, #0x20
     614: 9bcb7d4a     	umulh	x10, x10, x11
     618: d347fd4a     	lsr	x10, x10, #7
     61c: 7100055f     	cmp	w10, #0x1
     620: 5400134b     	b.lt	0x888 <rdbg_open+0x698>
     624: 5319614b     	lsl	w11, w10, #7
     628: f9007309     	str	x9, [x24, #0xe0]
     62c: d37e794c     	ubfiz	x12, x10, #2, #31
     630: b900eb0a     	str	w10, [x24, #0xe8]
     634: 5280004a     	mov	w10, #0x2               // =2
     638: 8b2bc129     	add	x9, x9, w11, sxtw
     63c: b901130a     	str	w10, [x24, #0x110]
     640: 8b0c012a     	add	x10, x9, x12
     644: 9100414a     	add	x10, x10, #0x10
     648: a90d2b09     	stp	x9, x10, [x24, #0xd0]
     64c: 52800029     	mov	w9, #0x1                // =1
     650: 39000509     	strb	w9, [x8, #0x1]
     654: b940eb08     	ldr	w8, [x24, #0xe8]
     658: 34000168     	cbz	w8, 0x684 <rdbg_open+0x494>
     65c: aa1f03e8     	mov	x8, xzr
     660: 52800209     	mov	w9, #0x10               // =16
     664: 529fffea     	mov	w10, #0xffff            // =65535
     668: f9406f0b     	ldr	x11, [x24, #0xd8]
     66c: 91000508     	add	x8, x8, #0x1
     670: 7829696a     	strh	w10, [x11, x9]
     674: 91001129     	add	x9, x9, #0x4
     678: b940eb0b     	ldr	w11, [x24, #0xe8]
     67c: eb0b011f     	cmp	x8, x11
     680: 54ffff43     	b.lo	0x668 <rdbg_open+0x478>
     684: f9406f08     	ldr	x8, [x24, #0xd8]
     688: 110006ea     	add	w10, w23, #0x1
     68c: b900091f     	str	wzr, [x8, #0x8]
     690: f9406f08     	ldr	x8, [x24, #0xd8]
     694: b9000d1f     	str	wzr, [x8, #0xc]
     698: f9406b08     	ldr	x8, [x24, #0xd0]
     69c: b9400109     	ldr	w9, [x8]
     6a0: 6b0a013f     	cmp	w9, w10
     6a4: 2a1f03e9     	mov	w9, wzr
     6a8: 9000000a     	adrp	x10, 0x0 <.text>
		00000000000006a8:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_active_file_contexts
     6ac: 9100014a     	add	x10, x10, #0x0
		00000000000006ac:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_active_file_contexts
     6b0: 54000041     	b.ne	0x6b8 <rdbg_open+0x4c8>
     6b4: b9400509     	ldr	w9, [x8, #0x4]
     6b8: f9406f08     	ldr	x8, [x24, #0xd8]
     6bc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006bc:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_file_lifecycle_lock
     6c0: 91000000     	add	x0, x0, #0x0
		00000000000006c0:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_file_lifecycle_lock
     6c4: b9000509     	str	w9, [x8, #0x4]
     6c8: 11000ae9     	add	w9, w23, #0x2
     6cc: f9406f08     	ldr	x8, [x24, #0xd8]
     6d0: b9000109     	str	w9, [x8]
     6d4: 52800028     	mov	w8, #0x1                // =1
     6d8: b900fb17     	str	w23, [x24, #0xf8]
     6dc: 39018308     	strb	w8, [x24, #0x60]
     6e0: f8337954     	str	x20, [x10, x19, lsl #3]
     6e4: f9001374     	str	x20, [x27, #0x20]
     6e8: 94000000     	bl	0x6e8 <rdbg_open+0x4f8>
		00000000000006e8:  R_AARCH64_CALL26	mutex_unlock
     6ec: 2a1f03f6     	mov	w22, wzr
     6f0: 17ffff97     	b	0x54c <rdbg_open+0x35c>
     6f4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b5
     6f8: 91000021     	add	x1, x1, #0x0
		00000000000006f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b5
     6fc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000006fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     700: 91000042     	add	x2, x2, #0x0
		0000000000000700:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     704: 94000000     	bl	0x704 <rdbg_open+0x514>
		0000000000000704:  R_AARCH64_CALL26	_dev_err
     708: 12800176     	mov	w22, #-0xc              // =-12
     70c: 17ffff8d     	b	0x540 <rdbg_open+0x350>
     710: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000710:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa2
     714: 91000000     	add	x0, x0, #0x0
		0000000000000714:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa2
     718: 94000000     	bl	0x718 <rdbg_open+0x528>
		0000000000000718:  R_AARCH64_CALL26	_printk
     71c: 2a1303e0     	mov	w0, w19
     720: 2a1703e1     	mov	w1, w23
     724: aa1403e2     	mov	x2, x20
     728: 94000000     	bl	0x728 <rdbg_open+0x538>
		0000000000000728:  R_AARCH64_CALL26	qcom_smem_get
     72c: aa0003f6     	mov	x22, x0
     730: b13ffedf     	cmn	x22, #0xfff
     734: 54ffdd43     	b.lo	0x2dc <rdbg_open+0xec>
     738: f9400300     	ldr	x0, [x24]
     73c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000073c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x216
     740: 91000021     	add	x1, x1, #0x0
		0000000000000740:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x216
     744: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000744:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     748: 91000042     	add	x2, x2, #0x0
		0000000000000748:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     74c: 2a1603e3     	mov	w3, w22
     750: 94000000     	bl	0x750 <rdbg_open+0x560>
		0000000000000750:  R_AARCH64_CALL26	_dev_err
     754: 17ffff7b     	b	0x540 <rdbg_open+0x350>
     758: f9400300     	ldr	x0, [x24]
     75c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000075c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x167
     760: 91000021     	add	x1, x1, #0x0
		0000000000000760:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x167
     764: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000764:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     768: 91000042     	add	x2, x2, #0x0
		0000000000000768:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     76c: 94000000     	bl	0x76c <rdbg_open+0x57c>
		000000000000076c:  R_AARCH64_CALL26	_dev_err
     770: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000770:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f
     774: 91000000     	add	x0, x0, #0x0
		0000000000000774:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f
     778: 94000000     	bl	0x778 <rdbg_open+0x588>
		0000000000000778:  R_AARCH64_CALL26	_printk
     77c: 12800176     	mov	w22, #-0xc              // =-12
     780: 17ffff70     	b	0x540 <rdbg_open+0x350>
     784: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x281
     788: 91000000     	add	x0, x0, #0x0
		0000000000000788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x281
     78c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000078c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3cf
     790: 91000021     	add	x1, x1, #0x0
		0000000000000790:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3cf
     794: 94000000     	bl	0x794 <rdbg_open+0x5a4>
		0000000000000794:  R_AARCH64_CALL26	_printk
     798: f9400300     	ldr	x0, [x24]
     79c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000079c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b5
     7a0: 91000021     	add	x1, x1, #0x0
		00000000000007a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b5
     7a4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000007a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     7a8: 91000042     	add	x2, x2, #0x0
		00000000000007a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     7ac: aa1503e3     	mov	x3, x21
     7b0: 94000000     	bl	0x7b0 <rdbg_open+0x5c0>
		00000000000007b0:  R_AARCH64_CALL26	_dev_err
     7b4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x468
     7b8: 91000000     	add	x0, x0, #0x0
		00000000000007b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x468
     7bc: 94000000     	bl	0x7bc <rdbg_open+0x5cc>
		00000000000007bc:  R_AARCH64_CALL26	_printk
     7c0: 128008b6     	mov	w22, #-0x46             // =-70
     7c4: 17ffff5f     	b	0x540 <rdbg_open+0x350>
     7c8: 2a0003f6     	mov	w22, w0
     7cc: f9400300     	ldr	x0, [x24]
     7d0: b9403a84     	ldr	w4, [x20, #0x38]
     7d4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x108
     7d8: 91000021     	add	x1, x1, #0x0
		00000000000007d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x108
     7dc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000007dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     7e0: 91000042     	add	x2, x2, #0x0
		00000000000007e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     7e4: 2a1603e3     	mov	w3, w22
     7e8: 94000000     	bl	0x7e8 <rdbg_open+0x5f8>
		00000000000007e8:  R_AARCH64_CALL26	_dev_err
     7ec: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18b
     7f0: 91000000     	add	x0, x0, #0x0
		00000000000007f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18b
     7f4: 2a1603e1     	mov	w1, w22
     7f8: 94000000     	bl	0x7f8 <rdbg_open+0x608>
		00000000000007f8:  R_AARCH64_CALL26	_printk
     7fc: 1400003d     	b	0x8f0 <rdbg_open+0x700>
     800: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000800:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x389
     804: 91000021     	add	x1, x1, #0x0
		0000000000000804:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x389
     808: 14000020     	b	0x888 <rdbg_open+0x698>
     80c: d42aa240     	brk	#0x5512
     810: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000810:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x30
     814: d5384116     	mrs	x22, SP_EL0
     818: f9402ada     	ldr	x26, [x22, #0x50]
     81c: f9400100     	ldr	x0, [x8]
		000000000000081c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x30
     820: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000820:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags
     824: 91000108     	add	x8, x8, #0x0
		0000000000000824:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags
     828: 5281b801     	mov	w1, #0xdc0              // =3520
     82c: 52800802     	mov	w2, #0x40               // =64
     830: f9002ac8     	str	x8, [x22, #0x50]
     834: 94000000     	bl	0x834 <rdbg_open+0x644>
		0000000000000834:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     838: aa0003f4     	mov	x20, x0
     83c: f9002ada     	str	x26, [x22, #0x50]
     840: b5ffd914     	cbnz	x20, 0x360 <rdbg_open+0x170>
     844: 12800176     	mov	w22, #-0xc              // =-12
     848: 17ffff41     	b	0x54c <rdbg_open+0x35c>
     84c: d5384109     	mrs	x9, SP_EL0
     850: f9402928     	ldr	x8, [x9, #0x50]
     854: aa1603e0     	mov	x0, x22
     858: 5281b801     	mov	w1, #0xdc0              // =3520
     85c: a90023e9     	stp	x9, x8, [sp]
     860: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000860:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x28
     864: 91000108     	add	x8, x8, #0x0
		0000000000000864:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x28
     868: f9002928     	str	x8, [x9, #0x50]
     86c: 94000000     	bl	0x86c <rdbg_open+0x67c>
		000000000000086c:  R_AARCH64_CALL26	__kmalloc_noprof
     870: a94023e9     	ldp	x9, x8, [sp]
     874: f9002928     	str	x8, [x9, #0x50]
     878: f9005f00     	str	x0, [x24, #0xb8]
     87c: b5ffe360     	cbnz	x0, 0x4e8 <rdbg_open+0x2f8>
     880: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000880:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x344
     884: 91000021     	add	x1, x1, #0x0
		0000000000000884:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x344
     888: f9400300     	ldr	x0, [x24]
     88c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000088c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30d
     890: 91000042     	add	x2, x2, #0x0
		0000000000000890:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30d
     894: 94000000     	bl	0x894 <rdbg_open+0x6a4>
		0000000000000894:  R_AARCH64_CALL26	_dev_err
     898: aa1803f5     	mov	x21, x24
     89c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000089c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ed
     8a0: 91000021     	add	x1, x1, #0x0
		00000000000008a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ed
     8a4: f84c86a0     	ldr	x0, [x21], #0xc8
     8a8: 12800162     	mov	w2, #-0xc               // =-12
     8ac: 12800176     	mov	w22, #-0xc              // =-12
     8b0: 94000000     	bl	0x8b0 <rdbg_open+0x6c0>
		00000000000008b0:  R_AARCH64_CALL26	_dev_err
     8b4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4dd
     8b8: 91000000     	add	x0, x0, #0x0
		00000000000008b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4dd
     8bc: 12800161     	mov	w1, #-0xc               // =-12
     8c0: 94000000     	bl	0x8c0 <rdbg_open+0x6d0>
		00000000000008c0:  R_AARCH64_CALL26	_printk
     8c4: 52803908     	mov	w8, #0x1c8              // =456
     8c8: f9400329     	ldr	x9, [x25]
		00000000000008c8:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     8cc: b9403a80     	ldr	w0, [x20, #0x38]
     8d0: 9ba82661     	umaddl	x1, w19, w8, x9
     8d4: 94000000     	bl	0x8d4 <rdbg_open+0x6e4>
		00000000000008d4:  R_AARCH64_CALL26	free_irq
     8d8: 12800008     	mov	w8, #-0x1               // =-1
     8dc: 9101e300     	add	x0, x24, #0x78
     8e0: b9003a88     	str	w8, [x20, #0x38]
     8e4: 94000006     	bl	0x8fc <smq_dtor>
     8e8: aa1503e0     	mov	x0, x21
     8ec: 94000004     	bl	0x8fc <smq_dtor>
     8f0: aa1403e0     	mov	x0, x20
     8f4: 94000000     	bl	0x8f4 <rdbg_open+0x704>
		00000000000008f4:  R_AARCH64_CALL26	kfree
     8f8: 17ffff12     	b	0x540 <rdbg_open+0x350>
