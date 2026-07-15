
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001264 <get_tp_chip_id>:
    1264: d503233f     	paciasp
    1268: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    126c: f9000bf5     	str	x21, [sp, #0x10]
    1270: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1274: 910003fd     	mov	x29, sp
    1278: 90000008     	adrp	x8, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001278:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    127c: 90000013     	adrp	x19, 0x1000 <zlog_register_work_deinit+0x14>
		000000000000127c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ea9
    1280: 91000273     	add	x19, x19, #0x0
		0000000000001280:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ea9
    1284: f9400115     	ldr	x21, [x8]
		0000000000001284:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    1288: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6cfe
    128c: 91000000     	add	x0, x0, #0x0
		000000000000128c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6cfe
    1290: aa1303e1     	mov	x1, x19
    1294: 94000000     	bl	0x1294 <get_tp_chip_id+0x30>
		0000000000001294:  R_AARCH64_CALL26	_printk
    1298: 90000014     	adrp	x20, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001298:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb2b3
    129c: 91000294     	add	x20, x20, #0x0
		000000000000129c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb2b3
    12a0: 52801fe8     	mov	w8, #0xff               // =255
    12a4: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000012a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb871
    12a8: 91000000     	add	x0, x0, #0x0
		00000000000012a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb871
    12ac: aa1303e1     	mov	x1, x19
    12b0: aa1403e2     	mov	x2, x20
    12b4: 39111aa8     	strb	w8, [x21, #0x446]
    12b8: 94000000     	bl	0x12b8 <get_tp_chip_id+0x54>
		00000000000012b8:  R_AARCH64_CALL26	_printk
    12bc: 90000013     	adrp	x19, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000012bc:  R_AARCH64_ADR_PREL_PG_HI21	tp_ic_vendor_info_l
    12c0: 91000273     	add	x19, x19, #0x0
		00000000000012c0:  R_AARCH64_ADD_ABS_LO12_NC	tp_ic_vendor_info_l
    12c4: aa1403e0     	mov	x0, x20
    12c8: f9400661     	ldr	x1, [x19, #0x8]
    12cc: 52800162     	mov	w2, #0xb                // =11
    12d0: 94000000     	bl	0x12d0 <get_tp_chip_id+0x6c>
		00000000000012d0:  R_AARCH64_CALL26	strnstr
    12d4: b5000a60     	cbnz	x0, 0x1420 <get_tp_chip_id+0x1bc>
    12d8: 90000013     	adrp	x19, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000012d8:  R_AARCH64_ADR_PREL_PG_HI21	tp_ic_vendor_info_l+0x10
    12dc: 91000273     	add	x19, x19, #0x0
		00000000000012dc:  R_AARCH64_ADD_ABS_LO12_NC	tp_ic_vendor_info_l+0x10
    12e0: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000012e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb2b3
    12e4: 91000000     	add	x0, x0, #0x0
		00000000000012e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb2b3
    12e8: f9400661     	ldr	x1, [x19, #0x8]
    12ec: 52800162     	mov	w2, #0xb                // =11
    12f0: 94000000     	bl	0x12f0 <get_tp_chip_id+0x8c>
		00000000000012f0:  R_AARCH64_CALL26	strnstr
    12f4: b5000960     	cbnz	x0, 0x1420 <get_tp_chip_id+0x1bc>
    12f8: 90000013     	adrp	x19, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000012f8:  R_AARCH64_ADR_PREL_PG_HI21	tp_ic_vendor_info_l+0x20
    12fc: 91000273     	add	x19, x19, #0x0
		00000000000012fc:  R_AARCH64_ADD_ABS_LO12_NC	tp_ic_vendor_info_l+0x20
    1300: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001300:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb2b3
    1304: 91000000     	add	x0, x0, #0x0
		0000000000001304:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb2b3
    1308: f9400661     	ldr	x1, [x19, #0x8]
    130c: 52800162     	mov	w2, #0xb                // =11
    1310: 94000000     	bl	0x1310 <get_tp_chip_id+0xac>
		0000000000001310:  R_AARCH64_CALL26	strnstr
    1314: b5000860     	cbnz	x0, 0x1420 <get_tp_chip_id+0x1bc>
    1318: 90000013     	adrp	x19, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001318:  R_AARCH64_ADR_PREL_PG_HI21	tp_ic_vendor_info_l+0x30
    131c: 91000273     	add	x19, x19, #0x0
		000000000000131c:  R_AARCH64_ADD_ABS_LO12_NC	tp_ic_vendor_info_l+0x30
    1320: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001320:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb2b3
    1324: 91000000     	add	x0, x0, #0x0
		0000000000001324:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb2b3
    1328: f9400661     	ldr	x1, [x19, #0x8]
    132c: 52800162     	mov	w2, #0xb                // =11
    1330: 94000000     	bl	0x1330 <get_tp_chip_id+0xcc>
		0000000000001330:  R_AARCH64_CALL26	strnstr
    1334: b5000760     	cbnz	x0, 0x1420 <get_tp_chip_id+0x1bc>
    1338: 90000013     	adrp	x19, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001338:  R_AARCH64_ADR_PREL_PG_HI21	tp_ic_vendor_info_l+0x40
    133c: 91000273     	add	x19, x19, #0x0
		000000000000133c:  R_AARCH64_ADD_ABS_LO12_NC	tp_ic_vendor_info_l+0x40
    1340: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb2b3
    1344: 91000000     	add	x0, x0, #0x0
		0000000000001344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb2b3
    1348: f9400661     	ldr	x1, [x19, #0x8]
    134c: 52800162     	mov	w2, #0xb                // =11
    1350: 94000000     	bl	0x1350 <get_tp_chip_id+0xec>
		0000000000001350:  R_AARCH64_CALL26	strnstr
    1354: b5000660     	cbnz	x0, 0x1420 <get_tp_chip_id+0x1bc>
    1358: 90000013     	adrp	x19, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001358:  R_AARCH64_ADR_PREL_PG_HI21	tp_ic_vendor_info_l+0x50
    135c: 91000273     	add	x19, x19, #0x0
		000000000000135c:  R_AARCH64_ADD_ABS_LO12_NC	tp_ic_vendor_info_l+0x50
    1360: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001360:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb2b3
    1364: 91000000     	add	x0, x0, #0x0
		0000000000001364:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb2b3
    1368: f9400661     	ldr	x1, [x19, #0x8]
    136c: 52800162     	mov	w2, #0xb                // =11
    1370: 94000000     	bl	0x1370 <get_tp_chip_id+0x10c>
		0000000000001370:  R_AARCH64_CALL26	strnstr
    1374: b5000560     	cbnz	x0, 0x1420 <get_tp_chip_id+0x1bc>
    1378: 90000013     	adrp	x19, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001378:  R_AARCH64_ADR_PREL_PG_HI21	tp_ic_vendor_info_l+0x60
    137c: 91000273     	add	x19, x19, #0x0
		000000000000137c:  R_AARCH64_ADD_ABS_LO12_NC	tp_ic_vendor_info_l+0x60
    1380: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001380:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb2b3
    1384: 91000000     	add	x0, x0, #0x0
		0000000000001384:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb2b3
    1388: f9400661     	ldr	x1, [x19, #0x8]
    138c: 52800162     	mov	w2, #0xb                // =11
    1390: 94000000     	bl	0x1390 <get_tp_chip_id+0x12c>
		0000000000001390:  R_AARCH64_CALL26	strnstr
    1394: b5000460     	cbnz	x0, 0x1420 <get_tp_chip_id+0x1bc>
    1398: 90000013     	adrp	x19, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001398:  R_AARCH64_ADR_PREL_PG_HI21	tp_ic_vendor_info_l+0x70
    139c: 91000273     	add	x19, x19, #0x0
		000000000000139c:  R_AARCH64_ADD_ABS_LO12_NC	tp_ic_vendor_info_l+0x70
    13a0: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000013a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb2b3
    13a4: 91000000     	add	x0, x0, #0x0
		00000000000013a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb2b3
    13a8: f9400661     	ldr	x1, [x19, #0x8]
    13ac: 52800162     	mov	w2, #0xb                // =11
    13b0: 94000000     	bl	0x13b0 <get_tp_chip_id+0x14c>
		00000000000013b0:  R_AARCH64_CALL26	strnstr
    13b4: b5000360     	cbnz	x0, 0x1420 <get_tp_chip_id+0x1bc>
    13b8: 90000013     	adrp	x19, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000013b8:  R_AARCH64_ADR_PREL_PG_HI21	tp_ic_vendor_info_l+0x80
    13bc: 91000273     	add	x19, x19, #0x0
		00000000000013bc:  R_AARCH64_ADD_ABS_LO12_NC	tp_ic_vendor_info_l+0x80
    13c0: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000013c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb2b3
    13c4: 91000000     	add	x0, x0, #0x0
		00000000000013c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb2b3
    13c8: f9400661     	ldr	x1, [x19, #0x8]
    13cc: 52800162     	mov	w2, #0xb                // =11
    13d0: 94000000     	bl	0x13d0 <get_tp_chip_id+0x16c>
		00000000000013d0:  R_AARCH64_CALL26	strnstr
    13d4: b5000260     	cbnz	x0, 0x1420 <get_tp_chip_id+0x1bc>
    13d8: 90000013     	adrp	x19, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000013d8:  R_AARCH64_ADR_PREL_PG_HI21	tp_ic_vendor_info_l+0x90
    13dc: 91000273     	add	x19, x19, #0x0
		00000000000013dc:  R_AARCH64_ADD_ABS_LO12_NC	tp_ic_vendor_info_l+0x90
    13e0: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000013e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb2b3
    13e4: 91000000     	add	x0, x0, #0x0
		00000000000013e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb2b3
    13e8: f9400661     	ldr	x1, [x19, #0x8]
    13ec: 52800162     	mov	w2, #0xb                // =11
    13f0: 94000000     	bl	0x13f0 <get_tp_chip_id+0x18c>
		00000000000013f0:  R_AARCH64_CALL26	strnstr
    13f4: b5000160     	cbnz	x0, 0x1420 <get_tp_chip_id+0x1bc>
    13f8: 90000013     	adrp	x19, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000013f8:  R_AARCH64_ADR_PREL_PG_HI21	tp_ic_vendor_info_l+0xa0
    13fc: 91000273     	add	x19, x19, #0x0
		00000000000013fc:  R_AARCH64_ADD_ABS_LO12_NC	tp_ic_vendor_info_l+0xa0
    1400: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001400:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb2b3
    1404: 91000000     	add	x0, x0, #0x0
		0000000000001404:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb2b3
    1408: f9400661     	ldr	x1, [x19, #0x8]
    140c: 52800162     	mov	w2, #0xb                // =11
    1410: 94000000     	bl	0x1410 <get_tp_chip_id+0x1ac>
		0000000000001410:  R_AARCH64_CALL26	strnstr
    1414: b5000060     	cbnz	x0, 0x1420 <get_tp_chip_id+0x1bc>
    1418: 12800080     	mov	w0, #-0x5               // =-5
    141c: 14000009     	b	0x1440 <get_tp_chip_id+0x1dc>
    1420: 39400262     	ldrb	w2, [x19]
    1424: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001424:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6083
    1428: 91000000     	add	x0, x0, #0x0
		0000000000001428:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6083
    142c: 90000001     	adrp	x1, 0x1000 <zlog_register_work_deinit+0x14>
		000000000000142c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ea9
    1430: 91000021     	add	x1, x1, #0x0
		0000000000001430:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ea9
    1434: 39111aa2     	strb	w2, [x21, #0x446]
    1438: 94000000     	bl	0x1438 <get_tp_chip_id+0x1d4>
		0000000000001438:  R_AARCH64_CALL26	_printk
    143c: 2a1f03e0     	mov	w0, wzr
    1440: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1444: f9400bf5     	ldr	x21, [sp, #0x10]
    1448: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    144c: d50323bf     	autiasp
    1450: d65f03c0     	ret
