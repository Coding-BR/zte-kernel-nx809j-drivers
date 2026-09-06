
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001a304 <syna_tcm_preserve_touch_report_config>:
   1a304: d503233f     	paciasp
   1a308: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1a30c: f9000bf5     	str	x21, [sp, #0x10]
   1a310: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1a314: 910003fd     	mov	x29, sp
   1a318: b40015e0     	cbz	x0, 0x1a5d4 <syna_tcm_preserve_touch_report_config+0x2d0>
   1a31c: 39402402     	ldrb	w2, [x0, #0x9]
   1a320: aa0003f3     	mov	x19, x0
   1a324: 7100045f     	cmp	w2, #0x1
   1a328: 54001641     	b.ne	0x1a5f0 <syna_tcm_preserve_touch_report_config+0x2ec>
   1a32c: 2a0103f4     	mov	w20, w1
   1a330: 350000a1     	cbnz	w1, 0x1a344 <syna_tcm_preserve_touch_report_config+0x40>
   1a334: f9402668     	ldr	x8, [x19, #0x48]
   1a338: 39405108     	ldrb	w8, [x8, #0x14]
   1a33c: 36002168     	tbz	w8, #0x0, 0x1a768 <syna_tcm_preserve_touch_report_config+0x464>
   1a340: 2a1f03f4     	mov	w20, wzr
   1a344: f941ce68     	ldr	x8, [x19, #0x398]
   1a348: aa1303e0     	mov	x0, x19
   1a34c: 528004a1     	mov	w1, #0x25               // =37
   1a350: aa1f03e2     	mov	x2, xzr
   1a354: 2a1f03e3     	mov	w3, wzr
   1a358: aa1f03e4     	mov	x4, xzr
   1a35c: 2a1403e5     	mov	w5, w20
   1a360: b85fc110     	ldur	w16, [x8, #-0x4]
   1a364: 728751d1     	movk	w17, #0x3a8e
   1a368: 72a48411     	movk	w17, #0x2420, lsl #16
   1a36c: 6b11021f     	cmp	w16, w17
   1a370: 54000040     	b.eq	0x1a378 <syna_tcm_preserve_touch_report_config+0x74>
   1a374: d4304500     	brk	#0x8228
   1a378: d63f0100     	blr	x8
   1a37c: 37f81400     	tbnz	w0, #0x1f, 0x1a5fc <syna_tcm_preserve_touch_report_config+0x2f8>
   1a380: f940a668     	ldr	x8, [x19, #0x148]
   1a384: b9415262     	ldr	w2, [x19, #0x150]
   1a388: b40014c8     	cbz	x8, 0x1a620 <syna_tcm_preserve_touch_report_config+0x31c>
   1a38c: 34001522     	cbz	w2, 0x1a630 <syna_tcm_preserve_touch_report_config+0x32c>
   1a390: 39462262     	ldrb	w2, [x19, #0x188]
   1a394: 35001562     	cbnz	w2, 0x1a640 <syna_tcm_preserve_touch_report_config+0x33c>
   1a398: 91056260     	add	x0, x19, #0x158
   1a39c: 94000000     	bl	0x1a39c <syna_tcm_preserve_touch_report_config+0x98>
		000000000001a39c:  R_AARCH64_CALL26	mutex_lock
   1a3a0: 39462268     	ldrb	w8, [x19, #0x188]
   1a3a4: 39474262     	ldrb	w2, [x19, #0x1d0]
   1a3a8: 11000508     	add	w8, w8, #0x1
   1a3ac: 39062268     	strb	w8, [x19, #0x188]
   1a3b0: 35001542     	cbnz	w2, 0x1a658 <syna_tcm_preserve_touch_report_config+0x354>
   1a3b4: 91068260     	add	x0, x19, #0x1a0
   1a3b8: 94000000     	bl	0x1a3b8 <syna_tcm_preserve_touch_report_config+0xb4>
		000000000001a3b8:  R_AARCH64_CALL26	mutex_lock
   1a3bc: 39474268     	ldrb	w8, [x19, #0x1d0]
   1a3c0: 52800029     	mov	w9, #0x1                // =1
   1a3c4: 11000508     	add	w8, w8, #0x1
   1a3c8: 39074268     	strb	w8, [x19, #0x1d0]
   1a3cc: b9038e69     	str	w9, [x19, #0x38c]
   1a3d0: b9415674     	ldr	w20, [x19, #0x154]
   1a3d4: b9419a62     	ldr	w2, [x19, #0x198]
   1a3d8: f940ca60     	ldr	x0, [x19, #0x190]
   1a3dc: 6b14005f     	cmp	w2, w20
   1a3e0: 54000242     	b.hs	0x1a428 <syna_tcm_preserve_touch_report_config+0x124>
   1a3e4: b40000c0     	cbz	x0, 0x1a3fc <syna_tcm_preserve_touch_report_config+0xf8>
   1a3e8: aa0003f5     	mov	x21, x0
   1a3ec: 94000000     	bl	0x1a3ec <syna_tcm_preserve_touch_report_config+0xe8>
		000000000001a3ec:  R_AARCH64_CALL26	syna_request_managed_device
   1a3f0: b4001ca0     	cbz	x0, 0x1a784 <syna_tcm_preserve_touch_report_config+0x480>
   1a3f4: aa1503e1     	mov	x1, x21
   1a3f8: 94000000     	bl	0x1a3f8 <syna_tcm_preserve_touch_report_config+0xf4>
		000000000001a3f8:  R_AARCH64_CALL26	devm_kfree
   1a3fc: 94000000     	bl	0x1a3fc <syna_tcm_preserve_touch_report_config+0xf8>
		000000000001a3fc:  R_AARCH64_CALL26	syna_request_managed_device
   1a400: b4001d00     	cbz	x0, 0x1a7a0 <syna_tcm_preserve_touch_report_config+0x49c>
   1a404: 7100029f     	cmp	w20, #0x0
   1a408: 54001aad     	b.le	0x1a75c <syna_tcm_preserve_touch_report_config+0x458>
   1a40c: aa1403e1     	mov	x1, x20
   1a410: 5281b802     	mov	w2, #0xdc0              // =3520
   1a414: 94000000     	bl	0x1a414 <syna_tcm_preserve_touch_report_config+0x110>
		000000000001a414:  R_AARCH64_CALL26	devm_kmalloc
   1a418: f900ca60     	str	x0, [x19, #0x190]
   1a41c: b4001ce0     	cbz	x0, 0x1a7b8 <syna_tcm_preserve_touch_report_config+0x4b4>
   1a420: aa1403e2     	mov	x2, x20
   1a424: b9019a74     	str	w20, [x19, #0x198]
   1a428: 2a1f03e1     	mov	w1, wzr
   1a42c: 94000000     	bl	0x1a42c <syna_tcm_preserve_touch_report_config+0x128>
		000000000001a42c:  R_AARCH64_CALL26	memset
   1a430: f940a661     	ldr	x1, [x19, #0x148]
   1a434: b9415262     	ldr	w2, [x19, #0x150]
   1a438: b9019e7f     	str	wzr, [x19, #0x19c]
   1a43c: b40011a1     	cbz	x1, 0x1a670 <syna_tcm_preserve_touch_report_config+0x36c>
   1a440: 34001282     	cbz	w2, 0x1a690 <syna_tcm_preserve_touch_report_config+0x38c>
   1a444: f940ca60     	ldr	x0, [x19, #0x190]
   1a448: b4001400     	cbz	x0, 0x1a6c8 <syna_tcm_preserve_touch_report_config+0x3c4>
   1a44c: b9419a63     	ldr	w3, [x19, #0x198]
   1a450: 6b02029f     	cmp	w20, w2
   1a454: 540012e8     	b.hi	0x1a6b0 <syna_tcm_preserve_touch_report_config+0x3ac>
   1a458: 6b03029f     	cmp	w20, w3
   1a45c: 540012a8     	b.hi	0x1a6b0 <syna_tcm_preserve_touch_report_config+0x3ac>
   1a460: aa1403e2     	mov	x2, x20
   1a464: 94000000     	bl	0x1a464 <syna_tcm_preserve_touch_report_config+0x160>
		000000000001a464:  R_AARCH64_CALL26	memcpy
   1a468: 39474262     	ldrb	w2, [x19, #0x1d0]
   1a46c: b9019e74     	str	w20, [x19, #0x19c]
   1a470: 7100045f     	cmp	w2, #0x1
   1a474: 54001541     	b.ne	0x1a71c <syna_tcm_preserve_touch_report_config+0x418>
   1a478: 2a1f03e8     	mov	w8, wzr
   1a47c: 91068260     	add	x0, x19, #0x1a0
   1a480: 39074268     	strb	w8, [x19, #0x1d0]
   1a484: 94000000     	bl	0x1a484 <syna_tcm_preserve_touch_report_config+0x180>
		000000000001a484:  R_AARCH64_CALL26	mutex_unlock
   1a488: 39462262     	ldrb	w2, [x19, #0x188]
   1a48c: 7100045f     	cmp	w2, #0x1
   1a490: 54001561     	b.ne	0x1a73c <syna_tcm_preserve_touch_report_config+0x438>
   1a494: 2a1f03e8     	mov	w8, wzr
   1a498: 91056260     	add	x0, x19, #0x158
   1a49c: 39062268     	strb	w8, [x19, #0x188]
   1a4a0: 94000000     	bl	0x1a4a0 <syna_tcm_preserve_touch_report_config+0x19c>
		000000000001a4a0:  R_AARCH64_CALL26	mutex_unlock
   1a4a4: 340007f4     	cbz	w20, 0x1a5a0 <syna_tcm_preserve_touch_report_config+0x29c>
   1a4a8: f940ca6a     	ldr	x10, [x19, #0x190]
   1a4ac: 2a1f03ef     	mov	w15, wzr
   1a4b0: 2a1f03e8     	mov	w8, wzr
   1a4b4: 2a1f03eb     	mov	w11, wzr
   1a4b8: 2a1f03e9     	mov	w9, wzr
   1a4bc: 2a1f03ed     	mov	w13, wzr
   1a4c0: 2a1f03ec     	mov	w12, wzr
   1a4c4: 14000005     	b	0x1a4d8 <syna_tcm_preserve_touch_report_config+0x1d4>
   1a4c8: 5280002c     	mov	w12, #0x1               // =1
   1a4cc: 6b1401df     	cmp	w14, w20
   1a4d0: 2a0e03ef     	mov	w15, w14
   1a4d4: 540006c2     	b.hs	0x1a5ac <syna_tcm_preserve_touch_report_config+0x2a8>
   1a4d8: 2a0f03ee     	mov	w14, w15
   1a4dc: 386e6950     	ldrb	w16, [x10, x14]
   1a4e0: 910005ce     	add	x14, x14, #0x1
   1a4e4: 71000a1f     	cmp	w16, #0x2
   1a4e8: 5400010c     	b.gt	0x1a508 <syna_tcm_preserve_touch_report_config+0x204>
   1a4ec: 51000611     	sub	w17, w16, #0x1
   1a4f0: 71000a3f     	cmp	w17, #0x2
   1a4f4: 54fffea3     	b.lo	0x1a4c8 <syna_tcm_preserve_touch_report_config+0x1c4>
   1a4f8: 350002b0     	cbnz	w16, 0x1a54c <syna_tcm_preserve_touch_report_config+0x248>
   1a4fc: 2a1f03ec     	mov	w12, wzr
   1a500: 2a1f03ed     	mov	w13, wzr
   1a504: 17fffff2     	b	0x1a4cc <syna_tcm_preserve_touch_report_config+0x1c8>
   1a508: 71000e1f     	cmp	w16, #0x3
   1a50c: 54000180     	b.eq	0x1a53c <syna_tcm_preserve_touch_report_config+0x238>
   1a510: 7100121f     	cmp	w16, #0x4
   1a514: 540001c1     	b.ne	0x1a54c <syna_tcm_preserve_touch_report_config+0x248>
   1a518: 11001d6f     	add	w15, w11, #0x7
   1a51c: 7200019f     	tst	w12, #0x1
   1a520: 121d71ef     	and	w15, w15, #0xfffffff8
   1a524: 1a8b11eb     	csel	w11, w15, w11, ne
   1a528: 3600026d     	tbz	w13, #0x0, 0x1a574 <syna_tcm_preserve_touch_report_config+0x270>
   1a52c: 11001d08     	add	w8, w8, #0x7
   1a530: 5280002d     	mov	w13, #0x1               // =1
   1a534: 121d7108     	and	w8, w8, #0xfffffff8
   1a538: 17ffffe5     	b	0x1a4cc <syna_tcm_preserve_touch_report_config+0x1c8>
   1a53c: 2a1f03ec     	mov	w12, wzr
   1a540: b901da6e     	str	w14, [x19, #0x1d8]
   1a544: 5280002d     	mov	w13, #0x1               // =1
   1a548: 17ffffe1     	b	0x1a4cc <syna_tcm_preserve_touch_report_config+0x1c8>
   1a54c: 386e6951     	ldrb	w17, [x10, x14]
   1a550: 7200019f     	tst	w12, #0x1
   1a554: 110009ee     	add	w14, w15, #0x2
   1a558: 0b110170     	add	w16, w11, w17
   1a55c: 1a8b120f     	csel	w15, w16, w11, ne
   1a560: 360000ed     	tbz	w13, #0x0, 0x1a57c <syna_tcm_preserve_touch_report_config+0x278>
   1a564: 0b110108     	add	w8, w8, w17
   1a568: 5280002d     	mov	w13, #0x1               // =1
   1a56c: 2a0f03eb     	mov	w11, w15
   1a570: 17ffffd7     	b	0x1a4cc <syna_tcm_preserve_touch_report_config+0x1c8>
   1a574: 2a1f03ed     	mov	w13, wzr
   1a578: 17ffffd5     	b	0x1a4cc <syna_tcm_preserve_touch_report_config+0x1c8>
   1a57c: 360000ac     	tbz	w12, #0x0, 0x1a590 <syna_tcm_preserve_touch_report_config+0x28c>
   1a580: 2a1f03ed     	mov	w13, wzr
   1a584: 5280002c     	mov	w12, #0x1               // =1
   1a588: 2a1003eb     	mov	w11, w16
   1a58c: 17ffffd0     	b	0x1a4cc <syna_tcm_preserve_touch_report_config+0x1c8>
   1a590: 2a1f03ec     	mov	w12, wzr
   1a594: 2a1f03ed     	mov	w13, wzr
   1a598: 0b110129     	add	w9, w9, w17
   1a59c: 17ffffcc     	b	0x1a4cc <syna_tcm_preserve_touch_report_config+0x1c8>
   1a5a0: 2a1f03e9     	mov	w9, wzr
   1a5a4: 2a1f03eb     	mov	w11, wzr
   1a5a8: 2a1f03e8     	mov	w8, wzr
   1a5ac: 2a1f03e0     	mov	w0, wzr
   1a5b0: b901e269     	str	w9, [x19, #0x1e0]
   1a5b4: b901de6b     	str	w11, [x19, #0x1dc]
   1a5b8: b901e668     	str	w8, [x19, #0x1e4]
   1a5bc: b9038e7f     	str	wzr, [x19, #0x38c]
   1a5c0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1a5c4: f9400bf5     	ldr	x21, [sp, #0x10]
   1a5c8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1a5cc: d50323bf     	autiasp
   1a5d0: d65f03c0     	ret
   1a5d4: 90000000     	adrp	x0, 0x1a000 <change_tp_state+0x18>
		000000000001a5d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   1a5d8: 91000000     	add	x0, x0, #0x0
		000000000001a5d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   1a5dc: 90000001     	adrp	x1, 0x1a000 <change_tp_state+0x18>
		000000000001a5dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36e8
   1a5e0: 91000021     	add	x1, x1, #0x0
		000000000001a5e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36e8
   1a5e4: 94000000     	bl	0x1a5e4 <syna_tcm_preserve_touch_report_config+0x2e0>
		000000000001a5e4:  R_AARCH64_CALL26	_printk
   1a5e8: 12801e00     	mov	w0, #-0xf1              // =-241
   1a5ec: 17fffff5     	b	0x1a5c0 <syna_tcm_preserve_touch_report_config+0x2bc>
   1a5f0: 90000000     	adrp	x0, 0x1a000 <change_tp_state+0x18>
		000000000001a5f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ad2
   1a5f4: 91000000     	add	x0, x0, #0x0
		000000000001a5f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ad2
   1a5f8: 14000029     	b	0x1a69c <syna_tcm_preserve_touch_report_config+0x398>
   1a5fc: 90000008     	adrp	x8, 0x1a000 <change_tp_state+0x18>
		000000000001a5fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2474
   1a600: 91000108     	add	x8, x8, #0x0
		000000000001a600:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2474
   1a604: 90000001     	adrp	x1, 0x1a000 <change_tp_state+0x18>
		000000000001a604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36e8
   1a608: 91000021     	add	x1, x1, #0x0
		000000000001a608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36e8
   1a60c: 2a0003f4     	mov	w20, w0
   1a610: aa0803e0     	mov	x0, x8
   1a614: 94000000     	bl	0x1a614 <syna_tcm_preserve_touch_report_config+0x310>
		000000000001a614:  R_AARCH64_CALL26	_printk
   1a618: 2a1403e0     	mov	w0, w20
   1a61c: 17ffffe8     	b	0x1a5bc <syna_tcm_preserve_touch_report_config+0x2b8>
   1a620: b9415663     	ldr	w3, [x19, #0x154]
   1a624: 90000000     	adrp	x0, 0x1a000 <change_tp_state+0x18>
		000000000001a624:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad54
   1a628: 91000000     	add	x0, x0, #0x0
		000000000001a628:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad54
   1a62c: 14000014     	b	0x1a67c <syna_tcm_preserve_touch_report_config+0x378>
   1a630: b9415662     	ldr	w2, [x19, #0x154]
   1a634: 90000000     	adrp	x0, 0x1a000 <change_tp_state+0x18>
		000000000001a634:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x370e
   1a638: 91000000     	add	x0, x0, #0x0
		000000000001a638:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x370e
   1a63c: 14000018     	b	0x1a69c <syna_tcm_preserve_touch_report_config+0x398>
   1a640: 90000000     	adrp	x0, 0x1a000 <change_tp_state+0x18>
		000000000001a640:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   1a644: 91000000     	add	x0, x0, #0x0
		000000000001a644:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   1a648: 90000001     	adrp	x1, 0x1a000 <change_tp_state+0x18>
		000000000001a648:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   1a64c: 91000021     	add	x1, x1, #0x0
		000000000001a64c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   1a650: 94000000     	bl	0x1a650 <syna_tcm_preserve_touch_report_config+0x34c>
		000000000001a650:  R_AARCH64_CALL26	_printk
   1a654: 17ffff51     	b	0x1a398 <syna_tcm_preserve_touch_report_config+0x94>
   1a658: 90000000     	adrp	x0, 0x1a000 <change_tp_state+0x18>
		000000000001a658:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   1a65c: 91000000     	add	x0, x0, #0x0
		000000000001a65c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   1a660: 90000001     	adrp	x1, 0x1a000 <change_tp_state+0x18>
		000000000001a660:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   1a664: 91000021     	add	x1, x1, #0x0
		000000000001a664:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   1a668: 94000000     	bl	0x1a668 <syna_tcm_preserve_touch_report_config+0x364>
		000000000001a668:  R_AARCH64_CALL26	_printk
   1a66c: 17ffff52     	b	0x1a3b4 <syna_tcm_preserve_touch_report_config+0xb0>
   1a670: b9415663     	ldr	w3, [x19, #0x154]
   1a674: 90000000     	adrp	x0, 0x1a000 <change_tp_state+0x18>
		000000000001a674:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb452
   1a678: 91000000     	add	x0, x0, #0x0
		000000000001a678:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb452
   1a67c: 90000001     	adrp	x1, 0x1a000 <change_tp_state+0x18>
		000000000001a67c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36e8
   1a680: 91000021     	add	x1, x1, #0x0
		000000000001a680:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36e8
   1a684: 94000000     	bl	0x1a684 <syna_tcm_preserve_touch_report_config+0x380>
		000000000001a684:  R_AARCH64_CALL26	_printk
   1a688: 12801e00     	mov	w0, #-0xf1              // =-241
   1a68c: 17ffffcd     	b	0x1a5c0 <syna_tcm_preserve_touch_report_config+0x2bc>
   1a690: b9415662     	ldr	w2, [x19, #0x154]
   1a694: 90000000     	adrp	x0, 0x1a000 <change_tp_state+0x18>
		000000000001a694:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ef4
   1a698: 91000000     	add	x0, x0, #0x0
		000000000001a698:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ef4
   1a69c: 90000001     	adrp	x1, 0x1a000 <change_tp_state+0x18>
		000000000001a69c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36e8
   1a6a0: 91000021     	add	x1, x1, #0x0
		000000000001a6a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36e8
   1a6a4: 94000000     	bl	0x1a6a4 <syna_tcm_preserve_touch_report_config+0x3a0>
		000000000001a6a4:  R_AARCH64_CALL26	_printk
   1a6a8: 12801e00     	mov	w0, #-0xf1              // =-241
   1a6ac: 17ffffc5     	b	0x1a5c0 <syna_tcm_preserve_touch_report_config+0x2bc>
   1a6b0: 90000000     	adrp	x0, 0x1a000 <change_tp_state+0x18>
		000000000001a6b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
   1a6b4: 91000000     	add	x0, x0, #0x0
		000000000001a6b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
   1a6b8: 90000001     	adrp	x1, 0x1a000 <change_tp_state+0x18>
		000000000001a6b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
   1a6bc: 91000021     	add	x1, x1, #0x0
		000000000001a6bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
   1a6c0: 2a1403e4     	mov	w4, w20
   1a6c4: 94000000     	bl	0x1a6c4 <syna_tcm_preserve_touch_report_config+0x3c0>
		000000000001a6c4:  R_AARCH64_CALL26	_printk
   1a6c8: 90000000     	adrp	x0, 0x1a000 <change_tp_state+0x18>
		000000000001a6c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a02
   1a6cc: 91000000     	add	x0, x0, #0x0
		000000000001a6cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a02
   1a6d0: 90000001     	adrp	x1, 0x1a000 <change_tp_state+0x18>
		000000000001a6d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36e8
   1a6d4: 91000021     	add	x1, x1, #0x0
		000000000001a6d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36e8
   1a6d8: 94000000     	bl	0x1a6d8 <syna_tcm_preserve_touch_report_config+0x3d4>
		000000000001a6d8:  R_AARCH64_CALL26	_printk
   1a6dc: 39474262     	ldrb	w2, [x19, #0x1d0]
   1a6e0: 7100045f     	cmp	w2, #0x1
   1a6e4: 54000941     	b.ne	0x1a80c <syna_tcm_preserve_touch_report_config+0x508>
   1a6e8: 2a1f03e8     	mov	w8, wzr
   1a6ec: 91068260     	add	x0, x19, #0x1a0
   1a6f0: 39074268     	strb	w8, [x19, #0x1d0]
   1a6f4: 94000000     	bl	0x1a6f4 <syna_tcm_preserve_touch_report_config+0x3f0>
		000000000001a6f4:  R_AARCH64_CALL26	mutex_unlock
   1a6f8: 39462262     	ldrb	w2, [x19, #0x188]
   1a6fc: 7100045f     	cmp	w2, #0x1
   1a700: 54000961     	b.ne	0x1a82c <syna_tcm_preserve_touch_report_config+0x528>
   1a704: 2a1f03e8     	mov	w8, wzr
   1a708: 91056260     	add	x0, x19, #0x158
   1a70c: 39062268     	strb	w8, [x19, #0x188]
   1a710: 94000000     	bl	0x1a710 <syna_tcm_preserve_touch_report_config+0x40c>
		000000000001a710:  R_AARCH64_CALL26	mutex_unlock
   1a714: 128002a0     	mov	w0, #-0x16              // =-22
   1a718: 17ffffa9     	b	0x1a5bc <syna_tcm_preserve_touch_report_config+0x2b8>
   1a71c: 90000000     	adrp	x0, 0x1a000 <change_tp_state+0x18>
		000000000001a71c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   1a720: 91000000     	add	x0, x0, #0x0
		000000000001a720:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   1a724: 90000001     	adrp	x1, 0x1a000 <change_tp_state+0x18>
		000000000001a724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   1a728: 91000021     	add	x1, x1, #0x0
		000000000001a728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   1a72c: 94000000     	bl	0x1a72c <syna_tcm_preserve_touch_report_config+0x428>
		000000000001a72c:  R_AARCH64_CALL26	_printk
   1a730: 39474268     	ldrb	w8, [x19, #0x1d0]
   1a734: 51000508     	sub	w8, w8, #0x1
   1a738: 17ffff51     	b	0x1a47c <syna_tcm_preserve_touch_report_config+0x178>
   1a73c: 90000000     	adrp	x0, 0x1a000 <change_tp_state+0x18>
		000000000001a73c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   1a740: 91000000     	add	x0, x0, #0x0
		000000000001a740:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   1a744: 90000001     	adrp	x1, 0x1a000 <change_tp_state+0x18>
		000000000001a744:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   1a748: 91000021     	add	x1, x1, #0x0
		000000000001a748:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   1a74c: 94000000     	bl	0x1a74c <syna_tcm_preserve_touch_report_config+0x448>
		000000000001a74c:  R_AARCH64_CALL26	_printk
   1a750: 39462268     	ldrb	w8, [x19, #0x188]
   1a754: 51000508     	sub	w8, w8, #0x1
   1a758: 17ffff50     	b	0x1a498 <syna_tcm_preserve_touch_report_config+0x194>
   1a75c: 90000000     	adrp	x0, 0x1a000 <change_tp_state+0x18>
		000000000001a75c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70d6
   1a760: 91000000     	add	x0, x0, #0x0
		000000000001a760:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70d6
   1a764: 14000011     	b	0x1a7a8 <syna_tcm_preserve_touch_report_config+0x4a4>
   1a768: b9420e74     	ldr	w20, [x19, #0x20c]
   1a76c: 90000000     	adrp	x0, 0x1a000 <change_tp_state+0x18>
		000000000001a76c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab68
   1a770: 91000000     	add	x0, x0, #0x0
		000000000001a770:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab68
   1a774: 90000001     	adrp	x1, 0x1a000 <change_tp_state+0x18>
		000000000001a774:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36e8
   1a778: 91000021     	add	x1, x1, #0x0
		000000000001a778:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36e8
   1a77c: 94000000     	bl	0x1a77c <syna_tcm_preserve_touch_report_config+0x478>
		000000000001a77c:  R_AARCH64_CALL26	_printk
   1a780: 17fffef1     	b	0x1a344 <syna_tcm_preserve_touch_report_config+0x40>
   1a784: 90000000     	adrp	x0, 0x1a000 <change_tp_state+0x18>
		000000000001a784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1a788: 91000000     	add	x0, x0, #0x0
		000000000001a788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   1a78c: 90000001     	adrp	x1, 0x1a000 <change_tp_state+0x18>
		000000000001a78c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   1a790: 91000021     	add	x1, x1, #0x0
		000000000001a790:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   1a794: 94000000     	bl	0x1a794 <syna_tcm_preserve_touch_report_config+0x490>
		000000000001a794:  R_AARCH64_CALL26	_printk
   1a798: 94000000     	bl	0x1a798 <syna_tcm_preserve_touch_report_config+0x494>
		000000000001a798:  R_AARCH64_CALL26	syna_request_managed_device
   1a79c: b5ffe340     	cbnz	x0, 0x1a404 <syna_tcm_preserve_touch_report_config+0x100>
   1a7a0: 90000000     	adrp	x0, 0x1a000 <change_tp_state+0x18>
		000000000001a7a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1a7a4: 91000000     	add	x0, x0, #0x0
		000000000001a7a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   1a7a8: 90000001     	adrp	x1, 0x1a000 <change_tp_state+0x18>
		000000000001a7a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
   1a7ac: 91000021     	add	x1, x1, #0x0
		000000000001a7ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
   1a7b0: 94000000     	bl	0x1a7b0 <syna_tcm_preserve_touch_report_config+0x4ac>
		000000000001a7b0:  R_AARCH64_CALL26	_printk
   1a7b4: f900ca7f     	str	xzr, [x19, #0x190]
   1a7b8: 90000000     	adrp	x0, 0x1a000 <change_tp_state+0x18>
		000000000001a7b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d74
   1a7bc: 91000000     	add	x0, x0, #0x0
		000000000001a7bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d74
   1a7c0: 90000001     	adrp	x1, 0x1a000 <change_tp_state+0x18>
		000000000001a7c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77fc
   1a7c4: 91000021     	add	x1, x1, #0x0
		000000000001a7c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77fc
   1a7c8: 2a1403e2     	mov	w2, w20
   1a7cc: 94000000     	bl	0x1a7cc <syna_tcm_preserve_touch_report_config+0x4c8>
		000000000001a7cc:  R_AARCH64_CALL26	_printk
   1a7d0: 90000000     	adrp	x0, 0x1a000 <change_tp_state+0x18>
		000000000001a7d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43ea
   1a7d4: 91000000     	add	x0, x0, #0x0
		000000000001a7d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43ea
   1a7d8: 90000001     	adrp	x1, 0x1a000 <change_tp_state+0x18>
		000000000001a7d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36e8
   1a7dc: 91000021     	add	x1, x1, #0x0
		000000000001a7dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36e8
   1a7e0: f900ce7f     	str	xzr, [x19, #0x198]
   1a7e4: 94000000     	bl	0x1a7e4 <syna_tcm_preserve_touch_report_config+0x4e0>
		000000000001a7e4:  R_AARCH64_CALL26	_printk
   1a7e8: 39462262     	ldrb	w2, [x19, #0x188]
   1a7ec: 7100045f     	cmp	w2, #0x1
   1a7f0: 540002e1     	b.ne	0x1a84c <syna_tcm_preserve_touch_report_config+0x548>
   1a7f4: 2a1f03e8     	mov	w8, wzr
   1a7f8: 91056260     	add	x0, x19, #0x158
   1a7fc: 39062268     	strb	w8, [x19, #0x188]
   1a800: 94000000     	bl	0x1a800 <syna_tcm_preserve_touch_report_config+0x4fc>
		000000000001a800:  R_AARCH64_CALL26	mutex_unlock
   1a804: 12801e40     	mov	w0, #-0xf3              // =-243
   1a808: 17ffff6d     	b	0x1a5bc <syna_tcm_preserve_touch_report_config+0x2b8>
   1a80c: 90000000     	adrp	x0, 0x1a000 <change_tp_state+0x18>
		000000000001a80c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   1a810: 91000000     	add	x0, x0, #0x0
		000000000001a810:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   1a814: 90000001     	adrp	x1, 0x1a000 <change_tp_state+0x18>
		000000000001a814:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   1a818: 91000021     	add	x1, x1, #0x0
		000000000001a818:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   1a81c: 94000000     	bl	0x1a81c <syna_tcm_preserve_touch_report_config+0x518>
		000000000001a81c:  R_AARCH64_CALL26	_printk
   1a820: 39474268     	ldrb	w8, [x19, #0x1d0]
   1a824: 51000508     	sub	w8, w8, #0x1
   1a828: 17ffffb1     	b	0x1a6ec <syna_tcm_preserve_touch_report_config+0x3e8>
   1a82c: 90000000     	adrp	x0, 0x1a000 <change_tp_state+0x18>
		000000000001a82c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   1a830: 91000000     	add	x0, x0, #0x0
		000000000001a830:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   1a834: 90000001     	adrp	x1, 0x1a000 <change_tp_state+0x18>
		000000000001a834:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   1a838: 91000021     	add	x1, x1, #0x0
		000000000001a838:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   1a83c: 94000000     	bl	0x1a83c <syna_tcm_preserve_touch_report_config+0x538>
		000000000001a83c:  R_AARCH64_CALL26	_printk
   1a840: 39462268     	ldrb	w8, [x19, #0x188]
   1a844: 51000508     	sub	w8, w8, #0x1
   1a848: 17ffffb0     	b	0x1a708 <syna_tcm_preserve_touch_report_config+0x404>
   1a84c: 90000000     	adrp	x0, 0x1a000 <change_tp_state+0x18>
		000000000001a84c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   1a850: 91000000     	add	x0, x0, #0x0
		000000000001a850:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   1a854: 90000001     	adrp	x1, 0x1a000 <change_tp_state+0x18>
		000000000001a854:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   1a858: 91000021     	add	x1, x1, #0x0
		000000000001a858:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   1a85c: 94000000     	bl	0x1a85c <syna_tcm_preserve_touch_report_config+0x558>
		000000000001a85c:  R_AARCH64_CALL26	_printk
   1a860: 39462268     	ldrb	w8, [x19, #0x188]
   1a864: 51000508     	sub	w8, w8, #0x1
   1a868: 17ffffe4     	b	0x1a7f8 <syna_tcm_preserve_touch_report_config+0x4f4>
