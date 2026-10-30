
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000024f4 <aw22xxx_effect_store>:
    24f4: d503233f     	paciasp
    24f8: d10183ff     	sub	sp, sp, #0x60
    24fc: a9027bfd     	stp	x29, x30, [sp, #0x20]
    2500: a9035ff8     	stp	x24, x23, [sp, #0x30]
    2504: a90457f6     	stp	x22, x21, [sp, #0x40]
    2508: a9054ff4     	stp	x20, x19, [sp, #0x50]
    250c: 910083fd     	add	x29, sp, #0x20
    2510: d5384109     	mrs	x9, SP_EL0
    2514: aa0203e8     	mov	x8, x2
    2518: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002518:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x542
    251c: 91000021     	add	x1, x1, #0x0
		000000000000251c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x542
    2520: f9438929     	ldr	x9, [x9, #0x710]
    2524: 910033e2     	add	x2, sp, #0xc
    2528: aa0303f3     	mov	x19, x3
    252c: f81f83a9     	stur	x9, [x29, #-0x8]
    2530: f9404c16     	ldr	x22, [x0, #0x98]
    2534: aa0803e0     	mov	x0, x8
    2538: b9000fff     	str	wzr, [sp, #0xc]
    253c: 94000000     	bl	0x253c <aw22xxx_effect_store+0x48>
		000000000000253c:  R_AARCH64_CALL26	sscanf
    2540: 7100041f     	cmp	w0, #0x1
    2544: 54000e61     	b.ne	0x2710 <aw22xxx_effect_store+0x21c>
    2548: 910a82c0     	add	x0, x22, #0x2a0
    254c: d10042d4     	sub	x20, x22, #0x10
    2550: 94000000     	bl	0x2550 <aw22xxx_effect_store+0x5c>
		0000000000002550:  R_AARCH64_CALL26	mutex_lock
    2554: b9400fe3     	ldr	w3, [sp, #0xc]
    2558: 90000018     	adrp	x24, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002558:  R_AARCH64_ADR_PREL_PG_HI21	init_flag
    255c: 90000017     	adrp	x23, 0x2000 <aw22xxx_reg_show+0xcc>
		000000000000255c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x621c
    2560: 51002068     	sub	w8, w3, #0x8
    2564: 7100091f     	cmp	w8, #0x2
    2568: 54000788     	b.hi	0x2658 <aw22xxx_effect_store+0x164>
    256c: 39400308     	ldrb	w8, [x24]
		000000000000256c:  R_AARCH64_LDST8_ABS_LO12_NC	init_flag
    2570: 7100051f     	cmp	w8, #0x1
    2574: 54000721     	b.ne	0x2658 <aw22xxx_effect_store+0x164>
    2578: 90000015     	adrp	x21, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002578:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe56
    257c: 910002b5     	add	x21, x21, #0x0
		000000000000257c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe56
    2580: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002580:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d0
    2584: 91000000     	add	x0, x0, #0x0
		0000000000002584:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d0
    2588: aa1503e1     	mov	x1, x21
    258c: 52810ae2     	mov	w2, #0x857              // =2135
    2590: 94000000     	bl	0x2590 <aw22xxx_effect_store+0x9c>
		0000000000002590:  R_AARCH64_CALL26	_printk
    2594: 52800088     	mov	w8, #0x4                // =4
    2598: 52800080     	mov	w0, #0x4                // =4
    259c: b902f2c8     	str	w8, [x22, #0x2f0]
    25a0: 9400008a     	bl	0x27c8 <aw22xxx_get_fwname>
    25a4: aa1403e0     	mov	x0, x20
    25a8: 94000107     	bl	0x29c4 <aw22xxx_cfg_update_wait_from_dyn_name>
    25ac: b942f2c0     	ldr	w0, [x22, #0x2f0]
    25b0: 94000146     	bl	0x2ac8 <aw22xxx_set_cfg_run_state>
    25b4: b94002e3     	ldr	w3, [x23]
		00000000000025b4:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x621c
    25b8: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		00000000000025b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf40
    25bc: 91000000     	add	x0, x0, #0x0
		00000000000025bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf40
    25c0: aa1503e1     	mov	x1, x21
    25c4: 52810b82     	mov	w2, #0x85c              // =2140
    25c8: 94000000     	bl	0x25c8 <aw22xxx_effect_store+0xd4>
		00000000000025c8:  R_AARCH64_CALL26	_printk
    25cc: b94002e8     	ldr	w8, [x23]
		00000000000025cc:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x621c
    25d0: 35000328     	cbnz	w8, 0x2634 <aw22xxx_effect_store+0x140>
    25d4: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		00000000000025d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x148c
    25d8: 91000000     	add	x0, x0, #0x0
		00000000000025d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x148c
    25dc: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		00000000000025dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x181c
    25e0: 91000021     	add	x1, x1, #0x0
		00000000000025e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x181c
    25e4: 52803542     	mov	w2, #0x1aa              // =426
    25e8: 2a1f03e3     	mov	w3, wzr
    25ec: 94000000     	bl	0x25ec <aw22xxx_effect_store+0xf8>
		00000000000025ec:  R_AARCH64_CALL26	_printk
    25f0: 910043e2     	add	x2, sp, #0x10
    25f4: aa1403e0     	mov	x0, x20
    25f8: 52800041     	mov	w1, #0x2                // =2
    25fc: 390043ff     	strb	wzr, [sp, #0x10]
    2600: 97fff7d3     	bl	0x54c <aw22xxx_i2c_read>
    2604: 394043e8     	ldrb	w8, [sp, #0x10]
    2608: aa1403e0     	mov	x0, x20
    260c: 52800041     	mov	w1, #0x2                // =2
    2610: 121f7902     	and	w2, w8, #0xfffffffe
    2614: 390043e2     	strb	w2, [sp, #0x10]
    2618: 97fff781     	bl	0x41c <aw22xxx_i2c_write>
    261c: 5280fa00     	mov	w0, #0x7d0              // =2000
    2620: 52817701     	mov	w1, #0xbb8              // =3000
    2624: 52800042     	mov	w2, #0x2                // =2
    2628: 94000000     	bl	0x2628 <aw22xxx_effect_store+0x134>
		0000000000002628:  R_AARCH64_CALL26	usleep_range_state
    262c: 90000008     	adrp	x8, 0x2000 <aw22xxx_reg_show+0xcc>
		000000000000262c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6218
    2630: 3900011f     	strb	wzr, [x8]
		0000000000002630:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x6218
    2634: 3900031f     	strb	wzr, [x24]
		0000000000002634:  R_AARCH64_LDST8_ABS_LO12_NC	init_flag
    2638: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002638:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16af
    263c: 91000000     	add	x0, x0, #0x0
		000000000000263c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16af
    2640: b942f2c3     	ldr	w3, [x22, #0x2f0]
    2644: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002644:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe56
    2648: 91000021     	add	x1, x1, #0x0
		0000000000002648:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe56
    264c: 52810c42     	mov	w2, #0x862              // =2146
    2650: 94000000     	bl	0x2650 <aw22xxx_effect_store+0x15c>
		0000000000002650:  R_AARCH64_CALL26	_printk
    2654: b9400fe3     	ldr	w3, [sp, #0xc]
    2658: 71000c7f     	cmp	w3, #0x3
    265c: b902f2c3     	str	w3, [x22, #0x2f0]
    2660: 540001c8     	b.hi	0x2698 <aw22xxx_effect_store+0x1a4>
    2664: 7100047f     	cmp	w3, #0x1
    2668: 54000180     	b.eq	0x2698 <aw22xxx_effect_store+0x1a4>
    266c: 39400308     	ldrb	w8, [x24]
		000000000000266c:  R_AARCH64_LDST8_ABS_LO12_NC	init_flag
    2670: 37000148     	tbnz	w8, #0x0, 0x2698 <aw22xxx_effect_store+0x1a4>
    2674: 52800028     	mov	w8, #0x1                // =1
    2678: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002678:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1040
    267c: 91000000     	add	x0, x0, #0x0
		000000000000267c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1040
    2680: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002680:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe56
    2684: 91000021     	add	x1, x1, #0x0
		0000000000002684:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe56
    2688: 52810d22     	mov	w2, #0x869              // =2153
    268c: 39000308     	strb	w8, [x24]
		000000000000268c:  R_AARCH64_LDST8_ABS_LO12_NC	init_flag
    2690: 94000000     	bl	0x2690 <aw22xxx_effect_store+0x19c>
		0000000000002690:  R_AARCH64_CALL26	_printk
    2694: b942f2c3     	ldr	w3, [x22, #0x2f0]
    2698: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002698:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1942
    269c: 91000000     	add	x0, x0, #0x0
		000000000000269c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1942
    26a0: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		00000000000026a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe56
    26a4: 91000021     	add	x1, x1, #0x0
		00000000000026a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe56
    26a8: 52810d82     	mov	w2, #0x86c              // =2156
    26ac: 94000000     	bl	0x26ac <aw22xxx_effect_store+0x1b8>
		00000000000026ac:  R_AARCH64_CALL26	_printk
    26b0: b942f2c0     	ldr	w0, [x22, #0x2f0]
    26b4: 94000045     	bl	0x27c8 <aw22xxx_get_fwname>
    26b8: 52800028     	mov	w8, #0x1                // =1
    26bc: aa1403e0     	mov	x0, x20
    26c0: b9000fe8     	str	w8, [sp, #0xc]
    26c4: 940000c0     	bl	0x29c4 <aw22xxx_cfg_update_wait_from_dyn_name>
    26c8: b942f2c0     	ldr	w0, [x22, #0x2f0]
    26cc: 35000080     	cbnz	w0, 0x26dc <aw22xxx_effect_store+0x1e8>
    26d0: 52800c80     	mov	w0, #0x64               // =100
    26d4: 94000000     	bl	0x26d4 <aw22xxx_effect_store+0x1e0>
		00000000000026d4:  R_AARCH64_CALL26	msleep
    26d8: b942f2c0     	ldr	w0, [x22, #0x2f0]
    26dc: 940000fb     	bl	0x2ac8 <aw22xxx_set_cfg_run_state>
    26e0: b94002e3     	ldr	w3, [x23]
		00000000000026e0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x621c
    26e4: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		00000000000026e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf40
    26e8: 91000000     	add	x0, x0, #0x0
		00000000000026e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf40
    26ec: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		00000000000026ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe56
    26f0: 91000021     	add	x1, x1, #0x0
		00000000000026f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe56
    26f4: 52811122     	mov	w2, #0x889              // =2185
    26f8: 94000000     	bl	0x26f8 <aw22xxx_effect_store+0x204>
		00000000000026f8:  R_AARCH64_CALL26	_printk
    26fc: b94002e8     	ldr	w8, [x23]
		00000000000026fc:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x621c
    2700: 34000308     	cbz	w8, 0x2760 <aw22xxx_effect_store+0x26c>
    2704: 910a82c0     	add	x0, x22, #0x2a0
    2708: 94000000     	bl	0x2708 <aw22xxx_effect_store+0x214>
		0000000000002708:  R_AARCH64_CALL26	mutex_unlock
    270c: 14000008     	b	0x272c <aw22xxx_effect_store+0x238>
    2710: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002710:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x508
    2714: 91000000     	add	x0, x0, #0x0
		0000000000002714:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x508
    2718: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002718:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe56
    271c: 91000021     	add	x1, x1, #0x0
		000000000000271c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe56
    2720: 52810a02     	mov	w2, #0x850              // =2128
    2724: 94000000     	bl	0x2724 <aw22xxx_effect_store+0x230>
		0000000000002724:  R_AARCH64_CALL26	_printk
    2728: 928002b3     	mov	x19, #-0x16             // =-22
    272c: d5384108     	mrs	x8, SP_EL0
    2730: f9438908     	ldr	x8, [x8, #0x710]
    2734: f85f83a9     	ldur	x9, [x29, #-0x8]
    2738: eb09011f     	cmp	x8, x9
    273c: 54000441     	b.ne	0x27c4 <aw22xxx_effect_store+0x2d0>
    2740: aa1303e0     	mov	x0, x19
    2744: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    2748: a94457f6     	ldp	x22, x21, [sp, #0x40]
    274c: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    2750: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    2754: 910183ff     	add	sp, sp, #0x60
    2758: d50323bf     	autiasp
    275c: d65f03c0     	ret
    2760: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002760:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x148c
    2764: 91000000     	add	x0, x0, #0x0
		0000000000002764:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x148c
    2768: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002768:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x181c
    276c: 91000021     	add	x1, x1, #0x0
		000000000000276c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x181c
    2770: 52803542     	mov	w2, #0x1aa              // =426
    2774: 2a1f03e3     	mov	w3, wzr
    2778: 94000000     	bl	0x2778 <aw22xxx_effect_store+0x284>
		0000000000002778:  R_AARCH64_CALL26	_printk
    277c: d10033a2     	sub	x2, x29, #0xc
    2780: aa1403e0     	mov	x0, x20
    2784: 52800041     	mov	w1, #0x2                // =2
    2788: 381f43bf     	sturb	wzr, [x29, #-0xc]
    278c: 97fff770     	bl	0x54c <aw22xxx_i2c_read>
    2790: 385f43a8     	ldurb	w8, [x29, #-0xc]
    2794: aa1403e0     	mov	x0, x20
    2798: 52800041     	mov	w1, #0x2                // =2
    279c: 121f7902     	and	w2, w8, #0xfffffffe
    27a0: 381f43a2     	sturb	w2, [x29, #-0xc]
    27a4: 97fff71e     	bl	0x41c <aw22xxx_i2c_write>
    27a8: 5280fa00     	mov	w0, #0x7d0              // =2000
    27ac: 52817701     	mov	w1, #0xbb8              // =3000
    27b0: 52800042     	mov	w2, #0x2                // =2
    27b4: 94000000     	bl	0x27b4 <aw22xxx_effect_store+0x2c0>
		00000000000027b4:  R_AARCH64_CALL26	usleep_range_state
    27b8: 90000008     	adrp	x8, 0x2000 <aw22xxx_reg_show+0xcc>
		00000000000027b8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6218
    27bc: 3900011f     	strb	wzr, [x8]
		00000000000027bc:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x6218
    27c0: 17ffffd1     	b	0x2704 <aw22xxx_effect_store+0x210>
    27c4: 94000000     	bl	0x27c4 <aw22xxx_effect_store+0x2d0>
		00000000000027c4:  R_AARCH64_CALL26	__stack_chk_fail
