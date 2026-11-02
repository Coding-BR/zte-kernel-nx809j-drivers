
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000294b8 <syna_cdev_process_reports>:
   294b8: d503233f     	paciasp
   294bc: d101c3ff     	sub	sp, sp, #0x70
   294c0: a9017bfd     	stp	x29, x30, [sp, #0x10]
   294c4: a9026ffc     	stp	x28, x27, [sp, #0x20]
   294c8: a90367fa     	stp	x26, x25, [sp, #0x30]
   294cc: a9045ff8     	stp	x24, x23, [sp, #0x40]
   294d0: a90557f6     	stp	x22, x21, [sp, #0x50]
   294d4: a9064ff4     	stp	x20, x19, [sp, #0x60]
   294d8: 910043fd     	add	x29, sp, #0x10
   294dc: b81fc3a0     	stur	w0, [x29, #-0x4]
   294e0: b4001a03     	cbz	x3, 0x29820 <syna_cdev_process_reports+0x368>
   294e4: 2a0203f3     	mov	w19, w2
   294e8: aa0103fa     	mov	x26, x1
   294ec: b4001a81     	cbz	x1, 0x2983c <syna_cdev_process_reports+0x384>
   294f0: 9000001c     	adrp	x28, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		00000000000294f0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb4
   294f4: f9400076     	ldr	x22, [x3]
   294f8: 11000e74     	add	w20, w19, #0x3
   294fc: b9400388     	ldr	w8, [x28]
		00000000000294fc:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   29500: aa0303f7     	mov	x23, x3
   29504: 0aa87d19     	bic	w25, w8, w8, asr #31
   29508: 0b140338     	add	w24, w25, w20
   2950c: 94000000     	bl	0x2950c <syna_cdev_process_reports+0x54>
		000000000002950c:  R_AARCH64_CALL26	syna_request_managed_device
   29510: b4001a40     	cbz	x0, 0x29858 <syna_cdev_process_reports+0x3a0>
   29514: 7100071f     	cmp	w24, #0x1
   29518: 54001a6b     	b.lt	0x29864 <syna_cdev_process_reports+0x3ac>
   2951c: aa1803e1     	mov	x1, x24
   29520: 5281b802     	mov	w2, #0xdc0              // =3520
   29524: 94000000     	bl	0x29524 <syna_cdev_process_reports+0x6c>
		0000000000029524:  R_AARCH64_CALL26	devm_kmalloc
   29528: b4001a80     	cbz	x0, 0x29878 <syna_cdev_process_reports+0x3c0>
   2952c: b940039b     	ldr	w27, [x28]
		000000000002952c:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   29530: aa0003f5     	mov	x21, x0
   29534: 7100077f     	cmp	w27, #0x1
   29538: 5400020b     	b.lt	0x29578 <syna_cdev_process_reports+0xc0>
   2953c: 94000000     	bl	0x2953c <syna_cdev_process_reports+0x84>
		000000000002953c:  R_AARCH64_CALL26	syna_request_managed_device
   29540: b4001ac0     	cbz	x0, 0x29898 <syna_cdev_process_reports+0x3e0>
   29544: aa1b03e1     	mov	x1, x27
   29548: 5281b802     	mov	w2, #0xdc0              // =3520
   2954c: 94000000     	bl	0x2954c <syna_cdev_process_reports+0x94>
		000000000002954c:  R_AARCH64_CALL26	devm_kmalloc
   29550: f90003e0     	str	x0, [sp]
   29554: b5000160     	cbnz	x0, 0x29580 <syna_cdev_process_reports+0xc8>
   29558: 94000000     	bl	0x29558 <syna_cdev_process_reports+0xa0>
		0000000000029558:  R_AARCH64_CALL26	syna_request_managed_device
   2955c: b5001ac0     	cbnz	x0, 0x298b4 <syna_cdev_process_reports+0x3fc>
   29560: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029560:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c19d
   29564: 91000000     	add	x0, x0, #0x0
		0000000000029564:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c19d
   29568: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029568:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bbc3
   2956c: 91000021     	add	x1, x1, #0x0
		000000000002956c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bbc3
   29570: 94000000     	bl	0x29570 <syna_cdev_process_reports+0xb8>
		0000000000029570:  R_AARCH64_CALL26	_printk
   29574: 140000d2     	b	0x298bc <syna_cdev_process_reports+0x404>
   29578: aa1f03fb     	mov	x27, xzr
   2957c: f90003ff     	str	xzr, [sp]
   29580: b85fc3a8     	ldur	w8, [x29, #-0x4]
   29584: 7100071f     	cmp	w24, #0x1
   29588: 390002a8     	strb	w8, [x21]
   2958c: 54002480     	b.eq	0x29a1c <syna_cdev_process_reports+0x564>
   29590: 71000b1f     	cmp	w24, #0x2
   29594: 390006b3     	strb	w19, [x21, #0x1]
   29598: 54002420     	b.eq	0x29a1c <syna_cdev_process_reports+0x564>
   2959c: 53087e68     	lsr	w8, w19, #8
   295a0: 39000aa8     	strb	w8, [x21, #0x2]
   295a4: 34000193     	cbz	w19, 0x295d4 <syna_cdev_process_reports+0x11c>
   295a8: b1000ea0     	adds	x0, x21, #0x3
   295ac: 54001c80     	b.eq	0x2993c <syna_cdev_process_reports+0x484>
   295b0: 0b130323     	add	w3, w25, w19
   295b4: 6b13007f     	cmp	w3, w19
   295b8: 54001b43     	b.lo	0x29920 <syna_cdev_process_reports+0x468>
   295bc: 2a1303e2     	mov	w2, w19
   295c0: d1000f01     	sub	x1, x24, #0x3
   295c4: eb02003f     	cmp	x1, x2
   295c8: 540022c3     	b.lo	0x29a20 <syna_cdev_process_reports+0x568>
   295cc: aa1a03e1     	mov	x1, x26
   295d0: 94000000     	bl	0x295d0 <syna_cdev_process_reports+0x118>
		00000000000295d0:  R_AARCH64_CALL26	memcpy
   295d4: b9400388     	ldr	w8, [x28]
		00000000000295d4:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   295d8: 7100091f     	cmp	w8, #0x2
   295dc: 5400042b     	b.lt	0x29660 <syna_cdev_process_reports+0x1a8>
   295e0: b40021fb     	cbz	x27, 0x29a1c <syna_cdev_process_reports+0x564>
   295e4: 794706c8     	ldrh	w8, [x22, #0x382]
   295e8: f94003fa     	ldr	x26, [sp]
   295ec: f100077f     	cmp	x27, #0x1
   295f0: 39000348     	strb	w8, [x26]
   295f4: 54002140     	b.eq	0x29a1c <syna_cdev_process_reports+0x564>
   295f8: 53087d08     	lsr	w8, w8, #8
   295fc: 39000748     	strb	w8, [x26, #0x1]
   29600: 529fffc8     	mov	w8, #0xfffe             // =65534
   29604: b9400382     	ldr	w2, [x28]
		0000000000029604:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   29608: 0b080048     	add	w8, w2, w8
   2960c: 72003d1f     	tst	w8, #0xffff
   29610: 540000c0     	b.eq	0x29628 <syna_cdev_process_reports+0x170>
   29614: f1000b7f     	cmp	x27, #0x2
   29618: 54002020     	b.eq	0x29a1c <syna_cdev_process_reports+0x564>
   2961c: 394e16c8     	ldrb	w8, [x22, #0x385]
   29620: 39000b48     	strb	w8, [x26, #0x2]
   29624: b9400382     	ldr	w2, [x28]
		0000000000029624:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   29628: 93407e88     	sxtw	x8, w20
   2962c: ab0802a0     	adds	x0, x21, x8
   29630: 54001c80     	b.eq	0x299c0 <syna_cdev_process_reports+0x508>
   29634: b4001c7a     	cbz	x26, 0x299c0 <syna_cdev_process_reports+0x508>
   29638: 6b19005f     	cmp	w2, w25
   2963c: 54001b48     	b.hi	0x299a4 <syna_cdev_process_reports+0x4ec>
   29640: cb080308     	sub	x8, x24, x8
   29644: 6b18029f     	cmp	w20, w24
   29648: 2a0203e2     	mov	w2, w2
   2964c: 9a8883e1     	csel	x1, xzr, x8, hi
   29650: eb02003f     	cmp	x1, x2
   29654: 54001e63     	b.lo	0x29a20 <syna_cdev_process_reports+0x568>
   29658: aa1a03e1     	mov	x1, x26
   2965c: 94000000     	bl	0x2965c <syna_cdev_process_reports+0x1a4>
		000000000002965c:  R_AARCH64_CALL26	memcpy
   29660: f9413afa     	ldr	x26, [x23, #0x270]
   29664: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029664:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
   29668: 91000000     	add	x0, x0, #0x0
		0000000000029668:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
   2966c: 94000000     	bl	0x2966c <syna_cdev_process_reports+0x1b4>
		000000000002966c:  R_AARCH64_CALL26	mutex_lock
   29670: b944f2e8     	ldr	w8, [x23, #0x4f0]
   29674: 90000014     	adrp	x20, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029674:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30630
   29678: b9400289     	ldr	w9, [x20]
		0000000000029678:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x30630
   2967c: 7112c11f     	cmp	w8, #0x4b0
   29680: 54000383     	b.lo	0x296f0 <syna_cdev_process_reports+0x238>
   29684: 6b09011f     	cmp	w8, w9
   29688: 54001721     	b.ne	0x2996c <syna_cdev_process_reports+0x4b4>
   2968c: f9427ef9     	ldr	x25, [x23, #0x4f8]
   29690: f9400728     	ldr	x8, [x25, #0x8]
   29694: f9400109     	ldr	x9, [x8]
   29698: eb19013f     	cmp	x9, x25
   2969c: 54001621     	b.ne	0x29960 <syna_cdev_process_reports+0x4a8>
   296a0: f9400329     	ldr	x9, [x25]
   296a4: f940052a     	ldr	x10, [x9, #0x8]
   296a8: eb19015f     	cmp	x10, x25
   296ac: 540015a1     	b.ne	0x29960 <syna_cdev_process_reports+0x4a8>
   296b0: f9000528     	str	x8, [x9, #0x8]
   296b4: f9000109     	str	x9, [x8]
   296b8: d2802008     	mov	x8, #0x100              // =256
   296bc: 52800449     	mov	w9, #0x22               // =34
   296c0: f9400b20     	ldr	x0, [x25, #0x10]
   296c4: f2fbd5a8     	movk	x8, #0xdead, lsl #48
   296c8: aa090109     	orr	x9, x8, x9
   296cc: a9002728     	stp	x8, x9, [x25]
   296d0: 94000000     	bl	0x296d0 <syna_cdev_process_reports+0x218>
		00000000000296d0:  R_AARCH64_CALL26	kfree
   296d4: aa1903e0     	mov	x0, x25
   296d8: 94000000     	bl	0x296d8 <syna_cdev_process_reports+0x220>
		00000000000296d8:  R_AARCH64_CALL26	kfree
   296dc: b944f2e8     	ldr	w8, [x23, #0x4f0]
   296e0: b9000288     	str	w8, [x20]
		00000000000296e0:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x30630
   296e4: 51000508     	sub	w8, w8, #0x1
   296e8: b904f2e8     	str	w8, [x23, #0x4f0]
   296ec: 14000003     	b	0x296f8 <syna_cdev_process_reports+0x240>
   296f0: 7112c13f     	cmp	w9, #0x4b0
   296f4: 5400148a     	b.ge	0x29984 <syna_cdev_process_reports+0x4cc>
   296f8: d503201f     	nop
   296fc: 90000008     	adrp	x8, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		00000000000296fc:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x30
   29700: 52819801     	mov	w1, #0xcc0              // =3264
   29704: 52800602     	mov	w2, #0x30               // =48
   29708: f9400100     	ldr	x0, [x8]
		0000000000029708:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x30
   2970c: 94000000     	bl	0x2970c <syna_cdev_process_reports+0x254>
		000000000002970c:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   29710: aa0003f9     	mov	x25, x0
   29714: b4001ab9     	cbz	x25, 0x29a68 <syna_cdev_process_reports+0x5b0>
   29718: d503201f     	nop
   2971c: aa1803e0     	mov	x0, x24
   29720: 52819801     	mov	w1, #0xcc0              // =3264
   29724: 94000000     	bl	0x29724 <syna_cdev_process_reports+0x26c>
		0000000000029724:  R_AARCH64_CALL26	__kmalloc_noprof
   29728: f9000b20     	str	x0, [x25, #0x10]
   2972c: b4001cc0     	cbz	x0, 0x29ac4 <syna_cdev_process_reports+0x60c>
   29730: aa1503e1     	mov	x1, x21
   29734: aa1803e2     	mov	x2, x24
   29738: b9001b38     	str	w24, [x25, #0x18]
   2973c: 94000000     	bl	0x2973c <syna_cdev_process_reports+0x284>
		000000000002973c:  R_AARCH64_CALL26	memcpy
   29740: 91008320     	add	x0, x25, #0x20
   29744: 94000000     	bl	0x29744 <syna_cdev_process_reports+0x28c>
		0000000000029744:  R_AARCH64_CALL26	ktime_get_real_ts64
   29748: 9113e2e2     	add	x2, x23, #0x4f8
   2974c: f94282e1     	ldr	x1, [x23, #0x500]
   29750: eb02033f     	cmp	x25, x2
   29754: 540016a0     	b.eq	0x29a28 <syna_cdev_process_reports+0x570>
   29758: eb19003f     	cmp	x1, x25
   2975c: 54001660     	b.eq	0x29a28 <syna_cdev_process_reports+0x570>
   29760: f9400028     	ldr	x8, [x1]
   29764: eb02011f     	cmp	x8, x2
   29768: 54001601     	b.ne	0x29a28 <syna_cdev_process_reports+0x570>
   2976c: f90282f9     	str	x25, [x23, #0x500]
   29770: a9000722     	stp	x2, x1, [x25]
   29774: f9000039     	str	x25, [x1]
   29778: 90000008     	adrp	x8, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029778:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb8
   2977c: b944f2e9     	ldr	w9, [x23, #0x4f0]
   29780: b9400108     	ldr	w8, [x8]
		0000000000029780:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb8
   29784: 11000529     	add	w9, w9, #0x1
   29788: 51000508     	sub	w8, w8, #0x1
   2978c: b904f2e9     	str	w9, [x23, #0x4f0]
   29790: 6b09011f     	cmp	w8, w9
   29794: 54000182     	b.hs	0x297c4 <syna_cdev_process_reports+0x30c>
   29798: f9402348     	ldr	x8, [x26, #0x40]
   2979c: b4000148     	cbz	x8, 0x297c4 <syna_cdev_process_reports+0x30c>
   297a0: 91002340     	add	x0, x26, #0x8
   297a4: 2a1f03e1     	mov	w1, wzr
   297a8: b85fc110     	ldur	w16, [x8, #-0x4]
   297ac: 728c3631     	movk	w17, #0x61b1
   297b0: 72a685d1     	movk	w17, #0x342e, lsl #16
   297b4: 6b11021f     	cmp	w16, w17
   297b8: 54000040     	b.eq	0x297c0 <syna_cdev_process_reports+0x308>
   297bc: d4304500     	brk	#0x8228
   297c0: d63f0100     	blr	x8
   297c4: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		00000000000297c4:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
   297c8: 91000000     	add	x0, x0, #0x0
		00000000000297c8:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
   297cc: 94000000     	bl	0x297cc <syna_cdev_process_reports+0x314>
		00000000000297cc:  R_AARCH64_CALL26	mutex_unlock
   297d0: 911422e0     	add	x0, x23, #0x508
   297d4: 52800021     	mov	w1, #0x1                // =1
   297d8: 52800022     	mov	w2, #0x1                // =1
   297dc: aa1f03e3     	mov	x3, xzr
   297e0: 94000000     	bl	0x297e0 <syna_cdev_process_reports+0x328>
		00000000000297e0:  R_AARCH64_CALL26	__wake_up
   297e4: 2a1f03f4     	mov	w20, wzr
   297e8: 2a1f03f7     	mov	w23, wzr
   297ec: f94003fa     	ldr	x26, [sp]
   297f0: 94000000     	bl	0x297f0 <syna_cdev_process_reports+0x338>
		00000000000297f0:  R_AARCH64_CALL26	syna_request_managed_device
   297f4: b4000f80     	cbz	x0, 0x299e4 <syna_cdev_process_reports+0x52c>
   297f8: b400007a     	cbz	x26, 0x29804 <syna_cdev_process_reports+0x34c>
   297fc: aa1a03e1     	mov	x1, x26
   29800: 94000000     	bl	0x29800 <syna_cdev_process_reports+0x348>
		0000000000029800:  R_AARCH64_CALL26	devm_kfree
   29804: 94000000     	bl	0x29804 <syna_cdev_process_reports+0x34c>
		0000000000029804:  R_AARCH64_CALL26	syna_request_managed_device
   29808: b4000fc0     	cbz	x0, 0x29a00 <syna_cdev_process_reports+0x548>
   2980c: aa1503e1     	mov	x1, x21
   29810: 94000000     	bl	0x29810 <syna_cdev_process_reports+0x358>
		0000000000029810:  R_AARCH64_CALL26	devm_kfree
   29814: 35000634     	cbnz	w20, 0x298d8 <syna_cdev_process_reports+0x420>
   29818: 2a1f03f7     	mov	w23, wzr
   2981c: 14000037     	b	0x298f8 <syna_cdev_process_reports+0x440>
   29820: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029820:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae93
   29824: 91000000     	add	x0, x0, #0x0
		0000000000029824:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae93
   29828: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029828:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19b6b
   2982c: 91000021     	add	x1, x1, #0x0
		000000000002982c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19b6b
   29830: 94000000     	bl	0x29830 <syna_cdev_process_reports+0x378>
		0000000000029830:  R_AARCH64_CALL26	_printk
   29834: 128002b7     	mov	w23, #-0x16             // =-22
   29838: 14000030     	b	0x298f8 <syna_cdev_process_reports+0x440>
   2983c: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		000000000002983c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19670
   29840: 91000000     	add	x0, x0, #0x0
		0000000000029840:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19670
   29844: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029844:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19973
   29848: 91000021     	add	x1, x1, #0x0
		0000000000029848:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19973
   2984c: 94000000     	bl	0x2984c <syna_cdev_process_reports+0x394>
		000000000002984c:  R_AARCH64_CALL26	_printk
   29850: 128002b7     	mov	w23, #-0x16             // =-22
   29854: 14000021     	b	0x298d8 <syna_cdev_process_reports+0x420>
   29858: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029858:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c19d
   2985c: 91000000     	add	x0, x0, #0x0
		000000000002985c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c19d
   29860: 14000003     	b	0x2986c <syna_cdev_process_reports+0x3b4>
   29864: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029864:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a705
   29868: 91000000     	add	x0, x0, #0x0
		0000000000029868:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a705
   2986c: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		000000000002986c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x196d5
   29870: 91000021     	add	x1, x1, #0x0
		0000000000029870:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x196d5
   29874: 94000000     	bl	0x29874 <syna_cdev_process_reports+0x3bc>
		0000000000029874:  R_AARCH64_CALL26	_printk
   29878: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029878:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19360
   2987c: 91000000     	add	x0, x0, #0x0
		000000000002987c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19360
   29880: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029880:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19973
   29884: 91000021     	add	x1, x1, #0x0
		0000000000029884:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19973
   29888: 2a1803e2     	mov	w2, w24
   2988c: 2a1303e3     	mov	w3, w19
   29890: 94000000     	bl	0x29890 <syna_cdev_process_reports+0x3d8>
		0000000000029890:  R_AARCH64_CALL26	_printk
   29894: 14000010     	b	0x298d4 <syna_cdev_process_reports+0x41c>
   29898: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029898:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c19d
   2989c: 91000000     	add	x0, x0, #0x0
		000000000002989c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c19d
   298a0: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		00000000000298a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x196d5
   298a4: 91000021     	add	x1, x1, #0x0
		00000000000298a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x196d5
   298a8: 94000000     	bl	0x298a8 <syna_cdev_process_reports+0x3f0>
		00000000000298a8:  R_AARCH64_CALL26	_printk
   298ac: 94000000     	bl	0x298ac <syna_cdev_process_reports+0x3f4>
		00000000000298ac:  R_AARCH64_CALL26	syna_request_managed_device
   298b0: b4ffe580     	cbz	x0, 0x29560 <syna_cdev_process_reports+0xa8>
   298b4: aa1503e1     	mov	x1, x21
   298b8: 94000000     	bl	0x298b8 <syna_cdev_process_reports+0x400>
		00000000000298b8:  R_AARCH64_CALL26	devm_kfree
   298bc: b9400382     	ldr	w2, [x28]
		00000000000298bc:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   298c0: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		00000000000298c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c93f
   298c4: 91000000     	add	x0, x0, #0x0
		00000000000298c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c93f
   298c8: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		00000000000298c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19973
   298cc: 91000021     	add	x1, x1, #0x0
		00000000000298cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19973
   298d0: 94000000     	bl	0x298d0 <syna_cdev_process_reports+0x418>
		00000000000298d0:  R_AARCH64_CALL26	_printk
   298d4: 12800177     	mov	w23, #-0xc              // =-12
   298d8: b85fc3a8     	ldur	w8, [x29, #-0x4]
   298dc: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		00000000000298dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b410
   298e0: 91000000     	add	x0, x0, #0x0
		00000000000298e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b410
   298e4: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		00000000000298e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19b6b
   298e8: 91000021     	add	x1, x1, #0x0
		00000000000298e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19b6b
   298ec: 2a1303e3     	mov	w3, w19
   298f0: 12001d02     	and	w2, w8, #0xff
   298f4: 94000000     	bl	0x298f4 <syna_cdev_process_reports+0x43c>
		00000000000298f4:  R_AARCH64_CALL26	_printk
   298f8: 2a1703e0     	mov	w0, w23
   298fc: a9464ff4     	ldp	x20, x19, [sp, #0x60]
   29900: a94557f6     	ldp	x22, x21, [sp, #0x50]
   29904: a9445ff8     	ldp	x24, x23, [sp, #0x40]
   29908: a94367fa     	ldp	x26, x25, [sp, #0x30]
   2990c: a9426ffc     	ldp	x28, x27, [sp, #0x20]
   29910: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   29914: 9101c3ff     	add	sp, sp, #0x70
   29918: d50323bf     	autiasp
   2991c: d65f03c0     	ret
   29920: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029920:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af79
   29924: 91000000     	add	x0, x0, #0x0
		0000000000029924:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af79
   29928: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029928:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17f5e
   2992c: 91000021     	add	x1, x1, #0x0
		000000000002992c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17f5e
   29930: 2a1303e2     	mov	w2, w19
   29934: 2a1303e4     	mov	w4, w19
   29938: 94000000     	bl	0x29938 <syna_cdev_process_reports+0x480>
		0000000000029938:  R_AARCH64_CALL26	_printk
   2993c: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		000000000002993c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188a9
   29940: 91000000     	add	x0, x0, #0x0
		0000000000029940:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188a9
   29944: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029944:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19973
   29948: 91000021     	add	x1, x1, #0x0
		0000000000029948:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19973
   2994c: 2a1303e2     	mov	w2, w19
   29950: 94000000     	bl	0x29950 <syna_cdev_process_reports+0x498>
		0000000000029950:  R_AARCH64_CALL26	_printk
   29954: 128002b7     	mov	w23, #-0x16             // =-22
   29958: 52800034     	mov	w20, #0x1               // =1
   2995c: 17ffffa4     	b	0x297ec <syna_cdev_process_reports+0x334>
   29960: aa1903e0     	mov	x0, x25
   29964: 94000000     	bl	0x29964 <syna_cdev_process_reports+0x4ac>
		0000000000029964:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
   29968: 17ffff54     	b	0x296b8 <syna_cdev_process_reports+0x200>
   2996c: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		000000000002996c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18aed
   29970: 91000000     	add	x0, x0, #0x0
		0000000000029970:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18aed
   29974: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029974:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3c8
   29978: 91000021     	add	x1, x1, #0x0
		0000000000029978:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3c8
   2997c: 94000000     	bl	0x2997c <syna_cdev_process_reports+0x4c4>
		000000000002997c:  R_AARCH64_CALL26	_printk
   29980: 17ffff43     	b	0x2968c <syna_cdev_process_reports+0x1d4>
   29984: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029984:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a5d3
   29988: 91000000     	add	x0, x0, #0x0
		0000000000029988:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a5d3
   2998c: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		000000000002998c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3c8
   29990: 91000021     	add	x1, x1, #0x0
		0000000000029990:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3c8
   29994: 94000000     	bl	0x29994 <syna_cdev_process_reports+0x4dc>
		0000000000029994:  R_AARCH64_CALL26	_printk
   29998: b944f2e8     	ldr	w8, [x23, #0x4f0]
   2999c: b9000288     	str	w8, [x20]
		000000000002999c:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x30630
   299a0: 17ffff56     	b	0x296f8 <syna_cdev_process_reports+0x240>
   299a4: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		00000000000299a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af79
   299a8: 91000000     	add	x0, x0, #0x0
		00000000000299a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af79
   299ac: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		00000000000299ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17f5e
   299b0: 91000021     	add	x1, x1, #0x0
		00000000000299b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17f5e
   299b4: 2a1903e3     	mov	w3, w25
   299b8: 2a0203e4     	mov	w4, w2
   299bc: 94000000     	bl	0x299bc <syna_cdev_process_reports+0x504>
		00000000000299bc:  R_AARCH64_CALL26	_printk
   299c0: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		00000000000299c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a396
   299c4: 91000000     	add	x0, x0, #0x0
		00000000000299c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a396
   299c8: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		00000000000299c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19973
   299cc: 91000021     	add	x1, x1, #0x0
		00000000000299cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19973
   299d0: 94000000     	bl	0x299d0 <syna_cdev_process_reports+0x518>
		00000000000299d0:  R_AARCH64_CALL26	_printk
   299d4: 128002b7     	mov	w23, #-0x16             // =-22
   299d8: 52800034     	mov	w20, #0x1               // =1
   299dc: 94000000     	bl	0x299dc <syna_cdev_process_reports+0x524>
		00000000000299dc:  R_AARCH64_CALL26	syna_request_managed_device
   299e0: b5fff0c0     	cbnz	x0, 0x297f8 <syna_cdev_process_reports+0x340>
   299e4: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		00000000000299e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c19d
   299e8: 91000000     	add	x0, x0, #0x0
		00000000000299e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c19d
   299ec: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		00000000000299ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bbc3
   299f0: 91000021     	add	x1, x1, #0x0
		00000000000299f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bbc3
   299f4: 94000000     	bl	0x299f4 <syna_cdev_process_reports+0x53c>
		00000000000299f4:  R_AARCH64_CALL26	_printk
   299f8: 94000000     	bl	0x299f8 <syna_cdev_process_reports+0x540>
		00000000000299f8:  R_AARCH64_CALL26	syna_request_managed_device
   299fc: b5fff080     	cbnz	x0, 0x2980c <syna_cdev_process_reports+0x354>
   29a00: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029a00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c19d
   29a04: 91000000     	add	x0, x0, #0x0
		0000000000029a04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c19d
   29a08: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029a08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bbc3
   29a0c: 91000021     	add	x1, x1, #0x0
		0000000000029a0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bbc3
   29a10: 94000000     	bl	0x29a10 <syna_cdev_process_reports+0x558>
		0000000000029a10:  R_AARCH64_CALL26	_printk
   29a14: 34fff034     	cbz	w20, 0x29818 <syna_cdev_process_reports+0x360>
   29a18: 17ffffb0     	b	0x298d8 <syna_cdev_process_reports+0x420>
   29a1c: d4200020     	brk	#0x1
   29a20: 52800220     	mov	w0, #0x11               // =17
   29a24: 94000000     	bl	0x29a24 <syna_cdev_process_reports+0x56c>
		0000000000029a24:  R_AARCH64_CALL26	__fortify_panic
   29a28: aa1903e0     	mov	x0, x25
   29a2c: 94000000     	bl	0x29a2c <syna_cdev_process_reports+0x574>
		0000000000029a2c:  R_AARCH64_CALL26	__list_add_valid_or_report
   29a30: 17ffff52     	b	0x29778 <syna_cdev_process_reports+0x2c0>
   29a34: 90000008     	adrp	x8, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029a34:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x30
   29a38: d5384114     	mrs	x20, SP_EL0
   29a3c: f9402a96     	ldr	x22, [x20, #0x50]
   29a40: f9400100     	ldr	x0, [x8]
		0000000000029a40:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x30
   29a44: 90000008     	adrp	x8, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029a44:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xb20
   29a48: 91000108     	add	x8, x8, #0x0
		0000000000029a48:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xb20
   29a4c: 52819801     	mov	w1, #0xcc0              // =3264
   29a50: 52800602     	mov	w2, #0x30               // =48
   29a54: f9002a88     	str	x8, [x20, #0x50]
   29a58: 94000000     	bl	0x29a58 <syna_cdev_process_reports+0x5a0>
		0000000000029a58:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   29a5c: aa0003f9     	mov	x25, x0
   29a60: f9002a96     	str	x22, [x20, #0x50]
   29a64: b5ffe5b9     	cbnz	x25, 0x29718 <syna_cdev_process_reports+0x260>
   29a68: 90000017     	adrp	x23, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029a68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3c8
   29a6c: 910002f7     	add	x23, x23, #0x0
		0000000000029a6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3c8
   29a70: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029a70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1969a
   29a74: 91000000     	add	x0, x0, #0x0
		0000000000029a74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1969a
   29a78: aa1703e1     	mov	x1, x23
   29a7c: 94000000     	bl	0x29a7c <syna_cdev_process_reports+0x5c4>
		0000000000029a7c:  R_AARCH64_CALL26	_printk
   29a80: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029a80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be31
   29a84: 91000000     	add	x0, x0, #0x0
		0000000000029a84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be31
   29a88: aa1703e1     	mov	x1, x23
   29a8c: 52800602     	mov	w2, #0x30               // =48
   29a90: 94000000     	bl	0x29a90 <syna_cdev_process_reports+0x5d8>
		0000000000029a90:  R_AARCH64_CALL26	_printk
   29a94: 14000012     	b	0x29adc <syna_cdev_process_reports+0x624>
   29a98: d5384114     	mrs	x20, SP_EL0
   29a9c: f9402a96     	ldr	x22, [x20, #0x50]
   29aa0: 90000008     	adrp	x8, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029aa0:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xb48
   29aa4: 91000108     	add	x8, x8, #0x0
		0000000000029aa4:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xb48
   29aa8: aa1803e0     	mov	x0, x24
   29aac: 52819801     	mov	w1, #0xcc0              // =3264
   29ab0: f9002a88     	str	x8, [x20, #0x50]
   29ab4: 94000000     	bl	0x29ab4 <syna_cdev_process_reports+0x5fc>
		0000000000029ab4:  R_AARCH64_CALL26	__kmalloc_noprof
   29ab8: f9002a96     	str	x22, [x20, #0x50]
   29abc: f9000b20     	str	x0, [x25, #0x10]
   29ac0: b5ffe380     	cbnz	x0, 0x29730 <syna_cdev_process_reports+0x278>
   29ac4: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029ac4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17862
   29ac8: 91000000     	add	x0, x0, #0x0
		0000000000029ac8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17862
   29acc: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029acc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3c8
   29ad0: 91000021     	add	x1, x1, #0x0
		0000000000029ad0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3c8
   29ad4: 2a1803e2     	mov	w2, w24
   29ad8: 94000000     	bl	0x29ad8 <syna_cdev_process_reports+0x620>
		0000000000029ad8:  R_AARCH64_CALL26	_printk
   29adc: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029adc:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
   29ae0: 91000000     	add	x0, x0, #0x0
		0000000000029ae0:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
   29ae4: 94000000     	bl	0x29ae4 <syna_cdev_process_reports+0x62c>
		0000000000029ae4:  R_AARCH64_CALL26	mutex_unlock
   29ae8: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029ae8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1917a
   29aec: 91000000     	add	x0, x0, #0x0
		0000000000029aec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1917a
   29af0: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctl_raw_read+0x280>
		0000000000029af0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19973
   29af4: 91000021     	add	x1, x1, #0x0
		0000000000029af4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19973
   29af8: 94000000     	bl	0x29af8 <syna_cdev_process_reports+0x640>
		0000000000029af8:  R_AARCH64_CALL26	_printk
   29afc: 12800177     	mov	w23, #-0xc              // =-12
   29b00: 52800034     	mov	w20, #0x1               // =1
   29b04: 17ffff3a     	b	0x297ec <syna_cdev_process_reports+0x334>
