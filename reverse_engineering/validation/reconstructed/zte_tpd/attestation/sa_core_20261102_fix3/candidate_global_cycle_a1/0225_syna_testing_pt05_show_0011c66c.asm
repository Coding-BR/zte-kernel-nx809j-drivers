
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000271fc <syna_testing_pt05_show>:
   271fc: d503233f     	paciasp
   27200: d10343ff     	sub	sp, sp, #0xd0
   27204: a9077bfd     	stp	x29, x30, [sp, #0x70]
   27208: a9086ffc     	stp	x28, x27, [sp, #0x80]
   2720c: a90967fa     	stp	x26, x25, [sp, #0x90]
   27210: a90a5ff8     	stp	x24, x23, [sp, #0xa0]
   27214: a90b57f6     	stp	x22, x21, [sp, #0xb0]
   27218: a90c4ff4     	stp	x20, x19, [sp, #0xc0]
   2721c: 9101c3fd     	add	x29, sp, #0x70
   27220: d5384108     	mrs	x8, SP_EL0
   27224: aa0203f3     	mov	x19, x2
   27228: f9438908     	ldr	x8, [x8, #0x710]
   2722c: f81f83a8     	stur	x8, [x29, #-0x8]
   27230: f9400c08     	ldr	x8, [x0, #0x18]
   27234: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   27238: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   2723c: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   27240: f9400d08     	ldr	x8, [x8, #0x18]
   27244: f9000fff     	str	xzr, [sp, #0x18]
   27248: f90007ff     	str	xzr, [sp, #0x8]
   2724c: f9404d18     	ldr	x24, [x8, #0x98]
   27250: f9001bff     	str	xzr, [sp, #0x30]
   27254: 39560b08     	ldrb	w8, [x24, #0x582]
   27258: 36000c68     	tbz	w8, #0x0, 0x273e4 <syna_testing_pt05_show+0x1e8>
   2725c: 94000000     	bl	0x2725c <syna_testing_pt05_show+0x60>
		000000000002725c:  R_AARCH64_CALL26	syna_tcm_get_testing_0500
   27260: b4000e20     	cbz	x0, 0x27424 <syna_testing_pt05_show+0x228>
   27264: f9400308     	ldr	x8, [x24]
   27268: 910083f5     	add	x21, sp, #0x20
   2726c: aa0003f4     	mov	x20, x0
   27270: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb000
   27274: 91000021     	add	x1, x1, #0x0
		0000000000027274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb000
   27278: 90000002     	adrp	x2, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027278:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x760a
   2727c: 91000042     	add	x2, x2, #0x0
		000000000002727c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x760a
   27280: b9402108     	ldr	w8, [x8, #0x20]
   27284: b9002408     	str	w8, [x0, #0x24]
   27288: f9400308     	ldr	x8, [x24]
   2728c: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   27290: b9401d08     	ldr	w8, [x8, #0x1c]
   27294: b9002008     	str	w8, [x0, #0x20]
   27298: 910042a0     	add	x0, x21, #0x10
   2729c: 390183ff     	strb	wzr, [sp, #0x60]
   272a0: 94000000     	bl	0x272a0 <syna_testing_pt05_show+0xa4>
		00000000000272a0:  R_AARCH64_CALL26	__mutex_init
   272a4: 90000008     	adrp	x8, 0x27000 <syna_tcm_remove_device+0x78>
		00000000000272a4:  R_AARCH64_ADR_PREL_PG_HI21	pt05_hi_limits
   272a8: 91000108     	add	x8, x8, #0x0
		00000000000272a8:  R_AARCH64_ADD_ABS_LO12_NC	pt05_hi_limits
   272ac: 90000009     	adrp	x9, 0x27000 <syna_tcm_remove_device+0x78>
		00000000000272ac:  R_AARCH64_ADR_PREL_PG_HI21	pt05_lo_limits
   272b0: 91000129     	add	x9, x9, #0x0
		00000000000272b0:  R_AARCH64_ADD_ABS_LO12_NC	pt05_lo_limits
   272b4: f9000be8     	str	x8, [sp, #0x10]
   272b8: 52819008     	mov	w8, #0xc80              // =3200
   272bc: b9001be8     	str	w8, [sp, #0x18]
   272c0: aa1403e1     	mov	x1, x20
   272c4: 2a1f03e2     	mov	w2, wzr
   272c8: f90003e9     	str	x9, [sp]
   272cc: 910043e9     	add	x9, sp, #0x10
   272d0: b9000be8     	str	w8, [sp, #0x8]
   272d4: 910003e8     	mov	x8, sp
   272d8: f9006e95     	str	x21, [x20, #0xd8]
   272dc: a903a289     	stp	x9, x8, [x20, #0x38]
   272e0: f9400e88     	ldr	x8, [x20, #0x18]
   272e4: f9400300     	ldr	x0, [x24]
   272e8: b85fc110     	ldur	w16, [x8, #-0x4]
   272ec: 72895251     	movk	w17, #0x4a92
   272f0: 72b03811     	movk	w17, #0x81c0, lsl #16
   272f4: 6b11021f     	cmp	w16, w17
   272f8: 54000040     	b.eq	0x27300 <syna_testing_pt05_show+0x104>
   272fc: d4304500     	brk	#0x8228
   27300: d63f0100     	blr	x8
   27304: 37f80ba0     	tbnz	w0, #0x1f, 0x27478 <syna_testing_pt05_show+0x27c>
   27308: 39404288     	ldrb	w8, [x20, #0x10]
   2730c: 90000009     	adrp	x9, 0x27000 <syna_tcm_remove_device+0x78>
		000000000002730c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78f8
   27310: 91000129     	add	x9, x9, #0x0
		0000000000027310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78f8
   27314: 7100011f     	cmp	w8, #0x0
   27318: 90000008     	adrp	x8, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027318:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a28
   2731c: 91000108     	add	x8, x8, #0x0
		000000000002731c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a28
   27320: 9a891105     	csel	x5, x8, x9, ne
   27324: f9400683     	ldr	x3, [x20, #0x8]
   27328: b9400284     	ldr	w4, [x20]
   2732c: 90000002     	adrp	x2, 0x27000 <syna_tcm_remove_device+0x78>
		000000000002732c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b52
   27330: 91000042     	add	x2, x2, #0x0
		0000000000027330:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b52
   27334: aa1303e0     	mov	x0, x19
   27338: 52820001     	mov	w1, #0x1000             // =4096
   2733c: 94000000     	bl	0x2733c <syna_testing_pt05_show+0x140>
		000000000002733c:  R_AARCH64_CALL26	scnprintf
   27340: b9402fe8     	ldr	w8, [sp, #0x2c]
   27344: 2a0003f5     	mov	w21, w0
   27348: 340005a8     	cbz	w8, 0x273fc <syna_testing_pt05_show+0x200>
   2734c: b9402288     	ldr	w8, [x20, #0x20]
   27350: 34000568     	cbz	w8, 0x273fc <syna_testing_pt05_show+0x200>
   27354: f94013fa     	ldr	x26, [sp, #0x20]
   27358: 2a1f03f9     	mov	w25, wzr
   2735c: 90000016     	adrp	x22, 0x27000 <syna_tcm_remove_device+0x78>
		000000000002735c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7c00
   27360: 910002d6     	add	x22, x22, #0x0
		0000000000027360:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7c00
   27364: 5282001b     	mov	w27, #0x1000            // =4096
   27368: 90000017     	adrp	x23, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027368:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa370
   2736c: 910002f7     	add	x23, x23, #0x0
		000000000002736c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa370
   27370: 1400000b     	b	0x2739c <syna_testing_pt05_show+0x1a0>
   27374: 2a1503e8     	mov	w8, w21
   27378: aa1603e2     	mov	x2, x22
   2737c: cb080361     	sub	x1, x27, x8
   27380: 8b080260     	add	x0, x19, x8
   27384: 94000000     	bl	0x27384 <syna_testing_pt05_show+0x188>
		0000000000027384:  R_AARCH64_CALL26	scnprintf
   27388: b9402288     	ldr	w8, [x20, #0x20]
   2738c: 11000739     	add	w25, w25, #0x1
   27390: 0b150015     	add	w21, w0, w21
   27394: 6b08033f     	cmp	w25, w8
   27398: 54000322     	b.hs	0x273fc <syna_testing_pt05_show+0x200>
   2739c: b9402688     	ldr	w8, [x20, #0x24]
   273a0: 34fffea8     	cbz	w8, 0x27374 <syna_testing_pt05_show+0x178>
   273a4: 2a1f03fc     	mov	w28, wzr
   273a8: f9400308     	ldr	x8, [x24]
   273ac: 2a1503e9     	mov	w9, w21
   273b0: aa1703e2     	mov	x2, x23
   273b4: cb090361     	sub	x1, x27, x9
   273b8: 8b090260     	add	x0, x19, x9
   273bc: b9402108     	ldr	w8, [x8, #0x20]
   273c0: 1b087328     	madd	w8, w25, w8, w28
   273c4: 78685b43     	ldrh	w3, [x26, w8, uxtw #1]
   273c8: 94000000     	bl	0x273c8 <syna_testing_pt05_show+0x1cc>
		00000000000273c8:  R_AARCH64_CALL26	scnprintf
   273cc: b9402688     	ldr	w8, [x20, #0x24]
   273d0: 1100079c     	add	w28, w28, #0x1
   273d4: 0b150015     	add	w21, w0, w21
   273d8: 6b08039f     	cmp	w28, w8
   273dc: 54fffe63     	b.lo	0x273a8 <syna_testing_pt05_show+0x1ac>
   273e0: 17ffffe5     	b	0x27374 <syna_testing_pt05_show+0x178>
   273e4: 90000002     	adrp	x2, 0x27000 <syna_tcm_remove_device+0x78>
		00000000000273e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc538
   273e8: 91000042     	add	x2, x2, #0x0
		00000000000273e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc538
   273ec: aa1303e0     	mov	x0, x19
   273f0: 52820001     	mov	w1, #0x1000             // =4096
   273f4: 94000000     	bl	0x273f4 <syna_testing_pt05_show+0x1f8>
		00000000000273f4:  R_AARCH64_CALL26	scnprintf
   273f8: 14000011     	b	0x2743c <syna_testing_pt05_show+0x240>
   273fc: 394183e2     	ldrb	w2, [sp, #0x60]
   27400: 350004e2     	cbnz	w2, 0x2749c <syna_testing_pt05_show+0x2a0>
   27404: f94013f3     	ldr	x19, [sp, #0x20]
   27408: 94000000     	bl	0x27408 <syna_testing_pt05_show+0x20c>
		0000000000027408:  R_AARCH64_CALL26	syna_request_managed_device
   2740c: b4000540     	cbz	x0, 0x274b4 <syna_testing_pt05_show+0x2b8>
   27410: b4000073     	cbz	x19, 0x2741c <syna_testing_pt05_show+0x220>
   27414: aa1303e1     	mov	x1, x19
   27418: 94000000     	bl	0x27418 <syna_testing_pt05_show+0x21c>
		0000000000027418:  R_AARCH64_CALL26	devm_kfree
   2741c: 2a1503e0     	mov	w0, w21
   27420: 14000008     	b	0x27440 <syna_testing_pt05_show+0x244>
   27424: 90000002     	adrp	x2, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027424:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaa26
   27428: 91000042     	add	x2, x2, #0x0
		0000000000027428:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaa26
   2742c: aa1303e0     	mov	x0, x19
   27430: 52820001     	mov	w1, #0x1000             // =4096
   27434: 5280a003     	mov	w3, #0x500              // =1280
   27438: 94000000     	bl	0x27438 <syna_testing_pt05_show+0x23c>
		0000000000027438:  R_AARCH64_CALL26	scnprintf
   2743c: 93407c00     	sxtw	x0, w0
   27440: d5384108     	mrs	x8, SP_EL0
   27444: f9438908     	ldr	x8, [x8, #0x710]
   27448: f85f83a9     	ldur	x9, [x29, #-0x8]
   2744c: eb09011f     	cmp	x8, x9
   27450: 540003e1     	b.ne	0x274cc <syna_testing_pt05_show+0x2d0>
   27454: a94c4ff4     	ldp	x20, x19, [sp, #0xc0]
   27458: a94b57f6     	ldp	x22, x21, [sp, #0xb0]
   2745c: a94a5ff8     	ldp	x24, x23, [sp, #0xa0]
   27460: a94967fa     	ldp	x26, x25, [sp, #0x90]
   27464: a9486ffc     	ldp	x28, x27, [sp, #0x80]
   27468: a9477bfd     	ldp	x29, x30, [sp, #0x70]
   2746c: 910343ff     	add	sp, sp, #0xd0
   27470: d50323bf     	autiasp
   27474: d65f03c0     	ret
   27478: f9400682     	ldr	x2, [x20, #0x8]
   2747c: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		000000000002747c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc574
   27480: 91000000     	add	x0, x0, #0x0
		0000000000027480:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc574
   27484: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027484:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x424e
   27488: 91000021     	add	x1, x1, #0x0
		0000000000027488:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x424e
   2748c: 94000000     	bl	0x2748c <syna_testing_pt05_show+0x290>
		000000000002748c:  R_AARCH64_CALL26	_printk
   27490: 90000005     	adrp	x5, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027490:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78f8
   27494: 910000a5     	add	x5, x5, #0x0
		0000000000027494:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78f8
   27498: 17ffffa3     	b	0x27324 <syna_testing_pt05_show+0x128>
   2749c: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		000000000002749c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
   274a0: 91000000     	add	x0, x0, #0x0
		00000000000274a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
   274a4: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		00000000000274a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
   274a8: 91000021     	add	x1, x1, #0x0
		00000000000274a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
   274ac: 94000000     	bl	0x274ac <syna_testing_pt05_show+0x2b0>
		00000000000274ac:  R_AARCH64_CALL26	_printk
   274b0: 17ffffd5     	b	0x27404 <syna_testing_pt05_show+0x208>
   274b4: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		00000000000274b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   274b8: 91000000     	add	x0, x0, #0x0
		00000000000274b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   274bc: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		00000000000274bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   274c0: 91000021     	add	x1, x1, #0x0
		00000000000274c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   274c4: 94000000     	bl	0x274c4 <syna_testing_pt05_show+0x2c8>
		00000000000274c4:  R_AARCH64_CALL26	_printk
   274c8: 17ffffd5     	b	0x2741c <syna_testing_pt05_show+0x220>
   274cc: 94000000     	bl	0x274cc <syna_testing_pt05_show+0x2d0>
		00000000000274cc:  R_AARCH64_CALL26	__stack_chk_fail
