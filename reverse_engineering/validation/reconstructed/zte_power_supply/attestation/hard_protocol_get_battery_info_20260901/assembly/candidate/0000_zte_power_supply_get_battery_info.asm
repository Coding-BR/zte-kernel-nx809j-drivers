
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000011e8 <zte_power_supply_get_battery_info>:
    11e8: d503233f     	paciasp
    11ec: d103c3ff     	sub	sp, sp, #0xf0
    11f0: a9097bfd     	stp	x29, x30, [sp, #0x90]
    11f4: a90a6ffc     	stp	x28, x27, [sp, #0xa0]
    11f8: a90b67fa     	stp	x26, x25, [sp, #0xb0]
    11fc: a90c5ff8     	stp	x24, x23, [sp, #0xc0]
    1200: a90d57f6     	stp	x22, x21, [sp, #0xd0]
    1204: a90e4ff4     	stp	x20, x19, [sp, #0xe0]
    1208: 910243fd     	add	x29, sp, #0x90
    120c: d5384109     	mrs	x9, SP_EL0
    1210: 128002a8     	mov	w8, #-0x16              // =-22
    1214: aa0103f6     	mov	x22, x1
    1218: f9438929     	ldr	x9, [x9, #0x710]
    121c: 928002aa     	mov	x10, #-0x16             // =-22
    1220: f2dffd4a     	movk	x10, #0xffea, lsl #32
    1224: f81f83a9     	stur	x9, [x29, #-0x8]
    1228: b805cec8     	str	w8, [x22, #0x5c]!
    122c: 910572c9     	add	x9, x22, #0x15c
    1230: f900013f     	str	xzr, [x9]
    1234: 910472c9     	add	x9, x22, #0x11c
    1238: aa1603fc     	mov	x28, x22
    123c: f900012a     	str	x10, [x9]
    1240: 910492c9     	add	x9, x22, #0x124
    1244: aa1603fb     	mov	x27, x22
    1248: f900012a     	str	x10, [x9]
    124c: 9104b2c9     	add	x9, x22, #0x12c
    1250: aa1603fa     	mov	x26, x22
    1254: f900012a     	str	x10, [x9]
    1258: 9104d2c9     	add	x9, x22, #0x134
    125c: aa1603f9     	mov	x25, x22
    1260: aa1603f8     	mov	x24, x22
    1264: aa1603f7     	mov	x23, x22
    1268: aa1603f3     	mov	x19, x22
    126c: f900012a     	str	x10, [x9]
    1270: 910412c9     	add	x9, x22, #0x104
    1274: f81a8f8a     	str	x10, [x28, #-0x58]!
    1278: f81b0f6a     	str	x10, [x27, #-0x50]!
    127c: b81bcf48     	str	w8, [x26, #-0x44]!
    1280: b81c4f28     	str	w8, [x25, #-0x3c]!
    1284: f81d0f0a     	str	x10, [x24, #-0x30]!
    1288: b81f8ee8     	str	w8, [x23, #-0x8]!
    128c: f806ce7f     	str	xzr, [x19, #0x6c]!
    1290: b9010ec8     	str	w8, [x22, #0x10c]
    1294: f80042ca     	stur	x10, [x22, #0x4]
    1298: f80742df     	stur	xzr, [x22, #0x74]
    129c: f9008aca     	str	x10, [x22, #0x110]
    12a0: f807c2df     	stur	xzr, [x22, #0x7c]
    12a4: b9000ec8     	str	w8, [x22, #0xc]
    12a8: f80842df     	stur	xzr, [x22, #0x84]
    12ac: b9011ac8     	str	w8, [x22, #0x118]
    12b0: f808c2df     	stur	xzr, [x22, #0x8c]
    12b4: f80942df     	stur	xzr, [x22, #0x94]
    12b8: a9012aca     	stp	x10, x10, [x22, #0x10]
    12bc: f809c2df     	stur	xzr, [x22, #0x9c]
    12c0: f80a42df     	stur	xzr, [x22, #0xa4]
    12c4: f80ac2df     	stur	xzr, [x22, #0xac]
    12c8: f80b42df     	stur	xzr, [x22, #0xb4]
    12cc: a9022aca     	stp	x10, x10, [x22, #0x20]
    12d0: f80bc2df     	stur	xzr, [x22, #0xbc]
    12d4: f80c42df     	stur	xzr, [x22, #0xc4]
    12d8: f80cc2df     	stur	xzr, [x22, #0xcc]
    12dc: b9013ec8     	str	w8, [x22, #0x13c]
    12e0: 290622c8     	stp	w8, w8, [x22, #0x30]
    12e4: f80d42df     	stur	xzr, [x22, #0xd4]
    12e8: b90142c8     	str	w8, [x22, #0x140]
    12ec: f80dc2df     	stur	xzr, [x22, #0xdc]
    12f0: b90146c8     	str	w8, [x22, #0x144]
    12f4: 290722c8     	stp	w8, w8, [x22, #0x38]
    12f8: f80e42df     	stur	xzr, [x22, #0xe4]
    12fc: b9014ac8     	str	w8, [x22, #0x148]
    1300: f80ec2df     	stur	xzr, [x22, #0xec]
    1304: b9014ec8     	str	w8, [x22, #0x14c]
    1308: 290822c8     	stp	w8, w8, [x22, #0x40]
    130c: f80f42df     	stur	xzr, [x22, #0xf4]
    1310: b90152c8     	str	w8, [x22, #0x150]
    1314: f80fc2df     	stur	xzr, [x22, #0xfc]
    1318: b90156c8     	str	w8, [x22, #0x154]
    131c: 290922c8     	stp	w8, w8, [x22, #0x48]
    1320: f900013f     	str	xzr, [x9]
    1324: b9015ac8     	str	w8, [x22, #0x158]
    1328: f90013e0     	str	x0, [sp, #0x20]
    132c: f9401400     	ldr	x0, [x0, #0x28]
    1330: f9001bff     	str	xzr, [sp, #0x30]
    1334: b9002fff     	str	wzr, [sp, #0x2c]
    1338: b40016e0     	cbz	x0, 0x1614 <zte_power_supply_get_battery_info+0x42c>
    133c: aa0103f5     	mov	x21, x1
    1340: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ef
    1344: 91000021     	add	x1, x1, #0x0
		0000000000001344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ef
    1348: 9100e3e5     	add	x5, sp, #0x38
    134c: aa1f03e2     	mov	x2, xzr
    1350: 2a1f03e3     	mov	w3, wzr
    1354: 2a1f03e4     	mov	w4, wzr
    1358: a907ffff     	stp	xzr, xzr, [sp, #0x78]
    135c: a906ffff     	stp	xzr, xzr, [sp, #0x68]
    1360: a905ffff     	stp	xzr, xzr, [sp, #0x58]
    1364: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    1368: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    136c: 94000000     	bl	0x136c <zte_power_supply_get_battery_info+0x184>
		000000000000136c:  R_AARCH64_CALL26	__of_parse_phandle_with_args
    1370: 12800254     	mov	w20, #-0x13             // =-19
    1374: 35001600     	cbnz	w0, 0x1634 <zte_power_supply_get_battery_info+0x44c>
    1378: f9000ff5     	str	x21, [sp, #0x18]
    137c: f9401ff5     	ldr	x21, [sp, #0x38]
    1380: b40015b5     	cbz	x21, 0x1634 <zte_power_supply_get_battery_info+0x44c>
    1384: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001384:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c8
    1388: 91000021     	add	x1, x1, #0x0
		0000000000001388:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c8
    138c: 9100c3e2     	add	x2, sp, #0x30
    1390: aa1503e0     	mov	x0, x21
    1394: 94000000     	bl	0x1394 <zte_power_supply_get_battery_info+0x1ac>
		0000000000001394:  R_AARCH64_CALL26	of_property_read_string
    1398: 2a0003f4     	mov	w20, w0
    139c: 350014c0     	cbnz	w0, 0x1634 <zte_power_supply_get_battery_info+0x44c>
    13a0: f9401be1     	ldr	x1, [sp, #0x30]
    13a4: 90000000     	adrp	x0, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		00000000000013a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x401
    13a8: 91000000     	add	x0, x0, #0x0
		00000000000013a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x401
    13ac: 94000000     	bl	0x13ac <zte_power_supply_get_battery_info+0x1c4>
		00000000000013ac:  R_AARCH64_CALL26	strcmp
    13b0: 34000060     	cbz	w0, 0x13bc <zte_power_supply_get_battery_info+0x1d4>
    13b4: 12800254     	mov	w20, #-0x13             // =-19
    13b8: 1400009f     	b	0x1634 <zte_power_supply_get_battery_info+0x44c>
    13bc: d10132c9     	sub	x9, x22, #0x4c
    13c0: d100b2c8     	sub	x8, x22, #0x2c
    13c4: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		00000000000013c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b0
    13c8: 91000021     	add	x1, x1, #0x0
		00000000000013c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b0
    13cc: aa1503e0     	mov	x0, x21
    13d0: aa1c03e2     	mov	x2, x28
    13d4: 52800023     	mov	w3, #0x1                // =1
    13d8: aa1f03e4     	mov	x4, xzr
    13dc: d10152d4     	sub	x20, x22, #0x54
    13e0: a900a3e9     	stp	x9, x8, [sp, #0x8]
    13e4: 94000000     	bl	0x13e4 <zte_power_supply_get_battery_info+0x1fc>
		00000000000013e4:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    13e8: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		00000000000013e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a0
    13ec: 91000021     	add	x1, x1, #0x0
		00000000000013ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a0
    13f0: aa1503e0     	mov	x0, x21
    13f4: aa1403e2     	mov	x2, x20
    13f8: 52800023     	mov	w3, #0x1                // =1
    13fc: aa1f03e4     	mov	x4, xzr
    1400: 94000000     	bl	0x1400 <zte_power_supply_get_battery_info+0x218>
		0000000000001400:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1404: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001404:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x390
    1408: 91000021     	add	x1, x1, #0x0
		0000000000001408:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x390
    140c: aa1503e0     	mov	x0, x21
    1410: aa1b03e2     	mov	x2, x27
    1414: 52800023     	mov	w3, #0x1                // =1
    1418: aa1f03e4     	mov	x4, xzr
    141c: 94000000     	bl	0x141c <zte_power_supply_get_battery_info+0x234>
		000000000000141c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1420: f94007e2     	ldr	x2, [sp, #0x8]
    1424: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001424:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x64a
    1428: 91000021     	add	x1, x1, #0x0
		0000000000001428:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x64a
    142c: aa1503e0     	mov	x0, x21
    1430: 52800023     	mov	w3, #0x1                // =1
    1434: aa1f03e4     	mov	x4, xzr
    1438: 94000000     	bl	0x1438 <zte_power_supply_get_battery_info+0x250>
		0000000000001438:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    143c: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		000000000000143c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c1
    1440: 91000021     	add	x1, x1, #0x0
		0000000000001440:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c1
    1444: aa1503e0     	mov	x0, x21
    1448: aa1a03e2     	mov	x2, x26
    144c: 52800023     	mov	w3, #0x1                // =1
    1450: aa1f03e4     	mov	x4, xzr
    1454: 94000000     	bl	0x1454 <zte_power_supply_get_battery_info+0x26c>
		0000000000001454:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1458: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001458:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x418
    145c: 91000021     	add	x1, x1, #0x0
		000000000000145c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x418
    1460: aa1503e0     	mov	x0, x21
    1464: aa1903e2     	mov	x2, x25
    1468: 52800023     	mov	w3, #0x1                // =1
    146c: aa1f03e4     	mov	x4, xzr
    1470: 94000000     	bl	0x1470 <zte_power_supply_get_battery_info+0x288>
		0000000000001470:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1474: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001474:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba
    1478: 91000021     	add	x1, x1, #0x0
		0000000000001478:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba
    147c: aa1503e0     	mov	x0, x21
    1480: aa1803e2     	mov	x2, x24
    1484: 52800023     	mov	w3, #0x1                // =1
    1488: aa1f03e4     	mov	x4, xzr
    148c: 94000000     	bl	0x148c <zte_power_supply_get_battery_info+0x2a4>
		000000000000148c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1490: f9400be2     	ldr	x2, [sp, #0x10]
    1494: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001494:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5dc
    1498: 91000021     	add	x1, x1, #0x0
		0000000000001498:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5dc
    149c: aa1503e0     	mov	x0, x21
    14a0: 52800023     	mov	w3, #0x1                // =1
    14a4: aa1f03e4     	mov	x4, xzr
    14a8: 94000000     	bl	0x14a8 <zte_power_supply_get_battery_info+0x2c0>
		00000000000014a8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    14ac: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		00000000000014ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x337
    14b0: 91000021     	add	x1, x1, #0x0
		00000000000014b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x337
    14b4: aa1503e0     	mov	x0, x21
    14b8: aa1703e2     	mov	x2, x23
    14bc: 52800023     	mov	w3, #0x1                // =1
    14c0: aa1f03e4     	mov	x4, xzr
    14c4: 94000000     	bl	0x14c4 <zte_power_supply_get_battery_info+0x2dc>
		00000000000014c4:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    14c8: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		00000000000014c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fd
    14cc: 91000021     	add	x1, x1, #0x0
		00000000000014cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fd
    14d0: aa1503e0     	mov	x0, x21
    14d4: 52800082     	mov	w2, #0x4                // =4
    14d8: 94000000     	bl	0x14d8 <zte_power_supply_get_battery_info+0x2f0>
		00000000000014d8:  R_AARCH64_CALL26	of_property_count_elems_of_size
    14dc: 2a0003f4     	mov	w20, w0
    14e0: b9002fe0     	str	w0, [sp, #0x2c]
    14e4: 36f80060     	tbz	w0, #0x1f, 0x14f0 <zte_power_supply_get_battery_info+0x308>
    14e8: 31005a9f     	cmn	w20, #0x16
    14ec: 54000a41     	b.ne	0x1634 <zte_power_supply_get_battery_info+0x44c>
    14f0: 7100569f     	cmp	w20, #0x15
    14f4: 5400144a     	b.ge	0x177c <zte_power_supply_get_battery_info+0x594>
    14f8: f94013fb     	ldr	x27, [sp, #0x20]
    14fc: 7100069f     	cmp	w20, #0x1
    1500: 54000b8b     	b.lt	0x1670 <zte_power_supply_get_battery_info+0x488>
    1504: 2a1403f7     	mov	w23, w20
    1508: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001508:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fd
    150c: 91000021     	add	x1, x1, #0x0
		000000000000150c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fd
    1510: aa1503e0     	mov	x0, x21
    1514: aa1603e2     	mov	x2, x22
    1518: aa1703e3     	mov	x3, x23
    151c: aa1f03e4     	mov	x4, xzr
    1520: 910432da     	add	x26, x22, #0x10c
    1524: 94000000     	bl	0x1524 <zte_power_supply_get_battery_info+0x33c>
		0000000000001524:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1528: aa1f03f6     	mov	x22, xzr
    152c: 90000014     	adrp	x20, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		000000000000152c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    1530: 91000294     	add	x20, x20, #0x0
		0000000000001530:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    1534: 14000004     	b	0x1544 <zte_power_supply_get_battery_info+0x35c>
    1538: 910006d6     	add	x22, x22, #0x1
    153c: eb1702df     	cmp	x22, x23
    1540: 54000982     	b.hs	0x1670 <zte_power_supply_get_battery_info+0x488>
    1544: 52819800     	mov	w0, #0xcc0              // =3264
    1548: aa1403e1     	mov	x1, x20
    154c: 2a1603e2     	mov	w2, w22
    1550: b9003bff     	str	wzr, [sp, #0x38]
    1554: 94000000     	bl	0x1554 <zte_power_supply_get_battery_info+0x36c>
		0000000000001554:  R_AARCH64_CALL26	kasprintf
    1558: b4000e60     	cbz	x0, 0x1724 <zte_power_supply_get_battery_info+0x53c>
    155c: aa0003f9     	mov	x25, x0
    1560: 9100e3e2     	add	x2, sp, #0x38
    1564: aa1503e0     	mov	x0, x21
    1568: aa1903e1     	mov	x1, x25
    156c: 94000000     	bl	0x156c <zte_power_supply_get_battery_info+0x384>
		000000000000156c:  R_AARCH64_CALL26	of_get_property
    1570: b4001140     	cbz	x0, 0x1798 <zte_power_supply_get_battery_info+0x5b0>
    1574: b9403be8     	ldr	w8, [sp, #0x38]
    1578: 34001108     	cbz	w8, 0x1798 <zte_power_supply_get_battery_info+0x5b0>
    157c: aa0003f8     	mov	x24, x0
    1580: aa1903e0     	mov	x0, x25
    1584: 94000000     	bl	0x1584 <zte_power_supply_get_battery_info+0x39c>
		0000000000001584:  R_AARCH64_CALL26	kfree
    1588: f10052df     	cmp	x22, #0x14
    158c: 54001400     	b.eq	0x180c <zte_power_supply_get_battery_info+0x624>
    1590: b9403be8     	ldr	w8, [sp, #0x38]
    1594: 13037d08     	asr	w8, w8, #3
    1598: b8367b48     	str	w8, [x26, x22, lsl #2]
    159c: 37f81228     	tbnz	w8, #0x1f, 0x17e0 <zte_power_supply_get_battery_info+0x5f8>
    15a0: d37d7d19     	ubfiz	x25, x8, #3, #32
    15a4: 9100e360     	add	x0, x27, #0x38
    15a8: 5281b802     	mov	w2, #0xdc0              // =3520
    15ac: aa1903e1     	mov	x1, x25
    15b0: 94000000     	bl	0x15b0 <zte_power_supply_get_battery_info+0x3c8>
		00000000000015b0:  R_AARCH64_CALL26	devm_kmalloc
    15b4: f8367a60     	str	x0, [x19, x22, lsl #3]
    15b8: b4000ba0     	cbz	x0, 0x172c <zte_power_supply_get_battery_info+0x544>
    15bc: b8767b48     	ldr	w8, [x26, x22, lsl #2]
    15c0: 7100051f     	cmp	w8, #0x1
    15c4: 54fffbab     	b.lt	0x1538 <zte_power_supply_get_battery_info+0x350>
    15c8: d37df108     	lsl	x8, x8, #3
    15cc: aa1f03e9     	mov	x9, xzr
    15d0: eb09033f     	cmp	x25, x9
    15d4: 540010a9     	b.ls	0x17e8 <zte_power_supply_get_battery_info+0x600>
    15d8: 8b09030a     	add	x10, x24, x9
    15dc: 9100112c     	add	x12, x9, #0x4
    15e0: b940014b     	ldr	w11, [x10]
    15e4: eb0c033f     	cmp	x25, x12
    15e8: 5ac0096b     	rev	w11, w11
    15ec: b829680b     	str	w11, [x0, x9]
    15f0: 54000fc3     	b.lo	0x17e8 <zte_power_supply_get_battery_info+0x600>
    15f4: b940054a     	ldr	w10, [x10, #0x4]
    15f8: 8b09000b     	add	x11, x0, x9
    15fc: 91002129     	add	x9, x9, #0x8
    1600: eb09011f     	cmp	x8, x9
    1604: 5ac0094a     	rev	w10, w10
    1608: b900056a     	str	w10, [x11, #0x4]
    160c: 54fffe21     	b.ne	0x15d0 <zte_power_supply_get_battery_info+0x3e8>
    1610: 17ffffca     	b	0x1538 <zte_power_supply_get_battery_info+0x350>
    1614: f94013e8     	ldr	x8, [sp, #0x20]
    1618: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001618:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59a
    161c: 91000021     	add	x1, x1, #0x0
		000000000000161c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59a
    1620: 90000002     	adrp	x2, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001620:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a6
    1624: 91000042     	add	x2, x2, #0x0
		0000000000001624:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a6
    1628: 9100e100     	add	x0, x8, #0x38
    162c: 94000000     	bl	0x162c <zte_power_supply_get_battery_info+0x444>
		000000000000162c:  R_AARCH64_CALL26	_dev_warn
    1630: 128000b4     	mov	w20, #-0x6              // =-6
    1634: d5384108     	mrs	x8, SP_EL0
    1638: f9438908     	ldr	x8, [x8, #0x710]
    163c: f85f83a9     	ldur	x9, [x29, #-0x8]
    1640: eb09011f     	cmp	x8, x9
    1644: 54000e21     	b.ne	0x1808 <zte_power_supply_get_battery_info+0x620>
    1648: 2a1403e0     	mov	w0, w20
    164c: a94e4ff4     	ldp	x20, x19, [sp, #0xe0]
    1650: a94d57f6     	ldp	x22, x21, [sp, #0xd0]
    1654: a94c5ff8     	ldp	x24, x23, [sp, #0xc0]
    1658: a94b67fa     	ldp	x26, x25, [sp, #0xb0]
    165c: a94a6ffc     	ldp	x28, x27, [sp, #0xa0]
    1660: a9497bfd     	ldp	x29, x30, [sp, #0x90]
    1664: 9103c3ff     	add	sp, sp, #0xf0
    1668: d50323bf     	autiasp
    166c: d65f03c0     	ret
    1670: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001670:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x441
    1674: 91000021     	add	x1, x1, #0x0
		0000000000001674:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x441
    1678: 9100b3e2     	add	x2, sp, #0x2c
    167c: aa1503e0     	mov	x0, x21
    1680: 94000000     	bl	0x1680 <zte_power_supply_get_battery_info+0x498>
		0000000000001680:  R_AARCH64_CALL26	of_get_property
    1684: 2a1f03f4     	mov	w20, wzr
    1688: b4fffd60     	cbz	x0, 0x1634 <zte_power_supply_get_battery_info+0x44c>
    168c: b9402fe8     	ldr	w8, [sp, #0x2c]
    1690: 34fffd28     	cbz	w8, 0x1634 <zte_power_supply_get_battery_info+0x44c>
    1694: 13037d08     	asr	w8, w8, #3
    1698: f9400ff4     	ldr	x20, [sp, #0x18]
    169c: b901c288     	str	w8, [x20, #0x1c0]
    16a0: 37f80a68     	tbnz	w8, #0x1f, 0x17ec <zte_power_supply_get_battery_info+0x604>
    16a4: d37d7d16     	ubfiz	x22, x8, #3, #32
    16a8: f94013f3     	ldr	x19, [sp, #0x20]
    16ac: aa0003f5     	mov	x21, x0
    16b0: 5281b802     	mov	w2, #0xdc0              // =3520
    16b4: 9100e260     	add	x0, x19, #0x38
    16b8: aa1603e1     	mov	x1, x22
    16bc: 94000000     	bl	0x16bc <zte_power_supply_get_battery_info+0x4d4>
		00000000000016bc:  R_AARCH64_CALL26	devm_kmalloc
    16c0: f900de80     	str	x0, [x20, #0x1b8]
    16c4: b4000980     	cbz	x0, 0x17f4 <zte_power_supply_get_battery_info+0x60c>
    16c8: b941c288     	ldr	w8, [x20, #0x1c0]
    16cc: 7100051f     	cmp	w8, #0x1
    16d0: 5400052b     	b.lt	0x1774 <zte_power_supply_get_battery_info+0x58c>
    16d4: d37df108     	lsl	x8, x8, #3
    16d8: aa1f03e9     	mov	x9, xzr
    16dc: eb0902df     	cmp	x22, x9
    16e0: 54000849     	b.ls	0x17e8 <zte_power_supply_get_battery_info+0x600>
    16e4: 8b0902aa     	add	x10, x21, x9
    16e8: 9100112c     	add	x12, x9, #0x4
    16ec: b940014b     	ldr	w11, [x10]
    16f0: eb0c02df     	cmp	x22, x12
    16f4: 5ac0096b     	rev	w11, w11
    16f8: b829680b     	str	w11, [x0, x9]
    16fc: 54000763     	b.lo	0x17e8 <zte_power_supply_get_battery_info+0x600>
    1700: b940054a     	ldr	w10, [x10, #0x4]
    1704: 8b09000b     	add	x11, x0, x9
    1708: 91002129     	add	x9, x9, #0x8
    170c: 2a1f03f4     	mov	w20, wzr
    1710: eb09011f     	cmp	x8, x9
    1714: 5ac0094a     	rev	w10, w10
    1718: b900056a     	str	w10, [x11, #0x4]
    171c: 54fffe01     	b.ne	0x16dc <zte_power_supply_get_battery_info+0x4f4>
    1720: 17ffffc5     	b	0x1634 <zte_power_supply_get_battery_info+0x44c>
    1724: 71004edf     	cmp	w22, #0x13
    1728: 54000728     	b.hi	0x180c <zte_power_supply_get_battery_info+0x624>
    172c: aa1f03f4     	mov	x20, xzr
    1730: f8365a7f     	str	xzr, [x19, w22, uxtw #3]
    1734: 14000004     	b	0x1744 <zte_power_supply_get_battery_info+0x55c>
    1738: 91002294     	add	x20, x20, #0x8
    173c: f102829f     	cmp	x20, #0xa0
    1740: 540000c0     	b.eq	0x1758 <zte_power_supply_get_battery_info+0x570>
    1744: f8746a61     	ldr	x1, [x19, x20]
    1748: b4ffff81     	cbz	x1, 0x1738 <zte_power_supply_get_battery_info+0x550>
    174c: 9100e360     	add	x0, x27, #0x38
    1750: 94000000     	bl	0x1750 <zte_power_supply_get_battery_info+0x568>
		0000000000001750:  R_AARCH64_CALL26	devm_kfree
    1754: 17fffff9     	b	0x1738 <zte_power_supply_get_battery_info+0x550>
    1758: 12800174     	mov	w20, #-0xc              // =-12
    175c: f9400fe8     	ldr	x8, [sp, #0x18]
    1760: f940dd01     	ldr	x1, [x8, #0x1b8]
    1764: b4fff681     	cbz	x1, 0x1634 <zte_power_supply_get_battery_info+0x44c>
    1768: 9100e360     	add	x0, x27, #0x38
    176c: 94000000     	bl	0x176c <zte_power_supply_get_battery_info+0x584>
		000000000000176c:  R_AARCH64_CALL26	devm_kfree
    1770: 17ffffb1     	b	0x1634 <zte_power_supply_get_battery_info+0x44c>
    1774: 2a1f03f4     	mov	w20, wzr
    1778: 17ffffaf     	b	0x1634 <zte_power_supply_get_battery_info+0x44c>
    177c: f94013e8     	ldr	x8, [sp, #0x20]
    1780: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001780:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1db
    1784: 91000021     	add	x1, x1, #0x0
		0000000000001784:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1db
    1788: 9100e100     	add	x0, x8, #0x38
    178c: 94000000     	bl	0x178c <zte_power_supply_get_battery_info+0x5a4>
		000000000000178c:  R_AARCH64_CALL26	_dev_err
    1790: 128002b4     	mov	w20, #-0x16             // =-22
    1794: 17ffffa8     	b	0x1634 <zte_power_supply_get_battery_info+0x44c>
    1798: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001798:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3dd
    179c: 91000021     	add	x1, x1, #0x0
		000000000000179c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3dd
    17a0: 9100e360     	add	x0, x27, #0x38
    17a4: aa1903e2     	mov	x2, x25
    17a8: 94000000     	bl	0x17a8 <zte_power_supply_get_battery_info+0x5c0>
		00000000000017a8:  R_AARCH64_CALL26	_dev_err
    17ac: aa1903e0     	mov	x0, x25
    17b0: 94000000     	bl	0x17b0 <zte_power_supply_get_battery_info+0x5c8>
		00000000000017b0:  R_AARCH64_CALL26	kfree
    17b4: aa1f03f5     	mov	x21, xzr
    17b8: 128002b4     	mov	w20, #-0x16             // =-22
    17bc: 14000004     	b	0x17cc <zte_power_supply_get_battery_info+0x5e4>
    17c0: 910022b5     	add	x21, x21, #0x8
    17c4: f10282bf     	cmp	x21, #0xa0
    17c8: 54fffca0     	b.eq	0x175c <zte_power_supply_get_battery_info+0x574>
    17cc: f8756a61     	ldr	x1, [x19, x21]
    17d0: b4ffff81     	cbz	x1, 0x17c0 <zte_power_supply_get_battery_info+0x5d8>
    17d4: 9100e360     	add	x0, x27, #0x38
    17d8: 94000000     	bl	0x17d8 <zte_power_supply_get_battery_info+0x5f0>
		00000000000017d8:  R_AARCH64_CALL26	devm_kfree
    17dc: 17fffff9     	b	0x17c0 <zte_power_supply_get_battery_info+0x5d8>
    17e0: f8367a7f     	str	xzr, [x19, x22, lsl #3]
    17e4: 17ffffd2     	b	0x172c <zte_power_supply_get_battery_info+0x544>
    17e8: d4200020     	brk	#0x1
    17ec: f94013f3     	ldr	x19, [sp, #0x20]
    17f0: f900de9f     	str	xzr, [x20, #0x1b8]
    17f4: aa1303e0     	mov	x0, x19
    17f8: aa1403e1     	mov	x1, x20
    17fc: 94000000     	bl	0x17fc <zte_power_supply_get_battery_info+0x614>
		00000000000017fc:  R_AARCH64_CALL26	zte_power_supply_put_battery_info
    1800: 12800174     	mov	w20, #-0xc              // =-12
    1804: 17ffff8c     	b	0x1634 <zte_power_supply_get_battery_info+0x44c>
    1808: 94000000     	bl	0x1808 <zte_power_supply_get_battery_info+0x620>
		0000000000001808:  R_AARCH64_CALL26	__stack_chk_fail
    180c: d42aa240     	brk	#0x5512
