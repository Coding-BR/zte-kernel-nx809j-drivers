
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007270 <tiktap_work_routine>:
    7270: d503233f     	paciasp
    7274: d10243ff     	sub	sp, sp, #0x90
    7278: a9037bfd     	stp	x29, x30, [sp, #0x30]
    727c: a9046ffc     	stp	x28, x27, [sp, #0x40]
    7280: a90567fa     	stp	x26, x25, [sp, #0x50]
    7284: a9065ff8     	stp	x24, x23, [sp, #0x60]
    7288: a90757f6     	stp	x22, x21, [sp, #0x70]
    728c: a9084ff4     	stp	x20, x19, [sp, #0x80]
    7290: 9100c3fd     	add	x29, sp, #0x30
    7294: d5384108     	mrs	x8, SP_EL0
    7298: d10ce014     	sub	x20, x0, #0x338
    729c: aa0003f3     	mov	x19, x0
    72a0: f9438908     	ldr	x8, [x8, #0x710]
    72a4: d118a015     	sub	x21, x0, #0x628
    72a8: f81f83a8     	stur	x8, [x29, #-0x8]
    72ac: f85e801b     	ldur	x27, [x0, #-0x18]
    72b0: aa1403e0     	mov	x0, x20
    72b4: 94000000     	bl	0x72b4 <tiktap_work_routine+0x44>
		00000000000072b4:  R_AARCH64_CALL26	mutex_lock
    72b8: f85a0268     	ldur	x8, [x19, #-0x60]
    72bc: 381f027f     	sturb	wzr, [x19, #-0x10]
    72c0: aa1503e0     	mov	x0, x21
    72c4: 52800041     	mov	w1, #0x2                // =2
    72c8: f9404d08     	ldr	x8, [x8, #0x98]
    72cc: b85fc110     	ldur	w16, [x8, #-0x4]
    72d0: 729bedd1     	movk	w17, #0xdf6e
    72d4: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    72d8: 6b11021f     	cmp	w16, w17
    72dc: 54000040     	b.eq	0x72e4 <tiktap_work_routine+0x74>
    72e0: d4304500     	brk	#0x8228
    72e4: d63f0100     	blr	x8
    72e8: f85a0268     	ldur	x8, [x19, #-0x60]
    72ec: aa1503e0     	mov	x0, x21
    72f0: 52800041     	mov	w1, #0x2                // =2
    72f4: f9408d08     	ldr	x8, [x8, #0x118]
    72f8: b85fc110     	ldur	w16, [x8, #-0x4]
    72fc: 728dd2b1     	movk	w17, #0x6e95
    7300: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    7304: 6b11021f     	cmp	w16, w17
    7308: 54000040     	b.eq	0x7310 <tiktap_work_routine+0xa0>
    730c: d4304500     	brk	#0x8228
    7310: d63f0100     	blr	x8
    7314: 52800c76     	mov	w22, #0x63              // =99
    7318: 39400368     	ldrb	w8, [x27]
    731c: 7101551f     	cmp	w8, #0x55
    7320: 54000140     	b.eq	0x7348 <tiktap_work_routine+0xd8>
    7324: 385f0268     	ldurb	w8, [x19, #-0x10]
    7328: 37000488     	tbnz	w8, #0x0, 0x73b8 <tiktap_work_routine+0x148>
    732c: 52912b00     	mov	w0, #0x8958             // =35160
    7330: 72a00820     	movk	w0, #0x41, lsl #16
    7334: 94000000     	bl	0x7334 <tiktap_work_routine+0xc4>
		0000000000007334:  R_AARCH64_CALL26	__const_udelay
    7338: 510006d6     	sub	w22, w22, #0x1
    733c: 310006df     	cmn	w22, #0x1
    7340: 54fffec1     	b.ne	0x7318 <tiktap_work_routine+0xa8>
    7344: 14000012     	b	0x738c <tiktap_work_routine+0x11c>
    7348: f85a0268     	ldur	x8, [x19, #-0x60]
    734c: aa1503e0     	mov	x0, x21
    7350: 52800021     	mov	w1, #0x1                // =1
    7354: 52800037     	mov	w23, #0x1               // =1
    7358: f9403108     	ldr	x8, [x8, #0x60]
    735c: b85fc110     	ldur	w16, [x8, #-0x4]
    7360: 729bedd1     	movk	w17, #0xdf6e
    7364: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    7368: 6b11021f     	cmp	w16, w17
    736c: 54000040     	b.eq	0x7374 <tiktap_work_routine+0x104>
    7370: d4304500     	brk	#0x8228
    7374: d63f0100     	blr	x8
    7378: 52912b00     	mov	w0, #0x8958             // =35160
    737c: 72a00820     	movk	w0, #0x41, lsl #16
    7380: 94000000     	bl	0x7380 <tiktap_work_routine+0x110>
		0000000000007380:  R_AARCH64_CALL26	__const_udelay
    7384: 710002df     	cmp	w22, #0x0
    7388: 5400038c     	b.gt	0x73f8 <tiktap_work_routine+0x188>
    738c: 39400364     	ldrb	w4, [x27]
    7390: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007390:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x106b
    7394: 91000000     	add	x0, x0, #0x0
		0000000000007394:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x106b
    7398: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007398:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    739c: 91000021     	add	x1, x1, #0x0
		000000000000739c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    73a0: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		00000000000073a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdd0
    73a4: 91000063     	add	x3, x3, #0x0
		00000000000073a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdd0
    73a8: 5281cfc2     	mov	w2, #0xe7e              // =3710
    73ac: 94000000     	bl	0x73ac <tiktap_work_routine+0x13c>
		00000000000073ac:  R_AARCH64_CALL26	_printk
    73b0: 52800028     	mov	w8, #0x1                // =1
    73b4: 381f0268     	sturb	w8, [x19, #-0x10]
    73b8: aa1403e0     	mov	x0, x20
    73bc: 94000000     	bl	0x73bc <tiktap_work_routine+0x14c>
		00000000000073bc:  R_AARCH64_CALL26	mutex_unlock
    73c0: d5384108     	mrs	x8, SP_EL0
    73c4: f9438908     	ldr	x8, [x8, #0x710]
    73c8: f85f83a9     	ldur	x9, [x29, #-0x8]
    73cc: eb09011f     	cmp	x8, x9
    73d0: 54001601     	b.ne	0x7690 <tiktap_work_routine+0x420>
    73d4: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    73d8: a94757f6     	ldp	x22, x21, [sp, #0x70]
    73dc: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    73e0: a94567fa     	ldp	x26, x25, [sp, #0x50]
    73e4: a9446ffc     	ldp	x28, x27, [sp, #0x40]
    73e8: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    73ec: 910243ff     	add	sp, sp, #0x90
    73f0: d50323bf     	autiasp
    73f4: d65f03c0     	ret
    73f8: aa1403e0     	mov	x0, x20
    73fc: 381f1277     	sturb	w23, [x19, #-0xf]
    7400: 94000000     	bl	0x7400 <tiktap_work_routine+0x190>
		0000000000007400:  R_AARCH64_CALL26	mutex_unlock
    7404: d10ae274     	sub	x20, x19, #0x2b8
    7408: aa1403e0     	mov	x0, x20
    740c: 94000000     	bl	0x740c <tiktap_work_routine+0x19c>
		000000000000740c:  R_AARCH64_CALL26	mutex_lock
    7410: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007410:  R_AARCH64_ADR_PREL_PG_HI21	aw_pm_qos_req_vb
    7414: 91000000     	add	x0, x0, #0x0
		0000000000007414:  R_AARCH64_ADD_ABS_LO12_NC	aw_pm_qos_req_vb
    7418: 94000000     	bl	0x7418 <tiktap_work_routine+0x1a8>
		0000000000007418:  R_AARCH64_CALL26	cpu_latency_qos_request_active
    741c: 370000a0     	tbnz	w0, #0x0, 0x7430 <tiktap_work_routine+0x1c0>
    7420: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007420:  R_AARCH64_ADR_PREL_PG_HI21	aw_pm_qos_req_vb
    7424: 91000000     	add	x0, x0, #0x0
		0000000000007424:  R_AARCH64_ADD_ABS_LO12_NC	aw_pm_qos_req_vb
    7428: 2a1f03e1     	mov	w1, wzr
    742c: 94000000     	bl	0x742c <tiktap_work_routine+0x1bc>
		000000000000742c:  R_AARCH64_CALL26	cpu_latency_qos_add_request
    7430: 910063e0     	add	x0, sp, #0x18
    7434: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    7438: 94000000     	bl	0x7438 <tiktap_work_routine+0x1c8>
		0000000000007438:  R_AARCH64_CALL26	ktime_get_coarse_real_ts64
    743c: 910063e0     	add	x0, sp, #0x18
    7440: 94000000     	bl	0x7440 <tiktap_work_routine+0x1d0>
		0000000000007440:  R_AARCH64_CALL26	timespec64_to_jiffies
    7444: 94000000     	bl	0x7444 <tiktap_work_routine+0x1d4>
		0000000000007444:  R_AARCH64_CALL26	jiffies_to_msecs
    7448: 2a0003f7     	mov	w23, w0
    744c: 910063e0     	add	x0, sp, #0x18
    7450: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    7454: 94000000     	bl	0x7454 <tiktap_work_routine+0x1e4>
		0000000000007454:  R_AARCH64_CALL26	ktime_get_coarse_real_ts64
    7458: 910063e0     	add	x0, sp, #0x18
    745c: 94000000     	bl	0x745c <tiktap_work_routine+0x1ec>
		000000000000745c:  R_AARCH64_CALL26	timespec64_to_jiffies
    7460: 94000000     	bl	0x7460 <tiktap_work_routine+0x1f0>
		0000000000007460:  R_AARCH64_CALL26	jiffies_to_msecs
    7464: 110c82e8     	add	w8, w23, #0x320
    7468: 6b08001f     	cmp	w0, w8
    746c: 54000149     	b.ls	0x7494 <tiktap_work_routine+0x224>
    7470: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007470:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x266
    7474: 91000000     	add	x0, x0, #0x0
		0000000000007474:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x266
    7478: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007478:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    747c: 91000021     	add	x1, x1, #0x0
		000000000000747c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7480: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		0000000000007480:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdd0
    7484: 91000063     	add	x3, x3, #0x0
		0000000000007484:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdd0
    7488: 5281d2c2     	mov	w2, #0xe96              // =3734
    748c: 94000000     	bl	0x748c <tiktap_work_routine+0x21c>
		000000000000748c:  R_AARCH64_CALL26	_printk
    7490: 14000078     	b	0x7670 <tiktap_work_routine+0x400>
    7494: 2a1f03f6     	mov	w22, wzr
    7498: 90000018     	adrp	x24, 0x7000 <richtap_rtp_work+0x38>
		0000000000007498:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    749c: 91000318     	add	x24, x24, #0x0
		000000000000749c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    74a0: 90000019     	adrp	x25, 0x7000 <richtap_rtp_work+0x38>
		00000000000074a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdd0
    74a4: 91000339     	add	x25, x25, #0x0
		00000000000074a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdd0
    74a8: 9000001a     	adrp	x26, 0x7000 <richtap_rtp_work+0x38>
		00000000000074a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x152c
    74ac: 9100035a     	add	x26, x26, #0x0
		00000000000074ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x152c
    74b0: 1400000e     	b	0x74e8 <tiktap_work_routine+0x278>
    74b4: 370005dc     	tbnz	w28, #0x0, 0x756c <tiktap_work_routine+0x2fc>
    74b8: 52912b00     	mov	w0, #0x8958             // =35160
    74bc: 72a00820     	movk	w0, #0x41, lsl #16
    74c0: 94000000     	bl	0x74c0 <tiktap_work_routine+0x250>
		00000000000074c0:  R_AARCH64_CALL26	__const_udelay
    74c4: 910063e0     	add	x0, sp, #0x18
    74c8: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    74cc: 94000000     	bl	0x74cc <tiktap_work_routine+0x25c>
		00000000000074cc:  R_AARCH64_CALL26	ktime_get_coarse_real_ts64
    74d0: 910063e0     	add	x0, sp, #0x18
    74d4: 94000000     	bl	0x74d4 <tiktap_work_routine+0x264>
		00000000000074d4:  R_AARCH64_CALL26	timespec64_to_jiffies
    74d8: 94000000     	bl	0x74d8 <tiktap_work_routine+0x268>
		00000000000074d8:  R_AARCH64_CALL26	jiffies_to_msecs
    74dc: 110c82e8     	add	w8, w23, #0x320
    74e0: 6b08001f     	cmp	w0, w8
    74e4: 54fffc68     	b.hi	0x7470 <tiktap_work_routine+0x200>
    74e8: f85a0268     	ldur	x8, [x19, #-0x60]
    74ec: aa1503e0     	mov	x0, x21
    74f0: f940bd08     	ldr	x8, [x8, #0x178]
    74f4: b85fc110     	ldur	w16, [x8, #-0x4]
    74f8: 72870a91     	movk	w17, #0x3854
    74fc: 72af0971     	movk	w17, #0x784b, lsl #16
    7500: 6b11021f     	cmp	w16, w17
    7504: 54000040     	b.eq	0x750c <tiktap_work_routine+0x29c>
    7508: d4304500     	brk	#0x8228
    750c: d63f0100     	blr	x8
    7510: f85a0268     	ldur	x8, [x19, #-0x60]
    7514: 2a0003fc     	mov	w28, w0
    7518: aa1503e0     	mov	x0, x21
    751c: f940b108     	ldr	x8, [x8, #0x160]
    7520: b85fc110     	ldur	w16, [x8, #-0x4]
    7524: 72870a91     	movk	w17, #0x3854
    7528: 72af0971     	movk	w17, #0x784b, lsl #16
    752c: 6b11021f     	cmp	w16, w17
    7530: 54000040     	b.eq	0x7538 <tiktap_work_routine+0x2c8>
    7534: d4304500     	brk	#0x8228
    7538: d63f0100     	blr	x8
    753c: 72000c1f     	tst	w0, #0xf
    7540: 54000840     	b.eq	0x7648 <tiktap_work_routine+0x3d8>
    7544: 385f0268     	ldurb	w8, [x19, #-0x10]
    7548: 39400364     	ldrb	w4, [x27]
    754c: 370006e8     	tbnz	w8, #0x0, 0x7628 <tiktap_work_routine+0x3b8>
    7550: 7101549f     	cmp	w4, #0x55
    7554: 54fffb00     	b.eq	0x74b4 <tiktap_work_routine+0x244>
    7558: 7103fc9f     	cmp	w4, #0xff
    755c: 54000660     	b.eq	0x7628 <tiktap_work_routine+0x3b8>
    7560: 7102a89f     	cmp	w4, #0xaa
    7564: 54fffaa1     	b.ne	0x74b8 <tiktap_work_routine+0x248>
    7568: 14000030     	b	0x7628 <tiktap_work_routine+0x3b8>
    756c: 39400765     	ldrb	w5, [x27, #0x1]
    7570: 79c00766     	ldrsh	w6, [x27, #0x2]
    7574: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007574:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x868
    7578: 91000000     	add	x0, x0, #0x0
		0000000000007578:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x868
    757c: aa1803e1     	mov	x1, x24
    7580: 5281d4e2     	mov	w2, #0xea7              // =3751
    7584: aa1903e3     	mov	x3, x25
    7588: 2a1603e4     	mov	w4, w22
    758c: 94000000     	bl	0x758c <tiktap_work_routine+0x31c>
		000000000000758c:  R_AARCH64_CALL26	_printk
    7590: aa1b03f7     	mov	x23, x27
    7594: 79c00764     	ldrsh	w4, [x27, #0x2]
    7598: 39400365     	ldrb	w5, [x27]
    759c: 38418ee6     	ldrb	w6, [x23, #0x18]!
    75a0: 39406767     	ldrb	w7, [x27, #0x19]
    75a4: 39408b68     	ldrb	w8, [x27, #0x22]
    75a8: 39409369     	ldrb	w9, [x27, #0x24]
    75ac: aa1a03e0     	mov	x0, x26
    75b0: aa1803e1     	mov	x1, x24
    75b4: 5281d562     	mov	w2, #0xeab              // =3755
    75b8: aa1903e3     	mov	x3, x25
    75bc: b9000be9     	str	w9, [sp, #0x8]
    75c0: b90003e8     	str	w8, [sp]
    75c4: 94000000     	bl	0x75c4 <tiktap_work_routine+0x354>
		00000000000075c4:  R_AARCH64_CALL26	_printk
    75c8: f85a0268     	ldur	x8, [x19, #-0x60]
    75cc: 79c00762     	ldrsh	w2, [x27, #0x2]
    75d0: aa1503e0     	mov	x0, x21
    75d4: aa1703e1     	mov	x1, x23
    75d8: f9406908     	ldr	x8, [x8, #0xd0]
    75dc: b85fc110     	ldur	w16, [x8, #-0x4]
    75e0: 72965371     	movk	w17, #0xb29b
    75e4: 72b8d4f1     	movk	w17, #0xc6a7, lsl #16
    75e8: 6b11021f     	cmp	w16, w17
    75ec: 54000040     	b.eq	0x75f4 <tiktap_work_routine+0x384>
    75f0: d4304500     	brk	#0x8228
    75f4: d63f0100     	blr	x8
    75f8: 52801548     	mov	w8, #0xaa               // =170
    75fc: 910063e0     	add	x0, sp, #0x18
    7600: 39000368     	strb	w8, [x27]
    7604: f940077b     	ldr	x27, [x27, #0x8]
    7608: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    760c: 94000000     	bl	0x760c <tiktap_work_routine+0x39c>
		000000000000760c:  R_AARCH64_CALL26	ktime_get_coarse_real_ts64
    7610: 910063e0     	add	x0, sp, #0x18
    7614: 94000000     	bl	0x7614 <tiktap_work_routine+0x3a4>
		0000000000007614:  R_AARCH64_CALL26	timespec64_to_jiffies
    7618: 94000000     	bl	0x7618 <tiktap_work_routine+0x3a8>
		0000000000007618:  R_AARCH64_CALL26	jiffies_to_msecs
    761c: 2a0003f7     	mov	w23, w0
    7620: 110006d6     	add	w22, w22, #0x1
    7624: 17ffffa8     	b	0x74c4 <tiktap_work_routine+0x254>
    7628: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007628:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf10
    762c: 91000000     	add	x0, x0, #0x0
		000000000000762c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf10
    7630: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007630:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7634: 91000021     	add	x1, x1, #0x0
		0000000000007634:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7638: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		0000000000007638:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdd0
    763c: 91000063     	add	x3, x3, #0x0
		000000000000763c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdd0
    7640: 5281d462     	mov	w2, #0xea3              // =3747
    7644: 1400000a     	b	0x766c <tiktap_work_routine+0x3fc>
    7648: 90000008     	adrp	x8, 0x7000 <richtap_rtp_work+0x38>
		0000000000007648:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xecf
    764c: 91000108     	add	x8, x8, #0x0
		000000000000764c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xecf
    7650: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007650:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7654: 91000021     	add	x1, x1, #0x0
		0000000000007654:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7658: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		0000000000007658:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdd0
    765c: 91000063     	add	x3, x3, #0x0
		000000000000765c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdd0
    7660: 12001c04     	and	w4, w0, #0xff
    7664: aa0803e0     	mov	x0, x8
    7668: 5281d3a2     	mov	w2, #0xe9d              // =3741
    766c: 94000000     	bl	0x766c <tiktap_work_routine+0x3fc>
		000000000000766c:  R_AARCH64_CALL26	_printk
    7670: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007670:  R_AARCH64_ADR_PREL_PG_HI21	aw_pm_qos_req_vb
    7674: 91000000     	add	x0, x0, #0x0
		0000000000007674:  R_AARCH64_ADD_ABS_LO12_NC	aw_pm_qos_req_vb
    7678: 94000000     	bl	0x7678 <tiktap_work_routine+0x408>
		0000000000007678:  R_AARCH64_CALL26	cpu_latency_qos_request_active
    767c: 3607e9a0     	tbz	w0, #0x0, 0x73b0 <tiktap_work_routine+0x140>
    7680: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007680:  R_AARCH64_ADR_PREL_PG_HI21	aw_pm_qos_req_vb
    7684: 91000000     	add	x0, x0, #0x0
		0000000000007684:  R_AARCH64_ADD_ABS_LO12_NC	aw_pm_qos_req_vb
    7688: 94000000     	bl	0x7688 <tiktap_work_routine+0x418>
		0000000000007688:  R_AARCH64_CALL26	cpu_latency_qos_remove_request
    768c: 17ffff49     	b	0x73b0 <tiktap_work_routine+0x140>
    7690: 94000000     	bl	0x7690 <tiktap_work_routine+0x420>
		0000000000007690:  R_AARCH64_CALL26	__stack_chk_fail
