
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000017274 <syna_tcm_testing_trx_trx_short>:
   17274: d503233f     	paciasp
   17278: d10203ff     	sub	sp, sp, #0x80
   1727c: a9057bfd     	stp	x29, x30, [sp, #0x50]
   17280: f90033f5     	str	x21, [sp, #0x60]
   17284: a9074ff4     	stp	x20, x19, [sp, #0x70]
   17288: 910143fd     	add	x29, sp, #0x50
   1728c: d5384108     	mrs	x8, SP_EL0
   17290: f9438908     	ldr	x8, [x8, #0x710]
   17294: f81f83a8     	stur	x8, [x29, #-0x8]
   17298: 12801408     	mov	w8, #-0xa1              // =-161
   1729c: b4000040     	cbz	x0, 0x172a4 <syna_tcm_testing_trx_trx_short+0x30>
   172a0: b50001a1     	cbnz	x1, 0x172d4 <syna_tcm_testing_trx_trx_short+0x60>
   172a4: d5384109     	mrs	x9, SP_EL0
   172a8: f9438929     	ldr	x9, [x9, #0x710]
   172ac: f85f83aa     	ldur	x10, [x29, #-0x8]
   172b0: eb0a013f     	cmp	x9, x10
   172b4: 54000d21     	b.ne	0x17458 <syna_tcm_testing_trx_trx_short+0x1e4>
   172b8: 2a0803e0     	mov	w0, w8
   172bc: a9474ff4     	ldp	x20, x19, [sp, #0x70]
   172c0: f94033f5     	ldr	x21, [sp, #0x60]
   172c4: a9457bfd     	ldp	x29, x30, [sp, #0x50]
   172c8: 910203ff     	add	sp, sp, #0x80
   172cc: d50323bf     	autiasp
   172d0: d65f03c0     	ret
   172d4: 910003e8     	mov	x8, sp
   172d8: 2a0203f5     	mov	w21, w2
   172dc: aa0103f4     	mov	x20, x1
   172e0: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		00000000000172e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
   172e4: 91000021     	add	x1, x1, #0x0
		00000000000172e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
   172e8: 90000002     	adrp	x2, 0x17000 <syna_tcm_testing_config_id+0xdc>
		00000000000172e8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x960
   172ec: 91000042     	add	x2, x2, #0x0
		00000000000172ec:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x960
   172f0: aa0003f3     	mov	x19, x0
   172f4: 91004100     	add	x0, x8, #0x10
   172f8: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   172fc: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   17300: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   17304: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   17308: f90003ff     	str	xzr, [sp]
   1730c: 94000000     	bl	0x1730c <syna_tcm_testing_trx_trx_short+0x98>
		000000000001730c:  R_AARCH64_CALL26	__mutex_init
   17310: 910003e2     	mov	x2, sp
   17314: aa1303e0     	mov	x0, x19
   17318: 52800021     	mov	w1, #0x1                // =1
   1731c: 2a1f03e3     	mov	w3, wzr
   17320: 94000000     	bl	0x17320 <syna_tcm_testing_trx_trx_short+0xac>
		0000000000017320:  R_AARCH64_CALL26	syna_tcm_run_production_test
   17324: 36f80180     	tbz	w0, #0x1f, 0x17354 <syna_tcm_testing_trx_trx_short+0xe0>
   17328: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa0f2
   1732c: 91000000     	add	x0, x0, #0x0
		000000000001732c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa0f2
   17330: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8394
   17334: 91000021     	add	x1, x1, #0x0
		0000000000017334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8394
   17338: 52800022     	mov	w2, #0x1                // =1
   1733c: 94000000     	bl	0x1733c <syna_tcm_testing_trx_trx_short+0xc8>
		000000000001733c:  R_AARCH64_CALL26	_printk
   17340: 3900429f     	strb	wzr, [x20, #0x10]
   17344: 12801454     	mov	w20, #-0xa3             // =-163
   17348: 90000002     	adrp	x2, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017348:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2200
   1734c: 91000042     	add	x2, x2, #0x0
		000000000001734c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2200
   17350: 14000027     	b	0x173ec <syna_tcm_testing_trx_trx_short+0x178>
   17354: f9406e88     	ldr	x8, [x20, #0xd8]
   17358: aa1403e9     	mov	x9, x20
   1735c: b40000e8     	cbz	x8, 0x17378 <syna_tcm_testing_trx_trx_short+0x104>
   17360: 910003e1     	mov	x1, sp
   17364: 2a0003f3     	mov	w19, w0
   17368: aa0803e0     	mov	x0, x8
   1736c: 9400003c     	bl	0x1745c <syna_tcm_buf_copy>
   17370: aa1403e9     	mov	x9, x20
   17374: 2a1303e0     	mov	w0, w19
   17378: 360000f5     	tbz	w21, #0x0, 0x17394 <syna_tcm_testing_trx_trx_short+0x120>
   1737c: 52800028     	mov	w8, #0x1                // =1
   17380: 2a0003f4     	mov	w20, w0
   17384: 90000002     	adrp	x2, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017384:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x775d
   17388: 91000042     	add	x2, x2, #0x0
		0000000000017388:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x775d
   1738c: 39004128     	strb	w8, [x9, #0x10]
   17390: 14000017     	b	0x173ec <syna_tcm_testing_trx_trx_short+0x178>
   17394: f9401d2a     	ldr	x10, [x9, #0x38]
   17398: b500008a     	cbnz	x10, 0x173a8 <syna_tcm_testing_trx_trx_short+0x134>
   1739c: 3900413f     	strb	wzr, [x9, #0x10]
   173a0: 12801434     	mov	w20, #-0xa2             // =-162
   173a4: 17ffffe9     	b	0x17348 <syna_tcm_testing_trx_trx_short+0xd4>
   173a8: f94003e8     	ldr	x8, [sp]
   173ac: b9400fe1     	ldr	w1, [sp, #0xc]
   173b0: 2a0003f4     	mov	w20, w0
   173b4: f9400142     	ldr	x2, [x10]
   173b8: b9400943     	ldr	w3, [x10, #0x8]
   173bc: aa0903f3     	mov	x19, x9
   173c0: aa0803e0     	mov	x0, x8
   173c4: 940000c6     	bl	0x176dc <syna_tcm_testing_check_array_data>
   173c8: 12801428     	mov	w8, #-0xa2              // =-162
   173cc: 7200000a     	ands	w10, w0, #0x1
   173d0: 90000009     	adrp	x9, 0x17000 <syna_tcm_testing_config_id+0xdc>
		00000000000173d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2200
   173d4: 91000129     	add	x9, x9, #0x0
		00000000000173d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2200
   173d8: 1a881294     	csel	w20, w20, w8, ne
   173dc: 90000008     	adrp	x8, 0x17000 <syna_tcm_testing_config_id+0xdc>
		00000000000173dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x775d
   173e0: 91000108     	add	x8, x8, #0x0
		00000000000173e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x775d
   173e4: 3900426a     	strb	w10, [x19, #0x10]
   173e8: 9a891102     	csel	x2, x8, x9, ne
   173ec: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		00000000000173ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0a
   173f0: 91000000     	add	x0, x0, #0x0
		00000000000173f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0a
   173f4: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		00000000000173f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8394
   173f8: 91000021     	add	x1, x1, #0x0
		00000000000173f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8394
   173fc: 94000000     	bl	0x173fc <syna_tcm_testing_trx_trx_short+0x188>
		00000000000173fc:  R_AARCH64_CALL26	_printk
   17400: 394103e2     	ldrb	w2, [sp, #0x40]
   17404: 35000122     	cbnz	w2, 0x17428 <syna_tcm_testing_trx_trx_short+0x1b4>
   17408: f94003f3     	ldr	x19, [sp]
   1740c: 94000000     	bl	0x1740c <syna_tcm_testing_trx_trx_short+0x198>
		000000000001740c:  R_AARCH64_CALL26	syna_request_managed_device
   17410: b4000180     	cbz	x0, 0x17440 <syna_tcm_testing_trx_trx_short+0x1cc>
   17414: b4000073     	cbz	x19, 0x17420 <syna_tcm_testing_trx_trx_short+0x1ac>
   17418: aa1303e1     	mov	x1, x19
   1741c: 94000000     	bl	0x1741c <syna_tcm_testing_trx_trx_short+0x1a8>
		000000000001741c:  R_AARCH64_CALL26	devm_kfree
   17420: 2a1403e8     	mov	w8, w20
   17424: 17ffffa0     	b	0x172a4 <syna_tcm_testing_trx_trx_short+0x30>
   17428: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017428:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   1742c: 91000000     	add	x0, x0, #0x0
		000000000001742c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   17430: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017430:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   17434: 91000021     	add	x1, x1, #0x0
		0000000000017434:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   17438: 94000000     	bl	0x17438 <syna_tcm_testing_trx_trx_short+0x1c4>
		0000000000017438:  R_AARCH64_CALL26	_printk
   1743c: 17fffff3     	b	0x17408 <syna_tcm_testing_trx_trx_short+0x194>
   17440: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017440:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   17444: 91000000     	add	x0, x0, #0x0
		0000000000017444:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   17448: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017448:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1744c: 91000021     	add	x1, x1, #0x0
		000000000001744c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   17450: 94000000     	bl	0x17450 <syna_tcm_testing_trx_trx_short+0x1dc>
		0000000000017450:  R_AARCH64_CALL26	_printk
   17454: 17fffff3     	b	0x17420 <syna_tcm_testing_trx_trx_short+0x1ac>
   17458: 94000000     	bl	0x17458 <syna_tcm_testing_trx_trx_short+0x1e4>
		0000000000017458:  R_AARCH64_CALL26	__stack_chk_fail
