
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000066d0 <richtap_file_unlocked_ioctl>:
    66d0: d503233f     	paciasp
    66d4: d10103ff     	sub	sp, sp, #0x40
    66d8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    66dc: f90013f5     	str	x21, [sp, #0x20]
    66e0: a9034ff4     	stp	x20, x19, [sp, #0x30]
    66e4: 910043fd     	add	x29, sp, #0x10
    66e8: d5384108     	mrs	x8, SP_EL0
    66ec: aa0203f4     	mov	x20, x2
    66f0: 2a0103f5     	mov	w21, w1
    66f4: f9438908     	ldr	x8, [x8, #0x710]
    66f8: 90000001     	adrp	x1, 0x6000 <aw8693x_get_wav_loop+0xf4>
		00000000000066f8:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_20cb
    66fc: 91000021     	add	x1, x1, #0x0
		00000000000066fc:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_20cb
    6700: 2a1503e2     	mov	w2, w21
    6704: aa1403e3     	mov	x3, x20
    6708: f90007e8     	str	x8, [sp, #0x8]
    670c: f9401013     	ldr	x19, [x0, #0x20]
    6710: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0xf4>
		0000000000006710:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_2cdb
    6714: 91000000     	add	x0, x0, #0x0
		0000000000006714:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_2cdb
    6718: b90007ff     	str	wzr, [sp, #0x4]
    671c: 94000000     	bl	0x671c <richtap_file_unlocked_ioctl+0x4c>
		000000000000671c:  R_AARCH64_CALL26	_printk
    6720: 528a4108     	mov	w8, #0x5208             // =21000
    6724: 6b0802bf     	cmp	w21, w8
    6728: 540001ed     	b.le	0x6764 <richtap_file_unlocked_ioctl+0x94>
    672c: 528a4208     	mov	w8, #0x5210             // =21008
    6730: 6b0802bf     	cmp	w21, w8
    6734: 540002cd     	b.le	0x678c <richtap_file_unlocked_ioctl+0xbc>
    6738: 528a4228     	mov	w8, #0x5211             // =21009
    673c: 6b0802bf     	cmp	w21, w8
    6740: 54001600     	b.eq	0x6a00 <richtap_file_unlocked_ioctl+0x330>
    6744: 528a4248     	mov	w8, #0x5212             // =21010
    6748: 6b0802bf     	cmp	w21, w8
    674c: 54001d41     	b.ne	0x6af4 <richtap_file_unlocked_ioctl+0x424>
    6750: f9422661     	ldr	x1, [x19, #0x448]
    6754: 9119a262     	add	x2, x19, #0x668
    6758: 52800400     	mov	w0, #0x20               // =32
    675c: 94000000     	bl	0x675c <richtap_file_unlocked_ioctl+0x8c>
		000000000000675c:  R_AARCH64_CALL26	queue_work_on
    6760: 140000a6     	b	0x69f8 <richtap_file_unlocked_ioctl+0x328>
    6764: 528a4068     	mov	w8, #0x5203             // =20995
    6768: 6b0802bf     	cmp	w21, w8
    676c: 54000dc0     	b.eq	0x6924 <richtap_file_unlocked_ioctl+0x254>
    6770: 528a40a8     	mov	w8, #0x5205             // =20997
    6774: 6b0802bf     	cmp	w21, w8
    6778: 54001260     	b.eq	0x69c4 <richtap_file_unlocked_ioctl+0x2f4>
    677c: 528a40c8     	mov	w8, #0x5206             // =20998
    6780: 6b0802bf     	cmp	w21, w8
    6784: 540013a0     	b.eq	0x69f8 <richtap_file_unlocked_ioctl+0x328>
    6788: 14000131     	b	0x6c4c <richtap_file_unlocked_ioctl+0x57c>
    678c: 528a4128     	mov	w8, #0x5209             // =21001
    6790: 6b0802bf     	cmp	w21, w8
    6794: 54001c81     	b.ne	0x6b24 <richtap_file_unlocked_ioctl+0x454>
    6798: 910bc260     	add	x0, x19, #0x2f0
    679c: 94000000     	bl	0x679c <richtap_file_unlocked_ioctl+0xcc>
		000000000000679c:  R_AARCH64_CALL26	mutex_lock
    67a0: f942e668     	ldr	x8, [x19, #0x5c8]
    67a4: aa1303e0     	mov	x0, x19
    67a8: f9401d08     	ldr	x8, [x8, #0x38]
    67ac: b85fc110     	ldur	w16, [x8, #-0x4]
    67b0: 72810611     	movk	w17, #0x830
    67b4: 72b08f51     	movk	w17, #0x847a, lsl #16
    67b8: 6b11021f     	cmp	w16, w17
    67bc: 54000040     	b.eq	0x67c4 <richtap_file_unlocked_ioctl+0xf4>
    67c0: d4304500     	brk	#0x8228
    67c4: d63f0100     	blr	x8
    67c8: 910bc260     	add	x0, x19, #0x2f0
    67cc: 94000000     	bl	0x67cc <richtap_file_unlocked_ioctl+0xfc>
		00000000000067cc:  R_AARCH64_CALL26	mutex_unlock
    67d0: d5384108     	mrs	x8, SP_EL0
    67d4: 39411909     	ldrb	w9, [x8, #0x46]
    67d8: f9430675     	ldr	x21, [x19, #0x608]
    67dc: 37280089     	tbnz	w9, #0x5, 0x67ec <richtap_file_unlocked_ioctl+0x11c>
    67e0: f940010a     	ldr	x10, [x8]
    67e4: aa1403e9     	mov	x9, x20
    67e8: 36d0006a     	tbz	w10, #0x1a, 0x67f4 <richtap_file_unlocked_ioctl+0x124>
    67ec: d378de89     	lsl	x9, x20, #8
    67f0: 8a892289     	and	x9, x20, x9, asr #8
    67f4: b2705bea     	mov	x10, #0x7fffff0000      // =549755748352
    67f8: f298300a     	movk	x10, #0xc180
    67fc: eb0a013f     	cmp	x9, x10
    6800: 54001568     	b.hi	0x6aac <richtap_file_unlocked_ioctl+0x3dc>
    6804: d503201f     	nop
    6808: d53b4229     	mrs	x9, DAIF
    680c: d50343df     	msr	DAIFSet, #0x3
    6810: f9400508     	ldr	x8, [x8, #0x8]
    6814: d538202a     	mrs	x10, TTBR1_EL1
    6818: aa0803eb     	mov	x11, x8
    681c: b340bd4b     	bfxil	x11, x10, #0, #48
    6820: d518202b     	msr	TTBR1_EL1, x11
    6824: d5182008     	msr	TTBR0_EL1, x8
    6828: d5033fdf     	isb
    682c: d51b4229     	msr	DAIF, x9
    6830: 9248fa81     	and	x1, x20, #0xff7fffffffffffff
    6834: aa1503e0     	mov	x0, x21
    6838: 5287d002     	mov	w2, #0x3e80             // =16000
    683c: 94000000     	bl	0x683c <richtap_file_unlocked_ioctl+0x16c>
		000000000000683c:  R_AARCH64_CALL26	__arch_copy_from_user
    6840: aa0003e2     	mov	x2, x0
    6844: d503201f     	nop
    6848: d53b4228     	mrs	x8, DAIF
    684c: d50343df     	msr	DAIFSet, #0x3
    6850: d5382029     	mrs	x9, TTBR1_EL1
    6854: 9240bd29     	and	x9, x9, #0xffffffffffff
    6858: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    685c: d518200a     	msr	TTBR0_EL1, x10
    6860: d5182029     	msr	TTBR1_EL1, x9
    6864: d5033fdf     	isb
    6868: d51b4228     	msr	DAIF, x8
    686c: b5001222     	cbnz	x2, 0x6ab0 <richtap_file_unlocked_ioctl+0x3e0>
    6870: f9430668     	ldr	x8, [x19, #0x608]
    6874: b9400102     	ldr	w2, [x8]
    6878: 5287cfa8     	mov	w8, #0x3e7d             // =15997
    687c: 6b08005f     	cmp	w2, w8
    6880: b90007e2     	str	w2, [sp, #0x4]
    6884: 54001f2a     	b.ge	0x6c68 <richtap_file_unlocked_ioctl+0x598>
    6888: f942e668     	ldr	x8, [x19, #0x5c8]
    688c: aa1303e0     	mov	x0, x19
    6890: 52800041     	mov	w1, #0x2                // =2
    6894: f9408d08     	ldr	x8, [x8, #0x118]
    6898: b85fc110     	ldur	w16, [x8, #-0x4]
    689c: 728dd2b1     	movk	w17, #0x6e95
    68a0: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    68a4: 6b11021f     	cmp	w16, w17
    68a8: 54000040     	b.eq	0x68b0 <richtap_file_unlocked_ioctl+0x1e0>
    68ac: d4304500     	brk	#0x8228
    68b0: d63f0100     	blr	x8
    68b4: f942e668     	ldr	x8, [x19, #0x5c8]
    68b8: b9403261     	ldr	w1, [x19, #0x30]
    68bc: aa1303e0     	mov	x0, x19
    68c0: f9405108     	ldr	x8, [x8, #0xa0]
    68c4: b85fc110     	ldur	w16, [x8, #-0x4]
    68c8: 729bedd1     	movk	w17, #0xdf6e
    68cc: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    68d0: 6b11021f     	cmp	w16, w17
    68d4: 54000040     	b.eq	0x68dc <richtap_file_unlocked_ioctl+0x20c>
    68d8: d4304500     	brk	#0x8228
    68dc: d63f0100     	blr	x8
    68e0: aa1303e0     	mov	x0, x19
    68e4: 97ffff15     	bl	0x6538 <aw_remove+0xa0>
		00000000000068e4:  R_AARCH64_CALL26	richtap_rtp_start
    68e8: 36000880     	tbz	w0, #0x0, 0x69f8 <richtap_file_unlocked_ioctl+0x328>
    68ec: f942e668     	ldr	x8, [x19, #0x5c8]
    68f0: f9430669     	ldr	x9, [x19, #0x608]
    68f4: aa1303e0     	mov	x0, x19
    68f8: b94007e2     	ldr	w2, [sp, #0x4]
    68fc: f9406908     	ldr	x8, [x8, #0xd0]
    6900: 91001121     	add	x1, x9, #0x4
    6904: b85fc110     	ldur	w16, [x8, #-0x4]
    6908: 72965371     	movk	w17, #0xb29b
    690c: 72b8d4f1     	movk	w17, #0xc6a7, lsl #16
    6910: 6b11021f     	cmp	w16, w17
    6914: 54000040     	b.eq	0x691c <richtap_file_unlocked_ioctl+0x24c>
    6918: d4304500     	brk	#0x8228
    691c: d63f0100     	blr	x8
    6920: 14000036     	b	0x69f8 <richtap_file_unlocked_ioctl+0x328>
    6924: d5384108     	mrs	x8, SP_EL0
    6928: 39411909     	ldrb	w9, [x8, #0x46]
    692c: 528000aa     	mov	w10, #0x5               // =5
    6930: b90007ea     	str	w10, [sp, #0x4]
    6934: 37280089     	tbnz	w9, #0x5, 0x6944 <richtap_file_unlocked_ioctl+0x274>
    6938: f940010a     	ldr	x10, [x8]
    693c: aa1403e9     	mov	x9, x20
    6940: 36d0006a     	tbz	w10, #0x1a, 0x694c <richtap_file_unlocked_ioctl+0x27c>
    6944: d378de89     	lsl	x9, x20, #8
    6948: 8a892289     	and	x9, x20, x9, asr #8
    694c: b2705bea     	mov	x10, #0x7fffff0000      // =549755748352
    6950: f29fffaa     	movk	x10, #0xfffd
    6954: eb0a013f     	cmp	x9, x10
    6958: 54000b62     	b.hs	0x6ac4 <richtap_file_unlocked_ioctl+0x3f4>
    695c: d503201f     	nop
    6960: d53b4229     	mrs	x9, DAIF
    6964: d50343df     	msr	DAIFSet, #0x3
    6968: f9400508     	ldr	x8, [x8, #0x8]
    696c: d538202a     	mrs	x10, TTBR1_EL1
    6970: aa0803eb     	mov	x11, x8
    6974: b340bd4b     	bfxil	x11, x10, #0, #48
    6978: d518202b     	msr	TTBR1_EL1, x11
    697c: d5182008     	msr	TTBR0_EL1, x8
    6980: d5033fdf     	isb
    6984: d51b4229     	msr	DAIF, x9
    6988: 9248fa80     	and	x0, x20, #0xff7fffffffffffff
    698c: 910013e1     	add	x1, sp, #0x4
    6990: 52800082     	mov	w2, #0x4                // =4
    6994: 94000000     	bl	0x6994 <richtap_file_unlocked_ioctl+0x2c4>
		0000000000006994:  R_AARCH64_CALL26	__arch_copy_to_user
    6998: d503201f     	nop
    699c: d53b4228     	mrs	x8, DAIF
    69a0: d50343df     	msr	DAIFSet, #0x3
    69a4: d5382029     	mrs	x9, TTBR1_EL1
    69a8: 9240bd29     	and	x9, x9, #0xffffffffffff
    69ac: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    69b0: d518200a     	msr	TTBR0_EL1, x10
    69b4: d5182029     	msr	TTBR1_EL1, x9
    69b8: d5033fdf     	isb
    69bc: d51b4228     	msr	DAIF, x8
    69c0: 14000037     	b	0x6a9c <richtap_file_unlocked_ioctl+0x3cc>
    69c4: f942e668     	ldr	x8, [x19, #0x5c8]
    69c8: f102029f     	cmp	x20, #0x80
    69cc: 52801009     	mov	w9, #0x80               // =128
    69d0: 9a893281     	csel	x1, x20, x9, lo
    69d4: aa1303e0     	mov	x0, x19
    69d8: f9404508     	ldr	x8, [x8, #0x88]
    69dc: b85fc110     	ldur	w16, [x8, #-0x4]
    69e0: 729bedd1     	movk	w17, #0xdf6e
    69e4: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    69e8: 6b11021f     	cmp	w16, w17
    69ec: 54000040     	b.eq	0x69f4 <richtap_file_unlocked_ioctl+0x324>
    69f0: d4304500     	brk	#0x8228
    69f4: d63f0100     	blr	x8
    69f8: aa1f03e0     	mov	x0, xzr
    69fc: 14000033     	b	0x6ac8 <richtap_file_unlocked_ioctl+0x3f8>
    6a00: d5384108     	mrs	x8, SP_EL0
    6a04: b9406269     	ldr	w9, [x19, #0x60]
    6a08: 3941190a     	ldrb	w10, [x8, #0x46]
    6a0c: b90007e9     	str	w9, [sp, #0x4]
    6a10: 3728008a     	tbnz	w10, #0x5, 0x6a20 <richtap_file_unlocked_ioctl+0x350>
    6a14: f940010a     	ldr	x10, [x8]
    6a18: aa1403e9     	mov	x9, x20
    6a1c: 36d0006a     	tbz	w10, #0x1a, 0x6a28 <richtap_file_unlocked_ioctl+0x358>
    6a20: d378de89     	lsl	x9, x20, #8
    6a24: 8a892289     	and	x9, x20, x9, asr #8
    6a28: b2705bea     	mov	x10, #0x7fffff0000      // =549755748352
    6a2c: f29fffaa     	movk	x10, #0xfffd
    6a30: eb0a013f     	cmp	x9, x10
    6a34: 54000482     	b.hs	0x6ac4 <richtap_file_unlocked_ioctl+0x3f4>
    6a38: d503201f     	nop
    6a3c: d53b4229     	mrs	x9, DAIF
    6a40: d50343df     	msr	DAIFSet, #0x3
    6a44: f9400508     	ldr	x8, [x8, #0x8]
    6a48: d538202a     	mrs	x10, TTBR1_EL1
    6a4c: aa0803eb     	mov	x11, x8
    6a50: b340bd4b     	bfxil	x11, x10, #0, #48
    6a54: d518202b     	msr	TTBR1_EL1, x11
    6a58: d5182008     	msr	TTBR0_EL1, x8
    6a5c: d5033fdf     	isb
    6a60: d51b4229     	msr	DAIF, x9
    6a64: 9248fa80     	and	x0, x20, #0xff7fffffffffffff
    6a68: 910013e1     	add	x1, sp, #0x4
    6a6c: 52800082     	mov	w2, #0x4                // =4
    6a70: 94000000     	bl	0x6a70 <richtap_file_unlocked_ioctl+0x3a0>
		0000000000006a70:  R_AARCH64_CALL26	__arch_copy_to_user
    6a74: d503201f     	nop
    6a78: d53b4228     	mrs	x8, DAIF
    6a7c: d50343df     	msr	DAIFSet, #0x3
    6a80: d5382029     	mrs	x9, TTBR1_EL1
    6a84: 9240bd29     	and	x9, x9, #0xffffffffffff
    6a88: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    6a8c: d518200a     	msr	TTBR0_EL1, x10
    6a90: d5182029     	msr	TTBR1_EL1, x9
    6a94: d5033fdf     	isb
    6a98: d51b4228     	msr	DAIF, x8
    6a9c: f100001f     	cmp	x0, #0x0
    6aa0: 928001a8     	mov	x8, #-0xe               // =-14
    6aa4: 9a8803e0     	csel	x0, xzr, x8, eq
    6aa8: 14000008     	b	0x6ac8 <richtap_file_unlocked_ioctl+0x3f8>
    6aac: 5287d002     	mov	w2, #0x3e80             // =16000
    6ab0: cb0202a8     	sub	x8, x21, x2
    6ab4: 5287d009     	mov	w9, #0x3e80             // =16000
    6ab8: 2a1f03e1     	mov	w1, wzr
    6abc: 8b090100     	add	x0, x8, x9
    6ac0: 94000000     	bl	0x6ac0 <richtap_file_unlocked_ioctl+0x3f0>
		0000000000006ac0:  R_AARCH64_CALL26	memset
    6ac4: 928001a0     	mov	x0, #-0xe               // =-14
    6ac8: d5384108     	mrs	x8, SP_EL0
    6acc: f9438908     	ldr	x8, [x8, #0x710]
    6ad0: f94007e9     	ldr	x9, [sp, #0x8]
    6ad4: eb09011f     	cmp	x8, x9
    6ad8: 54000d41     	b.ne	0x6c80 <richtap_file_unlocked_ioctl+0x5b0>
    6adc: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    6ae0: f94013f5     	ldr	x21, [sp, #0x20]
    6ae4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    6ae8: 910103ff     	add	sp, sp, #0x40
    6aec: d50323bf     	autiasp
    6af0: d65f03c0     	ret
    6af4: 528a4268     	mov	w8, #0x5213             // =21011
    6af8: 6b0802bf     	cmp	w21, w8
    6afc: 54000a81     	b.ne	0x6c4c <richtap_file_unlocked_ioctl+0x57c>
    6b00: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0xf4>
		0000000000006b00:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_0bbe
    6b04: 91000000     	add	x0, x0, #0x0
		0000000000006b04:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_0bbe
    6b08: 90000001     	adrp	x1, 0x6000 <aw8693x_get_wav_loop+0xf4>
		0000000000006b08:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_0000
    6b0c: 91000021     	add	x1, x1, #0x0
		0000000000006b0c:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_0000
    6b10: 90000003     	adrp	x3, 0x6000 <aw8693x_get_wav_loop+0xf4>
		0000000000006b10:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_20cb
    6b14: 91000063     	add	x3, x3, #0x0
		0000000000006b14:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_20cb
    6b18: 5280be42     	mov	w2, #0x5f2              // =1522
    6b1c: 94000000     	bl	0x6b1c <richtap_file_unlocked_ioctl+0x44c>
		0000000000006b1c:  R_AARCH64_CALL26	_printk
    6b20: 17ffffb6     	b	0x69f8 <richtap_file_unlocked_ioctl+0x328>
    6b24: 528a4148     	mov	w8, #0x520a             // =21002
    6b28: 6b0802bf     	cmp	w21, w8
    6b2c: 54000901     	b.ne	0x6c4c <richtap_file_unlocked_ioctl+0x57c>
    6b30: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0xf4>
		0000000000006b30:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_1037
    6b34: 91000000     	add	x0, x0, #0x0
		0000000000006b34:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_1037
    6b38: 90000001     	adrp	x1, 0x6000 <aw8693x_get_wav_loop+0xf4>
		0000000000006b38:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_0000
    6b3c: 91000021     	add	x1, x1, #0x0
		0000000000006b3c:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_0000
    6b40: 90000003     	adrp	x3, 0x6000 <aw8693x_get_wav_loop+0xf4>
		0000000000006b40:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_20cb
    6b44: 91000063     	add	x3, x3, #0x0
		0000000000006b44:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_20cb
    6b48: 5280bb22     	mov	w2, #0x5d9              // =1497
    6b4c: 94000000     	bl	0x6b4c <richtap_file_unlocked_ioctl+0x47c>
		0000000000006b4c:  R_AARCH64_CALL26	_printk
    6b50: aa1303e0     	mov	x0, x19
    6b54: 940000aa     	bl	0x6dfc <richtap_rtp_start+0x178>
		0000000000006b54:  R_AARCH64_CALL26	richtap_clean_buf
    6b58: 910bc260     	add	x0, x19, #0x2f0
    6b5c: 94000000     	bl	0x6b5c <richtap_file_unlocked_ioctl+0x48c>
		0000000000006b5c:  R_AARCH64_CALL26	mutex_lock
    6b60: f942e668     	ldr	x8, [x19, #0x5c8]
    6b64: aa1303e0     	mov	x0, x19
    6b68: f9407908     	ldr	x8, [x8, #0xf0]
    6b6c: b85fc110     	ldur	w16, [x8, #-0x4]
    6b70: 72810611     	movk	w17, #0x830
    6b74: 72b08f51     	movk	w17, #0x847a, lsl #16
    6b78: 6b11021f     	cmp	w16, w17
    6b7c: 54000040     	b.eq	0x6b84 <richtap_file_unlocked_ioctl+0x4b4>
    6b80: d4304500     	brk	#0x8228
    6b84: d63f0100     	blr	x8
    6b88: f942e668     	ldr	x8, [x19, #0x5c8]
    6b8c: aa1303e0     	mov	x0, x19
    6b90: f9401d08     	ldr	x8, [x8, #0x38]
    6b94: b85fc110     	ldur	w16, [x8, #-0x4]
    6b98: 72810611     	movk	w17, #0x830
    6b9c: 72b08f51     	movk	w17, #0x847a, lsl #16
    6ba0: 6b11021f     	cmp	w16, w17
    6ba4: 54000040     	b.eq	0x6bac <richtap_file_unlocked_ioctl+0x4dc>
    6ba8: d4304500     	brk	#0x8228
    6bac: d63f0100     	blr	x8
    6bb0: 910bc260     	add	x0, x19, #0x2f0
    6bb4: 94000000     	bl	0x6bb4 <richtap_file_unlocked_ioctl+0x4e4>
		0000000000006bb4:  R_AARCH64_CALL26	mutex_unlock
    6bb8: f942e668     	ldr	x8, [x19, #0x5c8]
    6bbc: aa1303e0     	mov	x0, x19
    6bc0: 2a1f03e1     	mov	w1, wzr
    6bc4: f9408908     	ldr	x8, [x8, #0x110]
    6bc8: b85fc110     	ldur	w16, [x8, #-0x4]
    6bcc: 729bedd1     	movk	w17, #0xdf6e
    6bd0: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    6bd4: 6b11021f     	cmp	w16, w17
    6bd8: 54000040     	b.eq	0x6be0 <richtap_file_unlocked_ioctl+0x510>
    6bdc: d4304500     	brk	#0x8228
    6be0: d63f0100     	blr	x8
    6be4: b906be7f     	str	wzr, [x19, #0x6bc]
    6be8: aa1303e0     	mov	x0, x19
    6bec: 52800041     	mov	w1, #0x2                // =2
    6bf0: f942e668     	ldr	x8, [x19, #0x5c8]
    6bf4: f9408d08     	ldr	x8, [x8, #0x118]
    6bf8: b85fc110     	ldur	w16, [x8, #-0x4]
    6bfc: 728dd2b1     	movk	w17, #0x6e95
    6c00: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    6c04: 6b11021f     	cmp	w16, w17
    6c08: 54000040     	b.eq	0x6c10 <richtap_file_unlocked_ioctl+0x540>
    6c0c: d4304500     	brk	#0x8228
    6c10: d63f0100     	blr	x8
    6c14: f942e668     	ldr	x8, [x19, #0x5c8]
    6c18: b9403261     	ldr	w1, [x19, #0x30]
    6c1c: aa1303e0     	mov	x0, x19
    6c20: f9405108     	ldr	x8, [x8, #0xa0]
    6c24: b85fc110     	ldur	w16, [x8, #-0x4]
    6c28: 729bedd1     	movk	w17, #0xdf6e
    6c2c: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    6c30: 6b11021f     	cmp	w16, w17
    6c34: 54000040     	b.eq	0x6c3c <richtap_file_unlocked_ioctl+0x56c>
    6c38: d4304500     	brk	#0x8228
    6c3c: d63f0100     	blr	x8
    6c40: f9422661     	ldr	x1, [x19, #0x448]
    6c44: 91192262     	add	x2, x19, #0x648
    6c48: 17fffec4     	b	0x6758 <richtap_file_unlocked_ioctl+0x88>
    6c4c: f9419260     	ldr	x0, [x19, #0x320]
    6c50: 90000001     	adrp	x1, 0x6000 <aw8693x_get_wav_loop+0xf4>
		0000000000006c50:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_078a
    6c54: 91000021     	add	x1, x1, #0x0
		0000000000006c54:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_078a
    6c58: 90000002     	adrp	x2, 0x6000 <aw8693x_get_wav_loop+0xf4>
		0000000000006c58:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_20cb
    6c5c: 91000042     	add	x2, x2, #0x0
		0000000000006c5c:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_20cb
    6c60: 94000000     	bl	0x6c60 <richtap_file_unlocked_ioctl+0x590>
		0000000000006c60:  R_AARCH64_CALL26	_dev_err
    6c64: 17ffff65     	b	0x69f8 <richtap_file_unlocked_ioctl+0x328>
    6c68: f9419260     	ldr	x0, [x19, #0x320]
    6c6c: 90000001     	adrp	x1, 0x6000 <aw8693x_get_wav_loop+0xf4>
		0000000000006c6c:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_2a97
    6c70: 91000021     	add	x1, x1, #0x0
		0000000000006c70:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_2a97
    6c74: 94000000     	bl	0x6c74 <richtap_file_unlocked_ioctl+0x5a4>
		0000000000006c74:  R_AARCH64_CALL26	_dev_err
    6c78: 928002a0     	mov	x0, #-0x16              // =-22
    6c7c: 17ffff93     	b	0x6ac8 <richtap_file_unlocked_ioctl+0x3f8>
    6c80: 94000000     	bl	0x6c80 <richtap_file_unlocked_ioctl+0x5b0>
		0000000000006c80:  R_AARCH64_CALL26	__stack_chk_fail
