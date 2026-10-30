
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
    1220: aa0003f5     	mov	x21, x0
    1224: f2dffd4a     	movk	x10, #0xffea, lsl #32
    1228: f81f83a9     	stur	x9, [x29, #-0x8]
    122c: b805cec8     	str	w8, [x22, #0x5c]!
    1230: 910572c9     	add	x9, x22, #0x15c
    1234: f900013f     	str	xzr, [x9]
    1238: 910472c9     	add	x9, x22, #0x11c
    123c: aa1603fc     	mov	x28, x22
    1240: f900012a     	str	x10, [x9]
    1244: 910492c9     	add	x9, x22, #0x124
    1248: aa1603fb     	mov	x27, x22
    124c: f900012a     	str	x10, [x9]
    1250: 9104b2c9     	add	x9, x22, #0x12c
    1254: aa1603fa     	mov	x26, x22
    1258: f900012a     	str	x10, [x9]
    125c: 9104d2c9     	add	x9, x22, #0x134
    1260: aa1603f9     	mov	x25, x22
    1264: aa1603f8     	mov	x24, x22
    1268: aa1603f7     	mov	x23, x22
    126c: aa1603f3     	mov	x19, x22
    1270: f900012a     	str	x10, [x9]
    1274: 910412c9     	add	x9, x22, #0x104
    1278: f81a8f8a     	str	x10, [x28, #-0x58]!
    127c: f81b0f6a     	str	x10, [x27, #-0x50]!
    1280: b81bcf48     	str	w8, [x26, #-0x44]!
    1284: b81c4f28     	str	w8, [x25, #-0x3c]!
    1288: f81d0f0a     	str	x10, [x24, #-0x30]!
    128c: b81f8ee8     	str	w8, [x23, #-0x8]!
    1290: f806ce7f     	str	xzr, [x19, #0x6c]!
    1294: b9010ec8     	str	w8, [x22, #0x10c]
    1298: f80042ca     	stur	x10, [x22, #0x4]
    129c: f80742df     	stur	xzr, [x22, #0x74]
    12a0: f9008aca     	str	x10, [x22, #0x110]
    12a4: f807c2df     	stur	xzr, [x22, #0x7c]
    12a8: b9000ec8     	str	w8, [x22, #0xc]
    12ac: f80842df     	stur	xzr, [x22, #0x84]
    12b0: b9011ac8     	str	w8, [x22, #0x118]
    12b4: f808c2df     	stur	xzr, [x22, #0x8c]
    12b8: f80942df     	stur	xzr, [x22, #0x94]
    12bc: a9012aca     	stp	x10, x10, [x22, #0x10]
    12c0: f809c2df     	stur	xzr, [x22, #0x9c]
    12c4: f80a42df     	stur	xzr, [x22, #0xa4]
    12c8: f80ac2df     	stur	xzr, [x22, #0xac]
    12cc: f80b42df     	stur	xzr, [x22, #0xb4]
    12d0: a9022aca     	stp	x10, x10, [x22, #0x20]
    12d4: f80bc2df     	stur	xzr, [x22, #0xbc]
    12d8: f80c42df     	stur	xzr, [x22, #0xc4]
    12dc: f80cc2df     	stur	xzr, [x22, #0xcc]
    12e0: b9013ec8     	str	w8, [x22, #0x13c]
    12e4: 290622c8     	stp	w8, w8, [x22, #0x30]
    12e8: f80d42df     	stur	xzr, [x22, #0xd4]
    12ec: b90142c8     	str	w8, [x22, #0x140]
    12f0: f80dc2df     	stur	xzr, [x22, #0xdc]
    12f4: b90146c8     	str	w8, [x22, #0x144]
    12f8: 290722c8     	stp	w8, w8, [x22, #0x38]
    12fc: f80e42df     	stur	xzr, [x22, #0xe4]
    1300: b9014ac8     	str	w8, [x22, #0x148]
    1304: f80ec2df     	stur	xzr, [x22, #0xec]
    1308: b9014ec8     	str	w8, [x22, #0x14c]
    130c: 290822c8     	stp	w8, w8, [x22, #0x40]
    1310: f80f42df     	stur	xzr, [x22, #0xf4]
    1314: b90152c8     	str	w8, [x22, #0x150]
    1318: f80fc2df     	stur	xzr, [x22, #0xfc]
    131c: b90156c8     	str	w8, [x22, #0x154]
    1320: 290922c8     	stp	w8, w8, [x22, #0x48]
    1324: f900013f     	str	xzr, [x9]
    1328: b9015ac8     	str	w8, [x22, #0x158]
    132c: f9401400     	ldr	x0, [x0, #0x28]
    1330: f9001bff     	str	xzr, [sp, #0x30]
    1334: b9002fff     	str	wzr, [sp, #0x2c]
    1338: b4001700     	cbz	x0, 0x1618 <zte_power_supply_get_battery_info+0x430>
    133c: f90013e1     	str	x1, [sp, #0x20]
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
    14f4: 5400148a     	b.ge	0x1784 <zte_power_supply_get_battery_info+0x59c>
    14f8: 7100069f     	cmp	w20, #0x1
    14fc: 54000bab     	b.lt	0x1670 <zte_power_supply_get_battery_info+0x488>
    1500: 2a1403f7     	mov	w23, w20
    1504: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001504:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fd
    1508: 91000021     	add	x1, x1, #0x0
		0000000000001508:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fd
    150c: aa1503e0     	mov	x0, x21
    1510: aa1603e2     	mov	x2, x22
    1514: aa1703e3     	mov	x3, x23
    1518: aa1f03e4     	mov	x4, xzr
    151c: 910432da     	add	x26, x22, #0x10c
    1520: 94000000     	bl	0x1520 <zte_power_supply_get_battery_info+0x338>
		0000000000001520:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1524: aa1f03f6     	mov	x22, xzr
    1528: 90000014     	adrp	x20, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001528:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    152c: 91000294     	add	x20, x20, #0x0
		000000000000152c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    1530: 14000004     	b	0x1540 <zte_power_supply_get_battery_info+0x358>
    1534: 910006d6     	add	x22, x22, #0x1
    1538: eb1702df     	cmp	x22, x23
    153c: 540009a2     	b.hs	0x1670 <zte_power_supply_get_battery_info+0x488>
    1540: 52819800     	mov	w0, #0xcc0              // =3264
    1544: aa1403e1     	mov	x1, x20
    1548: 2a1603e2     	mov	w2, w22
    154c: b9003bff     	str	wzr, [sp, #0x38]
    1550: 94000000     	bl	0x1550 <zte_power_supply_get_battery_info+0x368>
		0000000000001550:  R_AARCH64_CALL26	kasprintf
    1554: b4000e80     	cbz	x0, 0x1724 <zte_power_supply_get_battery_info+0x53c>
    1558: aa0003f9     	mov	x25, x0
    155c: 9100e3e2     	add	x2, sp, #0x38
    1560: aa1503e0     	mov	x0, x21
    1564: aa1903e1     	mov	x1, x25
    1568: 94000000     	bl	0x1568 <zte_power_supply_get_battery_info+0x380>
		0000000000001568:  R_AARCH64_CALL26	of_get_property
    156c: b40011a0     	cbz	x0, 0x17a0 <zte_power_supply_get_battery_info+0x5b8>
    1570: b9403be8     	ldr	w8, [sp, #0x38]
    1574: 34001168     	cbz	w8, 0x17a0 <zte_power_supply_get_battery_info+0x5b8>
    1578: aa0003f8     	mov	x24, x0
    157c: aa1903e0     	mov	x0, x25
    1580: 94000000     	bl	0x1580 <zte_power_supply_get_battery_info+0x398>
		0000000000001580:  R_AARCH64_CALL26	kfree
    1584: f10052df     	cmp	x22, #0x14
    1588: 540014a0     	b.eq	0x181c <zte_power_supply_get_battery_info+0x634>
    158c: b9403bfc     	ldr	w28, [sp, #0x38]
    1590: 13037f9b     	asr	w27, w28, #3
    1594: b8367b5b     	str	w27, [x26, x22, lsl #2]
    1598: 37f812db     	tbnz	w27, #0x1f, 0x17f0 <zte_power_supply_get_battery_info+0x608>
    159c: d37d7f79     	ubfiz	x25, x27, #3, #32
    15a0: f9400fe8     	ldr	x8, [sp, #0x18]
    15a4: 5281b802     	mov	w2, #0xdc0              // =3520
    15a8: 9100e100     	add	x0, x8, #0x38
    15ac: aa1903e1     	mov	x1, x25
    15b0: 94000000     	bl	0x15b0 <zte_power_supply_get_battery_info+0x3c8>
		00000000000015b0:  R_AARCH64_CALL26	devm_kmalloc
    15b4: f8367a60     	str	x0, [x19, x22, lsl #3]
    15b8: b4000ba0     	cbz	x0, 0x172c <zte_power_supply_get_battery_info+0x544>
    15bc: 7100239f     	cmp	w28, #0x8
    15c0: 54fffba3     	b.lo	0x1534 <zte_power_supply_get_battery_info+0x34c>
    15c4: 7100077f     	cmp	w27, #0x1
    15c8: aa1f03e9     	mov	x9, xzr
    15cc: 1a9f8768     	csinc	w8, w27, wzr, hi
    15d0: d37d7d08     	ubfiz	x8, x8, #3, #32
    15d4: eb09033f     	cmp	x25, x9
    15d8: 54001109     	b.ls	0x17f8 <zte_power_supply_get_battery_info+0x610>
    15dc: 8b09030a     	add	x10, x24, x9
    15e0: 9100112c     	add	x12, x9, #0x4
    15e4: b940014b     	ldr	w11, [x10]
    15e8: eb0c033f     	cmp	x25, x12
    15ec: 5ac0096b     	rev	w11, w11
    15f0: b829680b     	str	w11, [x0, x9]
    15f4: 54001023     	b.lo	0x17f8 <zte_power_supply_get_battery_info+0x610>
    15f8: b940054a     	ldr	w10, [x10, #0x4]
    15fc: 8b09000b     	add	x11, x0, x9
    1600: 91002129     	add	x9, x9, #0x8
    1604: eb09011f     	cmp	x8, x9
    1608: 5ac0094a     	rev	w10, w10
    160c: b900056a     	str	w10, [x11, #0x4]
    1610: 54fffe21     	b.ne	0x15d4 <zte_power_supply_get_battery_info+0x3ec>
    1614: 17ffffc8     	b	0x1534 <zte_power_supply_get_battery_info+0x34c>
    1618: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001618:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59a
    161c: 91000021     	add	x1, x1, #0x0
		000000000000161c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59a
    1620: 90000002     	adrp	x2, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001620:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a6
    1624: 91000042     	add	x2, x2, #0x0
		0000000000001624:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a6
    1628: 9100e2a0     	add	x0, x21, #0x38
    162c: 94000000     	bl	0x162c <zte_power_supply_get_battery_info+0x444>
		000000000000162c:  R_AARCH64_CALL26	_dev_warn
    1630: 128000b4     	mov	w20, #-0x6              // =-6
    1634: d5384108     	mrs	x8, SP_EL0
    1638: f9438908     	ldr	x8, [x8, #0x710]
    163c: f85f83a9     	ldur	x9, [x29, #-0x8]
    1640: eb09011f     	cmp	x8, x9
    1644: 54000ea1     	b.ne	0x1818 <zte_power_supply_get_battery_info+0x630>
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
    1698: f94013f4     	ldr	x20, [sp, #0x20]
    169c: b901c288     	str	w8, [x20, #0x1c0]
    16a0: 37f80ae8     	tbnz	w8, #0x1f, 0x17fc <zte_power_supply_get_battery_info+0x614>
    16a4: d37d7d16     	ubfiz	x22, x8, #3, #32
    16a8: f9400ff3     	ldr	x19, [sp, #0x18]
    16ac: aa0003f5     	mov	x21, x0
    16b0: 5281b802     	mov	w2, #0xdc0              // =3520
    16b4: 9100e260     	add	x0, x19, #0x38
    16b8: aa1603e1     	mov	x1, x22
    16bc: 94000000     	bl	0x16bc <zte_power_supply_get_battery_info+0x4d4>
		00000000000016bc:  R_AARCH64_CALL26	devm_kmalloc
    16c0: f900de80     	str	x0, [x20, #0x1b8]
    16c4: b4000a00     	cbz	x0, 0x1804 <zte_power_supply_get_battery_info+0x61c>
    16c8: b941c288     	ldr	w8, [x20, #0x1c0]
    16cc: 7100051f     	cmp	w8, #0x1
    16d0: 5400056b     	b.lt	0x177c <zte_power_supply_get_battery_info+0x594>
    16d4: d37df108     	lsl	x8, x8, #3
    16d8: aa1f03e9     	mov	x9, xzr
    16dc: eb0902df     	cmp	x22, x9
    16e0: 540008c9     	b.ls	0x17f8 <zte_power_supply_get_battery_info+0x610>
    16e4: 8b0902aa     	add	x10, x21, x9
    16e8: 9100112c     	add	x12, x9, #0x4
    16ec: b940014b     	ldr	w11, [x10]
    16f0: eb0c02df     	cmp	x22, x12
    16f4: 5ac0096b     	rev	w11, w11
    16f8: b829680b     	str	w11, [x0, x9]
    16fc: 540007e3     	b.lo	0x17f8 <zte_power_supply_get_battery_info+0x610>
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
    1728: 540007a8     	b.hi	0x181c <zte_power_supply_get_battery_info+0x634>
    172c: f9400ff5     	ldr	x21, [sp, #0x18]
    1730: aa1f03f4     	mov	x20, xzr
    1734: f8365a7f     	str	xzr, [x19, w22, uxtw #3]
    1738: 14000004     	b	0x1748 <zte_power_supply_get_battery_info+0x560>
    173c: 91002294     	add	x20, x20, #0x8
    1740: f102829f     	cmp	x20, #0xa0
    1744: 540000c0     	b.eq	0x175c <zte_power_supply_get_battery_info+0x574>
    1748: f8746a61     	ldr	x1, [x19, x20]
    174c: b4ffff81     	cbz	x1, 0x173c <zte_power_supply_get_battery_info+0x554>
    1750: 9100e2a0     	add	x0, x21, #0x38
    1754: 94000000     	bl	0x1754 <zte_power_supply_get_battery_info+0x56c>
		0000000000001754:  R_AARCH64_CALL26	devm_kfree
    1758: 17fffff9     	b	0x173c <zte_power_supply_get_battery_info+0x554>
    175c: 12800174     	mov	w20, #-0xc              // =-12
    1760: f94013e8     	ldr	x8, [sp, #0x20]
    1764: f940dd01     	ldr	x1, [x8, #0x1b8]
    1768: b4fff661     	cbz	x1, 0x1634 <zte_power_supply_get_battery_info+0x44c>
    176c: f9400fe8     	ldr	x8, [sp, #0x18]
    1770: 9100e100     	add	x0, x8, #0x38
    1774: 94000000     	bl	0x1774 <zte_power_supply_get_battery_info+0x58c>
		0000000000001774:  R_AARCH64_CALL26	devm_kfree
    1778: 17ffffaf     	b	0x1634 <zte_power_supply_get_battery_info+0x44c>
    177c: 2a1f03f4     	mov	w20, wzr
    1780: 17ffffad     	b	0x1634 <zte_power_supply_get_battery_info+0x44c>
    1784: f9400fe8     	ldr	x8, [sp, #0x18]
    1788: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001788:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1db
    178c: 91000021     	add	x1, x1, #0x0
		000000000000178c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1db
    1790: 9100e100     	add	x0, x8, #0x38
    1794: 94000000     	bl	0x1794 <zte_power_supply_get_battery_info+0x5ac>
		0000000000001794:  R_AARCH64_CALL26	_dev_err
    1798: 128002b4     	mov	w20, #-0x16             // =-22
    179c: 17ffffa6     	b	0x1634 <zte_power_supply_get_battery_info+0x44c>
    17a0: f9400fe8     	ldr	x8, [sp, #0x18]
    17a4: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		00000000000017a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3dd
    17a8: 91000021     	add	x1, x1, #0x0
		00000000000017a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3dd
    17ac: aa1903e2     	mov	x2, x25
    17b0: 9100e100     	add	x0, x8, #0x38
    17b4: 94000000     	bl	0x17b4 <zte_power_supply_get_battery_info+0x5cc>
		00000000000017b4:  R_AARCH64_CALL26	_dev_err
    17b8: aa1903e0     	mov	x0, x25
    17bc: 94000000     	bl	0x17bc <zte_power_supply_get_battery_info+0x5d4>
		00000000000017bc:  R_AARCH64_CALL26	kfree
    17c0: aa1f03f5     	mov	x21, xzr
    17c4: 128002b4     	mov	w20, #-0x16             // =-22
    17c8: 14000004     	b	0x17d8 <zte_power_supply_get_battery_info+0x5f0>
    17cc: 910022b5     	add	x21, x21, #0x8
    17d0: f10282bf     	cmp	x21, #0xa0
    17d4: 54fffc60     	b.eq	0x1760 <zte_power_supply_get_battery_info+0x578>
    17d8: f8756a61     	ldr	x1, [x19, x21]
    17dc: b4ffff81     	cbz	x1, 0x17cc <zte_power_supply_get_battery_info+0x5e4>
    17e0: f9400fe8     	ldr	x8, [sp, #0x18]
    17e4: 9100e100     	add	x0, x8, #0x38
    17e8: 94000000     	bl	0x17e8 <zte_power_supply_get_battery_info+0x600>
		00000000000017e8:  R_AARCH64_CALL26	devm_kfree
    17ec: 17fffff8     	b	0x17cc <zte_power_supply_get_battery_info+0x5e4>
    17f0: f8367a7f     	str	xzr, [x19, x22, lsl #3]
    17f4: 17ffffce     	b	0x172c <zte_power_supply_get_battery_info+0x544>
    17f8: d4200020     	brk	#0x1
    17fc: f9400ff3     	ldr	x19, [sp, #0x18]
    1800: f900de9f     	str	xzr, [x20, #0x1b8]
    1804: aa1303e0     	mov	x0, x19
    1808: aa1403e1     	mov	x1, x20
    180c: 94000000     	bl	0x180c <zte_power_supply_get_battery_info+0x624>
		000000000000180c:  R_AARCH64_CALL26	zte_power_supply_put_battery_info
    1810: 12800174     	mov	w20, #-0xc              // =-12
    1814: 17ffff88     	b	0x1634 <zte_power_supply_get_battery_info+0x44c>
    1818: 94000000     	bl	0x1818 <zte_power_supply_get_battery_info+0x630>
		0000000000001818:  R_AARCH64_CALL26	__stack_chk_fail
    181c: d42aa240     	brk	#0x5512
