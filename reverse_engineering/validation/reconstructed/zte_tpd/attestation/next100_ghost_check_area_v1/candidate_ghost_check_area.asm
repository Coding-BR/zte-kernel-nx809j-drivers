
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001388 <ghost_check_area>:
    1388: 90000008     	adrp	x8, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001388:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    138c: 79403009     	ldrh	w9, [x0, #0x18]
    1390: f9400108     	ldr	x8, [x8]
		0000000000001390:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    1394: b940110b     	ldr	w11, [x8, #0x10]
    1398: 121e796a     	and	w10, w11, #0xfffffffd
    139c: 7100055f     	cmp	w10, #0x1
    13a0: 54000381     	b.ne	0x1410 <ghost_check_area+0x88>
    13a4: 7940380a     	ldrh	w10, [x0, #0x1c]
    13a8: b9449d0d     	ldr	w13, [x8, #0x49c]
    13ac: 6b0a01bf     	cmp	w13, w10
    13b0: 540007ec     	b.gt	0x14ac <ghost_check_area+0x124>
    13b4: 7948890c     	ldrh	w12, [x8, #0x444]
    13b8: 90000000     	adrp	x0, 0x1000 <get_tp_chip_id+0xf4>
		00000000000013b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x703
    13bc: 91000000     	add	x0, x0, #0x0
		00000000000013bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x703
    13c0: 4b0d018c     	sub	w12, w12, w13
    13c4: 6b0a019f     	cmp	w12, w10
    13c8: 540007cb     	b.lt	0x14c0 <ghost_check_area+0x138>
    13cc: 6b0901bf     	cmp	w13, w9
    13d0: 5400078c     	b.gt	0x14c0 <ghost_check_area+0x138>
    13d4: 7948850c     	ldrh	w12, [x8, #0x442]
    13d8: 4b0d018d     	sub	w13, w12, w13
    13dc: 6b0901bf     	cmp	w13, w9
    13e0: 5400070b     	b.lt	0x14c0 <ghost_check_area+0x138>
    13e4: 7100057f     	cmp	w11, #0x1
    13e8: 5400028c     	b.gt	0x1438 <ghost_check_area+0xb0>
    13ec: 54000420     	b.eq	0x1470 <ghost_check_area+0xe8>
    13f0: 350005ab     	cbnz	w11, 0x14a4 <ghost_check_area+0x11c>
    13f4: 7948890b     	ldrh	w11, [x8, #0x444]
    13f8: b944a50d     	ldr	w13, [x8, #0x4a4]
    13fc: 4b0d016b     	sub	w11, w11, w13
    1400: 6b0a017f     	cmp	w11, w10
    1404: 5400028b     	b.lt	0x1454 <ghost_check_area+0xcc>
    1408: 52800020     	mov	w0, #0x1                // =1
    140c: d65f03c0     	ret
    1410: b9449d0a     	ldr	w10, [x8, #0x49c]
    1414: 6b09015f     	cmp	w10, w9
    1418: 540004ac     	b.gt	0x14ac <ghost_check_area+0x124>
    141c: 7948850c     	ldrh	w12, [x8, #0x442]
    1420: 4b0a018a     	sub	w10, w12, w10
    1424: 6b09015f     	cmp	w10, w9
    1428: 5400042b     	b.lt	0x14ac <ghost_check_area+0x124>
    142c: 7940380a     	ldrh	w10, [x0, #0x1c]
    1430: 7100057f     	cmp	w11, #0x1
    1434: 54fffdcd     	b.le	0x13ec <ghost_check_area+0x64>
    1438: 71000d7f     	cmp	w11, #0x3
    143c: 540001a0     	b.eq	0x1470 <ghost_check_area+0xe8>
    1440: 7100097f     	cmp	w11, #0x2
    1444: 54000301     	b.ne	0x14a4 <ghost_check_area+0x11c>
    1448: b944a50b     	ldr	w11, [x8, #0x4a4]
    144c: 6b0a017f     	cmp	w11, w10
    1450: 540002ad     	b.le	0x14a4 <ghost_check_area+0x11c>
    1454: b944a108     	ldr	w8, [x8, #0x4a0]
    1458: 6b09011f     	cmp	w8, w9
    145c: 540002ec     	b.gt	0x14b8 <ghost_check_area+0x130>
    1460: 4b080188     	sub	w8, w12, w8
    1464: 6b09011f     	cmp	w8, w9
    1468: 540001ea     	b.ge	0x14a4 <ghost_check_area+0x11c>
    146c: 14000013     	b	0x14b8 <ghost_check_area+0x130>
    1470: b944a50b     	ldr	w11, [x8, #0x4a4]
    1474: 6b09017f     	cmp	w11, w9
    1478: 5400020c     	b.gt	0x14b8 <ghost_check_area+0x130>
    147c: 4b0b018b     	sub	w11, w12, w11
    1480: 6b09017f     	cmp	w11, w9
    1484: 540001ab     	b.lt	0x14b8 <ghost_check_area+0x130>
    1488: b944a109     	ldr	w9, [x8, #0x4a0]
    148c: 6b0a013f     	cmp	w9, w10
    1490: 5400014c     	b.gt	0x14b8 <ghost_check_area+0x130>
    1494: 79488908     	ldrh	w8, [x8, #0x444]
    1498: 4b090108     	sub	w8, w8, w9
    149c: 6b0a011f     	cmp	w8, w10
    14a0: 540000cb     	b.lt	0x14b8 <ghost_check_area+0x130>
    14a4: 52800020     	mov	w0, #0x1                // =1
    14a8: d65f03c0     	ret
    14ac: 90000000     	adrp	x0, 0x1000 <get_tp_chip_id+0xf4>
		00000000000014ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x703
    14b0: 91000000     	add	x0, x0, #0x0
		00000000000014b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x703
    14b4: 14000003     	b	0x14c0 <ghost_check_area+0x138>
    14b8: 90000000     	adrp	x0, 0x1000 <get_tp_chip_id+0xf4>
		00000000000014b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x636e
    14bc: 91000000     	add	x0, x0, #0x0
		00000000000014bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x636e
    14c0: d503233f     	paciasp
    14c4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    14c8: 910003fd     	mov	x29, sp
    14cc: 94000000     	bl	0x14cc <ghost_check_area+0x144>
		00000000000014cc:  R_AARCH64_CALL26	_printk
    14d0: aa1f03e0     	mov	x0, xzr
    14d4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    14d8: d50323bf     	autiasp
    14dc: d65f03c0     	ret
