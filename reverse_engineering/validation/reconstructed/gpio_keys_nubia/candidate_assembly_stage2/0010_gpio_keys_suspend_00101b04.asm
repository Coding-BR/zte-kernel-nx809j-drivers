
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000013a0 <gpio_keys_suspend>:
    13a0: d503233f     	paciasp
    13a4: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    13a8: f9000bf7     	str	x23, [sp, #0x10]
    13ac: a90257f6     	stp	x22, x21, [sp, #0x20]
    13b0: a9034ff4     	stp	x20, x19, [sp, #0x30]
    13b4: 910003fd     	mov	x29, sp
    13b8: f9404c14     	ldr	x20, [x0, #0x98]
    13bc: 79421808     	ldrh	w8, [x0, #0x10c]
    13c0: f9400693     	ldr	x19, [x20, #0x8]
    13c4: 360005e8     	tbz	w8, #0x0, 0x1480 <gpio_keys_suspend+0xe0>
    13c8: f940a408     	ldr	x8, [x0, #0x148]
    13cc: b40005a8     	cbz	x8, 0x1480 <gpio_keys_suspend+0xe0>
    13d0: f9400288     	ldr	x8, [x20]
    13d4: b9400908     	ldr	w8, [x8, #0x8]
    13d8: 7100051f     	cmp	w8, #0x1
    13dc: 5400076b     	b.lt	0x14c8 <gpio_keys_suspend+0x128>
    13e0: aa1f03f5     	mov	x21, xzr
    13e4: aa1f03f3     	mov	x19, xzr
    13e8: 52800036     	mov	w22, #0x1               // =1
    13ec: 14000008     	b	0x140c <gpio_keys_suspend+0x6c>
    13f0: f9400288     	ldr	x8, [x20]
    13f4: 39054af6     	strb	w22, [x23, #0x152]
    13f8: 91000673     	add	x19, x19, #0x1
    13fc: 910442b5     	add	x21, x21, #0x110
    1400: b9800908     	ldrsw	x8, [x8, #0x8]
    1404: eb08027f     	cmp	x19, x8
    1408: 5400060a     	b.ge	0x14c8 <gpio_keys_suspend+0x128>
    140c: 8b150297     	add	x23, x20, x21
    1410: f94026e8     	ldr	x8, [x23, #0x48]
    1414: b9401d08     	ldr	w8, [x8, #0x1c]
    1418: 34fffec8     	cbz	w8, 0x13f0 <gpio_keys_suspend+0x50>
    141c: b94106e0     	ldr	w0, [x23, #0x104]
    1420: 52800021     	mov	w1, #0x1                // =1
    1424: 94000000     	bl	0x1424 <gpio_keys_suspend+0x84>
		0000000000001424:  R_AARCH64_CALL26	irq_set_irq_wake
    1428: 350005e0     	cbnz	w0, 0x14e4 <gpio_keys_suspend+0x144>
    142c: 8b150288     	add	x8, x20, x21
    1430: b9414901     	ldr	w1, [x8, #0x148]
    1434: 34fffde1     	cbz	w1, 0x13f0 <gpio_keys_suspend+0x50>
    1438: b94106e0     	ldr	w0, [x23, #0x104]
    143c: 94000000     	bl	0x143c <gpio_keys_suspend+0x9c>
		000000000000143c:  R_AARCH64_CALL26	irq_set_irq_type
    1440: 34fffd80     	cbz	w0, 0x13f0 <gpio_keys_suspend+0x50>
    1444: 8b150296     	add	x22, x20, x21
    1448: 2a0003f3     	mov	w19, w0
    144c: 90000001     	adrp	x1, 0x1000 <gpio_keys_gpio_report_event+0xe0>
		000000000000144c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
    1450: 91000021     	add	x1, x1, #0x0
		0000000000001450:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
    1454: f9402ac8     	ldr	x8, [x22, #0x50]
    1458: b9414ac2     	ldr	w2, [x22, #0x148]
    145c: b94106c3     	ldr	w3, [x22, #0x104]
    1460: 2a1303e4     	mov	w4, w19
    1464: f9414908     	ldr	x8, [x8, #0x290]
    1468: aa0803e0     	mov	x0, x8
    146c: 94000000     	bl	0x146c <gpio_keys_suspend+0xcc>
		000000000000146c:  R_AARCH64_CALL26	_dev_err
    1470: b94106c0     	ldr	w0, [x22, #0x104]
    1474: 2a1f03e1     	mov	w1, wzr
    1478: 94000000     	bl	0x1478 <gpio_keys_suspend+0xd8>
		0000000000001478:  R_AARCH64_CALL26	irq_set_irq_wake
    147c: 14000024     	b	0x150c <gpio_keys_suspend+0x16c>
    1480: 9107e260     	add	x0, x19, #0x1f8
    1484: 94000000     	bl	0x1484 <gpio_keys_suspend+0xe4>
		0000000000001484:  R_AARCH64_CALL26	mutex_lock
    1488: b9422a68     	ldr	w8, [x19, #0x228]
    148c: 340001a8     	cbz	w8, 0x14c0 <gpio_keys_suspend+0x120>
    1490: f9416668     	ldr	x8, [x19, #0x2c8]
    1494: f9400108     	ldr	x8, [x8]
    1498: f9401108     	ldr	x8, [x8, #0x20]
    149c: b4000128     	cbz	x8, 0x14c0 <gpio_keys_suspend+0x120>
    14a0: f9414a60     	ldr	x0, [x19, #0x290]
    14a4: b85fc110     	ldur	w16, [x8, #-0x4]
    14a8: 72971911     	movk	w17, #0xb8c8
    14ac: 72ad9031     	movk	w17, #0x6c81, lsl #16
    14b0: 6b11021f     	cmp	w16, w17
    14b4: 54000040     	b.eq	0x14bc <gpio_keys_suspend+0x11c>
    14b8: d4304500     	brk	#0x8228
    14bc: d63f0100     	blr	x8
    14c0: 9107e260     	add	x0, x19, #0x1f8
    14c4: 94000000     	bl	0x14c4 <gpio_keys_suspend+0x124>
		00000000000014c4:  R_AARCH64_CALL26	mutex_unlock
    14c8: 2a1f03e0     	mov	w0, wzr
    14cc: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    14d0: f9400bf7     	ldr	x23, [sp, #0x10]
    14d4: a94257f6     	ldp	x22, x21, [sp, #0x20]
    14d8: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    14dc: d50323bf     	autiasp
    14e0: d65f03c0     	ret
    14e4: 8b150289     	add	x9, x20, x21
    14e8: 2a0003f3     	mov	w19, w0
    14ec: 90000001     	adrp	x1, 0x1000 <gpio_keys_gpio_report_event+0xe0>
		00000000000014ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac
    14f0: 91000021     	add	x1, x1, #0x0
		00000000000014f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac
    14f4: f9402928     	ldr	x8, [x9, #0x50]
    14f8: b9410522     	ldr	w2, [x9, #0x104]
    14fc: 2a1303e3     	mov	w3, w19
    1500: f9414908     	ldr	x8, [x8, #0x290]
    1504: aa0803e0     	mov	x0, x8
    1508: 94000000     	bl	0x1508 <gpio_keys_suspend+0x168>
		0000000000001508:  R_AARCH64_CALL26	_dev_err
    150c: 2a1303e0     	mov	w0, w19
    1510: b5000195     	cbnz	x21, 0x1540 <gpio_keys_suspend+0x1a0>
    1514: 17ffffee     	b	0x14cc <gpio_keys_suspend+0x12c>
    1518: 8b150297     	add	x23, x20, x21
    151c: 2a1f03e1     	mov	w1, wzr
    1520: b85f42e0     	ldur	w0, [x23, #-0xc]
    1524: 94000000     	bl	0x1524 <gpio_keys_suspend+0x184>
		0000000000001524:  R_AARCH64_CALL26	irq_set_irq_wake
    1528: 2a0003e3     	mov	w3, w0
    152c: 2a1603e0     	mov	w0, w22
    1530: 35000303     	cbnz	w3, 0x1590 <gpio_keys_suspend+0x1f0>
    1534: f10442b5     	subs	x21, x21, #0x110
    1538: 39010a7f     	strb	wzr, [x19, #0x42]
    153c: 54fffc80     	b.eq	0x14cc <gpio_keys_suspend+0x12c>
    1540: 8b150293     	add	x19, x20, x21
    1544: f8538268     	ldur	x8, [x19, #-0xc8]
    1548: b9401d08     	ldr	w8, [x8, #0x1c]
    154c: 34ffff48     	cbz	w8, 0x1534 <gpio_keys_suspend+0x194>
    1550: b9403a68     	ldr	w8, [x19, #0x38]
    1554: 2a0003f6     	mov	w22, w0
    1558: 34fffe08     	cbz	w8, 0x1518 <gpio_keys_suspend+0x178>
    155c: 8b150297     	add	x23, x20, x21
    1560: 52800061     	mov	w1, #0x3                // =3
    1564: b85f42e0     	ldur	w0, [x23, #-0xc]
    1568: 94000000     	bl	0x1568 <gpio_keys_suspend+0x1c8>
		0000000000001568:  R_AARCH64_CALL26	irq_set_irq_type
    156c: 34fffd60     	cbz	w0, 0x1518 <gpio_keys_suspend+0x178>
    1570: f85402e8     	ldur	x8, [x23, #-0xc0]
    1574: 2a0003e3     	mov	w3, w0
    1578: b85f42e2     	ldur	w2, [x23, #-0xc]
    157c: 90000001     	adrp	x1, 0x1000 <gpio_keys_gpio_report_event+0xe0>
		000000000000157c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24b
    1580: 91000021     	add	x1, x1, #0x0
		0000000000001580:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24b
    1584: f9414900     	ldr	x0, [x8, #0x290]
    1588: 94000000     	bl	0x1588 <gpio_keys_suspend+0x1e8>
		0000000000001588:  R_AARCH64_CALL26	_dev_warn
    158c: 17ffffe3     	b	0x1518 <gpio_keys_suspend+0x178>
    1590: f85402e8     	ldur	x8, [x23, #-0xc0]
    1594: b85f42e2     	ldur	w2, [x23, #-0xc]
    1598: 90000001     	adrp	x1, 0x1000 <gpio_keys_gpio_report_event+0xe0>
		0000000000001598:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x54d
    159c: 91000021     	add	x1, x1, #0x0
		000000000000159c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x54d
    15a0: f9414900     	ldr	x0, [x8, #0x290]
    15a4: 94000000     	bl	0x15a4 <gpio_keys_suspend+0x204>
		00000000000015a4:  R_AARCH64_CALL26	_dev_warn
    15a8: 2a1603e0     	mov	w0, w22
    15ac: 17ffffe2     	b	0x1534 <gpio_keys_suspend+0x194>
