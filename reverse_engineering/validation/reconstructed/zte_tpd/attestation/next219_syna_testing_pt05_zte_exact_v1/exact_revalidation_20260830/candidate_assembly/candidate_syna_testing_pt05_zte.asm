
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000274d4 <syna_testing_pt05_zte>:
   274d4: d503233f     	paciasp
   274d8: d10343ff     	sub	sp, sp, #0xd0
   274dc: a9077bfd     	stp	x29, x30, [sp, #0x70]
   274e0: a9086ffc     	stp	x28, x27, [sp, #0x80]
   274e4: a90967fa     	stp	x26, x25, [sp, #0x90]
   274e8: a90a5ff8     	stp	x24, x23, [sp, #0xa0]
   274ec: a90b57f6     	stp	x22, x21, [sp, #0xb0]
   274f0: a90c4ff4     	stp	x20, x19, [sp, #0xc0]
   274f4: 9101c3fd     	add	x29, sp, #0x70
   274f8: d5384108     	mrs	x8, SP_EL0
   274fc: aa0003f4     	mov	x20, x0
   27500: f9438908     	ldr	x8, [x8, #0x710]
   27504: f81f83a8     	stur	x8, [x29, #-0x8]
   27508: f9000fff     	str	xzr, [sp, #0x18]
   2750c: f90007ff     	str	xzr, [sp, #0x8]
   27510: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   27514: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   27518: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   2751c: f9001bff     	str	xzr, [sp, #0x30]
   27520: d503201f     	nop
   27524: 90000008     	adrp	x8, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027524:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   27528: 5281b801     	mov	w1, #0xdc0              // =3520
   2752c: 52820002     	mov	w2, #0x1000             // =4096
   27530: f9400100     	ldr	x0, [x8]
		0000000000027530:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   27534: 94000000     	bl	0x27534 <syna_testing_pt05_zte+0x60>
		0000000000027534:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   27538: aa0003f3     	mov	x19, x0
   2753c: b40014b3     	cbz	x19, 0x277d0 <syna_testing_pt05_zte+0x2fc>
   27540: 39560a88     	ldrb	w8, [x20, #0x582]
   27544: 36000c68     	tbz	w8, #0x0, 0x276d0 <syna_testing_pt05_zte+0x1fc>
   27548: 94000000     	bl	0x27548 <syna_testing_pt05_zte+0x74>
		0000000000027548:  R_AARCH64_CALL26	syna_tcm_get_testing_0500
   2754c: b4000ee0     	cbz	x0, 0x27728 <syna_testing_pt05_zte+0x254>
   27550: f9400288     	ldr	x8, [x20]
   27554: 910083f6     	add	x22, sp, #0x20
   27558: aa0003f5     	mov	x21, x0
   2755c: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		000000000002755c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb000
   27560: 91000021     	add	x1, x1, #0x0
		0000000000027560:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb000
   27564: 90000002     	adrp	x2, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027564:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7f68
   27568: 91000042     	add	x2, x2, #0x0
		0000000000027568:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x7f68
   2756c: b9402108     	ldr	w8, [x8, #0x20]
   27570: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   27574: b9002408     	str	w8, [x0, #0x24]
   27578: f9400288     	ldr	x8, [x20]
   2757c: b9401d08     	ldr	w8, [x8, #0x1c]
   27580: b9002008     	str	w8, [x0, #0x20]
   27584: 910042c0     	add	x0, x22, #0x10
   27588: 390183ff     	strb	wzr, [sp, #0x60]
   2758c: 94000000     	bl	0x2758c <syna_testing_pt05_zte+0xb8>
		000000000002758c:  R_AARCH64_CALL26	__mutex_init
   27590: 90000008     	adrp	x8, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027590:  R_AARCH64_ADR_PREL_PG_HI21	pt05_hi_limits
   27594: 91000108     	add	x8, x8, #0x0
		0000000000027594:  R_AARCH64_ADD_ABS_LO12_NC	pt05_hi_limits
   27598: 90000009     	adrp	x9, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027598:  R_AARCH64_ADR_PREL_PG_HI21	pt05_lo_limits
   2759c: 91000129     	add	x9, x9, #0x0
		000000000002759c:  R_AARCH64_ADD_ABS_LO12_NC	pt05_lo_limits
   275a0: f9000be8     	str	x8, [sp, #0x10]
   275a4: 52819008     	mov	w8, #0xc80              // =3200
   275a8: b9001be8     	str	w8, [sp, #0x18]
   275ac: aa1503e1     	mov	x1, x21
   275b0: 2a1f03e2     	mov	w2, wzr
   275b4: f90003e9     	str	x9, [sp]
   275b8: 910043e9     	add	x9, sp, #0x10
   275bc: b9000be8     	str	w8, [sp, #0x8]
   275c0: 910003e8     	mov	x8, sp
   275c4: f9006eb6     	str	x22, [x21, #0xd8]
   275c8: a903a2a9     	stp	x9, x8, [x21, #0x38]
   275cc: f9400ea8     	ldr	x8, [x21, #0x18]
   275d0: f9400280     	ldr	x0, [x20]
   275d4: b85fc110     	ldur	w16, [x8, #-0x4]
   275d8: 72895251     	movk	w17, #0x4a92
   275dc: 72b03811     	movk	w17, #0x81c0, lsl #16
   275e0: 6b11021f     	cmp	w16, w17
   275e4: 54000040     	b.eq	0x275ec <syna_testing_pt05_zte+0x118>
   275e8: d4304500     	brk	#0x8228
   275ec: d63f0100     	blr	x8
   275f0: 37f80ac0     	tbnz	w0, #0x1f, 0x27748 <syna_testing_pt05_zte+0x274>
   275f4: 394042a8     	ldrb	w8, [x21, #0x10]
   275f8: 90000009     	adrp	x9, 0x27000 <syna_tcm_remove_device+0x78>
		00000000000275f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78f8
   275fc: 91000129     	add	x9, x9, #0x0
		00000000000275fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78f8
   27600: 7100011f     	cmp	w8, #0x0
   27604: 90000008     	adrp	x8, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a28
   27608: 91000108     	add	x8, x8, #0x0
		0000000000027608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a28
   2760c: 9a891105     	csel	x5, x8, x9, ne
   27610: f94006a3     	ldr	x3, [x21, #0x8]
   27614: b94002a4     	ldr	w4, [x21]
   27618: 90000002     	adrp	x2, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027618:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b52
   2761c: 91000042     	add	x2, x2, #0x0
		000000000002761c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b52
   27620: aa1303e0     	mov	x0, x19
   27624: 52820001     	mov	w1, #0x1000             // =4096
   27628: 94000000     	bl	0x27628 <syna_testing_pt05_zte+0x154>
		0000000000027628:  R_AARCH64_CALL26	scnprintf
   2762c: b9402fe8     	ldr	w8, [sp, #0x2c]
   27630: 2a0003f6     	mov	w22, w0
   27634: 340005c8     	cbz	w8, 0x276ec <syna_testing_pt05_zte+0x218>
   27638: b94022a8     	ldr	w8, [x21, #0x20]
   2763c: 34000588     	cbz	w8, 0x276ec <syna_testing_pt05_zte+0x218>
   27640: f94013fa     	ldr	x26, [sp, #0x20]
   27644: 2a1f03f9     	mov	w25, wzr
   27648: 90000017     	adrp	x23, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027648:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7c00
   2764c: 910002f7     	add	x23, x23, #0x0
		000000000002764c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7c00
   27650: 5282001b     	mov	w27, #0x1000            // =4096
   27654: 90000018     	adrp	x24, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027654:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa370
   27658: 91000318     	add	x24, x24, #0x0
		0000000000027658:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa370
   2765c: 1400000b     	b	0x27688 <syna_testing_pt05_zte+0x1b4>
   27660: 2a1603e8     	mov	w8, w22
   27664: aa1703e2     	mov	x2, x23
   27668: cb080361     	sub	x1, x27, x8
   2766c: 8b080260     	add	x0, x19, x8
   27670: 94000000     	bl	0x27670 <syna_testing_pt05_zte+0x19c>
		0000000000027670:  R_AARCH64_CALL26	scnprintf
   27674: b94022a8     	ldr	w8, [x21, #0x20]
   27678: 11000739     	add	w25, w25, #0x1
   2767c: 0b160016     	add	w22, w0, w22
   27680: 6b08033f     	cmp	w25, w8
   27684: 54000342     	b.hs	0x276ec <syna_testing_pt05_zte+0x218>
   27688: b94026a8     	ldr	w8, [x21, #0x24]
   2768c: 34fffea8     	cbz	w8, 0x27660 <syna_testing_pt05_zte+0x18c>
   27690: 2a1f03fc     	mov	w28, wzr
   27694: f9400288     	ldr	x8, [x20]
   27698: 2a1603e9     	mov	w9, w22
   2769c: aa1803e2     	mov	x2, x24
   276a0: cb090361     	sub	x1, x27, x9
   276a4: 8b090260     	add	x0, x19, x9
   276a8: b9402108     	ldr	w8, [x8, #0x20]
   276ac: 1b087328     	madd	w8, w25, w8, w28
   276b0: 78685b43     	ldrh	w3, [x26, w8, uxtw #1]
   276b4: 94000000     	bl	0x276b4 <syna_testing_pt05_zte+0x1e0>
		00000000000276b4:  R_AARCH64_CALL26	scnprintf
   276b8: b94026a8     	ldr	w8, [x21, #0x24]
   276bc: 1100079c     	add	w28, w28, #0x1
   276c0: 0b160016     	add	w22, w0, w22
   276c4: 6b08039f     	cmp	w28, w8
   276c8: 54fffe63     	b.lo	0x27694 <syna_testing_pt05_zte+0x1c0>
   276cc: 17ffffe5     	b	0x27660 <syna_testing_pt05_zte+0x18c>
   276d0: 90000002     	adrp	x2, 0x27000 <syna_tcm_remove_device+0x78>
		00000000000276d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc538
   276d4: 91000042     	add	x2, x2, #0x0
		00000000000276d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc538
   276d8: aa1303e0     	mov	x0, x19
   276dc: 52820001     	mov	w1, #0x1000             // =4096
   276e0: 94000000     	bl	0x276e0 <syna_testing_pt05_zte+0x20c>
		00000000000276e0:  R_AARCH64_CALL26	scnprintf
   276e4: 2a0003f6     	mov	w22, w0
   276e8: 14000040     	b	0x277e8 <syna_testing_pt05_zte+0x314>
   276ec: aa1303e0     	mov	x0, x19
   276f0: 94000000     	bl	0x276f0 <syna_testing_pt05_zte+0x21c>
		00000000000276f0:  R_AARCH64_CALL26	tpd_copy_to_tp_firmware_data
   276f4: 394183e2     	ldrb	w2, [sp, #0x60]
   276f8: 350003a2     	cbnz	w2, 0x2776c <syna_testing_pt05_zte+0x298>
   276fc: f94013f4     	ldr	x20, [sp, #0x20]
   27700: 94000000     	bl	0x27700 <syna_testing_pt05_zte+0x22c>
		0000000000027700:  R_AARCH64_CALL26	syna_request_managed_device
   27704: b4000400     	cbz	x0, 0x27784 <syna_testing_pt05_zte+0x2b0>
   27708: b4000074     	cbz	x20, 0x27714 <syna_testing_pt05_zte+0x240>
   2770c: aa1403e1     	mov	x1, x20
   27710: 94000000     	bl	0x27710 <syna_testing_pt05_zte+0x23c>
		0000000000027710:  R_AARCH64_CALL26	devm_kfree
   27714: aa1303e0     	mov	x0, x19
   27718: f90017ff     	str	xzr, [sp, #0x28]
   2771c: 390183ff     	strb	wzr, [sp, #0x60]
   27720: 94000000     	bl	0x27720 <syna_testing_pt05_zte+0x24c>
		0000000000027720:  R_AARCH64_CALL26	kfree
   27724: 14000031     	b	0x277e8 <syna_testing_pt05_zte+0x314>
   27728: 90000002     	adrp	x2, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027728:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaa26
   2772c: 91000042     	add	x2, x2, #0x0
		000000000002772c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaa26
   27730: aa1303e0     	mov	x0, x19
   27734: 52820001     	mov	w1, #0x1000             // =4096
   27738: 5280a003     	mov	w3, #0x500              // =1280
   2773c: 94000000     	bl	0x2773c <syna_testing_pt05_zte+0x268>
		000000000002773c:  R_AARCH64_CALL26	scnprintf
   27740: 2a0003f6     	mov	w22, w0
   27744: 14000029     	b	0x277e8 <syna_testing_pt05_zte+0x314>
   27748: f94006a2     	ldr	x2, [x21, #0x8]
   2774c: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		000000000002774c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc574
   27750: 91000000     	add	x0, x0, #0x0
		0000000000027750:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc574
   27754: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027754:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4868
   27758: 91000021     	add	x1, x1, #0x0
		0000000000027758:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4868
   2775c: 94000000     	bl	0x2775c <syna_testing_pt05_zte+0x288>
		000000000002775c:  R_AARCH64_CALL26	_printk
   27760: 90000005     	adrp	x5, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027760:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78f8
   27764: 910000a5     	add	x5, x5, #0x0
		0000000000027764:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78f8
   27768: 17ffffaa     	b	0x27610 <syna_testing_pt05_zte+0x13c>
   2776c: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		000000000002776c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
   27770: 91000000     	add	x0, x0, #0x0
		0000000000027770:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
   27774: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027774:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
   27778: 91000021     	add	x1, x1, #0x0
		0000000000027778:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
   2777c: 94000000     	bl	0x2777c <syna_testing_pt05_zte+0x2a8>
		000000000002777c:  R_AARCH64_CALL26	_printk
   27780: 17ffffdf     	b	0x276fc <syna_testing_pt05_zte+0x228>
   27784: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   27788: 91000000     	add	x0, x0, #0x0
		0000000000027788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   2778c: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		000000000002778c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   27790: 91000021     	add	x1, x1, #0x0
		0000000000027790:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   27794: 94000000     	bl	0x27794 <syna_testing_pt05_zte+0x2c0>
		0000000000027794:  R_AARCH64_CALL26	_printk
   27798: 17ffffdf     	b	0x27714 <syna_testing_pt05_zte+0x240>
   2779c: 90000008     	adrp	x8, 0x27000 <syna_tcm_remove_device+0x78>
		000000000002779c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x11d0
   277a0: 91000108     	add	x8, x8, #0x0
		00000000000277a0:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x11d0
   277a4: d5384115     	mrs	x21, SP_EL0
   277a8: f9402ab6     	ldr	x22, [x21, #0x50]
   277ac: f9002aa8     	str	x8, [x21, #0x50]
   277b0: 90000008     	adrp	x8, 0x27000 <syna_tcm_remove_device+0x78>
		00000000000277b0:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   277b4: f9400100     	ldr	x0, [x8]
		00000000000277b4:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   277b8: 5281b801     	mov	w1, #0xdc0              // =3520
   277bc: 52820002     	mov	w2, #0x1000             // =4096
   277c0: 94000000     	bl	0x277c0 <syna_testing_pt05_zte+0x2ec>
		00000000000277c0:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   277c4: aa0003f3     	mov	x19, x0
   277c8: f9002ab6     	str	x22, [x21, #0x50]
   277cc: b5ffebb3     	cbnz	x19, 0x27540 <syna_testing_pt05_zte+0x6c>
   277d0: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		00000000000277d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb1e2
   277d4: 91000000     	add	x0, x0, #0x0
		00000000000277d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb1e2
   277d8: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		00000000000277d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4868
   277dc: 91000021     	add	x1, x1, #0x0
		00000000000277dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4868
   277e0: 94000000     	bl	0x277e0 <syna_testing_pt05_zte+0x30c>
		00000000000277e0:  R_AARCH64_CALL26	_printk
   277e4: 12800176     	mov	w22, #-0xc              // =-12
   277e8: d5384108     	mrs	x8, SP_EL0
   277ec: f9438908     	ldr	x8, [x8, #0x710]
   277f0: f85f83a9     	ldur	x9, [x29, #-0x8]
   277f4: eb09011f     	cmp	x8, x9
   277f8: 54000161     	b.ne	0x27824 <syna_testing_pt05_zte+0x350>
   277fc: 2a1603e0     	mov	w0, w22
   27800: a94c4ff4     	ldp	x20, x19, [sp, #0xc0]
   27804: a94b57f6     	ldp	x22, x21, [sp, #0xb0]
   27808: a94a5ff8     	ldp	x24, x23, [sp, #0xa0]
   2780c: a94967fa     	ldp	x26, x25, [sp, #0x90]
   27810: a9486ffc     	ldp	x28, x27, [sp, #0x80]
   27814: a9477bfd     	ldp	x29, x30, [sp, #0x70]
   27818: 910343ff     	add	sp, sp, #0xd0
   2781c: d50323bf     	autiasp
   27820: d65f03c0     	ret
   27824: 94000000     	bl	0x27824 <syna_testing_pt05_zte+0x350>
		0000000000027824:  R_AARCH64_CALL26	__stack_chk_fail
