
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000012b8 <syna_tcm_read_flash_boot_cs_config>:
    12b8: d503233f     	paciasp
    12bc: d10283ff     	sub	sp, sp, #0xa0
    12c0: a9057bfd     	stp	x29, x30, [sp, #0x50]
    12c4: f90033f9     	str	x25, [sp, #0x60]
    12c8: a9075ff8     	stp	x24, x23, [sp, #0x70]
    12cc: a90857f6     	stp	x22, x21, [sp, #0x80]
    12d0: a9094ff4     	stp	x20, x19, [sp, #0x90]
    12d4: 910143fd     	add	x29, sp, #0x50
    12d8: d5384108     	mrs	x8, SP_EL0
    12dc: f9438908     	ldr	x8, [x8, #0x710]
    12e0: f81f83a8     	stur	x8, [x29, #-0x8]
    12e4: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    12e8: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    12ec: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    12f0: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    12f4: f90003ff     	str	xzr, [sp]
    12f8: b4001721     	cbz	x1, 0x15dc <syna_tcm_read_flash_boot_cs_config+0x324>
    12fc: aa0203f3     	mov	x19, x2
    1300: b4001742     	cbz	x2, 0x15e8 <syna_tcm_read_flash_boot_cs_config+0x330>
    1304: 39402408     	ldrb	w8, [x0, #0x9]
    1308: aa0003f7     	mov	x23, x0
    130c: 7100051f     	cmp	w8, #0x1
    1310: 540017a0     	b.eq	0x1604 <syna_tcm_read_flash_boot_cs_config+0x34c>
    1314: f9401039     	ldr	x25, [x1, #0x20]
    1318: aa0103f8     	mov	x24, x1
    131c: 39400322     	ldrb	w2, [x25]
    1320: 321f0048     	orr	w8, w2, #0x2
    1324: 71000d1f     	cmp	w8, #0x3
    1328: 54001ac1     	b.ne	0x1680 <syna_tcm_read_flash_boot_cs_config+0x3c8>
    132c: 910003e8     	mov	x8, sp
    1330: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb000
    1334: 91000021     	add	x1, x1, #0x0
		0000000000001334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb000
    1338: 90000002     	adrp	x2, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001338:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x964
    133c: 91000042     	add	x2, x2, #0x0
		000000000000133c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x964
    1340: 91004100     	add	x0, x8, #0x10
    1344: 2a0503f6     	mov	w22, w5
    1348: 2a0403f5     	mov	w21, w4
    134c: 2a0303f4     	mov	w20, w3
    1350: a9007fff     	stp	xzr, xzr, [sp]
    1354: 94000000     	bl	0x1354 <syna_tcm_read_flash_boot_cs_config+0x9c>
		0000000000001354:  R_AARCH64_CALL26	__mutex_init
    1358: 34000134     	cbz	w20, 0x137c <syna_tcm_read_flash_boot_cs_config+0xc4>
    135c: 39400328     	ldrb	w8, [x25]
    1360: 7100051f     	cmp	w8, #0x1
    1364: 54000440     	b.eq	0x13ec <syna_tcm_read_flash_boot_cs_config+0x134>
    1368: 71000d1f     	cmp	w8, #0x3
    136c: 54000501     	b.ne	0x140c <syna_tcm_read_flash_boot_cs_config+0x154>
    1370: 52800228     	mov	w8, #0x11               // =17
    1374: 52800209     	mov	w9, #0x10               // =16
    1378: 1400001f     	b	0x13f4 <syna_tcm_read_flash_boot_cs_config+0x13c>
    137c: 910003e2     	mov	x2, sp
    1380: aa1703e0     	mov	x0, x23
    1384: aa1803e1     	mov	x1, x24
    1388: 2a1603e3     	mov	w3, w22
    138c: 97ffff40     	bl	0x108c <syna_tcm_read_flash_boot_config>
    1390: 37f81960     	tbnz	w0, #0x1f, 0x16bc <syna_tcm_read_flash_boot_cs_config+0x404>
    1394: b9400ff4     	ldr	w20, [sp, #0xc]
    1398: b9400a68     	ldr	w8, [x19, #0x8]
    139c: f9400260     	ldr	x0, [x19]
    13a0: 6b14011f     	cmp	w8, w20
    13a4: 54000f02     	b.hs	0x1584 <syna_tcm_read_flash_boot_cs_config+0x2cc>
    13a8: b40000c0     	cbz	x0, 0x13c0 <syna_tcm_read_flash_boot_cs_config+0x108>
    13ac: aa0003f5     	mov	x21, x0
    13b0: 94000000     	bl	0x13b0 <syna_tcm_read_flash_boot_cs_config+0xf8>
		00000000000013b0:  R_AARCH64_CALL26	syna_request_managed_device
    13b4: b4001f80     	cbz	x0, 0x17a4 <syna_tcm_read_flash_boot_cs_config+0x4ec>
    13b8: aa1503e1     	mov	x1, x21
    13bc: 94000000     	bl	0x13bc <syna_tcm_read_flash_boot_cs_config+0x104>
		00000000000013bc:  R_AARCH64_CALL26	devm_kfree
    13c0: 94000000     	bl	0x13c0 <syna_tcm_read_flash_boot_cs_config+0x108>
		00000000000013c0:  R_AARCH64_CALL26	syna_request_managed_device
    13c4: b4001fe0     	cbz	x0, 0x17c0 <syna_tcm_read_flash_boot_cs_config+0x508>
    13c8: 7100029f     	cmp	w20, #0x0
    13cc: 54001e6d     	b.le	0x1798 <syna_tcm_read_flash_boot_cs_config+0x4e0>
    13d0: aa1403e1     	mov	x1, x20
    13d4: 5281b802     	mov	w2, #0xdc0              // =3520
    13d8: 94000000     	bl	0x13d8 <syna_tcm_read_flash_boot_cs_config+0x120>
		00000000000013d8:  R_AARCH64_CALL26	devm_kmalloc
    13dc: f9000260     	str	x0, [x19]
    13e0: b4001fc0     	cbz	x0, 0x17d8 <syna_tcm_read_flash_boot_cs_config+0x520>
    13e4: b9000a74     	str	w20, [x19, #0x8]
    13e8: 14000068     	b	0x1588 <syna_tcm_read_flash_boot_cs_config+0x2d0>
    13ec: 528001a8     	mov	w8, #0xd                // =13
    13f0: 52800189     	mov	w9, #0xc                // =12
    13f4: 38696b29     	ldrb	w9, [x25, x9]
    13f8: 38686b28     	ldrb	w8, [x25, x8]
    13fc: 2a082128     	orr	w8, w9, w8, lsl #8
    1400: b9402f09     	ldr	w9, [x24, #0x2c]
    1404: 1b097d19     	mul	w25, w8, w9
    1408: 14000002     	b	0x1410 <syna_tcm_read_flash_boot_cs_config+0x158>
    140c: 2a1f03f9     	mov	w25, wzr
    1410: b9400bf8     	ldr	w24, [sp, #0x8]
    1414: f94003e0     	ldr	x0, [sp]
    1418: 6b14031f     	cmp	w24, w20
    141c: 54000242     	b.hs	0x1464 <syna_tcm_read_flash_boot_cs_config+0x1ac>
    1420: b40000c0     	cbz	x0, 0x1438 <syna_tcm_read_flash_boot_cs_config+0x180>
    1424: aa0003f8     	mov	x24, x0
    1428: 94000000     	bl	0x1428 <syna_tcm_read_flash_boot_cs_config+0x170>
		0000000000001428:  R_AARCH64_CALL26	syna_request_managed_device
    142c: b4001620     	cbz	x0, 0x16f0 <syna_tcm_read_flash_boot_cs_config+0x438>
    1430: aa1803e1     	mov	x1, x24
    1434: 94000000     	bl	0x1434 <syna_tcm_read_flash_boot_cs_config+0x17c>
		0000000000001434:  R_AARCH64_CALL26	devm_kfree
    1438: 94000000     	bl	0x1438 <syna_tcm_read_flash_boot_cs_config+0x180>
		0000000000001438:  R_AARCH64_CALL26	syna_request_managed_device
    143c: b4001680     	cbz	x0, 0x170c <syna_tcm_read_flash_boot_cs_config+0x454>
    1440: 7100029f     	cmp	w20, #0x0
    1444: 540014ad     	b.le	0x16d8 <syna_tcm_read_flash_boot_cs_config+0x420>
    1448: 2a1403f8     	mov	w24, w20
    144c: 5281b802     	mov	w2, #0xdc0              // =3520
    1450: aa1803e1     	mov	x1, x24
    1454: 94000000     	bl	0x1454 <syna_tcm_read_flash_boot_cs_config+0x19c>
		0000000000001454:  R_AARCH64_CALL26	devm_kmalloc
    1458: f90003e0     	str	x0, [sp]
    145c: b4001640     	cbz	x0, 0x1724 <syna_tcm_read_flash_boot_cs_config+0x46c>
    1460: b9000bf4     	str	w20, [sp, #0x8]
    1464: 2a1f03e1     	mov	w1, wzr
    1468: aa1803e2     	mov	x2, x24
    146c: 94000000     	bl	0x146c <syna_tcm_read_flash_boot_cs_config+0x1b4>
		000000000000146c:  R_AARCH64_CALL26	memset
    1470: b9400a78     	ldr	w24, [x19, #0x8]
    1474: f9400260     	ldr	x0, [x19]
    1478: b9000fff     	str	wzr, [sp, #0xc]
    147c: 6b14031f     	cmp	w24, w20
    1480: 54000242     	b.hs	0x14c8 <syna_tcm_read_flash_boot_cs_config+0x210>
    1484: b40000c0     	cbz	x0, 0x149c <syna_tcm_read_flash_boot_cs_config+0x1e4>
    1488: aa0003f8     	mov	x24, x0
    148c: 94000000     	bl	0x148c <syna_tcm_read_flash_boot_cs_config+0x1d4>
		000000000000148c:  R_AARCH64_CALL26	syna_request_managed_device
    1490: b40015e0     	cbz	x0, 0x174c <syna_tcm_read_flash_boot_cs_config+0x494>
    1494: aa1803e1     	mov	x1, x24
    1498: 94000000     	bl	0x1498 <syna_tcm_read_flash_boot_cs_config+0x1e0>
		0000000000001498:  R_AARCH64_CALL26	devm_kfree
    149c: 94000000     	bl	0x149c <syna_tcm_read_flash_boot_cs_config+0x1e4>
		000000000000149c:  R_AARCH64_CALL26	syna_request_managed_device
    14a0: b4001640     	cbz	x0, 0x1768 <syna_tcm_read_flash_boot_cs_config+0x4b0>
    14a4: 7100029f     	cmp	w20, #0x0
    14a8: 540011ed     	b.le	0x16e4 <syna_tcm_read_flash_boot_cs_config+0x42c>
    14ac: 2a1403f8     	mov	w24, w20
    14b0: 5281b802     	mov	w2, #0xdc0              // =3520
    14b4: aa1803e1     	mov	x1, x24
    14b8: 94000000     	bl	0x14b8 <syna_tcm_read_flash_boot_cs_config+0x200>
		00000000000014b8:  R_AARCH64_CALL26	devm_kmalloc
    14bc: f9000260     	str	x0, [x19]
    14c0: b4001600     	cbz	x0, 0x1780 <syna_tcm_read_flash_boot_cs_config+0x4c8>
    14c4: b9000a74     	str	w20, [x19, #0x8]
    14c8: 2a1f03e1     	mov	w1, wzr
    14cc: aa1803e2     	mov	x2, x24
    14d0: 94000000     	bl	0x14d0 <syna_tcm_read_flash_boot_cs_config+0x218>
		00000000000014d0:  R_AARCH64_CALL26	memset
    14d4: f94003e2     	ldr	x2, [sp]
    14d8: 0b150321     	add	w1, w25, w21
    14dc: aa1703e0     	mov	x0, x23
    14e0: 2a1403e3     	mov	w3, w20
    14e4: 2a1603e4     	mov	w4, w22
    14e8: b9000e7f     	str	wzr, [x19, #0xc]
    14ec: 97fffc36     	bl	0x5c4 <syna_tcm_read_flash>
    14f0: 37f80d60     	tbnz	w0, #0x1f, 0x169c <syna_tcm_read_flash_boot_cs_config+0x3e4>
    14f4: f94003e1     	ldr	x1, [sp]
    14f8: f9400260     	ldr	x0, [x19]
    14fc: b4000b40     	cbz	x0, 0x1664 <syna_tcm_read_flash_boot_cs_config+0x3ac>
    1500: b4000b21     	cbz	x1, 0x1664 <syna_tcm_read_flash_boot_cs_config+0x3ac>
    1504: b9400a63     	ldr	w3, [x19, #0x8]
    1508: b9400be2     	ldr	w2, [sp, #0x8]
    150c: 6b03029f     	cmp	w20, w3
    1510: 540009e8     	b.hi	0x164c <syna_tcm_read_flash_boot_cs_config+0x394>
    1514: 6b02029f     	cmp	w20, w2
    1518: 540009a8     	b.hi	0x164c <syna_tcm_read_flash_boot_cs_config+0x394>
    151c: 2a1403e2     	mov	w2, w20
    1520: 94000000     	bl	0x1520 <syna_tcm_read_flash_boot_cs_config+0x268>
		0000000000001520:  R_AARCH64_CALL26	memcpy
    1524: 2a1f03f6     	mov	w22, wzr
    1528: b9000e74     	str	w20, [x19, #0xc]
    152c: 394103e2     	ldrb	w2, [sp, #0x40]
    1530: 35000762     	cbnz	w2, 0x161c <syna_tcm_read_flash_boot_cs_config+0x364>
    1534: f94003f3     	ldr	x19, [sp]
    1538: 94000000     	bl	0x1538 <syna_tcm_read_flash_boot_cs_config+0x280>
		0000000000001538:  R_AARCH64_CALL26	syna_request_managed_device
    153c: b40007c0     	cbz	x0, 0x1634 <syna_tcm_read_flash_boot_cs_config+0x37c>
    1540: b4000073     	cbz	x19, 0x154c <syna_tcm_read_flash_boot_cs_config+0x294>
    1544: aa1303e1     	mov	x1, x19
    1548: 94000000     	bl	0x1548 <syna_tcm_read_flash_boot_cs_config+0x290>
		0000000000001548:  R_AARCH64_CALL26	devm_kfree
    154c: d5384108     	mrs	x8, SP_EL0
    1550: f9438908     	ldr	x8, [x8, #0x710]
    1554: f85f83a9     	ldur	x9, [x29, #-0x8]
    1558: eb09011f     	cmp	x8, x9
    155c: 540015a1     	b.ne	0x1810 <syna_tcm_read_flash_boot_cs_config+0x558>
    1560: 2a1603e0     	mov	w0, w22
    1564: a9494ff4     	ldp	x20, x19, [sp, #0x90]
    1568: f94033f9     	ldr	x25, [sp, #0x60]
    156c: a94857f6     	ldp	x22, x21, [sp, #0x80]
    1570: a9475ff8     	ldp	x24, x23, [sp, #0x70]
    1574: a9457bfd     	ldp	x29, x30, [sp, #0x50]
    1578: 910283ff     	add	sp, sp, #0xa0
    157c: d50323bf     	autiasp
    1580: d65f03c0     	ret
    1584: aa0803f4     	mov	x20, x8
    1588: 2a1f03e1     	mov	w1, wzr
    158c: aa1403e2     	mov	x2, x20
    1590: 94000000     	bl	0x1590 <syna_tcm_read_flash_boot_cs_config+0x2d8>
		0000000000001590:  R_AARCH64_CALL26	memset
    1594: b9400fe8     	ldr	w8, [sp, #0xc]
    1598: f94003e1     	ldr	x1, [sp]
    159c: 52801009     	mov	w9, #0x80               // =128
    15a0: b9000e7f     	str	wzr, [x19, #0xc]
    15a4: 51022114     	sub	w20, w8, #0x88
    15a8: 14000003     	b	0x15b4 <syna_tcm_read_flash_boot_cs_config+0x2fc>
    15ac: 71002129     	subs	w9, w9, #0x8
    15b0: 54fffa40     	b.eq	0x14f8 <syna_tcm_read_flash_boot_cs_config+0x240>
    15b4: 0b09010a     	add	w10, w8, w9
    15b8: 51021d4b     	sub	w11, w10, #0x87
    15bc: 38ebc82b     	ldrsb	w11, [x1, w11, sxtw]
    15c0: 36ffff6b     	tbz	w11, #0x1f, 0x15ac <syna_tcm_read_flash_boot_cs_config+0x2f4>
    15c4: 51023d4a     	sub	w10, w10, #0x8f
    15c8: 38eac82a     	ldrsb	w10, [x1, w10, sxtw]
    15cc: 37ffff0a     	tbnz	w10, #0x1f, 0x15ac <syna_tcm_read_flash_boot_cs_config+0x2f4>
    15d0: 0b090108     	add	w8, w8, w9
    15d4: 51022114     	sub	w20, w8, #0x88
    15d8: 17ffffc8     	b	0x14f8 <syna_tcm_read_flash_boot_cs_config+0x240>
    15dc: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000015dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29ae
    15e0: 91000000     	add	x0, x0, #0x0
		00000000000015e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29ae
    15e4: 14000003     	b	0x15f0 <syna_tcm_read_flash_boot_cs_config+0x338>
    15e8: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000015e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ce8
    15ec: 91000000     	add	x0, x0, #0x0
		00000000000015ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ce8
    15f0: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000015f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb3a4
    15f4: 91000021     	add	x1, x1, #0x0
		00000000000015f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb3a4
    15f8: 94000000     	bl	0x15f8 <syna_tcm_read_flash_boot_cs_config+0x340>
		00000000000015f8:  R_AARCH64_CALL26	_printk
    15fc: 12801e16     	mov	w22, #-0xf1             // =-241
    1600: 17ffffd3     	b	0x154c <syna_tcm_read_flash_boot_cs_config+0x294>
    1604: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7f66
    1608: 91000000     	add	x0, x0, #0x0
		0000000000001608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7f66
    160c: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		000000000000160c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb3a4
    1610: 91000021     	add	x1, x1, #0x0
		0000000000001610:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb3a4
    1614: 52800022     	mov	w2, #0x1                // =1
    1618: 1400001e     	b	0x1690 <syna_tcm_read_flash_boot_cs_config+0x3d8>
    161c: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		000000000000161c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
    1620: 91000000     	add	x0, x0, #0x0
		0000000000001620:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
    1624: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001624:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
    1628: 91000021     	add	x1, x1, #0x0
		0000000000001628:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
    162c: 94000000     	bl	0x162c <syna_tcm_read_flash_boot_cs_config+0x374>
		000000000000162c:  R_AARCH64_CALL26	_printk
    1630: 17ffffc1     	b	0x1534 <syna_tcm_read_flash_boot_cs_config+0x27c>
    1634: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001634:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
    1638: 91000000     	add	x0, x0, #0x0
		0000000000001638:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
    163c: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		000000000000163c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
    1640: 91000021     	add	x1, x1, #0x0
		0000000000001640:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
    1644: 94000000     	bl	0x1644 <syna_tcm_read_flash_boot_cs_config+0x38c>
		0000000000001644:  R_AARCH64_CALL26	_printk
    1648: 17ffffc1     	b	0x154c <syna_tcm_read_flash_boot_cs_config+0x294>
    164c: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		000000000000164c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
    1650: 91000000     	add	x0, x0, #0x0
		0000000000001650:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
    1654: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001654:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
    1658: 91000021     	add	x1, x1, #0x0
		0000000000001658:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
    165c: 2a1403e4     	mov	w4, w20
    1660: 94000000     	bl	0x1660 <syna_tcm_read_flash_boot_cs_config+0x3a8>
		0000000000001660:  R_AARCH64_CALL26	_printk
    1664: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001664:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x73b4
    1668: 91000000     	add	x0, x0, #0x0
		0000000000001668:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x73b4
    166c: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		000000000000166c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb3a4
    1670: 91000021     	add	x1, x1, #0x0
		0000000000001670:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb3a4
    1674: 94000000     	bl	0x1674 <syna_tcm_read_flash_boot_cs_config+0x3bc>
		0000000000001674:  R_AARCH64_CALL26	_printk
    1678: 128002b6     	mov	w22, #-0x16             // =-22
    167c: 17ffffac     	b	0x152c <syna_tcm_read_flash_boot_cs_config+0x274>
    1680: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001680:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb378
    1684: 91000000     	add	x0, x0, #0x0
		0000000000001684:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb378
    1688: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001688:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb3a4
    168c: 91000021     	add	x1, x1, #0x0
		000000000000168c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb3a4
    1690: 94000000     	bl	0x1690 <syna_tcm_read_flash_boot_cs_config+0x3d8>
		0000000000001690:  R_AARCH64_CALL26	_printk
    1694: 12801e16     	mov	w22, #-0xf1             // =-241
    1698: 17ffffad     	b	0x154c <syna_tcm_read_flash_boot_cs_config+0x294>
    169c: 2a0003f6     	mov	w22, w0
    16a0: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000016a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x438e
    16a4: 91000000     	add	x0, x0, #0x0
		00000000000016a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x438e
    16a8: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000016a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb3a4
    16ac: 91000021     	add	x1, x1, #0x0
		00000000000016ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb3a4
    16b0: 0b150322     	add	w2, w25, w21
    16b4: 94000000     	bl	0x16b4 <syna_tcm_read_flash_boot_cs_config+0x3fc>
		00000000000016b4:  R_AARCH64_CALL26	_printk
    16b8: 17ffff9d     	b	0x152c <syna_tcm_read_flash_boot_cs_config+0x274>
    16bc: 2a0003f6     	mov	w22, w0
    16c0: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000016c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fce
    16c4: 91000000     	add	x0, x0, #0x0
		00000000000016c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fce
    16c8: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000016c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb3a4
    16cc: 91000021     	add	x1, x1, #0x0
		00000000000016cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb3a4
    16d0: 94000000     	bl	0x16d0 <syna_tcm_read_flash_boot_cs_config+0x418>
		00000000000016d0:  R_AARCH64_CALL26	_printk
    16d4: 17ffff96     	b	0x152c <syna_tcm_read_flash_boot_cs_config+0x274>
    16d8: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000016d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70d6
    16dc: 91000000     	add	x0, x0, #0x0
		00000000000016dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70d6
    16e0: 1400000d     	b	0x1714 <syna_tcm_read_flash_boot_cs_config+0x45c>
    16e4: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000016e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70d6
    16e8: 91000000     	add	x0, x0, #0x0
		00000000000016e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70d6
    16ec: 14000021     	b	0x1770 <syna_tcm_read_flash_boot_cs_config+0x4b8>
    16f0: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000016f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
    16f4: 91000000     	add	x0, x0, #0x0
		00000000000016f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
    16f8: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000016f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
    16fc: 91000021     	add	x1, x1, #0x0
		00000000000016fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
    1700: 94000000     	bl	0x1700 <syna_tcm_read_flash_boot_cs_config+0x448>
		0000000000001700:  R_AARCH64_CALL26	_printk
    1704: 94000000     	bl	0x1704 <syna_tcm_read_flash_boot_cs_config+0x44c>
		0000000000001704:  R_AARCH64_CALL26	syna_request_managed_device
    1708: b5ffe9c0     	cbnz	x0, 0x1440 <syna_tcm_read_flash_boot_cs_config+0x188>
    170c: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		000000000000170c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
    1710: 91000000     	add	x0, x0, #0x0
		0000000000001710:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
    1714: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001714:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
    1718: 91000021     	add	x1, x1, #0x0
		0000000000001718:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
    171c: 94000000     	bl	0x171c <syna_tcm_read_flash_boot_cs_config+0x464>
		000000000000171c:  R_AARCH64_CALL26	_printk
    1720: f90003ff     	str	xzr, [sp]
    1724: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d74
    1728: 91000000     	add	x0, x0, #0x0
		0000000000001728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d74
    172c: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		000000000000172c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77fc
    1730: 91000021     	add	x1, x1, #0x0
		0000000000001730:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77fc
    1734: 2a1403e2     	mov	w2, w20
    1738: 94000000     	bl	0x1738 <syna_tcm_read_flash_boot_cs_config+0x480>
		0000000000001738:  R_AARCH64_CALL26	_printk
    173c: f90007ff     	str	xzr, [sp, #0x8]
    1740: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001740:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x49c6
    1744: 91000000     	add	x0, x0, #0x0
		0000000000001744:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x49c6
    1748: 1400002d     	b	0x17fc <syna_tcm_read_flash_boot_cs_config+0x544>
    174c: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		000000000000174c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
    1750: 91000000     	add	x0, x0, #0x0
		0000000000001750:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
    1754: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001754:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
    1758: 91000021     	add	x1, x1, #0x0
		0000000000001758:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
    175c: 94000000     	bl	0x175c <syna_tcm_read_flash_boot_cs_config+0x4a4>
		000000000000175c:  R_AARCH64_CALL26	_printk
    1760: 94000000     	bl	0x1760 <syna_tcm_read_flash_boot_cs_config+0x4a8>
		0000000000001760:  R_AARCH64_CALL26	syna_request_managed_device
    1764: b5ffea00     	cbnz	x0, 0x14a4 <syna_tcm_read_flash_boot_cs_config+0x1ec>
    1768: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001768:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
    176c: 91000000     	add	x0, x0, #0x0
		000000000000176c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
    1770: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001770:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
    1774: 91000021     	add	x1, x1, #0x0
		0000000000001774:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
    1778: 94000000     	bl	0x1778 <syna_tcm_read_flash_boot_cs_config+0x4c0>
		0000000000001778:  R_AARCH64_CALL26	_printk
    177c: f900027f     	str	xzr, [x19]
    1780: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001780:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d74
    1784: 91000000     	add	x0, x0, #0x0
		0000000000001784:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d74
    1788: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001788:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77fc
    178c: 91000021     	add	x1, x1, #0x0
		000000000000178c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77fc
    1790: 2a1403e2     	mov	w2, w20
    1794: 14000016     	b	0x17ec <syna_tcm_read_flash_boot_cs_config+0x534>
    1798: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001798:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70d6
    179c: 91000000     	add	x0, x0, #0x0
		000000000000179c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70d6
    17a0: 1400000a     	b	0x17c8 <syna_tcm_read_flash_boot_cs_config+0x510>
    17a4: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000017a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
    17a8: 91000000     	add	x0, x0, #0x0
		00000000000017a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
    17ac: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000017ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
    17b0: 91000021     	add	x1, x1, #0x0
		00000000000017b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
    17b4: 94000000     	bl	0x17b4 <syna_tcm_read_flash_boot_cs_config+0x4fc>
		00000000000017b4:  R_AARCH64_CALL26	_printk
    17b8: 94000000     	bl	0x17b8 <syna_tcm_read_flash_boot_cs_config+0x500>
		00000000000017b8:  R_AARCH64_CALL26	syna_request_managed_device
    17bc: b5ffe060     	cbnz	x0, 0x13c8 <syna_tcm_read_flash_boot_cs_config+0x110>
    17c0: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000017c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
    17c4: 91000000     	add	x0, x0, #0x0
		00000000000017c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
    17c8: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000017c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
    17cc: 91000021     	add	x1, x1, #0x0
		00000000000017cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
    17d0: 94000000     	bl	0x17d0 <syna_tcm_read_flash_boot_cs_config+0x518>
		00000000000017d0:  R_AARCH64_CALL26	_printk
    17d4: f900027f     	str	xzr, [x19]
    17d8: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000017d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d74
    17dc: 91000000     	add	x0, x0, #0x0
		00000000000017dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d74
    17e0: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000017e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77fc
    17e4: 91000021     	add	x1, x1, #0x0
		00000000000017e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77fc
    17e8: 2a1403e2     	mov	w2, w20
    17ec: 94000000     	bl	0x17ec <syna_tcm_read_flash_boot_cs_config+0x534>
		00000000000017ec:  R_AARCH64_CALL26	_printk
    17f0: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000017f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2904
    17f4: 91000000     	add	x0, x0, #0x0
		00000000000017f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2904
    17f8: f900067f     	str	xzr, [x19, #0x8]
    17fc: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000017fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb3a4
    1800: 91000021     	add	x1, x1, #0x0
		0000000000001800:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb3a4
    1804: 94000000     	bl	0x1804 <syna_tcm_read_flash_boot_cs_config+0x54c>
		0000000000001804:  R_AARCH64_CALL26	_printk
    1808: 12801e56     	mov	w22, #-0xf3             // =-243
    180c: 17ffff48     	b	0x152c <syna_tcm_read_flash_boot_cs_config+0x274>
    1810: 94000000     	bl	0x1810 <syna_tcm_read_flash_boot_cs_config+0x558>
		0000000000001810:  R_AARCH64_CALL26	__stack_chk_fail
