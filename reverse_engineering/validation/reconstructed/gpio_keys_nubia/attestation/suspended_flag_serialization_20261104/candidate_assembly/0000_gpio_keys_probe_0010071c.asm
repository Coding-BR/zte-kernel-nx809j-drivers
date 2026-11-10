
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000113c <gpio_keys_probe>:
    113c: d503233f     	paciasp
    1140: d10383ff     	sub	sp, sp, #0xe0
    1144: a9087bfd     	stp	x29, x30, [sp, #0x80]
    1148: a9096ffc     	stp	x28, x27, [sp, #0x90]
    114c: a90a67fa     	stp	x26, x25, [sp, #0xa0]
    1150: a90b5ff8     	stp	x24, x23, [sp, #0xb0]
    1154: a90c57f6     	stp	x22, x21, [sp, #0xc0]
    1158: a90d4ff4     	stp	x20, x19, [sp, #0xd0]
    115c: 910203fd     	add	x29, sp, #0x80
    1160: d5384108     	mrs	x8, SP_EL0
    1164: aa0003fa     	mov	x26, x0
    1168: 91004017     	add	x23, x0, #0x10
    116c: f9438908     	ldr	x8, [x8, #0x710]
    1170: f81f83a8     	stur	x8, [x29, #-0x8]
    1174: f9405018     	ldr	x24, [x0, #0xa0]
    1178: b4004318     	cbz	x24, 0x19d8 <gpio_keys_probe+0x89c>
    117c: b9800b08     	ldrsw	x8, [x24, #0x8]
    1180: 52802209     	mov	w9, #0x110              // =272
    1184: aa1703e0     	mov	x0, x23
    1188: 5281b802     	mov	w2, #0xdc0              // =3520
    118c: 9bc97d09     	umulh	x9, x8, x9
    1190: 8b081108     	add	x8, x8, x8, lsl #4
    1194: d37ced08     	lsl	x8, x8, #4
    1198: b1012108     	adds	x8, x8, #0x48
    119c: da9f3108     	csinv	x8, x8, xzr, lo
    11a0: eb0903ff     	cmp	xzr, x9
    11a4: da9f0113     	csinv	x19, x8, xzr, eq
    11a8: aa1303e1     	mov	x1, x19
    11ac: 94000000     	bl	0x11ac <gpio_keys_probe+0x70>
		00000000000011ac:  R_AARCH64_CALL26	devm_kmalloc
    11b0: b4005c60     	cbz	x0, 0x1d3c <gpio_keys_probe+0xc00>
    11b4: b9400b08     	ldr	w8, [x24, #0x8]
    11b8: aa0003f4     	mov	x20, x0
    11bc: 37f86c08     	tbnz	w8, #0x1f, 0x1f3c <gpio_keys_probe+0xe00>
    11c0: d37ff901     	lsl	x1, x8, #1
    11c4: aa1703e0     	mov	x0, x23
    11c8: 5281b802     	mov	w2, #0xdc0              // =3520
    11cc: 94000000     	bl	0x11cc <gpio_keys_probe+0x90>
		00000000000011cc:  R_AARCH64_CALL26	devm_kmalloc
    11d0: f9002280     	str	x0, [x20, #0x40]
    11d4: b4005520     	cbz	x0, 0x1c78 <gpio_keys_probe+0xb3c>
    11d8: aa1703e0     	mov	x0, x23
    11dc: 94000000     	bl	0x11dc <gpio_keys_probe+0xa0>
		00000000000011dc:  R_AARCH64_CALL26	devm_input_allocate_device
    11e0: b4005b40     	cbz	x0, 0x1d48 <gpio_keys_probe+0xc0c>
    11e4: 927df268     	and	x8, x19, #0xfffffffffffffff8
    11e8: f9000298     	str	x24, [x20]
    11ec: f100211f     	cmp	x8, #0x8
    11f0: 54006a40     	b.eq	0x1f38 <gpio_keys_probe+0xdfc>
    11f4: aa0003f5     	mov	x21, x0
    11f8: f9000680     	str	x0, [x20, #0x8]
    11fc: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x18>
		00000000000011fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3be
    1200: 91000021     	add	x1, x1, #0x0
		0000000000001200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3be
    1204: 90000002     	adrp	x2, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001204:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
    1208: 91000042     	add	x2, x2, #0x0
		0000000000001208:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x8
    120c: 91004280     	add	x0, x20, #0x10
    1210: 94000000     	bl	0x1210 <gpio_keys_probe+0xd4>
		0000000000001210:  R_AARCH64_CALL26	__mutex_init
    1214: f9005754     	str	x20, [x26, #0xa8]
    1218: f90166b4     	str	x20, [x21, #0x2c8]
    121c: f9401708     	ldr	x8, [x24, #0x28]
    1220: b5000048     	cbnz	x8, 0x1228 <gpio_keys_probe+0xec>
    1224: f9400348     	ldr	x8, [x26]
    1228: 90000009     	adrp	x9, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001228:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x66b
    122c: 91000129     	add	x9, x9, #0x0
		000000000000122c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x66b
    1230: f9014ab7     	str	x23, [x21, #0x290]
    1234: a90026a8     	stp	x8, x9, [x21]
    1238: 90000008     	adrp	x8, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001238:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_open
    123c: 91000108     	add	x8, x8, #0x0
		000000000000123c:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_open
    1240: 90000009     	adrp	x9, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001240:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_close
    1244: 91000129     	add	x9, x9, #0x0
		0000000000001244:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_close
    1248: a91ca6a8     	stp	x8, x9, [x21, #0x1c8]
    124c: b20083e8     	mov	x8, #0x1000100010001    // =281479271743489
    1250: f2800328     	movk	x8, #0x19
    1254: f2e02008     	movk	x8, #0x100, lsl #48
    1258: f9000ea8     	str	x8, [x21, #0x18]
    125c: f9402288     	ldr	x8, [x20, #0x40]
    1260: f90072a8     	str	x8, [x21, #0xe0]
    1264: 52800048     	mov	w8, #0x2                // =2
    1268: b900daa8     	str	w8, [x21, #0xd8]
    126c: b9400b08     	ldr	w8, [x24, #0x8]
    1270: b900d6a8     	str	w8, [x21, #0xd4]
    1274: 39404308     	ldrb	w8, [x24, #0x10]
    1278: 36000088     	tbz	w8, #0x0, 0x1288 <gpio_keys_probe+0x14c>
    127c: f94016a8     	ldr	x8, [x21, #0x28]
    1280: b26c0108     	orr	x8, x8, #0x100000
    1284: f90016a8     	str	x8, [x21, #0x28]
    1288: b9400b08     	ldr	w8, [x24, #0x8]
    128c: 7100051f     	cmp	w8, #0x1
    1290: 540052ab     	b.lt	0x1ce4 <gpio_keys_probe+0xba8>
    1294: f81c83b5     	stur	x21, [x29, #-0x38]
    1298: 2a1f03f5     	mov	w21, wzr
    129c: aa1f03e1     	mov	x1, xzr
    12a0: 9000001b     	adrp	x27, 0x1000 <gpio_keys_irq_isr+0x18>
		00000000000012a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x538
    12a4: 9100037b     	add	x27, x27, #0x0
		00000000000012a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x538
    12a8: 9000001c     	adrp	x28, 0x1000 <gpio_keys_irq_isr+0x18>
		00000000000012a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e7
    12ac: 9100039c     	add	x28, x28, #0x0
		00000000000012ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e7
    12b0: 91012288     	add	x8, x20, #0x48
    12b4: 90000016     	adrp	x22, 0x1000 <gpio_keys_irq_isr+0x18>
		00000000000012b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c8
    12b8: 910002d6     	add	x22, x22, #0x0
		00000000000012b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c8
    12bc: a93dcfbf     	stp	xzr, x19, [x29, #-0x28]
    12c0: a900d3f7     	stp	x23, x20, [sp, #0x8]
    12c4: f90013e8     	str	x8, [sp, #0x20]
    12c8: f90023fa     	str	x26, [sp, #0x40]
    12cc: f9405348     	ldr	x8, [x26, #0xa0]
    12d0: f9400313     	ldr	x19, [x24]
    12d4: b50000e8     	cbnz	x8, 0x12f0 <gpio_keys_probe+0x1b4>
    12d8: aa1703e0     	mov	x0, x23
    12dc: 94000000     	bl	0x12dc <gpio_keys_probe+0x1a0>
		00000000000012dc:  R_AARCH64_CALL26	device_get_next_child_node
    12e0: f85e03b4     	ldur	x20, [x29, #-0x20]
    12e4: aa0003e1     	mov	x1, x0
    12e8: b5000060     	cbnz	x0, 0x12f4 <gpio_keys_probe+0x1b8>
    12ec: 140002b7     	b	0x1dc8 <gpio_keys_probe+0xc8c>
    12f0: f85e03b4     	ldur	x20, [x29, #-0x20]
    12f4: f85d83a8     	ldur	x8, [x29, #-0x28]
    12f8: 52800709     	mov	w9, #0x38               // =56
    12fc: b9002ff5     	str	w21, [sp, #0x2c]
    1300: 9b094d19     	madd	x25, x8, x9, x19
    1304: 8b081108     	add	x8, x8, x8, lsl #4
    1308: d37ced0a     	lsl	x10, x8, #4
    130c: 90000008     	adrp	x8, 0x1000 <gpio_keys_irq_isr+0x18>
		000000000000130c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b8
    1310: 91000108     	add	x8, x8, #0x0
		0000000000001310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b8
    1314: f81e83aa     	stur	x10, [x29, #-0x18]
    1318: f9400b29     	ldr	x9, [x25, #0x10]
    131c: f100013f     	cmp	x9, #0x0
    1320: 9a890108     	csel	x8, x8, x9, eq
    1324: f81d03a8     	stur	x8, [x29, #-0x30]
    1328: b1014148     	adds	x8, x10, #0x50
    132c: 54006064     	b.mi	0x1f38 <gpio_keys_probe+0xdfc>
    1330: eb08029f     	cmp	x20, x8
    1334: 54006023     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1338: f85e83aa     	ldur	x10, [x29, #-0x18]
    133c: f94013e8     	ldr	x8, [sp, #0x20]
    1340: 91012149     	add	x9, x10, #0x48
    1344: 8b0a0115     	add	x21, x8, x10
    1348: f85c83aa     	ldur	x10, [x29, #-0x38]
    134c: eb090288     	subs	x8, x20, x9
    1350: f90006aa     	str	x10, [x21, #0x8]
    1354: b7f85f29     	tbnz	x9, #0x3f, 0x1f38 <gpio_keys_probe+0xdfc>
    1358: 54005f03     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    135c: f100211f     	cmp	x8, #0x8
    1360: 54005ec3     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1364: f85e83a8     	ldur	x8, [x29, #-0x18]
    1368: f90002b9     	str	x25, [x21]
    136c: 91053109     	add	x9, x8, #0x14c
    1370: eb090288     	subs	x8, x20, x9
    1374: b7f85e29     	tbnz	x9, #0x3f, 0x1f38 <gpio_keys_probe+0xdfc>
    1378: 54005e03     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    137c: f100111f     	cmp	x8, #0x4
    1380: 54005dc3     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1384: b90106bf     	str	wzr, [x21, #0x104]
    1388: f9001be1     	str	x1, [sp, #0x30]
    138c: b5000301     	cbnz	x1, 0x13ec <gpio_keys_probe+0x2b0>
    1390: b9400721     	ldr	w1, [x25, #0x4]
    1394: 37f80641     	tbnz	w1, #0x1f, 0x145c <gpio_keys_probe+0x320>
    1398: b9400b28     	ldr	w8, [x25, #0x8]
    139c: f85d03a3     	ldur	x3, [x29, #-0x30]
    13a0: aa1703e0     	mov	x0, x23
    13a4: 7100011f     	cmp	w8, #0x0
    13a8: 528000a8     	mov	w8, #0x5                // =5
    13ac: 9a9f1502     	csinc	x2, x8, xzr, ne
    13b0: 94000000     	bl	0x13b0 <gpio_keys_probe+0x274>
		00000000000013b0:  R_AARCH64_CALL26	devm_gpio_request_one
    13b4: b9400722     	ldr	w2, [x25, #0x4]
    13b8: 37f85520     	tbnz	w0, #0x1f, 0x1e5c <gpio_keys_probe+0xd20>
    13bc: 2a0203e0     	mov	w0, w2
    13c0: 94000000     	bl	0x13c0 <gpio_keys_probe+0x284>
		00000000000013c0:  R_AARCH64_CALL26	gpio_to_desc
    13c4: a97e2ba8     	ldp	x8, x10, [x29, #-0x20]
    13c8: 91016149     	add	x9, x10, #0x58
    13cc: eb090108     	subs	x8, x8, x9
    13d0: b7f85b49     	tbnz	x9, #0x3f, 0x1f38 <gpio_keys_probe+0xdfc>
    13d4: 54005b23     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    13d8: f100211f     	cmp	x8, #0x8
    13dc: 54005ae3     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    13e0: f9000aa0     	str	x0, [x21, #0x10]
    13e4: b50004e0     	cbnz	x0, 0x1480 <gpio_keys_probe+0x344>
    13e8: 140002bf     	b	0x1ee4 <gpio_keys_probe+0xda8>
    13ec: f85d03a5     	ldur	x5, [x29, #-0x30]
    13f0: aa1703e0     	mov	x0, x23
    13f4: aa1f03e2     	mov	x2, xzr
    13f8: 2a1f03e3     	mov	w3, wzr
    13fc: 52800024     	mov	w4, #0x1                // =1
    1400: 94000000     	bl	0x1400 <gpio_keys_probe+0x2c4>
		0000000000001400:  R_AARCH64_CALL26	devm_fwnode_gpiod_get_index
    1404: f85e83a8     	ldur	x8, [x29, #-0x18]
    1408: 91016108     	add	x8, x8, #0x58
    140c: eb080289     	subs	x9, x20, x8
    1410: b7f85948     	tbnz	x8, #0x3f, 0x1f38 <gpio_keys_probe+0xdfc>
    1414: 54005923     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1418: f100213f     	cmp	x9, #0x8
    141c: 540058e3     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1420: aa0003f4     	mov	x20, x0
    1424: b13ffc1f     	cmn	x0, #0xfff
    1428: f9000aa0     	str	x0, [x21, #0x10]
    142c: 54000283     	b.lo	0x147c <gpio_keys_probe+0x340>
    1430: 31000a9f     	cmn	w20, #0x2
    1434: 54001500     	b.eq	0x16d4 <gpio_keys_probe+0x598>
    1438: 3108169f     	cmn	w20, #0x205
    143c: 540052a0     	b.eq	0x1e90 <gpio_keys_probe+0xd54>
    1440: aa1703e0     	mov	x0, x23
    1444: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001444:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30c
    1448: 91000021     	add	x1, x1, #0x0
		0000000000001448:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30c
    144c: 2a1403e2     	mov	w2, w20
    1450: 94000000     	bl	0x1450 <gpio_keys_probe+0x314>
		0000000000001450:  R_AARCH64_CALL26	_dev_err
    1454: 34002994     	cbz	w20, 0x1984 <gpio_keys_probe+0x848>
    1458: 1400028e     	b	0x1e90 <gpio_keys_probe+0xd54>
    145c: f85e83a8     	ldur	x8, [x29, #-0x18]
    1460: 91016109     	add	x9, x8, #0x58
    1464: eb090288     	subs	x8, x20, x9
    1468: b7f85689     	tbnz	x9, #0x3f, 0x1f38 <gpio_keys_probe+0xdfc>
    146c: 54005663     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1470: f100211f     	cmp	x8, #0x8
    1474: 54005623     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1478: f9400ab4     	ldr	x20, [x21, #0x10]
    147c: b4001394     	cbz	x20, 0x16ec <gpio_keys_probe+0x5b0>
    1480: f9417f53     	ldr	x19, [x26, #0x2f8]
    1484: aa1f03e1     	mov	x1, xzr
    1488: f81f03bf     	stur	xzr, [x29, #-0x10]
    148c: aa1303e0     	mov	x0, x19
    1490: 94000000     	bl	0x1490 <gpio_keys_probe+0x354>
		0000000000001490:  R_AARCH64_CALL26	of_get_next_child
    1494: b4000280     	cbz	x0, 0x14e4 <gpio_keys_probe+0x3a8>
    1498: aa0003f4     	mov	x20, x0
    149c: d10043a2     	sub	x2, x29, #0x10
    14a0: aa1403e0     	mov	x0, x20
    14a4: aa1b03e1     	mov	x1, x27
    14a8: 94000000     	bl	0x14a8 <gpio_keys_probe+0x36c>
		00000000000014a8:  R_AARCH64_CALL26	of_property_read_string
    14ac: 37f801c0     	tbnz	w0, #0x1f, 0x14e4 <gpio_keys_probe+0x3a8>
    14b0: aa1403e0     	mov	x0, x20
    14b4: aa1c03e1     	mov	x1, x28
    14b8: 2a1f03e2     	mov	w2, wzr
    14bc: 94000000     	bl	0x14bc <gpio_keys_probe+0x380>
		00000000000014bc:  R_AARCH64_CALL26	of_get_named_gpio
    14c0: f85f03a0     	ldur	x0, [x29, #-0x10]
    14c4: f9400b21     	ldr	x1, [x25, #0x10]
    14c8: 94000000     	bl	0x14c8 <gpio_keys_probe+0x38c>
		00000000000014c8:  R_AARCH64_CALL26	strcmp
    14cc: 34002740     	cbz	w0, 0x19b4 <gpio_keys_probe+0x878>
    14d0: aa1303e0     	mov	x0, x19
    14d4: aa1403e1     	mov	x1, x20
    14d8: 94000000     	bl	0x14d8 <gpio_keys_probe+0x39c>
		00000000000014d8:  R_AARCH64_CALL26	of_get_next_child
    14dc: aa0003f4     	mov	x20, x0
    14e0: b5fffde0     	cbnz	x0, 0x149c <gpio_keys_probe+0x360>
    14e4: b9003bff     	str	wzr, [sp, #0x38]
    14e8: a97e27b4     	ldp	x20, x9, [x29, #-0x20]
    14ec: b9402728     	ldr	w8, [x25, #0x24]
    14f0: 91016133     	add	x19, x9, #0x58
    14f4: 34000248     	cbz	w8, 0x153c <gpio_keys_probe+0x400>
    14f8: eb130289     	subs	x9, x20, x19
    14fc: b7f851f3     	tbnz	x19, #0x3f, 0x1f38 <gpio_keys_probe+0xdfc>
    1500: 540051c3     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1504: f100213f     	cmp	x9, #0x8
    1508: 54005183     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    150c: 52807d09     	mov	w9, #0x3e8              // =1000
    1510: f9400aa0     	ldr	x0, [x21, #0x10]
    1514: 1b097d01     	mul	w1, w8, w9
    1518: 94000000     	bl	0x1518 <gpio_keys_probe+0x3dc>
		0000000000001518:  R_AARCH64_CALL26	gpiod_set_debounce
    151c: 36f80100     	tbz	w0, #0x1f, 0x153c <gpio_keys_probe+0x400>
    1520: f85e83a8     	ldur	x8, [x29, #-0x18]
    1524: b1040108     	adds	x8, x8, #0x100
    1528: 54005084     	b.mi	0x1f38 <gpio_keys_probe+0xdfc>
    152c: eb08029f     	cmp	x20, x8
    1530: 54005043     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1534: b9402728     	ldr	w8, [x25, #0x24]
    1538: b900baa8     	str	w8, [x21, #0xb8]
    153c: b9403334     	ldr	w20, [x25, #0x30]
    1540: 350001b4     	cbnz	w20, 0x1574 <gpio_keys_probe+0x438>
    1544: f85e03a8     	ldur	x8, [x29, #-0x20]
    1548: eb130108     	subs	x8, x8, x19
    154c: b7f84f73     	tbnz	x19, #0x3f, 0x1f38 <gpio_keys_probe+0xdfc>
    1550: 54004f43     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1554: f100211f     	cmp	x8, #0x8
    1558: 54004f03     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    155c: f9400aa0     	ldr	x0, [x21, #0x10]
    1560: 94000000     	bl	0x1560 <gpio_keys_probe+0x424>
		0000000000001560:  R_AARCH64_CALL26	gpiod_to_irq
    1564: 2a0003f4     	mov	w20, w0
    1568: 37f84880     	tbnz	w0, #0x1f, 0x1e78 <gpio_keys_probe+0xd3c>
    156c: 2a1403fa     	mov	w26, w20
    1570: 14000002     	b	0x1578 <gpio_keys_probe+0x43c>
    1574: 1280001a     	mov	w26, #-0x1              // =-1
    1578: a97e27a8     	ldp	x8, x9, [x29, #-0x20]
    157c: 91041133     	add	x19, x9, #0x104
    1580: eb130108     	subs	x8, x8, x19
    1584: b7f84db3     	tbnz	x19, #0x3f, 0x1f38 <gpio_keys_probe+0xdfc>
    1588: 54004d83     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    158c: f100111f     	cmp	x8, #0x4
    1590: 54004d43     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1594: a97e2ba8     	ldp	x8, x10, [x29, #-0x20]
    1598: b900beb4     	str	w20, [x21, #0xbc]
    159c: 91026149     	add	x9, x10, #0x98
    15a0: eb090108     	subs	x8, x8, x9
    15a4: b7f84ca9     	tbnz	x9, #0x3f, 0x1f38 <gpio_keys_probe+0xdfc>
    15a8: 54004c83     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    15ac: f100211f     	cmp	x8, #0x8
    15b0: 54004c43     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    15b4: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    15b8: 910162a9     	add	x9, x21, #0x58
    15bc: f9002aa8     	str	x8, [x21, #0x50]
    15c0: a97e23b4     	ldp	x20, x8, [x29, #-0x20]
    15c4: f9002ea9     	str	x9, [x21, #0x58]
    15c8: f90032a9     	str	x9, [x21, #0x60]
    15cc: b102c108     	adds	x8, x8, #0xb0
    15d0: 54004b44     	b.mi	0x1f38 <gpio_keys_probe+0xdfc>
    15d4: eb08029f     	cmp	x20, x8
    15d8: 54004b03     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    15dc: 90000008     	adrp	x8, 0x1000 <gpio_keys_irq_isr+0x18>
		00000000000015dc:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_gpio_work_func
    15e0: 91000108     	add	x8, x8, #0x0
		00000000000015e0:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_gpio_work_func
    15e4: 9101c2a0     	add	x0, x21, #0x70
    15e8: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x18>
		00000000000015e8:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    15ec: 91000021     	add	x1, x1, #0x0
		00000000000015ec:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    15f0: 52a00402     	mov	w2, #0x200000           // =2097152
    15f4: aa1f03e3     	mov	x3, xzr
    15f8: aa1f03e4     	mov	x4, xzr
    15fc: f90036a8     	str	x8, [x21, #0x68]
    1600: 94000000     	bl	0x1600 <gpio_keys_probe+0x4c4>
		0000000000001600:  R_AARCH64_CALL26	init_timer_key
    1604: eb130288     	subs	x8, x20, x19
    1608: 54004983     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    160c: f100111f     	cmp	x8, #0x4
    1610: 54004943     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1614: f85e83a8     	ldur	x8, [x29, #-0x18]
    1618: b9403bf3     	ldr	w19, [sp, #0x38]
    161c: 91042109     	add	x9, x8, #0x108
    1620: eb090288     	subs	x8, x20, x9
    1624: b7f848a9     	tbnz	x9, #0x3f, 0x1f38 <gpio_keys_probe+0xdfc>
    1628: 54004883     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    162c: f100111f     	cmp	x8, #0x4
    1630: 54004843     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1634: 29578ea2     	ldp	w2, w3, [x21, #0xbc]
    1638: b9403324     	ldr	w4, [x25, #0x30]
    163c: 90000000     	adrp	x0, 0x1000 <gpio_keys_irq_isr+0x18>
		000000000000163c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x682
    1640: 91000000     	add	x0, x0, #0x0
		0000000000001640:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x682
    1644: 2a1a03e1     	mov	w1, w26
    1648: 2a1303e5     	mov	w5, w19
    164c: 94000000     	bl	0x164c <gpio_keys_probe+0x510>
		000000000000164c:  R_AARCH64_CALL26	_printk
    1650: b9402328     	ldr	w8, [x25, #0x20]
    1654: 7100091f     	cmp	w8, #0x2
    1658: 540001e0     	b.eq	0x1694 <gpio_keys_probe+0x558>
    165c: f94023fa     	ldr	x26, [sp, #0x40]
    1660: 7100051f     	cmp	w8, #0x1
    1664: 54000301     	b.ne	0x16c4 <gpio_keys_probe+0x588>
    1668: f85e83a8     	ldur	x8, [x29, #-0x18]
    166c: 91052109     	add	x9, x8, #0x148
    1670: eb090288     	subs	x8, x20, x9
    1674: b7f84629     	tbnz	x9, #0x3f, 0x1f38 <gpio_keys_probe+0xdfc>
    1678: 54004603     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    167c: f100111f     	cmp	x8, #0x4
    1680: 540045c3     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1684: 7100027f     	cmp	w19, #0x0
    1688: 52800028     	mov	w8, #0x1                // =1
    168c: 1a880508     	cinc	w8, w8, ne
    1690: 1400000c     	b	0x16c0 <gpio_keys_probe+0x584>
    1694: f85e83a8     	ldur	x8, [x29, #-0x18]
    1698: f94023fa     	ldr	x26, [sp, #0x40]
    169c: 91052109     	add	x9, x8, #0x148
    16a0: eb090288     	subs	x8, x20, x9
    16a4: b7f844a9     	tbnz	x9, #0x3f, 0x1f38 <gpio_keys_probe+0xdfc>
    16a8: 54004483     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    16ac: f100111f     	cmp	x8, #0x4
    16b0: 54004443     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    16b4: 7100027f     	cmp	w19, #0x0
    16b8: 52800028     	mov	w8, #0x1                // =1
    16bc: 1a881508     	cinc	w8, w8, eq
    16c0: b90102a8     	str	w8, [x21, #0x100]
    16c4: 90000008     	adrp	x8, 0x1000 <gpio_keys_irq_isr+0x18>
		00000000000016c4:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_gpio_isr
    16c8: 91000108     	add	x8, x8, #0x0
		00000000000016c8:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_gpio_isr
    16cc: 52800073     	mov	w19, #0x3               // =3
    16d0: 14000025     	b	0x1764 <gpio_keys_probe+0x628>
    16d4: f85e03a9     	ldur	x9, [x29, #-0x20]
    16d8: eb080128     	subs	x8, x9, x8
    16dc: 540042e3     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    16e0: f100211f     	cmp	x8, #0x8
    16e4: 540042a3     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    16e8: f9000abf     	str	xzr, [x21, #0x10]
    16ec: b9403328     	ldr	w8, [x25, #0x30]
    16f0: 340037a8     	cbz	w8, 0x1de4 <gpio_keys_probe+0xca8>
    16f4: a97e27b4     	ldp	x20, x9, [x29, #-0x20]
    16f8: 9104112a     	add	x10, x9, #0x104
    16fc: eb0a0289     	subs	x9, x20, x10
    1700: b7f841ca     	tbnz	x10, #0x3f, 0x1f38 <gpio_keys_probe+0xdfc>
    1704: 540041a3     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1708: f100113f     	cmp	x9, #0x4
    170c: 54004163     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1710: b900bea8     	str	w8, [x21, #0xbc]
    1714: b9401b28     	ldr	w8, [x25, #0x18]
    1718: 7100091f     	cmp	w8, #0x2
    171c: 540036a2     	b.hs	0x1df0 <gpio_keys_probe+0xcb4>
    1720: f85e83a8     	ldur	x8, [x29, #-0x18]
    1724: b1024108     	adds	x8, x8, #0x90
    1728: 54004084     	b.mi	0x1f38 <gpio_keys_probe+0xdfc>
    172c: eb08029f     	cmp	x20, x8
    1730: 54004043     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1734: b9402728     	ldr	w8, [x25, #0x24]
    1738: 910082a0     	add	x0, x21, #0x20
    173c: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x18>
		000000000000173c:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_irq_timer
    1740: 91000021     	add	x1, x1, #0x0
		0000000000001740:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_irq_timer
    1744: 2a1f03e2     	mov	w2, wzr
    1748: aa1f03e3     	mov	x3, xzr
    174c: aa1f03e4     	mov	x4, xzr
    1750: b9004aa8     	str	w8, [x21, #0x48]
    1754: 94000000     	bl	0x1754 <gpio_keys_probe+0x618>
		0000000000001754:  R_AARCH64_CALL26	init_timer_key
    1758: aa1f03f3     	mov	x19, xzr
    175c: 90000008     	adrp	x8, 0x1000 <gpio_keys_irq_isr+0x18>
		000000000000175c:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_irq_isr
    1760: 91000108     	add	x8, x8, #0x0
		0000000000001760:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_irq_isr
    1764: f9001fe8     	str	x8, [sp, #0x38]
    1768: f85e83a8     	ldur	x8, [x29, #-0x18]
    176c: b1018108     	adds	x8, x8, #0x60
    1770: 54003e44     	b.mi	0x1f38 <gpio_keys_probe+0xdfc>
    1774: eb08029f     	cmp	x20, x8
    1778: 54003e03     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    177c: f9400be8     	ldr	x8, [sp, #0x10]
    1780: f85d83aa     	ldur	x10, [x29, #-0x28]
    1784: f85c83a0     	ldur	x0, [x29, #-0x38]
    1788: f9402108     	ldr	x8, [x8, #0x40]
    178c: 8b0a0509     	add	x9, x8, x10, lsl #1
    1790: f9000ea9     	str	x9, [x21, #0x18]
    1794: b9400329     	ldr	w9, [x25]
    1798: 782a7909     	strh	w9, [x8, x10, lsl #1]
    179c: b9401b28     	ldr	w8, [x25, #0x18]
    17a0: f9400ea9     	ldr	x9, [x21, #0x18]
    17a4: 7100051f     	cmp	w8, #0x1
    17a8: 79400122     	ldrh	w2, [x9]
    17ac: 1a9f8501     	csinc	w1, w8, wzr, hi
    17b0: 94000000     	bl	0x17b0 <gpio_keys_probe+0x674>
		00000000000017b0:  R_AARCH64_CALL26	input_set_capability
    17b4: aa1703e0     	mov	x0, x23
    17b8: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x18>
		00000000000017b8:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_quiesce_key
    17bc: 91000021     	add	x1, x1, #0x0
		00000000000017bc:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_quiesce_key
    17c0: aa1503e2     	mov	x2, x21
    17c4: 90000003     	adrp	x3, 0x1000 <gpio_keys_irq_isr+0x18>
		00000000000017c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44d
    17c8: 91000063     	add	x3, x3, #0x0
		00000000000017c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44d
    17cc: 94000000     	bl	0x17cc <gpio_keys_probe+0x690>
		00000000000017cc:  R_AARCH64_CALL26	__devm_add_action
    17d0: 35002d60     	cbnz	w0, 0x1d7c <gpio_keys_probe+0xc40>
    17d4: 3940a328     	ldrb	w8, [x25, #0x28]
    17d8: b2790269     	orr	x9, x19, #0x80
    17dc: 7100011f     	cmp	w8, #0x0
    17e0: a97e2fa8     	ldp	x8, x11, [x29, #-0x20]
    17e4: 9a891263     	csel	x3, x19, x9, ne
    17e8: 9104116a     	add	x10, x11, #0x104
    17ec: eb0a0108     	subs	x8, x8, x10
    17f0: b7f83a4a     	tbnz	x10, #0x3f, 0x1f38 <gpio_keys_probe+0xdfc>
    17f4: 54003a23     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    17f8: f100111f     	cmp	x8, #0x4
    17fc: 540039e3     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1800: b940bea1     	ldr	w1, [x21, #0xbc]
    1804: f9401fe2     	ldr	x2, [sp, #0x38]
    1808: aa1703e0     	mov	x0, x23
    180c: f85d03a4     	ldur	x4, [x29, #-0x30]
    1810: aa1503e5     	mov	x5, x21
    1814: f9000fe3     	str	x3, [sp, #0x18]
    1818: 94000000     	bl	0x1818 <gpio_keys_probe+0x6dc>
		0000000000001818:  R_AARCH64_CALL26	devm_request_any_context_irq
    181c: 37f82be0     	tbnz	w0, #0x1f, 0x1d98 <gpio_keys_probe+0xc5c>
    1820: f9417f54     	ldr	x20, [x26, #0x2f8]
    1824: aa1f03e1     	mov	x1, xzr
    1828: aa1403e0     	mov	x0, x20
    182c: 94000000     	bl	0x182c <gpio_keys_probe+0x6f0>
		000000000000182c:  R_AARCH64_CALL26	of_get_next_child
    1830: b40003a0     	cbz	x0, 0x18a4 <gpio_keys_probe+0x768>
    1834: a97e2faa     	ldp	x10, x11, [x29, #-0x20]
    1838: aa0003f3     	mov	x19, x0
    183c: 91043168     	add	x8, x11, #0x10c
    1840: eb080149     	subs	x9, x10, x8
    1844: fa442920     	ccmp	x9, #0x4, #0x0, hs
    1848: 91044169     	add	x9, x11, #0x110
    184c: fa402908     	ccmp	x8, #0x0, #0x8, hs
    1850: 1a9fa7fa     	cset	w26, lt
    1854: f100013f     	cmp	x9, #0x0
    1858: fa49a140     	ccmp	x10, x9, #0x0, ge
    185c: 1a9f27f7     	cset	w23, lo
    1860: aa1303e0     	mov	x0, x19
    1864: aa1c03e1     	mov	x1, x28
    1868: 2a1f03e2     	mov	w2, wzr
    186c: 94000000     	bl	0x186c <gpio_keys_probe+0x730>
		000000000000186c:  R_AARCH64_CALL26	of_get_named_gpio
    1870: 3700365a     	tbnz	w26, #0x0, 0x1f38 <gpio_keys_probe+0xdfc>
    1874: b900c6a0     	str	w0, [x21, #0xc4]
    1878: aa1303e0     	mov	x0, x19
    187c: aa1603e1     	mov	x1, x22
    1880: 2a1f03e2     	mov	w2, wzr
    1884: 94000000     	bl	0x1884 <gpio_keys_probe+0x748>
		0000000000001884:  R_AARCH64_CALL26	of_get_named_gpio
    1888: 37003597     	tbnz	w23, #0x0, 0x1f38 <gpio_keys_probe+0xdfc>
    188c: b900caa0     	str	w0, [x21, #0xc8]
    1890: aa1403e0     	mov	x0, x20
    1894: aa1303e1     	mov	x1, x19
    1898: 94000000     	bl	0x1898 <gpio_keys_probe+0x75c>
		0000000000001898:  R_AARCH64_CALL26	of_get_next_child
    189c: aa0003f3     	mov	x19, x0
    18a0: b5fffe00     	cbnz	x0, 0x1860 <gpio_keys_probe+0x724>
    18a4: a97e23b4     	ldp	x20, x8, [x29, #-0x20]
    18a8: b1044113     	adds	x19, x8, #0x110
    18ac: 54003464     	b.mi	0x1f38 <gpio_keys_probe+0xdfc>
    18b0: eb13029f     	cmp	x20, x19
    18b4: 54003423     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    18b8: b940caa0     	ldr	w0, [x21, #0xc8]
    18bc: 34000160     	cbz	w0, 0x18e8 <gpio_keys_probe+0x7ac>
    18c0: 94000000     	bl	0x18c0 <gpio_keys_probe+0x784>
		00000000000018c0:  R_AARCH64_CALL26	gpio_to_desc
    18c4: 94000000     	bl	0x18c4 <gpio_keys_probe+0x788>
		00000000000018c4:  R_AARCH64_CALL26	gpiod_to_irq
    18c8: f85e83a8     	ldur	x8, [x29, #-0x18]
    18cc: 91042109     	add	x9, x8, #0x108
    18d0: eb090288     	subs	x8, x20, x9
    18d4: b7f83329     	tbnz	x9, #0x3f, 0x1f38 <gpio_keys_probe+0xdfc>
    18d8: 54003303     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    18dc: f100111f     	cmp	x8, #0x4
    18e0: 540032c3     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    18e4: b900c2a0     	str	w0, [x21, #0xc0]
    18e8: 910342a0     	add	x0, x21, #0xd0
    18ec: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x18>
		00000000000018ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x475
    18f0: 91000021     	add	x1, x1, #0x0
		00000000000018f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x475
    18f4: 90000002     	adrp	x2, 0x1000 <gpio_keys_irq_isr+0x18>
		00000000000018f4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
    18f8: 91000042     	add	x2, x2, #0x0
		00000000000018f8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x10
    18fc: 94000000     	bl	0x18fc <gpio_keys_probe+0x7c0>
		00000000000018fc:  R_AARCH64_CALL26	__mutex_init
    1900: f85e83a8     	ldur	x8, [x29, #-0x18]
    1904: 91043109     	add	x9, x8, #0x10c
    1908: eb090288     	subs	x8, x20, x9
    190c: b7f83169     	tbnz	x9, #0x3f, 0x1f38 <gpio_keys_probe+0xdfc>
    1910: 54003143     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1914: f100111f     	cmp	x8, #0x4
    1918: 54003103     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    191c: f94007f7     	ldr	x23, [sp, #0x8]
    1920: f94023fa     	ldr	x26, [sp, #0x40]
    1924: eb13029f     	cmp	x20, x19
    1928: 54003083     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    192c: 29588ea2     	ldp	w2, w3, [x21, #0xc4]
    1930: 90000000     	adrp	x0, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001930:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c9
    1934: 91000000     	add	x0, x0, #0x0
		0000000000001934:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c9
    1938: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001938:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13b
    193c: 91000021     	add	x1, x1, #0x0
		000000000000193c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13b
    1940: 94000000     	bl	0x1940 <gpio_keys_probe+0x804>
		0000000000001940:  R_AARCH64_CALL26	_printk
    1944: f85e83a8     	ldur	x8, [x29, #-0x18]
    1948: 91042109     	add	x9, x8, #0x108
    194c: eb090288     	subs	x8, x20, x9
    1950: b7f82f49     	tbnz	x9, #0x3f, 0x1f38 <gpio_keys_probe+0xdfc>
    1954: 54002f23     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1958: f100111f     	cmp	x8, #0x4
    195c: 54002ee3     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1960: b940c2a1     	ldr	w1, [x21, #0xc0]
    1964: 34000101     	cbz	w1, 0x1984 <gpio_keys_probe+0x848>
    1968: f9401fe2     	ldr	x2, [sp, #0x38]
    196c: f9400fe3     	ldr	x3, [sp, #0x18]
    1970: aa1703e0     	mov	x0, x23
    1974: f85d03a4     	ldur	x4, [x29, #-0x30]
    1978: aa1503e5     	mov	x5, x21
    197c: 94000000     	bl	0x197c <gpio_keys_probe+0x840>
		000000000000197c:  R_AARCH64_CALL26	devm_request_any_context_irq
    1980: 37f80200     	tbnz	w0, #0x1f, 0x19c0 <gpio_keys_probe+0x884>
    1984: b9401f28     	ldr	w8, [x25, #0x1c]
    1988: b9800b09     	ldrsw	x9, [x24, #0x8]
    198c: b9402ff5     	ldr	w21, [sp, #0x2c]
    1990: f9401be1     	ldr	x1, [sp, #0x30]
    1994: 7100011f     	cmp	w8, #0x0
    1998: f85d83a8     	ldur	x8, [x29, #-0x28]
    199c: 1a9f06b5     	csinc	w21, w21, wzr, eq
    19a0: 91000508     	add	x8, x8, #0x1
    19a4: eb09011f     	cmp	x8, x9
    19a8: f81d83a8     	stur	x8, [x29, #-0x28]
    19ac: 54ffc90b     	b.lt	0x12cc <gpio_keys_probe+0x190>
    19b0: 140000b4     	b	0x1c80 <gpio_keys_probe+0xb44>
    19b4: 52800028     	mov	w8, #0x1                // =1
    19b8: b9003be8     	str	w8, [sp, #0x38]
    19bc: 17fffecb     	b	0x14e8 <gpio_keys_probe+0x3ac>
    19c0: 90000000     	adrp	x0, 0x1000 <gpio_keys_irq_isr+0x18>
		00000000000019c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a
    19c4: 91000000     	add	x0, x0, #0x0
		00000000000019c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a
    19c8: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x18>
		00000000000019c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x657
    19cc: 91000021     	add	x1, x1, #0x0
		00000000000019cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x657
    19d0: 94000000     	bl	0x19d0 <gpio_keys_probe+0x894>
		00000000000019d0:  R_AARCH64_CALL26	_printk
    19d4: 17ffffec     	b	0x1984 <gpio_keys_probe+0x848>
    19d8: aa1703e0     	mov	x0, x23
    19dc: 94000000     	bl	0x19dc <gpio_keys_probe+0x8a0>
		00000000000019dc:  R_AARCH64_CALL26	device_get_child_node_count
    19e0: 34001a20     	cbz	w0, 0x1d24 <gpio_keys_probe+0xbe8>
    19e4: 52800708     	mov	w8, #0x38               // =56
    19e8: 2a0003f3     	mov	w19, w0
    19ec: 5281b802     	mov	w2, #0xdc0              // =3520
    19f0: 9b287c16     	smull	x22, w0, w8
    19f4: aa1703e0     	mov	x0, x23
    19f8: 9100c2d5     	add	x21, x22, #0x30
    19fc: aa1503e1     	mov	x1, x21
    1a00: 94000000     	bl	0x1a00 <gpio_keys_probe+0x8c4>
		0000000000001a00:  R_AARCH64_CALL26	devm_kmalloc
    1a04: b4001960     	cbz	x0, 0x1d30 <gpio_keys_probe+0xbf4>
    1a08: f90023fa     	str	x26, [sp, #0x40]
    1a0c: b4002975     	cbz	x21, 0x1f38 <gpio_keys_probe+0xdfc>
    1a10: 9100c008     	add	x8, x0, #0x30
    1a14: aa0003f8     	mov	x24, x0
    1a18: b9000813     	str	w19, [x0, #0x8]
    1a1c: f9000008     	str	x8, [x0]
    1a20: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001a20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x613
    1a24: 91000021     	add	x1, x1, #0x0
		0000000000001a24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x613
    1a28: aa1703e0     	mov	x0, x23
    1a2c: 94000000     	bl	0x1a2c <gpio_keys_probe+0x8f0>
		0000000000001a2c:  R_AARCH64_CALL26	device_property_present
    1a30: f10042bf     	cmp	x21, #0x10
    1a34: 54002823     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1a38: 39404308     	ldrb	w8, [x24, #0x10]
    1a3c: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001a3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x538
    1a40: 91000021     	add	x1, x1, #0x0
		0000000000001a40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x538
    1a44: 9100a302     	add	x2, x24, #0x28
    1a48: 33000008     	bfxil	w8, w0, #0, #1
    1a4c: aa1703e0     	mov	x0, x23
    1a50: 39004308     	strb	w8, [x24, #0x10]
    1a54: 94000000     	bl	0x1a54 <gpio_keys_probe+0x918>
		0000000000001a54:  R_AARCH64_CALL26	device_property_read_string
    1a58: aa1703e0     	mov	x0, x23
    1a5c: aa1f03e1     	mov	x1, xzr
    1a60: aa1703f9     	mov	x25, x23
    1a64: 94000000     	bl	0x1a64 <gpio_keys_probe+0x928>
		0000000000001a64:  R_AARCH64_CALL26	device_get_next_child_node
    1a68: b4001520     	cbz	x0, 0x1d0c <gpio_keys_probe+0xbd0>
    1a6c: 52800608     	mov	w8, #0x30               // =48
    1a70: aa0003f4     	mov	x20, x0
    1a74: 9000001a     	adrp	x26, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x272
    1a78: 9100035a     	add	x26, x26, #0x0
		0000000000001a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x272
    1a7c: 9000001b     	adrp	x27, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001a7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25e
    1a80: 9100037b     	add	x27, x27, #0x0
		0000000000001a80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25e
    1a84: cb160108     	sub	x8, x8, x22
    1a88: 9000001c     	adrp	x28, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001a88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    1a8c: 9100039c     	add	x28, x28, #0x0
		0000000000001a8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    1a90: 52800c17     	mov	w23, #0x60              // =96
    1a94: 90000016     	adrp	x22, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001a94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12
    1a98: 910002d6     	add	x22, x22, #0x0
		0000000000001a98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12
    1a9c: f81e83a8     	stur	x8, [x29, #-0x18]
    1aa0: 14000007     	b	0x1abc <gpio_keys_probe+0x980>
    1aa4: aa1903e0     	mov	x0, x25
    1aa8: aa1403e1     	mov	x1, x20
    1aac: 94000000     	bl	0x1aac <gpio_keys_probe+0x970>
		0000000000001aac:  R_AARCH64_CALL26	device_get_next_child_node
    1ab0: aa0003f4     	mov	x20, x0
    1ab4: 9100e2f7     	add	x23, x23, #0x38
    1ab8: b40012a0     	cbz	x0, 0x1d0c <gpio_keys_probe+0xbd0>
    1abc: b140069f     	cmn	x20, #0x1, lsl #12      // =0x1000
    1ac0: 540002c8     	b.hi	0x1b18 <gpio_keys_probe+0x9dc>
    1ac4: f9400688     	ldr	x8, [x20, #0x8]
    1ac8: 90000009     	adrp	x9, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001ac8:  R_AARCH64_ADR_PREL_PG_HI21	of_fwnode_ops
    1acc: 91000129     	add	x9, x9, #0x0
		0000000000001acc:  R_AARCH64_ADD_ABS_LO12_NC	of_fwnode_ops
    1ad0: eb09011f     	cmp	x8, x9
    1ad4: 54000221     	b.ne	0x1b18 <gpio_keys_probe+0x9dc>
    1ad8: d1006280     	sub	x0, x20, #0x18
    1adc: 2a1f03e1     	mov	w1, wzr
    1ae0: 94000000     	bl	0x1ae0 <gpio_keys_probe+0x9a4>
		0000000000001ae0:  R_AARCH64_CALL26	irq_of_parse_and_map
    1ae4: b7f822b7     	tbnz	x23, #0x3f, 0x1f38 <gpio_keys_probe+0xdfc>
    1ae8: f85e83a8     	ldur	x8, [x29, #-0x18]
    1aec: 8b170108     	add	x8, x8, x23
    1af0: f101811f     	cmp	x8, #0x60
    1af4: 54002220     	b.eq	0x1f38 <gpio_keys_probe+0xdfc>
    1af8: eb1702bf     	cmp	x21, x23
    1afc: 540021e3     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1b00: b7f821d7     	tbnz	x23, #0x3f, 0x1f38 <gpio_keys_probe+0xdfc>
    1b04: eb1702bf     	cmp	x21, x23
    1b08: 54002183     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1b0c: f101811f     	cmp	x8, #0x60
    1b10: 54002140     	b.eq	0x1f38 <gpio_keys_probe+0xdfc>
    1b14: b8376b00     	str	w0, [x24, x23]
    1b18: 8b170308     	add	x8, x24, x23
    1b1c: aa1403e0     	mov	x0, x20
    1b20: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001b20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x64c
    1b24: 91000021     	add	x1, x1, #0x0
		0000000000001b24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x64c
    1b28: d100c102     	sub	x2, x8, #0x30
    1b2c: 52800023     	mov	w3, #0x1                // =1
    1b30: 94000000     	bl	0x1b30 <gpio_keys_probe+0x9f4>
		0000000000001b30:  R_AARCH64_CALL26	fwnode_property_read_u32_array
    1b34: 350016a0     	cbnz	w0, 0x1e08 <gpio_keys_probe+0xccc>
    1b38: 8b170313     	add	x19, x24, x23
    1b3c: aa1403e0     	mov	x0, x20
    1b40: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001b40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x538
    1b44: 91000021     	add	x1, x1, #0x0
		0000000000001b44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x538
    1b48: d1008262     	sub	x2, x19, #0x20
    1b4c: 94000000     	bl	0x1b4c <gpio_keys_probe+0xa10>
		0000000000001b4c:  R_AARCH64_CALL26	fwnode_property_read_string
    1b50: d1006273     	sub	x19, x19, #0x18
    1b54: aa1403e0     	mov	x0, x20
    1b58: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001b58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57a
    1b5c: 91000021     	add	x1, x1, #0x0
		0000000000001b5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57a
    1b60: aa1303e2     	mov	x2, x19
    1b64: 52800023     	mov	w3, #0x1                // =1
    1b68: 94000000     	bl	0x1b68 <gpio_keys_probe+0xa2c>
		0000000000001b68:  R_AARCH64_CALL26	fwnode_property_read_u32_array
    1b6c: 34000160     	cbz	w0, 0x1b98 <gpio_keys_probe+0xa5c>
    1b70: f10062e8     	subs	x8, x23, #0x18
    1b74: 54001e24     	b.mi	0x1f38 <gpio_keys_probe+0xdfc>
    1b78: eb0802bf     	cmp	x21, x8
    1b7c: 54001de9     	b.ls	0x1f38 <gpio_keys_probe+0xdfc>
    1b80: d10062e8     	sub	x8, x23, #0x18
    1b84: b7f81da8     	tbnz	x8, #0x3f, 0x1f38 <gpio_keys_probe+0xdfc>
    1b88: eb0802bf     	cmp	x21, x8
    1b8c: 54001d69     	b.ls	0x1f38 <gpio_keys_probe+0xdfc>
    1b90: 52800028     	mov	w8, #0x1                // =1
    1b94: b9000268     	str	w8, [x19]
    1b98: aa1403e0     	mov	x0, x20
    1b9c: aa1a03e1     	mov	x1, x26
    1ba0: 94000000     	bl	0x1ba0 <gpio_keys_probe+0xa64>
		0000000000001ba0:  R_AARCH64_CALL26	fwnode_property_present
    1ba4: 36000060     	tbz	w0, #0x0, 0x1bb0 <gpio_keys_probe+0xa74>
    1ba8: 52800020     	mov	w0, #0x1                // =1
    1bac: 14000005     	b	0x1bc0 <gpio_keys_probe+0xa84>
    1bb0: aa1403e0     	mov	x0, x20
    1bb4: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001bb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24e
    1bb8: 91000021     	add	x1, x1, #0x0
		0000000000001bb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24e
    1bbc: 94000000     	bl	0x1bbc <gpio_keys_probe+0xa80>
		0000000000001bbc:  R_AARCH64_CALL26	fwnode_property_present
    1bc0: f10052e8     	subs	x8, x23, #0x14
    1bc4: 54001ba4     	b.mi	0x1f38 <gpio_keys_probe+0xdfc>
    1bc8: eb0802bf     	cmp	x21, x8
    1bcc: 54001b63     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1bd0: f10052e8     	subs	x8, x23, #0x14
    1bd4: 54001b24     	b.mi	0x1f38 <gpio_keys_probe+0xdfc>
    1bd8: eb0802bf     	cmp	x21, x8
    1bdc: 54001ae3     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1be0: 8b170309     	add	x9, x24, x23
    1be4: 12000008     	and	w8, w0, #0x1
    1be8: aa1403e0     	mov	x0, x20
    1bec: d1004122     	sub	x2, x9, #0x10
    1bf0: aa1b03e1     	mov	x1, x27
    1bf4: 52800023     	mov	w3, #0x1                // =1
    1bf8: b81ec128     	stur	w8, [x9, #-0x14]
    1bfc: 94000000     	bl	0x1bfc <gpio_keys_probe+0xac0>
		0000000000001bfc:  R_AARCH64_CALL26	fwnode_property_read_u32_array
    1c00: aa1403e0     	mov	x0, x20
    1c04: aa1c03e1     	mov	x1, x28
    1c08: 94000000     	bl	0x1c08 <gpio_keys_probe+0xacc>
		0000000000001c08:  R_AARCH64_CALL26	fwnode_property_present
    1c0c: f10022e8     	subs	x8, x23, #0x8
    1c10: 54001944     	b.mi	0x1f38 <gpio_keys_probe+0xdfc>
    1c14: eb0802bf     	cmp	x21, x8
    1c18: 54001909     	b.ls	0x1f38 <gpio_keys_probe+0xdfc>
    1c1c: f10022e8     	subs	x8, x23, #0x8
    1c20: 540018c4     	b.mi	0x1f38 <gpio_keys_probe+0xdfc>
    1c24: eb0802bf     	cmp	x21, x8
    1c28: 54001889     	b.ls	0x1f38 <gpio_keys_probe+0xdfc>
    1c2c: 8b170308     	add	x8, x24, x23
    1c30: 12000009     	and	w9, w0, #0x1
    1c34: aa1403e0     	mov	x0, x20
    1c38: d1003113     	sub	x19, x8, #0xc
    1c3c: aa1603e1     	mov	x1, x22
    1c40: 52800023     	mov	w3, #0x1                // =1
    1c44: aa1303e2     	mov	x2, x19
    1c48: 381f8109     	sturb	w9, [x8, #-0x8]
    1c4c: 94000000     	bl	0x1c4c <gpio_keys_probe+0xb10>
		0000000000001c4c:  R_AARCH64_CALL26	fwnode_property_read_u32_array
    1c50: 34fff2a0     	cbz	w0, 0x1aa4 <gpio_keys_probe+0x968>
    1c54: d10032e8     	sub	x8, x23, #0xc
    1c58: eb0802bf     	cmp	x21, x8
    1c5c: 540016e3     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1c60: b7f816c8     	tbnz	x8, #0x3f, 0x1f38 <gpio_keys_probe+0xdfc>
    1c64: eb0802bf     	cmp	x21, x8
    1c68: 54001683     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1c6c: 528000a8     	mov	w8, #0x5                // =5
    1c70: b9000268     	str	w8, [x19]
    1c74: 17ffff8c     	b	0x1aa4 <gpio_keys_probe+0x968>
    1c78: 12800174     	mov	w20, #-0xc              // =-12
    1c7c: 140000a0     	b	0x1efc <gpio_keys_probe+0xdc0>
    1c80: b40001e1     	cbz	x1, 0x1cbc <gpio_keys_probe+0xb80>
    1c84: b140043f     	cmn	x1, #0x1, lsl #12       // =0x1000
    1c88: 540001a8     	b.hi	0x1cbc <gpio_keys_probe+0xb80>
    1c8c: f9400428     	ldr	x8, [x1, #0x8]
    1c90: b4000168     	cbz	x8, 0x1cbc <gpio_keys_probe+0xb80>
    1c94: f9400508     	ldr	x8, [x8, #0x8]
    1c98: b4000128     	cbz	x8, 0x1cbc <gpio_keys_probe+0xb80>
    1c9c: aa0103e0     	mov	x0, x1
    1ca0: b85fc110     	ldur	w16, [x8, #-0x4]
    1ca4: 729f8df1     	movk	w17, #0xfc6f
    1ca8: 72bb34f1     	movk	w17, #0xd9a7, lsl #16
    1cac: 6b11021f     	cmp	w16, w17
    1cb0: 54000040     	b.eq	0x1cb8 <gpio_keys_probe+0xb7c>
    1cb4: d4304500     	brk	#0x8228
    1cb8: d63f0100     	blr	x8
    1cbc: f85c83a0     	ldur	x0, [x29, #-0x38]
    1cc0: 94000000     	bl	0x1cc0 <gpio_keys_probe+0xb84>
		0000000000001cc0:  R_AARCH64_CALL26	input_register_device
    1cc4: 350004e0     	cbnz	w0, 0x1d60 <gpio_keys_probe+0xc24>
    1cc8: 34000155     	cbz	w21, 0x1cf0 <gpio_keys_probe+0xbb4>
    1ccc: aa1703e0     	mov	x0, x23
    1cd0: 52800021     	mov	w1, #0x1                // =1
    1cd4: 94000000     	bl	0x1cd4 <gpio_keys_probe+0xb98>
		0000000000001cd4:  R_AARCH64_CALL26	device_set_wakeup_capable
    1cd8: aa1703e0     	mov	x0, x23
    1cdc: 94000000     	bl	0x1cdc <gpio_keys_probe+0xba0>
		0000000000001cdc:  R_AARCH64_CALL26	device_wakeup_enable
    1ce0: 14000009     	b	0x1d04 <gpio_keys_probe+0xbc8>
    1ce4: aa1503e0     	mov	x0, x21
    1ce8: 94000000     	bl	0x1ce8 <gpio_keys_probe+0xbac>
		0000000000001ce8:  R_AARCH64_CALL26	input_register_device
    1cec: 350003a0     	cbnz	w0, 0x1d60 <gpio_keys_probe+0xc24>
    1cf0: aa1703e0     	mov	x0, x23
    1cf4: 94000000     	bl	0x1cf4 <gpio_keys_probe+0xbb8>
		0000000000001cf4:  R_AARCH64_CALL26	device_wakeup_disable
    1cf8: aa1703e0     	mov	x0, x23
    1cfc: 2a1f03e1     	mov	w1, wzr
    1d00: 94000000     	bl	0x1d00 <gpio_keys_probe+0xbc4>
		0000000000001d00:  R_AARCH64_CALL26	device_set_wakeup_capable
    1d04: 2a1f03f4     	mov	w20, wzr
    1d08: 1400007d     	b	0x1efc <gpio_keys_probe+0xdc0>
    1d0c: f94023fa     	ldr	x26, [sp, #0x40]
    1d10: b13fff1f     	cmn	x24, #0xfff
    1d14: aa1903f7     	mov	x23, x25
    1d18: 54ffa323     	b.lo	0x117c <gpio_keys_probe+0x40>
    1d1c: 2a1803f4     	mov	w20, w24
    1d20: 14000077     	b	0x1efc <gpio_keys_probe+0xdc0>
    1d24: 92800258     	mov	x24, #-0x13             // =-19
    1d28: 2a1803f4     	mov	w20, w24
    1d2c: 14000074     	b	0x1efc <gpio_keys_probe+0xdc0>
    1d30: 92800178     	mov	x24, #-0xc              // =-12
    1d34: 2a1803f4     	mov	w20, w24
    1d38: 14000071     	b	0x1efc <gpio_keys_probe+0xdc0>
    1d3c: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001d3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x208
    1d40: 91000021     	add	x1, x1, #0x0
		0000000000001d40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x208
    1d44: 14000003     	b	0x1d50 <gpio_keys_probe+0xc14>
    1d48: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001d48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb7
    1d4c: 91000021     	add	x1, x1, #0x0
		0000000000001d4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb7
    1d50: aa1703e0     	mov	x0, x23
    1d54: 94000000     	bl	0x1d54 <gpio_keys_probe+0xc18>
		0000000000001d54:  R_AARCH64_CALL26	_dev_err
    1d58: 12800174     	mov	w20, #-0xc              // =-12
    1d5c: 14000068     	b	0x1efc <gpio_keys_probe+0xdc0>
    1d60: 2a0003f4     	mov	w20, w0
    1d64: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001d64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x222
    1d68: 91000021     	add	x1, x1, #0x0
		0000000000001d68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x222
    1d6c: aa1703e0     	mov	x0, x23
    1d70: 2a1403e2     	mov	w2, w20
    1d74: 94000000     	bl	0x1d74 <gpio_keys_probe+0xc38>
		0000000000001d74:  R_AARCH64_CALL26	_dev_err
    1d78: 14000061     	b	0x1efc <gpio_keys_probe+0xdc0>
    1d7c: 2a0003f4     	mov	w20, w0
    1d80: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001d80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x61e
    1d84: 91000021     	add	x1, x1, #0x0
		0000000000001d84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x61e
    1d88: aa1703e0     	mov	x0, x23
    1d8c: 2a1403e2     	mov	w2, w20
    1d90: 94000000     	bl	0x1d90 <gpio_keys_probe+0xc54>
		0000000000001d90:  R_AARCH64_CALL26	_dev_err
    1d94: 1400003f     	b	0x1e90 <gpio_keys_probe+0xd54>
    1d98: a97e2ba8     	ldp	x8, x10, [x29, #-0x20]
    1d9c: 91041149     	add	x9, x10, #0x104
    1da0: eb090108     	subs	x8, x8, x9
    1da4: b7f80ca9     	tbnz	x9, #0x3f, 0x1f38 <gpio_keys_probe+0xdfc>
    1da8: 54000c83     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1dac: f100111f     	cmp	x8, #0x4
    1db0: 54000c43     	b.lo	0x1f38 <gpio_keys_probe+0xdfc>
    1db4: b940bea2     	ldr	w2, [x21, #0xbc]
    1db8: 2a0003f4     	mov	w20, w0
    1dbc: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001dbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x280
    1dc0: 91000021     	add	x1, x1, #0x0
		0000000000001dc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x280
    1dc4: 14000030     	b	0x1e84 <gpio_keys_probe+0xd48>
    1dc8: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001dc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e4
    1dcc: 91000021     	add	x1, x1, #0x0
		0000000000001dcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e4
    1dd0: aa1703e0     	mov	x0, x23
    1dd4: f85d83a2     	ldur	x2, [x29, #-0x28]
    1dd8: 94000000     	bl	0x1dd8 <gpio_keys_probe+0xc9c>
		0000000000001dd8:  R_AARCH64_CALL26	_dev_err
    1ddc: 128002b4     	mov	w20, #-0x16             // =-22
    1de0: 14000047     	b	0x1efc <gpio_keys_probe+0xdc0>
    1de4: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001de4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x119
    1de8: 91000021     	add	x1, x1, #0x0
		0000000000001de8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x119
    1dec: 14000003     	b	0x1df8 <gpio_keys_probe+0xcbc>
    1df0: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001df0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14e
    1df4: 91000021     	add	x1, x1, #0x0
		0000000000001df4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14e
    1df8: aa1703e0     	mov	x0, x23
    1dfc: 94000000     	bl	0x1dfc <gpio_keys_probe+0xcc0>
		0000000000001dfc:  R_AARCH64_CALL26	_dev_err
    1e00: 128002b4     	mov	w20, #-0x16             // =-22
    1e04: 14000023     	b	0x1e90 <gpio_keys_probe+0xd54>
    1e08: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001e08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d3
    1e0c: 91000021     	add	x1, x1, #0x0
		0000000000001e0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d3
    1e10: aa1903e0     	mov	x0, x25
    1e14: 94000000     	bl	0x1e14 <gpio_keys_probe+0xcd8>
		0000000000001e14:  R_AARCH64_CALL26	_dev_err
    1e18: b140069f     	cmn	x20, #0x1, lsl #12      // =0x1000
    1e1c: 540001a8     	b.hi	0x1e50 <gpio_keys_probe+0xd14>
    1e20: f9400688     	ldr	x8, [x20, #0x8]
    1e24: b4000168     	cbz	x8, 0x1e50 <gpio_keys_probe+0xd14>
    1e28: f9400508     	ldr	x8, [x8, #0x8]
    1e2c: b4000128     	cbz	x8, 0x1e50 <gpio_keys_probe+0xd14>
    1e30: aa1403e0     	mov	x0, x20
    1e34: b85fc110     	ldur	w16, [x8, #-0x4]
    1e38: 729f8df1     	movk	w17, #0xfc6f
    1e3c: 72bb34f1     	movk	w17, #0xd9a7, lsl #16
    1e40: 6b11021f     	cmp	w16, w17
    1e44: 54000040     	b.eq	0x1e4c <gpio_keys_probe+0xd10>
    1e48: d4304500     	brk	#0x8228
    1e4c: d63f0100     	blr	x8
    1e50: 928002b8     	mov	x24, #-0x16             // =-22
    1e54: 2a1803f4     	mov	w20, w24
    1e58: 14000029     	b	0x1efc <gpio_keys_probe+0xdc0>
    1e5c: 2a0003f4     	mov	w20, w0
    1e60: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001e60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa
    1e64: 91000021     	add	x1, x1, #0x0
		0000000000001e64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa
    1e68: aa1703e0     	mov	x0, x23
    1e6c: 2a1403e3     	mov	w3, w20
    1e70: 94000000     	bl	0x1e70 <gpio_keys_probe+0xd34>
		0000000000001e70:  R_AARCH64_CALL26	_dev_err
    1e74: 1400001d     	b	0x1ee8 <gpio_keys_probe+0xdac>
    1e78: b9400722     	ldr	w2, [x25, #0x4]
    1e7c: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001e7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3eb
    1e80: 91000021     	add	x1, x1, #0x0
		0000000000001e80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3eb
    1e84: aa1703e0     	mov	x0, x23
    1e88: 2a1403e3     	mov	w3, w20
    1e8c: 94000000     	bl	0x1e8c <gpio_keys_probe+0xd50>
		0000000000001e8c:  R_AARCH64_CALL26	_dev_err
    1e90: 90000000     	adrp	x0, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001e90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x512
    1e94: 91000000     	add	x0, x0, #0x0
		0000000000001e94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x512
    1e98: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001e98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x502
    1e9c: 91000021     	add	x1, x1, #0x0
		0000000000001e9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x502
    1ea0: 94000000     	bl	0x1ea0 <gpio_keys_probe+0xd64>
		0000000000001ea0:  R_AARCH64_CALL26	_printk
    1ea4: f9401be0     	ldr	x0, [sp, #0x30]
    1ea8: b40002a0     	cbz	x0, 0x1efc <gpio_keys_probe+0xdc0>
    1eac: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    1eb0: 54000268     	b.hi	0x1efc <gpio_keys_probe+0xdc0>
    1eb4: f9400408     	ldr	x8, [x0, #0x8]
    1eb8: b4000228     	cbz	x8, 0x1efc <gpio_keys_probe+0xdc0>
    1ebc: f9400508     	ldr	x8, [x8, #0x8]
    1ec0: b40001e8     	cbz	x8, 0x1efc <gpio_keys_probe+0xdc0>
    1ec4: b85fc110     	ldur	w16, [x8, #-0x4]
    1ec8: 729f8df1     	movk	w17, #0xfc6f
    1ecc: 72bb34f1     	movk	w17, #0xd9a7, lsl #16
    1ed0: 6b11021f     	cmp	w16, w17
    1ed4: 54000040     	b.eq	0x1edc <gpio_keys_probe+0xda0>
    1ed8: d4304500     	brk	#0x8228
    1edc: d63f0100     	blr	x8
    1ee0: 14000007     	b	0x1efc <gpio_keys_probe+0xdc0>
    1ee4: 128002b4     	mov	w20, #-0x16             // =-22
    1ee8: 90000000     	adrp	x0, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001ee8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x512
    1eec: 91000000     	add	x0, x0, #0x0
		0000000000001eec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x512
    1ef0: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001ef0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x502
    1ef4: 91000021     	add	x1, x1, #0x0
		0000000000001ef4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x502
    1ef8: 94000000     	bl	0x1ef8 <gpio_keys_probe+0xdbc>
		0000000000001ef8:  R_AARCH64_CALL26	_printk
    1efc: d5384108     	mrs	x8, SP_EL0
    1f00: f9438908     	ldr	x8, [x8, #0x710]
    1f04: f85f83a9     	ldur	x9, [x29, #-0x8]
    1f08: eb09011f     	cmp	x8, x9
    1f0c: 540001e1     	b.ne	0x1f48 <gpio_keys_probe+0xe0c>
    1f10: 2a1403e0     	mov	w0, w20
    1f14: a94d4ff4     	ldp	x20, x19, [sp, #0xd0]
    1f18: a94c57f6     	ldp	x22, x21, [sp, #0xc0]
    1f1c: a94b5ff8     	ldp	x24, x23, [sp, #0xb0]
    1f20: a94a67fa     	ldp	x26, x25, [sp, #0xa0]
    1f24: a9496ffc     	ldp	x28, x27, [sp, #0x90]
    1f28: a9487bfd     	ldp	x29, x30, [sp, #0x80]
    1f2c: 910383ff     	add	sp, sp, #0xe0
    1f30: d50323bf     	autiasp
    1f34: d65f03c0     	ret
    1f38: d4200020     	brk	#0x1
    1f3c: f900229f     	str	xzr, [x20, #0x40]
    1f40: 12800174     	mov	w20, #-0xc              // =-12
    1f44: 17ffffee     	b	0x1efc <gpio_keys_probe+0xdc0>
    1f48: 94000000     	bl	0x1f48 <gpio_keys_probe+0xe0c>
		0000000000001f48:  R_AARCH64_CALL26	__stack_chk_fail
