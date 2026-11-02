
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000025ac <syna_tcm_do_fw_update>:
    25ac: d503233f     	paciasp
    25b0: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
    25b4: f9000bfc     	str	x28, [sp, #0x10]
    25b8: a90267fa     	stp	x26, x25, [sp, #0x20]
    25bc: a9035ff8     	stp	x24, x23, [sp, #0x30]
    25c0: a90457f6     	stp	x22, x21, [sp, #0x40]
    25c4: a9054ff4     	stp	x20, x19, [sp, #0x50]
    25c8: 910003fd     	mov	x29, sp
    25cc: d10c83ff     	sub	sp, sp, #0x320
    25d0: d5384108     	mrs	x8, SP_EL0
    25d4: f9438908     	ldr	x8, [x8, #0x710]
    25d8: f81f83a8     	stur	x8, [x29, #-0x8]
    25dc: b5000080     	cbnz	x0, 0x25ec <syna_tcm_do_fw_update+0x40>
    25e0: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		00000000000025e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
    25e4: 91000000     	add	x0, x0, #0x0
		00000000000025e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
    25e8: 1400000e     	b	0x2620 <syna_tcm_do_fw_update+0x74>
    25ec: b4000161     	cbz	x1, 0x2618 <syna_tcm_do_fw_update+0x6c>
    25f0: 34000142     	cbz	w2, 0x2618 <syna_tcm_do_fw_update+0x6c>
    25f4: aa0103f7     	mov	x23, x1
    25f8: 2a0203f6     	mov	w22, w2
    25fc: 2a0403f9     	mov	w25, w4
    2600: 350001a3     	cbnz	w3, 0x2634 <syna_tcm_do_fw_update+0x88>
    2604: aa0003f8     	mov	x24, x0
    2608: 2a1f03f5     	mov	w21, wzr
    260c: 2a1f03f4     	mov	w20, wzr
    2610: 2a1f03f3     	mov	w19, wzr
    2614: 1400000c     	b	0x2644 <syna_tcm_do_fw_update+0x98>
    2618: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002618:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d9e
    261c: 91000000     	add	x0, x0, #0x0
		000000000000261c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d9e
    2620: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002620:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xabd4
    2624: 91000021     	add	x1, x1, #0x0
		0000000000002624:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xabd4
    2628: 94000000     	bl	0x2628 <syna_tcm_do_fw_update+0x7c>
		0000000000002628:  R_AARCH64_CALL26	_printk
    262c: 12801e00     	mov	w0, #-0xf1              // =-241
    2630: 1400001c     	b	0x26a0 <syna_tcm_do_fw_update+0xf4>
    2634: 53107c73     	lsr	w19, w3, #16
    2638: b941e814     	ldr	w20, [x0, #0x1e8]
    263c: aa0003f8     	mov	x24, x0
    2640: 12003c75     	and	w21, w3, #0xffff
    2644: 910023e0     	add	x0, sp, #0x8
    2648: 2a1f03e1     	mov	w1, wzr
    264c: 52806202     	mov	w2, #0x310              // =784
    2650: 94000000     	bl	0x2650 <syna_tcm_do_fw_update+0xa4>
		0000000000002650:  R_AARCH64_CALL26	memset
    2654: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002654:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f30
    2658: 91000000     	add	x0, x0, #0x0
		0000000000002658:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f30
    265c: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		000000000000265c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xabd4
    2660: 91000021     	add	x1, x1, #0x0
		0000000000002660:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xabd4
    2664: 94000000     	bl	0x2664 <syna_tcm_do_fw_update+0xb8>
		0000000000002664:  R_AARCH64_CALL26	_printk
    2668: 910023e2     	add	x2, sp, #0x8
    266c: aa1703e0     	mov	x0, x23
    2670: 2a1603e1     	mov	w1, w22
    2674: 94000000     	bl	0x2674 <syna_tcm_do_fw_update+0xc8>
		0000000000002674:  R_AARCH64_CALL26	syna_tcm_parse_fw_image
    2678: 37f80300     	tbnz	w0, #0x1f, 0x26d8 <syna_tcm_do_fw_update+0x12c>
    267c: 36000419     	tbz	w25, #0x0, 0x26fc <syna_tcm_do_fw_update+0x150>
    2680: 52800122     	mov	w2, #0x9                // =9
    2684: aa1803e0     	mov	x0, x24
    2688: 910023e1     	add	x1, sp, #0x8
    268c: 2a1303e3     	mov	w3, w19
    2690: 2a1503e4     	mov	w4, w21
    2694: 2a1403e5     	mov	w5, w20
    2698: 52800026     	mov	w6, #0x1                // =1
    269c: 94000000     	bl	0x269c <syna_tcm_do_fw_update+0xf0>
		000000000000269c:  R_AARCH64_CALL26	syna_tcm_do_fw_update_ex
    26a0: d5384108     	mrs	x8, SP_EL0
    26a4: f9438908     	ldr	x8, [x8, #0x710]
    26a8: f85f83a9     	ldur	x9, [x29, #-0x8]
    26ac: eb09011f     	cmp	x8, x9
    26b0: 54001181     	b.ne	0x28e0 <syna_tcm_do_fw_update+0x334>
    26b4: 910c83ff     	add	sp, sp, #0x320
    26b8: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    26bc: f9400bfc     	ldr	x28, [sp, #0x10]
    26c0: a94457f6     	ldp	x22, x21, [sp, #0x40]
    26c4: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    26c8: a94267fa     	ldp	x26, x25, [sp, #0x20]
    26cc: a8c67bfd     	ldp	x29, x30, [sp], #0x60
    26d0: d50323bf     	autiasp
    26d4: d65f03c0     	ret
    26d8: 90000008     	adrp	x8, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		00000000000026d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c1e
    26dc: 91000108     	add	x8, x8, #0x0
		00000000000026dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c1e
    26e0: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		00000000000026e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xabd4
    26e4: 91000021     	add	x1, x1, #0x0
		00000000000026e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xabd4
    26e8: 2a0003f3     	mov	w19, w0
    26ec: aa0803e0     	mov	x0, x8
    26f0: 94000000     	bl	0x26f0 <syna_tcm_do_fw_update+0x144>
		00000000000026f0:  R_AARCH64_CALL26	_printk
    26f4: 2a1303e0     	mov	w0, w19
    26f8: 17ffffea     	b	0x26a0 <syna_tcm_do_fw_update+0xf4>
    26fc: b9408be8     	ldr	w8, [sp, #0x88]
    2700: 7100891f     	cmp	w8, #0x22
    2704: 54000102     	b.hs	0x2724 <syna_tcm_do_fw_update+0x178>
    2708: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002708:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x73e8
    270c: 91000000     	add	x0, x0, #0x0
		000000000000270c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x73e8
    2710: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002710:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23f8
    2714: 91000021     	add	x1, x1, #0x0
		0000000000002714:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23f8
    2718: 94000000     	bl	0x2718 <syna_tcm_do_fw_update+0x16c>
		0000000000002718:  R_AARCH64_CALL26	_printk
    271c: 2a1f03e0     	mov	w0, wzr
    2720: 17ffffe0     	b	0x26a0 <syna_tcm_do_fw_update+0xf4>
    2724: 3940231a     	ldrb	w26, [x24, #0x8]
    2728: f94043f9     	ldr	x25, [sp, #0x80]
    272c: 528001c9     	mov	w9, #0xe                // =14
    2730: 5280020a     	mov	w10, #0x10              // =16
    2734: b9400f17     	ldr	w23, [x24, #0xc]
    2738: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002738:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xac9c
    273c: 91000000     	add	x0, x0, #0x0
		000000000000273c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xac9c
    2740: 71000b5f     	cmp	w26, #0x2
    2744: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002744:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23f8
    2748: 91000021     	add	x1, x1, #0x0
		0000000000002748:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23f8
    274c: 9a890149     	csel	x9, x10, x9, eq
    2750: 2a1703e2     	mov	w2, w23
    2754: b8696b36     	ldr	w22, [x25, x9]
    2758: 2a1603e3     	mov	w3, w22
    275c: 94000000     	bl	0x275c <syna_tcm_do_fw_update+0x1b0>
		000000000000275c:  R_AARCH64_CALL26	_printk
    2760: 6b1702df     	cmp	w22, w23
    2764: 54000941     	b.ne	0x288c <syna_tcm_do_fw_update+0x2e0>
    2768: 71000b5f     	cmp	w26, #0x2
    276c: 52800248     	mov	w8, #0x12               // =18
    2770: 52800289     	mov	w9, #0x14               // =20
    2774: 9a880128     	csel	x8, x9, x8, eq
    2778: 3943030b     	ldrb	w11, [x24, #0xc0]
    277c: 8b080328     	add	x8, x25, x8
    2780: 3940010a     	ldrb	w10, [x8]
    2784: 6b0b015f     	cmp	w10, w11
    2788: 540008e1     	b.ne	0x28a4 <syna_tcm_do_fw_update+0x2f8>
    278c: 3940050a     	ldrb	w10, [x8, #0x1]
    2790: 3943070b     	ldrb	w11, [x24, #0xc1]
    2794: aa1803e9     	mov	x9, x24
    2798: 6b0b015f     	cmp	w10, w11
    279c: 54000841     	b.ne	0x28a4 <syna_tcm_do_fw_update+0x2f8>
    27a0: 3940090a     	ldrb	w10, [x8, #0x2]
    27a4: 3943092b     	ldrb	w11, [x9, #0xc2]
    27a8: 6b0b015f     	cmp	w10, w11
    27ac: 540007c1     	b.ne	0x28a4 <syna_tcm_do_fw_update+0x2f8>
    27b0: 39400d0a     	ldrb	w10, [x8, #0x3]
    27b4: 39430d2b     	ldrb	w11, [x9, #0xc3]
    27b8: 6b0b015f     	cmp	w10, w11
    27bc: 54000741     	b.ne	0x28a4 <syna_tcm_do_fw_update+0x2f8>
    27c0: 3940110a     	ldrb	w10, [x8, #0x4]
    27c4: 3943112b     	ldrb	w11, [x9, #0xc4]
    27c8: 6b0b015f     	cmp	w10, w11
    27cc: 540006c1     	b.ne	0x28a4 <syna_tcm_do_fw_update+0x2f8>
    27d0: 3940150a     	ldrb	w10, [x8, #0x5]
    27d4: 39431529     	ldrb	w9, [x9, #0xc5]
    27d8: 6b09015f     	cmp	w10, w9
    27dc: 54000641     	b.ne	0x28a4 <syna_tcm_do_fw_update+0x2f8>
    27e0: 39401909     	ldrb	w9, [x8, #0x6]
    27e4: 39431b0a     	ldrb	w10, [x24, #0xc6]
    27e8: 6b0a013f     	cmp	w9, w10
    27ec: 540005c1     	b.ne	0x28a4 <syna_tcm_do_fw_update+0x2f8>
    27f0: 39401d09     	ldrb	w9, [x8, #0x7]
    27f4: 39431f0a     	ldrb	w10, [x24, #0xc7]
    27f8: 6b0a013f     	cmp	w9, w10
    27fc: 54000541     	b.ne	0x28a4 <syna_tcm_do_fw_update+0x2f8>
    2800: 39402109     	ldrb	w9, [x8, #0x8]
    2804: 3943230a     	ldrb	w10, [x24, #0xc8]
    2808: 6b0a013f     	cmp	w9, w10
    280c: 540004c1     	b.ne	0x28a4 <syna_tcm_do_fw_update+0x2f8>
    2810: 39402509     	ldrb	w9, [x8, #0x9]
    2814: 3943270a     	ldrb	w10, [x24, #0xc9]
    2818: 6b0a013f     	cmp	w9, w10
    281c: 54000441     	b.ne	0x28a4 <syna_tcm_do_fw_update+0x2f8>
    2820: 39402909     	ldrb	w9, [x8, #0xa]
    2824: 39432b0a     	ldrb	w10, [x24, #0xca]
    2828: 6b0a013f     	cmp	w9, w10
    282c: 540003c1     	b.ne	0x28a4 <syna_tcm_do_fw_update+0x2f8>
    2830: 39402d09     	ldrb	w9, [x8, #0xb]
    2834: 39432f0a     	ldrb	w10, [x24, #0xcb]
    2838: 6b0a013f     	cmp	w9, w10
    283c: 54000341     	b.ne	0x28a4 <syna_tcm_do_fw_update+0x2f8>
    2840: 39403109     	ldrb	w9, [x8, #0xc]
    2844: 3943330a     	ldrb	w10, [x24, #0xcc]
    2848: 6b0a013f     	cmp	w9, w10
    284c: 540002c1     	b.ne	0x28a4 <syna_tcm_do_fw_update+0x2f8>
    2850: 39403509     	ldrb	w9, [x8, #0xd]
    2854: 3943370a     	ldrb	w10, [x24, #0xcd]
    2858: 6b0a013f     	cmp	w9, w10
    285c: 54000241     	b.ne	0x28a4 <syna_tcm_do_fw_update+0x2f8>
    2860: 39403909     	ldrb	w9, [x8, #0xe]
    2864: 39433b0a     	ldrb	w10, [x24, #0xce]
    2868: 6b0a013f     	cmp	w9, w10
    286c: 540001c1     	b.ne	0x28a4 <syna_tcm_do_fw_update+0x2f8>
    2870: 39403d08     	ldrb	w8, [x8, #0xf]
    2874: 39433f09     	ldrb	w9, [x24, #0xcf]
    2878: 6b09011f     	cmp	w8, w9
    287c: 54000141     	b.ne	0x28a4 <syna_tcm_do_fw_update+0x2f8>
    2880: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002880:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a
    2884: 91000000     	add	x0, x0, #0x0
		0000000000002884:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a
    2888: 17ffffa2     	b	0x2710 <syna_tcm_do_fw_update+0x164>
    288c: 90000016     	adrp	x22, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		000000000000288c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9f4
    2890: 910002d6     	add	x22, x22, #0x0
		0000000000002890:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9f4
    2894: 52800139     	mov	w25, #0x9               // =9
    2898: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002898:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xacd6
    289c: 91000000     	add	x0, x0, #0x0
		000000000000289c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xacd6
    28a0: 14000006     	b	0x28b8 <syna_tcm_do_fw_update+0x30c>
    28a4: 90000016     	adrp	x22, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		00000000000028a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x555c
    28a8: 910002d6     	add	x22, x22, #0x0
		00000000000028a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x555c
    28ac: 52800039     	mov	w25, #0x1               // =1
    28b0: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		00000000000028b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7420
    28b4: 91000000     	add	x0, x0, #0x0
		00000000000028b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7420
    28b8: 90000017     	adrp	x23, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		00000000000028b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23f8
    28bc: 910002f7     	add	x23, x23, #0x0
		00000000000028bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23f8
    28c0: aa1703e1     	mov	x1, x23
    28c4: 94000000     	bl	0x28c4 <syna_tcm_do_fw_update+0x318>
		00000000000028c4:  R_AARCH64_CALL26	_printk
    28c8: aa1603e0     	mov	x0, x22
    28cc: aa1703e1     	mov	x1, x23
    28d0: 94000000     	bl	0x28d0 <syna_tcm_do_fw_update+0x324>
		00000000000028d0:  R_AARCH64_CALL26	_printk
    28d4: aa1803e0     	mov	x0, x24
    28d8: 2a1903e2     	mov	w2, w25
    28dc: 17ffff6b     	b	0x2688 <syna_tcm_do_fw_update+0xdc>
    28e0: 94000000     	bl	0x28e0 <syna_tcm_do_fw_update+0x334>
		00000000000028e0:  R_AARCH64_CALL26	__stack_chk_fail
