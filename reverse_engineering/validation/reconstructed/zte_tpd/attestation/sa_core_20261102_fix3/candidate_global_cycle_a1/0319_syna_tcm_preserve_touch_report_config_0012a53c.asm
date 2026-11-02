
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001a360 <syna_tcm_preserve_touch_report_config>:
   1a360: d503233f     	paciasp
   1a364: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1a368: f9000bf5     	str	x21, [sp, #0x10]
   1a36c: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1a370: 910003fd     	mov	x29, sp
   1a374: b40015e0     	cbz	x0, 0x1a630 <syna_tcm_preserve_touch_report_config+0x2d0>
   1a378: 39402402     	ldrb	w2, [x0, #0x9]
   1a37c: aa0003f3     	mov	x19, x0
   1a380: 7100045f     	cmp	w2, #0x1
   1a384: 54001641     	b.ne	0x1a64c <syna_tcm_preserve_touch_report_config+0x2ec>
   1a388: 2a0103f4     	mov	w20, w1
   1a38c: 350000a1     	cbnz	w1, 0x1a3a0 <syna_tcm_preserve_touch_report_config+0x40>
   1a390: f9402668     	ldr	x8, [x19, #0x48]
   1a394: 39405108     	ldrb	w8, [x8, #0x14]
   1a398: 36002168     	tbz	w8, #0x0, 0x1a7c4 <syna_tcm_preserve_touch_report_config+0x464>
   1a39c: 2a1f03f4     	mov	w20, wzr
   1a3a0: f941ce68     	ldr	x8, [x19, #0x398]
   1a3a4: aa1303e0     	mov	x0, x19
   1a3a8: 528004a1     	mov	w1, #0x25               // =37
   1a3ac: aa1f03e2     	mov	x2, xzr
   1a3b0: 2a1f03e3     	mov	w3, wzr
   1a3b4: aa1f03e4     	mov	x4, xzr
   1a3b8: 2a1403e5     	mov	w5, w20
   1a3bc: b85fc110     	ldur	w16, [x8, #-0x4]
   1a3c0: 728751d1     	movk	w17, #0x3a8e
   1a3c4: 72a48411     	movk	w17, #0x2420, lsl #16
   1a3c8: 6b11021f     	cmp	w16, w17
   1a3cc: 54000040     	b.eq	0x1a3d4 <syna_tcm_preserve_touch_report_config+0x74>
   1a3d0: d4304500     	brk	#0x8228
   1a3d4: d63f0100     	blr	x8
   1a3d8: 37f81400     	tbnz	w0, #0x1f, 0x1a658 <syna_tcm_preserve_touch_report_config+0x2f8>
   1a3dc: f940a668     	ldr	x8, [x19, #0x148]
   1a3e0: b9415262     	ldr	w2, [x19, #0x150]
   1a3e4: b40014c8     	cbz	x8, 0x1a67c <syna_tcm_preserve_touch_report_config+0x31c>
   1a3e8: 34001522     	cbz	w2, 0x1a68c <syna_tcm_preserve_touch_report_config+0x32c>
   1a3ec: 39462262     	ldrb	w2, [x19, #0x188]
   1a3f0: 35001562     	cbnz	w2, 0x1a69c <syna_tcm_preserve_touch_report_config+0x33c>
   1a3f4: 91056260     	add	x0, x19, #0x158
   1a3f8: 94000000     	bl	0x1a3f8 <syna_tcm_preserve_touch_report_config+0x98>
		000000000001a3f8:  R_AARCH64_CALL26	mutex_lock
   1a3fc: 39462268     	ldrb	w8, [x19, #0x188]
   1a400: 39474262     	ldrb	w2, [x19, #0x1d0]
   1a404: 11000508     	add	w8, w8, #0x1
   1a408: 39062268     	strb	w8, [x19, #0x188]
   1a40c: 35001542     	cbnz	w2, 0x1a6b4 <syna_tcm_preserve_touch_report_config+0x354>
   1a410: 91068260     	add	x0, x19, #0x1a0
   1a414: 94000000     	bl	0x1a414 <syna_tcm_preserve_touch_report_config+0xb4>
		000000000001a414:  R_AARCH64_CALL26	mutex_lock
   1a418: 39474268     	ldrb	w8, [x19, #0x1d0]
   1a41c: 52800029     	mov	w9, #0x1                // =1
   1a420: 11000508     	add	w8, w8, #0x1
   1a424: 39074268     	strb	w8, [x19, #0x1d0]
   1a428: b9038e69     	str	w9, [x19, #0x38c]
   1a42c: b9415674     	ldr	w20, [x19, #0x154]
   1a430: b9419a62     	ldr	w2, [x19, #0x198]
   1a434: f940ca60     	ldr	x0, [x19, #0x190]
   1a438: 6b14005f     	cmp	w2, w20
   1a43c: 54000242     	b.hs	0x1a484 <syna_tcm_preserve_touch_report_config+0x124>
   1a440: b40000c0     	cbz	x0, 0x1a458 <syna_tcm_preserve_touch_report_config+0xf8>
   1a444: aa0003f5     	mov	x21, x0
   1a448: 94000000     	bl	0x1a448 <syna_tcm_preserve_touch_report_config+0xe8>
		000000000001a448:  R_AARCH64_CALL26	syna_request_managed_device
   1a44c: b4001ca0     	cbz	x0, 0x1a7e0 <syna_tcm_preserve_touch_report_config+0x480>
   1a450: aa1503e1     	mov	x1, x21
   1a454: 94000000     	bl	0x1a454 <syna_tcm_preserve_touch_report_config+0xf4>
		000000000001a454:  R_AARCH64_CALL26	devm_kfree
   1a458: 94000000     	bl	0x1a458 <syna_tcm_preserve_touch_report_config+0xf8>
		000000000001a458:  R_AARCH64_CALL26	syna_request_managed_device
   1a45c: b4001d00     	cbz	x0, 0x1a7fc <syna_tcm_preserve_touch_report_config+0x49c>
   1a460: 7100029f     	cmp	w20, #0x0
   1a464: 54001aad     	b.le	0x1a7b8 <syna_tcm_preserve_touch_report_config+0x458>
   1a468: aa1403e1     	mov	x1, x20
   1a46c: 5281b802     	mov	w2, #0xdc0              // =3520
   1a470: 94000000     	bl	0x1a470 <syna_tcm_preserve_touch_report_config+0x110>
		000000000001a470:  R_AARCH64_CALL26	devm_kmalloc
   1a474: f900ca60     	str	x0, [x19, #0x190]
   1a478: b4001ce0     	cbz	x0, 0x1a814 <syna_tcm_preserve_touch_report_config+0x4b4>
   1a47c: aa1403e2     	mov	x2, x20
   1a480: b9019a74     	str	w20, [x19, #0x198]
   1a484: 2a1f03e1     	mov	w1, wzr
   1a488: 94000000     	bl	0x1a488 <syna_tcm_preserve_touch_report_config+0x128>
		000000000001a488:  R_AARCH64_CALL26	memset
   1a48c: f940a661     	ldr	x1, [x19, #0x148]
   1a490: b9415262     	ldr	w2, [x19, #0x150]
   1a494: b9019e7f     	str	wzr, [x19, #0x19c]
   1a498: b40011a1     	cbz	x1, 0x1a6cc <syna_tcm_preserve_touch_report_config+0x36c>
   1a49c: 34001282     	cbz	w2, 0x1a6ec <syna_tcm_preserve_touch_report_config+0x38c>
   1a4a0: f940ca60     	ldr	x0, [x19, #0x190]
   1a4a4: b4001400     	cbz	x0, 0x1a724 <syna_tcm_preserve_touch_report_config+0x3c4>
   1a4a8: b9419a63     	ldr	w3, [x19, #0x198]
   1a4ac: 6b02029f     	cmp	w20, w2
   1a4b0: 540012e8     	b.hi	0x1a70c <syna_tcm_preserve_touch_report_config+0x3ac>
   1a4b4: 6b03029f     	cmp	w20, w3
   1a4b8: 540012a8     	b.hi	0x1a70c <syna_tcm_preserve_touch_report_config+0x3ac>
   1a4bc: aa1403e2     	mov	x2, x20
   1a4c0: 94000000     	bl	0x1a4c0 <syna_tcm_preserve_touch_report_config+0x160>
		000000000001a4c0:  R_AARCH64_CALL26	memcpy
   1a4c4: 39474262     	ldrb	w2, [x19, #0x1d0]
   1a4c8: b9019e74     	str	w20, [x19, #0x19c]
   1a4cc: 7100045f     	cmp	w2, #0x1
   1a4d0: 54001541     	b.ne	0x1a778 <syna_tcm_preserve_touch_report_config+0x418>
   1a4d4: 2a1f03e8     	mov	w8, wzr
   1a4d8: 91068260     	add	x0, x19, #0x1a0
   1a4dc: 39074268     	strb	w8, [x19, #0x1d0]
   1a4e0: 94000000     	bl	0x1a4e0 <syna_tcm_preserve_touch_report_config+0x180>
		000000000001a4e0:  R_AARCH64_CALL26	mutex_unlock
   1a4e4: 39462262     	ldrb	w2, [x19, #0x188]
   1a4e8: 7100045f     	cmp	w2, #0x1
   1a4ec: 54001561     	b.ne	0x1a798 <syna_tcm_preserve_touch_report_config+0x438>
   1a4f0: 2a1f03e8     	mov	w8, wzr
   1a4f4: 91056260     	add	x0, x19, #0x158
   1a4f8: 39062268     	strb	w8, [x19, #0x188]
   1a4fc: 94000000     	bl	0x1a4fc <syna_tcm_preserve_touch_report_config+0x19c>
		000000000001a4fc:  R_AARCH64_CALL26	mutex_unlock
   1a500: 340007f4     	cbz	w20, 0x1a5fc <syna_tcm_preserve_touch_report_config+0x29c>
   1a504: f940ca6a     	ldr	x10, [x19, #0x190]
   1a508: 2a1f03ef     	mov	w15, wzr
   1a50c: 2a1f03e8     	mov	w8, wzr
   1a510: 2a1f03eb     	mov	w11, wzr
   1a514: 2a1f03e9     	mov	w9, wzr
   1a518: 2a1f03ed     	mov	w13, wzr
   1a51c: 2a1f03ec     	mov	w12, wzr
   1a520: 14000005     	b	0x1a534 <syna_tcm_preserve_touch_report_config+0x1d4>
   1a524: 5280002c     	mov	w12, #0x1               // =1
   1a528: 6b1401df     	cmp	w14, w20
   1a52c: 2a0e03ef     	mov	w15, w14
   1a530: 540006c2     	b.hs	0x1a608 <syna_tcm_preserve_touch_report_config+0x2a8>
   1a534: 2a0f03ee     	mov	w14, w15
   1a538: 386e6950     	ldrb	w16, [x10, x14]
   1a53c: 910005ce     	add	x14, x14, #0x1
   1a540: 71000a1f     	cmp	w16, #0x2
   1a544: 5400010c     	b.gt	0x1a564 <syna_tcm_preserve_touch_report_config+0x204>
   1a548: 51000611     	sub	w17, w16, #0x1
   1a54c: 71000a3f     	cmp	w17, #0x2
   1a550: 54fffea3     	b.lo	0x1a524 <syna_tcm_preserve_touch_report_config+0x1c4>
   1a554: 350002b0     	cbnz	w16, 0x1a5a8 <syna_tcm_preserve_touch_report_config+0x248>
   1a558: 2a1f03ec     	mov	w12, wzr
   1a55c: 2a1f03ed     	mov	w13, wzr
   1a560: 17fffff2     	b	0x1a528 <syna_tcm_preserve_touch_report_config+0x1c8>
   1a564: 71000e1f     	cmp	w16, #0x3
   1a568: 54000180     	b.eq	0x1a598 <syna_tcm_preserve_touch_report_config+0x238>
   1a56c: 7100121f     	cmp	w16, #0x4
   1a570: 540001c1     	b.ne	0x1a5a8 <syna_tcm_preserve_touch_report_config+0x248>
   1a574: 11001d6f     	add	w15, w11, #0x7
   1a578: 7200019f     	tst	w12, #0x1
   1a57c: 121d71ef     	and	w15, w15, #0xfffffff8
   1a580: 1a8b11eb     	csel	w11, w15, w11, ne
   1a584: 3600026d     	tbz	w13, #0x0, 0x1a5d0 <syna_tcm_preserve_touch_report_config+0x270>
   1a588: 11001d08     	add	w8, w8, #0x7
   1a58c: 5280002d     	mov	w13, #0x1               // =1
   1a590: 121d7108     	and	w8, w8, #0xfffffff8
   1a594: 17ffffe5     	b	0x1a528 <syna_tcm_preserve_touch_report_config+0x1c8>
   1a598: 2a1f03ec     	mov	w12, wzr
   1a59c: b901da6e     	str	w14, [x19, #0x1d8]
   1a5a0: 5280002d     	mov	w13, #0x1               // =1
   1a5a4: 17ffffe1     	b	0x1a528 <syna_tcm_preserve_touch_report_config+0x1c8>
   1a5a8: 386e6951     	ldrb	w17, [x10, x14]
   1a5ac: 7200019f     	tst	w12, #0x1
   1a5b0: 110009ee     	add	w14, w15, #0x2
   1a5b4: 0b110170     	add	w16, w11, w17
   1a5b8: 1a8b120f     	csel	w15, w16, w11, ne
   1a5bc: 360000ed     	tbz	w13, #0x0, 0x1a5d8 <syna_tcm_preserve_touch_report_config+0x278>
   1a5c0: 0b110108     	add	w8, w8, w17
   1a5c4: 5280002d     	mov	w13, #0x1               // =1
   1a5c8: 2a0f03eb     	mov	w11, w15
   1a5cc: 17ffffd7     	b	0x1a528 <syna_tcm_preserve_touch_report_config+0x1c8>
   1a5d0: 2a1f03ed     	mov	w13, wzr
   1a5d4: 17ffffd5     	b	0x1a528 <syna_tcm_preserve_touch_report_config+0x1c8>
   1a5d8: 360000ac     	tbz	w12, #0x0, 0x1a5ec <syna_tcm_preserve_touch_report_config+0x28c>
   1a5dc: 2a1f03ed     	mov	w13, wzr
   1a5e0: 5280002c     	mov	w12, #0x1               // =1
   1a5e4: 2a1003eb     	mov	w11, w16
   1a5e8: 17ffffd0     	b	0x1a528 <syna_tcm_preserve_touch_report_config+0x1c8>
   1a5ec: 2a1f03ec     	mov	w12, wzr
   1a5f0: 2a1f03ed     	mov	w13, wzr
   1a5f4: 0b110129     	add	w9, w9, w17
   1a5f8: 17ffffcc     	b	0x1a528 <syna_tcm_preserve_touch_report_config+0x1c8>
   1a5fc: 2a1f03e9     	mov	w9, wzr
   1a600: 2a1f03eb     	mov	w11, wzr
   1a604: 2a1f03e8     	mov	w8, wzr
   1a608: 2a1f03e0     	mov	w0, wzr
   1a60c: b901e269     	str	w9, [x19, #0x1e0]
   1a610: b901de6b     	str	w11, [x19, #0x1dc]
   1a614: b901e668     	str	w8, [x19, #0x1e4]
   1a618: b9038e7f     	str	wzr, [x19, #0x38c]
   1a61c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1a620: f9400bf5     	ldr	x21, [sp, #0x10]
   1a624: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1a628: d50323bf     	autiasp
   1a62c: d65f03c0     	ret
   1a630: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001a630:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   1a634: 91000000     	add	x0, x0, #0x0
		000000000001a634:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   1a638: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001a638:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36e8
   1a63c: 91000021     	add	x1, x1, #0x0
		000000000001a63c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36e8
   1a640: 94000000     	bl	0x1a640 <syna_tcm_preserve_touch_report_config+0x2e0>
		000000000001a640:  R_AARCH64_CALL26	_printk
   1a644: 12801e00     	mov	w0, #-0xf1              // =-241
   1a648: 17fffff5     	b	0x1a61c <syna_tcm_preserve_touch_report_config+0x2bc>
   1a64c: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001a64c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ad2
   1a650: 91000000     	add	x0, x0, #0x0
		000000000001a650:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ad2
   1a654: 14000029     	b	0x1a6f8 <syna_tcm_preserve_touch_report_config+0x398>
   1a658: 90000008     	adrp	x8, 0x1a000 <edge_long_press_up+0x230>
		000000000001a658:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2474
   1a65c: 91000108     	add	x8, x8, #0x0
		000000000001a65c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2474
   1a660: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001a660:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36e8
   1a664: 91000021     	add	x1, x1, #0x0
		000000000001a664:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36e8
   1a668: 2a0003f4     	mov	w20, w0
   1a66c: aa0803e0     	mov	x0, x8
   1a670: 94000000     	bl	0x1a670 <syna_tcm_preserve_touch_report_config+0x310>
		000000000001a670:  R_AARCH64_CALL26	_printk
   1a674: 2a1403e0     	mov	w0, w20
   1a678: 17ffffe8     	b	0x1a618 <syna_tcm_preserve_touch_report_config+0x2b8>
   1a67c: b9415663     	ldr	w3, [x19, #0x154]
   1a680: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001a680:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad54
   1a684: 91000000     	add	x0, x0, #0x0
		000000000001a684:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad54
   1a688: 14000014     	b	0x1a6d8 <syna_tcm_preserve_touch_report_config+0x378>
   1a68c: b9415662     	ldr	w2, [x19, #0x154]
   1a690: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001a690:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x370e
   1a694: 91000000     	add	x0, x0, #0x0
		000000000001a694:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x370e
   1a698: 14000018     	b	0x1a6f8 <syna_tcm_preserve_touch_report_config+0x398>
   1a69c: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001a69c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   1a6a0: 91000000     	add	x0, x0, #0x0
		000000000001a6a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   1a6a4: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001a6a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   1a6a8: 91000021     	add	x1, x1, #0x0
		000000000001a6a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   1a6ac: 94000000     	bl	0x1a6ac <syna_tcm_preserve_touch_report_config+0x34c>
		000000000001a6ac:  R_AARCH64_CALL26	_printk
   1a6b0: 17ffff51     	b	0x1a3f4 <syna_tcm_preserve_touch_report_config+0x94>
   1a6b4: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001a6b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   1a6b8: 91000000     	add	x0, x0, #0x0
		000000000001a6b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   1a6bc: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001a6bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   1a6c0: 91000021     	add	x1, x1, #0x0
		000000000001a6c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   1a6c4: 94000000     	bl	0x1a6c4 <syna_tcm_preserve_touch_report_config+0x364>
		000000000001a6c4:  R_AARCH64_CALL26	_printk
   1a6c8: 17ffff52     	b	0x1a410 <syna_tcm_preserve_touch_report_config+0xb0>
   1a6cc: b9415663     	ldr	w3, [x19, #0x154]
   1a6d0: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001a6d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb452
   1a6d4: 91000000     	add	x0, x0, #0x0
		000000000001a6d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb452
   1a6d8: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001a6d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36e8
   1a6dc: 91000021     	add	x1, x1, #0x0
		000000000001a6dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36e8
   1a6e0: 94000000     	bl	0x1a6e0 <syna_tcm_preserve_touch_report_config+0x380>
		000000000001a6e0:  R_AARCH64_CALL26	_printk
   1a6e4: 12801e00     	mov	w0, #-0xf1              // =-241
   1a6e8: 17ffffcd     	b	0x1a61c <syna_tcm_preserve_touch_report_config+0x2bc>
   1a6ec: b9415662     	ldr	w2, [x19, #0x154]
   1a6f0: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001a6f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ef4
   1a6f4: 91000000     	add	x0, x0, #0x0
		000000000001a6f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ef4
   1a6f8: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001a6f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36e8
   1a6fc: 91000021     	add	x1, x1, #0x0
		000000000001a6fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36e8
   1a700: 94000000     	bl	0x1a700 <syna_tcm_preserve_touch_report_config+0x3a0>
		000000000001a700:  R_AARCH64_CALL26	_printk
   1a704: 12801e00     	mov	w0, #-0xf1              // =-241
   1a708: 17ffffc5     	b	0x1a61c <syna_tcm_preserve_touch_report_config+0x2bc>
   1a70c: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001a70c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
   1a710: 91000000     	add	x0, x0, #0x0
		000000000001a710:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
   1a714: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001a714:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
   1a718: 91000021     	add	x1, x1, #0x0
		000000000001a718:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
   1a71c: 2a1403e4     	mov	w4, w20
   1a720: 94000000     	bl	0x1a720 <syna_tcm_preserve_touch_report_config+0x3c0>
		000000000001a720:  R_AARCH64_CALL26	_printk
   1a724: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001a724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a02
   1a728: 91000000     	add	x0, x0, #0x0
		000000000001a728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a02
   1a72c: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001a72c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36e8
   1a730: 91000021     	add	x1, x1, #0x0
		000000000001a730:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36e8
   1a734: 94000000     	bl	0x1a734 <syna_tcm_preserve_touch_report_config+0x3d4>
		000000000001a734:  R_AARCH64_CALL26	_printk
   1a738: 39474262     	ldrb	w2, [x19, #0x1d0]
   1a73c: 7100045f     	cmp	w2, #0x1
   1a740: 54000941     	b.ne	0x1a868 <syna_tcm_preserve_touch_report_config+0x508>
   1a744: 2a1f03e8     	mov	w8, wzr
   1a748: 91068260     	add	x0, x19, #0x1a0
   1a74c: 39074268     	strb	w8, [x19, #0x1d0]
   1a750: 94000000     	bl	0x1a750 <syna_tcm_preserve_touch_report_config+0x3f0>
		000000000001a750:  R_AARCH64_CALL26	mutex_unlock
   1a754: 39462262     	ldrb	w2, [x19, #0x188]
   1a758: 7100045f     	cmp	w2, #0x1
   1a75c: 54000961     	b.ne	0x1a888 <syna_tcm_preserve_touch_report_config+0x528>
   1a760: 2a1f03e8     	mov	w8, wzr
   1a764: 91056260     	add	x0, x19, #0x158
   1a768: 39062268     	strb	w8, [x19, #0x188]
   1a76c: 94000000     	bl	0x1a76c <syna_tcm_preserve_touch_report_config+0x40c>
		000000000001a76c:  R_AARCH64_CALL26	mutex_unlock
   1a770: 128002a0     	mov	w0, #-0x16              // =-22
   1a774: 17ffffa9     	b	0x1a618 <syna_tcm_preserve_touch_report_config+0x2b8>
   1a778: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001a778:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   1a77c: 91000000     	add	x0, x0, #0x0
		000000000001a77c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   1a780: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001a780:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   1a784: 91000021     	add	x1, x1, #0x0
		000000000001a784:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   1a788: 94000000     	bl	0x1a788 <syna_tcm_preserve_touch_report_config+0x428>
		000000000001a788:  R_AARCH64_CALL26	_printk
   1a78c: 39474268     	ldrb	w8, [x19, #0x1d0]
   1a790: 51000508     	sub	w8, w8, #0x1
   1a794: 17ffff51     	b	0x1a4d8 <syna_tcm_preserve_touch_report_config+0x178>
   1a798: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001a798:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   1a79c: 91000000     	add	x0, x0, #0x0
		000000000001a79c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   1a7a0: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001a7a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   1a7a4: 91000021     	add	x1, x1, #0x0
		000000000001a7a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   1a7a8: 94000000     	bl	0x1a7a8 <syna_tcm_preserve_touch_report_config+0x448>
		000000000001a7a8:  R_AARCH64_CALL26	_printk
   1a7ac: 39462268     	ldrb	w8, [x19, #0x188]
   1a7b0: 51000508     	sub	w8, w8, #0x1
   1a7b4: 17ffff50     	b	0x1a4f4 <syna_tcm_preserve_touch_report_config+0x194>
   1a7b8: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001a7b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70d6
   1a7bc: 91000000     	add	x0, x0, #0x0
		000000000001a7bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70d6
   1a7c0: 14000011     	b	0x1a804 <syna_tcm_preserve_touch_report_config+0x4a4>
   1a7c4: b9420e74     	ldr	w20, [x19, #0x20c]
   1a7c8: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001a7c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab68
   1a7cc: 91000000     	add	x0, x0, #0x0
		000000000001a7cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab68
   1a7d0: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001a7d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36e8
   1a7d4: 91000021     	add	x1, x1, #0x0
		000000000001a7d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36e8
   1a7d8: 94000000     	bl	0x1a7d8 <syna_tcm_preserve_touch_report_config+0x478>
		000000000001a7d8:  R_AARCH64_CALL26	_printk
   1a7dc: 17fffef1     	b	0x1a3a0 <syna_tcm_preserve_touch_report_config+0x40>
   1a7e0: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001a7e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1a7e4: 91000000     	add	x0, x0, #0x0
		000000000001a7e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   1a7e8: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001a7e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   1a7ec: 91000021     	add	x1, x1, #0x0
		000000000001a7ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   1a7f0: 94000000     	bl	0x1a7f0 <syna_tcm_preserve_touch_report_config+0x490>
		000000000001a7f0:  R_AARCH64_CALL26	_printk
   1a7f4: 94000000     	bl	0x1a7f4 <syna_tcm_preserve_touch_report_config+0x494>
		000000000001a7f4:  R_AARCH64_CALL26	syna_request_managed_device
   1a7f8: b5ffe340     	cbnz	x0, 0x1a460 <syna_tcm_preserve_touch_report_config+0x100>
   1a7fc: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001a7fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1a800: 91000000     	add	x0, x0, #0x0
		000000000001a800:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   1a804: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001a804:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
   1a808: 91000021     	add	x1, x1, #0x0
		000000000001a808:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
   1a80c: 94000000     	bl	0x1a80c <syna_tcm_preserve_touch_report_config+0x4ac>
		000000000001a80c:  R_AARCH64_CALL26	_printk
   1a810: f900ca7f     	str	xzr, [x19, #0x190]
   1a814: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001a814:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d74
   1a818: 91000000     	add	x0, x0, #0x0
		000000000001a818:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d74
   1a81c: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001a81c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77fc
   1a820: 91000021     	add	x1, x1, #0x0
		000000000001a820:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77fc
   1a824: 2a1403e2     	mov	w2, w20
   1a828: 94000000     	bl	0x1a828 <syna_tcm_preserve_touch_report_config+0x4c8>
		000000000001a828:  R_AARCH64_CALL26	_printk
   1a82c: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001a82c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43ea
   1a830: 91000000     	add	x0, x0, #0x0
		000000000001a830:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43ea
   1a834: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001a834:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36e8
   1a838: 91000021     	add	x1, x1, #0x0
		000000000001a838:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36e8
   1a83c: f900ce7f     	str	xzr, [x19, #0x198]
   1a840: 94000000     	bl	0x1a840 <syna_tcm_preserve_touch_report_config+0x4e0>
		000000000001a840:  R_AARCH64_CALL26	_printk
   1a844: 39462262     	ldrb	w2, [x19, #0x188]
   1a848: 7100045f     	cmp	w2, #0x1
   1a84c: 540002e1     	b.ne	0x1a8a8 <syna_tcm_preserve_touch_report_config+0x548>
   1a850: 2a1f03e8     	mov	w8, wzr
   1a854: 91056260     	add	x0, x19, #0x158
   1a858: 39062268     	strb	w8, [x19, #0x188]
   1a85c: 94000000     	bl	0x1a85c <syna_tcm_preserve_touch_report_config+0x4fc>
		000000000001a85c:  R_AARCH64_CALL26	mutex_unlock
   1a860: 12801e40     	mov	w0, #-0xf3              // =-243
   1a864: 17ffff6d     	b	0x1a618 <syna_tcm_preserve_touch_report_config+0x2b8>
   1a868: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001a868:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   1a86c: 91000000     	add	x0, x0, #0x0
		000000000001a86c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   1a870: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001a870:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   1a874: 91000021     	add	x1, x1, #0x0
		000000000001a874:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   1a878: 94000000     	bl	0x1a878 <syna_tcm_preserve_touch_report_config+0x518>
		000000000001a878:  R_AARCH64_CALL26	_printk
   1a87c: 39474268     	ldrb	w8, [x19, #0x1d0]
   1a880: 51000508     	sub	w8, w8, #0x1
   1a884: 17ffffb1     	b	0x1a748 <syna_tcm_preserve_touch_report_config+0x3e8>
   1a888: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001a888:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   1a88c: 91000000     	add	x0, x0, #0x0
		000000000001a88c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   1a890: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001a890:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   1a894: 91000021     	add	x1, x1, #0x0
		000000000001a894:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   1a898: 94000000     	bl	0x1a898 <syna_tcm_preserve_touch_report_config+0x538>
		000000000001a898:  R_AARCH64_CALL26	_printk
   1a89c: 39462268     	ldrb	w8, [x19, #0x188]
   1a8a0: 51000508     	sub	w8, w8, #0x1
   1a8a4: 17ffffb0     	b	0x1a764 <syna_tcm_preserve_touch_report_config+0x404>
   1a8a8: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001a8a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   1a8ac: 91000000     	add	x0, x0, #0x0
		000000000001a8ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   1a8b0: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001a8b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   1a8b4: 91000021     	add	x1, x1, #0x0
		000000000001a8b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   1a8b8: 94000000     	bl	0x1a8b8 <syna_tcm_preserve_touch_report_config+0x558>
		000000000001a8b8:  R_AARCH64_CALL26	_printk
   1a8bc: 39462268     	ldrb	w8, [x19, #0x188]
   1a8c0: 51000508     	sub	w8, w8, #0x1
   1a8c4: 17ffffe4     	b	0x1a854 <syna_tcm_preserve_touch_report_config+0x4f4>
