
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026340 <syna_tcm_buf_copy>:
   26340: d503233f     	paciasp
   26344: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   26348: f9000bf7     	str	x23, [sp, #0x10]
   2634c: a90257f6     	stp	x22, x21, [sp, #0x20]
   26350: a9034ff4     	stp	x20, x19, [sp, #0x30]
   26354: 910003fd     	mov	x29, sp
   26358: 39410002     	ldrb	w2, [x0, #0x40]
   2635c: aa0003f3     	mov	x19, x0
   26360: aa0103f4     	mov	x20, x1
   26364: 350009e2     	cbnz	w2, 0x264a0 <syna_tcm_buf_copy+0x160>
   26368: 91004260     	add	x0, x19, #0x10
   2636c: 94000000     	bl	0x2636c <syna_tcm_buf_copy+0x2c>
		000000000002636c:  R_AARCH64_CALL26	mutex_lock
   26370: 39410268     	ldrb	w8, [x19, #0x40]
   26374: 11000508     	add	w8, w8, #0x1
   26378: 39010268     	strb	w8, [x19, #0x40]
   2637c: 39410282     	ldrb	w2, [x20, #0x40]
   26380: 350009c2     	cbnz	w2, 0x264b8 <syna_tcm_buf_copy+0x178>
   26384: 91004280     	add	x0, x20, #0x10
   26388: 94000000     	bl	0x26388 <syna_tcm_buf_copy+0x48>
		0000000000026388:  R_AARCH64_CALL26	mutex_lock
   2638c: 39410288     	ldrb	w8, [x20, #0x40]
   26390: b9400e95     	ldr	w21, [x20, #0xc]
   26394: 11000508     	add	w8, w8, #0x1
   26398: 39010288     	strb	w8, [x20, #0x40]
   2639c: b9400a63     	ldr	w3, [x19, #0x8]
   263a0: 6b15007f     	cmp	w3, w21
   263a4: 540003c2     	b.hs	0x2641c <syna_tcm_buf_copy+0xdc>
   263a8: 110006b6     	add	w22, w21, #0x1
   263ac: f9400260     	ldr	x0, [x19]
   263b0: 6b16007f     	cmp	w3, w22
   263b4: 54000262     	b.hs	0x26400 <syna_tcm_buf_copy+0xc0>
   263b8: b40000c0     	cbz	x0, 0x263d0 <syna_tcm_buf_copy+0x90>
   263bc: aa0003f7     	mov	x23, x0
   263c0: 94000000     	bl	0x263c0 <syna_tcm_buf_copy+0x80>
		00000000000263c0:  R_AARCH64_CALL26	syna_request_managed_device
   263c4: b4000c60     	cbz	x0, 0x26550 <syna_tcm_buf_copy+0x210>
   263c8: aa1703e1     	mov	x1, x23
   263cc: 94000000     	bl	0x263cc <syna_tcm_buf_copy+0x8c>
		00000000000263cc:  R_AARCH64_CALL26	devm_kfree
   263d0: 94000000     	bl	0x263d0 <syna_tcm_buf_copy+0x90>
		00000000000263d0:  R_AARCH64_CALL26	syna_request_managed_device
   263d4: b4000cc0     	cbz	x0, 0x2656c <syna_tcm_buf_copy+0x22c>
   263d8: 12b00008     	mov	w8, #0x7fffffff         // =2147483647
   263dc: 6b0802bf     	cmp	w21, w8
   263e0: 54000b22     	b.hs	0x26544 <syna_tcm_buf_copy+0x204>
   263e4: aa1603e1     	mov	x1, x22
   263e8: 5281b802     	mov	w2, #0xdc0              // =3520
   263ec: 94000000     	bl	0x263ec <syna_tcm_buf_copy+0xac>
		00000000000263ec:  R_AARCH64_CALL26	devm_kmalloc
   263f0: f9000260     	str	x0, [x19]
   263f4: b4000c80     	cbz	x0, 0x26584 <syna_tcm_buf_copy+0x244>
   263f8: b9000a76     	str	w22, [x19, #0x8]
   263fc: 14000002     	b	0x26404 <syna_tcm_buf_copy+0xc4>
   26400: aa0303f6     	mov	x22, x3
   26404: 2a1f03e1     	mov	w1, wzr
   26408: aa1603e2     	mov	x2, x22
   2640c: 94000000     	bl	0x2640c <syna_tcm_buf_copy+0xcc>
		000000000002640c:  R_AARCH64_CALL26	memset
   26410: b9000e7f     	str	wzr, [x19, #0xc]
   26414: b9400a63     	ldr	w3, [x19, #0x8]
   26418: b9400e95     	ldr	w21, [x20, #0xc]
   2641c: f9400260     	ldr	x0, [x19]
   26420: b4000860     	cbz	x0, 0x2652c <syna_tcm_buf_copy+0x1ec>
   26424: f9400281     	ldr	x1, [x20]
   26428: b4000821     	cbz	x1, 0x2652c <syna_tcm_buf_copy+0x1ec>
   2642c: b9400a82     	ldr	w2, [x20, #0x8]
   26430: 6b0302bf     	cmp	w21, w3
   26434: 540006e8     	b.hi	0x26510 <syna_tcm_buf_copy+0x1d0>
   26438: 6b0202bf     	cmp	w21, w2
   2643c: 540006a8     	b.hi	0x26510 <syna_tcm_buf_copy+0x1d0>
   26440: 2a1503e2     	mov	w2, w21
   26444: 94000000     	bl	0x26444 <syna_tcm_buf_copy+0x104>
		0000000000026444:  R_AARCH64_CALL26	memcpy
   26448: b9400e88     	ldr	w8, [x20, #0xc]
   2644c: b9000e68     	str	w8, [x19, #0xc]
   26450: 39410282     	ldrb	w2, [x20, #0x40]
   26454: 7100045f     	cmp	w2, #0x1
   26458: 540004c1     	b.ne	0x264f0 <syna_tcm_buf_copy+0x1b0>
   2645c: 2a1f03e8     	mov	w8, wzr
   26460: 91004280     	add	x0, x20, #0x10
   26464: 39010288     	strb	w8, [x20, #0x40]
   26468: 94000000     	bl	0x26468 <syna_tcm_buf_copy+0x128>
		0000000000026468:  R_AARCH64_CALL26	mutex_unlock
   2646c: 39410262     	ldrb	w2, [x19, #0x40]
   26470: 7100045f     	cmp	w2, #0x1
   26474: 540002e1     	b.ne	0x264d0 <syna_tcm_buf_copy+0x190>
   26478: 2a1f03e8     	mov	w8, wzr
   2647c: 91004260     	add	x0, x19, #0x10
   26480: 39010268     	strb	w8, [x19, #0x40]
   26484: 94000000     	bl	0x26484 <syna_tcm_buf_copy+0x144>
		0000000000026484:  R_AARCH64_CALL26	mutex_unlock
   26488: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   2648c: f9400bf7     	ldr	x23, [sp, #0x10]
   26490: a94257f6     	ldp	x22, x21, [sp, #0x20]
   26494: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   26498: d50323bf     	autiasp
   2649c: d65f03c0     	ret
   264a0: 90000000     	adrp	x0, 0x26000 <syna_testing_pt01_show+0x15c>
		00000000000264a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3ec
   264a4: 91000000     	add	x0, x0, #0x0
		00000000000264a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3ec
   264a8: 90000001     	adrp	x1, 0x26000 <syna_testing_pt01_show+0x15c>
		00000000000264a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a514
   264ac: 91000021     	add	x1, x1, #0x0
		00000000000264ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a514
   264b0: 94000000     	bl	0x264b0 <syna_tcm_buf_copy+0x170>
		00000000000264b0:  R_AARCH64_CALL26	_printk
   264b4: 17ffffad     	b	0x26368 <syna_tcm_buf_copy+0x28>
   264b8: 90000000     	adrp	x0, 0x26000 <syna_testing_pt01_show+0x15c>
		00000000000264b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3ec
   264bc: 91000000     	add	x0, x0, #0x0
		00000000000264bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3ec
   264c0: 90000001     	adrp	x1, 0x26000 <syna_testing_pt01_show+0x15c>
		00000000000264c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a514
   264c4: 91000021     	add	x1, x1, #0x0
		00000000000264c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a514
   264c8: 94000000     	bl	0x264c8 <syna_tcm_buf_copy+0x188>
		00000000000264c8:  R_AARCH64_CALL26	_printk
   264cc: 17ffffae     	b	0x26384 <syna_tcm_buf_copy+0x44>
   264d0: 90000000     	adrp	x0, 0x26000 <syna_testing_pt01_show+0x15c>
		00000000000264d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3ec
   264d4: 91000000     	add	x0, x0, #0x0
		00000000000264d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3ec
   264d8: 90000001     	adrp	x1, 0x26000 <syna_testing_pt01_show+0x15c>
		00000000000264d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c4a6
   264dc: 91000021     	add	x1, x1, #0x0
		00000000000264dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c4a6
   264e0: 94000000     	bl	0x264e0 <syna_tcm_buf_copy+0x1a0>
		00000000000264e0:  R_AARCH64_CALL26	_printk
   264e4: 39410268     	ldrb	w8, [x19, #0x40]
   264e8: 51000508     	sub	w8, w8, #0x1
   264ec: 17ffffe4     	b	0x2647c <syna_tcm_buf_copy+0x13c>
   264f0: 90000000     	adrp	x0, 0x26000 <syna_testing_pt01_show+0x15c>
		00000000000264f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3ec
   264f4: 91000000     	add	x0, x0, #0x0
		00000000000264f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3ec
   264f8: 90000001     	adrp	x1, 0x26000 <syna_testing_pt01_show+0x15c>
		00000000000264f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c4a6
   264fc: 91000021     	add	x1, x1, #0x0
		00000000000264fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c4a6
   26500: 94000000     	bl	0x26500 <syna_tcm_buf_copy+0x1c0>
		0000000000026500:  R_AARCH64_CALL26	_printk
   26504: 39410288     	ldrb	w8, [x20, #0x40]
   26508: 51000508     	sub	w8, w8, #0x1
   2650c: 17ffffd5     	b	0x26460 <syna_tcm_buf_copy+0x120>
   26510: 90000000     	adrp	x0, 0x26000 <syna_testing_pt01_show+0x15c>
		0000000000026510:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac93
   26514: 91000000     	add	x0, x0, #0x0
		0000000000026514:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac93
   26518: 90000001     	adrp	x1, 0x26000 <syna_testing_pt01_show+0x15c>
		0000000000026518:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17dd6
   2651c: 91000021     	add	x1, x1, #0x0
		000000000002651c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17dd6
   26520: 2a1503e4     	mov	w4, w21
   26524: 94000000     	bl	0x26524 <syna_tcm_buf_copy+0x1e4>
		0000000000026524:  R_AARCH64_CALL26	_printk
   26528: b9400e95     	ldr	w21, [x20, #0xc]
   2652c: 90000000     	adrp	x0, 0x26000 <syna_testing_pt01_show+0x15c>
		000000000002652c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ed4
   26530: 91000000     	add	x0, x0, #0x0
		0000000000026530:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ed4
   26534: 90000001     	adrp	x1, 0x26000 <syna_testing_pt01_show+0x15c>
		0000000000026534:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d28
   26538: 91000021     	add	x1, x1, #0x0
		0000000000026538:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d28
   2653c: 2a1503e2     	mov	w2, w21
   26540: 1400001e     	b	0x265b8 <syna_tcm_buf_copy+0x278>
   26544: 90000000     	adrp	x0, 0x26000 <syna_testing_pt01_show+0x15c>
		0000000000026544:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a41c
   26548: 91000000     	add	x0, x0, #0x0
		0000000000026548:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a41c
   2654c: 1400000a     	b	0x26574 <syna_tcm_buf_copy+0x234>
   26550: 90000000     	adrp	x0, 0x26000 <syna_testing_pt01_show+0x15c>
		0000000000026550:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bf45
   26554: 91000000     	add	x0, x0, #0x0
		0000000000026554:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bf45
   26558: 90000001     	adrp	x1, 0x26000 <syna_testing_pt01_show+0x15c>
		0000000000026558:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b95e
   2655c: 91000021     	add	x1, x1, #0x0
		000000000002655c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b95e
   26560: 94000000     	bl	0x26560 <syna_tcm_buf_copy+0x220>
		0000000000026560:  R_AARCH64_CALL26	_printk
   26564: 94000000     	bl	0x26564 <syna_tcm_buf_copy+0x224>
		0000000000026564:  R_AARCH64_CALL26	syna_request_managed_device
   26568: b5fff380     	cbnz	x0, 0x263d8 <syna_tcm_buf_copy+0x98>
   2656c: 90000000     	adrp	x0, 0x26000 <syna_testing_pt01_show+0x15c>
		000000000002656c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bf45
   26570: 91000000     	add	x0, x0, #0x0
		0000000000026570:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bf45
   26574: 90000001     	adrp	x1, 0x26000 <syna_testing_pt01_show+0x15c>
		0000000000026574:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19502
   26578: 91000021     	add	x1, x1, #0x0
		0000000000026578:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19502
   2657c: 94000000     	bl	0x2657c <syna_tcm_buf_copy+0x23c>
		000000000002657c:  R_AARCH64_CALL26	_printk
   26580: f900027f     	str	xzr, [x19]
   26584: 90000000     	adrp	x0, 0x26000 <syna_testing_pt01_show+0x15c>
		0000000000026584:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19bcf
   26588: 91000000     	add	x0, x0, #0x0
		0000000000026588:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19bcf
   2658c: 90000001     	adrp	x1, 0x26000 <syna_testing_pt01_show+0x15c>
		000000000002658c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a835
   26590: 91000021     	add	x1, x1, #0x0
		0000000000026590:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a835
   26594: 2a1603e2     	mov	w2, w22
   26598: 94000000     	bl	0x26598 <syna_tcm_buf_copy+0x258>
		0000000000026598:  R_AARCH64_CALL26	_printk
   2659c: f900067f     	str	xzr, [x19, #0x8]
   265a0: 90000000     	adrp	x0, 0x26000 <syna_testing_pt01_show+0x15c>
		00000000000265a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a0d2
   265a4: 91000000     	add	x0, x0, #0x0
		00000000000265a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a0d2
   265a8: b9400e88     	ldr	w8, [x20, #0xc]
   265ac: 90000001     	adrp	x1, 0x26000 <syna_testing_pt01_show+0x15c>
		00000000000265ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d28
   265b0: 91000021     	add	x1, x1, #0x0
		00000000000265b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d28
   265b4: 11000502     	add	w2, w8, #0x1
   265b8: 94000000     	bl	0x265b8 <syna_tcm_buf_copy+0x278>
		00000000000265b8:  R_AARCH64_CALL26	_printk
   265bc: 17ffffa5     	b	0x26450 <syna_tcm_buf_copy+0x110>
