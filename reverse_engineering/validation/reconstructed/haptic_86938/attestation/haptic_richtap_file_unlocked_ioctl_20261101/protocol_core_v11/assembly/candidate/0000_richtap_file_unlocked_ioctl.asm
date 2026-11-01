
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006700 <richtap_file_unlocked_ioctl>:
    6700: d503233f     	paciasp
    6704: d10103ff     	sub	sp, sp, #0x40
    6708: a9017bfd     	stp	x29, x30, [sp, #0x10]
    670c: f90013f5     	str	x21, [sp, #0x20]
    6710: a9034ff4     	stp	x20, x19, [sp, #0x30]
    6714: 910043fd     	add	x29, sp, #0x10
    6718: d5384108     	mrs	x8, SP_EL0
    671c: aa0203f4     	mov	x20, x2
    6720: 2a0103f5     	mov	w21, w1
    6724: f9438908     	ldr	x8, [x8, #0x710]
    6728: 90000001     	adrp	x1, 0x6000 <aw8693x_get_wav_loop+0xc4>
		0000000000006728:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_20cb
    672c: 91000021     	add	x1, x1, #0x0
		000000000000672c:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_20cb
    6730: 2a1503e2     	mov	w2, w21
    6734: aa1403e3     	mov	x3, x20
    6738: f90007e8     	str	x8, [sp, #0x8]
    673c: f9401013     	ldr	x19, [x0, #0x20]
    6740: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0xc4>
		0000000000006740:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_2cdb
    6744: 91000000     	add	x0, x0, #0x0
		0000000000006744:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_2cdb
    6748: b90007ff     	str	wzr, [sp, #0x4]
    674c: 94000000     	bl	0x674c <richtap_file_unlocked_ioctl+0x4c>
		000000000000674c:  R_AARCH64_CALL26	_printk
    6750: 528a4108     	mov	w8, #0x5208             // =21000
    6754: 6b0802bf     	cmp	w21, w8
    6758: 540001ed     	b.le	0x6794 <richtap_file_unlocked_ioctl+0x94>
    675c: 528a4208     	mov	w8, #0x5210             // =21008
    6760: 6b0802bf     	cmp	w21, w8
    6764: 540002cd     	b.le	0x67bc <richtap_file_unlocked_ioctl+0xbc>
    6768: 528a4228     	mov	w8, #0x5211             // =21009
    676c: 6b0802bf     	cmp	w21, w8
    6770: 54001600     	b.eq	0x6a30 <richtap_file_unlocked_ioctl+0x330>
    6774: 528a4248     	mov	w8, #0x5212             // =21010
    6778: 6b0802bf     	cmp	w21, w8
    677c: 54001d41     	b.ne	0x6b24 <richtap_file_unlocked_ioctl+0x424>
    6780: f9422661     	ldr	x1, [x19, #0x448]
    6784: 9119a262     	add	x2, x19, #0x668
    6788: 52800400     	mov	w0, #0x20               // =32
    678c: 94000000     	bl	0x678c <richtap_file_unlocked_ioctl+0x8c>
		000000000000678c:  R_AARCH64_CALL26	queue_work_on
    6790: 140000a6     	b	0x6a28 <richtap_file_unlocked_ioctl+0x328>
    6794: 528a4068     	mov	w8, #0x5203             // =20995
    6798: 6b0802bf     	cmp	w21, w8
    679c: 54000dc0     	b.eq	0x6954 <richtap_file_unlocked_ioctl+0x254>
    67a0: 528a40a8     	mov	w8, #0x5205             // =20997
    67a4: 6b0802bf     	cmp	w21, w8
    67a8: 54001260     	b.eq	0x69f4 <richtap_file_unlocked_ioctl+0x2f4>
    67ac: 528a40c8     	mov	w8, #0x5206             // =20998
    67b0: 6b0802bf     	cmp	w21, w8
    67b4: 540013a0     	b.eq	0x6a28 <richtap_file_unlocked_ioctl+0x328>
    67b8: 14000131     	b	0x6c7c <richtap_file_unlocked_ioctl+0x57c>
    67bc: 528a4128     	mov	w8, #0x5209             // =21001
    67c0: 6b0802bf     	cmp	w21, w8
    67c4: 54001c81     	b.ne	0x6b54 <richtap_file_unlocked_ioctl+0x454>
    67c8: 910bc260     	add	x0, x19, #0x2f0
    67cc: 94000000     	bl	0x67cc <richtap_file_unlocked_ioctl+0xcc>
		00000000000067cc:  R_AARCH64_CALL26	mutex_lock
    67d0: f942e668     	ldr	x8, [x19, #0x5c8]
    67d4: aa1303e0     	mov	x0, x19
    67d8: f9401d08     	ldr	x8, [x8, #0x38]
    67dc: b85fc110     	ldur	w16, [x8, #-0x4]
    67e0: 72810611     	movk	w17, #0x830
    67e4: 72b08f51     	movk	w17, #0x847a, lsl #16
    67e8: 6b11021f     	cmp	w16, w17
    67ec: 54000040     	b.eq	0x67f4 <richtap_file_unlocked_ioctl+0xf4>
    67f0: d4304500     	brk	#0x8228
    67f4: d63f0100     	blr	x8
    67f8: 910bc260     	add	x0, x19, #0x2f0
    67fc: 94000000     	bl	0x67fc <richtap_file_unlocked_ioctl+0xfc>
		00000000000067fc:  R_AARCH64_CALL26	mutex_unlock
    6800: d5384108     	mrs	x8, SP_EL0
    6804: 39411909     	ldrb	w9, [x8, #0x46]
    6808: f9430675     	ldr	x21, [x19, #0x608]
    680c: 37280089     	tbnz	w9, #0x5, 0x681c <richtap_file_unlocked_ioctl+0x11c>
    6810: f940010a     	ldr	x10, [x8]
    6814: aa1403e9     	mov	x9, x20
    6818: 36d0006a     	tbz	w10, #0x1a, 0x6824 <richtap_file_unlocked_ioctl+0x124>
    681c: d378de89     	lsl	x9, x20, #8
    6820: 8a892289     	and	x9, x20, x9, asr #8
    6824: b2705bea     	mov	x10, #0x7fffff0000      // =549755748352
    6828: f298300a     	movk	x10, #0xc180
    682c: eb0a013f     	cmp	x9, x10
    6830: 54001568     	b.hi	0x6adc <richtap_file_unlocked_ioctl+0x3dc>
    6834: d503201f     	nop
    6838: d53b4229     	mrs	x9, DAIF
    683c: d50343df     	msr	DAIFSet, #0x3
    6840: f9400508     	ldr	x8, [x8, #0x8]
    6844: d538202a     	mrs	x10, TTBR1_EL1
    6848: aa0803eb     	mov	x11, x8
    684c: b340bd4b     	bfxil	x11, x10, #0, #48
    6850: d518202b     	msr	TTBR1_EL1, x11
    6854: d5182008     	msr	TTBR0_EL1, x8
    6858: d5033fdf     	isb
    685c: d51b4229     	msr	DAIF, x9
    6860: 9248fa81     	and	x1, x20, #0xff7fffffffffffff
    6864: aa1503e0     	mov	x0, x21
    6868: 5287d002     	mov	w2, #0x3e80             // =16000
    686c: 94000000     	bl	0x686c <richtap_file_unlocked_ioctl+0x16c>
		000000000000686c:  R_AARCH64_CALL26	__arch_copy_from_user
    6870: aa0003e2     	mov	x2, x0
    6874: d503201f     	nop
    6878: d53b4228     	mrs	x8, DAIF
    687c: d50343df     	msr	DAIFSet, #0x3
    6880: d5382029     	mrs	x9, TTBR1_EL1
    6884: 9240bd29     	and	x9, x9, #0xffffffffffff
    6888: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    688c: d518200a     	msr	TTBR0_EL1, x10
    6890: d5182029     	msr	TTBR1_EL1, x9
    6894: d5033fdf     	isb
    6898: d51b4228     	msr	DAIF, x8
    689c: b5001222     	cbnz	x2, 0x6ae0 <richtap_file_unlocked_ioctl+0x3e0>
    68a0: f9430668     	ldr	x8, [x19, #0x608]
    68a4: b9400102     	ldr	w2, [x8]
    68a8: 5287cfa8     	mov	w8, #0x3e7d             // =15997
    68ac: 6b08005f     	cmp	w2, w8
    68b0: b90007e2     	str	w2, [sp, #0x4]
    68b4: 54001f2a     	b.ge	0x6c98 <richtap_file_unlocked_ioctl+0x598>
    68b8: f942e668     	ldr	x8, [x19, #0x5c8]
    68bc: aa1303e0     	mov	x0, x19
    68c0: 52800041     	mov	w1, #0x2                // =2
    68c4: f9408d08     	ldr	x8, [x8, #0x118]
    68c8: b85fc110     	ldur	w16, [x8, #-0x4]
    68cc: 728dd2b1     	movk	w17, #0x6e95
    68d0: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    68d4: 6b11021f     	cmp	w16, w17
    68d8: 54000040     	b.eq	0x68e0 <richtap_file_unlocked_ioctl+0x1e0>
    68dc: d4304500     	brk	#0x8228
    68e0: d63f0100     	blr	x8
    68e4: f942e668     	ldr	x8, [x19, #0x5c8]
    68e8: b9403261     	ldr	w1, [x19, #0x30]
    68ec: aa1303e0     	mov	x0, x19
    68f0: f9405108     	ldr	x8, [x8, #0xa0]
    68f4: b85fc110     	ldur	w16, [x8, #-0x4]
    68f8: 729bedd1     	movk	w17, #0xdf6e
    68fc: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    6900: 6b11021f     	cmp	w16, w17
    6904: 54000040     	b.eq	0x690c <richtap_file_unlocked_ioctl+0x20c>
    6908: d4304500     	brk	#0x8228
    690c: d63f0100     	blr	x8
    6910: aa1303e0     	mov	x0, x19
    6914: 97ffff15     	bl	0x6568 <aw_remove+0xa0>
		0000000000006914:  R_AARCH64_CALL26	richtap_rtp_start
    6918: 36000880     	tbz	w0, #0x0, 0x6a28 <richtap_file_unlocked_ioctl+0x328>
    691c: f942e668     	ldr	x8, [x19, #0x5c8]
    6920: f9430669     	ldr	x9, [x19, #0x608]
    6924: aa1303e0     	mov	x0, x19
    6928: b94007e2     	ldr	w2, [sp, #0x4]
    692c: f9406908     	ldr	x8, [x8, #0xd0]
    6930: 91001121     	add	x1, x9, #0x4
    6934: b85fc110     	ldur	w16, [x8, #-0x4]
    6938: 72965371     	movk	w17, #0xb29b
    693c: 72b8d4f1     	movk	w17, #0xc6a7, lsl #16
    6940: 6b11021f     	cmp	w16, w17
    6944: 54000040     	b.eq	0x694c <richtap_file_unlocked_ioctl+0x24c>
    6948: d4304500     	brk	#0x8228
    694c: d63f0100     	blr	x8
    6950: 14000036     	b	0x6a28 <richtap_file_unlocked_ioctl+0x328>
    6954: d5384108     	mrs	x8, SP_EL0
    6958: 39411909     	ldrb	w9, [x8, #0x46]
    695c: 528000aa     	mov	w10, #0x5               // =5
    6960: b90007ea     	str	w10, [sp, #0x4]
    6964: 37280089     	tbnz	w9, #0x5, 0x6974 <richtap_file_unlocked_ioctl+0x274>
    6968: f940010a     	ldr	x10, [x8]
    696c: aa1403e9     	mov	x9, x20
    6970: 36d0006a     	tbz	w10, #0x1a, 0x697c <richtap_file_unlocked_ioctl+0x27c>
    6974: d378de89     	lsl	x9, x20, #8
    6978: 8a892289     	and	x9, x20, x9, asr #8
    697c: b2705bea     	mov	x10, #0x7fffff0000      // =549755748352
    6980: f29fffaa     	movk	x10, #0xfffd
    6984: eb0a013f     	cmp	x9, x10
    6988: 54000b62     	b.hs	0x6af4 <richtap_file_unlocked_ioctl+0x3f4>
    698c: d503201f     	nop
    6990: d53b4229     	mrs	x9, DAIF
    6994: d50343df     	msr	DAIFSet, #0x3
    6998: f9400508     	ldr	x8, [x8, #0x8]
    699c: d538202a     	mrs	x10, TTBR1_EL1
    69a0: aa0803eb     	mov	x11, x8
    69a4: b340bd4b     	bfxil	x11, x10, #0, #48
    69a8: d518202b     	msr	TTBR1_EL1, x11
    69ac: d5182008     	msr	TTBR0_EL1, x8
    69b0: d5033fdf     	isb
    69b4: d51b4229     	msr	DAIF, x9
    69b8: 9248fa80     	and	x0, x20, #0xff7fffffffffffff
    69bc: 910013e1     	add	x1, sp, #0x4
    69c0: 52800082     	mov	w2, #0x4                // =4
    69c4: 94000000     	bl	0x69c4 <richtap_file_unlocked_ioctl+0x2c4>
		00000000000069c4:  R_AARCH64_CALL26	__arch_copy_to_user
    69c8: d503201f     	nop
    69cc: d53b4228     	mrs	x8, DAIF
    69d0: d50343df     	msr	DAIFSet, #0x3
    69d4: d5382029     	mrs	x9, TTBR1_EL1
    69d8: 9240bd29     	and	x9, x9, #0xffffffffffff
    69dc: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    69e0: d518200a     	msr	TTBR0_EL1, x10
    69e4: d5182029     	msr	TTBR1_EL1, x9
    69e8: d5033fdf     	isb
    69ec: d51b4228     	msr	DAIF, x8
    69f0: 14000037     	b	0x6acc <richtap_file_unlocked_ioctl+0x3cc>
    69f4: f942e668     	ldr	x8, [x19, #0x5c8]
    69f8: f102029f     	cmp	x20, #0x80
    69fc: 52801009     	mov	w9, #0x80               // =128
    6a00: 9a893281     	csel	x1, x20, x9, lo
    6a04: aa1303e0     	mov	x0, x19
    6a08: f9404508     	ldr	x8, [x8, #0x88]
    6a0c: b85fc110     	ldur	w16, [x8, #-0x4]
    6a10: 729bedd1     	movk	w17, #0xdf6e
    6a14: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    6a18: 6b11021f     	cmp	w16, w17
    6a1c: 54000040     	b.eq	0x6a24 <richtap_file_unlocked_ioctl+0x324>
    6a20: d4304500     	brk	#0x8228
    6a24: d63f0100     	blr	x8
    6a28: aa1f03e0     	mov	x0, xzr
    6a2c: 14000033     	b	0x6af8 <richtap_file_unlocked_ioctl+0x3f8>
    6a30: d5384108     	mrs	x8, SP_EL0
    6a34: b9406269     	ldr	w9, [x19, #0x60]
    6a38: 3941190a     	ldrb	w10, [x8, #0x46]
    6a3c: b90007e9     	str	w9, [sp, #0x4]
    6a40: 3728008a     	tbnz	w10, #0x5, 0x6a50 <richtap_file_unlocked_ioctl+0x350>
    6a44: f940010a     	ldr	x10, [x8]
    6a48: aa1403e9     	mov	x9, x20
    6a4c: 36d0006a     	tbz	w10, #0x1a, 0x6a58 <richtap_file_unlocked_ioctl+0x358>
    6a50: d378de89     	lsl	x9, x20, #8
    6a54: 8a892289     	and	x9, x20, x9, asr #8
    6a58: b2705bea     	mov	x10, #0x7fffff0000      // =549755748352
    6a5c: f29fffaa     	movk	x10, #0xfffd
    6a60: eb0a013f     	cmp	x9, x10
    6a64: 54000482     	b.hs	0x6af4 <richtap_file_unlocked_ioctl+0x3f4>
    6a68: d503201f     	nop
    6a6c: d53b4229     	mrs	x9, DAIF
    6a70: d50343df     	msr	DAIFSet, #0x3
    6a74: f9400508     	ldr	x8, [x8, #0x8]
    6a78: d538202a     	mrs	x10, TTBR1_EL1
    6a7c: aa0803eb     	mov	x11, x8
    6a80: b340bd4b     	bfxil	x11, x10, #0, #48
    6a84: d518202b     	msr	TTBR1_EL1, x11
    6a88: d5182008     	msr	TTBR0_EL1, x8
    6a8c: d5033fdf     	isb
    6a90: d51b4229     	msr	DAIF, x9
    6a94: 9248fa80     	and	x0, x20, #0xff7fffffffffffff
    6a98: 910013e1     	add	x1, sp, #0x4
    6a9c: 52800082     	mov	w2, #0x4                // =4
    6aa0: 94000000     	bl	0x6aa0 <richtap_file_unlocked_ioctl+0x3a0>
		0000000000006aa0:  R_AARCH64_CALL26	__arch_copy_to_user
    6aa4: d503201f     	nop
    6aa8: d53b4228     	mrs	x8, DAIF
    6aac: d50343df     	msr	DAIFSet, #0x3
    6ab0: d5382029     	mrs	x9, TTBR1_EL1
    6ab4: 9240bd29     	and	x9, x9, #0xffffffffffff
    6ab8: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    6abc: d518200a     	msr	TTBR0_EL1, x10
    6ac0: d5182029     	msr	TTBR1_EL1, x9
    6ac4: d5033fdf     	isb
    6ac8: d51b4228     	msr	DAIF, x8
    6acc: f100001f     	cmp	x0, #0x0
    6ad0: 928001a8     	mov	x8, #-0xe               // =-14
    6ad4: 9a8803e0     	csel	x0, xzr, x8, eq
    6ad8: 14000008     	b	0x6af8 <richtap_file_unlocked_ioctl+0x3f8>
    6adc: 5287d002     	mov	w2, #0x3e80             // =16000
    6ae0: cb0202a8     	sub	x8, x21, x2
    6ae4: 5287d009     	mov	w9, #0x3e80             // =16000
    6ae8: 2a1f03e1     	mov	w1, wzr
    6aec: 8b090100     	add	x0, x8, x9
    6af0: 94000000     	bl	0x6af0 <richtap_file_unlocked_ioctl+0x3f0>
		0000000000006af0:  R_AARCH64_CALL26	memset
    6af4: 928001a0     	mov	x0, #-0xe               // =-14
    6af8: d5384108     	mrs	x8, SP_EL0
    6afc: f9438908     	ldr	x8, [x8, #0x710]
    6b00: f94007e9     	ldr	x9, [sp, #0x8]
    6b04: eb09011f     	cmp	x8, x9
    6b08: 54000d41     	b.ne	0x6cb0 <richtap_file_unlocked_ioctl+0x5b0>
    6b0c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    6b10: f94013f5     	ldr	x21, [sp, #0x20]
    6b14: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    6b18: 910103ff     	add	sp, sp, #0x40
    6b1c: d50323bf     	autiasp
    6b20: d65f03c0     	ret
    6b24: 528a4268     	mov	w8, #0x5213             // =21011
    6b28: 6b0802bf     	cmp	w21, w8
    6b2c: 54000a81     	b.ne	0x6c7c <richtap_file_unlocked_ioctl+0x57c>
    6b30: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0xc4>
		0000000000006b30:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_0bbe
    6b34: 91000000     	add	x0, x0, #0x0
		0000000000006b34:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_0bbe
    6b38: 90000001     	adrp	x1, 0x6000 <aw8693x_get_wav_loop+0xc4>
		0000000000006b38:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_0000
    6b3c: 91000021     	add	x1, x1, #0x0
		0000000000006b3c:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_0000
    6b40: 90000003     	adrp	x3, 0x6000 <aw8693x_get_wav_loop+0xc4>
		0000000000006b40:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_20cb
    6b44: 91000063     	add	x3, x3, #0x0
		0000000000006b44:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_20cb
    6b48: 5280be42     	mov	w2, #0x5f2              // =1522
    6b4c: 94000000     	bl	0x6b4c <richtap_file_unlocked_ioctl+0x44c>
		0000000000006b4c:  R_AARCH64_CALL26	_printk
    6b50: 17ffffb6     	b	0x6a28 <richtap_file_unlocked_ioctl+0x328>
    6b54: 528a4148     	mov	w8, #0x520a             // =21002
    6b58: 6b0802bf     	cmp	w21, w8
    6b5c: 54000901     	b.ne	0x6c7c <richtap_file_unlocked_ioctl+0x57c>
    6b60: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0xc4>
		0000000000006b60:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_1037
    6b64: 91000000     	add	x0, x0, #0x0
		0000000000006b64:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_1037
    6b68: 90000001     	adrp	x1, 0x6000 <aw8693x_get_wav_loop+0xc4>
		0000000000006b68:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_0000
    6b6c: 91000021     	add	x1, x1, #0x0
		0000000000006b6c:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_0000
    6b70: 90000003     	adrp	x3, 0x6000 <aw8693x_get_wav_loop+0xc4>
		0000000000006b70:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_20cb
    6b74: 91000063     	add	x3, x3, #0x0
		0000000000006b74:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_20cb
    6b78: 5280bb22     	mov	w2, #0x5d9              // =1497
    6b7c: 94000000     	bl	0x6b7c <richtap_file_unlocked_ioctl+0x47c>
		0000000000006b7c:  R_AARCH64_CALL26	_printk
    6b80: aa1303e0     	mov	x0, x19
    6b84: 940000aa     	bl	0x6e2c <richtap_rtp_start+0x178>
		0000000000006b84:  R_AARCH64_CALL26	richtap_clean_buf
    6b88: 910bc260     	add	x0, x19, #0x2f0
    6b8c: 94000000     	bl	0x6b8c <richtap_file_unlocked_ioctl+0x48c>
		0000000000006b8c:  R_AARCH64_CALL26	mutex_lock
    6b90: f942e668     	ldr	x8, [x19, #0x5c8]
    6b94: aa1303e0     	mov	x0, x19
    6b98: f9407908     	ldr	x8, [x8, #0xf0]
    6b9c: b85fc110     	ldur	w16, [x8, #-0x4]
    6ba0: 72810611     	movk	w17, #0x830
    6ba4: 72b08f51     	movk	w17, #0x847a, lsl #16
    6ba8: 6b11021f     	cmp	w16, w17
    6bac: 54000040     	b.eq	0x6bb4 <richtap_file_unlocked_ioctl+0x4b4>
    6bb0: d4304500     	brk	#0x8228
    6bb4: d63f0100     	blr	x8
    6bb8: f942e668     	ldr	x8, [x19, #0x5c8]
    6bbc: aa1303e0     	mov	x0, x19
    6bc0: f9401d08     	ldr	x8, [x8, #0x38]
    6bc4: b85fc110     	ldur	w16, [x8, #-0x4]
    6bc8: 72810611     	movk	w17, #0x830
    6bcc: 72b08f51     	movk	w17, #0x847a, lsl #16
    6bd0: 6b11021f     	cmp	w16, w17
    6bd4: 54000040     	b.eq	0x6bdc <richtap_file_unlocked_ioctl+0x4dc>
    6bd8: d4304500     	brk	#0x8228
    6bdc: d63f0100     	blr	x8
    6be0: 910bc260     	add	x0, x19, #0x2f0
    6be4: 94000000     	bl	0x6be4 <richtap_file_unlocked_ioctl+0x4e4>
		0000000000006be4:  R_AARCH64_CALL26	mutex_unlock
    6be8: f942e668     	ldr	x8, [x19, #0x5c8]
    6bec: aa1303e0     	mov	x0, x19
    6bf0: 2a1f03e1     	mov	w1, wzr
    6bf4: f9408908     	ldr	x8, [x8, #0x110]
    6bf8: b85fc110     	ldur	w16, [x8, #-0x4]
    6bfc: 729bedd1     	movk	w17, #0xdf6e
    6c00: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    6c04: 6b11021f     	cmp	w16, w17
    6c08: 54000040     	b.eq	0x6c10 <richtap_file_unlocked_ioctl+0x510>
    6c0c: d4304500     	brk	#0x8228
    6c10: d63f0100     	blr	x8
    6c14: b906be7f     	str	wzr, [x19, #0x6bc]
    6c18: aa1303e0     	mov	x0, x19
    6c1c: 52800041     	mov	w1, #0x2                // =2
    6c20: f942e668     	ldr	x8, [x19, #0x5c8]
    6c24: f9408d08     	ldr	x8, [x8, #0x118]
    6c28: b85fc110     	ldur	w16, [x8, #-0x4]
    6c2c: 728dd2b1     	movk	w17, #0x6e95
    6c30: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    6c34: 6b11021f     	cmp	w16, w17
    6c38: 54000040     	b.eq	0x6c40 <richtap_file_unlocked_ioctl+0x540>
    6c3c: d4304500     	brk	#0x8228
    6c40: d63f0100     	blr	x8
    6c44: f942e668     	ldr	x8, [x19, #0x5c8]
    6c48: b9403261     	ldr	w1, [x19, #0x30]
    6c4c: aa1303e0     	mov	x0, x19
    6c50: f9405108     	ldr	x8, [x8, #0xa0]
    6c54: b85fc110     	ldur	w16, [x8, #-0x4]
    6c58: 729bedd1     	movk	w17, #0xdf6e
    6c5c: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    6c60: 6b11021f     	cmp	w16, w17
    6c64: 54000040     	b.eq	0x6c6c <richtap_file_unlocked_ioctl+0x56c>
    6c68: d4304500     	brk	#0x8228
    6c6c: d63f0100     	blr	x8
    6c70: f9422661     	ldr	x1, [x19, #0x448]
    6c74: 91192262     	add	x2, x19, #0x648
    6c78: 17fffec4     	b	0x6788 <richtap_file_unlocked_ioctl+0x88>
    6c7c: f9419260     	ldr	x0, [x19, #0x320]
    6c80: 90000001     	adrp	x1, 0x6000 <aw8693x_get_wav_loop+0xc4>
		0000000000006c80:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_078a
    6c84: 91000021     	add	x1, x1, #0x0
		0000000000006c84:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_078a
    6c88: 90000002     	adrp	x2, 0x6000 <aw8693x_get_wav_loop+0xc4>
		0000000000006c88:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_20cb
    6c8c: 91000042     	add	x2, x2, #0x0
		0000000000006c8c:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_20cb
    6c90: 94000000     	bl	0x6c90 <richtap_file_unlocked_ioctl+0x590>
		0000000000006c90:  R_AARCH64_CALL26	_dev_err
    6c94: 17ffff65     	b	0x6a28 <richtap_file_unlocked_ioctl+0x328>
    6c98: f9419260     	ldr	x0, [x19, #0x320]
    6c9c: 90000001     	adrp	x1, 0x6000 <aw8693x_get_wav_loop+0xc4>
		0000000000006c9c:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_2a97
    6ca0: 91000021     	add	x1, x1, #0x0
		0000000000006ca0:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_2a97
    6ca4: 94000000     	bl	0x6ca4 <richtap_file_unlocked_ioctl+0x5a4>
		0000000000006ca4:  R_AARCH64_CALL26	_dev_err
    6ca8: 928002a0     	mov	x0, #-0x16              // =-22
    6cac: 17ffff93     	b	0x6af8 <richtap_file_unlocked_ioctl+0x3f8>
    6cb0: 94000000     	bl	0x6cb0 <richtap_file_unlocked_ioctl+0x5b0>
		0000000000006cb0:  R_AARCH64_CALL26	__stack_chk_fail
