
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000081f8 <richtap_update_fifo_data>:
    81f8: d503233f     	paciasp
    81fc: d101c3ff     	sub	sp, sp, #0x70
    8200: a9017bfd     	stp	x29, x30, [sp, #0x10]
    8204: a9026ffc     	stp	x28, x27, [sp, #0x20]
    8208: a90367fa     	stp	x26, x25, [sp, #0x30]
    820c: a9045ff8     	stp	x24, x23, [sp, #0x40]
    8210: a90557f6     	stp	x22, x21, [sp, #0x50]
    8214: a9064ff4     	stp	x20, x19, [sp, #0x60]
    8218: 910043fd     	add	x29, sp, #0x10
    821c: aa0003f3     	mov	x19, x0
    8220: b4000b00     	cbz	x0, 0x8380 <richtap_update_fifo_data+0x188>
    8224: 5287d008     	mov	w8, #0x3e80             // =16000
    8228: 2a0103f5     	mov	w21, w1
    822c: 6b08003f     	cmp	w1, w8
    8230: 54000a88     	b.hi	0x8380 <richtap_update_fifo_data+0x188>
    8234: f9430668     	ldr	x8, [x19, #0x608]
    8238: b4000a48     	cbz	x8, 0x8380 <richtap_update_fifo_data+0x188>
    823c: 2a1f03f4     	mov	w20, wzr
    8240: aa1f03f8     	mov	x24, xzr
    8244: 52800079     	mov	w25, #0x3               // =3
    8248: b81fc3bf     	stur	wzr, [x29, #-0x4]
    824c: f9430a68     	ldr	x8, [x19, #0x610]
    8250: f943127c     	ldr	x28, [x19, #0x620]
    8254: eb080389     	subs	x9, x28, x8
    8258: 54000943     	b.lo	0x8380 <richtap_update_fifo_data+0x188>
    825c: b400093c     	cbz	x28, 0x8380 <richtap_update_fifo_data+0x188>
    8260: b4000908     	cbz	x8, 0x8380 <richtap_update_fifo_data+0x188>
    8264: 9240350a     	and	x10, x8, #0x3fff
    8268: b50008ca     	cbnz	x10, 0x8380 <richtap_update_fifo_data+0x188>
    826c: f272ed3f     	tst	x9, #0xffffffffffffc3ff
    8270: 54000881     	b.ne	0x8380 <richtap_update_fifo_data+0x188>
    8274: 3940038a     	ldrb	w10, [x28]
    8278: 7101555f     	cmp	w10, #0x55
    827c: 54000160     	b.eq	0x82a8 <richtap_update_fifo_data+0xb0>
    8280: 7102a95f     	cmp	w10, #0xaa
    8284: 540009c0     	b.eq	0x83bc <richtap_update_fifo_data+0x1c4>
    8288: 7100033f     	cmp	w25, #0x0
    828c: 54000b4d     	b.le	0x83f4 <richtap_update_fifo_data+0x1fc>
    8290: 52807d00     	mov	w0, #0x3e8              // =1000
    8294: 52807d01     	mov	w1, #0x3e8              // =1000
    8298: 52800042     	mov	w2, #0x2                // =2
    829c: 51000739     	sub	w25, w25, #0x1
    82a0: 94000000     	bl	0x82a0 <richtap_update_fifo_data+0xa8>
		00000000000082a0:  R_AARCH64_CALL26	usleep_range_state
    82a4: 1400002b     	b	0x8350 <richtap_update_fifo_data+0x158>
    82a8: 7940078a     	ldrh	w10, [x28, #0x2]
    82ac: 79cd726b     	ldrsh	w11, [x19, #0x6b8]
    82b0: 710fa15f     	cmp	w10, #0x3e8
    82b4: 54000668     	b.hi	0x8380 <richtap_update_fifo_data+0x188>
    82b8: 37f8064b     	tbnz	w11, #0x1f, 0x8380 <richtap_update_fifo_data+0x188>
    82bc: 6b2aa17f     	cmp	w11, w10, sxth
    82c0: 5400060c     	b.gt	0x8380 <richtap_update_fifo_data+0x188>
    82c4: 6b1402bb     	subs	w27, w21, w20
    82c8: 540005c3     	b.lo	0x8380 <richtap_update_fifo_data+0x188>
    82cc: 93407d7a     	sxtw	x26, w11
    82d0: 4b1a014a     	sub	w10, w10, w26
    82d4: 13003d57     	sxth	w23, w10
    82d8: 6b17037f     	cmp	w27, w23
    82dc: 1a973376     	csel	w22, w27, w23, lo
    82e0: 54000109     	b.ls	0x8300 <richtap_update_fifo_data+0x108>
    82e4: 5287800b     	mov	w11, #0x3c00            // =15360
    82e8: f9400798     	ldr	x24, [x28, #0x8]
    82ec: 9110038a     	add	x10, x28, #0x400
    82f0: eb0b013f     	cmp	x9, x11
    82f4: 9a8a0108     	csel	x8, x8, x10, eq
    82f8: eb18011f     	cmp	x8, x24
    82fc: 54000421     	b.ne	0x8380 <richtap_update_fifo_data+0x188>
    8300: 340000f6     	cbz	w22, 0x831c <richtap_update_fifo_data+0x124>
    8304: f9430668     	ldr	x8, [x19, #0x608]
    8308: aa1603e2     	mov	x2, x22
    830c: 8b344100     	add	x0, x8, w20, uxtw
    8310: 8b1a0388     	add	x8, x28, x26
    8314: 91006101     	add	x1, x8, #0x18
    8318: 94000000     	bl	0x8318 <richtap_update_fifo_data+0x120>
		0000000000008318:  R_AARCH64_CALL26	memcpy
    831c: 6b17037f     	cmp	w27, w23
    8320: 0b1402d4     	add	w20, w22, w20
    8324: 54000489     	b.ls	0x83b4 <richtap_update_fifo_data+0x1bc>
    8328: 52801fe8     	mov	w8, #0xff               // =255
    832c: 39000388     	strb	w8, [x28]
    8330: 7900079f     	strh	wzr, [x28, #0x2]
    8334: b85fc3a8     	ldur	w8, [x29, #-0x4]
    8338: 790d727f     	strh	wzr, [x19, #0x6b8]
    833c: 11000508     	add	w8, w8, #0x1
    8340: 7100411f     	cmp	w8, #0x10
    8344: b81fc3a8     	stur	w8, [x29, #-0x4]
    8348: f9031278     	str	x24, [x19, #0x620]
    834c: 54000102     	b.hs	0x836c <richtap_update_fifo_data+0x174>
    8350: 6b15029f     	cmp	w20, w21
    8354: 54000342     	b.hs	0x83bc <richtap_update_fifo_data+0x1c4>
    8358: b946be68     	ldr	w8, [x19, #0x6bc]
    835c: 34000308     	cbz	w8, 0x83bc <richtap_update_fifo_data+0x1c4>
    8360: 2a1f03e8     	mov	w8, wzr
    8364: 34fff748     	cbz	w8, 0x824c <richtap_update_fifo_data+0x54>
    8368: 14000003     	b	0x8374 <richtap_update_fifo_data+0x17c>
    836c: 528003e8     	mov	w8, #0x1f               // =31
    8370: 34fff6e8     	cbz	w8, 0x824c <richtap_update_fifo_data+0x54>
    8374: 71007d1f     	cmp	w8, #0x1f
    8378: 54000220     	b.eq	0x83bc <richtap_update_fifo_data+0x1c4>
    837c: 14000004     	b	0x838c <richtap_update_fifo_data+0x194>
    8380: aa1303e0     	mov	x0, x19
    8384: 94000000     	bl	0x8384 <richtap_update_fifo_data+0x18c>
		0000000000008384:  R_AARCH64_CALL26	haptic_lifetime_richtap_fifo_reset
    8388: 2a1f03e8     	mov	w8, wzr
    838c: 12000100     	and	w0, w8, #0x1
    8390: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    8394: a94557f6     	ldp	x22, x21, [sp, #0x50]
    8398: a9445ff8     	ldp	x24, x23, [sp, #0x40]
    839c: a94367fa     	ldp	x26, x25, [sp, #0x30]
    83a0: a9426ffc     	ldp	x28, x27, [sp, #0x20]
    83a4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    83a8: 9101c3ff     	add	sp, sp, #0x70
    83ac: d50323bf     	autiasp
    83b0: d65f03c0     	ret
    83b4: 0b160348     	add	w8, w26, w22
    83b8: 790d7268     	strh	w8, [x19, #0x6b8]
    83bc: f942e668     	ldr	x8, [x19, #0x5c8]
    83c0: f9430661     	ldr	x1, [x19, #0x608]
    83c4: aa1303e0     	mov	x0, x19
    83c8: 2a1403e2     	mov	w2, w20
    83cc: f9406908     	ldr	x8, [x8, #0xd0]
    83d0: b85fc110     	ldur	w16, [x8, #-0x4]
    83d4: 72965371     	movk	w17, #0xb29b
    83d8: 72b8d4f1     	movk	w17, #0xc6a7, lsl #16
    83dc: 6b11021f     	cmp	w16, w17
    83e0: 54000040     	b.eq	0x83e8 <richtap_update_fifo_data+0x1f0>
    83e4: d4304500     	brk	#0x8228
    83e8: d63f0100     	blr	x8
    83ec: 52800028     	mov	w8, #0x1                // =1
    83f0: 17ffffe7     	b	0x838c <richtap_update_fifo_data+0x194>
    83f4: 90000000     	adrp	x0, 0x8000 <richtap_file_unlocked_ioctl_stock_exact+0x53c>
		00000000000083f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18f3
    83f8: 91000000     	add	x0, x0, #0x0
		00000000000083f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18f3
    83fc: 94000000     	bl	0x83fc <richtap_update_fifo_data+0x204>
		00000000000083fc:  R_AARCH64_CALL26	_printk
    8400: 17ffffef     	b	0x83bc <richtap_update_fifo_data+0x1c4>
