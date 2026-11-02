
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000027c8 <aw22xxx_get_fwname>:
    27c8: d503233f     	paciasp
    27cc: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    27d0: f9000bf7     	str	x23, [sp, #0x10]
    27d4: a90257f6     	stp	x22, x21, [sp, #0x20]
    27d8: a9034ff4     	stp	x20, x19, [sp, #0x30]
    27dc: 910003fd     	mov	x29, sp
    27e0: 53187c16     	lsr	w22, w0, #24
    27e4: 90000017     	adrp	x23, 0x2000 <aw22xxx_reg_show+0xcc>
		00000000000027e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x90e
    27e8: 910002f7     	add	x23, x23, #0x0
		00000000000027e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x90e
    27ec: 2a0003f3     	mov	w19, w0
    27f0: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		00000000000027f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x178a
    27f4: 91000000     	add	x0, x0, #0x0
		00000000000027f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x178a
    27f8: aa1703e1     	mov	x1, x23
    27fc: 52810422     	mov	w2, #0x821              // =2081
    2800: 2a1603e3     	mov	w3, w22
    2804: 94000000     	bl	0x2804 <aw22xxx_get_fwname+0x3c>
		0000000000002804:  R_AARCH64_CALL26	_printk
    2808: 530c5e74     	ubfx	w20, w19, #12, #12
    280c: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		000000000000280c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13d
    2810: 91000000     	add	x0, x0, #0x0
		0000000000002810:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13d
    2814: aa1703e1     	mov	x1, x23
    2818: 52810462     	mov	w2, #0x823              // =2083
    281c: 2a1403e3     	mov	w3, w20
    2820: 94000000     	bl	0x2820 <aw22xxx_get_fwname+0x58>
		0000000000002820:  R_AARCH64_CALL26	_printk
    2824: 12002e75     	and	w21, w19, #0xfff
    2828: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002828:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1601
    282c: 91000000     	add	x0, x0, #0x0
		000000000000282c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1601
    2830: aa1703e1     	mov	x1, x23
    2834: 528104a2     	mov	w2, #0x825              // =2085
    2838: 2a1503e3     	mov	w3, w21
    283c: 94000000     	bl	0x283c <aw22xxx_get_fwname+0x74>
		000000000000283c:  R_AARCH64_CALL26	_printk
    2840: 710006df     	cmp	w22, #0x1
    2844: 5400024c     	b.gt	0x288c <aw22xxx_get_fwname+0xc4>
    2848: 34000536     	cbz	w22, 0x28ec <aw22xxx_get_fwname+0x124>
    284c: 710006df     	cmp	w22, #0x1
    2850: 54000421     	b.ne	0x28d4 <aw22xxx_get_fwname+0x10c>
    2854: 90000013     	adrp	x19, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002854:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6220
    2858: 91000273     	add	x19, x19, #0x0
		0000000000002858:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x6220
    285c: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		000000000000285c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd30
    2860: 91000021     	add	x1, x1, #0x0
		0000000000002860:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd30
    2864: aa1303e0     	mov	x0, x19
    2868: 2a1403e2     	mov	w2, w20
    286c: 2a1503e3     	mov	w3, w21
    2870: 94000000     	bl	0x2870 <aw22xxx_get_fwname+0xa8>
		0000000000002870:  R_AARCH64_CALL26	sprintf
    2874: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002874:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a2
    2878: 91000000     	add	x0, x0, #0x0
		0000000000002878:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a2
    287c: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		000000000000287c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x90e
    2880: 91000021     	add	x1, x1, #0x0
		0000000000002880:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x90e
    2884: 52810662     	mov	w2, #0x833              // =2099
    2888: 14000030     	b	0x2948 <aw22xxx_get_fwname+0x180>
    288c: 71000adf     	cmp	w22, #0x2
    2890: 54000420     	b.eq	0x2914 <aw22xxx_get_fwname+0x14c>
    2894: 71000edf     	cmp	w22, #0x3
    2898: 540001e1     	b.ne	0x28d4 <aw22xxx_get_fwname+0x10c>
    289c: 90000013     	adrp	x19, 0x2000 <aw22xxx_reg_show+0xcc>
		000000000000289c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6220
    28a0: 91000273     	add	x19, x19, #0x0
		00000000000028a0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x6220
    28a4: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		00000000000028a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x840
    28a8: 91000021     	add	x1, x1, #0x0
		00000000000028a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x840
    28ac: aa1303e0     	mov	x0, x19
    28b0: 2a1403e2     	mov	w2, w20
    28b4: 2a1503e3     	mov	w3, w21
    28b8: 94000000     	bl	0x28b8 <aw22xxx_get_fwname+0xf0>
		00000000000028b8:  R_AARCH64_CALL26	sprintf
    28bc: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		00000000000028bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a2
    28c0: 91000000     	add	x0, x0, #0x0
		00000000000028c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a2
    28c4: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		00000000000028c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x90e
    28c8: 91000021     	add	x1, x1, #0x0
		00000000000028c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x90e
    28cc: 52810762     	mov	w2, #0x83b              // =2107
    28d0: 1400001e     	b	0x2948 <aw22xxx_get_fwname+0x180>
    28d4: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		00000000000028d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd02
    28d8: 91000000     	add	x0, x0, #0x0
		00000000000028d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd02
    28dc: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		00000000000028dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x90e
    28e0: 91000021     	add	x1, x1, #0x0
		00000000000028e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x90e
    28e4: 528107c2     	mov	w2, #0x83e              // =2110
    28e8: 14000008     	b	0x2908 <aw22xxx_get_fwname+0x140>
    28ec: 710032bf     	cmp	w21, #0xc
    28f0: 540003c3     	b.lo	0x2968 <aw22xxx_get_fwname+0x1a0>
    28f4: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		00000000000028f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd02
    28f8: 91000000     	add	x0, x0, #0x0
		00000000000028f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd02
    28fc: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		00000000000028fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x90e
    2900: 91000021     	add	x1, x1, #0x0
		0000000000002900:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x90e
    2904: 52810542     	mov	w2, #0x82a              // =2090
    2908: 2a1303e3     	mov	w3, w19
    290c: 94000000     	bl	0x290c <aw22xxx_get_fwname+0x144>
		000000000000290c:  R_AARCH64_CALL26	_printk
    2910: 14000010     	b	0x2950 <aw22xxx_get_fwname+0x188>
    2914: 90000013     	adrp	x19, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002914:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6220
    2918: 91000273     	add	x19, x19, #0x0
		0000000000002918:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x6220
    291c: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		000000000000291c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x161f
    2920: 91000021     	add	x1, x1, #0x0
		0000000000002920:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x161f
    2924: aa1303e0     	mov	x0, x19
    2928: 2a1403e2     	mov	w2, w20
    292c: 2a1503e3     	mov	w3, w21
    2930: 94000000     	bl	0x2930 <aw22xxx_get_fwname+0x168>
		0000000000002930:  R_AARCH64_CALL26	sprintf
    2934: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002934:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a2
    2938: 91000000     	add	x0, x0, #0x0
		0000000000002938:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a2
    293c: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		000000000000293c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x90e
    2940: 91000021     	add	x1, x1, #0x0
		0000000000002940:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x90e
    2944: 528106e2     	mov	w2, #0x837              // =2103
    2948: aa1303e3     	mov	x3, x19
    294c: 94000000     	bl	0x294c <aw22xxx_get_fwname+0x184>
		000000000000294c:  R_AARCH64_CALL26	_printk
    2950: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    2954: f9400bf7     	ldr	x23, [sp, #0x10]
    2958: a94257f6     	ldp	x22, x21, [sp, #0x20]
    295c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    2960: d50323bf     	autiasp
    2964: d65f03c0     	ret
    2968: 90000008     	adrp	x8, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002968:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x61c0
    296c: f9400108     	ldr	x8, [x8]
		000000000000296c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x61c0
    2970: f8735913     	ldr	x19, [x8, w19, uxtw #3]
    2974: aa1303e0     	mov	x0, x19
    2978: 94000000     	bl	0x2978 <aw22xxx_get_fwname+0x1b0>
		0000000000002978:  R_AARCH64_CALL26	strlen
    297c: 91000402     	add	x2, x0, #0x1
    2980: f101045f     	cmp	x2, #0x41
    2984: 540001a2     	b.hs	0x29b8 <aw22xxx_get_fwname+0x1f0>
    2988: 90000014     	adrp	x20, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002988:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6220
    298c: 91000294     	add	x20, x20, #0x0
		000000000000298c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x6220
    2990: aa1303e1     	mov	x1, x19
    2994: aa1403e0     	mov	x0, x20
    2998: 94000000     	bl	0x2998 <aw22xxx_get_fwname+0x1d0>
		0000000000002998:  R_AARCH64_CALL26	memcpy
    299c: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		000000000000299c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a2
    29a0: 91000000     	add	x0, x0, #0x0
		00000000000029a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a2
    29a4: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		00000000000029a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x90e
    29a8: 91000021     	add	x1, x1, #0x0
		00000000000029a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x90e
    29ac: 528105c2     	mov	w2, #0x82e              // =2094
    29b0: aa1403e3     	mov	x3, x20
    29b4: 17ffffe6     	b	0x294c <aw22xxx_get_fwname+0x184>
    29b8: 528003e0     	mov	w0, #0x1f               // =31
    29bc: 52800801     	mov	w1, #0x40               // =64
    29c0: 94000000     	bl	0x29c0 <aw22xxx_get_fwname+0x1f8>
		00000000000029c0:  R_AARCH64_CALL26	__fortify_panic
