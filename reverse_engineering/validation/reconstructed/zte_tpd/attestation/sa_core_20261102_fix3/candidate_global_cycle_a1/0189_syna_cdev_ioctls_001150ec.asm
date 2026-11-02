
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001f590 <syna_cdev_ioctls>:
   1f590: d503233f     	paciasp
   1f594: d10643ff     	sub	sp, sp, #0x190
   1f598: a9137bfd     	stp	x29, x30, [sp, #0x130]
   1f59c: a9146ffc     	stp	x28, x27, [sp, #0x140]
   1f5a0: a91567fa     	stp	x26, x25, [sp, #0x150]
   1f5a4: a9165ff8     	stp	x24, x23, [sp, #0x160]
   1f5a8: a91757f6     	stp	x22, x21, [sp, #0x170]
   1f5ac: a9184ff4     	stp	x20, x19, [sp, #0x180]
   1f5b0: 9104c3fd     	add	x29, sp, #0x130
   1f5b4: d5384108     	mrs	x8, SP_EL0
   1f5b8: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f5b8:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data
   1f5bc: 91000000     	add	x0, x0, #0x0
		000000000001f5bc:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data
   1f5c0: f9438908     	ldr	x8, [x8, #0x710]
   1f5c4: aa0203f3     	mov	x19, x2
   1f5c8: 2a0103f5     	mov	w21, w1
   1f5cc: f81f03a8     	stur	x8, [x29, #-0x10]
   1f5d0: f8450408     	ldr	x8, [x0], #0x50
   1f5d4: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   1f5d8: f9405514     	ldr	x20, [x8, #0xa8]
   1f5dc: 94000000     	bl	0x1f5dc <syna_cdev_ioctls+0x4c>
		000000000001f5dc:  R_AARCH64_CALL26	mutex_lock
   1f5e0: 12001eb6     	and	w22, w21, #0xff
   1f5e4: 71003edf     	cmp	w22, #0xf
   1f5e8: 540001e8     	b.hi	0x1f624 <syna_cdev_ioctls+0x94>
   1f5ec: 710006df     	cmp	w22, #0x1
   1f5f0: 5400022c     	b.gt	0x1f634 <syna_cdev_ioctls+0xa4>
   1f5f4: 34000fd6     	cbz	w22, 0x1f7ec <syna_cdev_ioctls+0x25c>
   1f5f8: 710006df     	cmp	w22, #0x1
   1f5fc: 54008c81     	b.ne	0x2078c <syna_cdev_ioctls+0x11fc>
   1f600: f9413a89     	ldr	x9, [x20, #0x270]
   1f604: f9402128     	ldr	x8, [x9, #0x40]
   1f608: b4001208     	cbz	x8, 0x1f848 <syna_cdev_ioctls+0x2b8>
   1f60c: f100067f     	cmp	x19, #0x1
   1f610: 54001200     	b.eq	0x1f850 <syna_cdev_ioctls+0x2c0>
   1f614: b500bb53     	cbnz	x19, 0x20d7c <syna_cdev_ioctls+0x17ec>
   1f618: 91002120     	add	x0, x9, #0x8
   1f61c: 2a1f03e1     	mov	w1, wzr
   1f620: 1400008e     	b	0x1f858 <syna_cdev_ioctls+0x2c8>
   1f624: 710042df     	cmp	w22, #0x10
   1f628: 54000161     	b.ne	0x1f654 <syna_cdev_ioctls+0xc4>
   1f62c: 52800036     	mov	w22, #0x1               // =1
   1f630: 140005d4     	b	0x20d80 <syna_cdev_ioctls+0x17f0>
   1f634: 71000adf     	cmp	w22, #0x2
   1f638: 5400ba20     	b.eq	0x20d7c <syna_cdev_ioctls+0x17ec>
   1f63c: 71000edf     	cmp	w22, #0x3
   1f640: 54008a61     	b.ne	0x2078c <syna_cdev_ioctls+0x11fc>
   1f644: 52800028     	mov	w8, #0x1                // =1
   1f648: 2a1f03f6     	mov	w22, wzr
   1f64c: 39161288     	strb	w8, [x20, #0x584]
   1f650: 140005cc     	b	0x20d80 <syna_cdev_ioctls+0x17f0>
   1f654: d538411a     	mrs	x26, SP_EL0
   1f658: 39411b48     	ldrb	w8, [x26, #0x46]
   1f65c: d378de7b     	lsl	x27, x19, #8
   1f660: 37280088     	tbnz	w8, #0x5, 0x1f670 <syna_cdev_ioctls+0xe0>
   1f664: f9400349     	ldr	x9, [x26]
   1f668: aa1303e8     	mov	x8, x19
   1f66c: 36d00049     	tbz	w9, #0x1a, 0x1f674 <syna_cdev_ioctls+0xe4>
   1f670: 8a9b2268     	and	x8, x19, x27, asr #8
   1f674: b27c8be9     	mov	x9, #0x7ffffffff0       // =549755813872
   1f678: eb09011f     	cmp	x8, x9
   1f67c: 54008088     	b.hi	0x2068c <syna_cdev_ioctls+0x10fc>
   1f680: d503201f     	nop
   1f684: d53b4228     	mrs	x8, DAIF
   1f688: d50343df     	msr	DAIFSet, #0x3
   1f68c: f9400749     	ldr	x9, [x26, #0x8]
   1f690: d538202a     	mrs	x10, TTBR1_EL1
   1f694: aa0903eb     	mov	x11, x9
   1f698: b340bd4b     	bfxil	x11, x10, #0, #48
   1f69c: d518202b     	msr	TTBR1_EL1, x11
   1f6a0: d5182009     	msr	TTBR0_EL1, x9
   1f6a4: d5033fdf     	isb
   1f6a8: d51b4228     	msr	DAIF, x8
   1f6ac: 9248fa61     	and	x1, x19, #0xff7fffffffffffff
   1f6b0: 910023e0     	add	x0, sp, #0x8
   1f6b4: 52800202     	mov	w2, #0x10               // =16
   1f6b8: 94000000     	bl	0x1f6b8 <syna_cdev_ioctls+0x128>
		000000000001f6b8:  R_AARCH64_CALL26	__arch_copy_from_user
   1f6bc: d503201f     	nop
   1f6c0: d53b4228     	mrs	x8, DAIF
   1f6c4: d50343df     	msr	DAIFSet, #0x3
   1f6c8: d5382029     	mrs	x9, TTBR1_EL1
   1f6cc: 9240bd29     	and	x9, x9, #0xffffffffffff
   1f6d0: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   1f6d4: d518200a     	msr	TTBR0_EL1, x10
   1f6d8: d5182029     	msr	TTBR1_EL1, x9
   1f6dc: d5033fdf     	isb
   1f6e0: d51b4228     	msr	DAIF, x8
   1f6e4: b5007d60     	cbnz	x0, 0x20690 <syna_cdev_ioctls+0x1100>
   1f6e8: b9400ff7     	ldr	w23, [sp, #0xc]
   1f6ec: 714006ff     	cmp	w23, #0x1, lsl #12      // =0x1000
   1f6f0: 54007ee8     	b.hi	0x206cc <syna_cdev_ioctls+0x113c>
   1f6f4: 12001ea8     	and	w8, w21, #0xff
   1f6f8: 51004508     	sub	w8, w8, #0x11
   1f6fc: 7100451f     	cmp	w8, #0x11
   1f700: 5400b9c8     	b.hi	0x20e38 <syna_cdev_ioctls+0x18a8>
   1f704: 90000009     	adrp	x9, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f704:  R_AARCH64_ADR_PREL_PG_HI21	syna_cdev_ioctls_rodata_10c8
   1f708: 91000129     	add	x9, x9, #0x0
		000000000001f708:  R_AARCH64_ADD_ABS_LO12_NC	syna_cdev_ioctls_rodata_10c8
   1f70c: f9400bf5     	ldr	x21, [sp, #0x10]
   1f710: 1000000a     	adr	x10, 0x1f710 <syna_cdev_ioctls+0x180>
   1f714: b8a8792b     	ldrsw	x11, [x9, x8, lsl #2]
   1f718: 8b0b014a     	add	x10, x10, x11
   1f71c: d61f0140     	br	x10
   1f720: 39560a88     	ldrb	w8, [x20, #0x582]
   1f724: b9400be3     	ldr	w3, [sp, #0x8]
   1f728: b90023ff     	str	wzr, [sp, #0x20]
   1f72c: 3600ba48     	tbz	w8, #0x0, 0x20e74 <syna_cdev_ioctls+0x18e4>
   1f730: b9457e88     	ldr	w8, [x20, #0x57c]
   1f734: 71000d1f     	cmp	w8, #0x3
   1f738: 5400c040     	b.eq	0x20f40 <syna_cdev_ioctls+0x19b0>
   1f73c: 710012ff     	cmp	w23, #0x4
   1f740: 5400c8a3     	b.lo	0x21054 <syna_cdev_ioctls+0x1ac4>
   1f744: 71000c7f     	cmp	w3, #0x3
   1f748: 5400c869     	b.ls	0x21054 <syna_cdev_ioctls+0x1ac4>
   1f74c: f9413a98     	ldr	x24, [x20, #0x270]
   1f750: f9402308     	ldr	x8, [x24, #0x40]
   1f754: b400cf68     	cbz	x8, 0x21140 <syna_cdev_ioctls+0x1bb0>
   1f758: 710016ff     	cmp	w23, #0x5
   1f75c: 5400fb22     	b.hs	0x216c0 <syna_cdev_ioctls+0x2130>
   1f760: 910083e0     	add	x0, sp, #0x20
   1f764: aa1703e1     	mov	x1, x23
   1f768: 2a1f03e2     	mov	w2, wzr
   1f76c: 94000000     	bl	0x1f76c <syna_cdev_ioctls+0x1dc>
		000000000001f76c:  R_AARCH64_CALL26	__check_object_size
   1f770: 39411b48     	ldrb	w8, [x26, #0x46]
   1f774: 37280088     	tbnz	w8, #0x5, 0x1f784 <syna_cdev_ioctls+0x1f4>
   1f778: f9400349     	ldr	x9, [x26]
   1f77c: aa1503e8     	mov	x8, x21
   1f780: 36d00069     	tbz	w9, #0x1a, 0x1f78c <syna_cdev_ioctls+0x1fc>
   1f784: d378dea8     	lsl	x8, x21, #8
   1f788: 8a8822a8     	and	x8, x21, x8, asr #8
   1f78c: d2c01009     	mov	x9, #0x8000000000       // =549755813888
   1f790: aa1703f6     	mov	x22, x23
   1f794: cb170129     	sub	x9, x9, x23
   1f798: eb08013f     	cmp	x9, x8
   1f79c: 54008622     	b.hs	0x20860 <syna_cdev_ioctls+0x12d0>
   1f7a0: cb1602e8     	sub	x8, x23, x22
   1f7a4: 52800089     	mov	w9, #0x4                // =4
   1f7a8: eb080129     	subs	x9, x9, x8
   1f7ac: 9a8933e1     	csel	x1, xzr, x9, lo
   1f7b0: eb16003f     	cmp	x1, x22
   1f7b4: 5400fa63     	b.lo	0x21700 <syna_cdev_ioctls+0x2170>
   1f7b8: 910083e9     	add	x9, sp, #0x20
   1f7bc: 2a1f03e1     	mov	w1, wzr
   1f7c0: aa1603e2     	mov	x2, x22
   1f7c4: 8b080120     	add	x0, x9, x8
   1f7c8: 94000000     	bl	0x1f7c8 <syna_cdev_ioctls+0x238>
		000000000001f7c8:  R_AARCH64_CALL26	memset
   1f7cc: 2a1603f7     	mov	w23, w22
   1f7d0: 340087f6     	cbz	w22, 0x208cc <syna_cdev_ioctls+0x133c>
   1f7d4: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f7d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18bba
   1f7d8: 91000000     	add	x0, x0, #0x0
		000000000001f7d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18bba
   1f7dc: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f7dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae09
   1f7e0: 91000021     	add	x1, x1, #0x0
		000000000001f7e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae09
   1f7e4: 2a1703e2     	mov	w2, w23
   1f7e8: 1400066c     	b	0x21198 <syna_cdev_ioctls+0x1c08>
   1f7ec: f9400280     	ldr	x0, [x20]
   1f7f0: b9420c01     	ldr	w1, [x0, #0x20c]
   1f7f4: 94000000     	bl	0x1f7f4 <syna_cdev_ioctls+0x264>
		000000000001f7f4:  R_AARCH64_CALL26	syna_tcm_reset
   1f7f8: 2a0003f6     	mov	w22, w0
   1f7fc: 37f87d80     	tbnz	w0, #0x1f, 0x207ac <syna_cdev_ioctls+0x121c>
   1f800: f9400288     	ldr	x8, [x20]
   1f804: 39402508     	ldrb	w8, [x8, #0x9]
   1f808: 7100051f     	cmp	w8, #0x1
   1f80c: 5400aba1     	b.ne	0x20d80 <syna_cdev_ioctls+0x17f0>
   1f810: f9435e88     	ldr	x8, [x20, #0x6b8]
   1f814: aa1403e0     	mov	x0, x20
   1f818: b85fc110     	ldur	w16, [x8, #-0x4]
   1f81c: 7288e391     	movk	w17, #0x471c
   1f820: 72b5c411     	movk	w17, #0xae20, lsl #16
   1f824: 6b11021f     	cmp	w16, w17
   1f828: 54000040     	b.eq	0x1f830 <syna_cdev_ioctls+0x2a0>
   1f82c: d4304500     	brk	#0x8228
   1f830: d63f0100     	blr	x8
   1f834: 2a0003f6     	mov	w22, w0
   1f838: 36f8aa40     	tbz	w0, #0x1f, 0x20d80 <syna_cdev_ioctls+0x17f0>
   1f83c: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f83c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x179ee
   1f840: 91000000     	add	x0, x0, #0x0
		000000000001f840:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x179ee
   1f844: 140003dc     	b	0x207b4 <syna_cdev_ioctls+0x1224>
   1f848: 128002b6     	mov	w22, #-0x16             // =-22
   1f84c: 1400054d     	b	0x20d80 <syna_cdev_ioctls+0x17f0>
   1f850: 91002120     	add	x0, x9, #0x8
   1f854: 52800021     	mov	w1, #0x1                // =1
   1f858: b85fc110     	ldur	w16, [x8, #-0x4]
   1f85c: 728c3631     	movk	w17, #0x61b1
   1f860: 72a685d1     	movk	w17, #0x342e, lsl #16
   1f864: 6b11021f     	cmp	w16, w17
   1f868: 54000040     	b.eq	0x1f870 <syna_cdev_ioctls+0x2e0>
   1f86c: d4304500     	brk	#0x8228
   1f870: d63f0100     	blr	x8
   1f874: 2a0003f6     	mov	w22, w0
   1f878: 14000542     	b	0x20d80 <syna_cdev_ioctls+0x17f0>
   1f87c: 39560a88     	ldrb	w8, [x20, #0x582]
   1f880: b9400bf6     	ldr	w22, [sp, #0x8]
   1f884: b9001fff     	str	wzr, [sp, #0x1c]
   1f888: 3600ae28     	tbz	w8, #0x0, 0x20e4c <syna_cdev_ioctls+0x18bc>
   1f88c: b9457e88     	ldr	w8, [x20, #0x57c]
   1f890: 71000d1f     	cmp	w8, #0x3
   1f894: 5400b420     	b.eq	0x20f18 <syna_cdev_ioctls+0x1988>
   1f898: 710012ff     	cmp	w23, #0x4
   1f89c: 5400bd03     	b.lo	0x2103c <syna_cdev_ioctls+0x1aac>
   1f8a0: 71000edf     	cmp	w22, #0x3
   1f8a4: 5400bcc9     	b.ls	0x2103c <syna_cdev_ioctls+0x1aac>
   1f8a8: 39411b48     	ldrb	w8, [x26, #0x46]
   1f8ac: 37280088     	tbnz	w8, #0x5, 0x1f8bc <syna_cdev_ioctls+0x32c>
   1f8b0: f9400349     	ldr	x9, [x26]
   1f8b4: aa1503e8     	mov	x8, x21
   1f8b8: 36d00069     	tbz	w9, #0x1a, 0x1f8c4 <syna_cdev_ioctls+0x334>
   1f8bc: d378dea8     	lsl	x8, x21, #8
   1f8c0: 8a8822a8     	and	x8, x21, x8, asr #8
   1f8c4: b27e93e9     	mov	x9, #0x7ffffffffc       // =549755813884
   1f8c8: eb09011f     	cmp	x8, x9
   1f8cc: 5400c1c8     	b.hi	0x21104 <syna_cdev_ioctls+0x1b74>
   1f8d0: d503201f     	nop
   1f8d4: d53b4228     	mrs	x8, DAIF
   1f8d8: d50343df     	msr	DAIFSet, #0x3
   1f8dc: f9400749     	ldr	x9, [x26, #0x8]
   1f8e0: d538202a     	mrs	x10, TTBR1_EL1
   1f8e4: aa0903eb     	mov	x11, x9
   1f8e8: b340bd4b     	bfxil	x11, x10, #0, #48
   1f8ec: d518202b     	msr	TTBR1_EL1, x11
   1f8f0: d5182009     	msr	TTBR0_EL1, x9
   1f8f4: d5033fdf     	isb
   1f8f8: d51b4228     	msr	DAIF, x8
   1f8fc: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
   1f900: 910073e0     	add	x0, sp, #0x1c
   1f904: 52800082     	mov	w2, #0x4                // =4
   1f908: 94000000     	bl	0x1f908 <syna_cdev_ioctls+0x378>
		000000000001f908:  R_AARCH64_CALL26	__arch_copy_from_user
   1f90c: aa0003e2     	mov	x2, x0
   1f910: d503201f     	nop
   1f914: d53b4228     	mrs	x8, DAIF
   1f918: d50343df     	msr	DAIFSet, #0x3
   1f91c: d5382029     	mrs	x9, TTBR1_EL1
   1f920: 9240bd29     	and	x9, x9, #0xffffffffffff
   1f924: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   1f928: d518200a     	msr	TTBR0_EL1, x10
   1f92c: d5182029     	msr	TTBR1_EL1, x9
   1f930: d5033fdf     	isb
   1f934: d51b4228     	msr	DAIF, x8
   1f938: b500be82     	cbnz	x2, 0x21108 <syna_cdev_ioctls+0x1b78>
   1f93c: b9401ff7     	ldr	w23, [sp, #0x1c]
   1f940: f9427e88     	ldr	x8, [x20, #0x4f8]
   1f944: 9113e289     	add	x9, x20, #0x4f8
   1f948: eb09011f     	cmp	x8, x9
   1f94c: 540005e1     	b.ne	0x1fa08 <syna_cdev_ioctls+0x478>
   1f950: 2a1703e0     	mov	w0, w23
   1f954: 94000000     	bl	0x1f954 <syna_cdev_ioctls+0x3c4>
		000000000001f954:  R_AARCH64_CALL26	__msecs_to_jiffies
   1f958: b944f288     	ldr	w8, [x20, #0x4f0]
   1f95c: f100001f     	cmp	x0, #0x0
   1f960: 7a400904     	ccmp	w8, #0x0, #0x4, eq
   1f964: 9a9f0400     	csinc	x0, x0, xzr, eq
   1f968: 350004e8     	cbnz	w8, 0x1fa04 <syna_cdev_ioctls+0x474>
   1f96c: b40004c0     	cbz	x0, 0x1fa04 <syna_cdev_ioctls+0x474>
   1f970: 2a1703e0     	mov	w0, w23
   1f974: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   1f978: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   1f97c: f90013ff     	str	xzr, [sp, #0x20]
   1f980: 94000000     	bl	0x1f980 <syna_cdev_ioctls+0x3f0>
		000000000001f980:  R_AARCH64_CALL26	__msecs_to_jiffies
   1f984: aa0003f7     	mov	x23, x0
   1f988: 910083e0     	add	x0, sp, #0x20
   1f98c: 2a1f03e1     	mov	w1, wzr
   1f990: 94000000     	bl	0x1f990 <syna_cdev_ioctls+0x400>
		000000000001f990:  R_AARCH64_CALL26	init_wait_entry
   1f994: 91142280     	add	x0, x20, #0x508
   1f998: 910083e1     	add	x1, sp, #0x20
   1f99c: 52800022     	mov	w2, #0x1                // =1
   1f9a0: 94000000     	bl	0x1f9a0 <syna_cdev_ioctls+0x410>
		000000000001f9a0:  R_AARCH64_CALL26	prepare_to_wait_event
   1f9a4: b944f288     	ldr	w8, [x20, #0x4f0]
   1f9a8: f10002ff     	cmp	x23, #0x0
   1f9ac: 7a400904     	ccmp	w8, #0x0, #0x4, eq
   1f9b0: 9a9f06f7     	csinc	x23, x23, xzr, eq
   1f9b4: 35000208     	cbnz	w8, 0x1f9f4 <syna_cdev_ioctls+0x464>
   1f9b8: b40001f7     	cbz	x23, 0x1f9f4 <syna_cdev_ioctls+0x464>
   1f9bc: b5000240     	cbnz	x0, 0x1fa04 <syna_cdev_ioctls+0x474>
   1f9c0: aa1703e0     	mov	x0, x23
   1f9c4: 94000000     	bl	0x1f9c4 <syna_cdev_ioctls+0x434>
		000000000001f9c4:  R_AARCH64_CALL26	schedule_timeout
   1f9c8: aa0003f7     	mov	x23, x0
   1f9cc: 91142280     	add	x0, x20, #0x508
   1f9d0: 910083e1     	add	x1, sp, #0x20
   1f9d4: 52800022     	mov	w2, #0x1                // =1
   1f9d8: 94000000     	bl	0x1f9d8 <syna_cdev_ioctls+0x448>
		000000000001f9d8:  R_AARCH64_CALL26	prepare_to_wait_event
   1f9dc: b944f288     	ldr	w8, [x20, #0x4f0]
   1f9e0: f10002ff     	cmp	x23, #0x0
   1f9e4: 7a400904     	ccmp	w8, #0x0, #0x4, eq
   1f9e8: 9a9f06f7     	csinc	x23, x23, xzr, eq
   1f9ec: 35000048     	cbnz	w8, 0x1f9f4 <syna_cdev_ioctls+0x464>
   1f9f0: b5fffe77     	cbnz	x23, 0x1f9bc <syna_cdev_ioctls+0x42c>
   1f9f4: 91142280     	add	x0, x20, #0x508
   1f9f8: 910083e1     	add	x1, sp, #0x20
   1f9fc: 94000000     	bl	0x1f9fc <syna_cdev_ioctls+0x46c>
		000000000001f9fc:  R_AARCH64_CALL26	finish_wait
   1fa00: aa1703e0     	mov	x0, x23
   1fa04: 34009f20     	cbz	w0, 0x20de8 <syna_cdev_ioctls+0x1858>
   1fa08: 710006df     	cmp	w22, #0x1
   1fa0c: 540096eb     	b.lt	0x20ce8 <syna_cdev_ioctls+0x1758>
   1fa10: b944f288     	ldr	w8, [x20, #0x4f0]
   1fa14: 39411b49     	ldrb	w9, [x26, #0x46]
   1fa18: b9001fe8     	str	w8, [sp, #0x1c]
   1fa1c: 37280089     	tbnz	w9, #0x5, 0x1fa2c <syna_cdev_ioctls+0x49c>
   1fa20: f9400349     	ldr	x9, [x26]
   1fa24: aa1503e8     	mov	x8, x21
   1fa28: 36d00069     	tbz	w9, #0x1a, 0x1fa34 <syna_cdev_ioctls+0x4a4>
   1fa2c: d378dea8     	lsl	x8, x21, #8
   1fa30: 8a8822a8     	and	x8, x21, x8, asr #8
   1fa34: b27e93e9     	mov	x9, #0x7ffffffffc       // =549755813884
   1fa38: eb09011f     	cmp	x8, x9
   1fa3c: 54000368     	b.hi	0x1faa8 <syna_cdev_ioctls+0x518>
   1fa40: d503201f     	nop
   1fa44: d53b4228     	mrs	x8, DAIF
   1fa48: d50343df     	msr	DAIFSet, #0x3
   1fa4c: f9400749     	ldr	x9, [x26, #0x8]
   1fa50: d538202a     	mrs	x10, TTBR1_EL1
   1fa54: aa0903eb     	mov	x11, x9
   1fa58: b340bd4b     	bfxil	x11, x10, #0, #48
   1fa5c: d518202b     	msr	TTBR1_EL1, x11
   1fa60: d5182009     	msr	TTBR0_EL1, x9
   1fa64: d5033fdf     	isb
   1fa68: d51b4228     	msr	DAIF, x8
   1fa6c: 9248faa0     	and	x0, x21, #0xff7fffffffffffff
   1fa70: 910073e1     	add	x1, sp, #0x1c
   1fa74: 52800082     	mov	w2, #0x4                // =4
   1fa78: 94000000     	bl	0x1fa78 <syna_cdev_ioctls+0x4e8>
		000000000001fa78:  R_AARCH64_CALL26	__arch_copy_to_user
   1fa7c: d503201f     	nop
   1fa80: d53b4228     	mrs	x8, DAIF
   1fa84: d50343df     	msr	DAIFSet, #0x3
   1fa88: d5382029     	mrs	x9, TTBR1_EL1
   1fa8c: 9240bd29     	and	x9, x9, #0xffffffffffff
   1fa90: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   1fa94: d518200a     	msr	TTBR0_EL1, x10
   1fa98: d5182029     	msr	TTBR1_EL1, x9
   1fa9c: d5033fdf     	isb
   1faa0: d51b4228     	msr	DAIF, x8
   1faa4: 34009220     	cbz	w0, 0x20ce8 <syna_cdev_ioctls+0x1758>
   1faa8: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001faa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1956c
   1faac: 91000000     	add	x0, x0, #0x0
		000000000001faac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1956c
   1fab0: 1400059f     	b	0x2112c <syna_cdev_ioctls+0x1b9c>
   1fab4: f9400296     	ldr	x22, [x20]
   1fab8: 39560a88     	ldrb	w8, [x20, #0x582]
   1fabc: 390073ff     	strb	wzr, [sp, #0x1c]
   1fac0: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   1fac4: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   1fac8: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   1facc: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   1fad0: f90013ff     	str	xzr, [sp, #0x20]
   1fad4: 36009c68     	tbz	w8, #0x0, 0x20e60 <syna_cdev_ioctls+0x18d0>
   1fad8: b9457e88     	ldr	w8, [x20, #0x57c]
   1fadc: 71000d1f     	cmp	w8, #0x3
   1fae0: 5400a260     	b.eq	0x20f2c <syna_cdev_ioctls+0x199c>
   1fae4: 9000001c     	adrp	x28, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001fae4:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb4
   1fae8: b9400388     	ldr	w8, [x28]
		000000000001fae8:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   1faec: 11000d08     	add	w8, w8, #0x3
   1faf0: 6b17011f     	cmp	w8, w23
   1faf4: 5400a828     	b.hi	0x20ff8 <syna_cdev_ioctls+0x1a68>
   1faf8: b9400be2     	ldr	w2, [sp, #0x8]
   1fafc: 6b17005f     	cmp	w2, w23
   1fb00: 5400b528     	b.hi	0x211a4 <syna_cdev_ioctls+0x1c14>
   1fb04: 12820008     	mov	w8, #-0x1001            // =-4097
   1fb08: 0b080048     	add	w8, w2, w8
   1fb0c: 313ffd1f     	cmn	w8, #0xfff
   1fb10: 5400b4a9     	b.ls	0x211a4 <syna_cdev_ioctls+0x1c14>
   1fb14: 90000008     	adrp	x8, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001fb14:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x48
   1fb18: 39400102     	ldrb	w2, [x8]
		000000000001fb18:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   1fb1c: 3500b522     	cbnz	w2, 0x211c0 <syna_cdev_ioctls+0x1c30>
   1fb20: 90000019     	adrp	x25, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001fb20:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   1fb24: 91000339     	add	x25, x25, #0x0
		000000000001fb24:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x8
   1fb28: 91004320     	add	x0, x25, #0x10
   1fb2c: 94000000     	bl	0x1fb2c <syna_cdev_ioctls+0x59c>
		000000000001fb2c:  R_AARCH64_CALL26	mutex_lock
   1fb30: b940af28     	ldr	w8, [x25, #0xac]
   1fb34: 3941032a     	ldrb	w10, [x25, #0x40]
   1fb38: f9400320     	ldr	x0, [x25]
   1fb3c: 0aa87d09     	bic	w9, w8, w8, asr #31
   1fb40: b9400b28     	ldr	w8, [x25, #0x8]
   1fb44: 0b170134     	add	w20, w9, w23
   1fb48: 11000549     	add	w9, w10, #0x1
   1fb4c: 6b14011f     	cmp	w8, w20
   1fb50: 39010329     	strb	w9, [x25, #0x40]
   1fb54: 54006382     	b.hs	0x207c4 <syna_cdev_ioctls+0x1234>
   1fb58: b40000c0     	cbz	x0, 0x1fb70 <syna_cdev_ioctls+0x5e0>
   1fb5c: aa0003f8     	mov	x24, x0
   1fb60: 94000000     	bl	0x1fb60 <syna_cdev_ioctls+0x5d0>
		000000000001fb60:  R_AARCH64_CALL26	syna_request_managed_device
   1fb64: b400d420     	cbz	x0, 0x215e8 <syna_cdev_ioctls+0x2058>
   1fb68: aa1803e1     	mov	x1, x24
   1fb6c: 94000000     	bl	0x1fb6c <syna_cdev_ioctls+0x5dc>
		000000000001fb6c:  R_AARCH64_CALL26	devm_kfree
   1fb70: 94000000     	bl	0x1fb70 <syna_cdev_ioctls+0x5e0>
		000000000001fb70:  R_AARCH64_CALL26	syna_request_managed_device
   1fb74: b400d480     	cbz	x0, 0x21604 <syna_cdev_ioctls+0x2074>
   1fb78: 7100029f     	cmp	w20, #0x0
   1fb7c: 5400c7cd     	b.le	0x21474 <syna_cdev_ioctls+0x1ee4>
   1fb80: aa1403e1     	mov	x1, x20
   1fb84: 5281b802     	mov	w2, #0xdc0              // =3520
   1fb88: 94000000     	bl	0x1fb88 <syna_cdev_ioctls+0x5f8>
		000000000001fb88:  R_AARCH64_CALL26	devm_kmalloc
   1fb8c: 90000008     	adrp	x8, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001fb8c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   1fb90: f9000100     	str	x0, [x8]
		000000000001fb90:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   1fb94: b400d460     	cbz	x0, 0x21620 <syna_cdev_ioctls+0x2090>
   1fb98: 90000008     	adrp	x8, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001fb98:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   1fb9c: b9000114     	str	w20, [x8]
		000000000001fb9c:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0x10
   1fba0: 1400030a     	b	0x207c8 <syna_cdev_ioctls+0x1238>
   1fba4: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001fba4:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
   1fba8: 91000000     	add	x0, x0, #0x0
		000000000001fba8:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
   1fbac: 94000000     	bl	0x1fbac <syna_cdev_ioctls+0x61c>
		000000000001fbac:  R_AARCH64_CALL26	mutex_lock
   1fbb0: f9427e95     	ldr	x21, [x20, #0x4f8]
   1fbb4: 9113e296     	add	x22, x20, #0x4f8
   1fbb8: eb1602bf     	cmp	x21, x22
   1fbbc: 540003e0     	b.eq	0x1fc38 <syna_cdev_ioctls+0x6a8>
   1fbc0: d2802017     	mov	x23, #0x100             // =256
   1fbc4: f2fbd5b7     	movk	x23, #0xdead, lsl #48
   1fbc8: 14000004     	b	0x1fbd8 <syna_cdev_ioctls+0x648>
   1fbcc: f94002d5     	ldr	x21, [x22]
   1fbd0: eb1602bf     	cmp	x21, x22
   1fbd4: 54000320     	b.eq	0x1fc38 <syna_cdev_ioctls+0x6a8>
   1fbd8: f94006a8     	ldr	x8, [x21, #0x8]
   1fbdc: f9400109     	ldr	x9, [x8]
   1fbe0: eb15013f     	cmp	x9, x21
   1fbe4: 54000241     	b.ne	0x1fc2c <syna_cdev_ioctls+0x69c>
   1fbe8: f94002a9     	ldr	x9, [x21]
   1fbec: f940052a     	ldr	x10, [x9, #0x8]
   1fbf0: eb15015f     	cmp	x10, x21
   1fbf4: 540001c1     	b.ne	0x1fc2c <syna_cdev_ioctls+0x69c>
   1fbf8: f9000528     	str	x8, [x9, #0x8]
   1fbfc: f9000109     	str	x9, [x8]
   1fc00: f9400aa0     	ldr	x0, [x21, #0x10]
   1fc04: 91008ae8     	add	x8, x23, #0x22
   1fc08: a90022b7     	stp	x23, x8, [x21]
   1fc0c: 94000000     	bl	0x1fc0c <syna_cdev_ioctls+0x67c>
		000000000001fc0c:  R_AARCH64_CALL26	kfree
   1fc10: aa1503e0     	mov	x0, x21
   1fc14: 94000000     	bl	0x1fc14 <syna_cdev_ioctls+0x684>
		000000000001fc14:  R_AARCH64_CALL26	kfree
   1fc18: b944f288     	ldr	w8, [x20, #0x4f0]
   1fc1c: 34fffd88     	cbz	w8, 0x1fbcc <syna_cdev_ioctls+0x63c>
   1fc20: 51000508     	sub	w8, w8, #0x1
   1fc24: b904f288     	str	w8, [x20, #0x4f0]
   1fc28: 17ffffe9     	b	0x1fbcc <syna_cdev_ioctls+0x63c>
   1fc2c: aa1503e0     	mov	x0, x21
   1fc30: 94000000     	bl	0x1fc30 <syna_cdev_ioctls+0x6a0>
		000000000001fc30:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
   1fc34: 17fffff3     	b	0x1fc00 <syna_cdev_ioctls+0x670>
   1fc38: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001fc38:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
   1fc3c: 91000000     	add	x0, x0, #0x0
		000000000001fc3c:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
   1fc40: 94000000     	bl	0x1fc40 <syna_cdev_ioctls+0x6b0>
		000000000001fc40:  R_AARCH64_CALL26	mutex_unlock
   1fc44: 39411b48     	ldrb	w8, [x26, #0x46]
   1fc48: 36288568     	tbz	w8, #0x5, 0x20cf4 <syna_cdev_ioctls+0x1764>
   1fc4c: 1400042d     	b	0x20d00 <syna_cdev_ioctls+0x1770>
   1fc50: 39560a88     	ldrb	w8, [x20, #0x582]
   1fc54: f9413a9c     	ldr	x28, [x20, #0x270]
   1fc58: b9001fff     	str	wzr, [sp, #0x1c]
   1fc5c: 36009168     	tbz	w8, #0x0, 0x20e88 <syna_cdev_ioctls+0x18f8>
   1fc60: b9457e88     	ldr	w8, [x20, #0x57c]
   1fc64: 71000d1f     	cmp	w8, #0x3
   1fc68: 54009760     	b.eq	0x20f54 <syna_cdev_ioctls+0x19c4>
   1fc6c: 71000eff     	cmp	w23, #0x3
   1fc70: 54009d09     	b.ls	0x21010 <syna_cdev_ioctls+0x1a80>
   1fc74: 39411b48     	ldrb	w8, [x26, #0x46]
   1fc78: 37280088     	tbnz	w8, #0x5, 0x1fc88 <syna_cdev_ioctls+0x6f8>
   1fc7c: f9400349     	ldr	x9, [x26]
   1fc80: aa1503e8     	mov	x8, x21
   1fc84: 36d00069     	tbz	w9, #0x1a, 0x1fc90 <syna_cdev_ioctls+0x700>
   1fc88: d378dea8     	lsl	x8, x21, #8
   1fc8c: 8a8822a8     	and	x8, x21, x8, asr #8
   1fc90: b27e93e9     	mov	x9, #0x7ffffffffc       // =549755813884
   1fc94: eb09011f     	cmp	x8, x9
   1fc98: 5400a628     	b.hi	0x2115c <syna_cdev_ioctls+0x1bcc>
   1fc9c: d503201f     	nop
   1fca0: d53b4228     	mrs	x8, DAIF
   1fca4: d50343df     	msr	DAIFSet, #0x3
   1fca8: f9400749     	ldr	x9, [x26, #0x8]
   1fcac: d538202a     	mrs	x10, TTBR1_EL1
   1fcb0: aa0903eb     	mov	x11, x9
   1fcb4: b340bd4b     	bfxil	x11, x10, #0, #48
   1fcb8: d518202b     	msr	TTBR1_EL1, x11
   1fcbc: d5182009     	msr	TTBR0_EL1, x9
   1fcc0: d5033fdf     	isb
   1fcc4: d51b4228     	msr	DAIF, x8
   1fcc8: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
   1fccc: 910073e0     	add	x0, sp, #0x1c
   1fcd0: 52800082     	mov	w2, #0x4                // =4
   1fcd4: 94000000     	bl	0x1fcd4 <syna_cdev_ioctls+0x744>
		000000000001fcd4:  R_AARCH64_CALL26	__arch_copy_from_user
   1fcd8: d503201f     	nop
   1fcdc: d53b4228     	mrs	x8, DAIF
   1fce0: d50343df     	msr	DAIFSet, #0x3
   1fce4: d5382029     	mrs	x9, TTBR1_EL1
   1fce8: 9240bd29     	and	x9, x9, #0xffffffffffff
   1fcec: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   1fcf0: d518200a     	msr	TTBR0_EL1, x10
   1fcf4: d5182029     	msr	TTBR1_EL1, x9
   1fcf8: d5033fdf     	isb
   1fcfc: d51b4228     	msr	DAIF, x8
   1fd00: b500a300     	cbnz	x0, 0x21160 <syna_cdev_ioctls+0x1bd0>
   1fd04: b9401ff6     	ldr	w22, [sp, #0x1c]
   1fd08: f9427e88     	ldr	x8, [x20, #0x4f8]
   1fd0c: 9113e298     	add	x24, x20, #0x4f8
   1fd10: eb18011f     	cmp	x8, x24
   1fd14: 540005e1     	b.ne	0x1fdd0 <syna_cdev_ioctls+0x840>
   1fd18: 2a1603e0     	mov	w0, w22
   1fd1c: 94000000     	bl	0x1fd1c <syna_cdev_ioctls+0x78c>
		000000000001fd1c:  R_AARCH64_CALL26	__msecs_to_jiffies
   1fd20: b944f288     	ldr	w8, [x20, #0x4f0]
   1fd24: f100001f     	cmp	x0, #0x0
   1fd28: 7a400904     	ccmp	w8, #0x0, #0x4, eq
   1fd2c: 9a9f0400     	csinc	x0, x0, xzr, eq
   1fd30: 350004e8     	cbnz	w8, 0x1fdcc <syna_cdev_ioctls+0x83c>
   1fd34: b40004c0     	cbz	x0, 0x1fdcc <syna_cdev_ioctls+0x83c>
   1fd38: 2a1603e0     	mov	w0, w22
   1fd3c: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   1fd40: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   1fd44: f90013ff     	str	xzr, [sp, #0x20]
   1fd48: 94000000     	bl	0x1fd48 <syna_cdev_ioctls+0x7b8>
		000000000001fd48:  R_AARCH64_CALL26	__msecs_to_jiffies
   1fd4c: aa0003f6     	mov	x22, x0
   1fd50: 910083e0     	add	x0, sp, #0x20
   1fd54: 2a1f03e1     	mov	w1, wzr
   1fd58: 94000000     	bl	0x1fd58 <syna_cdev_ioctls+0x7c8>
		000000000001fd58:  R_AARCH64_CALL26	init_wait_entry
   1fd5c: 91142280     	add	x0, x20, #0x508
   1fd60: 910083e1     	add	x1, sp, #0x20
   1fd64: 52800022     	mov	w2, #0x1                // =1
   1fd68: 94000000     	bl	0x1fd68 <syna_cdev_ioctls+0x7d8>
		000000000001fd68:  R_AARCH64_CALL26	prepare_to_wait_event
   1fd6c: b944f288     	ldr	w8, [x20, #0x4f0]
   1fd70: f10002df     	cmp	x22, #0x0
   1fd74: 7a400904     	ccmp	w8, #0x0, #0x4, eq
   1fd78: 9a9f06d6     	csinc	x22, x22, xzr, eq
   1fd7c: 35000208     	cbnz	w8, 0x1fdbc <syna_cdev_ioctls+0x82c>
   1fd80: b40001f6     	cbz	x22, 0x1fdbc <syna_cdev_ioctls+0x82c>
   1fd84: b5000240     	cbnz	x0, 0x1fdcc <syna_cdev_ioctls+0x83c>
   1fd88: aa1603e0     	mov	x0, x22
   1fd8c: 94000000     	bl	0x1fd8c <syna_cdev_ioctls+0x7fc>
		000000000001fd8c:  R_AARCH64_CALL26	schedule_timeout
   1fd90: aa0003f6     	mov	x22, x0
   1fd94: 91142280     	add	x0, x20, #0x508
   1fd98: 910083e1     	add	x1, sp, #0x20
   1fd9c: 52800022     	mov	w2, #0x1                // =1
   1fda0: 94000000     	bl	0x1fda0 <syna_cdev_ioctls+0x810>
		000000000001fda0:  R_AARCH64_CALL26	prepare_to_wait_event
   1fda4: b944f288     	ldr	w8, [x20, #0x4f0]
   1fda8: f10002df     	cmp	x22, #0x0
   1fdac: 7a400904     	ccmp	w8, #0x0, #0x4, eq
   1fdb0: 9a9f06d6     	csinc	x22, x22, xzr, eq
   1fdb4: 35000048     	cbnz	w8, 0x1fdbc <syna_cdev_ioctls+0x82c>
   1fdb8: b5fffe76     	cbnz	x22, 0x1fd84 <syna_cdev_ioctls+0x7f4>
   1fdbc: 91142280     	add	x0, x20, #0x508
   1fdc0: 910083e1     	add	x1, sp, #0x20
   1fdc4: 94000000     	bl	0x1fdc4 <syna_cdev_ioctls+0x834>
		000000000001fdc4:  R_AARCH64_CALL26	finish_wait
   1fdc8: aa1603e0     	mov	x0, x22
   1fdcc: 34008120     	cbz	w0, 0x20df0 <syna_cdev_ioctls+0x1860>
   1fdd0: f9400308     	ldr	x8, [x24]
   1fdd4: eb18011f     	cmp	x8, x24
   1fdd8: 54007360     	b.eq	0x20c44 <syna_cdev_ioctls+0x16b4>
   1fddc: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001fddc:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
   1fde0: 91000000     	add	x0, x0, #0x0
		000000000001fde0:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
   1fde4: 94000000     	bl	0x1fde4 <syna_cdev_ioctls+0x854>
		000000000001fde4:  R_AARCH64_CALL26	mutex_lock
   1fde8: f9400318     	ldr	x24, [x24]
   1fdec: b9401b19     	ldr	w25, [x24, #0x18]
   1fdf0: 6b17033f     	cmp	w25, w23
   1fdf4: 5400ad88     	b.hi	0x213a4 <syna_cdev_ioctls+0x1e14>
   1fdf8: f9400b16     	ldr	x22, [x24, #0x10]
   1fdfc: aa1903e1     	mov	x1, x25
   1fe00: 52800022     	mov	w2, #0x1                // =1
   1fe04: aa1603e0     	mov	x0, x22
   1fe08: 94000000     	bl	0x1fe08 <syna_cdev_ioctls+0x878>
		000000000001fe08:  R_AARCH64_CALL26	__check_object_size
   1fe0c: 39411b48     	ldrb	w8, [x26, #0x46]
   1fe10: 37280088     	tbnz	w8, #0x5, 0x1fe20 <syna_cdev_ioctls+0x890>
   1fe14: f9400349     	ldr	x9, [x26]
   1fe18: aa1503e8     	mov	x8, x21
   1fe1c: 36d00069     	tbz	w9, #0x1a, 0x1fe28 <syna_cdev_ioctls+0x898>
   1fe20: d378dea8     	lsl	x8, x21, #8
   1fe24: 8a8822a8     	and	x8, x21, x8, asr #8
   1fe28: d2c01009     	mov	x9, #0x8000000000       // =549755813888
   1fe2c: cb190129     	sub	x9, x9, x25
   1fe30: eb08013f     	cmp	x9, x8
   1fe34: 54000363     	b.lo	0x1fea0 <syna_cdev_ioctls+0x910>
   1fe38: d503201f     	nop
   1fe3c: d53b4228     	mrs	x8, DAIF
   1fe40: d50343df     	msr	DAIFSet, #0x3
   1fe44: f9400749     	ldr	x9, [x26, #0x8]
   1fe48: d538202a     	mrs	x10, TTBR1_EL1
   1fe4c: aa0903eb     	mov	x11, x9
   1fe50: b340bd4b     	bfxil	x11, x10, #0, #48
   1fe54: d518202b     	msr	TTBR1_EL1, x11
   1fe58: d5182009     	msr	TTBR0_EL1, x9
   1fe5c: d5033fdf     	isb
   1fe60: d51b4228     	msr	DAIF, x8
   1fe64: 9248faa0     	and	x0, x21, #0xff7fffffffffffff
   1fe68: aa1603e1     	mov	x1, x22
   1fe6c: aa1903e2     	mov	x2, x25
   1fe70: 94000000     	bl	0x1fe70 <syna_cdev_ioctls+0x8e0>
		000000000001fe70:  R_AARCH64_CALL26	__arch_copy_to_user
   1fe74: aa0003f9     	mov	x25, x0
   1fe78: d503201f     	nop
   1fe7c: d53b4228     	mrs	x8, DAIF
   1fe80: d50343df     	msr	DAIFSet, #0x3
   1fe84: d5382029     	mrs	x9, TTBR1_EL1
   1fe88: 9240bd29     	and	x9, x9, #0xffffffffffff
   1fe8c: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   1fe90: d518200a     	msr	TTBR0_EL1, x10
   1fe94: d5182029     	msr	TTBR1_EL1, x9
   1fe98: d5033fdf     	isb
   1fe9c: d51b4228     	msr	DAIF, x8
   1fea0: 3500a9b9     	cbnz	w25, 0x213d4 <syna_cdev_ioctls+0x1e44>
   1fea4: 2a1f03f6     	mov	w22, wzr
   1fea8: b9401b09     	ldr	w9, [x24, #0x18]
   1feac: f9400708     	ldr	x8, [x24, #0x8]
   1feb0: b9000be9     	str	w9, [sp, #0x8]
   1feb4: f9400109     	ldr	x9, [x8]
   1feb8: eb18013f     	cmp	x9, x24
   1febc: 5400a861     	b.ne	0x213c8 <syna_cdev_ioctls+0x1e38>
   1fec0: f9400309     	ldr	x9, [x24]
   1fec4: f940052a     	ldr	x10, [x9, #0x8]
   1fec8: eb18015f     	cmp	x10, x24
   1fecc: 5400a7e1     	b.ne	0x213c8 <syna_cdev_ioctls+0x1e38>
   1fed0: f9000528     	str	x8, [x9, #0x8]
   1fed4: f9000109     	str	x9, [x8]
   1fed8: d2802008     	mov	x8, #0x100              // =256
   1fedc: 52800449     	mov	w9, #0x22               // =34
   1fee0: f2fbd5a8     	movk	x8, #0xdead, lsl #48
   1fee4: aa090109     	orr	x9, x8, x9
   1fee8: a9002708     	stp	x8, x9, [x24]
   1feec: 35000059     	cbnz	w25, 0x1fef4 <syna_cdev_ioctls+0x964>
   1fef0: b9401b16     	ldr	w22, [x24, #0x18]
   1fef4: f9400b00     	ldr	x0, [x24, #0x10]
   1fef8: 94000000     	bl	0x1fef8 <syna_cdev_ioctls+0x968>
		000000000001fef8:  R_AARCH64_CALL26	kfree
   1fefc: aa1803e0     	mov	x0, x24
   1ff00: 94000000     	bl	0x1ff00 <syna_cdev_ioctls+0x970>
		000000000001ff00:  R_AARCH64_CALL26	kfree
   1ff04: b944f288     	ldr	w8, [x20, #0x4f0]
   1ff08: 34000068     	cbz	w8, 0x1ff14 <syna_cdev_ioctls+0x984>
   1ff0c: 51000508     	sub	w8, w8, #0x1
   1ff10: b904f288     	str	w8, [x20, #0x4f0]
   1ff14: 90000009     	adrp	x9, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001ff14:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb8
   1ff18: b9400129     	ldr	w9, [x9]
		000000000001ff18:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb8
   1ff1c: 6b09011f     	cmp	w8, w9
   1ff20: 540001e2     	b.hs	0x1ff5c <syna_cdev_ioctls+0x9cc>
   1ff24: f9413a88     	ldr	x8, [x20, #0x270]
   1ff28: 3942f108     	ldrb	w8, [x8, #0xbc]
   1ff2c: 37000188     	tbnz	w8, #0x0, 0x1ff5c <syna_cdev_ioctls+0x9cc>
   1ff30: f9402388     	ldr	x8, [x28, #0x40]
   1ff34: b4000148     	cbz	x8, 0x1ff5c <syna_cdev_ioctls+0x9cc>
   1ff38: 91002380     	add	x0, x28, #0x8
   1ff3c: 52800021     	mov	w1, #0x1                // =1
   1ff40: b85fc110     	ldur	w16, [x8, #-0x4]
   1ff44: 728c3631     	movk	w17, #0x61b1
   1ff48: 72a685d1     	movk	w17, #0x342e, lsl #16
   1ff4c: 6b11021f     	cmp	w16, w17
   1ff50: 54000040     	b.eq	0x1ff58 <syna_cdev_ioctls+0x9c8>
   1ff54: d4304500     	brk	#0x8228
   1ff58: d63f0100     	blr	x8
   1ff5c: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001ff5c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
   1ff60: 91000000     	add	x0, x0, #0x0
		000000000001ff60:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
   1ff64: 14000360     	b	0x20ce4 <syna_cdev_ioctls+0x1754>
   1ff68: b9400be3     	ldr	w3, [sp, #0x8]
   1ff6c: aa1403e0     	mov	x0, x20
   1ff70: aa1503e1     	mov	x1, x21
   1ff74: 2a1703e2     	mov	w2, w23
   1ff78: 940006a1     	bl	0x219fc <syna_spi_probe+0x2e0>
		000000000001ff78:  R_AARCH64_CALL26	syna_cdev_ioctl_raw_read
   1ff7c: 1400007f     	b	0x20178 <syna_cdev_ioctls+0xbe8>
   1ff80: b9400be2     	ldr	w2, [sp, #0x8]
   1ff84: 71004c5f     	cmp	w2, #0x13
   1ff88: 540078a9     	b.ls	0x20e9c <syna_cdev_ioctls+0x190c>
   1ff8c: 90000017     	adrp	x23, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001ff8c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x48
   1ff90: f9400298     	ldr	x24, [x20]
   1ff94: 394002e2     	ldrb	w2, [x23]
		000000000001ff94:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   1ff98: 35007ec2     	cbnz	w2, 0x20f70 <syna_cdev_ioctls+0x19e0>
   1ff9c: 90000019     	adrp	x25, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001ff9c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   1ffa0: 91000339     	add	x25, x25, #0x0
		000000000001ffa0:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x8
   1ffa4: 91004320     	add	x0, x25, #0x10
   1ffa8: 94000000     	bl	0x1ffa8 <syna_cdev_ioctls+0xa18>
		000000000001ffa8:  R_AARCH64_CALL26	mutex_lock
   1ffac: 39410328     	ldrb	w8, [x25, #0x40]
   1ffb0: b9400b36     	ldr	w22, [x25, #0x8]
   1ffb4: f9400320     	ldr	x0, [x25]
   1ffb8: 11000508     	add	w8, w8, #0x1
   1ffbc: 71004edf     	cmp	w22, #0x13
   1ffc0: 39010328     	strb	w8, [x25, #0x40]
   1ffc4: 54000248     	b.hi	0x2000c <syna_cdev_ioctls+0xa7c>
   1ffc8: b40000c0     	cbz	x0, 0x1ffe0 <syna_cdev_ioctls+0xa50>
   1ffcc: aa0003f6     	mov	x22, x0
   1ffd0: 94000000     	bl	0x1ffd0 <syna_cdev_ioctls+0xa40>
		000000000001ffd0:  R_AARCH64_CALL26	syna_request_managed_device
   1ffd4: b400a920     	cbz	x0, 0x214f8 <syna_cdev_ioctls+0x1f68>
   1ffd8: aa1603e1     	mov	x1, x22
   1ffdc: 94000000     	bl	0x1ffdc <syna_cdev_ioctls+0xa4c>
		000000000001ffdc:  R_AARCH64_CALL26	devm_kfree
   1ffe0: 94000000     	bl	0x1ffe0 <syna_cdev_ioctls+0xa50>
		000000000001ffe0:  R_AARCH64_CALL26	syna_request_managed_device
   1ffe4: b400a980     	cbz	x0, 0x21514 <syna_cdev_ioctls+0x1f84>
   1ffe8: 52800281     	mov	w1, #0x14               // =20
   1ffec: 5281b802     	mov	w2, #0xdc0              // =3520
   1fff0: 52800296     	mov	w22, #0x14              // =20
   1fff4: 94000000     	bl	0x1fff4 <syna_cdev_ioctls+0xa64>
		000000000001fff4:  R_AARCH64_CALL26	devm_kmalloc
   1fff8: 90000008     	adrp	x8, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001fff8:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   1fffc: f9000100     	str	x0, [x8]
		000000000001fffc:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   20000: b400a980     	cbz	x0, 0x21530 <syna_cdev_ioctls+0x1fa0>
   20004: 90000008     	adrp	x8, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020004:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   20008: b9000116     	str	w22, [x8]
		0000000000020008:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0x10
   2000c: 2a1603e2     	mov	w2, w22
   20010: 2a1f03e1     	mov	w1, wzr
   20014: 94000000     	bl	0x20014 <syna_cdev_ioctls+0xa84>
		0000000000020014:  R_AARCH64_CALL26	memset
   20018: f9400328     	ldr	x8, [x25]
   2001c: b9000f3f     	str	wzr, [x25, #0xc]
   20020: b900111f     	str	wzr, [x8, #0x10]
   20024: a9007d1f     	stp	xzr, xzr, [x8]
   20028: f9400321     	ldr	x1, [x25]
   2002c: b9403b08     	ldr	w8, [x24, #0x38]
   20030: 79000428     	strh	w8, [x1, #0x2]
   20034: b9403f08     	ldr	w8, [x24, #0x3c]
   20038: 79000828     	strh	w8, [x1, #0x4]
   2003c: 39400028     	ldrb	w8, [x1]
   20040: 39560a89     	ldrb	w9, [x20, #0x582]
   20044: 121f7908     	and	w8, w8, #0xfffffffe
   20048: 2a090108     	orr	w8, w8, w9
   2004c: 39000028     	strb	w8, [x1]
   20050: 121c7908     	and	w8, w8, #0xfffffff7
   20054: b9457e89     	ldr	w9, [x20, #0x57c]
   20058: 71000d3f     	cmp	w9, #0x3
   2005c: 1a9f17e9     	cset	w9, eq
   20060: 2a090d08     	orr	w8, w8, w9, lsl #3
   20064: 39000028     	strb	w8, [x1]
   20068: 39420308     	ldrb	w8, [x24, #0x80]
   2006c: 34000048     	cbz	w8, 0x20074 <syna_cdev_ioctls+0xae4>
   20070: 39000428     	strb	w8, [x1, #0x1]
   20074: 79401028     	ldrh	w8, [x1, #0x8]
   20078: 394deb09     	ldrb	w9, [x24, #0x37a]
   2007c: 121f7908     	and	w8, w8, #0xfffffffe
   20080: 2a090108     	orr	w8, w8, w9
   20084: 90000009     	adrp	x9, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020084:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb4
   20088: 91000129     	add	x9, x9, #0x0
		0000000000020088:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0xb4
   2008c: 79001028     	strh	w8, [x1, #0x8]
   20090: 7940012a     	ldrh	w10, [x9]
   20094: 33185d48     	bfi	w8, w10, #8, #24
   20098: 79001028     	strh	w8, [x1, #0x8]
   2009c: b9400528     	ldr	w8, [x9, #0x4]
   200a0: 53027d08     	lsr	w8, w8, #2
   200a4: 39002828     	strb	w8, [x1, #0xa]
   200a8: 39411b48     	ldrb	w8, [x26, #0x46]
   200ac: 37280088     	tbnz	w8, #0x5, 0x200bc <syna_cdev_ioctls+0xb2c>
   200b0: f9400349     	ldr	x9, [x26]
   200b4: aa1503e8     	mov	x8, x21
   200b8: 36d00069     	tbz	w9, #0x1a, 0x200c4 <syna_cdev_ioctls+0xb34>
   200bc: d378dea8     	lsl	x8, x21, #8
   200c0: 8a8822a8     	and	x8, x21, x8, asr #8
   200c4: b2705be9     	mov	x9, #0x7fffff0000       // =549755748352
   200c8: f29ffd89     	movk	x9, #0xffec
   200cc: eb09011f     	cmp	x8, x9
   200d0: 54006968     	b.hi	0x20dfc <syna_cdev_ioctls+0x186c>
   200d4: d503201f     	nop
   200d8: d53b4228     	mrs	x8, DAIF
   200dc: d50343df     	msr	DAIFSet, #0x3
   200e0: f9400749     	ldr	x9, [x26, #0x8]
   200e4: d538202a     	mrs	x10, TTBR1_EL1
   200e8: aa0903eb     	mov	x11, x9
   200ec: b340bd4b     	bfxil	x11, x10, #0, #48
   200f0: d518202b     	msr	TTBR1_EL1, x11
   200f4: d5182009     	msr	TTBR0_EL1, x9
   200f8: d5033fdf     	isb
   200fc: d51b4228     	msr	DAIF, x8
   20100: 9248faa0     	and	x0, x21, #0xff7fffffffffffff
   20104: 52800282     	mov	w2, #0x14               // =20
   20108: 94000000     	bl	0x20108 <syna_cdev_ioctls+0xb78>
		0000000000020108:  R_AARCH64_CALL26	__arch_copy_to_user
   2010c: d503201f     	nop
   20110: d53b4228     	mrs	x8, DAIF
   20114: d50343df     	msr	DAIFSet, #0x3
   20118: d5382029     	mrs	x9, TTBR1_EL1
   2011c: 9240bd29     	and	x9, x9, #0xffffffffffff
   20120: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   20124: d518200a     	msr	TTBR0_EL1, x10
   20128: d5182029     	msr	TTBR1_EL1, x9
   2012c: d5033fdf     	isb
   20130: d51b4228     	msr	DAIF, x8
   20134: 35006640     	cbnz	w0, 0x20dfc <syna_cdev_ioctls+0x186c>
   20138: 52800296     	mov	w22, #0x14              // =20
   2013c: 394002e2     	ldrb	w2, [x23]
		000000000002013c:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   20140: 7100045f     	cmp	w2, #0x1
   20144: 54005c80     	b.eq	0x20cd4 <syna_cdev_ioctls+0x1744>
   20148: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020148:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3bb
   2014c: 91000000     	add	x0, x0, #0x0
		000000000002014c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3bb
   20150: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c45f
   20154: 91000021     	add	x1, x1, #0x0
		0000000000020154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c45f
   20158: 94000000     	bl	0x20158 <syna_cdev_ioctls+0xbc8>
		0000000000020158:  R_AARCH64_CALL26	_printk
   2015c: 394002e8     	ldrb	w8, [x23]
		000000000002015c:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   20160: 14000396     	b	0x20fb8 <syna_cdev_ioctls+0x1a28>
   20164: b9400be3     	ldr	w3, [sp, #0x8]
   20168: aa1403e0     	mov	x0, x20
   2016c: aa1503e1     	mov	x1, x21
   20170: 2a1703e2     	mov	w2, w23
   20174: 94000702     	bl	0x21d7c <syna_spi_probe+0x660>
		0000000000020174:  R_AARCH64_CALL26	syna_cdev_ioctl_raw_write
   20178: 2a0003f6     	mov	w22, w0
   2017c: 140002db     	b	0x20ce8 <syna_cdev_ioctls+0x1758>
   20180: 39560a89     	ldrb	w9, [x20, #0x582]
   20184: b9400be8     	ldr	w8, [sp, #0x8]
   20188: 390093ff     	strb	wzr, [sp, #0x24]
   2018c: b90023ff     	str	wzr, [sp, #0x20]
   20190: 390073ff     	strb	wzr, [sp, #0x1c]
   20194: 37000089     	tbnz	w9, #0x0, 0x201a4 <syna_cdev_ioctls+0xc14>
   20198: b9457e89     	ldr	w9, [x20, #0x57c]
   2019c: 71000d3f     	cmp	w9, #0x3
   201a0: 54008ac1     	b.ne	0x212f8 <syna_cdev_ioctls+0x1d68>
   201a4: 710016ff     	cmp	w23, #0x5
   201a8: 540069a3     	b.lo	0x20edc <syna_cdev_ioctls+0x194c>
   201ac: 7100111f     	cmp	w8, #0x4
   201b0: 54006969     	b.ls	0x20edc <syna_cdev_ioctls+0x194c>
   201b4: f9413a88     	ldr	x8, [x20, #0x270]
   201b8: f940c509     	ldr	x9, [x8, #0x188]
   201bc: b4007109     	cbz	x9, 0x20fdc <syna_cdev_ioctls+0x1a4c>
   201c0: 295f5d16     	ldp	w22, w23, [x8, #0xf8]
   201c4: 39411b49     	ldrb	w9, [x26, #0x46]
   201c8: 37280089     	tbnz	w9, #0x5, 0x201d8 <syna_cdev_ioctls+0xc48>
   201cc: f9400349     	ldr	x9, [x26]
   201d0: aa1503e8     	mov	x8, x21
   201d4: 36d00069     	tbz	w9, #0x1a, 0x201e0 <syna_cdev_ioctls+0xc50>
   201d8: d378dea8     	lsl	x8, x21, #8
   201dc: 8a8822a8     	and	x8, x21, x8, asr #8
   201e0: b2705be9     	mov	x9, #0x7fffff0000       // =549755748352
   201e4: f29ffd89     	movk	x9, #0xffec
   201e8: 91003d29     	add	x9, x9, #0xf
   201ec: eb09011f     	cmp	x8, x9
   201f0: 54007428     	b.hi	0x21074 <syna_cdev_ioctls+0x1ae4>
   201f4: d503201f     	nop
   201f8: d53b4228     	mrs	x8, DAIF
   201fc: d50343df     	msr	DAIFSet, #0x3
   20200: f9400749     	ldr	x9, [x26, #0x8]
   20204: d538202a     	mrs	x10, TTBR1_EL1
   20208: aa0903eb     	mov	x11, x9
   2020c: b340bd4b     	bfxil	x11, x10, #0, #48
   20210: d518202b     	msr	TTBR1_EL1, x11
   20214: d5182009     	msr	TTBR0_EL1, x9
   20218: d5033fdf     	isb
   2021c: d51b4228     	msr	DAIF, x8
   20220: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
   20224: 910083e0     	add	x0, sp, #0x20
   20228: 528000a2     	mov	w2, #0x5                // =5
   2022c: 94000000     	bl	0x2022c <syna_cdev_ioctls+0xc9c>
		000000000002022c:  R_AARCH64_CALL26	__arch_copy_from_user
   20230: d503201f     	nop
   20234: d53b4228     	mrs	x8, DAIF
   20238: d50343df     	msr	DAIFSet, #0x3
   2023c: d5382029     	mrs	x9, TTBR1_EL1
   20240: 9240bd29     	and	x9, x9, #0xffffffffffff
   20244: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   20248: d518200a     	msr	TTBR0_EL1, x10
   2024c: d5182029     	msr	TTBR1_EL1, x9
   20250: d5033fdf     	isb
   20254: d51b4228     	msr	DAIF, x8
   20258: b5007100     	cbnz	x0, 0x21078 <syna_cdev_ioctls+0x1ae8>
   2025c: 784213e9     	ldurh	w9, [sp, #0x21]
   20260: 784233e8     	ldurh	w8, [sp, #0x23]
   20264: 34000069     	cbz	w9, 0x20270 <syna_cdev_ioctls+0xce0>
   20268: f9413a8a     	ldr	x10, [x20, #0x270]
   2026c: b900fd49     	str	w9, [x10, #0xfc]
   20270: 34000068     	cbz	w8, 0x2027c <syna_cdev_ioctls+0xcec>
   20274: f9413a89     	ldr	x9, [x20, #0x270]
   20278: b900f928     	str	w8, [x9, #0xf8]
   2027c: f9413a80     	ldr	x0, [x20, #0x270]
   20280: f940c408     	ldr	x8, [x0, #0x188]
   20284: b85fc110     	ldur	w16, [x8, #-0x4]
   20288: 72974371     	movk	w17, #0xba1b
   2028c: 72a56791     	movk	w17, #0x2b3c, lsl #16
   20290: 6b11021f     	cmp	w16, w17
   20294: 54000040     	b.eq	0x2029c <syna_cdev_ioctls+0xd0c>
   20298: d4304500     	brk	#0x8228
   2029c: d63f0100     	blr	x8
   202a0: f9413a88     	ldr	x8, [x20, #0x270]
   202a4: b900fd17     	str	w23, [x8, #0xfc]
   202a8: 394083e8     	ldrb	w8, [sp, #0x20]
   202ac: f9413a89     	ldr	x9, [x20, #0x270]
   202b0: 7100051f     	cmp	w8, #0x1
   202b4: b900f936     	str	w22, [x9, #0xf8]
   202b8: 54003760     	b.eq	0x209a4 <syna_cdev_ioctls+0x1414>
   202bc: f9413a88     	ldr	x8, [x20, #0x270]
   202c0: 3942f108     	ldrb	w8, [x8, #0xbc]
   202c4: 370000a8     	tbnz	w8, #0x0, 0x202d8 <syna_cdev_ioctls+0xd48>
   202c8: f9400280     	ldr	x0, [x20]
   202cc: 910073e1     	add	x1, sp, #0x1c
   202d0: aa1f03e2     	mov	x2, xzr
   202d4: 94000000     	bl	0x202d4 <syna_cdev_ioctls+0xd44>
		00000000000202d4:  R_AARCH64_CALL26	syna_tcm_get_event_data
   202d8: f9400288     	ldr	x8, [x20]
   202dc: 39402508     	ldrb	w8, [x8, #0x9]
   202e0: 7100051f     	cmp	w8, #0x1
   202e4: 54003601     	b.ne	0x209a4 <syna_cdev_ioctls+0x1414>
   202e8: f9435e88     	ldr	x8, [x20, #0x6b8]
   202ec: aa1403e0     	mov	x0, x20
   202f0: b85fc110     	ldur	w16, [x8, #-0x4]
   202f4: 7288e391     	movk	w17, #0x471c
   202f8: 72b5c411     	movk	w17, #0xae20, lsl #16
   202fc: 6b11021f     	cmp	w16, w17
   20300: 54000040     	b.eq	0x20308 <syna_cdev_ioctls+0xd78>
   20304: d4304500     	brk	#0x8228
   20308: d63f0100     	blr	x8
   2030c: 2a0003f6     	mov	w22, w0
   20310: 36f84ec0     	tbz	w0, #0x1f, 0x20ce8 <syna_cdev_ioctls+0x1758>
   20314: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020314:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17731
   20318: 91000000     	add	x0, x0, #0x0
		0000000000020318:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17731
   2031c: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		000000000002031c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b810
   20320: 91000021     	add	x1, x1, #0x0
		0000000000020320:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b810
   20324: 94000000     	bl	0x20324 <syna_cdev_ioctls+0xd94>
		0000000000020324:  R_AARCH64_CALL26	_printk
   20328: 14000270     	b	0x20ce8 <syna_cdev_ioctls+0x1758>
   2032c: b9400be2     	ldr	w2, [sp, #0x8]
   20330: 71004c5f     	cmp	w2, #0x13
   20334: 54005be9     	b.ls	0x20eb0 <syna_cdev_ioctls+0x1920>
   20338: 90000018     	adrp	x24, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020338:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x48
   2033c: f9400296     	ldr	x22, [x20]
   20340: 39400302     	ldrb	w2, [x24]
		0000000000020340:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   20344: 35006222     	cbnz	w2, 0x20f88 <syna_cdev_ioctls+0x19f8>
   20348: 90000019     	adrp	x25, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020348:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   2034c: 91000339     	add	x25, x25, #0x0
		000000000002034c:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x8
   20350: 91004320     	add	x0, x25, #0x10
   20354: 94000000     	bl	0x20354 <syna_cdev_ioctls+0xdc4>
		0000000000020354:  R_AARCH64_CALL26	mutex_lock
   20358: 39410328     	ldrb	w8, [x25, #0x40]
   2035c: b9400b37     	ldr	w23, [x25, #0x8]
   20360: f9400320     	ldr	x0, [x25]
   20364: 11000508     	add	w8, w8, #0x1
   20368: 71004eff     	cmp	w23, #0x13
   2036c: 39010328     	strb	w8, [x25, #0x40]
   20370: 54000248     	b.hi	0x203b8 <syna_cdev_ioctls+0xe28>
   20374: b40000c0     	cbz	x0, 0x2038c <syna_cdev_ioctls+0xdfc>
   20378: aa0003f7     	mov	x23, x0
   2037c: 94000000     	bl	0x2037c <syna_cdev_ioctls+0xdec>
		000000000002037c:  R_AARCH64_CALL26	syna_request_managed_device
   20380: b4008f80     	cbz	x0, 0x21570 <syna_cdev_ioctls+0x1fe0>
   20384: aa1703e1     	mov	x1, x23
   20388: 94000000     	bl	0x20388 <syna_cdev_ioctls+0xdf8>
		0000000000020388:  R_AARCH64_CALL26	devm_kfree
   2038c: 94000000     	bl	0x2038c <syna_cdev_ioctls+0xdfc>
		000000000002038c:  R_AARCH64_CALL26	syna_request_managed_device
   20390: b4008fe0     	cbz	x0, 0x2158c <syna_cdev_ioctls+0x1ffc>
   20394: 52800281     	mov	w1, #0x14               // =20
   20398: 5281b802     	mov	w2, #0xdc0              // =3520
   2039c: 52800297     	mov	w23, #0x14              // =20
   203a0: 94000000     	bl	0x203a0 <syna_cdev_ioctls+0xe10>
		00000000000203a0:  R_AARCH64_CALL26	devm_kmalloc
   203a4: 90000008     	adrp	x8, 0x20000 <syna_cdev_ioctls+0xa70>
		00000000000203a4:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   203a8: f9000100     	str	x0, [x8]
		00000000000203a8:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   203ac: b4008fe0     	cbz	x0, 0x215a8 <syna_cdev_ioctls+0x2018>
   203b0: 90000008     	adrp	x8, 0x20000 <syna_cdev_ioctls+0xa70>
		00000000000203b0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   203b4: b9000117     	str	w23, [x8]
		00000000000203b4:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0x10
   203b8: 2a1703e2     	mov	w2, w23
   203bc: 2a1f03e1     	mov	w1, wzr
   203c0: 94000000     	bl	0x203c0 <syna_cdev_ioctls+0xe30>
		00000000000203c0:  R_AARCH64_CALL26	memset
   203c4: 39411b48     	ldrb	w8, [x26, #0x46]
   203c8: f9400337     	ldr	x23, [x25]
   203cc: b9000f3f     	str	wzr, [x25, #0xc]
   203d0: 37280088     	tbnz	w8, #0x5, 0x203e0 <syna_cdev_ioctls+0xe50>
   203d4: f9400349     	ldr	x9, [x26]
   203d8: aa1503e8     	mov	x8, x21
   203dc: 36d00069     	tbz	w9, #0x1a, 0x203e8 <syna_cdev_ioctls+0xe58>
   203e0: d378dea8     	lsl	x8, x21, #8
   203e4: 8a8822a8     	and	x8, x21, x8, asr #8
   203e8: b2705be9     	mov	x9, #0x7fffff0000       // =549755748352
   203ec: f29ffd89     	movk	x9, #0xffec
   203f0: eb09011f     	cmp	x8, x9
   203f4: 540017a9     	b.ls	0x206e8 <syna_cdev_ioctls+0x1158>
   203f8: 52800295     	mov	w21, #0x14              // =20
   203fc: cb1502e8     	sub	x8, x23, x21
   20400: 2a1f03e1     	mov	w1, wzr
   20404: aa1503e2     	mov	x2, x21
   20408: 91005100     	add	x0, x8, #0x14
   2040c: 94000000     	bl	0x2040c <syna_cdev_ioctls+0xe7c>
		000000000002040c:  R_AARCH64_CALL26	memset
   20410: 34001a35     	cbz	w21, 0x20754 <syna_cdev_ioctls+0x11c4>
   20414: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020414:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18bba
   20418: 91000000     	add	x0, x0, #0x0
		0000000000020418:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18bba
   2041c: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		000000000002041c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18345
   20420: 91000021     	add	x1, x1, #0x0
		0000000000020420:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18345
   20424: 2a1503e2     	mov	w2, w21
   20428: 94000000     	bl	0x20428 <syna_cdev_ioctls+0xe98>
		0000000000020428:  R_AARCH64_CALL26	_printk
   2042c: 12800676     	mov	w22, #-0x34             // =-52
   20430: 14000226     	b	0x20cc8 <syna_cdev_ioctls+0x1738>
   20434: b9457e88     	ldr	w8, [x20, #0x57c]
   20438: b9400bf6     	ldr	w22, [sp, #0x8]
   2043c: a9117fff     	stp	xzr, xzr, [sp, #0x110]
   20440: a9107fff     	stp	xzr, xzr, [sp, #0x100]
   20444: 71000d1f     	cmp	w8, #0x3
   20448: a90f7fff     	stp	xzr, xzr, [sp, #0xf0]
   2044c: a90e7fff     	stp	xzr, xzr, [sp, #0xe0]
   20450: a90d7fff     	stp	xzr, xzr, [sp, #0xd0]
   20454: a90c7fff     	stp	xzr, xzr, [sp, #0xc0]
   20458: a90b7fff     	stp	xzr, xzr, [sp, #0xb0]
   2045c: a90a7fff     	stp	xzr, xzr, [sp, #0xa0]
   20460: a9097fff     	stp	xzr, xzr, [sp, #0x90]
   20464: a9087fff     	stp	xzr, xzr, [sp, #0x80]
   20468: a9077fff     	stp	xzr, xzr, [sp, #0x70]
   2046c: a9067fff     	stp	xzr, xzr, [sp, #0x60]
   20470: a9057fff     	stp	xzr, xzr, [sp, #0x50]
   20474: a9047fff     	stp	xzr, xzr, [sp, #0x40]
   20478: a9037fff     	stp	xzr, xzr, [sp, #0x30]
   2047c: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   20480: 54005240     	b.eq	0x20ec8 <syna_cdev_ioctls+0x1938>
   20484: 7103feff     	cmp	w23, #0xff
   20488: 540059c9     	b.ls	0x20fc0 <syna_cdev_ioctls+0x1a30>
   2048c: 34005cf6     	cbz	w22, 0x21028 <syna_cdev_ioctls+0x1a98>
   20490: 710406df     	cmp	w22, #0x101
   20494: 540090e2     	b.hs	0x216b0 <syna_cdev_ioctls+0x2120>
   20498: 910083e0     	add	x0, sp, #0x20
   2049c: aa1603e1     	mov	x1, x22
   204a0: 2a1f03e2     	mov	w2, wzr
   204a4: 94000000     	bl	0x204a4 <syna_cdev_ioctls+0xf14>
		00000000000204a4:  R_AARCH64_CALL26	__check_object_size
   204a8: 39411b48     	ldrb	w8, [x26, #0x46]
   204ac: 37280088     	tbnz	w8, #0x5, 0x204bc <syna_cdev_ioctls+0xf2c>
   204b0: f9400349     	ldr	x9, [x26]
   204b4: aa1503e8     	mov	x8, x21
   204b8: 36d00069     	tbz	w9, #0x1a, 0x204c4 <syna_cdev_ioctls+0xf34>
   204bc: d378dea8     	lsl	x8, x21, #8
   204c0: 8a8822a8     	and	x8, x21, x8, asr #8
   204c4: d2c01009     	mov	x9, #0x8000000000       // =549755813888
   204c8: aa1603e0     	mov	x0, x22
   204cc: cb160129     	sub	x9, x9, x22
   204d0: eb08013f     	cmp	x9, x8
   204d4: 54005f43     	b.lo	0x210bc <syna_cdev_ioctls+0x1b2c>
   204d8: d503201f     	nop
   204dc: d53b4228     	mrs	x8, DAIF
   204e0: d50343df     	msr	DAIFSet, #0x3
   204e4: f9400749     	ldr	x9, [x26, #0x8]
   204e8: d538202a     	mrs	x10, TTBR1_EL1
   204ec: aa0903eb     	mov	x11, x9
   204f0: b340bd4b     	bfxil	x11, x10, #0, #48
   204f4: d518202b     	msr	TTBR1_EL1, x11
   204f8: d5182009     	msr	TTBR0_EL1, x9
   204fc: d5033fdf     	isb
   20500: d51b4228     	msr	DAIF, x8
   20504: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
   20508: 910083e0     	add	x0, sp, #0x20
   2050c: aa1603e2     	mov	x2, x22
   20510: 94000000     	bl	0x20510 <syna_cdev_ioctls+0xf80>
		0000000000020510:  R_AARCH64_CALL26	__arch_copy_from_user
   20514: d503201f     	nop
   20518: d53b4228     	mrs	x8, DAIF
   2051c: d50343df     	msr	DAIFSet, #0x3
   20520: d5382029     	mrs	x9, TTBR1_EL1
   20524: 9240bd29     	and	x9, x9, #0xffffffffffff
   20528: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   2052c: d518200a     	msr	TTBR0_EL1, x10
   20530: d5182029     	msr	TTBR1_EL1, x9
   20534: d5033fdf     	isb
   20538: d51b4228     	msr	DAIF, x8
   2053c: b5005c00     	cbnz	x0, 0x210bc <syna_cdev_ioctls+0x1b2c>
   20540: aa1f03f5     	mov	x21, xzr
   20544: 910083f8     	add	x24, sp, #0x20
   20548: 90000017     	adrp	x23, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020548:  R_AARCH64_ADR_PREL_PG_HI21	syna_cdev_process_reports
   2054c: 910002f7     	add	x23, x23, #0x0
		000000000002054c:  R_AARCH64_ADD_ABS_LO12_NC	syna_cdev_process_reports
   20550: 14000004     	b	0x20560 <syna_cdev_ioctls+0xfd0>
   20554: 910006b5     	add	x21, x21, #0x1
   20558: f10402bf     	cmp	x21, #0x100
   2055c: 54002240     	b.eq	0x209a4 <syna_cdev_ioctls+0x1414>
   20560: 38756b08     	ldrb	w8, [x24, x21]
   20564: 7100051f     	cmp	w8, #0x1
   20568: 54ffff61     	b.ne	0x20554 <syna_cdev_ioctls+0xfc4>
   2056c: f9400280     	ldr	x0, [x20]
   20570: 2a1503e1     	mov	w1, w21
   20574: aa1703e2     	mov	x2, x23
   20578: aa1403e3     	mov	x3, x20
   2057c: 94000000     	bl	0x2057c <syna_cdev_ioctls+0xfec>
		000000000002057c:  R_AARCH64_CALL26	syna_tcm_set_data_duplicator
   20580: 36fffea0     	tbz	w0, #0x1f, 0x20554 <syna_cdev_ioctls+0xfc4>
   20584: 2a0003f6     	mov	w22, w0
   20588: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020588:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b7a5
   2058c: 91000000     	add	x0, x0, #0x0
		000000000002058c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b7a5
   20590: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020590:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17710
   20594: 91000021     	add	x1, x1, #0x0
		0000000000020594:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17710
   20598: 2a1503e2     	mov	w2, w21
   2059c: 94000000     	bl	0x2059c <syna_cdev_ioctls+0x100c>
		000000000002059c:  R_AARCH64_CALL26	_printk
   205a0: 140001d2     	b	0x20ce8 <syna_cdev_ioctls+0x1758>
   205a4: 39560a88     	ldrb	w8, [x20, #0x582]
   205a8: b9400bf6     	ldr	w22, [sp, #0x8]
   205ac: 37000088     	tbnz	w8, #0x0, 0x205bc <syna_cdev_ioctls+0x102c>
   205b0: b9457e88     	ldr	w8, [x20, #0x57c]
   205b4: 71000d1f     	cmp	w8, #0x3
   205b8: 54006ae1     	b.ne	0x21314 <syna_cdev_ioctls+0x1d84>
   205bc: 340049d7     	cbz	w23, 0x20ef4 <syna_cdev_ioctls+0x1964>
   205c0: 6b1702df     	cmp	w22, w23
   205c4: 54004988     	b.hi	0x20ef4 <syna_cdev_ioctls+0x1964>
   205c8: f942d697     	ldr	x23, [x20, #0x5a8]
   205cc: b40000b7     	cbz	x23, 0x205e0 <syna_cdev_ioctls+0x1050>
   205d0: 94000000     	bl	0x205d0 <syna_cdev_ioctls+0x1040>
		00000000000205d0:  R_AARCH64_CALL26	syna_request_managed_device
   205d4: b4006680     	cbz	x0, 0x212a4 <syna_cdev_ioctls+0x1d14>
   205d8: aa1703e1     	mov	x1, x23
   205dc: 94000000     	bl	0x205dc <syna_cdev_ioctls+0x104c>
		00000000000205dc:  R_AARCH64_CALL26	devm_kfree
   205e0: 94000000     	bl	0x205e0 <syna_cdev_ioctls+0x1050>
		00000000000205e0:  R_AARCH64_CALL26	syna_request_managed_device
   205e4: b40066e0     	cbz	x0, 0x212c0 <syna_cdev_ioctls+0x1d30>
   205e8: 34005656     	cbz	w22, 0x210b0 <syna_cdev_ioctls+0x1b20>
   205ec: aa1603e1     	mov	x1, x22
   205f0: 5281b802     	mov	w2, #0xdc0              // =3520
   205f4: 94000000     	bl	0x205f4 <syna_cdev_ioctls+0x1064>
		00000000000205f4:  R_AARCH64_CALL26	devm_kmalloc
   205f8: f902d680     	str	x0, [x20, #0x5a8]
   205fc: b40066e0     	cbz	x0, 0x212d8 <syna_cdev_ioctls+0x1d48>
   20600: 2a1f03e1     	mov	w1, wzr
   20604: aa1603e2     	mov	x2, x22
   20608: aa0003f7     	mov	x23, x0
   2060c: 94000000     	bl	0x2060c <syna_cdev_ioctls+0x107c>
		000000000002060c:  R_AARCH64_CALL26	memset
   20610: aa1703e0     	mov	x0, x23
   20614: aa1603e1     	mov	x1, x22
   20618: 2a1f03e2     	mov	w2, wzr
   2061c: 94000000     	bl	0x2061c <syna_cdev_ioctls+0x108c>
		000000000002061c:  R_AARCH64_CALL26	__check_object_size
   20620: 39411b48     	ldrb	w8, [x26, #0x46]
   20624: 37280088     	tbnz	w8, #0x5, 0x20634 <syna_cdev_ioctls+0x10a4>
   20628: f9400349     	ldr	x9, [x26]
   2062c: aa1503e8     	mov	x8, x21
   20630: 36d00069     	tbz	w9, #0x1a, 0x2063c <syna_cdev_ioctls+0x10ac>
   20634: d378dea8     	lsl	x8, x21, #8
   20638: 8a8822a8     	and	x8, x21, x8, asr #8
   2063c: d2c01009     	mov	x9, #0x8000000000       // =549755813888
   20640: aa1603f4     	mov	x20, x22
   20644: cb160129     	sub	x9, x9, x22
   20648: eb08013f     	cmp	x9, x8
   2064c: 540016e2     	b.hs	0x20928 <syna_cdev_ioctls+0x1398>
   20650: eb1402c8     	subs	x8, x22, x20
   20654: 9a9433e1     	csel	x1, xzr, x20, lo
   20658: eb14003f     	cmp	x1, x20
   2065c: 54008583     	b.lo	0x2170c <syna_cdev_ioctls+0x217c>
   20660: 8b0802e0     	add	x0, x23, x8
   20664: 2a1f03e1     	mov	w1, wzr
   20668: aa1403e2     	mov	x2, x20
   2066c: 94000000     	bl	0x2066c <syna_cdev_ioctls+0x10dc>
		000000000002066c:  R_AARCH64_CALL26	memset
   20670: 340033f4     	cbz	w20, 0x20cec <syna_cdev_ioctls+0x175c>
   20674: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020674:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18bba
   20678: 91000000     	add	x0, x0, #0x0
		0000000000020678:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18bba
   2067c: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		000000000002067c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0af
   20680: 91000021     	add	x1, x1, #0x0
		0000000000020680:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0af
   20684: 2a1403e2     	mov	w2, w20
   20688: 140001d5     	b	0x20ddc <syna_cdev_ioctls+0x184c>
   2068c: 52800200     	mov	w0, #0x10               // =16
   20690: f100441f     	cmp	x0, #0x11
   20694: 540082a2     	b.hs	0x216e8 <syna_cdev_ioctls+0x2158>
   20698: 910023e8     	add	x8, sp, #0x8
   2069c: aa0003f3     	mov	x19, x0
   206a0: 2a1f03e1     	mov	w1, wzr
   206a4: cb000108     	sub	x8, x8, x0
   206a8: aa1303e2     	mov	x2, x19
   206ac: 91004100     	add	x0, x8, #0x10
   206b0: 94000000     	bl	0x206b0 <syna_cdev_ioctls+0x1120>
		00000000000206b0:  R_AARCH64_CALL26	memset
   206b4: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		00000000000206b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18794
   206b8: 91000000     	add	x0, x0, #0x0
		00000000000206b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18794
   206bc: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		00000000000206bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18578
   206c0: 91000021     	add	x1, x1, #0x0
		00000000000206c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18578
   206c4: 2a1303e2     	mov	w2, w19
   206c8: 140001c5     	b	0x20ddc <syna_cdev_ioctls+0x184c>
   206cc: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		00000000000206cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19f7d
   206d0: 91000000     	add	x0, x0, #0x0
		00000000000206d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19f7d
   206d4: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		00000000000206d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18578
   206d8: 91000021     	add	x1, x1, #0x0
		00000000000206d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18578
   206dc: 94000000     	bl	0x206dc <syna_cdev_ioctls+0x114c>
		00000000000206dc:  R_AARCH64_CALL26	_printk
   206e0: 12800676     	mov	w22, #-0x34             // =-52
   206e4: 140001a7     	b	0x20d80 <syna_cdev_ioctls+0x17f0>
   206e8: d503201f     	nop
   206ec: d53b4228     	mrs	x8, DAIF
   206f0: d50343df     	msr	DAIFSet, #0x3
   206f4: f9400749     	ldr	x9, [x26, #0x8]
   206f8: d538202a     	mrs	x10, TTBR1_EL1
   206fc: aa0903eb     	mov	x11, x9
   20700: b340bd4b     	bfxil	x11, x10, #0, #48
   20704: d518202b     	msr	TTBR1_EL1, x11
   20708: d5182009     	msr	TTBR0_EL1, x9
   2070c: d5033fdf     	isb
   20710: d51b4228     	msr	DAIF, x8
   20714: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
   20718: aa1703e0     	mov	x0, x23
   2071c: 52800282     	mov	w2, #0x14               // =20
   20720: 94000000     	bl	0x20720 <syna_cdev_ioctls+0x1190>
		0000000000020720:  R_AARCH64_CALL26	__arch_copy_from_user
   20724: aa0003f5     	mov	x21, x0
   20728: d503201f     	nop
   2072c: d53b4228     	mrs	x8, DAIF
   20730: d50343df     	msr	DAIFSet, #0x3
   20734: d5382029     	mrs	x9, TTBR1_EL1
   20738: 9240bd29     	and	x9, x9, #0xffffffffffff
   2073c: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   20740: d518200a     	msr	TTBR0_EL1, x10
   20744: d5182029     	msr	TTBR1_EL1, x9
   20748: d5033fdf     	isb
   2074c: d51b4228     	msr	DAIF, x8
   20750: b5ffe575     	cbnz	x21, 0x203fc <syna_cdev_ioctls+0xe6c>
   20754: 39560a88     	ldrb	w8, [x20, #0x582]
   20758: 7100051f     	cmp	w8, #0x1
   2075c: 54002b41     	b.ne	0x20cc4 <syna_cdev_ioctls+0x1734>
   20760: 90000008     	adrp	x8, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020760:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   20764: f9400115     	ldr	x21, [x8]
		0000000000020764:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   20768: 79400aa2     	ldrh	w2, [x21, #0x4]
   2076c: 794006a1     	ldrh	w1, [x21, #0x2]
   20770: 340026e2     	cbz	w2, 0x20c4c <syna_cdev_ioctls+0x16bc>
   20774: b9403ec8     	ldr	w8, [x22, #0x3c]
   20778: 6b02011f     	cmp	w8, w2
   2077c: 1a9f07e8     	cset	w8, ne
   20780: 350026a1     	cbnz	w1, 0x20c54 <syna_cdev_ioctls+0x16c4>
   20784: 54002701     	b.ne	0x20c64 <syna_cdev_ioctls+0x16d4>
   20788: 14000140     	b	0x20c88 <syna_cdev_ioctls+0x16f8>
   2078c: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		000000000002078c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1904e
   20790: 91000000     	add	x0, x0, #0x0
		0000000000020790:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1904e
   20794: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020794:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18589
   20798: 91000021     	add	x1, x1, #0x0
		0000000000020798:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18589
   2079c: 2a1603e2     	mov	w2, w22
   207a0: 94000000     	bl	0x207a0 <syna_cdev_ioctls+0x1210>
		00000000000207a0:  R_AARCH64_CALL26	_printk
   207a4: 128002b6     	mov	w22, #-0x16             // =-22
   207a8: 14000176     	b	0x20d80 <syna_cdev_ioctls+0x17f0>
   207ac: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		00000000000207ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b045
   207b0: 91000000     	add	x0, x0, #0x0
		00000000000207b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b045
   207b4: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		00000000000207b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18589
   207b8: 91000021     	add	x1, x1, #0x0
		00000000000207b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18589
   207bc: 94000000     	bl	0x207bc <syna_cdev_ioctls+0x122c>
		00000000000207bc:  R_AARCH64_CALL26	_printk
   207c0: 14000170     	b	0x20d80 <syna_cdev_ioctls+0x17f0>
   207c4: aa0803f4     	mov	x20, x8
   207c8: 2a1f03e1     	mov	w1, wzr
   207cc: aa1403e2     	mov	x2, x20
   207d0: 94000000     	bl	0x207d0 <syna_cdev_ioctls+0x1240>
		00000000000207d0:  R_AARCH64_CALL26	memset
   207d4: b9400bf8     	ldr	w24, [sp, #0x8]
   207d8: f9400334     	ldr	x20, [x25]
   207dc: b9000f3f     	str	wzr, [x25, #0xc]
   207e0: 37f87798     	tbnz	w24, #0x1f, 0x216d0 <syna_cdev_ioctls+0x2140>
   207e4: aa1403e0     	mov	x0, x20
   207e8: aa1803e1     	mov	x1, x24
   207ec: 2a1f03e2     	mov	w2, wzr
   207f0: 94000000     	bl	0x207f0 <syna_cdev_ioctls+0x1260>
		00000000000207f0:  R_AARCH64_CALL26	__check_object_size
   207f4: 39411b48     	ldrb	w8, [x26, #0x46]
   207f8: 37280088     	tbnz	w8, #0x5, 0x20808 <syna_cdev_ioctls+0x1278>
   207fc: f9400349     	ldr	x9, [x26]
   20800: aa1503e8     	mov	x8, x21
   20804: 36d00069     	tbz	w9, #0x1a, 0x20810 <syna_cdev_ioctls+0x1280>
   20808: d378dea8     	lsl	x8, x21, #8
   2080c: 8a8822a8     	and	x8, x21, x8, asr #8
   20810: d2c01009     	mov	x9, #0x8000000000       // =549755813888
   20814: aa1803f9     	mov	x25, x24
   20818: cb180129     	sub	x9, x9, x24
   2081c: eb08013f     	cmp	x9, x8
   20820: 54000c62     	b.hs	0x209ac <syna_cdev_ioctls+0x141c>
   20824: cb190308     	sub	x8, x24, x25
   20828: 2a1f03e1     	mov	w1, wzr
   2082c: aa1903e2     	mov	x2, x25
   20830: 8b080280     	add	x0, x20, x8
   20834: 94000000     	bl	0x20834 <syna_cdev_ioctls+0x12a4>
		0000000000020834:  R_AARCH64_CALL26	memset
   20838: aa1903f8     	mov	x24, x25
   2083c: 34000ef8     	cbz	w24, 0x20a18 <syna_cdev_ioctls+0x1488>
   20840: b9400be2     	ldr	w2, [sp, #0x8]
   20844: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020844:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18bba
   20848: 91000000     	add	x0, x0, #0x0
		0000000000020848:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18bba
   2084c: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		000000000002084c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c31f
   20850: 91000021     	add	x1, x1, #0x0
		0000000000020850:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c31f
   20854: 94000000     	bl	0x20854 <syna_cdev_ioctls+0x12c4>
		0000000000020854:  R_AARCH64_CALL26	_printk
   20858: 12800676     	mov	w22, #-0x34             // =-52
   2085c: 140000e8     	b	0x20bfc <syna_cdev_ioctls+0x166c>
   20860: d503201f     	nop
   20864: d53b4228     	mrs	x8, DAIF
   20868: d50343df     	msr	DAIFSet, #0x3
   2086c: f9400749     	ldr	x9, [x26, #0x8]
   20870: d538202a     	mrs	x10, TTBR1_EL1
   20874: aa0903eb     	mov	x11, x9
   20878: b340bd4b     	bfxil	x11, x10, #0, #48
   2087c: d518202b     	msr	TTBR1_EL1, x11
   20880: d5182009     	msr	TTBR0_EL1, x9
   20884: d5033fdf     	isb
   20888: d51b4228     	msr	DAIF, x8
   2088c: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
   20890: 910083e0     	add	x0, sp, #0x20
   20894: aa1703e2     	mov	x2, x23
   20898: 94000000     	bl	0x20898 <syna_cdev_ioctls+0x1308>
		0000000000020898:  R_AARCH64_CALL26	__arch_copy_from_user
   2089c: aa0003f6     	mov	x22, x0
   208a0: d503201f     	nop
   208a4: d53b4228     	mrs	x8, DAIF
   208a8: d50343df     	msr	DAIFSet, #0x3
   208ac: d5382029     	mrs	x9, TTBR1_EL1
   208b0: 9240bd29     	and	x9, x9, #0xffffffffffff
   208b4: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   208b8: d518200a     	msr	TTBR0_EL1, x10
   208bc: d5182029     	msr	TTBR1_EL1, x9
   208c0: d5033fdf     	isb
   208c4: d51b4228     	msr	DAIF, x8
   208c8: b5ff76d6     	cbnz	x22, 0x1f7a0 <syna_cdev_ioctls+0x210>
   208cc: b94023e8     	ldr	w8, [sp, #0x20]
   208d0: 7100051f     	cmp	w8, #0x1
   208d4: 54000620     	b.eq	0x20998 <syna_cdev_ioctls+0x1408>
   208d8: 350058e8     	cbnz	w8, 0x213f4 <syna_cdev_ioctls+0x1e64>
   208dc: f9413a88     	ldr	x8, [x20, #0x270]
   208e0: 3942f108     	ldrb	w8, [x8, #0xbc]
   208e4: 7100051f     	cmp	w8, #0x1
   208e8: 540005e1     	b.ne	0x209a4 <syna_cdev_ioctls+0x1414>
   208ec: f9402308     	ldr	x8, [x24, #0x40]
   208f0: 91002300     	add	x0, x24, #0x8
   208f4: 2a1f03e1     	mov	w1, wzr
   208f8: b85fc110     	ldur	w16, [x8, #-0x4]
   208fc: 728c3631     	movk	w17, #0x61b1
   20900: 72a685d1     	movk	w17, #0x342e, lsl #16
   20904: 6b11021f     	cmp	w16, w17
   20908: 54000040     	b.eq	0x20910 <syna_cdev_ioctls+0x1380>
   2090c: d4304500     	brk	#0x8228
   20910: d63f0100     	blr	x8
   20914: 36f86a60     	tbz	w0, #0x1f, 0x21660 <syna_cdev_ioctls+0x20d0>
   20918: 2a0003f6     	mov	w22, w0
   2091c: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		000000000002091c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18041
   20920: 91000000     	add	x0, x0, #0x0
		0000000000020920:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18041
   20924: 140002e5     	b	0x214b8 <syna_cdev_ioctls+0x1f28>
   20928: d503201f     	nop
   2092c: d53b4228     	mrs	x8, DAIF
   20930: d50343df     	msr	DAIFSet, #0x3
   20934: f9400749     	ldr	x9, [x26, #0x8]
   20938: d538202a     	mrs	x10, TTBR1_EL1
   2093c: aa0903eb     	mov	x11, x9
   20940: b340bd4b     	bfxil	x11, x10, #0, #48
   20944: d518202b     	msr	TTBR1_EL1, x11
   20948: d5182009     	msr	TTBR0_EL1, x9
   2094c: d5033fdf     	isb
   20950: d51b4228     	msr	DAIF, x8
   20954: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
   20958: aa1703e0     	mov	x0, x23
   2095c: aa1603e2     	mov	x2, x22
   20960: 94000000     	bl	0x20960 <syna_cdev_ioctls+0x13d0>
		0000000000020960:  R_AARCH64_CALL26	__arch_copy_from_user
   20964: aa0003f4     	mov	x20, x0
   20968: d503201f     	nop
   2096c: d53b4228     	mrs	x8, DAIF
   20970: d50343df     	msr	DAIFSet, #0x3
   20974: d5382029     	mrs	x9, TTBR1_EL1
   20978: 9240bd29     	and	x9, x9, #0xffffffffffff
   2097c: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   20980: d518200a     	msr	TTBR0_EL1, x10
   20984: d5182029     	msr	TTBR1_EL1, x9
   20988: d5033fdf     	isb
   2098c: d51b4228     	msr	DAIF, x8
   20990: b4001af4     	cbz	x20, 0x20cec <syna_cdev_ioctls+0x175c>
   20994: 17ffff2f     	b	0x20650 <syna_cdev_ioctls+0x10c0>
   20998: f9413a88     	ldr	x8, [x20, #0x270]
   2099c: 3942f108     	ldrb	w8, [x8, #0xbc]
   209a0: 36005708     	tbz	w8, #0x0, 0x21480 <syna_cdev_ioctls+0x1ef0>
   209a4: 2a1f03f6     	mov	w22, wzr
   209a8: 140000d0     	b	0x20ce8 <syna_cdev_ioctls+0x1758>
   209ac: d503201f     	nop
   209b0: d53b4228     	mrs	x8, DAIF
   209b4: d50343df     	msr	DAIFSet, #0x3
   209b8: f9400749     	ldr	x9, [x26, #0x8]
   209bc: d538202a     	mrs	x10, TTBR1_EL1
   209c0: aa0903eb     	mov	x11, x9
   209c4: b340bd4b     	bfxil	x11, x10, #0, #48
   209c8: d518202b     	msr	TTBR1_EL1, x11
   209cc: d5182009     	msr	TTBR0_EL1, x9
   209d0: d5033fdf     	isb
   209d4: d51b4228     	msr	DAIF, x8
   209d8: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
   209dc: aa1403e0     	mov	x0, x20
   209e0: aa1803e2     	mov	x2, x24
   209e4: 94000000     	bl	0x209e4 <syna_cdev_ioctls+0x1454>
		00000000000209e4:  R_AARCH64_CALL26	__arch_copy_from_user
   209e8: aa0003f9     	mov	x25, x0
   209ec: d503201f     	nop
   209f0: d53b4228     	mrs	x8, DAIF
   209f4: d50343df     	msr	DAIFSet, #0x3
   209f8: d5382029     	mrs	x9, TTBR1_EL1
   209fc: 9240bd29     	and	x9, x9, #0xffffffffffff
   20a00: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   20a04: d518200a     	msr	TTBR0_EL1, x10
   20a08: d5182029     	msr	TTBR1_EL1, x9
   20a0c: d5033fdf     	isb
   20a10: d51b4228     	msr	DAIF, x8
   20a14: b5fff099     	cbnz	x25, 0x20824 <syna_cdev_ioctls+0x1294>
   20a18: 78401299     	ldurh	w25, [x20, #0x1]
   20a1c: b9400be3     	ldr	w3, [sp, #0x8]
   20a20: 6b03033f     	cmp	w25, w3
   20a24: 54004028     	b.hi	0x21228 <syna_cdev_ioctls+0x1c98>
   20a28: 910083e8     	add	x8, sp, #0x20
   20a2c: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020a2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1beea
   20a30: 91000021     	add	x1, x1, #0x0
		0000000000020a30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1beea
   20a34: 90000002     	adrp	x2, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020a34:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xc9
   20a38: 91000042     	add	x2, x2, #0x0
		0000000000020a38:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0xc9
   20a3c: 91004100     	add	x0, x8, #0x10
   20a40: 390183ff     	strb	wzr, [sp, #0x60]
   20a44: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   20a48: 94000000     	bl	0x20a48 <syna_cdev_ioctls+0x14b8>
		0000000000020a48:  R_AARCH64_CALL26	__mutex_init
   20a4c: 90000008     	adrp	x8, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020a4c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb0
   20a50: aa1403f8     	mov	x24, x20
   20a54: 910073e4     	add	x4, sp, #0x1c
   20a58: b9400106     	ldr	w6, [x8]
		0000000000020a58:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb0
   20a5c: 38403701     	ldrb	w1, [x24], #0x3
   20a60: 910083e5     	add	x5, sp, #0x20
   20a64: aa1603e0     	mov	x0, x22
   20a68: aa1803e2     	mov	x2, x24
   20a6c: 2a1903e3     	mov	w3, w25
   20a70: 94000000     	bl	0x20a70 <syna_cdev_ioctls+0x14e0>
		0000000000020a70:  R_AARCH64_CALL26	syna_tcm_send_command
   20a74: 37f83ea0     	tbnz	w0, #0x1f, 0x21248 <syna_cdev_ioctls+0x1cb8>
   20a78: aa1403e0     	mov	x0, x20
   20a7c: 2a1f03e1     	mov	w1, wzr
   20a80: aa1703e2     	mov	x2, x23
   20a84: 94000000     	bl	0x20a84 <syna_cdev_ioctls+0x14f4>
		0000000000020a84:  R_AARCH64_CALL26	memset
   20a88: 394073e8     	ldrb	w8, [sp, #0x1c]
   20a8c: 39000288     	strb	w8, [x20]
   20a90: b9402fe8     	ldr	w8, [sp, #0x2c]
   20a94: 39000688     	strb	w8, [x20, #0x1]
   20a98: b9402fe8     	ldr	w8, [sp, #0x2c]
   20a9c: 53087d08     	lsr	w8, w8, #8
   20aa0: 39000a88     	strb	w8, [x20, #0x2]
   20aa4: 90000008     	adrp	x8, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020aa4:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   20aa8: b9400102     	ldr	w2, [x8]
		0000000000020aa8:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0x10
   20aac: b9402fe4     	ldr	w4, [sp, #0x2c]
   20ab0: 6b04005f     	cmp	w2, w4
   20ab4: 54003da3     	b.lo	0x21268 <syna_cdev_ioctls+0x1cd8>
   20ab8: 340003e4     	cbz	w4, 0x20b34 <syna_cdev_ioctls+0x15a4>
   20abc: b4005118     	cbz	x24, 0x214dc <syna_cdev_ioctls+0x1f4c>
   20ac0: f94013e1     	ldr	x1, [sp, #0x20]
   20ac4: b40050c1     	cbz	x1, 0x214dc <syna_cdev_ioctls+0x1f4c>
   20ac8: 51000c43     	sub	w3, w2, #0x3
   20acc: b9402be2     	ldr	w2, [sp, #0x28]
   20ad0: 6b03009f     	cmp	w4, w3
   20ad4: 54004fa8     	b.hi	0x214c8 <syna_cdev_ioctls+0x1f38>
   20ad8: 6b02009f     	cmp	w4, w2
   20adc: 54004f68     	b.hi	0x214c8 <syna_cdev_ioctls+0x1f38>
   20ae0: aa1803e0     	mov	x0, x24
   20ae4: aa0403e2     	mov	x2, x4
   20ae8: 94000000     	bl	0x20ae8 <syna_cdev_ioctls+0x1558>
		0000000000020ae8:  R_AARCH64_CALL26	memcpy
   20aec: b9400388     	ldr	w8, [x28]
		0000000000020aec:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   20af0: 7100051f     	cmp	w8, #0x1
   20af4: 5400022d     	b.le	0x20b38 <syna_cdev_ioctls+0x15a8>
   20af8: b9402fe9     	ldr	w9, [sp, #0x2c]
   20afc: 794706c8     	ldrh	w8, [x22, #0x382]
   20b00: 11000d2a     	add	w10, w9, #0x3
   20b04: 53087d0b     	lsr	w11, w8, #8
   20b08: 1100112c     	add	w12, w9, #0x4
   20b0c: 382a4a88     	strb	w8, [x20, w10, uxtw]
   20b10: 529fffca     	mov	w10, #0xfffe            // =65534
   20b14: 382c4a8b     	strb	w11, [x20, w12, uxtw]
   20b18: b9400388     	ldr	w8, [x28]
		0000000000020b18:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   20b1c: 0b0a010a     	add	w10, w8, w10
   20b20: 72003d5f     	tst	w10, #0xffff
   20b24: 540000a0     	b.eq	0x20b38 <syna_cdev_ioctls+0x15a8>
   20b28: 394e16c8     	ldrb	w8, [x22, #0x385]
   20b2c: 11001529     	add	w9, w9, #0x5
   20b30: 38294a88     	strb	w8, [x20, w9, uxtw]
   20b34: b9400388     	ldr	w8, [x28]
		0000000000020b34:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   20b38: b9402fe9     	ldr	w9, [sp, #0x2c]
   20b3c: 0aa87d08     	bic	w8, w8, w8, asr #31
   20b40: 0b080128     	add	w8, w9, w8
   20b44: 31000d16     	adds	w22, w8, #0x3
   20b48: b9000bf6     	str	w22, [sp, #0x8]
   20b4c: 54005c84     	b.mi	0x216dc <syna_cdev_ioctls+0x214c>
   20b50: aa1403e0     	mov	x0, x20
   20b54: aa1603e1     	mov	x1, x22
   20b58: 52800022     	mov	w2, #0x1                // =1
   20b5c: 94000000     	bl	0x20b5c <syna_cdev_ioctls+0x15cc>
		0000000000020b5c:  R_AARCH64_CALL26	__check_object_size
   20b60: 39411b48     	ldrb	w8, [x26, #0x46]
   20b64: 37280088     	tbnz	w8, #0x5, 0x20b74 <syna_cdev_ioctls+0x15e4>
   20b68: f9400349     	ldr	x9, [x26]
   20b6c: aa1503e8     	mov	x8, x21
   20b70: 36d00069     	tbz	w9, #0x1a, 0x20b7c <syna_cdev_ioctls+0x15ec>
   20b74: d378dea8     	lsl	x8, x21, #8
   20b78: 8a8822a8     	and	x8, x21, x8, asr #8
   20b7c: d2c01009     	mov	x9, #0x8000000000       // =549755813888
   20b80: cb160129     	sub	x9, x9, x22
   20b84: eb08013f     	cmp	x9, x8
   20b88: 54000363     	b.lo	0x20bf4 <syna_cdev_ioctls+0x1664>
   20b8c: d503201f     	nop
   20b90: d53b4228     	mrs	x8, DAIF
   20b94: d50343df     	msr	DAIFSet, #0x3
   20b98: f9400749     	ldr	x9, [x26, #0x8]
   20b9c: d538202a     	mrs	x10, TTBR1_EL1
   20ba0: aa0903eb     	mov	x11, x9
   20ba4: b340bd4b     	bfxil	x11, x10, #0, #48
   20ba8: d518202b     	msr	TTBR1_EL1, x11
   20bac: d5182009     	msr	TTBR0_EL1, x9
   20bb0: d5033fdf     	isb
   20bb4: d51b4228     	msr	DAIF, x8
   20bb8: 9248faa0     	and	x0, x21, #0xff7fffffffffffff
   20bbc: aa1403e1     	mov	x1, x20
   20bc0: aa1603e2     	mov	x2, x22
   20bc4: 94000000     	bl	0x20bc4 <syna_cdev_ioctls+0x1634>
		0000000000020bc4:  R_AARCH64_CALL26	__arch_copy_to_user
   20bc8: aa0003f6     	mov	x22, x0
   20bcc: d503201f     	nop
   20bd0: d53b4228     	mrs	x8, DAIF
   20bd4: d50343df     	msr	DAIFSet, #0x3
   20bd8: d5382029     	mrs	x9, TTBR1_EL1
   20bdc: 9240bd29     	and	x9, x9, #0xffffffffffff
   20be0: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   20be4: d518200a     	msr	TTBR0_EL1, x10
   20be8: d5182029     	msr	TTBR1_EL1, x9
   20bec: d5033fdf     	isb
   20bf0: d51b4228     	msr	DAIF, x8
   20bf4: 350034b6     	cbnz	w22, 0x21288 <syna_cdev_ioctls+0x1cf8>
   20bf8: b9400bf6     	ldr	w22, [sp, #0x8]
   20bfc: 90000014     	adrp	x20, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020bfc:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x48
   20c00: 39400282     	ldrb	w2, [x20]
		0000000000020c00:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   20c04: 7100045f     	cmp	w2, #0x1
   20c08: 54002e81     	b.ne	0x211d8 <syna_cdev_ioctls+0x1c48>
   20c0c: 2a1f03e8     	mov	w8, wzr
   20c10: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020c10:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x18
   20c14: 91000000     	add	x0, x0, #0x0
		0000000000020c14:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x18
   20c18: 3900c008     	strb	w8, [x0, #0x30]
   20c1c: 94000000     	bl	0x20c1c <syna_cdev_ioctls+0x168c>
		0000000000020c1c:  R_AARCH64_CALL26	mutex_unlock
   20c20: 394183e2     	ldrb	w2, [sp, #0x60]
   20c24: 35002ea2     	cbnz	w2, 0x211f8 <syna_cdev_ioctls+0x1c68>
   20c28: f94013f4     	ldr	x20, [sp, #0x20]
   20c2c: 94000000     	bl	0x20c2c <syna_cdev_ioctls+0x169c>
		0000000000020c2c:  R_AARCH64_CALL26	syna_request_managed_device
   20c30: b4002f00     	cbz	x0, 0x21210 <syna_cdev_ioctls+0x1c80>
   20c34: b40005b4     	cbz	x20, 0x20ce8 <syna_cdev_ioctls+0x1758>
   20c38: aa1403e1     	mov	x1, x20
   20c3c: 94000000     	bl	0x20c3c <syna_cdev_ioctls+0x16ac>
		0000000000020c3c:  R_AARCH64_CALL26	devm_kfree
   20c40: 1400002a     	b	0x20ce8 <syna_cdev_ioctls+0x1758>
   20c44: 12800796     	mov	w22, #-0x3d             // =-61
   20c48: 14000028     	b	0x20ce8 <syna_cdev_ioctls+0x1758>
   20c4c: 340001e1     	cbz	w1, 0x20c88 <syna_cdev_ioctls+0x16f8>
   20c50: 2a1f03e8     	mov	w8, wzr
   20c54: b9403ac9     	ldr	w9, [x22, #0x38]
   20c58: 6b01013f     	cmp	w9, w1
   20c5c: 54000041     	b.ne	0x20c64 <syna_cdev_ioctls+0x16d4>
   20c60: 36000148     	tbz	w8, #0x0, 0x20c88 <syna_cdev_ioctls+0x16f8>
   20c64: f941d6c8     	ldr	x8, [x22, #0x3a8]
   20c68: aa1603e0     	mov	x0, x22
   20c6c: b85fc110     	ldur	w16, [x8, #-0x4]
   20c70: 72963bb1     	movk	w17, #0xb1dd
   20c74: 72a09411     	movk	w17, #0x4a0, lsl #16
   20c78: 6b11021f     	cmp	w16, w17
   20c7c: 54000040     	b.eq	0x20c84 <syna_cdev_ioctls+0x16f4>
   20c80: d4304500     	brk	#0x8228
   20c84: d63f0100     	blr	x8
   20c88: 794012a8     	ldrh	w8, [x21, #0x8]
   20c8c: 394deac9     	ldrb	w9, [x22, #0x37a]
   20c90: 12000114     	and	w20, w8, #0x1
   20c94: 6b09029f     	cmp	w20, w9
   20c98: 540034c1     	b.ne	0x21330 <syna_cdev_ioctls+0x1da0>
   20c9c: 90000009     	adrp	x9, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020c9c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb4
   20ca0: 53087d02     	lsr	w2, w8, #8
   20ca4: b9400128     	ldr	w8, [x9]
		0000000000020ca4:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   20ca8: 6b02011f     	cmp	w8, w2
   20cac: 54003621     	b.ne	0x21370 <syna_cdev_ioctls+0x1de0>
   20cb0: 39402aa8     	ldrb	w8, [x21, #0xa]
   20cb4: 90000009     	adrp	x9, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020cb4:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb8
   20cb8: 531e7502     	lsl	w2, w8, #2
   20cbc: b9000122     	str	w2, [x9]
		0000000000020cbc:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb8
   20cc0: 35003668     	cbnz	w8, 0x2138c <syna_cdev_ioctls+0x1dfc>
   20cc4: 2a1f03f6     	mov	w22, wzr
   20cc8: 39400302     	ldrb	w2, [x24]
		0000000000020cc8:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   20ccc: 7100045f     	cmp	w2, #0x1
   20cd0: 54001681     	b.ne	0x20fa0 <syna_cdev_ioctls+0x1a10>
   20cd4: 2a1f03e8     	mov	w8, wzr
   20cd8: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020cd8:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x18
   20cdc: 91000000     	add	x0, x0, #0x0
		0000000000020cdc:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x18
   20ce0: 3900c008     	strb	w8, [x0, #0x30]
   20ce4: 94000000     	bl	0x20ce4 <syna_cdev_ioctls+0x1754>
		0000000000020ce4:  R_AARCH64_CALL26	mutex_unlock
   20ce8: 37f804d6     	tbnz	w22, #0x1f, 0x20d80 <syna_cdev_ioctls+0x17f0>
   20cec: 39411b48     	ldrb	w8, [x26, #0x46]
   20cf0: 37280088     	tbnz	w8, #0x5, 0x20d00 <syna_cdev_ioctls+0x1770>
   20cf4: f9400349     	ldr	x9, [x26]
   20cf8: aa1303e8     	mov	x8, x19
   20cfc: 36d00049     	tbz	w9, #0x1a, 0x20d04 <syna_cdev_ioctls+0x1774>
   20d00: 8a9b2268     	and	x8, x19, x27, asr #8
   20d04: b27c8be9     	mov	x9, #0x7ffffffff0       // =549755813872
   20d08: eb09011f     	cmp	x8, x9
   20d0c: 540005e8     	b.hi	0x20dc8 <syna_cdev_ioctls+0x1838>
   20d10: d503201f     	nop
   20d14: d53b4228     	mrs	x8, DAIF
   20d18: d50343df     	msr	DAIFSet, #0x3
   20d1c: f9400749     	ldr	x9, [x26, #0x8]
   20d20: d538202a     	mrs	x10, TTBR1_EL1
   20d24: aa0903eb     	mov	x11, x9
   20d28: b340bd4b     	bfxil	x11, x10, #0, #48
   20d2c: d518202b     	msr	TTBR1_EL1, x11
   20d30: d5182009     	msr	TTBR0_EL1, x9
   20d34: d5033fdf     	isb
   20d38: d51b4228     	msr	DAIF, x8
   20d3c: 9248fa60     	and	x0, x19, #0xff7fffffffffffff
   20d40: 910023e1     	add	x1, sp, #0x8
   20d44: 52800202     	mov	w2, #0x10               // =16
   20d48: 94000000     	bl	0x20d48 <syna_cdev_ioctls+0x17b8>
		0000000000020d48:  R_AARCH64_CALL26	__arch_copy_to_user
   20d4c: aa0003e2     	mov	x2, x0
   20d50: d503201f     	nop
   20d54: d53b4228     	mrs	x8, DAIF
   20d58: d50343df     	msr	DAIFSet, #0x3
   20d5c: d5382029     	mrs	x9, TTBR1_EL1
   20d60: 9240bd29     	and	x9, x9, #0xffffffffffff
   20d64: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   20d68: d518200a     	msr	TTBR0_EL1, x10
   20d6c: d5182029     	msr	TTBR1_EL1, x9
   20d70: d5033fdf     	isb
   20d74: d51b4228     	msr	DAIF, x8
   20d78: 350002a2     	cbnz	w2, 0x20dcc <syna_cdev_ioctls+0x183c>
   20d7c: 2a1f03f6     	mov	w22, wzr
   20d80: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020d80:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x50
   20d84: 91000000     	add	x0, x0, #0x0
		0000000000020d84:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x50
   20d88: 94000000     	bl	0x20d88 <syna_cdev_ioctls+0x17f8>
		0000000000020d88:  R_AARCH64_CALL26	mutex_unlock
   20d8c: d5384108     	mrs	x8, SP_EL0
   20d90: f9438908     	ldr	x8, [x8, #0x710]
   20d94: f85f03a9     	ldur	x9, [x29, #-0x10]
   20d98: eb09011f     	cmp	x8, x9
   20d9c: 54004a41     	b.ne	0x216e4 <syna_cdev_ioctls+0x2154>
   20da0: 93407ec0     	sxtw	x0, w22
   20da4: a9584ff4     	ldp	x20, x19, [sp, #0x180]
   20da8: a95757f6     	ldp	x22, x21, [sp, #0x170]
   20dac: a9565ff8     	ldp	x24, x23, [sp, #0x160]
   20db0: a95567fa     	ldp	x26, x25, [sp, #0x150]
   20db4: a9546ffc     	ldp	x28, x27, [sp, #0x140]
   20db8: a9537bfd     	ldp	x29, x30, [sp, #0x130]
   20dbc: 910643ff     	add	sp, sp, #0x190
   20dc0: d50323bf     	autiasp
   20dc4: d65f03c0     	ret
   20dc8: 52800202     	mov	w2, #0x10               // =16
   20dcc: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020dcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be55
   20dd0: 91000000     	add	x0, x0, #0x0
		0000000000020dd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be55
   20dd4: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020dd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18578
   20dd8: 91000021     	add	x1, x1, #0x0
		0000000000020dd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18578
   20ddc: 94000000     	bl	0x20ddc <syna_cdev_ioctls+0x184c>
		0000000000020ddc:  R_AARCH64_CALL26	_printk
   20de0: 12800676     	mov	w22, #-0x34             // =-52
   20de4: 17ffffe7     	b	0x20d80 <syna_cdev_ioctls+0x17f0>
   20de8: 12800db6     	mov	w22, #-0x6e             // =-110
   20dec: 17ffffbf     	b	0x20ce8 <syna_cdev_ioctls+0x1758>
   20df0: b9000bff     	str	wzr, [sp, #0x8]
   20df4: 12800db6     	mov	w22, #-0x6e             // =-110
   20df8: 17ffffbc     	b	0x20ce8 <syna_cdev_ioctls+0x1758>
   20dfc: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020dfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1956c
   20e00: 91000000     	add	x0, x0, #0x0
		0000000000020e00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1956c
   20e04: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020e04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x185cd
   20e08: 91000021     	add	x1, x1, #0x0
		0000000000020e08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x185cd
   20e0c: 94000000     	bl	0x20e0c <syna_cdev_ioctls+0x187c>
		0000000000020e0c:  R_AARCH64_CALL26	_printk
   20e10: 12800676     	mov	w22, #-0x34             // =-52
   20e14: 17fffcca     	b	0x2013c <syna_cdev_ioctls+0xbac>
   20e18: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020e18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2cc
   20e1c: 91000000     	add	x0, x0, #0x0
		0000000000020e1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2cc
   20e20: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020e20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be95
   20e24: 91000021     	add	x1, x1, #0x0
		0000000000020e24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be95
   20e28: 94000000     	bl	0x20e28 <syna_cdev_ioctls+0x1898>
		0000000000020e28:  R_AARCH64_CALL26	_printk
   20e2c: 39411b48     	ldrb	w8, [x26, #0x46]
   20e30: 362ff628     	tbz	w8, #0x5, 0x20cf4 <syna_cdev_ioctls+0x1764>
   20e34: 17ffffb3     	b	0x20d00 <syna_cdev_ioctls+0x1770>
   20e38: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020e38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1904e
   20e3c: 91000000     	add	x0, x0, #0x0
		0000000000020e3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1904e
   20e40: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020e40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18dbb
   20e44: 91000021     	add	x1, x1, #0x0
		0000000000020e44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18dbb
   20e48: 17fffe55     	b	0x2079c <syna_cdev_ioctls+0x120c>
   20e4c: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020e4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8c4
   20e50: 91000000     	add	x0, x0, #0x0
		0000000000020e50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8c4
   20e54: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020e54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b28e
   20e58: 91000021     	add	x1, x1, #0x0
		0000000000020e58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b28e
   20e5c: 1400012b     	b	0x21308 <syna_cdev_ioctls+0x1d78>
   20e60: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020e60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8c4
   20e64: 91000000     	add	x0, x0, #0x0
		0000000000020e64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8c4
   20e68: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020e68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c31f
   20e6c: 91000021     	add	x1, x1, #0x0
		0000000000020e6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c31f
   20e70: 14000126     	b	0x21308 <syna_cdev_ioctls+0x1d78>
   20e74: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020e74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8c4
   20e78: 91000000     	add	x0, x0, #0x0
		0000000000020e78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8c4
   20e7c: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020e7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae09
   20e80: 91000021     	add	x1, x1, #0x0
		0000000000020e80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae09
   20e84: 14000121     	b	0x21308 <syna_cdev_ioctls+0x1d78>
   20e88: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020e88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8c4
   20e8c: 91000000     	add	x0, x0, #0x0
		0000000000020e8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8c4
   20e90: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020e90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b78b
   20e94: 91000021     	add	x1, x1, #0x0
		0000000000020e94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b78b
   20e98: 1400011c     	b	0x21308 <syna_cdev_ioctls+0x1d78>
   20e9c: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020e9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aaef
   20ea0: 91000000     	add	x0, x0, #0x0
		0000000000020ea0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aaef
   20ea4: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020ea4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x185cd
   20ea8: 91000021     	add	x1, x1, #0x0
		0000000000020ea8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x185cd
   20eac: 14000005     	b	0x20ec0 <syna_cdev_ioctls+0x1930>
   20eb0: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020eb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aaef
   20eb4: 91000000     	add	x0, x0, #0x0
		0000000000020eb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aaef
   20eb8: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020eb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18345
   20ebc: 91000021     	add	x1, x1, #0x0
		0000000000020ebc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18345
   20ec0: 52800283     	mov	w3, #0x14               // =20
   20ec4: 14000012     	b	0x20f0c <syna_cdev_ioctls+0x197c>
   20ec8: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020ec8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19342
   20ecc: 91000000     	add	x0, x0, #0x0
		0000000000020ecc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19342
   20ed0: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020ed0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17710
   20ed4: 91000021     	add	x1, x1, #0x0
		0000000000020ed4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17710
   20ed8: 14000023     	b	0x20f64 <syna_cdev_ioctls+0x19d4>
   20edc: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020edc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18dd4
   20ee0: 91000000     	add	x0, x0, #0x0
		0000000000020ee0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18dd4
   20ee4: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020ee4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b810
   20ee8: 91000021     	add	x1, x1, #0x0
		0000000000020ee8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b810
   20eec: 2a1703e2     	mov	w2, w23
   20ef0: 140000b1     	b	0x211b4 <syna_cdev_ioctls+0x1c24>
   20ef4: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020ef4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19673
   20ef8: 91000000     	add	x0, x0, #0x0
		0000000000020ef8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19673
   20efc: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020efc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0af
   20f00: 91000021     	add	x1, x1, #0x0
		0000000000020f00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0af
   20f04: 2a1703e2     	mov	w2, w23
   20f08: 2a1603e3     	mov	w3, w22
   20f0c: 94000000     	bl	0x20f0c <syna_cdev_ioctls+0x197c>
		0000000000020f0c:  R_AARCH64_CALL26	_printk
   20f10: 128002b6     	mov	w22, #-0x16             // =-22
   20f14: 17ffff9b     	b	0x20d80 <syna_cdev_ioctls+0x17f0>
   20f18: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020f18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a544
   20f1c: 91000000     	add	x0, x0, #0x0
		0000000000020f1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a544
   20f20: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020f20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b28e
   20f24: 91000021     	add	x1, x1, #0x0
		0000000000020f24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b28e
   20f28: 1400000f     	b	0x20f64 <syna_cdev_ioctls+0x19d4>
   20f2c: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020f2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18302
   20f30: 91000000     	add	x0, x0, #0x0
		0000000000020f30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18302
   20f34: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020f34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c31f
   20f38: 91000021     	add	x1, x1, #0x0
		0000000000020f38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c31f
   20f3c: 1400000a     	b	0x20f64 <syna_cdev_ioctls+0x19d4>
   20f40: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020f40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4f5
   20f44: 91000000     	add	x0, x0, #0x0
		0000000000020f44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4f5
   20f48: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020f48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae09
   20f4c: 91000021     	add	x1, x1, #0x0
		0000000000020f4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae09
   20f50: 14000005     	b	0x20f64 <syna_cdev_ioctls+0x19d4>
   20f54: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020f54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a544
   20f58: 91000000     	add	x0, x0, #0x0
		0000000000020f58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a544
   20f5c: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020f5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b78b
   20f60: 91000021     	add	x1, x1, #0x0
		0000000000020f60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b78b
   20f64: 94000000     	bl	0x20f64 <syna_cdev_ioctls+0x19d4>
		0000000000020f64:  R_AARCH64_CALL26	_printk
   20f68: 2a1f03f6     	mov	w22, wzr
   20f6c: 17ffff5f     	b	0x20ce8 <syna_cdev_ioctls+0x1758>
   20f70: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020f70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3bb
   20f74: 91000000     	add	x0, x0, #0x0
		0000000000020f74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3bb
   20f78: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020f78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4e3
   20f7c: 91000021     	add	x1, x1, #0x0
		0000000000020f7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4e3
   20f80: 94000000     	bl	0x20f80 <syna_cdev_ioctls+0x19f0>
		0000000000020f80:  R_AARCH64_CALL26	_printk
   20f84: 17fffc06     	b	0x1ff9c <syna_cdev_ioctls+0xa0c>
   20f88: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020f88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3bb
   20f8c: 91000000     	add	x0, x0, #0x0
		0000000000020f8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3bb
   20f90: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020f90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4e3
   20f94: 91000021     	add	x1, x1, #0x0
		0000000000020f94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4e3
   20f98: 94000000     	bl	0x20f98 <syna_cdev_ioctls+0x1a08>
		0000000000020f98:  R_AARCH64_CALL26	_printk
   20f9c: 17fffceb     	b	0x20348 <syna_cdev_ioctls+0xdb8>
   20fa0: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020fa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3bb
   20fa4: 91000000     	add	x0, x0, #0x0
		0000000000020fa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3bb
   20fa8: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020fa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c45f
   20fac: 91000021     	add	x1, x1, #0x0
		0000000000020fac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c45f
   20fb0: 94000000     	bl	0x20fb0 <syna_cdev_ioctls+0x1a20>
		0000000000020fb0:  R_AARCH64_CALL26	_printk
   20fb4: 39400308     	ldrb	w8, [x24]
		0000000000020fb4:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   20fb8: 51000508     	sub	w8, w8, #0x1
   20fbc: 17ffff47     	b	0x20cd8 <syna_cdev_ioctls+0x1748>
   20fc0: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020fc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17a19
   20fc4: 91000000     	add	x0, x0, #0x0
		0000000000020fc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17a19
   20fc8: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020fc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17710
   20fcc: 91000021     	add	x1, x1, #0x0
		0000000000020fcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17710
   20fd0: 2a1703e2     	mov	w2, w23
   20fd4: 52802003     	mov	w3, #0x100              // =256
   20fd8: 14000024     	b	0x21068 <syna_cdev_ioctls+0x1ad8>
   20fdc: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020fdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b48b
   20fe0: 91000000     	add	x0, x0, #0x0
		0000000000020fe0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b48b
   20fe4: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020fe4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b810
   20fe8: 91000021     	add	x1, x1, #0x0
		0000000000020fe8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b810
   20fec: 94000000     	bl	0x20fec <syna_cdev_ioctls+0x1a5c>
		0000000000020fec:  R_AARCH64_CALL26	_printk
   20ff0: 12800256     	mov	w22, #-0x13             // =-19
   20ff4: 17ffff3d     	b	0x20ce8 <syna_cdev_ioctls+0x1758>
   20ff8: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xa70>
		0000000000020ff8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19076
   20ffc: 91000000     	add	x0, x0, #0x0
		0000000000020ffc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19076
   21000: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021000:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c31f
   21004: 91000021     	add	x1, x1, #0x0
		0000000000021004:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c31f
   21008: 2a1703e2     	mov	w2, w23
   2100c: 1400006a     	b	0x211b4 <syna_cdev_ioctls+0x1c24>
   21010: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021010:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19076
   21014: 91000000     	add	x0, x0, #0x0
		0000000000021014:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19076
   21018: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b78b
   2101c: 91000021     	add	x1, x1, #0x0
		000000000002101c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b78b
   21020: 2a1703e2     	mov	w2, w23
   21024: 14000064     	b	0x211b4 <syna_cdev_ioctls+0x1c24>
   21028: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c5de
   2102c: 91000000     	add	x0, x0, #0x0
		000000000002102c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c5de
   21030: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021030:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17710
   21034: 91000021     	add	x1, x1, #0x0
		0000000000021034:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17710
   21038: 14000046     	b	0x21150 <syna_cdev_ioctls+0x1bc0>
   2103c: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		000000000002103c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18dd4
   21040: 91000000     	add	x0, x0, #0x0
		0000000000021040:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18dd4
   21044: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b28e
   21048: 91000021     	add	x1, x1, #0x0
		0000000000021048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b28e
   2104c: 2a1703e2     	mov	w2, w23
   21050: 14000059     	b	0x211b4 <syna_cdev_ioctls+0x1c24>
   21054: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021054:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae24
   21058: 91000000     	add	x0, x0, #0x0
		0000000000021058:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae24
   2105c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		000000000002105c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae09
   21060: 91000021     	add	x1, x1, #0x0
		0000000000021060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae09
   21064: 2a1703e2     	mov	w2, w23
   21068: 94000000     	bl	0x21068 <syna_cdev_ioctls+0x1ad8>
		0000000000021068:  R_AARCH64_CALL26	_printk
   2106c: 128002b6     	mov	w22, #-0x16             // =-22
   21070: 17ffff1e     	b	0x20ce8 <syna_cdev_ioctls+0x1758>
   21074: 528000a0     	mov	w0, #0x5                // =5
   21078: f100181f     	cmp	x0, #0x6
   2107c: 54003362     	b.hs	0x216e8 <syna_cdev_ioctls+0x2158>
   21080: 910083e8     	add	x8, sp, #0x20
   21084: aa0003f4     	mov	x20, x0
   21088: 2a1f03e1     	mov	w1, wzr
   2108c: cb000108     	sub	x8, x8, x0
   21090: aa1403e2     	mov	x2, x20
   21094: 91001500     	add	x0, x8, #0x5
   21098: 94000000     	bl	0x21098 <syna_cdev_ioctls+0x1b08>
		0000000000021098:  R_AARCH64_CALL26	memset
   2109c: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		000000000002109c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18bba
   210a0: 91000000     	add	x0, x0, #0x0
		00000000000210a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18bba
   210a4: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000210a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b810
   210a8: 91000021     	add	x1, x1, #0x0
		00000000000210a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b810
   210ac: 1400003a     	b	0x21194 <syna_cdev_ioctls+0x1c04>
   210b0: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000210b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3eb
   210b4: 91000000     	add	x0, x0, #0x0
		00000000000210b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3eb
   210b8: 14000084     	b	0x212c8 <syna_cdev_ioctls+0x1d38>
   210bc: cb0002c8     	sub	x8, x22, x0
   210c0: 52802009     	mov	w9, #0x100              // =256
   210c4: aa0003e2     	mov	x2, x0
   210c8: eb080129     	subs	x9, x9, x8
   210cc: 9a8933e1     	csel	x1, xzr, x9, lo
   210d0: eb00003f     	cmp	x1, x0
   210d4: 54003123     	b.lo	0x216f8 <syna_cdev_ioctls+0x2168>
   210d8: 910083e9     	add	x9, sp, #0x20
   210dc: 2a1f03e1     	mov	w1, wzr
   210e0: aa0203f6     	mov	x22, x2
   210e4: 8b080120     	add	x0, x9, x8
   210e8: 94000000     	bl	0x210e8 <syna_cdev_ioctls+0x1b58>
		00000000000210e8:  R_AARCH64_CALL26	memset
   210ec: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000210ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18bba
   210f0: 91000000     	add	x0, x0, #0x0
		00000000000210f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18bba
   210f4: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000210f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17710
   210f8: 91000021     	add	x1, x1, #0x0
		00000000000210f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17710
   210fc: 2a1603e2     	mov	w2, w22
   21100: 14000026     	b	0x21198 <syna_cdev_ioctls+0x1c08>
   21104: 52800082     	mov	w2, #0x4                // =4
   21108: f100145f     	cmp	x2, #0x5
   2110c: 54002f02     	b.hs	0x216ec <syna_cdev_ioctls+0x215c>
   21110: 910073e8     	add	x8, sp, #0x1c
   21114: 2a1f03e1     	mov	w1, wzr
   21118: cb020108     	sub	x8, x8, x2
   2111c: 91001100     	add	x0, x8, #0x4
   21120: 94000000     	bl	0x21120 <syna_cdev_ioctls+0x1b90>
		0000000000021120:  R_AARCH64_CALL26	memset
   21124: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021124:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b7df
   21128: 91000000     	add	x0, x0, #0x0
		0000000000021128:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b7df
   2112c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		000000000002112c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b28e
   21130: 91000021     	add	x1, x1, #0x0
		0000000000021130:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b28e
   21134: 94000000     	bl	0x21134 <syna_cdev_ioctls+0x1ba4>
		0000000000021134:  R_AARCH64_CALL26	_printk
   21138: 12800676     	mov	w22, #-0x34             // =-52
   2113c: 17fffeeb     	b	0x20ce8 <syna_cdev_ioctls+0x1758>
   21140: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021140:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x185a6
   21144: 91000000     	add	x0, x0, #0x0
		0000000000021144:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x185a6
   21148: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021148:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae09
   2114c: 91000021     	add	x1, x1, #0x0
		000000000002114c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae09
   21150: 94000000     	bl	0x21150 <syna_cdev_ioctls+0x1bc0>
		0000000000021150:  R_AARCH64_CALL26	_printk
   21154: 128002b6     	mov	w22, #-0x16             // =-22
   21158: 17fffee4     	b	0x20ce8 <syna_cdev_ioctls+0x1758>
   2115c: 52800080     	mov	w0, #0x4                // =4
   21160: f100141f     	cmp	x0, #0x5
   21164: 54002c22     	b.hs	0x216e8 <syna_cdev_ioctls+0x2158>
   21168: 910073e8     	add	x8, sp, #0x1c
   2116c: aa0003f4     	mov	x20, x0
   21170: 2a1f03e1     	mov	w1, wzr
   21174: cb000108     	sub	x8, x8, x0
   21178: aa1403e2     	mov	x2, x20
   2117c: 91001100     	add	x0, x8, #0x4
   21180: 94000000     	bl	0x21180 <syna_cdev_ioctls+0x1bf0>
		0000000000021180:  R_AARCH64_CALL26	memset
   21184: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021184:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18bba
   21188: 91000000     	add	x0, x0, #0x0
		0000000000021188:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18bba
   2118c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		000000000002118c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b78b
   21190: 91000021     	add	x1, x1, #0x0
		0000000000021190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b78b
   21194: 2a1403e2     	mov	w2, w20
   21198: 94000000     	bl	0x21198 <syna_cdev_ioctls+0x1c08>
		0000000000021198:  R_AARCH64_CALL26	_printk
   2119c: 12800676     	mov	w22, #-0x34             // =-52
   211a0: 17fffed2     	b	0x20ce8 <syna_cdev_ioctls+0x1758>
   211a4: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000211a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x190a9
   211a8: 91000000     	add	x0, x0, #0x0
		00000000000211a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x190a9
   211ac: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000211ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c31f
   211b0: 91000021     	add	x1, x1, #0x0
		00000000000211b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c31f
   211b4: 94000000     	bl	0x211b4 <syna_cdev_ioctls+0x1c24>
		00000000000211b4:  R_AARCH64_CALL26	_printk
   211b8: 128002b6     	mov	w22, #-0x16             // =-22
   211bc: 17fffecb     	b	0x20ce8 <syna_cdev_ioctls+0x1758>
   211c0: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000211c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3bb
   211c4: 91000000     	add	x0, x0, #0x0
		00000000000211c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3bb
   211c8: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000211c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4e3
   211cc: 91000021     	add	x1, x1, #0x0
		00000000000211cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4e3
   211d0: 94000000     	bl	0x211d0 <syna_cdev_ioctls+0x1c40>
		00000000000211d0:  R_AARCH64_CALL26	_printk
   211d4: 17fffa53     	b	0x1fb20 <syna_cdev_ioctls+0x590>
   211d8: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000211d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3bb
   211dc: 91000000     	add	x0, x0, #0x0
		00000000000211dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3bb
   211e0: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000211e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c45f
   211e4: 91000021     	add	x1, x1, #0x0
		00000000000211e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c45f
   211e8: 94000000     	bl	0x211e8 <syna_cdev_ioctls+0x1c58>
		00000000000211e8:  R_AARCH64_CALL26	_printk
   211ec: 39400288     	ldrb	w8, [x20]
		00000000000211ec:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   211f0: 51000508     	sub	w8, w8, #0x1
   211f4: 17fffe87     	b	0x20c10 <syna_cdev_ioctls+0x1680>
   211f8: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000211f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188c5
   211fc: 91000000     	add	x0, x0, #0x0
		00000000000211fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188c5
   21200: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021200:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a114
   21204: 91000021     	add	x1, x1, #0x0
		0000000000021204:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a114
   21208: 94000000     	bl	0x21208 <syna_cdev_ioctls+0x1c78>
		0000000000021208:  R_AARCH64_CALL26	_printk
   2120c: 17fffe87     	b	0x20c28 <syna_cdev_ioctls+0x1698>
   21210: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021210:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   21214: 91000000     	add	x0, x0, #0x0
		0000000000021214:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   21218: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   2121c: 91000021     	add	x1, x1, #0x0
		000000000002121c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   21220: 94000000     	bl	0x21220 <syna_cdev_ioctls+0x1c90>
		0000000000021220:  R_AARCH64_CALL26	_printk
   21224: 17fffeb1     	b	0x20ce8 <syna_cdev_ioctls+0x1758>
   21228: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021228:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19fd8
   2122c: 91000000     	add	x0, x0, #0x0
		000000000002122c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19fd8
   21230: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021230:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c31f
   21234: 91000021     	add	x1, x1, #0x0
		0000000000021234:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c31f
   21238: 2a1903e2     	mov	w2, w25
   2123c: 94000000     	bl	0x2123c <syna_cdev_ioctls+0x1cac>
		000000000002123c:  R_AARCH64_CALL26	_printk
   21240: 12800676     	mov	w22, #-0x34             // =-52
   21244: 17fffe6e     	b	0x20bfc <syna_cdev_ioctls+0x166c>
   21248: 39400282     	ldrb	w2, [x20]
   2124c: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		000000000002124c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19ac0
   21250: 91000000     	add	x0, x0, #0x0
		0000000000021250:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19ac0
   21254: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021254:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c31f
   21258: 91000021     	add	x1, x1, #0x0
		0000000000021258:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c31f
   2125c: 2a1903e3     	mov	w3, w25
   21260: 94000000     	bl	0x21260 <syna_cdev_ioctls+0x1cd0>
		0000000000021260:  R_AARCH64_CALL26	_printk
   21264: 17fffe05     	b	0x20a78 <syna_cdev_ioctls+0x14e8>
   21268: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021268:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19631
   2126c: 91000000     	add	x0, x0, #0x0
		000000000002126c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19631
   21270: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c31f
   21274: 91000021     	add	x1, x1, #0x0
		0000000000021274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c31f
   21278: 2a0403e3     	mov	w3, w4
   2127c: 94000000     	bl	0x2127c <syna_cdev_ioctls+0x1cec>
		000000000002127c:  R_AARCH64_CALL26	_printk
   21280: 12800956     	mov	w22, #-0x4b             // =-75
   21284: 17fffe5e     	b	0x20bfc <syna_cdev_ioctls+0x166c>
   21288: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1956c
   2128c: 91000000     	add	x0, x0, #0x0
		000000000002128c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1956c
   21290: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021290:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c31f
   21294: 91000021     	add	x1, x1, #0x0
		0000000000021294:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c31f
   21298: 94000000     	bl	0x21298 <syna_cdev_ioctls+0x1d08>
		0000000000021298:  R_AARCH64_CALL26	_printk
   2129c: 12800676     	mov	w22, #-0x34             // =-52
   212a0: 17fffe57     	b	0x20bfc <syna_cdev_ioctls+0x166c>
   212a4: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000212a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   212a8: 91000000     	add	x0, x0, #0x0
		00000000000212a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   212ac: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000212ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   212b0: 91000021     	add	x1, x1, #0x0
		00000000000212b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   212b4: 94000000     	bl	0x212b4 <syna_cdev_ioctls+0x1d24>
		00000000000212b4:  R_AARCH64_CALL26	_printk
   212b8: 94000000     	bl	0x212b8 <syna_cdev_ioctls+0x1d28>
		00000000000212b8:  R_AARCH64_CALL26	syna_request_managed_device
   212bc: b5ff9960     	cbnz	x0, 0x205e8 <syna_cdev_ioctls+0x1058>
   212c0: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000212c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   212c4: 91000000     	add	x0, x0, #0x0
		00000000000212c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   212c8: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000212c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194ed
   212cc: 91000021     	add	x1, x1, #0x0
		00000000000212cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194ed
   212d0: 94000000     	bl	0x212d0 <syna_cdev_ioctls+0x1d40>
		00000000000212d0:  R_AARCH64_CALL26	_printk
   212d4: f902d69f     	str	xzr, [x20, #0x5a8]
   212d8: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000212d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2f3
   212dc: 91000000     	add	x0, x0, #0x0
		00000000000212dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2f3
   212e0: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000212e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0af
   212e4: 91000021     	add	x1, x1, #0x0
		00000000000212e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0af
   212e8: 2a1603e2     	mov	w2, w22
   212ec: 94000000     	bl	0x212ec <syna_cdev_ioctls+0x1d5c>
		00000000000212ec:  R_AARCH64_CALL26	_printk
   212f0: 12800176     	mov	w22, #-0xc              // =-12
   212f4: 17fffea3     	b	0x20d80 <syna_cdev_ioctls+0x17f0>
   212f8: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000212f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8c4
   212fc: 91000000     	add	x0, x0, #0x0
		00000000000212fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8c4
   21300: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021300:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b810
   21304: 91000021     	add	x1, x1, #0x0
		0000000000021304:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b810
   21308: 94000000     	bl	0x21308 <syna_cdev_ioctls+0x1d78>
		0000000000021308:  R_AARCH64_CALL26	_printk
   2130c: 128000b6     	mov	w22, #-0x6              // =-6
   21310: 17fffe76     	b	0x20ce8 <syna_cdev_ioctls+0x1758>
   21314: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021314:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8c4
   21318: 91000000     	add	x0, x0, #0x0
		0000000000021318:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8c4
   2131c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		000000000002131c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0af
   21320: 91000021     	add	x1, x1, #0x0
		0000000000021320:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0af
   21324: 94000000     	bl	0x21324 <syna_cdev_ioctls+0x1d94>
		0000000000021324:  R_AARCH64_CALL26	_printk
   21328: 128000b6     	mov	w22, #-0x6              // =-6
   2132c: 17fffe95     	b	0x20d80 <syna_cdev_ioctls+0x17f0>
   21330: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c715
   21334: 91000108     	add	x8, x8, #0x0
		0000000000021334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c715
   21338: 7100029f     	cmp	w20, #0x0
   2133c: 90000009     	adrp	x9, 0x21000 <syna_cdev_ioctls+0x1a70>
		000000000002133c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c4aa
   21340: 91000129     	add	x9, x9, #0x0
		0000000000021340:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c4aa
   21344: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c0d2
   21348: 91000000     	add	x0, x0, #0x0
		0000000000021348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c0d2
   2134c: 9a881122     	csel	x2, x9, x8, ne
   21350: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18345
   21354: 91000021     	add	x1, x1, #0x0
		0000000000021354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18345
   21358: 94000000     	bl	0x21358 <syna_cdev_ioctls+0x1dc8>
		0000000000021358:  R_AARCH64_CALL26	_printk
   2135c: aa1603e0     	mov	x0, x22
   21360: 2a1403e1     	mov	w1, w20
   21364: 94000000     	bl	0x21364 <syna_cdev_ioctls+0x1dd4>
		0000000000021364:  R_AARCH64_CALL26	syna_tcm_enable_predict_reading
   21368: 794012a8     	ldrh	w8, [x21, #0x8]
   2136c: 17fffe4c     	b	0x20c9c <syna_cdev_ioctls+0x170c>
   21370: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17a59
   21374: 91000000     	add	x0, x0, #0x0
		0000000000021374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17a59
   21378: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18345
   2137c: 91000021     	add	x1, x1, #0x0
		000000000002137c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18345
   21380: b9000122     	str	w2, [x9]
		0000000000021380:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   21384: 94000000     	bl	0x21384 <syna_cdev_ioctls+0x1df4>
		0000000000021384:  R_AARCH64_CALL26	_printk
   21388: 17fffe4a     	b	0x20cb0 <syna_cdev_ioctls+0x1720>
   2138c: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		000000000002138c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19889
   21390: 91000000     	add	x0, x0, #0x0
		0000000000021390:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19889
   21394: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021394:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18345
   21398: 91000021     	add	x1, x1, #0x0
		0000000000021398:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18345
   2139c: 94000000     	bl	0x2139c <syna_cdev_ioctls+0x1e0c>
		000000000002139c:  R_AARCH64_CALL26	_printk
   213a0: 17fffe49     	b	0x20cc4 <syna_cdev_ioctls+0x1734>
   213a4: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000213a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19631
   213a8: 91000000     	add	x0, x0, #0x0
		00000000000213a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19631
   213ac: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000213ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b78b
   213b0: 91000021     	add	x1, x1, #0x0
		00000000000213b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b78b
   213b4: 2a1703e2     	mov	w2, w23
   213b8: 2a1903e3     	mov	w3, w25
   213bc: 94000000     	bl	0x213bc <syna_cdev_ioctls+0x1e2c>
		00000000000213bc:  R_AARCH64_CALL26	_printk
   213c0: 12800956     	mov	w22, #-0x4b             // =-75
   213c4: 17fffe49     	b	0x20ce8 <syna_cdev_ioctls+0x1758>
   213c8: aa1803e0     	mov	x0, x24
   213cc: 94000000     	bl	0x213cc <syna_cdev_ioctls+0x1e3c>
		00000000000213cc:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
   213d0: 17fffac2     	b	0x1fed8 <syna_cdev_ioctls+0x948>
   213d4: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000213d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19a88
   213d8: 91000000     	add	x0, x0, #0x0
		00000000000213d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19a88
   213dc: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000213dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b78b
   213e0: 91000021     	add	x1, x1, #0x0
		00000000000213e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b78b
   213e4: 2a1903e2     	mov	w2, w25
   213e8: 94000000     	bl	0x213e8 <syna_cdev_ioctls+0x1e58>
		00000000000213e8:  R_AARCH64_CALL26	_printk
   213ec: 12800676     	mov	w22, #-0x34             // =-52
   213f0: 17fffaae     	b	0x1fea8 <syna_cdev_ioctls+0x918>
   213f4: f9402308     	ldr	x8, [x24, #0x40]
   213f8: 91002300     	add	x0, x24, #0x8
   213fc: 52800021     	mov	w1, #0x1                // =1
   21400: b85fc110     	ldur	w16, [x8, #-0x4]
   21404: 728c3631     	movk	w17, #0x61b1
   21408: 72a685d1     	movk	w17, #0x342e, lsl #16
   2140c: 6b11021f     	cmp	w16, w17
   21410: 54000040     	b.eq	0x21418 <syna_cdev_ioctls+0x1e88>
   21414: d4304500     	brk	#0x8228
   21418: d63f0100     	blr	x8
   2141c: 37f80480     	tbnz	w0, #0x1f, 0x214ac <syna_cdev_ioctls+0x1f1c>
   21420: f9400289     	ldr	x9, [x20]
   21424: b94023e8     	ldr	w8, [sp, #0x20]
   21428: b9420d29     	ldr	w9, [x9, #0x20c]
   2142c: 6b09011f     	cmp	w8, w9
   21430: 54000062     	b.hs	0x2143c <syna_cdev_ioctls+0x1eac>
   21434: 2a0903e8     	mov	w8, w9
   21438: b90023e9     	str	w9, [sp, #0x20]
   2143c: 90000014     	adrp	x20, 0x21000 <syna_cdev_ioctls+0x1a70>
		000000000002143c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae09
   21440: 91000294     	add	x20, x20, #0x0
		0000000000021440:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae09
   21444: 90000015     	adrp	x21, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021444:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb0
   21448: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021448:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bae9
   2144c: 91000000     	add	x0, x0, #0x0
		000000000002144c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bae9
   21450: aa1403e1     	mov	x1, x20
   21454: b90002a8     	str	w8, [x21]
		0000000000021454:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb0
   21458: 94000000     	bl	0x21458 <syna_cdev_ioctls+0x1ec8>
		0000000000021458:  R_AARCH64_CALL26	_printk
   2145c: b94002a2     	ldr	w2, [x21]
		000000000002145c:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb0
   21460: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021460:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c2f2
   21464: 91000000     	add	x0, x0, #0x0
		0000000000021464:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c2f2
   21468: aa1403e1     	mov	x1, x20
   2146c: 94000000     	bl	0x2146c <syna_cdev_ioctls+0x1edc>
		000000000002146c:  R_AARCH64_CALL26	_printk
   21470: 17fffd4d     	b	0x209a4 <syna_cdev_ioctls+0x1414>
   21474: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021474:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3eb
   21478: 91000000     	add	x0, x0, #0x0
		0000000000021478:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3eb
   2147c: 14000064     	b	0x2160c <syna_cdev_ioctls+0x207c>
   21480: f9402308     	ldr	x8, [x24, #0x40]
   21484: 91002300     	add	x0, x24, #0x8
   21488: 52800021     	mov	w1, #0x1                // =1
   2148c: b85fc110     	ldur	w16, [x8, #-0x4]
   21490: 728c3631     	movk	w17, #0x61b1
   21494: 72a685d1     	movk	w17, #0x342e, lsl #16
   21498: 6b11021f     	cmp	w16, w17
   2149c: 54000040     	b.eq	0x214a4 <syna_cdev_ioctls+0x1f14>
   214a0: d4304500     	brk	#0x8228
   214a4: d63f0100     	blr	x8
   214a8: 36f80f20     	tbz	w0, #0x1f, 0x2168c <syna_cdev_ioctls+0x20fc>
   214ac: 2a0003f6     	mov	w22, w0
   214b0: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000214b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18550
   214b4: 91000000     	add	x0, x0, #0x0
		00000000000214b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18550
   214b8: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000214b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae09
   214bc: 91000021     	add	x1, x1, #0x0
		00000000000214bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae09
   214c0: 94000000     	bl	0x214c0 <syna_cdev_ioctls+0x1f30>
		00000000000214c0:  R_AARCH64_CALL26	_printk
   214c4: 17fffe09     	b	0x20ce8 <syna_cdev_ioctls+0x1758>
   214c8: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000214c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac4c
   214cc: 91000000     	add	x0, x0, #0x0
		00000000000214cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac4c
   214d0: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000214d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17dd6
   214d4: 91000021     	add	x1, x1, #0x0
		00000000000214d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17dd6
   214d8: 94000000     	bl	0x214d8 <syna_cdev_ioctls+0x1f48>
		00000000000214d8:  R_AARCH64_CALL26	_printk
   214dc: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000214dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x187d4
   214e0: 91000000     	add	x0, x0, #0x0
		00000000000214e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x187d4
   214e4: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000214e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c31f
   214e8: 91000021     	add	x1, x1, #0x0
		00000000000214e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c31f
   214ec: 94000000     	bl	0x214ec <syna_cdev_ioctls+0x1f5c>
		00000000000214ec:  R_AARCH64_CALL26	_printk
   214f0: 128002b6     	mov	w22, #-0x16             // =-22
   214f4: 17fffdc2     	b	0x20bfc <syna_cdev_ioctls+0x166c>
   214f8: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000214f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   214fc: 91000000     	add	x0, x0, #0x0
		00000000000214fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   21500: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021500:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   21504: 91000021     	add	x1, x1, #0x0
		0000000000021504:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   21508: 94000000     	bl	0x21508 <syna_cdev_ioctls+0x1f78>
		0000000000021508:  R_AARCH64_CALL26	_printk
   2150c: 94000000     	bl	0x2150c <syna_cdev_ioctls+0x1f7c>
		000000000002150c:  R_AARCH64_CALL26	syna_request_managed_device
   21510: b5ff56c0     	cbnz	x0, 0x1ffe8 <syna_cdev_ioctls+0xa58>
   21514: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021514:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   21518: 91000000     	add	x0, x0, #0x0
		0000000000021518:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   2151c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		000000000002151c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194ed
   21520: 91000021     	add	x1, x1, #0x0
		0000000000021520:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194ed
   21524: 94000000     	bl	0x21524 <syna_cdev_ioctls+0x1f94>
		0000000000021524:  R_AARCH64_CALL26	_printk
   21528: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021528:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   2152c: f900011f     	str	xzr, [x8]
		000000000002152c:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   21530: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021530:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19bba
   21534: 91000000     	add	x0, x0, #0x0
		0000000000021534:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19bba
   21538: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021538:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a804
   2153c: 91000021     	add	x1, x1, #0x0
		000000000002153c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a804
   21540: 52800282     	mov	w2, #0x14               // =20
   21544: 94000000     	bl	0x21544 <syna_cdev_ioctls+0x1fb4>
		0000000000021544:  R_AARCH64_CALL26	_printk
   21548: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021548:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   2154c: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		000000000002154c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19eef
   21550: 91000000     	add	x0, x0, #0x0
		0000000000021550:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19eef
   21554: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021554:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x185cd
   21558: 91000021     	add	x1, x1, #0x0
		0000000000021558:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x185cd
   2155c: 52800282     	mov	w2, #0x14               // =20
   21560: f900011f     	str	xzr, [x8]
		0000000000021560:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x10
   21564: 94000000     	bl	0x21564 <syna_cdev_ioctls+0x1fd4>
		0000000000021564:  R_AARCH64_CALL26	_printk
   21568: 12801e56     	mov	w22, #-0xf3             // =-243
   2156c: 17fffaf4     	b	0x2013c <syna_cdev_ioctls+0xbac>
   21570: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021570:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   21574: 91000000     	add	x0, x0, #0x0
		0000000000021574:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   21578: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021578:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   2157c: 91000021     	add	x1, x1, #0x0
		000000000002157c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   21580: 94000000     	bl	0x21580 <syna_cdev_ioctls+0x1ff0>
		0000000000021580:  R_AARCH64_CALL26	_printk
   21584: 94000000     	bl	0x21584 <syna_cdev_ioctls+0x1ff4>
		0000000000021584:  R_AARCH64_CALL26	syna_request_managed_device
   21588: b5ff7060     	cbnz	x0, 0x20394 <syna_cdev_ioctls+0xe04>
   2158c: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		000000000002158c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   21590: 91000000     	add	x0, x0, #0x0
		0000000000021590:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   21594: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194ed
   21598: 91000021     	add	x1, x1, #0x0
		0000000000021598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194ed
   2159c: 94000000     	bl	0x2159c <syna_cdev_ioctls+0x200c>
		000000000002159c:  R_AARCH64_CALL26	_printk
   215a0: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000215a0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   215a4: f900011f     	str	xzr, [x8]
		00000000000215a4:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   215a8: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000215a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19bba
   215ac: 91000000     	add	x0, x0, #0x0
		00000000000215ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19bba
   215b0: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000215b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a804
   215b4: 91000021     	add	x1, x1, #0x0
		00000000000215b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a804
   215b8: 52800282     	mov	w2, #0x14               // =20
   215bc: 94000000     	bl	0x215bc <syna_cdev_ioctls+0x202c>
		00000000000215bc:  R_AARCH64_CALL26	_printk
   215c0: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000215c0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   215c4: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000215c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19eef
   215c8: 91000000     	add	x0, x0, #0x0
		00000000000215c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19eef
   215cc: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000215cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18345
   215d0: 91000021     	add	x1, x1, #0x0
		00000000000215d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18345
   215d4: 52800282     	mov	w2, #0x14               // =20
   215d8: f900011f     	str	xzr, [x8]
		00000000000215d8:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x10
   215dc: 94000000     	bl	0x215dc <syna_cdev_ioctls+0x204c>
		00000000000215dc:  R_AARCH64_CALL26	_printk
   215e0: 12801e56     	mov	w22, #-0xf3             // =-243
   215e4: 17fffdb9     	b	0x20cc8 <syna_cdev_ioctls+0x1738>
   215e8: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000215e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   215ec: 91000000     	add	x0, x0, #0x0
		00000000000215ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   215f0: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000215f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   215f4: 91000021     	add	x1, x1, #0x0
		00000000000215f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   215f8: 94000000     	bl	0x215f8 <syna_cdev_ioctls+0x2068>
		00000000000215f8:  R_AARCH64_CALL26	_printk
   215fc: 94000000     	bl	0x215fc <syna_cdev_ioctls+0x206c>
		00000000000215fc:  R_AARCH64_CALL26	syna_request_managed_device
   21600: b5ff2bc0     	cbnz	x0, 0x1fb78 <syna_cdev_ioctls+0x5e8>
   21604: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   21608: 91000000     	add	x0, x0, #0x0
		0000000000021608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   2160c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		000000000002160c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194ed
   21610: 91000021     	add	x1, x1, #0x0
		0000000000021610:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194ed
   21614: 94000000     	bl	0x21614 <syna_cdev_ioctls+0x2084>
		0000000000021614:  R_AARCH64_CALL26	_printk
   21618: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021618:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   2161c: f900011f     	str	xzr, [x8]
		000000000002161c:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   21620: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021620:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19bba
   21624: 91000000     	add	x0, x0, #0x0
		0000000000021624:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19bba
   21628: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021628:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a804
   2162c: 91000021     	add	x1, x1, #0x0
		000000000002162c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a804
   21630: 2a1403e2     	mov	w2, w20
   21634: 94000000     	bl	0x21634 <syna_cdev_ioctls+0x20a4>
		0000000000021634:  R_AARCH64_CALL26	_printk
   21638: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021638:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   2163c: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		000000000002163c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19eef
   21640: 91000000     	add	x0, x0, #0x0
		0000000000021640:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19eef
   21644: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021644:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c31f
   21648: 91000021     	add	x1, x1, #0x0
		0000000000021648:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c31f
   2164c: 2a1703e2     	mov	w2, w23
   21650: f900011f     	str	xzr, [x8]
		0000000000021650:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x10
   21654: 94000000     	bl	0x21654 <syna_cdev_ioctls+0x20c4>
		0000000000021654:  R_AARCH64_CALL26	_printk
   21658: 12801e56     	mov	w22, #-0xf3             // =-243
   2165c: 17fffd68     	b	0x20bfc <syna_cdev_ioctls+0x166c>
   21660: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021660:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19fa0
   21664: 91000000     	add	x0, x0, #0x0
		0000000000021664:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19fa0
   21668: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021668:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae09
   2166c: 91000021     	add	x1, x1, #0x0
		000000000002166c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae09
   21670: 94000000     	bl	0x21670 <syna_cdev_ioctls+0x20e0>
		0000000000021670:  R_AARCH64_CALL26	_printk
   21674: f9400288     	ldr	x8, [x20]
   21678: 90000009     	adrp	x9, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021678:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb0
   2167c: 2a1f03f6     	mov	w22, wzr
   21680: b9420d08     	ldr	w8, [x8, #0x20c]
   21684: b9000128     	str	w8, [x9]
		0000000000021684:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb0
   21688: 17fffd98     	b	0x20ce8 <syna_cdev_ioctls+0x1758>
   2168c: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		000000000002168c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bae9
   21690: 91000000     	add	x0, x0, #0x0
		0000000000021690:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bae9
   21694: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021694:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae09
   21698: 91000021     	add	x1, x1, #0x0
		0000000000021698:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae09
   2169c: 94000000     	bl	0x2169c <syna_cdev_ioctls+0x210c>
		000000000002169c:  R_AARCH64_CALL26	_printk
   216a0: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000216a0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb0
   216a4: 2a1f03f6     	mov	w22, wzr
   216a8: b900011f     	str	wzr, [x8]
		00000000000216a8:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb0
   216ac: 17fffd8f     	b	0x20ce8 <syna_cdev_ioctls+0x1758>
   216b0: 52802000     	mov	w0, #0x100              // =256
   216b4: aa1603e1     	mov	x1, x22
   216b8: 94000000     	bl	0x216b8 <syna_cdev_ioctls+0x2128>
		00000000000216b8:  R_AARCH64_CALL26	__copy_overflow
   216bc: 17fffe8c     	b	0x210ec <syna_cdev_ioctls+0x1b5c>
   216c0: 52800080     	mov	w0, #0x4                // =4
   216c4: aa1703e1     	mov	x1, x23
   216c8: 94000000     	bl	0x216c8 <syna_cdev_ioctls+0x2138>
		00000000000216c8:  R_AARCH64_CALL26	__copy_overflow
   216cc: 17fff842     	b	0x1f7d4 <syna_cdev_ioctls+0x244>
   216d0: d4210000     	brk	#0x800
   216d4: 34ff9a38     	cbz	w24, 0x20a18 <syna_cdev_ioctls+0x1488>
   216d8: 17fffc5a     	b	0x20840 <syna_cdev_ioctls+0x12b0>
   216dc: d4210000     	brk	#0x800
   216e0: 17fffd45     	b	0x20bf4 <syna_cdev_ioctls+0x1664>
   216e4: 94000000     	bl	0x216e4 <syna_cdev_ioctls+0x2154>
		00000000000216e4:  R_AARCH64_CALL26	__stack_chk_fail
   216e8: aa0003e2     	mov	x2, x0
   216ec: 528001e0     	mov	w0, #0xf                // =15
   216f0: aa1f03e1     	mov	x1, xzr
   216f4: 94000000     	bl	0x216f4 <syna_cdev_ioctls+0x2164>
		00000000000216f4:  R_AARCH64_CALL26	__fortify_panic
   216f8: 528001e0     	mov	w0, #0xf                // =15
   216fc: 94000000     	bl	0x216fc <syna_cdev_ioctls+0x216c>
		00000000000216fc:  R_AARCH64_CALL26	__fortify_panic
   21700: 528001e0     	mov	w0, #0xf                // =15
   21704: aa1603e2     	mov	x2, x22
   21708: 94000000     	bl	0x21708 <syna_cdev_ioctls+0x2178>
		0000000000021708:  R_AARCH64_CALL26	__fortify_panic
   2170c: 528001e0     	mov	w0, #0xf                // =15
   21710: aa1403e2     	mov	x2, x20
   21714: 94000000     	bl	0x21714 <syna_cdev_ioctls+0x2184>
		0000000000021714:  R_AARCH64_CALL26	__fortify_panic
