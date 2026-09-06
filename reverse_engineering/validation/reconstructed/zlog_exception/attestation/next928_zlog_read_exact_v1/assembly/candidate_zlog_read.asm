
/input/zlog_exception.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000020c <zlog_read>:
     20c: d503233f     	paciasp
     210: d101c3ff     	sub	sp, sp, #0x70
     214: a9037bfd     	stp	x29, x30, [sp, #0x30]
     218: f90023f7     	str	x23, [sp, #0x40]
     21c: a90557f6     	stp	x22, x21, [sp, #0x50]
     220: a9064ff4     	stp	x20, x19, [sp, #0x60]
     224: 9100c3fd     	add	x29, sp, #0x30
     228: d5384108     	mrs	x8, SP_EL0
     22c: 90000016     	adrp	x22, 0x0 <.text>
		000000000000022c:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_info
     230: 910002d6     	add	x22, x22, #0x0
		0000000000000230:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_info
     234: f9438908     	ldr	x8, [x8, #0x710]
     238: aa1603e0     	mov	x0, x22
     23c: aa0203f5     	mov	x21, x2
     240: aa0103f3     	mov	x19, x1
     244: f81f83a8     	stur	x8, [x29, #-0x8]
     248: 94000000     	bl	0x248 <zlog_read+0x3c>
		0000000000000248:  R_AARCH64_CALL26	mutex_lock
     24c: aa1603f4     	mov	x20, x22
     250: aa1603e0     	mov	x0, x22
     254: f8430e97     	ldr	x23, [x20, #0x30]!
     258: 94000000     	bl	0x258 <zlog_read+0x4c>
		0000000000000258:  R_AARCH64_CALL26	mutex_unlock
     25c: eb1402ff     	cmp	x23, x20
     260: 540002e1     	b.ne	0x2bc <zlog_read+0xb0>
     264: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000264:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_info+0x98
     268: 91000294     	add	x20, x20, #0x0
		0000000000000268:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_info+0x98
     26c: 910003e0     	mov	x0, sp
     270: 2a1f03e1     	mov	w1, wzr
     274: b9001a9f     	str	wzr, [x20, #0x18]
     278: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     27c: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     280: f90003ff     	str	xzr, [sp]
     284: 94000000     	bl	0x284 <zlog_read+0x78>
		0000000000000284:  R_AARCH64_CALL26	init_wait_entry
     288: 910003e1     	mov	x1, sp
     28c: aa1403e0     	mov	x0, x20
     290: 52800022     	mov	w2, #0x1                // =1
     294: 94000000     	bl	0x294 <zlog_read+0x88>
		0000000000000294:  R_AARCH64_CALL26	prepare_to_wait_event
     298: b9401a88     	ldr	w8, [x20, #0x18]
     29c: 35000088     	cbnz	w8, 0x2ac <zlog_read+0xa0>
     2a0: b5000ce0     	cbnz	x0, 0x43c <zlog_read+0x230>
     2a4: 94000000     	bl	0x2a4 <zlog_read+0x98>
		00000000000002a4:  R_AARCH64_CALL26	schedule
     2a8: 17fffff8     	b	0x288 <zlog_read+0x7c>
     2ac: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002ac:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_info+0x98
     2b0: 91000000     	add	x0, x0, #0x0
		00000000000002b0:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_info+0x98
     2b4: 910003e1     	mov	x1, sp
     2b8: 94000000     	bl	0x2b8 <zlog_read+0xac>
		00000000000002b8:  R_AARCH64_CALL26	finish_wait
     2bc: aa1603e0     	mov	x0, x22
     2c0: 94000000     	bl	0x2c0 <zlog_read+0xb4>
		00000000000002c0:  R_AARCH64_CALL26	mutex_lock
     2c4: aa1603e8     	mov	x8, x22
     2c8: f8430d09     	ldr	x9, [x8, #0x30]!
     2cc: eb08013f     	cmp	x9, x8
     2d0: 54000be0     	b.eq	0x44c <zlog_read+0x240>
     2d4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000002d4:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_info+0x38
     2d8: f9400114     	ldr	x20, [x8]
		00000000000002d8:  R_AARCH64_LDST64_ABS_LO12_NC	g_zlog_info+0x38
     2dc: f9400688     	ldr	x8, [x20, #0x8]
     2e0: f9400109     	ldr	x9, [x8]
     2e4: eb14013f     	cmp	x9, x20
     2e8: 54000c61     	b.ne	0x474 <zlog_read+0x268>
     2ec: f9400289     	ldr	x9, [x20]
     2f0: f940052a     	ldr	x10, [x9, #0x8]
     2f4: eb14015f     	cmp	x10, x20
     2f8: 54000be1     	b.ne	0x474 <zlog_read+0x268>
     2fc: f9000528     	str	x8, [x9, #0x8]
     300: f9000109     	str	x9, [x8]
     304: d2802008     	mov	x8, #0x100              // =256
     308: 52800449     	mov	w9, #0x22               // =34
     30c: aa1603e0     	mov	x0, x22
     310: f2fbd5a8     	movk	x8, #0xdead, lsl #48
     314: aa090109     	orr	x9, x8, x9
     318: a9002688     	stp	x8, x9, [x20]
     31c: b940b6c8     	ldr	w8, [x22, #0xb4]
     320: 51000508     	sub	w8, w8, #0x1
     324: b900b6c8     	str	w8, [x22, #0xb4]
     328: 94000000     	bl	0x328 <zlog_read+0x11c>
		0000000000000328:  R_AARCH64_CALL26	mutex_unlock
     32c: b4000974     	cbz	x20, 0x458 <zlog_read+0x24c>
     330: b9401288     	ldr	w8, [x20, #0x10]
     334: eb15011f     	cmp	x8, x21
     338: 9a953115     	csel	x21, x8, x21, lo
     33c: d35ffea8     	lsr	x8, x21, #31
     340: b5000a08     	cbnz	x8, 0x480 <zlog_read+0x274>
     344: f9400e96     	ldr	x22, [x20, #0x18]
     348: aa1503e1     	mov	x1, x21
     34c: 52800022     	mov	w2, #0x1                // =1
     350: aa1603e0     	mov	x0, x22
     354: 94000000     	bl	0x354 <zlog_read+0x148>
		0000000000000354:  R_AARCH64_CALL26	__check_object_size
     358: d5384108     	mrs	x8, SP_EL0
     35c: 39411909     	ldrb	w9, [x8, #0x46]
     360: 37280089     	tbnz	w9, #0x5, 0x370 <zlog_read+0x164>
     364: f940010a     	ldr	x10, [x8]
     368: aa1303e9     	mov	x9, x19
     36c: 36d0006a     	tbz	w10, #0x1a, 0x378 <zlog_read+0x16c>
     370: d378de69     	lsl	x9, x19, #8
     374: 8a892269     	and	x9, x19, x9, asr #8
     378: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
     37c: aa1503e0     	mov	x0, x21
     380: cb15014a     	sub	x10, x10, x21
     384: eb09015f     	cmp	x10, x9
     388: 54000343     	b.lo	0x3f0 <zlog_read+0x1e4>
     38c: d503201f     	nop
     390: d53b4229     	mrs	x9, DAIF
     394: d50343df     	msr	DAIFSet, #0x3
     398: f9400508     	ldr	x8, [x8, #0x8]
     39c: d538202a     	mrs	x10, TTBR1_EL1
     3a0: aa0803eb     	mov	x11, x8
     3a4: b340bd4b     	bfxil	x11, x10, #0, #48
     3a8: d518202b     	msr	TTBR1_EL1, x11
     3ac: d5182008     	msr	TTBR0_EL1, x8
     3b0: d5033fdf     	isb
     3b4: d51b4229     	msr	DAIF, x9
     3b8: 9248fa60     	and	x0, x19, #0xff7fffffffffffff
     3bc: aa1603e1     	mov	x1, x22
     3c0: aa1503e2     	mov	x2, x21
     3c4: 94000000     	bl	0x3c4 <zlog_read+0x1b8>
		00000000000003c4:  R_AARCH64_CALL26	__arch_copy_to_user
     3c8: d503201f     	nop
     3cc: d53b4228     	mrs	x8, DAIF
     3d0: d50343df     	msr	DAIFSet, #0x3
     3d4: d5382029     	mrs	x9, TTBR1_EL1
     3d8: 9240bd29     	and	x9, x9, #0xffffffffffff
     3dc: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
     3e0: d518200a     	msr	TTBR0_EL1, x10
     3e4: d5182029     	msr	TTBR1_EL1, x9
     3e8: d5033fdf     	isb
     3ec: d51b4228     	msr	DAIF, x8
     3f0: b50004a0     	cbnz	x0, 0x484 <zlog_read+0x278>
     3f4: f9400e80     	ldr	x0, [x20, #0x18]
     3f8: b4000040     	cbz	x0, 0x400 <zlog_read+0x1f4>
     3fc: 94000000     	bl	0x3fc <zlog_read+0x1f0>
		00000000000003fc:  R_AARCH64_CALL26	kfree
     400: aa1403e0     	mov	x0, x20
     404: 94000000     	bl	0x404 <zlog_read+0x1f8>
		0000000000000404:  R_AARCH64_CALL26	kfree
     408: d5384108     	mrs	x8, SP_EL0
     40c: f9438908     	ldr	x8, [x8, #0x710]
     410: f85f83a9     	ldur	x9, [x29, #-0x8]
     414: eb09011f     	cmp	x8, x9
     418: 540004a1     	b.ne	0x4ac <zlog_read+0x2a0>
     41c: aa1503e0     	mov	x0, x21
     420: a9464ff4     	ldp	x20, x19, [sp, #0x60]
     424: f94023f7     	ldr	x23, [sp, #0x40]
     428: a94557f6     	ldp	x22, x21, [sp, #0x50]
     42c: a9437bfd     	ldp	x29, x30, [sp, #0x30]
     430: 9101c3ff     	add	sp, sp, #0x70
     434: d50323bf     	autiasp
     438: d65f03c0     	ret
     43c: 34fff400     	cbz	w0, 0x2bc <zlog_read+0xb0>
     440: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000440:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     444: 91000000     	add	x0, x0, #0x0
		0000000000000444:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     448: 14000006     	b	0x460 <zlog_read+0x254>
     44c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000044c:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_info
     450: 91000000     	add	x0, x0, #0x0
		0000000000000450:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_info
     454: 94000000     	bl	0x454 <zlog_read+0x248>
		0000000000000454:  R_AARCH64_CALL26	mutex_unlock
     458: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000458:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb1
     45c: 91000000     	add	x0, x0, #0x0
		000000000000045c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb1
     460: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000460:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     464: 91000021     	add	x1, x1, #0x0
		0000000000000464:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     468: 94000000     	bl	0x468 <zlog_read+0x25c>
		0000000000000468:  R_AARCH64_CALL26	_printk
     46c: 92800155     	mov	x21, #-0xb              // =-11
     470: 17ffffe6     	b	0x408 <zlog_read+0x1fc>
     474: aa1403e0     	mov	x0, x20
     478: 94000000     	bl	0x478 <zlog_read+0x26c>
		0000000000000478:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
     47c: 17ffffa2     	b	0x304 <zlog_read+0xf8>
     480: d4210000     	brk	#0x800
     484: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000484:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     488: 91000021     	add	x1, x1, #0x0
		0000000000000488:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     48c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000048c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x155
     490: 91000000     	add	x0, x0, #0x0
		0000000000000490:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x155
     494: aa0103e2     	mov	x2, x1
     498: 94000000     	bl	0x498 <zlog_read+0x28c>
		0000000000000498:  R_AARCH64_CALL26	_printk
     49c: 928001b5     	mov	x21, #-0xe              // =-14
     4a0: f9400e80     	ldr	x0, [x20, #0x18]
     4a4: b5fffac0     	cbnz	x0, 0x3fc <zlog_read+0x1f0>
     4a8: 17ffffd6     	b	0x400 <zlog_read+0x1f4>
     4ac: 94000000     	bl	0x4ac <zlog_read+0x2a0>
		00000000000004ac:  R_AARCH64_CALL26	__stack_chk_fail
