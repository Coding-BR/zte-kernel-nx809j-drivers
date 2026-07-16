
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001444 <goodixfp_drm_get_pannel>:
    1444: d503233f     	paciasp
    1448: d10243ff     	sub	sp, sp, #0x90
    144c: a9067bfd     	stp	x29, x30, [sp, #0x60]
    1450: a90757f6     	stp	x22, x21, [sp, #0x70]
    1454: a9084ff4     	stp	x20, x19, [sp, #0x80]
    1458: 910183fd     	add	x29, sp, #0x60
    145c: d5384108     	mrs	x8, SP_EL0
    1460: f9438908     	ldr	x8, [x8, #0x710]
    1464: f81f83a8     	stur	x8, [x29, #-0x8]
    1468: b50000c0     	cbnz	x0, 0x1480 <goodixfp_drm_get_pannel+0x3c>
    146c: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		000000000000146c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x948
    1470: 91000000     	add	x0, x0, #0x0
		0000000000001470:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x948
    1474: 94000000     	bl	0x1474 <goodixfp_drm_get_pannel+0x30>
		0000000000001474:  R_AARCH64_CALL26	_printk
    1478: 12800253     	mov	w19, #-0x13             // =-19
    147c: 14000039     	b	0x1560 <goodixfp_drm_get_pannel+0x11c>
    1480: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001480:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf63
    1484: 91000021     	add	x1, x1, #0x0
		0000000000001484:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf63
    1488: aa1f03e2     	mov	x2, xzr
    148c: aa0003f4     	mov	x20, x0
    1490: 94000000     	bl	0x1490 <goodixfp_drm_get_pannel+0x4c>
		0000000000001490:  R_AARCH64_CALL26	of_count_phandle_with_args
    1494: 2a0003f3     	mov	w19, w0
    1498: 7100041f     	cmp	w0, #0x1
    149c: 5400008a     	b.ge	0x14ac <goodixfp_drm_get_pannel+0x68>
    14a0: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		00000000000014a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x86a
    14a4: 91000000     	add	x0, x0, #0x0
		00000000000014a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x86a
    14a8: 1400001b     	b	0x1514 <goodixfp_drm_get_pannel+0xd0>
    14ac: 2a1f03f5     	mov	w21, wzr
    14b0: 90000016     	adrp	x22, 0x1000 <gf_probe+0x2cc>
		00000000000014b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf63
    14b4: 910002d6     	add	x22, x22, #0x0
		00000000000014b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf63
    14b8: 910023e5     	add	x5, sp, #0x8
    14bc: aa1403e0     	mov	x0, x20
    14c0: aa1603e1     	mov	x1, x22
    14c4: aa1f03e2     	mov	x2, xzr
    14c8: 2a1f03e3     	mov	w3, wzr
    14cc: 2a1503e4     	mov	w4, w21
    14d0: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    14d4: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    14d8: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    14dc: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    14e0: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    14e4: 94000000     	bl	0x14e4 <goodixfp_drm_get_pannel+0xa0>
		00000000000014e4:  R_AARCH64_CALL26	__of_parse_phandle_with_args
    14e8: f94007e8     	ldr	x8, [sp, #0x8]
    14ec: 7100001f     	cmp	w0, #0x0
    14f0: 9a9f0100     	csel	x0, x8, xzr, eq
    14f4: 94000000     	bl	0x14f4 <goodixfp_drm_get_pannel+0xb0>
		00000000000014f4:  R_AARCH64_CALL26	of_drm_find_panel
    14f8: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    14fc: 54000149     	b.ls	0x1524 <goodixfp_drm_get_pannel+0xe0>
    1500: 110006b5     	add	w21, w21, #0x1
    1504: 6b15027f     	cmp	w19, w21
    1508: 54fffd81     	b.ne	0x14b8 <goodixfp_drm_get_pannel+0x74>
    150c: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		000000000000150c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x632
    1510: 91000000     	add	x0, x0, #0x0
		0000000000001510:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x632
    1514: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001514:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x279
    1518: 91000021     	add	x1, x1, #0x0
		0000000000001518:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x279
    151c: 94000000     	bl	0x151c <goodixfp_drm_get_pannel+0xd8>
		000000000000151c:  R_AARCH64_CALL26	_printk
    1520: 14000010     	b	0x1560 <goodixfp_drm_get_pannel+0x11c>
    1524: 90000008     	adrp	x8, 0x1000 <gf_probe+0x2cc>
		0000000000001524:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x892
    1528: 91000108     	add	x8, x8, #0x0
		0000000000001528:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x892
    152c: 90000013     	adrp	x19, 0x1000 <gf_probe+0x2cc>
		000000000000152c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x279
    1530: 91000273     	add	x19, x19, #0x0
		0000000000001530:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x279
    1534: aa0003f4     	mov	x20, x0
    1538: aa0803e0     	mov	x0, x8
    153c: aa1303e1     	mov	x1, x19
    1540: 94000000     	bl	0x1540 <goodixfp_drm_get_pannel+0xfc>
		0000000000001540:  R_AARCH64_CALL26	_printk
    1544: 90000008     	adrp	x8, 0x1000 <gf_probe+0x2cc>
		0000000000001544:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e8
    1548: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001548:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11a7
    154c: 91000000     	add	x0, x0, #0x0
		000000000000154c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11a7
    1550: aa1303e1     	mov	x1, x19
    1554: f9000114     	str	x20, [x8]
		0000000000001554:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
    1558: 94000000     	bl	0x1558 <goodixfp_drm_get_pannel+0x114>
		0000000000001558:  R_AARCH64_CALL26	_printk
    155c: 2a1f03f3     	mov	w19, wzr
    1560: d5384108     	mrs	x8, SP_EL0
    1564: f9438908     	ldr	x8, [x8, #0x710]
    1568: f85f83a9     	ldur	x9, [x29, #-0x8]
    156c: eb09011f     	cmp	x8, x9
    1570: 54000101     	b.ne	0x1590 <goodixfp_drm_get_pannel+0x14c>
    1574: 2a1303e0     	mov	w0, w19
    1578: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    157c: a94757f6     	ldp	x22, x21, [sp, #0x70]
    1580: a9467bfd     	ldp	x29, x30, [sp, #0x60]
    1584: 910243ff     	add	sp, sp, #0x90
    1588: d50323bf     	autiasp
    158c: d65f03c0     	ret
    1590: 94000000     	bl	0x1590 <goodixfp_drm_get_pannel+0x14c>
		0000000000001590:  R_AARCH64_CALL26	__stack_chk_fail
