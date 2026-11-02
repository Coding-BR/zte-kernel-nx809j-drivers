
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001f534 <syna_cdev_ioctls>:
   1f534: d503233f     	paciasp
   1f538: d10643ff     	sub	sp, sp, #0x190
   1f53c: a9137bfd     	stp	x29, x30, [sp, #0x130]
   1f540: a9146ffc     	stp	x28, x27, [sp, #0x140]
   1f544: a91567fa     	stp	x26, x25, [sp, #0x150]
   1f548: a9165ff8     	stp	x24, x23, [sp, #0x160]
   1f54c: a91757f6     	stp	x22, x21, [sp, #0x170]
   1f550: a9184ff4     	stp	x20, x19, [sp, #0x180]
   1f554: 9104c3fd     	add	x29, sp, #0x130
   1f558: d5384108     	mrs	x8, SP_EL0
   1f55c: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f55c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data
   1f560: 91000000     	add	x0, x0, #0x0
		000000000001f560:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data
   1f564: f9438908     	ldr	x8, [x8, #0x710]
   1f568: aa0203f3     	mov	x19, x2
   1f56c: 2a0103f5     	mov	w21, w1
   1f570: f81f03a8     	stur	x8, [x29, #-0x10]
   1f574: f8450408     	ldr	x8, [x0], #0x50
   1f578: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   1f57c: f9405514     	ldr	x20, [x8, #0xa8]
   1f580: 94000000     	bl	0x1f580 <syna_cdev_ioctls+0x4c>
		000000000001f580:  R_AARCH64_CALL26	mutex_lock
   1f584: 12001eb6     	and	w22, w21, #0xff
   1f588: 71003edf     	cmp	w22, #0xf
   1f58c: 540001e8     	b.hi	0x1f5c8 <syna_cdev_ioctls+0x94>
   1f590: 710006df     	cmp	w22, #0x1
   1f594: 5400022c     	b.gt	0x1f5d8 <syna_cdev_ioctls+0xa4>
   1f598: 34000fd6     	cbz	w22, 0x1f790 <syna_cdev_ioctls+0x25c>
   1f59c: 710006df     	cmp	w22, #0x1
   1f5a0: 54008c81     	b.ne	0x20730 <syna_cdev_ioctls+0x11fc>
   1f5a4: f9413a89     	ldr	x9, [x20, #0x270]
   1f5a8: f9402128     	ldr	x8, [x9, #0x40]
   1f5ac: b4001208     	cbz	x8, 0x1f7ec <syna_cdev_ioctls+0x2b8>
   1f5b0: f100067f     	cmp	x19, #0x1
   1f5b4: 54001200     	b.eq	0x1f7f4 <syna_cdev_ioctls+0x2c0>
   1f5b8: b500bb53     	cbnz	x19, 0x20d20 <syna_cdev_ioctls+0x17ec>
   1f5bc: 91002120     	add	x0, x9, #0x8
   1f5c0: 2a1f03e1     	mov	w1, wzr
   1f5c4: 1400008e     	b	0x1f7fc <syna_cdev_ioctls+0x2c8>
   1f5c8: 710042df     	cmp	w22, #0x10
   1f5cc: 54000161     	b.ne	0x1f5f8 <syna_cdev_ioctls+0xc4>
   1f5d0: 52800036     	mov	w22, #0x1               // =1
   1f5d4: 140005d4     	b	0x20d24 <syna_cdev_ioctls+0x17f0>
   1f5d8: 71000adf     	cmp	w22, #0x2
   1f5dc: 5400ba20     	b.eq	0x20d20 <syna_cdev_ioctls+0x17ec>
   1f5e0: 71000edf     	cmp	w22, #0x3
   1f5e4: 54008a61     	b.ne	0x20730 <syna_cdev_ioctls+0x11fc>
   1f5e8: 52800028     	mov	w8, #0x1                // =1
   1f5ec: 2a1f03f6     	mov	w22, wzr
   1f5f0: 39161288     	strb	w8, [x20, #0x584]
   1f5f4: 140005cc     	b	0x20d24 <syna_cdev_ioctls+0x17f0>
   1f5f8: d538411a     	mrs	x26, SP_EL0
   1f5fc: 39411b48     	ldrb	w8, [x26, #0x46]
   1f600: d378de7b     	lsl	x27, x19, #8
   1f604: 37280088     	tbnz	w8, #0x5, 0x1f614 <syna_cdev_ioctls+0xe0>
   1f608: f9400349     	ldr	x9, [x26]
   1f60c: aa1303e8     	mov	x8, x19
   1f610: 36d00049     	tbz	w9, #0x1a, 0x1f618 <syna_cdev_ioctls+0xe4>
   1f614: 8a9b2268     	and	x8, x19, x27, asr #8
   1f618: b27c8be9     	mov	x9, #0x7ffffffff0       // =549755813872
   1f61c: eb09011f     	cmp	x8, x9
   1f620: 54008088     	b.hi	0x20630 <syna_cdev_ioctls+0x10fc>
   1f624: d503201f     	nop
   1f628: d53b4228     	mrs	x8, DAIF
   1f62c: d50343df     	msr	DAIFSet, #0x3
   1f630: f9400749     	ldr	x9, [x26, #0x8]
   1f634: d538202a     	mrs	x10, TTBR1_EL1
   1f638: aa0903eb     	mov	x11, x9
   1f63c: b340bd4b     	bfxil	x11, x10, #0, #48
   1f640: d518202b     	msr	TTBR1_EL1, x11
   1f644: d5182009     	msr	TTBR0_EL1, x9
   1f648: d5033fdf     	isb
   1f64c: d51b4228     	msr	DAIF, x8
   1f650: 9248fa61     	and	x1, x19, #0xff7fffffffffffff
   1f654: 910023e0     	add	x0, sp, #0x8
   1f658: 52800202     	mov	w2, #0x10               // =16
   1f65c: 94000000     	bl	0x1f65c <syna_cdev_ioctls+0x128>
		000000000001f65c:  R_AARCH64_CALL26	__arch_copy_from_user
   1f660: d503201f     	nop
   1f664: d53b4228     	mrs	x8, DAIF
   1f668: d50343df     	msr	DAIFSet, #0x3
   1f66c: d5382029     	mrs	x9, TTBR1_EL1
   1f670: 9240bd29     	and	x9, x9, #0xffffffffffff
   1f674: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   1f678: d518200a     	msr	TTBR0_EL1, x10
   1f67c: d5182029     	msr	TTBR1_EL1, x9
   1f680: d5033fdf     	isb
   1f684: d51b4228     	msr	DAIF, x8
   1f688: b5007d60     	cbnz	x0, 0x20634 <syna_cdev_ioctls+0x1100>
   1f68c: b9400ff7     	ldr	w23, [sp, #0xc]
   1f690: 714006ff     	cmp	w23, #0x1, lsl #12      // =0x1000
   1f694: 54007ee8     	b.hi	0x20670 <syna_cdev_ioctls+0x113c>
   1f698: 12001ea8     	and	w8, w21, #0xff
   1f69c: 51004508     	sub	w8, w8, #0x11
   1f6a0: 7100451f     	cmp	w8, #0x11
   1f6a4: 5400b9c8     	b.hi	0x20ddc <syna_cdev_ioctls+0x18a8>
   1f6a8: 90000009     	adrp	x9, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f6a8:  R_AARCH64_ADR_PREL_PG_HI21	syna_cdev_ioctls_rodata_10c8
   1f6ac: 91000129     	add	x9, x9, #0x0
		000000000001f6ac:  R_AARCH64_ADD_ABS_LO12_NC	syna_cdev_ioctls_rodata_10c8
   1f6b0: f9400bf5     	ldr	x21, [sp, #0x10]
   1f6b4: 1000000a     	adr	x10, 0x1f6b4 <syna_cdev_ioctls+0x180>
   1f6b8: b8a8792b     	ldrsw	x11, [x9, x8, lsl #2]
   1f6bc: 8b0b014a     	add	x10, x10, x11
   1f6c0: d61f0140     	br	x10
   1f6c4: 39560a88     	ldrb	w8, [x20, #0x582]
   1f6c8: b9400be3     	ldr	w3, [sp, #0x8]
   1f6cc: b90023ff     	str	wzr, [sp, #0x20]
   1f6d0: 3600ba48     	tbz	w8, #0x0, 0x20e18 <syna_cdev_ioctls+0x18e4>
   1f6d4: b9457e88     	ldr	w8, [x20, #0x57c]
   1f6d8: 71000d1f     	cmp	w8, #0x3
   1f6dc: 5400c040     	b.eq	0x20ee4 <syna_cdev_ioctls+0x19b0>
   1f6e0: 710012ff     	cmp	w23, #0x4
   1f6e4: 5400c8a3     	b.lo	0x20ff8 <syna_cdev_ioctls+0x1ac4>
   1f6e8: 71000c7f     	cmp	w3, #0x3
   1f6ec: 5400c869     	b.ls	0x20ff8 <syna_cdev_ioctls+0x1ac4>
   1f6f0: f9413a98     	ldr	x24, [x20, #0x270]
   1f6f4: f9402308     	ldr	x8, [x24, #0x40]
   1f6f8: b400cf68     	cbz	x8, 0x210e4 <syna_cdev_ioctls+0x1bb0>
   1f6fc: 710016ff     	cmp	w23, #0x5
   1f700: 5400fb22     	b.hs	0x21664 <syna_cdev_ioctls+0x2130>
   1f704: 910083e0     	add	x0, sp, #0x20
   1f708: aa1703e1     	mov	x1, x23
   1f70c: 2a1f03e2     	mov	w2, wzr
   1f710: 94000000     	bl	0x1f710 <syna_cdev_ioctls+0x1dc>
		000000000001f710:  R_AARCH64_CALL26	__check_object_size
   1f714: 39411b48     	ldrb	w8, [x26, #0x46]
   1f718: 37280088     	tbnz	w8, #0x5, 0x1f728 <syna_cdev_ioctls+0x1f4>
   1f71c: f9400349     	ldr	x9, [x26]
   1f720: aa1503e8     	mov	x8, x21
   1f724: 36d00069     	tbz	w9, #0x1a, 0x1f730 <syna_cdev_ioctls+0x1fc>
   1f728: d378dea8     	lsl	x8, x21, #8
   1f72c: 8a8822a8     	and	x8, x21, x8, asr #8
   1f730: d2c01009     	mov	x9, #0x8000000000       // =549755813888
   1f734: aa1703f6     	mov	x22, x23
   1f738: cb170129     	sub	x9, x9, x23
   1f73c: eb08013f     	cmp	x9, x8
   1f740: 54008622     	b.hs	0x20804 <syna_cdev_ioctls+0x12d0>
   1f744: cb1602e8     	sub	x8, x23, x22
   1f748: 52800089     	mov	w9, #0x4                // =4
   1f74c: eb080129     	subs	x9, x9, x8
   1f750: 9a8933e1     	csel	x1, xzr, x9, lo
   1f754: eb16003f     	cmp	x1, x22
   1f758: 5400fa63     	b.lo	0x216a4 <syna_cdev_ioctls+0x2170>
   1f75c: 910083e9     	add	x9, sp, #0x20
   1f760: 2a1f03e1     	mov	w1, wzr
   1f764: aa1603e2     	mov	x2, x22
   1f768: 8b080120     	add	x0, x9, x8
   1f76c: 94000000     	bl	0x1f76c <syna_cdev_ioctls+0x238>
		000000000001f76c:  R_AARCH64_CALL26	memset
   1f770: 2a1603f7     	mov	w23, w22
   1f774: 340087f6     	cbz	w22, 0x20870 <syna_cdev_ioctls+0x133c>
   1f778: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f778:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18bba
   1f77c: 91000000     	add	x0, x0, #0x0
		000000000001f77c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18bba
   1f780: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f780:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae09
   1f784: 91000021     	add	x1, x1, #0x0
		000000000001f784:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae09
   1f788: 2a1703e2     	mov	w2, w23
   1f78c: 1400066c     	b	0x2113c <syna_cdev_ioctls+0x1c08>
   1f790: f9400280     	ldr	x0, [x20]
   1f794: b9420c01     	ldr	w1, [x0, #0x20c]
   1f798: 94000000     	bl	0x1f798 <syna_cdev_ioctls+0x264>
		000000000001f798:  R_AARCH64_CALL26	syna_tcm_reset
   1f79c: 2a0003f6     	mov	w22, w0
   1f7a0: 37f87d80     	tbnz	w0, #0x1f, 0x20750 <syna_cdev_ioctls+0x121c>
   1f7a4: f9400288     	ldr	x8, [x20]
   1f7a8: 39402508     	ldrb	w8, [x8, #0x9]
   1f7ac: 7100051f     	cmp	w8, #0x1
   1f7b0: 5400aba1     	b.ne	0x20d24 <syna_cdev_ioctls+0x17f0>
   1f7b4: f9435e88     	ldr	x8, [x20, #0x6b8]
   1f7b8: aa1403e0     	mov	x0, x20
   1f7bc: b85fc110     	ldur	w16, [x8, #-0x4]
   1f7c0: 7288e391     	movk	w17, #0x471c
   1f7c4: 72b5c411     	movk	w17, #0xae20, lsl #16
   1f7c8: 6b11021f     	cmp	w16, w17
   1f7cc: 54000040     	b.eq	0x1f7d4 <syna_cdev_ioctls+0x2a0>
   1f7d0: d4304500     	brk	#0x8228
   1f7d4: d63f0100     	blr	x8
   1f7d8: 2a0003f6     	mov	w22, w0
   1f7dc: 36f8aa40     	tbz	w0, #0x1f, 0x20d24 <syna_cdev_ioctls+0x17f0>
   1f7e0: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f7e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x179ee
   1f7e4: 91000000     	add	x0, x0, #0x0
		000000000001f7e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x179ee
   1f7e8: 140003dc     	b	0x20758 <syna_cdev_ioctls+0x1224>
   1f7ec: 128002b6     	mov	w22, #-0x16             // =-22
   1f7f0: 1400054d     	b	0x20d24 <syna_cdev_ioctls+0x17f0>
   1f7f4: 91002120     	add	x0, x9, #0x8
   1f7f8: 52800021     	mov	w1, #0x1                // =1
   1f7fc: b85fc110     	ldur	w16, [x8, #-0x4]
   1f800: 728c3631     	movk	w17, #0x61b1
   1f804: 72a685d1     	movk	w17, #0x342e, lsl #16
   1f808: 6b11021f     	cmp	w16, w17
   1f80c: 54000040     	b.eq	0x1f814 <syna_cdev_ioctls+0x2e0>
   1f810: d4304500     	brk	#0x8228
   1f814: d63f0100     	blr	x8
   1f818: 2a0003f6     	mov	w22, w0
   1f81c: 14000542     	b	0x20d24 <syna_cdev_ioctls+0x17f0>
   1f820: 39560a88     	ldrb	w8, [x20, #0x582]
   1f824: b9400bf6     	ldr	w22, [sp, #0x8]
   1f828: b9001fff     	str	wzr, [sp, #0x1c]
   1f82c: 3600ae28     	tbz	w8, #0x0, 0x20df0 <syna_cdev_ioctls+0x18bc>
   1f830: b9457e88     	ldr	w8, [x20, #0x57c]
   1f834: 71000d1f     	cmp	w8, #0x3
   1f838: 5400b420     	b.eq	0x20ebc <syna_cdev_ioctls+0x1988>
   1f83c: 710012ff     	cmp	w23, #0x4
   1f840: 5400bd03     	b.lo	0x20fe0 <syna_cdev_ioctls+0x1aac>
   1f844: 71000edf     	cmp	w22, #0x3
   1f848: 5400bcc9     	b.ls	0x20fe0 <syna_cdev_ioctls+0x1aac>
   1f84c: 39411b48     	ldrb	w8, [x26, #0x46]
   1f850: 37280088     	tbnz	w8, #0x5, 0x1f860 <syna_cdev_ioctls+0x32c>
   1f854: f9400349     	ldr	x9, [x26]
   1f858: aa1503e8     	mov	x8, x21
   1f85c: 36d00069     	tbz	w9, #0x1a, 0x1f868 <syna_cdev_ioctls+0x334>
   1f860: d378dea8     	lsl	x8, x21, #8
   1f864: 8a8822a8     	and	x8, x21, x8, asr #8
   1f868: b27e93e9     	mov	x9, #0x7ffffffffc       // =549755813884
   1f86c: eb09011f     	cmp	x8, x9
   1f870: 5400c1c8     	b.hi	0x210a8 <syna_cdev_ioctls+0x1b74>
   1f874: d503201f     	nop
   1f878: d53b4228     	mrs	x8, DAIF
   1f87c: d50343df     	msr	DAIFSet, #0x3
   1f880: f9400749     	ldr	x9, [x26, #0x8]
   1f884: d538202a     	mrs	x10, TTBR1_EL1
   1f888: aa0903eb     	mov	x11, x9
   1f88c: b340bd4b     	bfxil	x11, x10, #0, #48
   1f890: d518202b     	msr	TTBR1_EL1, x11
   1f894: d5182009     	msr	TTBR0_EL1, x9
   1f898: d5033fdf     	isb
   1f89c: d51b4228     	msr	DAIF, x8
   1f8a0: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
   1f8a4: 910073e0     	add	x0, sp, #0x1c
   1f8a8: 52800082     	mov	w2, #0x4                // =4
   1f8ac: 94000000     	bl	0x1f8ac <syna_cdev_ioctls+0x378>
		000000000001f8ac:  R_AARCH64_CALL26	__arch_copy_from_user
   1f8b0: aa0003e2     	mov	x2, x0
   1f8b4: d503201f     	nop
   1f8b8: d53b4228     	mrs	x8, DAIF
   1f8bc: d50343df     	msr	DAIFSet, #0x3
   1f8c0: d5382029     	mrs	x9, TTBR1_EL1
   1f8c4: 9240bd29     	and	x9, x9, #0xffffffffffff
   1f8c8: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   1f8cc: d518200a     	msr	TTBR0_EL1, x10
   1f8d0: d5182029     	msr	TTBR1_EL1, x9
   1f8d4: d5033fdf     	isb
   1f8d8: d51b4228     	msr	DAIF, x8
   1f8dc: b500be82     	cbnz	x2, 0x210ac <syna_cdev_ioctls+0x1b78>
   1f8e0: b9401ff7     	ldr	w23, [sp, #0x1c]
   1f8e4: f9427e88     	ldr	x8, [x20, #0x4f8]
   1f8e8: 9113e289     	add	x9, x20, #0x4f8
   1f8ec: eb09011f     	cmp	x8, x9
   1f8f0: 540005e1     	b.ne	0x1f9ac <syna_cdev_ioctls+0x478>
   1f8f4: 2a1703e0     	mov	w0, w23
   1f8f8: 94000000     	bl	0x1f8f8 <syna_cdev_ioctls+0x3c4>
		000000000001f8f8:  R_AARCH64_CALL26	__msecs_to_jiffies
   1f8fc: b944f288     	ldr	w8, [x20, #0x4f0]
   1f900: f100001f     	cmp	x0, #0x0
   1f904: 7a400904     	ccmp	w8, #0x0, #0x4, eq
   1f908: 9a9f0400     	csinc	x0, x0, xzr, eq
   1f90c: 350004e8     	cbnz	w8, 0x1f9a8 <syna_cdev_ioctls+0x474>
   1f910: b40004c0     	cbz	x0, 0x1f9a8 <syna_cdev_ioctls+0x474>
   1f914: 2a1703e0     	mov	w0, w23
   1f918: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   1f91c: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   1f920: f90013ff     	str	xzr, [sp, #0x20]
   1f924: 94000000     	bl	0x1f924 <syna_cdev_ioctls+0x3f0>
		000000000001f924:  R_AARCH64_CALL26	__msecs_to_jiffies
   1f928: aa0003f7     	mov	x23, x0
   1f92c: 910083e0     	add	x0, sp, #0x20
   1f930: 2a1f03e1     	mov	w1, wzr
   1f934: 94000000     	bl	0x1f934 <syna_cdev_ioctls+0x400>
		000000000001f934:  R_AARCH64_CALL26	init_wait_entry
   1f938: 91142280     	add	x0, x20, #0x508
   1f93c: 910083e1     	add	x1, sp, #0x20
   1f940: 52800022     	mov	w2, #0x1                // =1
   1f944: 94000000     	bl	0x1f944 <syna_cdev_ioctls+0x410>
		000000000001f944:  R_AARCH64_CALL26	prepare_to_wait_event
   1f948: b944f288     	ldr	w8, [x20, #0x4f0]
   1f94c: f10002ff     	cmp	x23, #0x0
   1f950: 7a400904     	ccmp	w8, #0x0, #0x4, eq
   1f954: 9a9f06f7     	csinc	x23, x23, xzr, eq
   1f958: 35000208     	cbnz	w8, 0x1f998 <syna_cdev_ioctls+0x464>
   1f95c: b40001f7     	cbz	x23, 0x1f998 <syna_cdev_ioctls+0x464>
   1f960: b5000240     	cbnz	x0, 0x1f9a8 <syna_cdev_ioctls+0x474>
   1f964: aa1703e0     	mov	x0, x23
   1f968: 94000000     	bl	0x1f968 <syna_cdev_ioctls+0x434>
		000000000001f968:  R_AARCH64_CALL26	schedule_timeout
   1f96c: aa0003f7     	mov	x23, x0
   1f970: 91142280     	add	x0, x20, #0x508
   1f974: 910083e1     	add	x1, sp, #0x20
   1f978: 52800022     	mov	w2, #0x1                // =1
   1f97c: 94000000     	bl	0x1f97c <syna_cdev_ioctls+0x448>
		000000000001f97c:  R_AARCH64_CALL26	prepare_to_wait_event
   1f980: b944f288     	ldr	w8, [x20, #0x4f0]
   1f984: f10002ff     	cmp	x23, #0x0
   1f988: 7a400904     	ccmp	w8, #0x0, #0x4, eq
   1f98c: 9a9f06f7     	csinc	x23, x23, xzr, eq
   1f990: 35000048     	cbnz	w8, 0x1f998 <syna_cdev_ioctls+0x464>
   1f994: b5fffe77     	cbnz	x23, 0x1f960 <syna_cdev_ioctls+0x42c>
   1f998: 91142280     	add	x0, x20, #0x508
   1f99c: 910083e1     	add	x1, sp, #0x20
   1f9a0: 94000000     	bl	0x1f9a0 <syna_cdev_ioctls+0x46c>
		000000000001f9a0:  R_AARCH64_CALL26	finish_wait
   1f9a4: aa1703e0     	mov	x0, x23
   1f9a8: 34009f20     	cbz	w0, 0x20d8c <syna_cdev_ioctls+0x1858>
   1f9ac: 710006df     	cmp	w22, #0x1
   1f9b0: 540096eb     	b.lt	0x20c8c <syna_cdev_ioctls+0x1758>
   1f9b4: b944f288     	ldr	w8, [x20, #0x4f0]
   1f9b8: 39411b49     	ldrb	w9, [x26, #0x46]
   1f9bc: b9001fe8     	str	w8, [sp, #0x1c]
   1f9c0: 37280089     	tbnz	w9, #0x5, 0x1f9d0 <syna_cdev_ioctls+0x49c>
   1f9c4: f9400349     	ldr	x9, [x26]
   1f9c8: aa1503e8     	mov	x8, x21
   1f9cc: 36d00069     	tbz	w9, #0x1a, 0x1f9d8 <syna_cdev_ioctls+0x4a4>
   1f9d0: d378dea8     	lsl	x8, x21, #8
   1f9d4: 8a8822a8     	and	x8, x21, x8, asr #8
   1f9d8: b27e93e9     	mov	x9, #0x7ffffffffc       // =549755813884
   1f9dc: eb09011f     	cmp	x8, x9
   1f9e0: 54000368     	b.hi	0x1fa4c <syna_cdev_ioctls+0x518>
   1f9e4: d503201f     	nop
   1f9e8: d53b4228     	mrs	x8, DAIF
   1f9ec: d50343df     	msr	DAIFSet, #0x3
   1f9f0: f9400749     	ldr	x9, [x26, #0x8]
   1f9f4: d538202a     	mrs	x10, TTBR1_EL1
   1f9f8: aa0903eb     	mov	x11, x9
   1f9fc: b340bd4b     	bfxil	x11, x10, #0, #48
   1fa00: d518202b     	msr	TTBR1_EL1, x11
   1fa04: d5182009     	msr	TTBR0_EL1, x9
   1fa08: d5033fdf     	isb
   1fa0c: d51b4228     	msr	DAIF, x8
   1fa10: 9248faa0     	and	x0, x21, #0xff7fffffffffffff
   1fa14: 910073e1     	add	x1, sp, #0x1c
   1fa18: 52800082     	mov	w2, #0x4                // =4
   1fa1c: 94000000     	bl	0x1fa1c <syna_cdev_ioctls+0x4e8>
		000000000001fa1c:  R_AARCH64_CALL26	__arch_copy_to_user
   1fa20: d503201f     	nop
   1fa24: d53b4228     	mrs	x8, DAIF
   1fa28: d50343df     	msr	DAIFSet, #0x3
   1fa2c: d5382029     	mrs	x9, TTBR1_EL1
   1fa30: 9240bd29     	and	x9, x9, #0xffffffffffff
   1fa34: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   1fa38: d518200a     	msr	TTBR0_EL1, x10
   1fa3c: d5182029     	msr	TTBR1_EL1, x9
   1fa40: d5033fdf     	isb
   1fa44: d51b4228     	msr	DAIF, x8
   1fa48: 34009220     	cbz	w0, 0x20c8c <syna_cdev_ioctls+0x1758>
   1fa4c: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001fa4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1956c
   1fa50: 91000000     	add	x0, x0, #0x0
		000000000001fa50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1956c
   1fa54: 1400059f     	b	0x210d0 <syna_cdev_ioctls+0x1b9c>
   1fa58: f9400296     	ldr	x22, [x20]
   1fa5c: 39560a88     	ldrb	w8, [x20, #0x582]
   1fa60: 390073ff     	strb	wzr, [sp, #0x1c]
   1fa64: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   1fa68: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   1fa6c: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   1fa70: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   1fa74: f90013ff     	str	xzr, [sp, #0x20]
   1fa78: 36009c68     	tbz	w8, #0x0, 0x20e04 <syna_cdev_ioctls+0x18d0>
   1fa7c: b9457e88     	ldr	w8, [x20, #0x57c]
   1fa80: 71000d1f     	cmp	w8, #0x3
   1fa84: 5400a260     	b.eq	0x20ed0 <syna_cdev_ioctls+0x199c>
   1fa88: 9000001c     	adrp	x28, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001fa88:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb4
   1fa8c: b9400388     	ldr	w8, [x28]
		000000000001fa8c:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   1fa90: 11000d08     	add	w8, w8, #0x3
   1fa94: 6b17011f     	cmp	w8, w23
   1fa98: 5400a828     	b.hi	0x20f9c <syna_cdev_ioctls+0x1a68>
   1fa9c: b9400be2     	ldr	w2, [sp, #0x8]
   1faa0: 6b17005f     	cmp	w2, w23
   1faa4: 5400b528     	b.hi	0x21148 <syna_cdev_ioctls+0x1c14>
   1faa8: 12820008     	mov	w8, #-0x1001            // =-4097
   1faac: 0b080048     	add	w8, w2, w8
   1fab0: 313ffd1f     	cmn	w8, #0xfff
   1fab4: 5400b4a9     	b.ls	0x21148 <syna_cdev_ioctls+0x1c14>
   1fab8: 90000008     	adrp	x8, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001fab8:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x48
   1fabc: 39400102     	ldrb	w2, [x8]
		000000000001fabc:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   1fac0: 3500b522     	cbnz	w2, 0x21164 <syna_cdev_ioctls+0x1c30>
   1fac4: 90000019     	adrp	x25, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001fac4:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   1fac8: 91000339     	add	x25, x25, #0x0
		000000000001fac8:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x8
   1facc: 91004320     	add	x0, x25, #0x10
   1fad0: 94000000     	bl	0x1fad0 <syna_cdev_ioctls+0x59c>
		000000000001fad0:  R_AARCH64_CALL26	mutex_lock
   1fad4: b940af28     	ldr	w8, [x25, #0xac]
   1fad8: 3941032a     	ldrb	w10, [x25, #0x40]
   1fadc: f9400320     	ldr	x0, [x25]
   1fae0: 0aa87d09     	bic	w9, w8, w8, asr #31
   1fae4: b9400b28     	ldr	w8, [x25, #0x8]
   1fae8: 0b170134     	add	w20, w9, w23
   1faec: 11000549     	add	w9, w10, #0x1
   1faf0: 6b14011f     	cmp	w8, w20
   1faf4: 39010329     	strb	w9, [x25, #0x40]
   1faf8: 54006382     	b.hs	0x20768 <syna_cdev_ioctls+0x1234>
   1fafc: b40000c0     	cbz	x0, 0x1fb14 <syna_cdev_ioctls+0x5e0>
   1fb00: aa0003f8     	mov	x24, x0
   1fb04: 94000000     	bl	0x1fb04 <syna_cdev_ioctls+0x5d0>
		000000000001fb04:  R_AARCH64_CALL26	syna_request_managed_device
   1fb08: b400d420     	cbz	x0, 0x2158c <syna_cdev_ioctls+0x2058>
   1fb0c: aa1803e1     	mov	x1, x24
   1fb10: 94000000     	bl	0x1fb10 <syna_cdev_ioctls+0x5dc>
		000000000001fb10:  R_AARCH64_CALL26	devm_kfree
   1fb14: 94000000     	bl	0x1fb14 <syna_cdev_ioctls+0x5e0>
		000000000001fb14:  R_AARCH64_CALL26	syna_request_managed_device
   1fb18: b400d480     	cbz	x0, 0x215a8 <syna_cdev_ioctls+0x2074>
   1fb1c: 7100029f     	cmp	w20, #0x0
   1fb20: 5400c7cd     	b.le	0x21418 <syna_cdev_ioctls+0x1ee4>
   1fb24: aa1403e1     	mov	x1, x20
   1fb28: 5281b802     	mov	w2, #0xdc0              // =3520
   1fb2c: 94000000     	bl	0x1fb2c <syna_cdev_ioctls+0x5f8>
		000000000001fb2c:  R_AARCH64_CALL26	devm_kmalloc
   1fb30: 90000008     	adrp	x8, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001fb30:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   1fb34: f9000100     	str	x0, [x8]
		000000000001fb34:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   1fb38: b400d460     	cbz	x0, 0x215c4 <syna_cdev_ioctls+0x2090>
   1fb3c: 90000008     	adrp	x8, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001fb3c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   1fb40: b9000114     	str	w20, [x8]
		000000000001fb40:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0x10
   1fb44: 1400030a     	b	0x2076c <syna_cdev_ioctls+0x1238>
   1fb48: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001fb48:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
   1fb4c: 91000000     	add	x0, x0, #0x0
		000000000001fb4c:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
   1fb50: 94000000     	bl	0x1fb50 <syna_cdev_ioctls+0x61c>
		000000000001fb50:  R_AARCH64_CALL26	mutex_lock
   1fb54: f9427e95     	ldr	x21, [x20, #0x4f8]
   1fb58: 9113e296     	add	x22, x20, #0x4f8
   1fb5c: eb1602bf     	cmp	x21, x22
   1fb60: 540003e0     	b.eq	0x1fbdc <syna_cdev_ioctls+0x6a8>
   1fb64: d2802017     	mov	x23, #0x100             // =256
   1fb68: f2fbd5b7     	movk	x23, #0xdead, lsl #48
   1fb6c: 14000004     	b	0x1fb7c <syna_cdev_ioctls+0x648>
   1fb70: f94002d5     	ldr	x21, [x22]
   1fb74: eb1602bf     	cmp	x21, x22
   1fb78: 54000320     	b.eq	0x1fbdc <syna_cdev_ioctls+0x6a8>
   1fb7c: f94006a8     	ldr	x8, [x21, #0x8]
   1fb80: f9400109     	ldr	x9, [x8]
   1fb84: eb15013f     	cmp	x9, x21
   1fb88: 54000241     	b.ne	0x1fbd0 <syna_cdev_ioctls+0x69c>
   1fb8c: f94002a9     	ldr	x9, [x21]
   1fb90: f940052a     	ldr	x10, [x9, #0x8]
   1fb94: eb15015f     	cmp	x10, x21
   1fb98: 540001c1     	b.ne	0x1fbd0 <syna_cdev_ioctls+0x69c>
   1fb9c: f9000528     	str	x8, [x9, #0x8]
   1fba0: f9000109     	str	x9, [x8]
   1fba4: f9400aa0     	ldr	x0, [x21, #0x10]
   1fba8: 91008ae8     	add	x8, x23, #0x22
   1fbac: a90022b7     	stp	x23, x8, [x21]
   1fbb0: 94000000     	bl	0x1fbb0 <syna_cdev_ioctls+0x67c>
		000000000001fbb0:  R_AARCH64_CALL26	kfree
   1fbb4: aa1503e0     	mov	x0, x21
   1fbb8: 94000000     	bl	0x1fbb8 <syna_cdev_ioctls+0x684>
		000000000001fbb8:  R_AARCH64_CALL26	kfree
   1fbbc: b944f288     	ldr	w8, [x20, #0x4f0]
   1fbc0: 34fffd88     	cbz	w8, 0x1fb70 <syna_cdev_ioctls+0x63c>
   1fbc4: 51000508     	sub	w8, w8, #0x1
   1fbc8: b904f288     	str	w8, [x20, #0x4f0]
   1fbcc: 17ffffe9     	b	0x1fb70 <syna_cdev_ioctls+0x63c>
   1fbd0: aa1503e0     	mov	x0, x21
   1fbd4: 94000000     	bl	0x1fbd4 <syna_cdev_ioctls+0x6a0>
		000000000001fbd4:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
   1fbd8: 17fffff3     	b	0x1fba4 <syna_cdev_ioctls+0x670>
   1fbdc: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001fbdc:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
   1fbe0: 91000000     	add	x0, x0, #0x0
		000000000001fbe0:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
   1fbe4: 94000000     	bl	0x1fbe4 <syna_cdev_ioctls+0x6b0>
		000000000001fbe4:  R_AARCH64_CALL26	mutex_unlock
   1fbe8: 39411b48     	ldrb	w8, [x26, #0x46]
   1fbec: 36288568     	tbz	w8, #0x5, 0x20c98 <syna_cdev_ioctls+0x1764>
   1fbf0: 1400042d     	b	0x20ca4 <syna_cdev_ioctls+0x1770>
   1fbf4: 39560a88     	ldrb	w8, [x20, #0x582]
   1fbf8: f9413a9c     	ldr	x28, [x20, #0x270]
   1fbfc: b9001fff     	str	wzr, [sp, #0x1c]
   1fc00: 36009168     	tbz	w8, #0x0, 0x20e2c <syna_cdev_ioctls+0x18f8>
   1fc04: b9457e88     	ldr	w8, [x20, #0x57c]
   1fc08: 71000d1f     	cmp	w8, #0x3
   1fc0c: 54009760     	b.eq	0x20ef8 <syna_cdev_ioctls+0x19c4>
   1fc10: 71000eff     	cmp	w23, #0x3
   1fc14: 54009d09     	b.ls	0x20fb4 <syna_cdev_ioctls+0x1a80>
   1fc18: 39411b48     	ldrb	w8, [x26, #0x46]
   1fc1c: 37280088     	tbnz	w8, #0x5, 0x1fc2c <syna_cdev_ioctls+0x6f8>
   1fc20: f9400349     	ldr	x9, [x26]
   1fc24: aa1503e8     	mov	x8, x21
   1fc28: 36d00069     	tbz	w9, #0x1a, 0x1fc34 <syna_cdev_ioctls+0x700>
   1fc2c: d378dea8     	lsl	x8, x21, #8
   1fc30: 8a8822a8     	and	x8, x21, x8, asr #8
   1fc34: b27e93e9     	mov	x9, #0x7ffffffffc       // =549755813884
   1fc38: eb09011f     	cmp	x8, x9
   1fc3c: 5400a628     	b.hi	0x21100 <syna_cdev_ioctls+0x1bcc>
   1fc40: d503201f     	nop
   1fc44: d53b4228     	mrs	x8, DAIF
   1fc48: d50343df     	msr	DAIFSet, #0x3
   1fc4c: f9400749     	ldr	x9, [x26, #0x8]
   1fc50: d538202a     	mrs	x10, TTBR1_EL1
   1fc54: aa0903eb     	mov	x11, x9
   1fc58: b340bd4b     	bfxil	x11, x10, #0, #48
   1fc5c: d518202b     	msr	TTBR1_EL1, x11
   1fc60: d5182009     	msr	TTBR0_EL1, x9
   1fc64: d5033fdf     	isb
   1fc68: d51b4228     	msr	DAIF, x8
   1fc6c: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
   1fc70: 910073e0     	add	x0, sp, #0x1c
   1fc74: 52800082     	mov	w2, #0x4                // =4
   1fc78: 94000000     	bl	0x1fc78 <syna_cdev_ioctls+0x744>
		000000000001fc78:  R_AARCH64_CALL26	__arch_copy_from_user
   1fc7c: d503201f     	nop
   1fc80: d53b4228     	mrs	x8, DAIF
   1fc84: d50343df     	msr	DAIFSet, #0x3
   1fc88: d5382029     	mrs	x9, TTBR1_EL1
   1fc8c: 9240bd29     	and	x9, x9, #0xffffffffffff
   1fc90: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   1fc94: d518200a     	msr	TTBR0_EL1, x10
   1fc98: d5182029     	msr	TTBR1_EL1, x9
   1fc9c: d5033fdf     	isb
   1fca0: d51b4228     	msr	DAIF, x8
   1fca4: b500a300     	cbnz	x0, 0x21104 <syna_cdev_ioctls+0x1bd0>
   1fca8: b9401ff6     	ldr	w22, [sp, #0x1c]
   1fcac: f9427e88     	ldr	x8, [x20, #0x4f8]
   1fcb0: 9113e298     	add	x24, x20, #0x4f8
   1fcb4: eb18011f     	cmp	x8, x24
   1fcb8: 540005e1     	b.ne	0x1fd74 <syna_cdev_ioctls+0x840>
   1fcbc: 2a1603e0     	mov	w0, w22
   1fcc0: 94000000     	bl	0x1fcc0 <syna_cdev_ioctls+0x78c>
		000000000001fcc0:  R_AARCH64_CALL26	__msecs_to_jiffies
   1fcc4: b944f288     	ldr	w8, [x20, #0x4f0]
   1fcc8: f100001f     	cmp	x0, #0x0
   1fccc: 7a400904     	ccmp	w8, #0x0, #0x4, eq
   1fcd0: 9a9f0400     	csinc	x0, x0, xzr, eq
   1fcd4: 350004e8     	cbnz	w8, 0x1fd70 <syna_cdev_ioctls+0x83c>
   1fcd8: b40004c0     	cbz	x0, 0x1fd70 <syna_cdev_ioctls+0x83c>
   1fcdc: 2a1603e0     	mov	w0, w22
   1fce0: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   1fce4: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   1fce8: f90013ff     	str	xzr, [sp, #0x20]
   1fcec: 94000000     	bl	0x1fcec <syna_cdev_ioctls+0x7b8>
		000000000001fcec:  R_AARCH64_CALL26	__msecs_to_jiffies
   1fcf0: aa0003f6     	mov	x22, x0
   1fcf4: 910083e0     	add	x0, sp, #0x20
   1fcf8: 2a1f03e1     	mov	w1, wzr
   1fcfc: 94000000     	bl	0x1fcfc <syna_cdev_ioctls+0x7c8>
		000000000001fcfc:  R_AARCH64_CALL26	init_wait_entry
   1fd00: 91142280     	add	x0, x20, #0x508
   1fd04: 910083e1     	add	x1, sp, #0x20
   1fd08: 52800022     	mov	w2, #0x1                // =1
   1fd0c: 94000000     	bl	0x1fd0c <syna_cdev_ioctls+0x7d8>
		000000000001fd0c:  R_AARCH64_CALL26	prepare_to_wait_event
   1fd10: b944f288     	ldr	w8, [x20, #0x4f0]
   1fd14: f10002df     	cmp	x22, #0x0
   1fd18: 7a400904     	ccmp	w8, #0x0, #0x4, eq
   1fd1c: 9a9f06d6     	csinc	x22, x22, xzr, eq
   1fd20: 35000208     	cbnz	w8, 0x1fd60 <syna_cdev_ioctls+0x82c>
   1fd24: b40001f6     	cbz	x22, 0x1fd60 <syna_cdev_ioctls+0x82c>
   1fd28: b5000240     	cbnz	x0, 0x1fd70 <syna_cdev_ioctls+0x83c>
   1fd2c: aa1603e0     	mov	x0, x22
   1fd30: 94000000     	bl	0x1fd30 <syna_cdev_ioctls+0x7fc>
		000000000001fd30:  R_AARCH64_CALL26	schedule_timeout
   1fd34: aa0003f6     	mov	x22, x0
   1fd38: 91142280     	add	x0, x20, #0x508
   1fd3c: 910083e1     	add	x1, sp, #0x20
   1fd40: 52800022     	mov	w2, #0x1                // =1
   1fd44: 94000000     	bl	0x1fd44 <syna_cdev_ioctls+0x810>
		000000000001fd44:  R_AARCH64_CALL26	prepare_to_wait_event
   1fd48: b944f288     	ldr	w8, [x20, #0x4f0]
   1fd4c: f10002df     	cmp	x22, #0x0
   1fd50: 7a400904     	ccmp	w8, #0x0, #0x4, eq
   1fd54: 9a9f06d6     	csinc	x22, x22, xzr, eq
   1fd58: 35000048     	cbnz	w8, 0x1fd60 <syna_cdev_ioctls+0x82c>
   1fd5c: b5fffe76     	cbnz	x22, 0x1fd28 <syna_cdev_ioctls+0x7f4>
   1fd60: 91142280     	add	x0, x20, #0x508
   1fd64: 910083e1     	add	x1, sp, #0x20
   1fd68: 94000000     	bl	0x1fd68 <syna_cdev_ioctls+0x834>
		000000000001fd68:  R_AARCH64_CALL26	finish_wait
   1fd6c: aa1603e0     	mov	x0, x22
   1fd70: 34008120     	cbz	w0, 0x20d94 <syna_cdev_ioctls+0x1860>
   1fd74: f9400308     	ldr	x8, [x24]
   1fd78: eb18011f     	cmp	x8, x24
   1fd7c: 54007360     	b.eq	0x20be8 <syna_cdev_ioctls+0x16b4>
   1fd80: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001fd80:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
   1fd84: 91000000     	add	x0, x0, #0x0
		000000000001fd84:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
   1fd88: 94000000     	bl	0x1fd88 <syna_cdev_ioctls+0x854>
		000000000001fd88:  R_AARCH64_CALL26	mutex_lock
   1fd8c: f9400318     	ldr	x24, [x24]
   1fd90: b9401b19     	ldr	w25, [x24, #0x18]
   1fd94: 6b17033f     	cmp	w25, w23
   1fd98: 5400ad88     	b.hi	0x21348 <syna_cdev_ioctls+0x1e14>
   1fd9c: f9400b16     	ldr	x22, [x24, #0x10]
   1fda0: aa1903e1     	mov	x1, x25
   1fda4: 52800022     	mov	w2, #0x1                // =1
   1fda8: aa1603e0     	mov	x0, x22
   1fdac: 94000000     	bl	0x1fdac <syna_cdev_ioctls+0x878>
		000000000001fdac:  R_AARCH64_CALL26	__check_object_size
   1fdb0: 39411b48     	ldrb	w8, [x26, #0x46]
   1fdb4: 37280088     	tbnz	w8, #0x5, 0x1fdc4 <syna_cdev_ioctls+0x890>
   1fdb8: f9400349     	ldr	x9, [x26]
   1fdbc: aa1503e8     	mov	x8, x21
   1fdc0: 36d00069     	tbz	w9, #0x1a, 0x1fdcc <syna_cdev_ioctls+0x898>
   1fdc4: d378dea8     	lsl	x8, x21, #8
   1fdc8: 8a8822a8     	and	x8, x21, x8, asr #8
   1fdcc: d2c01009     	mov	x9, #0x8000000000       // =549755813888
   1fdd0: cb190129     	sub	x9, x9, x25
   1fdd4: eb08013f     	cmp	x9, x8
   1fdd8: 54000363     	b.lo	0x1fe44 <syna_cdev_ioctls+0x910>
   1fddc: d503201f     	nop
   1fde0: d53b4228     	mrs	x8, DAIF
   1fde4: d50343df     	msr	DAIFSet, #0x3
   1fde8: f9400749     	ldr	x9, [x26, #0x8]
   1fdec: d538202a     	mrs	x10, TTBR1_EL1
   1fdf0: aa0903eb     	mov	x11, x9
   1fdf4: b340bd4b     	bfxil	x11, x10, #0, #48
   1fdf8: d518202b     	msr	TTBR1_EL1, x11
   1fdfc: d5182009     	msr	TTBR0_EL1, x9
   1fe00: d5033fdf     	isb
   1fe04: d51b4228     	msr	DAIF, x8
   1fe08: 9248faa0     	and	x0, x21, #0xff7fffffffffffff
   1fe0c: aa1603e1     	mov	x1, x22
   1fe10: aa1903e2     	mov	x2, x25
   1fe14: 94000000     	bl	0x1fe14 <syna_cdev_ioctls+0x8e0>
		000000000001fe14:  R_AARCH64_CALL26	__arch_copy_to_user
   1fe18: aa0003f9     	mov	x25, x0
   1fe1c: d503201f     	nop
   1fe20: d53b4228     	mrs	x8, DAIF
   1fe24: d50343df     	msr	DAIFSet, #0x3
   1fe28: d5382029     	mrs	x9, TTBR1_EL1
   1fe2c: 9240bd29     	and	x9, x9, #0xffffffffffff
   1fe30: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   1fe34: d518200a     	msr	TTBR0_EL1, x10
   1fe38: d5182029     	msr	TTBR1_EL1, x9
   1fe3c: d5033fdf     	isb
   1fe40: d51b4228     	msr	DAIF, x8
   1fe44: 3500a9b9     	cbnz	w25, 0x21378 <syna_cdev_ioctls+0x1e44>
   1fe48: 2a1f03f6     	mov	w22, wzr
   1fe4c: b9401b09     	ldr	w9, [x24, #0x18]
   1fe50: f9400708     	ldr	x8, [x24, #0x8]
   1fe54: b9000be9     	str	w9, [sp, #0x8]
   1fe58: f9400109     	ldr	x9, [x8]
   1fe5c: eb18013f     	cmp	x9, x24
   1fe60: 5400a861     	b.ne	0x2136c <syna_cdev_ioctls+0x1e38>
   1fe64: f9400309     	ldr	x9, [x24]
   1fe68: f940052a     	ldr	x10, [x9, #0x8]
   1fe6c: eb18015f     	cmp	x10, x24
   1fe70: 5400a7e1     	b.ne	0x2136c <syna_cdev_ioctls+0x1e38>
   1fe74: f9000528     	str	x8, [x9, #0x8]
   1fe78: f9000109     	str	x9, [x8]
   1fe7c: d2802008     	mov	x8, #0x100              // =256
   1fe80: 52800449     	mov	w9, #0x22               // =34
   1fe84: f2fbd5a8     	movk	x8, #0xdead, lsl #48
   1fe88: aa090109     	orr	x9, x8, x9
   1fe8c: a9002708     	stp	x8, x9, [x24]
   1fe90: 35000059     	cbnz	w25, 0x1fe98 <syna_cdev_ioctls+0x964>
   1fe94: b9401b16     	ldr	w22, [x24, #0x18]
   1fe98: f9400b00     	ldr	x0, [x24, #0x10]
   1fe9c: 94000000     	bl	0x1fe9c <syna_cdev_ioctls+0x968>
		000000000001fe9c:  R_AARCH64_CALL26	kfree
   1fea0: aa1803e0     	mov	x0, x24
   1fea4: 94000000     	bl	0x1fea4 <syna_cdev_ioctls+0x970>
		000000000001fea4:  R_AARCH64_CALL26	kfree
   1fea8: b944f288     	ldr	w8, [x20, #0x4f0]
   1feac: 34000068     	cbz	w8, 0x1feb8 <syna_cdev_ioctls+0x984>
   1feb0: 51000508     	sub	w8, w8, #0x1
   1feb4: b904f288     	str	w8, [x20, #0x4f0]
   1feb8: 90000009     	adrp	x9, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001feb8:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb8
   1febc: b9400129     	ldr	w9, [x9]
		000000000001febc:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb8
   1fec0: 6b09011f     	cmp	w8, w9
   1fec4: 540001e2     	b.hs	0x1ff00 <syna_cdev_ioctls+0x9cc>
   1fec8: f9413a88     	ldr	x8, [x20, #0x270]
   1fecc: 3942f108     	ldrb	w8, [x8, #0xbc]
   1fed0: 37000188     	tbnz	w8, #0x0, 0x1ff00 <syna_cdev_ioctls+0x9cc>
   1fed4: f9402388     	ldr	x8, [x28, #0x40]
   1fed8: b4000148     	cbz	x8, 0x1ff00 <syna_cdev_ioctls+0x9cc>
   1fedc: 91002380     	add	x0, x28, #0x8
   1fee0: 52800021     	mov	w1, #0x1                // =1
   1fee4: b85fc110     	ldur	w16, [x8, #-0x4]
   1fee8: 728c3631     	movk	w17, #0x61b1
   1feec: 72a685d1     	movk	w17, #0x342e, lsl #16
   1fef0: 6b11021f     	cmp	w16, w17
   1fef4: 54000040     	b.eq	0x1fefc <syna_cdev_ioctls+0x9c8>
   1fef8: d4304500     	brk	#0x8228
   1fefc: d63f0100     	blr	x8
   1ff00: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001ff00:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
   1ff04: 91000000     	add	x0, x0, #0x0
		000000000001ff04:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
   1ff08: 14000360     	b	0x20c88 <syna_cdev_ioctls+0x1754>
   1ff0c: b9400be3     	ldr	w3, [sp, #0x8]
   1ff10: aa1403e0     	mov	x0, x20
   1ff14: aa1503e1     	mov	x1, x21
   1ff18: 2a1703e2     	mov	w2, w23
   1ff1c: 940006a1     	bl	0x219a0 <syna_spi_probe+0x2e0>
		000000000001ff1c:  R_AARCH64_CALL26	syna_cdev_ioctl_raw_read
   1ff20: 1400007f     	b	0x2011c <syna_cdev_ioctls+0xbe8>
   1ff24: b9400be2     	ldr	w2, [sp, #0x8]
   1ff28: 71004c5f     	cmp	w2, #0x13
   1ff2c: 540078a9     	b.ls	0x20e40 <syna_cdev_ioctls+0x190c>
   1ff30: 90000017     	adrp	x23, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001ff30:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x48
   1ff34: f9400298     	ldr	x24, [x20]
   1ff38: 394002e2     	ldrb	w2, [x23]
		000000000001ff38:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   1ff3c: 35007ec2     	cbnz	w2, 0x20f14 <syna_cdev_ioctls+0x19e0>
   1ff40: 90000019     	adrp	x25, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001ff40:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   1ff44: 91000339     	add	x25, x25, #0x0
		000000000001ff44:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x8
   1ff48: 91004320     	add	x0, x25, #0x10
   1ff4c: 94000000     	bl	0x1ff4c <syna_cdev_ioctls+0xa18>
		000000000001ff4c:  R_AARCH64_CALL26	mutex_lock
   1ff50: 39410328     	ldrb	w8, [x25, #0x40]
   1ff54: b9400b36     	ldr	w22, [x25, #0x8]
   1ff58: f9400320     	ldr	x0, [x25]
   1ff5c: 11000508     	add	w8, w8, #0x1
   1ff60: 71004edf     	cmp	w22, #0x13
   1ff64: 39010328     	strb	w8, [x25, #0x40]
   1ff68: 54000248     	b.hi	0x1ffb0 <syna_cdev_ioctls+0xa7c>
   1ff6c: b40000c0     	cbz	x0, 0x1ff84 <syna_cdev_ioctls+0xa50>
   1ff70: aa0003f6     	mov	x22, x0
   1ff74: 94000000     	bl	0x1ff74 <syna_cdev_ioctls+0xa40>
		000000000001ff74:  R_AARCH64_CALL26	syna_request_managed_device
   1ff78: b400a920     	cbz	x0, 0x2149c <syna_cdev_ioctls+0x1f68>
   1ff7c: aa1603e1     	mov	x1, x22
   1ff80: 94000000     	bl	0x1ff80 <syna_cdev_ioctls+0xa4c>
		000000000001ff80:  R_AARCH64_CALL26	devm_kfree
   1ff84: 94000000     	bl	0x1ff84 <syna_cdev_ioctls+0xa50>
		000000000001ff84:  R_AARCH64_CALL26	syna_request_managed_device
   1ff88: b400a980     	cbz	x0, 0x214b8 <syna_cdev_ioctls+0x1f84>
   1ff8c: 52800281     	mov	w1, #0x14               // =20
   1ff90: 5281b802     	mov	w2, #0xdc0              // =3520
   1ff94: 52800296     	mov	w22, #0x14              // =20
   1ff98: 94000000     	bl	0x1ff98 <syna_cdev_ioctls+0xa64>
		000000000001ff98:  R_AARCH64_CALL26	devm_kmalloc
   1ff9c: 90000008     	adrp	x8, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001ff9c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   1ffa0: f9000100     	str	x0, [x8]
		000000000001ffa0:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   1ffa4: b400a980     	cbz	x0, 0x214d4 <syna_cdev_ioctls+0x1fa0>
   1ffa8: 90000008     	adrp	x8, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001ffa8:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   1ffac: b9000116     	str	w22, [x8]
		000000000001ffac:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0x10
   1ffb0: 2a1603e2     	mov	w2, w22
   1ffb4: 2a1f03e1     	mov	w1, wzr
   1ffb8: 94000000     	bl	0x1ffb8 <syna_cdev_ioctls+0xa84>
		000000000001ffb8:  R_AARCH64_CALL26	memset
   1ffbc: f9400328     	ldr	x8, [x25]
   1ffc0: b9000f3f     	str	wzr, [x25, #0xc]
   1ffc4: b900111f     	str	wzr, [x8, #0x10]
   1ffc8: a9007d1f     	stp	xzr, xzr, [x8]
   1ffcc: f9400321     	ldr	x1, [x25]
   1ffd0: b9403b08     	ldr	w8, [x24, #0x38]
   1ffd4: 79000428     	strh	w8, [x1, #0x2]
   1ffd8: b9403f08     	ldr	w8, [x24, #0x3c]
   1ffdc: 79000828     	strh	w8, [x1, #0x4]
   1ffe0: 39400028     	ldrb	w8, [x1]
   1ffe4: 39560a89     	ldrb	w9, [x20, #0x582]
   1ffe8: 121f7908     	and	w8, w8, #0xfffffffe
   1ffec: 2a090108     	orr	w8, w8, w9
   1fff0: 39000028     	strb	w8, [x1]
   1fff4: 121c7908     	and	w8, w8, #0xfffffff7
   1fff8: b9457e89     	ldr	w9, [x20, #0x57c]
   1fffc: 71000d3f     	cmp	w9, #0x3
   20000: 1a9f17e9     	cset	w9, eq
   20004: 2a090d08     	orr	w8, w8, w9, lsl #3
   20008: 39000028     	strb	w8, [x1]
   2000c: 39420308     	ldrb	w8, [x24, #0x80]
   20010: 34000048     	cbz	w8, 0x20018 <syna_cdev_ioctls+0xae4>
   20014: 39000428     	strb	w8, [x1, #0x1]
   20018: 79401028     	ldrh	w8, [x1, #0x8]
   2001c: 394deb09     	ldrb	w9, [x24, #0x37a]
   20020: 121f7908     	and	w8, w8, #0xfffffffe
   20024: 2a090108     	orr	w8, w8, w9
   20028: 90000009     	adrp	x9, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020028:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb4
   2002c: 91000129     	add	x9, x9, #0x0
		000000000002002c:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0xb4
   20030: 79001028     	strh	w8, [x1, #0x8]
   20034: 7940012a     	ldrh	w10, [x9]
   20038: 33185d48     	bfi	w8, w10, #8, #24
   2003c: 79001028     	strh	w8, [x1, #0x8]
   20040: b9400528     	ldr	w8, [x9, #0x4]
   20044: 53027d08     	lsr	w8, w8, #2
   20048: 39002828     	strb	w8, [x1, #0xa]
   2004c: 39411b48     	ldrb	w8, [x26, #0x46]
   20050: 37280088     	tbnz	w8, #0x5, 0x20060 <syna_cdev_ioctls+0xb2c>
   20054: f9400349     	ldr	x9, [x26]
   20058: aa1503e8     	mov	x8, x21
   2005c: 36d00069     	tbz	w9, #0x1a, 0x20068 <syna_cdev_ioctls+0xb34>
   20060: d378dea8     	lsl	x8, x21, #8
   20064: 8a8822a8     	and	x8, x21, x8, asr #8
   20068: b2705be9     	mov	x9, #0x7fffff0000       // =549755748352
   2006c: f29ffd89     	movk	x9, #0xffec
   20070: eb09011f     	cmp	x8, x9
   20074: 54006968     	b.hi	0x20da0 <syna_cdev_ioctls+0x186c>
   20078: d503201f     	nop
   2007c: d53b4228     	mrs	x8, DAIF
   20080: d50343df     	msr	DAIFSet, #0x3
   20084: f9400749     	ldr	x9, [x26, #0x8]
   20088: d538202a     	mrs	x10, TTBR1_EL1
   2008c: aa0903eb     	mov	x11, x9
   20090: b340bd4b     	bfxil	x11, x10, #0, #48
   20094: d518202b     	msr	TTBR1_EL1, x11
   20098: d5182009     	msr	TTBR0_EL1, x9
   2009c: d5033fdf     	isb
   200a0: d51b4228     	msr	DAIF, x8
   200a4: 9248faa0     	and	x0, x21, #0xff7fffffffffffff
   200a8: 52800282     	mov	w2, #0x14               // =20
   200ac: 94000000     	bl	0x200ac <syna_cdev_ioctls+0xb78>
		00000000000200ac:  R_AARCH64_CALL26	__arch_copy_to_user
   200b0: d503201f     	nop
   200b4: d53b4228     	mrs	x8, DAIF
   200b8: d50343df     	msr	DAIFSet, #0x3
   200bc: d5382029     	mrs	x9, TTBR1_EL1
   200c0: 9240bd29     	and	x9, x9, #0xffffffffffff
   200c4: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   200c8: d518200a     	msr	TTBR0_EL1, x10
   200cc: d5182029     	msr	TTBR1_EL1, x9
   200d0: d5033fdf     	isb
   200d4: d51b4228     	msr	DAIF, x8
   200d8: 35006640     	cbnz	w0, 0x20da0 <syna_cdev_ioctls+0x186c>
   200dc: 52800296     	mov	w22, #0x14              // =20
   200e0: 394002e2     	ldrb	w2, [x23]
		00000000000200e0:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   200e4: 7100045f     	cmp	w2, #0x1
   200e8: 54005c80     	b.eq	0x20c78 <syna_cdev_ioctls+0x1744>
   200ec: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		00000000000200ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3bb
   200f0: 91000000     	add	x0, x0, #0x0
		00000000000200f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3bb
   200f4: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		00000000000200f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c45f
   200f8: 91000021     	add	x1, x1, #0x0
		00000000000200f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c45f
   200fc: 94000000     	bl	0x200fc <syna_cdev_ioctls+0xbc8>
		00000000000200fc:  R_AARCH64_CALL26	_printk
   20100: 394002e8     	ldrb	w8, [x23]
		0000000000020100:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   20104: 14000396     	b	0x20f5c <syna_cdev_ioctls+0x1a28>
   20108: b9400be3     	ldr	w3, [sp, #0x8]
   2010c: aa1403e0     	mov	x0, x20
   20110: aa1503e1     	mov	x1, x21
   20114: 2a1703e2     	mov	w2, w23
   20118: 94000702     	bl	0x21d20 <syna_spi_probe+0x660>
		0000000000020118:  R_AARCH64_CALL26	syna_cdev_ioctl_raw_write
   2011c: 2a0003f6     	mov	w22, w0
   20120: 140002db     	b	0x20c8c <syna_cdev_ioctls+0x1758>
   20124: 39560a89     	ldrb	w9, [x20, #0x582]
   20128: b9400be8     	ldr	w8, [sp, #0x8]
   2012c: 390093ff     	strb	wzr, [sp, #0x24]
   20130: b90023ff     	str	wzr, [sp, #0x20]
   20134: 390073ff     	strb	wzr, [sp, #0x1c]
   20138: 37000089     	tbnz	w9, #0x0, 0x20148 <syna_cdev_ioctls+0xc14>
   2013c: b9457e89     	ldr	w9, [x20, #0x57c]
   20140: 71000d3f     	cmp	w9, #0x3
   20144: 54008ac1     	b.ne	0x2129c <syna_cdev_ioctls+0x1d68>
   20148: 710016ff     	cmp	w23, #0x5
   2014c: 540069a3     	b.lo	0x20e80 <syna_cdev_ioctls+0x194c>
   20150: 7100111f     	cmp	w8, #0x4
   20154: 54006969     	b.ls	0x20e80 <syna_cdev_ioctls+0x194c>
   20158: f9413a88     	ldr	x8, [x20, #0x270]
   2015c: f940c509     	ldr	x9, [x8, #0x188]
   20160: b4007109     	cbz	x9, 0x20f80 <syna_cdev_ioctls+0x1a4c>
   20164: 295f5d16     	ldp	w22, w23, [x8, #0xf8]
   20168: 39411b49     	ldrb	w9, [x26, #0x46]
   2016c: 37280089     	tbnz	w9, #0x5, 0x2017c <syna_cdev_ioctls+0xc48>
   20170: f9400349     	ldr	x9, [x26]
   20174: aa1503e8     	mov	x8, x21
   20178: 36d00069     	tbz	w9, #0x1a, 0x20184 <syna_cdev_ioctls+0xc50>
   2017c: d378dea8     	lsl	x8, x21, #8
   20180: 8a8822a8     	and	x8, x21, x8, asr #8
   20184: b2705be9     	mov	x9, #0x7fffff0000       // =549755748352
   20188: f29ffd89     	movk	x9, #0xffec
   2018c: 91003d29     	add	x9, x9, #0xf
   20190: eb09011f     	cmp	x8, x9
   20194: 54007428     	b.hi	0x21018 <syna_cdev_ioctls+0x1ae4>
   20198: d503201f     	nop
   2019c: d53b4228     	mrs	x8, DAIF
   201a0: d50343df     	msr	DAIFSet, #0x3
   201a4: f9400749     	ldr	x9, [x26, #0x8]
   201a8: d538202a     	mrs	x10, TTBR1_EL1
   201ac: aa0903eb     	mov	x11, x9
   201b0: b340bd4b     	bfxil	x11, x10, #0, #48
   201b4: d518202b     	msr	TTBR1_EL1, x11
   201b8: d5182009     	msr	TTBR0_EL1, x9
   201bc: d5033fdf     	isb
   201c0: d51b4228     	msr	DAIF, x8
   201c4: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
   201c8: 910083e0     	add	x0, sp, #0x20
   201cc: 528000a2     	mov	w2, #0x5                // =5
   201d0: 94000000     	bl	0x201d0 <syna_cdev_ioctls+0xc9c>
		00000000000201d0:  R_AARCH64_CALL26	__arch_copy_from_user
   201d4: d503201f     	nop
   201d8: d53b4228     	mrs	x8, DAIF
   201dc: d50343df     	msr	DAIFSet, #0x3
   201e0: d5382029     	mrs	x9, TTBR1_EL1
   201e4: 9240bd29     	and	x9, x9, #0xffffffffffff
   201e8: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   201ec: d518200a     	msr	TTBR0_EL1, x10
   201f0: d5182029     	msr	TTBR1_EL1, x9
   201f4: d5033fdf     	isb
   201f8: d51b4228     	msr	DAIF, x8
   201fc: b5007100     	cbnz	x0, 0x2101c <syna_cdev_ioctls+0x1ae8>
   20200: 784213e9     	ldurh	w9, [sp, #0x21]
   20204: 784233e8     	ldurh	w8, [sp, #0x23]
   20208: 34000069     	cbz	w9, 0x20214 <syna_cdev_ioctls+0xce0>
   2020c: f9413a8a     	ldr	x10, [x20, #0x270]
   20210: b900fd49     	str	w9, [x10, #0xfc]
   20214: 34000068     	cbz	w8, 0x20220 <syna_cdev_ioctls+0xcec>
   20218: f9413a89     	ldr	x9, [x20, #0x270]
   2021c: b900f928     	str	w8, [x9, #0xf8]
   20220: f9413a80     	ldr	x0, [x20, #0x270]
   20224: f940c408     	ldr	x8, [x0, #0x188]
   20228: b85fc110     	ldur	w16, [x8, #-0x4]
   2022c: 72974371     	movk	w17, #0xba1b
   20230: 72a56791     	movk	w17, #0x2b3c, lsl #16
   20234: 6b11021f     	cmp	w16, w17
   20238: 54000040     	b.eq	0x20240 <syna_cdev_ioctls+0xd0c>
   2023c: d4304500     	brk	#0x8228
   20240: d63f0100     	blr	x8
   20244: f9413a88     	ldr	x8, [x20, #0x270]
   20248: b900fd17     	str	w23, [x8, #0xfc]
   2024c: 394083e8     	ldrb	w8, [sp, #0x20]
   20250: f9413a89     	ldr	x9, [x20, #0x270]
   20254: 7100051f     	cmp	w8, #0x1
   20258: b900f936     	str	w22, [x9, #0xf8]
   2025c: 54003760     	b.eq	0x20948 <syna_cdev_ioctls+0x1414>
   20260: f9413a88     	ldr	x8, [x20, #0x270]
   20264: 3942f108     	ldrb	w8, [x8, #0xbc]
   20268: 370000a8     	tbnz	w8, #0x0, 0x2027c <syna_cdev_ioctls+0xd48>
   2026c: f9400280     	ldr	x0, [x20]
   20270: 910073e1     	add	x1, sp, #0x1c
   20274: aa1f03e2     	mov	x2, xzr
   20278: 94000000     	bl	0x20278 <syna_cdev_ioctls+0xd44>
		0000000000020278:  R_AARCH64_CALL26	syna_tcm_get_event_data
   2027c: f9400288     	ldr	x8, [x20]
   20280: 39402508     	ldrb	w8, [x8, #0x9]
   20284: 7100051f     	cmp	w8, #0x1
   20288: 54003601     	b.ne	0x20948 <syna_cdev_ioctls+0x1414>
   2028c: f9435e88     	ldr	x8, [x20, #0x6b8]
   20290: aa1403e0     	mov	x0, x20
   20294: b85fc110     	ldur	w16, [x8, #-0x4]
   20298: 7288e391     	movk	w17, #0x471c
   2029c: 72b5c411     	movk	w17, #0xae20, lsl #16
   202a0: 6b11021f     	cmp	w16, w17
   202a4: 54000040     	b.eq	0x202ac <syna_cdev_ioctls+0xd78>
   202a8: d4304500     	brk	#0x8228
   202ac: d63f0100     	blr	x8
   202b0: 2a0003f6     	mov	w22, w0
   202b4: 36f84ec0     	tbz	w0, #0x1f, 0x20c8c <syna_cdev_ioctls+0x1758>
   202b8: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		00000000000202b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17731
   202bc: 91000000     	add	x0, x0, #0x0
		00000000000202bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17731
   202c0: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		00000000000202c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b810
   202c4: 91000021     	add	x1, x1, #0x0
		00000000000202c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b810
   202c8: 94000000     	bl	0x202c8 <syna_cdev_ioctls+0xd94>
		00000000000202c8:  R_AARCH64_CALL26	_printk
   202cc: 14000270     	b	0x20c8c <syna_cdev_ioctls+0x1758>
   202d0: b9400be2     	ldr	w2, [sp, #0x8]
   202d4: 71004c5f     	cmp	w2, #0x13
   202d8: 54005be9     	b.ls	0x20e54 <syna_cdev_ioctls+0x1920>
   202dc: 90000018     	adrp	x24, 0x20000 <syna_cdev_ioctls+0xacc>
		00000000000202dc:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x48
   202e0: f9400296     	ldr	x22, [x20]
   202e4: 39400302     	ldrb	w2, [x24]
		00000000000202e4:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   202e8: 35006222     	cbnz	w2, 0x20f2c <syna_cdev_ioctls+0x19f8>
   202ec: 90000019     	adrp	x25, 0x20000 <syna_cdev_ioctls+0xacc>
		00000000000202ec:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   202f0: 91000339     	add	x25, x25, #0x0
		00000000000202f0:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x8
   202f4: 91004320     	add	x0, x25, #0x10
   202f8: 94000000     	bl	0x202f8 <syna_cdev_ioctls+0xdc4>
		00000000000202f8:  R_AARCH64_CALL26	mutex_lock
   202fc: 39410328     	ldrb	w8, [x25, #0x40]
   20300: b9400b37     	ldr	w23, [x25, #0x8]
   20304: f9400320     	ldr	x0, [x25]
   20308: 11000508     	add	w8, w8, #0x1
   2030c: 71004eff     	cmp	w23, #0x13
   20310: 39010328     	strb	w8, [x25, #0x40]
   20314: 54000248     	b.hi	0x2035c <syna_cdev_ioctls+0xe28>
   20318: b40000c0     	cbz	x0, 0x20330 <syna_cdev_ioctls+0xdfc>
   2031c: aa0003f7     	mov	x23, x0
   20320: 94000000     	bl	0x20320 <syna_cdev_ioctls+0xdec>
		0000000000020320:  R_AARCH64_CALL26	syna_request_managed_device
   20324: b4008f80     	cbz	x0, 0x21514 <syna_cdev_ioctls+0x1fe0>
   20328: aa1703e1     	mov	x1, x23
   2032c: 94000000     	bl	0x2032c <syna_cdev_ioctls+0xdf8>
		000000000002032c:  R_AARCH64_CALL26	devm_kfree
   20330: 94000000     	bl	0x20330 <syna_cdev_ioctls+0xdfc>
		0000000000020330:  R_AARCH64_CALL26	syna_request_managed_device
   20334: b4008fe0     	cbz	x0, 0x21530 <syna_cdev_ioctls+0x1ffc>
   20338: 52800281     	mov	w1, #0x14               // =20
   2033c: 5281b802     	mov	w2, #0xdc0              // =3520
   20340: 52800297     	mov	w23, #0x14              // =20
   20344: 94000000     	bl	0x20344 <syna_cdev_ioctls+0xe10>
		0000000000020344:  R_AARCH64_CALL26	devm_kmalloc
   20348: 90000008     	adrp	x8, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020348:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   2034c: f9000100     	str	x0, [x8]
		000000000002034c:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   20350: b4008fe0     	cbz	x0, 0x2154c <syna_cdev_ioctls+0x2018>
   20354: 90000008     	adrp	x8, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020354:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   20358: b9000117     	str	w23, [x8]
		0000000000020358:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0x10
   2035c: 2a1703e2     	mov	w2, w23
   20360: 2a1f03e1     	mov	w1, wzr
   20364: 94000000     	bl	0x20364 <syna_cdev_ioctls+0xe30>
		0000000000020364:  R_AARCH64_CALL26	memset
   20368: 39411b48     	ldrb	w8, [x26, #0x46]
   2036c: f9400337     	ldr	x23, [x25]
   20370: b9000f3f     	str	wzr, [x25, #0xc]
   20374: 37280088     	tbnz	w8, #0x5, 0x20384 <syna_cdev_ioctls+0xe50>
   20378: f9400349     	ldr	x9, [x26]
   2037c: aa1503e8     	mov	x8, x21
   20380: 36d00069     	tbz	w9, #0x1a, 0x2038c <syna_cdev_ioctls+0xe58>
   20384: d378dea8     	lsl	x8, x21, #8
   20388: 8a8822a8     	and	x8, x21, x8, asr #8
   2038c: b2705be9     	mov	x9, #0x7fffff0000       // =549755748352
   20390: f29ffd89     	movk	x9, #0xffec
   20394: eb09011f     	cmp	x8, x9
   20398: 540017a9     	b.ls	0x2068c <syna_cdev_ioctls+0x1158>
   2039c: 52800295     	mov	w21, #0x14              // =20
   203a0: cb1502e8     	sub	x8, x23, x21
   203a4: 2a1f03e1     	mov	w1, wzr
   203a8: aa1503e2     	mov	x2, x21
   203ac: 91005100     	add	x0, x8, #0x14
   203b0: 94000000     	bl	0x203b0 <syna_cdev_ioctls+0xe7c>
		00000000000203b0:  R_AARCH64_CALL26	memset
   203b4: 34001a35     	cbz	w21, 0x206f8 <syna_cdev_ioctls+0x11c4>
   203b8: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		00000000000203b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18bba
   203bc: 91000000     	add	x0, x0, #0x0
		00000000000203bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18bba
   203c0: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		00000000000203c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18345
   203c4: 91000021     	add	x1, x1, #0x0
		00000000000203c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18345
   203c8: 2a1503e2     	mov	w2, w21
   203cc: 94000000     	bl	0x203cc <syna_cdev_ioctls+0xe98>
		00000000000203cc:  R_AARCH64_CALL26	_printk
   203d0: 12800676     	mov	w22, #-0x34             // =-52
   203d4: 14000226     	b	0x20c6c <syna_cdev_ioctls+0x1738>
   203d8: b9457e88     	ldr	w8, [x20, #0x57c]
   203dc: b9400bf6     	ldr	w22, [sp, #0x8]
   203e0: a9117fff     	stp	xzr, xzr, [sp, #0x110]
   203e4: a9107fff     	stp	xzr, xzr, [sp, #0x100]
   203e8: 71000d1f     	cmp	w8, #0x3
   203ec: a90f7fff     	stp	xzr, xzr, [sp, #0xf0]
   203f0: a90e7fff     	stp	xzr, xzr, [sp, #0xe0]
   203f4: a90d7fff     	stp	xzr, xzr, [sp, #0xd0]
   203f8: a90c7fff     	stp	xzr, xzr, [sp, #0xc0]
   203fc: a90b7fff     	stp	xzr, xzr, [sp, #0xb0]
   20400: a90a7fff     	stp	xzr, xzr, [sp, #0xa0]
   20404: a9097fff     	stp	xzr, xzr, [sp, #0x90]
   20408: a9087fff     	stp	xzr, xzr, [sp, #0x80]
   2040c: a9077fff     	stp	xzr, xzr, [sp, #0x70]
   20410: a9067fff     	stp	xzr, xzr, [sp, #0x60]
   20414: a9057fff     	stp	xzr, xzr, [sp, #0x50]
   20418: a9047fff     	stp	xzr, xzr, [sp, #0x40]
   2041c: a9037fff     	stp	xzr, xzr, [sp, #0x30]
   20420: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   20424: 54005240     	b.eq	0x20e6c <syna_cdev_ioctls+0x1938>
   20428: 7103feff     	cmp	w23, #0xff
   2042c: 540059c9     	b.ls	0x20f64 <syna_cdev_ioctls+0x1a30>
   20430: 34005cf6     	cbz	w22, 0x20fcc <syna_cdev_ioctls+0x1a98>
   20434: 710406df     	cmp	w22, #0x101
   20438: 540090e2     	b.hs	0x21654 <syna_cdev_ioctls+0x2120>
   2043c: 910083e0     	add	x0, sp, #0x20
   20440: aa1603e1     	mov	x1, x22
   20444: 2a1f03e2     	mov	w2, wzr
   20448: 94000000     	bl	0x20448 <syna_cdev_ioctls+0xf14>
		0000000000020448:  R_AARCH64_CALL26	__check_object_size
   2044c: 39411b48     	ldrb	w8, [x26, #0x46]
   20450: 37280088     	tbnz	w8, #0x5, 0x20460 <syna_cdev_ioctls+0xf2c>
   20454: f9400349     	ldr	x9, [x26]
   20458: aa1503e8     	mov	x8, x21
   2045c: 36d00069     	tbz	w9, #0x1a, 0x20468 <syna_cdev_ioctls+0xf34>
   20460: d378dea8     	lsl	x8, x21, #8
   20464: 8a8822a8     	and	x8, x21, x8, asr #8
   20468: d2c01009     	mov	x9, #0x8000000000       // =549755813888
   2046c: aa1603e0     	mov	x0, x22
   20470: cb160129     	sub	x9, x9, x22
   20474: eb08013f     	cmp	x9, x8
   20478: 54005f43     	b.lo	0x21060 <syna_cdev_ioctls+0x1b2c>
   2047c: d503201f     	nop
   20480: d53b4228     	mrs	x8, DAIF
   20484: d50343df     	msr	DAIFSet, #0x3
   20488: f9400749     	ldr	x9, [x26, #0x8]
   2048c: d538202a     	mrs	x10, TTBR1_EL1
   20490: aa0903eb     	mov	x11, x9
   20494: b340bd4b     	bfxil	x11, x10, #0, #48
   20498: d518202b     	msr	TTBR1_EL1, x11
   2049c: d5182009     	msr	TTBR0_EL1, x9
   204a0: d5033fdf     	isb
   204a4: d51b4228     	msr	DAIF, x8
   204a8: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
   204ac: 910083e0     	add	x0, sp, #0x20
   204b0: aa1603e2     	mov	x2, x22
   204b4: 94000000     	bl	0x204b4 <syna_cdev_ioctls+0xf80>
		00000000000204b4:  R_AARCH64_CALL26	__arch_copy_from_user
   204b8: d503201f     	nop
   204bc: d53b4228     	mrs	x8, DAIF
   204c0: d50343df     	msr	DAIFSet, #0x3
   204c4: d5382029     	mrs	x9, TTBR1_EL1
   204c8: 9240bd29     	and	x9, x9, #0xffffffffffff
   204cc: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   204d0: d518200a     	msr	TTBR0_EL1, x10
   204d4: d5182029     	msr	TTBR1_EL1, x9
   204d8: d5033fdf     	isb
   204dc: d51b4228     	msr	DAIF, x8
   204e0: b5005c00     	cbnz	x0, 0x21060 <syna_cdev_ioctls+0x1b2c>
   204e4: aa1f03f5     	mov	x21, xzr
   204e8: 910083f8     	add	x24, sp, #0x20
   204ec: 90000017     	adrp	x23, 0x20000 <syna_cdev_ioctls+0xacc>
		00000000000204ec:  R_AARCH64_ADR_PREL_PG_HI21	syna_cdev_process_reports
   204f0: 910002f7     	add	x23, x23, #0x0
		00000000000204f0:  R_AARCH64_ADD_ABS_LO12_NC	syna_cdev_process_reports
   204f4: 14000004     	b	0x20504 <syna_cdev_ioctls+0xfd0>
   204f8: 910006b5     	add	x21, x21, #0x1
   204fc: f10402bf     	cmp	x21, #0x100
   20500: 54002240     	b.eq	0x20948 <syna_cdev_ioctls+0x1414>
   20504: 38756b08     	ldrb	w8, [x24, x21]
   20508: 7100051f     	cmp	w8, #0x1
   2050c: 54ffff61     	b.ne	0x204f8 <syna_cdev_ioctls+0xfc4>
   20510: f9400280     	ldr	x0, [x20]
   20514: 2a1503e1     	mov	w1, w21
   20518: aa1703e2     	mov	x2, x23
   2051c: aa1403e3     	mov	x3, x20
   20520: 94000000     	bl	0x20520 <syna_cdev_ioctls+0xfec>
		0000000000020520:  R_AARCH64_CALL26	syna_tcm_set_data_duplicator
   20524: 36fffea0     	tbz	w0, #0x1f, 0x204f8 <syna_cdev_ioctls+0xfc4>
   20528: 2a0003f6     	mov	w22, w0
   2052c: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		000000000002052c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b7a5
   20530: 91000000     	add	x0, x0, #0x0
		0000000000020530:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b7a5
   20534: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020534:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17710
   20538: 91000021     	add	x1, x1, #0x0
		0000000000020538:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17710
   2053c: 2a1503e2     	mov	w2, w21
   20540: 94000000     	bl	0x20540 <syna_cdev_ioctls+0x100c>
		0000000000020540:  R_AARCH64_CALL26	_printk
   20544: 140001d2     	b	0x20c8c <syna_cdev_ioctls+0x1758>
   20548: 39560a88     	ldrb	w8, [x20, #0x582]
   2054c: b9400bf6     	ldr	w22, [sp, #0x8]
   20550: 37000088     	tbnz	w8, #0x0, 0x20560 <syna_cdev_ioctls+0x102c>
   20554: b9457e88     	ldr	w8, [x20, #0x57c]
   20558: 71000d1f     	cmp	w8, #0x3
   2055c: 54006ae1     	b.ne	0x212b8 <syna_cdev_ioctls+0x1d84>
   20560: 340049d7     	cbz	w23, 0x20e98 <syna_cdev_ioctls+0x1964>
   20564: 6b1702df     	cmp	w22, w23
   20568: 54004988     	b.hi	0x20e98 <syna_cdev_ioctls+0x1964>
   2056c: f942d697     	ldr	x23, [x20, #0x5a8]
   20570: b40000b7     	cbz	x23, 0x20584 <syna_cdev_ioctls+0x1050>
   20574: 94000000     	bl	0x20574 <syna_cdev_ioctls+0x1040>
		0000000000020574:  R_AARCH64_CALL26	syna_request_managed_device
   20578: b4006680     	cbz	x0, 0x21248 <syna_cdev_ioctls+0x1d14>
   2057c: aa1703e1     	mov	x1, x23
   20580: 94000000     	bl	0x20580 <syna_cdev_ioctls+0x104c>
		0000000000020580:  R_AARCH64_CALL26	devm_kfree
   20584: 94000000     	bl	0x20584 <syna_cdev_ioctls+0x1050>
		0000000000020584:  R_AARCH64_CALL26	syna_request_managed_device
   20588: b40066e0     	cbz	x0, 0x21264 <syna_cdev_ioctls+0x1d30>
   2058c: 34005656     	cbz	w22, 0x21054 <syna_cdev_ioctls+0x1b20>
   20590: aa1603e1     	mov	x1, x22
   20594: 5281b802     	mov	w2, #0xdc0              // =3520
   20598: 94000000     	bl	0x20598 <syna_cdev_ioctls+0x1064>
		0000000000020598:  R_AARCH64_CALL26	devm_kmalloc
   2059c: f902d680     	str	x0, [x20, #0x5a8]
   205a0: b40066e0     	cbz	x0, 0x2127c <syna_cdev_ioctls+0x1d48>
   205a4: 2a1f03e1     	mov	w1, wzr
   205a8: aa1603e2     	mov	x2, x22
   205ac: aa0003f7     	mov	x23, x0
   205b0: 94000000     	bl	0x205b0 <syna_cdev_ioctls+0x107c>
		00000000000205b0:  R_AARCH64_CALL26	memset
   205b4: aa1703e0     	mov	x0, x23
   205b8: aa1603e1     	mov	x1, x22
   205bc: 2a1f03e2     	mov	w2, wzr
   205c0: 94000000     	bl	0x205c0 <syna_cdev_ioctls+0x108c>
		00000000000205c0:  R_AARCH64_CALL26	__check_object_size
   205c4: 39411b48     	ldrb	w8, [x26, #0x46]
   205c8: 37280088     	tbnz	w8, #0x5, 0x205d8 <syna_cdev_ioctls+0x10a4>
   205cc: f9400349     	ldr	x9, [x26]
   205d0: aa1503e8     	mov	x8, x21
   205d4: 36d00069     	tbz	w9, #0x1a, 0x205e0 <syna_cdev_ioctls+0x10ac>
   205d8: d378dea8     	lsl	x8, x21, #8
   205dc: 8a8822a8     	and	x8, x21, x8, asr #8
   205e0: d2c01009     	mov	x9, #0x8000000000       // =549755813888
   205e4: aa1603f4     	mov	x20, x22
   205e8: cb160129     	sub	x9, x9, x22
   205ec: eb08013f     	cmp	x9, x8
   205f0: 540016e2     	b.hs	0x208cc <syna_cdev_ioctls+0x1398>
   205f4: eb1402c8     	subs	x8, x22, x20
   205f8: 9a9433e1     	csel	x1, xzr, x20, lo
   205fc: eb14003f     	cmp	x1, x20
   20600: 54008583     	b.lo	0x216b0 <syna_cdev_ioctls+0x217c>
   20604: 8b0802e0     	add	x0, x23, x8
   20608: 2a1f03e1     	mov	w1, wzr
   2060c: aa1403e2     	mov	x2, x20
   20610: 94000000     	bl	0x20610 <syna_cdev_ioctls+0x10dc>
		0000000000020610:  R_AARCH64_CALL26	memset
   20614: 340033f4     	cbz	w20, 0x20c90 <syna_cdev_ioctls+0x175c>
   20618: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020618:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18bba
   2061c: 91000000     	add	x0, x0, #0x0
		000000000002061c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18bba
   20620: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020620:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0af
   20624: 91000021     	add	x1, x1, #0x0
		0000000000020624:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0af
   20628: 2a1403e2     	mov	w2, w20
   2062c: 140001d5     	b	0x20d80 <syna_cdev_ioctls+0x184c>
   20630: 52800200     	mov	w0, #0x10               // =16
   20634: f100441f     	cmp	x0, #0x11
   20638: 540082a2     	b.hs	0x2168c <syna_cdev_ioctls+0x2158>
   2063c: 910023e8     	add	x8, sp, #0x8
   20640: aa0003f3     	mov	x19, x0
   20644: 2a1f03e1     	mov	w1, wzr
   20648: cb000108     	sub	x8, x8, x0
   2064c: aa1303e2     	mov	x2, x19
   20650: 91004100     	add	x0, x8, #0x10
   20654: 94000000     	bl	0x20654 <syna_cdev_ioctls+0x1120>
		0000000000020654:  R_AARCH64_CALL26	memset
   20658: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020658:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18794
   2065c: 91000000     	add	x0, x0, #0x0
		000000000002065c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18794
   20660: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020660:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18578
   20664: 91000021     	add	x1, x1, #0x0
		0000000000020664:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18578
   20668: 2a1303e2     	mov	w2, w19
   2066c: 140001c5     	b	0x20d80 <syna_cdev_ioctls+0x184c>
   20670: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020670:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19f7d
   20674: 91000000     	add	x0, x0, #0x0
		0000000000020674:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19f7d
   20678: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020678:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18578
   2067c: 91000021     	add	x1, x1, #0x0
		000000000002067c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18578
   20680: 94000000     	bl	0x20680 <syna_cdev_ioctls+0x114c>
		0000000000020680:  R_AARCH64_CALL26	_printk
   20684: 12800676     	mov	w22, #-0x34             // =-52
   20688: 140001a7     	b	0x20d24 <syna_cdev_ioctls+0x17f0>
   2068c: d503201f     	nop
   20690: d53b4228     	mrs	x8, DAIF
   20694: d50343df     	msr	DAIFSet, #0x3
   20698: f9400749     	ldr	x9, [x26, #0x8]
   2069c: d538202a     	mrs	x10, TTBR1_EL1
   206a0: aa0903eb     	mov	x11, x9
   206a4: b340bd4b     	bfxil	x11, x10, #0, #48
   206a8: d518202b     	msr	TTBR1_EL1, x11
   206ac: d5182009     	msr	TTBR0_EL1, x9
   206b0: d5033fdf     	isb
   206b4: d51b4228     	msr	DAIF, x8
   206b8: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
   206bc: aa1703e0     	mov	x0, x23
   206c0: 52800282     	mov	w2, #0x14               // =20
   206c4: 94000000     	bl	0x206c4 <syna_cdev_ioctls+0x1190>
		00000000000206c4:  R_AARCH64_CALL26	__arch_copy_from_user
   206c8: aa0003f5     	mov	x21, x0
   206cc: d503201f     	nop
   206d0: d53b4228     	mrs	x8, DAIF
   206d4: d50343df     	msr	DAIFSet, #0x3
   206d8: d5382029     	mrs	x9, TTBR1_EL1
   206dc: 9240bd29     	and	x9, x9, #0xffffffffffff
   206e0: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   206e4: d518200a     	msr	TTBR0_EL1, x10
   206e8: d5182029     	msr	TTBR1_EL1, x9
   206ec: d5033fdf     	isb
   206f0: d51b4228     	msr	DAIF, x8
   206f4: b5ffe575     	cbnz	x21, 0x203a0 <syna_cdev_ioctls+0xe6c>
   206f8: 39560a88     	ldrb	w8, [x20, #0x582]
   206fc: 7100051f     	cmp	w8, #0x1
   20700: 54002b41     	b.ne	0x20c68 <syna_cdev_ioctls+0x1734>
   20704: 90000008     	adrp	x8, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020704:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   20708: f9400115     	ldr	x21, [x8]
		0000000000020708:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   2070c: 79400aa2     	ldrh	w2, [x21, #0x4]
   20710: 794006a1     	ldrh	w1, [x21, #0x2]
   20714: 340026e2     	cbz	w2, 0x20bf0 <syna_cdev_ioctls+0x16bc>
   20718: b9403ec8     	ldr	w8, [x22, #0x3c]
   2071c: 6b02011f     	cmp	w8, w2
   20720: 1a9f07e8     	cset	w8, ne
   20724: 350026a1     	cbnz	w1, 0x20bf8 <syna_cdev_ioctls+0x16c4>
   20728: 54002701     	b.ne	0x20c08 <syna_cdev_ioctls+0x16d4>
   2072c: 14000140     	b	0x20c2c <syna_cdev_ioctls+0x16f8>
   20730: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020730:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1904e
   20734: 91000000     	add	x0, x0, #0x0
		0000000000020734:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1904e
   20738: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020738:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18589
   2073c: 91000021     	add	x1, x1, #0x0
		000000000002073c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18589
   20740: 2a1603e2     	mov	w2, w22
   20744: 94000000     	bl	0x20744 <syna_cdev_ioctls+0x1210>
		0000000000020744:  R_AARCH64_CALL26	_printk
   20748: 128002b6     	mov	w22, #-0x16             // =-22
   2074c: 14000176     	b	0x20d24 <syna_cdev_ioctls+0x17f0>
   20750: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020750:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b045
   20754: 91000000     	add	x0, x0, #0x0
		0000000000020754:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b045
   20758: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020758:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18589
   2075c: 91000021     	add	x1, x1, #0x0
		000000000002075c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18589
   20760: 94000000     	bl	0x20760 <syna_cdev_ioctls+0x122c>
		0000000000020760:  R_AARCH64_CALL26	_printk
   20764: 14000170     	b	0x20d24 <syna_cdev_ioctls+0x17f0>
   20768: aa0803f4     	mov	x20, x8
   2076c: 2a1f03e1     	mov	w1, wzr
   20770: aa1403e2     	mov	x2, x20
   20774: 94000000     	bl	0x20774 <syna_cdev_ioctls+0x1240>
		0000000000020774:  R_AARCH64_CALL26	memset
   20778: b9400bf8     	ldr	w24, [sp, #0x8]
   2077c: f9400334     	ldr	x20, [x25]
   20780: b9000f3f     	str	wzr, [x25, #0xc]
   20784: 37f87798     	tbnz	w24, #0x1f, 0x21674 <syna_cdev_ioctls+0x2140>
   20788: aa1403e0     	mov	x0, x20
   2078c: aa1803e1     	mov	x1, x24
   20790: 2a1f03e2     	mov	w2, wzr
   20794: 94000000     	bl	0x20794 <syna_cdev_ioctls+0x1260>
		0000000000020794:  R_AARCH64_CALL26	__check_object_size
   20798: 39411b48     	ldrb	w8, [x26, #0x46]
   2079c: 37280088     	tbnz	w8, #0x5, 0x207ac <syna_cdev_ioctls+0x1278>
   207a0: f9400349     	ldr	x9, [x26]
   207a4: aa1503e8     	mov	x8, x21
   207a8: 36d00069     	tbz	w9, #0x1a, 0x207b4 <syna_cdev_ioctls+0x1280>
   207ac: d378dea8     	lsl	x8, x21, #8
   207b0: 8a8822a8     	and	x8, x21, x8, asr #8
   207b4: d2c01009     	mov	x9, #0x8000000000       // =549755813888
   207b8: aa1803f9     	mov	x25, x24
   207bc: cb180129     	sub	x9, x9, x24
   207c0: eb08013f     	cmp	x9, x8
   207c4: 54000c62     	b.hs	0x20950 <syna_cdev_ioctls+0x141c>
   207c8: cb190308     	sub	x8, x24, x25
   207cc: 2a1f03e1     	mov	w1, wzr
   207d0: aa1903e2     	mov	x2, x25
   207d4: 8b080280     	add	x0, x20, x8
   207d8: 94000000     	bl	0x207d8 <syna_cdev_ioctls+0x12a4>
		00000000000207d8:  R_AARCH64_CALL26	memset
   207dc: aa1903f8     	mov	x24, x25
   207e0: 34000ef8     	cbz	w24, 0x209bc <syna_cdev_ioctls+0x1488>
   207e4: b9400be2     	ldr	w2, [sp, #0x8]
   207e8: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		00000000000207e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18bba
   207ec: 91000000     	add	x0, x0, #0x0
		00000000000207ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18bba
   207f0: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		00000000000207f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c31f
   207f4: 91000021     	add	x1, x1, #0x0
		00000000000207f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c31f
   207f8: 94000000     	bl	0x207f8 <syna_cdev_ioctls+0x12c4>
		00000000000207f8:  R_AARCH64_CALL26	_printk
   207fc: 12800676     	mov	w22, #-0x34             // =-52
   20800: 140000e8     	b	0x20ba0 <syna_cdev_ioctls+0x166c>
   20804: d503201f     	nop
   20808: d53b4228     	mrs	x8, DAIF
   2080c: d50343df     	msr	DAIFSet, #0x3
   20810: f9400749     	ldr	x9, [x26, #0x8]
   20814: d538202a     	mrs	x10, TTBR1_EL1
   20818: aa0903eb     	mov	x11, x9
   2081c: b340bd4b     	bfxil	x11, x10, #0, #48
   20820: d518202b     	msr	TTBR1_EL1, x11
   20824: d5182009     	msr	TTBR0_EL1, x9
   20828: d5033fdf     	isb
   2082c: d51b4228     	msr	DAIF, x8
   20830: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
   20834: 910083e0     	add	x0, sp, #0x20
   20838: aa1703e2     	mov	x2, x23
   2083c: 94000000     	bl	0x2083c <syna_cdev_ioctls+0x1308>
		000000000002083c:  R_AARCH64_CALL26	__arch_copy_from_user
   20840: aa0003f6     	mov	x22, x0
   20844: d503201f     	nop
   20848: d53b4228     	mrs	x8, DAIF
   2084c: d50343df     	msr	DAIFSet, #0x3
   20850: d5382029     	mrs	x9, TTBR1_EL1
   20854: 9240bd29     	and	x9, x9, #0xffffffffffff
   20858: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   2085c: d518200a     	msr	TTBR0_EL1, x10
   20860: d5182029     	msr	TTBR1_EL1, x9
   20864: d5033fdf     	isb
   20868: d51b4228     	msr	DAIF, x8
   2086c: b5ff76d6     	cbnz	x22, 0x1f744 <syna_cdev_ioctls+0x210>
   20870: b94023e8     	ldr	w8, [sp, #0x20]
   20874: 7100051f     	cmp	w8, #0x1
   20878: 54000620     	b.eq	0x2093c <syna_cdev_ioctls+0x1408>
   2087c: 350058e8     	cbnz	w8, 0x21398 <syna_cdev_ioctls+0x1e64>
   20880: f9413a88     	ldr	x8, [x20, #0x270]
   20884: 3942f108     	ldrb	w8, [x8, #0xbc]
   20888: 7100051f     	cmp	w8, #0x1
   2088c: 540005e1     	b.ne	0x20948 <syna_cdev_ioctls+0x1414>
   20890: f9402308     	ldr	x8, [x24, #0x40]
   20894: 91002300     	add	x0, x24, #0x8
   20898: 2a1f03e1     	mov	w1, wzr
   2089c: b85fc110     	ldur	w16, [x8, #-0x4]
   208a0: 728c3631     	movk	w17, #0x61b1
   208a4: 72a685d1     	movk	w17, #0x342e, lsl #16
   208a8: 6b11021f     	cmp	w16, w17
   208ac: 54000040     	b.eq	0x208b4 <syna_cdev_ioctls+0x1380>
   208b0: d4304500     	brk	#0x8228
   208b4: d63f0100     	blr	x8
   208b8: 36f86a60     	tbz	w0, #0x1f, 0x21604 <syna_cdev_ioctls+0x20d0>
   208bc: 2a0003f6     	mov	w22, w0
   208c0: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		00000000000208c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18041
   208c4: 91000000     	add	x0, x0, #0x0
		00000000000208c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18041
   208c8: 140002e5     	b	0x2145c <syna_cdev_ioctls+0x1f28>
   208cc: d503201f     	nop
   208d0: d53b4228     	mrs	x8, DAIF
   208d4: d50343df     	msr	DAIFSet, #0x3
   208d8: f9400749     	ldr	x9, [x26, #0x8]
   208dc: d538202a     	mrs	x10, TTBR1_EL1
   208e0: aa0903eb     	mov	x11, x9
   208e4: b340bd4b     	bfxil	x11, x10, #0, #48
   208e8: d518202b     	msr	TTBR1_EL1, x11
   208ec: d5182009     	msr	TTBR0_EL1, x9
   208f0: d5033fdf     	isb
   208f4: d51b4228     	msr	DAIF, x8
   208f8: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
   208fc: aa1703e0     	mov	x0, x23
   20900: aa1603e2     	mov	x2, x22
   20904: 94000000     	bl	0x20904 <syna_cdev_ioctls+0x13d0>
		0000000000020904:  R_AARCH64_CALL26	__arch_copy_from_user
   20908: aa0003f4     	mov	x20, x0
   2090c: d503201f     	nop
   20910: d53b4228     	mrs	x8, DAIF
   20914: d50343df     	msr	DAIFSet, #0x3
   20918: d5382029     	mrs	x9, TTBR1_EL1
   2091c: 9240bd29     	and	x9, x9, #0xffffffffffff
   20920: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   20924: d518200a     	msr	TTBR0_EL1, x10
   20928: d5182029     	msr	TTBR1_EL1, x9
   2092c: d5033fdf     	isb
   20930: d51b4228     	msr	DAIF, x8
   20934: b4001af4     	cbz	x20, 0x20c90 <syna_cdev_ioctls+0x175c>
   20938: 17ffff2f     	b	0x205f4 <syna_cdev_ioctls+0x10c0>
   2093c: f9413a88     	ldr	x8, [x20, #0x270]
   20940: 3942f108     	ldrb	w8, [x8, #0xbc]
   20944: 36005708     	tbz	w8, #0x0, 0x21424 <syna_cdev_ioctls+0x1ef0>
   20948: 2a1f03f6     	mov	w22, wzr
   2094c: 140000d0     	b	0x20c8c <syna_cdev_ioctls+0x1758>
   20950: d503201f     	nop
   20954: d53b4228     	mrs	x8, DAIF
   20958: d50343df     	msr	DAIFSet, #0x3
   2095c: f9400749     	ldr	x9, [x26, #0x8]
   20960: d538202a     	mrs	x10, TTBR1_EL1
   20964: aa0903eb     	mov	x11, x9
   20968: b340bd4b     	bfxil	x11, x10, #0, #48
   2096c: d518202b     	msr	TTBR1_EL1, x11
   20970: d5182009     	msr	TTBR0_EL1, x9
   20974: d5033fdf     	isb
   20978: d51b4228     	msr	DAIF, x8
   2097c: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
   20980: aa1403e0     	mov	x0, x20
   20984: aa1803e2     	mov	x2, x24
   20988: 94000000     	bl	0x20988 <syna_cdev_ioctls+0x1454>
		0000000000020988:  R_AARCH64_CALL26	__arch_copy_from_user
   2098c: aa0003f9     	mov	x25, x0
   20990: d503201f     	nop
   20994: d53b4228     	mrs	x8, DAIF
   20998: d50343df     	msr	DAIFSet, #0x3
   2099c: d5382029     	mrs	x9, TTBR1_EL1
   209a0: 9240bd29     	and	x9, x9, #0xffffffffffff
   209a4: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   209a8: d518200a     	msr	TTBR0_EL1, x10
   209ac: d5182029     	msr	TTBR1_EL1, x9
   209b0: d5033fdf     	isb
   209b4: d51b4228     	msr	DAIF, x8
   209b8: b5fff099     	cbnz	x25, 0x207c8 <syna_cdev_ioctls+0x1294>
   209bc: 78401299     	ldurh	w25, [x20, #0x1]
   209c0: b9400be3     	ldr	w3, [sp, #0x8]
   209c4: 6b03033f     	cmp	w25, w3
   209c8: 54004028     	b.hi	0x211cc <syna_cdev_ioctls+0x1c98>
   209cc: 910083e8     	add	x8, sp, #0x20
   209d0: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		00000000000209d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1beea
   209d4: 91000021     	add	x1, x1, #0x0
		00000000000209d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1beea
   209d8: 90000002     	adrp	x2, 0x20000 <syna_cdev_ioctls+0xacc>
		00000000000209d8:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xc9
   209dc: 91000042     	add	x2, x2, #0x0
		00000000000209dc:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0xc9
   209e0: 91004100     	add	x0, x8, #0x10
   209e4: 390183ff     	strb	wzr, [sp, #0x60]
   209e8: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   209ec: 94000000     	bl	0x209ec <syna_cdev_ioctls+0x14b8>
		00000000000209ec:  R_AARCH64_CALL26	__mutex_init
   209f0: 90000008     	adrp	x8, 0x20000 <syna_cdev_ioctls+0xacc>
		00000000000209f0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb0
   209f4: aa1403f8     	mov	x24, x20
   209f8: 910073e4     	add	x4, sp, #0x1c
   209fc: b9400106     	ldr	w6, [x8]
		00000000000209fc:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb0
   20a00: 38403701     	ldrb	w1, [x24], #0x3
   20a04: 910083e5     	add	x5, sp, #0x20
   20a08: aa1603e0     	mov	x0, x22
   20a0c: aa1803e2     	mov	x2, x24
   20a10: 2a1903e3     	mov	w3, w25
   20a14: 94000000     	bl	0x20a14 <syna_cdev_ioctls+0x14e0>
		0000000000020a14:  R_AARCH64_CALL26	syna_tcm_send_command
   20a18: 37f83ea0     	tbnz	w0, #0x1f, 0x211ec <syna_cdev_ioctls+0x1cb8>
   20a1c: aa1403e0     	mov	x0, x20
   20a20: 2a1f03e1     	mov	w1, wzr
   20a24: aa1703e2     	mov	x2, x23
   20a28: 94000000     	bl	0x20a28 <syna_cdev_ioctls+0x14f4>
		0000000000020a28:  R_AARCH64_CALL26	memset
   20a2c: 394073e8     	ldrb	w8, [sp, #0x1c]
   20a30: 39000288     	strb	w8, [x20]
   20a34: b9402fe8     	ldr	w8, [sp, #0x2c]
   20a38: 39000688     	strb	w8, [x20, #0x1]
   20a3c: b9402fe8     	ldr	w8, [sp, #0x2c]
   20a40: 53087d08     	lsr	w8, w8, #8
   20a44: 39000a88     	strb	w8, [x20, #0x2]
   20a48: 90000008     	adrp	x8, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020a48:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   20a4c: b9400102     	ldr	w2, [x8]
		0000000000020a4c:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0x10
   20a50: b9402fe4     	ldr	w4, [sp, #0x2c]
   20a54: 6b04005f     	cmp	w2, w4
   20a58: 54003da3     	b.lo	0x2120c <syna_cdev_ioctls+0x1cd8>
   20a5c: 340003e4     	cbz	w4, 0x20ad8 <syna_cdev_ioctls+0x15a4>
   20a60: b4005118     	cbz	x24, 0x21480 <syna_cdev_ioctls+0x1f4c>
   20a64: f94013e1     	ldr	x1, [sp, #0x20]
   20a68: b40050c1     	cbz	x1, 0x21480 <syna_cdev_ioctls+0x1f4c>
   20a6c: 51000c43     	sub	w3, w2, #0x3
   20a70: b9402be2     	ldr	w2, [sp, #0x28]
   20a74: 6b03009f     	cmp	w4, w3
   20a78: 54004fa8     	b.hi	0x2146c <syna_cdev_ioctls+0x1f38>
   20a7c: 6b02009f     	cmp	w4, w2
   20a80: 54004f68     	b.hi	0x2146c <syna_cdev_ioctls+0x1f38>
   20a84: aa1803e0     	mov	x0, x24
   20a88: aa0403e2     	mov	x2, x4
   20a8c: 94000000     	bl	0x20a8c <syna_cdev_ioctls+0x1558>
		0000000000020a8c:  R_AARCH64_CALL26	memcpy
   20a90: b9400388     	ldr	w8, [x28]
		0000000000020a90:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   20a94: 7100051f     	cmp	w8, #0x1
   20a98: 5400022d     	b.le	0x20adc <syna_cdev_ioctls+0x15a8>
   20a9c: b9402fe9     	ldr	w9, [sp, #0x2c]
   20aa0: 794706c8     	ldrh	w8, [x22, #0x382]
   20aa4: 11000d2a     	add	w10, w9, #0x3
   20aa8: 53087d0b     	lsr	w11, w8, #8
   20aac: 1100112c     	add	w12, w9, #0x4
   20ab0: 382a4a88     	strb	w8, [x20, w10, uxtw]
   20ab4: 529fffca     	mov	w10, #0xfffe            // =65534
   20ab8: 382c4a8b     	strb	w11, [x20, w12, uxtw]
   20abc: b9400388     	ldr	w8, [x28]
		0000000000020abc:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   20ac0: 0b0a010a     	add	w10, w8, w10
   20ac4: 72003d5f     	tst	w10, #0xffff
   20ac8: 540000a0     	b.eq	0x20adc <syna_cdev_ioctls+0x15a8>
   20acc: 394e16c8     	ldrb	w8, [x22, #0x385]
   20ad0: 11001529     	add	w9, w9, #0x5
   20ad4: 38294a88     	strb	w8, [x20, w9, uxtw]
   20ad8: b9400388     	ldr	w8, [x28]
		0000000000020ad8:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   20adc: b9402fe9     	ldr	w9, [sp, #0x2c]
   20ae0: 0aa87d08     	bic	w8, w8, w8, asr #31
   20ae4: 0b080128     	add	w8, w9, w8
   20ae8: 31000d16     	adds	w22, w8, #0x3
   20aec: b9000bf6     	str	w22, [sp, #0x8]
   20af0: 54005c84     	b.mi	0x21680 <syna_cdev_ioctls+0x214c>
   20af4: aa1403e0     	mov	x0, x20
   20af8: aa1603e1     	mov	x1, x22
   20afc: 52800022     	mov	w2, #0x1                // =1
   20b00: 94000000     	bl	0x20b00 <syna_cdev_ioctls+0x15cc>
		0000000000020b00:  R_AARCH64_CALL26	__check_object_size
   20b04: 39411b48     	ldrb	w8, [x26, #0x46]
   20b08: 37280088     	tbnz	w8, #0x5, 0x20b18 <syna_cdev_ioctls+0x15e4>
   20b0c: f9400349     	ldr	x9, [x26]
   20b10: aa1503e8     	mov	x8, x21
   20b14: 36d00069     	tbz	w9, #0x1a, 0x20b20 <syna_cdev_ioctls+0x15ec>
   20b18: d378dea8     	lsl	x8, x21, #8
   20b1c: 8a8822a8     	and	x8, x21, x8, asr #8
   20b20: d2c01009     	mov	x9, #0x8000000000       // =549755813888
   20b24: cb160129     	sub	x9, x9, x22
   20b28: eb08013f     	cmp	x9, x8
   20b2c: 54000363     	b.lo	0x20b98 <syna_cdev_ioctls+0x1664>
   20b30: d503201f     	nop
   20b34: d53b4228     	mrs	x8, DAIF
   20b38: d50343df     	msr	DAIFSet, #0x3
   20b3c: f9400749     	ldr	x9, [x26, #0x8]
   20b40: d538202a     	mrs	x10, TTBR1_EL1
   20b44: aa0903eb     	mov	x11, x9
   20b48: b340bd4b     	bfxil	x11, x10, #0, #48
   20b4c: d518202b     	msr	TTBR1_EL1, x11
   20b50: d5182009     	msr	TTBR0_EL1, x9
   20b54: d5033fdf     	isb
   20b58: d51b4228     	msr	DAIF, x8
   20b5c: 9248faa0     	and	x0, x21, #0xff7fffffffffffff
   20b60: aa1403e1     	mov	x1, x20
   20b64: aa1603e2     	mov	x2, x22
   20b68: 94000000     	bl	0x20b68 <syna_cdev_ioctls+0x1634>
		0000000000020b68:  R_AARCH64_CALL26	__arch_copy_to_user
   20b6c: aa0003f6     	mov	x22, x0
   20b70: d503201f     	nop
   20b74: d53b4228     	mrs	x8, DAIF
   20b78: d50343df     	msr	DAIFSet, #0x3
   20b7c: d5382029     	mrs	x9, TTBR1_EL1
   20b80: 9240bd29     	and	x9, x9, #0xffffffffffff
   20b84: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   20b88: d518200a     	msr	TTBR0_EL1, x10
   20b8c: d5182029     	msr	TTBR1_EL1, x9
   20b90: d5033fdf     	isb
   20b94: d51b4228     	msr	DAIF, x8
   20b98: 350034b6     	cbnz	w22, 0x2122c <syna_cdev_ioctls+0x1cf8>
   20b9c: b9400bf6     	ldr	w22, [sp, #0x8]
   20ba0: 90000014     	adrp	x20, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020ba0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x48
   20ba4: 39400282     	ldrb	w2, [x20]
		0000000000020ba4:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   20ba8: 7100045f     	cmp	w2, #0x1
   20bac: 54002e81     	b.ne	0x2117c <syna_cdev_ioctls+0x1c48>
   20bb0: 2a1f03e8     	mov	w8, wzr
   20bb4: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020bb4:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x18
   20bb8: 91000000     	add	x0, x0, #0x0
		0000000000020bb8:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x18
   20bbc: 3900c008     	strb	w8, [x0, #0x30]
   20bc0: 94000000     	bl	0x20bc0 <syna_cdev_ioctls+0x168c>
		0000000000020bc0:  R_AARCH64_CALL26	mutex_unlock
   20bc4: 394183e2     	ldrb	w2, [sp, #0x60]
   20bc8: 35002ea2     	cbnz	w2, 0x2119c <syna_cdev_ioctls+0x1c68>
   20bcc: f94013f4     	ldr	x20, [sp, #0x20]
   20bd0: 94000000     	bl	0x20bd0 <syna_cdev_ioctls+0x169c>
		0000000000020bd0:  R_AARCH64_CALL26	syna_request_managed_device
   20bd4: b4002f00     	cbz	x0, 0x211b4 <syna_cdev_ioctls+0x1c80>
   20bd8: b40005b4     	cbz	x20, 0x20c8c <syna_cdev_ioctls+0x1758>
   20bdc: aa1403e1     	mov	x1, x20
   20be0: 94000000     	bl	0x20be0 <syna_cdev_ioctls+0x16ac>
		0000000000020be0:  R_AARCH64_CALL26	devm_kfree
   20be4: 1400002a     	b	0x20c8c <syna_cdev_ioctls+0x1758>
   20be8: 12800796     	mov	w22, #-0x3d             // =-61
   20bec: 14000028     	b	0x20c8c <syna_cdev_ioctls+0x1758>
   20bf0: 340001e1     	cbz	w1, 0x20c2c <syna_cdev_ioctls+0x16f8>
   20bf4: 2a1f03e8     	mov	w8, wzr
   20bf8: b9403ac9     	ldr	w9, [x22, #0x38]
   20bfc: 6b01013f     	cmp	w9, w1
   20c00: 54000041     	b.ne	0x20c08 <syna_cdev_ioctls+0x16d4>
   20c04: 36000148     	tbz	w8, #0x0, 0x20c2c <syna_cdev_ioctls+0x16f8>
   20c08: f941d6c8     	ldr	x8, [x22, #0x3a8]
   20c0c: aa1603e0     	mov	x0, x22
   20c10: b85fc110     	ldur	w16, [x8, #-0x4]
   20c14: 72963bb1     	movk	w17, #0xb1dd
   20c18: 72a09411     	movk	w17, #0x4a0, lsl #16
   20c1c: 6b11021f     	cmp	w16, w17
   20c20: 54000040     	b.eq	0x20c28 <syna_cdev_ioctls+0x16f4>
   20c24: d4304500     	brk	#0x8228
   20c28: d63f0100     	blr	x8
   20c2c: 794012a8     	ldrh	w8, [x21, #0x8]
   20c30: 394deac9     	ldrb	w9, [x22, #0x37a]
   20c34: 12000114     	and	w20, w8, #0x1
   20c38: 6b09029f     	cmp	w20, w9
   20c3c: 540034c1     	b.ne	0x212d4 <syna_cdev_ioctls+0x1da0>
   20c40: 90000009     	adrp	x9, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020c40:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb4
   20c44: 53087d02     	lsr	w2, w8, #8
   20c48: b9400128     	ldr	w8, [x9]
		0000000000020c48:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   20c4c: 6b02011f     	cmp	w8, w2
   20c50: 54003621     	b.ne	0x21314 <syna_cdev_ioctls+0x1de0>
   20c54: 39402aa8     	ldrb	w8, [x21, #0xa]
   20c58: 90000009     	adrp	x9, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020c58:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb8
   20c5c: 531e7502     	lsl	w2, w8, #2
   20c60: b9000122     	str	w2, [x9]
		0000000000020c60:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb8
   20c64: 35003668     	cbnz	w8, 0x21330 <syna_cdev_ioctls+0x1dfc>
   20c68: 2a1f03f6     	mov	w22, wzr
   20c6c: 39400302     	ldrb	w2, [x24]
		0000000000020c6c:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   20c70: 7100045f     	cmp	w2, #0x1
   20c74: 54001681     	b.ne	0x20f44 <syna_cdev_ioctls+0x1a10>
   20c78: 2a1f03e8     	mov	w8, wzr
   20c7c: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020c7c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x18
   20c80: 91000000     	add	x0, x0, #0x0
		0000000000020c80:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x18
   20c84: 3900c008     	strb	w8, [x0, #0x30]
   20c88: 94000000     	bl	0x20c88 <syna_cdev_ioctls+0x1754>
		0000000000020c88:  R_AARCH64_CALL26	mutex_unlock
   20c8c: 37f804d6     	tbnz	w22, #0x1f, 0x20d24 <syna_cdev_ioctls+0x17f0>
   20c90: 39411b48     	ldrb	w8, [x26, #0x46]
   20c94: 37280088     	tbnz	w8, #0x5, 0x20ca4 <syna_cdev_ioctls+0x1770>
   20c98: f9400349     	ldr	x9, [x26]
   20c9c: aa1303e8     	mov	x8, x19
   20ca0: 36d00049     	tbz	w9, #0x1a, 0x20ca8 <syna_cdev_ioctls+0x1774>
   20ca4: 8a9b2268     	and	x8, x19, x27, asr #8
   20ca8: b27c8be9     	mov	x9, #0x7ffffffff0       // =549755813872
   20cac: eb09011f     	cmp	x8, x9
   20cb0: 540005e8     	b.hi	0x20d6c <syna_cdev_ioctls+0x1838>
   20cb4: d503201f     	nop
   20cb8: d53b4228     	mrs	x8, DAIF
   20cbc: d50343df     	msr	DAIFSet, #0x3
   20cc0: f9400749     	ldr	x9, [x26, #0x8]
   20cc4: d538202a     	mrs	x10, TTBR1_EL1
   20cc8: aa0903eb     	mov	x11, x9
   20ccc: b340bd4b     	bfxil	x11, x10, #0, #48
   20cd0: d518202b     	msr	TTBR1_EL1, x11
   20cd4: d5182009     	msr	TTBR0_EL1, x9
   20cd8: d5033fdf     	isb
   20cdc: d51b4228     	msr	DAIF, x8
   20ce0: 9248fa60     	and	x0, x19, #0xff7fffffffffffff
   20ce4: 910023e1     	add	x1, sp, #0x8
   20ce8: 52800202     	mov	w2, #0x10               // =16
   20cec: 94000000     	bl	0x20cec <syna_cdev_ioctls+0x17b8>
		0000000000020cec:  R_AARCH64_CALL26	__arch_copy_to_user
   20cf0: aa0003e2     	mov	x2, x0
   20cf4: d503201f     	nop
   20cf8: d53b4228     	mrs	x8, DAIF
   20cfc: d50343df     	msr	DAIFSet, #0x3
   20d00: d5382029     	mrs	x9, TTBR1_EL1
   20d04: 9240bd29     	and	x9, x9, #0xffffffffffff
   20d08: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   20d0c: d518200a     	msr	TTBR0_EL1, x10
   20d10: d5182029     	msr	TTBR1_EL1, x9
   20d14: d5033fdf     	isb
   20d18: d51b4228     	msr	DAIF, x8
   20d1c: 350002a2     	cbnz	w2, 0x20d70 <syna_cdev_ioctls+0x183c>
   20d20: 2a1f03f6     	mov	w22, wzr
   20d24: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020d24:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x50
   20d28: 91000000     	add	x0, x0, #0x0
		0000000000020d28:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x50
   20d2c: 94000000     	bl	0x20d2c <syna_cdev_ioctls+0x17f8>
		0000000000020d2c:  R_AARCH64_CALL26	mutex_unlock
   20d30: d5384108     	mrs	x8, SP_EL0
   20d34: f9438908     	ldr	x8, [x8, #0x710]
   20d38: f85f03a9     	ldur	x9, [x29, #-0x10]
   20d3c: eb09011f     	cmp	x8, x9
   20d40: 54004a41     	b.ne	0x21688 <syna_cdev_ioctls+0x2154>
   20d44: 93407ec0     	sxtw	x0, w22
   20d48: a9584ff4     	ldp	x20, x19, [sp, #0x180]
   20d4c: a95757f6     	ldp	x22, x21, [sp, #0x170]
   20d50: a9565ff8     	ldp	x24, x23, [sp, #0x160]
   20d54: a95567fa     	ldp	x26, x25, [sp, #0x150]
   20d58: a9546ffc     	ldp	x28, x27, [sp, #0x140]
   20d5c: a9537bfd     	ldp	x29, x30, [sp, #0x130]
   20d60: 910643ff     	add	sp, sp, #0x190
   20d64: d50323bf     	autiasp
   20d68: d65f03c0     	ret
   20d6c: 52800202     	mov	w2, #0x10               // =16
   20d70: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020d70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be55
   20d74: 91000000     	add	x0, x0, #0x0
		0000000000020d74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be55
   20d78: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020d78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18578
   20d7c: 91000021     	add	x1, x1, #0x0
		0000000000020d7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18578
   20d80: 94000000     	bl	0x20d80 <syna_cdev_ioctls+0x184c>
		0000000000020d80:  R_AARCH64_CALL26	_printk
   20d84: 12800676     	mov	w22, #-0x34             // =-52
   20d88: 17ffffe7     	b	0x20d24 <syna_cdev_ioctls+0x17f0>
   20d8c: 12800db6     	mov	w22, #-0x6e             // =-110
   20d90: 17ffffbf     	b	0x20c8c <syna_cdev_ioctls+0x1758>
   20d94: b9000bff     	str	wzr, [sp, #0x8]
   20d98: 12800db6     	mov	w22, #-0x6e             // =-110
   20d9c: 17ffffbc     	b	0x20c8c <syna_cdev_ioctls+0x1758>
   20da0: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020da0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1956c
   20da4: 91000000     	add	x0, x0, #0x0
		0000000000020da4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1956c
   20da8: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020da8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x185cd
   20dac: 91000021     	add	x1, x1, #0x0
		0000000000020dac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x185cd
   20db0: 94000000     	bl	0x20db0 <syna_cdev_ioctls+0x187c>
		0000000000020db0:  R_AARCH64_CALL26	_printk
   20db4: 12800676     	mov	w22, #-0x34             // =-52
   20db8: 17fffcca     	b	0x200e0 <syna_cdev_ioctls+0xbac>
   20dbc: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020dbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2cc
   20dc0: 91000000     	add	x0, x0, #0x0
		0000000000020dc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2cc
   20dc4: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020dc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be95
   20dc8: 91000021     	add	x1, x1, #0x0
		0000000000020dc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be95
   20dcc: 94000000     	bl	0x20dcc <syna_cdev_ioctls+0x1898>
		0000000000020dcc:  R_AARCH64_CALL26	_printk
   20dd0: 39411b48     	ldrb	w8, [x26, #0x46]
   20dd4: 362ff628     	tbz	w8, #0x5, 0x20c98 <syna_cdev_ioctls+0x1764>
   20dd8: 17ffffb3     	b	0x20ca4 <syna_cdev_ioctls+0x1770>
   20ddc: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020ddc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1904e
   20de0: 91000000     	add	x0, x0, #0x0
		0000000000020de0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1904e
   20de4: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020de4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18dbb
   20de8: 91000021     	add	x1, x1, #0x0
		0000000000020de8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18dbb
   20dec: 17fffe55     	b	0x20740 <syna_cdev_ioctls+0x120c>
   20df0: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020df0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8ab
   20df4: 91000000     	add	x0, x0, #0x0
		0000000000020df4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8ab
   20df8: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020df8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b28e
   20dfc: 91000021     	add	x1, x1, #0x0
		0000000000020dfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b28e
   20e00: 1400012b     	b	0x212ac <syna_cdev_ioctls+0x1d78>
   20e04: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020e04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8ab
   20e08: 91000000     	add	x0, x0, #0x0
		0000000000020e08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8ab
   20e0c: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020e0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c31f
   20e10: 91000021     	add	x1, x1, #0x0
		0000000000020e10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c31f
   20e14: 14000126     	b	0x212ac <syna_cdev_ioctls+0x1d78>
   20e18: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020e18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8ab
   20e1c: 91000000     	add	x0, x0, #0x0
		0000000000020e1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8ab
   20e20: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020e20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae09
   20e24: 91000021     	add	x1, x1, #0x0
		0000000000020e24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae09
   20e28: 14000121     	b	0x212ac <syna_cdev_ioctls+0x1d78>
   20e2c: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020e2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8ab
   20e30: 91000000     	add	x0, x0, #0x0
		0000000000020e30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8ab
   20e34: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020e34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b78b
   20e38: 91000021     	add	x1, x1, #0x0
		0000000000020e38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b78b
   20e3c: 1400011c     	b	0x212ac <syna_cdev_ioctls+0x1d78>
   20e40: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020e40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aaef
   20e44: 91000000     	add	x0, x0, #0x0
		0000000000020e44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aaef
   20e48: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020e48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x185cd
   20e4c: 91000021     	add	x1, x1, #0x0
		0000000000020e4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x185cd
   20e50: 14000005     	b	0x20e64 <syna_cdev_ioctls+0x1930>
   20e54: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020e54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aaef
   20e58: 91000000     	add	x0, x0, #0x0
		0000000000020e58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aaef
   20e5c: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020e5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18345
   20e60: 91000021     	add	x1, x1, #0x0
		0000000000020e60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18345
   20e64: 52800283     	mov	w3, #0x14               // =20
   20e68: 14000012     	b	0x20eb0 <syna_cdev_ioctls+0x197c>
   20e6c: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020e6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19342
   20e70: 91000000     	add	x0, x0, #0x0
		0000000000020e70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19342
   20e74: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020e74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17710
   20e78: 91000021     	add	x1, x1, #0x0
		0000000000020e78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17710
   20e7c: 14000023     	b	0x20f08 <syna_cdev_ioctls+0x19d4>
   20e80: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020e80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18dd4
   20e84: 91000000     	add	x0, x0, #0x0
		0000000000020e84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18dd4
   20e88: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020e88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b810
   20e8c: 91000021     	add	x1, x1, #0x0
		0000000000020e8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b810
   20e90: 2a1703e2     	mov	w2, w23
   20e94: 140000b1     	b	0x21158 <syna_cdev_ioctls+0x1c24>
   20e98: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020e98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19673
   20e9c: 91000000     	add	x0, x0, #0x0
		0000000000020e9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19673
   20ea0: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020ea0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0af
   20ea4: 91000021     	add	x1, x1, #0x0
		0000000000020ea4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0af
   20ea8: 2a1703e2     	mov	w2, w23
   20eac: 2a1603e3     	mov	w3, w22
   20eb0: 94000000     	bl	0x20eb0 <syna_cdev_ioctls+0x197c>
		0000000000020eb0:  R_AARCH64_CALL26	_printk
   20eb4: 128002b6     	mov	w22, #-0x16             // =-22
   20eb8: 17ffff9b     	b	0x20d24 <syna_cdev_ioctls+0x17f0>
   20ebc: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020ebc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a544
   20ec0: 91000000     	add	x0, x0, #0x0
		0000000000020ec0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a544
   20ec4: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020ec4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b28e
   20ec8: 91000021     	add	x1, x1, #0x0
		0000000000020ec8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b28e
   20ecc: 1400000f     	b	0x20f08 <syna_cdev_ioctls+0x19d4>
   20ed0: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020ed0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18302
   20ed4: 91000000     	add	x0, x0, #0x0
		0000000000020ed4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18302
   20ed8: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020ed8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c31f
   20edc: 91000021     	add	x1, x1, #0x0
		0000000000020edc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c31f
   20ee0: 1400000a     	b	0x20f08 <syna_cdev_ioctls+0x19d4>
   20ee4: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020ee4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4f5
   20ee8: 91000000     	add	x0, x0, #0x0
		0000000000020ee8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4f5
   20eec: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020eec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae09
   20ef0: 91000021     	add	x1, x1, #0x0
		0000000000020ef0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae09
   20ef4: 14000005     	b	0x20f08 <syna_cdev_ioctls+0x19d4>
   20ef8: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020ef8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a544
   20efc: 91000000     	add	x0, x0, #0x0
		0000000000020efc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a544
   20f00: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020f00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b78b
   20f04: 91000021     	add	x1, x1, #0x0
		0000000000020f04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b78b
   20f08: 94000000     	bl	0x20f08 <syna_cdev_ioctls+0x19d4>
		0000000000020f08:  R_AARCH64_CALL26	_printk
   20f0c: 2a1f03f6     	mov	w22, wzr
   20f10: 17ffff5f     	b	0x20c8c <syna_cdev_ioctls+0x1758>
   20f14: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020f14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3bb
   20f18: 91000000     	add	x0, x0, #0x0
		0000000000020f18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3bb
   20f1c: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020f1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4e3
   20f20: 91000021     	add	x1, x1, #0x0
		0000000000020f20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4e3
   20f24: 94000000     	bl	0x20f24 <syna_cdev_ioctls+0x19f0>
		0000000000020f24:  R_AARCH64_CALL26	_printk
   20f28: 17fffc06     	b	0x1ff40 <syna_cdev_ioctls+0xa0c>
   20f2c: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020f2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3bb
   20f30: 91000000     	add	x0, x0, #0x0
		0000000000020f30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3bb
   20f34: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020f34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4e3
   20f38: 91000021     	add	x1, x1, #0x0
		0000000000020f38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4e3
   20f3c: 94000000     	bl	0x20f3c <syna_cdev_ioctls+0x1a08>
		0000000000020f3c:  R_AARCH64_CALL26	_printk
   20f40: 17fffceb     	b	0x202ec <syna_cdev_ioctls+0xdb8>
   20f44: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020f44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3bb
   20f48: 91000000     	add	x0, x0, #0x0
		0000000000020f48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3bb
   20f4c: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020f4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c45f
   20f50: 91000021     	add	x1, x1, #0x0
		0000000000020f50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c45f
   20f54: 94000000     	bl	0x20f54 <syna_cdev_ioctls+0x1a20>
		0000000000020f54:  R_AARCH64_CALL26	_printk
   20f58: 39400308     	ldrb	w8, [x24]
		0000000000020f58:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   20f5c: 51000508     	sub	w8, w8, #0x1
   20f60: 17ffff47     	b	0x20c7c <syna_cdev_ioctls+0x1748>
   20f64: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020f64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17a19
   20f68: 91000000     	add	x0, x0, #0x0
		0000000000020f68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17a19
   20f6c: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020f6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17710
   20f70: 91000021     	add	x1, x1, #0x0
		0000000000020f70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17710
   20f74: 2a1703e2     	mov	w2, w23
   20f78: 52802003     	mov	w3, #0x100              // =256
   20f7c: 14000024     	b	0x2100c <syna_cdev_ioctls+0x1ad8>
   20f80: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020f80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b48b
   20f84: 91000000     	add	x0, x0, #0x0
		0000000000020f84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b48b
   20f88: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020f88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b810
   20f8c: 91000021     	add	x1, x1, #0x0
		0000000000020f8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b810
   20f90: 94000000     	bl	0x20f90 <syna_cdev_ioctls+0x1a5c>
		0000000000020f90:  R_AARCH64_CALL26	_printk
   20f94: 12800256     	mov	w22, #-0x13             // =-19
   20f98: 17ffff3d     	b	0x20c8c <syna_cdev_ioctls+0x1758>
   20f9c: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020f9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19076
   20fa0: 91000000     	add	x0, x0, #0x0
		0000000000020fa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19076
   20fa4: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020fa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c31f
   20fa8: 91000021     	add	x1, x1, #0x0
		0000000000020fa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c31f
   20fac: 2a1703e2     	mov	w2, w23
   20fb0: 1400006a     	b	0x21158 <syna_cdev_ioctls+0x1c24>
   20fb4: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020fb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19076
   20fb8: 91000000     	add	x0, x0, #0x0
		0000000000020fb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19076
   20fbc: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020fbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b78b
   20fc0: 91000021     	add	x1, x1, #0x0
		0000000000020fc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b78b
   20fc4: 2a1703e2     	mov	w2, w23
   20fc8: 14000064     	b	0x21158 <syna_cdev_ioctls+0x1c24>
   20fcc: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020fcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c5c5
   20fd0: 91000000     	add	x0, x0, #0x0
		0000000000020fd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c5c5
   20fd4: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020fd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17710
   20fd8: 91000021     	add	x1, x1, #0x0
		0000000000020fd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17710
   20fdc: 14000046     	b	0x210f4 <syna_cdev_ioctls+0x1bc0>
   20fe0: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020fe0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18dd4
   20fe4: 91000000     	add	x0, x0, #0x0
		0000000000020fe4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18dd4
   20fe8: 90000001     	adrp	x1, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020fe8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b28e
   20fec: 91000021     	add	x1, x1, #0x0
		0000000000020fec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b28e
   20ff0: 2a1703e2     	mov	w2, w23
   20ff4: 14000059     	b	0x21158 <syna_cdev_ioctls+0x1c24>
   20ff8: 90000000     	adrp	x0, 0x20000 <syna_cdev_ioctls+0xacc>
		0000000000020ff8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae24
   20ffc: 91000000     	add	x0, x0, #0x0
		0000000000020ffc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae24
   21000: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021000:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae09
   21004: 91000021     	add	x1, x1, #0x0
		0000000000021004:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae09
   21008: 2a1703e2     	mov	w2, w23
   2100c: 94000000     	bl	0x2100c <syna_cdev_ioctls+0x1ad8>
		000000000002100c:  R_AARCH64_CALL26	_printk
   21010: 128002b6     	mov	w22, #-0x16             // =-22
   21014: 17ffff1e     	b	0x20c8c <syna_cdev_ioctls+0x1758>
   21018: 528000a0     	mov	w0, #0x5                // =5
   2101c: f100181f     	cmp	x0, #0x6
   21020: 54003362     	b.hs	0x2168c <syna_cdev_ioctls+0x2158>
   21024: 910083e8     	add	x8, sp, #0x20
   21028: aa0003f4     	mov	x20, x0
   2102c: 2a1f03e1     	mov	w1, wzr
   21030: cb000108     	sub	x8, x8, x0
   21034: aa1403e2     	mov	x2, x20
   21038: 91001500     	add	x0, x8, #0x5
   2103c: 94000000     	bl	0x2103c <syna_cdev_ioctls+0x1b08>
		000000000002103c:  R_AARCH64_CALL26	memset
   21040: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18bba
   21044: 91000000     	add	x0, x0, #0x0
		0000000000021044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18bba
   21048: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021048:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b810
   2104c: 91000021     	add	x1, x1, #0x0
		000000000002104c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b810
   21050: 1400003a     	b	0x21138 <syna_cdev_ioctls+0x1c04>
   21054: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021054:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3eb
   21058: 91000000     	add	x0, x0, #0x0
		0000000000021058:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3eb
   2105c: 14000084     	b	0x2126c <syna_cdev_ioctls+0x1d38>
   21060: cb0002c8     	sub	x8, x22, x0
   21064: 52802009     	mov	w9, #0x100              // =256
   21068: aa0003e2     	mov	x2, x0
   2106c: eb080129     	subs	x9, x9, x8
   21070: 9a8933e1     	csel	x1, xzr, x9, lo
   21074: eb00003f     	cmp	x1, x0
   21078: 54003123     	b.lo	0x2169c <syna_cdev_ioctls+0x2168>
   2107c: 910083e9     	add	x9, sp, #0x20
   21080: 2a1f03e1     	mov	w1, wzr
   21084: aa0203f6     	mov	x22, x2
   21088: 8b080120     	add	x0, x9, x8
   2108c: 94000000     	bl	0x2108c <syna_cdev_ioctls+0x1b58>
		000000000002108c:  R_AARCH64_CALL26	memset
   21090: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18bba
   21094: 91000000     	add	x0, x0, #0x0
		0000000000021094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18bba
   21098: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021098:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17710
   2109c: 91000021     	add	x1, x1, #0x0
		000000000002109c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17710
   210a0: 2a1603e2     	mov	w2, w22
   210a4: 14000026     	b	0x2113c <syna_cdev_ioctls+0x1c08>
   210a8: 52800082     	mov	w2, #0x4                // =4
   210ac: f100145f     	cmp	x2, #0x5
   210b0: 54002f02     	b.hs	0x21690 <syna_cdev_ioctls+0x215c>
   210b4: 910073e8     	add	x8, sp, #0x1c
   210b8: 2a1f03e1     	mov	w1, wzr
   210bc: cb020108     	sub	x8, x8, x2
   210c0: 91001100     	add	x0, x8, #0x4
   210c4: 94000000     	bl	0x210c4 <syna_cdev_ioctls+0x1b90>
		00000000000210c4:  R_AARCH64_CALL26	memset
   210c8: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000210c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b7df
   210cc: 91000000     	add	x0, x0, #0x0
		00000000000210cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b7df
   210d0: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000210d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b28e
   210d4: 91000021     	add	x1, x1, #0x0
		00000000000210d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b28e
   210d8: 94000000     	bl	0x210d8 <syna_cdev_ioctls+0x1ba4>
		00000000000210d8:  R_AARCH64_CALL26	_printk
   210dc: 12800676     	mov	w22, #-0x34             // =-52
   210e0: 17fffeeb     	b	0x20c8c <syna_cdev_ioctls+0x1758>
   210e4: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000210e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x185a6
   210e8: 91000000     	add	x0, x0, #0x0
		00000000000210e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x185a6
   210ec: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000210ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae09
   210f0: 91000021     	add	x1, x1, #0x0
		00000000000210f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae09
   210f4: 94000000     	bl	0x210f4 <syna_cdev_ioctls+0x1bc0>
		00000000000210f4:  R_AARCH64_CALL26	_printk
   210f8: 128002b6     	mov	w22, #-0x16             // =-22
   210fc: 17fffee4     	b	0x20c8c <syna_cdev_ioctls+0x1758>
   21100: 52800080     	mov	w0, #0x4                // =4
   21104: f100141f     	cmp	x0, #0x5
   21108: 54002c22     	b.hs	0x2168c <syna_cdev_ioctls+0x2158>
   2110c: 910073e8     	add	x8, sp, #0x1c
   21110: aa0003f4     	mov	x20, x0
   21114: 2a1f03e1     	mov	w1, wzr
   21118: cb000108     	sub	x8, x8, x0
   2111c: aa1403e2     	mov	x2, x20
   21120: 91001100     	add	x0, x8, #0x4
   21124: 94000000     	bl	0x21124 <syna_cdev_ioctls+0x1bf0>
		0000000000021124:  R_AARCH64_CALL26	memset
   21128: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021128:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18bba
   2112c: 91000000     	add	x0, x0, #0x0
		000000000002112c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18bba
   21130: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021130:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b78b
   21134: 91000021     	add	x1, x1, #0x0
		0000000000021134:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b78b
   21138: 2a1403e2     	mov	w2, w20
   2113c: 94000000     	bl	0x2113c <syna_cdev_ioctls+0x1c08>
		000000000002113c:  R_AARCH64_CALL26	_printk
   21140: 12800676     	mov	w22, #-0x34             // =-52
   21144: 17fffed2     	b	0x20c8c <syna_cdev_ioctls+0x1758>
   21148: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021148:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x190a9
   2114c: 91000000     	add	x0, x0, #0x0
		000000000002114c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x190a9
   21150: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c31f
   21154: 91000021     	add	x1, x1, #0x0
		0000000000021154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c31f
   21158: 94000000     	bl	0x21158 <syna_cdev_ioctls+0x1c24>
		0000000000021158:  R_AARCH64_CALL26	_printk
   2115c: 128002b6     	mov	w22, #-0x16             // =-22
   21160: 17fffecb     	b	0x20c8c <syna_cdev_ioctls+0x1758>
   21164: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021164:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3bb
   21168: 91000000     	add	x0, x0, #0x0
		0000000000021168:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3bb
   2116c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		000000000002116c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4e3
   21170: 91000021     	add	x1, x1, #0x0
		0000000000021170:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4e3
   21174: 94000000     	bl	0x21174 <syna_cdev_ioctls+0x1c40>
		0000000000021174:  R_AARCH64_CALL26	_printk
   21178: 17fffa53     	b	0x1fac4 <syna_cdev_ioctls+0x590>
   2117c: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		000000000002117c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3bb
   21180: 91000000     	add	x0, x0, #0x0
		0000000000021180:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3bb
   21184: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021184:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c45f
   21188: 91000021     	add	x1, x1, #0x0
		0000000000021188:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c45f
   2118c: 94000000     	bl	0x2118c <syna_cdev_ioctls+0x1c58>
		000000000002118c:  R_AARCH64_CALL26	_printk
   21190: 39400288     	ldrb	w8, [x20]
		0000000000021190:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   21194: 51000508     	sub	w8, w8, #0x1
   21198: 17fffe87     	b	0x20bb4 <syna_cdev_ioctls+0x1680>
   2119c: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		000000000002119c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188c5
   211a0: 91000000     	add	x0, x0, #0x0
		00000000000211a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188c5
   211a4: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000211a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a114
   211a8: 91000021     	add	x1, x1, #0x0
		00000000000211a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a114
   211ac: 94000000     	bl	0x211ac <syna_cdev_ioctls+0x1c78>
		00000000000211ac:  R_AARCH64_CALL26	_printk
   211b0: 17fffe87     	b	0x20bcc <syna_cdev_ioctls+0x1698>
   211b4: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000211b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   211b8: 91000000     	add	x0, x0, #0x0
		00000000000211b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   211bc: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000211bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   211c0: 91000021     	add	x1, x1, #0x0
		00000000000211c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   211c4: 94000000     	bl	0x211c4 <syna_cdev_ioctls+0x1c90>
		00000000000211c4:  R_AARCH64_CALL26	_printk
   211c8: 17fffeb1     	b	0x20c8c <syna_cdev_ioctls+0x1758>
   211cc: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000211cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19fd8
   211d0: 91000000     	add	x0, x0, #0x0
		00000000000211d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19fd8
   211d4: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000211d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c31f
   211d8: 91000021     	add	x1, x1, #0x0
		00000000000211d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c31f
   211dc: 2a1903e2     	mov	w2, w25
   211e0: 94000000     	bl	0x211e0 <syna_cdev_ioctls+0x1cac>
		00000000000211e0:  R_AARCH64_CALL26	_printk
   211e4: 12800676     	mov	w22, #-0x34             // =-52
   211e8: 17fffe6e     	b	0x20ba0 <syna_cdev_ioctls+0x166c>
   211ec: 39400282     	ldrb	w2, [x20]
   211f0: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000211f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19ac0
   211f4: 91000000     	add	x0, x0, #0x0
		00000000000211f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19ac0
   211f8: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000211f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c31f
   211fc: 91000021     	add	x1, x1, #0x0
		00000000000211fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c31f
   21200: 2a1903e3     	mov	w3, w25
   21204: 94000000     	bl	0x21204 <syna_cdev_ioctls+0x1cd0>
		0000000000021204:  R_AARCH64_CALL26	_printk
   21208: 17fffe05     	b	0x20a1c <syna_cdev_ioctls+0x14e8>
   2120c: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		000000000002120c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19631
   21210: 91000000     	add	x0, x0, #0x0
		0000000000021210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19631
   21214: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021214:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c31f
   21218: 91000021     	add	x1, x1, #0x0
		0000000000021218:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c31f
   2121c: 2a0403e3     	mov	w3, w4
   21220: 94000000     	bl	0x21220 <syna_cdev_ioctls+0x1cec>
		0000000000021220:  R_AARCH64_CALL26	_printk
   21224: 12800956     	mov	w22, #-0x4b             // =-75
   21228: 17fffe5e     	b	0x20ba0 <syna_cdev_ioctls+0x166c>
   2122c: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		000000000002122c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1956c
   21230: 91000000     	add	x0, x0, #0x0
		0000000000021230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1956c
   21234: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021234:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c31f
   21238: 91000021     	add	x1, x1, #0x0
		0000000000021238:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c31f
   2123c: 94000000     	bl	0x2123c <syna_cdev_ioctls+0x1d08>
		000000000002123c:  R_AARCH64_CALL26	_printk
   21240: 12800676     	mov	w22, #-0x34             // =-52
   21244: 17fffe57     	b	0x20ba0 <syna_cdev_ioctls+0x166c>
   21248: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021248:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   2124c: 91000000     	add	x0, x0, #0x0
		000000000002124c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   21250: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021250:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   21254: 91000021     	add	x1, x1, #0x0
		0000000000021254:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   21258: 94000000     	bl	0x21258 <syna_cdev_ioctls+0x1d24>
		0000000000021258:  R_AARCH64_CALL26	_printk
   2125c: 94000000     	bl	0x2125c <syna_cdev_ioctls+0x1d28>
		000000000002125c:  R_AARCH64_CALL26	syna_request_managed_device
   21260: b5ff9960     	cbnz	x0, 0x2058c <syna_cdev_ioctls+0x1058>
   21264: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021264:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   21268: 91000000     	add	x0, x0, #0x0
		0000000000021268:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   2126c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		000000000002126c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194ed
   21270: 91000021     	add	x1, x1, #0x0
		0000000000021270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194ed
   21274: 94000000     	bl	0x21274 <syna_cdev_ioctls+0x1d40>
		0000000000021274:  R_AARCH64_CALL26	_printk
   21278: f902d69f     	str	xzr, [x20, #0x5a8]
   2127c: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		000000000002127c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2f3
   21280: 91000000     	add	x0, x0, #0x0
		0000000000021280:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2f3
   21284: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021284:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0af
   21288: 91000021     	add	x1, x1, #0x0
		0000000000021288:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0af
   2128c: 2a1603e2     	mov	w2, w22
   21290: 94000000     	bl	0x21290 <syna_cdev_ioctls+0x1d5c>
		0000000000021290:  R_AARCH64_CALL26	_printk
   21294: 12800176     	mov	w22, #-0xc              // =-12
   21298: 17fffea3     	b	0x20d24 <syna_cdev_ioctls+0x17f0>
   2129c: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		000000000002129c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8ab
   212a0: 91000000     	add	x0, x0, #0x0
		00000000000212a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8ab
   212a4: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000212a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b810
   212a8: 91000021     	add	x1, x1, #0x0
		00000000000212a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b810
   212ac: 94000000     	bl	0x212ac <syna_cdev_ioctls+0x1d78>
		00000000000212ac:  R_AARCH64_CALL26	_printk
   212b0: 128000b6     	mov	w22, #-0x6              // =-6
   212b4: 17fffe76     	b	0x20c8c <syna_cdev_ioctls+0x1758>
   212b8: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000212b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8ab
   212bc: 91000000     	add	x0, x0, #0x0
		00000000000212bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8ab
   212c0: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000212c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0af
   212c4: 91000021     	add	x1, x1, #0x0
		00000000000212c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0af
   212c8: 94000000     	bl	0x212c8 <syna_cdev_ioctls+0x1d94>
		00000000000212c8:  R_AARCH64_CALL26	_printk
   212cc: 128000b6     	mov	w22, #-0x6              // =-6
   212d0: 17fffe95     	b	0x20d24 <syna_cdev_ioctls+0x17f0>
   212d4: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000212d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c6fc
   212d8: 91000108     	add	x8, x8, #0x0
		00000000000212d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c6fc
   212dc: 7100029f     	cmp	w20, #0x0
   212e0: 90000009     	adrp	x9, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000212e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c4aa
   212e4: 91000129     	add	x9, x9, #0x0
		00000000000212e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c4aa
   212e8: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000212e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c0d2
   212ec: 91000000     	add	x0, x0, #0x0
		00000000000212ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c0d2
   212f0: 9a881122     	csel	x2, x9, x8, ne
   212f4: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000212f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18345
   212f8: 91000021     	add	x1, x1, #0x0
		00000000000212f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18345
   212fc: 94000000     	bl	0x212fc <syna_cdev_ioctls+0x1dc8>
		00000000000212fc:  R_AARCH64_CALL26	_printk
   21300: aa1603e0     	mov	x0, x22
   21304: 2a1403e1     	mov	w1, w20
   21308: 94000000     	bl	0x21308 <syna_cdev_ioctls+0x1dd4>
		0000000000021308:  R_AARCH64_CALL26	syna_tcm_enable_predict_reading
   2130c: 794012a8     	ldrh	w8, [x21, #0x8]
   21310: 17fffe4c     	b	0x20c40 <syna_cdev_ioctls+0x170c>
   21314: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021314:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17a59
   21318: 91000000     	add	x0, x0, #0x0
		0000000000021318:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17a59
   2131c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		000000000002131c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18345
   21320: 91000021     	add	x1, x1, #0x0
		0000000000021320:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18345
   21324: b9000122     	str	w2, [x9]
		0000000000021324:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   21328: 94000000     	bl	0x21328 <syna_cdev_ioctls+0x1df4>
		0000000000021328:  R_AARCH64_CALL26	_printk
   2132c: 17fffe4a     	b	0x20c54 <syna_cdev_ioctls+0x1720>
   21330: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19889
   21334: 91000000     	add	x0, x0, #0x0
		0000000000021334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19889
   21338: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18345
   2133c: 91000021     	add	x1, x1, #0x0
		000000000002133c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18345
   21340: 94000000     	bl	0x21340 <syna_cdev_ioctls+0x1e0c>
		0000000000021340:  R_AARCH64_CALL26	_printk
   21344: 17fffe49     	b	0x20c68 <syna_cdev_ioctls+0x1734>
   21348: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021348:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19631
   2134c: 91000000     	add	x0, x0, #0x0
		000000000002134c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19631
   21350: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b78b
   21354: 91000021     	add	x1, x1, #0x0
		0000000000021354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b78b
   21358: 2a1703e2     	mov	w2, w23
   2135c: 2a1903e3     	mov	w3, w25
   21360: 94000000     	bl	0x21360 <syna_cdev_ioctls+0x1e2c>
		0000000000021360:  R_AARCH64_CALL26	_printk
   21364: 12800956     	mov	w22, #-0x4b             // =-75
   21368: 17fffe49     	b	0x20c8c <syna_cdev_ioctls+0x1758>
   2136c: aa1803e0     	mov	x0, x24
   21370: 94000000     	bl	0x21370 <syna_cdev_ioctls+0x1e3c>
		0000000000021370:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
   21374: 17fffac2     	b	0x1fe7c <syna_cdev_ioctls+0x948>
   21378: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19a88
   2137c: 91000000     	add	x0, x0, #0x0
		000000000002137c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19a88
   21380: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021380:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b78b
   21384: 91000021     	add	x1, x1, #0x0
		0000000000021384:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b78b
   21388: 2a1903e2     	mov	w2, w25
   2138c: 94000000     	bl	0x2138c <syna_cdev_ioctls+0x1e58>
		000000000002138c:  R_AARCH64_CALL26	_printk
   21390: 12800676     	mov	w22, #-0x34             // =-52
   21394: 17fffaae     	b	0x1fe4c <syna_cdev_ioctls+0x918>
   21398: f9402308     	ldr	x8, [x24, #0x40]
   2139c: 91002300     	add	x0, x24, #0x8
   213a0: 52800021     	mov	w1, #0x1                // =1
   213a4: b85fc110     	ldur	w16, [x8, #-0x4]
   213a8: 728c3631     	movk	w17, #0x61b1
   213ac: 72a685d1     	movk	w17, #0x342e, lsl #16
   213b0: 6b11021f     	cmp	w16, w17
   213b4: 54000040     	b.eq	0x213bc <syna_cdev_ioctls+0x1e88>
   213b8: d4304500     	brk	#0x8228
   213bc: d63f0100     	blr	x8
   213c0: 37f80480     	tbnz	w0, #0x1f, 0x21450 <syna_cdev_ioctls+0x1f1c>
   213c4: f9400289     	ldr	x9, [x20]
   213c8: b94023e8     	ldr	w8, [sp, #0x20]
   213cc: b9420d29     	ldr	w9, [x9, #0x20c]
   213d0: 6b09011f     	cmp	w8, w9
   213d4: 54000062     	b.hs	0x213e0 <syna_cdev_ioctls+0x1eac>
   213d8: 2a0903e8     	mov	w8, w9
   213dc: b90023e9     	str	w9, [sp, #0x20]
   213e0: 90000014     	adrp	x20, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000213e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae09
   213e4: 91000294     	add	x20, x20, #0x0
		00000000000213e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae09
   213e8: 90000015     	adrp	x21, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000213e8:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb0
   213ec: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000213ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bae9
   213f0: 91000000     	add	x0, x0, #0x0
		00000000000213f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bae9
   213f4: aa1403e1     	mov	x1, x20
   213f8: b90002a8     	str	w8, [x21]
		00000000000213f8:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb0
   213fc: 94000000     	bl	0x213fc <syna_cdev_ioctls+0x1ec8>
		00000000000213fc:  R_AARCH64_CALL26	_printk
   21400: b94002a2     	ldr	w2, [x21]
		0000000000021400:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb0
   21404: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021404:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c2f2
   21408: 91000000     	add	x0, x0, #0x0
		0000000000021408:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c2f2
   2140c: aa1403e1     	mov	x1, x20
   21410: 94000000     	bl	0x21410 <syna_cdev_ioctls+0x1edc>
		0000000000021410:  R_AARCH64_CALL26	_printk
   21414: 17fffd4d     	b	0x20948 <syna_cdev_ioctls+0x1414>
   21418: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021418:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3eb
   2141c: 91000000     	add	x0, x0, #0x0
		000000000002141c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3eb
   21420: 14000064     	b	0x215b0 <syna_cdev_ioctls+0x207c>
   21424: f9402308     	ldr	x8, [x24, #0x40]
   21428: 91002300     	add	x0, x24, #0x8
   2142c: 52800021     	mov	w1, #0x1                // =1
   21430: b85fc110     	ldur	w16, [x8, #-0x4]
   21434: 728c3631     	movk	w17, #0x61b1
   21438: 72a685d1     	movk	w17, #0x342e, lsl #16
   2143c: 6b11021f     	cmp	w16, w17
   21440: 54000040     	b.eq	0x21448 <syna_cdev_ioctls+0x1f14>
   21444: d4304500     	brk	#0x8228
   21448: d63f0100     	blr	x8
   2144c: 36f80f20     	tbz	w0, #0x1f, 0x21630 <syna_cdev_ioctls+0x20fc>
   21450: 2a0003f6     	mov	w22, w0
   21454: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021454:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18550
   21458: 91000000     	add	x0, x0, #0x0
		0000000000021458:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18550
   2145c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		000000000002145c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae09
   21460: 91000021     	add	x1, x1, #0x0
		0000000000021460:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae09
   21464: 94000000     	bl	0x21464 <syna_cdev_ioctls+0x1f30>
		0000000000021464:  R_AARCH64_CALL26	_printk
   21468: 17fffe09     	b	0x20c8c <syna_cdev_ioctls+0x1758>
   2146c: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		000000000002146c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac4c
   21470: 91000000     	add	x0, x0, #0x0
		0000000000021470:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac4c
   21474: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021474:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17dd6
   21478: 91000021     	add	x1, x1, #0x0
		0000000000021478:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17dd6
   2147c: 94000000     	bl	0x2147c <syna_cdev_ioctls+0x1f48>
		000000000002147c:  R_AARCH64_CALL26	_printk
   21480: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021480:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x187d4
   21484: 91000000     	add	x0, x0, #0x0
		0000000000021484:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x187d4
   21488: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021488:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c31f
   2148c: 91000021     	add	x1, x1, #0x0
		000000000002148c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c31f
   21490: 94000000     	bl	0x21490 <syna_cdev_ioctls+0x1f5c>
		0000000000021490:  R_AARCH64_CALL26	_printk
   21494: 128002b6     	mov	w22, #-0x16             // =-22
   21498: 17fffdc2     	b	0x20ba0 <syna_cdev_ioctls+0x166c>
   2149c: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		000000000002149c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   214a0: 91000000     	add	x0, x0, #0x0
		00000000000214a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   214a4: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000214a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   214a8: 91000021     	add	x1, x1, #0x0
		00000000000214a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   214ac: 94000000     	bl	0x214ac <syna_cdev_ioctls+0x1f78>
		00000000000214ac:  R_AARCH64_CALL26	_printk
   214b0: 94000000     	bl	0x214b0 <syna_cdev_ioctls+0x1f7c>
		00000000000214b0:  R_AARCH64_CALL26	syna_request_managed_device
   214b4: b5ff56c0     	cbnz	x0, 0x1ff8c <syna_cdev_ioctls+0xa58>
   214b8: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000214b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   214bc: 91000000     	add	x0, x0, #0x0
		00000000000214bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   214c0: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000214c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194ed
   214c4: 91000021     	add	x1, x1, #0x0
		00000000000214c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194ed
   214c8: 94000000     	bl	0x214c8 <syna_cdev_ioctls+0x1f94>
		00000000000214c8:  R_AARCH64_CALL26	_printk
   214cc: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000214cc:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   214d0: f900011f     	str	xzr, [x8]
		00000000000214d0:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   214d4: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000214d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19bba
   214d8: 91000000     	add	x0, x0, #0x0
		00000000000214d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19bba
   214dc: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000214dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a804
   214e0: 91000021     	add	x1, x1, #0x0
		00000000000214e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a804
   214e4: 52800282     	mov	w2, #0x14               // =20
   214e8: 94000000     	bl	0x214e8 <syna_cdev_ioctls+0x1fb4>
		00000000000214e8:  R_AARCH64_CALL26	_printk
   214ec: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000214ec:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   214f0: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000214f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19eef
   214f4: 91000000     	add	x0, x0, #0x0
		00000000000214f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19eef
   214f8: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000214f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x185cd
   214fc: 91000021     	add	x1, x1, #0x0
		00000000000214fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x185cd
   21500: 52800282     	mov	w2, #0x14               // =20
   21504: f900011f     	str	xzr, [x8]
		0000000000021504:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x10
   21508: 94000000     	bl	0x21508 <syna_cdev_ioctls+0x1fd4>
		0000000000021508:  R_AARCH64_CALL26	_printk
   2150c: 12801e56     	mov	w22, #-0xf3             // =-243
   21510: 17fffaf4     	b	0x200e0 <syna_cdev_ioctls+0xbac>
   21514: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021514:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   21518: 91000000     	add	x0, x0, #0x0
		0000000000021518:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   2151c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		000000000002151c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   21520: 91000021     	add	x1, x1, #0x0
		0000000000021520:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   21524: 94000000     	bl	0x21524 <syna_cdev_ioctls+0x1ff0>
		0000000000021524:  R_AARCH64_CALL26	_printk
   21528: 94000000     	bl	0x21528 <syna_cdev_ioctls+0x1ff4>
		0000000000021528:  R_AARCH64_CALL26	syna_request_managed_device
   2152c: b5ff7060     	cbnz	x0, 0x20338 <syna_cdev_ioctls+0xe04>
   21530: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021530:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   21534: 91000000     	add	x0, x0, #0x0
		0000000000021534:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   21538: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021538:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194ed
   2153c: 91000021     	add	x1, x1, #0x0
		000000000002153c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194ed
   21540: 94000000     	bl	0x21540 <syna_cdev_ioctls+0x200c>
		0000000000021540:  R_AARCH64_CALL26	_printk
   21544: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021544:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   21548: f900011f     	str	xzr, [x8]
		0000000000021548:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   2154c: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		000000000002154c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19bba
   21550: 91000000     	add	x0, x0, #0x0
		0000000000021550:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19bba
   21554: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021554:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a804
   21558: 91000021     	add	x1, x1, #0x0
		0000000000021558:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a804
   2155c: 52800282     	mov	w2, #0x14               // =20
   21560: 94000000     	bl	0x21560 <syna_cdev_ioctls+0x202c>
		0000000000021560:  R_AARCH64_CALL26	_printk
   21564: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021564:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   21568: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021568:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19eef
   2156c: 91000000     	add	x0, x0, #0x0
		000000000002156c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19eef
   21570: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021570:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18345
   21574: 91000021     	add	x1, x1, #0x0
		0000000000021574:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18345
   21578: 52800282     	mov	w2, #0x14               // =20
   2157c: f900011f     	str	xzr, [x8]
		000000000002157c:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x10
   21580: 94000000     	bl	0x21580 <syna_cdev_ioctls+0x204c>
		0000000000021580:  R_AARCH64_CALL26	_printk
   21584: 12801e56     	mov	w22, #-0xf3             // =-243
   21588: 17fffdb9     	b	0x20c6c <syna_cdev_ioctls+0x1738>
   2158c: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		000000000002158c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   21590: 91000000     	add	x0, x0, #0x0
		0000000000021590:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   21594: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   21598: 91000021     	add	x1, x1, #0x0
		0000000000021598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   2159c: 94000000     	bl	0x2159c <syna_cdev_ioctls+0x2068>
		000000000002159c:  R_AARCH64_CALL26	_printk
   215a0: 94000000     	bl	0x215a0 <syna_cdev_ioctls+0x206c>
		00000000000215a0:  R_AARCH64_CALL26	syna_request_managed_device
   215a4: b5ff2bc0     	cbnz	x0, 0x1fb1c <syna_cdev_ioctls+0x5e8>
   215a8: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000215a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   215ac: 91000000     	add	x0, x0, #0x0
		00000000000215ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   215b0: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000215b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194ed
   215b4: 91000021     	add	x1, x1, #0x0
		00000000000215b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194ed
   215b8: 94000000     	bl	0x215b8 <syna_cdev_ioctls+0x2084>
		00000000000215b8:  R_AARCH64_CALL26	_printk
   215bc: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000215bc:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   215c0: f900011f     	str	xzr, [x8]
		00000000000215c0:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   215c4: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000215c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19bba
   215c8: 91000000     	add	x0, x0, #0x0
		00000000000215c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19bba
   215cc: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000215cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a804
   215d0: 91000021     	add	x1, x1, #0x0
		00000000000215d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a804
   215d4: 2a1403e2     	mov	w2, w20
   215d8: 94000000     	bl	0x215d8 <syna_cdev_ioctls+0x20a4>
		00000000000215d8:  R_AARCH64_CALL26	_printk
   215dc: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000215dc:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   215e0: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000215e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19eef
   215e4: 91000000     	add	x0, x0, #0x0
		00000000000215e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19eef
   215e8: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000215e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c31f
   215ec: 91000021     	add	x1, x1, #0x0
		00000000000215ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c31f
   215f0: 2a1703e2     	mov	w2, w23
   215f4: f900011f     	str	xzr, [x8]
		00000000000215f4:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x10
   215f8: 94000000     	bl	0x215f8 <syna_cdev_ioctls+0x20c4>
		00000000000215f8:  R_AARCH64_CALL26	_printk
   215fc: 12801e56     	mov	w22, #-0xf3             // =-243
   21600: 17fffd68     	b	0x20ba0 <syna_cdev_ioctls+0x166c>
   21604: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19fa0
   21608: 91000000     	add	x0, x0, #0x0
		0000000000021608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19fa0
   2160c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		000000000002160c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae09
   21610: 91000021     	add	x1, x1, #0x0
		0000000000021610:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae09
   21614: 94000000     	bl	0x21614 <syna_cdev_ioctls+0x20e0>
		0000000000021614:  R_AARCH64_CALL26	_printk
   21618: f9400288     	ldr	x8, [x20]
   2161c: 90000009     	adrp	x9, 0x21000 <syna_cdev_ioctls+0x1acc>
		000000000002161c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb0
   21620: 2a1f03f6     	mov	w22, wzr
   21624: b9420d08     	ldr	w8, [x8, #0x20c]
   21628: b9000128     	str	w8, [x9]
		0000000000021628:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb0
   2162c: 17fffd98     	b	0x20c8c <syna_cdev_ioctls+0x1758>
   21630: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021630:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bae9
   21634: 91000000     	add	x0, x0, #0x0
		0000000000021634:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bae9
   21638: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021638:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae09
   2163c: 91000021     	add	x1, x1, #0x0
		000000000002163c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae09
   21640: 94000000     	bl	0x21640 <syna_cdev_ioctls+0x210c>
		0000000000021640:  R_AARCH64_CALL26	_printk
   21644: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021644:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb0
   21648: 2a1f03f6     	mov	w22, wzr
   2164c: b900011f     	str	wzr, [x8]
		000000000002164c:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb0
   21650: 17fffd8f     	b	0x20c8c <syna_cdev_ioctls+0x1758>
   21654: 52802000     	mov	w0, #0x100              // =256
   21658: aa1603e1     	mov	x1, x22
   2165c: 94000000     	bl	0x2165c <syna_cdev_ioctls+0x2128>
		000000000002165c:  R_AARCH64_CALL26	__copy_overflow
   21660: 17fffe8c     	b	0x21090 <syna_cdev_ioctls+0x1b5c>
   21664: 52800080     	mov	w0, #0x4                // =4
   21668: aa1703e1     	mov	x1, x23
   2166c: 94000000     	bl	0x2166c <syna_cdev_ioctls+0x2138>
		000000000002166c:  R_AARCH64_CALL26	__copy_overflow
   21670: 17fff842     	b	0x1f778 <syna_cdev_ioctls+0x244>
   21674: d4210000     	brk	#0x800
   21678: 34ff9a38     	cbz	w24, 0x209bc <syna_cdev_ioctls+0x1488>
   2167c: 17fffc5a     	b	0x207e4 <syna_cdev_ioctls+0x12b0>
   21680: d4210000     	brk	#0x800
   21684: 17fffd45     	b	0x20b98 <syna_cdev_ioctls+0x1664>
   21688: 94000000     	bl	0x21688 <syna_cdev_ioctls+0x2154>
		0000000000021688:  R_AARCH64_CALL26	__stack_chk_fail
   2168c: aa0003e2     	mov	x2, x0
   21690: 528001e0     	mov	w0, #0xf                // =15
   21694: aa1f03e1     	mov	x1, xzr
   21698: 94000000     	bl	0x21698 <syna_cdev_ioctls+0x2164>
		0000000000021698:  R_AARCH64_CALL26	__fortify_panic
   2169c: 528001e0     	mov	w0, #0xf                // =15
   216a0: 94000000     	bl	0x216a0 <syna_cdev_ioctls+0x216c>
		00000000000216a0:  R_AARCH64_CALL26	__fortify_panic
   216a4: 528001e0     	mov	w0, #0xf                // =15
   216a8: aa1603e2     	mov	x2, x22
   216ac: 94000000     	bl	0x216ac <syna_cdev_ioctls+0x2178>
		00000000000216ac:  R_AARCH64_CALL26	__fortify_panic
   216b0: 528001e0     	mov	w0, #0xf                // =15
   216b4: aa1403e2     	mov	x2, x20
   216b8: 94000000     	bl	0x216b8 <syna_cdev_ioctls+0x2184>
		00000000000216b8:  R_AARCH64_CALL26	__fortify_panic
