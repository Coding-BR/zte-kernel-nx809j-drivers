
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000152e8 <syna_testing_pt01_zte>:
   152e8: d503233f     	paciasp
   152ec: d10283ff     	sub	sp, sp, #0xa0
   152f0: a9067bfd     	stp	x29, x30, [sp, #0x60]
   152f4: f9003bf7     	str	x23, [sp, #0x70]
   152f8: a90857f6     	stp	x22, x21, [sp, #0x80]
   152fc: a9094ff4     	stp	x20, x19, [sp, #0x90]
   15300: 910183fd     	add	x29, sp, #0x60
   15304: d5384108     	mrs	x8, SP_EL0
   15308: aa0003f4     	mov	x20, x0
   1530c: f9438908     	ldr	x8, [x8, #0x710]
   15310: f81f83a8     	stur	x8, [x29, #-0x8]
   15314: f90007ff     	str	xzr, [sp, #0x8]
   15318: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   1531c: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   15320: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   15324: f90013ff     	str	xzr, [sp, #0x20]
   15328: d503201f     	nop
   1532c: 90000008     	adrp	x8, 0x15000 <syna_testing_pt05_zte+0x70>
		000000000001532c:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   15330: 5281b801     	mov	w1, #0xdc0              // =3520
   15334: 52820002     	mov	w2, #0x1000             // =4096
   15338: f9400100     	ldr	x0, [x8]
		0000000000015338:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   1533c: 94000000     	bl	0x1533c <syna_testing_pt01_zte+0x54>
		000000000001533c:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   15340: aa0003f3     	mov	x19, x0
   15344: b40011f3     	cbz	x19, 0x15580 <syna_testing_pt01_zte+0x298>
   15348: 94000000     	bl	0x15348 <syna_testing_pt01_zte+0x60>
		0000000000015348:  R_AARCH64_CALL26	syna_tcm_get_testing_0100
   1534c: b4000ac0     	cbz	x0, 0x154a4 <syna_testing_pt01_zte+0x1bc>
   15350: 910043f6     	add	x22, sp, #0x10
   15354: aa0003f5     	mov	x21, x0
   15358: 90000001     	adrp	x1, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015358:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
   1535c: 91000021     	add	x1, x1, #0x0
		000000000001535c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
   15360: 90000002     	adrp	x2, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015360:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x95e
   15364: 91000042     	add	x2, x2, #0x0
		0000000000015364:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x95e
   15368: 910042c0     	add	x0, x22, #0x10
   1536c: 390143ff     	strb	wzr, [sp, #0x50]
   15370: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   15374: 94000000     	bl	0x15374 <syna_testing_pt01_zte+0x8c>
		0000000000015374:  R_AARCH64_CALL26	__mutex_init
   15378: 910003e9     	mov	x9, sp
   1537c: f9006eb6     	str	x22, [x21, #0xd8]
   15380: 90000008     	adrp	x8, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015380:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x2cf8
   15384: 91000108     	add	x8, x8, #0x0
		0000000000015384:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x2cf8
   15388: f9001ea9     	str	x9, [x21, #0x38]
   1538c: f9400ea9     	ldr	x9, [x21, #0x18]
   15390: f9400280     	ldr	x0, [x20]
   15394: f90003e8     	str	x8, [sp]
   15398: 52800208     	mov	w8, #0x10               // =16
   1539c: aa1503e1     	mov	x1, x21
   153a0: 2a1f03e2     	mov	w2, wzr
   153a4: b9000be8     	str	w8, [sp, #0x8]
   153a8: b85fc130     	ldur	w16, [x9, #-0x4]
   153ac: 72895251     	movk	w17, #0x4a92
   153b0: 72b03811     	movk	w17, #0x81c0, lsl #16
   153b4: 6b11021f     	cmp	w16, w17
   153b8: 54000040     	b.eq	0x153c0 <syna_testing_pt01_zte+0xd8>
   153bc: d4304520     	brk	#0x8229
   153c0: d63f0120     	blr	x9
   153c4: 37f80980     	tbnz	w0, #0x1f, 0x154f4 <syna_testing_pt01_zte+0x20c>
   153c8: 394042a8     	ldrb	w8, [x21, #0x10]
   153cc: 90000009     	adrp	x9, 0x15000 <syna_testing_pt05_zte+0x70>
		00000000000153cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7718
   153d0: 91000129     	add	x9, x9, #0x0
		00000000000153d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7718
   153d4: 7100011f     	cmp	w8, #0x0
   153d8: 90000008     	adrp	x8, 0x15000 <syna_testing_pt05_zte+0x70>
		00000000000153d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87ff
   153dc: 91000108     	add	x8, x8, #0x0
		00000000000153dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87ff
   153e0: 9a891105     	csel	x5, x8, x9, ne
   153e4: f94006a3     	ldr	x3, [x21, #0x8]
   153e8: b94002a4     	ldr	w4, [x21]
   153ec: 90000002     	adrp	x2, 0x15000 <syna_testing_pt05_zte+0x70>
		00000000000153ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af3
   153f0: 91000042     	add	x2, x2, #0x0
		00000000000153f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af3
   153f4: aa1303e0     	mov	x0, x19
   153f8: 52820001     	mov	w1, #0x1000             // =4096
   153fc: 94000000     	bl	0x153fc <syna_testing_pt01_zte+0x114>
		00000000000153fc:  R_AARCH64_CALL26	scnprintf
   15400: b9401fe8     	ldr	w8, [sp, #0x1c]
   15404: 2a0003f4     	mov	w20, w0
   15408: 34000308     	cbz	w8, 0x15468 <syna_testing_pt01_zte+0x180>
   1540c: 2a1f03f6     	mov	w22, wzr
   15410: 52820017     	mov	w23, #0x1000            // =4096
   15414: 90000015     	adrp	x21, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015414:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8804
   15418: 910002b5     	add	x21, x21, #0x0
		0000000000015418:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8804
   1541c: f9400be8     	ldr	x8, [sp, #0x10]
   15420: 2a1403e9     	mov	w9, w20
   15424: aa1503e2     	mov	x2, x21
   15428: cb0902e1     	sub	x1, x23, x9
   1542c: 8b090260     	add	x0, x19, x9
   15430: 3876c903     	ldrb	w3, [x8, w22, sxtw]
   15434: 94000000     	bl	0x15434 <syna_testing_pt01_zte+0x14c>
		0000000000015434:  R_AARCH64_CALL26	scnprintf
   15438: b9401fe8     	ldr	w8, [sp, #0x1c]
   1543c: 110006d6     	add	w22, w22, #0x1
   15440: 0b140014     	add	w20, w0, w20
   15444: 6b0802df     	cmp	w22, w8
   15448: 54fffea3     	b.lo	0x1541c <syna_testing_pt01_zte+0x134>
   1544c: 52820008     	mov	w8, #0x1000             // =4096
   15450: 90000002     	adrp	x2, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015450:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a13
   15454: 91000042     	add	x2, x2, #0x0
		0000000000015454:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a13
   15458: cb140101     	sub	x1, x8, x20
   1545c: 8b140260     	add	x0, x19, x20
   15460: 94000000     	bl	0x15460 <syna_testing_pt01_zte+0x178>
		0000000000015460:  R_AARCH64_CALL26	scnprintf
   15464: 0b140014     	add	w20, w0, w20
   15468: aa1303e0     	mov	x0, x19
   1546c: 94000000     	bl	0x1546c <syna_testing_pt01_zte+0x184>
		000000000001546c:  R_AARCH64_CALL26	tpd_copy_to_tp_firmware_data
   15470: 394143e2     	ldrb	w2, [sp, #0x50]
   15474: 35000522     	cbnz	w2, 0x15518 <syna_testing_pt01_zte+0x230>
   15478: f9400bf5     	ldr	x21, [sp, #0x10]
   1547c: 94000000     	bl	0x1547c <syna_testing_pt01_zte+0x194>
		000000000001547c:  R_AARCH64_CALL26	syna_request_managed_device
   15480: b4000580     	cbz	x0, 0x15530 <syna_testing_pt01_zte+0x248>
   15484: b4000075     	cbz	x21, 0x15490 <syna_testing_pt01_zte+0x1a8>
   15488: aa1503e1     	mov	x1, x21
   1548c: 94000000     	bl	0x1548c <syna_testing_pt01_zte+0x1a4>
		000000000001548c:  R_AARCH64_CALL26	devm_kfree
   15490: aa1303e0     	mov	x0, x19
   15494: f9000fff     	str	xzr, [sp, #0x18]
   15498: 390143ff     	strb	wzr, [sp, #0x50]
   1549c: 94000000     	bl	0x1549c <syna_testing_pt01_zte+0x1b4>
		000000000001549c:  R_AARCH64_CALL26	kfree
   154a0: 14000008     	b	0x154c0 <syna_testing_pt01_zte+0x1d8>
   154a4: 90000002     	adrp	x2, 0x15000 <syna_testing_pt05_zte+0x70>
		00000000000154a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa791
   154a8: 91000042     	add	x2, x2, #0x0
		00000000000154a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa791
   154ac: aa1303e0     	mov	x0, x19
   154b0: 52820001     	mov	w1, #0x1000             // =4096
   154b4: 52802003     	mov	w3, #0x100              // =256
   154b8: 94000000     	bl	0x154b8 <syna_testing_pt01_zte+0x1d0>
		00000000000154b8:  R_AARCH64_CALL26	scnprintf
   154bc: 2a0003f4     	mov	w20, w0
   154c0: d5384108     	mrs	x8, SP_EL0
   154c4: f9438908     	ldr	x8, [x8, #0x710]
   154c8: f85f83a9     	ldur	x9, [x29, #-0x8]
   154cc: eb09011f     	cmp	x8, x9
   154d0: 540003c1     	b.ne	0x15548 <syna_testing_pt01_zte+0x260>
   154d4: 2a1403e0     	mov	w0, w20
   154d8: a9494ff4     	ldp	x20, x19, [sp, #0x90]
   154dc: f9403bf7     	ldr	x23, [sp, #0x70]
   154e0: a94857f6     	ldp	x22, x21, [sp, #0x80]
   154e4: a9467bfd     	ldp	x29, x30, [sp, #0x60]
   154e8: 910283ff     	add	sp, sp, #0xa0
   154ec: d50323bf     	autiasp
   154f0: d65f03c0     	ret
   154f4: f94006a2     	ldr	x2, [x21, #0x8]
   154f8: 90000000     	adrp	x0, 0x15000 <syna_testing_pt05_zte+0x70>
		00000000000154f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc281
   154fc: 91000000     	add	x0, x0, #0x0
		00000000000154fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc281
   15500: 90000001     	adrp	x1, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015500:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x927
   15504: 91000021     	add	x1, x1, #0x0
		0000000000015504:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x927
   15508: 94000000     	bl	0x15508 <syna_testing_pt01_zte+0x220>
		0000000000015508:  R_AARCH64_CALL26	_printk
   1550c: 90000005     	adrp	x5, 0x15000 <syna_testing_pt05_zte+0x70>
		000000000001550c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7718
   15510: 910000a5     	add	x5, x5, #0x0
		0000000000015510:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7718
   15514: 17ffffb4     	b	0x153e4 <syna_testing_pt01_zte+0xfc>
   15518: 90000000     	adrp	x0, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015518:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   1551c: 91000000     	add	x0, x0, #0x0
		000000000001551c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   15520: 90000001     	adrp	x1, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015520:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   15524: 91000021     	add	x1, x1, #0x0
		0000000000015524:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   15528: 94000000     	bl	0x15528 <syna_testing_pt01_zte+0x240>
		0000000000015528:  R_AARCH64_CALL26	_printk
   1552c: 17ffffd3     	b	0x15478 <syna_testing_pt01_zte+0x190>
   15530: 90000000     	adrp	x0, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015530:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   15534: 91000000     	add	x0, x0, #0x0
		0000000000015534:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   15538: 90000001     	adrp	x1, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015538:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1553c: 91000021     	add	x1, x1, #0x0
		000000000001553c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   15540: 94000000     	bl	0x15540 <syna_testing_pt01_zte+0x258>
		0000000000015540:  R_AARCH64_CALL26	_printk
   15544: 17ffffd3     	b	0x15490 <syna_testing_pt01_zte+0x1a8>
   15548: 94000000     	bl	0x15548 <syna_testing_pt01_zte+0x260>
		0000000000015548:  R_AARCH64_CALL26	__stack_chk_fail
   1554c: 90000008     	adrp	x8, 0x15000 <syna_testing_pt05_zte+0x70>
		000000000001554c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x258
   15550: 91000108     	add	x8, x8, #0x0
		0000000000015550:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x258
   15554: d5384115     	mrs	x21, SP_EL0
   15558: f9402ab6     	ldr	x22, [x21, #0x50]
   1555c: f9002aa8     	str	x8, [x21, #0x50]
   15560: 90000008     	adrp	x8, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015560:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   15564: f9400100     	ldr	x0, [x8]
		0000000000015564:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   15568: 5281b801     	mov	w1, #0xdc0              // =3520
   1556c: 52820002     	mov	w2, #0x1000             // =4096
   15570: 94000000     	bl	0x15570 <syna_testing_pt01_zte+0x288>
		0000000000015570:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   15574: aa0003f3     	mov	x19, x0
   15578: f9002ab6     	str	x22, [x21, #0x50]
   1557c: b5ffee73     	cbnz	x19, 0x15348 <syna_testing_pt01_zte+0x60>
   15580: 90000000     	adrp	x0, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015580:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf34
   15584: 91000000     	add	x0, x0, #0x0
		0000000000015584:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf34
   15588: 90000001     	adrp	x1, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015588:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x927
   1558c: 91000021     	add	x1, x1, #0x0
		000000000001558c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x927
   15590: 94000000     	bl	0x15590 <syna_testing_pt01_zte+0x2a8>
		0000000000015590:  R_AARCH64_CALL26	_printk
   15594: 12800174     	mov	w20, #-0xc              // =-12
   15598: 17ffffca     	b	0x154c0 <syna_testing_pt01_zte+0x1d8>
