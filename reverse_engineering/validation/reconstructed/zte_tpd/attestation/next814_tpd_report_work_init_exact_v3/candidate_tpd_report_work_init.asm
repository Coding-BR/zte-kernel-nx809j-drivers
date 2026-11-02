
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000250e4 <tpd_report_work_init>:
   250e4: d503233f     	paciasp
   250e8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   250ec: f9000bf5     	str	x21, [sp, #0x10]
   250f0: a9024ff4     	stp	x20, x19, [sp, #0x20]
   250f4: 910003fd     	mov	x29, sp
   250f8: 90000008     	adrp	x8, 0x25000 <tp_ghost_check+0x520>
		00000000000250f8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   250fc: 90000000     	adrp	x0, 0x25000 <tp_ghost_check+0x520>
		00000000000250fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1258e
   25100: 91000000     	add	x0, x0, #0x0
		0000000000025100:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1258e
   25104: f9400114     	ldr	x20, [x8]
		0000000000025104:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25108: 90000001     	adrp	x1, 0x25000 <tp_ghost_check+0x520>
		0000000000025108:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x176d2
   2510c: 91000021     	add	x1, x1, #0x0
		000000000002510c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x176d2
   25110: 94000000     	bl	0x25110 <tpd_report_work_init+0x2c>
		0000000000025110:  R_AARCH64_CALL26	_printk
   25114: 52800141     	mov	w1, #0xa                // =10
   25118: 90000000     	adrp	x0, 0x25000 <tp_ghost_check+0x520>
		0000000000025118:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16ba0
   2511c: 91000000     	add	x0, x0, #0x0
		000000000002511c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16ba0
   25120: 90000003     	adrp	x3, 0x25000 <tp_ghost_check+0x520>
		0000000000025120:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bb84
   25124: 91000063     	add	x3, x3, #0x0
		0000000000025124:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bb84
   25128: 72a000c1     	movk	w1, #0x6, lsl #16
   2512c: 52800022     	mov	w2, #0x1                // =1
   25130: 94000000     	bl	0x25130 <tpd_report_work_init+0x4c>
		0000000000025130:  R_AARCH64_CALL26	alloc_workqueue
   25134: f9025e80     	str	x0, [x20, #0x4b8]
   25138: b4001180     	cbz	x0, 0x25368 <tpd_report_work_init+0x284>
   2513c: b26b7bf5     	mov	x21, #0xfffffffe00000   // =4503599625273344
   25140: 91132288     	add	x8, x20, #0x4c8
   25144: 90000013     	adrp	x19, 0x25000 <tp_ghost_check+0x520>
		0000000000025144:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
   25148: 91000273     	add	x19, x19, #0x0
		0000000000025148:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
   2514c: f9026295     	str	x21, [x20, #0x4c0]
   25150: 91138280     	add	x0, x20, #0x4e0
   25154: f9026688     	str	x8, [x20, #0x4c8]
   25158: aa1303e1     	mov	x1, x19
   2515c: 52a00402     	mov	w2, #0x200000           // =2097152
   25160: f9026a88     	str	x8, [x20, #0x4d0]
   25164: 90000008     	adrp	x8, 0x25000 <tp_ghost_check+0x520>
		0000000000025164:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id0_report_work
   25168: 91000108     	add	x8, x8, #0x0
		0000000000025168:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id0_report_work
   2516c: aa1f03e3     	mov	x3, xzr
   25170: aa1f03e4     	mov	x4, xzr
   25174: f9026e88     	str	x8, [x20, #0x4d8]
   25178: 94000000     	bl	0x25178 <tpd_report_work_init+0x94>
		0000000000025178:  R_AARCH64_CALL26	init_timer_key
   2517c: 9114c288     	add	x8, x20, #0x530
   25180: f9029695     	str	x21, [x20, #0x528]
   25184: 91152280     	add	x0, x20, #0x548
   25188: f9029a88     	str	x8, [x20, #0x530]
   2518c: aa1303e1     	mov	x1, x19
   25190: 52a00402     	mov	w2, #0x200000           // =2097152
   25194: f9029e88     	str	x8, [x20, #0x538]
   25198: 90000008     	adrp	x8, 0x25000 <tp_ghost_check+0x520>
		0000000000025198:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id1_report_work
   2519c: 91000108     	add	x8, x8, #0x0
		000000000002519c:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id1_report_work
   251a0: aa1f03e3     	mov	x3, xzr
   251a4: aa1f03e4     	mov	x4, xzr
   251a8: f902a288     	str	x8, [x20, #0x540]
   251ac: 94000000     	bl	0x251ac <tpd_report_work_init+0xc8>
		00000000000251ac:  R_AARCH64_CALL26	init_timer_key
   251b0: 91166288     	add	x8, x20, #0x598
   251b4: f902ca95     	str	x21, [x20, #0x590]
   251b8: 9116c280     	add	x0, x20, #0x5b0
   251bc: f902ce88     	str	x8, [x20, #0x598]
   251c0: aa1303e1     	mov	x1, x19
   251c4: 52a00402     	mov	w2, #0x200000           // =2097152
   251c8: f902d288     	str	x8, [x20, #0x5a0]
   251cc: 90000008     	adrp	x8, 0x25000 <tp_ghost_check+0x520>
		00000000000251cc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id2_report_work
   251d0: 91000108     	add	x8, x8, #0x0
		00000000000251d0:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id2_report_work
   251d4: aa1f03e3     	mov	x3, xzr
   251d8: aa1f03e4     	mov	x4, xzr
   251dc: f902d688     	str	x8, [x20, #0x5a8]
   251e0: 94000000     	bl	0x251e0 <tpd_report_work_init+0xfc>
		00000000000251e0:  R_AARCH64_CALL26	init_timer_key
   251e4: 91180288     	add	x8, x20, #0x600
   251e8: f902fe95     	str	x21, [x20, #0x5f8]
   251ec: 91186280     	add	x0, x20, #0x618
   251f0: f9030288     	str	x8, [x20, #0x600]
   251f4: aa1303e1     	mov	x1, x19
   251f8: 52a00402     	mov	w2, #0x200000           // =2097152
   251fc: f9030688     	str	x8, [x20, #0x608]
   25200: 90000008     	adrp	x8, 0x25000 <tp_ghost_check+0x520>
		0000000000025200:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id3_report_work
   25204: 91000108     	add	x8, x8, #0x0
		0000000000025204:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id3_report_work
   25208: aa1f03e3     	mov	x3, xzr
   2520c: aa1f03e4     	mov	x4, xzr
   25210: f9030a88     	str	x8, [x20, #0x610]
   25214: 94000000     	bl	0x25214 <tpd_report_work_init+0x130>
		0000000000025214:  R_AARCH64_CALL26	init_timer_key
   25218: 9119a288     	add	x8, x20, #0x668
   2521c: f9033295     	str	x21, [x20, #0x660]
   25220: 911a0280     	add	x0, x20, #0x680
   25224: f9033688     	str	x8, [x20, #0x668]
   25228: aa1303e1     	mov	x1, x19
   2522c: 52a00402     	mov	w2, #0x200000           // =2097152
   25230: f9033a88     	str	x8, [x20, #0x670]
   25234: 90000008     	adrp	x8, 0x25000 <tp_ghost_check+0x520>
		0000000000025234:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id4_report_work
   25238: 91000108     	add	x8, x8, #0x0
		0000000000025238:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id4_report_work
   2523c: aa1f03e3     	mov	x3, xzr
   25240: aa1f03e4     	mov	x4, xzr
   25244: f9033e88     	str	x8, [x20, #0x678]
   25248: 94000000     	bl	0x25248 <tpd_report_work_init+0x164>
		0000000000025248:  R_AARCH64_CALL26	init_timer_key
   2524c: 911b4288     	add	x8, x20, #0x6d0
   25250: f9036695     	str	x21, [x20, #0x6c8]
   25254: 911ba280     	add	x0, x20, #0x6e8
   25258: f9036a88     	str	x8, [x20, #0x6d0]
   2525c: aa1303e1     	mov	x1, x19
   25260: 52a00402     	mov	w2, #0x200000           // =2097152
   25264: f9036e88     	str	x8, [x20, #0x6d8]
   25268: 90000008     	adrp	x8, 0x25000 <tp_ghost_check+0x520>
		0000000000025268:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id5_report_work
   2526c: 91000108     	add	x8, x8, #0x0
		000000000002526c:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id5_report_work
   25270: aa1f03e3     	mov	x3, xzr
   25274: aa1f03e4     	mov	x4, xzr
   25278: f9037288     	str	x8, [x20, #0x6e0]
   2527c: 94000000     	bl	0x2527c <tpd_report_work_init+0x198>
		000000000002527c:  R_AARCH64_CALL26	init_timer_key
   25280: 911ce288     	add	x8, x20, #0x738
   25284: f9039a95     	str	x21, [x20, #0x730]
   25288: 911d4280     	add	x0, x20, #0x750
   2528c: f9039e88     	str	x8, [x20, #0x738]
   25290: aa1303e1     	mov	x1, x19
   25294: 52a00402     	mov	w2, #0x200000           // =2097152
   25298: f903a288     	str	x8, [x20, #0x740]
   2529c: 90000008     	adrp	x8, 0x25000 <tp_ghost_check+0x520>
		000000000002529c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id6_report_work
   252a0: 91000108     	add	x8, x8, #0x0
		00000000000252a0:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id6_report_work
   252a4: aa1f03e3     	mov	x3, xzr
   252a8: aa1f03e4     	mov	x4, xzr
   252ac: f903a688     	str	x8, [x20, #0x748]
   252b0: 94000000     	bl	0x252b0 <tpd_report_work_init+0x1cc>
		00000000000252b0:  R_AARCH64_CALL26	init_timer_key
   252b4: 911e8288     	add	x8, x20, #0x7a0
   252b8: f903ce95     	str	x21, [x20, #0x798]
   252bc: 911ee280     	add	x0, x20, #0x7b8
   252c0: f903d288     	str	x8, [x20, #0x7a0]
   252c4: aa1303e1     	mov	x1, x19
   252c8: 52a00402     	mov	w2, #0x200000           // =2097152
   252cc: f903d688     	str	x8, [x20, #0x7a8]
   252d0: 90000008     	adrp	x8, 0x25000 <tp_ghost_check+0x520>
		00000000000252d0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id7_report_work
   252d4: 91000108     	add	x8, x8, #0x0
		00000000000252d4:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id7_report_work
   252d8: aa1f03e3     	mov	x3, xzr
   252dc: aa1f03e4     	mov	x4, xzr
   252e0: f903da88     	str	x8, [x20, #0x7b0]
   252e4: 94000000     	bl	0x252e4 <tpd_report_work_init+0x200>
		00000000000252e4:  R_AARCH64_CALL26	init_timer_key
   252e8: 91202288     	add	x8, x20, #0x808
   252ec: f9040295     	str	x21, [x20, #0x800]
   252f0: 91208280     	add	x0, x20, #0x820
   252f4: f9040688     	str	x8, [x20, #0x808]
   252f8: aa1303e1     	mov	x1, x19
   252fc: 52a00402     	mov	w2, #0x200000           // =2097152
   25300: f9040a88     	str	x8, [x20, #0x810]
   25304: 90000008     	adrp	x8, 0x25000 <tp_ghost_check+0x520>
		0000000000025304:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id8_report_work
   25308: 91000108     	add	x8, x8, #0x0
		0000000000025308:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id8_report_work
   2530c: aa1f03e3     	mov	x3, xzr
   25310: aa1f03e4     	mov	x4, xzr
   25314: f9040e88     	str	x8, [x20, #0x818]
   25318: 94000000     	bl	0x25318 <tpd_report_work_init+0x234>
		0000000000025318:  R_AARCH64_CALL26	init_timer_key
   2531c: 9121c288     	add	x8, x20, #0x870
   25320: f9043695     	str	x21, [x20, #0x868]
   25324: 91222280     	add	x0, x20, #0x888
   25328: f9043a88     	str	x8, [x20, #0x870]
   2532c: aa1303e1     	mov	x1, x19
   25330: 52a00402     	mov	w2, #0x200000           // =2097152
   25334: f9043e88     	str	x8, [x20, #0x878]
   25338: 90000008     	adrp	x8, 0x25000 <tp_ghost_check+0x520>
		0000000000025338:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id9_report_work
   2533c: 91000108     	add	x8, x8, #0x0
		000000000002533c:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id9_report_work
   25340: aa1f03e3     	mov	x3, xzr
   25344: aa1f03e4     	mov	x4, xzr
   25348: f9044288     	str	x8, [x20, #0x880]
   2534c: 94000000     	bl	0x2534c <tpd_report_work_init+0x268>
		000000000002534c:  R_AARCH64_CALL26	init_timer_key
   25350: 2a1f03e0     	mov	w0, wzr
   25354: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   25358: f9400bf5     	ldr	x21, [sp, #0x10]
   2535c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   25360: d50323bf     	autiasp
   25364: d65f03c0     	ret
   25368: 90000000     	adrp	x0, 0x25000 <tp_ghost_check+0x520>
		0000000000025368:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1397e
   2536c: 91000000     	add	x0, x0, #0x0
		000000000002536c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1397e
   25370: 90000001     	adrp	x1, 0x25000 <tp_ghost_check+0x520>
		0000000000025370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x176d2
   25374: 91000021     	add	x1, x1, #0x0
		0000000000025374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x176d2
   25378: 94000000     	bl	0x25378 <tpd_report_work_init+0x294>
		0000000000025378:  R_AARCH64_CALL26	_printk
   2537c: 12800160     	mov	w0, #-0xc               // =-12
   25380: 17fffff5     	b	0x25354 <tpd_report_work_init+0x270>
