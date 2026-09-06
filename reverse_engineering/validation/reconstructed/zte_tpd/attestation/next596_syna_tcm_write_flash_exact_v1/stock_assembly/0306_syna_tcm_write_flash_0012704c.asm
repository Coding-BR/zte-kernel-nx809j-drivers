
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000207c4 <syna_tcm_write_flash>:
   207c4: d503233f     	paciasp
   207c8: d10203ff     	sub	sp, sp, #0x80
   207cc: a9027bfd     	stp	x29, x30, [sp, #0x20]
   207d0: a9036ffc     	stp	x28, x27, [sp, #0x30]
   207d4: a90467fa     	stp	x26, x25, [sp, #0x40]
   207d8: a9055ff8     	stp	x24, x23, [sp, #0x50]
   207dc: a90657f6     	stp	x22, x21, [sp, #0x60]
   207e0: a9074ff4     	stp	x20, x19, [sp, #0x70]
   207e4: 910083fd     	add	x29, sp, #0x20
   207e8: 2945d434     	ldp	w20, w21, [x1, #0x2c]
   207ec: b81f43a2     	stur	w2, [x29, #-0xc]
   207f0: 39420022     	ldrb	w2, [x1, #0x80]
   207f4: 2a0503fc     	mov	w28, w5
   207f8: 2a0403f6     	mov	w22, w4
   207fc: aa0103f3     	mov	x19, x1
   20800: aa0003f8     	mov	x24, x0
   20804: f81f83a3     	stur	x3, [x29, #-0x8]
   20808: 350012e2     	cbnz	w2, 0x20a64 <syna_tcm_write_flash+0x2a0>
   2080c: 91014260     	add	x0, x19, #0x50
   20810: 94000000     	bl	0x20810 <syna_tcm_write_flash+0x4c>
		0000000000020810:  R_AARCH64_CALL26	mutex_lock
   20814: 39420268     	ldrb	w8, [x19, #0x80]
   20818: 11000508     	add	w8, w8, #0x1
   2081c: 39020268     	strb	w8, [x19, #0x80]
   20820: 34000ff6     	cbz	w22, 0x20a1c <syna_tcm_write_flash+0x258>
   20824: 1ad40aa8     	udiv	w8, w21, w20
   20828: 2a1f03f7     	mov	w23, wzr
   2082c: 2901dbfc     	stp	w28, w22, [sp, #0xc]
   20830: 1b147d15     	mul	w21, w8, w20
   20834: 2a1603f4     	mov	w20, w22
   20838: 6b15029f     	cmp	w20, w21
   2083c: b9404a62     	ldr	w2, [x19, #0x48]
   20840: f9402260     	ldr	x0, [x19, #0x40]
   20844: 1a95329b     	csel	w27, w20, w21, lo
   20848: 11000b79     	add	w25, w27, #0x2
   2084c: 6b19005f     	cmp	w2, w25
   20850: 54000242     	b.hs	0x20898 <syna_tcm_write_flash+0xd4>
   20854: b40000c0     	cbz	x0, 0x2086c <syna_tcm_write_flash+0xa8>
   20858: aa0003f6     	mov	x22, x0
   2085c: 94000000     	bl	0x2085c <syna_tcm_write_flash+0x98>
		000000000002085c:  R_AARCH64_CALL26	syna_request_managed_device
   20860: b4000c80     	cbz	x0, 0x209f0 <syna_tcm_write_flash+0x22c>
   20864: aa1603e1     	mov	x1, x22
   20868: 94000000     	bl	0x20868 <syna_tcm_write_flash+0xa4>
		0000000000020868:  R_AARCH64_CALL26	devm_kfree
   2086c: 94000000     	bl	0x2086c <syna_tcm_write_flash+0xa8>
		000000000002086c:  R_AARCH64_CALL26	syna_request_managed_device
   20870: b4000ce0     	cbz	x0, 0x20a0c <syna_tcm_write_flash+0x248>
   20874: 7100033f     	cmp	w25, #0x0
   20878: 540014ad     	b.le	0x20b0c <syna_tcm_write_flash+0x348>
   2087c: aa1903e1     	mov	x1, x25
   20880: 5281b802     	mov	w2, #0xdc0              // =3520
   20884: 94000000     	bl	0x20884 <syna_tcm_write_flash+0xc0>
		0000000000020884:  R_AARCH64_CALL26	devm_kmalloc
   20888: f9002260     	str	x0, [x19, #0x40]
   2088c: b40014c0     	cbz	x0, 0x20b24 <syna_tcm_write_flash+0x360>
   20890: aa1903e2     	mov	x2, x25
   20894: b9004a79     	str	w25, [x19, #0x48]
   20898: 2a1f03e1     	mov	w1, wzr
   2089c: 94000000     	bl	0x2089c <syna_tcm_write_flash+0xd8>
		000000000002089c:  R_AARCH64_CALL26	memset
   208a0: b85f43a9     	ldur	w9, [x29, #-0xc]
   208a4: b9402e68     	ldr	w8, [x19, #0x2c]
   208a8: b9004e7f     	str	wzr, [x19, #0x4c]
   208ac: 0b0902fa     	add	w26, w23, w9
   208b0: f9402269     	ldr	x9, [x19, #0x40]
   208b4: 1ac80b48     	udiv	w8, w26, w8
   208b8: 39000128     	strb	w8, [x9]
   208bc: 53087d08     	lsr	w8, w8, #8
   208c0: f9402269     	ldr	x9, [x19, #0x40]
   208c4: 39000528     	strb	w8, [x9, #0x1]
   208c8: b9402e68     	ldr	w8, [x19, #0x2c]
   208cc: 34000088     	cbz	w8, 0x208dc <syna_tcm_write_flash+0x118>
   208d0: 0b080369     	add	w9, w27, w8
   208d4: 51000529     	sub	w9, w9, #0x1
   208d8: 1ac80928     	udiv	w8, w9, w8
   208dc: 340000dc     	cbz	w28, 0x208f4 <syna_tcm_write_flash+0x130>
   208e0: 1b1c7d08     	mul	w8, w8, w28
   208e4: 5289ba69     	mov	w9, #0x4dd3             // =19923
   208e8: 72a20c49     	movk	w9, #0x1062, lsl #16
   208ec: 9ba97d08     	umull	x8, w8, w9
   208f0: d366fd1c     	lsr	x28, x8, #38
   208f4: f85f83a8     	ldur	x8, [x29, #-0x8]
   208f8: ab374101     	adds	x1, x8, w23, uxtw
   208fc: 54000cc0     	b.eq	0x20a94 <syna_tcm_write_flash+0x2d0>
   20900: f9402268     	ldr	x8, [x19, #0x40]
   20904: 91000900     	add	x0, x8, #0x2
   20908: b4000c60     	cbz	x0, 0x20a94 <syna_tcm_write_flash+0x2d0>
   2090c: b94013e8     	ldr	w8, [sp, #0x10]
   20910: 4b170102     	sub	w2, w8, w23
   20914: b9404a68     	ldr	w8, [x19, #0x48]
   20918: 6b02037f     	cmp	w27, w2
   2091c: 51000903     	sub	w3, w8, #0x2
   20920: 54000ae8     	b.hi	0x20a7c <syna_tcm_write_flash+0x2b8>
   20924: 6b03037f     	cmp	w27, w3
   20928: 54000aa8     	b.hi	0x20a7c <syna_tcm_write_flash+0x2b8>
   2092c: aa1b03e2     	mov	x2, x27
   20930: 94000000     	bl	0x20930 <syna_tcm_write_flash+0x16c>
		0000000000020930:  R_AARCH64_CALL26	memcpy
   20934: 39402702     	ldrb	w2, [x24, #0x9]
   20938: f9402276     	ldr	x22, [x19, #0x40]
   2093c: 71002c5f     	cmp	w2, #0xb
   20940: 540003a1     	b.ne	0x209b4 <syna_tcm_write_flash+0x1f0>
   20944: 350000bc     	cbnz	w28, 0x20958 <syna_tcm_write_flash+0x194>
   20948: f9402708     	ldr	x8, [x24, #0x48]
   2094c: 39405108     	ldrb	w8, [x8, #0x14]
   20950: 36000408     	tbz	w8, #0x0, 0x209d0 <syna_tcm_write_flash+0x20c>
   20954: 2a1f03fc     	mov	w28, wzr
   20958: f941cf08     	ldr	x8, [x24, #0x398]
   2095c: aa1803e0     	mov	x0, x24
   20960: 52800241     	mov	w1, #0x12               // =18
   20964: aa1603e2     	mov	x2, x22
   20968: 2a1903e3     	mov	w3, w25
   2096c: aa1f03e4     	mov	x4, xzr
   20970: 2a1c03e5     	mov	w5, w28
   20974: b85fc110     	ldur	w16, [x8, #-0x4]
   20978: 728751d1     	movk	w17, #0x3a8e
   2097c: 72a48411     	movk	w17, #0x2420, lsl #16
   20980: 6b11021f     	cmp	w16, w17
   20984: 54000040     	b.eq	0x2098c <syna_tcm_write_flash+0x1c8>
   20988: d4304500     	brk	#0x8228
   2098c: d63f0100     	blr	x8
   20990: 37f809a0     	tbnz	w0, #0x1f, 0x20ac4 <syna_tcm_write_flash+0x300>
   20994: b9409268     	ldr	w8, [x19, #0x90]
   20998: b9400ffc     	ldr	w28, [sp, #0xc]
   2099c: 6b1b0294     	subs	w20, w20, w27
   209a0: 0b1b02f7     	add	w23, w23, w27
   209a4: 0b1b0108     	add	w8, w8, w27
   209a8: b9009268     	str	w8, [x19, #0x90]
   209ac: 54fff461     	b.ne	0x20838 <syna_tcm_write_flash+0x74>
   209b0: 1400001a     	b	0x20a18 <syna_tcm_write_flash+0x254>
   209b4: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		00000000000209b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x666c
   209b8: 91000000     	add	x0, x0, #0x0
		00000000000209b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x666c
   209bc: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		00000000000209bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x783e
   209c0: 91000021     	add	x1, x1, #0x0
		00000000000209c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x783e
   209c4: 94000000     	bl	0x209c4 <syna_tcm_write_flash+0x200>
		00000000000209c4:  R_AARCH64_CALL26	_printk
   209c8: 35fffc9c     	cbnz	w28, 0x20958 <syna_tcm_write_flash+0x194>
   209cc: 17ffffdf     	b	0x20948 <syna_tcm_write_flash+0x184>
   209d0: b9420f1c     	ldr	w28, [x24, #0x20c]
   209d4: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		00000000000209d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53b6
   209d8: 91000000     	add	x0, x0, #0x0
		00000000000209d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53b6
   209dc: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		00000000000209dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x783e
   209e0: 91000021     	add	x1, x1, #0x0
		00000000000209e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x783e
   209e4: 2a1c03e2     	mov	w2, w28
   209e8: 94000000     	bl	0x209e8 <syna_tcm_write_flash+0x224>
		00000000000209e8:  R_AARCH64_CALL26	_printk
   209ec: 17ffffdb     	b	0x20958 <syna_tcm_write_flash+0x194>
   209f0: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		00000000000209f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   209f4: 91000000     	add	x0, x0, #0x0
		00000000000209f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   209f8: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		00000000000209f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   209fc: 91000021     	add	x1, x1, #0x0
		00000000000209fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   20a00: 94000000     	bl	0x20a00 <syna_tcm_write_flash+0x23c>
		0000000000020a00:  R_AARCH64_CALL26	_printk
   20a04: 94000000     	bl	0x20a04 <syna_tcm_write_flash+0x240>
		0000000000020a04:  R_AARCH64_CALL26	syna_request_managed_device
   20a08: b5fff360     	cbnz	x0, 0x20874 <syna_tcm_write_flash+0xb0>
   20a0c: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020a0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   20a10: 91000000     	add	x0, x0, #0x0
		0000000000020a10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   20a14: 14000040     	b	0x20b14 <syna_tcm_write_flash+0x350>
   20a18: 39420268     	ldrb	w8, [x19, #0x80]
   20a1c: 12001d09     	and	w9, w8, #0xff
   20a20: 2a1f03fc     	mov	w28, wzr
   20a24: 7100053f     	cmp	w9, #0x1
   20a28: 2a1f03e9     	mov	w9, wzr
   20a2c: 540009c1     	b.ne	0x20b64 <syna_tcm_write_flash+0x3a0>
   20a30: 91014260     	add	x0, x19, #0x50
   20a34: 39020269     	strb	w9, [x19, #0x80]
   20a38: 94000000     	bl	0x20a38 <syna_tcm_write_flash+0x274>
		0000000000020a38:  R_AARCH64_CALL26	mutex_unlock
   20a3c: 2a1c03e0     	mov	w0, w28
   20a40: a9474ff4     	ldp	x20, x19, [sp, #0x70]
   20a44: a94657f6     	ldp	x22, x21, [sp, #0x60]
   20a48: a9455ff8     	ldp	x24, x23, [sp, #0x50]
   20a4c: a94467fa     	ldp	x26, x25, [sp, #0x40]
   20a50: a9436ffc     	ldp	x28, x27, [sp, #0x30]
   20a54: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   20a58: 910203ff     	add	sp, sp, #0x80
   20a5c: d50323bf     	autiasp
   20a60: d65f03c0     	ret
   20a64: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020a64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   20a68: 91000000     	add	x0, x0, #0x0
		0000000000020a68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   20a6c: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020a6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   20a70: 91000021     	add	x1, x1, #0x0
		0000000000020a70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   20a74: 94000000     	bl	0x20a74 <syna_tcm_write_flash+0x2b0>
		0000000000020a74:  R_AARCH64_CALL26	_printk
   20a78: 17ffff65     	b	0x2080c <syna_tcm_write_flash+0x48>
   20a7c: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020a7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   20a80: 91000000     	add	x0, x0, #0x0
		0000000000020a80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   20a84: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020a84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   20a88: 91000021     	add	x1, x1, #0x0
		0000000000020a88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   20a8c: 2a1b03e4     	mov	w4, w27
   20a90: 94000000     	bl	0x20a90 <syna_tcm_write_flash+0x2cc>
		0000000000020a90:  R_AARCH64_CALL26	_printk
   20a94: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020a94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c0f
   20a98: 91000000     	add	x0, x0, #0x0
		0000000000020a98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c0f
   20a9c: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020a9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f8c
   20aa0: 91000021     	add	x1, x1, #0x0
		0000000000020aa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f8c
   20aa4: 2a1b03e2     	mov	w2, w27
   20aa8: 94000000     	bl	0x20aa8 <syna_tcm_write_flash+0x2e4>
		0000000000020aa8:  R_AARCH64_CALL26	_printk
   20aac: 39420268     	ldrb	w8, [x19, #0x80]
   20ab0: 128002bc     	mov	w28, #-0x16             // =-22
   20ab4: 7100051f     	cmp	w8, #0x1
   20ab8: 54000561     	b.ne	0x20b64 <syna_tcm_write_flash+0x3a0>
   20abc: 2a1f03e9     	mov	w9, wzr
   20ac0: 17ffffdc     	b	0x20a30 <syna_tcm_write_flash+0x26c>
   20ac4: 2a0003fc     	mov	w28, w0
   20ac8: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020ac8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x885a
   20acc: 91000000     	add	x0, x0, #0x0
		0000000000020acc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x885a
   20ad0: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020ad0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x783e
   20ad4: 91000021     	add	x1, x1, #0x0
		0000000000020ad4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x783e
   20ad8: 52800242     	mov	w2, #0x12               // =18
   20adc: 94000000     	bl	0x20adc <syna_tcm_write_flash+0x318>
		0000000000020adc:  R_AARCH64_CALL26	_printk
   20ae0: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020ae0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7de2
   20ae4: 91000000     	add	x0, x0, #0x0
		0000000000020ae4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7de2
   20ae8: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020ae8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f8c
   20aec: 91000021     	add	x1, x1, #0x0
		0000000000020aec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f8c
   20af0: 2a1a03e2     	mov	w2, w26
   20af4: 2a1903e3     	mov	w3, w25
   20af8: 94000000     	bl	0x20af8 <syna_tcm_write_flash+0x334>
		0000000000020af8:  R_AARCH64_CALL26	_printk
   20afc: 39420268     	ldrb	w8, [x19, #0x80]
   20b00: 7100051f     	cmp	w8, #0x1
   20b04: 54fffdc0     	b.eq	0x20abc <syna_tcm_write_flash+0x2f8>
   20b08: 14000017     	b	0x20b64 <syna_tcm_write_flash+0x3a0>
   20b0c: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020b0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   20b10: 91000000     	add	x0, x0, #0x0
		0000000000020b10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   20b14: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020b14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   20b18: 91000021     	add	x1, x1, #0x0
		0000000000020b18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   20b1c: 94000000     	bl	0x20b1c <syna_tcm_write_flash+0x358>
		0000000000020b1c:  R_AARCH64_CALL26	_printk
   20b20: f900227f     	str	xzr, [x19, #0x40]
   20b24: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020b24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   20b28: 91000000     	add	x0, x0, #0x0
		0000000000020b28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   20b2c: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020b2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   20b30: 91000021     	add	x1, x1, #0x0
		0000000000020b30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   20b34: 2a1903e2     	mov	w2, w25
   20b38: 94000000     	bl	0x20b38 <syna_tcm_write_flash+0x374>
		0000000000020b38:  R_AARCH64_CALL26	_printk
   20b3c: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020b3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f59
   20b40: 91000000     	add	x0, x0, #0x0
		0000000000020b40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f59
   20b44: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020b44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f8c
   20b48: 91000021     	add	x1, x1, #0x0
		0000000000020b48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f8c
   20b4c: f900267f     	str	xzr, [x19, #0x48]
   20b50: 94000000     	bl	0x20b50 <syna_tcm_write_flash+0x38c>
		0000000000020b50:  R_AARCH64_CALL26	_printk
   20b54: 39420268     	ldrb	w8, [x19, #0x80]
   20b58: 12801e5c     	mov	w28, #-0xf3             // =-243
   20b5c: 7100051f     	cmp	w8, #0x1
   20b60: 54fffae0     	b.eq	0x20abc <syna_tcm_write_flash+0x2f8>
   20b64: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020b64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   20b68: 91000000     	add	x0, x0, #0x0
		0000000000020b68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   20b6c: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020b6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   20b70: 91000021     	add	x1, x1, #0x0
		0000000000020b70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   20b74: 12001d02     	and	w2, w8, #0xff
   20b78: 94000000     	bl	0x20b78 <syna_tcm_write_flash+0x3b4>
		0000000000020b78:  R_AARCH64_CALL26	_printk
   20b7c: 39420268     	ldrb	w8, [x19, #0x80]
   20b80: 51000509     	sub	w9, w8, #0x1
   20b84: 17ffffab     	b	0x20a30 <syna_tcm_write_flash+0x26c>
