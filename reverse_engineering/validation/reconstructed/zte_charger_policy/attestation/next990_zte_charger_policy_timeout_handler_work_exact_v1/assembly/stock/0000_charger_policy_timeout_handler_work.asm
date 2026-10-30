
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002504 <charger_policy_timeout_handler_work>:
    2504: d503233f     	paciasp
    2508: d10103ff     	sub	sp, sp, #0x40
    250c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    2510: f90013f5     	str	x21, [sp, #0x20]
    2514: a9034ff4     	stp	x20, x19, [sp, #0x30]
    2518: 910043fd     	add	x29, sp, #0x10
    251c: d5384108     	mrs	x8, SP_EL0
    2520: aa0003f3     	mov	x19, x0
    2524: 52800020     	mov	w0, #0x1                // =1
    2528: f9438908     	ldr	x8, [x8, #0x710]
    252c: f90007e8     	str	x8, [sp, #0x8]
    2530: 94000000     	bl	0x2530 <charger_policy_timeout_handler_work+0x2c>
		0000000000002530:  R_AARCH64_CALL26	ktime_get_with_offset
    2534: 94000000     	bl	0x2534 <charger_policy_timeout_handler_work+0x30>
		0000000000002534:  R_AARCH64_CALL26	ns_to_timespec64
    2538: 90000008     	adrp	x8, 0x2000 <charger_policy_probe+0x644>
		0000000000002538:  R_AARCH64_ADR_PREL_PG_HI21	.bss
    253c: f9400109     	ldr	x9, [x8]
		000000000000253c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
    2540: cb090009     	sub	x9, x0, x9
    2544: f104b53f     	cmp	x9, #0x12d
    2548: 5400004b     	b.lt	0x2550 <charger_policy_timeout_handler_work+0x4c>
    254c: f9000100     	str	x0, [x8]
		000000000000254c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
    2550: f104b13f     	cmp	x9, #0x12c
    2554: f9408a60     	ldr	x0, [x19, #0x110]
    2558: 910013e2     	add	x2, sp, #0x4
    255c: 1a9fd7e8     	cset	w8, gt
    2560: 2a1f03e1     	mov	w1, wzr
    2564: b90007ff     	str	wzr, [sp, #0x4]
    2568: 3905d668     	strb	w8, [x19, #0x175]
    256c: 97fffb0f     	bl	0x11a8 <charger_policy_get_prop_by_name>
    2570: 36f80120     	tbz	w0, #0x1f, 0x2594 <charger_policy_timeout_handler_work+0x90>
    2574: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002574:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1408
    2578: 91000000     	add	x0, x0, #0x0
		0000000000002578:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1408
    257c: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		000000000000257c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f9
    2580: 91000021     	add	x1, x1, #0x0
		0000000000002580:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f9
    2584: 94000000     	bl	0x2584 <charger_policy_timeout_handler_work+0x80>
		0000000000002584:  R_AARCH64_CALL26	_printk
    2588: 90000014     	adrp	x20, 0x2000 <charger_policy_probe+0x644>
		0000000000002588:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f26
    258c: 91000294     	add	x20, x20, #0x0
		000000000000258c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f26
    2590: 14000011     	b	0x25d4 <charger_policy_timeout_handler_work+0xd0>
    2594: b94007e8     	ldr	w8, [sp, #0x4]
    2598: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002598:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x166e
    259c: 91000000     	add	x0, x0, #0x0
		000000000000259c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x166e
    25a0: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		00000000000025a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f9
    25a4: 91000021     	add	x1, x1, #0x0
		00000000000025a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f9
    25a8: 7100051f     	cmp	w8, #0x1
    25ac: 7a441904     	ccmp	w8, #0x4, #0x4, ne
    25b0: 1a9f17f4     	cset	w20, eq
    25b4: 2a1403e2     	mov	w2, w20
    25b8: 94000000     	bl	0x25b8 <charger_policy_timeout_handler_work+0xb4>
		00000000000025b8:  R_AARCH64_CALL26	_printk
    25bc: 90000008     	adrp	x8, 0x2000 <charger_policy_probe+0x644>
		00000000000025bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f26
    25c0: 91000108     	add	x8, x8, #0x0
		00000000000025c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f26
    25c4: 7100029f     	cmp	w20, #0x0
    25c8: 90000009     	adrp	x9, 0x2000 <charger_policy_probe+0x644>
		00000000000025c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x133f
    25cc: 91000129     	add	x9, x9, #0x0
		00000000000025cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x133f
    25d0: 9a881134     	csel	x20, x9, x8, ne
    25d4: b9414668     	ldr	w8, [x19, #0x144]
    25d8: b9414a69     	ldr	w9, [x19, #0x148]
    25dc: 6b09011f     	cmp	w8, w9
    25e0: 540000c0     	b.eq	0x25f8 <charger_policy_timeout_handler_work+0xf4>
    25e4: f8560260     	ldur	x0, [x19, #-0xa0]
    25e8: 52800028     	mov	w8, #0x1                // =1
    25ec: 3905d668     	strb	w8, [x19, #0x175]
    25f0: b4000040     	cbz	x0, 0x25f8 <charger_policy_timeout_handler_work+0xf4>
    25f4: 94000000     	bl	0x25f4 <charger_policy_timeout_handler_work+0xf0>
		00000000000025f4:  R_AARCH64_CALL26	power_supply_changed
    25f8: 3945d668     	ldrb	w8, [x19, #0x175]
    25fc: 7100051f     	cmp	w8, #0x1
    2600: 54000740     	b.eq	0x26e8 <charger_policy_timeout_handler_work+0x1e4>
    2604: d102a274     	sub	x20, x19, #0xa8
    2608: aa1403e0     	mov	x0, x20
    260c: 94000096     	bl	0x2864 <charger_policy_check_usb_present>
    2610: 36000c00     	tbz	w0, #0x0, 0x2790 <charger_policy_timeout_handler_work+0x28c>
    2614: 3945c668     	ldrb	w8, [x19, #0x171]
    2618: 37000088     	tbnz	w8, #0x0, 0x2628 <charger_policy_timeout_handler_work+0x124>
    261c: 3945ca68     	ldrb	w8, [x19, #0x172]
    2620: 7100051f     	cmp	w8, #0x1
    2624: 54000ac1     	b.ne	0x277c <charger_policy_timeout_handler_work+0x278>
    2628: f9408a60     	ldr	x0, [x19, #0x110]
    262c: 910013e2     	add	x2, sp, #0x4
    2630: 52800681     	mov	w1, #0x34               // =52
    2634: b90007ff     	str	wzr, [sp, #0x4]
    2638: 97fffadc     	bl	0x11a8 <charger_policy_get_prop_by_name>
    263c: 37f80740     	tbnz	w0, #0x1f, 0x2724 <charger_policy_timeout_handler_work+0x220>
    2640: 3945c268     	ldrb	w8, [x19, #0x170]
    2644: 7100051f     	cmp	w8, #0x1
    2648: 54000081     	b.ne	0x2658 <charger_policy_timeout_handler_work+0x154>
    264c: b94007e2     	ldr	w2, [sp, #0x4]
    2650: 7102585f     	cmp	w2, #0x96
    2654: 540007cd     	b.le	0x274c <charger_policy_timeout_handler_work+0x248>
    2658: b9414268     	ldr	w8, [x19, #0x140]
    265c: 35000728     	cbnz	w8, 0x2740 <charger_policy_timeout_handler_work+0x23c>
    2660: b9414668     	ldr	w8, [x19, #0x144]
    2664: 7100111f     	cmp	w8, #0x4
    2668: 54000842     	b.hs	0x2770 <charger_policy_timeout_handler_work+0x26c>
    266c: d1020275     	sub	x21, x19, #0x80
    2670: aa1503e0     	mov	x0, x21
    2674: 94000000     	bl	0x2674 <charger_policy_timeout_handler_work+0x170>
		0000000000002674:  R_AARCH64_CALL26	alarm_try_to_cancel
    2678: f940ae68     	ldr	x8, [x19, #0x158]
    267c: 52884809     	mov	w9, #0x4240             // =16960
    2680: aa1503e0     	mov	x0, x21
    2684: 72a001e9     	movk	w9, #0xf, lsl #16
    2688: 9b097d01     	mul	x1, x8, x9
    268c: 94000000     	bl	0x268c <charger_policy_timeout_handler_work+0x188>
		000000000000268c:  R_AARCH64_CALL26	alarm_start_relative
    2690: f9409e60     	ldr	x0, [x19, #0x138]
    2694: 94000000     	bl	0x2694 <charger_policy_timeout_handler_work+0x190>
		0000000000002694:  R_AARCH64_CALL26	__pm_stay_awake
    2698: b9414668     	ldr	w8, [x19, #0x144]
    269c: 7100111f     	cmp	w8, #0x4
    26a0: 54000de2     	b.hs	0x285c <charger_policy_timeout_handler_work+0x358>
    26a4: 52800309     	mov	w9, #0x18               // =24
    26a8: 9000000a     	adrp	x10, 0x2000 <charger_policy_probe+0x644>
		00000000000026a8:  R_AARCH64_ADR_PREL_PG_HI21	policy_status_list
    26ac: 9100014a     	add	x10, x10, #0x0
		00000000000026ac:  R_AARCH64_ADD_ABS_LO12_NC	policy_status_list
    26b0: 9ba92908     	umaddl	x8, w8, w9, x10
    26b4: f9400908     	ldr	x8, [x8, #0x10]
    26b8: b4000128     	cbz	x8, 0x26dc <charger_policy_timeout_handler_work+0x1d8>
    26bc: aa1403e0     	mov	x0, x20
    26c0: b85fc110     	ldur	w16, [x8, #-0x4]
    26c4: 729e9051     	movk	w17, #0xf482
    26c8: 72bc3531     	movk	w17, #0xe1a9, lsl #16
    26cc: 6b11021f     	cmp	w16, w17
    26d0: 54000040     	b.eq	0x26d8 <charger_policy_timeout_handler_work+0x1d4>
    26d4: d4304500     	brk	#0x8228
    26d8: d63f0100     	blr	x8
    26dc: f9409e60     	ldr	x0, [x19, #0x138]
    26e0: 94000000     	bl	0x26e0 <charger_policy_timeout_handler_work+0x1dc>
		00000000000026e0:  R_AARCH64_CALL26	__pm_relax
    26e4: 1400004d     	b	0x2818 <charger_policy_timeout_handler_work+0x314>
    26e8: b9414668     	ldr	w8, [x19, #0x144]
    26ec: 7100111f     	cmp	w8, #0x4
    26f0: 54000b62     	b.hs	0x285c <charger_policy_timeout_handler_work+0x358>
    26f4: 52800309     	mov	w9, #0x18               // =24
    26f8: 9000000a     	adrp	x10, 0x2000 <charger_policy_probe+0x644>
		00000000000026f8:  R_AARCH64_ADR_PREL_PG_HI21	policy_status_list
    26fc: 9100014a     	add	x10, x10, #0x0
		00000000000026fc:  R_AARCH64_ADD_ABS_LO12_NC	policy_status_list
    2700: 9ba92908     	umaddl	x8, w8, w9, x10
    2704: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002704:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1821
    2708: 91000000     	add	x0, x0, #0x0
		0000000000002708:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1821
    270c: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		000000000000270c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e1
    2710: 91000021     	add	x1, x1, #0x0
		0000000000002710:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e1
    2714: aa1403e3     	mov	x3, x20
    2718: f9400502     	ldr	x2, [x8, #0x8]
    271c: 94000000     	bl	0x271c <charger_policy_timeout_handler_work+0x218>
		000000000000271c:  R_AARCH64_CALL26	_printk
    2720: 17ffffb9     	b	0x2604 <charger_policy_timeout_handler_work+0x100>
    2724: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x119c
    2728: 91000000     	add	x0, x0, #0x0
		0000000000002728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x119c
    272c: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		000000000000272c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x76d
    2730: 91000021     	add	x1, x1, #0x0
		0000000000002730:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x76d
    2734: 94000000     	bl	0x2734 <charger_policy_timeout_handler_work+0x230>
		0000000000002734:  R_AARCH64_CALL26	_printk
    2738: b9414268     	ldr	w8, [x19, #0x140]
    273c: 34fff928     	cbz	w8, 0x2660 <charger_policy_timeout_handler_work+0x15c>
    2740: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002740:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1013
    2744: 91000000     	add	x0, x0, #0x0
		0000000000002744:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1013
    2748: 1400000f     	b	0x2784 <charger_policy_timeout_handler_work+0x280>
    274c: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		000000000000274c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15ca
    2750: 91000000     	add	x0, x0, #0x0
		0000000000002750:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15ca
    2754: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		0000000000002754:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x76d
    2758: 91000021     	add	x1, x1, #0x0
		0000000000002758:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x76d
    275c: 528012c3     	mov	w3, #0x96               // =150
    2760: 94000000     	bl	0x2760 <charger_policy_timeout_handler_work+0x25c>
		0000000000002760:  R_AARCH64_CALL26	_printk
    2764: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002764:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd4a
    2768: 91000000     	add	x0, x0, #0x0
		0000000000002768:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd4a
    276c: 14000006     	b	0x2784 <charger_policy_timeout_handler_work+0x280>
    2770: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002770:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x103a
    2774: 91000000     	add	x0, x0, #0x0
		0000000000002774:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x103a
    2778: 14000003     	b	0x2784 <charger_policy_timeout_handler_work+0x280>
    277c: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		000000000000277c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1daa
    2780: 91000000     	add	x0, x0, #0x0
		0000000000002780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1daa
    2784: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		0000000000002784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1348
    2788: 91000021     	add	x1, x1, #0x0
		0000000000002788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1348
    278c: 94000000     	bl	0x278c <charger_policy_timeout_handler_work+0x288>
		000000000000278c:  R_AARCH64_CALL26	_printk
    2790: b9414668     	ldr	w8, [x19, #0x144]
    2794: 34000228     	cbz	w8, 0x27d8 <charger_policy_timeout_handler_work+0x2d4>
    2798: f9409e60     	ldr	x0, [x19, #0x138]
    279c: 94000000     	bl	0x279c <charger_policy_timeout_handler_work+0x298>
		000000000000279c:  R_AARCH64_CALL26	__pm_stay_awake
    27a0: aa1403e0     	mov	x0, x20
    27a4: 52800021     	mov	w1, #0x1                // =1
    27a8: 52800022     	mov	w2, #0x1                // =1
    27ac: 97fffb0b     	bl	0x13d8 <charger_policy_ctrl_charging_enable>
    27b0: 91051268     	add	x8, x19, #0x144
    27b4: aa1403e0     	mov	x0, x20
    27b8: 2a1f03e1     	mov	w1, wzr
    27bc: 3905ce7f     	strb	wzr, [x19, #0x173]
    27c0: f900b27f     	str	xzr, [x19, #0x160]
    27c4: f900011f     	str	xzr, [x8]
    27c8: 97fffab9     	bl	0x12ac <charger_policy_disable_cas>
    27cc: f9409e60     	ldr	x0, [x19, #0x138]
    27d0: 94000000     	bl	0x27d0 <charger_policy_timeout_handler_work+0x2cc>
		00000000000027d0:  R_AARCH64_CALL26	__pm_relax
    27d4: 1400000c     	b	0x2804 <charger_policy_timeout_handler_work+0x300>
    27d8: aa1403e0     	mov	x0, x20
    27dc: 52800021     	mov	w1, #0x1                // =1
    27e0: 52800022     	mov	w2, #0x1                // =1
    27e4: 97fffafd     	bl	0x13d8 <charger_policy_ctrl_charging_enable>
    27e8: 91051268     	add	x8, x19, #0x144
    27ec: aa1403e0     	mov	x0, x20
    27f0: 2a1f03e1     	mov	w1, wzr
    27f4: 3905ce7f     	strb	wzr, [x19, #0x173]
    27f8: f900b27f     	str	xzr, [x19, #0x160]
    27fc: f900011f     	str	xzr, [x8]
    2800: 97fffaab     	bl	0x12ac <charger_policy_disable_cas>
    2804: d1020260     	sub	x0, x19, #0x80
    2808: 94000000     	bl	0x2808 <charger_policy_timeout_handler_work+0x304>
		0000000000002808:  R_AARCH64_CALL26	alarm_try_to_cancel
    280c: 3945d668     	ldrb	w8, [x19, #0x175]
    2810: 7100051f     	cmp	w8, #0x1
    2814: 54000180     	b.eq	0x2844 <charger_policy_timeout_handler_work+0x340>
    2818: d5384108     	mrs	x8, SP_EL0
    281c: f9438908     	ldr	x8, [x8, #0x710]
    2820: f94007e9     	ldr	x9, [sp, #0x8]
    2824: eb09011f     	cmp	x8, x9
    2828: 540001c1     	b.ne	0x2860 <charger_policy_timeout_handler_work+0x35c>
    282c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    2830: f94013f5     	ldr	x21, [sp, #0x20]
    2834: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2838: 910103ff     	add	sp, sp, #0x40
    283c: d50323bf     	autiasp
    2840: d65f03c0     	ret
    2844: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002844:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1789
    2848: 91000000     	add	x0, x0, #0x0
		0000000000002848:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1789
    284c: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		000000000000284c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13f
    2850: 91000021     	add	x1, x1, #0x0
		0000000000002850:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13f
    2854: 94000000     	bl	0x2854 <charger_policy_timeout_handler_work+0x350>
		0000000000002854:  R_AARCH64_CALL26	_printk
    2858: 17fffff0     	b	0x2818 <charger_policy_timeout_handler_work+0x314>
    285c: d42aa240     	brk	#0x5512
    2860: 94000000     	bl	0x2860 <charger_policy_timeout_handler_work+0x35c>
		0000000000002860:  R_AARCH64_CALL26	__stack_chk_fail
