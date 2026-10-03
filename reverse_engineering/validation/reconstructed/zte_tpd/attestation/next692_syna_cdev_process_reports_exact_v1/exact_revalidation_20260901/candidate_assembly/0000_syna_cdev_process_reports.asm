
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001e224 <syna_cdev_process_reports>:
   1e224: d503233f     	paciasp
   1e228: d101c3ff     	sub	sp, sp, #0x70
   1e22c: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1e230: a9026ffc     	stp	x28, x27, [sp, #0x20]
   1e234: a90367fa     	stp	x26, x25, [sp, #0x30]
   1e238: a9045ff8     	stp	x24, x23, [sp, #0x40]
   1e23c: a90557f6     	stp	x22, x21, [sp, #0x50]
   1e240: a9064ff4     	stp	x20, x19, [sp, #0x60]
   1e244: 910043fd     	add	x29, sp, #0x10
   1e248: b81fc3a0     	stur	w0, [x29, #-0x4]
   1e24c: b4001a03     	cbz	x3, 0x1e58c <syna_cdev_process_reports+0x368>
   1e250: 2a0203f3     	mov	w19, w2
   1e254: aa0103fa     	mov	x26, x1
   1e258: b4001a81     	cbz	x1, 0x1e5a8 <syna_cdev_process_reports+0x384>
   1e25c: 9000001c     	adrp	x28, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e25c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb4
   1e260: f9400076     	ldr	x22, [x3]
   1e264: 11000e74     	add	w20, w19, #0x3
   1e268: b9400388     	ldr	w8, [x28]
		000000000001e268:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   1e26c: aa0303f7     	mov	x23, x3
   1e270: 0aa87d19     	bic	w25, w8, w8, asr #31
   1e274: 0b140338     	add	w24, w25, w20
   1e278: 94000000     	bl	0x1e278 <syna_cdev_process_reports+0x54>
		000000000001e278:  R_AARCH64_CALL26	syna_request_managed_device
   1e27c: b4001a40     	cbz	x0, 0x1e5c4 <syna_cdev_process_reports+0x3a0>
   1e280: 7100071f     	cmp	w24, #0x1
   1e284: 54001a6b     	b.lt	0x1e5d0 <syna_cdev_process_reports+0x3ac>
   1e288: aa1803e1     	mov	x1, x24
   1e28c: 5281b802     	mov	w2, #0xdc0              // =3520
   1e290: 94000000     	bl	0x1e290 <syna_cdev_process_reports+0x6c>
		000000000001e290:  R_AARCH64_CALL26	devm_kmalloc
   1e294: b4001a80     	cbz	x0, 0x1e5e4 <syna_cdev_process_reports+0x3c0>
   1e298: b940039b     	ldr	w27, [x28]
		000000000001e298:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   1e29c: aa0003f5     	mov	x21, x0
   1e2a0: 7100077f     	cmp	w27, #0x1
   1e2a4: 5400020b     	b.lt	0x1e2e4 <syna_cdev_process_reports+0xc0>
   1e2a8: 94000000     	bl	0x1e2a8 <syna_cdev_process_reports+0x84>
		000000000001e2a8:  R_AARCH64_CALL26	syna_request_managed_device
   1e2ac: b4001ac0     	cbz	x0, 0x1e604 <syna_cdev_process_reports+0x3e0>
   1e2b0: aa1b03e1     	mov	x1, x27
   1e2b4: 5281b802     	mov	w2, #0xdc0              // =3520
   1e2b8: 94000000     	bl	0x1e2b8 <syna_cdev_process_reports+0x94>
		000000000001e2b8:  R_AARCH64_CALL26	devm_kmalloc
   1e2bc: f90003e0     	str	x0, [sp]
   1e2c0: b5000160     	cbnz	x0, 0x1e2ec <syna_cdev_process_reports+0xc8>
   1e2c4: 94000000     	bl	0x1e2c4 <syna_cdev_process_reports+0xa0>
		000000000001e2c4:  R_AARCH64_CALL26	syna_request_managed_device
   1e2c8: b5001ac0     	cbnz	x0, 0x1e620 <syna_cdev_process_reports+0x3fc>
   1e2cc: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e2cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   1e2d0: 91000000     	add	x0, x0, #0x0
		000000000001e2d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   1e2d4: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e2d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   1e2d8: 91000021     	add	x1, x1, #0x0
		000000000001e2d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   1e2dc: 94000000     	bl	0x1e2dc <syna_cdev_process_reports+0xb8>
		000000000001e2dc:  R_AARCH64_CALL26	_printk
   1e2e0: 140000d2     	b	0x1e628 <syna_cdev_process_reports+0x404>
   1e2e4: aa1f03fb     	mov	x27, xzr
   1e2e8: f90003ff     	str	xzr, [sp]
   1e2ec: b85fc3a8     	ldur	w8, [x29, #-0x4]
   1e2f0: 7100071f     	cmp	w24, #0x1
   1e2f4: 390002a8     	strb	w8, [x21]
   1e2f8: 54002480     	b.eq	0x1e788 <syna_cdev_process_reports+0x564>
   1e2fc: 71000b1f     	cmp	w24, #0x2
   1e300: 390006b3     	strb	w19, [x21, #0x1]
   1e304: 54002420     	b.eq	0x1e788 <syna_cdev_process_reports+0x564>
   1e308: 53087e68     	lsr	w8, w19, #8
   1e30c: 39000aa8     	strb	w8, [x21, #0x2]
   1e310: 34000193     	cbz	w19, 0x1e340 <syna_cdev_process_reports+0x11c>
   1e314: b1000ea0     	adds	x0, x21, #0x3
   1e318: 54001c80     	b.eq	0x1e6a8 <syna_cdev_process_reports+0x484>
   1e31c: 0b130323     	add	w3, w25, w19
   1e320: 6b13007f     	cmp	w3, w19
   1e324: 54001b43     	b.lo	0x1e68c <syna_cdev_process_reports+0x468>
   1e328: 2a1303e2     	mov	w2, w19
   1e32c: d1000f01     	sub	x1, x24, #0x3
   1e330: eb02003f     	cmp	x1, x2
   1e334: 540022c3     	b.lo	0x1e78c <syna_cdev_process_reports+0x568>
   1e338: aa1a03e1     	mov	x1, x26
   1e33c: 94000000     	bl	0x1e33c <syna_cdev_process_reports+0x118>
		000000000001e33c:  R_AARCH64_CALL26	memcpy
   1e340: b9400388     	ldr	w8, [x28]
		000000000001e340:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   1e344: 7100091f     	cmp	w8, #0x2
   1e348: 5400042b     	b.lt	0x1e3cc <syna_cdev_process_reports+0x1a8>
   1e34c: b40021fb     	cbz	x27, 0x1e788 <syna_cdev_process_reports+0x564>
   1e350: 794706c8     	ldrh	w8, [x22, #0x382]
   1e354: f94003fa     	ldr	x26, [sp]
   1e358: f100077f     	cmp	x27, #0x1
   1e35c: 39000348     	strb	w8, [x26]
   1e360: 54002140     	b.eq	0x1e788 <syna_cdev_process_reports+0x564>
   1e364: 53087d08     	lsr	w8, w8, #8
   1e368: 39000748     	strb	w8, [x26, #0x1]
   1e36c: 529fffc8     	mov	w8, #0xfffe             // =65534
   1e370: b9400382     	ldr	w2, [x28]
		000000000001e370:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   1e374: 0b080048     	add	w8, w2, w8
   1e378: 72003d1f     	tst	w8, #0xffff
   1e37c: 540000c0     	b.eq	0x1e394 <syna_cdev_process_reports+0x170>
   1e380: f1000b7f     	cmp	x27, #0x2
   1e384: 54002020     	b.eq	0x1e788 <syna_cdev_process_reports+0x564>
   1e388: 394e16c8     	ldrb	w8, [x22, #0x385]
   1e38c: 39000b48     	strb	w8, [x26, #0x2]
   1e390: b9400382     	ldr	w2, [x28]
		000000000001e390:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   1e394: 93407e88     	sxtw	x8, w20
   1e398: ab0802a0     	adds	x0, x21, x8
   1e39c: 54001c80     	b.eq	0x1e72c <syna_cdev_process_reports+0x508>
   1e3a0: b4001c7a     	cbz	x26, 0x1e72c <syna_cdev_process_reports+0x508>
   1e3a4: 6b19005f     	cmp	w2, w25
   1e3a8: 54001b48     	b.hi	0x1e710 <syna_cdev_process_reports+0x4ec>
   1e3ac: cb080308     	sub	x8, x24, x8
   1e3b0: 6b18029f     	cmp	w20, w24
   1e3b4: 2a0203e2     	mov	w2, w2
   1e3b8: 9a8883e1     	csel	x1, xzr, x8, hi
   1e3bc: eb02003f     	cmp	x1, x2
   1e3c0: 54001e63     	b.lo	0x1e78c <syna_cdev_process_reports+0x568>
   1e3c4: aa1a03e1     	mov	x1, x26
   1e3c8: 94000000     	bl	0x1e3c8 <syna_cdev_process_reports+0x1a4>
		000000000001e3c8:  R_AARCH64_CALL26	memcpy
   1e3cc: f9413afa     	ldr	x26, [x23, #0x270]
   1e3d0: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e3d0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
   1e3d4: 91000000     	add	x0, x0, #0x0
		000000000001e3d4:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
   1e3d8: 94000000     	bl	0x1e3d8 <syna_cdev_process_reports+0x1b4>
		000000000001e3d8:  R_AARCH64_CALL26	mutex_lock
   1e3dc: b944f2e8     	ldr	w8, [x23, #0x4f0]
   1e3e0: 90000014     	adrp	x20, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e3e0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30630
   1e3e4: b9400289     	ldr	w9, [x20]
		000000000001e3e4:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x30630
   1e3e8: 7112c11f     	cmp	w8, #0x4b0
   1e3ec: 54000383     	b.lo	0x1e45c <syna_cdev_process_reports+0x238>
   1e3f0: 6b09011f     	cmp	w8, w9
   1e3f4: 54001721     	b.ne	0x1e6d8 <syna_cdev_process_reports+0x4b4>
   1e3f8: f9427ef9     	ldr	x25, [x23, #0x4f8]
   1e3fc: f9400728     	ldr	x8, [x25, #0x8]
   1e400: f9400109     	ldr	x9, [x8]
   1e404: eb19013f     	cmp	x9, x25
   1e408: 54001621     	b.ne	0x1e6cc <syna_cdev_process_reports+0x4a8>
   1e40c: f9400329     	ldr	x9, [x25]
   1e410: f940052a     	ldr	x10, [x9, #0x8]
   1e414: eb19015f     	cmp	x10, x25
   1e418: 540015a1     	b.ne	0x1e6cc <syna_cdev_process_reports+0x4a8>
   1e41c: f9000528     	str	x8, [x9, #0x8]
   1e420: f9000109     	str	x9, [x8]
   1e424: d2802008     	mov	x8, #0x100              // =256
   1e428: 52800449     	mov	w9, #0x22               // =34
   1e42c: f9400b20     	ldr	x0, [x25, #0x10]
   1e430: f2fbd5a8     	movk	x8, #0xdead, lsl #48
   1e434: aa090109     	orr	x9, x8, x9
   1e438: a9002728     	stp	x8, x9, [x25]
   1e43c: 94000000     	bl	0x1e43c <syna_cdev_process_reports+0x218>
		000000000001e43c:  R_AARCH64_CALL26	kfree
   1e440: aa1903e0     	mov	x0, x25
   1e444: 94000000     	bl	0x1e444 <syna_cdev_process_reports+0x220>
		000000000001e444:  R_AARCH64_CALL26	kfree
   1e448: b944f2e8     	ldr	w8, [x23, #0x4f0]
   1e44c: b9000288     	str	w8, [x20]
		000000000001e44c:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x30630
   1e450: 51000508     	sub	w8, w8, #0x1
   1e454: b904f2e8     	str	w8, [x23, #0x4f0]
   1e458: 14000003     	b	0x1e464 <syna_cdev_process_reports+0x240>
   1e45c: 7112c13f     	cmp	w9, #0x4b0
   1e460: 5400148a     	b.ge	0x1e6f0 <syna_cdev_process_reports+0x4cc>
   1e464: d503201f     	nop
   1e468: 90000008     	adrp	x8, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e468:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x30
   1e46c: 52819801     	mov	w1, #0xcc0              // =3264
   1e470: 52800602     	mov	w2, #0x30               // =48
   1e474: f9400100     	ldr	x0, [x8]
		000000000001e474:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x30
   1e478: 94000000     	bl	0x1e478 <syna_cdev_process_reports+0x254>
		000000000001e478:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1e47c: aa0003f9     	mov	x25, x0
   1e480: b4001ab9     	cbz	x25, 0x1e7d4 <syna_cdev_process_reports+0x5b0>
   1e484: d503201f     	nop
   1e488: aa1803e0     	mov	x0, x24
   1e48c: 52819801     	mov	w1, #0xcc0              // =3264
   1e490: 94000000     	bl	0x1e490 <syna_cdev_process_reports+0x26c>
		000000000001e490:  R_AARCH64_CALL26	__kmalloc_noprof
   1e494: f9000b20     	str	x0, [x25, #0x10]
   1e498: b4001cc0     	cbz	x0, 0x1e830 <syna_cdev_process_reports+0x60c>
   1e49c: aa1503e1     	mov	x1, x21
   1e4a0: aa1803e2     	mov	x2, x24
   1e4a4: b9001b38     	str	w24, [x25, #0x18]
   1e4a8: 94000000     	bl	0x1e4a8 <syna_cdev_process_reports+0x284>
		000000000001e4a8:  R_AARCH64_CALL26	memcpy
   1e4ac: 91008320     	add	x0, x25, #0x20
   1e4b0: 94000000     	bl	0x1e4b0 <syna_cdev_process_reports+0x28c>
		000000000001e4b0:  R_AARCH64_CALL26	ktime_get_real_ts64
   1e4b4: 9113e2e2     	add	x2, x23, #0x4f8
   1e4b8: f94282e1     	ldr	x1, [x23, #0x500]
   1e4bc: eb02033f     	cmp	x25, x2
   1e4c0: 540016a0     	b.eq	0x1e794 <syna_cdev_process_reports+0x570>
   1e4c4: eb19003f     	cmp	x1, x25
   1e4c8: 54001660     	b.eq	0x1e794 <syna_cdev_process_reports+0x570>
   1e4cc: f9400028     	ldr	x8, [x1]
   1e4d0: eb02011f     	cmp	x8, x2
   1e4d4: 54001601     	b.ne	0x1e794 <syna_cdev_process_reports+0x570>
   1e4d8: f90282f9     	str	x25, [x23, #0x500]
   1e4dc: a9000722     	stp	x2, x1, [x25]
   1e4e0: f9000039     	str	x25, [x1]
   1e4e4: 90000008     	adrp	x8, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e4e4:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb8
   1e4e8: b944f2e9     	ldr	w9, [x23, #0x4f0]
   1e4ec: b9400108     	ldr	w8, [x8]
		000000000001e4ec:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb8
   1e4f0: 11000529     	add	w9, w9, #0x1
   1e4f4: 51000508     	sub	w8, w8, #0x1
   1e4f8: b904f2e9     	str	w9, [x23, #0x4f0]
   1e4fc: 6b09011f     	cmp	w8, w9
   1e500: 54000182     	b.hs	0x1e530 <syna_cdev_process_reports+0x30c>
   1e504: f9402348     	ldr	x8, [x26, #0x40]
   1e508: b4000148     	cbz	x8, 0x1e530 <syna_cdev_process_reports+0x30c>
   1e50c: 91002340     	add	x0, x26, #0x8
   1e510: 2a1f03e1     	mov	w1, wzr
   1e514: b85fc110     	ldur	w16, [x8, #-0x4]
   1e518: 728c3631     	movk	w17, #0x61b1
   1e51c: 72a685d1     	movk	w17, #0x342e, lsl #16
   1e520: 6b11021f     	cmp	w16, w17
   1e524: 54000040     	b.eq	0x1e52c <syna_cdev_process_reports+0x308>
   1e528: d4304500     	brk	#0x8228
   1e52c: d63f0100     	blr	x8
   1e530: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e530:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
   1e534: 91000000     	add	x0, x0, #0x0
		000000000001e534:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
   1e538: 94000000     	bl	0x1e538 <syna_cdev_process_reports+0x314>
		000000000001e538:  R_AARCH64_CALL26	mutex_unlock
   1e53c: 911422e0     	add	x0, x23, #0x508
   1e540: 52800021     	mov	w1, #0x1                // =1
   1e544: 52800022     	mov	w2, #0x1                // =1
   1e548: aa1f03e3     	mov	x3, xzr
   1e54c: 94000000     	bl	0x1e54c <syna_cdev_process_reports+0x328>
		000000000001e54c:  R_AARCH64_CALL26	__wake_up
   1e550: 2a1f03f4     	mov	w20, wzr
   1e554: 2a1f03f7     	mov	w23, wzr
   1e558: f94003fa     	ldr	x26, [sp]
   1e55c: 94000000     	bl	0x1e55c <syna_cdev_process_reports+0x338>
		000000000001e55c:  R_AARCH64_CALL26	syna_request_managed_device
   1e560: b4000f80     	cbz	x0, 0x1e750 <syna_cdev_process_reports+0x52c>
   1e564: b400007a     	cbz	x26, 0x1e570 <syna_cdev_process_reports+0x34c>
   1e568: aa1a03e1     	mov	x1, x26
   1e56c: 94000000     	bl	0x1e56c <syna_cdev_process_reports+0x348>
		000000000001e56c:  R_AARCH64_CALL26	devm_kfree
   1e570: 94000000     	bl	0x1e570 <syna_cdev_process_reports+0x34c>
		000000000001e570:  R_AARCH64_CALL26	syna_request_managed_device
   1e574: b4000fc0     	cbz	x0, 0x1e76c <syna_cdev_process_reports+0x548>
   1e578: aa1503e1     	mov	x1, x21
   1e57c: 94000000     	bl	0x1e57c <syna_cdev_process_reports+0x358>
		000000000001e57c:  R_AARCH64_CALL26	devm_kfree
   1e580: 35000634     	cbnz	w20, 0x1e644 <syna_cdev_process_reports+0x420>
   1e584: 2a1f03f7     	mov	w23, wzr
   1e588: 14000037     	b	0x1e664 <syna_cdev_process_reports+0x440>
   1e58c: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e58c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa9a
   1e590: 91000000     	add	x0, x0, #0x0
		000000000001e590:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa9a
   1e594: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1983f
   1e598: 91000021     	add	x1, x1, #0x0
		000000000001e598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1983f
   1e59c: 94000000     	bl	0x1e59c <syna_cdev_process_reports+0x378>
		000000000001e59c:  R_AARCH64_CALL26	_printk
   1e5a0: 128002b7     	mov	w23, #-0x16             // =-22
   1e5a4: 14000030     	b	0x1e664 <syna_cdev_process_reports+0x440>
   1e5a8: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e5a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x192d8
   1e5ac: 91000000     	add	x0, x0, #0x0
		000000000001e5ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x192d8
   1e5b0: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e5b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x195ef
   1e5b4: 91000021     	add	x1, x1, #0x0
		000000000001e5b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x195ef
   1e5b8: 94000000     	bl	0x1e5b8 <syna_cdev_process_reports+0x394>
		000000000001e5b8:  R_AARCH64_CALL26	_printk
   1e5bc: 128002b7     	mov	w23, #-0x16             // =-22
   1e5c0: 14000021     	b	0x1e644 <syna_cdev_process_reports+0x420>
   1e5c4: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e5c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   1e5c8: 91000000     	add	x0, x0, #0x0
		000000000001e5c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   1e5cc: 14000003     	b	0x1e5d8 <syna_cdev_process_reports+0x3b4>
   1e5d0: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e5d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3eb
   1e5d4: 91000000     	add	x0, x0, #0x0
		000000000001e5d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3eb
   1e5d8: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e5d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194ed
   1e5dc: 91000021     	add	x1, x1, #0x0
		000000000001e5dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194ed
   1e5e0: 94000000     	bl	0x1e5e0 <syna_cdev_process_reports+0x3bc>
		000000000001e5e0:  R_AARCH64_CALL26	_printk
   1e5e4: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e5e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ff7
   1e5e8: 91000000     	add	x0, x0, #0x0
		000000000001e5e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ff7
   1e5ec: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e5ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x195ef
   1e5f0: 91000021     	add	x1, x1, #0x0
		000000000001e5f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x195ef
   1e5f4: 2a1803e2     	mov	w2, w24
   1e5f8: 2a1303e3     	mov	w3, w19
   1e5fc: 94000000     	bl	0x1e5fc <syna_cdev_process_reports+0x3d8>
		000000000001e5fc:  R_AARCH64_CALL26	_printk
   1e600: 14000010     	b	0x1e640 <syna_cdev_process_reports+0x41c>
   1e604: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   1e608: 91000000     	add	x0, x0, #0x0
		000000000001e608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   1e60c: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e60c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194ed
   1e610: 91000021     	add	x1, x1, #0x0
		000000000001e610:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194ed
   1e614: 94000000     	bl	0x1e614 <syna_cdev_process_reports+0x3f0>
		000000000001e614:  R_AARCH64_CALL26	_printk
   1e618: 94000000     	bl	0x1e618 <syna_cdev_process_reports+0x3f4>
		000000000001e618:  R_AARCH64_CALL26	syna_request_managed_device
   1e61c: b4ffe580     	cbz	x0, 0x1e2cc <syna_cdev_process_reports+0xa8>
   1e620: aa1503e1     	mov	x1, x21
   1e624: 94000000     	bl	0x1e624 <syna_cdev_process_reports+0x400>
		000000000001e624:  R_AARCH64_CALL26	devm_kfree
   1e628: b9400382     	ldr	w2, [x28]
		000000000001e628:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   1e62c: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e62c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c5e9
   1e630: 91000000     	add	x0, x0, #0x0
		000000000001e630:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c5e9
   1e634: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e634:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x195ef
   1e638: 91000021     	add	x1, x1, #0x0
		000000000001e638:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x195ef
   1e63c: 94000000     	bl	0x1e63c <syna_cdev_process_reports+0x418>
		000000000001e63c:  R_AARCH64_CALL26	_printk
   1e640: 12800177     	mov	w23, #-0xc              // =-12
   1e644: b85fc3a8     	ldur	w8, [x29, #-0x4]
   1e648: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e648:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b007
   1e64c: 91000000     	add	x0, x0, #0x0
		000000000001e64c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b007
   1e650: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e650:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1983f
   1e654: 91000021     	add	x1, x1, #0x0
		000000000001e654:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1983f
   1e658: 2a1303e3     	mov	w3, w19
   1e65c: 12001d02     	and	w2, w8, #0xff
   1e660: 94000000     	bl	0x1e660 <syna_cdev_process_reports+0x43c>
		000000000001e660:  R_AARCH64_CALL26	_printk
   1e664: 2a1703e0     	mov	w0, w23
   1e668: a9464ff4     	ldp	x20, x19, [sp, #0x60]
   1e66c: a94557f6     	ldp	x22, x21, [sp, #0x50]
   1e670: a9445ff8     	ldp	x24, x23, [sp, #0x40]
   1e674: a94367fa     	ldp	x26, x25, [sp, #0x30]
   1e678: a9426ffc     	ldp	x28, x27, [sp, #0x20]
   1e67c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1e680: 9101c3ff     	add	sp, sp, #0x70
   1e684: d50323bf     	autiasp
   1e688: d65f03c0     	ret
   1e68c: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e68c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac4c
   1e690: 91000000     	add	x0, x0, #0x0
		000000000001e690:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac4c
   1e694: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e694:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17dd6
   1e698: 91000021     	add	x1, x1, #0x0
		000000000001e698:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17dd6
   1e69c: 2a1303e2     	mov	w2, w19
   1e6a0: 2a1303e4     	mov	w4, w19
   1e6a4: 94000000     	bl	0x1e6a4 <syna_cdev_process_reports+0x480>
		000000000001e6a4:  R_AARCH64_CALL26	_printk
   1e6a8: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e6a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x184fd
   1e6ac: 91000000     	add	x0, x0, #0x0
		000000000001e6ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x184fd
   1e6b0: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e6b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x195ef
   1e6b4: 91000021     	add	x1, x1, #0x0
		000000000001e6b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x195ef
   1e6b8: 2a1303e2     	mov	w2, w19
   1e6bc: 94000000     	bl	0x1e6bc <syna_cdev_process_reports+0x498>
		000000000001e6bc:  R_AARCH64_CALL26	_printk
   1e6c0: 128002b7     	mov	w23, #-0x16             // =-22
   1e6c4: 52800034     	mov	w20, #0x1               // =1
   1e6c8: 17ffffa4     	b	0x1e558 <syna_cdev_process_reports+0x334>
   1e6cc: aa1903e0     	mov	x0, x25
   1e6d0: 94000000     	bl	0x1e6d0 <syna_cdev_process_reports+0x4ac>
		000000000001e6d0:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
   1e6d4: 17ffff54     	b	0x1e424 <syna_cdev_process_reports+0x200>
   1e6d8: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e6d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1873a
   1e6dc: 91000000     	add	x0, x0, #0x0
		000000000001e6dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1873a
   1e6e0: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e6e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19f61
   1e6e4: 91000021     	add	x1, x1, #0x0
		000000000001e6e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19f61
   1e6e8: 94000000     	bl	0x1e6e8 <syna_cdev_process_reports+0x4c4>
		000000000001e6e8:  R_AARCH64_CALL26	_printk
   1e6ec: 17ffff43     	b	0x1e3f8 <syna_cdev_process_reports+0x1d4>
   1e6f0: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e6f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2aa
   1e6f4: 91000000     	add	x0, x0, #0x0
		000000000001e6f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2aa
   1e6f8: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e6f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19f61
   1e6fc: 91000021     	add	x1, x1, #0x0
		000000000001e6fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19f61
   1e700: 94000000     	bl	0x1e700 <syna_cdev_process_reports+0x4dc>
		000000000001e700:  R_AARCH64_CALL26	_printk
   1e704: b944f2e8     	ldr	w8, [x23, #0x4f0]
   1e708: b9000288     	str	w8, [x20]
		000000000001e708:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x30630
   1e70c: 17ffff56     	b	0x1e464 <syna_cdev_process_reports+0x240>
   1e710: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e710:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac4c
   1e714: 91000000     	add	x0, x0, #0x0
		000000000001e714:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac4c
   1e718: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e718:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17dd6
   1e71c: 91000021     	add	x1, x1, #0x0
		000000000001e71c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17dd6
   1e720: 2a1903e3     	mov	w3, w25
   1e724: 2a0203e4     	mov	w4, w2
   1e728: 94000000     	bl	0x1e728 <syna_cdev_process_reports+0x504>
		000000000001e728:  R_AARCH64_CALL26	_printk
   1e72c: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e72c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19f2f
   1e730: 91000000     	add	x0, x0, #0x0
		000000000001e730:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19f2f
   1e734: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e734:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x195ef
   1e738: 91000021     	add	x1, x1, #0x0
		000000000001e738:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x195ef
   1e73c: 94000000     	bl	0x1e73c <syna_cdev_process_reports+0x518>
		000000000001e73c:  R_AARCH64_CALL26	_printk
   1e740: 128002b7     	mov	w23, #-0x16             // =-22
   1e744: 52800034     	mov	w20, #0x1               // =1
   1e748: 94000000     	bl	0x1e748 <syna_cdev_process_reports+0x524>
		000000000001e748:  R_AARCH64_CALL26	syna_request_managed_device
   1e74c: b5fff0c0     	cbnz	x0, 0x1e564 <syna_cdev_process_reports+0x340>
   1e750: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e750:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   1e754: 91000000     	add	x0, x0, #0x0
		000000000001e754:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   1e758: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e758:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   1e75c: 91000021     	add	x1, x1, #0x0
		000000000001e75c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   1e760: 94000000     	bl	0x1e760 <syna_cdev_process_reports+0x53c>
		000000000001e760:  R_AARCH64_CALL26	_printk
   1e764: 94000000     	bl	0x1e764 <syna_cdev_process_reports+0x540>
		000000000001e764:  R_AARCH64_CALL26	syna_request_managed_device
   1e768: b5fff080     	cbnz	x0, 0x1e578 <syna_cdev_process_reports+0x354>
   1e76c: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e76c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   1e770: 91000000     	add	x0, x0, #0x0
		000000000001e770:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   1e774: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e774:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   1e778: 91000021     	add	x1, x1, #0x0
		000000000001e778:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   1e77c: 94000000     	bl	0x1e77c <syna_cdev_process_reports+0x558>
		000000000001e77c:  R_AARCH64_CALL26	_printk
   1e780: 34fff034     	cbz	w20, 0x1e584 <syna_cdev_process_reports+0x360>
   1e784: 17ffffb0     	b	0x1e644 <syna_cdev_process_reports+0x420>
   1e788: d4200020     	brk	#0x1
   1e78c: 52800220     	mov	w0, #0x11               // =17
   1e790: 94000000     	bl	0x1e790 <syna_cdev_process_reports+0x56c>
		000000000001e790:  R_AARCH64_CALL26	__fortify_panic
   1e794: aa1903e0     	mov	x0, x25
   1e798: 94000000     	bl	0x1e798 <syna_cdev_process_reports+0x574>
		000000000001e798:  R_AARCH64_CALL26	__list_add_valid_or_report
   1e79c: 17ffff52     	b	0x1e4e4 <syna_cdev_process_reports+0x2c0>
   1e7a0: 90000008     	adrp	x8, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e7a0:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x30
   1e7a4: d5384114     	mrs	x20, SP_EL0
   1e7a8: f9402a96     	ldr	x22, [x20, #0x50]
   1e7ac: f9400100     	ldr	x0, [x8]
		000000000001e7ac:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x30
   1e7b0: 90000008     	adrp	x8, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e7b0:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xce0
   1e7b4: 91000108     	add	x8, x8, #0x0
		000000000001e7b4:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xce0
   1e7b8: 52819801     	mov	w1, #0xcc0              // =3264
   1e7bc: 52800602     	mov	w2, #0x30               // =48
   1e7c0: f9002a88     	str	x8, [x20, #0x50]
   1e7c4: 94000000     	bl	0x1e7c4 <syna_cdev_process_reports+0x5a0>
		000000000001e7c4:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1e7c8: aa0003f9     	mov	x25, x0
   1e7cc: f9002a96     	str	x22, [x20, #0x50]
   1e7d0: b5ffe5b9     	cbnz	x25, 0x1e484 <syna_cdev_process_reports+0x260>
   1e7d4: 90000017     	adrp	x23, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e7d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19f61
   1e7d8: 910002f7     	add	x23, x23, #0x0
		000000000001e7d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19f61
   1e7dc: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e7dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19302
   1e7e0: 91000000     	add	x0, x0, #0x0
		000000000001e7e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19302
   1e7e4: aa1703e1     	mov	x1, x23
   1e7e8: 94000000     	bl	0x1e7e8 <syna_cdev_process_reports+0x5c4>
		000000000001e7e8:  R_AARCH64_CALL26	_printk
   1e7ec: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e7ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ba82
   1e7f0: 91000000     	add	x0, x0, #0x0
		000000000001e7f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ba82
   1e7f4: aa1703e1     	mov	x1, x23
   1e7f8: 52800602     	mov	w2, #0x30               // =48
   1e7fc: 94000000     	bl	0x1e7fc <syna_cdev_process_reports+0x5d8>
		000000000001e7fc:  R_AARCH64_CALL26	_printk
   1e800: 14000012     	b	0x1e848 <syna_cdev_process_reports+0x624>
   1e804: d5384114     	mrs	x20, SP_EL0
   1e808: f9402a96     	ldr	x22, [x20, #0x50]
   1e80c: 90000008     	adrp	x8, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e80c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xd08
   1e810: 91000108     	add	x8, x8, #0x0
		000000000001e810:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xd08
   1e814: aa1803e0     	mov	x0, x24
   1e818: 52819801     	mov	w1, #0xcc0              // =3264
   1e81c: f9002a88     	str	x8, [x20, #0x50]
   1e820: 94000000     	bl	0x1e820 <syna_cdev_process_reports+0x5fc>
		000000000001e820:  R_AARCH64_CALL26	__kmalloc_noprof
   1e824: f9002a96     	str	x22, [x20, #0x50]
   1e828: f9000b20     	str	x0, [x25, #0x10]
   1e82c: b5ffe380     	cbnz	x0, 0x1e49c <syna_cdev_process_reports+0x278>
   1e830: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e830:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x176dc
   1e834: 91000000     	add	x0, x0, #0x0
		000000000001e834:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x176dc
   1e838: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e838:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19f61
   1e83c: 91000021     	add	x1, x1, #0x0
		000000000001e83c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19f61
   1e840: 2a1803e2     	mov	w2, w24
   1e844: 94000000     	bl	0x1e844 <syna_cdev_process_reports+0x620>
		000000000001e844:  R_AARCH64_CALL26	_printk
   1e848: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e848:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
   1e84c: 91000000     	add	x0, x0, #0x0
		000000000001e84c:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
   1e850: 94000000     	bl	0x1e850 <syna_cdev_process_reports+0x62c>
		000000000001e850:  R_AARCH64_CALL26	mutex_unlock
   1e854: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e854:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d46
   1e858: 91000000     	add	x0, x0, #0x0
		000000000001e858:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d46
   1e85c: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001e85c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x195ef
   1e860: 91000021     	add	x1, x1, #0x0
		000000000001e860:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x195ef
   1e864: 94000000     	bl	0x1e864 <syna_cdev_process_reports+0x640>
		000000000001e864:  R_AARCH64_CALL26	_printk
   1e868: 12800177     	mov	w23, #-0xc              // =-12
   1e86c: 52800034     	mov	w20, #0x1               // =1
   1e870: 17ffff3a     	b	0x1e558 <syna_cdev_process_reports+0x334>
