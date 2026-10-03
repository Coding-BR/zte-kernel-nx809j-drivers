
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000205dc <tpd_report_work_init>:
   205dc: d503233f     	paciasp
   205e0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   205e4: f9000bf5     	str	x21, [sp, #0x10]
   205e8: a9024ff4     	stp	x20, x19, [sp, #0x20]
   205ec: 910003fd     	mov	x29, sp
   205f0: 90000008     	adrp	x8, 0x20000 <tpd_id3_report_work+0x24>
		00000000000205f0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   205f4: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x24>
		00000000000205f4:  R_AARCH64_ADR_PREL_PG_HI21	unk_322AA
   205f8: 91000000     	add	x0, x0, #0x0
		00000000000205f8:  R_AARCH64_ADD_ABS_LO12_NC	unk_322AA
   205fc: f9400114     	ldr	x20, [x8]
		00000000000205fc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   20600: 90000001     	adrp	x1, 0x20000 <tpd_id3_report_work+0x24>
		0000000000020600:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x376a
   20604: 91000021     	add	x1, x1, #0x0
		0000000000020604:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x376a
   20608: 94000000     	bl	0x20608 <tpd_report_work_init+0x2c>
		0000000000020608:  R_AARCH64_CALL26	_printk
   2060c: 52800141     	mov	w1, #0xa                // =10
   20610: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x24>
		0000000000020610:  R_AARCH64_ADR_PREL_PG_HI21	unk_364AC
   20614: 91000000     	add	x0, x0, #0x0
		0000000000020614:  R_AARCH64_ADD_ABS_LO12_NC	unk_364AC
   20618: 90000003     	adrp	x3, 0x20000 <tpd_id3_report_work+0x24>
		0000000000020618:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ebb
   2061c: 91000063     	add	x3, x3, #0x0
		000000000002061c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ebb
   20620: 72a000c1     	movk	w1, #0x6, lsl #16
   20624: 52800022     	mov	w2, #0x1                // =1
   20628: 94000000     	bl	0x20628 <tpd_report_work_init+0x4c>
		0000000000020628:  R_AARCH64_CALL26	alloc_workqueue
   2062c: f9025e80     	str	x0, [x20, #0x4b8]
   20630: b4001180     	cbz	x0, 0x20860 <tpd_report_work_init+0x284>
   20634: 91132288     	add	x8, x20, #0x4c8
   20638: 90000013     	adrp	x19, 0x20000 <tpd_id3_report_work+0x24>
		0000000000020638:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
   2063c: 91000273     	add	x19, x19, #0x0
		000000000002063c:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
   20640: b26b7bf5     	mov	x21, #0xfffffffe00000   // =4503599625273344
   20644: f9026688     	str	x8, [x20, #0x4c8]
   20648: 91138280     	add	x0, x20, #0x4e0
   2064c: f9026a88     	str	x8, [x20, #0x4d0]
   20650: 90000008     	adrp	x8, 0x20000 <tpd_id3_report_work+0x24>
		0000000000020650:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id0_report_work
   20654: 91000108     	add	x8, x8, #0x0
		0000000000020654:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id0_report_work
   20658: aa1303e1     	mov	x1, x19
   2065c: 52a00402     	mov	w2, #0x200000           // =2097152
   20660: aa1f03e3     	mov	x3, xzr
   20664: aa1f03e4     	mov	x4, xzr
   20668: f9026295     	str	x21, [x20, #0x4c0]
   2066c: f9026e88     	str	x8, [x20, #0x4d8]
   20670: 94000000     	bl	0x20670 <tpd_report_work_init+0x94>
		0000000000020670:  R_AARCH64_CALL26	init_timer_key
   20674: 9114c288     	add	x8, x20, #0x530
   20678: 91152280     	add	x0, x20, #0x548
   2067c: aa1303e1     	mov	x1, x19
   20680: f9029a88     	str	x8, [x20, #0x530]
   20684: 52a00402     	mov	w2, #0x200000           // =2097152
   20688: aa1f03e3     	mov	x3, xzr
   2068c: f9029e88     	str	x8, [x20, #0x538]
   20690: 90000008     	adrp	x8, 0x20000 <tpd_id3_report_work+0x24>
		0000000000020690:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id1_report_work
   20694: 91000108     	add	x8, x8, #0x0
		0000000000020694:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id1_report_work
   20698: aa1f03e4     	mov	x4, xzr
   2069c: f9029695     	str	x21, [x20, #0x528]
   206a0: f902a288     	str	x8, [x20, #0x540]
   206a4: 94000000     	bl	0x206a4 <tpd_report_work_init+0xc8>
		00000000000206a4:  R_AARCH64_CALL26	init_timer_key
   206a8: 91166288     	add	x8, x20, #0x598
   206ac: 9116c280     	add	x0, x20, #0x5b0
   206b0: aa1303e1     	mov	x1, x19
   206b4: f902ce88     	str	x8, [x20, #0x598]
   206b8: 52a00402     	mov	w2, #0x200000           // =2097152
   206bc: aa1f03e3     	mov	x3, xzr
   206c0: f902d288     	str	x8, [x20, #0x5a0]
   206c4: 90000008     	adrp	x8, 0x20000 <tpd_id3_report_work+0x24>
		00000000000206c4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id2_report_work
   206c8: 91000108     	add	x8, x8, #0x0
		00000000000206c8:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id2_report_work
   206cc: aa1f03e4     	mov	x4, xzr
   206d0: f902ca95     	str	x21, [x20, #0x590]
   206d4: f902d688     	str	x8, [x20, #0x5a8]
   206d8: 94000000     	bl	0x206d8 <tpd_report_work_init+0xfc>
		00000000000206d8:  R_AARCH64_CALL26	init_timer_key
   206dc: 91180288     	add	x8, x20, #0x600
   206e0: 91186280     	add	x0, x20, #0x618
   206e4: aa1303e1     	mov	x1, x19
   206e8: f9030288     	str	x8, [x20, #0x600]
   206ec: 52a00402     	mov	w2, #0x200000           // =2097152
   206f0: aa1f03e3     	mov	x3, xzr
   206f4: f9030688     	str	x8, [x20, #0x608]
   206f8: 90000008     	adrp	x8, 0x20000 <tpd_id3_report_work+0x24>
		00000000000206f8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id3_report_work
   206fc: 91000108     	add	x8, x8, #0x0
		00000000000206fc:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id3_report_work
   20700: aa1f03e4     	mov	x4, xzr
   20704: f902fe95     	str	x21, [x20, #0x5f8]
   20708: f9030a88     	str	x8, [x20, #0x610]
   2070c: 94000000     	bl	0x2070c <tpd_report_work_init+0x130>
		000000000002070c:  R_AARCH64_CALL26	init_timer_key
   20710: 9119a288     	add	x8, x20, #0x668
   20714: 911a0280     	add	x0, x20, #0x680
   20718: aa1303e1     	mov	x1, x19
   2071c: f9033688     	str	x8, [x20, #0x668]
   20720: 52a00402     	mov	w2, #0x200000           // =2097152
   20724: aa1f03e3     	mov	x3, xzr
   20728: f9033a88     	str	x8, [x20, #0x670]
   2072c: 90000008     	adrp	x8, 0x20000 <tpd_id3_report_work+0x24>
		000000000002072c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id4_report_work
   20730: 91000108     	add	x8, x8, #0x0
		0000000000020730:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id4_report_work
   20734: aa1f03e4     	mov	x4, xzr
   20738: f9033295     	str	x21, [x20, #0x660]
   2073c: f9033e88     	str	x8, [x20, #0x678]
   20740: 94000000     	bl	0x20740 <tpd_report_work_init+0x164>
		0000000000020740:  R_AARCH64_CALL26	init_timer_key
   20744: 911b4288     	add	x8, x20, #0x6d0
   20748: 911ba280     	add	x0, x20, #0x6e8
   2074c: aa1303e1     	mov	x1, x19
   20750: f9036a88     	str	x8, [x20, #0x6d0]
   20754: 52a00402     	mov	w2, #0x200000           // =2097152
   20758: aa1f03e3     	mov	x3, xzr
   2075c: f9036e88     	str	x8, [x20, #0x6d8]
   20760: 90000008     	adrp	x8, 0x20000 <tpd_id3_report_work+0x24>
		0000000000020760:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id5_report_work
   20764: 91000108     	add	x8, x8, #0x0
		0000000000020764:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id5_report_work
   20768: aa1f03e4     	mov	x4, xzr
   2076c: f9036695     	str	x21, [x20, #0x6c8]
   20770: f9037288     	str	x8, [x20, #0x6e0]
   20774: 94000000     	bl	0x20774 <tpd_report_work_init+0x198>
		0000000000020774:  R_AARCH64_CALL26	init_timer_key
   20778: 911ce288     	add	x8, x20, #0x738
   2077c: 911d4280     	add	x0, x20, #0x750
   20780: aa1303e1     	mov	x1, x19
   20784: f9039e88     	str	x8, [x20, #0x738]
   20788: 52a00402     	mov	w2, #0x200000           // =2097152
   2078c: aa1f03e3     	mov	x3, xzr
   20790: f903a288     	str	x8, [x20, #0x740]
   20794: 90000008     	adrp	x8, 0x20000 <tpd_id3_report_work+0x24>
		0000000000020794:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id6_report_work
   20798: 91000108     	add	x8, x8, #0x0
		0000000000020798:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id6_report_work
   2079c: aa1f03e4     	mov	x4, xzr
   207a0: f9039a95     	str	x21, [x20, #0x730]
   207a4: f903a688     	str	x8, [x20, #0x748]
   207a8: 94000000     	bl	0x207a8 <tpd_report_work_init+0x1cc>
		00000000000207a8:  R_AARCH64_CALL26	init_timer_key
   207ac: 911e8288     	add	x8, x20, #0x7a0
   207b0: 911ee280     	add	x0, x20, #0x7b8
   207b4: aa1303e1     	mov	x1, x19
   207b8: f903d288     	str	x8, [x20, #0x7a0]
   207bc: 52a00402     	mov	w2, #0x200000           // =2097152
   207c0: aa1f03e3     	mov	x3, xzr
   207c4: f903d688     	str	x8, [x20, #0x7a8]
   207c8: 90000008     	adrp	x8, 0x20000 <tpd_id3_report_work+0x24>
		00000000000207c8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id7_report_work
   207cc: 91000108     	add	x8, x8, #0x0
		00000000000207cc:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id7_report_work
   207d0: aa1f03e4     	mov	x4, xzr
   207d4: f903ce95     	str	x21, [x20, #0x798]
   207d8: f903da88     	str	x8, [x20, #0x7b0]
   207dc: 94000000     	bl	0x207dc <tpd_report_work_init+0x200>
		00000000000207dc:  R_AARCH64_CALL26	init_timer_key
   207e0: 91202288     	add	x8, x20, #0x808
   207e4: 91208280     	add	x0, x20, #0x820
   207e8: aa1303e1     	mov	x1, x19
   207ec: f9040688     	str	x8, [x20, #0x808]
   207f0: 52a00402     	mov	w2, #0x200000           // =2097152
   207f4: aa1f03e3     	mov	x3, xzr
   207f8: f9040a88     	str	x8, [x20, #0x810]
   207fc: 90000008     	adrp	x8, 0x20000 <tpd_id3_report_work+0x24>
		00000000000207fc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id8_report_work
   20800: 91000108     	add	x8, x8, #0x0
		0000000000020800:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id8_report_work
   20804: aa1f03e4     	mov	x4, xzr
   20808: f9040295     	str	x21, [x20, #0x800]
   2080c: f9040e88     	str	x8, [x20, #0x818]
   20810: 94000000     	bl	0x20810 <tpd_report_work_init+0x234>
		0000000000020810:  R_AARCH64_CALL26	init_timer_key
   20814: 9121c288     	add	x8, x20, #0x870
   20818: 91222280     	add	x0, x20, #0x888
   2081c: aa1303e1     	mov	x1, x19
   20820: f9043a88     	str	x8, [x20, #0x870]
   20824: 52a00402     	mov	w2, #0x200000           // =2097152
   20828: aa1f03e3     	mov	x3, xzr
   2082c: f9043e88     	str	x8, [x20, #0x878]
   20830: 90000008     	adrp	x8, 0x20000 <tpd_id3_report_work+0x24>
		0000000000020830:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id9_report_work
   20834: 91000108     	add	x8, x8, #0x0
		0000000000020834:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id9_report_work
   20838: aa1f03e4     	mov	x4, xzr
   2083c: f9043695     	str	x21, [x20, #0x868]
   20840: f9044288     	str	x8, [x20, #0x880]
   20844: 94000000     	bl	0x20844 <tpd_report_work_init+0x268>
		0000000000020844:  R_AARCH64_CALL26	init_timer_key
   20848: 2a1f03e0     	mov	w0, wzr
   2084c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   20850: f9400bf5     	ldr	x21, [sp, #0x10]
   20854: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   20858: d50323bf     	autiasp
   2085c: d65f03c0     	ret
   20860: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x24>
		0000000000020860:  R_AARCH64_ADR_PREL_PG_HI21	unk_334E1
   20864: 91000000     	add	x0, x0, #0x0
		0000000000020864:  R_AARCH64_ADD_ABS_LO12_NC	unk_334E1
   20868: 90000001     	adrp	x1, 0x20000 <tpd_id3_report_work+0x24>
		0000000000020868:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x376a
   2086c: 91000021     	add	x1, x1, #0x0
		000000000002086c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x376a
   20870: 94000000     	bl	0x20870 <tpd_report_work_init+0x294>
		0000000000020870:  R_AARCH64_CALL26	_printk
   20874: 12800160     	mov	w0, #-0xc               // =-12
   20878: 17fffff5     	b	0x2084c <tpd_report_work_init+0x270>
