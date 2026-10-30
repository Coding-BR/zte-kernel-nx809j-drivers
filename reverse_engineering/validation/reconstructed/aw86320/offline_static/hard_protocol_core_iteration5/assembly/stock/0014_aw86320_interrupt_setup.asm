
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000014ac <aw86320_interrupt_setup>:
    14ac: d503233f     	paciasp
    14b0: d100c3ff     	sub	sp, sp, #0x30
    14b4: a9017bfd     	stp	x29, x30, [sp, #0x10]
    14b8: f90013f3     	str	x19, [sp, #0x20]
    14bc: 910043fd     	add	x29, sp, #0x10
    14c0: d5384108     	mrs	x8, SP_EL0
    14c4: 910013e2     	add	x2, sp, #0x4
    14c8: 528000a1     	mov	w1, #0x5                // =5
    14cc: f9438908     	ldr	x8, [x8, #0x710]
    14d0: aa0003f3     	mov	x19, x0
    14d4: f90007e8     	str	x8, [sp, #0x8]
    14d8: 79000bff     	strh	wzr, [sp, #0x4]
    14dc: 97fffc46     	bl	0x5f4 <haptic_i2c_read>
    14e0: 37f80b20     	tbnz	w0, #0x1f, 0x1644 <aw86320_interrupt_setup+0x198>
    14e4: 79400be8     	ldrh	w8, [sp, #0x4]
    14e8: aa1303e0     	mov	x0, x19
    14ec: 528000a1     	mov	w1, #0x5                // =5
    14f0: 12167902     	and	w2, w8, #0xfffffdff
    14f4: 97fffbd2     	bl	0x43c <haptic_i2c_write>
    14f8: 37f81240     	tbnz	w0, #0x1f, 0x1740 <aw86320_interrupt_setup+0x294>
    14fc: 910013e2     	add	x2, sp, #0x4
    1500: aa1303e0     	mov	x0, x19
    1504: 528000a1     	mov	w1, #0x5                // =5
    1508: 79000bff     	strh	wzr, [sp, #0x4]
    150c: 97fffc3a     	bl	0x5f4 <haptic_i2c_read>
    1510: 37f80ac0     	tbnz	w0, #0x1f, 0x1668 <aw86320_interrupt_setup+0x1bc>
    1514: 79400be8     	ldrh	w8, [sp, #0x4]
    1518: aa1303e0     	mov	x0, x19
    151c: 528000a1     	mov	w1, #0x5                // =5
    1520: 12177902     	and	w2, w8, #0xfffffeff
    1524: 97fffbc6     	bl	0x43c <haptic_i2c_write>
    1528: 37f81200     	tbnz	w0, #0x1f, 0x1768 <aw86320_interrupt_setup+0x2bc>
    152c: 910013e2     	add	x2, sp, #0x4
    1530: aa1303e0     	mov	x0, x19
    1534: 528000a1     	mov	w1, #0x5                // =5
    1538: 79000bff     	strh	wzr, [sp, #0x4]
    153c: 97fffc2e     	bl	0x5f4 <haptic_i2c_read>
    1540: 37f80a60     	tbnz	w0, #0x1f, 0x168c <aw86320_interrupt_setup+0x1e0>
    1544: 79400be8     	ldrh	w8, [sp, #0x4]
    1548: aa1303e0     	mov	x0, x19
    154c: 528000a1     	mov	w1, #0x5                // =5
    1550: 12187902     	and	w2, w8, #0xffffff7f
    1554: 97fffbba     	bl	0x43c <haptic_i2c_write>
    1558: 37f811c0     	tbnz	w0, #0x1f, 0x1790 <aw86320_interrupt_setup+0x2e4>
    155c: 910013e2     	add	x2, sp, #0x4
    1560: aa1303e0     	mov	x0, x19
    1564: 528000a1     	mov	w1, #0x5                // =5
    1568: 79000bff     	strh	wzr, [sp, #0x4]
    156c: 97fffc22     	bl	0x5f4 <haptic_i2c_read>
    1570: 37f80a00     	tbnz	w0, #0x1f, 0x16b0 <aw86320_interrupt_setup+0x204>
    1574: 79400be8     	ldrh	w8, [sp, #0x4]
    1578: aa1303e0     	mov	x0, x19
    157c: 528000a1     	mov	w1, #0x5                // =5
    1580: 12197902     	and	w2, w8, #0xffffffbf
    1584: 97fffbae     	bl	0x43c <haptic_i2c_write>
    1588: 37f81180     	tbnz	w0, #0x1f, 0x17b8 <aw86320_interrupt_setup+0x30c>
    158c: 910013e2     	add	x2, sp, #0x4
    1590: aa1303e0     	mov	x0, x19
    1594: 528000a1     	mov	w1, #0x5                // =5
    1598: 79000bff     	strh	wzr, [sp, #0x4]
    159c: 97fffc16     	bl	0x5f4 <haptic_i2c_read>
    15a0: 37f809a0     	tbnz	w0, #0x1f, 0x16d4 <aw86320_interrupt_setup+0x228>
    15a4: 79400be8     	ldrh	w8, [sp, #0x4]
    15a8: aa1303e0     	mov	x0, x19
    15ac: 528000a1     	mov	w1, #0x5                // =5
    15b0: 121a7902     	and	w2, w8, #0xffffffdf
    15b4: 97fffba2     	bl	0x43c <haptic_i2c_write>
    15b8: 37f81140     	tbnz	w0, #0x1f, 0x17e0 <aw86320_interrupt_setup+0x334>
    15bc: 910013e2     	add	x2, sp, #0x4
    15c0: aa1303e0     	mov	x0, x19
    15c4: 528000a1     	mov	w1, #0x5                // =5
    15c8: 79000bff     	strh	wzr, [sp, #0x4]
    15cc: 97fffc0a     	bl	0x5f4 <haptic_i2c_read>
    15d0: 37f80940     	tbnz	w0, #0x1f, 0x16f8 <aw86320_interrupt_setup+0x24c>
    15d4: 79400be8     	ldrh	w8, [sp, #0x4]
    15d8: aa1303e0     	mov	x0, x19
    15dc: 528000a1     	mov	w1, #0x5                // =5
    15e0: 121b7902     	and	w2, w8, #0xffffffef
    15e4: 97fffb96     	bl	0x43c <haptic_i2c_write>
    15e8: 37f81100     	tbnz	w0, #0x1f, 0x1808 <aw86320_interrupt_setup+0x35c>
    15ec: 910013e2     	add	x2, sp, #0x4
    15f0: aa1303e0     	mov	x0, x19
    15f4: 528000a1     	mov	w1, #0x5                // =5
    15f8: 79000bff     	strh	wzr, [sp, #0x4]
    15fc: 97fffbfe     	bl	0x5f4 <haptic_i2c_read>
    1600: 37f808e0     	tbnz	w0, #0x1f, 0x171c <aw86320_interrupt_setup+0x270>
    1604: 79400be8     	ldrh	w8, [sp, #0x4]
    1608: aa1303e0     	mov	x0, x19
    160c: 528000a1     	mov	w1, #0x5                // =5
    1610: 121c7902     	and	w2, w8, #0xfffffff7
    1614: 97fffb8a     	bl	0x43c <haptic_i2c_write>
    1618: 37f810c0     	tbnz	w0, #0x1f, 0x1830 <aw86320_interrupt_setup+0x384>
    161c: d5384108     	mrs	x8, SP_EL0
    1620: f9438908     	ldr	x8, [x8, #0x710]
    1624: f94007e9     	ldr	x9, [sp, #0x8]
    1628: eb09011f     	cmp	x8, x9
    162c: 54001161     	b.ne	0x1858 <aw86320_interrupt_setup+0x3ac>
    1630: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1634: f94013f3     	ldr	x19, [sp, #0x20]
    1638: 9100c3ff     	add	sp, sp, #0x30
    163c: d50323bf     	autiasp
    1640: d65f03c0     	ret
    1644: 2a0003e4     	mov	w4, w0
    1648: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		0000000000001648:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc38
    164c: 91000000     	add	x0, x0, #0x0
		000000000000164c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc38
    1650: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		0000000000001650:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    1654: 91000021     	add	x1, x1, #0x0
		0000000000001654:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    1658: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		0000000000001658:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd
    165c: 91000063     	add	x3, x3, #0x0
		000000000000165c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd
    1660: 528015e2     	mov	w2, #0xaf               // =175
    1664: 1400003f     	b	0x1760 <aw86320_interrupt_setup+0x2b4>
    1668: 2a0003e4     	mov	w4, w0
    166c: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		000000000000166c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc38
    1670: 91000000     	add	x0, x0, #0x0
		0000000000001670:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc38
    1674: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		0000000000001674:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    1678: 91000021     	add	x1, x1, #0x0
		0000000000001678:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    167c: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		000000000000167c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd
    1680: 91000063     	add	x3, x3, #0x0
		0000000000001680:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd
    1684: 528015e2     	mov	w2, #0xaf               // =175
    1688: 14000040     	b	0x1788 <aw86320_interrupt_setup+0x2dc>
    168c: 2a0003e4     	mov	w4, w0
    1690: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		0000000000001690:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc38
    1694: 91000000     	add	x0, x0, #0x0
		0000000000001694:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc38
    1698: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		0000000000001698:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    169c: 91000021     	add	x1, x1, #0x0
		000000000000169c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    16a0: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		00000000000016a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd
    16a4: 91000063     	add	x3, x3, #0x0
		00000000000016a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd
    16a8: 528015e2     	mov	w2, #0xaf               // =175
    16ac: 14000041     	b	0x17b0 <aw86320_interrupt_setup+0x304>
    16b0: 2a0003e4     	mov	w4, w0
    16b4: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		00000000000016b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc38
    16b8: 91000000     	add	x0, x0, #0x0
		00000000000016b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc38
    16bc: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		00000000000016bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    16c0: 91000021     	add	x1, x1, #0x0
		00000000000016c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    16c4: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		00000000000016c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd
    16c8: 91000063     	add	x3, x3, #0x0
		00000000000016c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd
    16cc: 528015e2     	mov	w2, #0xaf               // =175
    16d0: 14000042     	b	0x17d8 <aw86320_interrupt_setup+0x32c>
    16d4: 2a0003e4     	mov	w4, w0
    16d8: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		00000000000016d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc38
    16dc: 91000000     	add	x0, x0, #0x0
		00000000000016dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc38
    16e0: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		00000000000016e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    16e4: 91000021     	add	x1, x1, #0x0
		00000000000016e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    16e8: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		00000000000016e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd
    16ec: 91000063     	add	x3, x3, #0x0
		00000000000016ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd
    16f0: 528015e2     	mov	w2, #0xaf               // =175
    16f4: 14000043     	b	0x1800 <aw86320_interrupt_setup+0x354>
    16f8: 2a0003e4     	mov	w4, w0
    16fc: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		00000000000016fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc38
    1700: 91000000     	add	x0, x0, #0x0
		0000000000001700:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc38
    1704: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		0000000000001704:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    1708: 91000021     	add	x1, x1, #0x0
		0000000000001708:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    170c: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		000000000000170c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd
    1710: 91000063     	add	x3, x3, #0x0
		0000000000001710:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd
    1714: 528015e2     	mov	w2, #0xaf               // =175
    1718: 14000044     	b	0x1828 <aw86320_interrupt_setup+0x37c>
    171c: 2a0003e4     	mov	w4, w0
    1720: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		0000000000001720:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc38
    1724: 91000000     	add	x0, x0, #0x0
		0000000000001724:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc38
    1728: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		0000000000001728:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    172c: 91000021     	add	x1, x1, #0x0
		000000000000172c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    1730: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		0000000000001730:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd
    1734: 91000063     	add	x3, x3, #0x0
		0000000000001734:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd
    1738: 528015e2     	mov	w2, #0xaf               // =175
    173c: 14000045     	b	0x1850 <aw86320_interrupt_setup+0x3a4>
    1740: 2a0003e4     	mov	w4, w0
    1744: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		0000000000001744:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xea8
    1748: 91000000     	add	x0, x0, #0x0
		0000000000001748:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xea8
    174c: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		000000000000174c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    1750: 91000021     	add	x1, x1, #0x0
		0000000000001750:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    1754: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		0000000000001754:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd
    1758: 91000063     	add	x3, x3, #0x0
		0000000000001758:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd
    175c: 52801702     	mov	w2, #0xb8               // =184
    1760: 94000000     	bl	0x1760 <aw86320_interrupt_setup+0x2b4>
		0000000000001760:  R_AARCH64_CALL26	_printk
    1764: 17ffff66     	b	0x14fc <aw86320_interrupt_setup+0x50>
    1768: 2a0003e4     	mov	w4, w0
    176c: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		000000000000176c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xea8
    1770: 91000000     	add	x0, x0, #0x0
		0000000000001770:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xea8
    1774: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		0000000000001774:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    1778: 91000021     	add	x1, x1, #0x0
		0000000000001778:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    177c: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		000000000000177c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd
    1780: 91000063     	add	x3, x3, #0x0
		0000000000001780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd
    1784: 52801702     	mov	w2, #0xb8               // =184
    1788: 94000000     	bl	0x1788 <aw86320_interrupt_setup+0x2dc>
		0000000000001788:  R_AARCH64_CALL26	_printk
    178c: 17ffff68     	b	0x152c <aw86320_interrupt_setup+0x80>
    1790: 2a0003e4     	mov	w4, w0
    1794: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		0000000000001794:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xea8
    1798: 91000000     	add	x0, x0, #0x0
		0000000000001798:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xea8
    179c: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		000000000000179c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    17a0: 91000021     	add	x1, x1, #0x0
		00000000000017a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    17a4: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		00000000000017a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd
    17a8: 91000063     	add	x3, x3, #0x0
		00000000000017a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd
    17ac: 52801702     	mov	w2, #0xb8               // =184
    17b0: 94000000     	bl	0x17b0 <aw86320_interrupt_setup+0x304>
		00000000000017b0:  R_AARCH64_CALL26	_printk
    17b4: 17ffff6a     	b	0x155c <aw86320_interrupt_setup+0xb0>
    17b8: 2a0003e4     	mov	w4, w0
    17bc: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		00000000000017bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xea8
    17c0: 91000000     	add	x0, x0, #0x0
		00000000000017c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xea8
    17c4: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		00000000000017c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    17c8: 91000021     	add	x1, x1, #0x0
		00000000000017c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    17cc: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		00000000000017cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd
    17d0: 91000063     	add	x3, x3, #0x0
		00000000000017d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd
    17d4: 52801702     	mov	w2, #0xb8               // =184
    17d8: 94000000     	bl	0x17d8 <aw86320_interrupt_setup+0x32c>
		00000000000017d8:  R_AARCH64_CALL26	_printk
    17dc: 17ffff6c     	b	0x158c <aw86320_interrupt_setup+0xe0>
    17e0: 2a0003e4     	mov	w4, w0
    17e4: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		00000000000017e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xea8
    17e8: 91000000     	add	x0, x0, #0x0
		00000000000017e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xea8
    17ec: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		00000000000017ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    17f0: 91000021     	add	x1, x1, #0x0
		00000000000017f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    17f4: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		00000000000017f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd
    17f8: 91000063     	add	x3, x3, #0x0
		00000000000017f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd
    17fc: 52801702     	mov	w2, #0xb8               // =184
    1800: 94000000     	bl	0x1800 <aw86320_interrupt_setup+0x354>
		0000000000001800:  R_AARCH64_CALL26	_printk
    1804: 17ffff6e     	b	0x15bc <aw86320_interrupt_setup+0x110>
    1808: 2a0003e4     	mov	w4, w0
    180c: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		000000000000180c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xea8
    1810: 91000000     	add	x0, x0, #0x0
		0000000000001810:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xea8
    1814: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		0000000000001814:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    1818: 91000021     	add	x1, x1, #0x0
		0000000000001818:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    181c: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		000000000000181c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd
    1820: 91000063     	add	x3, x3, #0x0
		0000000000001820:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd
    1824: 52801702     	mov	w2, #0xb8               // =184
    1828: 94000000     	bl	0x1828 <aw86320_interrupt_setup+0x37c>
		0000000000001828:  R_AARCH64_CALL26	_printk
    182c: 17ffff70     	b	0x15ec <aw86320_interrupt_setup+0x140>
    1830: 2a0003e4     	mov	w4, w0
    1834: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		0000000000001834:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xea8
    1838: 91000000     	add	x0, x0, #0x0
		0000000000001838:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xea8
    183c: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		000000000000183c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    1840: 91000021     	add	x1, x1, #0x0
		0000000000001840:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    1844: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		0000000000001844:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd
    1848: 91000063     	add	x3, x3, #0x0
		0000000000001848:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd
    184c: 52801702     	mov	w2, #0xb8               // =184
    1850: 94000000     	bl	0x1850 <aw86320_interrupt_setup+0x3a4>
		0000000000001850:  R_AARCH64_CALL26	_printk
    1854: 17ffff72     	b	0x161c <aw86320_interrupt_setup+0x170>
    1858: 94000000     	bl	0x1858 <aw86320_interrupt_setup+0x3ac>
		0000000000001858:  R_AARCH64_CALL26	__stack_chk_fail
