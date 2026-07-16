
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000013ec <gpio_keys_suspend>:
    13ec: d503233f     	paciasp
    13f0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    13f4: f9000bf7     	str	x23, [sp, #0x10]
    13f8: a90257f6     	stp	x22, x21, [sp, #0x20]
    13fc: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1400: 910003fd     	mov	x29, sp
    1404: f9404c14     	ldr	x20, [x0, #0x98]
    1408: 79421808     	ldrh	w8, [x0, #0x10c]
    140c: f9400693     	ldr	x19, [x20, #0x8]
    1410: 360005e8     	tbz	w8, #0x0, 0x14cc <gpio_keys_suspend+0xe0>
    1414: f940a408     	ldr	x8, [x0, #0x148]
    1418: b40005a8     	cbz	x8, 0x14cc <gpio_keys_suspend+0xe0>
    141c: f9400288     	ldr	x8, [x20]
    1420: b9400908     	ldr	w8, [x8, #0x8]
    1424: 7100051f     	cmp	w8, #0x1
    1428: 5400076b     	b.lt	0x1514 <gpio_keys_suspend+0x128>
    142c: aa1f03f5     	mov	x21, xzr
    1430: aa1f03f3     	mov	x19, xzr
    1434: 52800036     	mov	w22, #0x1               // =1
    1438: 14000008     	b	0x1458 <gpio_keys_suspend+0x6c>
    143c: f9400288     	ldr	x8, [x20]
    1440: 39054af6     	strb	w22, [x23, #0x152]
    1444: 91000673     	add	x19, x19, #0x1
    1448: 910442b5     	add	x21, x21, #0x110
    144c: b9800908     	ldrsw	x8, [x8, #0x8]
    1450: eb08027f     	cmp	x19, x8
    1454: 5400060a     	b.ge	0x1514 <gpio_keys_suspend+0x128>
    1458: 8b150297     	add	x23, x20, x21
    145c: f94026e8     	ldr	x8, [x23, #0x48]
    1460: b9401d08     	ldr	w8, [x8, #0x1c]
    1464: 34fffec8     	cbz	w8, 0x143c <gpio_keys_suspend+0x50>
    1468: b94106e0     	ldr	w0, [x23, #0x104]
    146c: 52800021     	mov	w1, #0x1                // =1
    1470: 94000000     	bl	0x1470 <gpio_keys_suspend+0x84>
		0000000000001470:  R_AARCH64_CALL26	irq_set_irq_wake
    1474: 350005e0     	cbnz	w0, 0x1530 <gpio_keys_suspend+0x144>
    1478: 8b150288     	add	x8, x20, x21
    147c: b9414901     	ldr	w1, [x8, #0x148]
    1480: 34fffde1     	cbz	w1, 0x143c <gpio_keys_suspend+0x50>
    1484: b94106e0     	ldr	w0, [x23, #0x104]
    1488: 94000000     	bl	0x1488 <gpio_keys_suspend+0x9c>
		0000000000001488:  R_AARCH64_CALL26	irq_set_irq_type
    148c: 34fffd80     	cbz	w0, 0x143c <gpio_keys_suspend+0x50>
    1490: 8b150296     	add	x22, x20, x21
    1494: 2a0003f3     	mov	w19, w0
    1498: 90000001     	adrp	x1, 0x1000 <gpio_keys_gpio_report_event+0x94>
		0000000000001498:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x41a
    149c: 91000021     	add	x1, x1, #0x0
		000000000000149c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x41a
    14a0: f9402ac8     	ldr	x8, [x22, #0x50]
    14a4: b9414ac2     	ldr	w2, [x22, #0x148]
    14a8: b94106c3     	ldr	w3, [x22, #0x104]
    14ac: 2a1303e4     	mov	w4, w19
    14b0: f9414908     	ldr	x8, [x8, #0x290]
    14b4: aa0803e0     	mov	x0, x8
    14b8: 94000000     	bl	0x14b8 <gpio_keys_suspend+0xcc>
		00000000000014b8:  R_AARCH64_CALL26	_dev_err
    14bc: b94106c0     	ldr	w0, [x22, #0x104]
    14c0: 2a1f03e1     	mov	w1, wzr
    14c4: 94000000     	bl	0x14c4 <gpio_keys_suspend+0xd8>
		00000000000014c4:  R_AARCH64_CALL26	irq_set_irq_wake
    14c8: 14000024     	b	0x1558 <gpio_keys_suspend+0x16c>
    14cc: 9107e260     	add	x0, x19, #0x1f8
    14d0: 94000000     	bl	0x14d0 <gpio_keys_suspend+0xe4>
		00000000000014d0:  R_AARCH64_CALL26	mutex_lock
    14d4: b9422a68     	ldr	w8, [x19, #0x228]
    14d8: 340001a8     	cbz	w8, 0x150c <gpio_keys_suspend+0x120>
    14dc: f9416668     	ldr	x8, [x19, #0x2c8]
    14e0: f9400108     	ldr	x8, [x8]
    14e4: f9401108     	ldr	x8, [x8, #0x20]
    14e8: b4000128     	cbz	x8, 0x150c <gpio_keys_suspend+0x120>
    14ec: f9414a60     	ldr	x0, [x19, #0x290]
    14f0: b85fc110     	ldur	w16, [x8, #-0x4]
    14f4: 72971911     	movk	w17, #0xb8c8
    14f8: 72ad9031     	movk	w17, #0x6c81, lsl #16
    14fc: 6b11021f     	cmp	w16, w17
    1500: 54000040     	b.eq	0x1508 <gpio_keys_suspend+0x11c>
    1504: d4304500     	brk	#0x8228
    1508: d63f0100     	blr	x8
    150c: 9107e260     	add	x0, x19, #0x1f8
    1510: 94000000     	bl	0x1510 <gpio_keys_suspend+0x124>
		0000000000001510:  R_AARCH64_CALL26	mutex_unlock
    1514: 2a1f03e0     	mov	w0, wzr
    1518: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    151c: f9400bf7     	ldr	x23, [sp, #0x10]
    1520: a94257f6     	ldp	x22, x21, [sp, #0x20]
    1524: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    1528: d50323bf     	autiasp
    152c: d65f03c0     	ret
    1530: 8b150289     	add	x9, x20, x21
    1534: 2a0003f3     	mov	w19, w0
    1538: 90000001     	adrp	x1, 0x1000 <gpio_keys_gpio_report_event+0x94>
		0000000000001538:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19e
    153c: 91000021     	add	x1, x1, #0x0
		000000000000153c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19e
    1540: f9402928     	ldr	x8, [x9, #0x50]
    1544: b9410522     	ldr	w2, [x9, #0x104]
    1548: 2a1303e3     	mov	w3, w19
    154c: f9414908     	ldr	x8, [x8, #0x290]
    1550: aa0803e0     	mov	x0, x8
    1554: 94000000     	bl	0x1554 <gpio_keys_suspend+0x168>
		0000000000001554:  R_AARCH64_CALL26	_dev_err
    1558: 2a1303e0     	mov	w0, w19
    155c: b5000195     	cbnz	x21, 0x158c <gpio_keys_suspend+0x1a0>
    1560: 17ffffee     	b	0x1518 <gpio_keys_suspend+0x12c>
    1564: 8b150297     	add	x23, x20, x21
    1568: 2a1f03e1     	mov	w1, wzr
    156c: b85f42e0     	ldur	w0, [x23, #-0xc]
    1570: 94000000     	bl	0x1570 <gpio_keys_suspend+0x184>
		0000000000001570:  R_AARCH64_CALL26	irq_set_irq_wake
    1574: 2a0003e3     	mov	w3, w0
    1578: 2a1603e0     	mov	w0, w22
    157c: 35000303     	cbnz	w3, 0x15dc <gpio_keys_suspend+0x1f0>
    1580: f10442b5     	subs	x21, x21, #0x110
    1584: 39010a7f     	strb	wzr, [x19, #0x42]
    1588: 54fffc80     	b.eq	0x1518 <gpio_keys_suspend+0x12c>
    158c: 8b150293     	add	x19, x20, x21
    1590: f8538268     	ldur	x8, [x19, #-0xc8]
    1594: b9401d08     	ldr	w8, [x8, #0x1c]
    1598: 34ffff48     	cbz	w8, 0x1580 <gpio_keys_suspend+0x194>
    159c: b9403a68     	ldr	w8, [x19, #0x38]
    15a0: 2a0003f6     	mov	w22, w0
    15a4: 34fffe08     	cbz	w8, 0x1564 <gpio_keys_suspend+0x178>
    15a8: 8b150297     	add	x23, x20, x21
    15ac: 52800061     	mov	w1, #0x3                // =3
    15b0: b85f42e0     	ldur	w0, [x23, #-0xc]
    15b4: 94000000     	bl	0x15b4 <gpio_keys_suspend+0x1c8>
		00000000000015b4:  R_AARCH64_CALL26	irq_set_irq_type
    15b8: 34fffd60     	cbz	w0, 0x1564 <gpio_keys_suspend+0x178>
    15bc: f85402e8     	ldur	x8, [x23, #-0xc0]
    15c0: 2a0003e3     	mov	w3, w0
    15c4: b85f42e2     	ldur	w2, [x23, #-0xc]
    15c8: 90000001     	adrp	x1, 0x1000 <gpio_keys_gpio_report_event+0x94>
		00000000000015c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23d
    15cc: 91000021     	add	x1, x1, #0x0
		00000000000015cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23d
    15d0: f9414900     	ldr	x0, [x8, #0x290]
    15d4: 94000000     	bl	0x15d4 <gpio_keys_suspend+0x1e8>
		00000000000015d4:  R_AARCH64_CALL26	_dev_warn
    15d8: 17ffffe3     	b	0x1564 <gpio_keys_suspend+0x178>
    15dc: f85402e8     	ldur	x8, [x23, #-0xc0]
    15e0: b85f42e2     	ldur	w2, [x23, #-0xc]
    15e4: 90000001     	adrp	x1, 0x1000 <gpio_keys_gpio_report_event+0x94>
		00000000000015e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a0
    15e8: 91000021     	add	x1, x1, #0x0
		00000000000015e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a0
    15ec: f9414900     	ldr	x0, [x8, #0x290]
    15f0: 94000000     	bl	0x15f0 <gpio_keys_suspend+0x204>
		00000000000015f0:  R_AARCH64_CALL26	_dev_warn
    15f4: 2a1603e0     	mov	w0, w22
    15f8: 17ffffe2     	b	0x1580 <gpio_keys_suspend+0x194>
