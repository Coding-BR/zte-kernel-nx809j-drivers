
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001348 <nb_fan_gpio_proc>:
    1348: f9400408     	ldr	x8, [x0, #0x8]
    134c: b5000068     	cbnz	x8, 0x1358 <nb_fan_gpio_proc+0x10>
    1350: 12800240     	mov	w0, #-0x13              // =-19
    1354: d65f03c0     	ret
    1358: d503233f     	paciasp
    135c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1360: f9000bf5     	str	x21, [sp, #0x10]
    1364: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1368: 910003fd     	mov	x29, sp
    136c: f9400008     	ldr	x8, [x0]
    1370: 90000001     	adrp	x1, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		0000000000001370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x570
    1374: 91000021     	add	x1, x1, #0x0
		0000000000001374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x570
    1378: aa0003f5     	mov	x21, x0
    137c: 2a1f03e2     	mov	w2, wzr
    1380: f9417513     	ldr	x19, [x8, #0x2e8]
    1384: aa1303e0     	mov	x0, x19
    1388: 94000000     	bl	0x1388 <nb_fan_gpio_proc+0x40>
		0000000000001388:  R_AARCH64_CALL26	of_get_named_gpio
    138c: f94006a9     	ldr	x9, [x21, #0x8]
    1390: aa1503e8     	mov	x8, x21
    1394: b9001520     	str	w0, [x9, #0x14]
    1398: f94006a9     	ldr	x9, [x21, #0x8]
    139c: b9401521     	ldr	w1, [x9, #0x14]
    13a0: 36f801a1     	tbz	w1, #0x1f, 0x13d4 <nb_fan_gpio_proc+0x8c>
    13a4: 90000000     	adrp	x0, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		00000000000013a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x109
    13a8: 91000000     	add	x0, x0, #0x0
		00000000000013a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x109
    13ac: 90000001     	adrp	x1, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		00000000000013ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
    13b0: 91000021     	add	x1, x1, #0x0
		00000000000013b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
    13b4: 90000002     	adrp	x2, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		00000000000013b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x168
    13b8: 91000042     	add	x2, x2, #0x0
		00000000000013b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x168
    13bc: 52806863     	mov	w3, #0x343              // =835
    13c0: aa0803f3     	mov	x19, x8
    13c4: 94000000     	bl	0x13c4 <nb_fan_gpio_proc+0x7c>
		00000000000013c4:  R_AARCH64_CALL26	_printk
    13c8: f9400668     	ldr	x8, [x19, #0x8]
    13cc: b9401500     	ldr	w0, [x8, #0x14]
    13d0: 1400002a     	b	0x1478 <nb_fan_gpio_proc+0x130>
    13d4: f9400100     	ldr	x0, [x8]
    13d8: 90000002     	adrp	x2, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		00000000000013d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x731
    13dc: 91000042     	add	x2, x2, #0x0
		00000000000013dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x731
    13e0: 94000000     	bl	0x13e0 <nb_fan_gpio_proc+0x98>
		00000000000013e0:  R_AARCH64_CALL26	devm_gpio_request
    13e4: f94006a8     	ldr	x8, [x21, #0x8]
    13e8: b9401504     	ldr	w4, [x8, #0x14]
    13ec: 35000300     	cbnz	w0, 0x144c <nb_fan_gpio_proc+0x104>
    13f0: 2a0403e0     	mov	w0, w4
    13f4: 94000000     	bl	0x13f4 <nb_fan_gpio_proc+0xac>
		00000000000013f4:  R_AARCH64_CALL26	gpio_to_desc
    13f8: 94000000     	bl	0x13f8 <nb_fan_gpio_proc+0xb0>
		00000000000013f8:  R_AARCH64_CALL26	gpiod_to_irq
    13fc: f94006a8     	ldr	x8, [x21, #0x8]
    1400: 52800044     	mov	w4, #0x2                // =2
    1404: 90000002     	adrp	x2, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		0000000000001404:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x9c4
    1408: 91000042     	add	x2, x2, #0x0
		0000000000001408:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x9c4
    140c: 90000005     	adrp	x5, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		000000000000140c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f1
    1410: 910000a5     	add	x5, x5, #0x0
		0000000000001410:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f1
    1414: b9001d00     	str	w0, [x8, #0x1c]
    1418: aa1f03e3     	mov	x3, xzr
    141c: 72a00404     	movk	w4, #0x20, lsl #16
    1420: a94022a0     	ldp	x0, x8, [x21]
    1424: aa1503e6     	mov	x6, x21
    1428: b9401d01     	ldr	w1, [x8, #0x1c]
    142c: 94000000     	bl	0x142c <nb_fan_gpio_proc+0xe4>
		000000000000142c:  R_AARCH64_CALL26	devm_request_threaded_irq
    1430: 36f802e0     	tbz	w0, #0x1f, 0x148c <nb_fan_gpio_proc+0x144>
    1434: 90000008     	adrp	x8, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		0000000000001434:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x740
    1438: 91000108     	add	x8, x8, #0x0
		0000000000001438:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x740
    143c: 2a0003f3     	mov	w19, w0
    1440: aa0803e0     	mov	x0, x8
    1444: 94000000     	bl	0x1444 <nb_fan_gpio_proc+0xfc>
		0000000000001444:  R_AARCH64_CALL26	_printk
    1448: 1400000b     	b	0x1474 <nb_fan_gpio_proc+0x12c>
    144c: 90000008     	adrp	x8, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		000000000000144c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa2b
    1450: 91000108     	add	x8, x8, #0x0
		0000000000001450:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa2b
    1454: 90000001     	adrp	x1, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		0000000000001454:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
    1458: 91000021     	add	x1, x1, #0x0
		0000000000001458:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
    145c: 90000002     	adrp	x2, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		000000000000145c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x168
    1460: 91000042     	add	x2, x2, #0x0
		0000000000001460:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x168
    1464: 2a0003f3     	mov	w19, w0
    1468: aa0803e0     	mov	x0, x8
    146c: 52806903     	mov	w3, #0x348              // =840
    1470: 94000000     	bl	0x1470 <nb_fan_gpio_proc+0x128>
		0000000000001470:  R_AARCH64_CALL26	_printk
    1474: 2a1303e0     	mov	w0, w19
    1478: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    147c: f9400bf5     	ldr	x21, [sp, #0x10]
    1480: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1484: d50323bf     	autiasp
    1488: d65f03c0     	ret
    148c: f94006a8     	ldr	x8, [x21, #0x8]
    1490: b9401d00     	ldr	w0, [x8, #0x1c]
    1494: 94000000     	bl	0x1494 <nb_fan_gpio_proc+0x14c>
		0000000000001494:  R_AARCH64_CALL26	disable_irq
    1498: 90000001     	adrp	x1, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		0000000000001498:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x997
    149c: 91000021     	add	x1, x1, #0x0
		000000000000149c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x997
    14a0: aa1303e0     	mov	x0, x19
    14a4: 2a1f03e2     	mov	w2, wzr
    14a8: 94000000     	bl	0x14a8 <nb_fan_gpio_proc+0x160>
		00000000000014a8:  R_AARCH64_CALL26	of_get_named_gpio
    14ac: f94006a9     	ldr	x9, [x21, #0x8]
    14b0: b9001120     	str	w0, [x9, #0x10]
    14b4: f94006a9     	ldr	x9, [x21, #0x8]
    14b8: b9401120     	ldr	w0, [x9, #0x10]
    14bc: 36f80180     	tbz	w0, #0x1f, 0x14ec <nb_fan_gpio_proc+0x1a4>
    14c0: 90000000     	adrp	x0, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		00000000000014c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x851
    14c4: 91000000     	add	x0, x0, #0x0
		00000000000014c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x851
    14c8: 90000001     	adrp	x1, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		00000000000014c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
    14cc: 91000021     	add	x1, x1, #0x0
		00000000000014cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
    14d0: 90000002     	adrp	x2, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		00000000000014d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x168
    14d4: 91000042     	add	x2, x2, #0x0
		00000000000014d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x168
    14d8: 52806aa3     	mov	w3, #0x355              // =853
    14dc: 94000000     	bl	0x14dc <nb_fan_gpio_proc+0x194>
		00000000000014dc:  R_AARCH64_CALL26	_printk
    14e0: f94006a8     	ldr	x8, [x21, #0x8]
    14e4: b9401100     	ldr	w0, [x8, #0x10]
    14e8: 17ffffe4     	b	0x1478 <nb_fan_gpio_proc+0x130>
    14ec: 94000000     	bl	0x14ec <nb_fan_gpio_proc+0x1a4>
		00000000000014ec:  R_AARCH64_CALL26	gpio_to_desc
    14f0: 94000000     	bl	0x14f0 <nb_fan_gpio_proc+0x1a8>
		00000000000014f0:  R_AARCH64_CALL26	gpiod_get_raw_value
    14f4: 2a0003e4     	mov	w4, w0
    14f8: 90000000     	adrp	x0, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		00000000000014f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaa8
    14fc: 91000000     	add	x0, x0, #0x0
		00000000000014fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaa8
    1500: 90000001     	adrp	x1, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		0000000000001500:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
    1504: 91000021     	add	x1, x1, #0x0
		0000000000001504:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
    1508: 90000002     	adrp	x2, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		0000000000001508:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x168
    150c: 91000042     	add	x2, x2, #0x0
		000000000000150c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x168
    1510: 52806b03     	mov	w3, #0x358              // =856
    1514: 94000000     	bl	0x1514 <nb_fan_gpio_proc+0x1cc>
		0000000000001514:  R_AARCH64_CALL26	_printk
    1518: 2a1f03e0     	mov	w0, wzr
    151c: 17ffffd7     	b	0x1478 <nb_fan_gpio_proc+0x130>
