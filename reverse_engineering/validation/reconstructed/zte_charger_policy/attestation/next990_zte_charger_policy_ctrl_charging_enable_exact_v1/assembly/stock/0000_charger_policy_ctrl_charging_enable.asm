
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000013d8 <charger_policy_ctrl_charging_enable>:
    13d8: d503233f     	paciasp
    13dc: d10183ff     	sub	sp, sp, #0x60
    13e0: a9027bfd     	stp	x29, x30, [sp, #0x20]
    13e4: f9001bf7     	str	x23, [sp, #0x30]
    13e8: a90457f6     	stp	x22, x21, [sp, #0x40]
    13ec: a9054ff4     	stp	x20, x19, [sp, #0x50]
    13f0: 910083fd     	add	x29, sp, #0x20
    13f4: d5384108     	mrs	x8, SP_EL0
    13f8: aa0003f3     	mov	x19, x0
    13fc: 2a0203f5     	mov	w21, w2
    1400: f9438908     	ldr	x8, [x8, #0x710]
    1404: 2a0103f4     	mov	w20, w1
    1408: d10033a2     	sub	x2, x29, #0xc
    140c: 2a1f03e1     	mov	w1, wzr
    1410: f81f83a8     	stur	x8, [x29, #-0x8]
    1414: f940dc00     	ldr	x0, [x0, #0x1b8]
    1418: 2901ffff     	stp	wzr, wzr, [sp, #0xc]
    141c: b81f43bf     	stur	wzr, [x29, #-0xc]
    1420: 97ffff62     	bl	0x11a8 <charger_policy_get_prop_by_name>
    1424: 36f80100     	tbz	w0, #0x1f, 0x1444 <charger_policy_ctrl_charging_enable+0x6c>
    1428: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001428:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1408
    142c: 91000000     	add	x0, x0, #0x0
		000000000000142c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1408
    1430: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001430:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f9
    1434: 91000021     	add	x1, x1, #0x0
		0000000000001434:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f9
    1438: 94000000     	bl	0x1438 <charger_policy_ctrl_charging_enable+0x60>
		0000000000001438:  R_AARCH64_CALL26	_printk
    143c: 2a1f03f6     	mov	w22, wzr
    1440: 1400000b     	b	0x146c <charger_policy_ctrl_charging_enable+0x94>
    1444: b85f43a8     	ldur	w8, [x29, #-0xc]
    1448: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001448:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x166e
    144c: 91000000     	add	x0, x0, #0x0
		000000000000144c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x166e
    1450: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001450:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f9
    1454: 91000021     	add	x1, x1, #0x0
		0000000000001454:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f9
    1458: 7100051f     	cmp	w8, #0x1
    145c: 7a441904     	ccmp	w8, #0x4, #0x4, ne
    1460: 1a9f17f6     	cset	w22, eq
    1464: 2a1603e2     	mov	w2, w22
    1468: 94000000     	bl	0x1468 <charger_policy_ctrl_charging_enable+0x90>
		0000000000001468:  R_AARCH64_CALL26	_printk
    146c: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		000000000000146c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d26
    1470: 91000000     	add	x0, x0, #0x0
		0000000000001470:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d26
    1474: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001474:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc7a
    1478: 91000021     	add	x1, x1, #0x0
		0000000000001478:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc7a
    147c: 2a1603e2     	mov	w2, w22
    1480: 94000000     	bl	0x1480 <charger_policy_ctrl_charging_enable+0xa8>
		0000000000001480:  R_AARCH64_CALL26	_printk
    1484: f940e260     	ldr	x0, [x19, #0x1c0]
    1488: 910033e2     	add	x2, sp, #0xc
    148c: 52800061     	mov	w1, #0x3                // =3
    1490: 94000058     	bl	0x15f0 <zte_charger_policy_get_prop_by_name>
    1494: 36f80080     	tbz	w0, #0x1f, 0x14a4 <charger_policy_ctrl_charging_enable+0xcc>
    1498: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001498:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26b
    149c: 91000000     	add	x0, x0, #0x0
		000000000000149c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26b
    14a0: 1400000f     	b	0x14dc <charger_policy_ctrl_charging_enable+0x104>
    14a4: b9400ff6     	ldr	w22, [sp, #0xc]
    14a8: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		00000000000014a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d48
    14ac: 91000000     	add	x0, x0, #0x0
		00000000000014ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d48
    14b0: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		00000000000014b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc7a
    14b4: 91000021     	add	x1, x1, #0x0
		00000000000014b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc7a
    14b8: 2a1603e2     	mov	w2, w22
    14bc: 94000000     	bl	0x14bc <charger_policy_ctrl_charging_enable+0xe4>
		00000000000014bc:  R_AARCH64_CALL26	_printk
    14c0: f940e260     	ldr	x0, [x19, #0x1c0]
    14c4: 910043e2     	add	x2, sp, #0x10
    14c8: 52800081     	mov	w1, #0x4                // =4
    14cc: 94000049     	bl	0x15f0 <zte_charger_policy_get_prop_by_name>
    14d0: 36f80100     	tbz	w0, #0x1f, 0x14f0 <charger_policy_ctrl_charging_enable+0x118>
    14d4: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		00000000000014d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ae
    14d8: 91000000     	add	x0, x0, #0x0
		00000000000014d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ae
    14dc: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		00000000000014dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc7a
    14e0: 91000021     	add	x1, x1, #0x0
		00000000000014e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc7a
    14e4: 94000000     	bl	0x14e4 <charger_policy_ctrl_charging_enable+0x10c>
		00000000000014e4:  R_AARCH64_CALL26	_printk
    14e8: 2a1f03e0     	mov	w0, wzr
    14ec: 14000016     	b	0x1544 <charger_policy_ctrl_charging_enable+0x16c>
    14f0: b94013f7     	ldr	w23, [sp, #0x10]
    14f4: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		00000000000014f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b5d
    14f8: 91000000     	add	x0, x0, #0x0
		00000000000014f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b5d
    14fc: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		00000000000014fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc7a
    1500: 91000021     	add	x1, x1, #0x0
		0000000000001500:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc7a
    1504: 2a1703e2     	mov	w2, w23
    1508: 94000000     	bl	0x1508 <charger_policy_ctrl_charging_enable+0x130>
		0000000000001508:  R_AARCH64_CALL26	_printk
    150c: 120002b5     	and	w21, w21, #0x1
    1510: 12000294     	and	w20, w20, #0x1
    1514: 6b1502df     	cmp	w22, w21
    1518: 540002e1     	b.ne	0x1574 <charger_policy_ctrl_charging_enable+0x19c>
    151c: 6b1402ff     	cmp	w23, w20
    1520: 540004c1     	b.ne	0x15b8 <charger_policy_ctrl_charging_enable+0x1e0>
    1524: 6b1402ff     	cmp	w23, w20
    1528: 540000c0     	b.eq	0x1540 <charger_policy_ctrl_charging_enable+0x168>
    152c: f940e260     	ldr	x0, [x19, #0x1c0]
    1530: 52800081     	mov	w1, #0x4                // =4
    1534: 2a1403e2     	mov	w2, w20
    1538: 9400006f     	bl	0x16f4 <zte_charger_policy_set_prop_by_name>
    153c: 37f80520     	tbnz	w0, #0x1f, 0x15e0 <charger_policy_ctrl_charging_enable+0x208>
    1540: 52800020     	mov	w0, #0x1                // =1
    1544: d5384108     	mrs	x8, SP_EL0
    1548: f9438908     	ldr	x8, [x8, #0x710]
    154c: f85f83a9     	ldur	x9, [x29, #-0x8]
    1550: eb09011f     	cmp	x8, x9
    1554: 540004c1     	b.ne	0x15ec <charger_policy_ctrl_charging_enable+0x214>
    1558: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    155c: f9401bf7     	ldr	x23, [sp, #0x30]
    1560: a94457f6     	ldp	x22, x21, [sp, #0x40]
    1564: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    1568: 910183ff     	add	sp, sp, #0x60
    156c: d50323bf     	autiasp
    1570: d65f03c0     	ret
    1574: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001574:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b8c
    1578: 91000000     	add	x0, x0, #0x0
		0000000000001578:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b8c
    157c: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		000000000000157c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc7a
    1580: 91000021     	add	x1, x1, #0x0
		0000000000001580:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc7a
    1584: 2a1603e2     	mov	w2, w22
    1588: 2a1503e3     	mov	w3, w21
    158c: 2a1703e4     	mov	w4, w23
    1590: 2a1403e5     	mov	w5, w20
    1594: 94000000     	bl	0x1594 <charger_policy_ctrl_charging_enable+0x1bc>
		0000000000001594:  R_AARCH64_CALL26	_printk
    1598: f940e260     	ldr	x0, [x19, #0x1c0]
    159c: 52800061     	mov	w1, #0x3                // =3
    15a0: 2a1503e2     	mov	w2, w21
    15a4: 94000054     	bl	0x16f4 <zte_charger_policy_set_prop_by_name>
    15a8: 36fffbe0     	tbz	w0, #0x1f, 0x1524 <charger_policy_ctrl_charging_enable+0x14c>
    15ac: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		00000000000015ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x39d
    15b0: 91000000     	add	x0, x0, #0x0
		00000000000015b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x39d
    15b4: 17ffffca     	b	0x14dc <charger_policy_ctrl_charging_enable+0x104>
    15b8: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		00000000000015b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b8c
    15bc: 91000000     	add	x0, x0, #0x0
		00000000000015bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b8c
    15c0: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		00000000000015c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc7a
    15c4: 91000021     	add	x1, x1, #0x0
		00000000000015c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc7a
    15c8: 2a1603e2     	mov	w2, w22
    15cc: 2a1603e3     	mov	w3, w22
    15d0: 2a1703e4     	mov	w4, w23
    15d4: 2a1403e5     	mov	w5, w20
    15d8: 94000000     	bl	0x15d8 <charger_policy_ctrl_charging_enable+0x200>
		00000000000015d8:  R_AARCH64_CALL26	_printk
    15dc: 17ffffd2     	b	0x1524 <charger_policy_ctrl_charging_enable+0x14c>
    15e0: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		00000000000015e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1087
    15e4: 91000000     	add	x0, x0, #0x0
		00000000000015e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1087
    15e8: 17ffffbd     	b	0x14dc <charger_policy_ctrl_charging_enable+0x104>
    15ec: 94000000     	bl	0x15ec <charger_policy_ctrl_charging_enable+0x214>
		00000000000015ec:  R_AARCH64_CALL26	__stack_chk_fail
