
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000013f4 <gpio_keys_suspend>:
    13f4: d503233f     	paciasp
    13f8: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    13fc: f9000bf7     	str	x23, [sp, #0x10]
    1400: a90257f6     	stp	x22, x21, [sp, #0x20]
    1404: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1408: 910003fd     	mov	x29, sp
    140c: f9404c14     	ldr	x20, [x0, #0x98]
    1410: 79421808     	ldrh	w8, [x0, #0x10c]
    1414: f9400693     	ldr	x19, [x20, #0x8]
    1418: 360005e8     	tbz	w8, #0x0, 0x14d4 <gpio_keys_suspend+0xe0>
    141c: f940a408     	ldr	x8, [x0, #0x148]
    1420: b40005a8     	cbz	x8, 0x14d4 <gpio_keys_suspend+0xe0>
    1424: f9400288     	ldr	x8, [x20]
    1428: b9400908     	ldr	w8, [x8, #0x8]
    142c: 7100051f     	cmp	w8, #0x1
    1430: 5400076b     	b.lt	0x151c <gpio_keys_suspend+0x128>
    1434: aa1f03f5     	mov	x21, xzr
    1438: aa1f03f3     	mov	x19, xzr
    143c: 52800036     	mov	w22, #0x1               // =1
    1440: 14000008     	b	0x1460 <gpio_keys_suspend+0x6c>
    1444: f9400288     	ldr	x8, [x20]
    1448: 39054af6     	strb	w22, [x23, #0x152]
    144c: 91000673     	add	x19, x19, #0x1
    1450: 910442b5     	add	x21, x21, #0x110
    1454: b9800908     	ldrsw	x8, [x8, #0x8]
    1458: eb08027f     	cmp	x19, x8
    145c: 5400060a     	b.ge	0x151c <gpio_keys_suspend+0x128>
    1460: 8b150297     	add	x23, x20, x21
    1464: f94026e8     	ldr	x8, [x23, #0x48]
    1468: b9401d08     	ldr	w8, [x8, #0x1c]
    146c: 34fffec8     	cbz	w8, 0x1444 <gpio_keys_suspend+0x50>
    1470: b94106e0     	ldr	w0, [x23, #0x104]
    1474: 52800021     	mov	w1, #0x1                // =1
    1478: 94000000     	bl	0x1478 <gpio_keys_suspend+0x84>
		0000000000001478:  R_AARCH64_CALL26	irq_set_irq_wake
    147c: 350005e0     	cbnz	w0, 0x1538 <gpio_keys_suspend+0x144>
    1480: 8b150288     	add	x8, x20, x21
    1484: b9414901     	ldr	w1, [x8, #0x148]
    1488: 34fffde1     	cbz	w1, 0x1444 <gpio_keys_suspend+0x50>
    148c: b94106e0     	ldr	w0, [x23, #0x104]
    1490: 94000000     	bl	0x1490 <gpio_keys_suspend+0x9c>
		0000000000001490:  R_AARCH64_CALL26	irq_set_irq_type
    1494: 34fffd80     	cbz	w0, 0x1444 <gpio_keys_suspend+0x50>
    1498: 8b150296     	add	x22, x20, x21
    149c: 2a0003f3     	mov	w19, w0
    14a0: 90000001     	adrp	x1, 0x1000 <gpio_keys_gpio_report_event+0x8c>
		00000000000014a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x41a
    14a4: 91000021     	add	x1, x1, #0x0
		00000000000014a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x41a
    14a8: f9402ac8     	ldr	x8, [x22, #0x50]
    14ac: b9414ac2     	ldr	w2, [x22, #0x148]
    14b0: b94106c3     	ldr	w3, [x22, #0x104]
    14b4: 2a1303e4     	mov	w4, w19
    14b8: f9414908     	ldr	x8, [x8, #0x290]
    14bc: aa0803e0     	mov	x0, x8
    14c0: 94000000     	bl	0x14c0 <gpio_keys_suspend+0xcc>
		00000000000014c0:  R_AARCH64_CALL26	_dev_err
    14c4: b94106c0     	ldr	w0, [x22, #0x104]
    14c8: 2a1f03e1     	mov	w1, wzr
    14cc: 94000000     	bl	0x14cc <gpio_keys_suspend+0xd8>
		00000000000014cc:  R_AARCH64_CALL26	irq_set_irq_wake
    14d0: 14000024     	b	0x1560 <gpio_keys_suspend+0x16c>
    14d4: 9107e260     	add	x0, x19, #0x1f8
    14d8: 94000000     	bl	0x14d8 <gpio_keys_suspend+0xe4>
		00000000000014d8:  R_AARCH64_CALL26	mutex_lock
    14dc: b9422a68     	ldr	w8, [x19, #0x228]
    14e0: 340001a8     	cbz	w8, 0x1514 <gpio_keys_suspend+0x120>
    14e4: f9416668     	ldr	x8, [x19, #0x2c8]
    14e8: f9400108     	ldr	x8, [x8]
    14ec: f9401108     	ldr	x8, [x8, #0x20]
    14f0: b4000128     	cbz	x8, 0x1514 <gpio_keys_suspend+0x120>
    14f4: f9414a60     	ldr	x0, [x19, #0x290]
    14f8: b85fc110     	ldur	w16, [x8, #-0x4]
    14fc: 72971911     	movk	w17, #0xb8c8
    1500: 72ad9031     	movk	w17, #0x6c81, lsl #16
    1504: 6b11021f     	cmp	w16, w17
    1508: 54000040     	b.eq	0x1510 <gpio_keys_suspend+0x11c>
    150c: d4304500     	brk	#0x8228
    1510: d63f0100     	blr	x8
    1514: 9107e260     	add	x0, x19, #0x1f8
    1518: 94000000     	bl	0x1518 <gpio_keys_suspend+0x124>
		0000000000001518:  R_AARCH64_CALL26	mutex_unlock
    151c: 2a1f03e0     	mov	w0, wzr
    1520: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1524: f9400bf7     	ldr	x23, [sp, #0x10]
    1528: a94257f6     	ldp	x22, x21, [sp, #0x20]
    152c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    1530: d50323bf     	autiasp
    1534: d65f03c0     	ret
    1538: 8b150289     	add	x9, x20, x21
    153c: 2a0003f3     	mov	w19, w0
    1540: 90000001     	adrp	x1, 0x1000 <gpio_keys_gpio_report_event+0x8c>
		0000000000001540:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19e
    1544: 91000021     	add	x1, x1, #0x0
		0000000000001544:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19e
    1548: f9402928     	ldr	x8, [x9, #0x50]
    154c: b9410522     	ldr	w2, [x9, #0x104]
    1550: 2a1303e3     	mov	w3, w19
    1554: f9414908     	ldr	x8, [x8, #0x290]
    1558: aa0803e0     	mov	x0, x8
    155c: 94000000     	bl	0x155c <gpio_keys_suspend+0x168>
		000000000000155c:  R_AARCH64_CALL26	_dev_err
    1560: 2a1303e0     	mov	w0, w19
    1564: b5000195     	cbnz	x21, 0x1594 <gpio_keys_suspend+0x1a0>
    1568: 17ffffee     	b	0x1520 <gpio_keys_suspend+0x12c>
    156c: 8b150297     	add	x23, x20, x21
    1570: 2a1f03e1     	mov	w1, wzr
    1574: b85f42e0     	ldur	w0, [x23, #-0xc]
    1578: 94000000     	bl	0x1578 <gpio_keys_suspend+0x184>
		0000000000001578:  R_AARCH64_CALL26	irq_set_irq_wake
    157c: 2a0003e3     	mov	w3, w0
    1580: 2a1603e0     	mov	w0, w22
    1584: 35000303     	cbnz	w3, 0x15e4 <gpio_keys_suspend+0x1f0>
    1588: f10442b5     	subs	x21, x21, #0x110
    158c: 39010a7f     	strb	wzr, [x19, #0x42]
    1590: 54fffc80     	b.eq	0x1520 <gpio_keys_suspend+0x12c>
    1594: 8b150293     	add	x19, x20, x21
    1598: f8538268     	ldur	x8, [x19, #-0xc8]
    159c: b9401d08     	ldr	w8, [x8, #0x1c]
    15a0: 34ffff48     	cbz	w8, 0x1588 <gpio_keys_suspend+0x194>
    15a4: b9403a68     	ldr	w8, [x19, #0x38]
    15a8: 2a0003f6     	mov	w22, w0
    15ac: 34fffe08     	cbz	w8, 0x156c <gpio_keys_suspend+0x178>
    15b0: 8b150297     	add	x23, x20, x21
    15b4: 52800061     	mov	w1, #0x3                // =3
    15b8: b85f42e0     	ldur	w0, [x23, #-0xc]
    15bc: 94000000     	bl	0x15bc <gpio_keys_suspend+0x1c8>
		00000000000015bc:  R_AARCH64_CALL26	irq_set_irq_type
    15c0: 34fffd60     	cbz	w0, 0x156c <gpio_keys_suspend+0x178>
    15c4: f85402e8     	ldur	x8, [x23, #-0xc0]
    15c8: 2a0003e3     	mov	w3, w0
    15cc: b85f42e2     	ldur	w2, [x23, #-0xc]
    15d0: 90000001     	adrp	x1, 0x1000 <gpio_keys_gpio_report_event+0x8c>
		00000000000015d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23d
    15d4: 91000021     	add	x1, x1, #0x0
		00000000000015d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23d
    15d8: f9414900     	ldr	x0, [x8, #0x290]
    15dc: 94000000     	bl	0x15dc <gpio_keys_suspend+0x1e8>
		00000000000015dc:  R_AARCH64_CALL26	_dev_warn
    15e0: 17ffffe3     	b	0x156c <gpio_keys_suspend+0x178>
    15e4: f85402e8     	ldur	x8, [x23, #-0xc0]
    15e8: b85f42e2     	ldur	w2, [x23, #-0xc]
    15ec: 90000001     	adrp	x1, 0x1000 <gpio_keys_gpio_report_event+0x8c>
		00000000000015ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a0
    15f0: 91000021     	add	x1, x1, #0x0
		00000000000015f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a0
    15f4: f9414900     	ldr	x0, [x8, #0x290]
    15f8: 94000000     	bl	0x15f8 <gpio_keys_suspend+0x204>
		00000000000015f8:  R_AARCH64_CALL26	_dev_warn
    15fc: 2a1603e0     	mov	w0, w22
    1600: 17ffffe2     	b	0x1588 <gpio_keys_suspend+0x194>
