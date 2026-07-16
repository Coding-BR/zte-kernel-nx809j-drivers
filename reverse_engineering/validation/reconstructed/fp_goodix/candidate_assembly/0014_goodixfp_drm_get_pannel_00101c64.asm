
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001438 <goodixfp_drm_get_pannel>:
    1438: d503233f     	paciasp
    143c: d10243ff     	sub	sp, sp, #0x90
    1440: a9067bfd     	stp	x29, x30, [sp, #0x60]
    1444: a90757f6     	stp	x22, x21, [sp, #0x70]
    1448: a9084ff4     	stp	x20, x19, [sp, #0x80]
    144c: 910183fd     	add	x29, sp, #0x60
    1450: d5384108     	mrs	x8, SP_EL0
    1454: f9438908     	ldr	x8, [x8, #0x710]
    1458: f81f83a8     	stur	x8, [x29, #-0x8]
    145c: b50000c0     	cbnz	x0, 0x1474 <goodixfp_drm_get_pannel+0x3c>
    1460: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001460:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x948
    1464: 91000000     	add	x0, x0, #0x0
		0000000000001464:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x948
    1468: 94000000     	bl	0x1468 <goodixfp_drm_get_pannel+0x30>
		0000000000001468:  R_AARCH64_CALL26	_printk
    146c: 12800253     	mov	w19, #-0x13             // =-19
    1470: 14000039     	b	0x1554 <goodixfp_drm_get_pannel+0x11c>
    1474: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001474:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf63
    1478: 91000021     	add	x1, x1, #0x0
		0000000000001478:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf63
    147c: aa1f03e2     	mov	x2, xzr
    1480: aa0003f4     	mov	x20, x0
    1484: 94000000     	bl	0x1484 <goodixfp_drm_get_pannel+0x4c>
		0000000000001484:  R_AARCH64_CALL26	of_count_phandle_with_args
    1488: 2a0003f3     	mov	w19, w0
    148c: 7100041f     	cmp	w0, #0x1
    1490: 5400008a     	b.ge	0x14a0 <goodixfp_drm_get_pannel+0x68>
    1494: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001494:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x86a
    1498: 91000000     	add	x0, x0, #0x0
		0000000000001498:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x86a
    149c: 1400001b     	b	0x1508 <goodixfp_drm_get_pannel+0xd0>
    14a0: 2a1f03f5     	mov	w21, wzr
    14a4: 90000016     	adrp	x22, 0x1000 <gf_probe+0x2d8>
		00000000000014a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf63
    14a8: 910002d6     	add	x22, x22, #0x0
		00000000000014a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf63
    14ac: 910023e5     	add	x5, sp, #0x8
    14b0: aa1403e0     	mov	x0, x20
    14b4: aa1603e1     	mov	x1, x22
    14b8: aa1f03e2     	mov	x2, xzr
    14bc: 2a1f03e3     	mov	w3, wzr
    14c0: 2a1503e4     	mov	w4, w21
    14c4: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    14c8: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    14cc: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    14d0: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    14d4: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    14d8: 94000000     	bl	0x14d8 <goodixfp_drm_get_pannel+0xa0>
		00000000000014d8:  R_AARCH64_CALL26	__of_parse_phandle_with_args
    14dc: f94007e8     	ldr	x8, [sp, #0x8]
    14e0: 7100001f     	cmp	w0, #0x0
    14e4: 9a9f0100     	csel	x0, x8, xzr, eq
    14e8: 94000000     	bl	0x14e8 <goodixfp_drm_get_pannel+0xb0>
		00000000000014e8:  R_AARCH64_CALL26	of_drm_find_panel
    14ec: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    14f0: 54000149     	b.ls	0x1518 <goodixfp_drm_get_pannel+0xe0>
    14f4: 110006b5     	add	w21, w21, #0x1
    14f8: 6b15027f     	cmp	w19, w21
    14fc: 54fffd81     	b.ne	0x14ac <goodixfp_drm_get_pannel+0x74>
    1500: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001500:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x632
    1504: 91000000     	add	x0, x0, #0x0
		0000000000001504:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x632
    1508: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001508:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x279
    150c: 91000021     	add	x1, x1, #0x0
		000000000000150c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x279
    1510: 94000000     	bl	0x1510 <goodixfp_drm_get_pannel+0xd8>
		0000000000001510:  R_AARCH64_CALL26	_printk
    1514: 14000010     	b	0x1554 <goodixfp_drm_get_pannel+0x11c>
    1518: 90000008     	adrp	x8, 0x1000 <gf_probe+0x2d8>
		0000000000001518:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x892
    151c: 91000108     	add	x8, x8, #0x0
		000000000000151c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x892
    1520: 90000013     	adrp	x19, 0x1000 <gf_probe+0x2d8>
		0000000000001520:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x279
    1524: 91000273     	add	x19, x19, #0x0
		0000000000001524:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x279
    1528: aa0003f4     	mov	x20, x0
    152c: aa0803e0     	mov	x0, x8
    1530: aa1303e1     	mov	x1, x19
    1534: 94000000     	bl	0x1534 <goodixfp_drm_get_pannel+0xfc>
		0000000000001534:  R_AARCH64_CALL26	_printk
    1538: 90000008     	adrp	x8, 0x1000 <gf_probe+0x2d8>
		0000000000001538:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e8
    153c: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		000000000000153c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11a7
    1540: 91000000     	add	x0, x0, #0x0
		0000000000001540:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11a7
    1544: aa1303e1     	mov	x1, x19
    1548: f9000114     	str	x20, [x8]
		0000000000001548:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
    154c: 94000000     	bl	0x154c <goodixfp_drm_get_pannel+0x114>
		000000000000154c:  R_AARCH64_CALL26	_printk
    1550: 2a1f03f3     	mov	w19, wzr
    1554: d5384108     	mrs	x8, SP_EL0
    1558: f9438908     	ldr	x8, [x8, #0x710]
    155c: f85f83a9     	ldur	x9, [x29, #-0x8]
    1560: eb09011f     	cmp	x8, x9
    1564: 54000101     	b.ne	0x1584 <goodixfp_drm_get_pannel+0x14c>
    1568: 2a1303e0     	mov	w0, w19
    156c: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    1570: a94757f6     	ldp	x22, x21, [sp, #0x70]
    1574: a9467bfd     	ldp	x29, x30, [sp, #0x60]
    1578: 910243ff     	add	sp, sp, #0x90
    157c: d50323bf     	autiasp
    1580: d65f03c0     	ret
    1584: 94000000     	bl	0x1584 <goodixfp_drm_get_pannel+0x14c>
		0000000000001584:  R_AARCH64_CALL26	__stack_chk_fail
