
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000070f8 <syna_cdev_process_reports>:
    70f8: d503233f     	paciasp
    70fc: d10243ff     	sub	sp, sp, #0x90
    7100: a9037bfd     	stp	x29, x30, [sp, #0x30]
    7104: a9046ffc     	stp	x28, x27, [sp, #0x40]
    7108: a90567fa     	stp	x26, x25, [sp, #0x50]
    710c: a9065ff8     	stp	x24, x23, [sp, #0x60]
    7110: a90757f6     	stp	x22, x21, [sp, #0x70]
    7114: a9084ff4     	stp	x20, x19, [sp, #0x80]
    7118: 9100c3fd     	add	x29, sp, #0x30
    711c: b4002143     	cbz	x3, 0x7544 <syna_cdev_process_reports+0x44c>
    7120: aa0103fc     	mov	x28, x1
    7124: 2a0003f6     	mov	w22, w0
    7128: b81fc3a2     	stur	w2, [x29, #-0x4]
    712c: b40021a1     	cbz	x1, 0x7560 <syna_cdev_process_reports+0x468>
    7130: 90000015     	adrp	x21, 0x7000 <syna_cdev_open+0x88>
		0000000000007130:  R_AARCH64_ADR_PREL_PG_HI21	qword_31700+0x4
    7134: 12001ed3     	and	w19, w22, #0xff
    7138: aa0303f7     	mov	x23, x3
    713c: b94002a8     	ldr	w8, [x21]
		000000000000713c:  R_AARCH64_LDST32_ABS_LO12_NC	qword_31700+0x4
    7140: 2a1303e0     	mov	w0, w19
    7144: 0aa87d1a     	bic	w26, w8, w8, asr #31
    7148: f9400068     	ldr	x8, [x3]
    714c: 0b02035b     	add	w27, w26, w2
    7150: f9000be8     	str	x8, [sp, #0x10]
    7154: 11000f78     	add	w24, w27, #0x3
    7158: 94000000     	bl	0x7158 <syna_cdev_process_reports+0x60>
		0000000000007158:  R_AARCH64_CALL26	syna_request_managed_device
    715c: b9000ff3     	str	w19, [sp, #0xc]
    7160: b4002120     	cbz	x0, 0x7584 <syna_cdev_process_reports+0x48c>
    7164: 7100071f     	cmp	w24, #0x1
    7168: 5400214b     	b.lt	0x7590 <syna_cdev_process_reports+0x498>
    716c: b85fc3a8     	ldur	w8, [x29, #-0x4]
    7170: 5281b802     	mov	w2, #0xdc0              // =3520
    7174: 11000d13     	add	w19, w8, #0x3
    7178: 0b130359     	add	w25, w26, w19
    717c: aa1903e1     	mov	x1, x25
    7180: 94000000     	bl	0x7180 <syna_cdev_process_reports+0x88>
		0000000000007180:  R_AARCH64_CALL26	devm_kmalloc
    7184: b4002100     	cbz	x0, 0x75a4 <syna_cdev_process_reports+0x4ac>
    7188: b94002b4     	ldr	w20, [x21]
		0000000000007188:  R_AARCH64_LDST32_ABS_LO12_NC	qword_31700+0x4
    718c: aa0003e9     	mov	x9, x0
    7190: f81f03a0     	stur	x0, [x29, #-0x10]
    7194: 7100069f     	cmp	w20, #0x1
    7198: 5400018b     	b.lt	0x71c8 <syna_cdev_process_reports+0xd0>
    719c: aa0903e0     	mov	x0, x9
    71a0: 94000000     	bl	0x71a0 <syna_cdev_process_reports+0xa8>
		00000000000071a0:  R_AARCH64_CALL26	syna_request_managed_device
    71a4: b40021c0     	cbz	x0, 0x75dc <syna_cdev_process_reports+0x4e4>
    71a8: aa1403e1     	mov	x1, x20
    71ac: 5281b802     	mov	w2, #0xdc0              // =3520
    71b0: 94000000     	bl	0x71b0 <syna_cdev_process_reports+0xb8>
		00000000000071b0:  R_AARCH64_CALL26	devm_kmalloc
    71b4: f85f03a9     	ldur	x9, [x29, #-0x10]
    71b8: f9000fe0     	str	x0, [sp, #0x18]
    71bc: b40022c0     	cbz	x0, 0x7614 <syna_cdev_process_reports+0x51c>
    71c0: 350000b9     	cbnz	w25, 0x71d4 <syna_cdev_process_reports+0xdc>
    71c4: 14000173     	b	0x7790 <syna_cdev_process_reports+0x698>
    71c8: aa1f03f4     	mov	x20, xzr
    71cc: f9000fff     	str	xzr, [sp, #0x18]
    71d0: 34002e19     	cbz	w25, 0x7790 <syna_cdev_process_reports+0x698>
    71d4: b85fc3a2     	ldur	w2, [x29, #-0x4]
    71d8: 7100071f     	cmp	w24, #0x1
    71dc: 39000136     	strb	w22, [x9]
    71e0: 54001980     	b.eq	0x7510 <syna_cdev_process_reports+0x418>
    71e4: 7100073f     	cmp	w25, #0x1
    71e8: 54002d40     	b.eq	0x7790 <syna_cdev_process_reports+0x698>
    71ec: 71000b1f     	cmp	w24, #0x2
    71f0: 39000522     	strb	w2, [x9, #0x1]
    71f4: 540018e0     	b.eq	0x7510 <syna_cdev_process_reports+0x418>
    71f8: 71000b3f     	cmp	w25, #0x2
    71fc: 54002ca0     	b.eq	0x7790 <syna_cdev_process_reports+0x698>
    7200: 53087c48     	lsr	w8, w2, #8
    7204: 39000928     	strb	w8, [x9, #0x2]
    7208: 34000282     	cbz	w2, 0x7258 <syna_cdev_process_reports+0x160>
    720c: b1000d3f     	cmn	x9, #0x3
    7210: 54002500     	b.eq	0x76b0 <syna_cdev_process_reports+0x5b8>
    7214: 6b02037f     	cmp	w27, w2
    7218: 540023c3     	b.lo	0x7690 <syna_cdev_process_reports+0x598>
    721c: 2a0203fb     	mov	w27, w2
    7220: d1000f16     	sub	x22, x24, #0x3
    7224: eb1b02df     	cmp	x22, x27
    7228: 54001863     	b.lo	0x7534 <syna_cdev_process_reports+0x43c>
    722c: d1000f28     	sub	x8, x25, #0x3
    7230: 71000f3f     	cmp	w25, #0x3
    7234: 9a8833e1     	csel	x1, xzr, x8, lo
    7238: eb1b003f     	cmp	x1, x27
    723c: 54002ac3     	b.lo	0x7794 <syna_cdev_process_reports+0x69c>
    7240: 91000d20     	add	x0, x9, #0x3
    7244: aa1c03e1     	mov	x1, x28
    7248: aa1b03e2     	mov	x2, x27
    724c: 94000000     	bl	0x724c <syna_cdev_process_reports+0x154>
		000000000000724c:  R_AARCH64_CALL26	memcpy
    7250: f85f03a9     	ldur	x9, [x29, #-0x10]
    7254: 14000003     	b	0x7260 <syna_cdev_process_reports+0x168>
    7258: aa1f03fb     	mov	x27, xzr
    725c: aa1f03f6     	mov	x22, xzr
    7260: b94002a8     	ldr	w8, [x21]
		0000000000007260:  R_AARCH64_LDST32_ABS_LO12_NC	qword_31700+0x4
    7264: f9400ffc     	ldr	x28, [sp, #0x18]
    7268: 7100091f     	cmp	w8, #0x2
    726c: 540004cb     	b.lt	0x7304 <syna_cdev_process_reports+0x20c>
    7270: b4001554     	cbz	x20, 0x7518 <syna_cdev_process_reports+0x420>
    7274: f9400be8     	ldr	x8, [sp, #0x10]
    7278: f100069f     	cmp	x20, #0x1
    727c: 79470508     	ldrh	w8, [x8, #0x382]
    7280: 39000388     	strb	w8, [x28]
    7284: 540014a0     	b.eq	0x7518 <syna_cdev_process_reports+0x420>
    7288: 53087d08     	lsr	w8, w8, #8
    728c: 39000788     	strb	w8, [x28, #0x1]
    7290: b94002bb     	ldr	w27, [x21]
		0000000000007290:  R_AARCH64_LDST32_ABS_LO12_NC	qword_31700+0x4
    7294: 12003f68     	and	w8, w27, #0xffff
    7298: 7100091f     	cmp	w8, #0x2
    729c: 540000e0     	b.eq	0x72b8 <syna_cdev_process_reports+0x1c0>
    72a0: f1000a9f     	cmp	x20, #0x2
    72a4: 540013a0     	b.eq	0x7518 <syna_cdev_process_reports+0x420>
    72a8: f9400be8     	ldr	x8, [sp, #0x10]
    72ac: 394e1508     	ldrb	w8, [x8, #0x385]
    72b0: 39000b88     	strb	w8, [x28, #0x2]
    72b4: b94002bb     	ldr	w27, [x21]
		00000000000072b4:  R_AARCH64_LDST32_ABS_LO12_NC	qword_31700+0x4
    72b8: 93407e68     	sxtw	x8, w19
    72bc: ab080120     	adds	x0, x9, x8
    72c0: 54002260     	b.eq	0x770c <syna_cdev_process_reports+0x614>
    72c4: b400225c     	cbz	x28, 0x770c <syna_cdev_process_reports+0x614>
    72c8: 6b1a037f     	cmp	w27, w26
    72cc: 54002108     	b.hi	0x76ec <syna_cdev_process_reports+0x5f4>
    72d0: cb080309     	sub	x9, x24, x8
    72d4: 6b18027f     	cmp	w19, w24
    72d8: 2a1b03fb     	mov	w27, w27
    72dc: 9a8983f6     	csel	x22, xzr, x9, hi
    72e0: eb1b02df     	cmp	x22, x27
    72e4: 54001283     	b.lo	0x7534 <syna_cdev_process_reports+0x43c>
    72e8: eb080328     	subs	x8, x25, x8
    72ec: 9a8833e1     	csel	x1, xzr, x8, lo
    72f0: eb1b003f     	cmp	x1, x27
    72f4: 54002503     	b.lo	0x7794 <syna_cdev_process_reports+0x69c>
    72f8: aa1c03e1     	mov	x1, x28
    72fc: aa1b03e2     	mov	x2, x27
    7300: 94000000     	bl	0x7300 <syna_cdev_process_reports+0x208>
		0000000000007300:  R_AARCH64_CALL26	memcpy
    7304: f9413af6     	ldr	x22, [x23, #0x270]
    7308: 90000000     	adrp	x0, 0x7000 <syna_cdev_open+0x88>
		0000000000007308:  R_AARCH64_ADR_PREL_PG_HI21	qword_316D0
    730c: 91000000     	add	x0, x0, #0x0
		000000000000730c:  R_AARCH64_ADD_ABS_LO12_NC	qword_316D0
    7310: 94000000     	bl	0x7310 <syna_cdev_process_reports+0x218>
		0000000000007310:  R_AARCH64_CALL26	mutex_lock
    7314: b944f2e8     	ldr	w8, [x23, #0x4f0]
    7318: 90000013     	adrp	x19, 0x7000 <syna_cdev_open+0x88>
		0000000000007318:  R_AARCH64_ADR_PREL_PG_HI21	syna_cdev_push_data_to_fifo_pre_remaining_frames
    731c: b9400269     	ldr	w9, [x19]
		000000000000731c:  R_AARCH64_LDST32_ABS_LO12_NC	syna_cdev_push_data_to_fifo_pre_remaining_frames
    7320: 7112bd1f     	cmp	w8, #0x4af
    7324: 54000168     	b.hi	0x7350 <syna_cdev_process_reports+0x258>
    7328: 7112c13f     	cmp	w9, #0x4b0
    732c: 540004eb     	b.lt	0x73c8 <syna_cdev_process_reports+0x2d0>
    7330: 90000000     	adrp	x0, 0x7000 <syna_cdev_open+0x88>
		0000000000007330:  R_AARCH64_ADR_PREL_PG_HI21	unk_37E9C
    7334: 91000000     	add	x0, x0, #0x0
		0000000000007334:  R_AARCH64_ADD_ABS_LO12_NC	unk_37E9C
    7338: 90000001     	adrp	x1, 0x7000 <syna_cdev_open+0x88>
		0000000000007338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2615
    733c: 91000021     	add	x1, x1, #0x0
		000000000000733c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2615
    7340: 94000000     	bl	0x7340 <syna_cdev_process_reports+0x248>
		0000000000007340:  R_AARCH64_CALL26	_printk
    7344: b944f2e8     	ldr	w8, [x23, #0x4f0]
    7348: b9000268     	str	w8, [x19]
		0000000000007348:  R_AARCH64_LDST32_ABS_LO12_NC	syna_cdev_push_data_to_fifo_pre_remaining_frames
    734c: 1400001f     	b	0x73c8 <syna_cdev_process_reports+0x2d0>
    7350: 6b09011f     	cmp	w8, w9
    7354: 54001c01     	b.ne	0x76d4 <syna_cdev_process_reports+0x5dc>
    7358: f9427ef4     	ldr	x20, [x23, #0x4f8]
    735c: f9400688     	ldr	x8, [x20, #0x8]
    7360: f9400109     	ldr	x9, [x8]
    7364: eb14013f     	cmp	x9, x20
    7368: 540018e1     	b.ne	0x7684 <syna_cdev_process_reports+0x58c>
    736c: f9400289     	ldr	x9, [x20]
    7370: f940052a     	ldr	x10, [x9, #0x8]
    7374: eb14015f     	cmp	x10, x20
    7378: 540000a0     	b.eq	0x738c <syna_cdev_process_reports+0x294>
    737c: f9400289     	ldr	x9, [x20]
    7380: f940052a     	ldr	x10, [x9, #0x8]
    7384: eb14015f     	cmp	x10, x20
    7388: 540017e1     	b.ne	0x7684 <syna_cdev_process_reports+0x58c>
    738c: f9000528     	str	x8, [x9, #0x8]
    7390: f9000109     	str	x9, [x8]
    7394: d2802008     	mov	x8, #0x100              // =256
    7398: 52800449     	mov	w9, #0x22               // =34
    739c: f9400a80     	ldr	x0, [x20, #0x10]
    73a0: f2fbd5a8     	movk	x8, #0xdead, lsl #48
    73a4: aa090109     	orr	x9, x8, x9
    73a8: a9002688     	stp	x8, x9, [x20]
    73ac: 94000000     	bl	0x73ac <syna_cdev_process_reports+0x2b4>
		00000000000073ac:  R_AARCH64_CALL26	kfree
    73b0: aa1403e0     	mov	x0, x20
    73b4: 94000000     	bl	0x73b4 <syna_cdev_process_reports+0x2bc>
		00000000000073b4:  R_AARCH64_CALL26	kfree
    73b8: b944f2e8     	ldr	w8, [x23, #0x4f0]
    73bc: b9000268     	str	w8, [x19]
		00000000000073bc:  R_AARCH64_LDST32_ABS_LO12_NC	syna_cdev_push_data_to_fifo_pre_remaining_frames
    73c0: 51000508     	sub	w8, w8, #0x1
    73c4: b904f2e8     	str	w8, [x23, #0x4f0]
    73c8: d503201f     	nop
    73cc: 90000008     	adrp	x8, 0x7000 <syna_cdev_open+0x88>
		00000000000073cc:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x30
    73d0: 52819801     	mov	w1, #0xcc0              // =3264
    73d4: 52800602     	mov	w2, #0x30               // =48
    73d8: f9400100     	ldr	x0, [x8]
		00000000000073d8:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x30
    73dc: 94000000     	bl	0x73dc <syna_cdev_process_reports+0x2e4>
		00000000000073dc:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    73e0: aa0003f4     	mov	x20, x0
    73e4: b4002014     	cbz	x20, 0x77e4 <syna_cdev_process_reports+0x6ec>
    73e8: d503201f     	nop
    73ec: aa1803e0     	mov	x0, x24
    73f0: 52819801     	mov	w1, #0xcc0              // =3264
    73f4: 94000000     	bl	0x73f4 <syna_cdev_process_reports+0x2fc>
		00000000000073f4:  R_AARCH64_CALL26	__kmalloc_noprof
    73f8: f85f03a1     	ldur	x1, [x29, #-0x10]
    73fc: f9000a80     	str	x0, [x20, #0x10]
    7400: b4000e20     	cbz	x0, 0x75c4 <syna_cdev_process_reports+0x4cc>
    7404: 6b18033f     	cmp	w25, w24
    7408: b9001a98     	str	w24, [x20, #0x18]
    740c: 54001ca3     	b.lo	0x77a0 <syna_cdev_process_reports+0x6a8>
    7410: aa1803e2     	mov	x2, x24
    7414: 94000000     	bl	0x7414 <syna_cdev_process_reports+0x31c>
		0000000000007414:  R_AARCH64_CALL26	memcpy
    7418: 91008280     	add	x0, x20, #0x20
    741c: 94000000     	bl	0x741c <syna_cdev_process_reports+0x324>
		000000000000741c:  R_AARCH64_CALL26	ktime_get_real_ts64
    7420: 9113e2e8     	add	x8, x23, #0x4f8
    7424: eb08029f     	cmp	x20, x8
    7428: 54000140     	b.eq	0x7450 <syna_cdev_process_reports+0x358>
    742c: f94282e9     	ldr	x9, [x23, #0x500]
    7430: eb09029f     	cmp	x20, x9
    7434: 540000e0     	b.eq	0x7450 <syna_cdev_process_reports+0x358>
    7438: f940012a     	ldr	x10, [x9]
    743c: eb0a011f     	cmp	x8, x10
    7440: 54000081     	b.ne	0x7450 <syna_cdev_process_reports+0x358>
    7444: f90282f4     	str	x20, [x23, #0x500]
    7448: a9002688     	stp	x8, x9, [x20]
    744c: f9000134     	str	x20, [x9]
    7450: 90000008     	adrp	x8, 0x7000 <syna_cdev_open+0x88>
		0000000000007450:  R_AARCH64_ADR_PREL_PG_HI21	qword_31708
    7454: b944f2e9     	ldr	w9, [x23, #0x4f0]
    7458: b9400108     	ldr	w8, [x8]
		0000000000007458:  R_AARCH64_LDST32_ABS_LO12_NC	qword_31708
    745c: 11000529     	add	w9, w9, #0x1
    7460: 51000508     	sub	w8, w8, #0x1
    7464: b904f2e9     	str	w9, [x23, #0x4f0]
    7468: 6b09011f     	cmp	w8, w9
    746c: 54000222     	b.hs	0x74b0 <syna_cdev_process_reports+0x3b8>
    7470: f94022d3     	ldr	x19, [x22, #0x40]
    7474: b40001f3     	cbz	x19, 0x74b0 <syna_cdev_process_reports+0x3b8>
    7478: b85fc268     	ldur	w8, [x19, #-0x4]
    747c: 528c3629     	mov	w9, #0x61b1             // =25009
    7480: 72a685c9     	movk	w9, #0x342e, lsl #16
    7484: 6b09011f     	cmp	w8, w9
    7488: 54001741     	b.ne	0x7770 <syna_cdev_process_reports+0x678>
    748c: 910022c0     	add	x0, x22, #0x8
    7490: aa1f03e1     	mov	x1, xzr
    7494: b85fc270     	ldur	w16, [x19, #-0x4]
    7498: 7284a871     	movk	w17, #0x2543
    749c: 72a74c31     	movk	w17, #0x3a61, lsl #16
    74a0: 6b11021f     	cmp	w16, w17
    74a4: 54000040     	b.eq	0x74ac <syna_cdev_process_reports+0x3b4>
    74a8: d4304660     	brk	#0x8233
    74ac: d63f0260     	blr	x19
    74b0: 90000000     	adrp	x0, 0x7000 <syna_cdev_open+0x88>
		00000000000074b0:  R_AARCH64_ADR_PREL_PG_HI21	qword_316D0
    74b4: 91000000     	add	x0, x0, #0x0
		00000000000074b4:  R_AARCH64_ADD_ABS_LO12_NC	qword_316D0
    74b8: 94000000     	bl	0x74b8 <syna_cdev_process_reports+0x3c0>
		00000000000074b8:  R_AARCH64_CALL26	mutex_unlock
    74bc: 911422e0     	add	x0, x23, #0x508
    74c0: 52800061     	mov	w1, #0x3                // =3
    74c4: 52800022     	mov	w2, #0x1                // =1
    74c8: aa1f03e3     	mov	x3, xzr
    74cc: 94000000     	bl	0x74cc <syna_cdev_process_reports+0x3d4>
		00000000000074cc:  R_AARCH64_CALL26	__wake_up
    74d0: 2a1f03f7     	mov	w23, wzr
    74d4: 2a1f03f3     	mov	w19, wzr
    74d8: 93407c00     	sxtw	x0, w0
    74dc: 94000000     	bl	0x74dc <syna_cdev_process_reports+0x3e4>
		00000000000074dc:  R_AARCH64_CALL26	syna_request_managed_device
    74e0: b40012a0     	cbz	x0, 0x7734 <syna_cdev_process_reports+0x63c>
    74e4: b400009c     	cbz	x28, 0x74f4 <syna_cdev_process_reports+0x3fc>
    74e8: aa1c03e1     	mov	x1, x28
    74ec: 94000000     	bl	0x74ec <syna_cdev_process_reports+0x3f4>
		00000000000074ec:  R_AARCH64_CALL26	devm_kfree
    74f0: aa1f03e0     	mov	x0, xzr
    74f4: 94000000     	bl	0x74f4 <syna_cdev_process_reports+0x3fc>
		00000000000074f4:  R_AARCH64_CALL26	syna_request_managed_device
    74f8: b40012e0     	cbz	x0, 0x7754 <syna_cdev_process_reports+0x65c>
    74fc: f85f03a1     	ldur	x1, [x29, #-0x10]
    7500: 94000000     	bl	0x7500 <syna_cdev_process_reports+0x408>
		0000000000007500:  R_AARCH64_CALL26	devm_kfree
    7504: 350009f3     	cbnz	w19, 0x7640 <syna_cdev_process_reports+0x548>
    7508: 2a1f03f7     	mov	w23, wzr
    750c: 14000054     	b	0x765c <syna_cdev_process_reports+0x564>
    7510: aa1f03fb     	mov	x27, xzr
    7514: aa1f03f6     	mov	x22, xzr
    7518: 90000000     	adrp	x0, 0x7000 <syna_cdev_open+0x88>
		0000000000007518:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d
    751c: 91000000     	add	x0, x0, #0x0
		000000000000751c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d
    7520: 90000002     	adrp	x2, 0x7000 <syna_cdev_open+0x88>
		0000000000007520:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33e3
    7524: 91000042     	add	x2, x2, #0x0
		0000000000007524:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33e3
    7528: 52800021     	mov	w1, #0x1                // =1
    752c: 52801503     	mov	w3, #0xa8               // =168
    7530: 94000000     	bl	0x7530 <syna_cdev_process_reports+0x438>
		0000000000007530:  R_AARCH64_CALL26	_printk
    7534: 52800220     	mov	w0, #0x11               // =17
    7538: aa1603e1     	mov	x1, x22
    753c: aa1b03e2     	mov	x2, x27
    7540: 94000000     	bl	0x7540 <syna_cdev_process_reports+0x448>
		0000000000007540:  R_AARCH64_CALL26	__fortify_panic
    7544: 90000000     	adrp	x0, 0x7000 <syna_cdev_open+0x88>
		0000000000007544:  R_AARCH64_ADR_PREL_PG_HI21	unk_38D56
    7548: 91000000     	add	x0, x0, #0x0
		0000000000007548:  R_AARCH64_ADD_ABS_LO12_NC	unk_38D56
    754c: 90000001     	adrp	x1, 0x7000 <syna_cdev_open+0x88>
		000000000000754c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20ee
    7550: 91000021     	add	x1, x1, #0x0
		0000000000007550:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20ee
    7554: 94000000     	bl	0x7554 <syna_cdev_process_reports+0x45c>
		0000000000007554:  R_AARCH64_CALL26	_printk
    7558: 128002b7     	mov	w23, #-0x16             // =-22
    755c: 14000040     	b	0x765c <syna_cdev_process_reports+0x564>
    7560: 90000000     	adrp	x0, 0x7000 <syna_cdev_open+0x88>
		0000000000007560:  R_AARCH64_ADR_PREL_PG_HI21	unk_35B39
    7564: 91000000     	add	x0, x0, #0x0
		0000000000007564:  R_AARCH64_ADD_ABS_LO12_NC	unk_35B39
    7568: 90000001     	adrp	x1, 0x7000 <syna_cdev_open+0x88>
		0000000000007568:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1efa
    756c: 91000021     	add	x1, x1, #0x0
		000000000000756c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1efa
    7570: 94000000     	bl	0x7570 <syna_cdev_process_reports+0x478>
		0000000000007570:  R_AARCH64_CALL26	_printk
    7574: 12001ec8     	and	w8, w22, #0xff
    7578: 128002b7     	mov	w23, #-0x16             // =-22
    757c: b9000fe8     	str	w8, [sp, #0xc]
    7580: 14000030     	b	0x7640 <syna_cdev_process_reports+0x548>
    7584: 90000000     	adrp	x0, 0x7000 <syna_cdev_open+0x88>
		0000000000007584:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
    7588: 91000000     	add	x0, x0, #0x0
		0000000000007588:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
    758c: 14000003     	b	0x7598 <syna_cdev_process_reports+0x4a0>
    7590: 90000000     	adrp	x0, 0x7000 <syna_cdev_open+0x88>
		0000000000007590:  R_AARCH64_ADR_PREL_PG_HI21	unk_38286
    7594: 91000000     	add	x0, x0, #0x0
		0000000000007594:  R_AARCH64_ADD_ABS_LO12_NC	unk_38286
    7598: 90000001     	adrp	x1, 0x7000 <syna_cdev_open+0x88>
		0000000000007598:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ed9
    759c: 91000021     	add	x1, x1, #0x0
		000000000000759c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ed9
    75a0: 94000000     	bl	0x75a0 <syna_cdev_process_reports+0x4a8>
		00000000000075a0:  R_AARCH64_CALL26	_printk
    75a4: b85fc3a3     	ldur	w3, [x29, #-0x4]
    75a8: 90000000     	adrp	x0, 0x7000 <syna_cdev_open+0x88>
		00000000000075a8:  R_AARCH64_ADR_PREL_PG_HI21	unk_35592
    75ac: 91000000     	add	x0, x0, #0x0
		00000000000075ac:  R_AARCH64_ADD_ABS_LO12_NC	unk_35592
    75b0: 90000001     	adrp	x1, 0x7000 <syna_cdev_open+0x88>
		00000000000075b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1efa
    75b4: 91000021     	add	x1, x1, #0x0
		00000000000075b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1efa
    75b8: 2a1803e2     	mov	w2, w24
    75bc: 94000000     	bl	0x75bc <syna_cdev_process_reports+0x4c4>
		00000000000075bc:  R_AARCH64_CALL26	_printk
    75c0: 1400001f     	b	0x763c <syna_cdev_process_reports+0x544>
    75c4: 90000000     	adrp	x0, 0x7000 <syna_cdev_open+0x88>
		00000000000075c4:  R_AARCH64_ADR_PREL_PG_HI21	unk_31F9D
    75c8: 91000000     	add	x0, x0, #0x0
		00000000000075c8:  R_AARCH64_ADD_ABS_LO12_NC	unk_31F9D
    75cc: 90000001     	adrp	x1, 0x7000 <syna_cdev_open+0x88>
		00000000000075cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2615
    75d0: 91000021     	add	x1, x1, #0x0
		00000000000075d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2615
    75d4: 2a1803e2     	mov	w2, w24
    75d8: 1400008d     	b	0x780c <syna_cdev_process_reports+0x714>
    75dc: 90000000     	adrp	x0, 0x7000 <syna_cdev_open+0x88>
		00000000000075dc:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
    75e0: 91000000     	add	x0, x0, #0x0
		00000000000075e0:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
    75e4: 90000001     	adrp	x1, 0x7000 <syna_cdev_open+0x88>
		00000000000075e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ed9
    75e8: 91000021     	add	x1, x1, #0x0
		00000000000075e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ed9
    75ec: 94000000     	bl	0x75ec <syna_cdev_process_reports+0x4f4>
		00000000000075ec:  R_AARCH64_CALL26	_printk
    75f0: 93407c00     	sxtw	x0, w0
    75f4: 94000000     	bl	0x75f4 <syna_cdev_process_reports+0x4fc>
		00000000000075f4:  R_AARCH64_CALL26	syna_request_managed_device
    75f8: b5000120     	cbnz	x0, 0x761c <syna_cdev_process_reports+0x524>
    75fc: 90000000     	adrp	x0, 0x7000 <syna_cdev_open+0x88>
		00000000000075fc:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
    7600: 91000000     	add	x0, x0, #0x0
		0000000000007600:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
    7604: 90000001     	adrp	x1, 0x7000 <syna_cdev_open+0x88>
		0000000000007604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c58
    7608: 91000021     	add	x1, x1, #0x0
		0000000000007608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c58
    760c: 94000000     	bl	0x760c <syna_cdev_process_reports+0x514>
		000000000000760c:  R_AARCH64_CALL26	_printk
    7610: 14000005     	b	0x7624 <syna_cdev_process_reports+0x52c>
    7614: 94000000     	bl	0x7614 <syna_cdev_process_reports+0x51c>
		0000000000007614:  R_AARCH64_CALL26	syna_request_managed_device
    7618: b4ffff20     	cbz	x0, 0x75fc <syna_cdev_process_reports+0x504>
    761c: f85f03a1     	ldur	x1, [x29, #-0x10]
    7620: 94000000     	bl	0x7620 <syna_cdev_process_reports+0x528>
		0000000000007620:  R_AARCH64_CALL26	devm_kfree
    7624: b94002a2     	ldr	w2, [x21]
		0000000000007624:  R_AARCH64_LDST32_ABS_LO12_NC	qword_31700+0x4
    7628: 90000000     	adrp	x0, 0x7000 <syna_cdev_open+0x88>
		0000000000007628:  R_AARCH64_ADR_PREL_PG_HI21	unk_3CBD2
    762c: 91000000     	add	x0, x0, #0x0
		000000000000762c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3CBD2
    7630: 90000001     	adrp	x1, 0x7000 <syna_cdev_open+0x88>
		0000000000007630:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1efa
    7634: 91000021     	add	x1, x1, #0x0
		0000000000007634:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1efa
    7638: 94000000     	bl	0x7638 <syna_cdev_process_reports+0x540>
		0000000000007638:  R_AARCH64_CALL26	_printk
    763c: 12800177     	mov	w23, #-0xc              // =-12
    7640: b9400fe2     	ldr	w2, [sp, #0xc]
    7644: b85fc3a3     	ldur	w3, [x29, #-0x4]
    7648: 90000000     	adrp	x0, 0x7000 <syna_cdev_open+0x88>
		0000000000007648:  R_AARCH64_ADR_PREL_PG_HI21	unk_39968
    764c: 91000000     	add	x0, x0, #0x0
		000000000000764c:  R_AARCH64_ADD_ABS_LO12_NC	unk_39968
    7650: 90000001     	adrp	x1, 0x7000 <syna_cdev_open+0x88>
		0000000000007650:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20ee
    7654: 91000021     	add	x1, x1, #0x0
		0000000000007654:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20ee
    7658: 94000000     	bl	0x7658 <syna_cdev_process_reports+0x560>
		0000000000007658:  R_AARCH64_CALL26	_printk
    765c: 2a1703e0     	mov	w0, w23
    7660: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    7664: a94757f6     	ldp	x22, x21, [sp, #0x70]
    7668: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    766c: a94567fa     	ldp	x26, x25, [sp, #0x50]
    7670: a9446ffc     	ldp	x28, x27, [sp, #0x40]
    7674: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    7678: 910243ff     	add	sp, sp, #0x90
    767c: d50323bf     	autiasp
    7680: d65f03c0     	ret
    7684: aa1403e0     	mov	x0, x20
    7688: 94000000     	bl	0x7688 <syna_cdev_process_reports+0x590>
		0000000000007688:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    768c: 17ffff42     	b	0x7394 <syna_cdev_process_reports+0x29c>
    7690: b85fc3a4     	ldur	w4, [x29, #-0x4]
    7694: 90000000     	adrp	x0, 0x7000 <syna_cdev_open+0x88>
		0000000000007694:  R_AARCH64_ADR_PREL_PG_HI21	unk_3944E
    7698: 91000000     	add	x0, x0, #0x0
		0000000000007698:  R_AARCH64_ADD_ABS_LO12_NC	unk_3944E
    769c: 90000001     	adrp	x1, 0x7000 <syna_cdev_open+0x88>
		000000000000769c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xac7
    76a0: 91000021     	add	x1, x1, #0x0
		00000000000076a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xac7
    76a4: 2a1b03e3     	mov	w3, w27
    76a8: 94000000     	bl	0x76a8 <syna_cdev_process_reports+0x5b0>
		00000000000076a8:  R_AARCH64_CALL26	_printk
    76ac: b85fc3a2     	ldur	w2, [x29, #-0x4]
    76b0: 90000000     	adrp	x0, 0x7000 <syna_cdev_open+0x88>
		00000000000076b0:  R_AARCH64_ADR_PREL_PG_HI21	unk_33CFA
    76b4: 91000000     	add	x0, x0, #0x0
		00000000000076b4:  R_AARCH64_ADD_ABS_LO12_NC	unk_33CFA
    76b8: 90000001     	adrp	x1, 0x7000 <syna_cdev_open+0x88>
		00000000000076b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1efa
    76bc: 91000021     	add	x1, x1, #0x0
		00000000000076bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1efa
    76c0: 94000000     	bl	0x76c0 <syna_cdev_process_reports+0x5c8>
		00000000000076c0:  R_AARCH64_CALL26	_printk
    76c4: f9400ffc     	ldr	x28, [sp, #0x18]
    76c8: 52800033     	mov	w19, #0x1               // =1
    76cc: 128002b7     	mov	w23, #-0x16             // =-22
    76d0: 17ffff82     	b	0x74d8 <syna_cdev_process_reports+0x3e0>
    76d4: 90000000     	adrp	x0, 0x7000 <syna_cdev_open+0x88>
		00000000000076d4:  R_AARCH64_ADR_PREL_PG_HI21	unk_341DE
    76d8: 91000000     	add	x0, x0, #0x0
		00000000000076d8:  R_AARCH64_ADD_ABS_LO12_NC	unk_341DE
    76dc: 90000001     	adrp	x1, 0x7000 <syna_cdev_open+0x88>
		00000000000076dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2615
    76e0: 91000021     	add	x1, x1, #0x0
		00000000000076e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2615
    76e4: 94000000     	bl	0x76e4 <syna_cdev_process_reports+0x5ec>
		00000000000076e4:  R_AARCH64_CALL26	_printk
    76e8: 17ffff1c     	b	0x7358 <syna_cdev_process_reports+0x260>
    76ec: 90000000     	adrp	x0, 0x7000 <syna_cdev_open+0x88>
		00000000000076ec:  R_AARCH64_ADR_PREL_PG_HI21	unk_3944E
    76f0: 91000000     	add	x0, x0, #0x0
		00000000000076f0:  R_AARCH64_ADD_ABS_LO12_NC	unk_3944E
    76f4: 90000001     	adrp	x1, 0x7000 <syna_cdev_open+0x88>
		00000000000076f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xac7
    76f8: 91000021     	add	x1, x1, #0x0
		00000000000076f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xac7
    76fc: 2a1b03e2     	mov	w2, w27
    7700: 2a1a03e3     	mov	w3, w26
    7704: 2a1b03e4     	mov	w4, w27
    7708: 94000000     	bl	0x7708 <syna_cdev_process_reports+0x610>
		0000000000007708:  R_AARCH64_CALL26	_printk
    770c: 90000000     	adrp	x0, 0x7000 <syna_cdev_open+0x88>
		000000000000770c:  R_AARCH64_ADR_PREL_PG_HI21	unk_377AA
    7710: 91000000     	add	x0, x0, #0x0
		0000000000007710:  R_AARCH64_ADD_ABS_LO12_NC	unk_377AA
    7714: 90000001     	adrp	x1, 0x7000 <syna_cdev_open+0x88>
		0000000000007714:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1efa
    7718: 91000021     	add	x1, x1, #0x0
		0000000000007718:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1efa
    771c: 94000000     	bl	0x771c <syna_cdev_process_reports+0x624>
		000000000000771c:  R_AARCH64_CALL26	_printk
    7720: 93407c00     	sxtw	x0, w0
    7724: 94000000     	bl	0x7724 <syna_cdev_process_reports+0x62c>
		0000000000007724:  R_AARCH64_CALL26	syna_request_managed_device
    7728: 52800033     	mov	w19, #0x1               // =1
    772c: 128002b7     	mov	w23, #-0x16             // =-22
    7730: b5ffeda0     	cbnz	x0, 0x74e4 <syna_cdev_process_reports+0x3ec>
    7734: 90000000     	adrp	x0, 0x7000 <syna_cdev_open+0x88>
		0000000000007734:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
    7738: 91000000     	add	x0, x0, #0x0
		0000000000007738:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
    773c: 90000001     	adrp	x1, 0x7000 <syna_cdev_open+0x88>
		000000000000773c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c58
    7740: 91000021     	add	x1, x1, #0x0
		0000000000007740:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c58
    7744: 94000000     	bl	0x7744 <syna_cdev_process_reports+0x64c>
		0000000000007744:  R_AARCH64_CALL26	_printk
    7748: 93407c00     	sxtw	x0, w0
    774c: 94000000     	bl	0x774c <syna_cdev_process_reports+0x654>
		000000000000774c:  R_AARCH64_CALL26	syna_request_managed_device
    7750: b5ffed60     	cbnz	x0, 0x74fc <syna_cdev_process_reports+0x404>
    7754: 90000000     	adrp	x0, 0x7000 <syna_cdev_open+0x88>
		0000000000007754:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
    7758: 91000000     	add	x0, x0, #0x0
		0000000000007758:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
    775c: 90000001     	adrp	x1, 0x7000 <syna_cdev_open+0x88>
		000000000000775c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c58
    7760: 91000021     	add	x1, x1, #0x0
		0000000000007760:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c58
    7764: 94000000     	bl	0x7764 <syna_cdev_process_reports+0x66c>
		0000000000007764:  R_AARCH64_CALL26	_printk
    7768: 34ffed13     	cbz	w19, 0x7508 <syna_cdev_process_reports+0x410>
    776c: 17ffffb5     	b	0x7640 <syna_cdev_process_reports+0x548>
    7770: 90000000     	adrp	x0, 0x7000 <syna_cdev_open+0x88>
		0000000000007770:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d
    7774: 91000000     	add	x0, x0, #0x0
		0000000000007774:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d
    7778: 90000002     	adrp	x2, 0x7000 <syna_cdev_open+0x88>
		0000000000007778:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33e3
    777c: 91000042     	add	x2, x2, #0x0
		000000000000777c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33e3
    7780: 52904501     	mov	w1, #0x8228             // =33320
    7784: 52801f63     	mov	w3, #0xfb               // =251
    7788: 94000000     	bl	0x7788 <syna_cdev_process_reports+0x690>
		0000000000007788:  R_AARCH64_CALL26	_printk
    778c: 17ffff40     	b	0x748c <syna_cdev_process_reports+0x394>
    7790: d4200020     	brk	#0x1
    7794: 52800220     	mov	w0, #0x11               // =17
    7798: aa1b03e2     	mov	x2, x27
    779c: 94000000     	bl	0x779c <syna_cdev_process_reports+0x6a4>
		000000000000779c:  R_AARCH64_CALL26	__fortify_panic
    77a0: 52800200     	mov	w0, #0x10               // =16
    77a4: aa1803e1     	mov	x1, x24
    77a8: aa1803e2     	mov	x2, x24
    77ac: 94000000     	bl	0x77ac <syna_cdev_process_reports+0x6b4>
		00000000000077ac:  R_AARCH64_CALL26	__fortify_panic
    77b0: 90000008     	adrp	x8, 0x7000 <syna_cdev_open+0x88>
		00000000000077b0:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x30
    77b4: d5384113     	mrs	x19, SP_EL0
    77b8: f9402a7a     	ldr	x26, [x19, #0x50]
    77bc: f9400100     	ldr	x0, [x8]
		00000000000077bc:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x30
    77c0: 90000008     	adrp	x8, 0x7000 <syna_cdev_open+0x88>
		00000000000077c0:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xa0
    77c4: 91000108     	add	x8, x8, #0x0
		00000000000077c4:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xa0
    77c8: 52819801     	mov	w1, #0xcc0              // =3264
    77cc: 52800602     	mov	w2, #0x30               // =48
    77d0: f9002a68     	str	x8, [x19, #0x50]
    77d4: 94000000     	bl	0x77d4 <syna_cdev_process_reports+0x6dc>
		00000000000077d4:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    77d8: aa0003f4     	mov	x20, x0
    77dc: f9002a7a     	str	x26, [x19, #0x50]
    77e0: b5ffe054     	cbnz	x20, 0x73e8 <syna_cdev_process_reports+0x2f0>
    77e4: 90000014     	adrp	x20, 0x7000 <syna_cdev_open+0x88>
		00000000000077e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2615
    77e8: 91000294     	add	x20, x20, #0x0
		00000000000077e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2615
    77ec: 90000000     	adrp	x0, 0x7000 <syna_cdev_open+0x88>
		00000000000077ec:  R_AARCH64_ADR_PREL_PG_HI21	unk_35B63
    77f0: 91000000     	add	x0, x0, #0x0
		00000000000077f0:  R_AARCH64_ADD_ABS_LO12_NC	unk_35B63
    77f4: aa1403e1     	mov	x1, x20
    77f8: 94000000     	bl	0x77f8 <syna_cdev_process_reports+0x700>
		00000000000077f8:  R_AARCH64_CALL26	_printk
    77fc: 90000000     	adrp	x0, 0x7000 <syna_cdev_open+0x88>
		00000000000077fc:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B1BE
    7800: 91000000     	add	x0, x0, #0x0
		0000000000007800:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B1BE
    7804: aa1403e1     	mov	x1, x20
    7808: 52800602     	mov	w2, #0x30               // =48
    780c: 94000000     	bl	0x780c <syna_cdev_process_reports+0x714>
		000000000000780c:  R_AARCH64_CALL26	_printk
    7810: 90000000     	adrp	x0, 0x7000 <syna_cdev_open+0x88>
		0000000000007810:  R_AARCH64_ADR_PREL_PG_HI21	qword_316D0
    7814: 91000000     	add	x0, x0, #0x0
		0000000000007814:  R_AARCH64_ADD_ABS_LO12_NC	qword_316D0
    7818: 94000000     	bl	0x7818 <syna_cdev_process_reports+0x720>
		0000000000007818:  R_AARCH64_CALL26	mutex_unlock
    781c: 90000000     	adrp	x0, 0x7000 <syna_cdev_open+0x88>
		000000000000781c:  R_AARCH64_ADR_PREL_PG_HI21	unk_34D82
    7820: 91000000     	add	x0, x0, #0x0
		0000000000007820:  R_AARCH64_ADD_ABS_LO12_NC	unk_34D82
    7824: 90000001     	adrp	x1, 0x7000 <syna_cdev_open+0x88>
		0000000000007824:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1efa
    7828: 91000021     	add	x1, x1, #0x0
		0000000000007828:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1efa
    782c: 94000000     	bl	0x782c <syna_cdev_process_reports+0x734>
		000000000000782c:  R_AARCH64_CALL26	_printk
    7830: 52800033     	mov	w19, #0x1               // =1
    7834: 12800177     	mov	w23, #-0xc              // =-12
    7838: 17ffff28     	b	0x74d8 <syna_cdev_process_reports+0x3e0>
    783c: d5384113     	mrs	x19, SP_EL0
    7840: f9402a7a     	ldr	x26, [x19, #0x50]
    7844: 90000008     	adrp	x8, 0x7000 <syna_cdev_open+0x88>
		0000000000007844:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xc8
    7848: 91000108     	add	x8, x8, #0x0
		0000000000007848:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xc8
    784c: aa1803e0     	mov	x0, x24
    7850: 52819801     	mov	w1, #0xcc0              // =3264
    7854: f9002a68     	str	x8, [x19, #0x50]
    7858: 94000000     	bl	0x7858 <syna_cdev_process_reports+0x760>
		0000000000007858:  R_AARCH64_CALL26	__kmalloc_noprof
    785c: f9002a7a     	str	x26, [x19, #0x50]
    7860: 17fffee6     	b	0x73f8 <syna_cdev_process_reports+0x300>
