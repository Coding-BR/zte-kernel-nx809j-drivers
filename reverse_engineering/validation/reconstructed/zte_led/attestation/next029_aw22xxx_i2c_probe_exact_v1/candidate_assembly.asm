
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000012c8 <aw22xxx_i2c_probe>:
    12c8: d503233f     	paciasp
    12cc: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    12d0: a90167fa     	stp	x26, x25, [sp, #0x10]
    12d4: a9025ff8     	stp	x24, x23, [sp, #0x20]
    12d8: a90357f6     	stp	x22, x21, [sp, #0x30]
    12dc: a9044ff4     	stp	x20, x19, [sp, #0x40]
    12e0: 910003fd     	mov	x29, sp
    12e4: aa0003f5     	mov	x21, x0
    12e8: f9418416     	ldr	x22, [x0, #0x308]
    12ec: 91008014     	add	x20, x0, #0x20
    12f0: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000012f0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xebf
    12f4: 91000000     	add	x0, x0, #0x0
		00000000000012f4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xebf
    12f8: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000012f8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1bd
    12fc: 91000021     	add	x1, x1, #0x0
		00000000000012fc:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1bd
    1300: 52813b22     	mov	w2, #0x9d9              // =2521
    1304: 94000000     	bl	0x1304 <aw22xxx_i2c_probe+0x3c>
		0000000000001304:  R_AARCH64_CALL26	_printk
    1308: f9400ea0     	ldr	x0, [x21, #0x18]
    130c: f9400808     	ldr	x8, [x0, #0x10]
    1310: f9401108     	ldr	x8, [x8, #0x20]
    1314: b85fc110     	ldur	w16, [x8, #-0x4]
    1318: 729d62d1     	movk	w17, #0xeb16
    131c: 72af9851     	movk	w17, #0x7cc2, lsl #16
    1320: 6b11021f     	cmp	w16, w17
    1324: 54000040     	b.eq	0x132c <aw22xxx_i2c_probe+0x64>
    1328: d4304500     	brk	#0x8228
    132c: d63f0100     	blr	x8
    1330: 360008e0     	tbz	w0, #0x0, 0x144c <aw22xxx_i2c_probe+0x184>
    1334: aa1403e0     	mov	x0, x20
    1338: 52806b01     	mov	w1, #0x358              // =856
    133c: 5281b802     	mov	w2, #0xdc0              // =3520
    1340: 94000000     	bl	0x1340 <aw22xxx_i2c_probe+0x78>
		0000000000001340:  R_AARCH64_CALL26	devm_kmalloc
    1344: b40006c0     	cbz	x0, 0x141c <aw22xxx_i2c_probe+0x154>
    1348: aa0003f3     	mov	x19, x0
    134c: a9005015     	stp	x21, x20, [x0]
    1350: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001350:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1830
    1354: 91000021     	add	x1, x1, #0x0
		0000000000001354:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1830
    1358: f9005ea0     	str	x0, [x21, #0xb8]
    135c: 90000002     	adrp	x2, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		000000000000135c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x61d0
    1360: 91000042     	add	x2, x2, #0x0
		0000000000001360:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61d0
    1364: 910ac000     	add	x0, x0, #0x2b0
    1368: 94000000     	bl	0x1368 <aw22xxx_i2c_probe+0xa0>
		0000000000001368:  R_AARCH64_CALL26	__mutex_init
    136c: 52800028     	mov	w8, #0x1                // =1
    1370: aa1403e0     	mov	x0, x20
    1374: 390c1268     	strb	w8, [x19, #0x304]
    1378: 94000000     	bl	0x1378 <aw22xxx_i2c_probe+0xb0>
		0000000000001378:  R_AARCH64_CALL26	devm_pinctrl_get
    137c: aa0003e8     	mov	x8, x0
    1380: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001380:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xfd9
    1384: 91000000     	add	x0, x0, #0x0
		0000000000001384:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xfd9
    1388: f9019a68     	str	x8, [x19, #0x330]
    138c: b40004c8     	cbz	x8, 0x1424 <aw22xxx_i2c_probe+0x15c>
    1390: b140051f     	cmn	x8, #0x1, lsl #12       // =0x1000
    1394: 54000488     	b.hi	0x1424 <aw22xxx_i2c_probe+0x15c>
    1398: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001398:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xbbb
    139c: 91000021     	add	x1, x1, #0x0
		000000000000139c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xbbb
    13a0: aa0803e0     	mov	x0, x8
    13a4: 94000000     	bl	0x13a4 <aw22xxx_i2c_probe+0xdc>
		00000000000013a4:  R_AARCH64_CALL26	pinctrl_lookup_state
    13a8: aa0003e8     	mov	x8, x0
    13ac: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000013ac:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xcae
    13b0: 91000000     	add	x0, x0, #0x0
		00000000000013b0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xcae
    13b4: f9019e68     	str	x8, [x19, #0x338]
    13b8: b4000368     	cbz	x8, 0x1424 <aw22xxx_i2c_probe+0x15c>
    13bc: b140051f     	cmn	x8, #0x1, lsl #12       // =0x1000
    13c0: 54000328     	b.hi	0x1424 <aw22xxx_i2c_probe+0x15c>
    13c4: f9419a60     	ldr	x0, [x19, #0x330]
    13c8: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000013c8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xb06
    13cc: 91000021     	add	x1, x1, #0x0
		00000000000013cc:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xb06
    13d0: 94000000     	bl	0x13d0 <aw22xxx_i2c_probe+0x108>
		00000000000013d0:  R_AARCH64_CALL26	pinctrl_lookup_state
    13d4: aa0003e8     	mov	x8, x0
    13d8: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000013d8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x8a3
    13dc: 91000000     	add	x0, x0, #0x0
		00000000000013dc:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x8a3
    13e0: f901a268     	str	x8, [x19, #0x340]
    13e4: b4000208     	cbz	x8, 0x1424 <aw22xxx_i2c_probe+0x15c>
    13e8: b13ffd1f     	cmn	x8, #0xfff
    13ec: 540001c2     	b.hs	0x1424 <aw22xxx_i2c_probe+0x15c>
    13f0: f9419a60     	ldr	x0, [x19, #0x330]
    13f4: b4000380     	cbz	x0, 0x1464 <aw22xxx_i2c_probe+0x19c>
    13f8: f9419e61     	ldr	x1, [x19, #0x338]
    13fc: b4000341     	cbz	x1, 0x1464 <aw22xxx_i2c_probe+0x19c>
    1400: 94000000     	bl	0x1400 <aw22xxx_i2c_probe+0x138>
		0000000000001400:  R_AARCH64_CALL26	pinctrl_select_state
    1404: 350003e0     	cbnz	w0, 0x1480 <aw22xxx_i2c_probe+0x1b8>
    1408: b5000656     	cbnz	x22, 0x14d0 <aw22xxx_i2c_probe+0x208>
    140c: 92800008     	mov	x8, #-0x1               // =-1
    1410: 2a1f03f7     	mov	w23, wzr
    1414: f9017268     	str	x8, [x19, #0x2e0]
    1418: 14000023     	b	0x14a4 <aw22xxx_i2c_probe+0x1dc>
    141c: 12800177     	mov	w23, #-0xc              // =-12
    1420: 14000024     	b	0x14b0 <aw22xxx_i2c_probe+0x1e8>
    1424: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001424:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xf1e
    1428: 91000021     	add	x1, x1, #0x0
		0000000000001428:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xf1e
    142c: 94000000     	bl	0x142c <aw22xxx_i2c_probe+0x164>
		000000000000142c:  R_AARCH64_CALL26	_printk
    1430: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001430:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base
    1434: 91000000     	add	x0, x0, #0x0
		0000000000001434:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base
    1438: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001438:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1bd
    143c: 91000021     	add	x1, x1, #0x0
		000000000000143c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1bd
    1440: 94000000     	bl	0x1440 <aw22xxx_i2c_probe+0x178>
		0000000000001440:  R_AARCH64_CALL26	_printk
    1444: 128002b7     	mov	w23, #-0x16             // =-22
    1448: 14000016     	b	0x14a0 <aw22xxx_i2c_probe+0x1d8>
    144c: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		000000000000144c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x73c
    1450: 91000021     	add	x1, x1, #0x0
		0000000000001450:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x73c
    1454: aa1403e0     	mov	x0, x20
    1458: 94000000     	bl	0x1458 <aw22xxx_i2c_probe+0x190>
		0000000000001458:  R_AARCH64_CALL26	_dev_err
    145c: 12800097     	mov	w23, #-0x5              // =-5
    1460: 14000014     	b	0x14b0 <aw22xxx_i2c_probe+0x1e8>
    1464: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001464:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x118a
    1468: 91000000     	add	x0, x0, #0x0
		0000000000001468:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x118a
    146c: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		000000000000146c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xbcf
    1470: 91000021     	add	x1, x1, #0x0
		0000000000001470:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xbcf
    1474: 94000000     	bl	0x1474 <aw22xxx_i2c_probe+0x1ac>
		0000000000001474:  R_AARCH64_CALL26	_printk
    1478: 128002b7     	mov	w23, #-0x16             // =-22
    147c: 14000002     	b	0x1484 <aw22xxx_i2c_probe+0x1bc>
    1480: 2a0003f7     	mov	w23, w0
    1484: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001484:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x758
    1488: 91000000     	add	x0, x0, #0x0
		0000000000001488:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x758
    148c: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		000000000000148c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1bd
    1490: 91000021     	add	x1, x1, #0x0
		0000000000001490:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1bd
    1494: 94000000     	bl	0x1494 <aw22xxx_i2c_probe+0x1cc>
		0000000000001494:  R_AARCH64_CALL26	_printk
    1498: f9419a60     	ldr	x0, [x19, #0x330]
    149c: 94000000     	bl	0x149c <aw22xxx_i2c_probe+0x1d4>
		000000000000149c:  R_AARCH64_CALL26	devm_pinctrl_put
    14a0: f9019a7f     	str	xzr, [x19, #0x330]
    14a4: aa1403e0     	mov	x0, x20
    14a8: aa1303e1     	mov	x1, x19
    14ac: 94000000     	bl	0x14ac <aw22xxx_i2c_probe+0x1e4>
		00000000000014ac:  R_AARCH64_CALL26	devm_kfree
    14b0: 2a1703e0     	mov	w0, w23
    14b4: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    14b8: a94357f6     	ldp	x22, x21, [sp, #0x30]
    14bc: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    14c0: a94167fa     	ldp	x26, x25, [sp, #0x10]
    14c4: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    14c8: d50323bf     	autiasp
    14cc: d65f03c0     	ret
    14d0: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000014d0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x167a
    14d4: 91000021     	add	x1, x1, #0x0
		00000000000014d4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x167a
    14d8: 90000002     	adrp	x2, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000014d8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_data_base+0x370
    14dc: 91000042     	add	x2, x2, #0x0
		00000000000014dc:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_data_base+0x370
    14e0: aa1603e0     	mov	x0, x22
    14e4: 52800023     	mov	w3, #0x1                // =1
    14e8: aa1f03e4     	mov	x4, xzr
    14ec: 94000000     	bl	0x14ec <aw22xxx_i2c_probe+0x224>
		00000000000014ec:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    14f0: 90000018     	adrp	x24, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000014f0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_data_base+0x370
    14f4: 37f80060     	tbnz	w0, #0x1f, 0x1500 <aw22xxx_i2c_probe+0x238>
    14f8: b9400303     	ldr	w3, [x24]
		00000000000014f8:  R_AARCH64_LDST32_ABS_LO12_NC	aw22xxx_exact_data_base+0x370
    14fc: 14000003     	b	0x1508 <aw22xxx_i2c_probe+0x240>
    1500: 52800163     	mov	w3, #0xb                // =11
    1504: b9000303     	str	w3, [x24]
		0000000000001504:  R_AARCH64_LDST32_ABS_LO12_NC	aw22xxx_exact_data_base+0x370
    1508: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001508:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x192f
    150c: 91000021     	add	x1, x1, #0x0
		000000000000150c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x192f
    1510: 90000002     	adrp	x2, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001510:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x822
    1514: 91000042     	add	x2, x2, #0x0
		0000000000001514:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x822
    1518: aa1403e0     	mov	x0, x20
    151c: 94000000     	bl	0x151c <aw22xxx_i2c_probe+0x254>
		000000000000151c:  R_AARCH64_CALL26	_dev_info
    1520: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001520:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xcd8
    1524: 91000021     	add	x1, x1, #0x0
		0000000000001524:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xcd8
    1528: aa1603e0     	mov	x0, x22
    152c: 2a1f03e2     	mov	w2, wzr
    1530: 94000000     	bl	0x1530 <aw22xxx_i2c_probe+0x268>
		0000000000001530:  R_AARCH64_CALL26	of_get_named_gpio
    1534: b902e260     	str	w0, [x19, #0x2e0]
    1538: 36f80080     	tbz	w0, #0x1f, 0x1548 <aw22xxx_i2c_probe+0x280>
    153c: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		000000000000153c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1f6
    1540: 91000021     	add	x1, x1, #0x0
		0000000000001540:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1f6
    1544: 1400001c     	b	0x15b4 <aw22xxx_i2c_probe+0x2ec>
    1548: 94000000     	bl	0x1548 <aw22xxx_i2c_probe+0x280>
		0000000000001548:  R_AARCH64_CALL26	gpio_to_desc
    154c: 52800021     	mov	w1, #0x1                // =1
    1550: 94000000     	bl	0x1550 <aw22xxx_i2c_probe+0x288>
		0000000000001550:  R_AARCH64_CALL26	gpiod_direction_output_raw
    1554: 35000100     	cbnz	w0, 0x1574 <aw22xxx_i2c_probe+0x2ac>
    1558: b942e263     	ldr	w3, [x19, #0x2e0]
    155c: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		000000000000155c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xd4
    1560: 91000021     	add	x1, x1, #0x0
		0000000000001560:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xd4
    1564: 90000002     	adrp	x2, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001564:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x822
    1568: 91000042     	add	x2, x2, #0x0
		0000000000001568:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x822
    156c: aa1403e0     	mov	x0, x20
    1570: 94000000     	bl	0x1570 <aw22xxx_i2c_probe+0x2a8>
		0000000000001570:  R_AARCH64_CALL26	_dev_info
    1574: b942e263     	ldr	w3, [x19, #0x2e0]
    1578: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001578:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xa68
    157c: 91000021     	add	x1, x1, #0x0
		000000000000157c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xa68
    1580: 90000002     	adrp	x2, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001580:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x822
    1584: 91000042     	add	x2, x2, #0x0
		0000000000001584:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x822
    1588: aa1403e0     	mov	x0, x20
    158c: 94000000     	bl	0x158c <aw22xxx_i2c_probe+0x2c4>
		000000000000158c:  R_AARCH64_CALL26	_dev_info
    1590: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001590:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x15cd
    1594: 91000021     	add	x1, x1, #0x0
		0000000000001594:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x15cd
    1598: aa1603e0     	mov	x0, x22
    159c: 2a1f03e2     	mov	w2, wzr
    15a0: 94000000     	bl	0x15a0 <aw22xxx_i2c_probe+0x2d8>
		00000000000015a0:  R_AARCH64_CALL26	of_get_named_gpio
    15a4: b902e660     	str	w0, [x19, #0x2e4]
    15a8: 36f801e0     	tbz	w0, #0x1f, 0x15e4 <aw22xxx_i2c_probe+0x31c>
    15ac: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000015ac:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x11ab
    15b0: 91000021     	add	x1, x1, #0x0
		00000000000015b0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x11ab
    15b4: 90000002     	adrp	x2, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000015b4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x822
    15b8: 91000042     	add	x2, x2, #0x0
		00000000000015b8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x822
    15bc: aa1403e0     	mov	x0, x20
    15c0: 94000000     	bl	0x15c0 <aw22xxx_i2c_probe+0x2f8>
		00000000000015c0:  R_AARCH64_CALL26	_dev_err
    15c4: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000015c4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x12fa
    15c8: 91000021     	add	x1, x1, #0x0
		00000000000015c8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x12fa
    15cc: 90000002     	adrp	x2, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000015cc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1bd
    15d0: 91000042     	add	x2, x2, #0x0
		00000000000015d0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1bd
    15d4: aa1403e0     	mov	x0, x20
    15d8: 94000000     	bl	0x15d8 <aw22xxx_i2c_probe+0x310>
		00000000000015d8:  R_AARCH64_CALL26	_dev_err
    15dc: 128002b7     	mov	w23, #-0x16             // =-22
    15e0: 17ffffb1     	b	0x14a4 <aw22xxx_i2c_probe+0x1dc>
    15e4: 2a0003e3     	mov	w3, w0
    15e8: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000015e8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x781
    15ec: 91000021     	add	x1, x1, #0x0
		00000000000015ec:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x781
    15f0: 90000002     	adrp	x2, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000015f0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x822
    15f4: 91000042     	add	x2, x2, #0x0
		00000000000015f4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x822
    15f8: aa1403e0     	mov	x0, x20
    15fc: 94000000     	bl	0x15fc <aw22xxx_i2c_probe+0x334>
		00000000000015fc:  R_AARCH64_CALL26	_dev_info
    1600: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001600:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x8ce
    1604: 91000021     	add	x1, x1, #0x0
		0000000000001604:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x8ce
    1608: aa1603e0     	mov	x0, x22
    160c: 2a1f03e2     	mov	w2, wzr
    1610: 94000000     	bl	0x1610 <aw22xxx_i2c_probe+0x348>
		0000000000001610:  R_AARCH64_CALL26	of_get_named_gpio
    1614: b902ea60     	str	w0, [x19, #0x2e8]
    1618: 37f80120     	tbnz	w0, #0x1f, 0x163c <aw22xxx_i2c_probe+0x374>
    161c: 2a0003e3     	mov	w3, w0
    1620: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001620:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x101
    1624: 91000021     	add	x1, x1, #0x0
		0000000000001624:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x101
    1628: 90000002     	adrp	x2, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001628:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x822
    162c: 91000042     	add	x2, x2, #0x0
		000000000000162c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x822
    1630: aa1403e0     	mov	x0, x20
    1634: 94000000     	bl	0x1634 <aw22xxx_i2c_probe+0x36c>
		0000000000001634:  R_AARCH64_CALL26	_dev_info
    1638: 14000007     	b	0x1654 <aw22xxx_i2c_probe+0x38c>
    163c: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		000000000000163c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x171d
    1640: 91000021     	add	x1, x1, #0x0
		0000000000001640:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x171d
    1644: 90000002     	adrp	x2, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001644:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x822
    1648: 91000042     	add	x2, x2, #0x0
		0000000000001648:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x822
    164c: aa1403e0     	mov	x0, x20
    1650: 94000000     	bl	0x1650 <aw22xxx_i2c_probe+0x388>
		0000000000001650:  R_AARCH64_CALL26	_dev_info
    1654: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001654:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xa9c
    1658: 91000021     	add	x1, x1, #0x0
		0000000000001658:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xa9c
    165c: 90000002     	adrp	x2, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		000000000000165c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x61d4
    1660: 91000042     	add	x2, x2, #0x0
		0000000000001660:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61d4
    1664: aa1603e0     	mov	x0, x22
    1668: 52800023     	mov	w3, #0x1                // =1
    166c: aa1f03e4     	mov	x4, xzr
    1670: 94000000     	bl	0x1670 <aw22xxx_i2c_probe+0x3a8>
		0000000000001670:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1674: 90000019     	adrp	x25, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001674:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x61d4
    1678: 36f80040     	tbz	w0, #0x1f, 0x1680 <aw22xxx_i2c_probe+0x3b8>
    167c: b900033f     	str	wzr, [x25]
		000000000000167c:  R_AARCH64_LDST32_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61d4
    1680: b942e261     	ldr	w1, [x19, #0x2e0]
    1684: 37f800e1     	tbnz	w1, #0x1f, 0x16a0 <aw22xxx_i2c_probe+0x3d8>
    1688: 90000003     	adrp	x3, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001688:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xa5c
    168c: 91000063     	add	x3, x3, #0x0
		000000000000168c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xa5c
    1690: aa1403e0     	mov	x0, x20
    1694: aa1f03e2     	mov	x2, xzr
    1698: 94000000     	bl	0x1698 <aw22xxx_i2c_probe+0x3d0>
		0000000000001698:  R_AARCH64_CALL26	devm_gpio_request_one
    169c: 35000560     	cbnz	w0, 0x1748 <aw22xxx_i2c_probe+0x480>
    16a0: b942e661     	ldr	w1, [x19, #0x2e4]
    16a4: 37f800e1     	tbnz	w1, #0x1f, 0x16c0 <aw22xxx_i2c_probe+0x3f8>
    16a8: 90000003     	adrp	x3, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000016a8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x59a
    16ac: 91000063     	add	x3, x3, #0x0
		00000000000016ac:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x59a
    16b0: aa1403e0     	mov	x0, x20
    16b4: 52800022     	mov	w2, #0x1                // =1
    16b8: 94000000     	bl	0x16b8 <aw22xxx_i2c_probe+0x3f0>
		00000000000016b8:  R_AARCH64_CALL26	devm_gpio_request_one
    16bc: 350004e0     	cbnz	w0, 0x1758 <aw22xxx_i2c_probe+0x490>
    16c0: aa1303e0     	mov	x0, x19
    16c4: 94000000     	bl	0x16c4 <aw22xxx_i2c_probe+0x3fc>
		00000000000016c4:  R_AARCH64_CALL26	aw22xxx_hw_reset
    16c8: 9000001a     	adrp	x26, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000016c8:  R_AARCH64_ADR_PREL_PG_HI21	multicolor_led
    16cc: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000016cc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x18cd
    16d0: 91000000     	add	x0, x0, #0x0
		00000000000016d0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x18cd
    16d4: b9400343     	ldr	w3, [x26]
		00000000000016d4:  R_AARCH64_LDST32_ABS_LO12_NC	multicolor_led
    16d8: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000016d8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1bd
    16dc: 91000021     	add	x1, x1, #0x0
		00000000000016dc:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1bd
    16e0: 52814362     	mov	w2, #0xa1b              // =2587
    16e4: 94000000     	bl	0x16e4 <aw22xxx_i2c_probe+0x41c>
		00000000000016e4:  R_AARCH64_CALL26	_printk
    16e8: b9400348     	ldr	w8, [x26]
		00000000000016e8:  R_AARCH64_LDST32_ABS_LO12_NC	multicolor_led
    16ec: 51000508     	sub	w8, w8, #0x1
    16f0: 7100091f     	cmp	w8, #0x2
    16f4: 54000422     	b.hs	0x1778 <aw22xxx_i2c_probe+0x4b0>
    16f8: b942e260     	ldr	w0, [x19, #0x2e0]
    16fc: 94000000     	bl	0x16fc <aw22xxx_i2c_probe+0x434>
		00000000000016fc:  R_AARCH64_CALL26	gpio_to_desc
    1700: 2a1f03e1     	mov	w1, wzr
    1704: 94000000     	bl	0x1704 <aw22xxx_i2c_probe+0x43c>
		0000000000001704:  R_AARCH64_CALL26	gpiod_set_raw_value_cansleep
    1708: b942e661     	ldr	w1, [x19, #0x2e4]
    170c: 90000003     	adrp	x3, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		000000000000170c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x59a
    1710: 91000063     	add	x3, x3, #0x0
		0000000000001710:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x59a
    1714: aa1403e0     	mov	x0, x20
    1718: aa1f03e2     	mov	x2, xzr
    171c: 94000000     	bl	0x171c <aw22xxx_i2c_probe+0x454>
		000000000000171c:  R_AARCH64_CALL26	devm_gpio_request_one
    1720: b9400328     	ldr	w8, [x25]
		0000000000001720:  R_AARCH64_LDST32_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61d4
    1724: 52800169     	mov	w9, #0xb                // =11
    1728: 5282328a     	mov	w10, #0x1194            // =4500
    172c: 2a1f03f7     	mov	w23, wzr
    1730: b900035f     	str	wzr, [x26]
		0000000000001730:  R_AARCH64_LDST32_ABS_LO12_NC	multicolor_led
    1734: 7100011f     	cmp	w8, #0x0
    1738: 90000008     	adrp	x8, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001738:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x6268
    173c: 1a890149     	csel	w9, w10, w9, eq
    1740: b9000109     	str	w9, [x8]
		0000000000001740:  R_AARCH64_LDST32_ABS_LO12_NC	aw22xxx_exact_bss_base+0x6268
    1744: 17ffff5b     	b	0x14b0 <aw22xxx_i2c_probe+0x1e8>
    1748: 2a0003f7     	mov	w23, w0
    174c: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		000000000000174c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x10d8
    1750: 91000021     	add	x1, x1, #0x0
		0000000000001750:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x10d8
    1754: 14000004     	b	0x1764 <aw22xxx_i2c_probe+0x49c>
    1758: 2a0003f7     	mov	w23, w0
    175c: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		000000000000175c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x24
    1760: 91000021     	add	x1, x1, #0x0
		0000000000001760:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x24
    1764: 90000002     	adrp	x2, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001764:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1bd
    1768: 91000042     	add	x2, x2, #0x0
		0000000000001768:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1bd
    176c: aa1403e0     	mov	x0, x20
    1770: 94000000     	bl	0x1770 <aw22xxx_i2c_probe+0x4a8>
		0000000000001770:  R_AARCH64_CALL26	_dev_err
    1774: 17ffff4c     	b	0x14a4 <aw22xxx_i2c_probe+0x1dc>
    1778: aa1303e0     	mov	x0, x19
    177c: 94000000     	bl	0x177c <aw22xxx_i2c_probe+0x4b4>
		000000000000177c:  R_AARCH64_CALL26	aw22xxx_read_chipid
    1780: 36f80140     	tbz	w0, #0x1f, 0x17a8 <aw22xxx_i2c_probe+0x4e0>
    1784: 2a0003f7     	mov	w23, w0
    1788: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001788:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1cf
    178c: 91000021     	add	x1, x1, #0x0
		000000000000178c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1cf
    1790: 90000002     	adrp	x2, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001790:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1bd
    1794: 91000042     	add	x2, x2, #0x0
		0000000000001794:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1bd
    1798: aa1403e0     	mov	x0, x20
    179c: 2a1703e3     	mov	w3, w23
    17a0: 94000000     	bl	0x17a0 <aw22xxx_i2c_probe+0x4d8>
		00000000000017a0:  R_AARCH64_CALL26	_dev_err
    17a4: 17ffff3d     	b	0x1498 <aw22xxx_i2c_probe+0x1d0>
    17a8: b942e669     	ldr	w9, [x19, #0x2e4]
    17ac: 394bb268     	ldrb	w8, [x19, #0x2ec]
    17b0: 37f801a9     	tbnz	w9, #0x1f, 0x17e4 <aw22xxx_i2c_probe+0x51c>
    17b4: 37000188     	tbnz	w8, #0x0, 0x17e4 <aw22xxx_i2c_probe+0x51c>
    17b8: aa1303e0     	mov	x0, x19
    17bc: 94000000     	bl	0x17bc <aw22xxx_i2c_probe+0x4f4>
		00000000000017bc:  R_AARCH64_CALL26	aw22xxx_interrupt_setup
    17c0: b9400301     	ldr	w1, [x24]
		00000000000017c0:  R_AARCH64_LDST32_ABS_LO12_NC	aw22xxx_exact_data_base+0x370
    17c4: 7100303f     	cmp	w1, #0xc
    17c8: 54000143     	b.lo	0x17f0 <aw22xxx_i2c_probe+0x528>
    17cc: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000017cc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xb0
    17d0: 91000000     	add	x0, x0, #0x0
		00000000000017d0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xb0
    17d4: 94000000     	bl	0x17d4 <aw22xxx_i2c_probe+0x50c>
		00000000000017d4:  R_AARCH64_CALL26	_printk
    17d8: 90000017     	adrp	x23, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000017d8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_irq_v15
    17dc: 910002f7     	add	x23, x23, #0x0
		00000000000017dc:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_irq_v15
    17e0: 14000006     	b	0x17f8 <aw22xxx_i2c_probe+0x530>
    17e4: 32000108     	orr	w8, w8, #0x1
    17e8: 390bb268     	strb	w8, [x19, #0x2ec]
    17ec: 14000010     	b	0x182c <aw22xxx_i2c_probe+0x564>
    17f0: 90000017     	adrp	x23, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000017f0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_irq
    17f4: 910002f7     	add	x23, x23, #0x0
		00000000000017f4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_irq
    17f8: b942e660     	ldr	w0, [x19, #0x2e4]
    17fc: 94000000     	bl	0x17fc <aw22xxx_i2c_probe+0x534>
		00000000000017fc:  R_AARCH64_CALL26	gpio_to_desc
    1800: 94000000     	bl	0x1800 <aw22xxx_i2c_probe+0x538>
		0000000000001800:  R_AARCH64_CALL26	gpiod_to_irq
    1804: 2a0003e1     	mov	w1, w0
    1808: 90000005     	adrp	x5, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001808:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x14d0
    180c: 910000a5     	add	x5, x5, #0x0
		000000000000180c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x14d0
    1810: aa1403e0     	mov	x0, x20
    1814: aa1f03e2     	mov	x2, xzr
    1818: aa1703e3     	mov	x3, x23
    181c: 52840044     	mov	w4, #0x2002             // =8194
    1820: aa1303e6     	mov	x6, x19
    1824: 94000000     	bl	0x1824 <aw22xxx_i2c_probe+0x55c>
		0000000000001824:  R_AARCH64_CALL26	devm_request_threaded_irq
    1828: 35000640     	cbnz	w0, 0x18f0 <aw22xxx_i2c_probe+0x628>
    182c: aa1303e0     	mov	x0, x19
    1830: aa1603e1     	mov	x1, x22
    1834: f9005eb3     	str	x19, [x21, #0xb8]
    1838: 94000000     	bl	0x1838 <aw22xxx_i2c_probe+0x570>
		0000000000001838:  R_AARCH64_CALL26	aw22xxx_parse_led_cdev
    183c: 94000000     	bl	0x183c <aw22xxx_i2c_probe+0x574>
		000000000000183c:  R_AARCH64_CALL26	aw22xxx_alloc_name_array
    1840: 90000008     	adrp	x8, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001840:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xd93
    1844: 91000108     	add	x8, x8, #0x0
		0000000000001844:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xd93
    1848: b942ea63     	ldr	w3, [x19, #0x2e8]
    184c: f9400109     	ldr	x9, [x8]
    1850: f8407108     	ldur	x8, [x8, #0x7]
    1854: 90000005     	adrp	x5, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001854:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x61d8
    1858: 910000a5     	add	x5, x5, #0x0
		0000000000001858:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61d8
    185c: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		000000000000185c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x5f5
    1860: 91000000     	add	x0, x0, #0x0
		0000000000001860:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x5f5
    1864: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001864:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x87b
    1868: 91000021     	add	x1, x1, #0x0
		0000000000001868:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x87b
    186c: 5280bbc2     	mov	w2, #0x5de              // =1502
    1870: 2a1f03e4     	mov	w4, wzr
    1874: 3900fcbf     	strb	wzr, [x5, #0x3f]
    1878: f80370bf     	stur	xzr, [x5, #0x37]
    187c: f802f0bf     	stur	xzr, [x5, #0x2f]
    1880: f80270bf     	stur	xzr, [x5, #0x27]
    1884: f801f0bf     	stur	xzr, [x5, #0x1f]
    1888: f80170bf     	stur	xzr, [x5, #0x17]
    188c: f800f0bf     	stur	xzr, [x5, #0xf]
    1890: f90000a9     	str	x9, [x5]
    1894: f80070a8     	stur	x8, [x5, #0x7]
    1898: 94000000     	bl	0x1898 <aw22xxx_i2c_probe+0x5d0>
		0000000000001898:  R_AARCH64_CALL26	_printk
    189c: aa1303e0     	mov	x0, x19
    18a0: 94000000     	bl	0x18a0 <aw22xxx_i2c_probe+0x5d8>
		00000000000018a0:  R_AARCH64_CALL26	aw22xxx_fw_init
    18a4: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000018a4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x18fc
    18a8: 91000000     	add	x0, x0, #0x0
		00000000000018a8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x18fc
    18ac: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000018ac:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1bd
    18b0: 91000021     	add	x1, x1, #0x0
		00000000000018b0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1bd
    18b4: 52814ac2     	mov	w2, #0xa56              // =2646
    18b8: 94000000     	bl	0x18b8 <aw22xxx_i2c_probe+0x5f0>
		00000000000018b8:  R_AARCH64_CALL26	_printk
    18bc: b942e260     	ldr	w0, [x19, #0x2e0]
    18c0: 94000000     	bl	0x18c0 <aw22xxx_i2c_probe+0x5f8>
		00000000000018c0:  R_AARCH64_CALL26	gpio_to_desc
    18c4: 2a1f03e1     	mov	w1, wzr
    18c8: 94000000     	bl	0x18c8 <aw22xxx_i2c_probe+0x600>
		00000000000018c8:  R_AARCH64_CALL26	gpiod_direction_output_raw
    18cc: 350002c0     	cbnz	w0, 0x1924 <aw22xxx_i2c_probe+0x65c>
    18d0: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000018d0:  R_AARCH64_ADR_PREL_PG_HI21	zlog_aw22xxx_dev
    18d4: 91000000     	add	x0, x0, #0x0
		00000000000018d4:  R_AARCH64_ADD_ABS_LO12_NC	zlog_aw22xxx_dev
    18d8: 94000000     	bl	0x18d8 <aw22xxx_i2c_probe+0x610>
		00000000000018d8:  R_AARCH64_CALL26	zlog_register_client
    18dc: f901aa60     	str	x0, [x19, #0x350]
    18e0: b4000300     	cbz	x0, 0x1940 <aw22xxx_i2c_probe+0x678>
    18e4: 94000000     	bl	0x18e4 <aw22xxx_i2c_probe+0x61c>
		00000000000018e4:  R_AARCH64_CALL26	aw22xxx_create_proc_entry
    18e8: 2a1f03f7     	mov	w23, wzr
    18ec: 17fffef1     	b	0x14b0 <aw22xxx_i2c_probe+0x1e8>
    18f0: 2a0003f7     	mov	w23, w0
    18f4: b942e660     	ldr	w0, [x19, #0x2e4]
    18f8: 94000000     	bl	0x18f8 <aw22xxx_i2c_probe+0x630>
		00000000000018f8:  R_AARCH64_CALL26	gpio_to_desc
    18fc: 94000000     	bl	0x18fc <aw22xxx_i2c_probe+0x634>
		00000000000018fc:  R_AARCH64_CALL26	gpiod_to_irq
    1900: 2a0003e3     	mov	w3, w0
    1904: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001904:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xd52
    1908: 91000021     	add	x1, x1, #0x0
		0000000000001908:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xd52
    190c: 90000002     	adrp	x2, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		000000000000190c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1bd
    1910: 91000042     	add	x2, x2, #0x0
		0000000000001910:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1bd
    1914: aa1403e0     	mov	x0, x20
    1918: 2a1703e4     	mov	w4, w23
    191c: 94000000     	bl	0x191c <aw22xxx_i2c_probe+0x654>
		000000000000191c:  R_AARCH64_CALL26	_dev_err
    1920: 17fffede     	b	0x1498 <aw22xxx_i2c_probe+0x1d0>
    1924: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001924:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x49b
    1928: 91000000     	add	x0, x0, #0x0
		0000000000001928:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x49b
    192c: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		000000000000192c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1bd
    1930: 91000021     	add	x1, x1, #0x0
		0000000000001930:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1bd
    1934: 52814b62     	mov	w2, #0xa5b              // =2651
    1938: 94000000     	bl	0x1938 <aw22xxx_i2c_probe+0x670>
		0000000000001938:  R_AARCH64_CALL26	_printk
    193c: 17ffffe5     	b	0x18d0 <aw22xxx_i2c_probe+0x608>
    1940: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001940:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1bd
    1944: 91000021     	add	x1, x1, #0x0
		0000000000001944:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1bd
    1948: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001948:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xedb
    194c: 91000000     	add	x0, x0, #0x0
		000000000000194c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xedb
    1950: 52814c22     	mov	w2, #0xa61              // =2657
    1954: aa0103e3     	mov	x3, x1
    1958: 94000000     	bl	0x1958 <aw22xxx_i2c_probe+0x690>
		0000000000001958:  R_AARCH64_CALL26	_printk
    195c: 17ffffe2     	b	0x18e4 <aw22xxx_i2c_probe+0x61c>
