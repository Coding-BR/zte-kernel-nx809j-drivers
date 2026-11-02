
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001e280 <syna_cdev_process_reports>:
   1e280: d503233f     	paciasp
   1e284: d101c3ff     	sub	sp, sp, #0x70
   1e288: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1e28c: a9026ffc     	stp	x28, x27, [sp, #0x20]
   1e290: a90367fa     	stp	x26, x25, [sp, #0x30]
   1e294: a9045ff8     	stp	x24, x23, [sp, #0x40]
   1e298: a90557f6     	stp	x22, x21, [sp, #0x50]
   1e29c: a9064ff4     	stp	x20, x19, [sp, #0x60]
   1e2a0: 910043fd     	add	x29, sp, #0x10
   1e2a4: b81fc3a0     	stur	w0, [x29, #-0x4]
   1e2a8: b4001a03     	cbz	x3, 0x1e5e8 <syna_cdev_process_reports+0x368>
   1e2ac: 2a0203f3     	mov	w19, w2
   1e2b0: aa0103fa     	mov	x26, x1
   1e2b4: b4001a81     	cbz	x1, 0x1e604 <syna_cdev_process_reports+0x384>
   1e2b8: 9000001c     	adrp	x28, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e2b8:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb4
   1e2bc: f9400076     	ldr	x22, [x3]
   1e2c0: 11000e74     	add	w20, w19, #0x3
   1e2c4: b9400388     	ldr	w8, [x28]
		000000000001e2c4:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   1e2c8: aa0303f7     	mov	x23, x3
   1e2cc: 0aa87d19     	bic	w25, w8, w8, asr #31
   1e2d0: 0b140338     	add	w24, w25, w20
   1e2d4: 94000000     	bl	0x1e2d4 <syna_cdev_process_reports+0x54>
		000000000001e2d4:  R_AARCH64_CALL26	syna_request_managed_device
   1e2d8: b4001a40     	cbz	x0, 0x1e620 <syna_cdev_process_reports+0x3a0>
   1e2dc: 7100071f     	cmp	w24, #0x1
   1e2e0: 54001a6b     	b.lt	0x1e62c <syna_cdev_process_reports+0x3ac>
   1e2e4: aa1803e1     	mov	x1, x24
   1e2e8: 5281b802     	mov	w2, #0xdc0              // =3520
   1e2ec: 94000000     	bl	0x1e2ec <syna_cdev_process_reports+0x6c>
		000000000001e2ec:  R_AARCH64_CALL26	devm_kmalloc
   1e2f0: b4001a80     	cbz	x0, 0x1e640 <syna_cdev_process_reports+0x3c0>
   1e2f4: b940039b     	ldr	w27, [x28]
		000000000001e2f4:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   1e2f8: aa0003f5     	mov	x21, x0
   1e2fc: 7100077f     	cmp	w27, #0x1
   1e300: 5400020b     	b.lt	0x1e340 <syna_cdev_process_reports+0xc0>
   1e304: 94000000     	bl	0x1e304 <syna_cdev_process_reports+0x84>
		000000000001e304:  R_AARCH64_CALL26	syna_request_managed_device
   1e308: b4001ac0     	cbz	x0, 0x1e660 <syna_cdev_process_reports+0x3e0>
   1e30c: aa1b03e1     	mov	x1, x27
   1e310: 5281b802     	mov	w2, #0xdc0              // =3520
   1e314: 94000000     	bl	0x1e314 <syna_cdev_process_reports+0x94>
		000000000001e314:  R_AARCH64_CALL26	devm_kmalloc
   1e318: f90003e0     	str	x0, [sp]
   1e31c: b5000160     	cbnz	x0, 0x1e348 <syna_cdev_process_reports+0xc8>
   1e320: 94000000     	bl	0x1e320 <syna_cdev_process_reports+0xa0>
		000000000001e320:  R_AARCH64_CALL26	syna_request_managed_device
   1e324: b5001ac0     	cbnz	x0, 0x1e67c <syna_cdev_process_reports+0x3fc>
   1e328: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   1e32c: 91000000     	add	x0, x0, #0x0
		000000000001e32c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   1e330: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   1e334: 91000021     	add	x1, x1, #0x0
		000000000001e334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   1e338: 94000000     	bl	0x1e338 <syna_cdev_process_reports+0xb8>
		000000000001e338:  R_AARCH64_CALL26	_printk
   1e33c: 140000d2     	b	0x1e684 <syna_cdev_process_reports+0x404>
   1e340: aa1f03fb     	mov	x27, xzr
   1e344: f90003ff     	str	xzr, [sp]
   1e348: b85fc3a8     	ldur	w8, [x29, #-0x4]
   1e34c: 7100071f     	cmp	w24, #0x1
   1e350: 390002a8     	strb	w8, [x21]
   1e354: 54002480     	b.eq	0x1e7e4 <syna_cdev_process_reports+0x564>
   1e358: 71000b1f     	cmp	w24, #0x2
   1e35c: 390006b3     	strb	w19, [x21, #0x1]
   1e360: 54002420     	b.eq	0x1e7e4 <syna_cdev_process_reports+0x564>
   1e364: 53087e68     	lsr	w8, w19, #8
   1e368: 39000aa8     	strb	w8, [x21, #0x2]
   1e36c: 34000193     	cbz	w19, 0x1e39c <syna_cdev_process_reports+0x11c>
   1e370: b1000ea0     	adds	x0, x21, #0x3
   1e374: 54001c80     	b.eq	0x1e704 <syna_cdev_process_reports+0x484>
   1e378: 0b130323     	add	w3, w25, w19
   1e37c: 6b13007f     	cmp	w3, w19
   1e380: 54001b43     	b.lo	0x1e6e8 <syna_cdev_process_reports+0x468>
   1e384: 2a1303e2     	mov	w2, w19
   1e388: d1000f01     	sub	x1, x24, #0x3
   1e38c: eb02003f     	cmp	x1, x2
   1e390: 540022c3     	b.lo	0x1e7e8 <syna_cdev_process_reports+0x568>
   1e394: aa1a03e1     	mov	x1, x26
   1e398: 94000000     	bl	0x1e398 <syna_cdev_process_reports+0x118>
		000000000001e398:  R_AARCH64_CALL26	memcpy
   1e39c: b9400388     	ldr	w8, [x28]
		000000000001e39c:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   1e3a0: 7100091f     	cmp	w8, #0x2
   1e3a4: 5400042b     	b.lt	0x1e428 <syna_cdev_process_reports+0x1a8>
   1e3a8: b40021fb     	cbz	x27, 0x1e7e4 <syna_cdev_process_reports+0x564>
   1e3ac: 794706c8     	ldrh	w8, [x22, #0x382]
   1e3b0: f94003fa     	ldr	x26, [sp]
   1e3b4: f100077f     	cmp	x27, #0x1
   1e3b8: 39000348     	strb	w8, [x26]
   1e3bc: 54002140     	b.eq	0x1e7e4 <syna_cdev_process_reports+0x564>
   1e3c0: 53087d08     	lsr	w8, w8, #8
   1e3c4: 39000748     	strb	w8, [x26, #0x1]
   1e3c8: 529fffc8     	mov	w8, #0xfffe             // =65534
   1e3cc: b9400382     	ldr	w2, [x28]
		000000000001e3cc:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   1e3d0: 0b080048     	add	w8, w2, w8
   1e3d4: 72003d1f     	tst	w8, #0xffff
   1e3d8: 540000c0     	b.eq	0x1e3f0 <syna_cdev_process_reports+0x170>
   1e3dc: f1000b7f     	cmp	x27, #0x2
   1e3e0: 54002020     	b.eq	0x1e7e4 <syna_cdev_process_reports+0x564>
   1e3e4: 394e16c8     	ldrb	w8, [x22, #0x385]
   1e3e8: 39000b48     	strb	w8, [x26, #0x2]
   1e3ec: b9400382     	ldr	w2, [x28]
		000000000001e3ec:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   1e3f0: 93407e88     	sxtw	x8, w20
   1e3f4: ab0802a0     	adds	x0, x21, x8
   1e3f8: 54001c80     	b.eq	0x1e788 <syna_cdev_process_reports+0x508>
   1e3fc: b4001c7a     	cbz	x26, 0x1e788 <syna_cdev_process_reports+0x508>
   1e400: 6b19005f     	cmp	w2, w25
   1e404: 54001b48     	b.hi	0x1e76c <syna_cdev_process_reports+0x4ec>
   1e408: cb080308     	sub	x8, x24, x8
   1e40c: 6b18029f     	cmp	w20, w24
   1e410: 2a0203e2     	mov	w2, w2
   1e414: 9a8883e1     	csel	x1, xzr, x8, hi
   1e418: eb02003f     	cmp	x1, x2
   1e41c: 54001e63     	b.lo	0x1e7e8 <syna_cdev_process_reports+0x568>
   1e420: aa1a03e1     	mov	x1, x26
   1e424: 94000000     	bl	0x1e424 <syna_cdev_process_reports+0x1a4>
		000000000001e424:  R_AARCH64_CALL26	memcpy
   1e428: f9413afa     	ldr	x26, [x23, #0x270]
   1e42c: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e42c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
   1e430: 91000000     	add	x0, x0, #0x0
		000000000001e430:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
   1e434: 94000000     	bl	0x1e434 <syna_cdev_process_reports+0x1b4>
		000000000001e434:  R_AARCH64_CALL26	mutex_lock
   1e438: b944f2e8     	ldr	w8, [x23, #0x4f0]
   1e43c: 90000014     	adrp	x20, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e43c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30630
   1e440: b9400289     	ldr	w9, [x20]
		000000000001e440:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x30630
   1e444: 7112c11f     	cmp	w8, #0x4b0
   1e448: 54000383     	b.lo	0x1e4b8 <syna_cdev_process_reports+0x238>
   1e44c: 6b09011f     	cmp	w8, w9
   1e450: 54001721     	b.ne	0x1e734 <syna_cdev_process_reports+0x4b4>
   1e454: f9427ef9     	ldr	x25, [x23, #0x4f8]
   1e458: f9400728     	ldr	x8, [x25, #0x8]
   1e45c: f9400109     	ldr	x9, [x8]
   1e460: eb19013f     	cmp	x9, x25
   1e464: 54001621     	b.ne	0x1e728 <syna_cdev_process_reports+0x4a8>
   1e468: f9400329     	ldr	x9, [x25]
   1e46c: f940052a     	ldr	x10, [x9, #0x8]
   1e470: eb19015f     	cmp	x10, x25
   1e474: 540015a1     	b.ne	0x1e728 <syna_cdev_process_reports+0x4a8>
   1e478: f9000528     	str	x8, [x9, #0x8]
   1e47c: f9000109     	str	x9, [x8]
   1e480: d2802008     	mov	x8, #0x100              // =256
   1e484: 52800449     	mov	w9, #0x22               // =34
   1e488: f9400b20     	ldr	x0, [x25, #0x10]
   1e48c: f2fbd5a8     	movk	x8, #0xdead, lsl #48
   1e490: aa090109     	orr	x9, x8, x9
   1e494: a9002728     	stp	x8, x9, [x25]
   1e498: 94000000     	bl	0x1e498 <syna_cdev_process_reports+0x218>
		000000000001e498:  R_AARCH64_CALL26	kfree
   1e49c: aa1903e0     	mov	x0, x25
   1e4a0: 94000000     	bl	0x1e4a0 <syna_cdev_process_reports+0x220>
		000000000001e4a0:  R_AARCH64_CALL26	kfree
   1e4a4: b944f2e8     	ldr	w8, [x23, #0x4f0]
   1e4a8: b9000288     	str	w8, [x20]
		000000000001e4a8:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x30630
   1e4ac: 51000508     	sub	w8, w8, #0x1
   1e4b0: b904f2e8     	str	w8, [x23, #0x4f0]
   1e4b4: 14000003     	b	0x1e4c0 <syna_cdev_process_reports+0x240>
   1e4b8: 7112c13f     	cmp	w9, #0x4b0
   1e4bc: 5400148a     	b.ge	0x1e74c <syna_cdev_process_reports+0x4cc>
   1e4c0: d503201f     	nop
   1e4c4: 90000008     	adrp	x8, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e4c4:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x30
   1e4c8: 52819801     	mov	w1, #0xcc0              // =3264
   1e4cc: 52800602     	mov	w2, #0x30               // =48
   1e4d0: f9400100     	ldr	x0, [x8]
		000000000001e4d0:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x30
   1e4d4: 94000000     	bl	0x1e4d4 <syna_cdev_process_reports+0x254>
		000000000001e4d4:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1e4d8: aa0003f9     	mov	x25, x0
   1e4dc: b4001ab9     	cbz	x25, 0x1e830 <syna_cdev_process_reports+0x5b0>
   1e4e0: d503201f     	nop
   1e4e4: aa1803e0     	mov	x0, x24
   1e4e8: 52819801     	mov	w1, #0xcc0              // =3264
   1e4ec: 94000000     	bl	0x1e4ec <syna_cdev_process_reports+0x26c>
		000000000001e4ec:  R_AARCH64_CALL26	__kmalloc_noprof
   1e4f0: f9000b20     	str	x0, [x25, #0x10]
   1e4f4: b4001cc0     	cbz	x0, 0x1e88c <syna_cdev_process_reports+0x60c>
   1e4f8: aa1503e1     	mov	x1, x21
   1e4fc: aa1803e2     	mov	x2, x24
   1e500: b9001b38     	str	w24, [x25, #0x18]
   1e504: 94000000     	bl	0x1e504 <syna_cdev_process_reports+0x284>
		000000000001e504:  R_AARCH64_CALL26	memcpy
   1e508: 91008320     	add	x0, x25, #0x20
   1e50c: 94000000     	bl	0x1e50c <syna_cdev_process_reports+0x28c>
		000000000001e50c:  R_AARCH64_CALL26	ktime_get_real_ts64
   1e510: 9113e2e2     	add	x2, x23, #0x4f8
   1e514: f94282e1     	ldr	x1, [x23, #0x500]
   1e518: eb02033f     	cmp	x25, x2
   1e51c: 540016a0     	b.eq	0x1e7f0 <syna_cdev_process_reports+0x570>
   1e520: eb19003f     	cmp	x1, x25
   1e524: 54001660     	b.eq	0x1e7f0 <syna_cdev_process_reports+0x570>
   1e528: f9400028     	ldr	x8, [x1]
   1e52c: eb02011f     	cmp	x8, x2
   1e530: 54001601     	b.ne	0x1e7f0 <syna_cdev_process_reports+0x570>
   1e534: f90282f9     	str	x25, [x23, #0x500]
   1e538: a9000722     	stp	x2, x1, [x25]
   1e53c: f9000039     	str	x25, [x1]
   1e540: 90000008     	adrp	x8, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e540:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb8
   1e544: b944f2e9     	ldr	w9, [x23, #0x4f0]
   1e548: b9400108     	ldr	w8, [x8]
		000000000001e548:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb8
   1e54c: 11000529     	add	w9, w9, #0x1
   1e550: 51000508     	sub	w8, w8, #0x1
   1e554: b904f2e9     	str	w9, [x23, #0x4f0]
   1e558: 6b09011f     	cmp	w8, w9
   1e55c: 54000182     	b.hs	0x1e58c <syna_cdev_process_reports+0x30c>
   1e560: f9402348     	ldr	x8, [x26, #0x40]
   1e564: b4000148     	cbz	x8, 0x1e58c <syna_cdev_process_reports+0x30c>
   1e568: 91002340     	add	x0, x26, #0x8
   1e56c: 2a1f03e1     	mov	w1, wzr
   1e570: b85fc110     	ldur	w16, [x8, #-0x4]
   1e574: 728c3631     	movk	w17, #0x61b1
   1e578: 72a685d1     	movk	w17, #0x342e, lsl #16
   1e57c: 6b11021f     	cmp	w16, w17
   1e580: 54000040     	b.eq	0x1e588 <syna_cdev_process_reports+0x308>
   1e584: d4304500     	brk	#0x8228
   1e588: d63f0100     	blr	x8
   1e58c: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e58c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
   1e590: 91000000     	add	x0, x0, #0x0
		000000000001e590:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
   1e594: 94000000     	bl	0x1e594 <syna_cdev_process_reports+0x314>
		000000000001e594:  R_AARCH64_CALL26	mutex_unlock
   1e598: 911422e0     	add	x0, x23, #0x508
   1e59c: 52800021     	mov	w1, #0x1                // =1
   1e5a0: 52800022     	mov	w2, #0x1                // =1
   1e5a4: aa1f03e3     	mov	x3, xzr
   1e5a8: 94000000     	bl	0x1e5a8 <syna_cdev_process_reports+0x328>
		000000000001e5a8:  R_AARCH64_CALL26	__wake_up
   1e5ac: 2a1f03f4     	mov	w20, wzr
   1e5b0: 2a1f03f7     	mov	w23, wzr
   1e5b4: f94003fa     	ldr	x26, [sp]
   1e5b8: 94000000     	bl	0x1e5b8 <syna_cdev_process_reports+0x338>
		000000000001e5b8:  R_AARCH64_CALL26	syna_request_managed_device
   1e5bc: b4000f80     	cbz	x0, 0x1e7ac <syna_cdev_process_reports+0x52c>
   1e5c0: b400007a     	cbz	x26, 0x1e5cc <syna_cdev_process_reports+0x34c>
   1e5c4: aa1a03e1     	mov	x1, x26
   1e5c8: 94000000     	bl	0x1e5c8 <syna_cdev_process_reports+0x348>
		000000000001e5c8:  R_AARCH64_CALL26	devm_kfree
   1e5cc: 94000000     	bl	0x1e5cc <syna_cdev_process_reports+0x34c>
		000000000001e5cc:  R_AARCH64_CALL26	syna_request_managed_device
   1e5d0: b4000fc0     	cbz	x0, 0x1e7c8 <syna_cdev_process_reports+0x548>
   1e5d4: aa1503e1     	mov	x1, x21
   1e5d8: 94000000     	bl	0x1e5d8 <syna_cdev_process_reports+0x358>
		000000000001e5d8:  R_AARCH64_CALL26	devm_kfree
   1e5dc: 35000634     	cbnz	w20, 0x1e6a0 <syna_cdev_process_reports+0x420>
   1e5e0: 2a1f03f7     	mov	w23, wzr
   1e5e4: 14000037     	b	0x1e6c0 <syna_cdev_process_reports+0x440>
   1e5e8: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e5e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa9a
   1e5ec: 91000000     	add	x0, x0, #0x0
		000000000001e5ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa9a
   1e5f0: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e5f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1983f
   1e5f4: 91000021     	add	x1, x1, #0x0
		000000000001e5f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1983f
   1e5f8: 94000000     	bl	0x1e5f8 <syna_cdev_process_reports+0x378>
		000000000001e5f8:  R_AARCH64_CALL26	_printk
   1e5fc: 128002b7     	mov	w23, #-0x16             // =-22
   1e600: 14000030     	b	0x1e6c0 <syna_cdev_process_reports+0x440>
   1e604: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x192d8
   1e608: 91000000     	add	x0, x0, #0x0
		000000000001e608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x192d8
   1e60c: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e60c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x195ef
   1e610: 91000021     	add	x1, x1, #0x0
		000000000001e610:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x195ef
   1e614: 94000000     	bl	0x1e614 <syna_cdev_process_reports+0x394>
		000000000001e614:  R_AARCH64_CALL26	_printk
   1e618: 128002b7     	mov	w23, #-0x16             // =-22
   1e61c: 14000021     	b	0x1e6a0 <syna_cdev_process_reports+0x420>
   1e620: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e620:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   1e624: 91000000     	add	x0, x0, #0x0
		000000000001e624:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   1e628: 14000003     	b	0x1e634 <syna_cdev_process_reports+0x3b4>
   1e62c: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e62c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3eb
   1e630: 91000000     	add	x0, x0, #0x0
		000000000001e630:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3eb
   1e634: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e634:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194ed
   1e638: 91000021     	add	x1, x1, #0x0
		000000000001e638:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194ed
   1e63c: 94000000     	bl	0x1e63c <syna_cdev_process_reports+0x3bc>
		000000000001e63c:  R_AARCH64_CALL26	_printk
   1e640: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e640:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ff7
   1e644: 91000000     	add	x0, x0, #0x0
		000000000001e644:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ff7
   1e648: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e648:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x195ef
   1e64c: 91000021     	add	x1, x1, #0x0
		000000000001e64c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x195ef
   1e650: 2a1803e2     	mov	w2, w24
   1e654: 2a1303e3     	mov	w3, w19
   1e658: 94000000     	bl	0x1e658 <syna_cdev_process_reports+0x3d8>
		000000000001e658:  R_AARCH64_CALL26	_printk
   1e65c: 14000010     	b	0x1e69c <syna_cdev_process_reports+0x41c>
   1e660: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e660:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   1e664: 91000000     	add	x0, x0, #0x0
		000000000001e664:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   1e668: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e668:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194ed
   1e66c: 91000021     	add	x1, x1, #0x0
		000000000001e66c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194ed
   1e670: 94000000     	bl	0x1e670 <syna_cdev_process_reports+0x3f0>
		000000000001e670:  R_AARCH64_CALL26	_printk
   1e674: 94000000     	bl	0x1e674 <syna_cdev_process_reports+0x3f4>
		000000000001e674:  R_AARCH64_CALL26	syna_request_managed_device
   1e678: b4ffe580     	cbz	x0, 0x1e328 <syna_cdev_process_reports+0xa8>
   1e67c: aa1503e1     	mov	x1, x21
   1e680: 94000000     	bl	0x1e680 <syna_cdev_process_reports+0x400>
		000000000001e680:  R_AARCH64_CALL26	devm_kfree
   1e684: b9400382     	ldr	w2, [x28]
		000000000001e684:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   1e688: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e688:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c602
   1e68c: 91000000     	add	x0, x0, #0x0
		000000000001e68c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c602
   1e690: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e690:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x195ef
   1e694: 91000021     	add	x1, x1, #0x0
		000000000001e694:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x195ef
   1e698: 94000000     	bl	0x1e698 <syna_cdev_process_reports+0x418>
		000000000001e698:  R_AARCH64_CALL26	_printk
   1e69c: 12800177     	mov	w23, #-0xc              // =-12
   1e6a0: b85fc3a8     	ldur	w8, [x29, #-0x4]
   1e6a4: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e6a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b007
   1e6a8: 91000000     	add	x0, x0, #0x0
		000000000001e6a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b007
   1e6ac: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e6ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1983f
   1e6b0: 91000021     	add	x1, x1, #0x0
		000000000001e6b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1983f
   1e6b4: 2a1303e3     	mov	w3, w19
   1e6b8: 12001d02     	and	w2, w8, #0xff
   1e6bc: 94000000     	bl	0x1e6bc <syna_cdev_process_reports+0x43c>
		000000000001e6bc:  R_AARCH64_CALL26	_printk
   1e6c0: 2a1703e0     	mov	w0, w23
   1e6c4: a9464ff4     	ldp	x20, x19, [sp, #0x60]
   1e6c8: a94557f6     	ldp	x22, x21, [sp, #0x50]
   1e6cc: a9445ff8     	ldp	x24, x23, [sp, #0x40]
   1e6d0: a94367fa     	ldp	x26, x25, [sp, #0x30]
   1e6d4: a9426ffc     	ldp	x28, x27, [sp, #0x20]
   1e6d8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1e6dc: 9101c3ff     	add	sp, sp, #0x70
   1e6e0: d50323bf     	autiasp
   1e6e4: d65f03c0     	ret
   1e6e8: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e6e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac4c
   1e6ec: 91000000     	add	x0, x0, #0x0
		000000000001e6ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac4c
   1e6f0: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e6f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17dd6
   1e6f4: 91000021     	add	x1, x1, #0x0
		000000000001e6f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17dd6
   1e6f8: 2a1303e2     	mov	w2, w19
   1e6fc: 2a1303e4     	mov	w4, w19
   1e700: 94000000     	bl	0x1e700 <syna_cdev_process_reports+0x480>
		000000000001e700:  R_AARCH64_CALL26	_printk
   1e704: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e704:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x184fd
   1e708: 91000000     	add	x0, x0, #0x0
		000000000001e708:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x184fd
   1e70c: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e70c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x195ef
   1e710: 91000021     	add	x1, x1, #0x0
		000000000001e710:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x195ef
   1e714: 2a1303e2     	mov	w2, w19
   1e718: 94000000     	bl	0x1e718 <syna_cdev_process_reports+0x498>
		000000000001e718:  R_AARCH64_CALL26	_printk
   1e71c: 128002b7     	mov	w23, #-0x16             // =-22
   1e720: 52800034     	mov	w20, #0x1               // =1
   1e724: 17ffffa4     	b	0x1e5b4 <syna_cdev_process_reports+0x334>
   1e728: aa1903e0     	mov	x0, x25
   1e72c: 94000000     	bl	0x1e72c <syna_cdev_process_reports+0x4ac>
		000000000001e72c:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
   1e730: 17ffff54     	b	0x1e480 <syna_cdev_process_reports+0x200>
   1e734: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e734:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1873a
   1e738: 91000000     	add	x0, x0, #0x0
		000000000001e738:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1873a
   1e73c: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e73c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19f61
   1e740: 91000021     	add	x1, x1, #0x0
		000000000001e740:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19f61
   1e744: 94000000     	bl	0x1e744 <syna_cdev_process_reports+0x4c4>
		000000000001e744:  R_AARCH64_CALL26	_printk
   1e748: 17ffff43     	b	0x1e454 <syna_cdev_process_reports+0x1d4>
   1e74c: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e74c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2aa
   1e750: 91000000     	add	x0, x0, #0x0
		000000000001e750:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2aa
   1e754: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e754:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19f61
   1e758: 91000021     	add	x1, x1, #0x0
		000000000001e758:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19f61
   1e75c: 94000000     	bl	0x1e75c <syna_cdev_process_reports+0x4dc>
		000000000001e75c:  R_AARCH64_CALL26	_printk
   1e760: b944f2e8     	ldr	w8, [x23, #0x4f0]
   1e764: b9000288     	str	w8, [x20]
		000000000001e764:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x30630
   1e768: 17ffff56     	b	0x1e4c0 <syna_cdev_process_reports+0x240>
   1e76c: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e76c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac4c
   1e770: 91000000     	add	x0, x0, #0x0
		000000000001e770:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac4c
   1e774: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e774:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17dd6
   1e778: 91000021     	add	x1, x1, #0x0
		000000000001e778:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17dd6
   1e77c: 2a1903e3     	mov	w3, w25
   1e780: 2a0203e4     	mov	w4, w2
   1e784: 94000000     	bl	0x1e784 <syna_cdev_process_reports+0x504>
		000000000001e784:  R_AARCH64_CALL26	_printk
   1e788: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e788:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19f2f
   1e78c: 91000000     	add	x0, x0, #0x0
		000000000001e78c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19f2f
   1e790: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e790:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x195ef
   1e794: 91000021     	add	x1, x1, #0x0
		000000000001e794:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x195ef
   1e798: 94000000     	bl	0x1e798 <syna_cdev_process_reports+0x518>
		000000000001e798:  R_AARCH64_CALL26	_printk
   1e79c: 128002b7     	mov	w23, #-0x16             // =-22
   1e7a0: 52800034     	mov	w20, #0x1               // =1
   1e7a4: 94000000     	bl	0x1e7a4 <syna_cdev_process_reports+0x524>
		000000000001e7a4:  R_AARCH64_CALL26	syna_request_managed_device
   1e7a8: b5fff0c0     	cbnz	x0, 0x1e5c0 <syna_cdev_process_reports+0x340>
   1e7ac: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e7ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   1e7b0: 91000000     	add	x0, x0, #0x0
		000000000001e7b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   1e7b4: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e7b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   1e7b8: 91000021     	add	x1, x1, #0x0
		000000000001e7b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   1e7bc: 94000000     	bl	0x1e7bc <syna_cdev_process_reports+0x53c>
		000000000001e7bc:  R_AARCH64_CALL26	_printk
   1e7c0: 94000000     	bl	0x1e7c0 <syna_cdev_process_reports+0x540>
		000000000001e7c0:  R_AARCH64_CALL26	syna_request_managed_device
   1e7c4: b5fff080     	cbnz	x0, 0x1e5d4 <syna_cdev_process_reports+0x354>
   1e7c8: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e7c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   1e7cc: 91000000     	add	x0, x0, #0x0
		000000000001e7cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   1e7d0: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e7d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   1e7d4: 91000021     	add	x1, x1, #0x0
		000000000001e7d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   1e7d8: 94000000     	bl	0x1e7d8 <syna_cdev_process_reports+0x558>
		000000000001e7d8:  R_AARCH64_CALL26	_printk
   1e7dc: 34fff034     	cbz	w20, 0x1e5e0 <syna_cdev_process_reports+0x360>
   1e7e0: 17ffffb0     	b	0x1e6a0 <syna_cdev_process_reports+0x420>
   1e7e4: d4200020     	brk	#0x1
   1e7e8: 52800220     	mov	w0, #0x11               // =17
   1e7ec: 94000000     	bl	0x1e7ec <syna_cdev_process_reports+0x56c>
		000000000001e7ec:  R_AARCH64_CALL26	__fortify_panic
   1e7f0: aa1903e0     	mov	x0, x25
   1e7f4: 94000000     	bl	0x1e7f4 <syna_cdev_process_reports+0x574>
		000000000001e7f4:  R_AARCH64_CALL26	__list_add_valid_or_report
   1e7f8: 17ffff52     	b	0x1e540 <syna_cdev_process_reports+0x2c0>
   1e7fc: 90000008     	adrp	x8, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e7fc:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x30
   1e800: d5384114     	mrs	x20, SP_EL0
   1e804: f9402a96     	ldr	x22, [x20, #0x50]
   1e808: f9400100     	ldr	x0, [x8]
		000000000001e808:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x30
   1e80c: 90000008     	adrp	x8, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e80c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xce0
   1e810: 91000108     	add	x8, x8, #0x0
		000000000001e810:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xce0
   1e814: 52819801     	mov	w1, #0xcc0              // =3264
   1e818: 52800602     	mov	w2, #0x30               // =48
   1e81c: f9002a88     	str	x8, [x20, #0x50]
   1e820: 94000000     	bl	0x1e820 <syna_cdev_process_reports+0x5a0>
		000000000001e820:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1e824: aa0003f9     	mov	x25, x0
   1e828: f9002a96     	str	x22, [x20, #0x50]
   1e82c: b5ffe5b9     	cbnz	x25, 0x1e4e0 <syna_cdev_process_reports+0x260>
   1e830: 90000017     	adrp	x23, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e830:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19f61
   1e834: 910002f7     	add	x23, x23, #0x0
		000000000001e834:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19f61
   1e838: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e838:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19302
   1e83c: 91000000     	add	x0, x0, #0x0
		000000000001e83c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19302
   1e840: aa1703e1     	mov	x1, x23
   1e844: 94000000     	bl	0x1e844 <syna_cdev_process_reports+0x5c4>
		000000000001e844:  R_AARCH64_CALL26	_printk
   1e848: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e848:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ba82
   1e84c: 91000000     	add	x0, x0, #0x0
		000000000001e84c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ba82
   1e850: aa1703e1     	mov	x1, x23
   1e854: 52800602     	mov	w2, #0x30               // =48
   1e858: 94000000     	bl	0x1e858 <syna_cdev_process_reports+0x5d8>
		000000000001e858:  R_AARCH64_CALL26	_printk
   1e85c: 14000012     	b	0x1e8a4 <syna_cdev_process_reports+0x624>
   1e860: d5384114     	mrs	x20, SP_EL0
   1e864: f9402a96     	ldr	x22, [x20, #0x50]
   1e868: 90000008     	adrp	x8, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e868:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xd08
   1e86c: 91000108     	add	x8, x8, #0x0
		000000000001e86c:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xd08
   1e870: aa1803e0     	mov	x0, x24
   1e874: 52819801     	mov	w1, #0xcc0              // =3264
   1e878: f9002a88     	str	x8, [x20, #0x50]
   1e87c: 94000000     	bl	0x1e87c <syna_cdev_process_reports+0x5fc>
		000000000001e87c:  R_AARCH64_CALL26	__kmalloc_noprof
   1e880: f9002a96     	str	x22, [x20, #0x50]
   1e884: f9000b20     	str	x0, [x25, #0x10]
   1e888: b5ffe380     	cbnz	x0, 0x1e4f8 <syna_cdev_process_reports+0x278>
   1e88c: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e88c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x176dc
   1e890: 91000000     	add	x0, x0, #0x0
		000000000001e890:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x176dc
   1e894: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e894:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19f61
   1e898: 91000021     	add	x1, x1, #0x0
		000000000001e898:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19f61
   1e89c: 2a1803e2     	mov	w2, w24
   1e8a0: 94000000     	bl	0x1e8a0 <syna_cdev_process_reports+0x620>
		000000000001e8a0:  R_AARCH64_CALL26	_printk
   1e8a4: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e8a4:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
   1e8a8: 91000000     	add	x0, x0, #0x0
		000000000001e8a8:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
   1e8ac: 94000000     	bl	0x1e8ac <syna_cdev_process_reports+0x62c>
		000000000001e8ac:  R_AARCH64_CALL26	mutex_unlock
   1e8b0: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e8b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d46
   1e8b4: 91000000     	add	x0, x0, #0x0
		000000000001e8b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d46
   1e8b8: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e8b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x195ef
   1e8bc: 91000021     	add	x1, x1, #0x0
		000000000001e8bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x195ef
   1e8c0: 94000000     	bl	0x1e8c0 <syna_cdev_process_reports+0x640>
		000000000001e8c0:  R_AARCH64_CALL26	_printk
   1e8c4: 12800177     	mov	w23, #-0xc              // =-12
   1e8c8: 52800034     	mov	w20, #0x1               // =1
   1e8cc: 17ffff3a     	b	0x1e5b4 <syna_cdev_process_reports+0x334>
