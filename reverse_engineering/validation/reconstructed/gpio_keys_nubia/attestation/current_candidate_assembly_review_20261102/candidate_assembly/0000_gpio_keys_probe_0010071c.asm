
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000010c8 <gpio_keys_probe>:
    10c8: d503233f     	paciasp
    10cc: d10383ff     	sub	sp, sp, #0xe0
    10d0: a9087bfd     	stp	x29, x30, [sp, #0x80]
    10d4: a9096ffc     	stp	x28, x27, [sp, #0x90]
    10d8: a90a67fa     	stp	x26, x25, [sp, #0xa0]
    10dc: a90b5ff8     	stp	x24, x23, [sp, #0xb0]
    10e0: a90c57f6     	stp	x22, x21, [sp, #0xc0]
    10e4: a90d4ff4     	stp	x20, x19, [sp, #0xd0]
    10e8: 910203fd     	add	x29, sp, #0x80
    10ec: d5384108     	mrs	x8, SP_EL0
    10f0: aa0003fa     	mov	x26, x0
    10f4: 91004017     	add	x23, x0, #0x10
    10f8: f9438908     	ldr	x8, [x8, #0x710]
    10fc: f81f83a8     	stur	x8, [x29, #-0x8]
    1100: f9405018     	ldr	x24, [x0, #0xa0]
    1104: b4004318     	cbz	x24, 0x1964 <gpio_keys_probe+0x89c>
    1108: b9800b08     	ldrsw	x8, [x24, #0x8]
    110c: 52802209     	mov	w9, #0x110              // =272
    1110: aa1703e0     	mov	x0, x23
    1114: 5281b802     	mov	w2, #0xdc0              // =3520
    1118: 9bc97d09     	umulh	x9, x8, x9
    111c: 8b081108     	add	x8, x8, x8, lsl #4
    1120: d37ced08     	lsl	x8, x8, #4
    1124: b1012108     	adds	x8, x8, #0x48
    1128: da9f3108     	csinv	x8, x8, xzr, lo
    112c: eb0903ff     	cmp	xzr, x9
    1130: da9f0113     	csinv	x19, x8, xzr, eq
    1134: aa1303e1     	mov	x1, x19
    1138: 94000000     	bl	0x1138 <gpio_keys_probe+0x70>
		0000000000001138:  R_AARCH64_CALL26	devm_kmalloc
    113c: b4005c60     	cbz	x0, 0x1cc8 <gpio_keys_probe+0xc00>
    1140: b9400b08     	ldr	w8, [x24, #0x8]
    1144: aa0003f4     	mov	x20, x0
    1148: 37f86c08     	tbnz	w8, #0x1f, 0x1ec8 <gpio_keys_probe+0xe00>
    114c: d37ff901     	lsl	x1, x8, #1
    1150: aa1703e0     	mov	x0, x23
    1154: 5281b802     	mov	w2, #0xdc0              // =3520
    1158: 94000000     	bl	0x1158 <gpio_keys_probe+0x90>
		0000000000001158:  R_AARCH64_CALL26	devm_kmalloc
    115c: f9002280     	str	x0, [x20, #0x40]
    1160: b4005520     	cbz	x0, 0x1c04 <gpio_keys_probe+0xb3c>
    1164: aa1703e0     	mov	x0, x23
    1168: 94000000     	bl	0x1168 <gpio_keys_probe+0xa0>
		0000000000001168:  R_AARCH64_CALL26	devm_input_allocate_device
    116c: b4005b40     	cbz	x0, 0x1cd4 <gpio_keys_probe+0xc0c>
    1170: 927df268     	and	x8, x19, #0xfffffffffffffff8
    1174: f9000298     	str	x24, [x20]
    1178: f100211f     	cmp	x8, #0x8
    117c: 54006a40     	b.eq	0x1ec4 <gpio_keys_probe+0xdfc>
    1180: aa0003f5     	mov	x21, x0
    1184: f9000680     	str	x0, [x20, #0x8]
    1188: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001188:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3be
    118c: 91000021     	add	x1, x1, #0x0
		000000000000118c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3be
    1190: 90000002     	adrp	x2, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001190:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
    1194: 91000042     	add	x2, x2, #0x0
		0000000000001194:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x8
    1198: 91004280     	add	x0, x20, #0x10
    119c: 94000000     	bl	0x119c <gpio_keys_probe+0xd4>
		000000000000119c:  R_AARCH64_CALL26	__mutex_init
    11a0: f9005754     	str	x20, [x26, #0xa8]
    11a4: f90166b4     	str	x20, [x21, #0x2c8]
    11a8: f9401708     	ldr	x8, [x24, #0x28]
    11ac: b5000048     	cbnz	x8, 0x11b4 <gpio_keys_probe+0xec>
    11b0: f9400348     	ldr	x8, [x26]
    11b4: 90000009     	adrp	x9, 0x1000 <gpio_keys_irq_isr+0x8c>
		00000000000011b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x66b
    11b8: 91000129     	add	x9, x9, #0x0
		00000000000011b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x66b
    11bc: f9014ab7     	str	x23, [x21, #0x290]
    11c0: a90026a8     	stp	x8, x9, [x21]
    11c4: 90000008     	adrp	x8, 0x1000 <gpio_keys_irq_isr+0x8c>
		00000000000011c4:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_open
    11c8: 91000108     	add	x8, x8, #0x0
		00000000000011c8:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_open
    11cc: 90000009     	adrp	x9, 0x1000 <gpio_keys_irq_isr+0x8c>
		00000000000011cc:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_close
    11d0: 91000129     	add	x9, x9, #0x0
		00000000000011d0:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_close
    11d4: a91ca6a8     	stp	x8, x9, [x21, #0x1c8]
    11d8: b20083e8     	mov	x8, #0x1000100010001    // =281479271743489
    11dc: f2800328     	movk	x8, #0x19
    11e0: f2e02008     	movk	x8, #0x100, lsl #48
    11e4: f9000ea8     	str	x8, [x21, #0x18]
    11e8: f9402288     	ldr	x8, [x20, #0x40]
    11ec: f90072a8     	str	x8, [x21, #0xe0]
    11f0: 52800048     	mov	w8, #0x2                // =2
    11f4: b900daa8     	str	w8, [x21, #0xd8]
    11f8: b9400b08     	ldr	w8, [x24, #0x8]
    11fc: b900d6a8     	str	w8, [x21, #0xd4]
    1200: 39404308     	ldrb	w8, [x24, #0x10]
    1204: 36000088     	tbz	w8, #0x0, 0x1214 <gpio_keys_probe+0x14c>
    1208: f94016a8     	ldr	x8, [x21, #0x28]
    120c: b26c0108     	orr	x8, x8, #0x100000
    1210: f90016a8     	str	x8, [x21, #0x28]
    1214: b9400b08     	ldr	w8, [x24, #0x8]
    1218: 7100051f     	cmp	w8, #0x1
    121c: 540052ab     	b.lt	0x1c70 <gpio_keys_probe+0xba8>
    1220: f81c83b5     	stur	x21, [x29, #-0x38]
    1224: 2a1f03f5     	mov	w21, wzr
    1228: aa1f03e1     	mov	x1, xzr
    122c: 9000001b     	adrp	x27, 0x1000 <gpio_keys_irq_isr+0x8c>
		000000000000122c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x538
    1230: 9100037b     	add	x27, x27, #0x0
		0000000000001230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x538
    1234: 9000001c     	adrp	x28, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001234:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e7
    1238: 9100039c     	add	x28, x28, #0x0
		0000000000001238:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e7
    123c: 91012288     	add	x8, x20, #0x48
    1240: 90000016     	adrp	x22, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001240:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c8
    1244: 910002d6     	add	x22, x22, #0x0
		0000000000001244:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c8
    1248: a93dcfbf     	stp	xzr, x19, [x29, #-0x28]
    124c: a900d3f7     	stp	x23, x20, [sp, #0x8]
    1250: f90013e8     	str	x8, [sp, #0x20]
    1254: f90023fa     	str	x26, [sp, #0x40]
    1258: f9405348     	ldr	x8, [x26, #0xa0]
    125c: f9400313     	ldr	x19, [x24]
    1260: b50000e8     	cbnz	x8, 0x127c <gpio_keys_probe+0x1b4>
    1264: aa1703e0     	mov	x0, x23
    1268: 94000000     	bl	0x1268 <gpio_keys_probe+0x1a0>
		0000000000001268:  R_AARCH64_CALL26	device_get_next_child_node
    126c: f85e03b4     	ldur	x20, [x29, #-0x20]
    1270: aa0003e1     	mov	x1, x0
    1274: b5000060     	cbnz	x0, 0x1280 <gpio_keys_probe+0x1b8>
    1278: 140002b7     	b	0x1d54 <gpio_keys_probe+0xc8c>
    127c: f85e03b4     	ldur	x20, [x29, #-0x20]
    1280: f85d83a8     	ldur	x8, [x29, #-0x28]
    1284: 52800709     	mov	w9, #0x38               // =56
    1288: b9002ff5     	str	w21, [sp, #0x2c]
    128c: 9b094d19     	madd	x25, x8, x9, x19
    1290: 8b081108     	add	x8, x8, x8, lsl #4
    1294: d37ced0a     	lsl	x10, x8, #4
    1298: 90000008     	adrp	x8, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001298:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b8
    129c: 91000108     	add	x8, x8, #0x0
		000000000000129c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b8
    12a0: f81e83aa     	stur	x10, [x29, #-0x18]
    12a4: f9400b29     	ldr	x9, [x25, #0x10]
    12a8: f100013f     	cmp	x9, #0x0
    12ac: 9a890108     	csel	x8, x8, x9, eq
    12b0: f81d03a8     	stur	x8, [x29, #-0x30]
    12b4: b1014148     	adds	x8, x10, #0x50
    12b8: 54006064     	b.mi	0x1ec4 <gpio_keys_probe+0xdfc>
    12bc: eb08029f     	cmp	x20, x8
    12c0: 54006023     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    12c4: f85e83aa     	ldur	x10, [x29, #-0x18]
    12c8: f94013e8     	ldr	x8, [sp, #0x20]
    12cc: 91012149     	add	x9, x10, #0x48
    12d0: 8b0a0115     	add	x21, x8, x10
    12d4: f85c83aa     	ldur	x10, [x29, #-0x38]
    12d8: eb090288     	subs	x8, x20, x9
    12dc: f90006aa     	str	x10, [x21, #0x8]
    12e0: b7f85f29     	tbnz	x9, #0x3f, 0x1ec4 <gpio_keys_probe+0xdfc>
    12e4: 54005f03     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    12e8: f100211f     	cmp	x8, #0x8
    12ec: 54005ec3     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    12f0: f85e83a8     	ldur	x8, [x29, #-0x18]
    12f4: f90002b9     	str	x25, [x21]
    12f8: 91053109     	add	x9, x8, #0x14c
    12fc: eb090288     	subs	x8, x20, x9
    1300: b7f85e29     	tbnz	x9, #0x3f, 0x1ec4 <gpio_keys_probe+0xdfc>
    1304: 54005e03     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1308: f100111f     	cmp	x8, #0x4
    130c: 54005dc3     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1310: b90106bf     	str	wzr, [x21, #0x104]
    1314: f9001be1     	str	x1, [sp, #0x30]
    1318: b5000301     	cbnz	x1, 0x1378 <gpio_keys_probe+0x2b0>
    131c: b9400721     	ldr	w1, [x25, #0x4]
    1320: 37f80641     	tbnz	w1, #0x1f, 0x13e8 <gpio_keys_probe+0x320>
    1324: b9400b28     	ldr	w8, [x25, #0x8]
    1328: f85d03a3     	ldur	x3, [x29, #-0x30]
    132c: aa1703e0     	mov	x0, x23
    1330: 7100011f     	cmp	w8, #0x0
    1334: 528000a8     	mov	w8, #0x5                // =5
    1338: 9a9f1502     	csinc	x2, x8, xzr, ne
    133c: 94000000     	bl	0x133c <gpio_keys_probe+0x274>
		000000000000133c:  R_AARCH64_CALL26	devm_gpio_request_one
    1340: b9400722     	ldr	w2, [x25, #0x4]
    1344: 37f85520     	tbnz	w0, #0x1f, 0x1de8 <gpio_keys_probe+0xd20>
    1348: 2a0203e0     	mov	w0, w2
    134c: 94000000     	bl	0x134c <gpio_keys_probe+0x284>
		000000000000134c:  R_AARCH64_CALL26	gpio_to_desc
    1350: a97e2ba8     	ldp	x8, x10, [x29, #-0x20]
    1354: 91016149     	add	x9, x10, #0x58
    1358: eb090108     	subs	x8, x8, x9
    135c: b7f85b49     	tbnz	x9, #0x3f, 0x1ec4 <gpio_keys_probe+0xdfc>
    1360: 54005b23     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1364: f100211f     	cmp	x8, #0x8
    1368: 54005ae3     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    136c: f9000aa0     	str	x0, [x21, #0x10]
    1370: b50004e0     	cbnz	x0, 0x140c <gpio_keys_probe+0x344>
    1374: 140002bf     	b	0x1e70 <gpio_keys_probe+0xda8>
    1378: f85d03a5     	ldur	x5, [x29, #-0x30]
    137c: aa1703e0     	mov	x0, x23
    1380: aa1f03e2     	mov	x2, xzr
    1384: 2a1f03e3     	mov	w3, wzr
    1388: 52800024     	mov	w4, #0x1                // =1
    138c: 94000000     	bl	0x138c <gpio_keys_probe+0x2c4>
		000000000000138c:  R_AARCH64_CALL26	devm_fwnode_gpiod_get_index
    1390: f85e83a8     	ldur	x8, [x29, #-0x18]
    1394: 91016108     	add	x8, x8, #0x58
    1398: eb080289     	subs	x9, x20, x8
    139c: b7f85948     	tbnz	x8, #0x3f, 0x1ec4 <gpio_keys_probe+0xdfc>
    13a0: 54005923     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    13a4: f100213f     	cmp	x9, #0x8
    13a8: 540058e3     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    13ac: aa0003f4     	mov	x20, x0
    13b0: b13ffc1f     	cmn	x0, #0xfff
    13b4: f9000aa0     	str	x0, [x21, #0x10]
    13b8: 54000283     	b.lo	0x1408 <gpio_keys_probe+0x340>
    13bc: 31000a9f     	cmn	w20, #0x2
    13c0: 54001500     	b.eq	0x1660 <gpio_keys_probe+0x598>
    13c4: 3108169f     	cmn	w20, #0x205
    13c8: 540052a0     	b.eq	0x1e1c <gpio_keys_probe+0xd54>
    13cc: aa1703e0     	mov	x0, x23
    13d0: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x8c>
		00000000000013d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30c
    13d4: 91000021     	add	x1, x1, #0x0
		00000000000013d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30c
    13d8: 2a1403e2     	mov	w2, w20
    13dc: 94000000     	bl	0x13dc <gpio_keys_probe+0x314>
		00000000000013dc:  R_AARCH64_CALL26	_dev_err
    13e0: 34002994     	cbz	w20, 0x1910 <gpio_keys_probe+0x848>
    13e4: 1400028e     	b	0x1e1c <gpio_keys_probe+0xd54>
    13e8: f85e83a8     	ldur	x8, [x29, #-0x18]
    13ec: 91016109     	add	x9, x8, #0x58
    13f0: eb090288     	subs	x8, x20, x9
    13f4: b7f85689     	tbnz	x9, #0x3f, 0x1ec4 <gpio_keys_probe+0xdfc>
    13f8: 54005663     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    13fc: f100211f     	cmp	x8, #0x8
    1400: 54005623     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1404: f9400ab4     	ldr	x20, [x21, #0x10]
    1408: b4001394     	cbz	x20, 0x1678 <gpio_keys_probe+0x5b0>
    140c: f9417f53     	ldr	x19, [x26, #0x2f8]
    1410: aa1f03e1     	mov	x1, xzr
    1414: f81f03bf     	stur	xzr, [x29, #-0x10]
    1418: aa1303e0     	mov	x0, x19
    141c: 94000000     	bl	0x141c <gpio_keys_probe+0x354>
		000000000000141c:  R_AARCH64_CALL26	of_get_next_child
    1420: b4000280     	cbz	x0, 0x1470 <gpio_keys_probe+0x3a8>
    1424: aa0003f4     	mov	x20, x0
    1428: d10043a2     	sub	x2, x29, #0x10
    142c: aa1403e0     	mov	x0, x20
    1430: aa1b03e1     	mov	x1, x27
    1434: 94000000     	bl	0x1434 <gpio_keys_probe+0x36c>
		0000000000001434:  R_AARCH64_CALL26	of_property_read_string
    1438: 37f801c0     	tbnz	w0, #0x1f, 0x1470 <gpio_keys_probe+0x3a8>
    143c: aa1403e0     	mov	x0, x20
    1440: aa1c03e1     	mov	x1, x28
    1444: 2a1f03e2     	mov	w2, wzr
    1448: 94000000     	bl	0x1448 <gpio_keys_probe+0x380>
		0000000000001448:  R_AARCH64_CALL26	of_get_named_gpio
    144c: f85f03a0     	ldur	x0, [x29, #-0x10]
    1450: f9400b21     	ldr	x1, [x25, #0x10]
    1454: 94000000     	bl	0x1454 <gpio_keys_probe+0x38c>
		0000000000001454:  R_AARCH64_CALL26	strcmp
    1458: 34002740     	cbz	w0, 0x1940 <gpio_keys_probe+0x878>
    145c: aa1303e0     	mov	x0, x19
    1460: aa1403e1     	mov	x1, x20
    1464: 94000000     	bl	0x1464 <gpio_keys_probe+0x39c>
		0000000000001464:  R_AARCH64_CALL26	of_get_next_child
    1468: aa0003f4     	mov	x20, x0
    146c: b5fffde0     	cbnz	x0, 0x1428 <gpio_keys_probe+0x360>
    1470: b9003bff     	str	wzr, [sp, #0x38]
    1474: a97e27b4     	ldp	x20, x9, [x29, #-0x20]
    1478: b9402728     	ldr	w8, [x25, #0x24]
    147c: 91016133     	add	x19, x9, #0x58
    1480: 34000248     	cbz	w8, 0x14c8 <gpio_keys_probe+0x400>
    1484: eb130289     	subs	x9, x20, x19
    1488: b7f851f3     	tbnz	x19, #0x3f, 0x1ec4 <gpio_keys_probe+0xdfc>
    148c: 540051c3     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1490: f100213f     	cmp	x9, #0x8
    1494: 54005183     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1498: 52807d09     	mov	w9, #0x3e8              // =1000
    149c: f9400aa0     	ldr	x0, [x21, #0x10]
    14a0: 1b097d01     	mul	w1, w8, w9
    14a4: 94000000     	bl	0x14a4 <gpio_keys_probe+0x3dc>
		00000000000014a4:  R_AARCH64_CALL26	gpiod_set_debounce
    14a8: 36f80100     	tbz	w0, #0x1f, 0x14c8 <gpio_keys_probe+0x400>
    14ac: f85e83a8     	ldur	x8, [x29, #-0x18]
    14b0: b1040108     	adds	x8, x8, #0x100
    14b4: 54005084     	b.mi	0x1ec4 <gpio_keys_probe+0xdfc>
    14b8: eb08029f     	cmp	x20, x8
    14bc: 54005043     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    14c0: b9402728     	ldr	w8, [x25, #0x24]
    14c4: b900baa8     	str	w8, [x21, #0xb8]
    14c8: b9403334     	ldr	w20, [x25, #0x30]
    14cc: 350001b4     	cbnz	w20, 0x1500 <gpio_keys_probe+0x438>
    14d0: f85e03a8     	ldur	x8, [x29, #-0x20]
    14d4: eb130108     	subs	x8, x8, x19
    14d8: b7f84f73     	tbnz	x19, #0x3f, 0x1ec4 <gpio_keys_probe+0xdfc>
    14dc: 54004f43     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    14e0: f100211f     	cmp	x8, #0x8
    14e4: 54004f03     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    14e8: f9400aa0     	ldr	x0, [x21, #0x10]
    14ec: 94000000     	bl	0x14ec <gpio_keys_probe+0x424>
		00000000000014ec:  R_AARCH64_CALL26	gpiod_to_irq
    14f0: 2a0003f4     	mov	w20, w0
    14f4: 37f84880     	tbnz	w0, #0x1f, 0x1e04 <gpio_keys_probe+0xd3c>
    14f8: 2a1403fa     	mov	w26, w20
    14fc: 14000002     	b	0x1504 <gpio_keys_probe+0x43c>
    1500: 1280001a     	mov	w26, #-0x1              // =-1
    1504: a97e27a8     	ldp	x8, x9, [x29, #-0x20]
    1508: 91041133     	add	x19, x9, #0x104
    150c: eb130108     	subs	x8, x8, x19
    1510: b7f84db3     	tbnz	x19, #0x3f, 0x1ec4 <gpio_keys_probe+0xdfc>
    1514: 54004d83     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1518: f100111f     	cmp	x8, #0x4
    151c: 54004d43     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1520: a97e2ba8     	ldp	x8, x10, [x29, #-0x20]
    1524: b900beb4     	str	w20, [x21, #0xbc]
    1528: 91026149     	add	x9, x10, #0x98
    152c: eb090108     	subs	x8, x8, x9
    1530: b7f84ca9     	tbnz	x9, #0x3f, 0x1ec4 <gpio_keys_probe+0xdfc>
    1534: 54004c83     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1538: f100211f     	cmp	x8, #0x8
    153c: 54004c43     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1540: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    1544: 910162a9     	add	x9, x21, #0x58
    1548: f9002aa8     	str	x8, [x21, #0x50]
    154c: a97e23b4     	ldp	x20, x8, [x29, #-0x20]
    1550: f9002ea9     	str	x9, [x21, #0x58]
    1554: f90032a9     	str	x9, [x21, #0x60]
    1558: b102c108     	adds	x8, x8, #0xb0
    155c: 54004b44     	b.mi	0x1ec4 <gpio_keys_probe+0xdfc>
    1560: eb08029f     	cmp	x20, x8
    1564: 54004b03     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1568: 90000008     	adrp	x8, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001568:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_gpio_work_func
    156c: 91000108     	add	x8, x8, #0x0
		000000000000156c:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_gpio_work_func
    1570: 9101c2a0     	add	x0, x21, #0x70
    1574: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001574:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    1578: 91000021     	add	x1, x1, #0x0
		0000000000001578:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    157c: 52a00402     	mov	w2, #0x200000           // =2097152
    1580: aa1f03e3     	mov	x3, xzr
    1584: aa1f03e4     	mov	x4, xzr
    1588: f90036a8     	str	x8, [x21, #0x68]
    158c: 94000000     	bl	0x158c <gpio_keys_probe+0x4c4>
		000000000000158c:  R_AARCH64_CALL26	init_timer_key
    1590: eb130288     	subs	x8, x20, x19
    1594: 54004983     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1598: f100111f     	cmp	x8, #0x4
    159c: 54004943     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    15a0: f85e83a8     	ldur	x8, [x29, #-0x18]
    15a4: b9403bf3     	ldr	w19, [sp, #0x38]
    15a8: 91042109     	add	x9, x8, #0x108
    15ac: eb090288     	subs	x8, x20, x9
    15b0: b7f848a9     	tbnz	x9, #0x3f, 0x1ec4 <gpio_keys_probe+0xdfc>
    15b4: 54004883     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    15b8: f100111f     	cmp	x8, #0x4
    15bc: 54004843     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    15c0: 29578ea2     	ldp	w2, w3, [x21, #0xbc]
    15c4: b9403324     	ldr	w4, [x25, #0x30]
    15c8: 90000000     	adrp	x0, 0x1000 <gpio_keys_irq_isr+0x8c>
		00000000000015c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x682
    15cc: 91000000     	add	x0, x0, #0x0
		00000000000015cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x682
    15d0: 2a1a03e1     	mov	w1, w26
    15d4: 2a1303e5     	mov	w5, w19
    15d8: 94000000     	bl	0x15d8 <gpio_keys_probe+0x510>
		00000000000015d8:  R_AARCH64_CALL26	_printk
    15dc: b9402328     	ldr	w8, [x25, #0x20]
    15e0: 7100091f     	cmp	w8, #0x2
    15e4: 540001e0     	b.eq	0x1620 <gpio_keys_probe+0x558>
    15e8: f94023fa     	ldr	x26, [sp, #0x40]
    15ec: 7100051f     	cmp	w8, #0x1
    15f0: 54000301     	b.ne	0x1650 <gpio_keys_probe+0x588>
    15f4: f85e83a8     	ldur	x8, [x29, #-0x18]
    15f8: 91052109     	add	x9, x8, #0x148
    15fc: eb090288     	subs	x8, x20, x9
    1600: b7f84629     	tbnz	x9, #0x3f, 0x1ec4 <gpio_keys_probe+0xdfc>
    1604: 54004603     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1608: f100111f     	cmp	x8, #0x4
    160c: 540045c3     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1610: 7100027f     	cmp	w19, #0x0
    1614: 52800028     	mov	w8, #0x1                // =1
    1618: 1a880508     	cinc	w8, w8, ne
    161c: 1400000c     	b	0x164c <gpio_keys_probe+0x584>
    1620: f85e83a8     	ldur	x8, [x29, #-0x18]
    1624: f94023fa     	ldr	x26, [sp, #0x40]
    1628: 91052109     	add	x9, x8, #0x148
    162c: eb090288     	subs	x8, x20, x9
    1630: b7f844a9     	tbnz	x9, #0x3f, 0x1ec4 <gpio_keys_probe+0xdfc>
    1634: 54004483     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1638: f100111f     	cmp	x8, #0x4
    163c: 54004443     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1640: 7100027f     	cmp	w19, #0x0
    1644: 52800028     	mov	w8, #0x1                // =1
    1648: 1a881508     	cinc	w8, w8, eq
    164c: b90102a8     	str	w8, [x21, #0x100]
    1650: 90000008     	adrp	x8, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001650:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_gpio_isr
    1654: 91000108     	add	x8, x8, #0x0
		0000000000001654:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_gpio_isr
    1658: 52800073     	mov	w19, #0x3               // =3
    165c: 14000025     	b	0x16f0 <gpio_keys_probe+0x628>
    1660: f85e03a9     	ldur	x9, [x29, #-0x20]
    1664: eb080128     	subs	x8, x9, x8
    1668: 540042e3     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    166c: f100211f     	cmp	x8, #0x8
    1670: 540042a3     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1674: f9000abf     	str	xzr, [x21, #0x10]
    1678: b9403328     	ldr	w8, [x25, #0x30]
    167c: 340037a8     	cbz	w8, 0x1d70 <gpio_keys_probe+0xca8>
    1680: a97e27b4     	ldp	x20, x9, [x29, #-0x20]
    1684: 9104112a     	add	x10, x9, #0x104
    1688: eb0a0289     	subs	x9, x20, x10
    168c: b7f841ca     	tbnz	x10, #0x3f, 0x1ec4 <gpio_keys_probe+0xdfc>
    1690: 540041a3     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1694: f100113f     	cmp	x9, #0x4
    1698: 54004163     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    169c: b900bea8     	str	w8, [x21, #0xbc]
    16a0: b9401b28     	ldr	w8, [x25, #0x18]
    16a4: 7100091f     	cmp	w8, #0x2
    16a8: 540036a2     	b.hs	0x1d7c <gpio_keys_probe+0xcb4>
    16ac: f85e83a8     	ldur	x8, [x29, #-0x18]
    16b0: b1024108     	adds	x8, x8, #0x90
    16b4: 54004084     	b.mi	0x1ec4 <gpio_keys_probe+0xdfc>
    16b8: eb08029f     	cmp	x20, x8
    16bc: 54004043     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    16c0: b9402728     	ldr	w8, [x25, #0x24]
    16c4: 910082a0     	add	x0, x21, #0x20
    16c8: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x8c>
		00000000000016c8:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_irq_timer
    16cc: 91000021     	add	x1, x1, #0x0
		00000000000016cc:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_irq_timer
    16d0: 2a1f03e2     	mov	w2, wzr
    16d4: aa1f03e3     	mov	x3, xzr
    16d8: aa1f03e4     	mov	x4, xzr
    16dc: b9004aa8     	str	w8, [x21, #0x48]
    16e0: 94000000     	bl	0x16e0 <gpio_keys_probe+0x618>
		00000000000016e0:  R_AARCH64_CALL26	init_timer_key
    16e4: aa1f03f3     	mov	x19, xzr
    16e8: 90000008     	adrp	x8, 0x1000 <gpio_keys_irq_isr+0x8c>
		00000000000016e8:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_irq_isr
    16ec: 91000108     	add	x8, x8, #0x0
		00000000000016ec:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_irq_isr
    16f0: f9001fe8     	str	x8, [sp, #0x38]
    16f4: f85e83a8     	ldur	x8, [x29, #-0x18]
    16f8: b1018108     	adds	x8, x8, #0x60
    16fc: 54003e44     	b.mi	0x1ec4 <gpio_keys_probe+0xdfc>
    1700: eb08029f     	cmp	x20, x8
    1704: 54003e03     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1708: f9400be8     	ldr	x8, [sp, #0x10]
    170c: f85d83aa     	ldur	x10, [x29, #-0x28]
    1710: f85c83a0     	ldur	x0, [x29, #-0x38]
    1714: f9402108     	ldr	x8, [x8, #0x40]
    1718: 8b0a0509     	add	x9, x8, x10, lsl #1
    171c: f9000ea9     	str	x9, [x21, #0x18]
    1720: b9400329     	ldr	w9, [x25]
    1724: 782a7909     	strh	w9, [x8, x10, lsl #1]
    1728: b9401b28     	ldr	w8, [x25, #0x18]
    172c: f9400ea9     	ldr	x9, [x21, #0x18]
    1730: 7100051f     	cmp	w8, #0x1
    1734: 79400122     	ldrh	w2, [x9]
    1738: 1a9f8501     	csinc	w1, w8, wzr, hi
    173c: 94000000     	bl	0x173c <gpio_keys_probe+0x674>
		000000000000173c:  R_AARCH64_CALL26	input_set_capability
    1740: aa1703e0     	mov	x0, x23
    1744: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001744:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_quiesce_key
    1748: 91000021     	add	x1, x1, #0x0
		0000000000001748:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_quiesce_key
    174c: aa1503e2     	mov	x2, x21
    1750: 90000003     	adrp	x3, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001750:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44d
    1754: 91000063     	add	x3, x3, #0x0
		0000000000001754:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44d
    1758: 94000000     	bl	0x1758 <gpio_keys_probe+0x690>
		0000000000001758:  R_AARCH64_CALL26	__devm_add_action
    175c: 35002d60     	cbnz	w0, 0x1d08 <gpio_keys_probe+0xc40>
    1760: 3940a328     	ldrb	w8, [x25, #0x28]
    1764: b2790269     	orr	x9, x19, #0x80
    1768: 7100011f     	cmp	w8, #0x0
    176c: a97e2fa8     	ldp	x8, x11, [x29, #-0x20]
    1770: 9a891263     	csel	x3, x19, x9, ne
    1774: 9104116a     	add	x10, x11, #0x104
    1778: eb0a0108     	subs	x8, x8, x10
    177c: b7f83a4a     	tbnz	x10, #0x3f, 0x1ec4 <gpio_keys_probe+0xdfc>
    1780: 54003a23     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1784: f100111f     	cmp	x8, #0x4
    1788: 540039e3     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    178c: b940bea1     	ldr	w1, [x21, #0xbc]
    1790: f9401fe2     	ldr	x2, [sp, #0x38]
    1794: aa1703e0     	mov	x0, x23
    1798: f85d03a4     	ldur	x4, [x29, #-0x30]
    179c: aa1503e5     	mov	x5, x21
    17a0: f9000fe3     	str	x3, [sp, #0x18]
    17a4: 94000000     	bl	0x17a4 <gpio_keys_probe+0x6dc>
		00000000000017a4:  R_AARCH64_CALL26	devm_request_any_context_irq
    17a8: 37f82be0     	tbnz	w0, #0x1f, 0x1d24 <gpio_keys_probe+0xc5c>
    17ac: f9417f54     	ldr	x20, [x26, #0x2f8]
    17b0: aa1f03e1     	mov	x1, xzr
    17b4: aa1403e0     	mov	x0, x20
    17b8: 94000000     	bl	0x17b8 <gpio_keys_probe+0x6f0>
		00000000000017b8:  R_AARCH64_CALL26	of_get_next_child
    17bc: b40003a0     	cbz	x0, 0x1830 <gpio_keys_probe+0x768>
    17c0: a97e2faa     	ldp	x10, x11, [x29, #-0x20]
    17c4: aa0003f3     	mov	x19, x0
    17c8: 91043168     	add	x8, x11, #0x10c
    17cc: eb080149     	subs	x9, x10, x8
    17d0: fa442920     	ccmp	x9, #0x4, #0x0, hs
    17d4: 91044169     	add	x9, x11, #0x110
    17d8: fa402908     	ccmp	x8, #0x0, #0x8, hs
    17dc: 1a9fa7fa     	cset	w26, lt
    17e0: f100013f     	cmp	x9, #0x0
    17e4: fa49a140     	ccmp	x10, x9, #0x0, ge
    17e8: 1a9f27f7     	cset	w23, lo
    17ec: aa1303e0     	mov	x0, x19
    17f0: aa1c03e1     	mov	x1, x28
    17f4: 2a1f03e2     	mov	w2, wzr
    17f8: 94000000     	bl	0x17f8 <gpio_keys_probe+0x730>
		00000000000017f8:  R_AARCH64_CALL26	of_get_named_gpio
    17fc: 3700365a     	tbnz	w26, #0x0, 0x1ec4 <gpio_keys_probe+0xdfc>
    1800: b900c6a0     	str	w0, [x21, #0xc4]
    1804: aa1303e0     	mov	x0, x19
    1808: aa1603e1     	mov	x1, x22
    180c: 2a1f03e2     	mov	w2, wzr
    1810: 94000000     	bl	0x1810 <gpio_keys_probe+0x748>
		0000000000001810:  R_AARCH64_CALL26	of_get_named_gpio
    1814: 37003597     	tbnz	w23, #0x0, 0x1ec4 <gpio_keys_probe+0xdfc>
    1818: b900caa0     	str	w0, [x21, #0xc8]
    181c: aa1403e0     	mov	x0, x20
    1820: aa1303e1     	mov	x1, x19
    1824: 94000000     	bl	0x1824 <gpio_keys_probe+0x75c>
		0000000000001824:  R_AARCH64_CALL26	of_get_next_child
    1828: aa0003f3     	mov	x19, x0
    182c: b5fffe00     	cbnz	x0, 0x17ec <gpio_keys_probe+0x724>
    1830: a97e23b4     	ldp	x20, x8, [x29, #-0x20]
    1834: b1044113     	adds	x19, x8, #0x110
    1838: 54003464     	b.mi	0x1ec4 <gpio_keys_probe+0xdfc>
    183c: eb13029f     	cmp	x20, x19
    1840: 54003423     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1844: b940caa0     	ldr	w0, [x21, #0xc8]
    1848: 34000160     	cbz	w0, 0x1874 <gpio_keys_probe+0x7ac>
    184c: 94000000     	bl	0x184c <gpio_keys_probe+0x784>
		000000000000184c:  R_AARCH64_CALL26	gpio_to_desc
    1850: 94000000     	bl	0x1850 <gpio_keys_probe+0x788>
		0000000000001850:  R_AARCH64_CALL26	gpiod_to_irq
    1854: f85e83a8     	ldur	x8, [x29, #-0x18]
    1858: 91042109     	add	x9, x8, #0x108
    185c: eb090288     	subs	x8, x20, x9
    1860: b7f83329     	tbnz	x9, #0x3f, 0x1ec4 <gpio_keys_probe+0xdfc>
    1864: 54003303     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1868: f100111f     	cmp	x8, #0x4
    186c: 540032c3     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1870: b900c2a0     	str	w0, [x21, #0xc0]
    1874: 910342a0     	add	x0, x21, #0xd0
    1878: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001878:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x475
    187c: 91000021     	add	x1, x1, #0x0
		000000000000187c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x475
    1880: 90000002     	adrp	x2, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001880:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
    1884: 91000042     	add	x2, x2, #0x0
		0000000000001884:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x10
    1888: 94000000     	bl	0x1888 <gpio_keys_probe+0x7c0>
		0000000000001888:  R_AARCH64_CALL26	__mutex_init
    188c: f85e83a8     	ldur	x8, [x29, #-0x18]
    1890: 91043109     	add	x9, x8, #0x10c
    1894: eb090288     	subs	x8, x20, x9
    1898: b7f83169     	tbnz	x9, #0x3f, 0x1ec4 <gpio_keys_probe+0xdfc>
    189c: 54003143     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    18a0: f100111f     	cmp	x8, #0x4
    18a4: 54003103     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    18a8: f94007f7     	ldr	x23, [sp, #0x8]
    18ac: f94023fa     	ldr	x26, [sp, #0x40]
    18b0: eb13029f     	cmp	x20, x19
    18b4: 54003083     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    18b8: 29588ea2     	ldp	w2, w3, [x21, #0xc4]
    18bc: 90000000     	adrp	x0, 0x1000 <gpio_keys_irq_isr+0x8c>
		00000000000018bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c9
    18c0: 91000000     	add	x0, x0, #0x0
		00000000000018c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c9
    18c4: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x8c>
		00000000000018c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13b
    18c8: 91000021     	add	x1, x1, #0x0
		00000000000018c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13b
    18cc: 94000000     	bl	0x18cc <gpio_keys_probe+0x804>
		00000000000018cc:  R_AARCH64_CALL26	_printk
    18d0: f85e83a8     	ldur	x8, [x29, #-0x18]
    18d4: 91042109     	add	x9, x8, #0x108
    18d8: eb090288     	subs	x8, x20, x9
    18dc: b7f82f49     	tbnz	x9, #0x3f, 0x1ec4 <gpio_keys_probe+0xdfc>
    18e0: 54002f23     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    18e4: f100111f     	cmp	x8, #0x4
    18e8: 54002ee3     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    18ec: b940c2a1     	ldr	w1, [x21, #0xc0]
    18f0: 34000101     	cbz	w1, 0x1910 <gpio_keys_probe+0x848>
    18f4: f9401fe2     	ldr	x2, [sp, #0x38]
    18f8: f9400fe3     	ldr	x3, [sp, #0x18]
    18fc: aa1703e0     	mov	x0, x23
    1900: f85d03a4     	ldur	x4, [x29, #-0x30]
    1904: aa1503e5     	mov	x5, x21
    1908: 94000000     	bl	0x1908 <gpio_keys_probe+0x840>
		0000000000001908:  R_AARCH64_CALL26	devm_request_any_context_irq
    190c: 37f80200     	tbnz	w0, #0x1f, 0x194c <gpio_keys_probe+0x884>
    1910: b9401f28     	ldr	w8, [x25, #0x1c]
    1914: b9800b09     	ldrsw	x9, [x24, #0x8]
    1918: b9402ff5     	ldr	w21, [sp, #0x2c]
    191c: f9401be1     	ldr	x1, [sp, #0x30]
    1920: 7100011f     	cmp	w8, #0x0
    1924: f85d83a8     	ldur	x8, [x29, #-0x28]
    1928: 1a9f06b5     	csinc	w21, w21, wzr, eq
    192c: 91000508     	add	x8, x8, #0x1
    1930: eb09011f     	cmp	x8, x9
    1934: f81d83a8     	stur	x8, [x29, #-0x28]
    1938: 54ffc90b     	b.lt	0x1258 <gpio_keys_probe+0x190>
    193c: 140000b4     	b	0x1c0c <gpio_keys_probe+0xb44>
    1940: 52800028     	mov	w8, #0x1                // =1
    1944: b9003be8     	str	w8, [sp, #0x38]
    1948: 17fffecb     	b	0x1474 <gpio_keys_probe+0x3ac>
    194c: 90000000     	adrp	x0, 0x1000 <gpio_keys_irq_isr+0x8c>
		000000000000194c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a
    1950: 91000000     	add	x0, x0, #0x0
		0000000000001950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a
    1954: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001954:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x657
    1958: 91000021     	add	x1, x1, #0x0
		0000000000001958:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x657
    195c: 94000000     	bl	0x195c <gpio_keys_probe+0x894>
		000000000000195c:  R_AARCH64_CALL26	_printk
    1960: 17ffffec     	b	0x1910 <gpio_keys_probe+0x848>
    1964: aa1703e0     	mov	x0, x23
    1968: 94000000     	bl	0x1968 <gpio_keys_probe+0x8a0>
		0000000000001968:  R_AARCH64_CALL26	device_get_child_node_count
    196c: 34001a20     	cbz	w0, 0x1cb0 <gpio_keys_probe+0xbe8>
    1970: 52800708     	mov	w8, #0x38               // =56
    1974: 2a0003f3     	mov	w19, w0
    1978: 5281b802     	mov	w2, #0xdc0              // =3520
    197c: 9b287c16     	smull	x22, w0, w8
    1980: aa1703e0     	mov	x0, x23
    1984: 9100c2d5     	add	x21, x22, #0x30
    1988: aa1503e1     	mov	x1, x21
    198c: 94000000     	bl	0x198c <gpio_keys_probe+0x8c4>
		000000000000198c:  R_AARCH64_CALL26	devm_kmalloc
    1990: b4001960     	cbz	x0, 0x1cbc <gpio_keys_probe+0xbf4>
    1994: f90023fa     	str	x26, [sp, #0x40]
    1998: b4002975     	cbz	x21, 0x1ec4 <gpio_keys_probe+0xdfc>
    199c: 9100c008     	add	x8, x0, #0x30
    19a0: aa0003f8     	mov	x24, x0
    19a4: b9000813     	str	w19, [x0, #0x8]
    19a8: f9000008     	str	x8, [x0]
    19ac: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x8c>
		00000000000019ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x613
    19b0: 91000021     	add	x1, x1, #0x0
		00000000000019b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x613
    19b4: aa1703e0     	mov	x0, x23
    19b8: 94000000     	bl	0x19b8 <gpio_keys_probe+0x8f0>
		00000000000019b8:  R_AARCH64_CALL26	device_property_present
    19bc: f10042bf     	cmp	x21, #0x10
    19c0: 54002823     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    19c4: 39404308     	ldrb	w8, [x24, #0x10]
    19c8: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x8c>
		00000000000019c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x538
    19cc: 91000021     	add	x1, x1, #0x0
		00000000000019cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x538
    19d0: 9100a302     	add	x2, x24, #0x28
    19d4: 33000008     	bfxil	w8, w0, #0, #1
    19d8: aa1703e0     	mov	x0, x23
    19dc: 39004308     	strb	w8, [x24, #0x10]
    19e0: 94000000     	bl	0x19e0 <gpio_keys_probe+0x918>
		00000000000019e0:  R_AARCH64_CALL26	device_property_read_string
    19e4: aa1703e0     	mov	x0, x23
    19e8: aa1f03e1     	mov	x1, xzr
    19ec: aa1703f9     	mov	x25, x23
    19f0: 94000000     	bl	0x19f0 <gpio_keys_probe+0x928>
		00000000000019f0:  R_AARCH64_CALL26	device_get_next_child_node
    19f4: b4001520     	cbz	x0, 0x1c98 <gpio_keys_probe+0xbd0>
    19f8: 52800608     	mov	w8, #0x30               // =48
    19fc: aa0003f4     	mov	x20, x0
    1a00: 9000001a     	adrp	x26, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001a00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x272
    1a04: 9100035a     	add	x26, x26, #0x0
		0000000000001a04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x272
    1a08: 9000001b     	adrp	x27, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001a08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25e
    1a0c: 9100037b     	add	x27, x27, #0x0
		0000000000001a0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25e
    1a10: cb160108     	sub	x8, x8, x22
    1a14: 9000001c     	adrp	x28, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001a14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    1a18: 9100039c     	add	x28, x28, #0x0
		0000000000001a18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    1a1c: 52800c17     	mov	w23, #0x60              // =96
    1a20: 90000016     	adrp	x22, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001a20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12
    1a24: 910002d6     	add	x22, x22, #0x0
		0000000000001a24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12
    1a28: f81e83a8     	stur	x8, [x29, #-0x18]
    1a2c: 14000007     	b	0x1a48 <gpio_keys_probe+0x980>
    1a30: aa1903e0     	mov	x0, x25
    1a34: aa1403e1     	mov	x1, x20
    1a38: 94000000     	bl	0x1a38 <gpio_keys_probe+0x970>
		0000000000001a38:  R_AARCH64_CALL26	device_get_next_child_node
    1a3c: aa0003f4     	mov	x20, x0
    1a40: 9100e2f7     	add	x23, x23, #0x38
    1a44: b40012a0     	cbz	x0, 0x1c98 <gpio_keys_probe+0xbd0>
    1a48: b140069f     	cmn	x20, #0x1, lsl #12      // =0x1000
    1a4c: 540002c8     	b.hi	0x1aa4 <gpio_keys_probe+0x9dc>
    1a50: f9400688     	ldr	x8, [x20, #0x8]
    1a54: 90000009     	adrp	x9, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001a54:  R_AARCH64_ADR_PREL_PG_HI21	of_fwnode_ops
    1a58: 91000129     	add	x9, x9, #0x0
		0000000000001a58:  R_AARCH64_ADD_ABS_LO12_NC	of_fwnode_ops
    1a5c: eb09011f     	cmp	x8, x9
    1a60: 54000221     	b.ne	0x1aa4 <gpio_keys_probe+0x9dc>
    1a64: d1006280     	sub	x0, x20, #0x18
    1a68: 2a1f03e1     	mov	w1, wzr
    1a6c: 94000000     	bl	0x1a6c <gpio_keys_probe+0x9a4>
		0000000000001a6c:  R_AARCH64_CALL26	irq_of_parse_and_map
    1a70: b7f822b7     	tbnz	x23, #0x3f, 0x1ec4 <gpio_keys_probe+0xdfc>
    1a74: f85e83a8     	ldur	x8, [x29, #-0x18]
    1a78: 8b170108     	add	x8, x8, x23
    1a7c: f101811f     	cmp	x8, #0x60
    1a80: 54002220     	b.eq	0x1ec4 <gpio_keys_probe+0xdfc>
    1a84: eb1702bf     	cmp	x21, x23
    1a88: 540021e3     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1a8c: b7f821d7     	tbnz	x23, #0x3f, 0x1ec4 <gpio_keys_probe+0xdfc>
    1a90: eb1702bf     	cmp	x21, x23
    1a94: 54002183     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1a98: f101811f     	cmp	x8, #0x60
    1a9c: 54002140     	b.eq	0x1ec4 <gpio_keys_probe+0xdfc>
    1aa0: b8376b00     	str	w0, [x24, x23]
    1aa4: 8b170308     	add	x8, x24, x23
    1aa8: aa1403e0     	mov	x0, x20
    1aac: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001aac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x64c
    1ab0: 91000021     	add	x1, x1, #0x0
		0000000000001ab0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x64c
    1ab4: d100c102     	sub	x2, x8, #0x30
    1ab8: 52800023     	mov	w3, #0x1                // =1
    1abc: 94000000     	bl	0x1abc <gpio_keys_probe+0x9f4>
		0000000000001abc:  R_AARCH64_CALL26	fwnode_property_read_u32_array
    1ac0: 350016a0     	cbnz	w0, 0x1d94 <gpio_keys_probe+0xccc>
    1ac4: 8b170313     	add	x19, x24, x23
    1ac8: aa1403e0     	mov	x0, x20
    1acc: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001acc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x538
    1ad0: 91000021     	add	x1, x1, #0x0
		0000000000001ad0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x538
    1ad4: d1008262     	sub	x2, x19, #0x20
    1ad8: 94000000     	bl	0x1ad8 <gpio_keys_probe+0xa10>
		0000000000001ad8:  R_AARCH64_CALL26	fwnode_property_read_string
    1adc: d1006273     	sub	x19, x19, #0x18
    1ae0: aa1403e0     	mov	x0, x20
    1ae4: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001ae4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57a
    1ae8: 91000021     	add	x1, x1, #0x0
		0000000000001ae8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57a
    1aec: aa1303e2     	mov	x2, x19
    1af0: 52800023     	mov	w3, #0x1                // =1
    1af4: 94000000     	bl	0x1af4 <gpio_keys_probe+0xa2c>
		0000000000001af4:  R_AARCH64_CALL26	fwnode_property_read_u32_array
    1af8: 34000160     	cbz	w0, 0x1b24 <gpio_keys_probe+0xa5c>
    1afc: f10062e8     	subs	x8, x23, #0x18
    1b00: 54001e24     	b.mi	0x1ec4 <gpio_keys_probe+0xdfc>
    1b04: eb0802bf     	cmp	x21, x8
    1b08: 54001de9     	b.ls	0x1ec4 <gpio_keys_probe+0xdfc>
    1b0c: d10062e8     	sub	x8, x23, #0x18
    1b10: b7f81da8     	tbnz	x8, #0x3f, 0x1ec4 <gpio_keys_probe+0xdfc>
    1b14: eb0802bf     	cmp	x21, x8
    1b18: 54001d69     	b.ls	0x1ec4 <gpio_keys_probe+0xdfc>
    1b1c: 52800028     	mov	w8, #0x1                // =1
    1b20: b9000268     	str	w8, [x19]
    1b24: aa1403e0     	mov	x0, x20
    1b28: aa1a03e1     	mov	x1, x26
    1b2c: 94000000     	bl	0x1b2c <gpio_keys_probe+0xa64>
		0000000000001b2c:  R_AARCH64_CALL26	fwnode_property_present
    1b30: 36000060     	tbz	w0, #0x0, 0x1b3c <gpio_keys_probe+0xa74>
    1b34: 52800020     	mov	w0, #0x1                // =1
    1b38: 14000005     	b	0x1b4c <gpio_keys_probe+0xa84>
    1b3c: aa1403e0     	mov	x0, x20
    1b40: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001b40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24e
    1b44: 91000021     	add	x1, x1, #0x0
		0000000000001b44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24e
    1b48: 94000000     	bl	0x1b48 <gpio_keys_probe+0xa80>
		0000000000001b48:  R_AARCH64_CALL26	fwnode_property_present
    1b4c: f10052e8     	subs	x8, x23, #0x14
    1b50: 54001ba4     	b.mi	0x1ec4 <gpio_keys_probe+0xdfc>
    1b54: eb0802bf     	cmp	x21, x8
    1b58: 54001b63     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1b5c: f10052e8     	subs	x8, x23, #0x14
    1b60: 54001b24     	b.mi	0x1ec4 <gpio_keys_probe+0xdfc>
    1b64: eb0802bf     	cmp	x21, x8
    1b68: 54001ae3     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1b6c: 8b170309     	add	x9, x24, x23
    1b70: 12000008     	and	w8, w0, #0x1
    1b74: aa1403e0     	mov	x0, x20
    1b78: d1004122     	sub	x2, x9, #0x10
    1b7c: aa1b03e1     	mov	x1, x27
    1b80: 52800023     	mov	w3, #0x1                // =1
    1b84: b81ec128     	stur	w8, [x9, #-0x14]
    1b88: 94000000     	bl	0x1b88 <gpio_keys_probe+0xac0>
		0000000000001b88:  R_AARCH64_CALL26	fwnode_property_read_u32_array
    1b8c: aa1403e0     	mov	x0, x20
    1b90: aa1c03e1     	mov	x1, x28
    1b94: 94000000     	bl	0x1b94 <gpio_keys_probe+0xacc>
		0000000000001b94:  R_AARCH64_CALL26	fwnode_property_present
    1b98: f10022e8     	subs	x8, x23, #0x8
    1b9c: 54001944     	b.mi	0x1ec4 <gpio_keys_probe+0xdfc>
    1ba0: eb0802bf     	cmp	x21, x8
    1ba4: 54001909     	b.ls	0x1ec4 <gpio_keys_probe+0xdfc>
    1ba8: f10022e8     	subs	x8, x23, #0x8
    1bac: 540018c4     	b.mi	0x1ec4 <gpio_keys_probe+0xdfc>
    1bb0: eb0802bf     	cmp	x21, x8
    1bb4: 54001889     	b.ls	0x1ec4 <gpio_keys_probe+0xdfc>
    1bb8: 8b170308     	add	x8, x24, x23
    1bbc: 12000009     	and	w9, w0, #0x1
    1bc0: aa1403e0     	mov	x0, x20
    1bc4: d1003113     	sub	x19, x8, #0xc
    1bc8: aa1603e1     	mov	x1, x22
    1bcc: 52800023     	mov	w3, #0x1                // =1
    1bd0: aa1303e2     	mov	x2, x19
    1bd4: 381f8109     	sturb	w9, [x8, #-0x8]
    1bd8: 94000000     	bl	0x1bd8 <gpio_keys_probe+0xb10>
		0000000000001bd8:  R_AARCH64_CALL26	fwnode_property_read_u32_array
    1bdc: 34fff2a0     	cbz	w0, 0x1a30 <gpio_keys_probe+0x968>
    1be0: d10032e8     	sub	x8, x23, #0xc
    1be4: eb0802bf     	cmp	x21, x8
    1be8: 540016e3     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1bec: b7f816c8     	tbnz	x8, #0x3f, 0x1ec4 <gpio_keys_probe+0xdfc>
    1bf0: eb0802bf     	cmp	x21, x8
    1bf4: 54001683     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1bf8: 528000a8     	mov	w8, #0x5                // =5
    1bfc: b9000268     	str	w8, [x19]
    1c00: 17ffff8c     	b	0x1a30 <gpio_keys_probe+0x968>
    1c04: 12800174     	mov	w20, #-0xc              // =-12
    1c08: 140000a0     	b	0x1e88 <gpio_keys_probe+0xdc0>
    1c0c: b40001e1     	cbz	x1, 0x1c48 <gpio_keys_probe+0xb80>
    1c10: b140043f     	cmn	x1, #0x1, lsl #12       // =0x1000
    1c14: 540001a8     	b.hi	0x1c48 <gpio_keys_probe+0xb80>
    1c18: f9400428     	ldr	x8, [x1, #0x8]
    1c1c: b4000168     	cbz	x8, 0x1c48 <gpio_keys_probe+0xb80>
    1c20: f9400508     	ldr	x8, [x8, #0x8]
    1c24: b4000128     	cbz	x8, 0x1c48 <gpio_keys_probe+0xb80>
    1c28: aa0103e0     	mov	x0, x1
    1c2c: b85fc110     	ldur	w16, [x8, #-0x4]
    1c30: 729f8df1     	movk	w17, #0xfc6f
    1c34: 72bb34f1     	movk	w17, #0xd9a7, lsl #16
    1c38: 6b11021f     	cmp	w16, w17
    1c3c: 54000040     	b.eq	0x1c44 <gpio_keys_probe+0xb7c>
    1c40: d4304500     	brk	#0x8228
    1c44: d63f0100     	blr	x8
    1c48: f85c83a0     	ldur	x0, [x29, #-0x38]
    1c4c: 94000000     	bl	0x1c4c <gpio_keys_probe+0xb84>
		0000000000001c4c:  R_AARCH64_CALL26	input_register_device
    1c50: 350004e0     	cbnz	w0, 0x1cec <gpio_keys_probe+0xc24>
    1c54: 34000155     	cbz	w21, 0x1c7c <gpio_keys_probe+0xbb4>
    1c58: aa1703e0     	mov	x0, x23
    1c5c: 52800021     	mov	w1, #0x1                // =1
    1c60: 94000000     	bl	0x1c60 <gpio_keys_probe+0xb98>
		0000000000001c60:  R_AARCH64_CALL26	device_set_wakeup_capable
    1c64: aa1703e0     	mov	x0, x23
    1c68: 94000000     	bl	0x1c68 <gpio_keys_probe+0xba0>
		0000000000001c68:  R_AARCH64_CALL26	device_wakeup_enable
    1c6c: 14000009     	b	0x1c90 <gpio_keys_probe+0xbc8>
    1c70: aa1503e0     	mov	x0, x21
    1c74: 94000000     	bl	0x1c74 <gpio_keys_probe+0xbac>
		0000000000001c74:  R_AARCH64_CALL26	input_register_device
    1c78: 350003a0     	cbnz	w0, 0x1cec <gpio_keys_probe+0xc24>
    1c7c: aa1703e0     	mov	x0, x23
    1c80: 94000000     	bl	0x1c80 <gpio_keys_probe+0xbb8>
		0000000000001c80:  R_AARCH64_CALL26	device_wakeup_disable
    1c84: aa1703e0     	mov	x0, x23
    1c88: 2a1f03e1     	mov	w1, wzr
    1c8c: 94000000     	bl	0x1c8c <gpio_keys_probe+0xbc4>
		0000000000001c8c:  R_AARCH64_CALL26	device_set_wakeup_capable
    1c90: 2a1f03f4     	mov	w20, wzr
    1c94: 1400007d     	b	0x1e88 <gpio_keys_probe+0xdc0>
    1c98: f94023fa     	ldr	x26, [sp, #0x40]
    1c9c: b13fff1f     	cmn	x24, #0xfff
    1ca0: aa1903f7     	mov	x23, x25
    1ca4: 54ffa323     	b.lo	0x1108 <gpio_keys_probe+0x40>
    1ca8: 2a1803f4     	mov	w20, w24
    1cac: 14000077     	b	0x1e88 <gpio_keys_probe+0xdc0>
    1cb0: 92800258     	mov	x24, #-0x13             // =-19
    1cb4: 2a1803f4     	mov	w20, w24
    1cb8: 14000074     	b	0x1e88 <gpio_keys_probe+0xdc0>
    1cbc: 92800178     	mov	x24, #-0xc              // =-12
    1cc0: 2a1803f4     	mov	w20, w24
    1cc4: 14000071     	b	0x1e88 <gpio_keys_probe+0xdc0>
    1cc8: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001cc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x208
    1ccc: 91000021     	add	x1, x1, #0x0
		0000000000001ccc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x208
    1cd0: 14000003     	b	0x1cdc <gpio_keys_probe+0xc14>
    1cd4: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001cd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb7
    1cd8: 91000021     	add	x1, x1, #0x0
		0000000000001cd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb7
    1cdc: aa1703e0     	mov	x0, x23
    1ce0: 94000000     	bl	0x1ce0 <gpio_keys_probe+0xc18>
		0000000000001ce0:  R_AARCH64_CALL26	_dev_err
    1ce4: 12800174     	mov	w20, #-0xc              // =-12
    1ce8: 14000068     	b	0x1e88 <gpio_keys_probe+0xdc0>
    1cec: 2a0003f4     	mov	w20, w0
    1cf0: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001cf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x222
    1cf4: 91000021     	add	x1, x1, #0x0
		0000000000001cf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x222
    1cf8: aa1703e0     	mov	x0, x23
    1cfc: 2a1403e2     	mov	w2, w20
    1d00: 94000000     	bl	0x1d00 <gpio_keys_probe+0xc38>
		0000000000001d00:  R_AARCH64_CALL26	_dev_err
    1d04: 14000061     	b	0x1e88 <gpio_keys_probe+0xdc0>
    1d08: 2a0003f4     	mov	w20, w0
    1d0c: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001d0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x61e
    1d10: 91000021     	add	x1, x1, #0x0
		0000000000001d10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x61e
    1d14: aa1703e0     	mov	x0, x23
    1d18: 2a1403e2     	mov	w2, w20
    1d1c: 94000000     	bl	0x1d1c <gpio_keys_probe+0xc54>
		0000000000001d1c:  R_AARCH64_CALL26	_dev_err
    1d20: 1400003f     	b	0x1e1c <gpio_keys_probe+0xd54>
    1d24: a97e2ba8     	ldp	x8, x10, [x29, #-0x20]
    1d28: 91041149     	add	x9, x10, #0x104
    1d2c: eb090108     	subs	x8, x8, x9
    1d30: b7f80ca9     	tbnz	x9, #0x3f, 0x1ec4 <gpio_keys_probe+0xdfc>
    1d34: 54000c83     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1d38: f100111f     	cmp	x8, #0x4
    1d3c: 54000c43     	b.lo	0x1ec4 <gpio_keys_probe+0xdfc>
    1d40: b940bea2     	ldr	w2, [x21, #0xbc]
    1d44: 2a0003f4     	mov	w20, w0
    1d48: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001d48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x280
    1d4c: 91000021     	add	x1, x1, #0x0
		0000000000001d4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x280
    1d50: 14000030     	b	0x1e10 <gpio_keys_probe+0xd48>
    1d54: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001d54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e4
    1d58: 91000021     	add	x1, x1, #0x0
		0000000000001d58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e4
    1d5c: aa1703e0     	mov	x0, x23
    1d60: f85d83a2     	ldur	x2, [x29, #-0x28]
    1d64: 94000000     	bl	0x1d64 <gpio_keys_probe+0xc9c>
		0000000000001d64:  R_AARCH64_CALL26	_dev_err
    1d68: 128002b4     	mov	w20, #-0x16             // =-22
    1d6c: 14000047     	b	0x1e88 <gpio_keys_probe+0xdc0>
    1d70: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001d70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x119
    1d74: 91000021     	add	x1, x1, #0x0
		0000000000001d74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x119
    1d78: 14000003     	b	0x1d84 <gpio_keys_probe+0xcbc>
    1d7c: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001d7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14e
    1d80: 91000021     	add	x1, x1, #0x0
		0000000000001d80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14e
    1d84: aa1703e0     	mov	x0, x23
    1d88: 94000000     	bl	0x1d88 <gpio_keys_probe+0xcc0>
		0000000000001d88:  R_AARCH64_CALL26	_dev_err
    1d8c: 128002b4     	mov	w20, #-0x16             // =-22
    1d90: 14000023     	b	0x1e1c <gpio_keys_probe+0xd54>
    1d94: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001d94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d3
    1d98: 91000021     	add	x1, x1, #0x0
		0000000000001d98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d3
    1d9c: aa1903e0     	mov	x0, x25
    1da0: 94000000     	bl	0x1da0 <gpio_keys_probe+0xcd8>
		0000000000001da0:  R_AARCH64_CALL26	_dev_err
    1da4: b140069f     	cmn	x20, #0x1, lsl #12      // =0x1000
    1da8: 540001a8     	b.hi	0x1ddc <gpio_keys_probe+0xd14>
    1dac: f9400688     	ldr	x8, [x20, #0x8]
    1db0: b4000168     	cbz	x8, 0x1ddc <gpio_keys_probe+0xd14>
    1db4: f9400508     	ldr	x8, [x8, #0x8]
    1db8: b4000128     	cbz	x8, 0x1ddc <gpio_keys_probe+0xd14>
    1dbc: aa1403e0     	mov	x0, x20
    1dc0: b85fc110     	ldur	w16, [x8, #-0x4]
    1dc4: 729f8df1     	movk	w17, #0xfc6f
    1dc8: 72bb34f1     	movk	w17, #0xd9a7, lsl #16
    1dcc: 6b11021f     	cmp	w16, w17
    1dd0: 54000040     	b.eq	0x1dd8 <gpio_keys_probe+0xd10>
    1dd4: d4304500     	brk	#0x8228
    1dd8: d63f0100     	blr	x8
    1ddc: 928002b8     	mov	x24, #-0x16             // =-22
    1de0: 2a1803f4     	mov	w20, w24
    1de4: 14000029     	b	0x1e88 <gpio_keys_probe+0xdc0>
    1de8: 2a0003f4     	mov	w20, w0
    1dec: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001dec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa
    1df0: 91000021     	add	x1, x1, #0x0
		0000000000001df0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa
    1df4: aa1703e0     	mov	x0, x23
    1df8: 2a1403e3     	mov	w3, w20
    1dfc: 94000000     	bl	0x1dfc <gpio_keys_probe+0xd34>
		0000000000001dfc:  R_AARCH64_CALL26	_dev_err
    1e00: 1400001d     	b	0x1e74 <gpio_keys_probe+0xdac>
    1e04: b9400722     	ldr	w2, [x25, #0x4]
    1e08: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001e08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3eb
    1e0c: 91000021     	add	x1, x1, #0x0
		0000000000001e0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3eb
    1e10: aa1703e0     	mov	x0, x23
    1e14: 2a1403e3     	mov	w3, w20
    1e18: 94000000     	bl	0x1e18 <gpio_keys_probe+0xd50>
		0000000000001e18:  R_AARCH64_CALL26	_dev_err
    1e1c: 90000000     	adrp	x0, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001e1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x512
    1e20: 91000000     	add	x0, x0, #0x0
		0000000000001e20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x512
    1e24: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001e24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x502
    1e28: 91000021     	add	x1, x1, #0x0
		0000000000001e28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x502
    1e2c: 94000000     	bl	0x1e2c <gpio_keys_probe+0xd64>
		0000000000001e2c:  R_AARCH64_CALL26	_printk
    1e30: f9401be0     	ldr	x0, [sp, #0x30]
    1e34: b40002a0     	cbz	x0, 0x1e88 <gpio_keys_probe+0xdc0>
    1e38: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    1e3c: 54000268     	b.hi	0x1e88 <gpio_keys_probe+0xdc0>
    1e40: f9400408     	ldr	x8, [x0, #0x8]
    1e44: b4000228     	cbz	x8, 0x1e88 <gpio_keys_probe+0xdc0>
    1e48: f9400508     	ldr	x8, [x8, #0x8]
    1e4c: b40001e8     	cbz	x8, 0x1e88 <gpio_keys_probe+0xdc0>
    1e50: b85fc110     	ldur	w16, [x8, #-0x4]
    1e54: 729f8df1     	movk	w17, #0xfc6f
    1e58: 72bb34f1     	movk	w17, #0xd9a7, lsl #16
    1e5c: 6b11021f     	cmp	w16, w17
    1e60: 54000040     	b.eq	0x1e68 <gpio_keys_probe+0xda0>
    1e64: d4304500     	brk	#0x8228
    1e68: d63f0100     	blr	x8
    1e6c: 14000007     	b	0x1e88 <gpio_keys_probe+0xdc0>
    1e70: 128002b4     	mov	w20, #-0x16             // =-22
    1e74: 90000000     	adrp	x0, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001e74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x512
    1e78: 91000000     	add	x0, x0, #0x0
		0000000000001e78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x512
    1e7c: 90000001     	adrp	x1, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001e7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x502
    1e80: 91000021     	add	x1, x1, #0x0
		0000000000001e80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x502
    1e84: 94000000     	bl	0x1e84 <gpio_keys_probe+0xdbc>
		0000000000001e84:  R_AARCH64_CALL26	_printk
    1e88: d5384108     	mrs	x8, SP_EL0
    1e8c: f9438908     	ldr	x8, [x8, #0x710]
    1e90: f85f83a9     	ldur	x9, [x29, #-0x8]
    1e94: eb09011f     	cmp	x8, x9
    1e98: 540001e1     	b.ne	0x1ed4 <gpio_keys_probe+0xe0c>
    1e9c: 2a1403e0     	mov	w0, w20
    1ea0: a94d4ff4     	ldp	x20, x19, [sp, #0xd0]
    1ea4: a94c57f6     	ldp	x22, x21, [sp, #0xc0]
    1ea8: a94b5ff8     	ldp	x24, x23, [sp, #0xb0]
    1eac: a94a67fa     	ldp	x26, x25, [sp, #0xa0]
    1eb0: a9496ffc     	ldp	x28, x27, [sp, #0x90]
    1eb4: a9487bfd     	ldp	x29, x30, [sp, #0x80]
    1eb8: 910383ff     	add	sp, sp, #0xe0
    1ebc: d50323bf     	autiasp
    1ec0: d65f03c0     	ret
    1ec4: d4200020     	brk	#0x1
    1ec8: f900229f     	str	xzr, [x20, #0x40]
    1ecc: 12800174     	mov	w20, #-0xc              // =-12
    1ed0: 17ffffee     	b	0x1e88 <gpio_keys_probe+0xdc0>
    1ed4: 94000000     	bl	0x1ed4 <gpio_keys_probe+0xe0c>
		0000000000001ed4:  R_AARCH64_CALL26	__stack_chk_fail
