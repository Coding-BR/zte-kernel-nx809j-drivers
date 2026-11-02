
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000036e0 <aw22xxx_para_store>:
    36e0: d503233f     	paciasp
    36e4: d105c3ff     	sub	sp, sp, #0x170
    36e8: a9117bfd     	stp	x29, x30, [sp, #0x110]
    36ec: a9126ffc     	stp	x28, x27, [sp, #0x120]
    36f0: a91367fa     	stp	x26, x25, [sp, #0x130]
    36f4: a9145ff8     	stp	x24, x23, [sp, #0x140]
    36f8: a91557f6     	stp	x22, x21, [sp, #0x150]
    36fc: a9164ff4     	stp	x20, x19, [sp, #0x160]
    3700: 910443fd     	add	x29, sp, #0x110
    3704: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003704:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e8
    3708: 91000000     	add	x0, x0, #0x0
		0000000000003708:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e8
    370c: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_store+0x48>
		000000000000370c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf68
    3710: 91000021     	add	x1, x1, #0x0
		0000000000003710:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf68
    3714: aa0303f7     	mov	x23, x3
    3718: aa0203f6     	mov	x22, x2
    371c: 94000000     	bl	0x371c <aw22xxx_para_store+0x3c>
		000000000000371c:  R_AARCH64_CALL26	_printk
    3720: d503201f     	nop
    3724: 90000008     	adrp	x8, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003724:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x38
    3728: 52819801     	mov	w1, #0xcc0              // =3264
    372c: 52800c82     	mov	w2, #0x64               // =100
    3730: f9400100     	ldr	x0, [x8]
		0000000000003730:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x38
    3734: 94000000     	bl	0x3734 <aw22xxx_para_store+0x54>
		0000000000003734:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    3738: aa0003f4     	mov	x20, x0
    373c: b4001f34     	cbz	x20, 0x3b20 <aw22xxx_para_store+0x440>
    3740: 9100e281     	add	x1, x20, #0x38
    3744: 9100f282     	add	x2, x20, #0x3c
    3748: 91006288     	add	x8, x20, #0x18
    374c: 91007289     	add	x9, x20, #0x1c
    3750: 9100828a     	add	x10, x20, #0x20
    3754: 9100928b     	add	x11, x20, #0x24
    3758: 9100a28c     	add	x12, x20, #0x28
    375c: 9100b28e     	add	x14, x20, #0x2c
    3760: 9100c290     	add	x16, x20, #0x30
    3764: 9100d291     	add	x17, x20, #0x34
    3768: 9101028d     	add	x13, x20, #0x40
    376c: 9101128f     	add	x15, x20, #0x44
    3770: aa1603e0     	mov	x0, x22
    3774: 91012296     	add	x22, x20, #0x48
    3778: 91013293     	add	x19, x20, #0x4c
    377c: 9101429c     	add	x28, x20, #0x50
    3780: 9101529b     	add	x27, x20, #0x54
    3784: 9101629a     	add	x26, x20, #0x58
    3788: 91017299     	add	x25, x20, #0x5c
    378c: 91018295     	add	x21, x20, #0x60
    3790: f81d03a2     	stur	x2, [x29, #-0x30]
    3794: f90027e2     	str	x2, [sp, #0x48]
    3798: 91001283     	add	x3, x20, #0x4
    379c: 91002284     	add	x4, x20, #0x8
    37a0: f81c83a1     	stur	x1, [x29, #-0x38]
    37a4: 91003285     	add	x5, x20, #0xc
    37a8: 91004286     	add	x6, x20, #0x10
    37ac: f90023e1     	str	x1, [sp, #0x40]
    37b0: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_store+0x48>
		00000000000037b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x125b
    37b4: 91000021     	add	x1, x1, #0x0
		00000000000037b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x125b
    37b8: 91005287     	add	x7, x20, #0x14
    37bc: aa1403e2     	mov	x2, x20
    37c0: f81f03b7     	stur	x23, [x29, #-0x10]
    37c4: a908d7f9     	stp	x25, x21, [sp, #0x88]
    37c8: aa0903f8     	mov	x24, x9
    37cc: aa0803f7     	mov	x23, x8
    37d0: a907ebfb     	stp	x27, x26, [sp, #0x78]
    37d4: a906f3f3     	stp	x19, x28, [sp, #0x68]
    37d8: f90033f6     	str	x22, [sp, #0x60]
    37dc: f81e83af     	stur	x15, [x29, #-0x18]
    37e0: f9002fef     	str	x15, [sp, #0x58]
    37e4: f81d83ad     	stur	x13, [x29, #-0x28]
    37e8: f9002bed     	str	x13, [sp, #0x50]
    37ec: f81c03b1     	stur	x17, [x29, #-0x40]
    37f0: f9001ff1     	str	x17, [sp, #0x38]
    37f4: f81b83b0     	stur	x16, [x29, #-0x48]
    37f8: f9001bf0     	str	x16, [sp, #0x30]
    37fc: f81b03ae     	stur	x14, [x29, #-0x50]
    3800: f90017ee     	str	x14, [sp, #0x28]
    3804: f81a83ac     	stur	x12, [x29, #-0x58]
    3808: f90013ec     	str	x12, [sp, #0x20]
    380c: f81a03ab     	stur	x11, [x29, #-0x60]
    3810: f9000feb     	str	x11, [sp, #0x18]
    3814: f81e03aa     	stur	x10, [x29, #-0x20]
    3818: a900abe9     	stp	x9, x10, [sp, #0x8]
    381c: f90003e8     	str	x8, [sp]
    3820: 94000000     	bl	0x3820 <aw22xxx_para_store+0x140>
		0000000000003820:  R_AARCH64_CALL26	sscanf
    3824: 7100641f     	cmp	w0, #0x19
    3828: 540001a0     	b.eq	0x385c <aw22xxx_para_store+0x17c>
    382c: aa1403e0     	mov	x0, x20
    3830: 94000000     	bl	0x3830 <aw22xxx_para_store+0x150>
		0000000000003830:  R_AARCH64_CALL26	kfree
    3834: f85f03a0     	ldur	x0, [x29, #-0x10]
    3838: a9564ff4     	ldp	x20, x19, [sp, #0x160]
    383c: a95557f6     	ldp	x22, x21, [sp, #0x150]
    3840: a9545ff8     	ldp	x24, x23, [sp, #0x140]
    3844: a95367fa     	ldp	x26, x25, [sp, #0x130]
    3848: a9526ffc     	ldp	x28, x27, [sp, #0x120]
    384c: a9517bfd     	ldp	x29, x30, [sp, #0x110]
    3850: 9105c3ff     	add	sp, sp, #0x170
    3854: d50323bf     	autiasp
    3858: d65f03c0     	ret
    385c: a93963b7     	stp	x23, x24, [x29, #-0x70]
    3860: f85e83b8     	ldur	x24, [x29, #-0x18]
    3864: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003864:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa13
    3868: 91000000     	add	x0, x0, #0x0
		0000000000003868:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa13
    386c: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_store+0x48>
		000000000000386c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf68
    3870: 91000021     	add	x1, x1, #0x0
		0000000000003870:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf68
    3874: 52800322     	mov	w2, #0x19               // =25
    3878: 94000000     	bl	0x3878 <aw22xxx_para_store+0x198>
		0000000000003878:  R_AARCH64_CALL26	_printk
    387c: 90000008     	adrp	x8, 0x3000 <aw22xxx_imax_store+0x48>
		000000000000387c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x61b4
    3880: b9400109     	ldr	w9, [x8]
		0000000000003880:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x61b4
    3884: 710f9d3f     	cmp	w9, #0x3e7
    3888: 54001248     	b.hi	0x3ad0 <aw22xxx_para_store+0x3f0>
    388c: 5280032a     	mov	w10, #0x19              // =25
    3890: 528c350e     	mov	w14, #0x61a8            // =25000
    3894: b940028d     	ldr	w13, [x20]
    3898: 9baa7d2b     	umull	x11, w9, w10
    389c: 92407d6a     	and	x10, x11, #0xffffffff
    38a0: 9100054c     	add	x12, x10, #0x1
    38a4: 9000000a     	adrp	x10, 0x3000 <aw22xxx_imax_store+0x48>
		00000000000038a4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x5
    38a8: 9100014a     	add	x10, x10, #0x0
		00000000000038a8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x5
    38ac: 6b0e019f     	cmp	w12, w14
    38b0: 382b694d     	strb	w13, [x10, x11]
    38b4: 540011a0     	b.eq	0x3ae8 <aw22xxx_para_store+0x408>
    38b8: 2a0b03eb     	mov	w11, w11
    38bc: a97943a0     	ldp	x0, x16, [x29, #-0x70]
    38c0: 9100096d     	add	x13, x11, #0x2
    38c4: f85e03b1     	ldur	x17, [x29, #-0x20]
    38c8: b840428f     	ldur	w15, [x20, #0x4]
    38cc: 6b0e01bf     	cmp	w13, w14
    38d0: 382c694f     	strb	w15, [x10, x12]
    38d4: 540010a0     	b.eq	0x3ae8 <aw22xxx_para_store+0x408>
    38d8: 91000d6c     	add	x12, x11, #0x3
    38dc: b840828f     	ldur	w15, [x20, #0x8]
    38e0: 6b0e019f     	cmp	w12, w14
    38e4: 382d694f     	strb	w15, [x10, x13]
    38e8: 54001000     	b.eq	0x3ae8 <aw22xxx_para_store+0x408>
    38ec: 9100116d     	add	x13, x11, #0x4
    38f0: b840c28f     	ldur	w15, [x20, #0xc]
    38f4: 6b0e01bf     	cmp	w13, w14
    38f8: 382c694f     	strb	w15, [x10, x12]
    38fc: 54000f60     	b.eq	0x3ae8 <aw22xxx_para_store+0x408>
    3900: 9100156e     	add	x14, x11, #0x5
    3904: 528c350f     	mov	w15, #0x61a8            // =25000
    3908: b841028c     	ldur	w12, [x20, #0x10]
    390c: 6b0f01df     	cmp	w14, w15
    3910: 382d694c     	strb	w12, [x10, x13]
    3914: 54000ea0     	b.eq	0x3ae8 <aw22xxx_para_store+0x408>
    3918: 9100196c     	add	x12, x11, #0x6
    391c: b841428d     	ldur	w13, [x20, #0x14]
    3920: 6b0f019f     	cmp	w12, w15
    3924: 382e694d     	strb	w13, [x10, x14]
    3928: 54000e00     	b.eq	0x3ae8 <aw22xxx_para_store+0x408>
    392c: 91001d6d     	add	x13, x11, #0x7
    3930: 528c350e     	mov	w14, #0x61a8            // =25000
    3934: b940000f     	ldr	w15, [x0]
    3938: 6b0e01bf     	cmp	w13, w14
    393c: 382c694f     	strb	w15, [x10, x12]
    3940: 54000d40     	b.eq	0x3ae8 <aw22xxx_para_store+0x408>
    3944: 9100216c     	add	x12, x11, #0x8
    3948: b940020f     	ldr	w15, [x16]
    394c: 6b0e019f     	cmp	w12, w14
    3950: 382d694f     	strb	w15, [x10, x13]
    3954: 54000ca0     	b.eq	0x3ae8 <aw22xxx_para_store+0x408>
    3958: b940022f     	ldr	w15, [x17]
    395c: a97d47a0     	ldp	x0, x17, [x29, #-0x30]
    3960: 382c694f     	strb	w15, [x10, x12]
    3964: 9100256d     	add	x13, x11, #0x9
    3968: a97c07a2     	ldp	x2, x1, [x29, #-0x40]
    396c: 6b0e01bf     	cmp	w13, w14
    3970: a97b0fa4     	ldp	x4, x3, [x29, #-0x50]
    3974: a97a17af     	ldp	x15, x5, [x29, #-0x60]
    3978: 54000b80     	b.eq	0x3ae8 <aw22xxx_para_store+0x408>
    397c: 9100296c     	add	x12, x11, #0xa
    3980: b94001ef     	ldr	w15, [x15]
    3984: 6b0e019f     	cmp	w12, w14
    3988: 382d694f     	strb	w15, [x10, x13]
    398c: 54000ae0     	b.eq	0x3ae8 <aw22xxx_para_store+0x408>
    3990: 91002d6d     	add	x13, x11, #0xb
    3994: b94000af     	ldr	w15, [x5]
    3998: 6b0e01bf     	cmp	w13, w14
    399c: 382c694f     	strb	w15, [x10, x12]
    39a0: 54000a40     	b.eq	0x3ae8 <aw22xxx_para_store+0x408>
    39a4: 9100316c     	add	x12, x11, #0xc
    39a8: b940008f     	ldr	w15, [x4]
    39ac: 6b0e019f     	cmp	w12, w14
    39b0: 382d694f     	strb	w15, [x10, x13]
    39b4: 540009a0     	b.eq	0x3ae8 <aw22xxx_para_store+0x408>
    39b8: 9100356d     	add	x13, x11, #0xd
    39bc: b940006f     	ldr	w15, [x3]
    39c0: 6b0e01bf     	cmp	w13, w14
    39c4: 382c694f     	strb	w15, [x10, x12]
    39c8: 54000900     	b.eq	0x3ae8 <aw22xxx_para_store+0x408>
    39cc: 9100396c     	add	x12, x11, #0xe
    39d0: b940004f     	ldr	w15, [x2]
    39d4: 6b0e019f     	cmp	w12, w14
    39d8: 382d694f     	strb	w15, [x10, x13]
    39dc: 54000860     	b.eq	0x3ae8 <aw22xxx_para_store+0x408>
    39e0: 91003d6d     	add	x13, x11, #0xf
    39e4: b940002f     	ldr	w15, [x1]
    39e8: 6b0e01bf     	cmp	w13, w14
    39ec: 382c694f     	strb	w15, [x10, x12]
    39f0: 540007c0     	b.eq	0x3ae8 <aw22xxx_para_store+0x408>
    39f4: 9100416c     	add	x12, x11, #0x10
    39f8: b940000f     	ldr	w15, [x0]
    39fc: 6b0e019f     	cmp	w12, w14
    3a00: 382d694f     	strb	w15, [x10, x13]
    3a04: 54000720     	b.eq	0x3ae8 <aw22xxx_para_store+0x408>
    3a08: 9100456d     	add	x13, x11, #0x11
    3a0c: b940022f     	ldr	w15, [x17]
    3a10: 6b0e01bf     	cmp	w13, w14
    3a14: 382c694f     	strb	w15, [x10, x12]
    3a18: 54000680     	b.eq	0x3ae8 <aw22xxx_para_store+0x408>
    3a1c: 9100496c     	add	x12, x11, #0x12
    3a20: b940030f     	ldr	w15, [x24]
    3a24: 6b0e019f     	cmp	w12, w14
    3a28: 382d694f     	strb	w15, [x10, x13]
    3a2c: 540005e0     	b.eq	0x3ae8 <aw22xxx_para_store+0x408>
    3a30: 91004d6d     	add	x13, x11, #0x13
    3a34: b94002cf     	ldr	w15, [x22]
    3a38: 6b0e01bf     	cmp	w13, w14
    3a3c: 382c694f     	strb	w15, [x10, x12]
    3a40: 54000540     	b.eq	0x3ae8 <aw22xxx_para_store+0x408>
    3a44: 9100516c     	add	x12, x11, #0x14
    3a48: b940026f     	ldr	w15, [x19]
    3a4c: 6b0e019f     	cmp	w12, w14
    3a50: 382d694f     	strb	w15, [x10, x13]
    3a54: 540004a0     	b.eq	0x3ae8 <aw22xxx_para_store+0x408>
    3a58: 9100556d     	add	x13, x11, #0x15
    3a5c: b940038f     	ldr	w15, [x28]
    3a60: 6b0e01bf     	cmp	w13, w14
    3a64: 382c694f     	strb	w15, [x10, x12]
    3a68: 54000400     	b.eq	0x3ae8 <aw22xxx_para_store+0x408>
    3a6c: 9100596c     	add	x12, x11, #0x16
    3a70: b940036f     	ldr	w15, [x27]
    3a74: 6b0e019f     	cmp	w12, w14
    3a78: 382d694f     	strb	w15, [x10, x13]
    3a7c: 54000360     	b.eq	0x3ae8 <aw22xxx_para_store+0x408>
    3a80: 91005d6d     	add	x13, x11, #0x17
    3a84: b940034f     	ldr	w15, [x26]
    3a88: 6b0e01bf     	cmp	w13, w14
    3a8c: 382c694f     	strb	w15, [x10, x12]
    3a90: 540002c0     	b.eq	0x3ae8 <aw22xxx_para_store+0x408>
    3a94: 9100616b     	add	x11, x11, #0x18
    3a98: b940032c     	ldr	w12, [x25]
    3a9c: 6b0e017f     	cmp	w11, w14
    3aa0: 382d694c     	strb	w12, [x10, x13]
    3aa4: 54000220     	b.eq	0x3ae8 <aw22xxx_para_store+0x408>
    3aa8: b94002ac     	ldr	w12, [x21]
    3aac: 11000522     	add	w2, w9, #0x1
    3ab0: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003ab0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1136
    3ab4: 91000000     	add	x0, x0, #0x0
		0000000000003ab4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1136
    3ab8: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003ab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf68
    3abc: 91000021     	add	x1, x1, #0x0
		0000000000003abc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf68
    3ac0: 382b694c     	strb	w12, [x10, x11]
    3ac4: b9000102     	str	w2, [x8]
		0000000000003ac4:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x61b4
    3ac8: 94000000     	bl	0x3ac8 <aw22xxx_para_store+0x3e8>
		0000000000003ac8:  R_AARCH64_CALL26	_printk
    3acc: 17ffff58     	b	0x382c <aw22xxx_para_store+0x14c>
    3ad0: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003ad0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe74
    3ad4: 91000000     	add	x0, x0, #0x0
		0000000000003ad4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe74
    3ad8: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003ad8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf68
    3adc: 91000021     	add	x1, x1, #0x0
		0000000000003adc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf68
    3ae0: 94000000     	bl	0x3ae0 <aw22xxx_para_store+0x400>
		0000000000003ae0:  R_AARCH64_CALL26	_printk
    3ae4: 17ffff52     	b	0x382c <aw22xxx_para_store+0x14c>
    3ae8: d4200020     	brk	#0x1
    3aec: 90000008     	adrp	x8, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003aec:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x38
    3af0: d5384115     	mrs	x21, SP_EL0
    3af4: f9402ab3     	ldr	x19, [x21, #0x50]
    3af8: f9400100     	ldr	x0, [x8]
		0000000000003af8:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x38
    3afc: 90000008     	adrp	x8, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003afc:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags
    3b00: 91000108     	add	x8, x8, #0x0
		0000000000003b00:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags
    3b04: 52819801     	mov	w1, #0xcc0              // =3264
    3b08: 52800c82     	mov	w2, #0x64               // =100
    3b0c: f9002aa8     	str	x8, [x21, #0x50]
    3b10: 94000000     	bl	0x3b10 <aw22xxx_para_store+0x430>
		0000000000003b10:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    3b14: aa0003f4     	mov	x20, x0
    3b18: f9002ab3     	str	x19, [x21, #0x50]
    3b1c: b5ffe134     	cbnz	x20, 0x3740 <aw22xxx_para_store+0x60>
    3b20: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003b20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fc
    3b24: 91000000     	add	x0, x0, #0x0
		0000000000003b24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fc
    3b28: 94000000     	bl	0x3b28 <aw22xxx_para_store+0x448>
		0000000000003b28:  R_AARCH64_CALL26	_printk
    3b2c: 928001a0     	mov	x0, #-0xe               // =-14
    3b30: 17ffff42     	b	0x3838 <aw22xxx_para_store+0x158>
