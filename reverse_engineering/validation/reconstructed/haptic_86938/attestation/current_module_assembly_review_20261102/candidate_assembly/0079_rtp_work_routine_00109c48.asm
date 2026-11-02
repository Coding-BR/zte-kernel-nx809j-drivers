
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a1e4 <rtp_work_routine>:
    a1e4: d503233f     	paciasp
    a1e8: d101c3ff     	sub	sp, sp, #0x70
    a1ec: a9017bfd     	stp	x29, x30, [sp, #0x10]
    a1f0: a9026ffc     	stp	x28, x27, [sp, #0x20]
    a1f4: a90367fa     	stp	x26, x25, [sp, #0x30]
    a1f8: a9045ff8     	stp	x24, x23, [sp, #0x40]
    a1fc: a90557f6     	stp	x22, x21, [sp, #0x50]
    a200: a9064ff4     	stp	x20, x19, [sp, #0x60]
    a204: 910043fd     	add	x29, sp, #0x10
    a208: d5384108     	mrs	x8, SP_EL0
    a20c: d100c013     	sub	x19, x0, #0x30
    a210: aa0003f4     	mov	x20, x0
    a214: f9438908     	ldr	x8, [x8, #0x710]
    a218: aa1303e0     	mov	x0, x19
    a21c: f90007e8     	str	x8, [sp, #0x8]
    a220: f90003ff     	str	xzr, [sp]
    a224: 94000000     	bl	0xa224 <rtp_work_routine+0x40>
		000000000000a224:  R_AARCH64_CALL26	mutex_lock
    a228: d10c4299     	sub	x25, x20, #0x310
    a22c: d10e0e97     	sub	x23, x20, #0x383
    a230: 52800029     	mov	w9, #0x1                // =1
    a234: b9400328     	ldr	w8, [x25]
    a238: 390002e9     	strb	w9, [x23]
    a23c: 7100191f     	cmp	w8, #0x6
    a240: 54002de2     	b.hs	0xa7fc <rtp_work_routine+0x618>
    a244: 90000016     	adrp	x22, 0xa000 <vibrator_work_routine+0x378>
		000000000000a244:  R_AARCH64_ADR_PREL_PG_HI21	aw_rtp_name
    a248: 910002d6     	add	x22, x22, #0x0
		000000000000a248:  R_AARCH64_ADD_ABS_LO12_NC	aw_rtp_name
    a24c: f8580282     	ldur	x2, [x20, #-0x80]
    a250: 8b081ac1     	add	x1, x22, x8, lsl #6
    a254: 910003e0     	mov	x0, sp
    a258: 94000000     	bl	0xa258 <rtp_work_routine+0x74>
		000000000000a258:  R_AARCH64_CALL26	request_firmware
    a25c: 36f801e0     	tbz	w0, #0x1f, 0xa298 <rtp_work_routine+0xb4>
    a260: b9400328     	ldr	w8, [x25]
    a264: 7100151f     	cmp	w8, #0x5
    a268: 54002ca8     	b.hi	0xa7fc <rtp_work_routine+0x618>
    a26c: 8b081ac4     	add	x4, x22, x8, lsl #6
    a270: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x378>
		000000000000a270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a86
    a274: 91000000     	add	x0, x0, #0x0
		000000000000a274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a86
    a278: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x378>
		000000000000a278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    a27c: 91000021     	add	x1, x1, #0x0
		000000000000a27c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    a280: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x378>
		000000000000a280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dbe
    a284: 91000063     	add	x3, x3, #0x0
		000000000000a284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dbe
    a288: 52808da2     	mov	w2, #0x46d              // =1133
    a28c: 94000000     	bl	0xa28c <rtp_work_routine+0xa8>
		000000000000a28c:  R_AARCH64_CALL26	_printk
    a290: aa1303e0     	mov	x0, x19
    a294: 1400014a     	b	0xa7bc <rtp_work_routine+0x5d8>
    a298: d10e6e9a     	sub	x26, x20, #0x39b
    a29c: 90000018     	adrp	x24, 0xa000 <vibrator_work_routine+0x378>
		000000000000a29c:  R_AARCH64_ADR_PREL_PG_HI21	aw_rtp
    a2a0: 3900035f     	strb	wzr, [x26]
    a2a4: f9400300     	ldr	x0, [x24]
		000000000000a2a4:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    a2a8: 94000000     	bl	0xa2a8 <rtp_work_routine+0xc4>
		000000000000a2a8:  R_AARCH64_CALL26	vfree
    a2ac: d503201f     	nop
    a2b0: f94003e8     	ldr	x8, [sp]
    a2b4: f9400108     	ldr	x8, [x8]
    a2b8: 91001115     	add	x21, x8, #0x4
    a2bc: aa1503e0     	mov	x0, x21
    a2c0: 94000000     	bl	0xa2c0 <rtp_work_routine+0xdc>
		000000000000a2c0:  R_AARCH64_CALL26	vmalloc_noprof
    a2c4: f94003e8     	ldr	x8, [sp]
    a2c8: f9000300     	str	x0, [x24]
		000000000000a2c8:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    a2cc: b50001a0     	cbnz	x0, 0xa300 <rtp_work_routine+0x11c>
    a2d0: aa0803e0     	mov	x0, x8
    a2d4: 94000000     	bl	0xa2d4 <rtp_work_routine+0xf0>
		000000000000a2d4:  R_AARCH64_CALL26	release_firmware
    a2d8: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x378>
		000000000000a2d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32dc
    a2dc: 91000000     	add	x0, x0, #0x0
		000000000000a2dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32dc
    a2e0: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x378>
		000000000000a2e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    a2e4: 91000021     	add	x1, x1, #0x0
		000000000000a2e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    a2e8: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x378>
		000000000000a2e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dbe
    a2ec: 91000063     	add	x3, x3, #0x0
		000000000000a2ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dbe
    a2f0: 52808ee2     	mov	w2, #0x477              // =1143
    a2f4: 94000000     	bl	0xa2f4 <rtp_work_routine+0x110>
		000000000000a2f4:  R_AARCH64_CALL26	_printk
    a2f8: aa1303e0     	mov	x0, x19
    a2fc: 14000130     	b	0xa7bc <rtp_work_routine+0x5d8>
    a300: f10012bf     	cmp	x21, #0x4
    a304: 540027e3     	b.lo	0xa800 <rtp_work_routine+0x61c>
    a308: b9400329     	ldr	w9, [x25]
    a30c: b9400105     	ldr	w5, [x8]
    a310: 7100153f     	cmp	w9, #0x5
    a314: b9000005     	str	w5, [x0]
    a318: 54002728     	b.hi	0xa7fc <rtp_work_routine+0x618>
    a31c: 8b091ac4     	add	x4, x22, x9, lsl #6
    a320: 90000016     	adrp	x22, 0xa000 <vibrator_work_routine+0x378>
		000000000000a320:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    a324: 910002d6     	add	x22, x22, #0x0
		000000000000a324:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    a328: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x378>
		000000000000a328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4172
    a32c: 91000000     	add	x0, x0, #0x0
		000000000000a32c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4172
    a330: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x378>
		000000000000a330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dbe
    a334: 91000063     	add	x3, x3, #0x0
		000000000000a334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dbe
    a338: aa1603e1     	mov	x1, x22
    a33c: 52808fc2     	mov	w2, #0x47e              // =1150
    a340: d10e8295     	sub	x21, x20, #0x3a0
    a344: 94000000     	bl	0xa344 <rtp_work_routine+0x160>
		000000000000a344:  R_AARCH64_CALL26	_printk
    a348: f94003e8     	ldr	x8, [sp]
    a34c: f9400309     	ldr	x9, [x24]
		000000000000a34c:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    a350: a9400502     	ldp	x2, x1, [x8]
    a354: 91001120     	add	x0, x9, #0x4
    a358: 94000000     	bl	0xa358 <rtp_work_routine+0x174>
		000000000000a358:  R_AARCH64_CALL26	memcpy
    a35c: aa1303e0     	mov	x0, x19
    a360: 94000000     	bl	0xa360 <rtp_work_routine+0x17c>
		000000000000a360:  R_AARCH64_CALL26	mutex_unlock
    a364: f94003e0     	ldr	x0, [sp]
    a368: 94000000     	bl	0xa368 <rtp_work_routine+0x184>
		000000000000a368:  R_AARCH64_CALL26	release_firmware
    a36c: d102c280     	sub	x0, x20, #0xb0
    a370: aa0003f9     	mov	x25, x0
    a374: 94000000     	bl	0xa374 <rtp_work_routine+0x190>
		000000000000a374:  R_AARCH64_CALL26	mutex_lock
    a378: 52800028     	mov	w8, #0x1                // =1
    a37c: f9411689     	ldr	x9, [x20, #0x228]
    a380: aa1503e0     	mov	x0, x21
    a384: 39000348     	strb	w8, [x26]
    a388: 52800041     	mov	w1, #0x2                // =2
    a38c: f9408d28     	ldr	x8, [x9, #0x118]
    a390: b85fc110     	ldur	w16, [x8, #-0x4]
    a394: 728dd2b1     	movk	w17, #0x6e95
    a398: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    a39c: 6b11021f     	cmp	w16, w17
    a3a0: 54000040     	b.eq	0xa3a8 <rtp_work_routine+0x1c4>
    a3a4: d4304500     	brk	#0x8228
    a3a8: d63f0100     	blr	x8
    a3ac: f9411688     	ldr	x8, [x20, #0x228]
    a3b0: aa1503e0     	mov	x0, x21
    a3b4: 2a1f03e1     	mov	w1, wzr
    a3b8: f9408908     	ldr	x8, [x8, #0x110]
    a3bc: b85fc110     	ldur	w16, [x8, #-0x4]
    a3c0: 729bedd1     	movk	w17, #0xdf6e
    a3c4: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    a3c8: 6b11021f     	cmp	w16, w17
    a3cc: 54000040     	b.eq	0xa3d4 <rtp_work_routine+0x1f0>
    a3d0: d4304500     	brk	#0x8228
    a3d4: d63f0100     	blr	x8
    a3d8: f9411688     	ldr	x8, [x20, #0x228]
    a3dc: aa1503e0     	mov	x0, x21
    a3e0: f9407908     	ldr	x8, [x8, #0xf0]
    a3e4: b85fc110     	ldur	w16, [x8, #-0x4]
    a3e8: 72810611     	movk	w17, #0x830
    a3ec: 72b08f51     	movk	w17, #0x847a, lsl #16
    a3f0: 6b11021f     	cmp	w16, w17
    a3f4: 54000040     	b.eq	0xa3fc <rtp_work_routine+0x218>
    a3f8: d4304500     	brk	#0x8228
    a3fc: d63f0100     	blr	x8
    a400: f9411688     	ldr	x8, [x20, #0x228]
    a404: aa1503e0     	mov	x0, x21
    a408: f9401d08     	ldr	x8, [x8, #0x38]
    a40c: b85fc110     	ldur	w16, [x8, #-0x4]
    a410: 72810611     	movk	w17, #0x830
    a414: 72b08f51     	movk	w17, #0x847a, lsl #16
    a418: 6b11021f     	cmp	w16, w17
    a41c: 54000040     	b.eq	0xa424 <rtp_work_routine+0x240>
    a420: d4304500     	brk	#0x8228
    a424: d63f0100     	blr	x8
    a428: f9411688     	ldr	x8, [x20, #0x228]
    a42c: d10db289     	sub	x9, x20, #0x36c
    a430: aa1503e0     	mov	x0, x21
    a434: b9400121     	ldr	w1, [x9]
    a438: f9404508     	ldr	x8, [x8, #0x88]
    a43c: b85fc110     	ldur	w16, [x8, #-0x4]
    a440: 729bedd1     	movk	w17, #0xdf6e
    a444: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    a448: 6b11021f     	cmp	w16, w17
    a44c: 54000040     	b.eq	0xa454 <rtp_work_routine+0x270>
    a450: d4304500     	brk	#0x8228
    a454: d63f0100     	blr	x8
    a458: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x378>
		000000000000a458:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29d4
    a45c: 91000000     	add	x0, x0, #0x0
		000000000000a45c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29d4
    a460: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x378>
		000000000000a460:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34f4
    a464: 91000063     	add	x3, x3, #0x0
		000000000000a464:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34f4
    a468: aa1603e1     	mov	x1, x22
    a46c: 52805322     	mov	w2, #0x299              // =665
    a470: 94000000     	bl	0xa470 <rtp_work_routine+0x28c>
		000000000000a470:  R_AARCH64_CALL26	_printk
    a474: 3943e281     	ldrb	w1, [x20, #0xf8]
    a478: f9411688     	ldr	x8, [x20, #0x228]
    a47c: 39430689     	ldrb	w9, [x20, #0xc1]
    a480: 5100042a     	sub	w10, w1, #0x1
    a484: f9405108     	ldr	x8, [x8, #0xa0]
    a488: 6b2a013f     	cmp	w9, w10, uxtb
    a48c: 54000068     	b.hi	0xa498 <rtp_work_routine+0x2b4>
    a490: d10dc289     	sub	x9, x20, #0x370
    a494: b9400121     	ldr	w1, [x9]
    a498: aa1503e0     	mov	x0, x21
    a49c: b85fc110     	ldur	w16, [x8, #-0x4]
    a4a0: 729bedd1     	movk	w17, #0xdf6e
    a4a4: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    a4a8: 6b11021f     	cmp	w16, w17
    a4ac: 54000040     	b.eq	0xa4b4 <rtp_work_routine+0x2d0>
    a4b0: d4304500     	brk	#0x8228
    a4b4: d63f0100     	blr	x8
    a4b8: f9411688     	ldr	x8, [x20, #0x228]
    a4bc: aa1503e0     	mov	x0, x21
    a4c0: 52800041     	mov	w1, #0x2                // =2
    a4c4: f9404d08     	ldr	x8, [x8, #0x98]
    a4c8: b85fc110     	ldur	w16, [x8, #-0x4]
    a4cc: 729bedd1     	movk	w17, #0xdf6e
    a4d0: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    a4d4: 6b11021f     	cmp	w16, w17
    a4d8: 54000040     	b.eq	0xa4e0 <rtp_work_routine+0x2fc>
    a4dc: d4304500     	brk	#0x8228
    a4e0: d63f0100     	blr	x8
    a4e4: f9411688     	ldr	x8, [x20, #0x228]
    a4e8: aa1503e0     	mov	x0, x21
    a4ec: 52800021     	mov	w1, #0x1                // =1
    a4f0: f9403108     	ldr	x8, [x8, #0x60]
    a4f4: b85fc110     	ldur	w16, [x8, #-0x4]
    a4f8: 729bedd1     	movk	w17, #0xdf6e
    a4fc: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    a500: 6b11021f     	cmp	w16, w17
    a504: 54000040     	b.eq	0xa50c <rtp_work_routine+0x328>
    a508: d4304500     	brk	#0x8228
    a50c: d63f0100     	blr	x8
    a510: 5280fa00     	mov	w0, #0x7d0              // =2000
    a514: 52813881     	mov	w1, #0x9c4              // =2500
    a518: 52800042     	mov	w2, #0x2                // =2
    a51c: 94000000     	bl	0xa51c <rtp_work_routine+0x338>
		000000000000a51c:  R_AARCH64_CALL26	usleep_range_state
    a520: 128018f6     	mov	w22, #-0xc8             // =-200
    a524: f9411688     	ldr	x8, [x20, #0x228]
    a528: aa1503e0     	mov	x0, x21
    a52c: f940b108     	ldr	x8, [x8, #0x160]
    a530: b85fc110     	ldur	w16, [x8, #-0x4]
    a534: 72870a91     	movk	w17, #0x3854
    a538: 72af0971     	movk	w17, #0x784b, lsl #16
    a53c: 6b11021f     	cmp	w16, w17
    a540: 54000040     	b.eq	0xa548 <rtp_work_routine+0x364>
    a544: d4304500     	brk	#0x8228
    a548: d63f0100     	blr	x8
    a54c: 12000c08     	and	w8, w0, #0xf
    a550: 7100211f     	cmp	w8, #0x8
    a554: 54000340     	b.eq	0xa5bc <rtp_work_routine+0x3d8>
    a558: 5280fa00     	mov	w0, #0x7d0              // =2000
    a55c: 52813881     	mov	w1, #0x9c4              // =2500
    a560: 52800042     	mov	w2, #0x2                // =2
    a564: 94000000     	bl	0xa564 <rtp_work_routine+0x380>
		000000000000a564:  R_AARCH64_CALL26	usleep_range_state
    a568: 310006d6     	adds	w22, w22, #0x1
    a56c: 54fffdc3     	b.lo	0xa524 <rtp_work_routine+0x340>
    a570: f9411688     	ldr	x8, [x20, #0x228]
    a574: aa1503e0     	mov	x0, x21
    a578: f9401d08     	ldr	x8, [x8, #0x38]
    a57c: b85fc110     	ldur	w16, [x8, #-0x4]
    a580: 72810611     	movk	w17, #0x830
    a584: 72b08f51     	movk	w17, #0x847a, lsl #16
    a588: 6b11021f     	cmp	w16, w17
    a58c: 54000040     	b.eq	0xa594 <rtp_work_routine+0x3b0>
    a590: d4304500     	brk	#0x8228
    a594: d63f0100     	blr	x8
    a598: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x378>
		000000000000a598:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fb0
    a59c: 91000000     	add	x0, x0, #0x0
		000000000000a59c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fb0
    a5a0: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x378>
		000000000000a5a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    a5a4: 91000021     	add	x1, x1, #0x0
		000000000000a5a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    a5a8: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x378>
		000000000000a5a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dbe
    a5ac: 91000063     	add	x3, x3, #0x0
		000000000000a5ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dbe
    a5b0: 52809502     	mov	w2, #0x4a8              // =1192
    a5b4: 94000000     	bl	0xa5b4 <rtp_work_routine+0x3d0>
		000000000000a5b4:  R_AARCH64_CALL26	_printk
    a5b8: 14000080     	b	0xa7b8 <rtp_work_routine+0x5d4>
    a5bc: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x378>
		000000000000a5bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b3e
    a5c0: 91000000     	add	x0, x0, #0x0
		000000000000a5c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b3e
    a5c4: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x378>
		000000000000a5c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    a5c8: 91000021     	add	x1, x1, #0x0
		000000000000a5c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    a5cc: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x378>
		000000000000a5cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dbe
    a5d0: 91000063     	add	x3, x3, #0x0
		000000000000a5d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dbe
    a5d4: 52809382     	mov	w2, #0x49c              // =1180
    a5d8: 94000000     	bl	0xa5d8 <rtp_work_routine+0x3f4>
		000000000000a5d8:  R_AARCH64_CALL26	_printk
    a5dc: 5280fa00     	mov	w0, #0x7d0              // =2000
    a5e0: 52813881     	mov	w1, #0x9c4              // =2500
    a5e4: 52800042     	mov	w2, #0x2                // =2
    a5e8: 94000000     	bl	0xa5e8 <rtp_work_routine+0x404>
		000000000000a5e8:  R_AARCH64_CALL26	usleep_range_state
    a5ec: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x378>
		000000000000a5ec:  R_AARCH64_ADR_PREL_PG_HI21	aw_pm_qos_req_vb
    a5f0: 91000000     	add	x0, x0, #0x0
		000000000000a5f0:  R_AARCH64_ADD_ABS_LO12_NC	aw_pm_qos_req_vb
    a5f4: 2a1f03e1     	mov	w1, wzr
    a5f8: 94000000     	bl	0xa5f8 <rtp_work_routine+0x414>
		000000000000a5f8:  R_AARCH64_CALL26	cpu_latency_qos_add_request
    a5fc: d10cb29b     	sub	x27, x20, #0x32c
    a600: aa1303e0     	mov	x0, x19
    a604: b900037f     	str	wzr, [x27]
    a608: 94000000     	bl	0xa608 <rtp_work_routine+0x424>
		000000000000a608:  R_AARCH64_CALL26	mutex_lock
    a60c: d10e269a     	sub	x26, x20, #0x389
    a610: f9411688     	ldr	x8, [x20, #0x228]
    a614: aa1503e0     	mov	x0, x21
    a618: f940b908     	ldr	x8, [x8, #0x170]
    a61c: b85fc110     	ldur	w16, [x8, #-0x4]
    a620: 72870a91     	movk	w17, #0x3854
    a624: 72af0971     	movk	w17, #0x784b, lsl #16
    a628: 6b11021f     	cmp	w16, w17
    a62c: 54000040     	b.eq	0xa634 <rtp_work_routine+0x450>
    a630: d4304500     	brk	#0x8228
    a634: d63f0100     	blr	x8
    a638: 72001c1f     	tst	w0, #0xff
    a63c: 54000981     	b.ne	0xa76c <rtp_work_routine+0x588>
    a640: 39400348     	ldrb	w8, [x26]
    a644: 7100091f     	cmp	w8, #0x2
    a648: 54000ae1     	b.ne	0xa7a4 <rtp_work_routine+0x5c0>
    a64c: f9400308     	ldr	x8, [x24]
		000000000000a64c:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    a650: b40006a8     	cbz	x8, 0xa724 <rtp_work_routine+0x540>
    a654: b940ba89     	ldr	w9, [x20, #0xb8]
    a658: b940036a     	ldr	w10, [x27]
    a65c: aa1503e0     	mov	x0, x21
    a660: b940010b     	ldr	w11, [x8]
    a664: f941168d     	ldr	x13, [x20, #0x228]
    a668: 53027d2c     	lsr	w12, w9, #2
    a66c: 6b09015f     	cmp	w10, w9
    a670: 8b0a0108     	add	x8, x8, x10
    a674: 4b0a016b     	sub	w11, w11, w10
    a678: 91001101     	add	x1, x8, #0x4
    a67c: 1a8c3129     	csel	w9, w9, w12, lo
    a680: f94069ac     	ldr	x12, [x13, #0xd0]
    a684: 6b09017f     	cmp	w11, w9
    a688: 1a893176     	csel	w22, w11, w9, lo
    a68c: 2a1603e2     	mov	w2, w22
    a690: b85fc190     	ldur	w16, [x12, #-0x4]
    a694: 72965371     	movk	w17, #0xb29b
    a698: 72b8d4f1     	movk	w17, #0xc6a7, lsl #16
    a69c: 6b11021f     	cmp	w16, w17
    a6a0: 54000040     	b.eq	0xa6a8 <rtp_work_routine+0x4c4>
    a6a4: d4304580     	brk	#0x822c
    a6a8: d63f0180     	blr	x12
    a6ac: b9400368     	ldr	w8, [x27]
    a6b0: f9411689     	ldr	x9, [x20, #0x228]
    a6b4: aa1503e0     	mov	x0, x21
    a6b8: 0b160108     	add	w8, w8, w22
    a6bc: b9000368     	str	w8, [x27]
    a6c0: f940b128     	ldr	x8, [x9, #0x160]
    a6c4: b85fc110     	ldur	w16, [x8, #-0x4]
    a6c8: 72870a91     	movk	w17, #0x3854
    a6cc: 72af0971     	movk	w17, #0x784b, lsl #16
    a6d0: 6b11021f     	cmp	w16, w17
    a6d4: 54000040     	b.eq	0xa6dc <rtp_work_routine+0x4f8>
    a6d8: d4304500     	brk	#0x8228
    a6dc: d63f0100     	blr	x8
    a6e0: f9400309     	ldr	x9, [x24]
		000000000000a6e0:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    a6e4: b9400368     	ldr	w8, [x27]
    a6e8: b9400129     	ldr	w9, [x9]
    a6ec: 6b09011f     	cmp	w8, w9
    a6f0: 54000060     	b.eq	0xa6fc <rtp_work_routine+0x518>
    a6f4: 12000c0a     	and	w10, w0, #0xf
    a6f8: 35fff8ca     	cbnz	w10, 0xa610 <rtp_work_routine+0x42c>
    a6fc: 6b09011f     	cmp	w8, w9
    a700: 54000241     	b.ne	0xa748 <rtp_work_routine+0x564>
    a704: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x378>
		000000000000a704:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48aa
    a708: 91000000     	add	x0, x0, #0x0
		000000000000a708:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48aa
    a70c: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x378>
		000000000000a70c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    a710: 91000021     	add	x1, x1, #0x0
		000000000000a710:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    a714: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x378>
		000000000000a714:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dd0
    a718: 91000063     	add	x3, x3, #0x0
		000000000000a718:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dd0
    a71c: 528089a2     	mov	w2, #0x44d              // =1101
    a720: 14000011     	b	0xa764 <rtp_work_routine+0x580>
    a724: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x378>
		000000000000a724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38fe
    a728: 91000000     	add	x0, x0, #0x0
		000000000000a728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38fe
    a72c: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x378>
		000000000000a72c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    a730: 91000021     	add	x1, x1, #0x0
		000000000000a730:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    a734: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x378>
		000000000000a734:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dd0
    a738: 91000063     	add	x3, x3, #0x0
		000000000000a738:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dd0
    a73c: 52808462     	mov	w2, #0x423              // =1059
    a740: 94000000     	bl	0xa740 <rtp_work_routine+0x55c>
		000000000000a740:  R_AARCH64_CALL26	_printk
    a744: 1400000a     	b	0xa76c <rtp_work_routine+0x588>
    a748: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x378>
		000000000000a748:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c06
    a74c: 91000000     	add	x0, x0, #0x0
		000000000000a74c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c06
    a750: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x378>
		000000000000a750:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    a754: 91000021     	add	x1, x1, #0x0
		000000000000a754:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    a758: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x378>
		000000000000a758:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dd0
    a75c: 91000063     	add	x3, x3, #0x0
		000000000000a75c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dd0
    a760: 52808962     	mov	w2, #0x44b              // =1099
    a764: 94000000     	bl	0xa764 <rtp_work_routine+0x580>
		000000000000a764:  R_AARCH64_CALL26	_printk
    a768: b900037f     	str	wzr, [x27]
    a76c: 39400348     	ldrb	w8, [x26]
    a770: 7100091f     	cmp	w8, #0x2
    a774: 54000181     	b.ne	0xa7a4 <rtp_work_routine+0x5c0>
    a778: f9411688     	ldr	x8, [x20, #0x228]
    a77c: aa1503e0     	mov	x0, x21
    a780: 52800021     	mov	w1, #0x1                // =1
    a784: f9408908     	ldr	x8, [x8, #0x110]
    a788: b85fc110     	ldur	w16, [x8, #-0x4]
    a78c: 729bedd1     	movk	w17, #0xdf6e
    a790: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    a794: 6b11021f     	cmp	w16, w17
    a798: 54000040     	b.eq	0xa7a0 <rtp_work_routine+0x5bc>
    a79c: d4304500     	brk	#0x8228
    a7a0: d63f0100     	blr	x8
    a7a4: aa1303e0     	mov	x0, x19
    a7a8: 94000000     	bl	0xa7a8 <rtp_work_routine+0x5c4>
		000000000000a7a8:  R_AARCH64_CALL26	mutex_unlock
    a7ac: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x378>
		000000000000a7ac:  R_AARCH64_ADR_PREL_PG_HI21	aw_pm_qos_req_vb
    a7b0: 91000000     	add	x0, x0, #0x0
		000000000000a7b0:  R_AARCH64_ADD_ABS_LO12_NC	aw_pm_qos_req_vb
    a7b4: 94000000     	bl	0xa7b4 <rtp_work_routine+0x5d0>
		000000000000a7b4:  R_AARCH64_CALL26	cpu_latency_qos_remove_request
    a7b8: aa1903e0     	mov	x0, x25
    a7bc: 390002ff     	strb	wzr, [x23]
    a7c0: 94000000     	bl	0xa7c0 <rtp_work_routine+0x5dc>
		000000000000a7c0:  R_AARCH64_CALL26	mutex_unlock
    a7c4: d5384108     	mrs	x8, SP_EL0
    a7c8: f9438908     	ldr	x8, [x8, #0x710]
    a7cc: f94007e9     	ldr	x9, [sp, #0x8]
    a7d0: eb09011f     	cmp	x8, x9
    a7d4: 54000181     	b.ne	0xa804 <rtp_work_routine+0x620>
    a7d8: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    a7dc: a94557f6     	ldp	x22, x21, [sp, #0x50]
    a7e0: a9445ff8     	ldp	x24, x23, [sp, #0x40]
    a7e4: a94367fa     	ldp	x26, x25, [sp, #0x30]
    a7e8: a9426ffc     	ldp	x28, x27, [sp, #0x20]
    a7ec: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    a7f0: 9101c3ff     	add	sp, sp, #0x70
    a7f4: d50323bf     	autiasp
    a7f8: d65f03c0     	ret
    a7fc: d42aa240     	brk	#0x5512
    a800: d4200020     	brk	#0x1
    a804: 94000000     	bl	0xa804 <rtp_work_routine+0x620>
		000000000000a804:  R_AARCH64_CALL26	__stack_chk_fail
    a808: f94003e8     	ldr	x8, [sp]
    a80c: 90000009     	adrp	x9, 0xa000 <vibrator_work_routine+0x378>
		000000000000a80c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x230
    a810: 91000129     	add	x9, x9, #0x0
		000000000000a810:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x230
    a814: d538411b     	mrs	x27, SP_EL0
    a818: f9402b7c     	ldr	x28, [x27, #0x50]
    a81c: f9002b69     	str	x9, [x27, #0x50]
    a820: f9400108     	ldr	x8, [x8]
    a824: 91001115     	add	x21, x8, #0x4
    a828: aa1503e0     	mov	x0, x21
    a82c: 94000000     	bl	0xa82c <rtp_work_routine+0x648>
		000000000000a82c:  R_AARCH64_CALL26	vmalloc_noprof
    a830: f9002b7c     	str	x28, [x27, #0x50]
    a834: 17fffea4     	b	0xa2c4 <rtp_work_routine+0xe0>
