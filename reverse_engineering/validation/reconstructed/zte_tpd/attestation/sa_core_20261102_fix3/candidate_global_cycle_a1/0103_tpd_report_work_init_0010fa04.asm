
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000192d8 <tpd_report_work_init>:
   192d8: d503233f     	paciasp
   192dc: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   192e0: f9000bf5     	str	x21, [sp, #0x10]
   192e4: a9024ff4     	stp	x20, x19, [sp, #0x20]
   192e8: 910003fd     	mov	x29, sp
   192ec: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		00000000000192ec:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   192f0: 90000000     	adrp	x0, 0x19000 <tp_ghost_check+0x32c>
		00000000000192f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb5c
   192f4: 91000000     	add	x0, x0, #0x0
		00000000000192f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb5c
   192f8: f9400114     	ldr	x20, [x8]
		00000000000192f8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   192fc: 90000001     	adrp	x1, 0x19000 <tp_ghost_check+0x32c>
		00000000000192fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c74
   19300: 91000021     	add	x1, x1, #0x0
		0000000000019300:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c74
   19304: 94000000     	bl	0x19304 <tpd_report_work_init+0x2c>
		0000000000019304:  R_AARCH64_CALL26	_printk
   19308: 52800141     	mov	w1, #0xa                // =10
   1930c: 90000000     	adrp	x0, 0x19000 <tp_ghost_check+0x32c>
		000000000001930c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5170
   19310: 91000000     	add	x0, x0, #0x0
		0000000000019310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5170
   19314: 90000003     	adrp	x3, 0x19000 <tp_ghost_check+0x32c>
		0000000000019314:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa0fe
   19318: 91000063     	add	x3, x3, #0x0
		0000000000019318:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa0fe
   1931c: 72a000c1     	movk	w1, #0x6, lsl #16
   19320: 52800022     	mov	w2, #0x1                // =1
   19324: 94000000     	bl	0x19324 <tpd_report_work_init+0x4c>
		0000000000019324:  R_AARCH64_CALL26	alloc_workqueue
   19328: f9025e80     	str	x0, [x20, #0x4b8]
   1932c: b4001180     	cbz	x0, 0x1955c <tpd_report_work_init+0x284>
   19330: b26b7bf5     	mov	x21, #0xfffffffe00000   // =4503599625273344
   19334: 91132288     	add	x8, x20, #0x4c8
   19338: 90000013     	adrp	x19, 0x19000 <tp_ghost_check+0x32c>
		0000000000019338:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
   1933c: 91000273     	add	x19, x19, #0x0
		000000000001933c:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
   19340: f9026295     	str	x21, [x20, #0x4c0]
   19344: 91138280     	add	x0, x20, #0x4e0
   19348: f9026688     	str	x8, [x20, #0x4c8]
   1934c: aa1303e1     	mov	x1, x19
   19350: 52a00402     	mov	w2, #0x200000           // =2097152
   19354: f9026a88     	str	x8, [x20, #0x4d0]
   19358: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019358:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id0_report_work
   1935c: 91000108     	add	x8, x8, #0x0
		000000000001935c:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id0_report_work
   19360: aa1f03e3     	mov	x3, xzr
   19364: aa1f03e4     	mov	x4, xzr
   19368: f9026e88     	str	x8, [x20, #0x4d8]
   1936c: 94000000     	bl	0x1936c <tpd_report_work_init+0x94>
		000000000001936c:  R_AARCH64_CALL26	init_timer_key
   19370: 9114c288     	add	x8, x20, #0x530
   19374: f9029695     	str	x21, [x20, #0x528]
   19378: 91152280     	add	x0, x20, #0x548
   1937c: f9029a88     	str	x8, [x20, #0x530]
   19380: aa1303e1     	mov	x1, x19
   19384: 52a00402     	mov	w2, #0x200000           // =2097152
   19388: f9029e88     	str	x8, [x20, #0x538]
   1938c: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		000000000001938c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id1_report_work
   19390: 91000108     	add	x8, x8, #0x0
		0000000000019390:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id1_report_work
   19394: aa1f03e3     	mov	x3, xzr
   19398: aa1f03e4     	mov	x4, xzr
   1939c: f902a288     	str	x8, [x20, #0x540]
   193a0: 94000000     	bl	0x193a0 <tpd_report_work_init+0xc8>
		00000000000193a0:  R_AARCH64_CALL26	init_timer_key
   193a4: 91166288     	add	x8, x20, #0x598
   193a8: f902ca95     	str	x21, [x20, #0x590]
   193ac: 9116c280     	add	x0, x20, #0x5b0
   193b0: f902ce88     	str	x8, [x20, #0x598]
   193b4: aa1303e1     	mov	x1, x19
   193b8: 52a00402     	mov	w2, #0x200000           // =2097152
   193bc: f902d288     	str	x8, [x20, #0x5a0]
   193c0: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		00000000000193c0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id2_report_work
   193c4: 91000108     	add	x8, x8, #0x0
		00000000000193c4:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id2_report_work
   193c8: aa1f03e3     	mov	x3, xzr
   193cc: aa1f03e4     	mov	x4, xzr
   193d0: f902d688     	str	x8, [x20, #0x5a8]
   193d4: 94000000     	bl	0x193d4 <tpd_report_work_init+0xfc>
		00000000000193d4:  R_AARCH64_CALL26	init_timer_key
   193d8: 91180288     	add	x8, x20, #0x600
   193dc: f902fe95     	str	x21, [x20, #0x5f8]
   193e0: 91186280     	add	x0, x20, #0x618
   193e4: f9030288     	str	x8, [x20, #0x600]
   193e8: aa1303e1     	mov	x1, x19
   193ec: 52a00402     	mov	w2, #0x200000           // =2097152
   193f0: f9030688     	str	x8, [x20, #0x608]
   193f4: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		00000000000193f4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id3_report_work
   193f8: 91000108     	add	x8, x8, #0x0
		00000000000193f8:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id3_report_work
   193fc: aa1f03e3     	mov	x3, xzr
   19400: aa1f03e4     	mov	x4, xzr
   19404: f9030a88     	str	x8, [x20, #0x610]
   19408: 94000000     	bl	0x19408 <tpd_report_work_init+0x130>
		0000000000019408:  R_AARCH64_CALL26	init_timer_key
   1940c: 9119a288     	add	x8, x20, #0x668
   19410: f9033295     	str	x21, [x20, #0x660]
   19414: 911a0280     	add	x0, x20, #0x680
   19418: f9033688     	str	x8, [x20, #0x668]
   1941c: aa1303e1     	mov	x1, x19
   19420: 52a00402     	mov	w2, #0x200000           // =2097152
   19424: f9033a88     	str	x8, [x20, #0x670]
   19428: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019428:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id4_report_work
   1942c: 91000108     	add	x8, x8, #0x0
		000000000001942c:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id4_report_work
   19430: aa1f03e3     	mov	x3, xzr
   19434: aa1f03e4     	mov	x4, xzr
   19438: f9033e88     	str	x8, [x20, #0x678]
   1943c: 94000000     	bl	0x1943c <tpd_report_work_init+0x164>
		000000000001943c:  R_AARCH64_CALL26	init_timer_key
   19440: 911b4288     	add	x8, x20, #0x6d0
   19444: f9036695     	str	x21, [x20, #0x6c8]
   19448: 911ba280     	add	x0, x20, #0x6e8
   1944c: f9036a88     	str	x8, [x20, #0x6d0]
   19450: aa1303e1     	mov	x1, x19
   19454: 52a00402     	mov	w2, #0x200000           // =2097152
   19458: f9036e88     	str	x8, [x20, #0x6d8]
   1945c: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		000000000001945c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id5_report_work
   19460: 91000108     	add	x8, x8, #0x0
		0000000000019460:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id5_report_work
   19464: aa1f03e3     	mov	x3, xzr
   19468: aa1f03e4     	mov	x4, xzr
   1946c: f9037288     	str	x8, [x20, #0x6e0]
   19470: 94000000     	bl	0x19470 <tpd_report_work_init+0x198>
		0000000000019470:  R_AARCH64_CALL26	init_timer_key
   19474: 911ce288     	add	x8, x20, #0x738
   19478: f9039a95     	str	x21, [x20, #0x730]
   1947c: 911d4280     	add	x0, x20, #0x750
   19480: f9039e88     	str	x8, [x20, #0x738]
   19484: aa1303e1     	mov	x1, x19
   19488: 52a00402     	mov	w2, #0x200000           // =2097152
   1948c: f903a288     	str	x8, [x20, #0x740]
   19490: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019490:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id6_report_work
   19494: 91000108     	add	x8, x8, #0x0
		0000000000019494:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id6_report_work
   19498: aa1f03e3     	mov	x3, xzr
   1949c: aa1f03e4     	mov	x4, xzr
   194a0: f903a688     	str	x8, [x20, #0x748]
   194a4: 94000000     	bl	0x194a4 <tpd_report_work_init+0x1cc>
		00000000000194a4:  R_AARCH64_CALL26	init_timer_key
   194a8: 911e8288     	add	x8, x20, #0x7a0
   194ac: f903ce95     	str	x21, [x20, #0x798]
   194b0: 911ee280     	add	x0, x20, #0x7b8
   194b4: f903d288     	str	x8, [x20, #0x7a0]
   194b8: aa1303e1     	mov	x1, x19
   194bc: 52a00402     	mov	w2, #0x200000           // =2097152
   194c0: f903d688     	str	x8, [x20, #0x7a8]
   194c4: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		00000000000194c4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id7_report_work
   194c8: 91000108     	add	x8, x8, #0x0
		00000000000194c8:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id7_report_work
   194cc: aa1f03e3     	mov	x3, xzr
   194d0: aa1f03e4     	mov	x4, xzr
   194d4: f903da88     	str	x8, [x20, #0x7b0]
   194d8: 94000000     	bl	0x194d8 <tpd_report_work_init+0x200>
		00000000000194d8:  R_AARCH64_CALL26	init_timer_key
   194dc: 91202288     	add	x8, x20, #0x808
   194e0: f9040295     	str	x21, [x20, #0x800]
   194e4: 91208280     	add	x0, x20, #0x820
   194e8: f9040688     	str	x8, [x20, #0x808]
   194ec: aa1303e1     	mov	x1, x19
   194f0: 52a00402     	mov	w2, #0x200000           // =2097152
   194f4: f9040a88     	str	x8, [x20, #0x810]
   194f8: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		00000000000194f8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id8_report_work
   194fc: 91000108     	add	x8, x8, #0x0
		00000000000194fc:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id8_report_work
   19500: aa1f03e3     	mov	x3, xzr
   19504: aa1f03e4     	mov	x4, xzr
   19508: f9040e88     	str	x8, [x20, #0x818]
   1950c: 94000000     	bl	0x1950c <tpd_report_work_init+0x234>
		000000000001950c:  R_AARCH64_CALL26	init_timer_key
   19510: 9121c288     	add	x8, x20, #0x870
   19514: f9043695     	str	x21, [x20, #0x868]
   19518: 91222280     	add	x0, x20, #0x888
   1951c: f9043a88     	str	x8, [x20, #0x870]
   19520: aa1303e1     	mov	x1, x19
   19524: 52a00402     	mov	w2, #0x200000           // =2097152
   19528: f9043e88     	str	x8, [x20, #0x878]
   1952c: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		000000000001952c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id9_report_work
   19530: 91000108     	add	x8, x8, #0x0
		0000000000019530:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id9_report_work
   19534: aa1f03e3     	mov	x3, xzr
   19538: aa1f03e4     	mov	x4, xzr
   1953c: f9044288     	str	x8, [x20, #0x880]
   19540: 94000000     	bl	0x19540 <tpd_report_work_init+0x268>
		0000000000019540:  R_AARCH64_CALL26	init_timer_key
   19544: 2a1f03e0     	mov	w0, wzr
   19548: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1954c: f9400bf5     	ldr	x21, [sp, #0x10]
   19550: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   19554: d50323bf     	autiasp
   19558: d65f03c0     	ret
   1955c: 90000000     	adrp	x0, 0x19000 <tp_ghost_check+0x32c>
		000000000001955c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f4c
   19560: 91000000     	add	x0, x0, #0x0
		0000000000019560:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f4c
   19564: 90000001     	adrp	x1, 0x19000 <tp_ghost_check+0x32c>
		0000000000019564:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c74
   19568: 91000021     	add	x1, x1, #0x0
		0000000000019568:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c74
   1956c: 94000000     	bl	0x1956c <tpd_report_work_init+0x294>
		000000000001956c:  R_AARCH64_CALL26	_printk
   19570: 12800160     	mov	w0, #-0xc               // =-12
   19574: 17fffff5     	b	0x19548 <tpd_report_work_init+0x270>
