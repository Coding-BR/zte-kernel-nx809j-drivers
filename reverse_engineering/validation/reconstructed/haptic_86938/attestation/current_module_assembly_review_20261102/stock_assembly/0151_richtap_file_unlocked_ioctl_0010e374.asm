
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b554 <richtap_file_unlocked_ioctl>:
    b554: d503233f     	paciasp
    b558: d10103ff     	sub	sp, sp, #0x40
    b55c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    b560: f90013f5     	str	x21, [sp, #0x20]
    b564: a9034ff4     	stp	x20, x19, [sp, #0x30]
    b568: 910043fd     	add	x29, sp, #0x10
    b56c: d5384108     	mrs	x8, SP_EL0
    b570: aa0203f4     	mov	x20, x2
    b574: 2a0103f5     	mov	w21, w1
    b578: f9438908     	ldr	x8, [x8, #0x710]
    b57c: 90000001     	adrp	x1, 0xb000 <audio_work_routine+0xd0>
		000000000000b57c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20cb
    b580: 91000021     	add	x1, x1, #0x0
		000000000000b580:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20cb
    b584: 2a1503e2     	mov	w2, w21
    b588: aa1403e3     	mov	x3, x20
    b58c: f90007e8     	str	x8, [sp, #0x8]
    b590: f9401013     	ldr	x19, [x0, #0x20]
    b594: 90000000     	adrp	x0, 0xb000 <audio_work_routine+0xd0>
		000000000000b594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2cdb
    b598: 91000000     	add	x0, x0, #0x0
		000000000000b598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2cdb
    b59c: b90007ff     	str	wzr, [sp, #0x4]
    b5a0: 94000000     	bl	0xb5a0 <richtap_file_unlocked_ioctl+0x4c>
		000000000000b5a0:  R_AARCH64_CALL26	_printk
    b5a4: 528a4108     	mov	w8, #0x5208             // =21000
    b5a8: 6b0802bf     	cmp	w21, w8
    b5ac: 540001ed     	b.le	0xb5e8 <richtap_file_unlocked_ioctl+0x94>
    b5b0: 528a4208     	mov	w8, #0x5210             // =21008
    b5b4: 6b0802bf     	cmp	w21, w8
    b5b8: 540002cd     	b.le	0xb610 <richtap_file_unlocked_ioctl+0xbc>
    b5bc: 528a4228     	mov	w8, #0x5211             // =21009
    b5c0: 6b0802bf     	cmp	w21, w8
    b5c4: 54001600     	b.eq	0xb884 <richtap_file_unlocked_ioctl+0x330>
    b5c8: 528a4248     	mov	w8, #0x5212             // =21010
    b5cc: 6b0802bf     	cmp	w21, w8
    b5d0: 54001d41     	b.ne	0xb978 <richtap_file_unlocked_ioctl+0x424>
    b5d4: f9422661     	ldr	x1, [x19, #0x448]
    b5d8: 9119a262     	add	x2, x19, #0x668
    b5dc: 52800400     	mov	w0, #0x20               // =32
    b5e0: 94000000     	bl	0xb5e0 <richtap_file_unlocked_ioctl+0x8c>
		000000000000b5e0:  R_AARCH64_CALL26	queue_work_on
    b5e4: 140000a6     	b	0xb87c <richtap_file_unlocked_ioctl+0x328>
    b5e8: 528a4068     	mov	w8, #0x5203             // =20995
    b5ec: 6b0802bf     	cmp	w21, w8
    b5f0: 54000dc0     	b.eq	0xb7a8 <richtap_file_unlocked_ioctl+0x254>
    b5f4: 528a40a8     	mov	w8, #0x5205             // =20997
    b5f8: 6b0802bf     	cmp	w21, w8
    b5fc: 54001260     	b.eq	0xb848 <richtap_file_unlocked_ioctl+0x2f4>
    b600: 528a40c8     	mov	w8, #0x5206             // =20998
    b604: 6b0802bf     	cmp	w21, w8
    b608: 540013a0     	b.eq	0xb87c <richtap_file_unlocked_ioctl+0x328>
    b60c: 14000131     	b	0xbad0 <richtap_file_unlocked_ioctl+0x57c>
    b610: 528a4128     	mov	w8, #0x5209             // =21001
    b614: 6b0802bf     	cmp	w21, w8
    b618: 54001c81     	b.ne	0xb9a8 <richtap_file_unlocked_ioctl+0x454>
    b61c: 910bc260     	add	x0, x19, #0x2f0
    b620: 94000000     	bl	0xb620 <richtap_file_unlocked_ioctl+0xcc>
		000000000000b620:  R_AARCH64_CALL26	mutex_lock
    b624: f942e668     	ldr	x8, [x19, #0x5c8]
    b628: aa1303e0     	mov	x0, x19
    b62c: f9401d08     	ldr	x8, [x8, #0x38]
    b630: b85fc110     	ldur	w16, [x8, #-0x4]
    b634: 72810611     	movk	w17, #0x830
    b638: 72b08f51     	movk	w17, #0x847a, lsl #16
    b63c: 6b11021f     	cmp	w16, w17
    b640: 54000040     	b.eq	0xb648 <richtap_file_unlocked_ioctl+0xf4>
    b644: d4304500     	brk	#0x8228
    b648: d63f0100     	blr	x8
    b64c: 910bc260     	add	x0, x19, #0x2f0
    b650: 94000000     	bl	0xb650 <richtap_file_unlocked_ioctl+0xfc>
		000000000000b650:  R_AARCH64_CALL26	mutex_unlock
    b654: d5384108     	mrs	x8, SP_EL0
    b658: 39411909     	ldrb	w9, [x8, #0x46]
    b65c: f9430675     	ldr	x21, [x19, #0x608]
    b660: 37280089     	tbnz	w9, #0x5, 0xb670 <richtap_file_unlocked_ioctl+0x11c>
    b664: f940010a     	ldr	x10, [x8]
    b668: aa1403e9     	mov	x9, x20
    b66c: 36d0006a     	tbz	w10, #0x1a, 0xb678 <richtap_file_unlocked_ioctl+0x124>
    b670: d378de89     	lsl	x9, x20, #8
    b674: 8a892289     	and	x9, x20, x9, asr #8
    b678: b2705bea     	mov	x10, #0x7fffff0000      // =549755748352
    b67c: f298300a     	movk	x10, #0xc180
    b680: eb0a013f     	cmp	x9, x10
    b684: 54001568     	b.hi	0xb930 <richtap_file_unlocked_ioctl+0x3dc>
    b688: d503201f     	nop
    b68c: d53b4229     	mrs	x9, DAIF
    b690: d50343df     	msr	DAIFSet, #0x3
    b694: f9400508     	ldr	x8, [x8, #0x8]
    b698: d538202a     	mrs	x10, TTBR1_EL1
    b69c: aa0803eb     	mov	x11, x8
    b6a0: b340bd4b     	bfxil	x11, x10, #0, #48
    b6a4: d518202b     	msr	TTBR1_EL1, x11
    b6a8: d5182008     	msr	TTBR0_EL1, x8
    b6ac: d5033fdf     	isb
    b6b0: d51b4229     	msr	DAIF, x9
    b6b4: 9248fa81     	and	x1, x20, #0xff7fffffffffffff
    b6b8: aa1503e0     	mov	x0, x21
    b6bc: 5287d002     	mov	w2, #0x3e80             // =16000
    b6c0: 94000000     	bl	0xb6c0 <richtap_file_unlocked_ioctl+0x16c>
		000000000000b6c0:  R_AARCH64_CALL26	__arch_copy_from_user
    b6c4: aa0003e2     	mov	x2, x0
    b6c8: d503201f     	nop
    b6cc: d53b4228     	mrs	x8, DAIF
    b6d0: d50343df     	msr	DAIFSet, #0x3
    b6d4: d5382029     	mrs	x9, TTBR1_EL1
    b6d8: 9240bd29     	and	x9, x9, #0xffffffffffff
    b6dc: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    b6e0: d518200a     	msr	TTBR0_EL1, x10
    b6e4: d5182029     	msr	TTBR1_EL1, x9
    b6e8: d5033fdf     	isb
    b6ec: d51b4228     	msr	DAIF, x8
    b6f0: b5001222     	cbnz	x2, 0xb934 <richtap_file_unlocked_ioctl+0x3e0>
    b6f4: f9430668     	ldr	x8, [x19, #0x608]
    b6f8: b9400102     	ldr	w2, [x8]
    b6fc: 5287cfa8     	mov	w8, #0x3e7d             // =15997
    b700: 6b08005f     	cmp	w2, w8
    b704: b90007e2     	str	w2, [sp, #0x4]
    b708: 54001f2a     	b.ge	0xbaec <richtap_file_unlocked_ioctl+0x598>
    b70c: f942e668     	ldr	x8, [x19, #0x5c8]
    b710: aa1303e0     	mov	x0, x19
    b714: 52800041     	mov	w1, #0x2                // =2
    b718: f9408d08     	ldr	x8, [x8, #0x118]
    b71c: b85fc110     	ldur	w16, [x8, #-0x4]
    b720: 728dd2b1     	movk	w17, #0x6e95
    b724: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    b728: 6b11021f     	cmp	w16, w17
    b72c: 54000040     	b.eq	0xb734 <richtap_file_unlocked_ioctl+0x1e0>
    b730: d4304500     	brk	#0x8228
    b734: d63f0100     	blr	x8
    b738: f942e668     	ldr	x8, [x19, #0x5c8]
    b73c: b9403261     	ldr	w1, [x19, #0x30]
    b740: aa1303e0     	mov	x0, x19
    b744: f9405108     	ldr	x8, [x8, #0xa0]
    b748: b85fc110     	ldur	w16, [x8, #-0x4]
    b74c: 729bedd1     	movk	w17, #0xdf6e
    b750: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    b754: 6b11021f     	cmp	w16, w17
    b758: 54000040     	b.eq	0xb760 <richtap_file_unlocked_ioctl+0x20c>
    b75c: d4304500     	brk	#0x8228
    b760: d63f0100     	blr	x8
    b764: aa1303e0     	mov	x0, x19
    b768: 97ffff15     	bl	0xb3bc <richtap_rtp_start>
    b76c: 36000880     	tbz	w0, #0x0, 0xb87c <richtap_file_unlocked_ioctl+0x328>
    b770: f942e668     	ldr	x8, [x19, #0x5c8]
    b774: f9430669     	ldr	x9, [x19, #0x608]
    b778: aa1303e0     	mov	x0, x19
    b77c: b94007e2     	ldr	w2, [sp, #0x4]
    b780: f9406908     	ldr	x8, [x8, #0xd0]
    b784: 91001121     	add	x1, x9, #0x4
    b788: b85fc110     	ldur	w16, [x8, #-0x4]
    b78c: 72965371     	movk	w17, #0xb29b
    b790: 72b8d4f1     	movk	w17, #0xc6a7, lsl #16
    b794: 6b11021f     	cmp	w16, w17
    b798: 54000040     	b.eq	0xb7a0 <richtap_file_unlocked_ioctl+0x24c>
    b79c: d4304500     	brk	#0x8228
    b7a0: d63f0100     	blr	x8
    b7a4: 14000036     	b	0xb87c <richtap_file_unlocked_ioctl+0x328>
    b7a8: d5384108     	mrs	x8, SP_EL0
    b7ac: 39411909     	ldrb	w9, [x8, #0x46]
    b7b0: 528000aa     	mov	w10, #0x5               // =5
    b7b4: b90007ea     	str	w10, [sp, #0x4]
    b7b8: 37280089     	tbnz	w9, #0x5, 0xb7c8 <richtap_file_unlocked_ioctl+0x274>
    b7bc: f940010a     	ldr	x10, [x8]
    b7c0: aa1403e9     	mov	x9, x20
    b7c4: 36d0006a     	tbz	w10, #0x1a, 0xb7d0 <richtap_file_unlocked_ioctl+0x27c>
    b7c8: d378de89     	lsl	x9, x20, #8
    b7cc: 8a892289     	and	x9, x20, x9, asr #8
    b7d0: b2705bea     	mov	x10, #0x7fffff0000      // =549755748352
    b7d4: f29fffaa     	movk	x10, #0xfffd
    b7d8: eb0a013f     	cmp	x9, x10
    b7dc: 54000b62     	b.hs	0xb948 <richtap_file_unlocked_ioctl+0x3f4>
    b7e0: d503201f     	nop
    b7e4: d53b4229     	mrs	x9, DAIF
    b7e8: d50343df     	msr	DAIFSet, #0x3
    b7ec: f9400508     	ldr	x8, [x8, #0x8]
    b7f0: d538202a     	mrs	x10, TTBR1_EL1
    b7f4: aa0803eb     	mov	x11, x8
    b7f8: b340bd4b     	bfxil	x11, x10, #0, #48
    b7fc: d518202b     	msr	TTBR1_EL1, x11
    b800: d5182008     	msr	TTBR0_EL1, x8
    b804: d5033fdf     	isb
    b808: d51b4229     	msr	DAIF, x9
    b80c: 9248fa80     	and	x0, x20, #0xff7fffffffffffff
    b810: 910013e1     	add	x1, sp, #0x4
    b814: 52800082     	mov	w2, #0x4                // =4
    b818: 94000000     	bl	0xb818 <richtap_file_unlocked_ioctl+0x2c4>
		000000000000b818:  R_AARCH64_CALL26	__arch_copy_to_user
    b81c: d503201f     	nop
    b820: d53b4228     	mrs	x8, DAIF
    b824: d50343df     	msr	DAIFSet, #0x3
    b828: d5382029     	mrs	x9, TTBR1_EL1
    b82c: 9240bd29     	and	x9, x9, #0xffffffffffff
    b830: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    b834: d518200a     	msr	TTBR0_EL1, x10
    b838: d5182029     	msr	TTBR1_EL1, x9
    b83c: d5033fdf     	isb
    b840: d51b4228     	msr	DAIF, x8
    b844: 14000037     	b	0xb920 <richtap_file_unlocked_ioctl+0x3cc>
    b848: f942e668     	ldr	x8, [x19, #0x5c8]
    b84c: f102029f     	cmp	x20, #0x80
    b850: 52801009     	mov	w9, #0x80               // =128
    b854: 9a893281     	csel	x1, x20, x9, lo
    b858: aa1303e0     	mov	x0, x19
    b85c: f9404508     	ldr	x8, [x8, #0x88]
    b860: b85fc110     	ldur	w16, [x8, #-0x4]
    b864: 729bedd1     	movk	w17, #0xdf6e
    b868: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    b86c: 6b11021f     	cmp	w16, w17
    b870: 54000040     	b.eq	0xb878 <richtap_file_unlocked_ioctl+0x324>
    b874: d4304500     	brk	#0x8228
    b878: d63f0100     	blr	x8
    b87c: aa1f03e0     	mov	x0, xzr
    b880: 14000033     	b	0xb94c <richtap_file_unlocked_ioctl+0x3f8>
    b884: d5384108     	mrs	x8, SP_EL0
    b888: b9406269     	ldr	w9, [x19, #0x60]
    b88c: 3941190a     	ldrb	w10, [x8, #0x46]
    b890: b90007e9     	str	w9, [sp, #0x4]
    b894: 3728008a     	tbnz	w10, #0x5, 0xb8a4 <richtap_file_unlocked_ioctl+0x350>
    b898: f940010a     	ldr	x10, [x8]
    b89c: aa1403e9     	mov	x9, x20
    b8a0: 36d0006a     	tbz	w10, #0x1a, 0xb8ac <richtap_file_unlocked_ioctl+0x358>
    b8a4: d378de89     	lsl	x9, x20, #8
    b8a8: 8a892289     	and	x9, x20, x9, asr #8
    b8ac: b2705bea     	mov	x10, #0x7fffff0000      // =549755748352
    b8b0: f29fffaa     	movk	x10, #0xfffd
    b8b4: eb0a013f     	cmp	x9, x10
    b8b8: 54000482     	b.hs	0xb948 <richtap_file_unlocked_ioctl+0x3f4>
    b8bc: d503201f     	nop
    b8c0: d53b4229     	mrs	x9, DAIF
    b8c4: d50343df     	msr	DAIFSet, #0x3
    b8c8: f9400508     	ldr	x8, [x8, #0x8]
    b8cc: d538202a     	mrs	x10, TTBR1_EL1
    b8d0: aa0803eb     	mov	x11, x8
    b8d4: b340bd4b     	bfxil	x11, x10, #0, #48
    b8d8: d518202b     	msr	TTBR1_EL1, x11
    b8dc: d5182008     	msr	TTBR0_EL1, x8
    b8e0: d5033fdf     	isb
    b8e4: d51b4229     	msr	DAIF, x9
    b8e8: 9248fa80     	and	x0, x20, #0xff7fffffffffffff
    b8ec: 910013e1     	add	x1, sp, #0x4
    b8f0: 52800082     	mov	w2, #0x4                // =4
    b8f4: 94000000     	bl	0xb8f4 <richtap_file_unlocked_ioctl+0x3a0>
		000000000000b8f4:  R_AARCH64_CALL26	__arch_copy_to_user
    b8f8: d503201f     	nop
    b8fc: d53b4228     	mrs	x8, DAIF
    b900: d50343df     	msr	DAIFSet, #0x3
    b904: d5382029     	mrs	x9, TTBR1_EL1
    b908: 9240bd29     	and	x9, x9, #0xffffffffffff
    b90c: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    b910: d518200a     	msr	TTBR0_EL1, x10
    b914: d5182029     	msr	TTBR1_EL1, x9
    b918: d5033fdf     	isb
    b91c: d51b4228     	msr	DAIF, x8
    b920: f100001f     	cmp	x0, #0x0
    b924: 928001a8     	mov	x8, #-0xe               // =-14
    b928: 9a8803e0     	csel	x0, xzr, x8, eq
    b92c: 14000008     	b	0xb94c <richtap_file_unlocked_ioctl+0x3f8>
    b930: 5287d002     	mov	w2, #0x3e80             // =16000
    b934: cb0202a8     	sub	x8, x21, x2
    b938: 5287d009     	mov	w9, #0x3e80             // =16000
    b93c: 2a1f03e1     	mov	w1, wzr
    b940: 8b090100     	add	x0, x8, x9
    b944: 94000000     	bl	0xb944 <richtap_file_unlocked_ioctl+0x3f0>
		000000000000b944:  R_AARCH64_CALL26	memset
    b948: 928001a0     	mov	x0, #-0xe               // =-14
    b94c: d5384108     	mrs	x8, SP_EL0
    b950: f9438908     	ldr	x8, [x8, #0x710]
    b954: f94007e9     	ldr	x9, [sp, #0x8]
    b958: eb09011f     	cmp	x8, x9
    b95c: 54000d41     	b.ne	0xbb04 <richtap_file_unlocked_ioctl+0x5b0>
    b960: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    b964: f94013f5     	ldr	x21, [sp, #0x20]
    b968: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    b96c: 910103ff     	add	sp, sp, #0x40
    b970: d50323bf     	autiasp
    b974: d65f03c0     	ret
    b978: 528a4268     	mov	w8, #0x5213             // =21011
    b97c: 6b0802bf     	cmp	w21, w8
    b980: 54000a81     	b.ne	0xbad0 <richtap_file_unlocked_ioctl+0x57c>
    b984: 90000000     	adrp	x0, 0xb000 <audio_work_routine+0xd0>
		000000000000b984:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbbe
    b988: 91000000     	add	x0, x0, #0x0
		000000000000b988:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbbe
    b98c: 90000001     	adrp	x1, 0xb000 <audio_work_routine+0xd0>
		000000000000b98c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    b990: 91000021     	add	x1, x1, #0x0
		000000000000b990:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    b994: 90000003     	adrp	x3, 0xb000 <audio_work_routine+0xd0>
		000000000000b994:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20cb
    b998: 91000063     	add	x3, x3, #0x0
		000000000000b998:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20cb
    b99c: 5280be42     	mov	w2, #0x5f2              // =1522
    b9a0: 94000000     	bl	0xb9a0 <richtap_file_unlocked_ioctl+0x44c>
		000000000000b9a0:  R_AARCH64_CALL26	_printk
    b9a4: 17ffffb6     	b	0xb87c <richtap_file_unlocked_ioctl+0x328>
    b9a8: 528a4148     	mov	w8, #0x520a             // =21002
    b9ac: 6b0802bf     	cmp	w21, w8
    b9b0: 54000901     	b.ne	0xbad0 <richtap_file_unlocked_ioctl+0x57c>
    b9b4: 90000000     	adrp	x0, 0xb000 <audio_work_routine+0xd0>
		000000000000b9b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1037
    b9b8: 91000000     	add	x0, x0, #0x0
		000000000000b9b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1037
    b9bc: 90000001     	adrp	x1, 0xb000 <audio_work_routine+0xd0>
		000000000000b9bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    b9c0: 91000021     	add	x1, x1, #0x0
		000000000000b9c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    b9c4: 90000003     	adrp	x3, 0xb000 <audio_work_routine+0xd0>
		000000000000b9c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20cb
    b9c8: 91000063     	add	x3, x3, #0x0
		000000000000b9c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20cb
    b9cc: 5280bb22     	mov	w2, #0x5d9              // =1497
    b9d0: 94000000     	bl	0xb9d0 <richtap_file_unlocked_ioctl+0x47c>
		000000000000b9d0:  R_AARCH64_CALL26	_printk
    b9d4: aa1303e0     	mov	x0, x19
    b9d8: 940000aa     	bl	0xbc80 <richtap_clean_buf>
    b9dc: 910bc260     	add	x0, x19, #0x2f0
    b9e0: 94000000     	bl	0xb9e0 <richtap_file_unlocked_ioctl+0x48c>
		000000000000b9e0:  R_AARCH64_CALL26	mutex_lock
    b9e4: f942e668     	ldr	x8, [x19, #0x5c8]
    b9e8: aa1303e0     	mov	x0, x19
    b9ec: f9407908     	ldr	x8, [x8, #0xf0]
    b9f0: b85fc110     	ldur	w16, [x8, #-0x4]
    b9f4: 72810611     	movk	w17, #0x830
    b9f8: 72b08f51     	movk	w17, #0x847a, lsl #16
    b9fc: 6b11021f     	cmp	w16, w17
    ba00: 54000040     	b.eq	0xba08 <richtap_file_unlocked_ioctl+0x4b4>
    ba04: d4304500     	brk	#0x8228
    ba08: d63f0100     	blr	x8
    ba0c: f942e668     	ldr	x8, [x19, #0x5c8]
    ba10: aa1303e0     	mov	x0, x19
    ba14: f9401d08     	ldr	x8, [x8, #0x38]
    ba18: b85fc110     	ldur	w16, [x8, #-0x4]
    ba1c: 72810611     	movk	w17, #0x830
    ba20: 72b08f51     	movk	w17, #0x847a, lsl #16
    ba24: 6b11021f     	cmp	w16, w17
    ba28: 54000040     	b.eq	0xba30 <richtap_file_unlocked_ioctl+0x4dc>
    ba2c: d4304500     	brk	#0x8228
    ba30: d63f0100     	blr	x8
    ba34: 910bc260     	add	x0, x19, #0x2f0
    ba38: 94000000     	bl	0xba38 <richtap_file_unlocked_ioctl+0x4e4>
		000000000000ba38:  R_AARCH64_CALL26	mutex_unlock
    ba3c: f942e668     	ldr	x8, [x19, #0x5c8]
    ba40: aa1303e0     	mov	x0, x19
    ba44: 2a1f03e1     	mov	w1, wzr
    ba48: f9408908     	ldr	x8, [x8, #0x110]
    ba4c: b85fc110     	ldur	w16, [x8, #-0x4]
    ba50: 729bedd1     	movk	w17, #0xdf6e
    ba54: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    ba58: 6b11021f     	cmp	w16, w17
    ba5c: 54000040     	b.eq	0xba64 <richtap_file_unlocked_ioctl+0x510>
    ba60: d4304500     	brk	#0x8228
    ba64: d63f0100     	blr	x8
    ba68: b906be7f     	str	wzr, [x19, #0x6bc]
    ba6c: aa1303e0     	mov	x0, x19
    ba70: 52800041     	mov	w1, #0x2                // =2
    ba74: f942e668     	ldr	x8, [x19, #0x5c8]
    ba78: f9408d08     	ldr	x8, [x8, #0x118]
    ba7c: b85fc110     	ldur	w16, [x8, #-0x4]
    ba80: 728dd2b1     	movk	w17, #0x6e95
    ba84: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    ba88: 6b11021f     	cmp	w16, w17
    ba8c: 54000040     	b.eq	0xba94 <richtap_file_unlocked_ioctl+0x540>
    ba90: d4304500     	brk	#0x8228
    ba94: d63f0100     	blr	x8
    ba98: f942e668     	ldr	x8, [x19, #0x5c8]
    ba9c: b9403261     	ldr	w1, [x19, #0x30]
    baa0: aa1303e0     	mov	x0, x19
    baa4: f9405108     	ldr	x8, [x8, #0xa0]
    baa8: b85fc110     	ldur	w16, [x8, #-0x4]
    baac: 729bedd1     	movk	w17, #0xdf6e
    bab0: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    bab4: 6b11021f     	cmp	w16, w17
    bab8: 54000040     	b.eq	0xbac0 <richtap_file_unlocked_ioctl+0x56c>
    babc: d4304500     	brk	#0x8228
    bac0: d63f0100     	blr	x8
    bac4: f9422661     	ldr	x1, [x19, #0x448]
    bac8: 91192262     	add	x2, x19, #0x648
    bacc: 17fffec4     	b	0xb5dc <richtap_file_unlocked_ioctl+0x88>
    bad0: f9419260     	ldr	x0, [x19, #0x320]
    bad4: 90000001     	adrp	x1, 0xb000 <audio_work_routine+0xd0>
		000000000000bad4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78a
    bad8: 91000021     	add	x1, x1, #0x0
		000000000000bad8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78a
    badc: 90000002     	adrp	x2, 0xb000 <audio_work_routine+0xd0>
		000000000000badc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20cb
    bae0: 91000042     	add	x2, x2, #0x0
		000000000000bae0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20cb
    bae4: 94000000     	bl	0xbae4 <richtap_file_unlocked_ioctl+0x590>
		000000000000bae4:  R_AARCH64_CALL26	_dev_err
    bae8: 17ffff65     	b	0xb87c <richtap_file_unlocked_ioctl+0x328>
    baec: f9419260     	ldr	x0, [x19, #0x320]
    baf0: 90000001     	adrp	x1, 0xb000 <audio_work_routine+0xd0>
		000000000000baf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a97
    baf4: 91000021     	add	x1, x1, #0x0
		000000000000baf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a97
    baf8: 94000000     	bl	0xbaf8 <richtap_file_unlocked_ioctl+0x5a4>
		000000000000baf8:  R_AARCH64_CALL26	_dev_err
    bafc: 928002a0     	mov	x0, #-0x16              // =-22
    bb00: 17ffff93     	b	0xb94c <richtap_file_unlocked_ioctl+0x3f8>
    bb04: 94000000     	bl	0xbb04 <richtap_file_unlocked_ioctl+0x5b0>
		000000000000bb04:  R_AARCH64_CALL26	__stack_chk_fail
