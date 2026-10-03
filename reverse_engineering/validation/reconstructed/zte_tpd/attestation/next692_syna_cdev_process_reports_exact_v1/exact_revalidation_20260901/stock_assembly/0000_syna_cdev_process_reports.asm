
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000011408 <syna_cdev_process_reports>:
   11408: d503233f     	paciasp
   1140c: d101c3ff     	sub	sp, sp, #0x70
   11410: a9017bfd     	stp	x29, x30, [sp, #0x10]
   11414: a9026ffc     	stp	x28, x27, [sp, #0x20]
   11418: a90367fa     	stp	x26, x25, [sp, #0x30]
   1141c: a9045ff8     	stp	x24, x23, [sp, #0x40]
   11420: a90557f6     	stp	x22, x21, [sp, #0x50]
   11424: a9064ff4     	stp	x20, x19, [sp, #0x60]
   11428: 910043fd     	add	x29, sp, #0x10
   1142c: b81fc3a0     	stur	w0, [x29, #-0x4]
   11430: b4001a03     	cbz	x3, 0x11770 <syna_cdev_process_reports+0x368>
   11434: 2a0203f3     	mov	w19, w2
   11438: aa0103fa     	mov	x26, x1
   1143c: b4001a81     	cbz	x1, 0x1178c <syna_cdev_process_reports+0x384>
   11440: 9000001c     	adrp	x28, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011440:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x874
   11444: f9400076     	ldr	x22, [x3]
   11448: 11000e74     	add	w20, w19, #0x3
   1144c: b9400388     	ldr	w8, [x28]
		000000000001144c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x874
   11450: aa0303f7     	mov	x23, x3
   11454: 0aa87d19     	bic	w25, w8, w8, asr #31
   11458: 0b140338     	add	w24, w25, w20
   1145c: 94000000     	bl	0x1145c <syna_cdev_process_reports+0x54>
		000000000001145c:  R_AARCH64_CALL26	syna_request_managed_device
   11460: b4001a40     	cbz	x0, 0x117a8 <syna_cdev_process_reports+0x3a0>
   11464: 7100071f     	cmp	w24, #0x1
   11468: 54001a6b     	b.lt	0x117b4 <syna_cdev_process_reports+0x3ac>
   1146c: aa1803e1     	mov	x1, x24
   11470: 5281b802     	mov	w2, #0xdc0              // =3520
   11474: 94000000     	bl	0x11474 <syna_cdev_process_reports+0x6c>
		0000000000011474:  R_AARCH64_CALL26	devm_kmalloc
   11478: b4001a80     	cbz	x0, 0x117c8 <syna_cdev_process_reports+0x3c0>
   1147c: b940039b     	ldr	w27, [x28]
		000000000001147c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x874
   11480: aa0003f5     	mov	x21, x0
   11484: 7100077f     	cmp	w27, #0x1
   11488: 5400020b     	b.lt	0x114c8 <syna_cdev_process_reports+0xc0>
   1148c: 94000000     	bl	0x1148c <syna_cdev_process_reports+0x84>
		000000000001148c:  R_AARCH64_CALL26	syna_request_managed_device
   11490: b4001ac0     	cbz	x0, 0x117e8 <syna_cdev_process_reports+0x3e0>
   11494: aa1b03e1     	mov	x1, x27
   11498: 5281b802     	mov	w2, #0xdc0              // =3520
   1149c: 94000000     	bl	0x1149c <syna_cdev_process_reports+0x94>
		000000000001149c:  R_AARCH64_CALL26	devm_kmalloc
   114a0: f90003e0     	str	x0, [sp]
   114a4: b5000160     	cbnz	x0, 0x114d0 <syna_cdev_process_reports+0xc8>
   114a8: 94000000     	bl	0x114a8 <syna_cdev_process_reports+0xa0>
		00000000000114a8:  R_AARCH64_CALL26	syna_request_managed_device
   114ac: b5001ac0     	cbnz	x0, 0x11804 <syna_cdev_process_reports+0x3fc>
   114b0: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000114b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   114b4: 91000000     	add	x0, x0, #0x0
		00000000000114b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   114b8: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000114b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   114bc: 91000021     	add	x1, x1, #0x0
		00000000000114bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   114c0: 94000000     	bl	0x114c0 <syna_cdev_process_reports+0xb8>
		00000000000114c0:  R_AARCH64_CALL26	_printk
   114c4: 140000d2     	b	0x1180c <syna_cdev_process_reports+0x404>
   114c8: aa1f03fb     	mov	x27, xzr
   114cc: f90003ff     	str	xzr, [sp]
   114d0: b85fc3a8     	ldur	w8, [x29, #-0x4]
   114d4: 7100071f     	cmp	w24, #0x1
   114d8: 390002a8     	strb	w8, [x21]
   114dc: 54002480     	b.eq	0x1196c <syna_cdev_process_reports+0x564>
   114e0: 71000b1f     	cmp	w24, #0x2
   114e4: 390006b3     	strb	w19, [x21, #0x1]
   114e8: 54002420     	b.eq	0x1196c <syna_cdev_process_reports+0x564>
   114ec: 53087e68     	lsr	w8, w19, #8
   114f0: 39000aa8     	strb	w8, [x21, #0x2]
   114f4: 34000193     	cbz	w19, 0x11524 <syna_cdev_process_reports+0x11c>
   114f8: b1000ea0     	adds	x0, x21, #0x3
   114fc: 54001c80     	b.eq	0x1188c <syna_cdev_process_reports+0x484>
   11500: 0b130323     	add	w3, w25, w19
   11504: 6b13007f     	cmp	w3, w19
   11508: 54001b43     	b.lo	0x11870 <syna_cdev_process_reports+0x468>
   1150c: 2a1303e2     	mov	w2, w19
   11510: d1000f01     	sub	x1, x24, #0x3
   11514: eb02003f     	cmp	x1, x2
   11518: 540022c3     	b.lo	0x11970 <syna_cdev_process_reports+0x568>
   1151c: aa1a03e1     	mov	x1, x26
   11520: 94000000     	bl	0x11520 <syna_cdev_process_reports+0x118>
		0000000000011520:  R_AARCH64_CALL26	memcpy
   11524: b9400388     	ldr	w8, [x28]
		0000000000011524:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x874
   11528: 7100091f     	cmp	w8, #0x2
   1152c: 5400042b     	b.lt	0x115b0 <syna_cdev_process_reports+0x1a8>
   11530: b40021fb     	cbz	x27, 0x1196c <syna_cdev_process_reports+0x564>
   11534: 794706c8     	ldrh	w8, [x22, #0x382]
   11538: f94003fa     	ldr	x26, [sp]
   1153c: f100077f     	cmp	x27, #0x1
   11540: 39000348     	strb	w8, [x26]
   11544: 54002140     	b.eq	0x1196c <syna_cdev_process_reports+0x564>
   11548: 53087d08     	lsr	w8, w8, #8
   1154c: 39000748     	strb	w8, [x26, #0x1]
   11550: 529fffc8     	mov	w8, #0xfffe             // =65534
   11554: b9400382     	ldr	w2, [x28]
		0000000000011554:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x874
   11558: 0b080048     	add	w8, w2, w8
   1155c: 72003d1f     	tst	w8, #0xffff
   11560: 540000c0     	b.eq	0x11578 <syna_cdev_process_reports+0x170>
   11564: f1000b7f     	cmp	x27, #0x2
   11568: 54002020     	b.eq	0x1196c <syna_cdev_process_reports+0x564>
   1156c: 394e16c8     	ldrb	w8, [x22, #0x385]
   11570: 39000b48     	strb	w8, [x26, #0x2]
   11574: b9400382     	ldr	w2, [x28]
		0000000000011574:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x874
   11578: 93407e88     	sxtw	x8, w20
   1157c: ab0802a0     	adds	x0, x21, x8
   11580: 54001c80     	b.eq	0x11910 <syna_cdev_process_reports+0x508>
   11584: b4001c7a     	cbz	x26, 0x11910 <syna_cdev_process_reports+0x508>
   11588: 6b19005f     	cmp	w2, w25
   1158c: 54001b48     	b.hi	0x118f4 <syna_cdev_process_reports+0x4ec>
   11590: cb080308     	sub	x8, x24, x8
   11594: 6b18029f     	cmp	w20, w24
   11598: 2a0203e2     	mov	w2, w2
   1159c: 9a8883e1     	csel	x1, xzr, x8, hi
   115a0: eb02003f     	cmp	x1, x2
   115a4: 54001e63     	b.lo	0x11970 <syna_cdev_process_reports+0x568>
   115a8: aa1a03e1     	mov	x1, x26
   115ac: 94000000     	bl	0x115ac <syna_cdev_process_reports+0x1a4>
		00000000000115ac:  R_AARCH64_CALL26	memcpy
   115b0: f9413afa     	ldr	x26, [x23, #0x270]
   115b4: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000115b4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x840
   115b8: 91000000     	add	x0, x0, #0x0
		00000000000115b8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x840
   115bc: 94000000     	bl	0x115bc <syna_cdev_process_reports+0x1b4>
		00000000000115bc:  R_AARCH64_CALL26	mutex_lock
   115c0: b944f2e8     	ldr	w8, [x23, #0x4f0]
   115c4: 90000014     	adrp	x20, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000115c4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x364
   115c8: b9400289     	ldr	w9, [x20]
		00000000000115c8:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x364
   115cc: 7112c11f     	cmp	w8, #0x4b0
   115d0: 54000383     	b.lo	0x11640 <syna_cdev_process_reports+0x238>
   115d4: 6b09011f     	cmp	w8, w9
   115d8: 54001721     	b.ne	0x118bc <syna_cdev_process_reports+0x4b4>
   115dc: f9427ef9     	ldr	x25, [x23, #0x4f8]
   115e0: f9400728     	ldr	x8, [x25, #0x8]
   115e4: f9400109     	ldr	x9, [x8]
   115e8: eb19013f     	cmp	x9, x25
   115ec: 54001621     	b.ne	0x118b0 <syna_cdev_process_reports+0x4a8>
   115f0: f9400329     	ldr	x9, [x25]
   115f4: f940052a     	ldr	x10, [x9, #0x8]
   115f8: eb19015f     	cmp	x10, x25
   115fc: 540015a1     	b.ne	0x118b0 <syna_cdev_process_reports+0x4a8>
   11600: f9000528     	str	x8, [x9, #0x8]
   11604: f9000109     	str	x9, [x8]
   11608: d2802008     	mov	x8, #0x100              // =256
   1160c: 52800449     	mov	w9, #0x22               // =34
   11610: f9400b20     	ldr	x0, [x25, #0x10]
   11614: f2fbd5a8     	movk	x8, #0xdead, lsl #48
   11618: aa090109     	orr	x9, x8, x9
   1161c: a9002728     	stp	x8, x9, [x25]
   11620: 94000000     	bl	0x11620 <syna_cdev_process_reports+0x218>
		0000000000011620:  R_AARCH64_CALL26	kfree
   11624: aa1903e0     	mov	x0, x25
   11628: 94000000     	bl	0x11628 <syna_cdev_process_reports+0x220>
		0000000000011628:  R_AARCH64_CALL26	kfree
   1162c: b944f2e8     	ldr	w8, [x23, #0x4f0]
   11630: b9000288     	str	w8, [x20]
		0000000000011630:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x364
   11634: 51000508     	sub	w8, w8, #0x1
   11638: b904f2e8     	str	w8, [x23, #0x4f0]
   1163c: 14000003     	b	0x11648 <syna_cdev_process_reports+0x240>
   11640: 7112c13f     	cmp	w9, #0x4b0
   11644: 5400148a     	b.ge	0x118d4 <syna_cdev_process_reports+0x4cc>
   11648: d503201f     	nop
   1164c: 90000008     	adrp	x8, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		000000000001164c:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x30
   11650: 52819801     	mov	w1, #0xcc0              // =3264
   11654: 52800602     	mov	w2, #0x30               // =48
   11658: f9400100     	ldr	x0, [x8]
		0000000000011658:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x30
   1165c: 94000000     	bl	0x1165c <syna_cdev_process_reports+0x254>
		000000000001165c:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   11660: aa0003f9     	mov	x25, x0
   11664: b4001ab9     	cbz	x25, 0x119b8 <syna_cdev_process_reports+0x5b0>
   11668: d503201f     	nop
   1166c: aa1803e0     	mov	x0, x24
   11670: 52819801     	mov	w1, #0xcc0              // =3264
   11674: 94000000     	bl	0x11674 <syna_cdev_process_reports+0x26c>
		0000000000011674:  R_AARCH64_CALL26	__kmalloc_noprof
   11678: f9000b20     	str	x0, [x25, #0x10]
   1167c: b4001cc0     	cbz	x0, 0x11a14 <syna_cdev_process_reports+0x60c>
   11680: aa1503e1     	mov	x1, x21
   11684: aa1803e2     	mov	x2, x24
   11688: b9001b38     	str	w24, [x25, #0x18]
   1168c: 94000000     	bl	0x1168c <syna_cdev_process_reports+0x284>
		000000000001168c:  R_AARCH64_CALL26	memcpy
   11690: 91008320     	add	x0, x25, #0x20
   11694: 94000000     	bl	0x11694 <syna_cdev_process_reports+0x28c>
		0000000000011694:  R_AARCH64_CALL26	ktime_get_real_ts64
   11698: 9113e2e2     	add	x2, x23, #0x4f8
   1169c: f94282e1     	ldr	x1, [x23, #0x500]
   116a0: eb02033f     	cmp	x25, x2
   116a4: 540016a0     	b.eq	0x11978 <syna_cdev_process_reports+0x570>
   116a8: eb19003f     	cmp	x1, x25
   116ac: 54001660     	b.eq	0x11978 <syna_cdev_process_reports+0x570>
   116b0: f9400028     	ldr	x8, [x1]
   116b4: eb02011f     	cmp	x8, x2
   116b8: 54001601     	b.ne	0x11978 <syna_cdev_process_reports+0x570>
   116bc: f90282f9     	str	x25, [x23, #0x500]
   116c0: a9000722     	stp	x2, x1, [x25]
   116c4: f9000039     	str	x25, [x1]
   116c8: 90000008     	adrp	x8, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000116c8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x878
   116cc: b944f2e9     	ldr	w9, [x23, #0x4f0]
   116d0: b9400108     	ldr	w8, [x8]
		00000000000116d0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x878
   116d4: 11000529     	add	w9, w9, #0x1
   116d8: 51000508     	sub	w8, w8, #0x1
   116dc: b904f2e9     	str	w9, [x23, #0x4f0]
   116e0: 6b09011f     	cmp	w8, w9
   116e4: 54000182     	b.hs	0x11714 <syna_cdev_process_reports+0x30c>
   116e8: f9402348     	ldr	x8, [x26, #0x40]
   116ec: b4000148     	cbz	x8, 0x11714 <syna_cdev_process_reports+0x30c>
   116f0: 91002340     	add	x0, x26, #0x8
   116f4: 2a1f03e1     	mov	w1, wzr
   116f8: b85fc110     	ldur	w16, [x8, #-0x4]
   116fc: 728c3631     	movk	w17, #0x61b1
   11700: 72a685d1     	movk	w17, #0x342e, lsl #16
   11704: 6b11021f     	cmp	w16, w17
   11708: 54000040     	b.eq	0x11710 <syna_cdev_process_reports+0x308>
   1170c: d4304500     	brk	#0x8228
   11710: d63f0100     	blr	x8
   11714: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011714:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x840
   11718: 91000000     	add	x0, x0, #0x0
		0000000000011718:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x840
   1171c: 94000000     	bl	0x1171c <syna_cdev_process_reports+0x314>
		000000000001171c:  R_AARCH64_CALL26	mutex_unlock
   11720: 911422e0     	add	x0, x23, #0x508
   11724: 52800021     	mov	w1, #0x1                // =1
   11728: 52800022     	mov	w2, #0x1                // =1
   1172c: aa1f03e3     	mov	x3, xzr
   11730: 94000000     	bl	0x11730 <syna_cdev_process_reports+0x328>
		0000000000011730:  R_AARCH64_CALL26	__wake_up
   11734: 2a1f03f4     	mov	w20, wzr
   11738: 2a1f03f7     	mov	w23, wzr
   1173c: f94003fa     	ldr	x26, [sp]
   11740: 94000000     	bl	0x11740 <syna_cdev_process_reports+0x338>
		0000000000011740:  R_AARCH64_CALL26	syna_request_managed_device
   11744: b4000f80     	cbz	x0, 0x11934 <syna_cdev_process_reports+0x52c>
   11748: b400007a     	cbz	x26, 0x11754 <syna_cdev_process_reports+0x34c>
   1174c: aa1a03e1     	mov	x1, x26
   11750: 94000000     	bl	0x11750 <syna_cdev_process_reports+0x348>
		0000000000011750:  R_AARCH64_CALL26	devm_kfree
   11754: 94000000     	bl	0x11754 <syna_cdev_process_reports+0x34c>
		0000000000011754:  R_AARCH64_CALL26	syna_request_managed_device
   11758: b4000fc0     	cbz	x0, 0x11950 <syna_cdev_process_reports+0x548>
   1175c: aa1503e1     	mov	x1, x21
   11760: 94000000     	bl	0x11760 <syna_cdev_process_reports+0x358>
		0000000000011760:  R_AARCH64_CALL26	devm_kfree
   11764: 35000634     	cbnz	w20, 0x11828 <syna_cdev_process_reports+0x420>
   11768: 2a1f03f7     	mov	w23, wzr
   1176c: 14000037     	b	0x11848 <syna_cdev_process_reports+0x440>
   11770: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011770:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ac6
   11774: 91000000     	add	x0, x0, #0x0
		0000000000011774:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ac6
   11778: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011778:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x520e
   1177c: 91000021     	add	x1, x1, #0x0
		000000000001177c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x520e
   11780: 94000000     	bl	0x11780 <syna_cdev_process_reports+0x378>
		0000000000011780:  R_AARCH64_CALL26	_printk
   11784: 128002b7     	mov	w23, #-0x16             // =-22
   11788: 14000030     	b	0x11848 <syna_cdev_process_reports+0x440>
   1178c: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		000000000001178c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4674
   11790: 91000000     	add	x0, x0, #0x0
		0000000000011790:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4674
   11794: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011794:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d6e
   11798: 91000021     	add	x1, x1, #0x0
		0000000000011798:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d6e
   1179c: 94000000     	bl	0x1179c <syna_cdev_process_reports+0x394>
		000000000001179c:  R_AARCH64_CALL26	_printk
   117a0: 128002b7     	mov	w23, #-0x16             // =-22
   117a4: 14000021     	b	0x11828 <syna_cdev_process_reports+0x420>
   117a8: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000117a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   117ac: 91000000     	add	x0, x0, #0x0
		00000000000117ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   117b0: 14000003     	b	0x117bc <syna_cdev_process_reports+0x3b4>
   117b4: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000117b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   117b8: 91000000     	add	x0, x0, #0x0
		00000000000117b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   117bc: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000117bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   117c0: 91000021     	add	x1, x1, #0x0
		00000000000117c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   117c4: 94000000     	bl	0x117c4 <syna_cdev_process_reports+0x3bc>
		00000000000117c4:  R_AARCH64_CALL26	_printk
   117c8: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000117c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x40cd
   117cc: 91000000     	add	x0, x0, #0x0
		00000000000117cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x40cd
   117d0: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000117d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d6e
   117d4: 91000021     	add	x1, x1, #0x0
		00000000000117d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d6e
   117d8: 2a1803e2     	mov	w2, w24
   117dc: 2a1303e3     	mov	w3, w19
   117e0: 94000000     	bl	0x117e0 <syna_cdev_process_reports+0x3d8>
		00000000000117e0:  R_AARCH64_CALL26	_printk
   117e4: 14000010     	b	0x11824 <syna_cdev_process_reports+0x41c>
   117e8: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000117e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   117ec: 91000000     	add	x0, x0, #0x0
		00000000000117ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   117f0: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000117f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   117f4: 91000021     	add	x1, x1, #0x0
		00000000000117f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   117f8: 94000000     	bl	0x117f8 <syna_cdev_process_reports+0x3f0>
		00000000000117f8:  R_AARCH64_CALL26	_printk
   117fc: 94000000     	bl	0x117fc <syna_cdev_process_reports+0x3f4>
		00000000000117fc:  R_AARCH64_CALL26	syna_request_managed_device
   11800: b4ffe580     	cbz	x0, 0x114b0 <syna_cdev_process_reports+0xa8>
   11804: aa1503e1     	mov	x1, x21
   11808: 94000000     	bl	0x11808 <syna_cdev_process_reports+0x400>
		0000000000011808:  R_AARCH64_CALL26	devm_kfree
   1180c: b9400382     	ldr	w2, [x28]
		000000000001180c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x874
   11810: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011810:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbb25
   11814: 91000000     	add	x0, x0, #0x0
		0000000000011814:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbb25
   11818: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011818:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d6e
   1181c: 91000021     	add	x1, x1, #0x0
		000000000001181c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d6e
   11820: 94000000     	bl	0x11820 <syna_cdev_process_reports+0x418>
		0000000000011820:  R_AARCH64_CALL26	_printk
   11824: 12800177     	mov	w23, #-0xc              // =-12
   11828: b85fc3a8     	ldur	w8, [x29, #-0x4]
   1182c: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		000000000001182c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x870b
   11830: 91000000     	add	x0, x0, #0x0
		0000000000011830:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x870b
   11834: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011834:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x520e
   11838: 91000021     	add	x1, x1, #0x0
		0000000000011838:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x520e
   1183c: 2a1303e3     	mov	w3, w19
   11840: 12001d02     	and	w2, w8, #0xff
   11844: 94000000     	bl	0x11844 <syna_cdev_process_reports+0x43c>
		0000000000011844:  R_AARCH64_CALL26	_printk
   11848: 2a1703e0     	mov	w0, w23
   1184c: a9464ff4     	ldp	x20, x19, [sp, #0x60]
   11850: a94557f6     	ldp	x22, x21, [sp, #0x50]
   11854: a9445ff8     	ldp	x24, x23, [sp, #0x40]
   11858: a94367fa     	ldp	x26, x25, [sp, #0x30]
   1185c: a9426ffc     	ldp	x28, x27, [sp, #0x20]
   11860: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   11864: 9101c3ff     	add	sp, sp, #0x70
   11868: d50323bf     	autiasp
   1186c: d65f03c0     	ret
   11870: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011870:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   11874: 91000000     	add	x0, x0, #0x0
		0000000000011874:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   11878: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011878:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   1187c: 91000021     	add	x1, x1, #0x0
		000000000001187c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   11880: 2a1303e2     	mov	w2, w19
   11884: 2a1303e4     	mov	w4, w19
   11888: 94000000     	bl	0x11888 <syna_cdev_process_reports+0x480>
		0000000000011888:  R_AARCH64_CALL26	_printk
   1188c: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		000000000001188c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x270d
   11890: 91000000     	add	x0, x0, #0x0
		0000000000011890:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x270d
   11894: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011894:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d6e
   11898: 91000021     	add	x1, x1, #0x0
		0000000000011898:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d6e
   1189c: 2a1303e2     	mov	w2, w19
   118a0: 94000000     	bl	0x118a0 <syna_cdev_process_reports+0x498>
		00000000000118a0:  R_AARCH64_CALL26	_printk
   118a4: 128002b7     	mov	w23, #-0x16             // =-22
   118a8: 52800034     	mov	w20, #0x1               // =1
   118ac: 17ffffa4     	b	0x1173c <syna_cdev_process_reports+0x334>
   118b0: aa1903e0     	mov	x0, x25
   118b4: 94000000     	bl	0x118b4 <syna_cdev_process_reports+0x4ac>
		00000000000118b4:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
   118b8: 17ffff54     	b	0x11608 <syna_cdev_process_reports+0x200>
   118bc: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000118bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c15
   118c0: 91000000     	add	x0, x0, #0x0
		00000000000118c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c15
   118c4: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000118c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x63f4
   118c8: 91000021     	add	x1, x1, #0x0
		00000000000118c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x63f4
   118cc: 94000000     	bl	0x118cc <syna_cdev_process_reports+0x4c4>
		00000000000118cc:  R_AARCH64_CALL26	_printk
   118d0: 17ffff43     	b	0x115dc <syna_cdev_process_reports+0x1d4>
   118d4: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000118d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6afc
   118d8: 91000000     	add	x0, x0, #0x0
		00000000000118d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6afc
   118dc: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000118dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x63f4
   118e0: 91000021     	add	x1, x1, #0x0
		00000000000118e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x63f4
   118e4: 94000000     	bl	0x118e4 <syna_cdev_process_reports+0x4dc>
		00000000000118e4:  R_AARCH64_CALL26	_printk
   118e8: b944f2e8     	ldr	w8, [x23, #0x4f0]
   118ec: b9000288     	str	w8, [x20]
		00000000000118ec:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x364
   118f0: 17ffff56     	b	0x11648 <syna_cdev_process_reports+0x240>
   118f4: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000118f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   118f8: 91000000     	add	x0, x0, #0x0
		00000000000118f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   118fc: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000118fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   11900: 91000021     	add	x1, x1, #0x0
		0000000000011900:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   11904: 2a1903e3     	mov	w3, w25
   11908: 2a0203e4     	mov	w4, w2
   1190c: 94000000     	bl	0x1190c <syna_cdev_process_reports+0x504>
		000000000001190c:  R_AARCH64_CALL26	_printk
   11910: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011910:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x63c2
   11914: 91000000     	add	x0, x0, #0x0
		0000000000011914:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x63c2
   11918: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011918:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d6e
   1191c: 91000021     	add	x1, x1, #0x0
		000000000001191c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d6e
   11920: 94000000     	bl	0x11920 <syna_cdev_process_reports+0x518>
		0000000000011920:  R_AARCH64_CALL26	_printk
   11924: 128002b7     	mov	w23, #-0x16             // =-22
   11928: 52800034     	mov	w20, #0x1               // =1
   1192c: 94000000     	bl	0x1192c <syna_cdev_process_reports+0x524>
		000000000001192c:  R_AARCH64_CALL26	syna_request_managed_device
   11930: b5fff0c0     	cbnz	x0, 0x11748 <syna_cdev_process_reports+0x340>
   11934: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011934:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   11938: 91000000     	add	x0, x0, #0x0
		0000000000011938:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1193c: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		000000000001193c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   11940: 91000021     	add	x1, x1, #0x0
		0000000000011940:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   11944: 94000000     	bl	0x11944 <syna_cdev_process_reports+0x53c>
		0000000000011944:  R_AARCH64_CALL26	_printk
   11948: 94000000     	bl	0x11948 <syna_cdev_process_reports+0x540>
		0000000000011948:  R_AARCH64_CALL26	syna_request_managed_device
   1194c: b5fff080     	cbnz	x0, 0x1175c <syna_cdev_process_reports+0x354>
   11950: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011950:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   11954: 91000000     	add	x0, x0, #0x0
		0000000000011954:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   11958: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011958:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1195c: 91000021     	add	x1, x1, #0x0
		000000000001195c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   11960: 94000000     	bl	0x11960 <syna_cdev_process_reports+0x558>
		0000000000011960:  R_AARCH64_CALL26	_printk
   11964: 34fff034     	cbz	w20, 0x11768 <syna_cdev_process_reports+0x360>
   11968: 17ffffb0     	b	0x11828 <syna_cdev_process_reports+0x420>
   1196c: d4200020     	brk	#0x1
   11970: 52800220     	mov	w0, #0x11               // =17
   11974: 94000000     	bl	0x11974 <syna_cdev_process_reports+0x56c>
		0000000000011974:  R_AARCH64_CALL26	__fortify_panic
   11978: aa1903e0     	mov	x0, x25
   1197c: 94000000     	bl	0x1197c <syna_cdev_process_reports+0x574>
		000000000001197c:  R_AARCH64_CALL26	__list_add_valid_or_report
   11980: 17ffff52     	b	0x116c8 <syna_cdev_process_reports+0x2c0>
   11984: 90000008     	adrp	x8, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011984:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x30
   11988: d5384114     	mrs	x20, SP_EL0
   1198c: f9402a96     	ldr	x22, [x20, #0x50]
   11990: f9400100     	ldr	x0, [x8]
		0000000000011990:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x30
   11994: 90000008     	adrp	x8, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011994:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x190
   11998: 91000108     	add	x8, x8, #0x0
		0000000000011998:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x190
   1199c: 52819801     	mov	w1, #0xcc0              // =3264
   119a0: 52800602     	mov	w2, #0x30               // =48
   119a4: f9002a88     	str	x8, [x20, #0x50]
   119a8: 94000000     	bl	0x119a8 <syna_cdev_process_reports+0x5a0>
		00000000000119a8:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   119ac: aa0003f9     	mov	x25, x0
   119b0: f9002a96     	str	x22, [x20, #0x50]
   119b4: b5ffe5b9     	cbnz	x25, 0x11668 <syna_cdev_process_reports+0x260>
   119b8: 90000017     	adrp	x23, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000119b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x63f4
   119bc: 910002f7     	add	x23, x23, #0x0
		00000000000119bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x63f4
   119c0: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000119c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x469e
   119c4: 91000000     	add	x0, x0, #0x0
		00000000000119c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x469e
   119c8: aa1703e1     	mov	x1, x23
   119cc: 94000000     	bl	0x119cc <syna_cdev_process_reports+0x5c4>
		00000000000119cc:  R_AARCH64_CALL26	_printk
   119d0: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000119d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ff7
   119d4: 91000000     	add	x0, x0, #0x0
		00000000000119d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ff7
   119d8: aa1703e1     	mov	x1, x23
   119dc: 52800602     	mov	w2, #0x30               // =48
   119e0: 94000000     	bl	0x119e0 <syna_cdev_process_reports+0x5d8>
		00000000000119e0:  R_AARCH64_CALL26	_printk
   119e4: 14000012     	b	0x11a2c <syna_cdev_process_reports+0x624>
   119e8: d5384114     	mrs	x20, SP_EL0
   119ec: f9402a96     	ldr	x22, [x20, #0x50]
   119f0: 90000008     	adrp	x8, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000119f0:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x1b8
   119f4: 91000108     	add	x8, x8, #0x0
		00000000000119f4:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x1b8
   119f8: aa1803e0     	mov	x0, x24
   119fc: 52819801     	mov	w1, #0xcc0              // =3264
   11a00: f9002a88     	str	x8, [x20, #0x50]
   11a04: 94000000     	bl	0x11a04 <syna_cdev_process_reports+0x5fc>
		0000000000011a04:  R_AARCH64_CALL26	__kmalloc_noprof
   11a08: f9002a96     	str	x22, [x20, #0x50]
   11a0c: f9000b20     	str	x0, [x25, #0x10]
   11a10: b5ffe380     	cbnz	x0, 0x11680 <syna_cdev_process_reports+0x278>
   11a14: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011a14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x83b
   11a18: 91000000     	add	x0, x0, #0x0
		0000000000011a18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x83b
   11a1c: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011a1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x63f4
   11a20: 91000021     	add	x1, x1, #0x0
		0000000000011a20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x63f4
   11a24: 2a1803e2     	mov	w2, w24
   11a28: 94000000     	bl	0x11a28 <syna_cdev_process_reports+0x620>
		0000000000011a28:  R_AARCH64_CALL26	_printk
   11a2c: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011a2c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x840
   11a30: 91000000     	add	x0, x0, #0x0
		0000000000011a30:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x840
   11a34: 94000000     	bl	0x11a34 <syna_cdev_process_reports+0x62c>
		0000000000011a34:  R_AARCH64_CALL26	mutex_unlock
   11a38: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011a38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3897
   11a3c: 91000000     	add	x0, x0, #0x0
		0000000000011a3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3897
   11a40: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011a40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d6e
   11a44: 91000021     	add	x1, x1, #0x0
		0000000000011a44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d6e
   11a48: 94000000     	bl	0x11a48 <syna_cdev_process_reports+0x640>
		0000000000011a48:  R_AARCH64_CALL26	_printk
   11a4c: 12800177     	mov	w23, #-0xc              // =-12
   11a50: 52800034     	mov	w20, #0x1               // =1
   11a54: 17ffff3a     	b	0x1173c <syna_cdev_process_reports+0x334>
