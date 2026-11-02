
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000057e8 <haptic_init>:
    57e8: d503233f     	paciasp
    57ec: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    57f0: f9000bf3     	str	x19, [sp, #0x10]
    57f4: 910003fd     	mov	x29, sp
    57f8: aa0003f3     	mov	x19, x0
    57fc: 90000000     	adrp	x0, 0x5000 <aw_i2c_probe+0xa60>
		00000000000057fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb54
    5800: 91000000     	add	x0, x0, #0x0
		0000000000005800:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb54
    5804: 90000001     	adrp	x1, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005804:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    5808: 91000021     	add	x1, x1, #0x0
		0000000000005808:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    580c: 90000003     	adrp	x3, 0x5000 <aw_i2c_probe+0xa60>
		000000000000580c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2873
    5810: 91000063     	add	x3, x3, #0x0
		0000000000005810:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2873
    5814: 5281fd62     	mov	w2, #0xfeb              // =4075
    5818: 94000000     	bl	0x5818 <haptic_init+0x30>
		0000000000005818:  R_AARCH64_CALL26	_printk
    581c: d2800028     	mov	x8, #0x1                // =1
    5820: 91164269     	add	x9, x19, #0x590
    5824: 91148260     	add	x0, x19, #0x520
    5828: f2ca68c8     	movk	x8, #0x5346, lsl #32
    582c: 52800021     	mov	w1, #0x1                // =1
    5830: 52800022     	mov	w2, #0x1                // =1
    5834: f9026e68     	str	x8, [x19, #0x4d8]
    5838: f902ca69     	str	x9, [x19, #0x590]
    583c: f902ce69     	str	x9, [x19, #0x598]
    5840: 94000000     	bl	0x5840 <haptic_init+0x58>
		0000000000005840:  R_AARCH64_CALL26	hrtimer_init
    5844: 90000008     	adrp	x8, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005844:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xaea4
    5848: 91000108     	add	x8, x8, #0x0
		0000000000005848:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xaea4
    584c: 9115a269     	add	x9, x19, #0x568
    5850: f902a668     	str	x8, [x19, #0x548]
    5854: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    5858: 90000001     	adrp	x1, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005858:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x334
    585c: 91000021     	add	x1, x1, #0x0
		000000000000585c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x334
    5860: f902b268     	str	x8, [x19, #0x560]
    5864: 90000008     	adrp	x8, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005864:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xaf30
    5868: 91000108     	add	x8, x8, #0x0
		0000000000005868:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xaf30
    586c: 90000002     	adrp	x2, 0x5000 <aw_i2c_probe+0xa60>
		000000000000586c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x45
    5870: 91000042     	add	x2, x2, #0x0
		0000000000005870:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x45
    5874: 9113c260     	add	x0, x19, #0x4f0
    5878: f902b669     	str	x9, [x19, #0x568]
    587c: f902ba69     	str	x9, [x19, #0x570]
    5880: f902be68     	str	x8, [x19, #0x578]
    5884: 94000000     	bl	0x5884 <haptic_init+0x9c>
		0000000000005884:  R_AARCH64_CALL26	__mutex_init
    5888: 91160268     	add	x8, x19, #0x580
    588c: 910bc260     	add	x0, x19, #0x2f0
    5890: f902c268     	str	x8, [x19, #0x580]
    5894: f902c668     	str	x8, [x19, #0x588]
    5898: 94000000     	bl	0x5898 <haptic_init+0xb0>
		0000000000005898:  R_AARCH64_CALL26	mutex_lock
    589c: 52801fe8     	mov	w8, #0xff               // =255
    58a0: 39518269     	ldrb	w9, [x19, #0x460]
    58a4: f942e66a     	ldr	x10, [x19, #0x5c8]
    58a8: f807c268     	stur	x8, [x19, #0x7c]
    58ac: 528000a8     	mov	w8, #0x5                // =5
    58b0: aa1303e0     	mov	x0, x19
    58b4: 39004e7f     	strb	wzr, [x19, #0x13]
    58b8: 2a1f03e1     	mov	w1, wzr
    58bc: 3900767f     	strb	wzr, [x19, #0x1d]
    58c0: 39006e69     	strb	w9, [x19, #0x1b]
    58c4: b906e268     	str	w8, [x19, #0x6e0]
    58c8: f9404d48     	ldr	x8, [x10, #0x98]
    58cc: b85fc110     	ldur	w16, [x8, #-0x4]
    58d0: 729bedd1     	movk	w17, #0xdf6e
    58d4: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    58d8: 6b11021f     	cmp	w16, w17
    58dc: 54000040     	b.eq	0x58e4 <haptic_init+0xfc>
    58e0: d4304500     	brk	#0x8228
    58e4: d63f0100     	blr	x8
    58e8: f942e668     	ldr	x8, [x19, #0x5c8]
    58ec: aa1303e0     	mov	x0, x19
    58f0: 52800021     	mov	w1, #0x1                // =1
    58f4: f9404108     	ldr	x8, [x8, #0x80]
    58f8: b85fc110     	ldur	w16, [x8, #-0x4]
    58fc: 729bedd1     	movk	w17, #0xdf6e
    5900: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    5904: 6b11021f     	cmp	w16, w17
    5908: 54000040     	b.eq	0x5910 <haptic_init+0x128>
    590c: d4304500     	brk	#0x8228
    5910: d63f0100     	blr	x8
    5914: f942e668     	ldr	x8, [x19, #0x5c8]
    5918: aa1303e0     	mov	x0, x19
    591c: f9408108     	ldr	x8, [x8, #0x100]
    5920: b85fc110     	ldur	w16, [x8, #-0x4]
    5924: 72810611     	movk	w17, #0x830
    5928: 72b08f51     	movk	w17, #0x847a, lsl #16
    592c: 6b11021f     	cmp	w16, w17
    5930: 54000040     	b.eq	0x5938 <haptic_init+0x150>
    5934: d4304500     	brk	#0x8228
    5938: d63f0100     	blr	x8
    593c: f942e668     	ldr	x8, [x19, #0x5c8]
    5940: aa1303e0     	mov	x0, x19
    5944: f9403908     	ldr	x8, [x8, #0x70]
    5948: b85fc110     	ldur	w16, [x8, #-0x4]
    594c: 72810611     	movk	w17, #0x830
    5950: 72b08f51     	movk	w17, #0x847a, lsl #16
    5954: 6b11021f     	cmp	w16, w17
    5958: 54000040     	b.eq	0x5960 <haptic_init+0x178>
    595c: d4304500     	brk	#0x8228
    5960: d63f0100     	blr	x8
    5964: f942e668     	ldr	x8, [x19, #0x5c8]
    5968: b9403261     	ldr	w1, [x19, #0x30]
    596c: aa1303e0     	mov	x0, x19
    5970: f9405108     	ldr	x8, [x8, #0xa0]
    5974: b85fc110     	ldur	w16, [x8, #-0x4]
    5978: 729bedd1     	movk	w17, #0xdf6e
    597c: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    5980: 6b11021f     	cmp	w16, w17
    5984: 54000040     	b.eq	0x598c <haptic_init+0x1a4>
    5988: d4304500     	brk	#0x8228
    598c: d63f0100     	blr	x8
    5990: f942e668     	ldr	x8, [x19, #0x5c8]
    5994: aa1303e0     	mov	x0, x19
    5998: 52800021     	mov	w1, #0x1                // =1
    599c: 2a1f03e2     	mov	w2, wzr
    59a0: f9406d08     	ldr	x8, [x8, #0xd8]
    59a4: b85fc110     	ldur	w16, [x8, #-0x4]
    59a8: 728fccb1     	movk	w17, #0x7e65
    59ac: 72af70f1     	movk	w17, #0x7b87, lsl #16
    59b0: 6b11021f     	cmp	w16, w17
    59b4: 54000040     	b.eq	0x59bc <haptic_init+0x1d4>
    59b8: d4304500     	brk	#0x8228
    59bc: d63f0100     	blr	x8
    59c0: f942e668     	ldr	x8, [x19, #0x5c8]
    59c4: aa1303e0     	mov	x0, x19
    59c8: 2a1f03e1     	mov	w1, wzr
    59cc: f9405908     	ldr	x8, [x8, #0xb0]
    59d0: b85fc110     	ldur	w16, [x8, #-0x4]
    59d4: 729bedd1     	movk	w17, #0xdf6e
    59d8: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    59dc: 6b11021f     	cmp	w16, w17
    59e0: 54000040     	b.eq	0x59e8 <haptic_init+0x200>
    59e4: d4304500     	brk	#0x8228
    59e8: d63f0100     	blr	x8
    59ec: f942e668     	ldr	x8, [x19, #0x5c8]
    59f0: aa1303e0     	mov	x0, x19
    59f4: f9402908     	ldr	x8, [x8, #0x50]
    59f8: b85fc110     	ldur	w16, [x8, #-0x4]
    59fc: 72810611     	movk	w17, #0x830
    5a00: 72b08f51     	movk	w17, #0x847a, lsl #16
    5a04: 6b11021f     	cmp	w16, w17
    5a08: 54000040     	b.eq	0x5a10 <haptic_init+0x228>
    5a0c: d4304500     	brk	#0x8228
    5a10: d63f0100     	blr	x8
    5a14: f942e668     	ldr	x8, [x19, #0x5c8]
    5a18: aa1303e0     	mov	x0, x19
    5a1c: 52800021     	mov	w1, #0x1                // =1
    5a20: f9405d08     	ldr	x8, [x8, #0xb8]
    5a24: b85fc110     	ldur	w16, [x8, #-0x4]
    5a28: 729bedd1     	movk	w17, #0xdf6e
    5a2c: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    5a30: 6b11021f     	cmp	w16, w17
    5a34: 54000040     	b.eq	0x5a3c <haptic_init+0x254>
    5a38: d4304500     	brk	#0x8228
    5a3c: d63f0100     	blr	x8
    5a40: 910bc260     	add	x0, x19, #0x2f0
    5a44: 3900727f     	strb	wzr, [x19, #0x1c]
    5a48: 94000000     	bl	0x5a48 <haptic_init+0x260>
		0000000000005a48:  R_AARCH64_CALL26	mutex_unlock
    5a4c: f9400bf3     	ldr	x19, [sp, #0x10]
    5a50: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    5a54: d50323bf     	autiasp
    5a58: d65f03c0     	ret
