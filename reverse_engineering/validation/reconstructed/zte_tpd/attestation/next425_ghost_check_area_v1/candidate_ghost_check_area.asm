
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001390 <ghost_check_area>:
    1390: 90000008     	adrp	x8, 0x1000 <get_tp_chip_id+0xec>
		0000000000001390:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    1394: 79403009     	ldrh	w9, [x0, #0x18]
    1398: f9400108     	ldr	x8, [x8]
		0000000000001398:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    139c: b940110b     	ldr	w11, [x8, #0x10]
    13a0: 121e796a     	and	w10, w11, #0xfffffffd
    13a4: 7100055f     	cmp	w10, #0x1
    13a8: 54000381     	b.ne	0x1418 <ghost_check_area+0x88>
    13ac: 7940380a     	ldrh	w10, [x0, #0x1c]
    13b0: b9449d0d     	ldr	w13, [x8, #0x49c]
    13b4: 6b0a01bf     	cmp	w13, w10
    13b8: 540007ec     	b.gt	0x14b4 <ghost_check_area+0x124>
    13bc: 7948890c     	ldrh	w12, [x8, #0x444]
    13c0: 90000000     	adrp	x0, 0x1000 <get_tp_chip_id+0xec>
		00000000000013c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x703
    13c4: 91000000     	add	x0, x0, #0x0
		00000000000013c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x703
    13c8: 4b0d018c     	sub	w12, w12, w13
    13cc: 6b0a019f     	cmp	w12, w10
    13d0: 540007cb     	b.lt	0x14c8 <ghost_check_area+0x138>
    13d4: 6b0901bf     	cmp	w13, w9
    13d8: 5400078c     	b.gt	0x14c8 <ghost_check_area+0x138>
    13dc: 7948850c     	ldrh	w12, [x8, #0x442]
    13e0: 4b0d018d     	sub	w13, w12, w13
    13e4: 6b0901bf     	cmp	w13, w9
    13e8: 5400070b     	b.lt	0x14c8 <ghost_check_area+0x138>
    13ec: 7100057f     	cmp	w11, #0x1
    13f0: 5400028c     	b.gt	0x1440 <ghost_check_area+0xb0>
    13f4: 54000420     	b.eq	0x1478 <ghost_check_area+0xe8>
    13f8: 350005ab     	cbnz	w11, 0x14ac <ghost_check_area+0x11c>
    13fc: 7948890b     	ldrh	w11, [x8, #0x444]
    1400: b944a50d     	ldr	w13, [x8, #0x4a4]
    1404: 4b0d016b     	sub	w11, w11, w13
    1408: 6b0a017f     	cmp	w11, w10
    140c: 5400028b     	b.lt	0x145c <ghost_check_area+0xcc>
    1410: 52800020     	mov	w0, #0x1                // =1
    1414: d65f03c0     	ret
    1418: b9449d0a     	ldr	w10, [x8, #0x49c]
    141c: 6b09015f     	cmp	w10, w9
    1420: 540004ac     	b.gt	0x14b4 <ghost_check_area+0x124>
    1424: 7948850c     	ldrh	w12, [x8, #0x442]
    1428: 4b0a018a     	sub	w10, w12, w10
    142c: 6b09015f     	cmp	w10, w9
    1430: 5400042b     	b.lt	0x14b4 <ghost_check_area+0x124>
    1434: 7940380a     	ldrh	w10, [x0, #0x1c]
    1438: 7100057f     	cmp	w11, #0x1
    143c: 54fffdcd     	b.le	0x13f4 <ghost_check_area+0x64>
    1440: 71000d7f     	cmp	w11, #0x3
    1444: 540001a0     	b.eq	0x1478 <ghost_check_area+0xe8>
    1448: 7100097f     	cmp	w11, #0x2
    144c: 54000301     	b.ne	0x14ac <ghost_check_area+0x11c>
    1450: b944a50b     	ldr	w11, [x8, #0x4a4]
    1454: 6b0a017f     	cmp	w11, w10
    1458: 540002ad     	b.le	0x14ac <ghost_check_area+0x11c>
    145c: b944a108     	ldr	w8, [x8, #0x4a0]
    1460: 6b09011f     	cmp	w8, w9
    1464: 540002ec     	b.gt	0x14c0 <ghost_check_area+0x130>
    1468: 4b080188     	sub	w8, w12, w8
    146c: 6b09011f     	cmp	w8, w9
    1470: 540001ea     	b.ge	0x14ac <ghost_check_area+0x11c>
    1474: 14000013     	b	0x14c0 <ghost_check_area+0x130>
    1478: b944a50b     	ldr	w11, [x8, #0x4a4]
    147c: 6b09017f     	cmp	w11, w9
    1480: 5400020c     	b.gt	0x14c0 <ghost_check_area+0x130>
    1484: 4b0b018b     	sub	w11, w12, w11
    1488: 6b09017f     	cmp	w11, w9
    148c: 540001ab     	b.lt	0x14c0 <ghost_check_area+0x130>
    1490: b944a109     	ldr	w9, [x8, #0x4a0]
    1494: 6b0a013f     	cmp	w9, w10
    1498: 5400014c     	b.gt	0x14c0 <ghost_check_area+0x130>
    149c: 79488908     	ldrh	w8, [x8, #0x444]
    14a0: 4b090108     	sub	w8, w8, w9
    14a4: 6b0a011f     	cmp	w8, w10
    14a8: 540000cb     	b.lt	0x14c0 <ghost_check_area+0x130>
    14ac: 52800020     	mov	w0, #0x1                // =1
    14b0: d65f03c0     	ret
    14b4: 90000000     	adrp	x0, 0x1000 <get_tp_chip_id+0xec>
		00000000000014b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x703
    14b8: 91000000     	add	x0, x0, #0x0
		00000000000014b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x703
    14bc: 14000003     	b	0x14c8 <ghost_check_area+0x138>
    14c0: 90000000     	adrp	x0, 0x1000 <get_tp_chip_id+0xec>
		00000000000014c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62a9
    14c4: 91000000     	add	x0, x0, #0x0
		00000000000014c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62a9
    14c8: d503233f     	paciasp
    14cc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    14d0: 910003fd     	mov	x29, sp
    14d4: 94000000     	bl	0x14d4 <ghost_check_area+0x144>
		00000000000014d4:  R_AARCH64_CALL26	_printk
    14d8: aa1f03e0     	mov	x0, xzr
    14dc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    14e0: d50323bf     	autiasp
    14e4: d65f03c0     	ret
