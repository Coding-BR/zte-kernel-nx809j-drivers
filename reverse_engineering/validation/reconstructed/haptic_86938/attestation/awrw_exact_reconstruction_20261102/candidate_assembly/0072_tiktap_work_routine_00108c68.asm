
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007240 <tiktap_work_routine>:
    7240: d503233f     	paciasp
    7244: d10243ff     	sub	sp, sp, #0x90
    7248: a9037bfd     	stp	x29, x30, [sp, #0x30]
    724c: a9046ffc     	stp	x28, x27, [sp, #0x40]
    7250: a90567fa     	stp	x26, x25, [sp, #0x50]
    7254: a9065ff8     	stp	x24, x23, [sp, #0x60]
    7258: a90757f6     	stp	x22, x21, [sp, #0x70]
    725c: a9084ff4     	stp	x20, x19, [sp, #0x80]
    7260: 9100c3fd     	add	x29, sp, #0x30
    7264: d5384108     	mrs	x8, SP_EL0
    7268: d10ce014     	sub	x20, x0, #0x338
    726c: aa0003f3     	mov	x19, x0
    7270: f9438908     	ldr	x8, [x8, #0x710]
    7274: d118a015     	sub	x21, x0, #0x628
    7278: f81f83a8     	stur	x8, [x29, #-0x8]
    727c: f85e801b     	ldur	x27, [x0, #-0x18]
    7280: aa1403e0     	mov	x0, x20
    7284: 94000000     	bl	0x7284 <tiktap_work_routine+0x44>
		0000000000007284:  R_AARCH64_CALL26	mutex_lock
    7288: f85a0268     	ldur	x8, [x19, #-0x60]
    728c: 381f027f     	sturb	wzr, [x19, #-0x10]
    7290: aa1503e0     	mov	x0, x21
    7294: 52800041     	mov	w1, #0x2                // =2
    7298: f9404d08     	ldr	x8, [x8, #0x98]
    729c: b85fc110     	ldur	w16, [x8, #-0x4]
    72a0: 729bedd1     	movk	w17, #0xdf6e
    72a4: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    72a8: 6b11021f     	cmp	w16, w17
    72ac: 54000040     	b.eq	0x72b4 <tiktap_work_routine+0x74>
    72b0: d4304500     	brk	#0x8228
    72b4: d63f0100     	blr	x8
    72b8: f85a0268     	ldur	x8, [x19, #-0x60]
    72bc: aa1503e0     	mov	x0, x21
    72c0: 52800041     	mov	w1, #0x2                // =2
    72c4: f9408d08     	ldr	x8, [x8, #0x118]
    72c8: b85fc110     	ldur	w16, [x8, #-0x4]
    72cc: 728dd2b1     	movk	w17, #0x6e95
    72d0: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    72d4: 6b11021f     	cmp	w16, w17
    72d8: 54000040     	b.eq	0x72e0 <tiktap_work_routine+0xa0>
    72dc: d4304500     	brk	#0x8228
    72e0: d63f0100     	blr	x8
    72e4: 52800c76     	mov	w22, #0x63              // =99
    72e8: 39400368     	ldrb	w8, [x27]
    72ec: 7101551f     	cmp	w8, #0x55
    72f0: 54000140     	b.eq	0x7318 <tiktap_work_routine+0xd8>
    72f4: 385f0268     	ldurb	w8, [x19, #-0x10]
    72f8: 37000488     	tbnz	w8, #0x0, 0x7388 <tiktap_work_routine+0x148>
    72fc: 52912b00     	mov	w0, #0x8958             // =35160
    7300: 72a00820     	movk	w0, #0x41, lsl #16
    7304: 94000000     	bl	0x7304 <tiktap_work_routine+0xc4>
		0000000000007304:  R_AARCH64_CALL26	__const_udelay
    7308: 510006d6     	sub	w22, w22, #0x1
    730c: 310006df     	cmn	w22, #0x1
    7310: 54fffec1     	b.ne	0x72e8 <tiktap_work_routine+0xa8>
    7314: 14000012     	b	0x735c <tiktap_work_routine+0x11c>
    7318: f85a0268     	ldur	x8, [x19, #-0x60]
    731c: aa1503e0     	mov	x0, x21
    7320: 52800021     	mov	w1, #0x1                // =1
    7324: 52800037     	mov	w23, #0x1               // =1
    7328: f9403108     	ldr	x8, [x8, #0x60]
    732c: b85fc110     	ldur	w16, [x8, #-0x4]
    7330: 729bedd1     	movk	w17, #0xdf6e
    7334: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    7338: 6b11021f     	cmp	w16, w17
    733c: 54000040     	b.eq	0x7344 <tiktap_work_routine+0x104>
    7340: d4304500     	brk	#0x8228
    7344: d63f0100     	blr	x8
    7348: 52912b00     	mov	w0, #0x8958             // =35160
    734c: 72a00820     	movk	w0, #0x41, lsl #16
    7350: 94000000     	bl	0x7350 <tiktap_work_routine+0x110>
		0000000000007350:  R_AARCH64_CALL26	__const_udelay
    7354: 710002df     	cmp	w22, #0x0
    7358: 5400038c     	b.gt	0x73c8 <tiktap_work_routine+0x188>
    735c: 39400364     	ldrb	w4, [x27]
    7360: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		0000000000007360:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13bd
    7364: 91000000     	add	x0, x0, #0x0
		0000000000007364:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13bd
    7368: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007368:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    736c: 91000021     	add	x1, x1, #0x0
		000000000000736c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7370: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		0000000000007370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1051
    7374: 91000063     	add	x3, x3, #0x0
		0000000000007374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1051
    7378: 5281cfc2     	mov	w2, #0xe7e              // =3710
    737c: 94000000     	bl	0x737c <tiktap_work_routine+0x13c>
		000000000000737c:  R_AARCH64_CALL26	_printk
    7380: 52800028     	mov	w8, #0x1                // =1
    7384: 381f0268     	sturb	w8, [x19, #-0x10]
    7388: aa1403e0     	mov	x0, x20
    738c: 94000000     	bl	0x738c <tiktap_work_routine+0x14c>
		000000000000738c:  R_AARCH64_CALL26	mutex_unlock
    7390: d5384108     	mrs	x8, SP_EL0
    7394: f9438908     	ldr	x8, [x8, #0x710]
    7398: f85f83a9     	ldur	x9, [x29, #-0x8]
    739c: eb09011f     	cmp	x8, x9
    73a0: 54001601     	b.ne	0x7660 <tiktap_work_routine+0x420>
    73a4: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    73a8: a94757f6     	ldp	x22, x21, [sp, #0x70]
    73ac: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    73b0: a94567fa     	ldp	x26, x25, [sp, #0x50]
    73b4: a9446ffc     	ldp	x28, x27, [sp, #0x40]
    73b8: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    73bc: 910243ff     	add	sp, sp, #0x90
    73c0: d50323bf     	autiasp
    73c4: d65f03c0     	ret
    73c8: aa1403e0     	mov	x0, x20
    73cc: 381f1277     	sturb	w23, [x19, #-0xf]
    73d0: 94000000     	bl	0x73d0 <tiktap_work_routine+0x190>
		00000000000073d0:  R_AARCH64_CALL26	mutex_unlock
    73d4: d10ae274     	sub	x20, x19, #0x2b8
    73d8: aa1403e0     	mov	x0, x20
    73dc: 94000000     	bl	0x73dc <tiktap_work_routine+0x19c>
		00000000000073dc:  R_AARCH64_CALL26	mutex_lock
    73e0: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		00000000000073e0:  R_AARCH64_ADR_PREL_PG_HI21	aw_pm_qos_req_vb
    73e4: 91000000     	add	x0, x0, #0x0
		00000000000073e4:  R_AARCH64_ADD_ABS_LO12_NC	aw_pm_qos_req_vb
    73e8: 94000000     	bl	0x73e8 <tiktap_work_routine+0x1a8>
		00000000000073e8:  R_AARCH64_CALL26	cpu_latency_qos_request_active
    73ec: 370000a0     	tbnz	w0, #0x0, 0x7400 <tiktap_work_routine+0x1c0>
    73f0: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		00000000000073f0:  R_AARCH64_ADR_PREL_PG_HI21	aw_pm_qos_req_vb
    73f4: 91000000     	add	x0, x0, #0x0
		00000000000073f4:  R_AARCH64_ADD_ABS_LO12_NC	aw_pm_qos_req_vb
    73f8: 2a1f03e1     	mov	w1, wzr
    73fc: 94000000     	bl	0x73fc <tiktap_work_routine+0x1bc>
		00000000000073fc:  R_AARCH64_CALL26	cpu_latency_qos_add_request
    7400: 910063e0     	add	x0, sp, #0x18
    7404: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    7408: 94000000     	bl	0x7408 <tiktap_work_routine+0x1c8>
		0000000000007408:  R_AARCH64_CALL26	ktime_get_coarse_real_ts64
    740c: 910063e0     	add	x0, sp, #0x18
    7410: 94000000     	bl	0x7410 <tiktap_work_routine+0x1d0>
		0000000000007410:  R_AARCH64_CALL26	timespec64_to_jiffies
    7414: 94000000     	bl	0x7414 <tiktap_work_routine+0x1d4>
		0000000000007414:  R_AARCH64_CALL26	jiffies_to_msecs
    7418: 2a0003f7     	mov	w23, w0
    741c: 910063e0     	add	x0, sp, #0x18
    7420: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    7424: 94000000     	bl	0x7424 <tiktap_work_routine+0x1e4>
		0000000000007424:  R_AARCH64_CALL26	ktime_get_coarse_real_ts64
    7428: 910063e0     	add	x0, sp, #0x18
    742c: 94000000     	bl	0x742c <tiktap_work_routine+0x1ec>
		000000000000742c:  R_AARCH64_CALL26	timespec64_to_jiffies
    7430: 94000000     	bl	0x7430 <tiktap_work_routine+0x1f0>
		0000000000007430:  R_AARCH64_CALL26	jiffies_to_msecs
    7434: 110c82e8     	add	w8, w23, #0x320
    7438: 6b08001f     	cmp	w0, w8
    743c: 54000149     	b.ls	0x7464 <tiktap_work_routine+0x224>
    7440: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		0000000000007440:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x297
    7444: 91000000     	add	x0, x0, #0x0
		0000000000007444:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x297
    7448: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007448:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    744c: 91000021     	add	x1, x1, #0x0
		000000000000744c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7450: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		0000000000007450:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1051
    7454: 91000063     	add	x3, x3, #0x0
		0000000000007454:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1051
    7458: 5281d2c2     	mov	w2, #0xe96              // =3734
    745c: 94000000     	bl	0x745c <tiktap_work_routine+0x21c>
		000000000000745c:  R_AARCH64_CALL26	_printk
    7460: 14000078     	b	0x7640 <tiktap_work_routine+0x400>
    7464: 2a1f03f6     	mov	w22, wzr
    7468: 90000018     	adrp	x24, 0x7000 <richtap_rtp_work+0x68>
		0000000000007468:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    746c: 91000318     	add	x24, x24, #0x0
		000000000000746c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7470: 90000019     	adrp	x25, 0x7000 <richtap_rtp_work+0x68>
		0000000000007470:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1051
    7474: 91000339     	add	x25, x25, #0x0
		0000000000007474:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1051
    7478: 9000001a     	adrp	x26, 0x7000 <richtap_rtp_work+0x68>
		0000000000007478:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a94
    747c: 9100035a     	add	x26, x26, #0x0
		000000000000747c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a94
    7480: 1400000e     	b	0x74b8 <tiktap_work_routine+0x278>
    7484: 370005dc     	tbnz	w28, #0x0, 0x753c <tiktap_work_routine+0x2fc>
    7488: 52912b00     	mov	w0, #0x8958             // =35160
    748c: 72a00820     	movk	w0, #0x41, lsl #16
    7490: 94000000     	bl	0x7490 <tiktap_work_routine+0x250>
		0000000000007490:  R_AARCH64_CALL26	__const_udelay
    7494: 910063e0     	add	x0, sp, #0x18
    7498: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    749c: 94000000     	bl	0x749c <tiktap_work_routine+0x25c>
		000000000000749c:  R_AARCH64_CALL26	ktime_get_coarse_real_ts64
    74a0: 910063e0     	add	x0, sp, #0x18
    74a4: 94000000     	bl	0x74a4 <tiktap_work_routine+0x264>
		00000000000074a4:  R_AARCH64_CALL26	timespec64_to_jiffies
    74a8: 94000000     	bl	0x74a8 <tiktap_work_routine+0x268>
		00000000000074a8:  R_AARCH64_CALL26	jiffies_to_msecs
    74ac: 110c82e8     	add	w8, w23, #0x320
    74b0: 6b08001f     	cmp	w0, w8
    74b4: 54fffc68     	b.hi	0x7440 <tiktap_work_routine+0x200>
    74b8: f85a0268     	ldur	x8, [x19, #-0x60]
    74bc: aa1503e0     	mov	x0, x21
    74c0: f940bd08     	ldr	x8, [x8, #0x178]
    74c4: b85fc110     	ldur	w16, [x8, #-0x4]
    74c8: 72870a91     	movk	w17, #0x3854
    74cc: 72af0971     	movk	w17, #0x784b, lsl #16
    74d0: 6b11021f     	cmp	w16, w17
    74d4: 54000040     	b.eq	0x74dc <tiktap_work_routine+0x29c>
    74d8: d4304500     	brk	#0x8228
    74dc: d63f0100     	blr	x8
    74e0: f85a0268     	ldur	x8, [x19, #-0x60]
    74e4: 2a0003fc     	mov	w28, w0
    74e8: aa1503e0     	mov	x0, x21
    74ec: f940b108     	ldr	x8, [x8, #0x160]
    74f0: b85fc110     	ldur	w16, [x8, #-0x4]
    74f4: 72870a91     	movk	w17, #0x3854
    74f8: 72af0971     	movk	w17, #0x784b, lsl #16
    74fc: 6b11021f     	cmp	w16, w17
    7500: 54000040     	b.eq	0x7508 <tiktap_work_routine+0x2c8>
    7504: d4304500     	brk	#0x8228
    7508: d63f0100     	blr	x8
    750c: 72000c1f     	tst	w0, #0xf
    7510: 54000840     	b.eq	0x7618 <tiktap_work_routine+0x3d8>
    7514: 385f0268     	ldurb	w8, [x19, #-0x10]
    7518: 39400364     	ldrb	w4, [x27]
    751c: 370006e8     	tbnz	w8, #0x0, 0x75f8 <tiktap_work_routine+0x3b8>
    7520: 7101549f     	cmp	w4, #0x55
    7524: 54fffb00     	b.eq	0x7484 <tiktap_work_routine+0x244>
    7528: 7103fc9f     	cmp	w4, #0xff
    752c: 54000660     	b.eq	0x75f8 <tiktap_work_routine+0x3b8>
    7530: 7102a89f     	cmp	w4, #0xaa
    7534: 54fffaa1     	b.ne	0x7488 <tiktap_work_routine+0x248>
    7538: 14000030     	b	0x75f8 <tiktap_work_routine+0x3b8>
    753c: 39400765     	ldrb	w5, [x27, #0x1]
    7540: 79c00766     	ldrsh	w6, [x27, #0x2]
    7544: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		0000000000007544:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ff
    7548: 91000000     	add	x0, x0, #0x0
		0000000000007548:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ff
    754c: aa1803e1     	mov	x1, x24
    7550: 5281d4e2     	mov	w2, #0xea7              // =3751
    7554: aa1903e3     	mov	x3, x25
    7558: 2a1603e4     	mov	w4, w22
    755c: 94000000     	bl	0x755c <tiktap_work_routine+0x31c>
		000000000000755c:  R_AARCH64_CALL26	_printk
    7560: aa1b03f7     	mov	x23, x27
    7564: 79c00764     	ldrsh	w4, [x27, #0x2]
    7568: 39400365     	ldrb	w5, [x27]
    756c: 38418ee6     	ldrb	w6, [x23, #0x18]!
    7570: 39406767     	ldrb	w7, [x27, #0x19]
    7574: 39408b68     	ldrb	w8, [x27, #0x22]
    7578: 39409369     	ldrb	w9, [x27, #0x24]
    757c: aa1a03e0     	mov	x0, x26
    7580: aa1803e1     	mov	x1, x24
    7584: 5281d562     	mov	w2, #0xeab              // =3755
    7588: aa1903e3     	mov	x3, x25
    758c: b9000be9     	str	w9, [sp, #0x8]
    7590: b90003e8     	str	w8, [sp]
    7594: 94000000     	bl	0x7594 <tiktap_work_routine+0x354>
		0000000000007594:  R_AARCH64_CALL26	_printk
    7598: f85a0268     	ldur	x8, [x19, #-0x60]
    759c: 79c00762     	ldrsh	w2, [x27, #0x2]
    75a0: aa1503e0     	mov	x0, x21
    75a4: aa1703e1     	mov	x1, x23
    75a8: f9406908     	ldr	x8, [x8, #0xd0]
    75ac: b85fc110     	ldur	w16, [x8, #-0x4]
    75b0: 72965371     	movk	w17, #0xb29b
    75b4: 72b8d4f1     	movk	w17, #0xc6a7, lsl #16
    75b8: 6b11021f     	cmp	w16, w17
    75bc: 54000040     	b.eq	0x75c4 <tiktap_work_routine+0x384>
    75c0: d4304500     	brk	#0x8228
    75c4: d63f0100     	blr	x8
    75c8: 52801548     	mov	w8, #0xaa               // =170
    75cc: 910063e0     	add	x0, sp, #0x18
    75d0: 39000368     	strb	w8, [x27]
    75d4: f940077b     	ldr	x27, [x27, #0x8]
    75d8: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    75dc: 94000000     	bl	0x75dc <tiktap_work_routine+0x39c>
		00000000000075dc:  R_AARCH64_CALL26	ktime_get_coarse_real_ts64
    75e0: 910063e0     	add	x0, sp, #0x18
    75e4: 94000000     	bl	0x75e4 <tiktap_work_routine+0x3a4>
		00000000000075e4:  R_AARCH64_CALL26	timespec64_to_jiffies
    75e8: 94000000     	bl	0x75e8 <tiktap_work_routine+0x3a8>
		00000000000075e8:  R_AARCH64_CALL26	jiffies_to_msecs
    75ec: 2a0003f7     	mov	w23, w0
    75f0: 110006d6     	add	w22, w22, #0x1
    75f4: 17ffffa8     	b	0x7494 <tiktap_work_routine+0x254>
    75f8: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		00000000000075f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1233
    75fc: 91000000     	add	x0, x0, #0x0
		00000000000075fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1233
    7600: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007600:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7604: 91000021     	add	x1, x1, #0x0
		0000000000007604:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7608: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		0000000000007608:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1051
    760c: 91000063     	add	x3, x3, #0x0
		000000000000760c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1051
    7610: 5281d462     	mov	w2, #0xea3              // =3747
    7614: 1400000a     	b	0x763c <tiktap_work_routine+0x3fc>
    7618: 90000008     	adrp	x8, 0x7000 <richtap_rtp_work+0x68>
		0000000000007618:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11f2
    761c: 91000108     	add	x8, x8, #0x0
		000000000000761c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11f2
    7620: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007620:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7624: 91000021     	add	x1, x1, #0x0
		0000000000007624:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7628: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		0000000000007628:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1051
    762c: 91000063     	add	x3, x3, #0x0
		000000000000762c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1051
    7630: 12001c04     	and	w4, w0, #0xff
    7634: aa0803e0     	mov	x0, x8
    7638: 5281d3a2     	mov	w2, #0xe9d              // =3741
    763c: 94000000     	bl	0x763c <tiktap_work_routine+0x3fc>
		000000000000763c:  R_AARCH64_CALL26	_printk
    7640: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		0000000000007640:  R_AARCH64_ADR_PREL_PG_HI21	aw_pm_qos_req_vb
    7644: 91000000     	add	x0, x0, #0x0
		0000000000007644:  R_AARCH64_ADD_ABS_LO12_NC	aw_pm_qos_req_vb
    7648: 94000000     	bl	0x7648 <tiktap_work_routine+0x408>
		0000000000007648:  R_AARCH64_CALL26	cpu_latency_qos_request_active
    764c: 3607e9a0     	tbz	w0, #0x0, 0x7380 <tiktap_work_routine+0x140>
    7650: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		0000000000007650:  R_AARCH64_ADR_PREL_PG_HI21	aw_pm_qos_req_vb
    7654: 91000000     	add	x0, x0, #0x0
		0000000000007654:  R_AARCH64_ADD_ABS_LO12_NC	aw_pm_qos_req_vb
    7658: 94000000     	bl	0x7658 <tiktap_work_routine+0x418>
		0000000000007658:  R_AARCH64_CALL26	cpu_latency_qos_remove_request
    765c: 17ffff49     	b	0x7380 <tiktap_work_routine+0x140>
    7660: 94000000     	bl	0x7660 <tiktap_work_routine+0x420>
		0000000000007660:  R_AARCH64_CALL26	__stack_chk_fail
