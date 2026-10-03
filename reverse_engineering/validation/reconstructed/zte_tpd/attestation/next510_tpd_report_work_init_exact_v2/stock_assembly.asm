
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000917c <tpd_report_work_init>:
    917c: d503233f     	paciasp
    9180: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    9184: f9000bf5     	str	x21, [sp, #0x10]
    9188: a9024ff4     	stp	x20, x19, [sp, #0x20]
    918c: 910003fd     	mov	x29, sp
    9190: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009190:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    9194: 90000000     	adrp	x0, 0x9000 <tp_ghost_check+0x488>
		0000000000009194:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb32
    9198: 91000000     	add	x0, x0, #0x0
		0000000000009198:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb32
    919c: f9400114     	ldr	x20, [x8]
		000000000000919c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    91a0: 90000001     	adrp	x1, 0x9000 <tp_ghost_check+0x488>
		00000000000091a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b2a
    91a4: 91000021     	add	x1, x1, #0x0
		00000000000091a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b2a
    91a8: 94000000     	bl	0x91a8 <tpd_report_work_init+0x2c>
		00000000000091a8:  R_AARCH64_CALL26	_printk
    91ac: 52800141     	mov	w1, #0xa                // =10
    91b0: 90000000     	adrp	x0, 0x9000 <tp_ghost_check+0x488>
		00000000000091b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x504a
    91b4: 91000000     	add	x0, x0, #0x0
		00000000000091b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x504a
    91b8: 90000003     	adrp	x3, 0x9000 <tp_ghost_check+0x488>
		00000000000091b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e83
    91bc: 91000063     	add	x3, x3, #0x0
		00000000000091bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e83
    91c0: 72a000c1     	movk	w1, #0x6, lsl #16
    91c4: 52800022     	mov	w2, #0x1                // =1
    91c8: 94000000     	bl	0x91c8 <tpd_report_work_init+0x4c>
		00000000000091c8:  R_AARCH64_CALL26	alloc_workqueue
    91cc: f9025e80     	str	x0, [x20, #0x4b8]
    91d0: b4001180     	cbz	x0, 0x9400 <tpd_report_work_init+0x284>
    91d4: b26b7bf5     	mov	x21, #0xfffffffe00000   // =4503599625273344
    91d8: 91132288     	add	x8, x20, #0x4c8
    91dc: 90000013     	adrp	x19, 0x9000 <tp_ghost_check+0x488>
		00000000000091dc:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    91e0: 91000273     	add	x19, x19, #0x0
		00000000000091e0:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    91e4: f9026295     	str	x21, [x20, #0x4c0]
    91e8: 91138280     	add	x0, x20, #0x4e0
    91ec: f9026688     	str	x8, [x20, #0x4c8]
    91f0: aa1303e1     	mov	x1, x19
    91f4: 52a00402     	mov	w2, #0x200000           // =2097152
    91f8: f9026a88     	str	x8, [x20, #0x4d0]
    91fc: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		00000000000091fc:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x9420
    9200: 91000108     	add	x8, x8, #0x0
		0000000000009200:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x9420
    9204: aa1f03e3     	mov	x3, xzr
    9208: aa1f03e4     	mov	x4, xzr
    920c: f9026e88     	str	x8, [x20, #0x4d8]
    9210: 94000000     	bl	0x9210 <tpd_report_work_init+0x94>
		0000000000009210:  R_AARCH64_CALL26	init_timer_key
    9214: 9114c288     	add	x8, x20, #0x530
    9218: f9029695     	str	x21, [x20, #0x528]
    921c: 91152280     	add	x0, x20, #0x548
    9220: f9029a88     	str	x8, [x20, #0x530]
    9224: aa1303e1     	mov	x1, x19
    9228: 52a00402     	mov	w2, #0x200000           // =2097152
    922c: f9029e88     	str	x8, [x20, #0x538]
    9230: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009230:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x944c
    9234: 91000108     	add	x8, x8, #0x0
		0000000000009234:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x944c
    9238: aa1f03e3     	mov	x3, xzr
    923c: aa1f03e4     	mov	x4, xzr
    9240: f902a288     	str	x8, [x20, #0x540]
    9244: 94000000     	bl	0x9244 <tpd_report_work_init+0xc8>
		0000000000009244:  R_AARCH64_CALL26	init_timer_key
    9248: 91166288     	add	x8, x20, #0x598
    924c: f902ca95     	str	x21, [x20, #0x590]
    9250: 9116c280     	add	x0, x20, #0x5b0
    9254: f902ce88     	str	x8, [x20, #0x598]
    9258: aa1303e1     	mov	x1, x19
    925c: 52a00402     	mov	w2, #0x200000           // =2097152
    9260: f902d288     	str	x8, [x20, #0x5a0]
    9264: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009264:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x9478
    9268: 91000108     	add	x8, x8, #0x0
		0000000000009268:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x9478
    926c: aa1f03e3     	mov	x3, xzr
    9270: aa1f03e4     	mov	x4, xzr
    9274: f902d688     	str	x8, [x20, #0x5a8]
    9278: 94000000     	bl	0x9278 <tpd_report_work_init+0xfc>
		0000000000009278:  R_AARCH64_CALL26	init_timer_key
    927c: 91180288     	add	x8, x20, #0x600
    9280: f902fe95     	str	x21, [x20, #0x5f8]
    9284: 91186280     	add	x0, x20, #0x618
    9288: f9030288     	str	x8, [x20, #0x600]
    928c: aa1303e1     	mov	x1, x19
    9290: 52a00402     	mov	w2, #0x200000           // =2097152
    9294: f9030688     	str	x8, [x20, #0x608]
    9298: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009298:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x94a4
    929c: 91000108     	add	x8, x8, #0x0
		000000000000929c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x94a4
    92a0: aa1f03e3     	mov	x3, xzr
    92a4: aa1f03e4     	mov	x4, xzr
    92a8: f9030a88     	str	x8, [x20, #0x610]
    92ac: 94000000     	bl	0x92ac <tpd_report_work_init+0x130>
		00000000000092ac:  R_AARCH64_CALL26	init_timer_key
    92b0: 9119a288     	add	x8, x20, #0x668
    92b4: f9033295     	str	x21, [x20, #0x660]
    92b8: 911a0280     	add	x0, x20, #0x680
    92bc: f9033688     	str	x8, [x20, #0x668]
    92c0: aa1303e1     	mov	x1, x19
    92c4: 52a00402     	mov	w2, #0x200000           // =2097152
    92c8: f9033a88     	str	x8, [x20, #0x670]
    92cc: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		00000000000092cc:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x94d0
    92d0: 91000108     	add	x8, x8, #0x0
		00000000000092d0:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x94d0
    92d4: aa1f03e3     	mov	x3, xzr
    92d8: aa1f03e4     	mov	x4, xzr
    92dc: f9033e88     	str	x8, [x20, #0x678]
    92e0: 94000000     	bl	0x92e0 <tpd_report_work_init+0x164>
		00000000000092e0:  R_AARCH64_CALL26	init_timer_key
    92e4: 911b4288     	add	x8, x20, #0x6d0
    92e8: f9036695     	str	x21, [x20, #0x6c8]
    92ec: 911ba280     	add	x0, x20, #0x6e8
    92f0: f9036a88     	str	x8, [x20, #0x6d0]
    92f4: aa1303e1     	mov	x1, x19
    92f8: 52a00402     	mov	w2, #0x200000           // =2097152
    92fc: f9036e88     	str	x8, [x20, #0x6d8]
    9300: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009300:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x94fc
    9304: 91000108     	add	x8, x8, #0x0
		0000000000009304:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x94fc
    9308: aa1f03e3     	mov	x3, xzr
    930c: aa1f03e4     	mov	x4, xzr
    9310: f9037288     	str	x8, [x20, #0x6e0]
    9314: 94000000     	bl	0x9314 <tpd_report_work_init+0x198>
		0000000000009314:  R_AARCH64_CALL26	init_timer_key
    9318: 911ce288     	add	x8, x20, #0x738
    931c: f9039a95     	str	x21, [x20, #0x730]
    9320: 911d4280     	add	x0, x20, #0x750
    9324: f9039e88     	str	x8, [x20, #0x738]
    9328: aa1303e1     	mov	x1, x19
    932c: 52a00402     	mov	w2, #0x200000           // =2097152
    9330: f903a288     	str	x8, [x20, #0x740]
    9334: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009334:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x9528
    9338: 91000108     	add	x8, x8, #0x0
		0000000000009338:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x9528
    933c: aa1f03e3     	mov	x3, xzr
    9340: aa1f03e4     	mov	x4, xzr
    9344: f903a688     	str	x8, [x20, #0x748]
    9348: 94000000     	bl	0x9348 <tpd_report_work_init+0x1cc>
		0000000000009348:  R_AARCH64_CALL26	init_timer_key
    934c: 911e8288     	add	x8, x20, #0x7a0
    9350: f903ce95     	str	x21, [x20, #0x798]
    9354: 911ee280     	add	x0, x20, #0x7b8
    9358: f903d288     	str	x8, [x20, #0x7a0]
    935c: aa1303e1     	mov	x1, x19
    9360: 52a00402     	mov	w2, #0x200000           // =2097152
    9364: f903d688     	str	x8, [x20, #0x7a8]
    9368: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009368:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x9554
    936c: 91000108     	add	x8, x8, #0x0
		000000000000936c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x9554
    9370: aa1f03e3     	mov	x3, xzr
    9374: aa1f03e4     	mov	x4, xzr
    9378: f903da88     	str	x8, [x20, #0x7b0]
    937c: 94000000     	bl	0x937c <tpd_report_work_init+0x200>
		000000000000937c:  R_AARCH64_CALL26	init_timer_key
    9380: 91202288     	add	x8, x20, #0x808
    9384: f9040295     	str	x21, [x20, #0x800]
    9388: 91208280     	add	x0, x20, #0x820
    938c: f9040688     	str	x8, [x20, #0x808]
    9390: aa1303e1     	mov	x1, x19
    9394: 52a00402     	mov	w2, #0x200000           // =2097152
    9398: f9040a88     	str	x8, [x20, #0x810]
    939c: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		000000000000939c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x9580
    93a0: 91000108     	add	x8, x8, #0x0
		00000000000093a0:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x9580
    93a4: aa1f03e3     	mov	x3, xzr
    93a8: aa1f03e4     	mov	x4, xzr
    93ac: f9040e88     	str	x8, [x20, #0x818]
    93b0: 94000000     	bl	0x93b0 <tpd_report_work_init+0x234>
		00000000000093b0:  R_AARCH64_CALL26	init_timer_key
    93b4: 9121c288     	add	x8, x20, #0x870
    93b8: f9043695     	str	x21, [x20, #0x868]
    93bc: 91222280     	add	x0, x20, #0x888
    93c0: f9043a88     	str	x8, [x20, #0x870]
    93c4: aa1303e1     	mov	x1, x19
    93c8: 52a00402     	mov	w2, #0x200000           // =2097152
    93cc: f9043e88     	str	x8, [x20, #0x878]
    93d0: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		00000000000093d0:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x95ac
    93d4: 91000108     	add	x8, x8, #0x0
		00000000000093d4:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x95ac
    93d8: aa1f03e3     	mov	x3, xzr
    93dc: aa1f03e4     	mov	x4, xzr
    93e0: f9044288     	str	x8, [x20, #0x880]
    93e4: 94000000     	bl	0x93e4 <tpd_report_work_init+0x268>
		00000000000093e4:  R_AARCH64_CALL26	init_timer_key
    93e8: 2a1f03e0     	mov	w0, wzr
    93ec: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    93f0: f9400bf5     	ldr	x21, [sp, #0x10]
    93f4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    93f8: d50323bf     	autiasp
    93fc: d65f03c0     	ret
    9400: 90000000     	adrp	x0, 0x9000 <tp_ghost_check+0x488>
		0000000000009400:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1edc
    9404: 91000000     	add	x0, x0, #0x0
		0000000000009404:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1edc
    9408: 90000001     	adrp	x1, 0x9000 <tp_ghost_check+0x488>
		0000000000009408:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b2a
    940c: 91000021     	add	x1, x1, #0x0
		000000000000940c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b2a
    9410: 94000000     	bl	0x9410 <tpd_report_work_init+0x294>
		0000000000009410:  R_AARCH64_CALL26	_printk
    9414: 12800160     	mov	w0, #-0xc               // =-12
    9418: 17fffff5     	b	0x93ec <tpd_report_work_init+0x270>
