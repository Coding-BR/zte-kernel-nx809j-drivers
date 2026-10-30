
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002332c <tpd_touch_press>:
   2332c: d503233f     	paciasp
   23330: d101c3ff     	sub	sp, sp, #0x70
   23334: a9017bfd     	stp	x29, x30, [sp, #0x10]
   23338: a9026ffc     	stp	x28, x27, [sp, #0x20]
   2333c: a90367fa     	stp	x26, x25, [sp, #0x30]
   23340: a9045ff8     	stp	x24, x23, [sp, #0x40]
   23344: a90557f6     	stp	x22, x21, [sp, #0x50]
   23348: a9064ff4     	stp	x20, x19, [sp, #0x60]
   2334c: 910043fd     	add	x29, sp, #0x10
   23350: 90000014     	adrp	x20, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023350:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   23354: 12003c28     	and	w8, w1, #0xffff
   23358: 721f383f     	tst	w1, #0xfffe
   2335c: f940029b     	ldr	x27, [x20]
		000000000002335c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   23360: 12003c4a     	and	w10, w2, #0xffff
   23364: 1a9f1508     	csinc	w8, w8, wzr, ne
   23368: 721f385f     	tst	w2, #0xfffe
   2336c: b9401369     	ldr	w9, [x27, #0x10]
   23370: 1a9f154a     	csinc	w10, w10, wzr, ne
   23374: 7100013f     	cmp	w9, #0x0
   23378: 1a8a0053     	csel	w19, w2, w10, eq
   2337c: 1a880035     	csel	w21, w1, w8, eq
   23380: 12003c62     	and	w2, w3, #0xffff
   23384: b4001340     	cbz	x0, 0x235ec <tpd_touch_press+0x2c0>
   23388: 7100285f     	cmp	w2, #0xa
   2338c: 54001302     	b.hs	0x235ec <tpd_touch_press+0x2c0>
   23390: 2a0303f7     	mov	w23, w3
   23394: aa0003f8     	mov	x24, x0
   23398: 2a0403f9     	mov	w25, w4
   2339c: 92403ee8     	and	x8, x23, #0xffff
   233a0: 2a0503f6     	mov	w22, w5
   233a4: b81fc3a2     	stur	w2, [x29, #-0x4]
   233a8: 8b233108     	add	x8, x8, w3, uxth #4
   233ac: d37df11a     	lsl	x26, x8, #3
   233b0: 90000008     	adrp	x8, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		00000000000233b0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info
   233b4: 91000108     	add	x8, x8, #0x0
		00000000000233b4:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info
   233b8: 8b1a011c     	add	x28, x8, x26
   233bc: 39414388     	ldrb	w8, [x28, #0x50]
   233c0: f9004380     	str	x0, [x28, #0x80]
   233c4: 7100051f     	cmp	w8, #0x1
   233c8: 54000721     	b.ne	0x234ac <tpd_touch_press+0x180>
   233cc: 39409768     	ldrb	w8, [x27, #0x25]
   233d0: 34001da8     	cbz	w8, 0x23784 <tpd_touch_press+0x458>
   233d4: 39416788     	ldrb	w8, [x28, #0x59]
   233d8: 37001d68     	tbnz	w8, #0x0, 0x23784 <tpd_touch_press+0x458>
   233dc: b9401368     	ldr	w8, [x27, #0x10]
   233e0: 321f0108     	orr	w8, w8, #0x2
   233e4: 71000d1f     	cmp	w8, #0x3
   233e8: 54001ce0     	b.eq	0x23784 <tpd_touch_press+0x458>
   233ec: 79488768     	ldrh	w8, [x27, #0x442]
   233f0: 12003eab     	and	w11, w21, #0xffff
   233f4: 53027d09     	lsr	w9, w8, #2
   233f8: 6b0b013f     	cmp	w9, w11
   233fc: 54000102     	b.hs	0x2341c <tpd_touch_press+0xf0>
   23400: 0b08050a     	add	w10, w8, w8, lsl #1
   23404: 6b4a097f     	cmp	w11, w10, lsr #2
   23408: 540000a2     	b.hs	0x2341c <tpd_touch_press+0xf0>
   2340c: 52800028     	mov	w8, #0x1                // =1
   23410: 39016788     	strb	w8, [x28, #0x59]
   23414: 79488768     	ldrh	w8, [x27, #0x442]
   23418: 53027d09     	lsr	w9, w8, #2
   2341c: b9401b8a     	ldr	w10, [x28, #0x18]
   23420: 6b09015f     	cmp	w10, w9
   23424: 5400008b     	b.lt	0x23434 <tpd_touch_press+0x108>
   23428: 0b080509     	add	w9, w8, w8, lsl #1
   2342c: 6b49095f     	cmp	w10, w9, lsr #2
   23430: 54001aa9     	b.ls	0x23784 <tpd_touch_press+0x458>
   23434: 39409769     	ldrb	w9, [x27, #0x25]
   23438: 340032a9     	cbz	w9, 0x23a8c <tpd_touch_press+0x760>
   2343c: b9401369     	ldr	w9, [x27, #0x10]
   23440: 321f0129     	orr	w9, w9, #0x2
   23444: 71000d3f     	cmp	w9, #0x3
   23448: 54003141     	b.ne	0x23a70 <tpd_touch_press+0x744>
   2344c: 3940d369     	ldrb	w9, [x27, #0x34]
   23450: 6b35213f     	cmp	w9, w21, uxth
   23454: 54003208     	b.hi	0x23a94 <tpd_touch_press+0x768>
   23458: 3940d769     	ldrb	w9, [x27, #0x35]
   2345c: 4b090109     	sub	w9, w8, w9
   23460: 6b0b013f     	cmp	w9, w11
   23464: 5400318b     	b.lt	0x23a94 <tpd_touch_press+0x768>
   23468: 3940db69     	ldrb	w9, [x27, #0x36]
   2346c: 6b33213f     	cmp	w9, w19, uxth
   23470: 54003128     	b.hi	0x23a94 <tpd_touch_press+0x768>
   23474: 79488b69     	ldrh	w9, [x27, #0x444]
   23478: 3940df6a     	ldrb	w10, [x27, #0x37]
   2347c: 4b0a0129     	sub	w9, w9, w10
   23480: 6b33213f     	cmp	w9, w19, uxth
   23484: 5400308b     	b.lt	0x23a94 <tpd_touch_press+0x768>
   23488: 3940e369     	ldrb	w9, [x27, #0x38]
   2348c: 34003009     	cbz	w9, 0x23a8c <tpd_touch_press+0x760>
   23490: 79405f69     	ldrh	w9, [x27, #0x2e]
   23494: 6b33213f     	cmp	w9, w19, uxth
   23498: 54002fa2     	b.hs	0x23a8c <tpd_touch_press+0x760>
   2349c: 79405b69     	ldrh	w9, [x27, #0x2c]
   234a0: 6b35213f     	cmp	w9, w21, uxth
   234a4: 54002ee9     	b.ls	0x23a80 <tpd_touch_press+0x754>
   234a8: 1400017b     	b	0x23a94 <tpd_touch_press+0x768>
   234ac: 2a1503e0     	mov	w0, w21
   234b0: 2a1303e1     	mov	w1, w19
   234b4: 940006c4     	bl	0x24fc4 <edge_long_press_up+0x14>
		00000000000234b4:  R_AARCH64_CALL26	point_is_in_limit_area
   234b8: 36000520     	tbz	w0, #0x0, 0x2355c <tpd_touch_press+0x230>
   234bc: 2a1503e0     	mov	w0, w21
   234c0: 2a1303e1     	mov	w1, w19
   234c4: 940006c0     	bl	0x24fc4 <edge_long_press_up+0x14>
		00000000000234c4:  R_AARCH64_CALL26	point_is_in_limit_area
   234c8: 37001220     	tbnz	w0, #0x0, 0x2370c <tpd_touch_press+0x3e0>
   234cc: f9400288     	ldr	x8, [x20]
		00000000000234cc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   234d0: 39409509     	ldrb	w9, [x8, #0x25]
   234d4: 340011c9     	cbz	w9, 0x2370c <tpd_touch_press+0x3e0>
   234d8: b9401109     	ldr	w9, [x8, #0x10]
   234dc: 321f0129     	orr	w9, w9, #0x2
   234e0: 71000d3f     	cmp	w9, #0x3
   234e4: 54000a21     	b.ne	0x23628 <tpd_touch_press+0x2fc>
   234e8: 3940d10a     	ldrb	w10, [x8, #0x34]
   234ec: 12003ea9     	and	w9, w21, #0xffff
   234f0: 6b0a013f     	cmp	w9, w10
   234f4: 54000aa3     	b.lo	0x23648 <tpd_touch_press+0x31c>
   234f8: 7948850a     	ldrh	w10, [x8, #0x442]
   234fc: 3940d50b     	ldrb	w11, [x8, #0x35]
   23500: 4b0b014b     	sub	w11, w10, w11
   23504: 6b09017f     	cmp	w11, w9
   23508: 54000a0b     	b.lt	0x23648 <tpd_touch_press+0x31c>
   2350c: 3940d90b     	ldrb	w11, [x8, #0x36]
   23510: 6b33217f     	cmp	w11, w19, uxth
   23514: 540009a8     	b.hi	0x23648 <tpd_touch_press+0x31c>
   23518: 7948890b     	ldrh	w11, [x8, #0x444]
   2351c: 3940dd0c     	ldrb	w12, [x8, #0x37]
   23520: 4b0c016b     	sub	w11, w11, w12
   23524: 6b33217f     	cmp	w11, w19, uxth
   23528: 5400090b     	b.lt	0x23648 <tpd_touch_press+0x31c>
   2352c: 3940e10b     	ldrb	w11, [x8, #0x38]
   23530: 34000eeb     	cbz	w11, 0x2370c <tpd_touch_press+0x3e0>
   23534: 79405d0b     	ldrh	w11, [x8, #0x2e]
   23538: 6b33217f     	cmp	w11, w19, uxth
   2353c: 54000e82     	b.hs	0x2370c <tpd_touch_press+0x3e0>
   23540: 79405908     	ldrh	w8, [x8, #0x2c]
   23544: 6b35211f     	cmp	w8, w21, uxth
   23548: 54000808     	b.hi	0x23648 <tpd_touch_press+0x31c>
   2354c: 4b080148     	sub	w8, w10, w8
   23550: 6b09011f     	cmp	w8, w9
   23554: 54000dca     	b.ge	0x2370c <tpd_touch_press+0x3e0>
   23558: 1400003c     	b	0x23648 <tpd_touch_press+0x31c>
   2355c: f9400288     	ldr	x8, [x20]
		000000000002355c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   23560: 39409509     	ldrb	w9, [x8, #0x25]
   23564: 34000fa9     	cbz	w9, 0x23758 <tpd_touch_press+0x42c>
   23568: b9401109     	ldr	w9, [x8, #0x10]
   2356c: 321f0129     	orr	w9, w9, #0x2
   23570: 71000d3f     	cmp	w9, #0x3
   23574: 54000481     	b.ne	0x23604 <tpd_touch_press+0x2d8>
   23578: 3940d10a     	ldrb	w10, [x8, #0x34]
   2357c: 12003ea9     	and	w9, w21, #0xffff
   23580: 6b0a013f     	cmp	w9, w10
   23584: 54fff9c3     	b.lo	0x234bc <tpd_touch_press+0x190>
   23588: 7948850a     	ldrh	w10, [x8, #0x442]
   2358c: 3940d50b     	ldrb	w11, [x8, #0x35]
   23590: 4b0b014b     	sub	w11, w10, w11
   23594: 6b09017f     	cmp	w11, w9
   23598: 54fff92b     	b.lt	0x234bc <tpd_touch_press+0x190>
   2359c: 3940d90b     	ldrb	w11, [x8, #0x36]
   235a0: 6b33217f     	cmp	w11, w19, uxth
   235a4: 54fff8c8     	b.hi	0x234bc <tpd_touch_press+0x190>
   235a8: 7948890b     	ldrh	w11, [x8, #0x444]
   235ac: 3940dd0c     	ldrb	w12, [x8, #0x37]
   235b0: 4b0c016b     	sub	w11, w11, w12
   235b4: 6b33217f     	cmp	w11, w19, uxth
   235b8: 54fff82b     	b.lt	0x234bc <tpd_touch_press+0x190>
   235bc: 3940e10b     	ldrb	w11, [x8, #0x38]
   235c0: 34000ccb     	cbz	w11, 0x23758 <tpd_touch_press+0x42c>
   235c4: 79405d0b     	ldrh	w11, [x8, #0x2e]
   235c8: 6b33217f     	cmp	w11, w19, uxth
   235cc: 54000c62     	b.hs	0x23758 <tpd_touch_press+0x42c>
   235d0: 79405908     	ldrh	w8, [x8, #0x2c]
   235d4: 6b35211f     	cmp	w8, w21, uxth
   235d8: 54fff728     	b.hi	0x234bc <tpd_touch_press+0x190>
   235dc: 4b080148     	sub	w8, w10, w8
   235e0: 6b09011f     	cmp	w8, w9
   235e4: 54000baa     	b.ge	0x23758 <tpd_touch_press+0x42c>
   235e8: 17ffffb5     	b	0x234bc <tpd_touch_press+0x190>
   235ec: 90000000     	adrp	x0, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		00000000000235ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ab1c
   235f0: 91000000     	add	x0, x0, #0x0
		00000000000235f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ab1c
   235f4: 90000001     	adrp	x1, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		00000000000235f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x151c0
   235f8: 91000021     	add	x1, x1, #0x0
		00000000000235f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x151c0
   235fc: 94000000     	bl	0x235fc <tpd_touch_press+0x2d0>
		00000000000235fc:  R_AARCH64_CALL26	_printk
   23600: 140000b2     	b	0x238c8 <tpd_touch_press+0x59c>
   23604: 3940d109     	ldrb	w9, [x8, #0x34]
   23608: 6b35213f     	cmp	w9, w21, uxth
   2360c: 54fff588     	b.hi	0x234bc <tpd_touch_press+0x190>
   23610: 79488509     	ldrh	w9, [x8, #0x442]
   23614: 3940d508     	ldrb	w8, [x8, #0x35]
   23618: 4b080128     	sub	w8, w9, w8
   2361c: 6b35211f     	cmp	w8, w21, uxth
   23620: 54fff4eb     	b.lt	0x234bc <tpd_touch_press+0x190>
   23624: 1400004d     	b	0x23758 <tpd_touch_press+0x42c>
   23628: 3940d109     	ldrb	w9, [x8, #0x34]
   2362c: 6b35213f     	cmp	w9, w21, uxth
   23630: 540000c8     	b.hi	0x23648 <tpd_touch_press+0x31c>
   23634: 79488509     	ldrh	w9, [x8, #0x442]
   23638: 3940d508     	ldrb	w8, [x8, #0x35]
   2363c: 4b080128     	sub	w8, w9, w8
   23640: 6b35211f     	cmp	w8, w21, uxth
   23644: 5400064a     	b.ge	0x2370c <tpd_touch_press+0x3e0>
   23648: 39415788     	ldrb	w8, [x28, #0x55]
   2364c: 360025a8     	tbz	w8, #0x0, 0x23b00 <tpd_touch_press+0x7d4>
   23650: 90000008     	adrp	x8, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023650:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x53
   23654: 39400108     	ldrb	w8, [x8]
		0000000000023654:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x53
   23658: 370003a8     	tbnz	w8, #0x0, 0x236cc <tpd_touch_press+0x3a0>
   2365c: 90000008     	adrp	x8, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		000000000002365c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0xdb
   23660: 39400108     	ldrb	w8, [x8]
		0000000000023660:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0xdb
   23664: 37000348     	tbnz	w8, #0x0, 0x236cc <tpd_touch_press+0x3a0>
   23668: 90000008     	adrp	x8, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023668:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x163
   2366c: 39400108     	ldrb	w8, [x8]
		000000000002366c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x163
   23670: 370002e8     	tbnz	w8, #0x0, 0x236cc <tpd_touch_press+0x3a0>
   23674: 90000008     	adrp	x8, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023674:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x1eb
   23678: 39400108     	ldrb	w8, [x8]
		0000000000023678:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x1eb
   2367c: 37000288     	tbnz	w8, #0x0, 0x236cc <tpd_touch_press+0x3a0>
   23680: 90000008     	adrp	x8, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023680:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x273
   23684: 39400108     	ldrb	w8, [x8]
		0000000000023684:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x273
   23688: 37000228     	tbnz	w8, #0x0, 0x236cc <tpd_touch_press+0x3a0>
   2368c: 90000008     	adrp	x8, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		000000000002368c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x2fb
   23690: 39400108     	ldrb	w8, [x8]
		0000000000023690:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x2fb
   23694: 370001c8     	tbnz	w8, #0x0, 0x236cc <tpd_touch_press+0x3a0>
   23698: 90000008     	adrp	x8, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023698:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x383
   2369c: 39400108     	ldrb	w8, [x8]
		000000000002369c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x383
   236a0: 37000168     	tbnz	w8, #0x0, 0x236cc <tpd_touch_press+0x3a0>
   236a4: 90000008     	adrp	x8, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		00000000000236a4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x40b
   236a8: 39400108     	ldrb	w8, [x8]
		00000000000236a8:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x40b
   236ac: 37000108     	tbnz	w8, #0x0, 0x236cc <tpd_touch_press+0x3a0>
   236b0: 90000008     	adrp	x8, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		00000000000236b0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x493
   236b4: 39400108     	ldrb	w8, [x8]
		00000000000236b4:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x493
   236b8: 370000a8     	tbnz	w8, #0x0, 0x236cc <tpd_touch_press+0x3a0>
   236bc: 90000008     	adrp	x8, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		00000000000236bc:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x51b
   236c0: 39400108     	ldrb	w8, [x8]
		00000000000236c0:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x51b
   236c4: 7100051f     	cmp	w8, #0x1
   236c8: 54000261     	b.ne	0x23714 <tpd_touch_press+0x3e8>
   236cc: 52800028     	mov	w8, #0x1                // =1
   236d0: 39015b88     	strb	w8, [x28, #0x56]
   236d4: 39414788     	ldrb	w8, [x28, #0x51]
   236d8: 37000228     	tbnz	w8, #0x0, 0x2371c <tpd_touch_press+0x3f0>
   236dc: b27e0348     	orr	x8, x26, #0x4
   236e0: 12003ea9     	and	w9, w21, #0xffff
   236e4: f115411f     	cmp	x8, #0x550
   236e8: b9000389     	str	w9, [x28]
   236ec: 54001328     	b.hi	0x23950 <tpd_touch_press+0x624>
   236f0: 12003e68     	and	w8, w19, #0xffff
   236f4: 39002399     	strb	w25, [x28, #0x8]
   236f8: b9000788     	str	w8, [x28, #0x4]
   236fc: 52800028     	mov	w8, #0x1                // =1
   23700: 39002796     	strb	w22, [x28, #0x9]
   23704: 39014788     	strb	w8, [x28, #0x51]
   23708: 14000070     	b	0x238c8 <tpd_touch_press+0x59c>
   2370c: 39415788     	ldrb	w8, [x28, #0x55]
   23710: 360014a8     	tbz	w8, #0x0, 0x239a4 <tpd_touch_press+0x678>
   23714: 39414788     	ldrb	w8, [x28, #0x51]
   23718: 3607fe28     	tbz	w8, #0x0, 0x236dc <tpd_touch_press+0x3b0>
   2371c: b9400388     	ldr	w8, [x28]
   23720: 4b352108     	sub	w8, w8, w21, uxth
   23724: 7100011f     	cmp	w8, #0x0
   23728: 5a885508     	cneg	w8, w8, mi
   2372c: 7101911f     	cmp	w8, #0x64
   23730: 5400014c     	b.gt	0x23758 <tpd_touch_press+0x42c>
   23734: b27e0348     	orr	x8, x26, #0x4
   23738: f115411f     	cmp	x8, #0x550
   2373c: 540010a8     	b.hi	0x23950 <tpd_touch_press+0x624>
   23740: b9400788     	ldr	w8, [x28, #0x4]
   23744: 4b332108     	sub	w8, w8, w19, uxth
   23748: 7100011f     	cmp	w8, #0x0
   2374c: 5a885508     	cneg	w8, w8, mi
   23750: 7101951f     	cmp	w8, #0x65
   23754: 54000bab     	b.lt	0x238c8 <tpd_touch_press+0x59c>
   23758: 39414788     	ldrb	w8, [x28, #0x51]
   2375c: 36000128     	tbz	w8, #0x0, 0x23780 <tpd_touch_press+0x454>
   23760: 12003ea8     	and	w8, w21, #0xffff
   23764: 12003e69     	and	w9, w19, #0xffff
   23768: 39005399     	strb	w25, [x28, #0x14]
   2376c: 2901a788     	stp	w8, w9, [x28, #0xc]
   23770: 52800028     	mov	w8, #0x1                // =1
   23774: 39005796     	strb	w22, [x28, #0x15]
   23778: 39014b88     	strb	w8, [x28, #0x52]
   2377c: 14000002     	b	0x23784 <tpd_touch_press+0x458>
   23780: 39014b9f     	strb	wzr, [x28, #0x52]
   23784: 39414b88     	ldrb	w8, [x28, #0x52]
   23788: 52800029     	mov	w9, #0x1                // =1
   2378c: 39014389     	strb	w9, [x28, #0x50]
   23790: 7100051f     	cmp	w8, #0x1
   23794: 54000361     	b.ne	0x23800 <tpd_touch_press+0x4d4>
   23798: 39414f88     	ldrb	w8, [x28, #0x53]
   2379c: b27e0354     	orr	x20, x26, #0x4
   237a0: 2a1603fa     	mov	w26, w22
   237a4: 36000a48     	tbz	w8, #0x0, 0x238ec <tpd_touch_press+0x5c0>
   237a8: f115429f     	cmp	x20, #0x550
   237ac: 54000d28     	b.hi	0x23950 <tpd_touch_press+0x624>
   237b0: 29400b81     	ldp	w1, w2, [x28]
   237b4: aa1803e0     	mov	x0, x24
   237b8: 2a1703e3     	mov	w3, w23
   237bc: 2a1903e4     	mov	w4, w25
   237c0: 2a1a03e5     	mov	w5, w26
   237c4: 94000121     	bl	0x23c48 <tpd_touch_release+0xd4>
		00000000000237c4:  R_AARCH64_CALL26	tpd_touch_report
   237c8: aa1803e0     	mov	x0, x24
   237cc: 2a1f03e1     	mov	w1, wzr
   237d0: 2a1f03e2     	mov	w2, wzr
   237d4: 2a1f03e3     	mov	w3, wzr
   237d8: 94000000     	bl	0x237d8 <tpd_touch_press+0x4ac>
		00000000000237d8:  R_AARCH64_CALL26	input_event
   237dc: 52807d00     	mov	w0, #0x3e8              // =1000
   237e0: 5280bb81     	mov	w1, #0x5dc              // =1500
   237e4: 52800042     	mov	w2, #0x2                // =2
   237e8: 94000000     	bl	0x237e8 <tpd_touch_press+0x4bc>
		00000000000237e8:  R_AARCH64_CALL26	usleep_range_state
   237ec: 39414f88     	ldrb	w8, [x28, #0x53]
   237f0: 36000b28     	tbz	w8, #0x0, 0x23954 <tpd_touch_press+0x628>
   237f4: 29418b81     	ldp	w1, w2, [x28, #0xc]
   237f8: aa1803e0     	mov	x0, x24
   237fc: 1400002b     	b	0x238a8 <tpd_touch_press+0x57c>
   23800: 39409369     	ldrb	w9, [x27, #0x24]
   23804: 39414f88     	ldrb	w8, [x28, #0x53]
   23808: 2a1603fa     	mov	w26, w22
   2380c: 34000469     	cbz	w9, 0x23898 <tpd_touch_press+0x56c>
   23810: 36000e08     	tbz	w8, #0x0, 0x239d0 <tpd_touch_press+0x6a4>
   23814: 39415f88     	ldrb	w8, [x28, #0x57]
   23818: 7100051f     	cmp	w8, #0x1
   2381c: 54000401     	b.ne	0x2389c <tpd_touch_press+0x570>
   23820: 90000008     	adrp	x8, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023820:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   23824: f9400108     	ldr	x8, [x8]
		0000000000023824:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   23828: f9403389     	ldr	x9, [x28, #0x60]
   2382c: cb090100     	sub	x0, x8, x9
   23830: 94000000     	bl	0x23830 <tpd_touch_press+0x504>
		0000000000023830:  R_AARCH64_CALL26	jiffies_to_msecs
   23834: b9401b88     	ldr	w8, [x28, #0x18]
   23838: 4b352108     	sub	w8, w8, w21, uxth
   2383c: 7100011f     	cmp	w8, #0x0
   23840: 5a885509     	cneg	w9, w8, mi
   23844: 39409368     	ldrb	w8, [x27, #0x24]
   23848: 7101941f     	cmp	w0, #0x65
   2384c: 54000042     	b.hs	0x23854 <tpd_touch_press+0x528>
   23850: 0b080508     	add	w8, w8, w8, lsl #1
   23854: 6b08013f     	cmp	w9, w8
   23858: 540000ec     	b.gt	0x23874 <tpd_touch_press+0x548>
   2385c: b9401f89     	ldr	w9, [x28, #0x1c]
   23860: 4b332129     	sub	w9, w9, w19, uxth
   23864: 7100013f     	cmp	w9, #0x0
   23868: 5a895529     	cneg	w9, w9, mi
   2386c: 6b08013f     	cmp	w9, w8
   23870: 5400024d     	b.le	0x238b8 <tpd_touch_press+0x58c>
   23874: aa1803e0     	mov	x0, x24
   23878: 2a1503e1     	mov	w1, w21
   2387c: 2a1303e2     	mov	w2, w19
   23880: 2a1703e3     	mov	w3, w23
   23884: 2a1903e4     	mov	w4, w25
   23888: 2a1a03e5     	mov	w5, w26
   2388c: 940000ef     	bl	0x23c48 <tpd_touch_release+0xd4>
		000000000002388c:  R_AARCH64_CALL26	tpd_touch_report
   23890: 39015f9f     	strb	wzr, [x28, #0x57]
   23894: 14000009     	b	0x238b8 <tpd_touch_press+0x58c>
   23898: 36000c08     	tbz	w8, #0x0, 0x23a18 <tpd_touch_press+0x6ec>
   2389c: aa1803e0     	mov	x0, x24
   238a0: 2a1503e1     	mov	w1, w21
   238a4: 2a1303e2     	mov	w2, w19
   238a8: 2a1703e3     	mov	w3, w23
   238ac: 2a1903e4     	mov	w4, w25
   238b0: 2a1a03e5     	mov	w5, w26
   238b4: 940000e5     	bl	0x23c48 <tpd_touch_release+0xd4>
		00000000000238b4:  R_AARCH64_CALL26	tpd_touch_report
   238b8: 12003ea8     	and	w8, w21, #0xffff
   238bc: 12003e69     	and	w9, w19, #0xffff
   238c0: 39014b9f     	strb	wzr, [x28, #0x52]
   238c4: 2904a788     	stp	w8, w9, [x28, #0x24]
   238c8: a9464ff4     	ldp	x20, x19, [sp, #0x60]
   238cc: a94557f6     	ldp	x22, x21, [sp, #0x50]
   238d0: a9445ff8     	ldp	x24, x23, [sp, #0x40]
   238d4: a94367fa     	ldp	x26, x25, [sp, #0x30]
   238d8: a9426ffc     	ldp	x28, x27, [sp, #0x20]
   238dc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   238e0: 9101c3ff     	add	sp, sp, #0x70
   238e4: d50323bf     	autiasp
   238e8: d65f03c0     	ret
   238ec: 52800028     	mov	w8, #0x1                // =1
   238f0: 90000009     	adrp	x9, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		00000000000238f0:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   238f4: f115429f     	cmp	x20, #0x550
   238f8: 39014f88     	strb	w8, [x28, #0x53]
   238fc: f9400129     	ldr	x9, [x9]
		00000000000238fc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   23900: 39016b88     	strb	w8, [x28, #0x5a]
   23904: f9003389     	str	x9, [x28, #0x60]
   23908: b9448f68     	ldr	w8, [x27, #0x48c]
   2390c: 11000508     	add	w8, w8, #0x1
   23910: b9048f68     	str	w8, [x27, #0x48c]
   23914: b9400388     	ldr	w8, [x28]
   23918: b9001b88     	str	w8, [x28, #0x18]
   2391c: 540001a8     	b.hi	0x23950 <tpd_touch_press+0x624>
   23920: b85fc3b6     	ldur	w22, [x29, #-0x4]
   23924: b9400788     	ldr	w8, [x28, #0x4]
   23928: 2a1603e0     	mov	w0, w22
   2392c: b9001f88     	str	w8, [x28, #0x1c]
   23930: 94000090     	bl	0x23b70 <tpd_touch_press+0x844>
		0000000000023930:  R_AARCH64_CALL26	point_report_reset
   23934: 29400f82     	ldp	w2, w3, [x28]
   23938: 90000000     	adrp	x0, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023938:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18354
   2393c: 91000000     	add	x0, x0, #0x0
		000000000002393c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18354
   23940: 2a1603e1     	mov	w1, w22
   23944: 94000000     	bl	0x23944 <tpd_touch_press+0x618>
		0000000000023944:  R_AARCH64_CALL26	_printk
   23948: f115429f     	cmp	x20, #0x550
   2394c: 54fff329     	b.ls	0x237b0 <tpd_touch_press+0x484>
   23950: d4200020     	brk	#0x1
   23954: 52800028     	mov	w8, #0x1                // =1
   23958: 90000009     	adrp	x9, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023958:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   2395c: 39014f88     	strb	w8, [x28, #0x53]
   23960: f9400129     	ldr	x9, [x9]
		0000000000023960:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   23964: 39016b88     	strb	w8, [x28, #0x5a]
   23968: b85fc3b4     	ldur	w20, [x29, #-0x4]
   2396c: f9003389     	str	x9, [x28, #0x60]
   23970: 2a1403e0     	mov	w0, w20
   23974: b9448f68     	ldr	w8, [x27, #0x48c]
   23978: 11000508     	add	w8, w8, #0x1
   2397c: b9048f68     	str	w8, [x27, #0x48c]
   23980: 29402788     	ldp	w8, w9, [x28]
   23984: 29032788     	stp	w8, w9, [x28, #0x18]
   23988: 9400007a     	bl	0x23b70 <tpd_touch_press+0x844>
		0000000000023988:  R_AARCH64_CALL26	point_report_reset
   2398c: 29418f82     	ldp	w2, w3, [x28, #0xc]
   23990: 90000000     	adrp	x0, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023990:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18354
   23994: 91000000     	add	x0, x0, #0x0
		0000000000023994:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18354
   23998: 2a1403e1     	mov	w1, w20
   2399c: 94000000     	bl	0x2399c <tpd_touch_press+0x670>
		000000000002399c:  R_AARCH64_CALL26	_printk
   239a0: 17ffff95     	b	0x237f4 <tpd_touch_press+0x4c8>
   239a4: b85fc3a1     	ldur	w1, [x29, #-0x4]
   239a8: 52800028     	mov	w8, #0x1                // =1
   239ac: 90000000     	adrp	x0, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		00000000000239ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16b3a
   239b0: 91000000     	add	x0, x0, #0x0
		00000000000239b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16b3a
   239b4: 12003ea2     	and	w2, w21, #0xffff
   239b8: 12003e63     	and	w3, w19, #0xffff
   239bc: 39015788     	strb	w8, [x28, #0x55]
   239c0: 94000000     	bl	0x239c0 <tpd_touch_press+0x694>
		00000000000239c0:  R_AARCH64_CALL26	_printk
   239c4: 39414788     	ldrb	w8, [x28, #0x51]
   239c8: 3707eaa8     	tbnz	w8, #0x0, 0x2371c <tpd_touch_press+0x3f0>
   239cc: 17ffff44     	b	0x236dc <tpd_touch_press+0x3b0>
   239d0: 52800034     	mov	w20, #0x1               // =1
   239d4: b85fc3b6     	ldur	w22, [x29, #-0x4]
   239d8: 39014f94     	strb	w20, [x28, #0x53]
   239dc: b9448f68     	ldr	w8, [x27, #0x48c]
   239e0: 2a1603e0     	mov	w0, w22
   239e4: 11000508     	add	w8, w8, #0x1
   239e8: b9048f68     	str	w8, [x27, #0x48c]
   239ec: 94000061     	bl	0x23b70 <tpd_touch_press+0x844>
		00000000000239ec:  R_AARCH64_CALL26	point_report_reset
   239f0: 12003ea2     	and	w2, w21, #0xffff
   239f4: 12003e63     	and	w3, w19, #0xffff
   239f8: 90000008     	adrp	x8, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		00000000000239f8:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   239fc: 29030f82     	stp	w2, w3, [x28, #0x18]
   23a00: 90000000     	adrp	x0, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023a00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ceb0
   23a04: 91000000     	add	x0, x0, #0x0
		0000000000023a04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ceb0
   23a08: f9400108     	ldr	x8, [x8]
		0000000000023a08:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   23a0c: 39015f94     	strb	w20, [x28, #0x57]
   23a10: 2a1603e1     	mov	w1, w22
   23a14: 14000014     	b	0x23a64 <tpd_touch_press+0x738>
   23a18: 52800028     	mov	w8, #0x1                // =1
   23a1c: b85fc3b4     	ldur	w20, [x29, #-0x4]
   23a20: 12003eba     	and	w26, w21, #0xffff
   23a24: 39014f88     	strb	w8, [x28, #0x53]
   23a28: b9448f68     	ldr	w8, [x27, #0x48c]
   23a2c: 2a1403e0     	mov	w0, w20
   23a30: 11000508     	add	w8, w8, #0x1
   23a34: b9048f68     	str	w8, [x27, #0x48c]
   23a38: 12003e7b     	and	w27, w19, #0xffff
   23a3c: 29036f9a     	stp	w26, w27, [x28, #0x18]
   23a40: 9400004c     	bl	0x23b70 <tpd_touch_press+0x844>
		0000000000023a40:  R_AARCH64_CALL26	point_report_reset
   23a44: 90000008     	adrp	x8, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023a44:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   23a48: 90000000     	adrp	x0, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023a48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b12c
   23a4c: 91000000     	add	x0, x0, #0x0
		0000000000023a4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b12c
   23a50: f9400108     	ldr	x8, [x8]
		0000000000023a50:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   23a54: 2a1403e1     	mov	w1, w20
   23a58: 2a1a03e2     	mov	w2, w26
   23a5c: 2a1603fa     	mov	w26, w22
   23a60: 2a1b03e3     	mov	w3, w27
   23a64: f9003388     	str	x8, [x28, #0x60]
   23a68: 94000000     	bl	0x23a68 <tpd_touch_press+0x73c>
		0000000000023a68:  R_AARCH64_CALL26	_printk
   23a6c: 17ffff8c     	b	0x2389c <tpd_touch_press+0x570>
   23a70: 3940d369     	ldrb	w9, [x27, #0x34]
   23a74: 6b35213f     	cmp	w9, w21, uxth
   23a78: 540000e8     	b.hi	0x23a94 <tpd_touch_press+0x768>
   23a7c: 3940d769     	ldrb	w9, [x27, #0x35]
   23a80: 4b090108     	sub	w8, w8, w9
   23a84: 6b0b011f     	cmp	w8, w11
   23a88: 5400006b     	b.lt	0x23a94 <tpd_touch_press+0x768>
   23a8c: 3901639f     	strb	wzr, [x28, #0x58]
   23a90: 17ffff3d     	b	0x23784 <tpd_touch_press+0x458>
   23a94: 39416388     	ldrb	w8, [x28, #0x58]
   23a98: 7100051f     	cmp	w8, #0x1
   23a9c: 54000081     	b.ne	0x23aac <tpd_touch_press+0x780>
   23aa0: f9403788     	ldr	x8, [x28, #0x68]
   23aa4: 2a0b03f4     	mov	w20, w11
   23aa8: 14000009     	b	0x23acc <tpd_touch_press+0x7a0>
   23aac: 12003e68     	and	w8, w19, #0xffff
   23ab0: 52800029     	mov	w9, #0x1                // =1
   23ab4: 2a0b03f4     	mov	w20, w11
   23ab8: 2906238b     	stp	w11, w8, [x28, #0x30]
   23abc: 90000008     	adrp	x8, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023abc:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   23ac0: 39016389     	strb	w9, [x28, #0x58]
   23ac4: f9400108     	ldr	x8, [x8]
		0000000000023ac4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   23ac8: f9003788     	str	x8, [x28, #0x68]
   23acc: 90000009     	adrp	x9, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023acc:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   23ad0: f9400129     	ldr	x9, [x9]
		0000000000023ad0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   23ad4: cb080120     	sub	x0, x9, x8
   23ad8: 94000000     	bl	0x23ad8 <tpd_touch_press+0x7ac>
		0000000000023ad8:  R_AARCH64_CALL26	jiffies_to_msecs
   23adc: 710c841f     	cmp	w0, #0x321
   23ae0: 54ffe523     	b.lo	0x23784 <tpd_touch_press+0x458>
   23ae4: b9403388     	ldr	w8, [x28, #0x30]
   23ae8: 6b140108     	subs	w8, w8, w20
   23aec: 5a885508     	cneg	w8, w8, mi
   23af0: 7100551f     	cmp	w8, #0x15
   23af4: 540001eb     	b.lt	0x23b30 <tpd_touch_press+0x804>
   23af8: 12003e68     	and	w8, w19, #0xffff
   23afc: 14000013     	b	0x23b48 <tpd_touch_press+0x81c>
   23b00: 52800028     	mov	w8, #0x1                // =1
   23b04: 90000000     	adrp	x0, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023b04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b1a8
   23b08: 91000000     	add	x0, x0, #0x0
		0000000000023b08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b1a8
   23b0c: 39015788     	strb	w8, [x28, #0x55]
   23b10: 90000008     	adrp	x8, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023b10:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   23b14: 12003ea2     	and	w2, w21, #0xffff
   23b18: f9400108     	ldr	x8, [x8]
		0000000000023b18:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   23b1c: b85fc3a1     	ldur	w1, [x29, #-0x4]
   23b20: 12003e63     	and	w3, w19, #0xffff
   23b24: f9003b88     	str	x8, [x28, #0x70]
   23b28: 94000000     	bl	0x23b28 <tpd_touch_press+0x7fc>
		0000000000023b28:  R_AARCH64_CALL26	_printk
   23b2c: 17fffec9     	b	0x23650 <tpd_touch_press+0x324>
   23b30: b9403789     	ldr	w9, [x28, #0x34]
   23b34: 12003e68     	and	w8, w19, #0xffff
   23b38: 6b080129     	subs	w9, w9, w8
   23b3c: 5a895529     	cneg	w9, w9, mi
   23b40: 7100553f     	cmp	w9, #0x15
   23b44: 540000cb     	b.lt	0x23b5c <tpd_touch_press+0x830>
   23b48: 29062394     	stp	w20, w8, [x28, #0x30]
   23b4c: 90000008     	adrp	x8, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023b4c:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   23b50: f9400108     	ldr	x8, [x8]
		0000000000023b50:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   23b54: f9003788     	str	x8, [x28, #0x68]
   23b58: 17ffff0b     	b	0x23784 <tpd_touch_press+0x458>
   23b5c: f9404380     	ldr	x0, [x28, #0x80]
   23b60: 2a1703e1     	mov	w1, w23
   23b64: 94000000     	bl	0x23b64 <tpd_touch_press+0x838>
		0000000000023b64:  R_AARCH64_CALL26	tpd_touch_release
   23b68: 3901639f     	strb	wzr, [x28, #0x58]
   23b6c: 17ffff57     	b	0x238c8 <tpd_touch_press+0x59c>
