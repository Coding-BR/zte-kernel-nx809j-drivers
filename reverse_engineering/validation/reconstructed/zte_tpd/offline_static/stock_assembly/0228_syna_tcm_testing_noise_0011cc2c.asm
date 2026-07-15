
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000163a4 <syna_tcm_testing_noise>:
   163a4: d503233f     	paciasp
   163a8: d10243ff     	sub	sp, sp, #0x90
   163ac: a9057bfd     	stp	x29, x30, [sp, #0x50]
   163b0: f90033f7     	str	x23, [sp, #0x60]
   163b4: a90757f6     	stp	x22, x21, [sp, #0x70]
   163b8: a9084ff4     	stp	x20, x19, [sp, #0x80]
   163bc: 910143fd     	add	x29, sp, #0x50
   163c0: d5384108     	mrs	x8, SP_EL0
   163c4: f9438908     	ldr	x8, [x8, #0x710]
   163c8: f81f83a8     	stur	x8, [x29, #-0x8]
   163cc: 12801408     	mov	w8, #-0xa1              // =-161
   163d0: b4000040     	cbz	x0, 0x163d8 <syna_tcm_testing_noise+0x34>
   163d4: b50001c1     	cbnz	x1, 0x1640c <syna_tcm_testing_noise+0x68>
   163d8: d5384109     	mrs	x9, SP_EL0
   163dc: f9438929     	ldr	x9, [x9, #0x710]
   163e0: f85f83aa     	ldur	x10, [x29, #-0x8]
   163e4: eb0a013f     	cmp	x9, x10
   163e8: 54000fc1     	b.ne	0x165e0 <syna_tcm_testing_noise+0x23c>
   163ec: 2a0803e0     	mov	w0, w8
   163f0: a9484ff4     	ldp	x20, x19, [sp, #0x80]
   163f4: f94033f7     	ldr	x23, [sp, #0x60]
   163f8: a94757f6     	ldp	x22, x21, [sp, #0x70]
   163fc: a9457bfd     	ldp	x29, x30, [sp, #0x50]
   16400: 910243ff     	add	sp, sp, #0x90
   16404: d50323bf     	autiasp
   16408: d65f03c0     	ret
   1640c: 910003e8     	mov	x8, sp
   16410: 2a0203f7     	mov	w23, w2
   16414: aa0103f6     	mov	x22, x1
   16418: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016418:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
   1641c: 91000021     	add	x1, x1, #0x0
		000000000001641c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
   16420: 90000002     	adrp	x2, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016420:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x95f
   16424: 91000042     	add	x2, x2, #0x0
		0000000000016424:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x95f
   16428: aa0003f5     	mov	x21, x0
   1642c: 91004100     	add	x0, x8, #0x10
   16430: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   16434: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   16438: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   1643c: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   16440: f90003ff     	str	xzr, [sp]
   16444: 94000000     	bl	0x16444 <syna_tcm_testing_noise+0xa0>
		0000000000016444:  R_AARCH64_CALL26	__mutex_init
   16448: 2943ceb4     	ldp	w20, w19, [x21, #0x1c]
   1644c: 910003e2     	mov	x2, sp
   16450: aa1503e0     	mov	x0, x21
   16454: 52800141     	mov	w1, #0xa                // =10
   16458: 2a1f03e3     	mov	w3, wzr
   1645c: 94000000     	bl	0x1645c <syna_tcm_testing_noise+0xb8>
		000000000001645c:  R_AARCH64_CALL26	syna_tcm_run_production_test
   16460: 36f80180     	tbz	w0, #0x1f, 0x16490 <syna_tcm_testing_noise+0xec>
   16464: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016464:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa0f2
   16468: 91000000     	add	x0, x0, #0x0
		0000000000016468:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa0f2
   1646c: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		000000000001646c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x477e
   16470: 91000021     	add	x1, x1, #0x0
		0000000000016470:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x477e
   16474: 52800142     	mov	w2, #0xa                // =10
   16478: 94000000     	bl	0x16478 <syna_tcm_testing_noise+0xd4>
		0000000000016478:  R_AARCH64_CALL26	_printk
   1647c: 390042df     	strb	wzr, [x22, #0x10]
   16480: 12801454     	mov	w20, #-0xa3             // =-163
   16484: 90000002     	adrp	x2, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016484:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2200
   16488: 91000042     	add	x2, x2, #0x0
		0000000000016488:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2200
   1648c: 1400003a     	b	0x16574 <syna_tcm_testing_noise+0x1d0>
   16490: f9406ec8     	ldr	x8, [x22, #0xd8]
   16494: aa1603e9     	mov	x9, x22
   16498: b40000e8     	cbz	x8, 0x164b4 <syna_tcm_testing_noise+0x110>
   1649c: 910003e1     	mov	x1, sp
   164a0: 2a0003f5     	mov	w21, w0
   164a4: aa0803e0     	mov	x0, x8
   164a8: 9400004f     	bl	0x165e4 <syna_tcm_buf_copy>
   164ac: aa1603e9     	mov	x9, x22
   164b0: 2a1503e0     	mov	w0, w21
   164b4: 360000f7     	tbz	w23, #0x0, 0x164d0 <syna_tcm_testing_noise+0x12c>
   164b8: 52800028     	mov	w8, #0x1                // =1
   164bc: 2a0003f4     	mov	w20, w0
   164c0: 90000002     	adrp	x2, 0x16000 <syna_testing_pt05_show+0x21c>
		00000000000164c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x775d
   164c4: 91000042     	add	x2, x2, #0x0
		00000000000164c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x775d
   164c8: 39004128     	strb	w8, [x9, #0x10]
   164cc: 1400002a     	b	0x16574 <syna_tcm_testing_noise+0x1d0>
   164d0: f9401d28     	ldr	x8, [x9, #0x38]
   164d4: b5000088     	cbnz	x8, 0x164e4 <syna_tcm_testing_noise+0x140>
   164d8: 2a0003f7     	mov	w23, w0
   164dc: 2a1f03f5     	mov	w21, wzr
   164e0: 1400000d     	b	0x16514 <syna_tcm_testing_noise+0x170>
   164e4: 2a0003f7     	mov	w23, w0
   164e8: f94003e0     	ldr	x0, [sp]
   164ec: b9400fe1     	ldr	w1, [sp, #0xc]
   164f0: f9400105     	ldr	x5, [x8]
   164f4: b9400906     	ldr	w6, [x8, #0x8]
   164f8: 90000004     	adrp	x4, 0x16000 <syna_testing_pt05_show+0x21c>
		00000000000164f8:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x169d4
   164fc: 91000084     	add	x4, x4, #0x0
		00000000000164fc:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x169d4
   16500: 2a1403e2     	mov	w2, w20
   16504: 2a1303e3     	mov	w3, w19
   16508: 940000d7     	bl	0x16864 <syna_tcm_testing_check_frame_data>
   1650c: aa1603e9     	mov	x9, x22
   16510: 2a0003f5     	mov	w21, w0
   16514: f9402128     	ldr	x8, [x9, #0x40]
   16518: b5000068     	cbnz	x8, 0x16524 <syna_tcm_testing_noise+0x180>
   1651c: 2a1f03e0     	mov	w0, wzr
   16520: 1400000b     	b	0x1654c <syna_tcm_testing_noise+0x1a8>
   16524: f94003e0     	ldr	x0, [sp]
   16528: b9400fe1     	ldr	w1, [sp, #0xc]
   1652c: 90000004     	adrp	x4, 0x16000 <syna_testing_pt05_show+0x21c>
		000000000001652c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x16a3c
   16530: 91000084     	add	x4, x4, #0x0
		0000000000016530:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x16a3c
   16534: f9400105     	ldr	x5, [x8]
   16538: b9400906     	ldr	w6, [x8, #0x8]
   1653c: 2a1403e2     	mov	w2, w20
   16540: 2a1303e3     	mov	w3, w19
   16544: 940000c8     	bl	0x16864 <syna_tcm_testing_check_frame_data>
   16548: aa1603e9     	mov	x9, x22
   1654c: 0a0002a8     	and	w8, w21, w0
   16550: 1280142a     	mov	w10, #-0xa2             // =-162
   16554: 9000000b     	adrp	x11, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016554:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2200
   16558: 9100016b     	add	x11, x11, #0x0
		0000000000016558:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2200
   1655c: 72000108     	ands	w8, w8, #0x1
   16560: 39004128     	strb	w8, [x9, #0x10]
   16564: 90000008     	adrp	x8, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016564:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x775d
   16568: 91000108     	add	x8, x8, #0x0
		0000000000016568:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x775d
   1656c: 1a8a12f4     	csel	w20, w23, w10, ne
   16570: 9a8b1102     	csel	x2, x8, x11, ne
   16574: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016574:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0a
   16578: 91000000     	add	x0, x0, #0x0
		0000000000016578:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0a
   1657c: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		000000000001657c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x477e
   16580: 91000021     	add	x1, x1, #0x0
		0000000000016580:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x477e
   16584: 94000000     	bl	0x16584 <syna_tcm_testing_noise+0x1e0>
		0000000000016584:  R_AARCH64_CALL26	_printk
   16588: 394103e2     	ldrb	w2, [sp, #0x40]
   1658c: 35000122     	cbnz	w2, 0x165b0 <syna_tcm_testing_noise+0x20c>
   16590: f94003f3     	ldr	x19, [sp]
   16594: 94000000     	bl	0x16594 <syna_tcm_testing_noise+0x1f0>
		0000000000016594:  R_AARCH64_CALL26	syna_request_managed_device
   16598: b4000180     	cbz	x0, 0x165c8 <syna_tcm_testing_noise+0x224>
   1659c: b4000073     	cbz	x19, 0x165a8 <syna_tcm_testing_noise+0x204>
   165a0: aa1303e1     	mov	x1, x19
   165a4: 94000000     	bl	0x165a4 <syna_tcm_testing_noise+0x200>
		00000000000165a4:  R_AARCH64_CALL26	devm_kfree
   165a8: 2a1403e8     	mov	w8, w20
   165ac: 17ffff8b     	b	0x163d8 <syna_tcm_testing_noise+0x34>
   165b0: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		00000000000165b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   165b4: 91000000     	add	x0, x0, #0x0
		00000000000165b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   165b8: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		00000000000165b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   165bc: 91000021     	add	x1, x1, #0x0
		00000000000165bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   165c0: 94000000     	bl	0x165c0 <syna_tcm_testing_noise+0x21c>
		00000000000165c0:  R_AARCH64_CALL26	_printk
   165c4: 17fffff3     	b	0x16590 <syna_tcm_testing_noise+0x1ec>
   165c8: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		00000000000165c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   165cc: 91000000     	add	x0, x0, #0x0
		00000000000165cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   165d0: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		00000000000165d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   165d4: 91000021     	add	x1, x1, #0x0
		00000000000165d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   165d8: 94000000     	bl	0x165d8 <syna_tcm_testing_noise+0x234>
		00000000000165d8:  R_AARCH64_CALL26	_printk
   165dc: 17fffff3     	b	0x165a8 <syna_tcm_testing_noise+0x204>
   165e0: 94000000     	bl	0x165e0 <syna_tcm_testing_noise+0x23c>
		00000000000165e0:  R_AARCH64_CALL26	__stack_chk_fail
