
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000005c4 <syna_tcm_read_flash>:
     5c4: d503233f     	paciasp
     5c8: d101c3ff     	sub	sp, sp, #0x70
     5cc: a9017bfd     	stp	x29, x30, [sp, #0x10]
     5d0: a9026ffc     	stp	x28, x27, [sp, #0x20]
     5d4: a90367fa     	stp	x26, x25, [sp, #0x30]
     5d8: a9045ff8     	stp	x24, x23, [sp, #0x40]
     5dc: a90557f6     	stp	x22, x21, [sp, #0x50]
     5e0: a9064ff4     	stp	x20, x19, [sp, #0x60]
     5e4: 910043fd     	add	x29, sp, #0x10
     5e8: d5384108     	mrs	x8, SP_EL0
     5ec: f9438908     	ldr	x8, [x8, #0x710]
     5f0: f90007e8     	str	x8, [sp, #0x8]
     5f4: b4000f42     	cbz	x2, 0x7dc <syna_tcm_read_flash+0x218>
     5f8: 2a0103f4     	mov	w20, w1
     5fc: 34000f61     	cbz	w1, 0x7e8 <syna_tcm_read_flash+0x224>
     600: 2a0303f6     	mov	w22, w3
     604: 34000f23     	cbz	w3, 0x7e8 <syna_tcm_read_flash+0x224>
     608: 39402008     	ldrb	w8, [x0, #0x8]
     60c: 2a0403f7     	mov	w23, w4
     610: aa0203f8     	mov	x24, x2
     614: aa0003f5     	mov	x21, x0
     618: 2a1603f3     	mov	w19, w22
     61c: 7100091f     	cmp	w8, #0x2
     620: 540000e1     	b.ne	0x63c <syna_tcm_read_flash+0x78>
     624: b9403ea8     	ldr	w8, [x21, #0x3c]
     628: 2a1603f3     	mov	w19, w22
     62c: 6b16011f     	cmp	w8, w22
     630: 54000062     	b.hs	0x63c <syna_tcm_read_flash+0x78>
     634: 71001913     	subs	w19, w8, #0x6
     638: 54000ce0     	b.eq	0x7d4 <syna_tcm_read_flash+0x210>
     63c: 0b1302c8     	add	w8, w22, w19
     640: 51000508     	sub	w8, w8, #0x1
     644: 1ad30908     	udiv	w8, w8, w19
     648: 7100051f     	cmp	w8, #0x1
     64c: 5289ba7a     	mov	w26, #0x4dd3            // =19923
     650: 2a1f03f9     	mov	w25, wzr
     654: 1a9f851b     	csinc	w27, w8, wzr, hi
     658: 72a20c5a     	movk	w26, #0x1062, lsl #16
     65c: 4b1902c8     	sub	w8, w22, w25
     660: 6b13011f     	cmp	w8, w19
     664: 1a933113     	csel	w19, w8, w19, lo
     668: 53017e68     	lsr	w8, w19, #1
     66c: 340000b7     	cbz	w23, 0x680 <syna_tcm_read_flash+0xbc>
     670: 1b177d09     	mul	w9, w8, w23
     674: 9bba7d29     	umull	x9, w9, w26
     678: d366fd3c     	lsr	x28, x9, #38
     67c: 14000002     	b	0x684 <syna_tcm_read_flash+0xc0>
     680: 2a1f03fc     	mov	w28, wzr
     684: 0b190294     	add	w20, w20, w25
     688: 394026a2     	ldrb	w2, [x21, #0x9]
     68c: 390013e8     	strb	w8, [sp, #0x4]
     690: 53017e89     	lsr	w9, w20, #1
     694: 53097e8a     	lsr	w10, w20, #9
     698: 53117e8b     	lsr	w11, w20, #17
     69c: 71002c5f     	cmp	w2, #0xb
     6a0: 390003e9     	strb	w9, [sp]
     6a4: 53197e89     	lsr	w9, w20, #25
     6a8: 390007ea     	strb	w10, [sp, #0x1]
     6ac: 53097e6a     	lsr	w10, w19, #9
     6b0: 39000beb     	strb	w11, [sp, #0x2]
     6b4: 39000fe9     	strb	w9, [sp, #0x3]
     6b8: 390017ea     	strb	w10, [sp, #0x5]
     6bc: 54000501     	b.ne	0x75c <syna_tcm_read_flash+0x198>
     6c0: 350000bc     	cbnz	w28, 0x6d4 <syna_tcm_read_flash+0x110>
     6c4: f94026a8     	ldr	x8, [x21, #0x48]
     6c8: 39405108     	ldrb	w8, [x8, #0x14]
     6cc: 36000568     	tbz	w8, #0x0, 0x778 <syna_tcm_read_flash+0x1b4>
     6d0: 2a1f03fc     	mov	w28, wzr
     6d4: f941cea8     	ldr	x8, [x21, #0x398]
     6d8: 910003e2     	mov	x2, sp
     6dc: aa1503e0     	mov	x0, x21
     6e0: 52800261     	mov	w1, #0x13               // =19
     6e4: 528000c3     	mov	w3, #0x6                // =6
     6e8: aa1f03e4     	mov	x4, xzr
     6ec: 2a1c03e5     	mov	w5, w28
     6f0: b85fc110     	ldur	w16, [x8, #-0x4]
     6f4: 728751d1     	movk	w17, #0x3a8e
     6f8: 72a48411     	movk	w17, #0x2420, lsl #16
     6fc: 6b11021f     	cmp	w16, w17
     700: 54000040     	b.eq	0x708 <syna_tcm_read_flash+0x144>
     704: d4304500     	brk	#0x8228
     708: d63f0100     	blr	x8
     70c: 37f807c0     	tbnz	w0, #0x1f, 0x804 <syna_tcm_read_flash+0x240>
     710: b94156a3     	ldr	w3, [x21, #0x154]
     714: 6b13007f     	cmp	w3, w19
     718: 54000981     	b.ne	0x848 <syna_tcm_read_flash+0x284>
     71c: ab394300     	adds	x0, x24, w25, uxtw
     720: 54000b40     	b.eq	0x888 <syna_tcm_read_flash+0x2c4>
     724: f940a6a1     	ldr	x1, [x21, #0x148]
     728: b4000b01     	cbz	x1, 0x888 <syna_tcm_read_flash+0x2c4>
     72c: b94152a2     	ldr	w2, [x21, #0x150]
     730: 6b16027f     	cmp	w19, w22
     734: 540009a8     	b.hi	0x868 <syna_tcm_read_flash+0x2a4>
     738: 6b02027f     	cmp	w19, w2
     73c: 54000968     	b.hi	0x868 <syna_tcm_read_flash+0x2a4>
     740: aa1303e2     	mov	x2, x19
     744: 94000000     	bl	0x744 <syna_tcm_read_flash+0x180>
		0000000000000744:  R_AARCH64_CALL26	memcpy
     748: b94156a8     	ldr	w8, [x21, #0x154]
     74c: 7100077b     	subs	w27, w27, #0x1
     750: 0b190119     	add	w25, w8, w25
     754: 54fff841     	b.ne	0x65c <syna_tcm_read_flash+0x98>
     758: 14000010     	b	0x798 <syna_tcm_read_flash+0x1d4>
     75c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000075c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6808
     760: 91000000     	add	x0, x0, #0x0
		0000000000000760:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6808
     764: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000764:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a24
     768: 91000021     	add	x1, x1, #0x0
		0000000000000768:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a24
     76c: 94000000     	bl	0x76c <syna_tcm_read_flash+0x1a8>
		000000000000076c:  R_AARCH64_CALL26	_printk
     770: 35fffb3c     	cbnz	w28, 0x6d4 <syna_tcm_read_flash+0x110>
     774: 17ffffd4     	b	0x6c4 <syna_tcm_read_flash+0x100>
     778: b9420ebc     	ldr	w28, [x21, #0x20c]
     77c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000077c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x54e6
     780: 91000000     	add	x0, x0, #0x0
		0000000000000780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x54e6
     784: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a24
     788: 91000021     	add	x1, x1, #0x0
		0000000000000788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a24
     78c: 2a1c03e2     	mov	w2, w28
     790: 94000000     	bl	0x790 <syna_tcm_read_flash+0x1cc>
		0000000000000790:  R_AARCH64_CALL26	_printk
     794: 17ffffd0     	b	0x6d4 <syna_tcm_read_flash+0x110>
     798: 2a1f03e0     	mov	w0, wzr
     79c: d5384108     	mrs	x8, SP_EL0
     7a0: f9438908     	ldr	x8, [x8, #0x710]
     7a4: f94007e9     	ldr	x9, [sp, #0x8]
     7a8: eb09011f     	cmp	x8, x9
     7ac: 540007e1     	b.ne	0x8a8 <syna_tcm_read_flash+0x2e4>
     7b0: a9464ff4     	ldp	x20, x19, [sp, #0x60]
     7b4: a94557f6     	ldp	x22, x21, [sp, #0x50]
     7b8: a9445ff8     	ldp	x24, x23, [sp, #0x40]
     7bc: a94367fa     	ldp	x26, x25, [sp, #0x30]
     7c0: a9426ffc     	ldp	x28, x27, [sp, #0x20]
     7c4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     7c8: 9101c3ff     	add	sp, sp, #0x70
     7cc: d50323bf     	autiasp
     7d0: d65f03c0     	ret
     7d4: 2a1f03e8     	mov	w8, wzr
     7d8: 17ffff9c     	b	0x648 <syna_tcm_read_flash+0x84>
     7dc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x67e2
     7e0: 91000000     	add	x0, x0, #0x0
		00000000000007e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x67e2
     7e4: 14000003     	b	0x7f0 <syna_tcm_read_flash+0x22c>
     7e8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x95aa
     7ec: 91000000     	add	x0, x0, #0x0
		00000000000007ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x95aa
     7f0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a6
     7f4: 91000021     	add	x1, x1, #0x0
		00000000000007f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a6
     7f8: 94000000     	bl	0x7f8 <syna_tcm_read_flash+0x234>
		00000000000007f8:  R_AARCH64_CALL26	_printk
     7fc: 12801e00     	mov	w0, #-0xf1              // =-241
     800: 17ffffe7     	b	0x79c <syna_tcm_read_flash+0x1d8>
     804: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000804:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a86
     808: 91000108     	add	x8, x8, #0x0
		0000000000000808:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a86
     80c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000080c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a24
     810: 91000021     	add	x1, x1, #0x0
		0000000000000810:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a24
     814: 2a0003f5     	mov	w21, w0
     818: aa0803e0     	mov	x0, x8
     81c: 52800262     	mov	w2, #0x13               // =19
     820: 94000000     	bl	0x820 <syna_tcm_read_flash+0x25c>
		0000000000000820:  R_AARCH64_CALL26	_printk
     824: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000824:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79e4
     828: 91000000     	add	x0, x0, #0x0
		0000000000000828:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79e4
     82c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000082c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a6
     830: 91000021     	add	x1, x1, #0x0
		0000000000000830:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a6
     834: 2a1403e2     	mov	w2, w20
     838: 2a1303e3     	mov	w3, w19
     83c: 94000000     	bl	0x83c <syna_tcm_read_flash+0x278>
		000000000000083c:  R_AARCH64_CALL26	_printk
     840: 2a1503e0     	mov	w0, w21
     844: 17ffffd6     	b	0x79c <syna_tcm_read_flash+0x1d8>
     848: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000848:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e8
     84c: 91000000     	add	x0, x0, #0x0
		000000000000084c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e8
     850: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000850:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a6
     854: 91000021     	add	x1, x1, #0x0
		0000000000000854:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a6
     858: 2a1303e2     	mov	w2, w19
     85c: 94000000     	bl	0x85c <syna_tcm_read_flash+0x298>
		000000000000085c:  R_AARCH64_CALL26	_printk
     860: 12801e00     	mov	w0, #-0xf1              // =-241
     864: 17ffffce     	b	0x79c <syna_tcm_read_flash+0x1d8>
     868: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000868:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
     86c: 91000000     	add	x0, x0, #0x0
		000000000000086c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
     870: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000870:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
     874: 91000021     	add	x1, x1, #0x0
		0000000000000874:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
     878: 2a1603e3     	mov	w3, w22
     87c: 2a1303e4     	mov	w4, w19
     880: 94000000     	bl	0x880 <syna_tcm_read_flash+0x2bc>
		0000000000000880:  R_AARCH64_CALL26	_printk
     884: b94156b3     	ldr	w19, [x21, #0x154]
     888: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000888:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3cb8
     88c: 91000000     	add	x0, x0, #0x0
		000000000000088c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3cb8
     890: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000890:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a6
     894: 91000021     	add	x1, x1, #0x0
		0000000000000894:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a6
     898: 2a1303e2     	mov	w2, w19
     89c: 94000000     	bl	0x89c <syna_tcm_read_flash+0x2d8>
		000000000000089c:  R_AARCH64_CALL26	_printk
     8a0: 128002a0     	mov	w0, #-0x16              // =-22
     8a4: 17ffffbe     	b	0x79c <syna_tcm_read_flash+0x1d8>
     8a8: 94000000     	bl	0x8a8 <syna_tcm_read_flash+0x2e4>
		00000000000008a8:  R_AARCH64_CALL26	__stack_chk_fail
