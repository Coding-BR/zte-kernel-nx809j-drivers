
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a214 <rtp_work_routine>:
    a214: d503233f     	paciasp
    a218: d101c3ff     	sub	sp, sp, #0x70
    a21c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    a220: a9026ffc     	stp	x28, x27, [sp, #0x20]
    a224: a90367fa     	stp	x26, x25, [sp, #0x30]
    a228: a9045ff8     	stp	x24, x23, [sp, #0x40]
    a22c: a90557f6     	stp	x22, x21, [sp, #0x50]
    a230: a9064ff4     	stp	x20, x19, [sp, #0x60]
    a234: 910043fd     	add	x29, sp, #0x10
    a238: d5384108     	mrs	x8, SP_EL0
    a23c: d100c013     	sub	x19, x0, #0x30
    a240: aa0003f4     	mov	x20, x0
    a244: f9438908     	ldr	x8, [x8, #0x710]
    a248: aa1303e0     	mov	x0, x19
    a24c: f90007e8     	str	x8, [sp, #0x8]
    a250: f90003ff     	str	xzr, [sp]
    a254: 94000000     	bl	0xa254 <rtp_work_routine+0x40>
		000000000000a254:  R_AARCH64_CALL26	mutex_lock
    a258: d10c4299     	sub	x25, x20, #0x310
    a25c: d10e0e97     	sub	x23, x20, #0x383
    a260: 52800029     	mov	w9, #0x1                // =1
    a264: b9400328     	ldr	w8, [x25]
    a268: 390002e9     	strb	w9, [x23]
    a26c: 7100191f     	cmp	w8, #0x6
    a270: 54002de2     	b.hs	0xa82c <rtp_work_routine+0x618>
    a274: 90000016     	adrp	x22, 0xa000 <vibrator_work_routine+0x348>
		000000000000a274:  R_AARCH64_ADR_PREL_PG_HI21	aw_rtp_name
    a278: 910002d6     	add	x22, x22, #0x0
		000000000000a278:  R_AARCH64_ADD_ABS_LO12_NC	aw_rtp_name
    a27c: f8580282     	ldur	x2, [x20, #-0x80]
    a280: 8b081ac1     	add	x1, x22, x8, lsl #6
    a284: 910003e0     	mov	x0, sp
    a288: 94000000     	bl	0xa288 <rtp_work_routine+0x74>
		000000000000a288:  R_AARCH64_CALL26	request_firmware
    a28c: 36f801e0     	tbz	w0, #0x1f, 0xa2c8 <rtp_work_routine+0xb4>
    a290: b9400328     	ldr	w8, [x25]
    a294: 7100151f     	cmp	w8, #0x5
    a298: 54002ca8     	b.hi	0xa82c <rtp_work_routine+0x618>
    a29c: 8b081ac4     	add	x4, x22, x8, lsl #6
    a2a0: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x348>
		000000000000a2a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a12
    a2a4: 91000000     	add	x0, x0, #0x0
		000000000000a2a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a12
    a2a8: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x348>
		000000000000a2a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e
    a2ac: 91000021     	add	x1, x1, #0x0
		000000000000a2ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e
    a2b0: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x348>
		000000000000a2b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d4a
    a2b4: 91000063     	add	x3, x3, #0x0
		000000000000a2b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d4a
    a2b8: 52808da2     	mov	w2, #0x46d              // =1133
    a2bc: 94000000     	bl	0xa2bc <rtp_work_routine+0xa8>
		000000000000a2bc:  R_AARCH64_CALL26	_printk
    a2c0: aa1303e0     	mov	x0, x19
    a2c4: 1400014a     	b	0xa7ec <rtp_work_routine+0x5d8>
    a2c8: d10e6e9a     	sub	x26, x20, #0x39b
    a2cc: 90000018     	adrp	x24, 0xa000 <vibrator_work_routine+0x348>
		000000000000a2cc:  R_AARCH64_ADR_PREL_PG_HI21	aw_rtp
    a2d0: 3900035f     	strb	wzr, [x26]
    a2d4: f9400300     	ldr	x0, [x24]
		000000000000a2d4:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    a2d8: 94000000     	bl	0xa2d8 <rtp_work_routine+0xc4>
		000000000000a2d8:  R_AARCH64_CALL26	vfree
    a2dc: d503201f     	nop
    a2e0: f94003e8     	ldr	x8, [sp]
    a2e4: f9400108     	ldr	x8, [x8]
    a2e8: 91001115     	add	x21, x8, #0x4
    a2ec: aa1503e0     	mov	x0, x21
    a2f0: 94000000     	bl	0xa2f0 <rtp_work_routine+0xdc>
		000000000000a2f0:  R_AARCH64_CALL26	vmalloc_noprof
    a2f4: f94003e8     	ldr	x8, [sp]
    a2f8: f9000300     	str	x0, [x24]
		000000000000a2f8:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    a2fc: b50001a0     	cbnz	x0, 0xa330 <rtp_work_routine+0x11c>
    a300: aa0803e0     	mov	x0, x8
    a304: 94000000     	bl	0xa304 <rtp_work_routine+0xf0>
		000000000000a304:  R_AARCH64_CALL26	release_firmware
    a308: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x348>
		000000000000a308:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3268
    a30c: 91000000     	add	x0, x0, #0x0
		000000000000a30c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3268
    a310: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x348>
		000000000000a310:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e
    a314: 91000021     	add	x1, x1, #0x0
		000000000000a314:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e
    a318: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x348>
		000000000000a318:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d4a
    a31c: 91000063     	add	x3, x3, #0x0
		000000000000a31c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d4a
    a320: 52808ee2     	mov	w2, #0x477              // =1143
    a324: 94000000     	bl	0xa324 <rtp_work_routine+0x110>
		000000000000a324:  R_AARCH64_CALL26	_printk
    a328: aa1303e0     	mov	x0, x19
    a32c: 14000130     	b	0xa7ec <rtp_work_routine+0x5d8>
    a330: f10012bf     	cmp	x21, #0x4
    a334: 540027e3     	b.lo	0xa830 <rtp_work_routine+0x61c>
    a338: b9400329     	ldr	w9, [x25]
    a33c: b9400105     	ldr	w5, [x8]
    a340: 7100153f     	cmp	w9, #0x5
    a344: b9000005     	str	w5, [x0]
    a348: 54002728     	b.hi	0xa82c <rtp_work_routine+0x618>
    a34c: 8b091ac4     	add	x4, x22, x9, lsl #6
    a350: 90000016     	adrp	x22, 0xa000 <vibrator_work_routine+0x348>
		000000000000a350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e
    a354: 910002d6     	add	x22, x22, #0x0
		000000000000a354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e
    a358: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x348>
		000000000000a358:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x40fe
    a35c: 91000000     	add	x0, x0, #0x0
		000000000000a35c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x40fe
    a360: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x348>
		000000000000a360:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d4a
    a364: 91000063     	add	x3, x3, #0x0
		000000000000a364:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d4a
    a368: aa1603e1     	mov	x1, x22
    a36c: 52808fc2     	mov	w2, #0x47e              // =1150
    a370: d10e8295     	sub	x21, x20, #0x3a0
    a374: 94000000     	bl	0xa374 <rtp_work_routine+0x160>
		000000000000a374:  R_AARCH64_CALL26	_printk
    a378: f94003e8     	ldr	x8, [sp]
    a37c: f9400309     	ldr	x9, [x24]
		000000000000a37c:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    a380: a9400502     	ldp	x2, x1, [x8]
    a384: 91001120     	add	x0, x9, #0x4
    a388: 94000000     	bl	0xa388 <rtp_work_routine+0x174>
		000000000000a388:  R_AARCH64_CALL26	memcpy
    a38c: aa1303e0     	mov	x0, x19
    a390: 94000000     	bl	0xa390 <rtp_work_routine+0x17c>
		000000000000a390:  R_AARCH64_CALL26	mutex_unlock
    a394: f94003e0     	ldr	x0, [sp]
    a398: 94000000     	bl	0xa398 <rtp_work_routine+0x184>
		000000000000a398:  R_AARCH64_CALL26	release_firmware
    a39c: d102c280     	sub	x0, x20, #0xb0
    a3a0: aa0003f9     	mov	x25, x0
    a3a4: 94000000     	bl	0xa3a4 <rtp_work_routine+0x190>
		000000000000a3a4:  R_AARCH64_CALL26	mutex_lock
    a3a8: 52800028     	mov	w8, #0x1                // =1
    a3ac: f9411689     	ldr	x9, [x20, #0x228]
    a3b0: aa1503e0     	mov	x0, x21
    a3b4: 39000348     	strb	w8, [x26]
    a3b8: 52800041     	mov	w1, #0x2                // =2
    a3bc: f9408d28     	ldr	x8, [x9, #0x118]
    a3c0: b85fc110     	ldur	w16, [x8, #-0x4]
    a3c4: 728dd2b1     	movk	w17, #0x6e95
    a3c8: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    a3cc: 6b11021f     	cmp	w16, w17
    a3d0: 54000040     	b.eq	0xa3d8 <rtp_work_routine+0x1c4>
    a3d4: d4304500     	brk	#0x8228
    a3d8: d63f0100     	blr	x8
    a3dc: f9411688     	ldr	x8, [x20, #0x228]
    a3e0: aa1503e0     	mov	x0, x21
    a3e4: 2a1f03e1     	mov	w1, wzr
    a3e8: f9408908     	ldr	x8, [x8, #0x110]
    a3ec: b85fc110     	ldur	w16, [x8, #-0x4]
    a3f0: 729bedd1     	movk	w17, #0xdf6e
    a3f4: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    a3f8: 6b11021f     	cmp	w16, w17
    a3fc: 54000040     	b.eq	0xa404 <rtp_work_routine+0x1f0>
    a400: d4304500     	brk	#0x8228
    a404: d63f0100     	blr	x8
    a408: f9411688     	ldr	x8, [x20, #0x228]
    a40c: aa1503e0     	mov	x0, x21
    a410: f9407908     	ldr	x8, [x8, #0xf0]
    a414: b85fc110     	ldur	w16, [x8, #-0x4]
    a418: 72810611     	movk	w17, #0x830
    a41c: 72b08f51     	movk	w17, #0x847a, lsl #16
    a420: 6b11021f     	cmp	w16, w17
    a424: 54000040     	b.eq	0xa42c <rtp_work_routine+0x218>
    a428: d4304500     	brk	#0x8228
    a42c: d63f0100     	blr	x8
    a430: f9411688     	ldr	x8, [x20, #0x228]
    a434: aa1503e0     	mov	x0, x21
    a438: f9401d08     	ldr	x8, [x8, #0x38]
    a43c: b85fc110     	ldur	w16, [x8, #-0x4]
    a440: 72810611     	movk	w17, #0x830
    a444: 72b08f51     	movk	w17, #0x847a, lsl #16
    a448: 6b11021f     	cmp	w16, w17
    a44c: 54000040     	b.eq	0xa454 <rtp_work_routine+0x240>
    a450: d4304500     	brk	#0x8228
    a454: d63f0100     	blr	x8
    a458: f9411688     	ldr	x8, [x20, #0x228]
    a45c: d10db289     	sub	x9, x20, #0x36c
    a460: aa1503e0     	mov	x0, x21
    a464: b9400121     	ldr	w1, [x9]
    a468: f9404508     	ldr	x8, [x8, #0x88]
    a46c: b85fc110     	ldur	w16, [x8, #-0x4]
    a470: 729bedd1     	movk	w17, #0xdf6e
    a474: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    a478: 6b11021f     	cmp	w16, w17
    a47c: 54000040     	b.eq	0xa484 <rtp_work_routine+0x270>
    a480: d4304500     	brk	#0x8228
    a484: d63f0100     	blr	x8
    a488: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x348>
		000000000000a488:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2960
    a48c: 91000000     	add	x0, x0, #0x0
		000000000000a48c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2960
    a490: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x348>
		000000000000a490:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3480
    a494: 91000063     	add	x3, x3, #0x0
		000000000000a494:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3480
    a498: aa1603e1     	mov	x1, x22
    a49c: 52805322     	mov	w2, #0x299              // =665
    a4a0: 94000000     	bl	0xa4a0 <rtp_work_routine+0x28c>
		000000000000a4a0:  R_AARCH64_CALL26	_printk
    a4a4: 3943e281     	ldrb	w1, [x20, #0xf8]
    a4a8: f9411688     	ldr	x8, [x20, #0x228]
    a4ac: 39430689     	ldrb	w9, [x20, #0xc1]
    a4b0: 5100042a     	sub	w10, w1, #0x1
    a4b4: f9405108     	ldr	x8, [x8, #0xa0]
    a4b8: 6b2a013f     	cmp	w9, w10, uxtb
    a4bc: 54000068     	b.hi	0xa4c8 <rtp_work_routine+0x2b4>
    a4c0: d10dc289     	sub	x9, x20, #0x370
    a4c4: b9400121     	ldr	w1, [x9]
    a4c8: aa1503e0     	mov	x0, x21
    a4cc: b85fc110     	ldur	w16, [x8, #-0x4]
    a4d0: 729bedd1     	movk	w17, #0xdf6e
    a4d4: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    a4d8: 6b11021f     	cmp	w16, w17
    a4dc: 54000040     	b.eq	0xa4e4 <rtp_work_routine+0x2d0>
    a4e0: d4304500     	brk	#0x8228
    a4e4: d63f0100     	blr	x8
    a4e8: f9411688     	ldr	x8, [x20, #0x228]
    a4ec: aa1503e0     	mov	x0, x21
    a4f0: 52800041     	mov	w1, #0x2                // =2
    a4f4: f9404d08     	ldr	x8, [x8, #0x98]
    a4f8: b85fc110     	ldur	w16, [x8, #-0x4]
    a4fc: 729bedd1     	movk	w17, #0xdf6e
    a500: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    a504: 6b11021f     	cmp	w16, w17
    a508: 54000040     	b.eq	0xa510 <rtp_work_routine+0x2fc>
    a50c: d4304500     	brk	#0x8228
    a510: d63f0100     	blr	x8
    a514: f9411688     	ldr	x8, [x20, #0x228]
    a518: aa1503e0     	mov	x0, x21
    a51c: 52800021     	mov	w1, #0x1                // =1
    a520: f9403108     	ldr	x8, [x8, #0x60]
    a524: b85fc110     	ldur	w16, [x8, #-0x4]
    a528: 729bedd1     	movk	w17, #0xdf6e
    a52c: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    a530: 6b11021f     	cmp	w16, w17
    a534: 54000040     	b.eq	0xa53c <rtp_work_routine+0x328>
    a538: d4304500     	brk	#0x8228
    a53c: d63f0100     	blr	x8
    a540: 5280fa00     	mov	w0, #0x7d0              // =2000
    a544: 52813881     	mov	w1, #0x9c4              // =2500
    a548: 52800042     	mov	w2, #0x2                // =2
    a54c: 94000000     	bl	0xa54c <rtp_work_routine+0x338>
		000000000000a54c:  R_AARCH64_CALL26	usleep_range_state
    a550: 128018f6     	mov	w22, #-0xc8             // =-200
    a554: f9411688     	ldr	x8, [x20, #0x228]
    a558: aa1503e0     	mov	x0, x21
    a55c: f940b108     	ldr	x8, [x8, #0x160]
    a560: b85fc110     	ldur	w16, [x8, #-0x4]
    a564: 72870a91     	movk	w17, #0x3854
    a568: 72af0971     	movk	w17, #0x784b, lsl #16
    a56c: 6b11021f     	cmp	w16, w17
    a570: 54000040     	b.eq	0xa578 <rtp_work_routine+0x364>
    a574: d4304500     	brk	#0x8228
    a578: d63f0100     	blr	x8
    a57c: 12000c08     	and	w8, w0, #0xf
    a580: 7100211f     	cmp	w8, #0x8
    a584: 54000340     	b.eq	0xa5ec <rtp_work_routine+0x3d8>
    a588: 5280fa00     	mov	w0, #0x7d0              // =2000
    a58c: 52813881     	mov	w1, #0x9c4              // =2500
    a590: 52800042     	mov	w2, #0x2                // =2
    a594: 94000000     	bl	0xa594 <rtp_work_routine+0x380>
		000000000000a594:  R_AARCH64_CALL26	usleep_range_state
    a598: 310006d6     	adds	w22, w22, #0x1
    a59c: 54fffdc3     	b.lo	0xa554 <rtp_work_routine+0x340>
    a5a0: f9411688     	ldr	x8, [x20, #0x228]
    a5a4: aa1503e0     	mov	x0, x21
    a5a8: f9401d08     	ldr	x8, [x8, #0x38]
    a5ac: b85fc110     	ldur	w16, [x8, #-0x4]
    a5b0: 72810611     	movk	w17, #0x830
    a5b4: 72b08f51     	movk	w17, #0x847a, lsl #16
    a5b8: 6b11021f     	cmp	w16, w17
    a5bc: 54000040     	b.eq	0xa5c4 <rtp_work_routine+0x3b0>
    a5c0: d4304500     	brk	#0x8228
    a5c4: d63f0100     	blr	x8
    a5c8: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x348>
		000000000000a5c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f3c
    a5cc: 91000000     	add	x0, x0, #0x0
		000000000000a5cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f3c
    a5d0: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x348>
		000000000000a5d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e
    a5d4: 91000021     	add	x1, x1, #0x0
		000000000000a5d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e
    a5d8: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x348>
		000000000000a5d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d4a
    a5dc: 91000063     	add	x3, x3, #0x0
		000000000000a5dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d4a
    a5e0: 52809502     	mov	w2, #0x4a8              // =1192
    a5e4: 94000000     	bl	0xa5e4 <rtp_work_routine+0x3d0>
		000000000000a5e4:  R_AARCH64_CALL26	_printk
    a5e8: 14000080     	b	0xa7e8 <rtp_work_routine+0x5d4>
    a5ec: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x348>
		000000000000a5ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2aca
    a5f0: 91000000     	add	x0, x0, #0x0
		000000000000a5f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2aca
    a5f4: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x348>
		000000000000a5f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e
    a5f8: 91000021     	add	x1, x1, #0x0
		000000000000a5f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e
    a5fc: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x348>
		000000000000a5fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d4a
    a600: 91000063     	add	x3, x3, #0x0
		000000000000a600:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d4a
    a604: 52809382     	mov	w2, #0x49c              // =1180
    a608: 94000000     	bl	0xa608 <rtp_work_routine+0x3f4>
		000000000000a608:  R_AARCH64_CALL26	_printk
    a60c: 5280fa00     	mov	w0, #0x7d0              // =2000
    a610: 52813881     	mov	w1, #0x9c4              // =2500
    a614: 52800042     	mov	w2, #0x2                // =2
    a618: 94000000     	bl	0xa618 <rtp_work_routine+0x404>
		000000000000a618:  R_AARCH64_CALL26	usleep_range_state
    a61c: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x348>
		000000000000a61c:  R_AARCH64_ADR_PREL_PG_HI21	aw_pm_qos_req_vb
    a620: 91000000     	add	x0, x0, #0x0
		000000000000a620:  R_AARCH64_ADD_ABS_LO12_NC	aw_pm_qos_req_vb
    a624: 2a1f03e1     	mov	w1, wzr
    a628: 94000000     	bl	0xa628 <rtp_work_routine+0x414>
		000000000000a628:  R_AARCH64_CALL26	cpu_latency_qos_add_request
    a62c: d10cb29b     	sub	x27, x20, #0x32c
    a630: aa1303e0     	mov	x0, x19
    a634: b900037f     	str	wzr, [x27]
    a638: 94000000     	bl	0xa638 <rtp_work_routine+0x424>
		000000000000a638:  R_AARCH64_CALL26	mutex_lock
    a63c: d10e269a     	sub	x26, x20, #0x389
    a640: f9411688     	ldr	x8, [x20, #0x228]
    a644: aa1503e0     	mov	x0, x21
    a648: f940b908     	ldr	x8, [x8, #0x170]
    a64c: b85fc110     	ldur	w16, [x8, #-0x4]
    a650: 72870a91     	movk	w17, #0x3854
    a654: 72af0971     	movk	w17, #0x784b, lsl #16
    a658: 6b11021f     	cmp	w16, w17
    a65c: 54000040     	b.eq	0xa664 <rtp_work_routine+0x450>
    a660: d4304500     	brk	#0x8228
    a664: d63f0100     	blr	x8
    a668: 72001c1f     	tst	w0, #0xff
    a66c: 54000981     	b.ne	0xa79c <rtp_work_routine+0x588>
    a670: 39400348     	ldrb	w8, [x26]
    a674: 7100091f     	cmp	w8, #0x2
    a678: 54000ae1     	b.ne	0xa7d4 <rtp_work_routine+0x5c0>
    a67c: f9400308     	ldr	x8, [x24]
		000000000000a67c:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    a680: b40006a8     	cbz	x8, 0xa754 <rtp_work_routine+0x540>
    a684: b940ba89     	ldr	w9, [x20, #0xb8]
    a688: b940036a     	ldr	w10, [x27]
    a68c: aa1503e0     	mov	x0, x21
    a690: b940010b     	ldr	w11, [x8]
    a694: f941168d     	ldr	x13, [x20, #0x228]
    a698: 53027d2c     	lsr	w12, w9, #2
    a69c: 6b09015f     	cmp	w10, w9
    a6a0: 8b0a0108     	add	x8, x8, x10
    a6a4: 4b0a016b     	sub	w11, w11, w10
    a6a8: 91001101     	add	x1, x8, #0x4
    a6ac: 1a8c3129     	csel	w9, w9, w12, lo
    a6b0: f94069ac     	ldr	x12, [x13, #0xd0]
    a6b4: 6b09017f     	cmp	w11, w9
    a6b8: 1a893176     	csel	w22, w11, w9, lo
    a6bc: 2a1603e2     	mov	w2, w22
    a6c0: b85fc190     	ldur	w16, [x12, #-0x4]
    a6c4: 72965371     	movk	w17, #0xb29b
    a6c8: 72b8d4f1     	movk	w17, #0xc6a7, lsl #16
    a6cc: 6b11021f     	cmp	w16, w17
    a6d0: 54000040     	b.eq	0xa6d8 <rtp_work_routine+0x4c4>
    a6d4: d4304580     	brk	#0x822c
    a6d8: d63f0180     	blr	x12
    a6dc: b9400368     	ldr	w8, [x27]
    a6e0: f9411689     	ldr	x9, [x20, #0x228]
    a6e4: aa1503e0     	mov	x0, x21
    a6e8: 0b160108     	add	w8, w8, w22
    a6ec: b9000368     	str	w8, [x27]
    a6f0: f940b128     	ldr	x8, [x9, #0x160]
    a6f4: b85fc110     	ldur	w16, [x8, #-0x4]
    a6f8: 72870a91     	movk	w17, #0x3854
    a6fc: 72af0971     	movk	w17, #0x784b, lsl #16
    a700: 6b11021f     	cmp	w16, w17
    a704: 54000040     	b.eq	0xa70c <rtp_work_routine+0x4f8>
    a708: d4304500     	brk	#0x8228
    a70c: d63f0100     	blr	x8
    a710: f9400309     	ldr	x9, [x24]
		000000000000a710:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    a714: b9400368     	ldr	w8, [x27]
    a718: b9400129     	ldr	w9, [x9]
    a71c: 6b09011f     	cmp	w8, w9
    a720: 54000060     	b.eq	0xa72c <rtp_work_routine+0x518>
    a724: 12000c0a     	and	w10, w0, #0xf
    a728: 35fff8ca     	cbnz	w10, 0xa640 <rtp_work_routine+0x42c>
    a72c: 6b09011f     	cmp	w8, w9
    a730: 54000241     	b.ne	0xa778 <rtp_work_routine+0x564>
    a734: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x348>
		000000000000a734:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4836
    a738: 91000000     	add	x0, x0, #0x0
		000000000000a738:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4836
    a73c: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x348>
		000000000000a73c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e
    a740: 91000021     	add	x1, x1, #0x0
		000000000000a740:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e
    a744: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x348>
		000000000000a744:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d5c
    a748: 91000063     	add	x3, x3, #0x0
		000000000000a748:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d5c
    a74c: 528089a2     	mov	w2, #0x44d              // =1101
    a750: 14000011     	b	0xa794 <rtp_work_routine+0x580>
    a754: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x348>
		000000000000a754:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x388a
    a758: 91000000     	add	x0, x0, #0x0
		000000000000a758:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x388a
    a75c: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x348>
		000000000000a75c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e
    a760: 91000021     	add	x1, x1, #0x0
		000000000000a760:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e
    a764: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x348>
		000000000000a764:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d5c
    a768: 91000063     	add	x3, x3, #0x0
		000000000000a768:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d5c
    a76c: 52808462     	mov	w2, #0x423              // =1059
    a770: 94000000     	bl	0xa770 <rtp_work_routine+0x55c>
		000000000000a770:  R_AARCH64_CALL26	_printk
    a774: 1400000a     	b	0xa79c <rtp_work_routine+0x588>
    a778: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x348>
		000000000000a778:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b92
    a77c: 91000000     	add	x0, x0, #0x0
		000000000000a77c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b92
    a780: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x348>
		000000000000a780:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e
    a784: 91000021     	add	x1, x1, #0x0
		000000000000a784:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e
    a788: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x348>
		000000000000a788:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d5c
    a78c: 91000063     	add	x3, x3, #0x0
		000000000000a78c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d5c
    a790: 52808962     	mov	w2, #0x44b              // =1099
    a794: 94000000     	bl	0xa794 <rtp_work_routine+0x580>
		000000000000a794:  R_AARCH64_CALL26	_printk
    a798: b900037f     	str	wzr, [x27]
    a79c: 39400348     	ldrb	w8, [x26]
    a7a0: 7100091f     	cmp	w8, #0x2
    a7a4: 54000181     	b.ne	0xa7d4 <rtp_work_routine+0x5c0>
    a7a8: f9411688     	ldr	x8, [x20, #0x228]
    a7ac: aa1503e0     	mov	x0, x21
    a7b0: 52800021     	mov	w1, #0x1                // =1
    a7b4: f9408908     	ldr	x8, [x8, #0x110]
    a7b8: b85fc110     	ldur	w16, [x8, #-0x4]
    a7bc: 729bedd1     	movk	w17, #0xdf6e
    a7c0: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    a7c4: 6b11021f     	cmp	w16, w17
    a7c8: 54000040     	b.eq	0xa7d0 <rtp_work_routine+0x5bc>
    a7cc: d4304500     	brk	#0x8228
    a7d0: d63f0100     	blr	x8
    a7d4: aa1303e0     	mov	x0, x19
    a7d8: 94000000     	bl	0xa7d8 <rtp_work_routine+0x5c4>
		000000000000a7d8:  R_AARCH64_CALL26	mutex_unlock
    a7dc: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x348>
		000000000000a7dc:  R_AARCH64_ADR_PREL_PG_HI21	aw_pm_qos_req_vb
    a7e0: 91000000     	add	x0, x0, #0x0
		000000000000a7e0:  R_AARCH64_ADD_ABS_LO12_NC	aw_pm_qos_req_vb
    a7e4: 94000000     	bl	0xa7e4 <rtp_work_routine+0x5d0>
		000000000000a7e4:  R_AARCH64_CALL26	cpu_latency_qos_remove_request
    a7e8: aa1903e0     	mov	x0, x25
    a7ec: 390002ff     	strb	wzr, [x23]
    a7f0: 94000000     	bl	0xa7f0 <rtp_work_routine+0x5dc>
		000000000000a7f0:  R_AARCH64_CALL26	mutex_unlock
    a7f4: d5384108     	mrs	x8, SP_EL0
    a7f8: f9438908     	ldr	x8, [x8, #0x710]
    a7fc: f94007e9     	ldr	x9, [sp, #0x8]
    a800: eb09011f     	cmp	x8, x9
    a804: 54000181     	b.ne	0xa834 <rtp_work_routine+0x620>
    a808: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    a80c: a94557f6     	ldp	x22, x21, [sp, #0x50]
    a810: a9445ff8     	ldp	x24, x23, [sp, #0x40]
    a814: a94367fa     	ldp	x26, x25, [sp, #0x30]
    a818: a9426ffc     	ldp	x28, x27, [sp, #0x20]
    a81c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    a820: 9101c3ff     	add	sp, sp, #0x70
    a824: d50323bf     	autiasp
    a828: d65f03c0     	ret
    a82c: d42aa240     	brk	#0x5512
    a830: d4200020     	brk	#0x1
    a834: 94000000     	bl	0xa834 <rtp_work_routine+0x620>
		000000000000a834:  R_AARCH64_CALL26	__stack_chk_fail
    a838: f94003e8     	ldr	x8, [sp]
    a83c: 90000009     	adrp	x9, 0xa000 <vibrator_work_routine+0x348>
		000000000000a83c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x230
    a840: 91000129     	add	x9, x9, #0x0
		000000000000a840:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x230
    a844: d538411b     	mrs	x27, SP_EL0
    a848: f9402b7c     	ldr	x28, [x27, #0x50]
    a84c: f9002b69     	str	x9, [x27, #0x50]
    a850: f9400108     	ldr	x8, [x8]
    a854: 91001115     	add	x21, x8, #0x4
    a858: aa1503e0     	mov	x0, x21
    a85c: 94000000     	bl	0xa85c <rtp_work_routine+0x648>
		000000000000a85c:  R_AARCH64_CALL26	vmalloc_noprof
    a860: f9002b7c     	str	x28, [x27, #0x50]
    a864: 17fffea4     	b	0xa2f4 <rtp_work_routine+0xe0>
