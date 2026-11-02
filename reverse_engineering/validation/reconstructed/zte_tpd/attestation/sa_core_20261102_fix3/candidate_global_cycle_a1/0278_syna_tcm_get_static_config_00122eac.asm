
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000014640 <syna_tcm_get_static_config>:
   14640: d503233f     	paciasp
   14644: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   14648: a90157f6     	stp	x22, x21, [sp, #0x10]
   1464c: a9024ff4     	stp	x20, x19, [sp, #0x20]
   14650: 910003fd     	mov	x29, sp
   14654: b40007c0     	cbz	x0, 0x1474c <syna_tcm_get_static_config+0x10c>
   14658: 2a0203f4     	mov	w20, w2
   1465c: 39402402     	ldrb	w2, [x0, #0x9]
   14660: aa0003f3     	mov	x19, x0
   14664: 7100045f     	cmp	w2, #0x1
   14668: 54000801     	b.ne	0x14768 <syna_tcm_get_static_config+0x128>
   1466c: 2a0303f6     	mov	w22, w3
   14670: aa0103f5     	mov	x21, x1
   14674: 350000a3     	cbnz	w3, 0x14688 <syna_tcm_get_static_config+0x48>
   14678: f9402668     	ldr	x8, [x19, #0x48]
   1467c: 39405108     	ldrb	w8, [x8, #0x14]
   14680: 36000a68     	tbz	w8, #0x0, 0x147cc <syna_tcm_get_static_config+0x18c>
   14684: 2a1f03f6     	mov	w22, wzr
   14688: 79416a63     	ldrh	w3, [x19, #0xb4]
   1468c: 6b14007f     	cmp	w3, w20
   14690: 540007a8     	b.hi	0x14784 <syna_tcm_get_static_config+0x144>
   14694: f941ce68     	ldr	x8, [x19, #0x398]
   14698: aa1303e0     	mov	x0, x19
   1469c: 52800421     	mov	w1, #0x21               // =33
   146a0: aa1f03e2     	mov	x2, xzr
   146a4: 2a1f03e3     	mov	w3, wzr
   146a8: aa1f03e4     	mov	x4, xzr
   146ac: 2a1603e5     	mov	w5, w22
   146b0: b85fc110     	ldur	w16, [x8, #-0x4]
   146b4: 728751d1     	movk	w17, #0x3a8e
   146b8: 72a48411     	movk	w17, #0x2420, lsl #16
   146bc: 6b11021f     	cmp	w16, w17
   146c0: 54000040     	b.eq	0x146c8 <syna_tcm_get_static_config+0x88>
   146c4: d4304500     	brk	#0x8228
   146c8: d63f0100     	blr	x8
   146cc: 37f806c0     	tbnz	w0, #0x1f, 0x147a4 <syna_tcm_get_static_config+0x164>
   146d0: b4000b55     	cbz	x21, 0x14838 <syna_tcm_get_static_config+0x1f8>
   146d4: b9415668     	ldr	w8, [x19, #0x154]
   146d8: 6b14011f     	cmp	w8, w20
   146dc: 54000ae8     	b.hi	0x14838 <syna_tcm_get_static_config+0x1f8>
   146e0: 39462262     	ldrb	w2, [x19, #0x188]
   146e4: 35000822     	cbnz	w2, 0x147e8 <syna_tcm_get_static_config+0x1a8>
   146e8: 91056260     	add	x0, x19, #0x158
   146ec: 94000000     	bl	0x146ec <syna_tcm_get_static_config+0xac>
		00000000000146ec:  R_AARCH64_CALL26	mutex_lock
   146f0: 39462268     	ldrb	w8, [x19, #0x188]
   146f4: f940a661     	ldr	x1, [x19, #0x148]
   146f8: 11000508     	add	w8, w8, #0x1
   146fc: 39062268     	strb	w8, [x19, #0x188]
   14700: b40008c1     	cbz	x1, 0x14818 <syna_tcm_get_static_config+0x1d8>
   14704: b9415664     	ldr	w4, [x19, #0x154]
   14708: b9415262     	ldr	w2, [x19, #0x150]
   1470c: 6b14009f     	cmp	w4, w20
   14710: 54000788     	b.hi	0x14800 <syna_tcm_get_static_config+0x1c0>
   14714: 6b02009f     	cmp	w4, w2
   14718: 54000748     	b.hi	0x14800 <syna_tcm_get_static_config+0x1c0>
   1471c: aa1503e0     	mov	x0, x21
   14720: aa0403e2     	mov	x2, x4
   14724: 94000000     	bl	0x14724 <syna_tcm_get_static_config+0xe4>
		0000000000014724:  R_AARCH64_CALL26	memcpy
   14728: 39462262     	ldrb	w2, [x19, #0x188]
   1472c: 7100045f     	cmp	w2, #0x1
   14730: 540008e1     	b.ne	0x1484c <syna_tcm_get_static_config+0x20c>
   14734: 2a1f03e8     	mov	w8, wzr
   14738: 91056260     	add	x0, x19, #0x158
   1473c: 39062268     	strb	w8, [x19, #0x188]
   14740: 94000000     	bl	0x14740 <syna_tcm_get_static_config+0x100>
		0000000000014740:  R_AARCH64_CALL26	mutex_unlock
   14744: 2a1f03e0     	mov	w0, wzr
   14748: 1400003c     	b	0x14838 <syna_tcm_get_static_config+0x1f8>
   1474c: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		000000000001474c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   14750: 91000000     	add	x0, x0, #0x0
		0000000000014750:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   14754: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014754:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x359e
   14758: 91000021     	add	x1, x1, #0x0
		0000000000014758:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x359e
   1475c: 94000000     	bl	0x1475c <syna_tcm_get_static_config+0x11c>
		000000000001475c:  R_AARCH64_CALL26	_printk
   14760: 12801e00     	mov	w0, #-0xf1              // =-241
   14764: 14000035     	b	0x14838 <syna_tcm_get_static_config+0x1f8>
   14768: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014768:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28c6
   1476c: 91000000     	add	x0, x0, #0x0
		000000000001476c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28c6
   14770: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014770:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x359e
   14774: 91000021     	add	x1, x1, #0x0
		0000000000014774:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x359e
   14778: 94000000     	bl	0x14778 <syna_tcm_get_static_config+0x138>
		0000000000014778:  R_AARCH64_CALL26	_printk
   1477c: 12801e00     	mov	w0, #-0xf1              // =-241
   14780: 1400002e     	b	0x14838 <syna_tcm_get_static_config+0x1f8>
   14784: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x318
   14788: 91000000     	add	x0, x0, #0x0
		0000000000014788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x318
   1478c: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		000000000001478c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x359e
   14790: 91000021     	add	x1, x1, #0x0
		0000000000014790:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x359e
   14794: 2a1403e2     	mov	w2, w20
   14798: 94000000     	bl	0x14798 <syna_tcm_get_static_config+0x158>
		0000000000014798:  R_AARCH64_CALL26	_printk
   1479c: 12801e00     	mov	w0, #-0xf1              // =-241
   147a0: 14000026     	b	0x14838 <syna_tcm_get_static_config+0x1f8>
   147a4: 90000008     	adrp	x8, 0x14000 <syna_tcm_reset+0xdc>
		00000000000147a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a86
   147a8: 91000108     	add	x8, x8, #0x0
		00000000000147a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a86
   147ac: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		00000000000147ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x359e
   147b0: 91000021     	add	x1, x1, #0x0
		00000000000147b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x359e
   147b4: 2a0003f3     	mov	w19, w0
   147b8: aa0803e0     	mov	x0, x8
   147bc: 52800422     	mov	w2, #0x21               // =33
   147c0: 94000000     	bl	0x147c0 <syna_tcm_get_static_config+0x180>
		00000000000147c0:  R_AARCH64_CALL26	_printk
   147c4: 2a1303e0     	mov	w0, w19
   147c8: 1400001c     	b	0x14838 <syna_tcm_get_static_config+0x1f8>
   147cc: b9420e76     	ldr	w22, [x19, #0x20c]
   147d0: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		00000000000147d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab68
   147d4: 91000000     	add	x0, x0, #0x0
		00000000000147d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab68
   147d8: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		00000000000147d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x359e
   147dc: 91000021     	add	x1, x1, #0x0
		00000000000147dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x359e
   147e0: 94000000     	bl	0x147e0 <syna_tcm_get_static_config+0x1a0>
		00000000000147e0:  R_AARCH64_CALL26	_printk
   147e4: 17ffffa9     	b	0x14688 <syna_tcm_get_static_config+0x48>
   147e8: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		00000000000147e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   147ec: 91000000     	add	x0, x0, #0x0
		00000000000147ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   147f0: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		00000000000147f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   147f4: 91000021     	add	x1, x1, #0x0
		00000000000147f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   147f8: 94000000     	bl	0x147f8 <syna_tcm_get_static_config+0x1b8>
		00000000000147f8:  R_AARCH64_CALL26	_printk
   147fc: 17ffffbb     	b	0x146e8 <syna_tcm_get_static_config+0xa8>
   14800: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014800:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
   14804: 91000000     	add	x0, x0, #0x0
		0000000000014804:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
   14808: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014808:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
   1480c: 91000021     	add	x1, x1, #0x0
		000000000001480c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
   14810: 2a1403e3     	mov	w3, w20
   14814: 94000000     	bl	0x14814 <syna_tcm_get_static_config+0x1d4>
		0000000000014814:  R_AARCH64_CALL26	_printk
   14818: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014818:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8f26
   1481c: 91000000     	add	x0, x0, #0x0
		000000000001481c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8f26
   14820: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014820:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x359e
   14824: 91000021     	add	x1, x1, #0x0
		0000000000014824:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x359e
   14828: 94000000     	bl	0x14828 <syna_tcm_get_static_config+0x1e8>
		0000000000014828:  R_AARCH64_CALL26	_printk
   1482c: 91052260     	add	x0, x19, #0x148
   14830: 94000000     	bl	0x14830 <syna_tcm_get_static_config+0x1f0>
		0000000000014830:  R_AARCH64_CALL26	syna_tcm_buf_unlock
   14834: 128002a0     	mov	w0, #-0x16              // =-22
   14838: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1483c: a94157f6     	ldp	x22, x21, [sp, #0x10]
   14840: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   14844: d50323bf     	autiasp
   14848: d65f03c0     	ret
   1484c: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		000000000001484c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   14850: 91000000     	add	x0, x0, #0x0
		0000000000014850:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   14854: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014854:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   14858: 91000021     	add	x1, x1, #0x0
		0000000000014858:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   1485c: 94000000     	bl	0x1485c <syna_tcm_get_static_config+0x21c>
		000000000001485c:  R_AARCH64_CALL26	_printk
   14860: 39462268     	ldrb	w8, [x19, #0x188]
   14864: 51000508     	sub	w8, w8, #0x1
   14868: 17ffffb4     	b	0x14738 <syna_tcm_get_static_config+0xf8>
