
/input/zlog_exception.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000004b4 <zlog_write>:
     4b4: d503233f     	paciasp
     4b8: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
     4bc: f9000bf9     	str	x25, [sp, #0x10]
     4c0: a9025ff8     	stp	x24, x23, [sp, #0x20]
     4c4: a90357f6     	stp	x22, x21, [sp, #0x30]
     4c8: a9044ff4     	stp	x20, x19, [sp, #0x40]
     4cc: 910003fd     	mov	x29, sp
     4d0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000004d0:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_info+0xb4
     4d4: b9400108     	ldr	w8, [x8]
		00000000000004d4:  R_AARCH64_LDST32_ABS_LO12_NC	g_zlog_info+0xb4
     4d8: 7110051f     	cmp	w8, #0x401
     4dc: 54000f0a     	b.ge	0x6bc <zlog_write+0x208>
     4e0: aa0203f3     	mov	x19, x2
     4e4: aa0103f5     	mov	x21, x1
     4e8: d503201f     	nop
     4ec: 90000008     	adrp	x8, 0x0 <.text>
		00000000000004ec:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
     4f0: 5281b801     	mov	w1, #0xdc0              // =3520
     4f4: 52800402     	mov	w2, #0x20               // =32
     4f8: f9400100     	ldr	x0, [x8]
		00000000000004f8:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
     4fc: 94000000     	bl	0x4fc <zlog_write+0x48>
		00000000000004fc:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     500: aa0003f4     	mov	x20, x0
     504: b4001114     	cbz	x20, 0x724 <zlog_write+0x270>
     508: 11000668     	add	w8, w19, #0x1
     50c: b9001288     	str	w8, [x20, #0x10]
     510: d503201f     	nop
     514: b9401296     	ldr	w22, [x20, #0x10]
     518: 5281b801     	mov	w1, #0xdc0              // =3520
     51c: aa1603e0     	mov	x0, x22
     520: 94000000     	bl	0x520 <zlog_write+0x6c>
		0000000000000520:  R_AARCH64_CALL26	__kmalloc_noprof
     524: aa0003f7     	mov	x23, x0
     528: f9000e97     	str	x23, [x20, #0x18]
     52c: b4001257     	cbz	x23, 0x774 <zlog_write+0x2c0>
     530: d35ffe68     	lsr	x8, x19, #31
     534: b5000ca8     	cbnz	x8, 0x6c8 <zlog_write+0x214>
     538: aa1703e0     	mov	x0, x23
     53c: aa1303e1     	mov	x1, x19
     540: 2a1f03e2     	mov	w2, wzr
     544: 94000000     	bl	0x544 <zlog_write+0x90>
		0000000000000544:  R_AARCH64_CALL26	__check_object_size
     548: d5384108     	mrs	x8, SP_EL0
     54c: 39411909     	ldrb	w9, [x8, #0x46]
     550: 37280089     	tbnz	w9, #0x5, 0x560 <zlog_write+0xac>
     554: f940010a     	ldr	x10, [x8]
     558: aa1503e9     	mov	x9, x21
     55c: 36d0006a     	tbz	w10, #0x1a, 0x568 <zlog_write+0xb4>
     560: d378dea9     	lsl	x9, x21, #8
     564: 8a8922a9     	and	x9, x21, x9, asr #8
     568: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
     56c: aa1303f8     	mov	x24, x19
     570: cb13014a     	sub	x10, x10, x19
     574: eb09015f     	cmp	x10, x9
     578: 540001e2     	b.hs	0x5b4 <zlog_write+0x100>
     57c: cb180268     	sub	x8, x19, x24
     580: eb0802c9     	subs	x9, x22, x8
     584: 9a8933e1     	csel	x1, xzr, x9, lo
     588: eb18003f     	cmp	x1, x24
     58c: 54000ac3     	b.lo	0x6e4 <zlog_write+0x230>
     590: 8b0802e0     	add	x0, x23, x8
     594: 2a1f03e1     	mov	w1, wzr
     598: aa1803e2     	mov	x2, x24
     59c: 94000000     	bl	0x59c <zlog_write+0xe8>
		000000000000059c:  R_AARCH64_CALL26	memset
     5a0: b4000418     	cbz	x24, 0x620 <zlog_write+0x16c>
     5a4: 92800173     	mov	x19, #-0xc              // =-12
     5a8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x84
     5ac: 91000000     	add	x0, x0, #0x0
		00000000000005ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x84
     5b0: 14000074     	b	0x780 <zlog_write+0x2cc>
     5b4: d503201f     	nop
     5b8: d53b4229     	mrs	x9, DAIF
     5bc: d50343df     	msr	DAIFSet, #0x3
     5c0: f9400508     	ldr	x8, [x8, #0x8]
     5c4: d538202a     	mrs	x10, TTBR1_EL1
     5c8: aa0803eb     	mov	x11, x8
     5cc: b340bd4b     	bfxil	x11, x10, #0, #48
     5d0: d518202b     	msr	TTBR1_EL1, x11
     5d4: d5182008     	msr	TTBR0_EL1, x8
     5d8: d5033fdf     	isb
     5dc: d51b4229     	msr	DAIF, x9
     5e0: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
     5e4: aa1703e0     	mov	x0, x23
     5e8: aa1303e2     	mov	x2, x19
     5ec: 94000000     	bl	0x5ec <zlog_write+0x138>
		00000000000005ec:  R_AARCH64_CALL26	__arch_copy_from_user
     5f0: aa0003f8     	mov	x24, x0
     5f4: d503201f     	nop
     5f8: d53b4228     	mrs	x8, DAIF
     5fc: d50343df     	msr	DAIFSet, #0x3
     600: d5382029     	mrs	x9, TTBR1_EL1
     604: 9240bd29     	and	x9, x9, #0xffffffffffff
     608: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
     60c: d518200a     	msr	TTBR0_EL1, x10
     610: d5182029     	msr	TTBR1_EL1, x9
     614: d5033fdf     	isb
     618: d51b4228     	msr	DAIF, x8
     61c: b5fffb18     	cbnz	x24, 0x57c <zlog_write+0xc8>
     620: f9400e88     	ldr	x8, [x20, #0x18]
     624: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000624:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_info
     628: 910002b5     	add	x21, x21, #0x0
		0000000000000628:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_info
     62c: aa1503e0     	mov	x0, x21
     630: 3833691f     	strb	wzr, [x8, x19]
     634: 94000000     	bl	0x634 <zlog_write+0x180>
		0000000000000634:  R_AARCH64_CALL26	mutex_lock
     638: f9401aa2     	ldr	x2, [x21, #0x30]
     63c: eb14005f     	cmp	x2, x20
     640: 54000480     	b.eq	0x6d0 <zlog_write+0x21c>
     644: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000644:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_info+0x30
     648: 91000108     	add	x8, x8, #0x0
		0000000000000648:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_info+0x30
     64c: eb08029f     	cmp	x20, x8
     650: 54000400     	b.eq	0x6d0 <zlog_write+0x21c>
     654: f9400449     	ldr	x9, [x2, #0x8]
     658: eb08013f     	cmp	x9, x8
     65c: 540003a1     	b.ne	0x6d0 <zlog_write+0x21c>
     660: f9000454     	str	x20, [x2, #0x8]
     664: a9002282     	stp	x2, x8, [x20]
     668: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000668:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_info+0x30
     66c: f9000114     	str	x20, [x8]
		000000000000066c:  R_AARCH64_LDST64_ABS_LO12_NC	g_zlog_info+0x30
     670: b940b6a8     	ldr	w8, [x21, #0xb4]
     674: 52800029     	mov	w9, #0x1                // =1
     678: aa1503e0     	mov	x0, x21
     67c: 11000508     	add	w8, w8, #0x1
     680: 291622a9     	stp	w9, w8, [x21, #0xb0]
     684: 94000000     	bl	0x684 <zlog_write+0x1d0>
		0000000000000684:  R_AARCH64_CALL26	mutex_unlock
     688: 910262a0     	add	x0, x21, #0x98
     68c: 52800021     	mov	w1, #0x1                // =1
     690: 52800022     	mov	w2, #0x1                // =1
     694: aa1f03e3     	mov	x3, xzr
     698: 94000000     	bl	0x698 <zlog_write+0x1e4>
		0000000000000698:  R_AARCH64_CALL26	__wake_up
     69c: aa1303e0     	mov	x0, x19
     6a0: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     6a4: f9400bf9     	ldr	x25, [sp, #0x10]
     6a8: a94357f6     	ldp	x22, x21, [sp, #0x30]
     6ac: a9425ff8     	ldp	x24, x23, [sp, #0x20]
     6b0: a8c57bfd     	ldp	x29, x30, [sp], #0x50
     6b4: d50323bf     	autiasp
     6b8: d65f03c0     	ret
     6bc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19c
     6c0: 91000000     	add	x0, x0, #0x0
		00000000000006c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19c
     6c4: 1400001a     	b	0x72c <zlog_write+0x278>
     6c8: d4210000     	brk	#0x800
     6cc: 17ffffb6     	b	0x5a4 <zlog_write+0xf0>
     6d0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006d0:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_info+0x30
     6d4: 91000021     	add	x1, x1, #0x0
		00000000000006d4:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_info+0x30
     6d8: aa1403e0     	mov	x0, x20
     6dc: 94000000     	bl	0x6dc <zlog_write+0x228>
		00000000000006dc:  R_AARCH64_CALL26	__list_add_valid_or_report
     6e0: 17ffffe4     	b	0x670 <zlog_write+0x1bc>
     6e4: 528001e0     	mov	w0, #0xf                // =15
     6e8: aa1803e2     	mov	x2, x24
     6ec: 94000000     	bl	0x6ec <zlog_write+0x238>
		00000000000006ec:  R_AARCH64_CALL26	__fortify_panic
     6f0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000006f0:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
     6f4: d5384116     	mrs	x22, SP_EL0
     6f8: f9402ad7     	ldr	x23, [x22, #0x50]
     6fc: f9400100     	ldr	x0, [x8]
		00000000000006fc:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
     700: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000700:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x50
     704: 91000108     	add	x8, x8, #0x0
		0000000000000704:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x50
     708: 5281b801     	mov	w1, #0xdc0              // =3520
     70c: 52800402     	mov	w2, #0x20               // =32
     710: f9002ac8     	str	x8, [x22, #0x50]
     714: 94000000     	bl	0x714 <zlog_write+0x260>
		0000000000000714:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     718: aa0003f4     	mov	x20, x0
     71c: f9002ad7     	str	x23, [x22, #0x50]
     720: b5ffef54     	cbnz	x20, 0x508 <zlog_write+0x54>
     724: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x323
     728: 91000000     	add	x0, x0, #0x0
		0000000000000728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x323
     72c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000072c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c6
     730: 91000021     	add	x1, x1, #0x0
		0000000000000730:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c6
     734: 94000000     	bl	0x734 <zlog_write+0x280>
		0000000000000734:  R_AARCH64_CALL26	_printk
     738: 92800173     	mov	x19, #-0xc              // =-12
     73c: 17ffffd8     	b	0x69c <zlog_write+0x1e8>
     740: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000740:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x78
     744: 91000108     	add	x8, x8, #0x0
		0000000000000744:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x78
     748: d5384118     	mrs	x24, SP_EL0
     74c: f9402b19     	ldr	x25, [x24, #0x50]
     750: f9002b08     	str	x8, [x24, #0x50]
     754: 5281b801     	mov	w1, #0xdc0              // =3520
     758: b9401296     	ldr	w22, [x20, #0x10]
     75c: aa1603e0     	mov	x0, x22
     760: 94000000     	bl	0x760 <zlog_write+0x2ac>
		0000000000000760:  R_AARCH64_CALL26	__kmalloc_noprof
     764: aa0003f7     	mov	x23, x0
     768: f9002b19     	str	x25, [x24, #0x50]
     76c: f9000e97     	str	x23, [x20, #0x18]
     770: b5ffee17     	cbnz	x23, 0x530 <zlog_write+0x7c>
     774: aa1f03f3     	mov	x19, xzr
     778: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000778:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38
     77c: 91000000     	add	x0, x0, #0x0
		000000000000077c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38
     780: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000780:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c6
     784: 91000021     	add	x1, x1, #0x0
		0000000000000784:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c6
     788: 94000000     	bl	0x788 <zlog_write+0x2d4>
		0000000000000788:  R_AARCH64_CALL26	_printk
     78c: f9400e80     	ldr	x0, [x20, #0x18]
     790: b4000040     	cbz	x0, 0x798 <zlog_write+0x2e4>
     794: 94000000     	bl	0x794 <zlog_write+0x2e0>
		0000000000000794:  R_AARCH64_CALL26	kfree
     798: aa1403e0     	mov	x0, x20
     79c: 94000000     	bl	0x79c <zlog_write+0x2e8>
		000000000000079c:  R_AARCH64_CALL26	kfree
     7a0: 17ffffbf     	b	0x69c <zlog_write+0x1e8>
