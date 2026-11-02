
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000084c0 <ram_load>:
    84c0: d503233f     	paciasp
    84c4: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    84c8: a9015ff8     	stp	x24, x23, [sp, #0x10]
    84cc: a90257f6     	stp	x22, x21, [sp, #0x20]
    84d0: a9034ff4     	stp	x20, x19, [sp, #0x30]
    84d4: 910003fd     	mov	x29, sp
    84d8: 90000015     	adrp	x21, 0x8000 <reg_show+0x10>
		00000000000084d8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x44
    84dc: 90000009     	adrp	x9, 0x8000 <reg_show+0x10>
		00000000000084dc:  R_AARCH64_ADR_PREL_PG_HI21	aw_ram_name
    84e0: aa0103f3     	mov	x19, x1
    84e4: 394002a8     	ldrb	w8, [x21]
		00000000000084e4:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x44
    84e8: f9400124     	ldr	x4, [x9]
		00000000000084e8:  R_AARCH64_LDST64_ABS_LO12_NC	aw_ram_name
    84ec: 11000508     	add	w8, w8, #0x1
    84f0: 390002a8     	strb	w8, [x21]
		00000000000084f0:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x44
    84f4: b50003c0     	cbnz	x0, 0x856c <ram_load+0xac>
    84f8: 90000000     	adrp	x0, 0x8000 <reg_show+0x10>
		00000000000084f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xebe
    84fc: 91000000     	add	x0, x0, #0x0
		00000000000084fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xebe
    8500: 90000001     	adrp	x1, 0x8000 <reg_show+0x10>
		0000000000008500:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    8504: 91000021     	add	x1, x1, #0x0
		0000000000008504:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    8508: 90000003     	adrp	x3, 0x8000 <reg_show+0x10>
		0000000000008508:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16e9
    850c: 91000063     	add	x3, x3, #0x0
		000000000000850c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16e9
    8510: 5280dd22     	mov	w2, #0x6e9              // =1769
    8514: 94000000     	bl	0x8514 <ram_load+0x54>
		0000000000008514:  R_AARCH64_CALL26	_printk
    8518: aa1f03e0     	mov	x0, xzr
    851c: 94000000     	bl	0x851c <ram_load+0x5c>
		000000000000851c:  R_AARCH64_CALL26	release_firmware
    8520: 394002a8     	ldrb	w8, [x21]
		0000000000008520:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x44
    8524: 7100511f     	cmp	w8, #0x14
    8528: 540016e8     	b.hi	0x8804 <ram_load+0x344>
    852c: 90000008     	adrp	x8, 0x8000 <reg_show+0x10>
		000000000000852c:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    8530: 910f0262     	add	x2, x19, #0x3c0
    8534: 52800400     	mov	w0, #0x20               // =32
    8538: f9400101     	ldr	x1, [x8]
		0000000000008538:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    853c: 52801f43     	mov	w3, #0xfa               // =250
    8540: 94000000     	bl	0x8540 <ram_load+0x80>
		0000000000008540:  R_AARCH64_CALL26	queue_delayed_work_on
    8544: 394002a4     	ldrb	w4, [x21]
		0000000000008544:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x44
    8548: 90000000     	adrp	x0, 0x8000 <reg_show+0x10>
		0000000000008548:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xee1
    854c: 91000000     	add	x0, x0, #0x0
		000000000000854c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xee1
    8550: 90000001     	adrp	x1, 0x8000 <reg_show+0x10>
		0000000000008550:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    8554: 91000021     	add	x1, x1, #0x0
		0000000000008554:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    8558: 90000003     	adrp	x3, 0x8000 <reg_show+0x10>
		0000000000008558:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16e9
    855c: 91000063     	add	x3, x3, #0x0
		000000000000855c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16e9
    8560: 5280dde2     	mov	w2, #0x6ef              // =1775
    8564: 94000000     	bl	0x8564 <ram_load+0xa4>
		0000000000008564:  R_AARCH64_CALL26	_printk
    8568: 140000a7     	b	0x8804 <ram_load+0x344>
    856c: f9400005     	ldr	x5, [x0]
    8570: aa0003f4     	mov	x20, x0
    8574: 90000000     	adrp	x0, 0x8000 <reg_show+0x10>
		0000000000008574:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2020
    8578: 91000000     	add	x0, x0, #0x0
		0000000000008578:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2020
    857c: 90000001     	adrp	x1, 0x8000 <reg_show+0x10>
		000000000000857c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    8580: 91000021     	add	x1, x1, #0x0
		0000000000008580:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    8584: 90000003     	adrp	x3, 0x8000 <reg_show+0x10>
		0000000000008584:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16e9
    8588: 91000063     	add	x3, x3, #0x0
		0000000000008588:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16e9
    858c: 5280de82     	mov	w2, #0x6f4              // =1780
    8590: 94000000     	bl	0x8590 <ram_load+0xd0>
		0000000000008590:  R_AARCH64_CALL26	_printk
    8594: a9402289     	ldp	x9, x8, [x20]
    8598: f1000d2e     	subs	x14, x9, #0x3
    859c: 54000203     	b.lo	0x85dc <ram_load+0x11c>
    85a0: d100092d     	sub	x13, x9, #0x2
    85a4: f10009bf     	cmp	x13, #0x2
    85a8: 54000762     	b.hs	0x8694 <ram_load+0x1d4>
    85ac: 2a1f03eb     	mov	w11, wzr
    85b0: 5280004a     	mov	w10, #0x2               // =2
    85b4: 5280004c     	mov	w12, #0x2               // =2
    85b8: 1100058c     	add	w12, w12, #0x1
    85bc: 386a690d     	ldrb	w13, [x8, x10]
    85c0: 93407d8a     	sxtw	x10, w12
    85c4: 1100058c     	add	w12, w12, #0x1
    85c8: eb0a013f     	cmp	x9, x10
    85cc: 0b0d016b     	add	w11, w11, w13
    85d0: 54ffff68     	b.hi	0x85bc <ram_load+0xfc>
    85d4: 12003d75     	and	w21, w11, #0xffff
    85d8: 14000002     	b	0x85e0 <ram_load+0x120>
    85dc: 2a1f03f5     	mov	w21, wzr
    85e0: 79400108     	ldrh	w8, [x8]
    85e4: 5ac00908     	rev	w8, w8
    85e8: 6b4842bf     	cmp	w21, w8, lsr #16
    85ec: 540003c1     	b.ne	0x8664 <ram_load+0x1a4>
    85f0: 90000000     	adrp	x0, 0x8000 <reg_show+0x10>
		00000000000085f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x251e
    85f4: 91000000     	add	x0, x0, #0x0
		00000000000085f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x251e
    85f8: 90000001     	adrp	x1, 0x8000 <reg_show+0x10>
		00000000000085f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    85fc: 91000021     	add	x1, x1, #0x0
		00000000000085fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    8600: 90000003     	adrp	x3, 0x8000 <reg_show+0x10>
		0000000000008600:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16e9
    8604: 91000063     	add	x3, x3, #0x0
		0000000000008604:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16e9
    8608: 5280dfa2     	mov	w2, #0x6fd              // =1789
    860c: 2a1503e4     	mov	w4, w21
    8610: 94000000     	bl	0x8610 <ram_load+0x150>
		0000000000008610:  R_AARCH64_CALL26	_printk
    8614: b9045675     	str	w21, [x19, #0x454]
    8618: d503201f     	nop
    861c: f9400288     	ldr	x8, [x20]
    8620: 5281b801     	mov	w1, #0xdc0              // =3520
    8624: 91001116     	add	x22, x8, #0x4
    8628: aa1603e0     	mov	x0, x22
    862c: 94000000     	bl	0x862c <ram_load+0x16c>
		000000000000862c:  R_AARCH64_CALL26	__kmalloc_noprof
    8630: aa0003f5     	mov	x21, x0
    8634: b5000835     	cbnz	x21, 0x8738 <ram_load+0x278>
    8638: aa1403e0     	mov	x0, x20
    863c: 94000000     	bl	0x863c <ram_load+0x17c>
		000000000000863c:  R_AARCH64_CALL26	release_firmware
    8640: 90000000     	adrp	x0, 0x8000 <reg_show+0x10>
		0000000000008640:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x724
    8644: 91000000     	add	x0, x0, #0x0
		0000000000008644:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x724
    8648: 90000001     	adrp	x1, 0x8000 <reg_show+0x10>
		0000000000008648:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    864c: 91000021     	add	x1, x1, #0x0
		000000000000864c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    8650: 90000003     	adrp	x3, 0x8000 <reg_show+0x10>
		0000000000008650:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16e9
    8654: 91000063     	add	x3, x3, #0x0
		0000000000008654:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16e9
    8658: 5280e082     	mov	w2, #0x704              // =1796
    865c: 94000000     	bl	0x865c <ram_load+0x19c>
		000000000000865c:  R_AARCH64_CALL26	_printk
    8660: 14000069     	b	0x8804 <ram_load+0x344>
    8664: 90000000     	adrp	x0, 0x8000 <reg_show+0x10>
		0000000000008664:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x119
    8668: 91000000     	add	x0, x0, #0x0
		0000000000008668:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x119
    866c: 90000001     	adrp	x1, 0x8000 <reg_show+0x10>
		000000000000866c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    8670: 91000021     	add	x1, x1, #0x0
		0000000000008670:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    8674: 90000003     	adrp	x3, 0x8000 <reg_show+0x10>
		0000000000008674:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16e9
    8678: 91000063     	add	x3, x3, #0x0
		0000000000008678:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16e9
    867c: 5280df22     	mov	w2, #0x6f9              // =1785
    8680: 2a1503e4     	mov	w4, w21
    8684: 94000000     	bl	0x8684 <ram_load+0x1c4>
		0000000000008684:  R_AARCH64_CALL26	_printk
    8688: aa1403e0     	mov	x0, x20
    868c: 94000000     	bl	0x868c <ram_load+0x1cc>
		000000000000868c:  R_AARCH64_CALL26	release_firmware
    8690: 1400005d     	b	0x8804 <ram_load+0x344>
    8694: 529fffaa     	mov	w10, #0xfffd            // =65533
    8698: 2a1f03eb     	mov	w11, wzr
    869c: 5280004c     	mov	w12, #0x2               // =2
    86a0: 72afffea     	movk	w10, #0x7fff, lsl #16
    86a4: 6b0a01df     	cmp	w14, w10
    86a8: 5280004a     	mov	w10, #0x2               // =2
    86ac: 54fff868     	b.hi	0x85b8 <ram_load+0xf8>
    86b0: 321e73ef     	mov	w15, #0x7ffffffc        // =2147483644
    86b4: 6b0f01df     	cmp	w14, w15
    86b8: 54fff808     	b.hi	0x85b8 <ram_load+0xf8>
    86bc: d360fdce     	lsr	x14, x14, #32
    86c0: b5fff7ce     	cbnz	x14, 0x85b8 <ram_load+0xf8>
    86c4: 927ff9af     	and	x15, x13, #0xfffffffffffffffe
    86c8: 2a1f03eb     	mov	w11, wzr
    86cc: 91000d10     	add	x16, x8, #0x3
    86d0: 910009ea     	add	x10, x15, #0x2
    86d4: 110009ec     	add	w12, w15, #0x2
    86d8: aa0f03f1     	mov	x17, x15
    86dc: 385ff200     	ldurb	w0, [x16, #-0x1]
    86e0: 38402601     	ldrb	w1, [x16], #0x2
    86e4: f1000a31     	subs	x17, x17, #0x2
    86e8: 0b00016b     	add	w11, w11, w0
    86ec: 0b0101ce     	add	w14, w14, w1
    86f0: 54ffff61     	b.ne	0x86dc <ram_load+0x21c>
    86f4: eb0f01bf     	cmp	x13, x15
    86f8: 0b0b01cb     	add	w11, w14, w11
    86fc: 54fff5e1     	b.ne	0x85b8 <ram_load+0xf8>
    8700: 17ffffb5     	b	0x85d4 <ram_load+0x114>
    8704: 90000008     	adrp	x8, 0x8000 <reg_show+0x10>
		0000000000008704:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x78
    8708: 91000108     	add	x8, x8, #0x0
		0000000000008708:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x78
    870c: d5384117     	mrs	x23, SP_EL0
    8710: f9402af8     	ldr	x24, [x23, #0x50]
    8714: f9002ae8     	str	x8, [x23, #0x50]
    8718: 5281b801     	mov	w1, #0xdc0              // =3520
    871c: f9400288     	ldr	x8, [x20]
    8720: 91001116     	add	x22, x8, #0x4
    8724: aa1603e0     	mov	x0, x22
    8728: 94000000     	bl	0x8728 <ram_load+0x268>
		0000000000008728:  R_AARCH64_CALL26	__kmalloc_noprof
    872c: aa0003f5     	mov	x21, x0
    8730: f9002af8     	str	x24, [x23, #0x50]
    8734: b4fff835     	cbz	x21, 0x8638 <ram_load+0x178>
    8738: f10012c8     	subs	x8, x22, #0x4
    873c: 54000703     	b.lo	0x881c <ram_load+0x35c>
    8740: f9400282     	ldr	x2, [x20]
    8744: 9a8833e1     	csel	x1, xzr, x8, lo
    8748: eb02003f     	cmp	x1, x2
    874c: b90002a2     	str	w2, [x21]
    8750: 54000683     	b.lo	0x8820 <ram_load+0x360>
    8754: f9400681     	ldr	x1, [x20, #0x8]
    8758: 910012a0     	add	x0, x21, #0x4
    875c: 94000000     	bl	0x875c <ram_load+0x29c>
		000000000000875c:  R_AARCH64_CALL26	memcpy
    8760: aa1403e0     	mov	x0, x20
    8764: 94000000     	bl	0x8764 <ram_load+0x2a4>
		0000000000008764:  R_AARCH64_CALL26	release_firmware
    8768: f942e668     	ldr	x8, [x19, #0x5c8]
    876c: aa1303e0     	mov	x0, x19
    8770: aa1503e1     	mov	x1, x21
    8774: f9401908     	ldr	x8, [x8, #0x30]
    8778: b85fc110     	ldur	w16, [x8, #-0x4]
    877c: 72818211     	movk	w17, #0xc10
    8780: 72ba2e11     	movk	w17, #0xd170, lsl #16
    8784: 6b11021f     	cmp	w16, w17
    8788: 54000040     	b.eq	0x8790 <ram_load+0x2d0>
    878c: d4304500     	brk	#0x8228
    8790: d63f0100     	blr	x8
    8794: 35000240     	cbnz	w0, 0x87dc <ram_load+0x31c>
    8798: b94002a8     	ldr	w8, [x21]
    879c: 39517a69     	ldrb	w9, [x19, #0x45e]
    87a0: 5280002a     	mov	w10, #0x1               // =1
    87a4: 90000000     	adrp	x0, 0x8000 <reg_show+0x10>
		00000000000087a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x189a
    87a8: 91000000     	add	x0, x0, #0x0
		00000000000087a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x189a
    87ac: 90000001     	adrp	x1, 0x8000 <reg_show+0x10>
		00000000000087ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    87b0: 91000021     	add	x1, x1, #0x0
		00000000000087b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    87b4: 4b090108     	sub	w8, w8, w9
    87b8: 90000003     	adrp	x3, 0x8000 <reg_show+0x10>
		00000000000087b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16e9
    87bc: 91000063     	add	x3, x3, #0x0
		00000000000087bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16e9
    87c0: 5280e222     	mov	w2, #0x711              // =1809
    87c4: 39001a6a     	strb	w10, [x19, #0x6]
    87c8: b9045268     	str	w8, [x19, #0x450]
    87cc: 94000000     	bl	0x87cc <ram_load+0x30c>
		00000000000087cc:  R_AARCH64_CALL26	_printk
    87d0: aa1303e0     	mov	x0, x19
    87d4: 94000015     	bl	0x8828 <get_ram_num>
    87d8: 14000009     	b	0x87fc <ram_load+0x33c>
    87dc: 90000000     	adrp	x0, 0x8000 <reg_show+0x10>
		00000000000087dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2283
    87e0: 91000000     	add	x0, x0, #0x0
		00000000000087e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2283
    87e4: 90000001     	adrp	x1, 0x8000 <reg_show+0x10>
		00000000000087e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    87e8: 91000021     	add	x1, x1, #0x0
		00000000000087e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    87ec: 90000003     	adrp	x3, 0x8000 <reg_show+0x10>
		00000000000087ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16e9
    87f0: 91000063     	add	x3, x3, #0x0
		00000000000087f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16e9
    87f4: 5280e182     	mov	w2, #0x70c              // =1804
    87f8: 94000000     	bl	0x87f8 <ram_load+0x338>
		00000000000087f8:  R_AARCH64_CALL26	_printk
    87fc: aa1503e0     	mov	x0, x21
    8800: 94000000     	bl	0x8800 <ram_load+0x340>
		0000000000008800:  R_AARCH64_CALL26	kfree
    8804: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    8808: a94257f6     	ldp	x22, x21, [sp, #0x20]
    880c: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    8810: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    8814: d50323bf     	autiasp
    8818: d65f03c0     	ret
    881c: d4200020     	brk	#0x1
    8820: 52800220     	mov	w0, #0x11               // =17
    8824: 94000000     	bl	0x8824 <ram_load+0x364>
		0000000000008824:  R_AARCH64_CALL26	__fortify_panic
