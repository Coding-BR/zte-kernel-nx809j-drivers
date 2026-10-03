
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000026d0 <aw22xxx_imax_show>:
    26d0: d503233f     	paciasp
    26d4: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    26d8: f9000bf7     	str	x23, [sp, #0x10]
    26dc: a90257f6     	stp	x22, x21, [sp, #0x20]
    26e0: a9034ff4     	stp	x20, x19, [sp, #0x30]
    26e4: 910003fd     	mov	x29, sp
    26e8: 90000014     	adrp	x20, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		00000000000026e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1663
    26ec: 91000294     	add	x20, x20, #0x0
		00000000000026ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1663
    26f0: f9404c15     	ldr	x21, [x0, #0x98]
    26f4: aa0203f3     	mov	x19, x2
    26f8: 90000004     	adrp	x4, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		00000000000026f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12a
    26fc: 91000084     	add	x4, x4, #0x0
		00000000000026fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12a
    2700: aa0203e0     	mov	x0, x2
    2704: 52820001     	mov	w1, #0x1000             // =4096
    2708: aa1403e2     	mov	x2, x20
    270c: 2a1f03e3     	mov	w3, wzr
    2710: 52820016     	mov	w22, #0x1000            // =4096
    2714: 94000000     	bl	0x2714 <aw22xxx_imax_show+0x44>
		0000000000002714:  R_AARCH64_CALL26	snprintf
    2718: 93407c17     	sxtw	x23, w0
    271c: 90000004     	adrp	x4, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		000000000000271c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1672
    2720: 91000084     	add	x4, x4, #0x0
		0000000000002720:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1672
    2724: aa1403e2     	mov	x2, x20
    2728: 52800023     	mov	w3, #0x1                // =1
    272c: cb1702c1     	sub	x1, x22, x23
    2730: 8b170260     	add	x0, x19, x23
    2734: 94000000     	bl	0x2734 <aw22xxx_imax_show+0x64>
		0000000000002734:  R_AARCH64_CALL26	snprintf
    2738: 8b20c2f7     	add	x23, x23, w0, sxtw
    273c: 90000004     	adrp	x4, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		000000000000273c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e6
    2740: 91000084     	add	x4, x4, #0x0
		0000000000002740:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e6
    2744: aa1403e2     	mov	x2, x20
    2748: 52800043     	mov	w3, #0x2                // =2
    274c: cb1702c1     	sub	x1, x22, x23
    2750: 8b170260     	add	x0, x19, x23
    2754: 94000000     	bl	0x2754 <aw22xxx_imax_show+0x84>
		0000000000002754:  R_AARCH64_CALL26	snprintf
    2758: 8b20c2f7     	add	x23, x23, w0, sxtw
    275c: 90000004     	adrp	x4, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		000000000000275c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4dd
    2760: 91000084     	add	x4, x4, #0x0
		0000000000002760:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4dd
    2764: aa1403e2     	mov	x2, x20
    2768: 52800063     	mov	w3, #0x3                // =3
    276c: cb1702c1     	sub	x1, x22, x23
    2770: 8b170260     	add	x0, x19, x23
    2774: 94000000     	bl	0x2774 <aw22xxx_imax_show+0xa4>
		0000000000002774:  R_AARCH64_CALL26	snprintf
    2778: 8b20c2f7     	add	x23, x23, w0, sxtw
    277c: 90000004     	adrp	x4, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		000000000000277c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f7
    2780: 91000084     	add	x4, x4, #0x0
		0000000000002780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f7
    2784: aa1403e2     	mov	x2, x20
    2788: 52800083     	mov	w3, #0x4                // =4
    278c: cb1702c1     	sub	x1, x22, x23
    2790: 8b170260     	add	x0, x19, x23
    2794: 94000000     	bl	0x2794 <aw22xxx_imax_show+0xc4>
		0000000000002794:  R_AARCH64_CALL26	snprintf
    2798: 8b20c2f7     	add	x23, x23, w0, sxtw
    279c: 90000004     	adrp	x4, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		000000000000279c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x126a
    27a0: 91000084     	add	x4, x4, #0x0
		00000000000027a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x126a
    27a4: aa1403e2     	mov	x2, x20
    27a8: 528000a3     	mov	w3, #0x5                // =5
    27ac: cb1702c1     	sub	x1, x22, x23
    27b0: 8b170260     	add	x0, x19, x23
    27b4: 94000000     	bl	0x27b4 <aw22xxx_imax_show+0xe4>
		00000000000027b4:  R_AARCH64_CALL26	snprintf
    27b8: 8b20c2f7     	add	x23, x23, w0, sxtw
    27bc: 90000004     	adrp	x4, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		00000000000027bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x622
    27c0: 91000084     	add	x4, x4, #0x0
		00000000000027c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x622
    27c4: aa1403e2     	mov	x2, x20
    27c8: 528000c3     	mov	w3, #0x6                // =6
    27cc: cb1702c1     	sub	x1, x22, x23
    27d0: 8b170260     	add	x0, x19, x23
    27d4: 94000000     	bl	0x27d4 <aw22xxx_imax_show+0x104>
		00000000000027d4:  R_AARCH64_CALL26	snprintf
    27d8: 8b20c2f7     	add	x23, x23, w0, sxtw
    27dc: 90000004     	adrp	x4, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		00000000000027dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xef4
    27e0: 91000084     	add	x4, x4, #0x0
		00000000000027e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xef4
    27e4: aa1403e2     	mov	x2, x20
    27e8: 528000e3     	mov	w3, #0x7                // =7
    27ec: cb1702c1     	sub	x1, x22, x23
    27f0: 8b170260     	add	x0, x19, x23
    27f4: 94000000     	bl	0x27f4 <aw22xxx_imax_show+0x124>
		00000000000027f4:  R_AARCH64_CALL26	snprintf
    27f8: 8b20c2f7     	add	x23, x23, w0, sxtw
    27fc: 90000004     	adrp	x4, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		00000000000027fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36a
    2800: 91000084     	add	x4, x4, #0x0
		0000000000002800:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36a
    2804: aa1403e2     	mov	x2, x20
    2808: 52800103     	mov	w3, #0x8                // =8
    280c: cb1702c1     	sub	x1, x22, x23
    2810: 8b170260     	add	x0, x19, x23
    2814: 94000000     	bl	0x2814 <aw22xxx_imax_show+0x144>
		0000000000002814:  R_AARCH64_CALL26	snprintf
    2818: 8b20c2f7     	add	x23, x23, w0, sxtw
    281c: 90000004     	adrp	x4, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		000000000000281c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1766
    2820: 91000084     	add	x4, x4, #0x0
		0000000000002820:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1766
    2824: aa1403e2     	mov	x2, x20
    2828: 52800123     	mov	w3, #0x9                // =9
    282c: cb1702c1     	sub	x1, x22, x23
    2830: 8b170260     	add	x0, x19, x23
    2834: 94000000     	bl	0x2834 <aw22xxx_imax_show+0x164>
		0000000000002834:  R_AARCH64_CALL26	snprintf
    2838: 8b20c2f7     	add	x23, x23, w0, sxtw
    283c: 90000004     	adrp	x4, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		000000000000283c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf06
    2840: 91000084     	add	x4, x4, #0x0
		0000000000002840:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf06
    2844: aa1403e2     	mov	x2, x20
    2848: 52800143     	mov	w3, #0xa                // =10
    284c: cb1702c1     	sub	x1, x22, x23
    2850: 8b170260     	add	x0, x19, x23
    2854: 94000000     	bl	0x2854 <aw22xxx_imax_show+0x184>
		0000000000002854:  R_AARCH64_CALL26	snprintf
    2858: 8b20c2f7     	add	x23, x23, w0, sxtw
    285c: 90000004     	adrp	x4, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		000000000000285c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x208
    2860: 91000084     	add	x4, x4, #0x0
		0000000000002860:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x208
    2864: aa1403e2     	mov	x2, x20
    2868: 52800163     	mov	w3, #0xb                // =11
    286c: cb1702c1     	sub	x1, x22, x23
    2870: 8b170260     	add	x0, x19, x23
    2874: 94000000     	bl	0x2874 <aw22xxx_imax_show+0x1a4>
		0000000000002874:  R_AARCH64_CALL26	snprintf
    2878: 8b20c2f7     	add	x23, x23, w0, sxtw
    287c: 90000004     	adrp	x4, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		000000000000287c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1806
    2880: 91000084     	add	x4, x4, #0x0
		0000000000002880:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1806
    2884: aa1403e2     	mov	x2, x20
    2888: 52800183     	mov	w3, #0xc                // =12
    288c: cb1702c1     	sub	x1, x22, x23
    2890: 8b170260     	add	x0, x19, x23
    2894: 94000000     	bl	0x2894 <aw22xxx_imax_show+0x1c4>
		0000000000002894:  R_AARCH64_CALL26	snprintf
    2898: b942e2a3     	ldr	w3, [x21, #0x2e0]
    289c: 8b20c2f4     	add	x20, x23, w0, sxtw
    28a0: 7100307f     	cmp	w3, #0xc
    28a4: 54000168     	b.hi	0x28d0 <aw22xxx_imax_show+0x200>
    28a8: 90000008     	adrp	x8, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		00000000000028a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x208
    28ac: 91000108     	add	x8, x8, #0x0
		00000000000028ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x208
    28b0: 52820009     	mov	w9, #0x1000             // =4096
    28b4: f8637904     	ldr	x4, [x8, x3, lsl #3]
    28b8: cb140121     	sub	x1, x9, x20
    28bc: 90000002     	adrp	x2, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		00000000000028bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa49
    28c0: 91000042     	add	x2, x2, #0x0
		00000000000028c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa49
    28c4: 8b140260     	add	x0, x19, x20
    28c8: 94000000     	bl	0x28c8 <aw22xxx_imax_show+0x1f8>
		00000000000028c8:  R_AARCH64_CALL26	snprintf
    28cc: 8b20c294     	add	x20, x20, w0, sxtw
    28d0: aa1403e0     	mov	x0, x20
    28d4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    28d8: f9400bf7     	ldr	x23, [sp, #0x10]
    28dc: a94257f6     	ldp	x22, x21, [sp, #0x20]
    28e0: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    28e4: d50323bf     	autiasp
    28e8: d65f03c0     	ret
