
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002688 <aw22xxx_brightness_work>:
    2688: d503233f     	paciasp
    268c: d10103ff     	sub	sp, sp, #0x40
    2690: a9027bfd     	stp	x29, x30, [sp, #0x20]
    2694: a9034ff4     	stp	x20, x19, [sp, #0x30]
    2698: 910083fd     	add	x29, sp, #0x20
    269c: d5384108     	mrs	x8, SP_EL0
    26a0: aa0003f4     	mov	x20, x0
    26a4: d1074013     	sub	x19, x0, #0x1d0
    26a8: f9438908     	ldr	x8, [x8, #0x710]
    26ac: 90000000     	adrp	x0, 0x2000 <aw22xxx_irq+0x20>
		00000000000026ac:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x8dd
    26b0: 91000000     	add	x0, x0, #0x0
		00000000000026b0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x8dd
    26b4: 90000001     	adrp	x1, 0x2000 <aw22xxx_irq+0x20>
		00000000000026b4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1685
    26b8: 91000021     	add	x1, x1, #0x0
		00000000000026b8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1685
    26bc: f81f83a8     	stur	x8, [x29, #-0x8]
    26c0: 94000000     	bl	0x26c0 <aw22xxx_brightness_work+0x38>
		00000000000026c0:  R_AARCH64_CALL26	_printk
    26c4: aa1303e0     	mov	x0, x19
    26c8: 528000a1     	mov	w1, #0x5                // =5
    26cc: 52801fe2     	mov	w2, #0xff               // =255
    26d0: 97fffa63     	bl	0x105c <aw22xxx_i2c_write>
		00000000000026d0:  R_AARCH64_CALL26	aw22xxx_i2c_write
    26d4: 910013e2     	add	x2, sp, #0x4
    26d8: aa1303e0     	mov	x0, x19
    26dc: 52800081     	mov	w1, #0x4                // =4
    26e0: 390013ff     	strb	wzr, [sp, #0x4]
    26e4: 97fffaaa     	bl	0x118c <aw22xxx_i2c_read>
		00000000000026e4:  R_AARCH64_CALL26	aw22xxx_i2c_read
    26e8: 394013e8     	ldrb	w8, [sp, #0x4]
    26ec: aa1303e0     	mov	x0, x19
    26f0: 52800081     	mov	w1, #0x4                // =4
    26f4: 121e7902     	and	w2, w8, #0xfffffffd
    26f8: 390013e2     	strb	w2, [sp, #0x4]
    26fc: 97fffa58     	bl	0x105c <aw22xxx_i2c_write>
		00000000000026fc:  R_AARCH64_CALL26	aw22xxx_i2c_write
    2700: 90000000     	adrp	x0, 0x2000 <aw22xxx_irq+0x20>
		0000000000002700:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x148c
    2704: 91000000     	add	x0, x0, #0x0
		0000000000002704:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x148c
    2708: 90000001     	adrp	x1, 0x2000 <aw22xxx_irq+0x20>
		0000000000002708:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x181c
    270c: 91000021     	add	x1, x1, #0x0
		000000000000270c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x181c
    2710: 52803542     	mov	w2, #0x1aa              // =426
    2714: 2a1f03e3     	mov	w3, wzr
    2718: 94000000     	bl	0x2718 <aw22xxx_brightness_work+0x90>
		0000000000002718:  R_AARCH64_CALL26	_printk
    271c: 910023e2     	add	x2, sp, #0x8
    2720: aa1303e0     	mov	x0, x19
    2724: 52800041     	mov	w1, #0x2                // =2
    2728: 390023ff     	strb	wzr, [sp, #0x8]
    272c: 97fffa98     	bl	0x118c <aw22xxx_i2c_read>
		000000000000272c:  R_AARCH64_CALL26	aw22xxx_i2c_read
    2730: 394023e8     	ldrb	w8, [sp, #0x8]
    2734: aa1303e0     	mov	x0, x19
    2738: 52800041     	mov	w1, #0x2                // =2
    273c: 121f7902     	and	w2, w8, #0xfffffffe
    2740: 390023e2     	strb	w2, [sp, #0x8]
    2744: 97fffa46     	bl	0x105c <aw22xxx_i2c_write>
		0000000000002744:  R_AARCH64_CALL26	aw22xxx_i2c_write
    2748: 5280fa00     	mov	w0, #0x7d0              // =2000
    274c: 52817701     	mov	w1, #0xbb8              // =3000
    2750: 52800042     	mov	w2, #0x2                // =2
    2754: 94000000     	bl	0x2754 <aw22xxx_brightness_work+0xcc>
		0000000000002754:  R_AARCH64_CALL26	usleep_range_state
    2758: d106e288     	sub	x8, x20, #0x1b8
    275c: b9400108     	ldr	w8, [x8]
    2760: 35000168     	cbnz	w8, 0x278c <aw22xxx_brightness_work+0x104>
    2764: d5384108     	mrs	x8, SP_EL0
    2768: f9438908     	ldr	x8, [x8, #0x710]
    276c: f85f83a9     	ldur	x9, [x29, #-0x8]
    2770: eb09011f     	cmp	x8, x9
    2774: 54000ae1     	b.ne	0x28d0 <aw22xxx_brightness_work+0x248>
    2778: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    277c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    2780: 910103ff     	add	sp, sp, #0x40
    2784: d50323bf     	autiasp
    2788: d65f03c0     	ret
    278c: 90000000     	adrp	x0, 0x2000 <aw22xxx_irq+0x20>
		000000000000278c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x148c
    2790: 91000000     	add	x0, x0, #0x0
		0000000000002790:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x148c
    2794: 90000001     	adrp	x1, 0x2000 <aw22xxx_irq+0x20>
		0000000000002794:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x181c
    2798: 91000021     	add	x1, x1, #0x0
		0000000000002798:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x181c
    279c: 52803542     	mov	w2, #0x1aa              // =426
    27a0: 52800023     	mov	w3, #0x1                // =1
    27a4: 94000000     	bl	0x27a4 <aw22xxx_brightness_work+0x11c>
		00000000000027a4:  R_AARCH64_CALL26	_printk
    27a8: 910033e2     	add	x2, sp, #0xc
    27ac: aa1303e0     	mov	x0, x19
    27b0: 52800041     	mov	w1, #0x2                // =2
    27b4: 390033ff     	strb	wzr, [sp, #0xc]
    27b8: 97fffa75     	bl	0x118c <aw22xxx_i2c_read>
		00000000000027b8:  R_AARCH64_CALL26	aw22xxx_i2c_read
    27bc: 394033e8     	ldrb	w8, [sp, #0xc]
    27c0: aa1303e0     	mov	x0, x19
    27c4: 52800041     	mov	w1, #0x2                // =2
    27c8: 32000102     	orr	w2, w8, #0x1
    27cc: 390033e2     	strb	w2, [sp, #0xc]
    27d0: 97fffa23     	bl	0x105c <aw22xxx_i2c_write>
		00000000000027d0:  R_AARCH64_CALL26	aw22xxx_i2c_write
    27d4: 5280fa00     	mov	w0, #0x7d0              // =2000
    27d8: 52817701     	mov	w1, #0xbb8              // =3000
    27dc: 52800042     	mov	w2, #0x2                // =2
    27e0: 94000000     	bl	0x27e0 <aw22xxx_brightness_work+0x158>
		00000000000027e0:  R_AARCH64_CALL26	usleep_range_state
    27e4: 910043e2     	add	x2, sp, #0x10
    27e8: aa1303e0     	mov	x0, x19
    27ec: 52800081     	mov	w1, #0x4                // =4
    27f0: 390043ff     	strb	wzr, [sp, #0x10]
    27f4: 97fffa66     	bl	0x118c <aw22xxx_i2c_read>
		00000000000027f4:  R_AARCH64_CALL26	aw22xxx_i2c_read
    27f8: 394043e8     	ldrb	w8, [sp, #0x10]
    27fc: aa1303e0     	mov	x0, x19
    2800: 52800081     	mov	w1, #0x4                // =4
    2804: 32000102     	orr	w2, w8, #0x1
    2808: 390043e2     	strb	w2, [sp, #0x10]
    280c: 97fffa14     	bl	0x105c <aw22xxx_i2c_write>
		000000000000280c:  R_AARCH64_CALL26	aw22xxx_i2c_write
    2810: 39448288     	ldrb	w8, [x20, #0x120]
    2814: 528001e9     	mov	w9, #0xf                // =15
    2818: aa1303e0     	mov	x0, x19
    281c: 52801fe1     	mov	w1, #0xff               // =255
    2820: 2a1f03e2     	mov	w2, wzr
    2824: 71003d1f     	cmp	w8, #0xf
    2828: 1a893114     	csel	w20, w8, w9, lo
    282c: 97fffa0c     	bl	0x105c <aw22xxx_i2c_write>
		000000000000282c:  R_AARCH64_CALL26	aw22xxx_i2c_write
    2830: aa1303e0     	mov	x0, x19
    2834: 52800161     	mov	w1, #0xb                // =11
    2838: 2a1403e2     	mov	w2, w20
    283c: 97fffa08     	bl	0x105c <aw22xxx_i2c_write>
		000000000000283c:  R_AARCH64_CALL26	aw22xxx_i2c_write
    2840: aa1303e0     	mov	x0, x19
    2844: 52800421     	mov	w1, #0x21               // =33
    2848: 52801c22     	mov	w2, #0xe1               // =225
    284c: 97fffa04     	bl	0x105c <aw22xxx_i2c_write>
		000000000000284c:  R_AARCH64_CALL26	aw22xxx_i2c_write
    2850: aa1303e0     	mov	x0, x19
    2854: 52800441     	mov	w1, #0x22               // =34
    2858: 2a1f03e2     	mov	w2, wzr
    285c: 97fffa00     	bl	0x105c <aw22xxx_i2c_write>
		000000000000285c:  R_AARCH64_CALL26	aw22xxx_i2c_write
    2860: aa1303e0     	mov	x0, x19
    2864: 52800401     	mov	w1, #0x20               // =32
    2868: 52800042     	mov	w2, #0x2                // =2
    286c: 97fff9fc     	bl	0x105c <aw22xxx_i2c_write>
		000000000000286c:  R_AARCH64_CALL26	aw22xxx_i2c_write
    2870: aa1303e0     	mov	x0, x19
    2874: 52800461     	mov	w1, #0x23               // =35
    2878: 528007a2     	mov	w2, #0x3d               // =61
    287c: 97fff9f8     	bl	0x105c <aw22xxx_i2c_write>
		000000000000287c:  R_AARCH64_CALL26	aw22xxx_i2c_write
    2880: aa1303e0     	mov	x0, x19
    2884: 52800401     	mov	w1, #0x20               // =32
    2888: 2a1f03e2     	mov	w2, wzr
    288c: 97fff9f4     	bl	0x105c <aw22xxx_i2c_write>
		000000000000288c:  R_AARCH64_CALL26	aw22xxx_i2c_write
    2890: aa1303e0     	mov	x0, x19
    2894: 528000a1     	mov	w1, #0x5                // =5
    2898: 52801042     	mov	w2, #0x82               // =130
    289c: 97fff9f0     	bl	0x105c <aw22xxx_i2c_write>
		000000000000289c:  R_AARCH64_CALL26	aw22xxx_i2c_write
    28a0: d10033a2     	sub	x2, x29, #0xc
    28a4: aa1303e0     	mov	x0, x19
    28a8: 52800081     	mov	w1, #0x4                // =4
    28ac: 381f43bf     	sturb	wzr, [x29, #-0xc]
    28b0: 97fffa37     	bl	0x118c <aw22xxx_i2c_read>
		00000000000028b0:  R_AARCH64_CALL26	aw22xxx_i2c_read
    28b4: 385f43a8     	ldurb	w8, [x29, #-0xc]
    28b8: aa1303e0     	mov	x0, x19
    28bc: 52800081     	mov	w1, #0x4                // =4
    28c0: 321f0102     	orr	w2, w8, #0x2
    28c4: 381f43a2     	sturb	w2, [x29, #-0xc]
    28c8: 97fff9e5     	bl	0x105c <aw22xxx_i2c_write>
		00000000000028c8:  R_AARCH64_CALL26	aw22xxx_i2c_write
    28cc: 17ffffa6     	b	0x2764 <aw22xxx_brightness_work+0xdc>
    28d0: 94000000     	bl	0x28d0 <aw22xxx_brightness_work+0x248>
		00000000000028d0:  R_AARCH64_CALL26	__stack_chk_fail
