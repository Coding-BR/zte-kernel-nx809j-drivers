
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000145e4 <syna_tcm_get_static_config>:
   145e4: d503233f     	paciasp
   145e8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   145ec: a90157f6     	stp	x22, x21, [sp, #0x10]
   145f0: a9024ff4     	stp	x20, x19, [sp, #0x20]
   145f4: 910003fd     	mov	x29, sp
   145f8: b40007c0     	cbz	x0, 0x146f0 <syna_tcm_get_static_config+0x10c>
   145fc: 2a0203f4     	mov	w20, w2
   14600: 39402402     	ldrb	w2, [x0, #0x9]
   14604: aa0003f3     	mov	x19, x0
   14608: 7100045f     	cmp	w2, #0x1
   1460c: 54000801     	b.ne	0x1470c <syna_tcm_get_static_config+0x128>
   14610: 2a0303f6     	mov	w22, w3
   14614: aa0103f5     	mov	x21, x1
   14618: 350000a3     	cbnz	w3, 0x1462c <syna_tcm_get_static_config+0x48>
   1461c: f9402668     	ldr	x8, [x19, #0x48]
   14620: 39405108     	ldrb	w8, [x8, #0x14]
   14624: 36000a68     	tbz	w8, #0x0, 0x14770 <syna_tcm_get_static_config+0x18c>
   14628: 2a1f03f6     	mov	w22, wzr
   1462c: 79416a63     	ldrh	w3, [x19, #0xb4]
   14630: 6b14007f     	cmp	w3, w20
   14634: 540007a8     	b.hi	0x14728 <syna_tcm_get_static_config+0x144>
   14638: f941ce68     	ldr	x8, [x19, #0x398]
   1463c: aa1303e0     	mov	x0, x19
   14640: 52800421     	mov	w1, #0x21               // =33
   14644: aa1f03e2     	mov	x2, xzr
   14648: 2a1f03e3     	mov	w3, wzr
   1464c: aa1f03e4     	mov	x4, xzr
   14650: 2a1603e5     	mov	w5, w22
   14654: b85fc110     	ldur	w16, [x8, #-0x4]
   14658: 728751d1     	movk	w17, #0x3a8e
   1465c: 72a48411     	movk	w17, #0x2420, lsl #16
   14660: 6b11021f     	cmp	w16, w17
   14664: 54000040     	b.eq	0x1466c <syna_tcm_get_static_config+0x88>
   14668: d4304500     	brk	#0x8228
   1466c: d63f0100     	blr	x8
   14670: 37f806c0     	tbnz	w0, #0x1f, 0x14748 <syna_tcm_get_static_config+0x164>
   14674: b4000b55     	cbz	x21, 0x147dc <syna_tcm_get_static_config+0x1f8>
   14678: b9415668     	ldr	w8, [x19, #0x154]
   1467c: 6b14011f     	cmp	w8, w20
   14680: 54000ae8     	b.hi	0x147dc <syna_tcm_get_static_config+0x1f8>
   14684: 39462262     	ldrb	w2, [x19, #0x188]
   14688: 35000822     	cbnz	w2, 0x1478c <syna_tcm_get_static_config+0x1a8>
   1468c: 91056260     	add	x0, x19, #0x158
   14690: 94000000     	bl	0x14690 <syna_tcm_get_static_config+0xac>
		0000000000014690:  R_AARCH64_CALL26	mutex_lock
   14694: 39462268     	ldrb	w8, [x19, #0x188]
   14698: f940a661     	ldr	x1, [x19, #0x148]
   1469c: 11000508     	add	w8, w8, #0x1
   146a0: 39062268     	strb	w8, [x19, #0x188]
   146a4: b40008c1     	cbz	x1, 0x147bc <syna_tcm_get_static_config+0x1d8>
   146a8: b9415664     	ldr	w4, [x19, #0x154]
   146ac: b9415262     	ldr	w2, [x19, #0x150]
   146b0: 6b14009f     	cmp	w4, w20
   146b4: 54000788     	b.hi	0x147a4 <syna_tcm_get_static_config+0x1c0>
   146b8: 6b02009f     	cmp	w4, w2
   146bc: 54000748     	b.hi	0x147a4 <syna_tcm_get_static_config+0x1c0>
   146c0: aa1503e0     	mov	x0, x21
   146c4: aa0403e2     	mov	x2, x4
   146c8: 94000000     	bl	0x146c8 <syna_tcm_get_static_config+0xe4>
		00000000000146c8:  R_AARCH64_CALL26	memcpy
   146cc: 39462262     	ldrb	w2, [x19, #0x188]
   146d0: 7100045f     	cmp	w2, #0x1
   146d4: 540008e1     	b.ne	0x147f0 <syna_tcm_get_static_config+0x20c>
   146d8: 2a1f03e8     	mov	w8, wzr
   146dc: 91056260     	add	x0, x19, #0x158
   146e0: 39062268     	strb	w8, [x19, #0x188]
   146e4: 94000000     	bl	0x146e4 <syna_tcm_get_static_config+0x100>
		00000000000146e4:  R_AARCH64_CALL26	mutex_unlock
   146e8: 2a1f03e0     	mov	w0, wzr
   146ec: 1400003c     	b	0x147dc <syna_tcm_get_static_config+0x1f8>
   146f0: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		00000000000146f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   146f4: 91000000     	add	x0, x0, #0x0
		00000000000146f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   146f8: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0x138>
		00000000000146f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x359e
   146fc: 91000021     	add	x1, x1, #0x0
		00000000000146fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x359e
   14700: 94000000     	bl	0x14700 <syna_tcm_get_static_config+0x11c>
		0000000000014700:  R_AARCH64_CALL26	_printk
   14704: 12801e00     	mov	w0, #-0xf1              // =-241
   14708: 14000035     	b	0x147dc <syna_tcm_get_static_config+0x1f8>
   1470c: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		000000000001470c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28c6
   14710: 91000000     	add	x0, x0, #0x0
		0000000000014710:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28c6
   14714: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0x138>
		0000000000014714:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x359e
   14718: 91000021     	add	x1, x1, #0x0
		0000000000014718:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x359e
   1471c: 94000000     	bl	0x1471c <syna_tcm_get_static_config+0x138>
		000000000001471c:  R_AARCH64_CALL26	_printk
   14720: 12801e00     	mov	w0, #-0xf1              // =-241
   14724: 1400002e     	b	0x147dc <syna_tcm_get_static_config+0x1f8>
   14728: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		0000000000014728:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x318
   1472c: 91000000     	add	x0, x0, #0x0
		000000000001472c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x318
   14730: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0x138>
		0000000000014730:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x359e
   14734: 91000021     	add	x1, x1, #0x0
		0000000000014734:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x359e
   14738: 2a1403e2     	mov	w2, w20
   1473c: 94000000     	bl	0x1473c <syna_tcm_get_static_config+0x158>
		000000000001473c:  R_AARCH64_CALL26	_printk
   14740: 12801e00     	mov	w0, #-0xf1              // =-241
   14744: 14000026     	b	0x147dc <syna_tcm_get_static_config+0x1f8>
   14748: 90000008     	adrp	x8, 0x14000 <syna_tcm_reset+0x138>
		0000000000014748:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a86
   1474c: 91000108     	add	x8, x8, #0x0
		000000000001474c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a86
   14750: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0x138>
		0000000000014750:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x359e
   14754: 91000021     	add	x1, x1, #0x0
		0000000000014754:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x359e
   14758: 2a0003f3     	mov	w19, w0
   1475c: aa0803e0     	mov	x0, x8
   14760: 52800422     	mov	w2, #0x21               // =33
   14764: 94000000     	bl	0x14764 <syna_tcm_get_static_config+0x180>
		0000000000014764:  R_AARCH64_CALL26	_printk
   14768: 2a1303e0     	mov	w0, w19
   1476c: 1400001c     	b	0x147dc <syna_tcm_get_static_config+0x1f8>
   14770: b9420e76     	ldr	w22, [x19, #0x20c]
   14774: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		0000000000014774:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab68
   14778: 91000000     	add	x0, x0, #0x0
		0000000000014778:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab68
   1477c: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0x138>
		000000000001477c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x359e
   14780: 91000021     	add	x1, x1, #0x0
		0000000000014780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x359e
   14784: 94000000     	bl	0x14784 <syna_tcm_get_static_config+0x1a0>
		0000000000014784:  R_AARCH64_CALL26	_printk
   14788: 17ffffa9     	b	0x1462c <syna_tcm_get_static_config+0x48>
   1478c: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		000000000001478c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   14790: 91000000     	add	x0, x0, #0x0
		0000000000014790:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   14794: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0x138>
		0000000000014794:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   14798: 91000021     	add	x1, x1, #0x0
		0000000000014798:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   1479c: 94000000     	bl	0x1479c <syna_tcm_get_static_config+0x1b8>
		000000000001479c:  R_AARCH64_CALL26	_printk
   147a0: 17ffffbb     	b	0x1468c <syna_tcm_get_static_config+0xa8>
   147a4: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		00000000000147a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
   147a8: 91000000     	add	x0, x0, #0x0
		00000000000147a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
   147ac: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0x138>
		00000000000147ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
   147b0: 91000021     	add	x1, x1, #0x0
		00000000000147b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
   147b4: 2a1403e3     	mov	w3, w20
   147b8: 94000000     	bl	0x147b8 <syna_tcm_get_static_config+0x1d4>
		00000000000147b8:  R_AARCH64_CALL26	_printk
   147bc: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		00000000000147bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8f26
   147c0: 91000000     	add	x0, x0, #0x0
		00000000000147c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8f26
   147c4: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0x138>
		00000000000147c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x359e
   147c8: 91000021     	add	x1, x1, #0x0
		00000000000147c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x359e
   147cc: 94000000     	bl	0x147cc <syna_tcm_get_static_config+0x1e8>
		00000000000147cc:  R_AARCH64_CALL26	_printk
   147d0: 91052260     	add	x0, x19, #0x148
   147d4: 94000000     	bl	0x147d4 <syna_tcm_get_static_config+0x1f0>
		00000000000147d4:  R_AARCH64_CALL26	syna_tcm_buf_unlock
   147d8: 128002a0     	mov	w0, #-0x16              // =-22
   147dc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   147e0: a94157f6     	ldp	x22, x21, [sp, #0x10]
   147e4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   147e8: d50323bf     	autiasp
   147ec: d65f03c0     	ret
   147f0: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		00000000000147f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   147f4: 91000000     	add	x0, x0, #0x0
		00000000000147f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   147f8: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0x138>
		00000000000147f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   147fc: 91000021     	add	x1, x1, #0x0
		00000000000147fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   14800: 94000000     	bl	0x14800 <syna_tcm_get_static_config+0x21c>
		0000000000014800:  R_AARCH64_CALL26	_printk
   14804: 39462268     	ldrb	w8, [x19, #0x188]
   14808: 51000508     	sub	w8, w8, #0x1
   1480c: 17ffffb4     	b	0x146dc <syna_tcm_get_static_config+0xf8>
