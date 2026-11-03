
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006270 <irq_handle>:
    6270: d503233f     	paciasp
    6274: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    6278: f9000bf5     	str	x21, [sp, #0x10]
    627c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    6280: 910003fd     	mov	x29, sp
    6284: aa0103f3     	mov	x19, x1
    6288: 90000000     	adrp	x0, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb54
    628c: 91000000     	add	x0, x0, #0x0
		000000000000628c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb54
    6290: 90000001     	adrp	x1, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006290:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    6294: 91000021     	add	x1, x1, #0x0
		0000000000006294:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    6298: 90000003     	adrp	x3, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006298:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf0
    629c: 91000063     	add	x3, x3, #0x0
		000000000000629c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf0
    62a0: 5280cca2     	mov	w2, #0x665              // =1637
    62a4: 94000000     	bl	0x62a4 <irq_handle+0x34>
		00000000000062a4:  R_AARCH64_CALL26	_printk
    62a8: b946be74     	ldr	w20, [x19, #0x6bc]
    62ac: f942e668     	ldr	x8, [x19, #0x5c8]
    62b0: aa1303e0     	mov	x0, x19
    62b4: f9400d08     	ldr	x8, [x8, #0x18]
    62b8: b85fc110     	ldur	w16, [x8, #-0x4]
    62bc: 729e3e11     	movk	w17, #0xf1f0
    62c0: 72aa2591     	movk	w17, #0x512c, lsl #16
    62c4: 6b11021f     	cmp	w16, w17
    62c8: 54000040     	b.eq	0x62d0 <irq_handle+0x60>
    62cc: d4304500     	brk	#0x8228
    62d0: d63f0100     	blr	x8
    62d4: 7100069f     	cmp	w20, #0x1
    62d8: 54000361     	b.ne	0x6344 <irq_handle+0xd4>
    62dc: 34000d40     	cbz	w0, 0x6484 <irq_handle+0x214>
    62e0: f9431268     	ldr	x8, [x19, #0x620]
    62e4: 39400108     	ldrb	w8, [x8]
    62e8: 7103fd1f     	cmp	w8, #0xff
    62ec: 54001a41     	b.ne	0x6634 <irq_handle+0x3c4>
    62f0: 90000000     	adrp	x0, 0x6000 <tiktap_work_routine+0x1b8>
		00000000000062f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1691
    62f4: 91000000     	add	x0, x0, #0x0
		00000000000062f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1691
    62f8: 90000001     	adrp	x1, 0x6000 <tiktap_work_routine+0x1b8>
		00000000000062f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    62fc: 91000021     	add	x1, x1, #0x0
		00000000000062fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    6300: 90000003     	adrp	x3, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006300:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf0
    6304: 91000063     	add	x3, x3, #0x0
		0000000000006304:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf0
    6308: 5280cea2     	mov	w2, #0x675              // =1653
    630c: 94000000     	bl	0x630c <irq_handle+0x9c>
		000000000000630c:  R_AARCH64_CALL26	_printk
    6310: f942e668     	ldr	x8, [x19, #0x5c8]
    6314: aa1303e0     	mov	x0, x19
    6318: 2a1f03e1     	mov	w1, wzr
    631c: f9408908     	ldr	x8, [x8, #0x110]
    6320: b85fc110     	ldur	w16, [x8, #-0x4]
    6324: 729bedd1     	movk	w17, #0xdf6e
    6328: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    632c: 6b11021f     	cmp	w16, w17
    6330: 54000040     	b.eq	0x6338 <irq_handle+0xc8>
    6334: d4304500     	brk	#0x8228
    6338: d63f0100     	blr	x8
    633c: b906be7f     	str	wzr, [x19, #0x6bc]
    6340: 140000bd     	b	0x6634 <irq_handle+0x3c4>
    6344: 350015c0     	cbnz	w0, 0x65fc <irq_handle+0x38c>
    6348: 39401668     	ldrb	w8, [x19, #0x5]
    634c: 7100051f     	cmp	w8, #0x1
    6350: 54000de1     	b.ne	0x650c <irq_handle+0x29c>
    6354: f942e668     	ldr	x8, [x19, #0x5c8]
    6358: aa1303e0     	mov	x0, x19
    635c: f940b908     	ldr	x8, [x8, #0x170]
    6360: b85fc110     	ldur	w16, [x8, #-0x4]
    6364: 72870a91     	movk	w17, #0x3854
    6368: 72af0971     	movk	w17, #0x784b, lsl #16
    636c: 6b11021f     	cmp	w16, w17
    6370: 54000040     	b.eq	0x6378 <irq_handle+0x108>
    6374: d4304500     	brk	#0x8228
    6378: d63f0100     	blr	x8
    637c: 72001c1f     	tst	w0, #0xff
    6380: 540013e1     	b.ne	0x65fc <irq_handle+0x38c>
    6384: 90000015     	adrp	x21, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006384:  R_AARCH64_ADR_PREL_PG_HI21	aw_rtp
    6388: 39405e68     	ldrb	w8, [x19, #0x17]
    638c: 7100091f     	cmp	w8, #0x2
    6390: 54001361     	b.ne	0x65fc <irq_handle+0x38c>
    6394: 910dc260     	add	x0, x19, #0x370
    6398: 94000000     	bl	0x6398 <irq_handle+0x128>
		0000000000006398:  R_AARCH64_CALL26	mutex_lock
    639c: b9407668     	ldr	w8, [x19, #0x74]
    63a0: 34000c88     	cbz	w8, 0x6530 <irq_handle+0x2c0>
    63a4: f94002a9     	ldr	x9, [x21]
		00000000000063a4:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    63a8: b4000d49     	cbz	x9, 0x6550 <irq_handle+0x2e0>
    63ac: b9445a6a     	ldr	w10, [x19, #0x458]
    63b0: b940012b     	ldr	w11, [x9]
    63b4: aa1303e0     	mov	x0, x19
    63b8: f942e66c     	ldr	x12, [x19, #0x5c8]
    63bc: 53027d4a     	lsr	w10, w10, #2
    63c0: 4b08016b     	sub	w11, w11, w8
    63c4: 8b080128     	add	x8, x9, x8
    63c8: f940698c     	ldr	x12, [x12, #0xd0]
    63cc: 91001101     	add	x1, x8, #0x4
    63d0: 6b0a017f     	cmp	w11, w10
    63d4: 1a8a3174     	csel	w20, w11, w10, lo
    63d8: 2a1403e2     	mov	w2, w20
    63dc: b85fc190     	ldur	w16, [x12, #-0x4]
    63e0: 72965371     	movk	w17, #0xb29b
    63e4: 72b8d4f1     	movk	w17, #0xc6a7, lsl #16
    63e8: 6b11021f     	cmp	w16, w17
    63ec: 54000040     	b.eq	0x63f4 <irq_handle+0x184>
    63f0: d4304580     	brk	#0x822c
    63f4: d63f0180     	blr	x12
    63f8: b9407668     	ldr	w8, [x19, #0x74]
    63fc: f942e669     	ldr	x9, [x19, #0x5c8]
    6400: aa1303e0     	mov	x0, x19
    6404: 0b140108     	add	w8, w8, w20
    6408: b9007668     	str	w8, [x19, #0x74]
    640c: f940b128     	ldr	x8, [x9, #0x160]
    6410: b85fc110     	ldur	w16, [x8, #-0x4]
    6414: 72870a91     	movk	w17, #0x3854
    6418: 72af0971     	movk	w17, #0x784b, lsl #16
    641c: 6b11021f     	cmp	w16, w17
    6420: 54000040     	b.eq	0x6428 <irq_handle+0x1b8>
    6424: d4304500     	brk	#0x8228
    6428: d63f0100     	blr	x8
    642c: f94002a9     	ldr	x9, [x21]
		000000000000642c:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    6430: b9407668     	ldr	w8, [x19, #0x74]
    6434: b9400129     	ldr	w9, [x9]
    6438: 6b09011f     	cmp	w8, w9
    643c: 540009c0     	b.eq	0x6574 <irq_handle+0x304>
    6440: 12000c0a     	and	w10, w0, #0xf
    6444: 3400098a     	cbz	w10, 0x6574 <irq_handle+0x304>
    6448: 910dc260     	add	x0, x19, #0x370
    644c: 94000000     	bl	0x644c <irq_handle+0x1dc>
		000000000000644c:  R_AARCH64_CALL26	mutex_unlock
    6450: f942e668     	ldr	x8, [x19, #0x5c8]
    6454: aa1303e0     	mov	x0, x19
    6458: f940b908     	ldr	x8, [x8, #0x170]
    645c: b85fc110     	ldur	w16, [x8, #-0x4]
    6460: 72870a91     	movk	w17, #0x3854
    6464: 72af0971     	movk	w17, #0x784b, lsl #16
    6468: 6b11021f     	cmp	w16, w17
    646c: 54000040     	b.eq	0x6474 <irq_handle+0x204>
    6470: d4304500     	brk	#0x8228
    6474: d63f0100     	blr	x8
    6478: 72001c1f     	tst	w0, #0xff
    647c: 54fff860     	b.eq	0x6388 <irq_handle+0x118>
    6480: 1400005f     	b	0x65fc <irq_handle+0x38c>
    6484: 90000003     	adrp	x3, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006484:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf0
    6488: 91000063     	add	x3, x3, #0x0
		0000000000006488:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf0
    648c: 90000000     	adrp	x0, 0x6000 <tiktap_work_routine+0x1b8>
		000000000000648c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2948
    6490: 91000000     	add	x0, x0, #0x0
		0000000000006490:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2948
    6494: 90000001     	adrp	x1, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006494:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    6498: 91000021     	add	x1, x1, #0x0
		0000000000006498:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    649c: 5280cd42     	mov	w2, #0x66a              // =1642
    64a0: aa0303e4     	mov	x4, x3
    64a4: 94000000     	bl	0x64a4 <irq_handle+0x234>
		00000000000064a4:  R_AARCH64_CALL26	_printk
    64a8: b9445a68     	ldr	w8, [x19, #0x458]
    64ac: 53017d01     	lsr	w1, w8, #1
    64b0: aa1303e0     	mov	x0, x19
    64b4: 94000066     	bl	0x664c <richtap_update_fifo_data>
    64b8: f942e668     	ldr	x8, [x19, #0x5c8]
    64bc: aa1303e0     	mov	x0, x19
    64c0: f940c108     	ldr	x8, [x8, #0x180]
    64c4: b85fc110     	ldur	w16, [x8, #-0x4]
    64c8: 72870a91     	movk	w17, #0x3854
    64cc: 72af0971     	movk	w17, #0x784b, lsl #16
    64d0: 6b11021f     	cmp	w16, w17
    64d4: 54000040     	b.eq	0x64dc <irq_handle+0x26c>
    64d8: d4304500     	brk	#0x8228
    64dc: d63f0100     	blr	x8
    64e0: 72001c1f     	tst	w0, #0xff
    64e4: 54ffefe1     	b.ne	0x62e0 <irq_handle+0x70>
    64e8: b946be68     	ldr	w8, [x19, #0x6bc]
    64ec: 34ffefa8     	cbz	w8, 0x62e0 <irq_handle+0x70>
    64f0: f9431268     	ldr	x8, [x19, #0x620]
    64f4: 39400108     	ldrb	w8, [x8]
    64f8: 7101551f     	cmp	w8, #0x55
    64fc: 54ffef21     	b.ne	0x62e0 <irq_handle+0x70>
    6500: b9445a68     	ldr	w8, [x19, #0x458]
    6504: 53027d01     	lsr	w1, w8, #2
    6508: 17ffffea     	b	0x64b0 <irq_handle+0x240>
    650c: 90000000     	adrp	x0, 0x6000 <tiktap_work_routine+0x1b8>
		000000000000650c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2730
    6510: 91000000     	add	x0, x0, #0x0
		0000000000006510:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2730
    6514: 90000001     	adrp	x1, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006514:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    6518: 91000021     	add	x1, x1, #0x0
		0000000000006518:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    651c: 90000003     	adrp	x3, 0x6000 <tiktap_work_routine+0x1b8>
		000000000000651c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf0
    6520: 91000063     	add	x3, x3, #0x0
		0000000000006520:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf0
    6524: 5280d6a2     	mov	w2, #0x6b5              // =1717
    6528: 94000000     	bl	0x6528 <irq_handle+0x2b8>
		0000000000006528:  R_AARCH64_CALL26	_printk
    652c: 14000034     	b	0x65fc <irq_handle+0x38c>
    6530: 90000000     	adrp	x0, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006530:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16bf
    6534: 91000000     	add	x0, x0, #0x0
		0000000000006534:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16bf
    6538: 90000001     	adrp	x1, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006538:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    653c: 91000021     	add	x1, x1, #0x0
		000000000000653c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    6540: 90000003     	adrp	x3, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006540:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf0
    6544: 91000063     	add	x3, x3, #0x0
		0000000000006544:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf0
    6548: 5280d082     	mov	w2, #0x684              // =1668
    654c: 14000008     	b	0x656c <irq_handle+0x2fc>
    6550: 90000000     	adrp	x0, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006550:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cf7
    6554: 91000000     	add	x0, x0, #0x0
		0000000000006554:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cf7
    6558: 90000001     	adrp	x1, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006558:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    655c: 91000021     	add	x1, x1, #0x0
		000000000000655c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    6560: 90000003     	adrp	x3, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006560:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf0
    6564: 91000063     	add	x3, x3, #0x0
		0000000000006564:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf0
    6568: 5280d1a2     	mov	w2, #0x68d              // =1677
    656c: 94000000     	bl	0x656c <irq_handle+0x2fc>
		000000000000656c:  R_AARCH64_CALL26	_printk
    6570: 14000021     	b	0x65f4 <irq_handle+0x384>
    6574: 6b09011f     	cmp	w8, w9
    6578: 54000121     	b.ne	0x659c <irq_handle+0x32c>
    657c: 90000000     	adrp	x0, 0x6000 <tiktap_work_routine+0x1b8>
		000000000000657c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c61
    6580: 91000000     	add	x0, x0, #0x0
		0000000000006580:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c61
    6584: 90000001     	adrp	x1, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006584:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    6588: 91000021     	add	x1, x1, #0x0
		0000000000006588:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    658c: 90000003     	adrp	x3, 0x6000 <tiktap_work_routine+0x1b8>
		000000000000658c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf0
    6590: 91000063     	add	x3, x3, #0x0
		0000000000006590:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf0
    6594: 5280d502     	mov	w2, #0x6a8              // =1704
    6598: 14000008     	b	0x65b8 <irq_handle+0x348>
    659c: 90000000     	adrp	x0, 0x6000 <tiktap_work_routine+0x1b8>
		000000000000659c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ff1
    65a0: 91000000     	add	x0, x0, #0x0
		00000000000065a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ff1
    65a4: 90000001     	adrp	x1, 0x6000 <tiktap_work_routine+0x1b8>
		00000000000065a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    65a8: 91000021     	add	x1, x1, #0x0
		00000000000065a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    65ac: 90000003     	adrp	x3, 0x6000 <tiktap_work_routine+0x1b8>
		00000000000065ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf0
    65b0: 91000063     	add	x3, x3, #0x0
		00000000000065b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf0
    65b4: 5280d4a2     	mov	w2, #0x6a5              // =1701
    65b8: 94000000     	bl	0x65b8 <irq_handle+0x348>
		00000000000065b8:  R_AARCH64_CALL26	_printk
    65bc: f942e668     	ldr	x8, [x19, #0x5c8]
    65c0: 3900767f     	strb	wzr, [x19, #0x1d]
    65c4: aa1303e0     	mov	x0, x19
    65c8: 2a1f03e1     	mov	w1, wzr
    65cc: f9408908     	ldr	x8, [x8, #0x110]
    65d0: b85fc110     	ldur	w16, [x8, #-0x4]
    65d4: 729bedd1     	movk	w17, #0xdf6e
    65d8: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    65dc: 6b11021f     	cmp	w16, w17
    65e0: 54000040     	b.eq	0x65e8 <irq_handle+0x378>
    65e4: d4304500     	brk	#0x8228
    65e8: d63f0100     	blr	x8
    65ec: b900767f     	str	wzr, [x19, #0x74]
    65f0: 3900167f     	strb	wzr, [x19, #0x5]
    65f4: 910dc260     	add	x0, x19, #0x370
    65f8: 94000000     	bl	0x65f8 <irq_handle+0x388>
		00000000000065f8:  R_AARCH64_CALL26	mutex_unlock
    65fc: 39405e68     	ldrb	w8, [x19, #0x17]
    6600: 7100091f     	cmp	w8, #0x2
    6604: 54000180     	b.eq	0x6634 <irq_handle+0x3c4>
    6608: f942e668     	ldr	x8, [x19, #0x5c8]
    660c: aa1303e0     	mov	x0, x19
    6610: 2a1f03e1     	mov	w1, wzr
    6614: f9408908     	ldr	x8, [x8, #0x110]
    6618: b85fc110     	ldur	w16, [x8, #-0x4]
    661c: 729bedd1     	movk	w17, #0xdf6e
    6620: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    6624: 6b11021f     	cmp	w16, w17
    6628: 54000040     	b.eq	0x6630 <irq_handle+0x3c0>
    662c: d4304500     	brk	#0x8228
    6630: d63f0100     	blr	x8
    6634: 52800020     	mov	w0, #0x1                // =1
    6638: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    663c: f9400bf5     	ldr	x21, [sp, #0x10]
    6640: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    6644: d50323bf     	autiasp
    6648: d65f03c0     	ret
