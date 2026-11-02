
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000021d0 <charger_policy_probe_work>:
    21d0: d503233f     	paciasp
    21d4: d101c3ff     	sub	sp, sp, #0x70
    21d8: a9047bfd     	stp	x29, x30, [sp, #0x40]
    21dc: a90557f6     	stp	x22, x21, [sp, #0x50]
    21e0: a9064ff4     	stp	x20, x19, [sp, #0x60]
    21e4: 910103fd     	add	x29, sp, #0x40
    21e8: d5384108     	mrs	x8, SP_EL0
    21ec: aa0003f3     	mov	x19, x0
    21f0: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		00000000000021f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1758
    21f4: 91000000     	add	x0, x0, #0x0
		00000000000021f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1758
    21f8: f9438908     	ldr	x8, [x8, #0x710]
    21fc: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		00000000000021fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1325
    2200: 91000021     	add	x1, x1, #0x0
		0000000000002200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1325
    2204: f81f83a8     	stur	x8, [x29, #-0x8]
    2208: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    220c: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    2210: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    2214: f90003ff     	str	xzr, [sp]
    2218: 94000000     	bl	0x2218 <charger_policy_probe_work+0x48>
		0000000000002218:  R_AARCH64_CALL26	_printk
    221c: 294daa69     	ldp	w9, w10, [x19, #0x6c]
    2220: b9407e68     	ldr	w8, [x19, #0x7c]
    2224: d103c260     	sub	x0, x19, #0xf0
    2228: 90000002     	adrp	x2, 0x2000 <charger_policy_probe+0x644>
		0000000000002228:  R_AARCH64_ADR_PREL_PG_HI21	charger_policy_timeout_alarm_cb
    222c: 91000042     	add	x2, x2, #0x0
		000000000000222c:  R_AARCH64_ADD_ABS_LO12_NC	charger_policy_timeout_alarm_cb
    2230: 52800021     	mov	w1, #0x1                // =1
    2234: b900c27f     	str	wzr, [x19, #0xc0]
    2238: 7100013f     	cmp	w9, #0x0
    223c: 5291a009     	mov	w9, #0x8d00             // =36096
    2240: f80d427f     	stur	xzr, [x19, #0xd4]
    2244: 72a004e9     	movk	w9, #0x27, lsl #16
    2248: 3904067f     	strb	wzr, [x19, #0x101]
    224c: 291ba668     	stp	w8, w9, [x19, #0xdc]
    2250: 1a9f07e8     	cset	w8, ne
    2254: 528ea609     	mov	w9, #0x7530             // =30000
    2258: 39040a68     	strb	w8, [x19, #0x102]
    225c: b9407668     	ldr	w8, [x19, #0x74]
    2260: a90efe69     	stp	x9, xzr, [x19, #0xe8]
    2264: 7100011f     	cmp	w8, #0x0
    2268: 39040e7f     	strb	wzr, [x19, #0x103]
    226c: 1a9f07e8     	cset	w8, ne
    2270: 7100015f     	cmp	w10, #0x0
    2274: 39041268     	strb	w8, [x19, #0x104]
    2278: 1a9f07e8     	cset	w8, ne
    227c: 39040268     	strb	w8, [x19, #0x100]
    2280: 94000000     	bl	0x2280 <charger_policy_probe_work+0xb0>
		0000000000002280:  R_AARCH64_CALL26	alarm_init
    2284: 52800141     	mov	w1, #0xa                // =10
    2288: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcd3
    228c: 91000000     	add	x0, x0, #0x0
		000000000000228c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcd3
    2290: 90000003     	adrp	x3, 0x2000 <charger_policy_probe+0x644>
		0000000000002290:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc3e
    2294: 91000063     	add	x3, x3, #0x0
		0000000000002294:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc3e
    2298: 72a000c1     	movk	w1, #0x6, lsl #16
    229c: 52800022     	mov	w2, #0x1                // =1
    22a0: 94000000     	bl	0x22a0 <charger_policy_probe_work+0xd0>
		00000000000022a0:  R_AARCH64_CALL26	alloc_workqueue
    22a4: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    22a8: aa1303f5     	mov	x21, x19
    22ac: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		00000000000022ac:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    22b0: 91000021     	add	x1, x1, #0x0
		00000000000022b0:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    22b4: f8190ea8     	str	x8, [x21, #-0x70]!
    22b8: 910022a8     	add	x8, x21, #0x8
    22bc: f81f82a0     	stur	x0, [x21, #-0x8]
    22c0: 910082a0     	add	x0, x21, #0x20
    22c4: f90006a8     	str	x8, [x21, #0x8]
    22c8: 52a00402     	mov	w2, #0x200000           // =2097152
    22cc: aa1f03e3     	mov	x3, xzr
    22d0: f9000aa8     	str	x8, [x21, #0x10]
    22d4: 90000008     	adrp	x8, 0x2000 <charger_policy_probe+0x644>
		00000000000022d4:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x2504
    22d8: 91000108     	add	x8, x8, #0x0
		00000000000022d8:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x2504
    22dc: aa1f03e4     	mov	x4, xzr
    22e0: d102a2b4     	sub	x20, x21, #0xa8
    22e4: f9000ea8     	str	x8, [x21, #0x18]
    22e8: 94000000     	bl	0x22e8 <charger_policy_probe_work+0x118>
		00000000000022e8:  R_AARCH64_CALL26	init_timer_key
    22ec: b50000f4     	cbnz	x20, 0x2308 <charger_policy_probe_work+0x138>
    22f0: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		00000000000022f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xec2
    22f4: 91000000     	add	x0, x0, #0x0
		00000000000022f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xec2
    22f8: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		00000000000022f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1325
    22fc: 91000021     	add	x1, x1, #0x0
		00000000000022fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1325
    2300: 94000000     	bl	0x2300 <charger_policy_probe_work+0x130>
		0000000000002300:  R_AARCH64_CALL26	_printk
    2304: 14000063     	b	0x2490 <charger_policy_probe_work+0x2c0>
    2308: d1042276     	sub	x22, x19, #0x108
    230c: 90000008     	adrp	x8, 0x2000 <charger_policy_probe+0x644>
		000000000000230c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x2aa8
    2310: 91000108     	add	x8, x8, #0x0
		0000000000002310:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x2aa8
    2314: aa1603e0     	mov	x0, x22
    2318: f90002c8     	str	x8, [x22]
    231c: 94000000     	bl	0x231c <charger_policy_probe_work+0x14c>
		000000000000231c:  R_AARCH64_CALL26	power_supply_reg_notifier
    2320: 36f801a0     	tbz	w0, #0x1f, 0x2354 <charger_policy_probe_work+0x184>
    2324: 2a0003e2     	mov	w2, w0
    2328: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f32
    232c: 91000000     	add	x0, x0, #0x0
		000000000000232c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f32
    2330: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		0000000000002330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x184f
    2334: 91000021     	add	x1, x1, #0x0
		0000000000002334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x184f
    2338: 94000000     	bl	0x2338 <charger_policy_probe_work+0x168>
		0000000000002338:  R_AARCH64_CALL26	_printk
    233c: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		000000000000233c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xec2
    2340: 91000000     	add	x0, x0, #0x0
		0000000000002340:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xec2
    2344: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		0000000000002344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1325
    2348: 91000021     	add	x1, x1, #0x0
		0000000000002348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1325
    234c: 94000000     	bl	0x234c <charger_policy_probe_work+0x17c>
		000000000000234c:  R_AARCH64_CALL26	_printk
    2350: 1400003e     	b	0x2448 <charger_policy_probe_work+0x278>
    2354: f9400280     	ldr	x0, [x20]
    2358: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		0000000000002358:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x190
    235c: 91000021     	add	x1, x1, #0x0
		000000000000235c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x190
    2360: 910003e2     	mov	x2, sp
    2364: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    2368: a9017ff4     	stp	x20, xzr, [sp, #0x10]
    236c: a9007fff     	stp	xzr, xzr, [sp]
    2370: f90013ff     	str	xzr, [sp, #0x20]
    2374: 94000000     	bl	0x2374 <charger_policy_probe_work+0x1a4>
		0000000000002374:  R_AARCH64_CALL26	devm_power_supply_register
    2378: d1044268     	sub	x8, x19, #0x110
    237c: b13ffc1f     	cmn	x0, #0xfff
    2380: f9000100     	str	x0, [x8]
    2384: 54000103     	b.lo	0x23a4 <charger_policy_probe_work+0x1d4>
    2388: aa0003e2     	mov	x2, x0
    238c: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		000000000000238c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x107
    2390: 91000000     	add	x0, x0, #0x0
		0000000000002390:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x107
    2394: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		0000000000002394:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1325
    2398: 91000021     	add	x1, x1, #0x0
		0000000000002398:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1325
    239c: 94000000     	bl	0x239c <charger_policy_probe_work+0x1cc>
		000000000000239c:  R_AARCH64_CALL26	_printk
    23a0: 14000028     	b	0x2440 <charger_policy_probe_work+0x270>
    23a4: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		00000000000023a4:  R_AARCH64_ADR_PREL_PG_HI21	demo_charging_policy_node
    23a8: 91000000     	add	x0, x0, #0x0
		00000000000023a8:  R_AARCH64_ADD_ABS_LO12_NC	demo_charging_policy_node
    23ac: aa1403e1     	mov	x1, x20
    23b0: 94000000     	bl	0x23b0 <charger_policy_probe_work+0x1e0>
		00000000000023b0:  R_AARCH64_CALL26	zte_misc_register_callback
    23b4: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		00000000000023b4:  R_AARCH64_ADR_PREL_PG_HI21	expired_charging_policy_node
    23b8: 91000000     	add	x0, x0, #0x0
		00000000000023b8:  R_AARCH64_ADD_ABS_LO12_NC	expired_charging_policy_node
    23bc: aa1403e1     	mov	x1, x20
    23c0: 94000000     	bl	0x23c0 <charger_policy_probe_work+0x1f0>
		00000000000023c0:  R_AARCH64_CALL26	zte_misc_register_callback
    23c4: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		00000000000023c4:  R_AARCH64_ADR_PREL_PG_HI21	charging_time_sec_node
    23c8: 91000000     	add	x0, x0, #0x0
		00000000000023c8:  R_AARCH64_ADD_ABS_LO12_NC	charging_time_sec_node
    23cc: aa1403e1     	mov	x1, x20
    23d0: 94000000     	bl	0x23d0 <charger_policy_probe_work+0x200>
		00000000000023d0:  R_AARCH64_CALL26	zte_misc_register_callback
    23d4: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		00000000000023d4:  R_AARCH64_ADR_PREL_PG_HI21	force_disching_sec_node
    23d8: 91000000     	add	x0, x0, #0x0
		00000000000023d8:  R_AARCH64_ADD_ABS_LO12_NC	force_disching_sec_node
    23dc: aa1403e1     	mov	x1, x20
    23e0: 94000000     	bl	0x23e0 <charger_policy_probe_work+0x210>
		00000000000023e0:  R_AARCH64_CALL26	zte_misc_register_callback
    23e4: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		00000000000023e4:  R_AARCH64_ADR_PREL_PG_HI21	policy_cap_min_node
    23e8: 91000000     	add	x0, x0, #0x0
		00000000000023e8:  R_AARCH64_ADD_ABS_LO12_NC	policy_cap_min_node
    23ec: aa1403e1     	mov	x1, x20
    23f0: 94000000     	bl	0x23f0 <charger_policy_probe_work+0x220>
		00000000000023f0:  R_AARCH64_CALL26	zte_misc_register_callback
    23f4: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		00000000000023f4:  R_AARCH64_ADR_PREL_PG_HI21	policy_cap_max_node
    23f8: 91000000     	add	x0, x0, #0x0
		00000000000023f8:  R_AARCH64_ADD_ABS_LO12_NC	policy_cap_max_node
    23fc: aa1403e1     	mov	x1, x20
    2400: 94000000     	bl	0x2400 <charger_policy_probe_work+0x230>
		0000000000002400:  R_AARCH64_CALL26	zte_misc_register_callback
    2404: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002404:  R_AARCH64_ADR_PREL_PG_HI21	policy_enable_node
    2408: 91000000     	add	x0, x0, #0x0
		0000000000002408:  R_AARCH64_ADD_ABS_LO12_NC	policy_enable_node
    240c: aa1403e1     	mov	x1, x20
    2410: 94000000     	bl	0x2410 <charger_policy_probe_work+0x240>
		0000000000002410:  R_AARCH64_CALL26	zte_misc_register_callback
    2414: f9400280     	ldr	x0, [x20]
    2418: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		0000000000002418:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e
    241c: 91000021     	add	x1, x1, #0x0
		000000000000241c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e
    2420: 94000000     	bl	0x2420 <charger_policy_probe_work+0x250>
		0000000000002420:  R_AARCH64_CALL26	wakeup_source_register
    2424: f9006660     	str	x0, [x19, #0xc8]
    2428: b50005a0     	cbnz	x0, 0x24dc <charger_policy_probe_work+0x30c>
    242c: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		000000000000242c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ccf
    2430: 91000000     	add	x0, x0, #0x0
		0000000000002430:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ccf
    2434: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		0000000000002434:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1325
    2438: 91000021     	add	x1, x1, #0x0
		0000000000002438:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1325
    243c: 94000000     	bl	0x243c <charger_policy_probe_work+0x26c>
		000000000000243c:  R_AARCH64_CALL26	_printk
    2440: aa1603e0     	mov	x0, x22
    2444: 94000000     	bl	0x2444 <charger_policy_probe_work+0x274>
		0000000000002444:  R_AARCH64_CALL26	power_supply_unreg_notifier
    2448: 90000008     	adrp	x8, 0x2000 <charger_policy_probe+0x644>
		0000000000002448:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
    244c: b9400109     	ldr	w9, [x8]
		000000000000244c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
    2450: 11000522     	add	w2, w9, #0x1
    2454: b9000102     	str	w2, [x8]
		0000000000002454:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
    2458: b9407a68     	ldr	w8, [x19, #0x78]
    245c: 6b08005f     	cmp	w2, w8
    2460: 54000182     	b.hs	0x2490 <charger_policy_probe_work+0x2c0>
    2464: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002464:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59e
    2468: 91000000     	add	x0, x0, #0x0
		0000000000002468:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59e
    246c: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		000000000000246c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f92
    2470: 91000021     	add	x1, x1, #0x0
		0000000000002470:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f92
    2474: 94000000     	bl	0x2474 <charger_policy_probe_work+0x2a4>
		0000000000002474:  R_AARCH64_CALL26	_printk
    2478: f85f8261     	ldur	x1, [x19, #-0x8]
    247c: 52800400     	mov	w0, #0x20               // =32
    2480: aa1303e2     	mov	x2, x19
    2484: 52809c43     	mov	w3, #0x4e2              // =1250
    2488: 94000000     	bl	0x2488 <charger_policy_probe_work+0x2b8>
		0000000000002488:  R_AARCH64_CALL26	queue_delayed_work_on
    248c: 14000009     	b	0x24b0 <charger_policy_probe_work+0x2e0>
    2490: f9400280     	ldr	x0, [x20]
    2494: aa1403e1     	mov	x1, x20
    2498: 94000000     	bl	0x2498 <charger_policy_probe_work+0x2c8>
		0000000000002498:  R_AARCH64_CALL26	devm_kfree
    249c: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		000000000000249c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ff8
    24a0: 91000000     	add	x0, x0, #0x0
		00000000000024a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ff8
    24a4: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		00000000000024a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1325
    24a8: 91000021     	add	x1, x1, #0x0
		00000000000024a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1325
    24ac: 94000000     	bl	0x24ac <charger_policy_probe_work+0x2dc>
		00000000000024ac:  R_AARCH64_CALL26	_printk
    24b0: d5384108     	mrs	x8, SP_EL0
    24b4: f9438908     	ldr	x8, [x8, #0x710]
    24b8: f85f83a9     	ldur	x9, [x29, #-0x8]
    24bc: eb09011f     	cmp	x8, x9
    24c0: 540001e1     	b.ne	0x24fc <charger_policy_probe_work+0x32c>
    24c4: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    24c8: a94557f6     	ldp	x22, x21, [sp, #0x50]
    24cc: a9447bfd     	ldp	x29, x30, [sp, #0x40]
    24d0: 9101c3ff     	add	sp, sp, #0x70
    24d4: d50323bf     	autiasp
    24d8: d65f03c0     	ret
    24dc: f8588261     	ldur	x1, [x19, #-0x78]
    24e0: 52800400     	mov	w0, #0x20               // =32
    24e4: aa1503e2     	mov	x2, x21
    24e8: 52800323     	mov	w3, #0x19               // =25
    24ec: 94000000     	bl	0x24ec <charger_policy_probe_work+0x31c>
		00000000000024ec:  R_AARCH64_CALL26	queue_delayed_work_on
    24f0: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		00000000000024f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfdf
    24f4: 91000000     	add	x0, x0, #0x0
		00000000000024f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfdf
    24f8: 17ffffeb     	b	0x24a4 <charger_policy_probe_work+0x2d4>
    24fc: 94000000     	bl	0x24fc <charger_policy_probe_work+0x32c>
		00000000000024fc:  R_AARCH64_CALL26	__stack_chk_fail
