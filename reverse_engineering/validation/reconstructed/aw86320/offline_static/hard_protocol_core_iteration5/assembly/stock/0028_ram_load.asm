
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002730 <ram_load>:
    2730: d503233f     	paciasp
    2734: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    2738: a90167fc     	stp	x28, x25, [sp, #0x10]
    273c: a9025ff8     	stp	x24, x23, [sp, #0x20]
    2740: a90357f6     	stp	x22, x21, [sp, #0x30]
    2744: a9044ff4     	stp	x20, x19, [sp, #0x40]
    2748: 910003fd     	mov	x29, sp
    274c: d10bc3ff     	sub	sp, sp, #0x2f0
    2750: d5384108     	mrs	x8, SP_EL0
    2754: f9438908     	ldr	x8, [x8, #0x710]
    2758: f81f83a8     	stur	x8, [x29, #-0x8]
    275c: b50001c0     	cbnz	x0, 0x2794 <ram_load+0x64>
    2760: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		0000000000002760:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x699
    2764: 91000000     	add	x0, x0, #0x0
		0000000000002764:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x699
    2768: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		0000000000002768:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    276c: 91000021     	add	x1, x1, #0x0
		000000000000276c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    2770: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		0000000000002770:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x94b
    2774: 91000063     	add	x3, x3, #0x0
		0000000000002774:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x94b
    2778: 90000004     	adrp	x4, 0x2000 <speed_store+0x8>
		0000000000002778:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a7
    277c: 91000084     	add	x4, x4, #0x0
		000000000000277c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a7
    2780: 52803742     	mov	w2, #0x1ba              // =442
    2784: 94000000     	bl	0x2784 <ram_load+0x54>
		0000000000002784:  R_AARCH64_CALL26	_printk
    2788: aa1f03e0     	mov	x0, xzr
    278c: 94000000     	bl	0x278c <ram_load+0x5c>
		000000000000278c:  R_AARCH64_CALL26	release_firmware
    2790: 14000248     	b	0x30b0 <ram_load+0x980>
    2794: f9400005     	ldr	x5, [x0]
    2798: aa0103f3     	mov	x19, x1
    279c: aa0003f5     	mov	x21, x0
    27a0: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		00000000000027a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbf9
    27a4: 91000000     	add	x0, x0, #0x0
		00000000000027a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbf9
    27a8: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		00000000000027a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    27ac: 91000021     	add	x1, x1, #0x0
		00000000000027ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    27b0: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		00000000000027b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x94b
    27b4: 91000063     	add	x3, x3, #0x0
		00000000000027b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x94b
    27b8: 90000004     	adrp	x4, 0x2000 <speed_store+0x8>
		00000000000027b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a7
    27bc: 91000084     	add	x4, x4, #0x0
		00000000000027bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a7
    27c0: 528037c2     	mov	w2, #0x1be              // =446
    27c4: 94000000     	bl	0x27c4 <ram_load+0x94>
		00000000000027c4:  R_AARCH64_CALL26	_printk
    27c8: a94022a9     	ldp	x9, x8, [x21]
    27cc: 39403118     	ldrb	w24, [x8, #0xc]
    27d0: 9100570a     	add	x10, x24, #0x15
    27d4: eb0a013f     	cmp	x9, x10
    27d8: 540001e9     	b.ls	0x2814 <ram_load+0xe4>
    27dc: cb18012b     	sub	x11, x9, x24
    27e0: d100556c     	sub	x12, x11, #0x15
    27e4: f100099f     	cmp	x12, #0x2
    27e8: 540019c2     	b.hs	0x2b20 <ram_load+0x3f0>
    27ec: 2a1f03f4     	mov	w20, wzr
    27f0: aa0a03eb     	mov	x11, x10
    27f4: 1100054a     	add	w10, w10, #0x1
    27f8: 386b690c     	ldrb	w12, [x8, x11]
    27fc: 93407d4b     	sxtw	x11, w10
    2800: 1100054a     	add	w10, w10, #0x1
    2804: eb0b013f     	cmp	x9, x11
    2808: 0b0c0294     	add	w20, w20, w12
    280c: 54ffff68     	b.hi	0x27f8 <ram_load+0xc8>
    2810: 14000002     	b	0x2818 <ram_load+0xe8>
    2814: 2a1f03f4     	mov	w20, wzr
    2818: b9400108     	ldr	w8, [x8]
    281c: 6b08029f     	cmp	w20, w8
    2820: 54001681     	b.ne	0x2af0 <ram_load+0x3c0>
    2824: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		0000000000002824:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd33
    2828: 91000000     	add	x0, x0, #0x0
		0000000000002828:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd33
    282c: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		000000000000282c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    2830: 91000021     	add	x1, x1, #0x0
		0000000000002830:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    2834: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		0000000000002834:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x94b
    2838: 91000063     	add	x3, x3, #0x0
		0000000000002838:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x94b
    283c: 52803982     	mov	w2, #0x1cc              // =460
    2840: 2a1403e4     	mov	w4, w20
    2844: 94000000     	bl	0x2844 <ram_load+0x114>
		0000000000002844:  R_AARCH64_CALL26	_printk
    2848: b9033674     	str	w20, [x19, #0x334]
    284c: f94006a8     	ldr	x8, [x21, #0x8]
    2850: 79400908     	ldrh	w8, [x8, #0x4]
    2854: 7906a268     	strh	w8, [x19, #0x350]
    2858: f94006a8     	ldr	x8, [x21, #0x8]
    285c: 79400d08     	ldrh	w8, [x8, #0x6]
    2860: 7906a668     	strh	w8, [x19, #0x352]
    2864: f94006a8     	ldr	x8, [x21, #0x8]
    2868: 79401108     	ldrh	w8, [x8, #0x8]
    286c: 7906aa68     	strh	w8, [x19, #0x354]
    2870: f94006a8     	ldr	x8, [x21, #0x8]
    2874: 79401508     	ldrh	w8, [x8, #0xa]
    2878: 7906ae68     	strh	w8, [x19, #0x356]
    287c: f94006a8     	ldr	x8, [x21, #0x8]
    2880: 39403104     	ldrb	w4, [x8, #0xc]
    2884: 390d6264     	strb	w4, [x19, #0x358]
    2888: 34001104     	cbz	w4, 0x2aa8 <ram_load+0x378>
    288c: f94006a8     	ldr	x8, [x21, #0x8]
    2890: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		0000000000002890:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bc
    2894: 91000000     	add	x0, x0, #0x0
		0000000000002894:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bc
    2898: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		0000000000002898:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    289c: 91000021     	add	x1, x1, #0x0
		000000000000289c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    28a0: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		00000000000028a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc20
    28a4: 91000063     	add	x3, x3, #0x0
		00000000000028a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc20
    28a8: 39403506     	ldrb	w6, [x8, #0xd]
    28ac: 52803542     	mov	w2, #0x1aa              // =426
    28b0: 52800025     	mov	w5, #0x1                // =1
    28b4: 390d6a66     	strb	w6, [x19, #0x35a]
    28b8: 94000000     	bl	0x28b8 <ram_load+0x188>
		00000000000028b8:  R_AARCH64_CALL26	_printk
    28bc: 394d6264     	ldrb	w4, [x19, #0x358]
    28c0: 7100049f     	cmp	w4, #0x1
    28c4: 54000f29     	b.ls	0x2aa8 <ram_load+0x378>
    28c8: f94006a8     	ldr	x8, [x21, #0x8]
    28cc: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		00000000000028cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bc
    28d0: 91000000     	add	x0, x0, #0x0
		00000000000028d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bc
    28d4: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		00000000000028d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    28d8: 91000021     	add	x1, x1, #0x0
		00000000000028d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    28dc: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		00000000000028dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc20
    28e0: 91000063     	add	x3, x3, #0x0
		00000000000028e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc20
    28e4: 39403906     	ldrb	w6, [x8, #0xe]
    28e8: 52803542     	mov	w2, #0x1aa              // =426
    28ec: 52800045     	mov	w5, #0x2                // =2
    28f0: 390d6e66     	strb	w6, [x19, #0x35b]
    28f4: 94000000     	bl	0x28f4 <ram_load+0x1c4>
		00000000000028f4:  R_AARCH64_CALL26	_printk
    28f8: 394d6264     	ldrb	w4, [x19, #0x358]
    28fc: 71000c9f     	cmp	w4, #0x3
    2900: 54000d43     	b.lo	0x2aa8 <ram_load+0x378>
    2904: f94006a8     	ldr	x8, [x21, #0x8]
    2908: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		0000000000002908:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bc
    290c: 91000000     	add	x0, x0, #0x0
		000000000000290c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bc
    2910: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		0000000000002910:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    2914: 91000021     	add	x1, x1, #0x0
		0000000000002914:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    2918: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		0000000000002918:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc20
    291c: 91000063     	add	x3, x3, #0x0
		000000000000291c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc20
    2920: 39403d06     	ldrb	w6, [x8, #0xf]
    2924: 52803542     	mov	w2, #0x1aa              // =426
    2928: 52800065     	mov	w5, #0x3                // =3
    292c: 390d7266     	strb	w6, [x19, #0x35c]
    2930: 94000000     	bl	0x2930 <ram_load+0x200>
		0000000000002930:  R_AARCH64_CALL26	_printk
    2934: 394d6264     	ldrb	w4, [x19, #0x358]
    2938: 7100109f     	cmp	w4, #0x4
    293c: 54000b63     	b.lo	0x2aa8 <ram_load+0x378>
    2940: f94006a8     	ldr	x8, [x21, #0x8]
    2944: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		0000000000002944:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bc
    2948: 91000000     	add	x0, x0, #0x0
		0000000000002948:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bc
    294c: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		000000000000294c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    2950: 91000021     	add	x1, x1, #0x0
		0000000000002950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    2954: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		0000000000002954:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc20
    2958: 91000063     	add	x3, x3, #0x0
		0000000000002958:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc20
    295c: 39404106     	ldrb	w6, [x8, #0x10]
    2960: 52803542     	mov	w2, #0x1aa              // =426
    2964: 52800085     	mov	w5, #0x4                // =4
    2968: 390d7666     	strb	w6, [x19, #0x35d]
    296c: 94000000     	bl	0x296c <ram_load+0x23c>
		000000000000296c:  R_AARCH64_CALL26	_printk
    2970: 394d6264     	ldrb	w4, [x19, #0x358]
    2974: 7100149f     	cmp	w4, #0x5
    2978: 54000983     	b.lo	0x2aa8 <ram_load+0x378>
    297c: f94006a8     	ldr	x8, [x21, #0x8]
    2980: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		0000000000002980:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bc
    2984: 91000000     	add	x0, x0, #0x0
		0000000000002984:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bc
    2988: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		0000000000002988:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    298c: 91000021     	add	x1, x1, #0x0
		000000000000298c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    2990: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		0000000000002990:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc20
    2994: 91000063     	add	x3, x3, #0x0
		0000000000002994:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc20
    2998: 39404506     	ldrb	w6, [x8, #0x11]
    299c: 52803542     	mov	w2, #0x1aa              // =426
    29a0: 528000a5     	mov	w5, #0x5                // =5
    29a4: 390d7a66     	strb	w6, [x19, #0x35e]
    29a8: 94000000     	bl	0x29a8 <ram_load+0x278>
		00000000000029a8:  R_AARCH64_CALL26	_printk
    29ac: 394d6264     	ldrb	w4, [x19, #0x358]
    29b0: 7100189f     	cmp	w4, #0x6
    29b4: 540007a3     	b.lo	0x2aa8 <ram_load+0x378>
    29b8: f94006a8     	ldr	x8, [x21, #0x8]
    29bc: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		00000000000029bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bc
    29c0: 91000000     	add	x0, x0, #0x0
		00000000000029c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bc
    29c4: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		00000000000029c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    29c8: 91000021     	add	x1, x1, #0x0
		00000000000029c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    29cc: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		00000000000029cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc20
    29d0: 91000063     	add	x3, x3, #0x0
		00000000000029d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc20
    29d4: 39404906     	ldrb	w6, [x8, #0x12]
    29d8: 52803542     	mov	w2, #0x1aa              // =426
    29dc: 528000c5     	mov	w5, #0x6                // =6
    29e0: 390d7e66     	strb	w6, [x19, #0x35f]
    29e4: 94000000     	bl	0x29e4 <ram_load+0x2b4>
		00000000000029e4:  R_AARCH64_CALL26	_printk
    29e8: 394d6264     	ldrb	w4, [x19, #0x358]
    29ec: 71001c9f     	cmp	w4, #0x7
    29f0: 540005c3     	b.lo	0x2aa8 <ram_load+0x378>
    29f4: f94006a8     	ldr	x8, [x21, #0x8]
    29f8: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		00000000000029f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bc
    29fc: 91000000     	add	x0, x0, #0x0
		00000000000029fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bc
    2a00: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		0000000000002a00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    2a04: 91000021     	add	x1, x1, #0x0
		0000000000002a04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    2a08: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		0000000000002a08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc20
    2a0c: 91000063     	add	x3, x3, #0x0
		0000000000002a0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc20
    2a10: 39404d06     	ldrb	w6, [x8, #0x13]
    2a14: 52803542     	mov	w2, #0x1aa              // =426
    2a18: 528000e5     	mov	w5, #0x7                // =7
    2a1c: 390d8266     	strb	w6, [x19, #0x360]
    2a20: 94000000     	bl	0x2a20 <ram_load+0x2f0>
		0000000000002a20:  R_AARCH64_CALL26	_printk
    2a24: 394d6264     	ldrb	w4, [x19, #0x358]
    2a28: 7100209f     	cmp	w4, #0x8
    2a2c: 540003e3     	b.lo	0x2aa8 <ram_load+0x378>
    2a30: f94006a8     	ldr	x8, [x21, #0x8]
    2a34: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		0000000000002a34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bc
    2a38: 91000000     	add	x0, x0, #0x0
		0000000000002a38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bc
    2a3c: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		0000000000002a3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    2a40: 91000021     	add	x1, x1, #0x0
		0000000000002a40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    2a44: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		0000000000002a44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc20
    2a48: 91000063     	add	x3, x3, #0x0
		0000000000002a48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc20
    2a4c: 39405106     	ldrb	w6, [x8, #0x14]
    2a50: 52803542     	mov	w2, #0x1aa              // =426
    2a54: 52800105     	mov	w5, #0x8                // =8
    2a58: 390d8666     	strb	w6, [x19, #0x361]
    2a5c: 94000000     	bl	0x2a5c <ram_load+0x32c>
		0000000000002a5c:  R_AARCH64_CALL26	_printk
    2a60: 394d6264     	ldrb	w4, [x19, #0x358]
    2a64: 7100249f     	cmp	w4, #0x9
    2a68: 54000203     	b.lo	0x2aa8 <ram_load+0x378>
    2a6c: f94006a8     	ldr	x8, [x21, #0x8]
    2a70: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		0000000000002a70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bc
    2a74: 91000000     	add	x0, x0, #0x0
		0000000000002a74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bc
    2a78: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		0000000000002a78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    2a7c: 91000021     	add	x1, x1, #0x0
		0000000000002a7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    2a80: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		0000000000002a80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc20
    2a84: 91000063     	add	x3, x3, #0x0
		0000000000002a84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc20
    2a88: 39405506     	ldrb	w6, [x8, #0x15]
    2a8c: 52803542     	mov	w2, #0x1aa              // =426
    2a90: 52800125     	mov	w5, #0x9                // =9
    2a94: 390d8a66     	strb	w6, [x19, #0x362]
    2a98: 94000000     	bl	0x2a98 <ram_load+0x368>
		0000000000002a98:  R_AARCH64_CALL26	_printk
    2a9c: 394d6268     	ldrb	w8, [x19, #0x358]
    2aa0: 7100251f     	cmp	w8, #0x9
    2aa4: 54003268     	b.hi	0x30f0 <ram_load+0x9c0>
    2aa8: d503201f     	nop
    2aac: 7946ae77     	ldrh	w23, [x19, #0x356]
    2ab0: 5281b801     	mov	w1, #0xdc0              // =3520
    2ab4: 910012e0     	add	x0, x23, #0x4
    2ab8: 94000000     	bl	0x2ab8 <ram_load+0x388>
		0000000000002ab8:  R_AARCH64_CALL26	__kmalloc_noprof
    2abc: aa0003f4     	mov	x20, x0
    2ac0: b5000854     	cbnz	x20, 0x2bc8 <ram_load+0x498>
    2ac4: aa1503e0     	mov	x0, x21
    2ac8: 94000000     	bl	0x2ac8 <ram_load+0x398>
		0000000000002ac8:  R_AARCH64_CALL26	release_firmware
    2acc: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		0000000000002acc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b5
    2ad0: 91000000     	add	x0, x0, #0x0
		0000000000002ad0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b5
    2ad4: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		0000000000002ad4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    2ad8: 91000021     	add	x1, x1, #0x0
		0000000000002ad8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    2adc: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		0000000000002adc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x94b
    2ae0: 91000063     	add	x3, x3, #0x0
		0000000000002ae0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x94b
    2ae4: 52803aa2     	mov	w2, #0x1d5              // =469
    2ae8: 94000000     	bl	0x2ae8 <ram_load+0x3b8>
		0000000000002ae8:  R_AARCH64_CALL26	_printk
    2aec: 14000171     	b	0x30b0 <ram_load+0x980>
    2af0: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		0000000000002af0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb7
    2af4: 91000000     	add	x0, x0, #0x0
		0000000000002af4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb7
    2af8: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		0000000000002af8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    2afc: 91000021     	add	x1, x1, #0x0
		0000000000002afc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    2b00: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		0000000000002b00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x94b
    2b04: 91000063     	add	x3, x3, #0x0
		0000000000002b04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x94b
    2b08: 52803902     	mov	w2, #0x1c8              // =456
    2b0c: 2a1403e4     	mov	w4, w20
    2b10: 94000000     	bl	0x2b10 <ram_load+0x3e0>
		0000000000002b10:  R_AARCH64_CALL26	_printk
    2b14: aa1503e0     	mov	x0, x21
    2b18: 94000000     	bl	0x2b18 <ram_load+0x3e8>
		0000000000002b18:  R_AARCH64_CALL26	release_firmware
    2b1c: 14000165     	b	0x30b0 <ram_load+0x980>
    2b20: cb18012b     	sub	x11, x9, x24
    2b24: 2a1f03f4     	mov	w20, wzr
    2b28: d100596b     	sub	x11, x11, #0x16
    2b2c: 0b0b014d     	add	w13, w10, w11
    2b30: 6b0a01bf     	cmp	w13, w10
    2b34: 54ffe5eb     	b.lt	0x27f0 <ram_load+0xc0>
    2b38: 11005b0d     	add	w13, w24, #0x16
    2b3c: 0b0b01ae     	add	w14, w13, w11
    2b40: 6b0d01df     	cmp	w14, w13
    2b44: 54ffe56b     	b.lt	0x27f0 <ram_load+0xc0>
    2b48: d360fd6b     	lsr	x11, x11, #32
    2b4c: b5ffe52b     	cbnz	x11, 0x27f0 <ram_load+0xc0>
    2b50: 927ff98f     	and	x15, x12, #0xfffffffffffffffe
    2b54: 8b080310     	add	x16, x24, x8
    2b58: 2a1f03ed     	mov	w13, wzr
    2b5c: 2a1f03ee     	mov	w14, wzr
    2b60: 8b0a01eb     	add	x11, x15, x10
    2b64: 0b0f014a     	add	w10, w10, w15
    2b68: 91005a10     	add	x16, x16, #0x16
    2b6c: aa0f03f1     	mov	x17, x15
    2b70: 385ff200     	ldurb	w0, [x16, #-0x1]
    2b74: 38402601     	ldrb	w1, [x16], #0x2
    2b78: f1000a31     	subs	x17, x17, #0x2
    2b7c: 0b0001ad     	add	w13, w13, w0
    2b80: 0b0101ce     	add	w14, w14, w1
    2b84: 54ffff61     	b.ne	0x2b70 <ram_load+0x440>
    2b88: eb0f019f     	cmp	x12, x15
    2b8c: 0b0d01d4     	add	w20, w14, w13
    2b90: 54ffe321     	b.ne	0x27f4 <ram_load+0xc4>
    2b94: 17ffff21     	b	0x2818 <ram_load+0xe8>
    2b98: 90000008     	adrp	x8, 0x2000 <speed_store+0x8>
		0000000000002b98:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x28
    2b9c: 91000108     	add	x8, x8, #0x0
		0000000000002b9c:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x28
    2ba0: d5384116     	mrs	x22, SP_EL0
    2ba4: f9402ad9     	ldr	x25, [x22, #0x50]
    2ba8: f9002ac8     	str	x8, [x22, #0x50]
    2bac: 5281b801     	mov	w1, #0xdc0              // =3520
    2bb0: 7946ae77     	ldrh	w23, [x19, #0x356]
    2bb4: 910012e0     	add	x0, x23, #0x4
    2bb8: 94000000     	bl	0x2bb8 <ram_load+0x488>
		0000000000002bb8:  R_AARCH64_CALL26	__kmalloc_noprof
    2bbc: aa0003f4     	mov	x20, x0
    2bc0: f9002ad9     	str	x25, [x22, #0x50]
    2bc4: b4fff814     	cbz	x20, 0x2ac4 <ram_load+0x394>
    2bc8: 7946ae64     	ldrh	w4, [x19, #0x356]
    2bcc: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		0000000000002bcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f7
    2bd0: 91000000     	add	x0, x0, #0x0
		0000000000002bd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f7
    2bd4: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		0000000000002bd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    2bd8: 91000021     	add	x1, x1, #0x0
		0000000000002bd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    2bdc: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		0000000000002bdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x94b
    2be0: 91000063     	add	x3, x3, #0x0
		0000000000002be0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x94b
    2be4: 52803b42     	mov	w2, #0x1da              // =474
    2be8: b9000284     	str	w4, [x20]
    2bec: 94000000     	bl	0x2bec <ram_load+0x4bc>
		0000000000002bec:  R_AARCH64_CALL26	_printk
    2bf0: aa1403f6     	mov	x22, x20
    2bf4: b88046c2     	ldrsw	x2, [x22], #0x4
    2bf8: eb0202ff     	cmp	x23, x2
    2bfc: 54002743     	b.lo	0x30e4 <ram_load+0x9b4>
    2c00: f94006a8     	ldr	x8, [x21, #0x8]
    2c04: aa1603e0     	mov	x0, x22
    2c08: 8b180108     	add	x8, x8, x24
    2c0c: 91005501     	add	x1, x8, #0x15
    2c10: 94000000     	bl	0x2c10 <ram_load+0x4e0>
		0000000000002c10:  R_AARCH64_CALL26	memcpy
    2c14: aa1503e0     	mov	x0, x21
    2c18: 94000000     	bl	0x2c18 <ram_load+0x4e8>
		0000000000002c18:  R_AARCH64_CALL26	release_firmware
    2c1c: 910033e0     	add	x0, sp, #0xc
    2c20: 2a1f03e1     	mov	w1, wzr
    2c24: 52805782     	mov	w2, #0x2bc              // =700
    2c28: 94000000     	bl	0x2c28 <ram_load+0x4f8>
		0000000000002c28:  R_AARCH64_CALL26	memset
    2c2c: 9107c260     	add	x0, x19, #0x1f0
    2c30: 94000000     	bl	0x2c30 <ram_load+0x500>
		0000000000002c30:  R_AARCH64_CALL26	mutex_lock
    2c34: d100a3a2     	sub	x2, x29, #0x28
    2c38: aa1303e0     	mov	x0, x19
    2c3c: 52800221     	mov	w1, #0x11               // =17
    2c40: 781d83bf     	sturh	wzr, [x29, #-0x28]
    2c44: 97fff66c     	bl	0x5f4 <haptic_i2c_read>
    2c48: 36f80140     	tbz	w0, #0x1f, 0x2c70 <ram_load+0x540>
    2c4c: 2a0003e4     	mov	w4, w0
    2c50: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		0000000000002c50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc38
    2c54: 91000000     	add	x0, x0, #0x0
		0000000000002c54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc38
    2c58: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		0000000000002c58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    2c5c: 91000021     	add	x1, x1, #0x0
		0000000000002c5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    2c60: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		0000000000002c60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd
    2c64: 91000063     	add	x3, x3, #0x0
		0000000000002c64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd
    2c68: 528015e2     	mov	w2, #0xaf               // =175
    2c6c: 1400000f     	b	0x2ca8 <ram_load+0x578>
    2c70: 785d83a8     	ldurh	w8, [x29, #-0x28]
    2c74: aa1303e0     	mov	x0, x19
    2c78: 52800221     	mov	w1, #0x11               // =17
    2c7c: 321c0102     	orr	w2, w8, #0x10
    2c80: 97fff5ef     	bl	0x43c <haptic_i2c_write>
    2c84: 36f80140     	tbz	w0, #0x1f, 0x2cac <ram_load+0x57c>
    2c88: 2a0003e4     	mov	w4, w0
    2c8c: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		0000000000002c8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xea8
    2c90: 91000000     	add	x0, x0, #0x0
		0000000000002c90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xea8
    2c94: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		0000000000002c94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    2c98: 91000021     	add	x1, x1, #0x0
		0000000000002c98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    2c9c: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		0000000000002c9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd
    2ca0: 91000063     	add	x3, x3, #0x0
		0000000000002ca0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd
    2ca4: 52801702     	mov	w2, #0xb8               // =184
    2ca8: 94000000     	bl	0x2ca8 <ram_load+0x578>
		0000000000002ca8:  R_AARCH64_CALL26	_printk
    2cac: 52807d00     	mov	w0, #0x3e8              // =1000
    2cb0: 52808341     	mov	w1, #0x41a              // =1050
    2cb4: 52800042     	mov	w2, #0x2                // =2
    2cb8: 94000000     	bl	0x2cb8 <ram_load+0x588>
		0000000000002cb8:  R_AARCH64_CALL26	usleep_range_state
    2cbc: 7946aa77     	ldrh	w23, [x19, #0x354]
    2cc0: 7946a675     	ldrh	w21, [x19, #0x352]
    2cc4: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		0000000000002cc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xada
    2cc8: 91000000     	add	x0, x0, #0x0
		0000000000002cc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xada
    2ccc: 7946a264     	ldrh	w4, [x19, #0x350]
    2cd0: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		0000000000002cd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    2cd4: 91000021     	add	x1, x1, #0x0
		0000000000002cd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    2cd8: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		0000000000002cd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe8
    2cdc: 91000063     	add	x3, x3, #0x0
		0000000000002cdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe8
    2ce0: 528028c2     	mov	w2, #0x146              // =326
    2ce4: 2a1703e5     	mov	w5, w23
    2ce8: 2a1503e6     	mov	w6, w21
    2cec: 79067264     	strh	w4, [x19, #0x338]
    2cf0: 94000000     	bl	0x2cf0 <ram_load+0x5c0>
		0000000000002cf0:  R_AARCH64_CALL26	_printk
    2cf4: 79467278     	ldrh	w24, [x19, #0x338]
    2cf8: d100a3a2     	sub	x2, x29, #0x28
    2cfc: aa1303e0     	mov	x0, x19
    2d00: 528002e1     	mov	w1, #0x17               // =23
    2d04: 781d83bf     	sturh	wzr, [x29, #-0x28]
    2d08: 97fff63b     	bl	0x5f4 <haptic_i2c_read>
    2d0c: 36f80140     	tbz	w0, #0x1f, 0x2d34 <ram_load+0x604>
    2d10: 2a0003e4     	mov	w4, w0
    2d14: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		0000000000002d14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc38
    2d18: 91000000     	add	x0, x0, #0x0
		0000000000002d18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc38
    2d1c: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		0000000000002d1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    2d20: 91000021     	add	x1, x1, #0x0
		0000000000002d20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    2d24: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		0000000000002d24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd
    2d28: 91000063     	add	x3, x3, #0x0
		0000000000002d28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd
    2d2c: 528015e2     	mov	w2, #0xaf               // =175
    2d30: 1400000f     	b	0x2d6c <ram_load+0x63c>
    2d34: 785d83a2     	ldurh	w2, [x29, #-0x28]
    2d38: aa1303e0     	mov	x0, x19
    2d3c: 528002e1     	mov	w1, #0x17               // =23
    2d40: 33002702     	bfxil	w2, w24, #0, #10
    2d44: 97fff5be     	bl	0x43c <haptic_i2c_write>
    2d48: 36f80140     	tbz	w0, #0x1f, 0x2d70 <ram_load+0x640>
    2d4c: 2a0003e4     	mov	w4, w0
    2d50: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		0000000000002d50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xea8
    2d54: 91000000     	add	x0, x0, #0x0
		0000000000002d54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xea8
    2d58: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		0000000000002d58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    2d5c: 91000021     	add	x1, x1, #0x0
		0000000000002d5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    2d60: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		0000000000002d60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd
    2d64: 91000063     	add	x3, x3, #0x0
		0000000000002d64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd
    2d68: 52801702     	mov	w2, #0xb8               // =184
    2d6c: 94000000     	bl	0x2d6c <ram_load+0x63c>
		0000000000002d6c:  R_AARCH64_CALL26	_printk
    2d70: aa1303e0     	mov	x0, x19
    2d74: 52800301     	mov	w1, #0x18               // =24
    2d78: 2a1703e2     	mov	w2, w23
    2d7c: 97fff5b0     	bl	0x43c <haptic_i2c_write>
    2d80: aa1303e0     	mov	x0, x19
    2d84: 52800321     	mov	w1, #0x19               // =25
    2d88: 2a1503e2     	mov	w2, w21
    2d8c: 97fff5ac     	bl	0x43c <haptic_i2c_write>
    2d90: b9400284     	ldr	w4, [x20]
    2d94: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		0000000000002d94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a8
    2d98: 91000000     	add	x0, x0, #0x0
		0000000000002d98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a8
    2d9c: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		0000000000002d9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    2da0: 91000021     	add	x1, x1, #0x0
		0000000000002da0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    2da4: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		0000000000002da4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe8
    2da8: 91000063     	add	x3, x3, #0x0
		0000000000002da8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe8
    2dac: 528029c2     	mov	w2, #0x14e              // =334
    2db0: 94000000     	bl	0x2db0 <ram_load+0x680>
		0000000000002db0:  R_AARCH64_CALL26	_printk
    2db4: b9400283     	ldr	w3, [x20]
    2db8: aa1303e0     	mov	x0, x19
    2dbc: 52800401     	mov	w1, #0x20               // =32
    2dc0: aa1603e2     	mov	x2, x22
    2dc4: 52800415     	mov	w21, #0x20              // =32
    2dc8: 97fff67f     	bl	0x7c4 <haptic_i2c_writes>
    2dcc: 5295d700     	mov	w0, #0xaeb8             // =44728
    2dd0: 72a028e0     	movk	w0, #0x147, lsl #16
    2dd4: 94000000     	bl	0x2dd4 <ram_load+0x6a4>
		0000000000002dd4:  R_AARCH64_CALL26	__const_udelay
    2dd8: aa1303e0     	mov	x0, x19
    2ddc: 528003e1     	mov	w1, #0x1f               // =31
    2de0: 52804002     	mov	w2, #0x200              // =512
    2de4: 97fff596     	bl	0x43c <haptic_i2c_write>
    2de8: f940f668     	ldr	x8, [x19, #0x1e8]
    2dec: 52a00029     	mov	w9, #0x10000            // =65536
    2df0: d100a3a1     	sub	x1, x29, #0x28
    2df4: 52800042     	mov	w2, #0x2                // =2
    2df8: 390023f5     	strb	w21, [sp, #0x8]
    2dfc: 7940050a     	ldrh	w10, [x8, #0x2]
    2e00: b81da3a9     	stur	w9, [x29, #-0x26]
    2e04: 910023e9     	add	x9, sp, #0x8
    2e08: f81e03a9     	stur	x9, [x29, #-0x20]
    2e0c: 52800029     	mov	w9, #0x1                // =1
    2e10: 781ea3a9     	sturh	w9, [x29, #-0x16]
    2e14: 910033e9     	add	x9, sp, #0xc
    2e18: f81f03a9     	stur	x9, [x29, #-0x10]
    2e1c: 781d83aa     	sturh	w10, [x29, #-0x28]
    2e20: f9400d00     	ldr	x0, [x8, #0x18]
    2e24: 781e83aa     	sturh	w10, [x29, #-0x18]
    2e28: b940028a     	ldr	w10, [x20]
    2e2c: 781de3bf     	sturh	wzr, [x29, #-0x22]
    2e30: 781ec3aa     	sturh	w10, [x29, #-0x14]
    2e34: 781ee3bf     	sturh	wzr, [x29, #-0x12]
    2e38: 94000000     	bl	0x2e38 <ram_load+0x708>
		0000000000002e38:  R_AARCH64_CALL26	i2c_transfer
    2e3c: 36f80120     	tbz	w0, #0x1f, 0x2e60 <ram_load+0x730>
    2e40: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		0000000000002e40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x488
    2e44: 91000000     	add	x0, x0, #0x0
		0000000000002e44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x488
    2e48: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		0000000000002e48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    2e4c: 91000021     	add	x1, x1, #0x0
		0000000000002e4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    2e50: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		0000000000002e50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x46b
    2e54: 91000063     	add	x3, x3, #0x0
		0000000000002e54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x46b
    2e58: 528009c2     	mov	w2, #0x4e               // =78
    2e5c: 1400000a     	b	0x2e84 <ram_load+0x754>
    2e60: 7100081f     	cmp	w0, #0x2
    2e64: 54000120     	b.eq	0x2e88 <ram_load+0x758>
    2e68: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		0000000000002e68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8c9
    2e6c: 91000000     	add	x0, x0, #0x0
		0000000000002e6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8c9
    2e70: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		0000000000002e70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    2e74: 91000021     	add	x1, x1, #0x0
		0000000000002e74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    2e78: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		0000000000002e78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x46b
    2e7c: 91000063     	add	x3, x3, #0x0
		0000000000002e7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x46b
    2e80: 52800a22     	mov	w2, #0x51               // =81
    2e84: 94000000     	bl	0x2e84 <ram_load+0x754>
		0000000000002e84:  R_AARCH64_CALL26	_printk
    2e88: b9400288     	ldr	w8, [x20]
    2e8c: 7100051f     	cmp	w8, #0x1
    2e90: 5400012b     	b.lt	0x2eb4 <ram_load+0x784>
    2e94: 510af509     	sub	w9, w8, #0x2bd
    2e98: 310af13f     	cmn	w9, #0x2bc
    2e9c: 540012a3     	b.lo	0x30f0 <ram_load+0x9c0>
    2ea0: 7100051f     	cmp	w8, #0x1
    2ea4: 540000c1     	b.ne	0x2ebc <ram_load+0x78c>
    2ea8: aa1f03e9     	mov	x9, xzr
    2eac: 2a1f03ea     	mov	w10, wzr
    2eb0: 14000012     	b	0x2ef8 <ram_load+0x7c8>
    2eb4: 2a1f03ea     	mov	w10, wzr
    2eb8: 14000017     	b	0x2f14 <ram_load+0x7e4>
    2ebc: 927f2109     	and	x9, x8, #0x3fe
    2ec0: 910033ec     	add	x12, sp, #0xc
    2ec4: 2a1f03ea     	mov	w10, wzr
    2ec8: 2a1f03eb     	mov	w11, wzr
    2ecc: 9100058c     	add	x12, x12, #0x1
    2ed0: aa0903ed     	mov	x13, x9
    2ed4: 385ff18e     	ldurb	w14, [x12, #-0x1]
    2ed8: 3840258f     	ldrb	w15, [x12], #0x2
    2edc: f10009ad     	subs	x13, x13, #0x2
    2ee0: 0b0e014a     	add	w10, w10, w14
    2ee4: 0b0f016b     	add	w11, w11, w15
    2ee8: 54ffff61     	b.ne	0x2ed4 <ram_load+0x7a4>
    2eec: eb08013f     	cmp	x9, x8
    2ef0: 0b0a016a     	add	w10, w11, w10
    2ef4: 54000100     	b.eq	0x2f14 <ram_load+0x7e4>
    2ef8: 910033eb     	add	x11, sp, #0xc
    2efc: cb090108     	sub	x8, x8, x9
    2f00: 8b090169     	add	x9, x11, x9
    2f04: 3840152b     	ldrb	w11, [x9], #0x1
    2f08: f1000508     	subs	x8, x8, #0x1
    2f0c: 0b0b014a     	add	w10, w10, w11
    2f10: 54ffffa1     	b.ne	0x2f04 <ram_load+0x7d4>
    2f14: b9433668     	ldr	w8, [x19, #0x334]
    2f18: 6b0a011f     	cmp	w8, w10
    2f1c: 54000301     	b.ne	0x2f7c <ram_load+0x84c>
    2f20: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		0000000000002f20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfbb
    2f24: 91000000     	add	x0, x0, #0x0
		0000000000002f24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfbb
    2f28: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		0000000000002f28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    2f2c: 91000021     	add	x1, x1, #0x0
		0000000000002f2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    2f30: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		0000000000002f30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe8
    2f34: 91000063     	add	x3, x3, #0x0
		0000000000002f34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe8
    2f38: 52802b42     	mov	w2, #0x15a              // =346
    2f3c: 94000000     	bl	0x2f3c <ram_load+0x80c>
		0000000000002f3c:  R_AARCH64_CALL26	_printk
    2f40: d100a3a2     	sub	x2, x29, #0x28
    2f44: aa1303e0     	mov	x0, x19
    2f48: 52800221     	mov	w1, #0x11               // =17
    2f4c: 781d83bf     	sturh	wzr, [x29, #-0x28]
    2f50: 97fff5a9     	bl	0x5f4 <haptic_i2c_read>
    2f54: 36f80320     	tbz	w0, #0x1f, 0x2fb8 <ram_load+0x888>
    2f58: 2a0003e4     	mov	w4, w0
    2f5c: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		0000000000002f5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc38
    2f60: 91000000     	add	x0, x0, #0x0
		0000000000002f60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc38
    2f64: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		0000000000002f64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    2f68: 91000021     	add	x1, x1, #0x0
		0000000000002f68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    2f6c: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		0000000000002f6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd
    2f70: 91000063     	add	x3, x3, #0x0
		0000000000002f70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd
    2f74: 528015e2     	mov	w2, #0xaf               // =175
    2f78: 1400001e     	b	0x2ff0 <ram_load+0x8c0>
    2f7c: d100a3a2     	sub	x2, x29, #0x28
    2f80: aa1303e0     	mov	x0, x19
    2f84: 52800221     	mov	w1, #0x11               // =17
    2f88: 781d83bf     	sturh	wzr, [x29, #-0x28]
    2f8c: 97fff59a     	bl	0x5f4 <haptic_i2c_read>
    2f90: 36f804a0     	tbz	w0, #0x1f, 0x3024 <ram_load+0x8f4>
    2f94: 2a0003e4     	mov	w4, w0
    2f98: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		0000000000002f98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc38
    2f9c: 91000000     	add	x0, x0, #0x0
		0000000000002f9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc38
    2fa0: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		0000000000002fa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    2fa4: 91000021     	add	x1, x1, #0x0
		0000000000002fa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    2fa8: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		0000000000002fa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd
    2fac: 91000063     	add	x3, x3, #0x0
		0000000000002fac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd
    2fb0: 528015e2     	mov	w2, #0xaf               // =175
    2fb4: 1400002a     	b	0x305c <ram_load+0x92c>
    2fb8: 785d83a8     	ldurh	w8, [x29, #-0x28]
    2fbc: aa1303e0     	mov	x0, x19
    2fc0: 52800221     	mov	w1, #0x11               // =17
    2fc4: 121b7902     	and	w2, w8, #0xffffffef
    2fc8: 97fff51d     	bl	0x43c <haptic_i2c_write>
    2fcc: 36f80140     	tbz	w0, #0x1f, 0x2ff4 <ram_load+0x8c4>
    2fd0: 2a0003e4     	mov	w4, w0
    2fd4: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		0000000000002fd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xea8
    2fd8: 91000000     	add	x0, x0, #0x0
		0000000000002fd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xea8
    2fdc: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		0000000000002fdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    2fe0: 91000021     	add	x1, x1, #0x0
		0000000000002fe0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    2fe4: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		0000000000002fe4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd
    2fe8: 91000063     	add	x3, x3, #0x0
		0000000000002fe8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd
    2fec: 52801702     	mov	w2, #0xb8               // =184
    2ff0: 94000000     	bl	0x2ff0 <ram_load+0x8c0>
		0000000000002ff0:  R_AARCH64_CALL26	_printk
    2ff4: 9107c260     	add	x0, x19, #0x1f0
    2ff8: 94000000     	bl	0x2ff8 <ram_load+0x8c8>
		0000000000002ff8:  R_AARCH64_CALL26	mutex_unlock
    2ffc: 52800028     	mov	w8, #0x1                // =1
    3000: 90000000     	adrp	x0, 0x3000 <ram_load+0x8d0>
		0000000000003000:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e1
    3004: 91000000     	add	x0, x0, #0x0
		0000000000003004:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e1
    3008: 39000268     	strb	w8, [x19]
    300c: 90000001     	adrp	x1, 0x3000 <ram_load+0x8d0>
		000000000000300c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    3010: 91000021     	add	x1, x1, #0x0
		0000000000003010:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    3014: 90000003     	adrp	x3, 0x3000 <ram_load+0x8d0>
		0000000000003014:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x94b
    3018: 91000063     	add	x3, x3, #0x0
		0000000000003018:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x94b
    301c: 52803c42     	mov	w2, #0x1e2              // =482
    3020: 14000021     	b	0x30a4 <ram_load+0x974>
    3024: 785d83a8     	ldurh	w8, [x29, #-0x28]
    3028: aa1303e0     	mov	x0, x19
    302c: 52800221     	mov	w1, #0x11               // =17
    3030: 121b7902     	and	w2, w8, #0xffffffef
    3034: 97fff502     	bl	0x43c <haptic_i2c_write>
    3038: 36f80140     	tbz	w0, #0x1f, 0x3060 <ram_load+0x930>
    303c: 2a0003e4     	mov	w4, w0
    3040: 90000000     	adrp	x0, 0x3000 <ram_load+0x8d0>
		0000000000003040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xea8
    3044: 91000000     	add	x0, x0, #0x0
		0000000000003044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xea8
    3048: 90000001     	adrp	x1, 0x3000 <ram_load+0x8d0>
		0000000000003048:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    304c: 91000021     	add	x1, x1, #0x0
		000000000000304c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    3050: 90000003     	adrp	x3, 0x3000 <ram_load+0x8d0>
		0000000000003050:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd
    3054: 91000063     	add	x3, x3, #0x0
		0000000000003054:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd
    3058: 52801702     	mov	w2, #0xb8               // =184
    305c: 94000000     	bl	0x305c <ram_load+0x92c>
		000000000000305c:  R_AARCH64_CALL26	_printk
    3060: 9107c260     	add	x0, x19, #0x1f0
    3064: 94000000     	bl	0x3064 <ram_load+0x934>
		0000000000003064:  R_AARCH64_CALL26	mutex_unlock
    3068: 90000013     	adrp	x19, 0x3000 <ram_load+0x8d0>
		0000000000003068:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    306c: 91000273     	add	x19, x19, #0x0
		000000000000306c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    3070: 90000000     	adrp	x0, 0x3000 <ram_load+0x8d0>
		0000000000003070:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a5
    3074: 91000000     	add	x0, x0, #0x0
		0000000000003074:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a5
    3078: 90000003     	adrp	x3, 0x3000 <ram_load+0x8d0>
		0000000000003078:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe8
    307c: 91000063     	add	x3, x3, #0x0
		000000000000307c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe8
    3080: aa1303e1     	mov	x1, x19
    3084: 52802be2     	mov	w2, #0x15f              // =351
    3088: 94000000     	bl	0x3088 <ram_load+0x958>
		0000000000003088:  R_AARCH64_CALL26	_printk
    308c: 90000000     	adrp	x0, 0x3000 <ram_load+0x8d0>
		000000000000308c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcd4
    3090: 91000000     	add	x0, x0, #0x0
		0000000000003090:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcd4
    3094: 90000003     	adrp	x3, 0x3000 <ram_load+0x8d0>
		0000000000003094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x94b
    3098: 91000063     	add	x3, x3, #0x0
		0000000000003098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x94b
    309c: aa1303e1     	mov	x1, x19
    30a0: 52803be2     	mov	w2, #0x1df              // =479
    30a4: 94000000     	bl	0x30a4 <ram_load+0x974>
		00000000000030a4:  R_AARCH64_CALL26	_printk
    30a8: aa1403e0     	mov	x0, x20
    30ac: 94000000     	bl	0x30ac <ram_load+0x97c>
		00000000000030ac:  R_AARCH64_CALL26	kfree
    30b0: d5384108     	mrs	x8, SP_EL0
    30b4: f9438908     	ldr	x8, [x8, #0x710]
    30b8: f85f83a9     	ldur	x9, [x29, #-0x8]
    30bc: eb09011f     	cmp	x8, x9
    30c0: 540001a1     	b.ne	0x30f4 <ram_load+0x9c4>
    30c4: 910bc3ff     	add	sp, sp, #0x2f0
    30c8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    30cc: a94357f6     	ldp	x22, x21, [sp, #0x30]
    30d0: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    30d4: a94167fc     	ldp	x28, x25, [sp, #0x10]
    30d8: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    30dc: d50323bf     	autiasp
    30e0: d65f03c0     	ret
    30e4: 52800220     	mov	w0, #0x11               // =17
    30e8: aa1703e1     	mov	x1, x23
    30ec: 94000000     	bl	0x30ec <ram_load+0x9bc>
		00000000000030ec:  R_AARCH64_CALL26	__fortify_panic
    30f0: d42aa240     	brk	#0x5512
    30f4: 94000000     	bl	0x30f4 <ram_load+0x9c4>
		00000000000030f4:  R_AARCH64_CALL26	__stack_chk_fail
