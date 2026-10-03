
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003844 <aw22xxx_para_store>:
    3844: d503233f     	paciasp
    3848: d105c3ff     	sub	sp, sp, #0x170
    384c: a9117bfd     	stp	x29, x30, [sp, #0x110]
    3850: a9126ffc     	stp	x28, x27, [sp, #0x120]
    3854: a91367fa     	stp	x26, x25, [sp, #0x130]
    3858: a9145ff8     	stp	x24, x23, [sp, #0x140]
    385c: a91557f6     	stp	x22, x21, [sp, #0x150]
    3860: a9164ff4     	stp	x20, x19, [sp, #0x160]
    3864: 910443fd     	add	x29, sp, #0x110
    3868: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_show+0xd0>
		0000000000003868:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x6e8
    386c: 91000000     	add	x0, x0, #0x0
		000000000000386c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x6e8
    3870: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_show+0xd0>
		0000000000003870:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xf68
    3874: 91000021     	add	x1, x1, #0x0
		0000000000003874:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xf68
    3878: aa0303f7     	mov	x23, x3
    387c: aa0203f6     	mov	x22, x2
    3880: 94000000     	bl	0x3880 <aw22xxx_para_store+0x3c>
		0000000000003880:  R_AARCH64_CALL26	_printk
    3884: d503201f     	nop
    3888: 90000008     	adrp	x8, 0x3000 <aw22xxx_imax_show+0xd0>
		0000000000003888:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x38
    388c: 52819801     	mov	w1, #0xcc0              // =3264
    3890: 52800c82     	mov	w2, #0x64               // =100
    3894: f9400100     	ldr	x0, [x8]
		0000000000003894:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x38
    3898: 94000000     	bl	0x3898 <aw22xxx_para_store+0x54>
		0000000000003898:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    389c: aa0003f4     	mov	x20, x0
    38a0: b4001f34     	cbz	x20, 0x3c84 <aw22xxx_para_store+0x440>
    38a4: 9100e281     	add	x1, x20, #0x38
    38a8: 9100f282     	add	x2, x20, #0x3c
    38ac: 91006288     	add	x8, x20, #0x18
    38b0: 91007289     	add	x9, x20, #0x1c
    38b4: 9100828a     	add	x10, x20, #0x20
    38b8: 9100928b     	add	x11, x20, #0x24
    38bc: 9100a28c     	add	x12, x20, #0x28
    38c0: 9100b28e     	add	x14, x20, #0x2c
    38c4: 9100c290     	add	x16, x20, #0x30
    38c8: 9100d291     	add	x17, x20, #0x34
    38cc: 9101028d     	add	x13, x20, #0x40
    38d0: 9101128f     	add	x15, x20, #0x44
    38d4: aa1603e0     	mov	x0, x22
    38d8: 91012296     	add	x22, x20, #0x48
    38dc: 91013293     	add	x19, x20, #0x4c
    38e0: 9101429c     	add	x28, x20, #0x50
    38e4: 9101529b     	add	x27, x20, #0x54
    38e8: 9101629a     	add	x26, x20, #0x58
    38ec: 91017299     	add	x25, x20, #0x5c
    38f0: 91018295     	add	x21, x20, #0x60
    38f4: f81d03a2     	stur	x2, [x29, #-0x30]
    38f8: f90027e2     	str	x2, [sp, #0x48]
    38fc: 91001283     	add	x3, x20, #0x4
    3900: 91002284     	add	x4, x20, #0x8
    3904: f81c83a1     	stur	x1, [x29, #-0x38]
    3908: 91003285     	add	x5, x20, #0xc
    390c: 91004286     	add	x6, x20, #0x10
    3910: f90023e1     	str	x1, [sp, #0x40]
    3914: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_show+0xd0>
		0000000000003914:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x125b
    3918: 91000021     	add	x1, x1, #0x0
		0000000000003918:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x125b
    391c: 91005287     	add	x7, x20, #0x14
    3920: aa1403e2     	mov	x2, x20
    3924: f81f03b7     	stur	x23, [x29, #-0x10]
    3928: a908d7f9     	stp	x25, x21, [sp, #0x88]
    392c: aa0903f8     	mov	x24, x9
    3930: aa0803f7     	mov	x23, x8
    3934: a907ebfb     	stp	x27, x26, [sp, #0x78]
    3938: a906f3f3     	stp	x19, x28, [sp, #0x68]
    393c: f90033f6     	str	x22, [sp, #0x60]
    3940: f81e83af     	stur	x15, [x29, #-0x18]
    3944: f9002fef     	str	x15, [sp, #0x58]
    3948: f81d83ad     	stur	x13, [x29, #-0x28]
    394c: f9002bed     	str	x13, [sp, #0x50]
    3950: f81c03b1     	stur	x17, [x29, #-0x40]
    3954: f9001ff1     	str	x17, [sp, #0x38]
    3958: f81b83b0     	stur	x16, [x29, #-0x48]
    395c: f9001bf0     	str	x16, [sp, #0x30]
    3960: f81b03ae     	stur	x14, [x29, #-0x50]
    3964: f90017ee     	str	x14, [sp, #0x28]
    3968: f81a83ac     	stur	x12, [x29, #-0x58]
    396c: f90013ec     	str	x12, [sp, #0x20]
    3970: f81a03ab     	stur	x11, [x29, #-0x60]
    3974: f9000feb     	str	x11, [sp, #0x18]
    3978: f81e03aa     	stur	x10, [x29, #-0x20]
    397c: a900abe9     	stp	x9, x10, [sp, #0x8]
    3980: f90003e8     	str	x8, [sp]
    3984: 94000000     	bl	0x3984 <aw22xxx_para_store+0x140>
		0000000000003984:  R_AARCH64_CALL26	sscanf
    3988: 7100641f     	cmp	w0, #0x19
    398c: 540001a0     	b.eq	0x39c0 <aw22xxx_para_store+0x17c>
    3990: aa1403e0     	mov	x0, x20
    3994: 94000000     	bl	0x3994 <aw22xxx_para_store+0x150>
		0000000000003994:  R_AARCH64_CALL26	kfree
    3998: f85f03a0     	ldur	x0, [x29, #-0x10]
    399c: a9564ff4     	ldp	x20, x19, [sp, #0x160]
    39a0: a95557f6     	ldp	x22, x21, [sp, #0x150]
    39a4: a9545ff8     	ldp	x24, x23, [sp, #0x140]
    39a8: a95367fa     	ldp	x26, x25, [sp, #0x130]
    39ac: a9526ffc     	ldp	x28, x27, [sp, #0x120]
    39b0: a9517bfd     	ldp	x29, x30, [sp, #0x110]
    39b4: 9105c3ff     	add	sp, sp, #0x170
    39b8: d50323bf     	autiasp
    39bc: d65f03c0     	ret
    39c0: a93963b7     	stp	x23, x24, [x29, #-0x70]
    39c4: f85e83b8     	ldur	x24, [x29, #-0x18]
    39c8: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_show+0xd0>
		00000000000039c8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xa13
    39cc: 91000000     	add	x0, x0, #0x0
		00000000000039cc:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xa13
    39d0: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_show+0xd0>
		00000000000039d0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xf68
    39d4: 91000021     	add	x1, x1, #0x0
		00000000000039d4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xf68
    39d8: 52800322     	mov	w2, #0x19               // =25
    39dc: 94000000     	bl	0x39dc <aw22xxx_para_store+0x198>
		00000000000039dc:  R_AARCH64_CALL26	_printk
    39e0: 90000008     	adrp	x8, 0x3000 <aw22xxx_imax_show+0xd0>
		00000000000039e0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x61b4
    39e4: b9400109     	ldr	w9, [x8]
		00000000000039e4:  R_AARCH64_LDST32_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b4
    39e8: 710f9d3f     	cmp	w9, #0x3e7
    39ec: 54001248     	b.hi	0x3c34 <aw22xxx_para_store+0x3f0>
    39f0: 5280032a     	mov	w10, #0x19              // =25
    39f4: 528c350e     	mov	w14, #0x61a8            // =25000
    39f8: b940028d     	ldr	w13, [x20]
    39fc: 9baa7d2b     	umull	x11, w9, w10
    3a00: 92407d6a     	and	x10, x11, #0xffffffff
    3a04: 9100054c     	add	x12, x10, #0x1
    3a08: 9000000a     	adrp	x10, 0x3000 <aw22xxx_imax_show+0xd0>
		0000000000003a08:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x5
    3a0c: 9100014a     	add	x10, x10, #0x0
		0000000000003a0c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_bss_base+0x5
    3a10: 6b0e019f     	cmp	w12, w14
    3a14: 382b694d     	strb	w13, [x10, x11]
    3a18: 540011a0     	b.eq	0x3c4c <aw22xxx_para_store+0x408>
    3a1c: 2a0b03eb     	mov	w11, w11
    3a20: a97943a0     	ldp	x0, x16, [x29, #-0x70]
    3a24: 9100096d     	add	x13, x11, #0x2
    3a28: f85e03b1     	ldur	x17, [x29, #-0x20]
    3a2c: b840428f     	ldur	w15, [x20, #0x4]
    3a30: 6b0e01bf     	cmp	w13, w14
    3a34: 382c694f     	strb	w15, [x10, x12]
    3a38: 540010a0     	b.eq	0x3c4c <aw22xxx_para_store+0x408>
    3a3c: 91000d6c     	add	x12, x11, #0x3
    3a40: b840828f     	ldur	w15, [x20, #0x8]
    3a44: 6b0e019f     	cmp	w12, w14
    3a48: 382d694f     	strb	w15, [x10, x13]
    3a4c: 54001000     	b.eq	0x3c4c <aw22xxx_para_store+0x408>
    3a50: 9100116d     	add	x13, x11, #0x4
    3a54: b840c28f     	ldur	w15, [x20, #0xc]
    3a58: 6b0e01bf     	cmp	w13, w14
    3a5c: 382c694f     	strb	w15, [x10, x12]
    3a60: 54000f60     	b.eq	0x3c4c <aw22xxx_para_store+0x408>
    3a64: 9100156e     	add	x14, x11, #0x5
    3a68: 528c350f     	mov	w15, #0x61a8            // =25000
    3a6c: b841028c     	ldur	w12, [x20, #0x10]
    3a70: 6b0f01df     	cmp	w14, w15
    3a74: 382d694c     	strb	w12, [x10, x13]
    3a78: 54000ea0     	b.eq	0x3c4c <aw22xxx_para_store+0x408>
    3a7c: 9100196c     	add	x12, x11, #0x6
    3a80: b841428d     	ldur	w13, [x20, #0x14]
    3a84: 6b0f019f     	cmp	w12, w15
    3a88: 382e694d     	strb	w13, [x10, x14]
    3a8c: 54000e00     	b.eq	0x3c4c <aw22xxx_para_store+0x408>
    3a90: 91001d6d     	add	x13, x11, #0x7
    3a94: 528c350e     	mov	w14, #0x61a8            // =25000
    3a98: b940000f     	ldr	w15, [x0]
    3a9c: 6b0e01bf     	cmp	w13, w14
    3aa0: 382c694f     	strb	w15, [x10, x12]
    3aa4: 54000d40     	b.eq	0x3c4c <aw22xxx_para_store+0x408>
    3aa8: 9100216c     	add	x12, x11, #0x8
    3aac: b940020f     	ldr	w15, [x16]
    3ab0: 6b0e019f     	cmp	w12, w14
    3ab4: 382d694f     	strb	w15, [x10, x13]
    3ab8: 54000ca0     	b.eq	0x3c4c <aw22xxx_para_store+0x408>
    3abc: b940022f     	ldr	w15, [x17]
    3ac0: a97d47a0     	ldp	x0, x17, [x29, #-0x30]
    3ac4: 382c694f     	strb	w15, [x10, x12]
    3ac8: 9100256d     	add	x13, x11, #0x9
    3acc: a97c07a2     	ldp	x2, x1, [x29, #-0x40]
    3ad0: 6b0e01bf     	cmp	w13, w14
    3ad4: a97b0fa4     	ldp	x4, x3, [x29, #-0x50]
    3ad8: a97a17af     	ldp	x15, x5, [x29, #-0x60]
    3adc: 54000b80     	b.eq	0x3c4c <aw22xxx_para_store+0x408>
    3ae0: 9100296c     	add	x12, x11, #0xa
    3ae4: b94001ef     	ldr	w15, [x15]
    3ae8: 6b0e019f     	cmp	w12, w14
    3aec: 382d694f     	strb	w15, [x10, x13]
    3af0: 54000ae0     	b.eq	0x3c4c <aw22xxx_para_store+0x408>
    3af4: 91002d6d     	add	x13, x11, #0xb
    3af8: b94000af     	ldr	w15, [x5]
    3afc: 6b0e01bf     	cmp	w13, w14
    3b00: 382c694f     	strb	w15, [x10, x12]
    3b04: 54000a40     	b.eq	0x3c4c <aw22xxx_para_store+0x408>
    3b08: 9100316c     	add	x12, x11, #0xc
    3b0c: b940008f     	ldr	w15, [x4]
    3b10: 6b0e019f     	cmp	w12, w14
    3b14: 382d694f     	strb	w15, [x10, x13]
    3b18: 540009a0     	b.eq	0x3c4c <aw22xxx_para_store+0x408>
    3b1c: 9100356d     	add	x13, x11, #0xd
    3b20: b940006f     	ldr	w15, [x3]
    3b24: 6b0e01bf     	cmp	w13, w14
    3b28: 382c694f     	strb	w15, [x10, x12]
    3b2c: 54000900     	b.eq	0x3c4c <aw22xxx_para_store+0x408>
    3b30: 9100396c     	add	x12, x11, #0xe
    3b34: b940004f     	ldr	w15, [x2]
    3b38: 6b0e019f     	cmp	w12, w14
    3b3c: 382d694f     	strb	w15, [x10, x13]
    3b40: 54000860     	b.eq	0x3c4c <aw22xxx_para_store+0x408>
    3b44: 91003d6d     	add	x13, x11, #0xf
    3b48: b940002f     	ldr	w15, [x1]
    3b4c: 6b0e01bf     	cmp	w13, w14
    3b50: 382c694f     	strb	w15, [x10, x12]
    3b54: 540007c0     	b.eq	0x3c4c <aw22xxx_para_store+0x408>
    3b58: 9100416c     	add	x12, x11, #0x10
    3b5c: b940000f     	ldr	w15, [x0]
    3b60: 6b0e019f     	cmp	w12, w14
    3b64: 382d694f     	strb	w15, [x10, x13]
    3b68: 54000720     	b.eq	0x3c4c <aw22xxx_para_store+0x408>
    3b6c: 9100456d     	add	x13, x11, #0x11
    3b70: b940022f     	ldr	w15, [x17]
    3b74: 6b0e01bf     	cmp	w13, w14
    3b78: 382c694f     	strb	w15, [x10, x12]
    3b7c: 54000680     	b.eq	0x3c4c <aw22xxx_para_store+0x408>
    3b80: 9100496c     	add	x12, x11, #0x12
    3b84: b940030f     	ldr	w15, [x24]
    3b88: 6b0e019f     	cmp	w12, w14
    3b8c: 382d694f     	strb	w15, [x10, x13]
    3b90: 540005e0     	b.eq	0x3c4c <aw22xxx_para_store+0x408>
    3b94: 91004d6d     	add	x13, x11, #0x13
    3b98: b94002cf     	ldr	w15, [x22]
    3b9c: 6b0e01bf     	cmp	w13, w14
    3ba0: 382c694f     	strb	w15, [x10, x12]
    3ba4: 54000540     	b.eq	0x3c4c <aw22xxx_para_store+0x408>
    3ba8: 9100516c     	add	x12, x11, #0x14
    3bac: b940026f     	ldr	w15, [x19]
    3bb0: 6b0e019f     	cmp	w12, w14
    3bb4: 382d694f     	strb	w15, [x10, x13]
    3bb8: 540004a0     	b.eq	0x3c4c <aw22xxx_para_store+0x408>
    3bbc: 9100556d     	add	x13, x11, #0x15
    3bc0: b940038f     	ldr	w15, [x28]
    3bc4: 6b0e01bf     	cmp	w13, w14
    3bc8: 382c694f     	strb	w15, [x10, x12]
    3bcc: 54000400     	b.eq	0x3c4c <aw22xxx_para_store+0x408>
    3bd0: 9100596c     	add	x12, x11, #0x16
    3bd4: b940036f     	ldr	w15, [x27]
    3bd8: 6b0e019f     	cmp	w12, w14
    3bdc: 382d694f     	strb	w15, [x10, x13]
    3be0: 54000360     	b.eq	0x3c4c <aw22xxx_para_store+0x408>
    3be4: 91005d6d     	add	x13, x11, #0x17
    3be8: b940034f     	ldr	w15, [x26]
    3bec: 6b0e01bf     	cmp	w13, w14
    3bf0: 382c694f     	strb	w15, [x10, x12]
    3bf4: 540002c0     	b.eq	0x3c4c <aw22xxx_para_store+0x408>
    3bf8: 9100616b     	add	x11, x11, #0x18
    3bfc: b940032c     	ldr	w12, [x25]
    3c00: 6b0e017f     	cmp	w11, w14
    3c04: 382d694c     	strb	w12, [x10, x13]
    3c08: 54000220     	b.eq	0x3c4c <aw22xxx_para_store+0x408>
    3c0c: b94002ac     	ldr	w12, [x21]
    3c10: 11000522     	add	w2, w9, #0x1
    3c14: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_show+0xd0>
		0000000000003c14:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1136
    3c18: 91000000     	add	x0, x0, #0x0
		0000000000003c18:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1136
    3c1c: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_show+0xd0>
		0000000000003c1c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xf68
    3c20: 91000021     	add	x1, x1, #0x0
		0000000000003c20:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xf68
    3c24: 382b694c     	strb	w12, [x10, x11]
    3c28: b9000102     	str	w2, [x8]
		0000000000003c28:  R_AARCH64_LDST32_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b4
    3c2c: 94000000     	bl	0x3c2c <aw22xxx_para_store+0x3e8>
		0000000000003c2c:  R_AARCH64_CALL26	_printk
    3c30: 17ffff58     	b	0x3990 <aw22xxx_para_store+0x14c>
    3c34: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_show+0xd0>
		0000000000003c34:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xe74
    3c38: 91000000     	add	x0, x0, #0x0
		0000000000003c38:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xe74
    3c3c: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_show+0xd0>
		0000000000003c3c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xf68
    3c40: 91000021     	add	x1, x1, #0x0
		0000000000003c40:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xf68
    3c44: 94000000     	bl	0x3c44 <aw22xxx_para_store+0x400>
		0000000000003c44:  R_AARCH64_CALL26	_printk
    3c48: 17ffff52     	b	0x3990 <aw22xxx_para_store+0x14c>
    3c4c: d4200020     	brk	#0x1
    3c50: 90000008     	adrp	x8, 0x3000 <aw22xxx_imax_show+0xd0>
		0000000000003c50:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x38
    3c54: d5384115     	mrs	x21, SP_EL0
    3c58: f9402ab3     	ldr	x19, [x21, #0x50]
    3c5c: f9400100     	ldr	x0, [x8]
		0000000000003c5c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x38
    3c60: 90000008     	adrp	x8, 0x3000 <aw22xxx_imax_show+0xd0>
		0000000000003c60:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_codetag_base
    3c64: 91000108     	add	x8, x8, #0x0
		0000000000003c64:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_codetag_base
    3c68: 52819801     	mov	w1, #0xcc0              // =3264
    3c6c: 52800c82     	mov	w2, #0x64               // =100
    3c70: f9002aa8     	str	x8, [x21, #0x50]
    3c74: 94000000     	bl	0x3c74 <aw22xxx_para_store+0x430>
		0000000000003c74:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    3c78: aa0003f4     	mov	x20, x0
    3c7c: f9002ab3     	str	x19, [x21, #0x50]
    3c80: b5ffe134     	cbnz	x20, 0x38a4 <aw22xxx_para_store+0x60>
    3c84: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_show+0xd0>
		0000000000003c84:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x9fc
    3c88: 91000000     	add	x0, x0, #0x0
		0000000000003c88:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x9fc
    3c8c: 94000000     	bl	0x3c8c <aw22xxx_para_store+0x448>
		0000000000003c8c:  R_AARCH64_CALL26	_printk
    3c90: 928001a0     	mov	x0, #-0xe               // =-14
    3c94: 17ffff42     	b	0x399c <aw22xxx_para_store+0x158>
