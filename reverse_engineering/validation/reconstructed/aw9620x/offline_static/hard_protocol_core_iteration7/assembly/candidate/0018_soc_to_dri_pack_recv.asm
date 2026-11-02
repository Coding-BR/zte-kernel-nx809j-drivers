
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000024f8 <soc_to_dri_pack_recv>:
    24f8: d503233f     	paciasp
    24fc: d101c3ff     	sub	sp, sp, #0x70
    2500: a9037bfd     	stp	x29, x30, [sp, #0x30]
    2504: a9045ff8     	stp	x24, x23, [sp, #0x40]
    2508: a90557f6     	stp	x22, x21, [sp, #0x50]
    250c: a9064ff4     	stp	x20, x19, [sp, #0x60]
    2510: 9100c3fd     	add	x29, sp, #0x30
    2514: d5384108     	mrs	x8, SP_EL0
    2518: aa0303f5     	mov	x21, x3
    251c: 2a0203f4     	mov	w20, w2
    2520: f9438908     	ldr	x8, [x8, #0x710]
    2524: aa0003f3     	mov	x19, x0
    2528: aa0103f6     	mov	x22, x1
    252c: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		000000000000252c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xebd
    2530: 91000042     	add	x2, x2, #0x0
		0000000000002530:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xebd
    2534: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		0000000000002534:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x203a
    2538: 91000063     	add	x3, x3, #0x0
		0000000000002538:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x203a
    253c: f81f83a8     	stur	x8, [x29, #-0x8]
    2540: 5280d644     	mov	w4, #0x6b2              // =1714
    2544: f9401808     	ldr	x8, [x0, #0x30]
    2548: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		0000000000002548:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    254c: 91000000     	add	x0, x0, #0x0
		000000000000254c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    2550: aa0803e1     	mov	x1, x8
    2554: 94000000     	bl	0x2554 <soc_to_dri_pack_recv+0x5c>
		0000000000002554:  R_AARCH64_CALL26	_dev_printk
    2558: 12800000     	mov	w0, #-0x1               // =-1
    255c: b40002b6     	cbz	x22, 0x25b0 <soc_to_dri_pack_recv+0xb8>
    2560: 34000294     	cbz	w20, 0x25b0 <soc_to_dri_pack_recv+0xb8>
    2564: f9401668     	ldr	x8, [x19, #0x28]
    2568: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    256c: 52800058     	mov	w24, #0x2               // =2
    2570: f90007ff     	str	xzr, [sp, #0x8]
    2574: 52800037     	mov	w23, #0x1               // =1
    2578: 910023e1     	add	x1, sp, #0x8
    257c: 79400509     	ldrh	w9, [x8, #0x2]
    2580: f90013f6     	str	x22, [sp, #0x20]
    2584: 52800042     	mov	w2, #0x2                // =2
    2588: f9400d00     	ldr	x0, [x8, #0x18]
    258c: 79001bf8     	strh	w24, [sp, #0xc]
    2590: 790013e9     	strh	w9, [sp, #0x8]
    2594: f9000bf5     	str	x21, [sp, #0x10]
    2598: 790033e9     	strh	w9, [sp, #0x18]
    259c: 790037f7     	strh	w23, [sp, #0x1a]
    25a0: 79003bf4     	strh	w20, [sp, #0x1c]
    25a4: 94000000     	bl	0x25a4 <soc_to_dri_pack_recv+0xac>
		00000000000025a4:  R_AARCH64_CALL26	i2c_transfer
    25a8: 37f801c0     	tbnz	w0, #0x1f, 0x25e0 <soc_to_dri_pack_recv+0xe8>
    25ac: 2a1f03e0     	mov	w0, wzr
    25b0: d5384108     	mrs	x8, SP_EL0
    25b4: f9438908     	ldr	x8, [x8, #0x710]
    25b8: f85f83a9     	ldur	x9, [x29, #-0x8]
    25bc: eb09011f     	cmp	x8, x9
    25c0: 54001521     	b.ne	0x2864 <soc_to_dri_pack_recv+0x36c>
    25c4: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    25c8: a94557f6     	ldp	x22, x21, [sp, #0x50]
    25cc: a9445ff8     	ldp	x24, x23, [sp, #0x40]
    25d0: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    25d4: 9101c3ff     	add	sp, sp, #0x70
    25d8: d50323bf     	autiasp
    25dc: d65f03c0     	ret
    25e0: f9401a61     	ldr	x1, [x19, #0x30]
    25e4: 2a0003e6     	mov	w6, w0
    25e8: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		00000000000025e8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    25ec: 91000000     	add	x0, x0, #0x0
		00000000000025ec:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    25f0: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		00000000000025f0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x335a
    25f4: 91000042     	add	x2, x2, #0x0
		00000000000025f4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x335a
    25f8: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		00000000000025f8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x203a
    25fc: 91000063     	add	x3, x3, #0x0
		00000000000025fc:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x203a
    2600: 5280d764     	mov	w4, #0x6bb              // =1723
    2604: 528000a5     	mov	w5, #0x5                // =5
    2608: 94000000     	bl	0x2608 <soc_to_dri_pack_recv+0x110>
		0000000000002608:  R_AARCH64_CALL26	_dev_printk
    260c: f9401668     	ldr	x8, [x19, #0x28]
    2610: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    2614: 910023e1     	add	x1, sp, #0x8
    2618: f90007ff     	str	xzr, [sp, #0x8]
    261c: 52800042     	mov	w2, #0x2                // =2
    2620: 79400509     	ldrh	w9, [x8, #0x2]
    2624: f90013f6     	str	x22, [sp, #0x20]
    2628: f9400d00     	ldr	x0, [x8, #0x18]
    262c: 79001bf8     	strh	w24, [sp, #0xc]
    2630: 790013e9     	strh	w9, [sp, #0x8]
    2634: f9000bf5     	str	x21, [sp, #0x10]
    2638: 790033e9     	strh	w9, [sp, #0x18]
    263c: 790037f7     	strh	w23, [sp, #0x1a]
    2640: 79003bf4     	strh	w20, [sp, #0x1c]
    2644: 94000000     	bl	0x2644 <soc_to_dri_pack_recv+0x14c>
		0000000000002644:  R_AARCH64_CALL26	i2c_transfer
    2648: 36fffb20     	tbz	w0, #0x1f, 0x25ac <soc_to_dri_pack_recv+0xb4>
    264c: f9401a61     	ldr	x1, [x19, #0x30]
    2650: 2a0003e6     	mov	w6, w0
    2654: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		0000000000002654:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    2658: 91000000     	add	x0, x0, #0x0
		0000000000002658:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    265c: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		000000000000265c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x335a
    2660: 91000042     	add	x2, x2, #0x0
		0000000000002660:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x335a
    2664: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		0000000000002664:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x203a
    2668: 91000063     	add	x3, x3, #0x0
		0000000000002668:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x203a
    266c: 5280d764     	mov	w4, #0x6bb              // =1723
    2670: 52800085     	mov	w5, #0x4                // =4
    2674: 94000000     	bl	0x2674 <soc_to_dri_pack_recv+0x17c>
		0000000000002674:  R_AARCH64_CALL26	_dev_printk
    2678: f9401668     	ldr	x8, [x19, #0x28]
    267c: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    2680: 910023e1     	add	x1, sp, #0x8
    2684: f90007ff     	str	xzr, [sp, #0x8]
    2688: 52800042     	mov	w2, #0x2                // =2
    268c: 79400509     	ldrh	w9, [x8, #0x2]
    2690: f90013f6     	str	x22, [sp, #0x20]
    2694: f9400d00     	ldr	x0, [x8, #0x18]
    2698: 79001bf8     	strh	w24, [sp, #0xc]
    269c: 790013e9     	strh	w9, [sp, #0x8]
    26a0: f9000bf5     	str	x21, [sp, #0x10]
    26a4: 790033e9     	strh	w9, [sp, #0x18]
    26a8: 790037f7     	strh	w23, [sp, #0x1a]
    26ac: 79003bf4     	strh	w20, [sp, #0x1c]
    26b0: 94000000     	bl	0x26b0 <soc_to_dri_pack_recv+0x1b8>
		00000000000026b0:  R_AARCH64_CALL26	i2c_transfer
    26b4: 36fff7c0     	tbz	w0, #0x1f, 0x25ac <soc_to_dri_pack_recv+0xb4>
    26b8: f9401a61     	ldr	x1, [x19, #0x30]
    26bc: 2a0003e6     	mov	w6, w0
    26c0: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		00000000000026c0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    26c4: 91000000     	add	x0, x0, #0x0
		00000000000026c4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    26c8: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		00000000000026c8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x335a
    26cc: 91000042     	add	x2, x2, #0x0
		00000000000026cc:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x335a
    26d0: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		00000000000026d0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x203a
    26d4: 91000063     	add	x3, x3, #0x0
		00000000000026d4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x203a
    26d8: 5280d764     	mov	w4, #0x6bb              // =1723
    26dc: 52800065     	mov	w5, #0x3                // =3
    26e0: 94000000     	bl	0x26e0 <soc_to_dri_pack_recv+0x1e8>
		00000000000026e0:  R_AARCH64_CALL26	_dev_printk
    26e4: f9401668     	ldr	x8, [x19, #0x28]
    26e8: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    26ec: 910023e1     	add	x1, sp, #0x8
    26f0: f90007ff     	str	xzr, [sp, #0x8]
    26f4: 52800042     	mov	w2, #0x2                // =2
    26f8: 79400509     	ldrh	w9, [x8, #0x2]
    26fc: f90013f6     	str	x22, [sp, #0x20]
    2700: f9400d00     	ldr	x0, [x8, #0x18]
    2704: 79001bf8     	strh	w24, [sp, #0xc]
    2708: 790013e9     	strh	w9, [sp, #0x8]
    270c: f9000bf5     	str	x21, [sp, #0x10]
    2710: 790033e9     	strh	w9, [sp, #0x18]
    2714: 790037f7     	strh	w23, [sp, #0x1a]
    2718: 79003bf4     	strh	w20, [sp, #0x1c]
    271c: 94000000     	bl	0x271c <soc_to_dri_pack_recv+0x224>
		000000000000271c:  R_AARCH64_CALL26	i2c_transfer
    2720: 36fff460     	tbz	w0, #0x1f, 0x25ac <soc_to_dri_pack_recv+0xb4>
    2724: f9401a61     	ldr	x1, [x19, #0x30]
    2728: 2a0003e6     	mov	w6, w0
    272c: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		000000000000272c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    2730: 91000000     	add	x0, x0, #0x0
		0000000000002730:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    2734: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002734:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x335a
    2738: 91000042     	add	x2, x2, #0x0
		0000000000002738:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x335a
    273c: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		000000000000273c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x203a
    2740: 91000063     	add	x3, x3, #0x0
		0000000000002740:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x203a
    2744: 5280d764     	mov	w4, #0x6bb              // =1723
    2748: 52800045     	mov	w5, #0x2                // =2
    274c: 52800057     	mov	w23, #0x2               // =2
    2750: 94000000     	bl	0x2750 <soc_to_dri_pack_recv+0x258>
		0000000000002750:  R_AARCH64_CALL26	_dev_printk
    2754: f9401668     	ldr	x8, [x19, #0x28]
    2758: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    275c: 52800038     	mov	w24, #0x1               // =1
    2760: f90007ff     	str	xzr, [sp, #0x8]
    2764: 910023e1     	add	x1, sp, #0x8
    2768: 52800042     	mov	w2, #0x2                // =2
    276c: 79400509     	ldrh	w9, [x8, #0x2]
    2770: f90013f6     	str	x22, [sp, #0x20]
    2774: f9400d00     	ldr	x0, [x8, #0x18]
    2778: 79001bf7     	strh	w23, [sp, #0xc]
    277c: 790013e9     	strh	w9, [sp, #0x8]
    2780: f9000bf5     	str	x21, [sp, #0x10]
    2784: 790033e9     	strh	w9, [sp, #0x18]
    2788: 790037f8     	strh	w24, [sp, #0x1a]
    278c: 79003bf4     	strh	w20, [sp, #0x1c]
    2790: 94000000     	bl	0x2790 <soc_to_dri_pack_recv+0x298>
		0000000000002790:  R_AARCH64_CALL26	i2c_transfer
    2794: 36fff0c0     	tbz	w0, #0x1f, 0x25ac <soc_to_dri_pack_recv+0xb4>
    2798: f9401a61     	ldr	x1, [x19, #0x30]
    279c: 2a0003e6     	mov	w6, w0
    27a0: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		00000000000027a0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    27a4: 91000000     	add	x0, x0, #0x0
		00000000000027a4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    27a8: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		00000000000027a8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x335a
    27ac: 91000042     	add	x2, x2, #0x0
		00000000000027ac:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x335a
    27b0: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		00000000000027b0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x203a
    27b4: 91000063     	add	x3, x3, #0x0
		00000000000027b4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x203a
    27b8: 5280d764     	mov	w4, #0x6bb              // =1723
    27bc: 52800025     	mov	w5, #0x1                // =1
    27c0: 94000000     	bl	0x27c0 <soc_to_dri_pack_recv+0x2c8>
		00000000000027c0:  R_AARCH64_CALL26	_dev_printk
    27c4: f9401668     	ldr	x8, [x19, #0x28]
    27c8: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    27cc: 910023e1     	add	x1, sp, #0x8
    27d0: f90007ff     	str	xzr, [sp, #0x8]
    27d4: 52800042     	mov	w2, #0x2                // =2
    27d8: 79400509     	ldrh	w9, [x8, #0x2]
    27dc: f90013f6     	str	x22, [sp, #0x20]
    27e0: f9400d00     	ldr	x0, [x8, #0x18]
    27e4: 79001bf7     	strh	w23, [sp, #0xc]
    27e8: 790013e9     	strh	w9, [sp, #0x8]
    27ec: f9000bf5     	str	x21, [sp, #0x10]
    27f0: 790033e9     	strh	w9, [sp, #0x18]
    27f4: 790037f8     	strh	w24, [sp, #0x1a]
    27f8: 79003bf4     	strh	w20, [sp, #0x1c]
    27fc: 94000000     	bl	0x27fc <soc_to_dri_pack_recv+0x304>
		00000000000027fc:  R_AARCH64_CALL26	i2c_transfer
    2800: 36ffed60     	tbz	w0, #0x1f, 0x25ac <soc_to_dri_pack_recv+0xb4>
    2804: 2a0003f4     	mov	w20, w0
    2808: f9401a61     	ldr	x1, [x19, #0x30]
    280c: 90000015     	adrp	x21, 0x2000 <get_pack_checksum+0xa0>
		000000000000280c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    2810: 910002b5     	add	x21, x21, #0x0
		0000000000002810:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    2814: 90000016     	adrp	x22, 0x2000 <get_pack_checksum+0xa0>
		0000000000002814:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x203a
    2818: 910002d6     	add	x22, x22, #0x0
		0000000000002818:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x203a
    281c: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		000000000000281c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x335a
    2820: 91000042     	add	x2, x2, #0x0
		0000000000002820:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x335a
    2824: aa1503e0     	mov	x0, x21
    2828: aa1603e3     	mov	x3, x22
    282c: 5280d764     	mov	w4, #0x6bb              // =1723
    2830: 2a1f03e5     	mov	w5, wzr
    2834: 2a1403e6     	mov	w6, w20
    2838: 94000000     	bl	0x2838 <soc_to_dri_pack_recv+0x340>
		0000000000002838:  R_AARCH64_CALL26	_dev_printk
    283c: f9401a61     	ldr	x1, [x19, #0x30]
    2840: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002840:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2ad1
    2844: 91000042     	add	x2, x2, #0x0
		0000000000002844:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2ad1
    2848: aa1503e0     	mov	x0, x21
    284c: aa1603e3     	mov	x3, x22
    2850: 5280d864     	mov	w4, #0x6c3              // =1731
    2854: 2a1403e5     	mov	w5, w20
    2858: 94000000     	bl	0x2858 <soc_to_dri_pack_recv+0x360>
		0000000000002858:  R_AARCH64_CALL26	_dev_printk
    285c: 12800000     	mov	w0, #-0x1               // =-1
    2860: 17ffff54     	b	0x25b0 <soc_to_dri_pack_recv+0xb8>
    2864: 94000000     	bl	0x2864 <soc_to_dri_pack_recv+0x36c>
		0000000000002864:  R_AARCH64_CALL26	__stack_chk_fail
