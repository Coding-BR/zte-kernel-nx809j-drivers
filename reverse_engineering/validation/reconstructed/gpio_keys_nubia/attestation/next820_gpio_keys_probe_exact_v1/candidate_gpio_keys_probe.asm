
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001114 <gpio_keys_probe>:
    1114: d503233f     	paciasp
    1118: d10383ff     	sub	sp, sp, #0xe0
    111c: a9087bfd     	stp	x29, x30, [sp, #0x80]
    1120: a9096ffc     	stp	x28, x27, [sp, #0x90]
    1124: a90a67fa     	stp	x26, x25, [sp, #0xa0]
    1128: a90b5ff8     	stp	x24, x23, [sp, #0xb0]
    112c: a90c57f6     	stp	x22, x21, [sp, #0xc0]
    1130: a90d4ff4     	stp	x20, x19, [sp, #0xd0]
    1134: 910203fd     	add	x29, sp, #0x80
    1138: d5384108     	mrs	x8, SP_EL0
    113c: aa0003fa     	mov	x26, x0
    1140: 91004017     	add	x23, x0, #0x10
    1144: f9438908     	ldr	x8, [x8, #0x710]
    1148: f81f83a8     	stur	x8, [x29, #-0x8]
    114c: f9405018     	ldr	x24, [x0, #0xa0]
    1150: b4004318     	cbz	x24, 0x19b0 <gpio_keys_probe+0x89c>
    1154: b9800b08     	ldrsw	x8, [x24, #0x8]
    1158: 52802209     	mov	w9, #0x110              // =272
    115c: aa1703e0     	mov	x0, x23
    1160: 5281b802     	mov	w2, #0xdc0              // =3520
    1164: 9bc97d09     	umulh	x9, x8, x9
    1168: 8b081108     	add	x8, x8, x8, lsl #4
    116c: d37ced08     	lsl	x8, x8, #4
    1170: b1012108     	adds	x8, x8, #0x48
    1174: da9f3108     	csinv	x8, x8, xzr, lo
    1178: eb0903ff     	cmp	xzr, x9
    117c: da9f0113     	csinv	x19, x8, xzr, eq
    1180: aa1303e1     	mov	x1, x19
    1184: 94000000     	bl	0x1184 <gpio_keys_probe+0x70>
		0000000000001184:  R_AARCH64_CALL26	devm_kmalloc
    1188: b4005c60     	cbz	x0, 0x1d14 <gpio_keys_probe+0xc00>
    118c: b9400b08     	ldr	w8, [x24, #0x8]
    1190: aa0003f4     	mov	x20, x0
    1194: 37f86c08     	tbnz	w8, #0x1f, 0x1f14 <gpio_keys_probe+0xe00>
    1198: d37ff901     	lsl	x1, x8, #1
    119c: aa1703e0     	mov	x0, x23
    11a0: 5281b802     	mov	w2, #0xdc0              // =3520
    11a4: 94000000     	bl	0x11a4 <gpio_keys_probe+0x90>
		00000000000011a4:  R_AARCH64_CALL26	devm_kmalloc
    11a8: f9002280     	str	x0, [x20, #0x40]
    11ac: b4005520     	cbz	x0, 0x1c50 <gpio_keys_probe+0xb3c>
    11b0: aa1703e0     	mov	x0, x23
    11b4: 94000000     	bl	0x11b4 <gpio_keys_probe+0xa0>
		00000000000011b4:  R_AARCH64_CALL26	devm_input_allocate_device
    11b8: b4005b40     	cbz	x0, 0x1d20 <gpio_keys_probe+0xc0c>
    11bc: 927df268     	and	x8, x19, #0xfffffffffffffff8
    11c0: f9000298     	str	x24, [x20]
    11c4: f100211f     	cmp	x8, #0x8
    11c8: 54006a40     	b.eq	0x1f10 <gpio_keys_probe+0xdfc>
    11cc: aa0003f5     	mov	x21, x0
    11d0: f9000680     	str	x0, [x20, #0x8]
    11d4: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x40>
		00000000000011d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3be
    11d8: 91000021     	add	x1, x1, #0x0
		00000000000011d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3be
    11dc: 90000002     	adrp	x2, 0x1000 <gpio_keys_irq_isr+0x40>
		00000000000011dc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
    11e0: 91000042     	add	x2, x2, #0x0
		00000000000011e0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x8
    11e4: 91004280     	add	x0, x20, #0x10
    11e8: 94000000     	bl	0x11e8 <gpio_keys_probe+0xd4>
		00000000000011e8:  R_AARCH64_CALL26	__mutex_init
    11ec: f9005754     	str	x20, [x26, #0xa8]
    11f0: f90166b4     	str	x20, [x21, #0x2c8]
    11f4: f9401708     	ldr	x8, [x24, #0x28]
    11f8: b5000048     	cbnz	x8, 0x1200 <gpio_keys_probe+0xec>
    11fc: f9400348     	ldr	x8, [x26]
    1200: 90000009     	adrp	x9, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001200:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x66b
    1204: 91000129     	add	x9, x9, #0x0
		0000000000001204:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x66b
    1208: f9014ab7     	str	x23, [x21, #0x290]
    120c: a90026a8     	stp	x8, x9, [x21]
    1210: 90000008     	adrp	x8, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001210:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_open
    1214: 91000108     	add	x8, x8, #0x0
		0000000000001214:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_open
    1218: 90000009     	adrp	x9, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001218:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_close
    121c: 91000129     	add	x9, x9, #0x0
		000000000000121c:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_close
    1220: a91ca6a8     	stp	x8, x9, [x21, #0x1c8]
    1224: b20083e8     	mov	x8, #0x1000100010001    // =281479271743489
    1228: f2800328     	movk	x8, #0x19
    122c: f2e02008     	movk	x8, #0x100, lsl #48
    1230: f9000ea8     	str	x8, [x21, #0x18]
    1234: f9402288     	ldr	x8, [x20, #0x40]
    1238: f90072a8     	str	x8, [x21, #0xe0]
    123c: 52800048     	mov	w8, #0x2                // =2
    1240: b900daa8     	str	w8, [x21, #0xd8]
    1244: b9400b08     	ldr	w8, [x24, #0x8]
    1248: b900d6a8     	str	w8, [x21, #0xd4]
    124c: 39404308     	ldrb	w8, [x24, #0x10]
    1250: 36000088     	tbz	w8, #0x0, 0x1260 <gpio_keys_probe+0x14c>
    1254: f94016a8     	ldr	x8, [x21, #0x28]
    1258: b26c0108     	orr	x8, x8, #0x100000
    125c: f90016a8     	str	x8, [x21, #0x28]
    1260: b9400b08     	ldr	w8, [x24, #0x8]
    1264: 7100051f     	cmp	w8, #0x1
    1268: 540052ab     	b.lt	0x1cbc <gpio_keys_probe+0xba8>
    126c: f81c83b5     	stur	x21, [x29, #-0x38]
    1270: 2a1f03f5     	mov	w21, wzr
    1274: aa1f03e1     	mov	x1, xzr
    1278: 9000001b     	adrp	x27, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x538
    127c: 9100037b     	add	x27, x27, #0x0
		000000000000127c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x538
    1280: 9000001c     	adrp	x28, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e7
    1284: 9100039c     	add	x28, x28, #0x0
		0000000000001284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e7
    1288: 91012288     	add	x8, x20, #0x48
    128c: 90000016     	adrp	x22, 0x1000 <gpio_keys_irq_isr+0x40>
		000000000000128c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c8
    1290: 910002d6     	add	x22, x22, #0x0
		0000000000001290:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c8
    1294: a93dcfbf     	stp	xzr, x19, [x29, #-0x28]
    1298: a900d3f7     	stp	x23, x20, [sp, #0x8]
    129c: f90013e8     	str	x8, [sp, #0x20]
    12a0: f90023fa     	str	x26, [sp, #0x40]
    12a4: f9405348     	ldr	x8, [x26, #0xa0]
    12a8: f9400313     	ldr	x19, [x24]
    12ac: b50000e8     	cbnz	x8, 0x12c8 <gpio_keys_probe+0x1b4>
    12b0: aa1703e0     	mov	x0, x23
    12b4: 94000000     	bl	0x12b4 <gpio_keys_probe+0x1a0>
		00000000000012b4:  R_AARCH64_CALL26	device_get_next_child_node
    12b8: f85e03b4     	ldur	x20, [x29, #-0x20]
    12bc: aa0003e1     	mov	x1, x0
    12c0: b5000060     	cbnz	x0, 0x12cc <gpio_keys_probe+0x1b8>
    12c4: 140002b7     	b	0x1da0 <gpio_keys_probe+0xc8c>
    12c8: f85e03b4     	ldur	x20, [x29, #-0x20]
    12cc: f85d83a8     	ldur	x8, [x29, #-0x28]
    12d0: 52800709     	mov	w9, #0x38               // =56
    12d4: b9002ff5     	str	w21, [sp, #0x2c]
    12d8: 9b094d19     	madd	x25, x8, x9, x19
    12dc: 8b081108     	add	x8, x8, x8, lsl #4
    12e0: d37ced0a     	lsl	x10, x8, #4
    12e4: 90000008     	adrp	x8, 0x1000 <gpio_keys_irq_isr+0x40>
		00000000000012e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b8
    12e8: 91000108     	add	x8, x8, #0x0
		00000000000012e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b8
    12ec: f81e83aa     	stur	x10, [x29, #-0x18]
    12f0: f9400b29     	ldr	x9, [x25, #0x10]
    12f4: f100013f     	cmp	x9, #0x0
    12f8: 9a890108     	csel	x8, x8, x9, eq
    12fc: f81d03a8     	stur	x8, [x29, #-0x30]
    1300: b1014148     	adds	x8, x10, #0x50
    1304: 54006064     	b.mi	0x1f10 <gpio_keys_probe+0xdfc>
    1308: eb08029f     	cmp	x20, x8
    130c: 54006023     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    1310: f85e83aa     	ldur	x10, [x29, #-0x18]
    1314: f94013e8     	ldr	x8, [sp, #0x20]
    1318: 91012149     	add	x9, x10, #0x48
    131c: 8b0a0115     	add	x21, x8, x10
    1320: f85c83aa     	ldur	x10, [x29, #-0x38]
    1324: eb090288     	subs	x8, x20, x9
    1328: f90006aa     	str	x10, [x21, #0x8]
    132c: b7f85f29     	tbnz	x9, #0x3f, 0x1f10 <gpio_keys_probe+0xdfc>
    1330: 54005f03     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    1334: f100211f     	cmp	x8, #0x8
    1338: 54005ec3     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    133c: f85e83a8     	ldur	x8, [x29, #-0x18]
    1340: f90002b9     	str	x25, [x21]
    1344: 91053109     	add	x9, x8, #0x14c
    1348: eb090288     	subs	x8, x20, x9
    134c: b7f85e29     	tbnz	x9, #0x3f, 0x1f10 <gpio_keys_probe+0xdfc>
    1350: 54005e03     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    1354: f100111f     	cmp	x8, #0x4
    1358: 54005dc3     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    135c: b90106bf     	str	wzr, [x21, #0x104]
    1360: f9001be1     	str	x1, [sp, #0x30]
    1364: b5000301     	cbnz	x1, 0x13c4 <gpio_keys_probe+0x2b0>
    1368: b9400721     	ldr	w1, [x25, #0x4]
    136c: 37f80641     	tbnz	w1, #0x1f, 0x1434 <gpio_keys_probe+0x320>
    1370: b9400b28     	ldr	w8, [x25, #0x8]
    1374: f85d03a3     	ldur	x3, [x29, #-0x30]
    1378: aa1703e0     	mov	x0, x23
    137c: 7100011f     	cmp	w8, #0x0
    1380: 528000a8     	mov	w8, #0x5                // =5
    1384: 9a9f1502     	csinc	x2, x8, xzr, ne
    1388: 94000000     	bl	0x1388 <gpio_keys_probe+0x274>
		0000000000001388:  R_AARCH64_CALL26	devm_gpio_request_one
    138c: b9400722     	ldr	w2, [x25, #0x4]
    1390: 37f85520     	tbnz	w0, #0x1f, 0x1e34 <gpio_keys_probe+0xd20>
    1394: 2a0203e0     	mov	w0, w2
    1398: 94000000     	bl	0x1398 <gpio_keys_probe+0x284>
		0000000000001398:  R_AARCH64_CALL26	gpio_to_desc
    139c: a97e2ba8     	ldp	x8, x10, [x29, #-0x20]
    13a0: 91016149     	add	x9, x10, #0x58
    13a4: eb090108     	subs	x8, x8, x9
    13a8: b7f85b49     	tbnz	x9, #0x3f, 0x1f10 <gpio_keys_probe+0xdfc>
    13ac: 54005b23     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    13b0: f100211f     	cmp	x8, #0x8
    13b4: 54005ae3     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    13b8: f9000aa0     	str	x0, [x21, #0x10]
    13bc: b50004e0     	cbnz	x0, 0x1458 <gpio_keys_probe+0x344>
    13c0: 140002bf     	b	0x1ebc <gpio_keys_probe+0xda8>
    13c4: f85d03a5     	ldur	x5, [x29, #-0x30]
    13c8: aa1703e0     	mov	x0, x23
    13cc: aa1f03e2     	mov	x2, xzr
    13d0: 2a1f03e3     	mov	w3, wzr
    13d4: 52800024     	mov	w4, #0x1                // =1
    13d8: 94000000     	bl	0x13d8 <gpio_keys_probe+0x2c4>
		00000000000013d8:  R_AARCH64_CALL26	devm_fwnode_gpiod_get_index
    13dc: f85e83a8     	ldur	x8, [x29, #-0x18]
    13e0: 91016108     	add	x8, x8, #0x58
    13e4: eb080289     	subs	x9, x20, x8
    13e8: b7f85948     	tbnz	x8, #0x3f, 0x1f10 <gpio_keys_probe+0xdfc>
    13ec: 54005923     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    13f0: f100213f     	cmp	x9, #0x8
    13f4: 540058e3     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    13f8: aa0003f4     	mov	x20, x0
    13fc: b13ffc1f     	cmn	x0, #0xfff
    1400: f9000aa0     	str	x0, [x21, #0x10]
    1404: 54000283     	b.lo	0x1454 <gpio_keys_probe+0x340>
    1408: 31000a9f     	cmn	w20, #0x2
    140c: 54001500     	b.eq	0x16ac <gpio_keys_probe+0x598>
    1410: 3108169f     	cmn	w20, #0x205
    1414: 540052a0     	b.eq	0x1e68 <gpio_keys_probe+0xd54>
    1418: aa1703e0     	mov	x0, x23
    141c: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x40>
		000000000000141c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30c
    1420: 91000021     	add	x1, x1, #0x0
		0000000000001420:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30c
    1424: 2a1403e2     	mov	w2, w20
    1428: 94000000     	bl	0x1428 <gpio_keys_probe+0x314>
		0000000000001428:  R_AARCH64_CALL26	_dev_err
    142c: 34002994     	cbz	w20, 0x195c <gpio_keys_probe+0x848>
    1430: 1400028e     	b	0x1e68 <gpio_keys_probe+0xd54>
    1434: f85e83a8     	ldur	x8, [x29, #-0x18]
    1438: 91016109     	add	x9, x8, #0x58
    143c: eb090288     	subs	x8, x20, x9
    1440: b7f85689     	tbnz	x9, #0x3f, 0x1f10 <gpio_keys_probe+0xdfc>
    1444: 54005663     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    1448: f100211f     	cmp	x8, #0x8
    144c: 54005623     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    1450: f9400ab4     	ldr	x20, [x21, #0x10]
    1454: b4001394     	cbz	x20, 0x16c4 <gpio_keys_probe+0x5b0>
    1458: f9417f53     	ldr	x19, [x26, #0x2f8]
    145c: aa1f03e1     	mov	x1, xzr
    1460: f81f03bf     	stur	xzr, [x29, #-0x10]
    1464: aa1303e0     	mov	x0, x19
    1468: 94000000     	bl	0x1468 <gpio_keys_probe+0x354>
		0000000000001468:  R_AARCH64_CALL26	of_get_next_child
    146c: b4000280     	cbz	x0, 0x14bc <gpio_keys_probe+0x3a8>
    1470: aa0003f4     	mov	x20, x0
    1474: d10043a2     	sub	x2, x29, #0x10
    1478: aa1403e0     	mov	x0, x20
    147c: aa1b03e1     	mov	x1, x27
    1480: 94000000     	bl	0x1480 <gpio_keys_probe+0x36c>
		0000000000001480:  R_AARCH64_CALL26	of_property_read_string
    1484: 37f801c0     	tbnz	w0, #0x1f, 0x14bc <gpio_keys_probe+0x3a8>
    1488: aa1403e0     	mov	x0, x20
    148c: aa1c03e1     	mov	x1, x28
    1490: 2a1f03e2     	mov	w2, wzr
    1494: 94000000     	bl	0x1494 <gpio_keys_probe+0x380>
		0000000000001494:  R_AARCH64_CALL26	of_get_named_gpio
    1498: f85f03a0     	ldur	x0, [x29, #-0x10]
    149c: f9400b21     	ldr	x1, [x25, #0x10]
    14a0: 94000000     	bl	0x14a0 <gpio_keys_probe+0x38c>
		00000000000014a0:  R_AARCH64_CALL26	strcmp
    14a4: 34002740     	cbz	w0, 0x198c <gpio_keys_probe+0x878>
    14a8: aa1303e0     	mov	x0, x19
    14ac: aa1403e1     	mov	x1, x20
    14b0: 94000000     	bl	0x14b0 <gpio_keys_probe+0x39c>
		00000000000014b0:  R_AARCH64_CALL26	of_get_next_child
    14b4: aa0003f4     	mov	x20, x0
    14b8: b5fffde0     	cbnz	x0, 0x1474 <gpio_keys_probe+0x360>
    14bc: b9003bff     	str	wzr, [sp, #0x38]
    14c0: a97e27b4     	ldp	x20, x9, [x29, #-0x20]
    14c4: b9402728     	ldr	w8, [x25, #0x24]
    14c8: 91016133     	add	x19, x9, #0x58
    14cc: 34000248     	cbz	w8, 0x1514 <gpio_keys_probe+0x400>
    14d0: eb130289     	subs	x9, x20, x19
    14d4: b7f851f3     	tbnz	x19, #0x3f, 0x1f10 <gpio_keys_probe+0xdfc>
    14d8: 540051c3     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    14dc: f100213f     	cmp	x9, #0x8
    14e0: 54005183     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    14e4: 52807d09     	mov	w9, #0x3e8              // =1000
    14e8: f9400aa0     	ldr	x0, [x21, #0x10]
    14ec: 1b097d01     	mul	w1, w8, w9
    14f0: 94000000     	bl	0x14f0 <gpio_keys_probe+0x3dc>
		00000000000014f0:  R_AARCH64_CALL26	gpiod_set_debounce
    14f4: 36f80100     	tbz	w0, #0x1f, 0x1514 <gpio_keys_probe+0x400>
    14f8: f85e83a8     	ldur	x8, [x29, #-0x18]
    14fc: b1040108     	adds	x8, x8, #0x100
    1500: 54005084     	b.mi	0x1f10 <gpio_keys_probe+0xdfc>
    1504: eb08029f     	cmp	x20, x8
    1508: 54005043     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    150c: b9402728     	ldr	w8, [x25, #0x24]
    1510: b900baa8     	str	w8, [x21, #0xb8]
    1514: b9403334     	ldr	w20, [x25, #0x30]
    1518: 350001b4     	cbnz	w20, 0x154c <gpio_keys_probe+0x438>
    151c: f85e03a8     	ldur	x8, [x29, #-0x20]
    1520: eb130108     	subs	x8, x8, x19
    1524: b7f84f73     	tbnz	x19, #0x3f, 0x1f10 <gpio_keys_probe+0xdfc>
    1528: 54004f43     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    152c: f100211f     	cmp	x8, #0x8
    1530: 54004f03     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    1534: f9400aa0     	ldr	x0, [x21, #0x10]
    1538: 94000000     	bl	0x1538 <gpio_keys_probe+0x424>
		0000000000001538:  R_AARCH64_CALL26	gpiod_to_irq
    153c: 2a0003f4     	mov	w20, w0
    1540: 37f84880     	tbnz	w0, #0x1f, 0x1e50 <gpio_keys_probe+0xd3c>
    1544: 2a1403fa     	mov	w26, w20
    1548: 14000002     	b	0x1550 <gpio_keys_probe+0x43c>
    154c: 1280001a     	mov	w26, #-0x1              // =-1
    1550: a97e27a8     	ldp	x8, x9, [x29, #-0x20]
    1554: 91041133     	add	x19, x9, #0x104
    1558: eb130108     	subs	x8, x8, x19
    155c: b7f84db3     	tbnz	x19, #0x3f, 0x1f10 <gpio_keys_probe+0xdfc>
    1560: 54004d83     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    1564: f100111f     	cmp	x8, #0x4
    1568: 54004d43     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    156c: a97e2ba8     	ldp	x8, x10, [x29, #-0x20]
    1570: b900beb4     	str	w20, [x21, #0xbc]
    1574: 91026149     	add	x9, x10, #0x98
    1578: eb090108     	subs	x8, x8, x9
    157c: b7f84ca9     	tbnz	x9, #0x3f, 0x1f10 <gpio_keys_probe+0xdfc>
    1580: 54004c83     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    1584: f100211f     	cmp	x8, #0x8
    1588: 54004c43     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    158c: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    1590: 910162a9     	add	x9, x21, #0x58
    1594: f9002aa8     	str	x8, [x21, #0x50]
    1598: a97e23b4     	ldp	x20, x8, [x29, #-0x20]
    159c: f9002ea9     	str	x9, [x21, #0x58]
    15a0: f90032a9     	str	x9, [x21, #0x60]
    15a4: b102c108     	adds	x8, x8, #0xb0
    15a8: 54004b44     	b.mi	0x1f10 <gpio_keys_probe+0xdfc>
    15ac: eb08029f     	cmp	x20, x8
    15b0: 54004b03     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    15b4: 90000008     	adrp	x8, 0x1000 <gpio_keys_irq_isr+0x40>
		00000000000015b4:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_gpio_work_func
    15b8: 91000108     	add	x8, x8, #0x0
		00000000000015b8:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_gpio_work_func
    15bc: 9101c2a0     	add	x0, x21, #0x70
    15c0: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x40>
		00000000000015c0:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    15c4: 91000021     	add	x1, x1, #0x0
		00000000000015c4:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    15c8: 52a00402     	mov	w2, #0x200000           // =2097152
    15cc: aa1f03e3     	mov	x3, xzr
    15d0: aa1f03e4     	mov	x4, xzr
    15d4: f90036a8     	str	x8, [x21, #0x68]
    15d8: 94000000     	bl	0x15d8 <gpio_keys_probe+0x4c4>
		00000000000015d8:  R_AARCH64_CALL26	init_timer_key
    15dc: eb130288     	subs	x8, x20, x19
    15e0: 54004983     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    15e4: f100111f     	cmp	x8, #0x4
    15e8: 54004943     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    15ec: f85e83a8     	ldur	x8, [x29, #-0x18]
    15f0: b9403bf3     	ldr	w19, [sp, #0x38]
    15f4: 91042109     	add	x9, x8, #0x108
    15f8: eb090288     	subs	x8, x20, x9
    15fc: b7f848a9     	tbnz	x9, #0x3f, 0x1f10 <gpio_keys_probe+0xdfc>
    1600: 54004883     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    1604: f100111f     	cmp	x8, #0x4
    1608: 54004843     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    160c: 29578ea2     	ldp	w2, w3, [x21, #0xbc]
    1610: b9403324     	ldr	w4, [x25, #0x30]
    1614: 90000000     	adrp	x0, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001614:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x682
    1618: 91000000     	add	x0, x0, #0x0
		0000000000001618:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x682
    161c: 2a1a03e1     	mov	w1, w26
    1620: 2a1303e5     	mov	w5, w19
    1624: 94000000     	bl	0x1624 <gpio_keys_probe+0x510>
		0000000000001624:  R_AARCH64_CALL26	_printk
    1628: b9402328     	ldr	w8, [x25, #0x20]
    162c: 7100091f     	cmp	w8, #0x2
    1630: 540001e0     	b.eq	0x166c <gpio_keys_probe+0x558>
    1634: f94023fa     	ldr	x26, [sp, #0x40]
    1638: 7100051f     	cmp	w8, #0x1
    163c: 54000301     	b.ne	0x169c <gpio_keys_probe+0x588>
    1640: f85e83a8     	ldur	x8, [x29, #-0x18]
    1644: 91052109     	add	x9, x8, #0x148
    1648: eb090288     	subs	x8, x20, x9
    164c: b7f84629     	tbnz	x9, #0x3f, 0x1f10 <gpio_keys_probe+0xdfc>
    1650: 54004603     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    1654: f100111f     	cmp	x8, #0x4
    1658: 540045c3     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    165c: 7100027f     	cmp	w19, #0x0
    1660: 52800028     	mov	w8, #0x1                // =1
    1664: 1a880508     	cinc	w8, w8, ne
    1668: 1400000c     	b	0x1698 <gpio_keys_probe+0x584>
    166c: f85e83a8     	ldur	x8, [x29, #-0x18]
    1670: f94023fa     	ldr	x26, [sp, #0x40]
    1674: 91052109     	add	x9, x8, #0x148
    1678: eb090288     	subs	x8, x20, x9
    167c: b7f844a9     	tbnz	x9, #0x3f, 0x1f10 <gpio_keys_probe+0xdfc>
    1680: 54004483     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    1684: f100111f     	cmp	x8, #0x4
    1688: 54004443     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    168c: 7100027f     	cmp	w19, #0x0
    1690: 52800028     	mov	w8, #0x1                // =1
    1694: 1a881508     	cinc	w8, w8, eq
    1698: b90102a8     	str	w8, [x21, #0x100]
    169c: 90000008     	adrp	x8, 0x1000 <gpio_keys_irq_isr+0x40>
		000000000000169c:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_gpio_isr
    16a0: 91000108     	add	x8, x8, #0x0
		00000000000016a0:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_gpio_isr
    16a4: 52800073     	mov	w19, #0x3               // =3
    16a8: 14000025     	b	0x173c <gpio_keys_probe+0x628>
    16ac: f85e03a9     	ldur	x9, [x29, #-0x20]
    16b0: eb080128     	subs	x8, x9, x8
    16b4: 540042e3     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    16b8: f100211f     	cmp	x8, #0x8
    16bc: 540042a3     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    16c0: f9000abf     	str	xzr, [x21, #0x10]
    16c4: b9403328     	ldr	w8, [x25, #0x30]
    16c8: 340037a8     	cbz	w8, 0x1dbc <gpio_keys_probe+0xca8>
    16cc: a97e27b4     	ldp	x20, x9, [x29, #-0x20]
    16d0: 9104112a     	add	x10, x9, #0x104
    16d4: eb0a0289     	subs	x9, x20, x10
    16d8: b7f841ca     	tbnz	x10, #0x3f, 0x1f10 <gpio_keys_probe+0xdfc>
    16dc: 540041a3     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    16e0: f100113f     	cmp	x9, #0x4
    16e4: 54004163     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    16e8: b900bea8     	str	w8, [x21, #0xbc]
    16ec: b9401b28     	ldr	w8, [x25, #0x18]
    16f0: 7100091f     	cmp	w8, #0x2
    16f4: 540036a2     	b.hs	0x1dc8 <gpio_keys_probe+0xcb4>
    16f8: f85e83a8     	ldur	x8, [x29, #-0x18]
    16fc: b1024108     	adds	x8, x8, #0x90
    1700: 54004084     	b.mi	0x1f10 <gpio_keys_probe+0xdfc>
    1704: eb08029f     	cmp	x20, x8
    1708: 54004043     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    170c: b9402728     	ldr	w8, [x25, #0x24]
    1710: 910082a0     	add	x0, x21, #0x20
    1714: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001714:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_irq_timer
    1718: 91000021     	add	x1, x1, #0x0
		0000000000001718:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_irq_timer
    171c: 2a1f03e2     	mov	w2, wzr
    1720: aa1f03e3     	mov	x3, xzr
    1724: aa1f03e4     	mov	x4, xzr
    1728: b9004aa8     	str	w8, [x21, #0x48]
    172c: 94000000     	bl	0x172c <gpio_keys_probe+0x618>
		000000000000172c:  R_AARCH64_CALL26	init_timer_key
    1730: aa1f03f3     	mov	x19, xzr
    1734: 90000008     	adrp	x8, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001734:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_irq_isr
    1738: 91000108     	add	x8, x8, #0x0
		0000000000001738:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_irq_isr
    173c: f9001fe8     	str	x8, [sp, #0x38]
    1740: f85e83a8     	ldur	x8, [x29, #-0x18]
    1744: b1018108     	adds	x8, x8, #0x60
    1748: 54003e44     	b.mi	0x1f10 <gpio_keys_probe+0xdfc>
    174c: eb08029f     	cmp	x20, x8
    1750: 54003e03     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    1754: f9400be8     	ldr	x8, [sp, #0x10]
    1758: f85d83aa     	ldur	x10, [x29, #-0x28]
    175c: f85c83a0     	ldur	x0, [x29, #-0x38]
    1760: f9402108     	ldr	x8, [x8, #0x40]
    1764: 8b0a0509     	add	x9, x8, x10, lsl #1
    1768: f9000ea9     	str	x9, [x21, #0x18]
    176c: b9400329     	ldr	w9, [x25]
    1770: 782a7909     	strh	w9, [x8, x10, lsl #1]
    1774: b9401b28     	ldr	w8, [x25, #0x18]
    1778: f9400ea9     	ldr	x9, [x21, #0x18]
    177c: 7100051f     	cmp	w8, #0x1
    1780: 79400122     	ldrh	w2, [x9]
    1784: 1a9f8501     	csinc	w1, w8, wzr, hi
    1788: 94000000     	bl	0x1788 <gpio_keys_probe+0x674>
		0000000000001788:  R_AARCH64_CALL26	input_set_capability
    178c: aa1703e0     	mov	x0, x23
    1790: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001790:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_quiesce_key
    1794: 91000021     	add	x1, x1, #0x0
		0000000000001794:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_quiesce_key
    1798: aa1503e2     	mov	x2, x21
    179c: 90000003     	adrp	x3, 0x1000 <gpio_keys_irq_isr+0x40>
		000000000000179c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44d
    17a0: 91000063     	add	x3, x3, #0x0
		00000000000017a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44d
    17a4: 94000000     	bl	0x17a4 <gpio_keys_probe+0x690>
		00000000000017a4:  R_AARCH64_CALL26	__devm_add_action
    17a8: 35002d60     	cbnz	w0, 0x1d54 <gpio_keys_probe+0xc40>
    17ac: 3940a328     	ldrb	w8, [x25, #0x28]
    17b0: b2790269     	orr	x9, x19, #0x80
    17b4: 7100011f     	cmp	w8, #0x0
    17b8: a97e2fa8     	ldp	x8, x11, [x29, #-0x20]
    17bc: 9a891263     	csel	x3, x19, x9, ne
    17c0: 9104116a     	add	x10, x11, #0x104
    17c4: eb0a0108     	subs	x8, x8, x10
    17c8: b7f83a4a     	tbnz	x10, #0x3f, 0x1f10 <gpio_keys_probe+0xdfc>
    17cc: 54003a23     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    17d0: f100111f     	cmp	x8, #0x4
    17d4: 540039e3     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    17d8: b940bea1     	ldr	w1, [x21, #0xbc]
    17dc: f9401fe2     	ldr	x2, [sp, #0x38]
    17e0: aa1703e0     	mov	x0, x23
    17e4: f85d03a4     	ldur	x4, [x29, #-0x30]
    17e8: aa1503e5     	mov	x5, x21
    17ec: f9000fe3     	str	x3, [sp, #0x18]
    17f0: 94000000     	bl	0x17f0 <gpio_keys_probe+0x6dc>
		00000000000017f0:  R_AARCH64_CALL26	devm_request_any_context_irq
    17f4: 37f82be0     	tbnz	w0, #0x1f, 0x1d70 <gpio_keys_probe+0xc5c>
    17f8: f9417f54     	ldr	x20, [x26, #0x2f8]
    17fc: aa1f03e1     	mov	x1, xzr
    1800: aa1403e0     	mov	x0, x20
    1804: 94000000     	bl	0x1804 <gpio_keys_probe+0x6f0>
		0000000000001804:  R_AARCH64_CALL26	of_get_next_child
    1808: b40003a0     	cbz	x0, 0x187c <gpio_keys_probe+0x768>
    180c: a97e2faa     	ldp	x10, x11, [x29, #-0x20]
    1810: aa0003f3     	mov	x19, x0
    1814: 91043168     	add	x8, x11, #0x10c
    1818: eb080149     	subs	x9, x10, x8
    181c: fa442920     	ccmp	x9, #0x4, #0x0, hs
    1820: 91044169     	add	x9, x11, #0x110
    1824: fa402908     	ccmp	x8, #0x0, #0x8, hs
    1828: 1a9fa7fa     	cset	w26, lt
    182c: f100013f     	cmp	x9, #0x0
    1830: fa49a140     	ccmp	x10, x9, #0x0, ge
    1834: 1a9f27f7     	cset	w23, lo
    1838: aa1303e0     	mov	x0, x19
    183c: aa1c03e1     	mov	x1, x28
    1840: 2a1f03e2     	mov	w2, wzr
    1844: 94000000     	bl	0x1844 <gpio_keys_probe+0x730>
		0000000000001844:  R_AARCH64_CALL26	of_get_named_gpio
    1848: 3700365a     	tbnz	w26, #0x0, 0x1f10 <gpio_keys_probe+0xdfc>
    184c: b900c6a0     	str	w0, [x21, #0xc4]
    1850: aa1303e0     	mov	x0, x19
    1854: aa1603e1     	mov	x1, x22
    1858: 2a1f03e2     	mov	w2, wzr
    185c: 94000000     	bl	0x185c <gpio_keys_probe+0x748>
		000000000000185c:  R_AARCH64_CALL26	of_get_named_gpio
    1860: 37003597     	tbnz	w23, #0x0, 0x1f10 <gpio_keys_probe+0xdfc>
    1864: b900caa0     	str	w0, [x21, #0xc8]
    1868: aa1403e0     	mov	x0, x20
    186c: aa1303e1     	mov	x1, x19
    1870: 94000000     	bl	0x1870 <gpio_keys_probe+0x75c>
		0000000000001870:  R_AARCH64_CALL26	of_get_next_child
    1874: aa0003f3     	mov	x19, x0
    1878: b5fffe00     	cbnz	x0, 0x1838 <gpio_keys_probe+0x724>
    187c: a97e23b4     	ldp	x20, x8, [x29, #-0x20]
    1880: b1044113     	adds	x19, x8, #0x110
    1884: 54003464     	b.mi	0x1f10 <gpio_keys_probe+0xdfc>
    1888: eb13029f     	cmp	x20, x19
    188c: 54003423     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    1890: b940caa0     	ldr	w0, [x21, #0xc8]
    1894: 34000160     	cbz	w0, 0x18c0 <gpio_keys_probe+0x7ac>
    1898: 94000000     	bl	0x1898 <gpio_keys_probe+0x784>
		0000000000001898:  R_AARCH64_CALL26	gpio_to_desc
    189c: 94000000     	bl	0x189c <gpio_keys_probe+0x788>
		000000000000189c:  R_AARCH64_CALL26	gpiod_to_irq
    18a0: f85e83a8     	ldur	x8, [x29, #-0x18]
    18a4: 91042109     	add	x9, x8, #0x108
    18a8: eb090288     	subs	x8, x20, x9
    18ac: b7f83329     	tbnz	x9, #0x3f, 0x1f10 <gpio_keys_probe+0xdfc>
    18b0: 54003303     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    18b4: f100111f     	cmp	x8, #0x4
    18b8: 540032c3     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    18bc: b900c2a0     	str	w0, [x21, #0xc0]
    18c0: 910342a0     	add	x0, x21, #0xd0
    18c4: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x40>
		00000000000018c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x475
    18c8: 91000021     	add	x1, x1, #0x0
		00000000000018c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x475
    18cc: 90000002     	adrp	x2, 0x1000 <gpio_keys_irq_isr+0x40>
		00000000000018cc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
    18d0: 91000042     	add	x2, x2, #0x0
		00000000000018d0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x10
    18d4: 94000000     	bl	0x18d4 <gpio_keys_probe+0x7c0>
		00000000000018d4:  R_AARCH64_CALL26	__mutex_init
    18d8: f85e83a8     	ldur	x8, [x29, #-0x18]
    18dc: 91043109     	add	x9, x8, #0x10c
    18e0: eb090288     	subs	x8, x20, x9
    18e4: b7f83169     	tbnz	x9, #0x3f, 0x1f10 <gpio_keys_probe+0xdfc>
    18e8: 54003143     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    18ec: f100111f     	cmp	x8, #0x4
    18f0: 54003103     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    18f4: f94007f7     	ldr	x23, [sp, #0x8]
    18f8: f94023fa     	ldr	x26, [sp, #0x40]
    18fc: eb13029f     	cmp	x20, x19
    1900: 54003083     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    1904: 29588ea2     	ldp	w2, w3, [x21, #0xc4]
    1908: 90000000     	adrp	x0, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001908:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c9
    190c: 91000000     	add	x0, x0, #0x0
		000000000000190c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c9
    1910: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001910:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13b
    1914: 91000021     	add	x1, x1, #0x0
		0000000000001914:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13b
    1918: 94000000     	bl	0x1918 <gpio_keys_probe+0x804>
		0000000000001918:  R_AARCH64_CALL26	_printk
    191c: f85e83a8     	ldur	x8, [x29, #-0x18]
    1920: 91042109     	add	x9, x8, #0x108
    1924: eb090288     	subs	x8, x20, x9
    1928: b7f82f49     	tbnz	x9, #0x3f, 0x1f10 <gpio_keys_probe+0xdfc>
    192c: 54002f23     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    1930: f100111f     	cmp	x8, #0x4
    1934: 54002ee3     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    1938: b940c2a1     	ldr	w1, [x21, #0xc0]
    193c: 34000101     	cbz	w1, 0x195c <gpio_keys_probe+0x848>
    1940: f9401fe2     	ldr	x2, [sp, #0x38]
    1944: f9400fe3     	ldr	x3, [sp, #0x18]
    1948: aa1703e0     	mov	x0, x23
    194c: f85d03a4     	ldur	x4, [x29, #-0x30]
    1950: aa1503e5     	mov	x5, x21
    1954: 94000000     	bl	0x1954 <gpio_keys_probe+0x840>
		0000000000001954:  R_AARCH64_CALL26	devm_request_any_context_irq
    1958: 37f80200     	tbnz	w0, #0x1f, 0x1998 <gpio_keys_probe+0x884>
    195c: b9401f28     	ldr	w8, [x25, #0x1c]
    1960: b9800b09     	ldrsw	x9, [x24, #0x8]
    1964: b9402ff5     	ldr	w21, [sp, #0x2c]
    1968: f9401be1     	ldr	x1, [sp, #0x30]
    196c: 7100011f     	cmp	w8, #0x0
    1970: f85d83a8     	ldur	x8, [x29, #-0x28]
    1974: 1a9f06b5     	csinc	w21, w21, wzr, eq
    1978: 91000508     	add	x8, x8, #0x1
    197c: eb09011f     	cmp	x8, x9
    1980: f81d83a8     	stur	x8, [x29, #-0x28]
    1984: 54ffc90b     	b.lt	0x12a4 <gpio_keys_probe+0x190>
    1988: 140000b4     	b	0x1c58 <gpio_keys_probe+0xb44>
    198c: 52800028     	mov	w8, #0x1                // =1
    1990: b9003be8     	str	w8, [sp, #0x38]
    1994: 17fffecb     	b	0x14c0 <gpio_keys_probe+0x3ac>
    1998: 90000000     	adrp	x0, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001998:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a
    199c: 91000000     	add	x0, x0, #0x0
		000000000000199c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a
    19a0: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x40>
		00000000000019a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x657
    19a4: 91000021     	add	x1, x1, #0x0
		00000000000019a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x657
    19a8: 94000000     	bl	0x19a8 <gpio_keys_probe+0x894>
		00000000000019a8:  R_AARCH64_CALL26	_printk
    19ac: 17ffffec     	b	0x195c <gpio_keys_probe+0x848>
    19b0: aa1703e0     	mov	x0, x23
    19b4: 94000000     	bl	0x19b4 <gpio_keys_probe+0x8a0>
		00000000000019b4:  R_AARCH64_CALL26	device_get_child_node_count
    19b8: 34001a20     	cbz	w0, 0x1cfc <gpio_keys_probe+0xbe8>
    19bc: 52800708     	mov	w8, #0x38               // =56
    19c0: 2a0003f3     	mov	w19, w0
    19c4: 5281b802     	mov	w2, #0xdc0              // =3520
    19c8: 9b287c16     	smull	x22, w0, w8
    19cc: aa1703e0     	mov	x0, x23
    19d0: 9100c2d5     	add	x21, x22, #0x30
    19d4: aa1503e1     	mov	x1, x21
    19d8: 94000000     	bl	0x19d8 <gpio_keys_probe+0x8c4>
		00000000000019d8:  R_AARCH64_CALL26	devm_kmalloc
    19dc: b4001960     	cbz	x0, 0x1d08 <gpio_keys_probe+0xbf4>
    19e0: f90023fa     	str	x26, [sp, #0x40]
    19e4: b4002975     	cbz	x21, 0x1f10 <gpio_keys_probe+0xdfc>
    19e8: 9100c008     	add	x8, x0, #0x30
    19ec: aa0003f8     	mov	x24, x0
    19f0: b9000813     	str	w19, [x0, #0x8]
    19f4: f9000008     	str	x8, [x0]
    19f8: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x40>
		00000000000019f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x613
    19fc: 91000021     	add	x1, x1, #0x0
		00000000000019fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x613
    1a00: aa1703e0     	mov	x0, x23
    1a04: 94000000     	bl	0x1a04 <gpio_keys_probe+0x8f0>
		0000000000001a04:  R_AARCH64_CALL26	device_property_present
    1a08: f10042bf     	cmp	x21, #0x10
    1a0c: 54002823     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    1a10: 39404308     	ldrb	w8, [x24, #0x10]
    1a14: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001a14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x538
    1a18: 91000021     	add	x1, x1, #0x0
		0000000000001a18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x538
    1a1c: 9100a302     	add	x2, x24, #0x28
    1a20: 33000008     	bfxil	w8, w0, #0, #1
    1a24: aa1703e0     	mov	x0, x23
    1a28: 39004308     	strb	w8, [x24, #0x10]
    1a2c: 94000000     	bl	0x1a2c <gpio_keys_probe+0x918>
		0000000000001a2c:  R_AARCH64_CALL26	device_property_read_string
    1a30: aa1703e0     	mov	x0, x23
    1a34: aa1f03e1     	mov	x1, xzr
    1a38: aa1703f9     	mov	x25, x23
    1a3c: 94000000     	bl	0x1a3c <gpio_keys_probe+0x928>
		0000000000001a3c:  R_AARCH64_CALL26	device_get_next_child_node
    1a40: b4001520     	cbz	x0, 0x1ce4 <gpio_keys_probe+0xbd0>
    1a44: 52800608     	mov	w8, #0x30               // =48
    1a48: aa0003f4     	mov	x20, x0
    1a4c: 9000001a     	adrp	x26, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001a4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x272
    1a50: 9100035a     	add	x26, x26, #0x0
		0000000000001a50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x272
    1a54: 9000001b     	adrp	x27, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001a54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25e
    1a58: 9100037b     	add	x27, x27, #0x0
		0000000000001a58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25e
    1a5c: cb160108     	sub	x8, x8, x22
    1a60: 9000001c     	adrp	x28, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001a60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    1a64: 9100039c     	add	x28, x28, #0x0
		0000000000001a64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    1a68: 52800c17     	mov	w23, #0x60              // =96
    1a6c: 90000016     	adrp	x22, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001a6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12
    1a70: 910002d6     	add	x22, x22, #0x0
		0000000000001a70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12
    1a74: f81e83a8     	stur	x8, [x29, #-0x18]
    1a78: 14000007     	b	0x1a94 <gpio_keys_probe+0x980>
    1a7c: aa1903e0     	mov	x0, x25
    1a80: aa1403e1     	mov	x1, x20
    1a84: 94000000     	bl	0x1a84 <gpio_keys_probe+0x970>
		0000000000001a84:  R_AARCH64_CALL26	device_get_next_child_node
    1a88: aa0003f4     	mov	x20, x0
    1a8c: 9100e2f7     	add	x23, x23, #0x38
    1a90: b40012a0     	cbz	x0, 0x1ce4 <gpio_keys_probe+0xbd0>
    1a94: b140069f     	cmn	x20, #0x1, lsl #12      // =0x1000
    1a98: 540002c8     	b.hi	0x1af0 <gpio_keys_probe+0x9dc>
    1a9c: f9400688     	ldr	x8, [x20, #0x8]
    1aa0: 90000009     	adrp	x9, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001aa0:  R_AARCH64_ADR_PREL_PG_HI21	of_fwnode_ops
    1aa4: 91000129     	add	x9, x9, #0x0
		0000000000001aa4:  R_AARCH64_ADD_ABS_LO12_NC	of_fwnode_ops
    1aa8: eb09011f     	cmp	x8, x9
    1aac: 54000221     	b.ne	0x1af0 <gpio_keys_probe+0x9dc>
    1ab0: d1006280     	sub	x0, x20, #0x18
    1ab4: 2a1f03e1     	mov	w1, wzr
    1ab8: 94000000     	bl	0x1ab8 <gpio_keys_probe+0x9a4>
		0000000000001ab8:  R_AARCH64_CALL26	irq_of_parse_and_map
    1abc: b7f822b7     	tbnz	x23, #0x3f, 0x1f10 <gpio_keys_probe+0xdfc>
    1ac0: f85e83a8     	ldur	x8, [x29, #-0x18]
    1ac4: 8b170108     	add	x8, x8, x23
    1ac8: f101811f     	cmp	x8, #0x60
    1acc: 54002220     	b.eq	0x1f10 <gpio_keys_probe+0xdfc>
    1ad0: eb1702bf     	cmp	x21, x23
    1ad4: 540021e3     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    1ad8: b7f821d7     	tbnz	x23, #0x3f, 0x1f10 <gpio_keys_probe+0xdfc>
    1adc: eb1702bf     	cmp	x21, x23
    1ae0: 54002183     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    1ae4: f101811f     	cmp	x8, #0x60
    1ae8: 54002140     	b.eq	0x1f10 <gpio_keys_probe+0xdfc>
    1aec: b8376b00     	str	w0, [x24, x23]
    1af0: 8b170308     	add	x8, x24, x23
    1af4: aa1403e0     	mov	x0, x20
    1af8: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001af8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x64c
    1afc: 91000021     	add	x1, x1, #0x0
		0000000000001afc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x64c
    1b00: d100c102     	sub	x2, x8, #0x30
    1b04: 52800023     	mov	w3, #0x1                // =1
    1b08: 94000000     	bl	0x1b08 <gpio_keys_probe+0x9f4>
		0000000000001b08:  R_AARCH64_CALL26	fwnode_property_read_u32_array
    1b0c: 350016a0     	cbnz	w0, 0x1de0 <gpio_keys_probe+0xccc>
    1b10: 8b170313     	add	x19, x24, x23
    1b14: aa1403e0     	mov	x0, x20
    1b18: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001b18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x538
    1b1c: 91000021     	add	x1, x1, #0x0
		0000000000001b1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x538
    1b20: d1008262     	sub	x2, x19, #0x20
    1b24: 94000000     	bl	0x1b24 <gpio_keys_probe+0xa10>
		0000000000001b24:  R_AARCH64_CALL26	fwnode_property_read_string
    1b28: d1006273     	sub	x19, x19, #0x18
    1b2c: aa1403e0     	mov	x0, x20
    1b30: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001b30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57a
    1b34: 91000021     	add	x1, x1, #0x0
		0000000000001b34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57a
    1b38: aa1303e2     	mov	x2, x19
    1b3c: 52800023     	mov	w3, #0x1                // =1
    1b40: 94000000     	bl	0x1b40 <gpio_keys_probe+0xa2c>
		0000000000001b40:  R_AARCH64_CALL26	fwnode_property_read_u32_array
    1b44: 34000160     	cbz	w0, 0x1b70 <gpio_keys_probe+0xa5c>
    1b48: f10062e8     	subs	x8, x23, #0x18
    1b4c: 54001e24     	b.mi	0x1f10 <gpio_keys_probe+0xdfc>
    1b50: eb0802bf     	cmp	x21, x8
    1b54: 54001de9     	b.ls	0x1f10 <gpio_keys_probe+0xdfc>
    1b58: d10062e8     	sub	x8, x23, #0x18
    1b5c: b7f81da8     	tbnz	x8, #0x3f, 0x1f10 <gpio_keys_probe+0xdfc>
    1b60: eb0802bf     	cmp	x21, x8
    1b64: 54001d69     	b.ls	0x1f10 <gpio_keys_probe+0xdfc>
    1b68: 52800028     	mov	w8, #0x1                // =1
    1b6c: b9000268     	str	w8, [x19]
    1b70: aa1403e0     	mov	x0, x20
    1b74: aa1a03e1     	mov	x1, x26
    1b78: 94000000     	bl	0x1b78 <gpio_keys_probe+0xa64>
		0000000000001b78:  R_AARCH64_CALL26	fwnode_property_present
    1b7c: 36000060     	tbz	w0, #0x0, 0x1b88 <gpio_keys_probe+0xa74>
    1b80: 52800020     	mov	w0, #0x1                // =1
    1b84: 14000005     	b	0x1b98 <gpio_keys_probe+0xa84>
    1b88: aa1403e0     	mov	x0, x20
    1b8c: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001b8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24e
    1b90: 91000021     	add	x1, x1, #0x0
		0000000000001b90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24e
    1b94: 94000000     	bl	0x1b94 <gpio_keys_probe+0xa80>
		0000000000001b94:  R_AARCH64_CALL26	fwnode_property_present
    1b98: f10052e8     	subs	x8, x23, #0x14
    1b9c: 54001ba4     	b.mi	0x1f10 <gpio_keys_probe+0xdfc>
    1ba0: eb0802bf     	cmp	x21, x8
    1ba4: 54001b63     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    1ba8: f10052e8     	subs	x8, x23, #0x14
    1bac: 54001b24     	b.mi	0x1f10 <gpio_keys_probe+0xdfc>
    1bb0: eb0802bf     	cmp	x21, x8
    1bb4: 54001ae3     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    1bb8: 8b170309     	add	x9, x24, x23
    1bbc: 12000008     	and	w8, w0, #0x1
    1bc0: aa1403e0     	mov	x0, x20
    1bc4: d1004122     	sub	x2, x9, #0x10
    1bc8: aa1b03e1     	mov	x1, x27
    1bcc: 52800023     	mov	w3, #0x1                // =1
    1bd0: b81ec128     	stur	w8, [x9, #-0x14]
    1bd4: 94000000     	bl	0x1bd4 <gpio_keys_probe+0xac0>
		0000000000001bd4:  R_AARCH64_CALL26	fwnode_property_read_u32_array
    1bd8: aa1403e0     	mov	x0, x20
    1bdc: aa1c03e1     	mov	x1, x28
    1be0: 94000000     	bl	0x1be0 <gpio_keys_probe+0xacc>
		0000000000001be0:  R_AARCH64_CALL26	fwnode_property_present
    1be4: f10022e8     	subs	x8, x23, #0x8
    1be8: 54001944     	b.mi	0x1f10 <gpio_keys_probe+0xdfc>
    1bec: eb0802bf     	cmp	x21, x8
    1bf0: 54001909     	b.ls	0x1f10 <gpio_keys_probe+0xdfc>
    1bf4: f10022e8     	subs	x8, x23, #0x8
    1bf8: 540018c4     	b.mi	0x1f10 <gpio_keys_probe+0xdfc>
    1bfc: eb0802bf     	cmp	x21, x8
    1c00: 54001889     	b.ls	0x1f10 <gpio_keys_probe+0xdfc>
    1c04: 8b170308     	add	x8, x24, x23
    1c08: 12000009     	and	w9, w0, #0x1
    1c0c: aa1403e0     	mov	x0, x20
    1c10: d1003113     	sub	x19, x8, #0xc
    1c14: aa1603e1     	mov	x1, x22
    1c18: 52800023     	mov	w3, #0x1                // =1
    1c1c: aa1303e2     	mov	x2, x19
    1c20: 381f8109     	sturb	w9, [x8, #-0x8]
    1c24: 94000000     	bl	0x1c24 <gpio_keys_probe+0xb10>
		0000000000001c24:  R_AARCH64_CALL26	fwnode_property_read_u32_array
    1c28: 34fff2a0     	cbz	w0, 0x1a7c <gpio_keys_probe+0x968>
    1c2c: d10032e8     	sub	x8, x23, #0xc
    1c30: eb0802bf     	cmp	x21, x8
    1c34: 540016e3     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    1c38: b7f816c8     	tbnz	x8, #0x3f, 0x1f10 <gpio_keys_probe+0xdfc>
    1c3c: eb0802bf     	cmp	x21, x8
    1c40: 54001683     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    1c44: 528000a8     	mov	w8, #0x5                // =5
    1c48: b9000268     	str	w8, [x19]
    1c4c: 17ffff8c     	b	0x1a7c <gpio_keys_probe+0x968>
    1c50: 12800174     	mov	w20, #-0xc              // =-12
    1c54: 140000a0     	b	0x1ed4 <gpio_keys_probe+0xdc0>
    1c58: b40001e1     	cbz	x1, 0x1c94 <gpio_keys_probe+0xb80>
    1c5c: b140043f     	cmn	x1, #0x1, lsl #12       // =0x1000
    1c60: 540001a8     	b.hi	0x1c94 <gpio_keys_probe+0xb80>
    1c64: f9400428     	ldr	x8, [x1, #0x8]
    1c68: b4000168     	cbz	x8, 0x1c94 <gpio_keys_probe+0xb80>
    1c6c: f9400508     	ldr	x8, [x8, #0x8]
    1c70: b4000128     	cbz	x8, 0x1c94 <gpio_keys_probe+0xb80>
    1c74: aa0103e0     	mov	x0, x1
    1c78: b85fc110     	ldur	w16, [x8, #-0x4]
    1c7c: 729f8df1     	movk	w17, #0xfc6f
    1c80: 72bb34f1     	movk	w17, #0xd9a7, lsl #16
    1c84: 6b11021f     	cmp	w16, w17
    1c88: 54000040     	b.eq	0x1c90 <gpio_keys_probe+0xb7c>
    1c8c: d4304500     	brk	#0x8228
    1c90: d63f0100     	blr	x8
    1c94: f85c83a0     	ldur	x0, [x29, #-0x38]
    1c98: 94000000     	bl	0x1c98 <gpio_keys_probe+0xb84>
		0000000000001c98:  R_AARCH64_CALL26	input_register_device
    1c9c: 350004e0     	cbnz	w0, 0x1d38 <gpio_keys_probe+0xc24>
    1ca0: 34000155     	cbz	w21, 0x1cc8 <gpio_keys_probe+0xbb4>
    1ca4: aa1703e0     	mov	x0, x23
    1ca8: 52800021     	mov	w1, #0x1                // =1
    1cac: 94000000     	bl	0x1cac <gpio_keys_probe+0xb98>
		0000000000001cac:  R_AARCH64_CALL26	device_set_wakeup_capable
    1cb0: aa1703e0     	mov	x0, x23
    1cb4: 94000000     	bl	0x1cb4 <gpio_keys_probe+0xba0>
		0000000000001cb4:  R_AARCH64_CALL26	device_wakeup_enable
    1cb8: 14000009     	b	0x1cdc <gpio_keys_probe+0xbc8>
    1cbc: aa1503e0     	mov	x0, x21
    1cc0: 94000000     	bl	0x1cc0 <gpio_keys_probe+0xbac>
		0000000000001cc0:  R_AARCH64_CALL26	input_register_device
    1cc4: 350003a0     	cbnz	w0, 0x1d38 <gpio_keys_probe+0xc24>
    1cc8: aa1703e0     	mov	x0, x23
    1ccc: 94000000     	bl	0x1ccc <gpio_keys_probe+0xbb8>
		0000000000001ccc:  R_AARCH64_CALL26	device_wakeup_disable
    1cd0: aa1703e0     	mov	x0, x23
    1cd4: 2a1f03e1     	mov	w1, wzr
    1cd8: 94000000     	bl	0x1cd8 <gpio_keys_probe+0xbc4>
		0000000000001cd8:  R_AARCH64_CALL26	device_set_wakeup_capable
    1cdc: 2a1f03f4     	mov	w20, wzr
    1ce0: 1400007d     	b	0x1ed4 <gpio_keys_probe+0xdc0>
    1ce4: f94023fa     	ldr	x26, [sp, #0x40]
    1ce8: b13fff1f     	cmn	x24, #0xfff
    1cec: aa1903f7     	mov	x23, x25
    1cf0: 54ffa323     	b.lo	0x1154 <gpio_keys_probe+0x40>
    1cf4: 2a1803f4     	mov	w20, w24
    1cf8: 14000077     	b	0x1ed4 <gpio_keys_probe+0xdc0>
    1cfc: 92800258     	mov	x24, #-0x13             // =-19
    1d00: 2a1803f4     	mov	w20, w24
    1d04: 14000074     	b	0x1ed4 <gpio_keys_probe+0xdc0>
    1d08: 92800178     	mov	x24, #-0xc              // =-12
    1d0c: 2a1803f4     	mov	w20, w24
    1d10: 14000071     	b	0x1ed4 <gpio_keys_probe+0xdc0>
    1d14: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001d14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x208
    1d18: 91000021     	add	x1, x1, #0x0
		0000000000001d18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x208
    1d1c: 14000003     	b	0x1d28 <gpio_keys_probe+0xc14>
    1d20: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001d20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb7
    1d24: 91000021     	add	x1, x1, #0x0
		0000000000001d24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb7
    1d28: aa1703e0     	mov	x0, x23
    1d2c: 94000000     	bl	0x1d2c <gpio_keys_probe+0xc18>
		0000000000001d2c:  R_AARCH64_CALL26	_dev_err
    1d30: 12800174     	mov	w20, #-0xc              // =-12
    1d34: 14000068     	b	0x1ed4 <gpio_keys_probe+0xdc0>
    1d38: 2a0003f4     	mov	w20, w0
    1d3c: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001d3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x222
    1d40: 91000021     	add	x1, x1, #0x0
		0000000000001d40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x222
    1d44: aa1703e0     	mov	x0, x23
    1d48: 2a1403e2     	mov	w2, w20
    1d4c: 94000000     	bl	0x1d4c <gpio_keys_probe+0xc38>
		0000000000001d4c:  R_AARCH64_CALL26	_dev_err
    1d50: 14000061     	b	0x1ed4 <gpio_keys_probe+0xdc0>
    1d54: 2a0003f4     	mov	w20, w0
    1d58: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001d58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x61e
    1d5c: 91000021     	add	x1, x1, #0x0
		0000000000001d5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x61e
    1d60: aa1703e0     	mov	x0, x23
    1d64: 2a1403e2     	mov	w2, w20
    1d68: 94000000     	bl	0x1d68 <gpio_keys_probe+0xc54>
		0000000000001d68:  R_AARCH64_CALL26	_dev_err
    1d6c: 1400003f     	b	0x1e68 <gpio_keys_probe+0xd54>
    1d70: a97e2ba8     	ldp	x8, x10, [x29, #-0x20]
    1d74: 91041149     	add	x9, x10, #0x104
    1d78: eb090108     	subs	x8, x8, x9
    1d7c: b7f80ca9     	tbnz	x9, #0x3f, 0x1f10 <gpio_keys_probe+0xdfc>
    1d80: 54000c83     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    1d84: f100111f     	cmp	x8, #0x4
    1d88: 54000c43     	b.lo	0x1f10 <gpio_keys_probe+0xdfc>
    1d8c: b940bea2     	ldr	w2, [x21, #0xbc]
    1d90: 2a0003f4     	mov	w20, w0
    1d94: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001d94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x280
    1d98: 91000021     	add	x1, x1, #0x0
		0000000000001d98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x280
    1d9c: 14000030     	b	0x1e5c <gpio_keys_probe+0xd48>
    1da0: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001da0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e4
    1da4: 91000021     	add	x1, x1, #0x0
		0000000000001da4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e4
    1da8: aa1703e0     	mov	x0, x23
    1dac: f85d83a2     	ldur	x2, [x29, #-0x28]
    1db0: 94000000     	bl	0x1db0 <gpio_keys_probe+0xc9c>
		0000000000001db0:  R_AARCH64_CALL26	_dev_err
    1db4: 128002b4     	mov	w20, #-0x16             // =-22
    1db8: 14000047     	b	0x1ed4 <gpio_keys_probe+0xdc0>
    1dbc: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001dbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x119
    1dc0: 91000021     	add	x1, x1, #0x0
		0000000000001dc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x119
    1dc4: 14000003     	b	0x1dd0 <gpio_keys_probe+0xcbc>
    1dc8: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001dc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14e
    1dcc: 91000021     	add	x1, x1, #0x0
		0000000000001dcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14e
    1dd0: aa1703e0     	mov	x0, x23
    1dd4: 94000000     	bl	0x1dd4 <gpio_keys_probe+0xcc0>
		0000000000001dd4:  R_AARCH64_CALL26	_dev_err
    1dd8: 128002b4     	mov	w20, #-0x16             // =-22
    1ddc: 14000023     	b	0x1e68 <gpio_keys_probe+0xd54>
    1de0: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001de0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d3
    1de4: 91000021     	add	x1, x1, #0x0
		0000000000001de4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d3
    1de8: aa1903e0     	mov	x0, x25
    1dec: 94000000     	bl	0x1dec <gpio_keys_probe+0xcd8>
		0000000000001dec:  R_AARCH64_CALL26	_dev_err
    1df0: b140069f     	cmn	x20, #0x1, lsl #12      // =0x1000
    1df4: 540001a8     	b.hi	0x1e28 <gpio_keys_probe+0xd14>
    1df8: f9400688     	ldr	x8, [x20, #0x8]
    1dfc: b4000168     	cbz	x8, 0x1e28 <gpio_keys_probe+0xd14>
    1e00: f9400508     	ldr	x8, [x8, #0x8]
    1e04: b4000128     	cbz	x8, 0x1e28 <gpio_keys_probe+0xd14>
    1e08: aa1403e0     	mov	x0, x20
    1e0c: b85fc110     	ldur	w16, [x8, #-0x4]
    1e10: 729f8df1     	movk	w17, #0xfc6f
    1e14: 72bb34f1     	movk	w17, #0xd9a7, lsl #16
    1e18: 6b11021f     	cmp	w16, w17
    1e1c: 54000040     	b.eq	0x1e24 <gpio_keys_probe+0xd10>
    1e20: d4304500     	brk	#0x8228
    1e24: d63f0100     	blr	x8
    1e28: 928002b8     	mov	x24, #-0x16             // =-22
    1e2c: 2a1803f4     	mov	w20, w24
    1e30: 14000029     	b	0x1ed4 <gpio_keys_probe+0xdc0>
    1e34: 2a0003f4     	mov	w20, w0
    1e38: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001e38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa
    1e3c: 91000021     	add	x1, x1, #0x0
		0000000000001e3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa
    1e40: aa1703e0     	mov	x0, x23
    1e44: 2a1403e3     	mov	w3, w20
    1e48: 94000000     	bl	0x1e48 <gpio_keys_probe+0xd34>
		0000000000001e48:  R_AARCH64_CALL26	_dev_err
    1e4c: 1400001d     	b	0x1ec0 <gpio_keys_probe+0xdac>
    1e50: b9400722     	ldr	w2, [x25, #0x4]
    1e54: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001e54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3eb
    1e58: 91000021     	add	x1, x1, #0x0
		0000000000001e58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3eb
    1e5c: aa1703e0     	mov	x0, x23
    1e60: 2a1403e3     	mov	w3, w20
    1e64: 94000000     	bl	0x1e64 <gpio_keys_probe+0xd50>
		0000000000001e64:  R_AARCH64_CALL26	_dev_err
    1e68: 90000000     	adrp	x0, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001e68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x512
    1e6c: 91000000     	add	x0, x0, #0x0
		0000000000001e6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x512
    1e70: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001e70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x502
    1e74: 91000021     	add	x1, x1, #0x0
		0000000000001e74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x502
    1e78: 94000000     	bl	0x1e78 <gpio_keys_probe+0xd64>
		0000000000001e78:  R_AARCH64_CALL26	_printk
    1e7c: f9401be0     	ldr	x0, [sp, #0x30]
    1e80: b40002a0     	cbz	x0, 0x1ed4 <gpio_keys_probe+0xdc0>
    1e84: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    1e88: 54000268     	b.hi	0x1ed4 <gpio_keys_probe+0xdc0>
    1e8c: f9400408     	ldr	x8, [x0, #0x8]
    1e90: b4000228     	cbz	x8, 0x1ed4 <gpio_keys_probe+0xdc0>
    1e94: f9400508     	ldr	x8, [x8, #0x8]
    1e98: b40001e8     	cbz	x8, 0x1ed4 <gpio_keys_probe+0xdc0>
    1e9c: b85fc110     	ldur	w16, [x8, #-0x4]
    1ea0: 729f8df1     	movk	w17, #0xfc6f
    1ea4: 72bb34f1     	movk	w17, #0xd9a7, lsl #16
    1ea8: 6b11021f     	cmp	w16, w17
    1eac: 54000040     	b.eq	0x1eb4 <gpio_keys_probe+0xda0>
    1eb0: d4304500     	brk	#0x8228
    1eb4: d63f0100     	blr	x8
    1eb8: 14000007     	b	0x1ed4 <gpio_keys_probe+0xdc0>
    1ebc: 128002b4     	mov	w20, #-0x16             // =-22
    1ec0: 90000000     	adrp	x0, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001ec0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x512
    1ec4: 91000000     	add	x0, x0, #0x0
		0000000000001ec4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x512
    1ec8: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x40>
		0000000000001ec8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x502
    1ecc: 91000021     	add	x1, x1, #0x0
		0000000000001ecc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x502
    1ed0: 94000000     	bl	0x1ed0 <gpio_keys_probe+0xdbc>
		0000000000001ed0:  R_AARCH64_CALL26	_printk
    1ed4: d5384108     	mrs	x8, SP_EL0
    1ed8: f9438908     	ldr	x8, [x8, #0x710]
    1edc: f85f83a9     	ldur	x9, [x29, #-0x8]
    1ee0: eb09011f     	cmp	x8, x9
    1ee4: 540001e1     	b.ne	0x1f20 <gpio_keys_probe+0xe0c>
    1ee8: 2a1403e0     	mov	w0, w20
    1eec: a94d4ff4     	ldp	x20, x19, [sp, #0xd0]
    1ef0: a94c57f6     	ldp	x22, x21, [sp, #0xc0]
    1ef4: a94b5ff8     	ldp	x24, x23, [sp, #0xb0]
    1ef8: a94a67fa     	ldp	x26, x25, [sp, #0xa0]
    1efc: a9496ffc     	ldp	x28, x27, [sp, #0x90]
    1f00: a9487bfd     	ldp	x29, x30, [sp, #0x80]
    1f04: 910383ff     	add	sp, sp, #0xe0
    1f08: d50323bf     	autiasp
    1f0c: d65f03c0     	ret
    1f10: d4200020     	brk	#0x1
    1f14: f900229f     	str	xzr, [x20, #0x40]
    1f18: 12800174     	mov	w20, #-0xc              // =-12
    1f1c: 17ffffee     	b	0x1ed4 <gpio_keys_probe+0xdc0>
    1f20: 94000000     	bl	0x1f20 <gpio_keys_probe+0xe0c>
		0000000000001f20:  R_AARCH64_CALL26	__stack_chk_fail
