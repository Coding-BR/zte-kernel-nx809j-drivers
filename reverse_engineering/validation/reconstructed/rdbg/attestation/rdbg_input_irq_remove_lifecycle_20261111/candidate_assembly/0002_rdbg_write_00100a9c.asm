
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000138c <rdbg_write>:
    138c: d503233f     	paciasp
    1390: d10243ff     	sub	sp, sp, #0x90
    1394: a9037bfd     	stp	x29, x30, [sp, #0x30]
    1398: a9046ffc     	stp	x28, x27, [sp, #0x40]
    139c: a90567fa     	stp	x26, x25, [sp, #0x50]
    13a0: a9065ff8     	stp	x24, x23, [sp, #0x60]
    13a4: a90757f6     	stp	x22, x21, [sp, #0x70]
    13a8: a9084ff4     	stp	x20, x19, [sp, #0x80]
    13ac: 9100c3fd     	add	x29, sp, #0x30
    13b0: f9401008     	ldr	x8, [x0, #0x20]
    13b4: a93f0ba1     	stp	x1, x2, [x29, #-0x10]
    13b8: b4001fa8     	cbz	x8, 0x17ac <rdbg_write+0x420>
    13bc: f9400118     	ldr	x24, [x8]
    13c0: b4001f78     	cbz	x24, 0x17ac <rdbg_write+0x420>
    13c4: a97f27aa     	ldp	x10, x9, [x29, #-0x10]
    13c8: 529fe05c     	mov	w28, #0xff02            // =65282
    13cc: 2a1f03f9     	mov	w25, wzr
    13d0: 72bfe01c     	movk	w28, #0xff00, lsl #16
    13d4: 5280003a     	mov	w26, #0x1               // =1
    13d8: d5384114     	mrs	x20, SP_EL0
    13dc: d378dd48     	lsl	x8, x10, #8
    13e0: 93407d33     	sxtw	x19, w9
    13e4: 1101fd2b     	add	w11, w9, #0x7f
    13e8: d2c01009     	mov	x9, #0x8000000000       // =549755813888
    13ec: b81ec3ab     	stur	w11, [x29, #-0x14]
    13f0: 13077d7b     	asr	w27, w11, #7
    13f4: 8a88214b     	and	x11, x10, x8, asr #8
    13f8: cb130128     	sub	x8, x9, x19
    13fc: a900a3eb     	stp	x11, x8, [sp, #0x8]
    1400: f9405300     	ldr	x0, [x24, #0xa0]
    1404: 94000000     	bl	0x1404 <rdbg_write+0x78>
		0000000000001404:  R_AARCH64_CALL26	mutex_lock
    1408: f9404709     	ldr	x9, [x24, #0x88]
    140c: b9400128     	ldr	w8, [x9]
    1410: 6b1c011f     	cmp	w8, w28
    1414: 54000141     	b.ne	0x143c <rdbg_write+0xb0>
    1418: f9403f08     	ldr	x8, [x24, #0x78]
    141c: 39400508     	ldrb	w8, [x8, #0x1]
    1420: 7100051f     	cmp	w8, #0x1
    1424: 540000c1     	b.ne	0x143c <rdbg_write+0xb0>
    1428: f9404308     	ldr	x8, [x24, #0x80]
    142c: b940052b     	ldr	w11, [x9, #0x4]
    1430: b940050a     	ldr	w10, [x8, #0x4]
    1434: 6b0b015f     	cmp	w10, w11
    1438: 54000260     	b.eq	0x1484 <rdbg_write+0xf8>
    143c: b940b308     	ldr	w8, [x24, #0xb0]
    1440: 7100077f     	cmp	w27, #0x1
    1444: 540004e1     	b.ne	0x14e0 <rdbg_write+0x154>
    1448: f9405f09     	ldr	x9, [x24, #0xb8]
    144c: 2a0803f5     	mov	w21, w8
    1450: 3875492a     	ldrb	w10, [x9, w21, uxtw]
    1454: 3400082a     	cbz	w10, 0x1558 <rdbg_write+0x1cc>
    1458: b940b70a     	ldr	w10, [x24, #0xb4]
    145c: 110006ab     	add	w11, w21, #0x1
    1460: 1aca096c     	udiv	w12, w11, w10
    1464: 1b0aad95     	msub	w21, w12, w10, w11
    1468: 6b15011f     	cmp	w8, w21
    146c: b900b315     	str	w21, [x24, #0xb0]
    1470: 54ffff01     	b.ne	0x1450 <rdbg_write+0xc4>
    1474: 2a1f03f5     	mov	w21, wzr
    1478: 1400009d     	b	0x16ec <rdbg_write+0x360>
    147c: d5033d9f     	dsb	ld
    1480: a9482708     	ldp	x8, x9, [x24, #0x80]
    1484: b840cd0a     	ldr	w10, [x8, #0xc]!
    1488: b9400d2b     	ldr	w11, [x9, #0xc]
    148c: 6b0b015f     	cmp	w10, w11
    1490: 54fffd60     	b.eq	0x143c <rdbg_write+0xb0>
    1494: 8b2a4929     	add	x9, x9, w10, uxtw #2
    1498: b9409b0b     	ldr	w11, [x24, #0x98]
    149c: 78410d2c     	ldrh	w12, [x9, #0x10]!
    14a0: 6b0c017f     	cmp	w11, w12
    14a4: 54fffe89     	b.ls	0x1474 <rdbg_write+0xe8>
    14a8: 1100054a     	add	w10, w10, #0x1
    14ac: 1acb094c     	udiv	w12, w10, w11
    14b0: 1b0ba98a     	msub	w10, w12, w11, w10
    14b4: b900010a     	str	w10, [x8]
    14b8: 79400128     	ldrh	w8, [x9]
    14bc: f9405f09     	ldr	x9, [x24, #0xb8]
    14c0: 38686929     	ldrb	w9, [x9, x8]
    14c4: 34fffdc9     	cbz	w9, 0x147c <rdbg_write+0xf0>
    14c8: f9405f0a     	ldr	x10, [x24, #0xb8]
    14cc: 71000529     	subs	w9, w9, #0x1
    14d0: 3828695f     	strb	wzr, [x10, x8]
    14d4: 91000508     	add	x8, x8, #0x1
    14d8: 54ffff81     	b.ne	0x14c8 <rdbg_write+0x13c>
    14dc: 17ffffe8     	b	0x147c <rdbg_write+0xf0>
    14e0: b940b709     	ldr	w9, [x24, #0xb4]
    14e4: f9405f0b     	ldr	x11, [x24, #0xb8]
    14e8: 2a1f03ea     	mov	w10, wzr
    14ec: 2a0803ec     	mov	w12, w8
    14f0: 2a0903ed     	mov	w13, w9
    14f4: 1400000c     	b	0x1524 <rdbg_write+0x198>
    14f8: 0b0e0108     	add	w8, w8, w14
    14fc: 2a1f03ea     	mov	w10, wzr
    1500: 2a0903f5     	mov	w21, w9
    1504: 51000508     	sub	w8, w8, #0x1
    1508: 11000508     	add	w8, w8, #0x1
    150c: 1ac9090d     	udiv	w13, w8, w9
    1510: 1b09a1a8     	msub	w8, w13, w9, w8
    1514: 2a1503ed     	mov	w13, w21
    1518: 6b08019f     	cmp	w12, w8
    151c: b900b308     	str	w8, [x24, #0xb0]
    1520: 54fffaa0     	b.eq	0x1474 <rdbg_write+0xe8>
    1524: 3868496e     	ldrb	w14, [x11, w8, uxtw]
    1528: 35fffe8e     	cbnz	w14, 0x14f8 <rdbg_write+0x16c>
    152c: 6b0801bf     	cmp	w13, w8
    1530: 1a8a874a     	csinc	w10, w26, w10, hi
    1534: 1a8c810c     	csel	w12, w8, w12, hi
    1538: 1a8831b5     	csel	w21, w13, w8, lo
    153c: 6b1b015f     	cmp	w10, w27
    1540: 54fffe41     	b.ne	0x1508 <rdbg_write+0x17c>
    1544: b85ec3a9     	ldur	w9, [x29, #-0x14]
    1548: 7102013f     	cmp	w9, #0x80
    154c: 54000122     	b.hs	0x1570 <rdbg_write+0x1e4>
    1550: 2a1f03e9     	mov	w9, wzr
    1554: 14000012     	b	0x159c <rdbg_write+0x210>
    1558: 3835493a     	strb	w26, [x9, w21, uxtw]
    155c: 29562708     	ldp	w8, w9, [x24, #0xb0]
    1560: 11000508     	add	w8, w8, #0x1
    1564: 1ac9090a     	udiv	w10, w8, w9
    1568: 1b09a148     	msub	w8, w10, w9, w8
    156c: 1400000e     	b	0x15a4 <rdbg_write+0x218>
    1570: 6b0801bf     	cmp	w13, w8
    1574: aa1b03e9     	mov	x9, x27
    1578: 1a8831a8     	csel	w8, w13, w8, lo
    157c: f9405f0a     	ldr	x10, [x24, #0xb8]
    1580: 38284949     	strb	w9, [x10, w8, uxtw]
    1584: f1000529     	subs	x9, x9, #0x1
    1588: 11000508     	add	w8, w8, #0x1
    158c: 54ffff81     	b.ne	0x157c <rdbg_write+0x1f0>
    1590: f9405f09     	ldr	x9, [x24, #0xb8]
    1594: b940b308     	ldr	w8, [x24, #0xb0]
    1598: 38686929     	ldrb	w9, [x9, x8]
    159c: 0b090108     	add	w8, w8, w9
    15a0: 51000508     	sub	w8, w8, #0x1
    15a4: f9404b09     	ldr	x9, [x24, #0x90]
    15a8: 531962aa     	lsl	w10, w21, #7
    15ac: b900b308     	str	w8, [x24, #0xb0]
    15b0: f85f83a8     	ldur	x8, [x29, #-0x8]
    15b4: 8b0a0136     	add	x22, x9, x10
    15b8: 37f80a88     	tbnz	w8, #0x1f, 0x1708 <rdbg_write+0x37c>
    15bc: aa1603e0     	mov	x0, x22
    15c0: aa1303e1     	mov	x1, x19
    15c4: 2a1f03e2     	mov	w2, wzr
    15c8: 94000000     	bl	0x15c8 <rdbg_write+0x23c>
		00000000000015c8:  R_AARCH64_CALL26	__check_object_size
    15cc: 39411a88     	ldrb	w8, [x20, #0x46]
    15d0: 37280088     	tbnz	w8, #0x5, 0x15e0 <rdbg_write+0x254>
    15d4: f9400289     	ldr	x9, [x20]
    15d8: f85f03a8     	ldur	x8, [x29, #-0x10]
    15dc: 36d00049     	tbz	w9, #0x1a, 0x15e4 <rdbg_write+0x258>
    15e0: f94007e8     	ldr	x8, [sp, #0x8]
    15e4: f9400be9     	ldr	x9, [sp, #0x10]
    15e8: aa1303f7     	mov	x23, x19
    15ec: eb08013f     	cmp	x9, x8
    15f0: 54000222     	b.hs	0x1634 <rdbg_write+0x2a8>
    15f4: cb170268     	sub	x8, x19, x23
    15f8: 2a1f03e1     	mov	w1, wzr
    15fc: aa1703e2     	mov	x2, x23
    1600: 8b0802c0     	add	x0, x22, x8
    1604: 94000000     	bl	0x1604 <rdbg_write+0x278>
		0000000000001604:  R_AARCH64_CALL26	memset
    1608: 340004f7     	cbz	w23, 0x16a4 <rdbg_write+0x318>
    160c: b4fff356     	cbz	x22, 0x1474 <rdbg_write+0xe8>
    1610: f9405f08     	ldr	x8, [x24, #0xb8]
    1614: 38754908     	ldrb	w8, [x8, w21, uxtw]
    1618: 34fff2e8     	cbz	w8, 0x1474 <rdbg_write+0xe8>
    161c: f9405f09     	ldr	x9, [x24, #0xb8]
    1620: 71000508     	subs	w8, w8, #0x1
    1624: 3835493f     	strb	wzr, [x9, w21, uxtw]
    1628: 110006b5     	add	w21, w21, #0x1
    162c: 54ffff81     	b.ne	0x161c <rdbg_write+0x290>
    1630: 17ffff91     	b	0x1474 <rdbg_write+0xe8>
    1634: d503201f     	nop
    1638: d53b4228     	mrs	x8, DAIF
    163c: d50343df     	msr	DAIFSet, #0x3
    1640: f9400689     	ldr	x9, [x20, #0x8]
    1644: d538202a     	mrs	x10, TTBR1_EL1
    1648: aa0903eb     	mov	x11, x9
    164c: b340bd4b     	bfxil	x11, x10, #0, #48
    1650: d518202b     	msr	TTBR1_EL1, x11
    1654: d5182009     	msr	TTBR0_EL1, x9
    1658: d5033fdf     	isb
    165c: d51b4228     	msr	DAIF, x8
    1660: f85f03a8     	ldur	x8, [x29, #-0x10]
    1664: 9248f901     	and	x1, x8, #0xff7fffffffffffff
    1668: aa1603e0     	mov	x0, x22
    166c: aa1303e2     	mov	x2, x19
    1670: 94000000     	bl	0x1670 <rdbg_write+0x2e4>
		0000000000001670:  R_AARCH64_CALL26	__arch_copy_from_user
    1674: aa0003f7     	mov	x23, x0
    1678: d503201f     	nop
    167c: d53b4228     	mrs	x8, DAIF
    1680: d50343df     	msr	DAIFSet, #0x3
    1684: d5382029     	mrs	x9, TTBR1_EL1
    1688: 9240bd29     	and	x9, x9, #0xffffffffffff
    168c: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    1690: d518200a     	msr	TTBR0_EL1, x10
    1694: d5182029     	msr	TTBR1_EL1, x9
    1698: d5033fdf     	isb
    169c: d51b4228     	msr	DAIF, x8
    16a0: b5fffab7     	cbnz	x23, 0x15f4 <rdbg_write+0x268>
    16a4: f9404308     	ldr	x8, [x24, #0x80]
    16a8: b85ec3aa     	ldur	w10, [x29, #-0x14]
    16ac: b9400909     	ldr	w9, [x8, #0x8]
    16b0: 53077d4a     	lsr	w10, w10, #7
    16b4: 8b090908     	add	x8, x8, x9, lsl #2
    16b8: 79002115     	strh	w21, [x8, #0x10]
    16bc: 52800035     	mov	w21, #0x1               // =1
    16c0: f9404308     	ldr	x8, [x24, #0x80]
    16c4: b9400909     	ldr	w9, [x8, #0x8]
    16c8: 8b090908     	add	x8, x8, x9, lsl #2
    16cc: 7900250a     	strh	w10, [x8, #0x12]
    16d0: f9404308     	ldr	x8, [x24, #0x80]
    16d4: b9409b0a     	ldr	w10, [x24, #0x98]
    16d8: b9400909     	ldr	w9, [x8, #0x8]
    16dc: 11000529     	add	w9, w9, #0x1
    16e0: 1aca092b     	udiv	w11, w9, w10
    16e4: 1b0aa569     	msub	w9, w11, w10, w9
    16e8: b9000909     	str	w9, [x8, #0x8]
    16ec: f9405300     	ldr	x0, [x24, #0xa0]
    16f0: 94000000     	bl	0x16f0 <rdbg_write+0x364>
		00000000000016f0:  R_AARCH64_CALL26	mutex_unlock
    16f4: 37000115     	tbnz	w21, #0x0, 0x1714 <rdbg_write+0x388>
    16f8: 7100533f     	cmp	w25, #0x14
    16fc: 11000739     	add	w25, w25, #0x1
    1700: 54ffe803     	b.lo	0x1400 <rdbg_write+0x74>
    1704: 14000004     	b	0x1714 <rdbg_write+0x388>
    1708: d4210000     	brk	#0x800
    170c: b5fff836     	cbnz	x22, 0x1610 <rdbg_write+0x284>
    1710: 17ffff59     	b	0x1474 <rdbg_write+0xe8>
    1714: 36000575     	tbz	w21, #0x0, 0x17c0 <rdbg_write+0x434>
    1718: 90000000     	adrp	x0, 0x1000 <rdbg_read+0x40>
		0000000000001718:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
    171c: 91000000     	add	x0, x0, #0x0
		000000000000171c:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
    1720: 94000000     	bl	0x1720 <rdbg_write+0x394>
		0000000000001720:  R_AARCH64_CALL26	mutex_lock
    1724: f9402b00     	ldr	x0, [x24, #0x50]
    1728: b4000280     	cbz	x0, 0x1778 <rdbg_write+0x3ec>
    172c: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    1730: 54000248     	b.hi	0x1778 <rdbg_write+0x3ec>
    1734: b9405f15     	ldr	w21, [x24, #0x5c]
    1738: 710082bf     	cmp	w21, #0x20
    173c: 540004c2     	b.hs	0x17d4 <rdbg_write+0x448>
    1740: b9404b08     	ldr	w8, [x24, #0x48]
    1744: 91052316     	add	x22, x24, #0x148
    1748: 52800029     	mov	w9, #0x1                // =1
    174c: b8757aca     	ldr	w10, [x22, x21, lsl #2]
    1750: 0b150108     	add	w8, w8, w21
    1754: 9ac82121     	lsl	x1, x9, x8
    1758: 4a010154     	eor	w20, w10, w1
    175c: 2a1403e2     	mov	w2, w20
    1760: 94000000     	bl	0x1760 <rdbg_write+0x3d4>
		0000000000001760:  R_AARCH64_CALL26	qcom_smem_state_update_bits
    1764: 350000a0     	cbnz	w0, 0x1778 <rdbg_write+0x3ec>
    1768: 110006a8     	add	w8, w21, #0x1
    176c: b8357ad4     	str	w20, [x22, x21, lsl #2]
    1770: 12001108     	and	w8, w8, #0x1f
    1774: b9005f08     	str	w8, [x24, #0x5c]
    1778: 90000000     	adrp	x0, 0x1000 <rdbg_read+0x40>
		0000000000001778:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
    177c: 91000000     	add	x0, x0, #0x0
		000000000000177c:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
    1780: 94000000     	bl	0x1780 <rdbg_write+0x3f4>
		0000000000001780:  R_AARCH64_CALL26	mutex_unlock
    1784: aa1303e0     	mov	x0, x19
    1788: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    178c: a94757f6     	ldp	x22, x21, [sp, #0x70]
    1790: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    1794: a94567fa     	ldp	x26, x25, [sp, #0x50]
    1798: a9446ffc     	ldp	x28, x27, [sp, #0x40]
    179c: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    17a0: 910243ff     	add	sp, sp, #0x90
    17a4: d50323bf     	autiasp
    17a8: d65f03c0     	ret
    17ac: 90000000     	adrp	x0, 0x1000 <rdbg_read+0x40>
		00000000000017ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26d
    17b0: 91000000     	add	x0, x0, #0x0
		00000000000017b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26d
    17b4: 94000000     	bl	0x17b4 <rdbg_write+0x428>
		00000000000017b4:  R_AARCH64_CALL26	_printk
    17b8: 928002b3     	mov	x19, #-0x16             // =-22
    17bc: 17fffff2     	b	0x1784 <rdbg_write+0x3f8>
    17c0: 90000000     	adrp	x0, 0x1000 <rdbg_read+0x40>
		00000000000017c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58b
    17c4: 91000000     	add	x0, x0, #0x0
		00000000000017c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58b
    17c8: 94000000     	bl	0x17c8 <rdbg_write+0x43c>
		00000000000017c8:  R_AARCH64_CALL26	_printk
    17cc: 928008b3     	mov	x19, #-0x46             // =-70
    17d0: 17ffffed     	b	0x1784 <rdbg_write+0x3f8>
    17d4: 90000000     	adrp	x0, 0x1000 <rdbg_read+0x40>
		00000000000017d4:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
    17d8: 91000000     	add	x0, x0, #0x0
		00000000000017d8:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
    17dc: 94000000     	bl	0x17dc <rdbg_write+0x450>
		00000000000017dc:  R_AARCH64_CALL26	mutex_unlock
    17e0: d42aa240     	brk	#0x5512
