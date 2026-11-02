
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e864 <syna_cdev_ioctls>:
    e864: d503233f     	paciasp
    e868: d10643ff     	sub	sp, sp, #0x190
    e86c: a9137bfd     	stp	x29, x30, [sp, #0x130]
    e870: a9146ffc     	stp	x28, x27, [sp, #0x140]
    e874: a91567fa     	stp	x26, x25, [sp, #0x150]
    e878: a9165ff8     	stp	x24, x23, [sp, #0x160]
    e87c: a91757f6     	stp	x22, x21, [sp, #0x170]
    e880: a9184ff4     	stp	x20, x19, [sp, #0x180]
    e884: 9104c3fd     	add	x29, sp, #0x130
    e888: d5384108     	mrs	x8, SP_EL0
    e88c: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000e88c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7c0
    e890: 91000000     	add	x0, x0, #0x0
		000000000000e890:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x7c0
    e894: f9438908     	ldr	x8, [x8, #0x710]
    e898: aa0203f3     	mov	x19, x2
    e89c: 2a0103f5     	mov	w21, w1
    e8a0: f81f03a8     	stur	x8, [x29, #-0x10]
    e8a4: f8450408     	ldr	x8, [x0], #0x50
    e8a8: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    e8ac: f9405514     	ldr	x20, [x8, #0xa8]
    e8b0: 94000000     	bl	0xe8b0 <syna_cdev_ioctls+0x4c>
		000000000000e8b0:  R_AARCH64_CALL26	mutex_lock
    e8b4: 12001eb6     	and	w22, w21, #0xff
    e8b8: 71003edf     	cmp	w22, #0xf
    e8bc: 540001e8     	b.hi	0xe8f8 <syna_cdev_ioctls+0x94>
    e8c0: 710006df     	cmp	w22, #0x1
    e8c4: 5400022c     	b.gt	0xe908 <syna_cdev_ioctls+0xa4>
    e8c8: 34000fd6     	cbz	w22, 0xeac0 <syna_cdev_ioctls+0x25c>
    e8cc: 710006df     	cmp	w22, #0x1
    e8d0: 54008c81     	b.ne	0xfa60 <syna_cdev_ioctls+0x11fc>
    e8d4: f9413a89     	ldr	x9, [x20, #0x270]
    e8d8: f9402128     	ldr	x8, [x9, #0x40]
    e8dc: b4001208     	cbz	x8, 0xeb1c <syna_cdev_ioctls+0x2b8>
    e8e0: f100067f     	cmp	x19, #0x1
    e8e4: 54001200     	b.eq	0xeb24 <syna_cdev_ioctls+0x2c0>
    e8e8: b500bb53     	cbnz	x19, 0x10050 <syna_cdev_ioctls+0x17ec>
    e8ec: 91002120     	add	x0, x9, #0x8
    e8f0: 2a1f03e1     	mov	w1, wzr
    e8f4: 1400008e     	b	0xeb2c <syna_cdev_ioctls+0x2c8>
    e8f8: 710042df     	cmp	w22, #0x10
    e8fc: 54000161     	b.ne	0xe928 <syna_cdev_ioctls+0xc4>
    e900: 52800036     	mov	w22, #0x1               // =1
    e904: 140005d4     	b	0x10054 <syna_cdev_ioctls+0x17f0>
    e908: 71000adf     	cmp	w22, #0x2
    e90c: 5400ba20     	b.eq	0x10050 <syna_cdev_ioctls+0x17ec>
    e910: 71000edf     	cmp	w22, #0x3
    e914: 54008a61     	b.ne	0xfa60 <syna_cdev_ioctls+0x11fc>
    e918: 52800028     	mov	w8, #0x1                // =1
    e91c: 2a1f03f6     	mov	w22, wzr
    e920: 39161288     	strb	w8, [x20, #0x584]
    e924: 140005cc     	b	0x10054 <syna_cdev_ioctls+0x17f0>
    e928: d538411a     	mrs	x26, SP_EL0
    e92c: 39411b48     	ldrb	w8, [x26, #0x46]
    e930: d378de7b     	lsl	x27, x19, #8
    e934: 37280088     	tbnz	w8, #0x5, 0xe944 <syna_cdev_ioctls+0xe0>
    e938: f9400349     	ldr	x9, [x26]
    e93c: aa1303e8     	mov	x8, x19
    e940: 36d00049     	tbz	w9, #0x1a, 0xe948 <syna_cdev_ioctls+0xe4>
    e944: 8a9b2268     	and	x8, x19, x27, asr #8
    e948: b27c8be9     	mov	x9, #0x7ffffffff0       // =549755813872
    e94c: eb09011f     	cmp	x8, x9
    e950: 54008088     	b.hi	0xf960 <syna_cdev_ioctls+0x10fc>
    e954: d503201f     	nop
    e958: d53b4228     	mrs	x8, DAIF
    e95c: d50343df     	msr	DAIFSet, #0x3
    e960: f9400749     	ldr	x9, [x26, #0x8]
    e964: d538202a     	mrs	x10, TTBR1_EL1
    e968: aa0903eb     	mov	x11, x9
    e96c: b340bd4b     	bfxil	x11, x10, #0, #48
    e970: d518202b     	msr	TTBR1_EL1, x11
    e974: d5182009     	msr	TTBR0_EL1, x9
    e978: d5033fdf     	isb
    e97c: d51b4228     	msr	DAIF, x8
    e980: 9248fa61     	and	x1, x19, #0xff7fffffffffffff
    e984: 910023e0     	add	x0, sp, #0x8
    e988: 52800202     	mov	w2, #0x10               // =16
    e98c: 94000000     	bl	0xe98c <syna_cdev_ioctls+0x128>
		000000000000e98c:  R_AARCH64_CALL26	__arch_copy_from_user
    e990: d503201f     	nop
    e994: d53b4228     	mrs	x8, DAIF
    e998: d50343df     	msr	DAIFSet, #0x3
    e99c: d5382029     	mrs	x9, TTBR1_EL1
    e9a0: 9240bd29     	and	x9, x9, #0xffffffffffff
    e9a4: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    e9a8: d518200a     	msr	TTBR0_EL1, x10
    e9ac: d5182029     	msr	TTBR1_EL1, x9
    e9b0: d5033fdf     	isb
    e9b4: d51b4228     	msr	DAIF, x8
    e9b8: b5007d60     	cbnz	x0, 0xf964 <syna_cdev_ioctls+0x1100>
    e9bc: b9400ff7     	ldr	w23, [sp, #0xc]
    e9c0: 714006ff     	cmp	w23, #0x1, lsl #12      // =0x1000
    e9c4: 54007ee8     	b.hi	0xf9a0 <syna_cdev_ioctls+0x113c>
    e9c8: 12001ea8     	and	w8, w21, #0xff
    e9cc: 51004508     	sub	w8, w8, #0x11
    e9d0: 7100451f     	cmp	w8, #0x11
    e9d4: 5400b9c8     	b.hi	0x1010c <syna_cdev_ioctls+0x18a8>
    e9d8: 90000009     	adrp	x9, 0xe000 <syna_mmap+0x9c>
		000000000000e9d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x10c8
    e9dc: 91000129     	add	x9, x9, #0x0
		000000000000e9dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x10c8
    e9e0: f9400bf5     	ldr	x21, [sp, #0x10]
    e9e4: 1000000a     	adr	x10, 0xe9e4 <syna_cdev_ioctls+0x180>
    e9e8: b8a8792b     	ldrsw	x11, [x9, x8, lsl #2]
    e9ec: 8b0b014a     	add	x10, x10, x11
    e9f0: d61f0140     	br	x10
    e9f4: 39560a88     	ldrb	w8, [x20, #0x582]
    e9f8: b9400be3     	ldr	w3, [sp, #0x8]
    e9fc: b90023ff     	str	wzr, [sp, #0x20]
    ea00: 3600ba48     	tbz	w8, #0x0, 0x10148 <syna_cdev_ioctls+0x18e4>
    ea04: b9457e88     	ldr	w8, [x20, #0x57c]
    ea08: 71000d1f     	cmp	w8, #0x3
    ea0c: 5400c040     	b.eq	0x10214 <syna_cdev_ioctls+0x19b0>
    ea10: 710012ff     	cmp	w23, #0x4
    ea14: 5400c8a3     	b.lo	0x10328 <syna_cdev_ioctls+0x1ac4>
    ea18: 71000c7f     	cmp	w3, #0x3
    ea1c: 5400c869     	b.ls	0x10328 <syna_cdev_ioctls+0x1ac4>
    ea20: f9413a98     	ldr	x24, [x20, #0x270]
    ea24: f9402308     	ldr	x8, [x24, #0x40]
    ea28: b400cf68     	cbz	x8, 0x10414 <syna_cdev_ioctls+0x1bb0>
    ea2c: 710016ff     	cmp	w23, #0x5
    ea30: 5400fb22     	b.hs	0x10994 <syna_cdev_ioctls+0x2130>
    ea34: 910083e0     	add	x0, sp, #0x20
    ea38: aa1703e1     	mov	x1, x23
    ea3c: 2a1f03e2     	mov	w2, wzr
    ea40: 94000000     	bl	0xea40 <syna_cdev_ioctls+0x1dc>
		000000000000ea40:  R_AARCH64_CALL26	__check_object_size
    ea44: 39411b48     	ldrb	w8, [x26, #0x46]
    ea48: 37280088     	tbnz	w8, #0x5, 0xea58 <syna_cdev_ioctls+0x1f4>
    ea4c: f9400349     	ldr	x9, [x26]
    ea50: aa1503e8     	mov	x8, x21
    ea54: 36d00069     	tbz	w9, #0x1a, 0xea60 <syna_cdev_ioctls+0x1fc>
    ea58: d378dea8     	lsl	x8, x21, #8
    ea5c: 8a8822a8     	and	x8, x21, x8, asr #8
    ea60: d2c01009     	mov	x9, #0x8000000000       // =549755813888
    ea64: aa1703f6     	mov	x22, x23
    ea68: cb170129     	sub	x9, x9, x23
    ea6c: eb08013f     	cmp	x9, x8
    ea70: 54008622     	b.hs	0xfb34 <syna_cdev_ioctls+0x12d0>
    ea74: cb1602e8     	sub	x8, x23, x22
    ea78: 52800089     	mov	w9, #0x4                // =4
    ea7c: eb080129     	subs	x9, x9, x8
    ea80: 9a8933e1     	csel	x1, xzr, x9, lo
    ea84: eb16003f     	cmp	x1, x22
    ea88: 5400fa63     	b.lo	0x109d4 <syna_cdev_ioctls+0x2170>
    ea8c: 910083e9     	add	x9, sp, #0x20
    ea90: 2a1f03e1     	mov	w1, wzr
    ea94: aa1603e2     	mov	x2, x22
    ea98: 8b080120     	add	x0, x9, x8
    ea9c: 94000000     	bl	0xea9c <syna_cdev_ioctls+0x238>
		000000000000ea9c:  R_AARCH64_CALL26	memset
    eaa0: 2a1603f7     	mov	w23, w22
    eaa4: 340087f6     	cbz	w22, 0xfba0 <syna_cdev_ioctls+0x133c>
    eaa8: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000eaa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x336c
    eaac: 91000000     	add	x0, x0, #0x0
		000000000000eaac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x336c
    eab0: 90000001     	adrp	x1, 0xe000 <syna_mmap+0x9c>
		000000000000eab0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8195
    eab4: 91000021     	add	x1, x1, #0x0
		000000000000eab4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8195
    eab8: 2a1703e2     	mov	w2, w23
    eabc: 1400066c     	b	0x1046c <syna_cdev_ioctls+0x1c08>
    eac0: f9400280     	ldr	x0, [x20]
    eac4: b9420c01     	ldr	w1, [x0, #0x20c]
    eac8: 94000000     	bl	0xeac8 <syna_cdev_ioctls+0x264>
		000000000000eac8:  R_AARCH64_CALL26	syna_tcm_reset
    eacc: 2a0003f6     	mov	w22, w0
    ead0: 37f87d80     	tbnz	w0, #0x1f, 0xfa80 <syna_cdev_ioctls+0x121c>
    ead4: f9400288     	ldr	x8, [x20]
    ead8: 39402508     	ldrb	w8, [x8, #0x9]
    eadc: 7100051f     	cmp	w8, #0x1
    eae0: 5400aba1     	b.ne	0x10054 <syna_cdev_ioctls+0x17f0>
    eae4: f9435e88     	ldr	x8, [x20, #0x6b8]
    eae8: aa1403e0     	mov	x0, x20
    eaec: b85fc110     	ldur	w16, [x8, #-0x4]
    eaf0: 7288e391     	movk	w17, #0x471c
    eaf4: 72b5c411     	movk	w17, #0xae20, lsl #16
    eaf8: 6b11021f     	cmp	w16, w17
    eafc: 54000040     	b.eq	0xeb04 <syna_cdev_ioctls+0x2a0>
    eb00: d4304500     	brk	#0x8228
    eb04: d63f0100     	blr	x8
    eb08: 2a0003f6     	mov	w22, w0
    eb0c: 36f8aa40     	tbz	w0, #0x1f, 0x10054 <syna_cdev_ioctls+0x17f0>
    eb10: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000eb10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdd2
    eb14: 91000000     	add	x0, x0, #0x0
		000000000000eb14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdd2
    eb18: 140003dc     	b	0xfa88 <syna_cdev_ioctls+0x1224>
    eb1c: 128002b6     	mov	w22, #-0x16             // =-22
    eb20: 1400054d     	b	0x10054 <syna_cdev_ioctls+0x17f0>
    eb24: 91002120     	add	x0, x9, #0x8
    eb28: 52800021     	mov	w1, #0x1                // =1
    eb2c: b85fc110     	ldur	w16, [x8, #-0x4]
    eb30: 728c3631     	movk	w17, #0x61b1
    eb34: 72a685d1     	movk	w17, #0x342e, lsl #16
    eb38: 6b11021f     	cmp	w16, w17
    eb3c: 54000040     	b.eq	0xeb44 <syna_cdev_ioctls+0x2e0>
    eb40: d4304500     	brk	#0x8228
    eb44: d63f0100     	blr	x8
    eb48: 2a0003f6     	mov	w22, w0
    eb4c: 14000542     	b	0x10054 <syna_cdev_ioctls+0x17f0>
    eb50: 39560a88     	ldrb	w8, [x20, #0x582]
    eb54: b9400bf6     	ldr	w22, [sp, #0x8]
    eb58: b9001fff     	str	wzr, [sp, #0x1c]
    eb5c: 3600ae28     	tbz	w8, #0x0, 0x10120 <syna_cdev_ioctls+0x18bc>
    eb60: b9457e88     	ldr	w8, [x20, #0x57c]
    eb64: 71000d1f     	cmp	w8, #0x3
    eb68: 5400b420     	b.eq	0x101ec <syna_cdev_ioctls+0x1988>
    eb6c: 710012ff     	cmp	w23, #0x4
    eb70: 5400bd03     	b.lo	0x10310 <syna_cdev_ioctls+0x1aac>
    eb74: 71000edf     	cmp	w22, #0x3
    eb78: 5400bcc9     	b.ls	0x10310 <syna_cdev_ioctls+0x1aac>
    eb7c: 39411b48     	ldrb	w8, [x26, #0x46]
    eb80: 37280088     	tbnz	w8, #0x5, 0xeb90 <syna_cdev_ioctls+0x32c>
    eb84: f9400349     	ldr	x9, [x26]
    eb88: aa1503e8     	mov	x8, x21
    eb8c: 36d00069     	tbz	w9, #0x1a, 0xeb98 <syna_cdev_ioctls+0x334>
    eb90: d378dea8     	lsl	x8, x21, #8
    eb94: 8a8822a8     	and	x8, x21, x8, asr #8
    eb98: b27e93e9     	mov	x9, #0x7ffffffffc       // =549755813884
    eb9c: eb09011f     	cmp	x8, x9
    eba0: 5400c1c8     	b.hi	0x103d8 <syna_cdev_ioctls+0x1b74>
    eba4: d503201f     	nop
    eba8: d53b4228     	mrs	x8, DAIF
    ebac: d50343df     	msr	DAIFSet, #0x3
    ebb0: f9400749     	ldr	x9, [x26, #0x8]
    ebb4: d538202a     	mrs	x10, TTBR1_EL1
    ebb8: aa0903eb     	mov	x11, x9
    ebbc: b340bd4b     	bfxil	x11, x10, #0, #48
    ebc0: d518202b     	msr	TTBR1_EL1, x11
    ebc4: d5182009     	msr	TTBR0_EL1, x9
    ebc8: d5033fdf     	isb
    ebcc: d51b4228     	msr	DAIF, x8
    ebd0: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
    ebd4: 910073e0     	add	x0, sp, #0x1c
    ebd8: 52800082     	mov	w2, #0x4                // =4
    ebdc: 94000000     	bl	0xebdc <syna_cdev_ioctls+0x378>
		000000000000ebdc:  R_AARCH64_CALL26	__arch_copy_from_user
    ebe0: aa0003e2     	mov	x2, x0
    ebe4: d503201f     	nop
    ebe8: d53b4228     	mrs	x8, DAIF
    ebec: d50343df     	msr	DAIFSet, #0x3
    ebf0: d5382029     	mrs	x9, TTBR1_EL1
    ebf4: 9240bd29     	and	x9, x9, #0xffffffffffff
    ebf8: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    ebfc: d518200a     	msr	TTBR0_EL1, x10
    ec00: d5182029     	msr	TTBR1_EL1, x9
    ec04: d5033fdf     	isb
    ec08: d51b4228     	msr	DAIF, x8
    ec0c: b500be82     	cbnz	x2, 0x103dc <syna_cdev_ioctls+0x1b78>
    ec10: b9401ff7     	ldr	w23, [sp, #0x1c]
    ec14: f9427e88     	ldr	x8, [x20, #0x4f8]
    ec18: 9113e289     	add	x9, x20, #0x4f8
    ec1c: eb09011f     	cmp	x8, x9
    ec20: 540005e1     	b.ne	0xecdc <syna_cdev_ioctls+0x478>
    ec24: 2a1703e0     	mov	w0, w23
    ec28: 94000000     	bl	0xec28 <syna_cdev_ioctls+0x3c4>
		000000000000ec28:  R_AARCH64_CALL26	__msecs_to_jiffies
    ec2c: b944f288     	ldr	w8, [x20, #0x4f0]
    ec30: f100001f     	cmp	x0, #0x0
    ec34: 7a400904     	ccmp	w8, #0x0, #0x4, eq
    ec38: 9a9f0400     	csinc	x0, x0, xzr, eq
    ec3c: 350004e8     	cbnz	w8, 0xecd8 <syna_cdev_ioctls+0x474>
    ec40: b40004c0     	cbz	x0, 0xecd8 <syna_cdev_ioctls+0x474>
    ec44: 2a1703e0     	mov	w0, w23
    ec48: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    ec4c: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    ec50: f90013ff     	str	xzr, [sp, #0x20]
    ec54: 94000000     	bl	0xec54 <syna_cdev_ioctls+0x3f0>
		000000000000ec54:  R_AARCH64_CALL26	__msecs_to_jiffies
    ec58: aa0003f7     	mov	x23, x0
    ec5c: 910083e0     	add	x0, sp, #0x20
    ec60: 2a1f03e1     	mov	w1, wzr
    ec64: 94000000     	bl	0xec64 <syna_cdev_ioctls+0x400>
		000000000000ec64:  R_AARCH64_CALL26	init_wait_entry
    ec68: 91142280     	add	x0, x20, #0x508
    ec6c: 910083e1     	add	x1, sp, #0x20
    ec70: 52800022     	mov	w2, #0x1                // =1
    ec74: 94000000     	bl	0xec74 <syna_cdev_ioctls+0x410>
		000000000000ec74:  R_AARCH64_CALL26	prepare_to_wait_event
    ec78: b944f288     	ldr	w8, [x20, #0x4f0]
    ec7c: f10002ff     	cmp	x23, #0x0
    ec80: 7a400904     	ccmp	w8, #0x0, #0x4, eq
    ec84: 9a9f06f7     	csinc	x23, x23, xzr, eq
    ec88: 35000208     	cbnz	w8, 0xecc8 <syna_cdev_ioctls+0x464>
    ec8c: b40001f7     	cbz	x23, 0xecc8 <syna_cdev_ioctls+0x464>
    ec90: b5000240     	cbnz	x0, 0xecd8 <syna_cdev_ioctls+0x474>
    ec94: aa1703e0     	mov	x0, x23
    ec98: 94000000     	bl	0xec98 <syna_cdev_ioctls+0x434>
		000000000000ec98:  R_AARCH64_CALL26	schedule_timeout
    ec9c: aa0003f7     	mov	x23, x0
    eca0: 91142280     	add	x0, x20, #0x508
    eca4: 910083e1     	add	x1, sp, #0x20
    eca8: 52800022     	mov	w2, #0x1                // =1
    ecac: 94000000     	bl	0xecac <syna_cdev_ioctls+0x448>
		000000000000ecac:  R_AARCH64_CALL26	prepare_to_wait_event
    ecb0: b944f288     	ldr	w8, [x20, #0x4f0]
    ecb4: f10002ff     	cmp	x23, #0x0
    ecb8: 7a400904     	ccmp	w8, #0x0, #0x4, eq
    ecbc: 9a9f06f7     	csinc	x23, x23, xzr, eq
    ecc0: 35000048     	cbnz	w8, 0xecc8 <syna_cdev_ioctls+0x464>
    ecc4: b5fffe77     	cbnz	x23, 0xec90 <syna_cdev_ioctls+0x42c>
    ecc8: 91142280     	add	x0, x20, #0x508
    eccc: 910083e1     	add	x1, sp, #0x20
    ecd0: 94000000     	bl	0xecd0 <syna_cdev_ioctls+0x46c>
		000000000000ecd0:  R_AARCH64_CALL26	finish_wait
    ecd4: aa1703e0     	mov	x0, x23
    ecd8: 34009f20     	cbz	w0, 0x100bc <syna_cdev_ioctls+0x1858>
    ecdc: 710006df     	cmp	w22, #0x1
    ece0: 540096eb     	b.lt	0xffbc <syna_cdev_ioctls+0x1758>
    ece4: b944f288     	ldr	w8, [x20, #0x4f0]
    ece8: 39411b49     	ldrb	w9, [x26, #0x46]
    ecec: b9001fe8     	str	w8, [sp, #0x1c]
    ecf0: 37280089     	tbnz	w9, #0x5, 0xed00 <syna_cdev_ioctls+0x49c>
    ecf4: f9400349     	ldr	x9, [x26]
    ecf8: aa1503e8     	mov	x8, x21
    ecfc: 36d00069     	tbz	w9, #0x1a, 0xed08 <syna_cdev_ioctls+0x4a4>
    ed00: d378dea8     	lsl	x8, x21, #8
    ed04: 8a8822a8     	and	x8, x21, x8, asr #8
    ed08: b27e93e9     	mov	x9, #0x7ffffffffc       // =549755813884
    ed0c: eb09011f     	cmp	x8, x9
    ed10: 54000368     	b.hi	0xed7c <syna_cdev_ioctls+0x518>
    ed14: d503201f     	nop
    ed18: d53b4228     	mrs	x8, DAIF
    ed1c: d50343df     	msr	DAIFSet, #0x3
    ed20: f9400749     	ldr	x9, [x26, #0x8]
    ed24: d538202a     	mrs	x10, TTBR1_EL1
    ed28: aa0903eb     	mov	x11, x9
    ed2c: b340bd4b     	bfxil	x11, x10, #0, #48
    ed30: d518202b     	msr	TTBR1_EL1, x11
    ed34: d5182009     	msr	TTBR0_EL1, x9
    ed38: d5033fdf     	isb
    ed3c: d51b4228     	msr	DAIF, x8
    ed40: 9248faa0     	and	x0, x21, #0xff7fffffffffffff
    ed44: 910073e1     	add	x1, sp, #0x1c
    ed48: 52800082     	mov	w2, #0x4                // =4
    ed4c: 94000000     	bl	0xed4c <syna_cdev_ioctls+0x4e8>
		000000000000ed4c:  R_AARCH64_CALL26	__arch_copy_to_user
    ed50: d503201f     	nop
    ed54: d53b4228     	mrs	x8, DAIF
    ed58: d50343df     	msr	DAIFSet, #0x3
    ed5c: d5382029     	mrs	x9, TTBR1_EL1
    ed60: 9240bd29     	and	x9, x9, #0xffffffffffff
    ed64: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    ed68: d518200a     	msr	TTBR0_EL1, x10
    ed6c: d5182029     	msr	TTBR1_EL1, x9
    ed70: d5033fdf     	isb
    ed74: d51b4228     	msr	DAIF, x8
    ed78: 34009220     	cbz	w0, 0xffbc <syna_cdev_ioctls+0x1758>
    ed7c: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000ed7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ca9
    ed80: 91000000     	add	x0, x0, #0x0
		000000000000ed80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ca9
    ed84: 1400059f     	b	0x10400 <syna_cdev_ioctls+0x1b9c>
    ed88: f9400296     	ldr	x22, [x20]
    ed8c: 39560a88     	ldrb	w8, [x20, #0x582]
    ed90: 390073ff     	strb	wzr, [sp, #0x1c]
    ed94: a905ffff     	stp	xzr, xzr, [sp, #0x58]
    ed98: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    ed9c: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    eda0: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    eda4: f90013ff     	str	xzr, [sp, #0x20]
    eda8: 36009c68     	tbz	w8, #0x0, 0x10134 <syna_cdev_ioctls+0x18d0>
    edac: b9457e88     	ldr	w8, [x20, #0x57c]
    edb0: 71000d1f     	cmp	w8, #0x3
    edb4: 5400a260     	b.eq	0x10200 <syna_cdev_ioctls+0x199c>
    edb8: 9000001c     	adrp	x28, 0xe000 <syna_mmap+0x9c>
		000000000000edb8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x874
    edbc: b9400388     	ldr	w8, [x28]
		000000000000edbc:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x874
    edc0: 11000d08     	add	w8, w8, #0x3
    edc4: 6b17011f     	cmp	w8, w23
    edc8: 5400a828     	b.hi	0x102cc <syna_cdev_ioctls+0x1a68>
    edcc: b9400be2     	ldr	w2, [sp, #0x8]
    edd0: 6b17005f     	cmp	w2, w23
    edd4: 5400b528     	b.hi	0x10478 <syna_cdev_ioctls+0x1c14>
    edd8: 12820008     	mov	w8, #-0x1001            // =-4097
    eddc: 0b080048     	add	w8, w2, w8
    ede0: 313ffd1f     	cmn	w8, #0xfff
    ede4: 5400b4a9     	b.ls	0x10478 <syna_cdev_ioctls+0x1c14>
    ede8: 90000008     	adrp	x8, 0xe000 <syna_mmap+0x9c>
		000000000000ede8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x808
    edec: 39400102     	ldrb	w2, [x8]
		000000000000edec:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x808
    edf0: 3500b522     	cbnz	w2, 0x10494 <syna_cdev_ioctls+0x1c30>
    edf4: 90000019     	adrp	x25, 0xe000 <syna_mmap+0x9c>
		000000000000edf4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7c8
    edf8: 91000339     	add	x25, x25, #0x0
		000000000000edf8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x7c8
    edfc: 91004320     	add	x0, x25, #0x10
    ee00: 94000000     	bl	0xee00 <syna_cdev_ioctls+0x59c>
		000000000000ee00:  R_AARCH64_CALL26	mutex_lock
    ee04: b940af28     	ldr	w8, [x25, #0xac]
    ee08: 3941032a     	ldrb	w10, [x25, #0x40]
    ee0c: f9400320     	ldr	x0, [x25]
    ee10: 0aa87d09     	bic	w9, w8, w8, asr #31
    ee14: b9400b28     	ldr	w8, [x25, #0x8]
    ee18: 0b170134     	add	w20, w9, w23
    ee1c: 11000549     	add	w9, w10, #0x1
    ee20: 6b14011f     	cmp	w8, w20
    ee24: 39010329     	strb	w9, [x25, #0x40]
    ee28: 54006382     	b.hs	0xfa98 <syna_cdev_ioctls+0x1234>
    ee2c: b40000c0     	cbz	x0, 0xee44 <syna_cdev_ioctls+0x5e0>
    ee30: aa0003f8     	mov	x24, x0
    ee34: 94000000     	bl	0xee34 <syna_cdev_ioctls+0x5d0>
		000000000000ee34:  R_AARCH64_CALL26	syna_request_managed_device
    ee38: b400d420     	cbz	x0, 0x108bc <syna_cdev_ioctls+0x2058>
    ee3c: aa1803e1     	mov	x1, x24
    ee40: 94000000     	bl	0xee40 <syna_cdev_ioctls+0x5dc>
		000000000000ee40:  R_AARCH64_CALL26	devm_kfree
    ee44: 94000000     	bl	0xee44 <syna_cdev_ioctls+0x5e0>
		000000000000ee44:  R_AARCH64_CALL26	syna_request_managed_device
    ee48: b400d480     	cbz	x0, 0x108d8 <syna_cdev_ioctls+0x2074>
    ee4c: 7100029f     	cmp	w20, #0x0
    ee50: 5400c7cd     	b.le	0x10748 <syna_cdev_ioctls+0x1ee4>
    ee54: aa1403e1     	mov	x1, x20
    ee58: 5281b802     	mov	w2, #0xdc0              // =3520
    ee5c: 94000000     	bl	0xee5c <syna_cdev_ioctls+0x5f8>
		000000000000ee5c:  R_AARCH64_CALL26	devm_kmalloc
    ee60: 90000008     	adrp	x8, 0xe000 <syna_mmap+0x9c>
		000000000000ee60:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7c8
    ee64: f9000100     	str	x0, [x8]
		000000000000ee64:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x7c8
    ee68: b400d460     	cbz	x0, 0x108f4 <syna_cdev_ioctls+0x2090>
    ee6c: 90000008     	adrp	x8, 0xe000 <syna_mmap+0x9c>
		000000000000ee6c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7d0
    ee70: b9000114     	str	w20, [x8]
		000000000000ee70:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x7d0
    ee74: 1400030a     	b	0xfa9c <syna_cdev_ioctls+0x1238>
    ee78: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000ee78:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x840
    ee7c: 91000000     	add	x0, x0, #0x0
		000000000000ee7c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x840
    ee80: 94000000     	bl	0xee80 <syna_cdev_ioctls+0x61c>
		000000000000ee80:  R_AARCH64_CALL26	mutex_lock
    ee84: f9427e95     	ldr	x21, [x20, #0x4f8]
    ee88: 9113e296     	add	x22, x20, #0x4f8
    ee8c: eb1602bf     	cmp	x21, x22
    ee90: 540003e0     	b.eq	0xef0c <syna_cdev_ioctls+0x6a8>
    ee94: d2802017     	mov	x23, #0x100             // =256
    ee98: f2fbd5b7     	movk	x23, #0xdead, lsl #48
    ee9c: 14000004     	b	0xeeac <syna_cdev_ioctls+0x648>
    eea0: f94002d5     	ldr	x21, [x22]
    eea4: eb1602bf     	cmp	x21, x22
    eea8: 54000320     	b.eq	0xef0c <syna_cdev_ioctls+0x6a8>
    eeac: f94006a8     	ldr	x8, [x21, #0x8]
    eeb0: f9400109     	ldr	x9, [x8]
    eeb4: eb15013f     	cmp	x9, x21
    eeb8: 54000241     	b.ne	0xef00 <syna_cdev_ioctls+0x69c>
    eebc: f94002a9     	ldr	x9, [x21]
    eec0: f940052a     	ldr	x10, [x9, #0x8]
    eec4: eb15015f     	cmp	x10, x21
    eec8: 540001c1     	b.ne	0xef00 <syna_cdev_ioctls+0x69c>
    eecc: f9000528     	str	x8, [x9, #0x8]
    eed0: f9000109     	str	x9, [x8]
    eed4: f9400aa0     	ldr	x0, [x21, #0x10]
    eed8: 91008ae8     	add	x8, x23, #0x22
    eedc: a90022b7     	stp	x23, x8, [x21]
    eee0: 94000000     	bl	0xeee0 <syna_cdev_ioctls+0x67c>
		000000000000eee0:  R_AARCH64_CALL26	kfree
    eee4: aa1503e0     	mov	x0, x21
    eee8: 94000000     	bl	0xeee8 <syna_cdev_ioctls+0x684>
		000000000000eee8:  R_AARCH64_CALL26	kfree
    eeec: b944f288     	ldr	w8, [x20, #0x4f0]
    eef0: 34fffd88     	cbz	w8, 0xeea0 <syna_cdev_ioctls+0x63c>
    eef4: 51000508     	sub	w8, w8, #0x1
    eef8: b904f288     	str	w8, [x20, #0x4f0]
    eefc: 17ffffe9     	b	0xeea0 <syna_cdev_ioctls+0x63c>
    ef00: aa1503e0     	mov	x0, x21
    ef04: 94000000     	bl	0xef04 <syna_cdev_ioctls+0x6a0>
		000000000000ef04:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    ef08: 17fffff3     	b	0xeed4 <syna_cdev_ioctls+0x670>
    ef0c: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000ef0c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x840
    ef10: 91000000     	add	x0, x0, #0x0
		000000000000ef10:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x840
    ef14: 94000000     	bl	0xef14 <syna_cdev_ioctls+0x6b0>
		000000000000ef14:  R_AARCH64_CALL26	mutex_unlock
    ef18: 39411b48     	ldrb	w8, [x26, #0x46]
    ef1c: 36288568     	tbz	w8, #0x5, 0xffc8 <syna_cdev_ioctls+0x1764>
    ef20: 1400042d     	b	0xffd4 <syna_cdev_ioctls+0x1770>
    ef24: 39560a88     	ldrb	w8, [x20, #0x582]
    ef28: f9413a9c     	ldr	x28, [x20, #0x270]
    ef2c: b9001fff     	str	wzr, [sp, #0x1c]
    ef30: 36009168     	tbz	w8, #0x0, 0x1015c <syna_cdev_ioctls+0x18f8>
    ef34: b9457e88     	ldr	w8, [x20, #0x57c]
    ef38: 71000d1f     	cmp	w8, #0x3
    ef3c: 54009760     	b.eq	0x10228 <syna_cdev_ioctls+0x19c4>
    ef40: 71000eff     	cmp	w23, #0x3
    ef44: 54009d09     	b.ls	0x102e4 <syna_cdev_ioctls+0x1a80>
    ef48: 39411b48     	ldrb	w8, [x26, #0x46]
    ef4c: 37280088     	tbnz	w8, #0x5, 0xef5c <syna_cdev_ioctls+0x6f8>
    ef50: f9400349     	ldr	x9, [x26]
    ef54: aa1503e8     	mov	x8, x21
    ef58: 36d00069     	tbz	w9, #0x1a, 0xef64 <syna_cdev_ioctls+0x700>
    ef5c: d378dea8     	lsl	x8, x21, #8
    ef60: 8a8822a8     	and	x8, x21, x8, asr #8
    ef64: b27e93e9     	mov	x9, #0x7ffffffffc       // =549755813884
    ef68: eb09011f     	cmp	x8, x9
    ef6c: 5400a628     	b.hi	0x10430 <syna_cdev_ioctls+0x1bcc>
    ef70: d503201f     	nop
    ef74: d53b4228     	mrs	x8, DAIF
    ef78: d50343df     	msr	DAIFSet, #0x3
    ef7c: f9400749     	ldr	x9, [x26, #0x8]
    ef80: d538202a     	mrs	x10, TTBR1_EL1
    ef84: aa0903eb     	mov	x11, x9
    ef88: b340bd4b     	bfxil	x11, x10, #0, #48
    ef8c: d518202b     	msr	TTBR1_EL1, x11
    ef90: d5182009     	msr	TTBR0_EL1, x9
    ef94: d5033fdf     	isb
    ef98: d51b4228     	msr	DAIF, x8
    ef9c: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
    efa0: 910073e0     	add	x0, sp, #0x1c
    efa4: 52800082     	mov	w2, #0x4                // =4
    efa8: 94000000     	bl	0xefa8 <syna_cdev_ioctls+0x744>
		000000000000efa8:  R_AARCH64_CALL26	__arch_copy_from_user
    efac: d503201f     	nop
    efb0: d53b4228     	mrs	x8, DAIF
    efb4: d50343df     	msr	DAIFSet, #0x3
    efb8: d5382029     	mrs	x9, TTBR1_EL1
    efbc: 9240bd29     	and	x9, x9, #0xffffffffffff
    efc0: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    efc4: d518200a     	msr	TTBR0_EL1, x10
    efc8: d5182029     	msr	TTBR1_EL1, x9
    efcc: d5033fdf     	isb
    efd0: d51b4228     	msr	DAIF, x8
    efd4: b500a300     	cbnz	x0, 0x10434 <syna_cdev_ioctls+0x1bd0>
    efd8: b9401ff6     	ldr	w22, [sp, #0x1c]
    efdc: f9427e88     	ldr	x8, [x20, #0x4f8]
    efe0: 9113e298     	add	x24, x20, #0x4f8
    efe4: eb18011f     	cmp	x8, x24
    efe8: 540005e1     	b.ne	0xf0a4 <syna_cdev_ioctls+0x840>
    efec: 2a1603e0     	mov	w0, w22
    eff0: 94000000     	bl	0xeff0 <syna_cdev_ioctls+0x78c>
		000000000000eff0:  R_AARCH64_CALL26	__msecs_to_jiffies
    eff4: b944f288     	ldr	w8, [x20, #0x4f0]
    eff8: f100001f     	cmp	x0, #0x0
    effc: 7a400904     	ccmp	w8, #0x0, #0x4, eq
    f000: 9a9f0400     	csinc	x0, x0, xzr, eq
    f004: 350004e8     	cbnz	w8, 0xf0a0 <syna_cdev_ioctls+0x83c>
    f008: b40004c0     	cbz	x0, 0xf0a0 <syna_cdev_ioctls+0x83c>
    f00c: 2a1603e0     	mov	w0, w22
    f010: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    f014: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    f018: f90013ff     	str	xzr, [sp, #0x20]
    f01c: 94000000     	bl	0xf01c <syna_cdev_ioctls+0x7b8>
		000000000000f01c:  R_AARCH64_CALL26	__msecs_to_jiffies
    f020: aa0003f6     	mov	x22, x0
    f024: 910083e0     	add	x0, sp, #0x20
    f028: 2a1f03e1     	mov	w1, wzr
    f02c: 94000000     	bl	0xf02c <syna_cdev_ioctls+0x7c8>
		000000000000f02c:  R_AARCH64_CALL26	init_wait_entry
    f030: 91142280     	add	x0, x20, #0x508
    f034: 910083e1     	add	x1, sp, #0x20
    f038: 52800022     	mov	w2, #0x1                // =1
    f03c: 94000000     	bl	0xf03c <syna_cdev_ioctls+0x7d8>
		000000000000f03c:  R_AARCH64_CALL26	prepare_to_wait_event
    f040: b944f288     	ldr	w8, [x20, #0x4f0]
    f044: f10002df     	cmp	x22, #0x0
    f048: 7a400904     	ccmp	w8, #0x0, #0x4, eq
    f04c: 9a9f06d6     	csinc	x22, x22, xzr, eq
    f050: 35000208     	cbnz	w8, 0xf090 <syna_cdev_ioctls+0x82c>
    f054: b40001f6     	cbz	x22, 0xf090 <syna_cdev_ioctls+0x82c>
    f058: b5000240     	cbnz	x0, 0xf0a0 <syna_cdev_ioctls+0x83c>
    f05c: aa1603e0     	mov	x0, x22
    f060: 94000000     	bl	0xf060 <syna_cdev_ioctls+0x7fc>
		000000000000f060:  R_AARCH64_CALL26	schedule_timeout
    f064: aa0003f6     	mov	x22, x0
    f068: 91142280     	add	x0, x20, #0x508
    f06c: 910083e1     	add	x1, sp, #0x20
    f070: 52800022     	mov	w2, #0x1                // =1
    f074: 94000000     	bl	0xf074 <syna_cdev_ioctls+0x810>
		000000000000f074:  R_AARCH64_CALL26	prepare_to_wait_event
    f078: b944f288     	ldr	w8, [x20, #0x4f0]
    f07c: f10002df     	cmp	x22, #0x0
    f080: 7a400904     	ccmp	w8, #0x0, #0x4, eq
    f084: 9a9f06d6     	csinc	x22, x22, xzr, eq
    f088: 35000048     	cbnz	w8, 0xf090 <syna_cdev_ioctls+0x82c>
    f08c: b5fffe76     	cbnz	x22, 0xf058 <syna_cdev_ioctls+0x7f4>
    f090: 91142280     	add	x0, x20, #0x508
    f094: 910083e1     	add	x1, sp, #0x20
    f098: 94000000     	bl	0xf098 <syna_cdev_ioctls+0x834>
		000000000000f098:  R_AARCH64_CALL26	finish_wait
    f09c: aa1603e0     	mov	x0, x22
    f0a0: 34008120     	cbz	w0, 0x100c4 <syna_cdev_ioctls+0x1860>
    f0a4: f9400308     	ldr	x8, [x24]
    f0a8: eb18011f     	cmp	x8, x24
    f0ac: 54007360     	b.eq	0xff18 <syna_cdev_ioctls+0x16b4>
    f0b0: 90000000     	adrp	x0, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000f0b0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x840
    f0b4: 91000000     	add	x0, x0, #0x0
		000000000000f0b4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x840
    f0b8: 94000000     	bl	0xf0b8 <syna_cdev_ioctls+0x854>
		000000000000f0b8:  R_AARCH64_CALL26	mutex_lock
    f0bc: f9400318     	ldr	x24, [x24]
    f0c0: b9401b19     	ldr	w25, [x24, #0x18]
    f0c4: 6b17033f     	cmp	w25, w23
    f0c8: 5400ad88     	b.hi	0x10678 <syna_cdev_ioctls+0x1e14>
    f0cc: f9400b16     	ldr	x22, [x24, #0x10]
    f0d0: aa1903e1     	mov	x1, x25
    f0d4: 52800022     	mov	w2, #0x1                // =1
    f0d8: aa1603e0     	mov	x0, x22
    f0dc: 94000000     	bl	0xf0dc <syna_cdev_ioctls+0x878>
		000000000000f0dc:  R_AARCH64_CALL26	__check_object_size
    f0e0: 39411b48     	ldrb	w8, [x26, #0x46]
    f0e4: 37280088     	tbnz	w8, #0x5, 0xf0f4 <syna_cdev_ioctls+0x890>
    f0e8: f9400349     	ldr	x9, [x26]
    f0ec: aa1503e8     	mov	x8, x21
    f0f0: 36d00069     	tbz	w9, #0x1a, 0xf0fc <syna_cdev_ioctls+0x898>
    f0f4: d378dea8     	lsl	x8, x21, #8
    f0f8: 8a8822a8     	and	x8, x21, x8, asr #8
    f0fc: d2c01009     	mov	x9, #0x8000000000       // =549755813888
    f100: cb190129     	sub	x9, x9, x25
    f104: eb08013f     	cmp	x9, x8
    f108: 54000363     	b.lo	0xf174 <syna_cdev_ioctls+0x910>
    f10c: d503201f     	nop
    f110: d53b4228     	mrs	x8, DAIF
    f114: d50343df     	msr	DAIFSet, #0x3
    f118: f9400749     	ldr	x9, [x26, #0x8]
    f11c: d538202a     	mrs	x10, TTBR1_EL1
    f120: aa0903eb     	mov	x11, x9
    f124: b340bd4b     	bfxil	x11, x10, #0, #48
    f128: d518202b     	msr	TTBR1_EL1, x11
    f12c: d5182009     	msr	TTBR0_EL1, x9
    f130: d5033fdf     	isb
    f134: d51b4228     	msr	DAIF, x8
    f138: 9248faa0     	and	x0, x21, #0xff7fffffffffffff
    f13c: aa1603e1     	mov	x1, x22
    f140: aa1903e2     	mov	x2, x25
    f144: 94000000     	bl	0xf144 <syna_cdev_ioctls+0x8e0>
		000000000000f144:  R_AARCH64_CALL26	__arch_copy_to_user
    f148: aa0003f9     	mov	x25, x0
    f14c: d503201f     	nop
    f150: d53b4228     	mrs	x8, DAIF
    f154: d50343df     	msr	DAIFSet, #0x3
    f158: d5382029     	mrs	x9, TTBR1_EL1
    f15c: 9240bd29     	and	x9, x9, #0xffffffffffff
    f160: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    f164: d518200a     	msr	TTBR0_EL1, x10
    f168: d5182029     	msr	TTBR1_EL1, x9
    f16c: d5033fdf     	isb
    f170: d51b4228     	msr	DAIF, x8
    f174: 3500a9b9     	cbnz	w25, 0x106a8 <syna_cdev_ioctls+0x1e44>
    f178: 2a1f03f6     	mov	w22, wzr
    f17c: b9401b09     	ldr	w9, [x24, #0x18]
    f180: f9400708     	ldr	x8, [x24, #0x8]
    f184: b9000be9     	str	w9, [sp, #0x8]
    f188: f9400109     	ldr	x9, [x8]
    f18c: eb18013f     	cmp	x9, x24
    f190: 5400a861     	b.ne	0x1069c <syna_cdev_ioctls+0x1e38>
    f194: f9400309     	ldr	x9, [x24]
    f198: f940052a     	ldr	x10, [x9, #0x8]
    f19c: eb18015f     	cmp	x10, x24
    f1a0: 5400a7e1     	b.ne	0x1069c <syna_cdev_ioctls+0x1e38>
    f1a4: f9000528     	str	x8, [x9, #0x8]
    f1a8: f9000109     	str	x9, [x8]
    f1ac: d2802008     	mov	x8, #0x100              // =256
    f1b0: 52800449     	mov	w9, #0x22               // =34
    f1b4: f2fbd5a8     	movk	x8, #0xdead, lsl #48
    f1b8: aa090109     	orr	x9, x8, x9
    f1bc: a9002708     	stp	x8, x9, [x24]
    f1c0: 35000059     	cbnz	w25, 0xf1c8 <syna_cdev_ioctls+0x964>
    f1c4: b9401b16     	ldr	w22, [x24, #0x18]
    f1c8: f9400b00     	ldr	x0, [x24, #0x10]
    f1cc: 94000000     	bl	0xf1cc <syna_cdev_ioctls+0x968>
		000000000000f1cc:  R_AARCH64_CALL26	kfree
    f1d0: aa1803e0     	mov	x0, x24
    f1d4: 94000000     	bl	0xf1d4 <syna_cdev_ioctls+0x970>
		000000000000f1d4:  R_AARCH64_CALL26	kfree
    f1d8: b944f288     	ldr	w8, [x20, #0x4f0]
    f1dc: 34000068     	cbz	w8, 0xf1e8 <syna_cdev_ioctls+0x984>
    f1e0: 51000508     	sub	w8, w8, #0x1
    f1e4: b904f288     	str	w8, [x20, #0x4f0]
    f1e8: 90000009     	adrp	x9, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000f1e8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x878
    f1ec: b9400129     	ldr	w9, [x9]
		000000000000f1ec:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x878
    f1f0: 6b09011f     	cmp	w8, w9
    f1f4: 540001e2     	b.hs	0xf230 <syna_cdev_ioctls+0x9cc>
    f1f8: f9413a88     	ldr	x8, [x20, #0x270]
    f1fc: 3942f108     	ldrb	w8, [x8, #0xbc]
    f200: 37000188     	tbnz	w8, #0x0, 0xf230 <syna_cdev_ioctls+0x9cc>
    f204: f9402388     	ldr	x8, [x28, #0x40]
    f208: b4000148     	cbz	x8, 0xf230 <syna_cdev_ioctls+0x9cc>
    f20c: 91002380     	add	x0, x28, #0x8
    f210: 52800021     	mov	w1, #0x1                // =1
    f214: b85fc110     	ldur	w16, [x8, #-0x4]
    f218: 728c3631     	movk	w17, #0x61b1
    f21c: 72a685d1     	movk	w17, #0x342e, lsl #16
    f220: 6b11021f     	cmp	w16, w17
    f224: 54000040     	b.eq	0xf22c <syna_cdev_ioctls+0x9c8>
    f228: d4304500     	brk	#0x8228
    f22c: d63f0100     	blr	x8
    f230: 90000000     	adrp	x0, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000f230:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x840
    f234: 91000000     	add	x0, x0, #0x0
		000000000000f234:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x840
    f238: 14000360     	b	0xffb8 <syna_cdev_ioctls+0x1754>
    f23c: b9400be3     	ldr	w3, [sp, #0x8]
    f240: aa1403e0     	mov	x0, x20
    f244: aa1503e1     	mov	x1, x21
    f248: 2a1703e2     	mov	w2, w23
    f24c: 940006a1     	bl	0x10cd0 <syna_cdev_ioctl_raw_read>
    f250: 1400007f     	b	0xf44c <syna_cdev_ioctls+0xbe8>
    f254: b9400be2     	ldr	w2, [sp, #0x8]
    f258: 71004c5f     	cmp	w2, #0x13
    f25c: 540078a9     	b.ls	0x10170 <syna_cdev_ioctls+0x190c>
    f260: 90000017     	adrp	x23, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000f260:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x808
    f264: f9400298     	ldr	x24, [x20]
    f268: 394002e2     	ldrb	w2, [x23]
		000000000000f268:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x808
    f26c: 35007ec2     	cbnz	w2, 0x10244 <syna_cdev_ioctls+0x19e0>
    f270: 90000019     	adrp	x25, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000f270:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7c8
    f274: 91000339     	add	x25, x25, #0x0
		000000000000f274:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x7c8
    f278: 91004320     	add	x0, x25, #0x10
    f27c: 94000000     	bl	0xf27c <syna_cdev_ioctls+0xa18>
		000000000000f27c:  R_AARCH64_CALL26	mutex_lock
    f280: 39410328     	ldrb	w8, [x25, #0x40]
    f284: b9400b36     	ldr	w22, [x25, #0x8]
    f288: f9400320     	ldr	x0, [x25]
    f28c: 11000508     	add	w8, w8, #0x1
    f290: 71004edf     	cmp	w22, #0x13
    f294: 39010328     	strb	w8, [x25, #0x40]
    f298: 54000248     	b.hi	0xf2e0 <syna_cdev_ioctls+0xa7c>
    f29c: b40000c0     	cbz	x0, 0xf2b4 <syna_cdev_ioctls+0xa50>
    f2a0: aa0003f6     	mov	x22, x0
    f2a4: 94000000     	bl	0xf2a4 <syna_cdev_ioctls+0xa40>
		000000000000f2a4:  R_AARCH64_CALL26	syna_request_managed_device
    f2a8: b400a920     	cbz	x0, 0x107cc <syna_cdev_ioctls+0x1f68>
    f2ac: aa1603e1     	mov	x1, x22
    f2b0: 94000000     	bl	0xf2b0 <syna_cdev_ioctls+0xa4c>
		000000000000f2b0:  R_AARCH64_CALL26	devm_kfree
    f2b4: 94000000     	bl	0xf2b4 <syna_cdev_ioctls+0xa50>
		000000000000f2b4:  R_AARCH64_CALL26	syna_request_managed_device
    f2b8: b400a980     	cbz	x0, 0x107e8 <syna_cdev_ioctls+0x1f84>
    f2bc: 52800281     	mov	w1, #0x14               // =20
    f2c0: 5281b802     	mov	w2, #0xdc0              // =3520
    f2c4: 52800296     	mov	w22, #0x14              // =20
    f2c8: 94000000     	bl	0xf2c8 <syna_cdev_ioctls+0xa64>
		000000000000f2c8:  R_AARCH64_CALL26	devm_kmalloc
    f2cc: 90000008     	adrp	x8, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000f2cc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7c8
    f2d0: f9000100     	str	x0, [x8]
		000000000000f2d0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x7c8
    f2d4: b400a980     	cbz	x0, 0x10804 <syna_cdev_ioctls+0x1fa0>
    f2d8: 90000008     	adrp	x8, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000f2d8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7d0
    f2dc: b9000116     	str	w22, [x8]
		000000000000f2dc:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x7d0
    f2e0: 2a1603e2     	mov	w2, w22
    f2e4: 2a1f03e1     	mov	w1, wzr
    f2e8: 94000000     	bl	0xf2e8 <syna_cdev_ioctls+0xa84>
		000000000000f2e8:  R_AARCH64_CALL26	memset
    f2ec: f9400328     	ldr	x8, [x25]
    f2f0: b9000f3f     	str	wzr, [x25, #0xc]
    f2f4: b900111f     	str	wzr, [x8, #0x10]
    f2f8: a9007d1f     	stp	xzr, xzr, [x8]
    f2fc: f9400321     	ldr	x1, [x25]
    f300: b9403b08     	ldr	w8, [x24, #0x38]
    f304: 79000428     	strh	w8, [x1, #0x2]
    f308: b9403f08     	ldr	w8, [x24, #0x3c]
    f30c: 79000828     	strh	w8, [x1, #0x4]
    f310: 39400028     	ldrb	w8, [x1]
    f314: 39560a89     	ldrb	w9, [x20, #0x582]
    f318: 121f7908     	and	w8, w8, #0xfffffffe
    f31c: 2a090108     	orr	w8, w8, w9
    f320: 39000028     	strb	w8, [x1]
    f324: 121c7908     	and	w8, w8, #0xfffffff7
    f328: b9457e89     	ldr	w9, [x20, #0x57c]
    f32c: 71000d3f     	cmp	w9, #0x3
    f330: 1a9f17e9     	cset	w9, eq
    f334: 2a090d08     	orr	w8, w8, w9, lsl #3
    f338: 39000028     	strb	w8, [x1]
    f33c: 39420308     	ldrb	w8, [x24, #0x80]
    f340: 34000048     	cbz	w8, 0xf348 <syna_cdev_ioctls+0xae4>
    f344: 39000428     	strb	w8, [x1, #0x1]
    f348: 79401028     	ldrh	w8, [x1, #0x8]
    f34c: 394deb09     	ldrb	w9, [x24, #0x37a]
    f350: 121f7908     	and	w8, w8, #0xfffffffe
    f354: 2a090108     	orr	w8, w8, w9
    f358: 90000009     	adrp	x9, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000f358:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x874
    f35c: 91000129     	add	x9, x9, #0x0
		000000000000f35c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x874
    f360: 79001028     	strh	w8, [x1, #0x8]
    f364: 7940012a     	ldrh	w10, [x9]
    f368: 33185d48     	bfi	w8, w10, #8, #24
    f36c: 79001028     	strh	w8, [x1, #0x8]
    f370: b9400528     	ldr	w8, [x9, #0x4]
    f374: 53027d08     	lsr	w8, w8, #2
    f378: 39002828     	strb	w8, [x1, #0xa]
    f37c: 39411b48     	ldrb	w8, [x26, #0x46]
    f380: 37280088     	tbnz	w8, #0x5, 0xf390 <syna_cdev_ioctls+0xb2c>
    f384: f9400349     	ldr	x9, [x26]
    f388: aa1503e8     	mov	x8, x21
    f38c: 36d00069     	tbz	w9, #0x1a, 0xf398 <syna_cdev_ioctls+0xb34>
    f390: d378dea8     	lsl	x8, x21, #8
    f394: 8a8822a8     	and	x8, x21, x8, asr #8
    f398: b2705be9     	mov	x9, #0x7fffff0000       // =549755748352
    f39c: f29ffd89     	movk	x9, #0xffec
    f3a0: eb09011f     	cmp	x8, x9
    f3a4: 54006968     	b.hi	0x100d0 <syna_cdev_ioctls+0x186c>
    f3a8: d503201f     	nop
    f3ac: d53b4228     	mrs	x8, DAIF
    f3b0: d50343df     	msr	DAIFSet, #0x3
    f3b4: f9400749     	ldr	x9, [x26, #0x8]
    f3b8: d538202a     	mrs	x10, TTBR1_EL1
    f3bc: aa0903eb     	mov	x11, x9
    f3c0: b340bd4b     	bfxil	x11, x10, #0, #48
    f3c4: d518202b     	msr	TTBR1_EL1, x11
    f3c8: d5182009     	msr	TTBR0_EL1, x9
    f3cc: d5033fdf     	isb
    f3d0: d51b4228     	msr	DAIF, x8
    f3d4: 9248faa0     	and	x0, x21, #0xff7fffffffffffff
    f3d8: 52800282     	mov	w2, #0x14               // =20
    f3dc: 94000000     	bl	0xf3dc <syna_cdev_ioctls+0xb78>
		000000000000f3dc:  R_AARCH64_CALL26	__arch_copy_to_user
    f3e0: d503201f     	nop
    f3e4: d53b4228     	mrs	x8, DAIF
    f3e8: d50343df     	msr	DAIFSet, #0x3
    f3ec: d5382029     	mrs	x9, TTBR1_EL1
    f3f0: 9240bd29     	and	x9, x9, #0xffffffffffff
    f3f4: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    f3f8: d518200a     	msr	TTBR0_EL1, x10
    f3fc: d5182029     	msr	TTBR1_EL1, x9
    f400: d5033fdf     	isb
    f404: d51b4228     	msr	DAIF, x8
    f408: 35006640     	cbnz	w0, 0x100d0 <syna_cdev_ioctls+0x186c>
    f40c: 52800296     	mov	w22, #0x14              // =20
    f410: 394002e2     	ldrb	w2, [x23]
		000000000000f410:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x808
    f414: 7100045f     	cmp	w2, #0x1
    f418: 54005c80     	b.eq	0xffa8 <syna_cdev_ioctls+0x1744>
    f41c: 90000000     	adrp	x0, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000f41c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
    f420: 91000000     	add	x0, x0, #0x0
		000000000000f420:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
    f424: 90000001     	adrp	x1, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000f424:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
    f428: 91000021     	add	x1, x1, #0x0
		000000000000f428:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
    f42c: 94000000     	bl	0xf42c <syna_cdev_ioctls+0xbc8>
		000000000000f42c:  R_AARCH64_CALL26	_printk
    f430: 394002e8     	ldrb	w8, [x23]
		000000000000f430:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x808
    f434: 14000396     	b	0x1028c <syna_cdev_ioctls+0x1a28>
    f438: b9400be3     	ldr	w3, [sp, #0x8]
    f43c: aa1403e0     	mov	x0, x20
    f440: aa1503e1     	mov	x1, x21
    f444: 2a1703e2     	mov	w2, w23
    f448: 94000702     	bl	0x11050 <syna_cdev_ioctl_raw_write>
    f44c: 2a0003f6     	mov	w22, w0
    f450: 140002db     	b	0xffbc <syna_cdev_ioctls+0x1758>
    f454: 39560a89     	ldrb	w9, [x20, #0x582]
    f458: b9400be8     	ldr	w8, [sp, #0x8]
    f45c: 390093ff     	strb	wzr, [sp, #0x24]
    f460: b90023ff     	str	wzr, [sp, #0x20]
    f464: 390073ff     	strb	wzr, [sp, #0x1c]
    f468: 37000089     	tbnz	w9, #0x0, 0xf478 <syna_cdev_ioctls+0xc14>
    f46c: b9457e89     	ldr	w9, [x20, #0x57c]
    f470: 71000d3f     	cmp	w9, #0x3
    f474: 54008ac1     	b.ne	0x105cc <syna_cdev_ioctls+0x1d68>
    f478: 710016ff     	cmp	w23, #0x5
    f47c: 540069a3     	b.lo	0x101b0 <syna_cdev_ioctls+0x194c>
    f480: 7100111f     	cmp	w8, #0x4
    f484: 54006969     	b.ls	0x101b0 <syna_cdev_ioctls+0x194c>
    f488: f9413a88     	ldr	x8, [x20, #0x270]
    f48c: f940c509     	ldr	x9, [x8, #0x188]
    f490: b4007109     	cbz	x9, 0x102b0 <syna_cdev_ioctls+0x1a4c>
    f494: 295f5d16     	ldp	w22, w23, [x8, #0xf8]
    f498: 39411b49     	ldrb	w9, [x26, #0x46]
    f49c: 37280089     	tbnz	w9, #0x5, 0xf4ac <syna_cdev_ioctls+0xc48>
    f4a0: f9400349     	ldr	x9, [x26]
    f4a4: aa1503e8     	mov	x8, x21
    f4a8: 36d00069     	tbz	w9, #0x1a, 0xf4b4 <syna_cdev_ioctls+0xc50>
    f4ac: d378dea8     	lsl	x8, x21, #8
    f4b0: 8a8822a8     	and	x8, x21, x8, asr #8
    f4b4: b2705be9     	mov	x9, #0x7fffff0000       // =549755748352
    f4b8: f29ffd89     	movk	x9, #0xffec
    f4bc: 91003d29     	add	x9, x9, #0xf
    f4c0: eb09011f     	cmp	x8, x9
    f4c4: 54007428     	b.hi	0x10348 <syna_cdev_ioctls+0x1ae4>
    f4c8: d503201f     	nop
    f4cc: d53b4228     	mrs	x8, DAIF
    f4d0: d50343df     	msr	DAIFSet, #0x3
    f4d4: f9400749     	ldr	x9, [x26, #0x8]
    f4d8: d538202a     	mrs	x10, TTBR1_EL1
    f4dc: aa0903eb     	mov	x11, x9
    f4e0: b340bd4b     	bfxil	x11, x10, #0, #48
    f4e4: d518202b     	msr	TTBR1_EL1, x11
    f4e8: d5182009     	msr	TTBR0_EL1, x9
    f4ec: d5033fdf     	isb
    f4f0: d51b4228     	msr	DAIF, x8
    f4f4: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
    f4f8: 910083e0     	add	x0, sp, #0x20
    f4fc: 528000a2     	mov	w2, #0x5                // =5
    f500: 94000000     	bl	0xf500 <syna_cdev_ioctls+0xc9c>
		000000000000f500:  R_AARCH64_CALL26	__arch_copy_from_user
    f504: d503201f     	nop
    f508: d53b4228     	mrs	x8, DAIF
    f50c: d50343df     	msr	DAIFSet, #0x3
    f510: d5382029     	mrs	x9, TTBR1_EL1
    f514: 9240bd29     	and	x9, x9, #0xffffffffffff
    f518: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    f51c: d518200a     	msr	TTBR0_EL1, x10
    f520: d5182029     	msr	TTBR1_EL1, x9
    f524: d5033fdf     	isb
    f528: d51b4228     	msr	DAIF, x8
    f52c: b5007100     	cbnz	x0, 0x1034c <syna_cdev_ioctls+0x1ae8>
    f530: 784213e9     	ldurh	w9, [sp, #0x21]
    f534: 784233e8     	ldurh	w8, [sp, #0x23]
    f538: 34000069     	cbz	w9, 0xf544 <syna_cdev_ioctls+0xce0>
    f53c: f9413a8a     	ldr	x10, [x20, #0x270]
    f540: b900fd49     	str	w9, [x10, #0xfc]
    f544: 34000068     	cbz	w8, 0xf550 <syna_cdev_ioctls+0xcec>
    f548: f9413a89     	ldr	x9, [x20, #0x270]
    f54c: b900f928     	str	w8, [x9, #0xf8]
    f550: f9413a80     	ldr	x0, [x20, #0x270]
    f554: f940c408     	ldr	x8, [x0, #0x188]
    f558: b85fc110     	ldur	w16, [x8, #-0x4]
    f55c: 72974371     	movk	w17, #0xba1b
    f560: 72a56791     	movk	w17, #0x2b3c, lsl #16
    f564: 6b11021f     	cmp	w16, w17
    f568: 54000040     	b.eq	0xf570 <syna_cdev_ioctls+0xd0c>
    f56c: d4304500     	brk	#0x8228
    f570: d63f0100     	blr	x8
    f574: f9413a88     	ldr	x8, [x20, #0x270]
    f578: b900fd17     	str	w23, [x8, #0xfc]
    f57c: 394083e8     	ldrb	w8, [sp, #0x20]
    f580: f9413a89     	ldr	x9, [x20, #0x270]
    f584: 7100051f     	cmp	w8, #0x1
    f588: b900f936     	str	w22, [x9, #0xf8]
    f58c: 54003760     	b.eq	0xfc78 <syna_cdev_ioctls+0x1414>
    f590: f9413a88     	ldr	x8, [x20, #0x270]
    f594: 3942f108     	ldrb	w8, [x8, #0xbc]
    f598: 370000a8     	tbnz	w8, #0x0, 0xf5ac <syna_cdev_ioctls+0xd48>
    f59c: f9400280     	ldr	x0, [x20]
    f5a0: 910073e1     	add	x1, sp, #0x1c
    f5a4: aa1f03e2     	mov	x2, xzr
    f5a8: 94000000     	bl	0xf5a8 <syna_cdev_ioctls+0xd44>
		000000000000f5a8:  R_AARCH64_CALL26	syna_tcm_get_event_data
    f5ac: f9400288     	ldr	x8, [x20]
    f5b0: 39402508     	ldrb	w8, [x8, #0x9]
    f5b4: 7100051f     	cmp	w8, #0x1
    f5b8: 54003601     	b.ne	0xfc78 <syna_cdev_ioctls+0x1414>
    f5bc: f9435e88     	ldr	x8, [x20, #0x6b8]
    f5c0: aa1403e0     	mov	x0, x20
    f5c4: b85fc110     	ldur	w16, [x8, #-0x4]
    f5c8: 7288e391     	movk	w17, #0x471c
    f5cc: 72b5c411     	movk	w17, #0xae20, lsl #16
    f5d0: 6b11021f     	cmp	w16, w17
    f5d4: 54000040     	b.eq	0xf5dc <syna_cdev_ioctls+0xd78>
    f5d8: d4304500     	brk	#0x8228
    f5dc: d63f0100     	blr	x8
    f5e0: 2a0003f6     	mov	w22, w0
    f5e4: 36f84ec0     	tbz	w0, #0x1f, 0xffbc <syna_cdev_ioctls+0x1758>
    f5e8: 90000000     	adrp	x0, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000f5e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x86f
    f5ec: 91000000     	add	x0, x0, #0x0
		000000000000f5ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x86f
    f5f0: 90000001     	adrp	x1, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000f5f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9882
    f5f4: 91000021     	add	x1, x1, #0x0
		000000000000f5f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9882
    f5f8: 94000000     	bl	0xf5f8 <syna_cdev_ioctls+0xd94>
		000000000000f5f8:  R_AARCH64_CALL26	_printk
    f5fc: 14000270     	b	0xffbc <syna_cdev_ioctls+0x1758>
    f600: b9400be2     	ldr	w2, [sp, #0x8]
    f604: 71004c5f     	cmp	w2, #0x13
    f608: 54005be9     	b.ls	0x10184 <syna_cdev_ioctls+0x1920>
    f60c: 90000018     	adrp	x24, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000f60c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x808
    f610: f9400296     	ldr	x22, [x20]
    f614: 39400302     	ldrb	w2, [x24]
		000000000000f614:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x808
    f618: 35006222     	cbnz	w2, 0x1025c <syna_cdev_ioctls+0x19f8>
    f61c: 90000019     	adrp	x25, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000f61c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7c8
    f620: 91000339     	add	x25, x25, #0x0
		000000000000f620:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x7c8
    f624: 91004320     	add	x0, x25, #0x10
    f628: 94000000     	bl	0xf628 <syna_cdev_ioctls+0xdc4>
		000000000000f628:  R_AARCH64_CALL26	mutex_lock
    f62c: 39410328     	ldrb	w8, [x25, #0x40]
    f630: b9400b37     	ldr	w23, [x25, #0x8]
    f634: f9400320     	ldr	x0, [x25]
    f638: 11000508     	add	w8, w8, #0x1
    f63c: 71004eff     	cmp	w23, #0x13
    f640: 39010328     	strb	w8, [x25, #0x40]
    f644: 54000248     	b.hi	0xf68c <syna_cdev_ioctls+0xe28>
    f648: b40000c0     	cbz	x0, 0xf660 <syna_cdev_ioctls+0xdfc>
    f64c: aa0003f7     	mov	x23, x0
    f650: 94000000     	bl	0xf650 <syna_cdev_ioctls+0xdec>
		000000000000f650:  R_AARCH64_CALL26	syna_request_managed_device
    f654: b4008f80     	cbz	x0, 0x10844 <syna_cdev_ioctls+0x1fe0>
    f658: aa1703e1     	mov	x1, x23
    f65c: 94000000     	bl	0xf65c <syna_cdev_ioctls+0xdf8>
		000000000000f65c:  R_AARCH64_CALL26	devm_kfree
    f660: 94000000     	bl	0xf660 <syna_cdev_ioctls+0xdfc>
		000000000000f660:  R_AARCH64_CALL26	syna_request_managed_device
    f664: b4008fe0     	cbz	x0, 0x10860 <syna_cdev_ioctls+0x1ffc>
    f668: 52800281     	mov	w1, #0x14               // =20
    f66c: 5281b802     	mov	w2, #0xdc0              // =3520
    f670: 52800297     	mov	w23, #0x14              // =20
    f674: 94000000     	bl	0xf674 <syna_cdev_ioctls+0xe10>
		000000000000f674:  R_AARCH64_CALL26	devm_kmalloc
    f678: 90000008     	adrp	x8, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000f678:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7c8
    f67c: f9000100     	str	x0, [x8]
		000000000000f67c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x7c8
    f680: b4008fe0     	cbz	x0, 0x1087c <syna_cdev_ioctls+0x2018>
    f684: 90000008     	adrp	x8, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000f684:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7d0
    f688: b9000117     	str	w23, [x8]
		000000000000f688:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x7d0
    f68c: 2a1703e2     	mov	w2, w23
    f690: 2a1f03e1     	mov	w1, wzr
    f694: 94000000     	bl	0xf694 <syna_cdev_ioctls+0xe30>
		000000000000f694:  R_AARCH64_CALL26	memset
    f698: 39411b48     	ldrb	w8, [x26, #0x46]
    f69c: f9400337     	ldr	x23, [x25]
    f6a0: b9000f3f     	str	wzr, [x25, #0xc]
    f6a4: 37280088     	tbnz	w8, #0x5, 0xf6b4 <syna_cdev_ioctls+0xe50>
    f6a8: f9400349     	ldr	x9, [x26]
    f6ac: aa1503e8     	mov	x8, x21
    f6b0: 36d00069     	tbz	w9, #0x1a, 0xf6bc <syna_cdev_ioctls+0xe58>
    f6b4: d378dea8     	lsl	x8, x21, #8
    f6b8: 8a8822a8     	and	x8, x21, x8, asr #8
    f6bc: b2705be9     	mov	x9, #0x7fffff0000       // =549755748352
    f6c0: f29ffd89     	movk	x9, #0xffec
    f6c4: eb09011f     	cmp	x8, x9
    f6c8: 540017a9     	b.ls	0xf9bc <syna_cdev_ioctls+0x1158>
    f6cc: 52800295     	mov	w21, #0x14              // =20
    f6d0: cb1502e8     	sub	x8, x23, x21
    f6d4: 2a1f03e1     	mov	w1, wzr
    f6d8: aa1503e2     	mov	x2, x21
    f6dc: 91005100     	add	x0, x8, #0x14
    f6e0: 94000000     	bl	0xf6e0 <syna_cdev_ioctls+0xe7c>
		000000000000f6e0:  R_AARCH64_CALL26	memset
    f6e4: 34001a35     	cbz	w21, 0xfa28 <syna_cdev_ioctls+0x11c4>
    f6e8: 90000000     	adrp	x0, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000f6e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x336c
    f6ec: 91000000     	add	x0, x0, #0x0
		000000000000f6ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x336c
    f6f0: 90000001     	adrp	x1, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000f6f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c1
    f6f4: 91000021     	add	x1, x1, #0x0
		000000000000f6f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c1
    f6f8: 2a1503e2     	mov	w2, w21
    f6fc: 94000000     	bl	0xf6fc <syna_cdev_ioctls+0xe98>
		000000000000f6fc:  R_AARCH64_CALL26	_printk
    f700: 12800676     	mov	w22, #-0x34             // =-52
    f704: 14000226     	b	0xff9c <syna_cdev_ioctls+0x1738>
    f708: b9457e88     	ldr	w8, [x20, #0x57c]
    f70c: b9400bf6     	ldr	w22, [sp, #0x8]
    f710: a9117fff     	stp	xzr, xzr, [sp, #0x110]
    f714: a9107fff     	stp	xzr, xzr, [sp, #0x100]
    f718: 71000d1f     	cmp	w8, #0x3
    f71c: a90f7fff     	stp	xzr, xzr, [sp, #0xf0]
    f720: a90e7fff     	stp	xzr, xzr, [sp, #0xe0]
    f724: a90d7fff     	stp	xzr, xzr, [sp, #0xd0]
    f728: a90c7fff     	stp	xzr, xzr, [sp, #0xc0]
    f72c: a90b7fff     	stp	xzr, xzr, [sp, #0xb0]
    f730: a90a7fff     	stp	xzr, xzr, [sp, #0xa0]
    f734: a9097fff     	stp	xzr, xzr, [sp, #0x90]
    f738: a9087fff     	stp	xzr, xzr, [sp, #0x80]
    f73c: a9077fff     	stp	xzr, xzr, [sp, #0x70]
    f740: a9067fff     	stp	xzr, xzr, [sp, #0x60]
    f744: a9057fff     	stp	xzr, xzr, [sp, #0x50]
    f748: a9047fff     	stp	xzr, xzr, [sp, #0x40]
    f74c: a9037fff     	stp	xzr, xzr, [sp, #0x30]
    f750: a9027fff     	stp	xzr, xzr, [sp, #0x20]
    f754: 54005240     	b.eq	0x1019c <syna_cdev_ioctls+0x1938>
    f758: 7103feff     	cmp	w23, #0xff
    f75c: 540059c9     	b.ls	0x10294 <syna_cdev_ioctls+0x1a30>
    f760: 34005cf6     	cbz	w22, 0x102fc <syna_cdev_ioctls+0x1a98>
    f764: 710406df     	cmp	w22, #0x101
    f768: 540090e2     	b.hs	0x10984 <syna_cdev_ioctls+0x2120>
    f76c: 910083e0     	add	x0, sp, #0x20
    f770: aa1603e1     	mov	x1, x22
    f774: 2a1f03e2     	mov	w2, wzr
    f778: 94000000     	bl	0xf778 <syna_cdev_ioctls+0xf14>
		000000000000f778:  R_AARCH64_CALL26	__check_object_size
    f77c: 39411b48     	ldrb	w8, [x26, #0x46]
    f780: 37280088     	tbnz	w8, #0x5, 0xf790 <syna_cdev_ioctls+0xf2c>
    f784: f9400349     	ldr	x9, [x26]
    f788: aa1503e8     	mov	x8, x21
    f78c: 36d00069     	tbz	w9, #0x1a, 0xf798 <syna_cdev_ioctls+0xf34>
    f790: d378dea8     	lsl	x8, x21, #8
    f794: 8a8822a8     	and	x8, x21, x8, asr #8
    f798: d2c01009     	mov	x9, #0x8000000000       // =549755813888
    f79c: aa1603e0     	mov	x0, x22
    f7a0: cb160129     	sub	x9, x9, x22
    f7a4: eb08013f     	cmp	x9, x8
    f7a8: 54005f43     	b.lo	0x10390 <syna_cdev_ioctls+0x1b2c>
    f7ac: d503201f     	nop
    f7b0: d53b4228     	mrs	x8, DAIF
    f7b4: d50343df     	msr	DAIFSet, #0x3
    f7b8: f9400749     	ldr	x9, [x26, #0x8]
    f7bc: d538202a     	mrs	x10, TTBR1_EL1
    f7c0: aa0903eb     	mov	x11, x9
    f7c4: b340bd4b     	bfxil	x11, x10, #0, #48
    f7c8: d518202b     	msr	TTBR1_EL1, x11
    f7cc: d5182009     	msr	TTBR0_EL1, x9
    f7d0: d5033fdf     	isb
    f7d4: d51b4228     	msr	DAIF, x8
    f7d8: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
    f7dc: 910083e0     	add	x0, sp, #0x20
    f7e0: aa1603e2     	mov	x2, x22
    f7e4: 94000000     	bl	0xf7e4 <syna_cdev_ioctls+0xf80>
		000000000000f7e4:  R_AARCH64_CALL26	__arch_copy_from_user
    f7e8: d503201f     	nop
    f7ec: d53b4228     	mrs	x8, DAIF
    f7f0: d50343df     	msr	DAIFSet, #0x3
    f7f4: d5382029     	mrs	x9, TTBR1_EL1
    f7f8: 9240bd29     	and	x9, x9, #0xffffffffffff
    f7fc: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    f800: d518200a     	msr	TTBR0_EL1, x10
    f804: d5182029     	msr	TTBR1_EL1, x9
    f808: d5033fdf     	isb
    f80c: d51b4228     	msr	DAIF, x8
    f810: b5005c00     	cbnz	x0, 0x10390 <syna_cdev_ioctls+0x1b2c>
    f814: aa1f03f5     	mov	x21, xzr
    f818: 910083f8     	add	x24, sp, #0x20
    f81c: 90000017     	adrp	x23, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000f81c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x11408
    f820: 910002f7     	add	x23, x23, #0x0
		000000000000f820:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x11408
    f824: 14000004     	b	0xf834 <syna_cdev_ioctls+0xfd0>
    f828: 910006b5     	add	x21, x21, #0x1
    f82c: f10402bf     	cmp	x21, #0x100
    f830: 54002240     	b.eq	0xfc78 <syna_cdev_ioctls+0x1414>
    f834: 38756b08     	ldrb	w8, [x24, x21]
    f838: 7100051f     	cmp	w8, #0x1
    f83c: 54ffff61     	b.ne	0xf828 <syna_cdev_ioctls+0xfc4>
    f840: f9400280     	ldr	x0, [x20]
    f844: 2a1503e1     	mov	w1, w21
    f848: aa1703e2     	mov	x2, x23
    f84c: aa1403e3     	mov	x3, x20
    f850: 94000000     	bl	0xf850 <syna_cdev_ioctls+0xfec>
		000000000000f850:  R_AARCH64_CALL26	syna_tcm_set_data_duplicator
    f854: 36fffea0     	tbz	w0, #0x1f, 0xf828 <syna_cdev_ioctls+0xfc4>
    f858: 2a0003f6     	mov	w22, w0
    f85c: 90000000     	adrp	x0, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000f85c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9817
    f860: 91000000     	add	x0, x0, #0x0
		000000000000f860:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9817
    f864: 90000001     	adrp	x1, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000f864:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81a
    f868: 91000021     	add	x1, x1, #0x0
		000000000000f868:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81a
    f86c: 2a1503e2     	mov	w2, w21
    f870: 94000000     	bl	0xf870 <syna_cdev_ioctls+0x100c>
		000000000000f870:  R_AARCH64_CALL26	_printk
    f874: 140001d2     	b	0xffbc <syna_cdev_ioctls+0x1758>
    f878: 39560a88     	ldrb	w8, [x20, #0x582]
    f87c: b9400bf6     	ldr	w22, [sp, #0x8]
    f880: 37000088     	tbnz	w8, #0x0, 0xf890 <syna_cdev_ioctls+0x102c>
    f884: b9457e88     	ldr	w8, [x20, #0x57c]
    f888: 71000d1f     	cmp	w8, #0x3
    f88c: 54006ae1     	b.ne	0x105e8 <syna_cdev_ioctls+0x1d84>
    f890: 340049d7     	cbz	w23, 0x101c8 <syna_cdev_ioctls+0x1964>
    f894: 6b1702df     	cmp	w22, w23
    f898: 54004988     	b.hi	0x101c8 <syna_cdev_ioctls+0x1964>
    f89c: f942d697     	ldr	x23, [x20, #0x5a8]
    f8a0: b40000b7     	cbz	x23, 0xf8b4 <syna_cdev_ioctls+0x1050>
    f8a4: 94000000     	bl	0xf8a4 <syna_cdev_ioctls+0x1040>
		000000000000f8a4:  R_AARCH64_CALL26	syna_request_managed_device
    f8a8: b4006680     	cbz	x0, 0x10578 <syna_cdev_ioctls+0x1d14>
    f8ac: aa1703e1     	mov	x1, x23
    f8b0: 94000000     	bl	0xf8b0 <syna_cdev_ioctls+0x104c>
		000000000000f8b0:  R_AARCH64_CALL26	devm_kfree
    f8b4: 94000000     	bl	0xf8b4 <syna_cdev_ioctls+0x1050>
		000000000000f8b4:  R_AARCH64_CALL26	syna_request_managed_device
    f8b8: b40066e0     	cbz	x0, 0x10594 <syna_cdev_ioctls+0x1d30>
    f8bc: 34005656     	cbz	w22, 0x10384 <syna_cdev_ioctls+0x1b20>
    f8c0: aa1603e1     	mov	x1, x22
    f8c4: 5281b802     	mov	w2, #0xdc0              // =3520
    f8c8: 94000000     	bl	0xf8c8 <syna_cdev_ioctls+0x1064>
		000000000000f8c8:  R_AARCH64_CALL26	devm_kmalloc
    f8cc: f902d680     	str	x0, [x20, #0x5a8]
    f8d0: b40066e0     	cbz	x0, 0x105ac <syna_cdev_ioctls+0x1d48>
    f8d4: 2a1f03e1     	mov	w1, wzr
    f8d8: aa1603e2     	mov	x2, x22
    f8dc: aa0003f7     	mov	x23, x0
    f8e0: 94000000     	bl	0xf8e0 <syna_cdev_ioctls+0x107c>
		000000000000f8e0:  R_AARCH64_CALL26	memset
    f8e4: aa1703e0     	mov	x0, x23
    f8e8: aa1603e1     	mov	x1, x22
    f8ec: 2a1f03e2     	mov	w2, wzr
    f8f0: 94000000     	bl	0xf8f0 <syna_cdev_ioctls+0x108c>
		000000000000f8f0:  R_AARCH64_CALL26	__check_object_size
    f8f4: 39411b48     	ldrb	w8, [x26, #0x46]
    f8f8: 37280088     	tbnz	w8, #0x5, 0xf908 <syna_cdev_ioctls+0x10a4>
    f8fc: f9400349     	ldr	x9, [x26]
    f900: aa1503e8     	mov	x8, x21
    f904: 36d00069     	tbz	w9, #0x1a, 0xf910 <syna_cdev_ioctls+0x10ac>
    f908: d378dea8     	lsl	x8, x21, #8
    f90c: 8a8822a8     	and	x8, x21, x8, asr #8
    f910: d2c01009     	mov	x9, #0x8000000000       // =549755813888
    f914: aa1603f4     	mov	x20, x22
    f918: cb160129     	sub	x9, x9, x22
    f91c: eb08013f     	cmp	x9, x8
    f920: 540016e2     	b.hs	0xfbfc <syna_cdev_ioctls+0x1398>
    f924: eb1402c8     	subs	x8, x22, x20
    f928: 9a9433e1     	csel	x1, xzr, x20, lo
    f92c: eb14003f     	cmp	x1, x20
    f930: 54008583     	b.lo	0x109e0 <syna_cdev_ioctls+0x217c>
    f934: 8b0802e0     	add	x0, x23, x8
    f938: 2a1f03e1     	mov	w1, wzr
    f93c: aa1403e2     	mov	x2, x20
    f940: 94000000     	bl	0xf940 <syna_cdev_ioctls+0x10dc>
		000000000000f940:  R_AARCH64_CALL26	memset
    f944: 340033f4     	cbz	w20, 0xffc0 <syna_cdev_ioctls+0x175c>
    f948: 90000000     	adrp	x0, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000f948:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x336c
    f94c: 91000000     	add	x0, x0, #0x0
		000000000000f94c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x336c
    f950: 90000001     	adrp	x1, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000f950:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8749
    f954: 91000021     	add	x1, x1, #0x0
		000000000000f954:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8749
    f958: 2a1403e2     	mov	w2, w20
    f95c: 140001d5     	b	0x100b0 <syna_cdev_ioctls+0x184c>
    f960: 52800200     	mov	w0, #0x10               // =16
    f964: f100441f     	cmp	x0, #0x11
    f968: 540082a2     	b.hs	0x109bc <syna_cdev_ioctls+0x2158>
    f96c: 910023e8     	add	x8, sp, #0x8
    f970: aa0003f3     	mov	x19, x0
    f974: 2a1f03e1     	mov	w1, wzr
    f978: cb000108     	sub	x8, x8, x0
    f97c: aa1303e2     	mov	x2, x19
    f980: 91004100     	add	x0, x8, #0x10
    f984: 94000000     	bl	0xf984 <syna_cdev_ioctls+0x1120>
		000000000000f984:  R_AARCH64_CALL26	memset
    f988: 90000000     	adrp	x0, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000f988:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2baf
    f98c: 91000000     	add	x0, x0, #0x0
		000000000000f98c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2baf
    f990: 90000001     	adrp	x1, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000f990:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2690
    f994: 91000021     	add	x1, x1, #0x0
		000000000000f994:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2690
    f998: 2a1303e2     	mov	w2, w19
    f99c: 140001c5     	b	0x100b0 <syna_cdev_ioctls+0x184c>
    f9a0: 90000000     	adrp	x0, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000f9a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6327
    f9a4: 91000000     	add	x0, x0, #0x0
		000000000000f9a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6327
    f9a8: 90000001     	adrp	x1, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000f9a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2690
    f9ac: 91000021     	add	x1, x1, #0x0
		000000000000f9ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2690
    f9b0: 94000000     	bl	0xf9b0 <syna_cdev_ioctls+0x114c>
		000000000000f9b0:  R_AARCH64_CALL26	_printk
    f9b4: 12800676     	mov	w22, #-0x34             // =-52
    f9b8: 140001a7     	b	0x10054 <syna_cdev_ioctls+0x17f0>
    f9bc: d503201f     	nop
    f9c0: d53b4228     	mrs	x8, DAIF
    f9c4: d50343df     	msr	DAIFSet, #0x3
    f9c8: f9400749     	ldr	x9, [x26, #0x8]
    f9cc: d538202a     	mrs	x10, TTBR1_EL1
    f9d0: aa0903eb     	mov	x11, x9
    f9d4: b340bd4b     	bfxil	x11, x10, #0, #48
    f9d8: d518202b     	msr	TTBR1_EL1, x11
    f9dc: d5182009     	msr	TTBR0_EL1, x9
    f9e0: d5033fdf     	isb
    f9e4: d51b4228     	msr	DAIF, x8
    f9e8: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
    f9ec: aa1703e0     	mov	x0, x23
    f9f0: 52800282     	mov	w2, #0x14               // =20
    f9f4: 94000000     	bl	0xf9f4 <syna_cdev_ioctls+0x1190>
		000000000000f9f4:  R_AARCH64_CALL26	__arch_copy_from_user
    f9f8: aa0003f5     	mov	x21, x0
    f9fc: d503201f     	nop
    fa00: d53b4228     	mrs	x8, DAIF
    fa04: d50343df     	msr	DAIFSet, #0x3
    fa08: d5382029     	mrs	x9, TTBR1_EL1
    fa0c: 9240bd29     	and	x9, x9, #0xffffffffffff
    fa10: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    fa14: d518200a     	msr	TTBR0_EL1, x10
    fa18: d5182029     	msr	TTBR1_EL1, x9
    fa1c: d5033fdf     	isb
    fa20: d51b4228     	msr	DAIF, x8
    fa24: b5ffe575     	cbnz	x21, 0xf6d0 <syna_cdev_ioctls+0xe6c>
    fa28: 39560a88     	ldrb	w8, [x20, #0x582]
    fa2c: 7100051f     	cmp	w8, #0x1
    fa30: 54002b41     	b.ne	0xff98 <syna_cdev_ioctls+0x1734>
    fa34: 90000008     	adrp	x8, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000fa34:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7c8
    fa38: f9400115     	ldr	x21, [x8]
		000000000000fa38:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x7c8
    fa3c: 79400aa2     	ldrh	w2, [x21, #0x4]
    fa40: 794006a1     	ldrh	w1, [x21, #0x2]
    fa44: 340026e2     	cbz	w2, 0xff20 <syna_cdev_ioctls+0x16bc>
    fa48: b9403ec8     	ldr	w8, [x22, #0x3c]
    fa4c: 6b02011f     	cmp	w8, w2
    fa50: 1a9f07e8     	cset	w8, ne
    fa54: 350026a1     	cbnz	w1, 0xff28 <syna_cdev_ioctls+0x16c4>
    fa58: 54002701     	b.ne	0xff38 <syna_cdev_ioctls+0x16d4>
    fa5c: 14000140     	b	0xff5c <syna_cdev_ioctls+0x16f8>
    fa60: 90000000     	adrp	x0, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000fa60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4048
    fa64: 91000000     	add	x0, x0, #0x0
		000000000000fa64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4048
    fa68: 90000001     	adrp	x1, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000fa68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26a1
    fa6c: 91000021     	add	x1, x1, #0x0
		000000000000fa6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26a1
    fa70: 2a1603e2     	mov	w2, w22
    fa74: 94000000     	bl	0xfa74 <syna_cdev_ioctls+0x1210>
		000000000000fa74:  R_AARCH64_CALL26	_printk
    fa78: 128002b6     	mov	w22, #-0x16             // =-22
    fa7c: 14000176     	b	0x10054 <syna_cdev_ioctls+0x17f0>
    fa80: 90000000     	adrp	x0, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000fa80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x86eb
    fa84: 91000000     	add	x0, x0, #0x0
		000000000000fa84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x86eb
    fa88: 90000001     	adrp	x1, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000fa88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26a1
    fa8c: 91000021     	add	x1, x1, #0x0
		000000000000fa8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26a1
    fa90: 94000000     	bl	0xfa90 <syna_cdev_ioctls+0x122c>
		000000000000fa90:  R_AARCH64_CALL26	_printk
    fa94: 14000170     	b	0x10054 <syna_cdev_ioctls+0x17f0>
    fa98: aa0803f4     	mov	x20, x8
    fa9c: 2a1f03e1     	mov	w1, wzr
    faa0: aa1403e2     	mov	x2, x20
    faa4: 94000000     	bl	0xfaa4 <syna_cdev_ioctls+0x1240>
		000000000000faa4:  R_AARCH64_CALL26	memset
    faa8: b9400bf8     	ldr	w24, [sp, #0x8]
    faac: f9400334     	ldr	x20, [x25]
    fab0: b9000f3f     	str	wzr, [x25, #0xc]
    fab4: 37f87798     	tbnz	w24, #0x1f, 0x109a4 <syna_cdev_ioctls+0x2140>
    fab8: aa1403e0     	mov	x0, x20
    fabc: aa1803e1     	mov	x1, x24
    fac0: 2a1f03e2     	mov	w2, wzr
    fac4: 94000000     	bl	0xfac4 <syna_cdev_ioctls+0x1260>
		000000000000fac4:  R_AARCH64_CALL26	__check_object_size
    fac8: 39411b48     	ldrb	w8, [x26, #0x46]
    facc: 37280088     	tbnz	w8, #0x5, 0xfadc <syna_cdev_ioctls+0x1278>
    fad0: f9400349     	ldr	x9, [x26]
    fad4: aa1503e8     	mov	x8, x21
    fad8: 36d00069     	tbz	w9, #0x1a, 0xfae4 <syna_cdev_ioctls+0x1280>
    fadc: d378dea8     	lsl	x8, x21, #8
    fae0: 8a8822a8     	and	x8, x21, x8, asr #8
    fae4: d2c01009     	mov	x9, #0x8000000000       // =549755813888
    fae8: aa1803f9     	mov	x25, x24
    faec: cb180129     	sub	x9, x9, x24
    faf0: eb08013f     	cmp	x9, x8
    faf4: 54000c62     	b.hs	0xfc80 <syna_cdev_ioctls+0x141c>
    faf8: cb190308     	sub	x8, x24, x25
    fafc: 2a1f03e1     	mov	w1, wzr
    fb00: aa1903e2     	mov	x2, x25
    fb04: 8b080280     	add	x0, x20, x8
    fb08: 94000000     	bl	0xfb08 <syna_cdev_ioctls+0x12a4>
		000000000000fb08:  R_AARCH64_CALL26	memset
    fb0c: aa1903f8     	mov	x24, x25
    fb10: 34000ef8     	cbz	w24, 0xfcec <syna_cdev_ioctls+0x1488>
    fb14: b9400be2     	ldr	w2, [sp, #0x8]
    fb18: 90000000     	adrp	x0, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000fb18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x336c
    fb1c: 91000000     	add	x0, x0, #0x0
		000000000000fb1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x336c
    fb20: 90000001     	adrp	x1, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000fb20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb433
    fb24: 91000021     	add	x1, x1, #0x0
		000000000000fb24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb433
    fb28: 94000000     	bl	0xfb28 <syna_cdev_ioctls+0x12c4>
		000000000000fb28:  R_AARCH64_CALL26	_printk
    fb2c: 12800676     	mov	w22, #-0x34             // =-52
    fb30: 140000e8     	b	0xfed0 <syna_cdev_ioctls+0x166c>
    fb34: d503201f     	nop
    fb38: d53b4228     	mrs	x8, DAIF
    fb3c: d50343df     	msr	DAIFSet, #0x3
    fb40: f9400749     	ldr	x9, [x26, #0x8]
    fb44: d538202a     	mrs	x10, TTBR1_EL1
    fb48: aa0903eb     	mov	x11, x9
    fb4c: b340bd4b     	bfxil	x11, x10, #0, #48
    fb50: d518202b     	msr	TTBR1_EL1, x11
    fb54: d5182009     	msr	TTBR0_EL1, x9
    fb58: d5033fdf     	isb
    fb5c: d51b4228     	msr	DAIF, x8
    fb60: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
    fb64: 910083e0     	add	x0, sp, #0x20
    fb68: aa1703e2     	mov	x2, x23
    fb6c: 94000000     	bl	0xfb6c <syna_cdev_ioctls+0x1308>
		000000000000fb6c:  R_AARCH64_CALL26	__arch_copy_from_user
    fb70: aa0003f6     	mov	x22, x0
    fb74: d503201f     	nop
    fb78: d53b4228     	mrs	x8, DAIF
    fb7c: d50343df     	msr	DAIFSet, #0x3
    fb80: d5382029     	mrs	x9, TTBR1_EL1
    fb84: 9240bd29     	and	x9, x9, #0xffffffffffff
    fb88: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    fb8c: d518200a     	msr	TTBR0_EL1, x10
    fb90: d5182029     	msr	TTBR1_EL1, x9
    fb94: d5033fdf     	isb
    fb98: d51b4228     	msr	DAIF, x8
    fb9c: b5ff76d6     	cbnz	x22, 0xea74 <syna_cdev_ioctls+0x210>
    fba0: b94023e8     	ldr	w8, [sp, #0x20]
    fba4: 7100051f     	cmp	w8, #0x1
    fba8: 54000620     	b.eq	0xfc6c <syna_cdev_ioctls+0x1408>
    fbac: 350058e8     	cbnz	w8, 0x106c8 <syna_cdev_ioctls+0x1e64>
    fbb0: f9413a88     	ldr	x8, [x20, #0x270]
    fbb4: 3942f108     	ldrb	w8, [x8, #0xbc]
    fbb8: 7100051f     	cmp	w8, #0x1
    fbbc: 540005e1     	b.ne	0xfc78 <syna_cdev_ioctls+0x1414>
    fbc0: f9402308     	ldr	x8, [x24, #0x40]
    fbc4: 91002300     	add	x0, x24, #0x8
    fbc8: 2a1f03e1     	mov	w1, wzr
    fbcc: b85fc110     	ldur	w16, [x8, #-0x4]
    fbd0: 728c3631     	movk	w17, #0x61b1
    fbd4: 72a685d1     	movk	w17, #0x342e, lsl #16
    fbd8: 6b11021f     	cmp	w16, w17
    fbdc: 54000040     	b.eq	0xfbe4 <syna_cdev_ioctls+0x1380>
    fbe0: d4304500     	brk	#0x8228
    fbe4: d63f0100     	blr	x8
    fbe8: 36f86a60     	tbz	w0, #0x1f, 0x10934 <syna_cdev_ioctls+0x20d0>
    fbec: 2a0003f6     	mov	w22, w0
    fbf0: 90000000     	adrp	x0, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000fbf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19fc
    fbf4: 91000000     	add	x0, x0, #0x0
		000000000000fbf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19fc
    fbf8: 140002e5     	b	0x1078c <syna_cdev_ioctls+0x1f28>
    fbfc: d503201f     	nop
    fc00: d53b4228     	mrs	x8, DAIF
    fc04: d50343df     	msr	DAIFSet, #0x3
    fc08: f9400749     	ldr	x9, [x26, #0x8]
    fc0c: d538202a     	mrs	x10, TTBR1_EL1
    fc10: aa0903eb     	mov	x11, x9
    fc14: b340bd4b     	bfxil	x11, x10, #0, #48
    fc18: d518202b     	msr	TTBR1_EL1, x11
    fc1c: d5182009     	msr	TTBR0_EL1, x9
    fc20: d5033fdf     	isb
    fc24: d51b4228     	msr	DAIF, x8
    fc28: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
    fc2c: aa1703e0     	mov	x0, x23
    fc30: aa1603e2     	mov	x2, x22
    fc34: 94000000     	bl	0xfc34 <syna_cdev_ioctls+0x13d0>
		000000000000fc34:  R_AARCH64_CALL26	__arch_copy_from_user
    fc38: aa0003f4     	mov	x20, x0
    fc3c: d503201f     	nop
    fc40: d53b4228     	mrs	x8, DAIF
    fc44: d50343df     	msr	DAIFSet, #0x3
    fc48: d5382029     	mrs	x9, TTBR1_EL1
    fc4c: 9240bd29     	and	x9, x9, #0xffffffffffff
    fc50: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    fc54: d518200a     	msr	TTBR0_EL1, x10
    fc58: d5182029     	msr	TTBR1_EL1, x9
    fc5c: d5033fdf     	isb
    fc60: d51b4228     	msr	DAIF, x8
    fc64: b4001af4     	cbz	x20, 0xffc0 <syna_cdev_ioctls+0x175c>
    fc68: 17ffff2f     	b	0xf924 <syna_cdev_ioctls+0x10c0>
    fc6c: f9413a88     	ldr	x8, [x20, #0x270]
    fc70: 3942f108     	ldrb	w8, [x8, #0xbc]
    fc74: 36005708     	tbz	w8, #0x0, 0x10754 <syna_cdev_ioctls+0x1ef0>
    fc78: 2a1f03f6     	mov	w22, wzr
    fc7c: 140000d0     	b	0xffbc <syna_cdev_ioctls+0x1758>
    fc80: d503201f     	nop
    fc84: d53b4228     	mrs	x8, DAIF
    fc88: d50343df     	msr	DAIFSet, #0x3
    fc8c: f9400749     	ldr	x9, [x26, #0x8]
    fc90: d538202a     	mrs	x10, TTBR1_EL1
    fc94: aa0903eb     	mov	x11, x9
    fc98: b340bd4b     	bfxil	x11, x10, #0, #48
    fc9c: d518202b     	msr	TTBR1_EL1, x11
    fca0: d5182009     	msr	TTBR0_EL1, x9
    fca4: d5033fdf     	isb
    fca8: d51b4228     	msr	DAIF, x8
    fcac: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
    fcb0: aa1403e0     	mov	x0, x20
    fcb4: aa1803e2     	mov	x2, x24
    fcb8: 94000000     	bl	0xfcb8 <syna_cdev_ioctls+0x1454>
		000000000000fcb8:  R_AARCH64_CALL26	__arch_copy_from_user
    fcbc: aa0003f9     	mov	x25, x0
    fcc0: d503201f     	nop
    fcc4: d53b4228     	mrs	x8, DAIF
    fcc8: d50343df     	msr	DAIFSet, #0x3
    fccc: d5382029     	mrs	x9, TTBR1_EL1
    fcd0: 9240bd29     	and	x9, x9, #0xffffffffffff
    fcd4: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    fcd8: d518200a     	msr	TTBR0_EL1, x10
    fcdc: d5182029     	msr	TTBR1_EL1, x9
    fce0: d5033fdf     	isb
    fce4: d51b4228     	msr	DAIF, x8
    fce8: b5fff099     	cbnz	x25, 0xfaf8 <syna_cdev_ioctls+0x1294>
    fcec: 78401299     	ldurh	w25, [x20, #0x1]
    fcf0: b9400be3     	ldr	w3, [sp, #0x8]
    fcf4: 6b03033f     	cmp	w25, w3
    fcf8: 54004028     	b.hi	0x104fc <syna_cdev_ioctls+0x1c98>
    fcfc: 910083e8     	add	x8, sp, #0x20
    fd00: 90000001     	adrp	x1, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000fd00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
    fd04: 91000021     	add	x1, x1, #0x0
		000000000000fd04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
    fd08: 90000002     	adrp	x2, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000fd08:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x889
    fd0c: 91000042     	add	x2, x2, #0x0
		000000000000fd0c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x889
    fd10: 91004100     	add	x0, x8, #0x10
    fd14: 390183ff     	strb	wzr, [sp, #0x60]
    fd18: a9027fff     	stp	xzr, xzr, [sp, #0x20]
    fd1c: 94000000     	bl	0xfd1c <syna_cdev_ioctls+0x14b8>
		000000000000fd1c:  R_AARCH64_CALL26	__mutex_init
    fd20: 90000008     	adrp	x8, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000fd20:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x870
    fd24: aa1403f8     	mov	x24, x20
    fd28: 910073e4     	add	x4, sp, #0x1c
    fd2c: b9400106     	ldr	w6, [x8]
		000000000000fd2c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x870
    fd30: 38403701     	ldrb	w1, [x24], #0x3
    fd34: 910083e5     	add	x5, sp, #0x20
    fd38: aa1603e0     	mov	x0, x22
    fd3c: aa1803e2     	mov	x2, x24
    fd40: 2a1903e3     	mov	w3, w25
    fd44: 94000000     	bl	0xfd44 <syna_cdev_ioctls+0x14e0>
		000000000000fd44:  R_AARCH64_CALL26	syna_tcm_send_command
    fd48: 37f83ea0     	tbnz	w0, #0x1f, 0x1051c <syna_cdev_ioctls+0x1cb8>
    fd4c: aa1403e0     	mov	x0, x20
    fd50: 2a1f03e1     	mov	w1, wzr
    fd54: aa1703e2     	mov	x2, x23
    fd58: 94000000     	bl	0xfd58 <syna_cdev_ioctls+0x14f4>
		000000000000fd58:  R_AARCH64_CALL26	memset
    fd5c: 394073e8     	ldrb	w8, [sp, #0x1c]
    fd60: 39000288     	strb	w8, [x20]
    fd64: b9402fe8     	ldr	w8, [sp, #0x2c]
    fd68: 39000688     	strb	w8, [x20, #0x1]
    fd6c: b9402fe8     	ldr	w8, [sp, #0x2c]
    fd70: 53087d08     	lsr	w8, w8, #8
    fd74: 39000a88     	strb	w8, [x20, #0x2]
    fd78: 90000008     	adrp	x8, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000fd78:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7d0
    fd7c: b9400102     	ldr	w2, [x8]
		000000000000fd7c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x7d0
    fd80: b9402fe4     	ldr	w4, [sp, #0x2c]
    fd84: 6b04005f     	cmp	w2, w4
    fd88: 54003da3     	b.lo	0x1053c <syna_cdev_ioctls+0x1cd8>
    fd8c: 340003e4     	cbz	w4, 0xfe08 <syna_cdev_ioctls+0x15a4>
    fd90: b4005118     	cbz	x24, 0x107b0 <syna_cdev_ioctls+0x1f4c>
    fd94: f94013e1     	ldr	x1, [sp, #0x20]
    fd98: b40050c1     	cbz	x1, 0x107b0 <syna_cdev_ioctls+0x1f4c>
    fd9c: 51000c43     	sub	w3, w2, #0x3
    fda0: b9402be2     	ldr	w2, [sp, #0x28]
    fda4: 6b03009f     	cmp	w4, w3
    fda8: 54004fa8     	b.hi	0x1079c <syna_cdev_ioctls+0x1f38>
    fdac: 6b02009f     	cmp	w4, w2
    fdb0: 54004f68     	b.hi	0x1079c <syna_cdev_ioctls+0x1f38>
    fdb4: aa1803e0     	mov	x0, x24
    fdb8: aa0403e2     	mov	x2, x4
    fdbc: 94000000     	bl	0xfdbc <syna_cdev_ioctls+0x1558>
		000000000000fdbc:  R_AARCH64_CALL26	memcpy
    fdc0: b9400388     	ldr	w8, [x28]
		000000000000fdc0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x874
    fdc4: 7100051f     	cmp	w8, #0x1
    fdc8: 5400022d     	b.le	0xfe0c <syna_cdev_ioctls+0x15a8>
    fdcc: b9402fe9     	ldr	w9, [sp, #0x2c]
    fdd0: 794706c8     	ldrh	w8, [x22, #0x382]
    fdd4: 11000d2a     	add	w10, w9, #0x3
    fdd8: 53087d0b     	lsr	w11, w8, #8
    fddc: 1100112c     	add	w12, w9, #0x4
    fde0: 382a4a88     	strb	w8, [x20, w10, uxtw]
    fde4: 529fffca     	mov	w10, #0xfffe            // =65534
    fde8: 382c4a8b     	strb	w11, [x20, w12, uxtw]
    fdec: b9400388     	ldr	w8, [x28]
		000000000000fdec:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x874
    fdf0: 0b0a010a     	add	w10, w8, w10
    fdf4: 72003d5f     	tst	w10, #0xffff
    fdf8: 540000a0     	b.eq	0xfe0c <syna_cdev_ioctls+0x15a8>
    fdfc: 394e16c8     	ldrb	w8, [x22, #0x385]
    fe00: 11001529     	add	w9, w9, #0x5
    fe04: 38294a88     	strb	w8, [x20, w9, uxtw]
    fe08: b9400388     	ldr	w8, [x28]
		000000000000fe08:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x874
    fe0c: b9402fe9     	ldr	w9, [sp, #0x2c]
    fe10: 0aa87d08     	bic	w8, w8, w8, asr #31
    fe14: 0b080128     	add	w8, w9, w8
    fe18: 31000d16     	adds	w22, w8, #0x3
    fe1c: b9000bf6     	str	w22, [sp, #0x8]
    fe20: 54005c84     	b.mi	0x109b0 <syna_cdev_ioctls+0x214c>
    fe24: aa1403e0     	mov	x0, x20
    fe28: aa1603e1     	mov	x1, x22
    fe2c: 52800022     	mov	w2, #0x1                // =1
    fe30: 94000000     	bl	0xfe30 <syna_cdev_ioctls+0x15cc>
		000000000000fe30:  R_AARCH64_CALL26	__check_object_size
    fe34: 39411b48     	ldrb	w8, [x26, #0x46]
    fe38: 37280088     	tbnz	w8, #0x5, 0xfe48 <syna_cdev_ioctls+0x15e4>
    fe3c: f9400349     	ldr	x9, [x26]
    fe40: aa1503e8     	mov	x8, x21
    fe44: 36d00069     	tbz	w9, #0x1a, 0xfe50 <syna_cdev_ioctls+0x15ec>
    fe48: d378dea8     	lsl	x8, x21, #8
    fe4c: 8a8822a8     	and	x8, x21, x8, asr #8
    fe50: d2c01009     	mov	x9, #0x8000000000       // =549755813888
    fe54: cb160129     	sub	x9, x9, x22
    fe58: eb08013f     	cmp	x9, x8
    fe5c: 54000363     	b.lo	0xfec8 <syna_cdev_ioctls+0x1664>
    fe60: d503201f     	nop
    fe64: d53b4228     	mrs	x8, DAIF
    fe68: d50343df     	msr	DAIFSet, #0x3
    fe6c: f9400749     	ldr	x9, [x26, #0x8]
    fe70: d538202a     	mrs	x10, TTBR1_EL1
    fe74: aa0903eb     	mov	x11, x9
    fe78: b340bd4b     	bfxil	x11, x10, #0, #48
    fe7c: d518202b     	msr	TTBR1_EL1, x11
    fe80: d5182009     	msr	TTBR0_EL1, x9
    fe84: d5033fdf     	isb
    fe88: d51b4228     	msr	DAIF, x8
    fe8c: 9248faa0     	and	x0, x21, #0xff7fffffffffffff
    fe90: aa1403e1     	mov	x1, x20
    fe94: aa1603e2     	mov	x2, x22
    fe98: 94000000     	bl	0xfe98 <syna_cdev_ioctls+0x1634>
		000000000000fe98:  R_AARCH64_CALL26	__arch_copy_to_user
    fe9c: aa0003f6     	mov	x22, x0
    fea0: d503201f     	nop
    fea4: d53b4228     	mrs	x8, DAIF
    fea8: d50343df     	msr	DAIFSet, #0x3
    feac: d5382029     	mrs	x9, TTBR1_EL1
    feb0: 9240bd29     	and	x9, x9, #0xffffffffffff
    feb4: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    feb8: d518200a     	msr	TTBR0_EL1, x10
    febc: d5182029     	msr	TTBR1_EL1, x9
    fec0: d5033fdf     	isb
    fec4: d51b4228     	msr	DAIF, x8
    fec8: 350034b6     	cbnz	w22, 0x1055c <syna_cdev_ioctls+0x1cf8>
    fecc: b9400bf6     	ldr	w22, [sp, #0x8]
    fed0: 90000014     	adrp	x20, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000fed0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x808
    fed4: 39400282     	ldrb	w2, [x20]
		000000000000fed4:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x808
    fed8: 7100045f     	cmp	w2, #0x1
    fedc: 54002e81     	b.ne	0x104ac <syna_cdev_ioctls+0x1c48>
    fee0: 2a1f03e8     	mov	w8, wzr
    fee4: 90000000     	adrp	x0, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000fee4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7d8
    fee8: 91000000     	add	x0, x0, #0x0
		000000000000fee8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x7d8
    feec: 3900c008     	strb	w8, [x0, #0x30]
    fef0: 94000000     	bl	0xfef0 <syna_cdev_ioctls+0x168c>
		000000000000fef0:  R_AARCH64_CALL26	mutex_unlock
    fef4: 394183e2     	ldrb	w2, [sp, #0x60]
    fef8: 35002ea2     	cbnz	w2, 0x104cc <syna_cdev_ioctls+0x1c68>
    fefc: f94013f4     	ldr	x20, [sp, #0x20]
    ff00: 94000000     	bl	0xff00 <syna_cdev_ioctls+0x169c>
		000000000000ff00:  R_AARCH64_CALL26	syna_request_managed_device
    ff04: b4002f00     	cbz	x0, 0x104e4 <syna_cdev_ioctls+0x1c80>
    ff08: b40005b4     	cbz	x20, 0xffbc <syna_cdev_ioctls+0x1758>
    ff0c: aa1403e1     	mov	x1, x20
    ff10: 94000000     	bl	0xff10 <syna_cdev_ioctls+0x16ac>
		000000000000ff10:  R_AARCH64_CALL26	devm_kfree
    ff14: 1400002a     	b	0xffbc <syna_cdev_ioctls+0x1758>
    ff18: 12800796     	mov	w22, #-0x3d             // =-61
    ff1c: 14000028     	b	0xffbc <syna_cdev_ioctls+0x1758>
    ff20: 340001e1     	cbz	w1, 0xff5c <syna_cdev_ioctls+0x16f8>
    ff24: 2a1f03e8     	mov	w8, wzr
    ff28: b9403ac9     	ldr	w9, [x22, #0x38]
    ff2c: 6b01013f     	cmp	w9, w1
    ff30: 54000041     	b.ne	0xff38 <syna_cdev_ioctls+0x16d4>
    ff34: 36000148     	tbz	w8, #0x0, 0xff5c <syna_cdev_ioctls+0x16f8>
    ff38: f941d6c8     	ldr	x8, [x22, #0x3a8]
    ff3c: aa1603e0     	mov	x0, x22
    ff40: b85fc110     	ldur	w16, [x8, #-0x4]
    ff44: 72963bb1     	movk	w17, #0xb1dd
    ff48: 72a09411     	movk	w17, #0x4a0, lsl #16
    ff4c: 6b11021f     	cmp	w16, w17
    ff50: 54000040     	b.eq	0xff58 <syna_cdev_ioctls+0x16f4>
    ff54: d4304500     	brk	#0x8228
    ff58: d63f0100     	blr	x8
    ff5c: 794012a8     	ldrh	w8, [x21, #0x8]
    ff60: 394deac9     	ldrb	w9, [x22, #0x37a]
    ff64: 12000114     	and	w20, w8, #0x1
    ff68: 6b09029f     	cmp	w20, w9
    ff6c: 540034c1     	b.ne	0x10604 <syna_cdev_ioctls+0x1da0>
    ff70: 90000009     	adrp	x9, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000ff70:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x874
    ff74: 53087d02     	lsr	w2, w8, #8
    ff78: b9400128     	ldr	w8, [x9]
		000000000000ff78:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x874
    ff7c: 6b02011f     	cmp	w8, w2
    ff80: 54003621     	b.ne	0x10644 <syna_cdev_ioctls+0x1de0>
    ff84: 39402aa8     	ldrb	w8, [x21, #0xa]
    ff88: 90000009     	adrp	x9, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000ff88:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x878
    ff8c: 531e7502     	lsl	w2, w8, #2
    ff90: b9000122     	str	w2, [x9]
		000000000000ff90:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x878
    ff94: 35003668     	cbnz	w8, 0x10660 <syna_cdev_ioctls+0x1dfc>
    ff98: 2a1f03f6     	mov	w22, wzr
    ff9c: 39400302     	ldrb	w2, [x24]
		000000000000ff9c:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x808
    ffa0: 7100045f     	cmp	w2, #0x1
    ffa4: 54001681     	b.ne	0x10274 <syna_cdev_ioctls+0x1a10>
    ffa8: 2a1f03e8     	mov	w8, wzr
    ffac: 90000000     	adrp	x0, 0xf000 <syna_cdev_ioctls+0x79c>
		000000000000ffac:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7d8
    ffb0: 91000000     	add	x0, x0, #0x0
		000000000000ffb0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x7d8
    ffb4: 3900c008     	strb	w8, [x0, #0x30]
    ffb8: 94000000     	bl	0xffb8 <syna_cdev_ioctls+0x1754>
		000000000000ffb8:  R_AARCH64_CALL26	mutex_unlock
    ffbc: 37f804d6     	tbnz	w22, #0x1f, 0x10054 <syna_cdev_ioctls+0x17f0>
    ffc0: 39411b48     	ldrb	w8, [x26, #0x46]
    ffc4: 37280088     	tbnz	w8, #0x5, 0xffd4 <syna_cdev_ioctls+0x1770>
    ffc8: f9400349     	ldr	x9, [x26]
    ffcc: aa1303e8     	mov	x8, x19
    ffd0: 36d00049     	tbz	w9, #0x1a, 0xffd8 <syna_cdev_ioctls+0x1774>
    ffd4: 8a9b2268     	and	x8, x19, x27, asr #8
    ffd8: b27c8be9     	mov	x9, #0x7ffffffff0       // =549755813872
    ffdc: eb09011f     	cmp	x8, x9
    ffe0: 540005e8     	b.hi	0x1009c <syna_cdev_ioctls+0x1838>
    ffe4: d503201f     	nop
    ffe8: d53b4228     	mrs	x8, DAIF
    ffec: d50343df     	msr	DAIFSet, #0x3
    fff0: f9400749     	ldr	x9, [x26, #0x8]
    fff4: d538202a     	mrs	x10, TTBR1_EL1
    fff8: aa0903eb     	mov	x11, x9
    fffc: b340bd4b     	bfxil	x11, x10, #0, #48
   10000: d518202b     	msr	TTBR1_EL1, x11
   10004: d5182009     	msr	TTBR0_EL1, x9
   10008: d5033fdf     	isb
   1000c: d51b4228     	msr	DAIF, x8
   10010: 9248fa60     	and	x0, x19, #0xff7fffffffffffff
   10014: 910023e1     	add	x1, sp, #0x8
   10018: 52800202     	mov	w2, #0x10               // =16
   1001c: 94000000     	bl	0x1001c <syna_cdev_ioctls+0x17b8>
		000000000001001c:  R_AARCH64_CALL26	__arch_copy_to_user
   10020: aa0003e2     	mov	x2, x0
   10024: d503201f     	nop
   10028: d53b4228     	mrs	x8, DAIF
   1002c: d50343df     	msr	DAIFSet, #0x3
   10030: d5382029     	mrs	x9, TTBR1_EL1
   10034: 9240bd29     	and	x9, x9, #0xffffffffffff
   10038: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   1003c: d518200a     	msr	TTBR0_EL1, x10
   10040: d5182029     	msr	TTBR1_EL1, x9
   10044: d5033fdf     	isb
   10048: d51b4228     	msr	DAIF, x8
   1004c: 350002a2     	cbnz	w2, 0x100a0 <syna_cdev_ioctls+0x183c>
   10050: 2a1f03f6     	mov	w22, wzr
   10054: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010054:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x810
   10058: 91000000     	add	x0, x0, #0x0
		0000000000010058:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x810
   1005c: 94000000     	bl	0x1005c <syna_cdev_ioctls+0x17f8>
		000000000001005c:  R_AARCH64_CALL26	mutex_unlock
   10060: d5384108     	mrs	x8, SP_EL0
   10064: f9438908     	ldr	x8, [x8, #0x710]
   10068: f85f03a9     	ldur	x9, [x29, #-0x10]
   1006c: eb09011f     	cmp	x8, x9
   10070: 54004a41     	b.ne	0x109b8 <syna_cdev_ioctls+0x2154>
   10074: 93407ec0     	sxtw	x0, w22
   10078: a9584ff4     	ldp	x20, x19, [sp, #0x180]
   1007c: a95757f6     	ldp	x22, x21, [sp, #0x170]
   10080: a9565ff8     	ldp	x24, x23, [sp, #0x160]
   10084: a95567fa     	ldp	x26, x25, [sp, #0x150]
   10088: a9546ffc     	ldp	x28, x27, [sp, #0x140]
   1008c: a9537bfd     	ldp	x29, x30, [sp, #0x130]
   10090: 910643ff     	add	sp, sp, #0x190
   10094: d50323bf     	autiasp
   10098: d65f03c0     	ret
   1009c: 52800202     	mov	w2, #0x10               // =16
   100a0: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000100a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa705
   100a4: 91000000     	add	x0, x0, #0x0
		00000000000100a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa705
   100a8: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000100a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2690
   100ac: 91000021     	add	x1, x1, #0x0
		00000000000100ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2690
   100b0: 94000000     	bl	0x100b0 <syna_cdev_ioctls+0x184c>
		00000000000100b0:  R_AARCH64_CALL26	_printk
   100b4: 12800676     	mov	w22, #-0x34             // =-52
   100b8: 17ffffe7     	b	0x10054 <syna_cdev_ioctls+0x17f0>
   100bc: 12800db6     	mov	w22, #-0x6e             // =-110
   100c0: 17ffffbf     	b	0xffbc <syna_cdev_ioctls+0x1758>
   100c4: b9000bff     	str	wzr, [sp, #0x8]
   100c8: 12800db6     	mov	w22, #-0x6e             // =-110
   100cc: 17ffffbc     	b	0xffbc <syna_cdev_ioctls+0x1758>
   100d0: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000100d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ca9
   100d4: 91000000     	add	x0, x0, #0x0
		00000000000100d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ca9
   100d8: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000100d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2742
   100dc: 91000021     	add	x1, x1, #0x0
		00000000000100dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2742
   100e0: 94000000     	bl	0x100e0 <syna_cdev_ioctls+0x187c>
		00000000000100e0:  R_AARCH64_CALL26	_printk
   100e4: 12800676     	mov	w22, #-0x34             // =-52
   100e8: 17fffcca     	b	0xf410 <syna_cdev_ioctls+0xbac>
   100ec: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000100ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ad5
   100f0: 91000000     	add	x0, x0, #0x0
		00000000000100f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ad5
   100f4: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000100f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa745
   100f8: 91000021     	add	x1, x1, #0x0
		00000000000100f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa745
   100fc: 94000000     	bl	0x100fc <syna_cdev_ioctls+0x1898>
		00000000000100fc:  R_AARCH64_CALL26	_printk
   10100: 39411b48     	ldrb	w8, [x26, #0x46]
   10104: 362ff628     	tbz	w8, #0x5, 0xffc8 <syna_cdev_ioctls+0x1764>
   10108: 17ffffb3     	b	0xffd4 <syna_cdev_ioctls+0x1770>
   1010c: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		000000000001010c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4048
   10110: 91000000     	add	x0, x0, #0x0
		0000000000010110:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4048
   10114: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010114:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x387e
   10118: 91000021     	add	x1, x1, #0x0
		0000000000010118:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x387e
   1011c: 17fffe55     	b	0xfa70 <syna_cdev_ioctls+0x120c>
   10120: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010120:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc16d
   10124: 91000000     	add	x0, x0, #0x0
		0000000000010124:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc16d
   10128: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010128:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8b7f
   1012c: 91000021     	add	x1, x1, #0x0
		000000000001012c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8b7f
   10130: 1400012b     	b	0x105dc <syna_cdev_ioctls+0x1d78>
   10134: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010134:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc16d
   10138: 91000000     	add	x0, x0, #0x0
		0000000000010138:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc16d
   1013c: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		000000000001013c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb433
   10140: 91000021     	add	x1, x1, #0x0
		0000000000010140:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb433
   10144: 14000126     	b	0x105dc <syna_cdev_ioctls+0x1d78>
   10148: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010148:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc16d
   1014c: 91000000     	add	x0, x0, #0x0
		000000000001014c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc16d
   10150: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8195
   10154: 91000021     	add	x1, x1, #0x0
		0000000000010154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8195
   10158: 14000121     	b	0x105dc <syna_cdev_ioctls+0x1d78>
   1015c: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		000000000001015c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc16d
   10160: 91000000     	add	x0, x0, #0x0
		0000000000010160:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc16d
   10164: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010164:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x97fd
   10168: 91000021     	add	x1, x1, #0x0
		0000000000010168:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x97fd
   1016c: 1400011c     	b	0x105dc <syna_cdev_ioctls+0x1d78>
   10170: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010170:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7b24
   10174: 91000000     	add	x0, x0, #0x0
		0000000000010174:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7b24
   10178: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010178:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2742
   1017c: 91000021     	add	x1, x1, #0x0
		000000000001017c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2742
   10180: 14000005     	b	0x10194 <syna_cdev_ioctls+0x1930>
   10184: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010184:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7b24
   10188: 91000000     	add	x0, x0, #0x0
		0000000000010188:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7b24
   1018c: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		000000000001018c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c1
   10190: 91000021     	add	x1, x1, #0x0
		0000000000010190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c1
   10194: 52800283     	mov	w3, #0x14               // =20
   10198: 14000012     	b	0x101e0 <syna_cdev_ioctls+0x197c>
   1019c: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		000000000001019c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x462f
   101a0: 91000000     	add	x0, x0, #0x0
		00000000000101a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x462f
   101a4: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000101a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81a
   101a8: 91000021     	add	x1, x1, #0x0
		00000000000101a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81a
   101ac: 14000023     	b	0x10238 <syna_cdev_ioctls+0x19d4>
   101b0: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000101b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3918
   101b4: 91000000     	add	x0, x0, #0x0
		00000000000101b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3918
   101b8: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000101b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9882
   101bc: 91000021     	add	x1, x1, #0x0
		00000000000101bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9882
   101c0: 2a1703e2     	mov	w2, w23
   101c4: 140000b1     	b	0x10488 <syna_cdev_ioctls+0x1c24>
   101c8: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000101c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d84
   101cc: 91000000     	add	x0, x0, #0x0
		00000000000101cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d84
   101d0: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000101d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8749
   101d4: 91000021     	add	x1, x1, #0x0
		00000000000101d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8749
   101d8: 2a1703e2     	mov	w2, w23
   101dc: 2a1603e3     	mov	w3, w22
   101e0: 94000000     	bl	0x101e0 <syna_cdev_ioctls+0x197c>
		00000000000101e0:  R_AARCH64_CALL26	_printk
   101e4: 128002b6     	mov	w22, #-0x16             // =-22
   101e8: 17ffff9b     	b	0x10054 <syna_cdev_ioctls+0x17f0>
   101ec: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000101ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f6f
   101f0: 91000000     	add	x0, x0, #0x0
		00000000000101f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f6f
   101f4: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000101f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8b7f
   101f8: 91000021     	add	x1, x1, #0x0
		00000000000101f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8b7f
   101fc: 1400000f     	b	0x10238 <syna_cdev_ioctls+0x19d4>
   10200: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010200:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x207e
   10204: 91000000     	add	x0, x0, #0x0
		0000000000010204:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x207e
   10208: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010208:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb433
   1020c: 91000021     	add	x1, x1, #0x0
		000000000001020c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb433
   10210: 1400000a     	b	0x10238 <syna_cdev_ioctls+0x19d4>
   10214: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010214:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f38
   10218: 91000000     	add	x0, x0, #0x0
		0000000000010218:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f38
   1021c: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		000000000001021c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8195
   10220: 91000021     	add	x1, x1, #0x0
		0000000000010220:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8195
   10224: 14000005     	b	0x10238 <syna_cdev_ioctls+0x19d4>
   10228: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010228:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f6f
   1022c: 91000000     	add	x0, x0, #0x0
		000000000001022c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f6f
   10230: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010230:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x97fd
   10234: 91000021     	add	x1, x1, #0x0
		0000000000010234:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x97fd
   10238: 94000000     	bl	0x10238 <syna_cdev_ioctls+0x19d4>
		0000000000010238:  R_AARCH64_CALL26	_printk
   1023c: 2a1f03f6     	mov	w22, wzr
   10240: 17ffff5f     	b	0xffbc <syna_cdev_ioctls+0x1758>
   10244: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010244:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   10248: 91000000     	add	x0, x0, #0x0
		0000000000010248:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1024c: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		000000000001024c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   10250: 91000021     	add	x1, x1, #0x0
		0000000000010250:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   10254: 94000000     	bl	0x10254 <syna_cdev_ioctls+0x19f0>
		0000000000010254:  R_AARCH64_CALL26	_printk
   10258: 17fffc06     	b	0xf270 <syna_cdev_ioctls+0xa0c>
   1025c: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		000000000001025c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   10260: 91000000     	add	x0, x0, #0x0
		0000000000010260:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   10264: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010264:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   10268: 91000021     	add	x1, x1, #0x0
		0000000000010268:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   1026c: 94000000     	bl	0x1026c <syna_cdev_ioctls+0x1a08>
		000000000001026c:  R_AARCH64_CALL26	_printk
   10270: 17fffceb     	b	0xf61c <syna_cdev_ioctls+0xdb8>
   10274: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010274:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   10278: 91000000     	add	x0, x0, #0x0
		0000000000010278:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1027c: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		000000000001027c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   10280: 91000021     	add	x1, x1, #0x0
		0000000000010280:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   10284: 94000000     	bl	0x10284 <syna_cdev_ioctls+0x1a20>
		0000000000010284:  R_AARCH64_CALL26	_printk
   10288: 39400308     	ldrb	w8, [x24]
		0000000000010288:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x808
   1028c: 51000508     	sub	w8, w8, #0x1
   10290: 17ffff47     	b	0xffac <syna_cdev_ioctls+0x1748>
   10294: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdfd
   10298: 91000000     	add	x0, x0, #0x0
		0000000000010298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdfd
   1029c: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		000000000001029c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81a
   102a0: 91000021     	add	x1, x1, #0x0
		00000000000102a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81a
   102a4: 2a1703e2     	mov	w2, w23
   102a8: 52802003     	mov	w3, #0x100              // =256
   102ac: 14000024     	b	0x1033c <syna_cdev_ioctls+0x1ad8>
   102b0: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000102b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x91ee
   102b4: 91000000     	add	x0, x0, #0x0
		00000000000102b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x91ee
   102b8: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000102b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9882
   102bc: 91000021     	add	x1, x1, #0x0
		00000000000102bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9882
   102c0: 94000000     	bl	0x102c0 <syna_cdev_ioctls+0x1a5c>
		00000000000102c0:  R_AARCH64_CALL26	_printk
   102c4: 12800256     	mov	w22, #-0x13             // =-19
   102c8: 17ffff3d     	b	0xffbc <syna_cdev_ioctls+0x1758>
   102cc: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000102cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4070
   102d0: 91000000     	add	x0, x0, #0x0
		00000000000102d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4070
   102d4: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000102d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb433
   102d8: 91000021     	add	x1, x1, #0x0
		00000000000102d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb433
   102dc: 2a1703e2     	mov	w2, w23
   102e0: 1400006a     	b	0x10488 <syna_cdev_ioctls+0x1c24>
   102e4: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000102e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4070
   102e8: 91000000     	add	x0, x0, #0x0
		00000000000102e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4070
   102ec: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000102ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x97fd
   102f0: 91000021     	add	x1, x1, #0x0
		00000000000102f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x97fd
   102f4: 2a1703e2     	mov	w2, w23
   102f8: 14000064     	b	0x10488 <syna_cdev_ioctls+0x1c24>
   102fc: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000102fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbb01
   10300: 91000000     	add	x0, x0, #0x0
		0000000000010300:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbb01
   10304: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010304:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81a
   10308: 91000021     	add	x1, x1, #0x0
		0000000000010308:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81a
   1030c: 14000046     	b	0x10424 <syna_cdev_ioctls+0x1bc0>
   10310: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010310:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3918
   10314: 91000000     	add	x0, x0, #0x0
		0000000000010314:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3918
   10318: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010318:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8b7f
   1031c: 91000021     	add	x1, x1, #0x0
		000000000001031c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8b7f
   10320: 2a1703e2     	mov	w2, w23
   10324: 14000059     	b	0x10488 <syna_cdev_ioctls+0x1c24>
   10328: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81b0
   1032c: 91000000     	add	x0, x0, #0x0
		000000000001032c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81b0
   10330: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8195
   10334: 91000021     	add	x1, x1, #0x0
		0000000000010334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8195
   10338: 2a1703e2     	mov	w2, w23
   1033c: 94000000     	bl	0x1033c <syna_cdev_ioctls+0x1ad8>
		000000000001033c:  R_AARCH64_CALL26	_printk
   10340: 128002b6     	mov	w22, #-0x16             // =-22
   10344: 17ffff1e     	b	0xffbc <syna_cdev_ioctls+0x1758>
   10348: 528000a0     	mov	w0, #0x5                // =5
   1034c: f100181f     	cmp	x0, #0x6
   10350: 54003362     	b.hs	0x109bc <syna_cdev_ioctls+0x2158>
   10354: 910083e8     	add	x8, sp, #0x20
   10358: aa0003f4     	mov	x20, x0
   1035c: 2a1f03e1     	mov	w1, wzr
   10360: cb000108     	sub	x8, x8, x0
   10364: aa1403e2     	mov	x2, x20
   10368: 91001500     	add	x0, x8, #0x5
   1036c: 94000000     	bl	0x1036c <syna_cdev_ioctls+0x1b08>
		000000000001036c:  R_AARCH64_CALL26	memset
   10370: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x336c
   10374: 91000000     	add	x0, x0, #0x0
		0000000000010374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x336c
   10378: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9882
   1037c: 91000021     	add	x1, x1, #0x0
		000000000001037c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9882
   10380: 1400003a     	b	0x10468 <syna_cdev_ioctls+0x1c04>
   10384: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010384:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   10388: 91000000     	add	x0, x0, #0x0
		0000000000010388:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   1038c: 14000084     	b	0x1059c <syna_cdev_ioctls+0x1d38>
   10390: cb0002c8     	sub	x8, x22, x0
   10394: 52802009     	mov	w9, #0x100              // =256
   10398: aa0003e2     	mov	x2, x0
   1039c: eb080129     	subs	x9, x9, x8
   103a0: 9a8933e1     	csel	x1, xzr, x9, lo
   103a4: eb00003f     	cmp	x1, x0
   103a8: 54003123     	b.lo	0x109cc <syna_cdev_ioctls+0x2168>
   103ac: 910083e9     	add	x9, sp, #0x20
   103b0: 2a1f03e1     	mov	w1, wzr
   103b4: aa0203f6     	mov	x22, x2
   103b8: 8b080120     	add	x0, x9, x8
   103bc: 94000000     	bl	0x103bc <syna_cdev_ioctls+0x1b58>
		00000000000103bc:  R_AARCH64_CALL26	memset
   103c0: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000103c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x336c
   103c4: 91000000     	add	x0, x0, #0x0
		00000000000103c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x336c
   103c8: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000103c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81a
   103cc: 91000021     	add	x1, x1, #0x0
		00000000000103cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81a
   103d0: 2a1603e2     	mov	w2, w22
   103d4: 14000026     	b	0x1046c <syna_cdev_ioctls+0x1c08>
   103d8: 52800082     	mov	w2, #0x4                // =4
   103dc: f100145f     	cmp	x2, #0x5
   103e0: 54002f02     	b.hs	0x109c0 <syna_cdev_ioctls+0x215c>
   103e4: 910073e8     	add	x8, sp, #0x1c
   103e8: 2a1f03e1     	mov	w1, wzr
   103ec: cb020108     	sub	x8, x8, x2
   103f0: 91001100     	add	x0, x8, #0x4
   103f4: 94000000     	bl	0x103f4 <syna_cdev_ioctls+0x1b90>
		00000000000103f4:  R_AARCH64_CALL26	memset
   103f8: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000103f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9851
   103fc: 91000000     	add	x0, x0, #0x0
		00000000000103fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9851
   10400: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010400:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8b7f
   10404: 91000021     	add	x1, x1, #0x0
		0000000000010404:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8b7f
   10408: 94000000     	bl	0x10408 <syna_cdev_ioctls+0x1ba4>
		0000000000010408:  R_AARCH64_CALL26	_printk
   1040c: 12800676     	mov	w22, #-0x34             // =-52
   10410: 17fffeeb     	b	0xffbc <syna_cdev_ioctls+0x1758>
   10414: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010414:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26be
   10418: 91000000     	add	x0, x0, #0x0
		0000000000010418:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26be
   1041c: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		000000000001041c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8195
   10420: 91000021     	add	x1, x1, #0x0
		0000000000010420:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8195
   10424: 94000000     	bl	0x10424 <syna_cdev_ioctls+0x1bc0>
		0000000000010424:  R_AARCH64_CALL26	_printk
   10428: 128002b6     	mov	w22, #-0x16             // =-22
   1042c: 17fffee4     	b	0xffbc <syna_cdev_ioctls+0x1758>
   10430: 52800080     	mov	w0, #0x4                // =4
   10434: f100141f     	cmp	x0, #0x5
   10438: 54002c22     	b.hs	0x109bc <syna_cdev_ioctls+0x2158>
   1043c: 910073e8     	add	x8, sp, #0x1c
   10440: aa0003f4     	mov	x20, x0
   10444: 2a1f03e1     	mov	w1, wzr
   10448: cb000108     	sub	x8, x8, x0
   1044c: aa1403e2     	mov	x2, x20
   10450: 91001100     	add	x0, x8, #0x4
   10454: 94000000     	bl	0x10454 <syna_cdev_ioctls+0x1bf0>
		0000000000010454:  R_AARCH64_CALL26	memset
   10458: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010458:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x336c
   1045c: 91000000     	add	x0, x0, #0x0
		000000000001045c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x336c
   10460: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010460:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x97fd
   10464: 91000021     	add	x1, x1, #0x0
		0000000000010464:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x97fd
   10468: 2a1403e2     	mov	w2, w20
   1046c: 94000000     	bl	0x1046c <syna_cdev_ioctls+0x1c08>
		000000000001046c:  R_AARCH64_CALL26	_printk
   10470: 12800676     	mov	w22, #-0x34             // =-52
   10474: 17fffed2     	b	0xffbc <syna_cdev_ioctls+0x1758>
   10478: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010478:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x40a3
   1047c: 91000000     	add	x0, x0, #0x0
		000000000001047c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x40a3
   10480: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010480:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb433
   10484: 91000021     	add	x1, x1, #0x0
		0000000000010484:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb433
   10488: 94000000     	bl	0x10488 <syna_cdev_ioctls+0x1c24>
		0000000000010488:  R_AARCH64_CALL26	_printk
   1048c: 128002b6     	mov	w22, #-0x16             // =-22
   10490: 17fffecb     	b	0xffbc <syna_cdev_ioctls+0x1758>
   10494: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010494:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   10498: 91000000     	add	x0, x0, #0x0
		0000000000010498:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1049c: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		000000000001049c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   104a0: 91000021     	add	x1, x1, #0x0
		00000000000104a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   104a4: 94000000     	bl	0x104a4 <syna_cdev_ioctls+0x1c40>
		00000000000104a4:  R_AARCH64_CALL26	_printk
   104a8: 17fffa53     	b	0xedf4 <syna_cdev_ioctls+0x590>
   104ac: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000104ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   104b0: 91000000     	add	x0, x0, #0x0
		00000000000104b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   104b4: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000104b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   104b8: 91000021     	add	x1, x1, #0x0
		00000000000104b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   104bc: 94000000     	bl	0x104bc <syna_cdev_ioctls+0x1c58>
		00000000000104bc:  R_AARCH64_CALL26	_printk
   104c0: 39400288     	ldrb	w8, [x20]
		00000000000104c0:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x808
   104c4: 51000508     	sub	w8, w8, #0x1
   104c8: 17fffe87     	b	0xfee4 <syna_cdev_ioctls+0x1680>
   104cc: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000104cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   104d0: 91000000     	add	x0, x0, #0x0
		00000000000104d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   104d4: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000104d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   104d8: 91000021     	add	x1, x1, #0x0
		00000000000104d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   104dc: 94000000     	bl	0x104dc <syna_cdev_ioctls+0x1c78>
		00000000000104dc:  R_AARCH64_CALL26	_printk
   104e0: 17fffe87     	b	0xfefc <syna_cdev_ioctls+0x1698>
   104e4: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000104e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   104e8: 91000000     	add	x0, x0, #0x0
		00000000000104e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   104ec: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000104ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   104f0: 91000021     	add	x1, x1, #0x0
		00000000000104f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   104f4: 94000000     	bl	0x104f4 <syna_cdev_ioctls+0x1c90>
		00000000000104f4:  R_AARCH64_CALL26	_printk
   104f8: 17fffeb1     	b	0xffbc <syna_cdev_ioctls+0x1758>
   104fc: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000104fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6382
   10500: 91000000     	add	x0, x0, #0x0
		0000000000010500:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6382
   10504: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010504:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb433
   10508: 91000021     	add	x1, x1, #0x0
		0000000000010508:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb433
   1050c: 2a1903e2     	mov	w2, w25
   10510: 94000000     	bl	0x10510 <syna_cdev_ioctls+0x1cac>
		0000000000010510:  R_AARCH64_CALL26	_printk
   10514: 12800676     	mov	w22, #-0x34             // =-52
   10518: 17fffe6e     	b	0xfed0 <syna_cdev_ioctls+0x166c>
   1051c: 39400282     	ldrb	w2, [x20]
   10520: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010520:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56fd
   10524: 91000000     	add	x0, x0, #0x0
		0000000000010524:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56fd
   10528: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010528:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb433
   1052c: 91000021     	add	x1, x1, #0x0
		000000000001052c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb433
   10530: 2a1903e3     	mov	w3, w25
   10534: 94000000     	bl	0x10534 <syna_cdev_ioctls+0x1cd0>
		0000000000010534:  R_AARCH64_CALL26	_printk
   10538: 17fffe05     	b	0xfd4c <syna_cdev_ioctls+0x14e8>
   1053c: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		000000000001053c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d2c
   10540: 91000000     	add	x0, x0, #0x0
		0000000000010540:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d2c
   10544: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010544:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb433
   10548: 91000021     	add	x1, x1, #0x0
		0000000000010548:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb433
   1054c: 2a0403e3     	mov	w3, w4
   10550: 94000000     	bl	0x10550 <syna_cdev_ioctls+0x1cec>
		0000000000010550:  R_AARCH64_CALL26	_printk
   10554: 12800956     	mov	w22, #-0x4b             // =-75
   10558: 17fffe5e     	b	0xfed0 <syna_cdev_ioctls+0x166c>
   1055c: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		000000000001055c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ca9
   10560: 91000000     	add	x0, x0, #0x0
		0000000000010560:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ca9
   10564: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010564:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb433
   10568: 91000021     	add	x1, x1, #0x0
		0000000000010568:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb433
   1056c: 94000000     	bl	0x1056c <syna_cdev_ioctls+0x1d08>
		000000000001056c:  R_AARCH64_CALL26	_printk
   10570: 12800676     	mov	w22, #-0x34             // =-52
   10574: 17fffe57     	b	0xfed0 <syna_cdev_ioctls+0x166c>
   10578: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010578:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1057c: 91000000     	add	x0, x0, #0x0
		000000000001057c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   10580: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010580:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   10584: 91000021     	add	x1, x1, #0x0
		0000000000010584:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   10588: 94000000     	bl	0x10588 <syna_cdev_ioctls+0x1d24>
		0000000000010588:  R_AARCH64_CALL26	_printk
   1058c: 94000000     	bl	0x1058c <syna_cdev_ioctls+0x1d28>
		000000000001058c:  R_AARCH64_CALL26	syna_request_managed_device
   10590: b5ff9960     	cbnz	x0, 0xf8bc <syna_cdev_ioctls+0x1058>
   10594: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   10598: 91000000     	add	x0, x0, #0x0
		0000000000010598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1059c: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		000000000001059c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   105a0: 91000021     	add	x1, x1, #0x0
		00000000000105a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   105a4: 94000000     	bl	0x105a4 <syna_cdev_ioctls+0x1d40>
		00000000000105a4:  R_AARCH64_CALL26	_printk
   105a8: f902d69f     	str	xzr, [x20, #0x5a8]
   105ac: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000105ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b1e
   105b0: 91000000     	add	x0, x0, #0x0
		00000000000105b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b1e
   105b4: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000105b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8749
   105b8: 91000021     	add	x1, x1, #0x0
		00000000000105b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8749
   105bc: 2a1603e2     	mov	w2, w22
   105c0: 94000000     	bl	0x105c0 <syna_cdev_ioctls+0x1d5c>
		00000000000105c0:  R_AARCH64_CALL26	_printk
   105c4: 12800176     	mov	w22, #-0xc              // =-12
   105c8: 17fffea3     	b	0x10054 <syna_cdev_ioctls+0x17f0>
   105cc: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000105cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc16d
   105d0: 91000000     	add	x0, x0, #0x0
		00000000000105d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc16d
   105d4: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000105d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9882
   105d8: 91000021     	add	x1, x1, #0x0
		00000000000105d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9882
   105dc: 94000000     	bl	0x105dc <syna_cdev_ioctls+0x1d78>
		00000000000105dc:  R_AARCH64_CALL26	_printk
   105e0: 128000b6     	mov	w22, #-0x6              // =-6
   105e4: 17fffe76     	b	0xffbc <syna_cdev_ioctls+0x1758>
   105e8: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000105e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc16d
   105ec: 91000000     	add	x0, x0, #0x0
		00000000000105ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc16d
   105f0: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000105f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8749
   105f4: 91000021     	add	x1, x1, #0x0
		00000000000105f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8749
   105f8: 94000000     	bl	0x105f8 <syna_cdev_ioctls+0x1d94>
		00000000000105f8:  R_AARCH64_CALL26	_printk
   105fc: 128000b6     	mov	w22, #-0x6              // =-6
   10600: 17fffe95     	b	0x10054 <syna_cdev_ioctls+0x17f0>
   10604: 90000008     	adrp	x8, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc0ad
   10608: 91000108     	add	x8, x8, #0x0
		0000000000010608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc0ad
   1060c: 7100029f     	cmp	w20, #0x0
   10610: 90000009     	adrp	x9, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010610:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbad6
   10614: 91000129     	add	x9, x9, #0x0
		0000000000010614:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbad6
   10618: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010618:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xae75
   1061c: 91000000     	add	x0, x0, #0x0
		000000000001061c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xae75
   10620: 9a881122     	csel	x2, x9, x8, ne
   10624: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010624:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c1
   10628: 91000021     	add	x1, x1, #0x0
		0000000000010628:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c1
   1062c: 94000000     	bl	0x1062c <syna_cdev_ioctls+0x1dc8>
		000000000001062c:  R_AARCH64_CALL26	_printk
   10630: aa1603e0     	mov	x0, x22
   10634: 2a1403e1     	mov	w1, w20
   10638: 94000000     	bl	0x10638 <syna_cdev_ioctls+0x1dd4>
		0000000000010638:  R_AARCH64_CALL26	syna_tcm_enable_predict_reading
   1063c: 794012a8     	ldrh	w8, [x21, #0x8]
   10640: 17fffe4c     	b	0xff70 <syna_cdev_ioctls+0x170c>
   10644: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010644:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe3d
   10648: 91000000     	add	x0, x0, #0x0
		0000000000010648:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe3d
   1064c: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		000000000001064c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c1
   10650: 91000021     	add	x1, x1, #0x0
		0000000000010650:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c1
   10654: b9000122     	str	w2, [x9]
		0000000000010654:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x874
   10658: 94000000     	bl	0x10658 <syna_cdev_ioctls+0x1df4>
		0000000000010658:  R_AARCH64_CALL26	_printk
   1065c: 17fffe4a     	b	0xff84 <syna_cdev_ioctls+0x1720>
   10660: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010660:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5228
   10664: 91000000     	add	x0, x0, #0x0
		0000000000010664:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5228
   10668: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010668:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c1
   1066c: 91000021     	add	x1, x1, #0x0
		000000000001066c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c1
   10670: 94000000     	bl	0x10670 <syna_cdev_ioctls+0x1e0c>
		0000000000010670:  R_AARCH64_CALL26	_printk
   10674: 17fffe49     	b	0xff98 <syna_cdev_ioctls+0x1734>
   10678: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010678:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d2c
   1067c: 91000000     	add	x0, x0, #0x0
		000000000001067c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d2c
   10680: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010680:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x97fd
   10684: 91000021     	add	x1, x1, #0x0
		0000000000010684:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x97fd
   10688: 2a1703e2     	mov	w2, w23
   1068c: 2a1903e3     	mov	w3, w25
   10690: 94000000     	bl	0x10690 <syna_cdev_ioctls+0x1e2c>
		0000000000010690:  R_AARCH64_CALL26	_printk
   10694: 12800956     	mov	w22, #-0x4b             // =-75
   10698: 17fffe49     	b	0xffbc <syna_cdev_ioctls+0x1758>
   1069c: aa1803e0     	mov	x0, x24
   106a0: 94000000     	bl	0x106a0 <syna_cdev_ioctls+0x1e3c>
		00000000000106a0:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
   106a4: 17fffac2     	b	0xf1ac <syna_cdev_ioctls+0x948>
   106a8: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000106a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56c5
   106ac: 91000000     	add	x0, x0, #0x0
		00000000000106ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56c5
   106b0: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000106b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x97fd
   106b4: 91000021     	add	x1, x1, #0x0
		00000000000106b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x97fd
   106b8: 2a1903e2     	mov	w2, w25
   106bc: 94000000     	bl	0x106bc <syna_cdev_ioctls+0x1e58>
		00000000000106bc:  R_AARCH64_CALL26	_printk
   106c0: 12800676     	mov	w22, #-0x34             // =-52
   106c4: 17fffaae     	b	0xf17c <syna_cdev_ioctls+0x918>
   106c8: f9402308     	ldr	x8, [x24, #0x40]
   106cc: 91002300     	add	x0, x24, #0x8
   106d0: 52800021     	mov	w1, #0x1                // =1
   106d4: b85fc110     	ldur	w16, [x8, #-0x4]
   106d8: 728c3631     	movk	w17, #0x61b1
   106dc: 72a685d1     	movk	w17, #0x342e, lsl #16
   106e0: 6b11021f     	cmp	w16, w17
   106e4: 54000040     	b.eq	0x106ec <syna_cdev_ioctls+0x1e88>
   106e8: d4304500     	brk	#0x8228
   106ec: d63f0100     	blr	x8
   106f0: 37f80480     	tbnz	w0, #0x1f, 0x10780 <syna_cdev_ioctls+0x1f1c>
   106f4: f9400289     	ldr	x9, [x20]
   106f8: b94023e8     	ldr	w8, [sp, #0x20]
   106fc: b9420d29     	ldr	w9, [x9, #0x20c]
   10700: 6b09011f     	cmp	w8, w9
   10704: 54000062     	b.hs	0x10710 <syna_cdev_ioctls+0x1eac>
   10708: 2a0903e8     	mov	w8, w9
   1070c: b90023e9     	str	w9, [sp, #0x20]
   10710: 90000014     	adrp	x20, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010710:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8195
   10714: 91000294     	add	x20, x20, #0x0
		0000000000010714:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8195
   10718: 90000015     	adrp	x21, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010718:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x870
   1071c: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		000000000001071c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fc0
   10720: 91000000     	add	x0, x0, #0x0
		0000000000010720:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fc0
   10724: aa1403e1     	mov	x1, x20
   10728: b90002a8     	str	w8, [x21]
		0000000000010728:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x870
   1072c: 94000000     	bl	0x1072c <syna_cdev_ioctls+0x1ec8>
		000000000001072c:  R_AARCH64_CALL26	_printk
   10730: b94002a2     	ldr	w2, [x21]
		0000000000010730:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x870
   10734: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010734:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb406
   10738: 91000000     	add	x0, x0, #0x0
		0000000000010738:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb406
   1073c: aa1403e1     	mov	x1, x20
   10740: 94000000     	bl	0x10740 <syna_cdev_ioctls+0x1edc>
		0000000000010740:  R_AARCH64_CALL26	_printk
   10744: 17fffd4d     	b	0xfc78 <syna_cdev_ioctls+0x1414>
   10748: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010748:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   1074c: 91000000     	add	x0, x0, #0x0
		000000000001074c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   10750: 14000064     	b	0x108e0 <syna_cdev_ioctls+0x207c>
   10754: f9402308     	ldr	x8, [x24, #0x40]
   10758: 91002300     	add	x0, x24, #0x8
   1075c: 52800021     	mov	w1, #0x1                // =1
   10760: b85fc110     	ldur	w16, [x8, #-0x4]
   10764: 728c3631     	movk	w17, #0x61b1
   10768: 72a685d1     	movk	w17, #0x342e, lsl #16
   1076c: 6b11021f     	cmp	w16, w17
   10770: 54000040     	b.eq	0x10778 <syna_cdev_ioctls+0x1f14>
   10774: d4304500     	brk	#0x8228
   10778: d63f0100     	blr	x8
   1077c: 36f80f20     	tbz	w0, #0x1f, 0x10960 <syna_cdev_ioctls+0x20fc>
   10780: 2a0003f6     	mov	w22, w0
   10784: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26e5
   10788: 91000000     	add	x0, x0, #0x0
		0000000000010788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26e5
   1078c: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		000000000001078c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8195
   10790: 91000021     	add	x1, x1, #0x0
		0000000000010790:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8195
   10794: 94000000     	bl	0x10794 <syna_cdev_ioctls+0x1f30>
		0000000000010794:  R_AARCH64_CALL26	_printk
   10798: 17fffe09     	b	0xffbc <syna_cdev_ioctls+0x1758>
   1079c: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		000000000001079c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   107a0: 91000000     	add	x0, x0, #0x0
		00000000000107a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   107a4: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000107a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   107a8: 91000021     	add	x1, x1, #0x0
		00000000000107a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   107ac: 94000000     	bl	0x107ac <syna_cdev_ioctls+0x1f48>
		00000000000107ac:  R_AARCH64_CALL26	_printk
   107b0: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000107b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bef
   107b4: 91000000     	add	x0, x0, #0x0
		00000000000107b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bef
   107b8: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000107b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb433
   107bc: 91000021     	add	x1, x1, #0x0
		00000000000107bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb433
   107c0: 94000000     	bl	0x107c0 <syna_cdev_ioctls+0x1f5c>
		00000000000107c0:  R_AARCH64_CALL26	_printk
   107c4: 128002b6     	mov	w22, #-0x16             // =-22
   107c8: 17fffdc2     	b	0xfed0 <syna_cdev_ioctls+0x166c>
   107cc: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000107cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   107d0: 91000000     	add	x0, x0, #0x0
		00000000000107d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   107d4: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000107d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   107d8: 91000021     	add	x1, x1, #0x0
		00000000000107d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   107dc: 94000000     	bl	0x107dc <syna_cdev_ioctls+0x1f78>
		00000000000107dc:  R_AARCH64_CALL26	_printk
   107e0: 94000000     	bl	0x107e0 <syna_cdev_ioctls+0x1f7c>
		00000000000107e0:  R_AARCH64_CALL26	syna_request_managed_device
   107e4: b5ff56c0     	cbnz	x0, 0xf2bc <syna_cdev_ioctls+0xa58>
   107e8: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000107e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   107ec: 91000000     	add	x0, x0, #0x0
		00000000000107ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   107f0: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000107f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   107f4: 91000021     	add	x1, x1, #0x0
		00000000000107f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   107f8: 94000000     	bl	0x107f8 <syna_cdev_ioctls+0x1f94>
		00000000000107f8:  R_AARCH64_CALL26	_printk
   107fc: 90000008     	adrp	x8, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000107fc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7c8
   10800: f900011f     	str	xzr, [x8]
		0000000000010800:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x7c8
   10804: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010804:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   10808: 91000000     	add	x0, x0, #0x0
		0000000000010808:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   1080c: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		000000000001080c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   10810: 91000021     	add	x1, x1, #0x0
		0000000000010810:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   10814: 52800282     	mov	w2, #0x14               // =20
   10818: 94000000     	bl	0x10818 <syna_cdev_ioctls+0x1fb4>
		0000000000010818:  R_AARCH64_CALL26	_printk
   1081c: 90000008     	adrp	x8, 0x10000 <syna_cdev_ioctls+0x179c>
		000000000001081c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7d0
   10820: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010820:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62e7
   10824: 91000000     	add	x0, x0, #0x0
		0000000000010824:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62e7
   10828: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010828:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2742
   1082c: 91000021     	add	x1, x1, #0x0
		000000000001082c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2742
   10830: 52800282     	mov	w2, #0x14               // =20
   10834: f900011f     	str	xzr, [x8]
		0000000000010834:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x7d0
   10838: 94000000     	bl	0x10838 <syna_cdev_ioctls+0x1fd4>
		0000000000010838:  R_AARCH64_CALL26	_printk
   1083c: 12801e56     	mov	w22, #-0xf3             // =-243
   10840: 17fffaf4     	b	0xf410 <syna_cdev_ioctls+0xbac>
   10844: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010844:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   10848: 91000000     	add	x0, x0, #0x0
		0000000000010848:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1084c: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		000000000001084c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   10850: 91000021     	add	x1, x1, #0x0
		0000000000010850:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   10854: 94000000     	bl	0x10854 <syna_cdev_ioctls+0x1ff0>
		0000000000010854:  R_AARCH64_CALL26	_printk
   10858: 94000000     	bl	0x10858 <syna_cdev_ioctls+0x1ff4>
		0000000000010858:  R_AARCH64_CALL26	syna_request_managed_device
   1085c: b5ff7060     	cbnz	x0, 0xf668 <syna_cdev_ioctls+0xe04>
   10860: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010860:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   10864: 91000000     	add	x0, x0, #0x0
		0000000000010864:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   10868: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010868:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   1086c: 91000021     	add	x1, x1, #0x0
		000000000001086c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   10870: 94000000     	bl	0x10870 <syna_cdev_ioctls+0x200c>
		0000000000010870:  R_AARCH64_CALL26	_printk
   10874: 90000008     	adrp	x8, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010874:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7c8
   10878: f900011f     	str	xzr, [x8]
		0000000000010878:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x7c8
   1087c: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		000000000001087c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   10880: 91000000     	add	x0, x0, #0x0
		0000000000010880:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   10884: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010884:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   10888: 91000021     	add	x1, x1, #0x0
		0000000000010888:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   1088c: 52800282     	mov	w2, #0x14               // =20
   10890: 94000000     	bl	0x10890 <syna_cdev_ioctls+0x202c>
		0000000000010890:  R_AARCH64_CALL26	_printk
   10894: 90000008     	adrp	x8, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010894:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7d0
   10898: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010898:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62e7
   1089c: 91000000     	add	x0, x0, #0x0
		000000000001089c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62e7
   108a0: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000108a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c1
   108a4: 91000021     	add	x1, x1, #0x0
		00000000000108a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c1
   108a8: 52800282     	mov	w2, #0x14               // =20
   108ac: f900011f     	str	xzr, [x8]
		00000000000108ac:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x7d0
   108b0: 94000000     	bl	0x108b0 <syna_cdev_ioctls+0x204c>
		00000000000108b0:  R_AARCH64_CALL26	_printk
   108b4: 12801e56     	mov	w22, #-0xf3             // =-243
   108b8: 17fffdb9     	b	0xff9c <syna_cdev_ioctls+0x1738>
   108bc: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000108bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   108c0: 91000000     	add	x0, x0, #0x0
		00000000000108c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   108c4: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000108c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   108c8: 91000021     	add	x1, x1, #0x0
		00000000000108c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   108cc: 94000000     	bl	0x108cc <syna_cdev_ioctls+0x2068>
		00000000000108cc:  R_AARCH64_CALL26	_printk
   108d0: 94000000     	bl	0x108d0 <syna_cdev_ioctls+0x206c>
		00000000000108d0:  R_AARCH64_CALL26	syna_request_managed_device
   108d4: b5ff2bc0     	cbnz	x0, 0xee4c <syna_cdev_ioctls+0x5e8>
   108d8: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000108d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   108dc: 91000000     	add	x0, x0, #0x0
		00000000000108dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   108e0: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000108e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   108e4: 91000021     	add	x1, x1, #0x0
		00000000000108e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   108e8: 94000000     	bl	0x108e8 <syna_cdev_ioctls+0x2084>
		00000000000108e8:  R_AARCH64_CALL26	_printk
   108ec: 90000008     	adrp	x8, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000108ec:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7c8
   108f0: f900011f     	str	xzr, [x8]
		00000000000108f0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x7c8
   108f4: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000108f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   108f8: 91000000     	add	x0, x0, #0x0
		00000000000108f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   108fc: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		00000000000108fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   10900: 91000021     	add	x1, x1, #0x0
		0000000000010900:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   10904: 2a1403e2     	mov	w2, w20
   10908: 94000000     	bl	0x10908 <syna_cdev_ioctls+0x20a4>
		0000000000010908:  R_AARCH64_CALL26	_printk
   1090c: 90000008     	adrp	x8, 0x10000 <syna_cdev_ioctls+0x179c>
		000000000001090c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7d0
   10910: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010910:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62e7
   10914: 91000000     	add	x0, x0, #0x0
		0000000000010914:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62e7
   10918: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010918:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb433
   1091c: 91000021     	add	x1, x1, #0x0
		000000000001091c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb433
   10920: 2a1703e2     	mov	w2, w23
   10924: f900011f     	str	xzr, [x8]
		0000000000010924:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x7d0
   10928: 94000000     	bl	0x10928 <syna_cdev_ioctls+0x20c4>
		0000000000010928:  R_AARCH64_CALL26	_printk
   1092c: 12801e56     	mov	w22, #-0xf3             // =-243
   10930: 17fffd68     	b	0xfed0 <syna_cdev_ioctls+0x166c>
   10934: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010934:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x634a
   10938: 91000000     	add	x0, x0, #0x0
		0000000000010938:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x634a
   1093c: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		000000000001093c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8195
   10940: 91000021     	add	x1, x1, #0x0
		0000000000010940:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8195
   10944: 94000000     	bl	0x10944 <syna_cdev_ioctls+0x20e0>
		0000000000010944:  R_AARCH64_CALL26	_printk
   10948: f9400288     	ldr	x8, [x20]
   1094c: 90000009     	adrp	x9, 0x10000 <syna_cdev_ioctls+0x179c>
		000000000001094c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x870
   10950: 2a1f03f6     	mov	w22, wzr
   10954: b9420d08     	ldr	w8, [x8, #0x20c]
   10958: b9000128     	str	w8, [x9]
		0000000000010958:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x870
   1095c: 17fffd98     	b	0xffbc <syna_cdev_ioctls+0x1758>
   10960: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010960:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fc0
   10964: 91000000     	add	x0, x0, #0x0
		0000000000010964:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fc0
   10968: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010968:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8195
   1096c: 91000021     	add	x1, x1, #0x0
		000000000001096c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8195
   10970: 94000000     	bl	0x10970 <syna_cdev_ioctls+0x210c>
		0000000000010970:  R_AARCH64_CALL26	_printk
   10974: 90000008     	adrp	x8, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010974:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x870
   10978: 2a1f03f6     	mov	w22, wzr
   1097c: b900011f     	str	wzr, [x8]
		000000000001097c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x870
   10980: 17fffd8f     	b	0xffbc <syna_cdev_ioctls+0x1758>
   10984: 52802000     	mov	w0, #0x100              // =256
   10988: aa1603e1     	mov	x1, x22
   1098c: 94000000     	bl	0x1098c <syna_cdev_ioctls+0x2128>
		000000000001098c:  R_AARCH64_CALL26	__copy_overflow
   10990: 17fffe8c     	b	0x103c0 <syna_cdev_ioctls+0x1b5c>
   10994: 52800080     	mov	w0, #0x4                // =4
   10998: aa1703e1     	mov	x1, x23
   1099c: 94000000     	bl	0x1099c <syna_cdev_ioctls+0x2138>
		000000000001099c:  R_AARCH64_CALL26	__copy_overflow
   109a0: 17fff842     	b	0xeaa8 <syna_cdev_ioctls+0x244>
   109a4: d4210000     	brk	#0x800
   109a8: 34ff9a38     	cbz	w24, 0xfcec <syna_cdev_ioctls+0x1488>
   109ac: 17fffc5a     	b	0xfb14 <syna_cdev_ioctls+0x12b0>
   109b0: d4210000     	brk	#0x800
   109b4: 17fffd45     	b	0xfec8 <syna_cdev_ioctls+0x1664>
   109b8: 94000000     	bl	0x109b8 <syna_cdev_ioctls+0x2154>
		00000000000109b8:  R_AARCH64_CALL26	__stack_chk_fail
   109bc: aa0003e2     	mov	x2, x0
   109c0: 528001e0     	mov	w0, #0xf                // =15
   109c4: aa1f03e1     	mov	x1, xzr
   109c8: 94000000     	bl	0x109c8 <syna_cdev_ioctls+0x2164>
		00000000000109c8:  R_AARCH64_CALL26	__fortify_panic
   109cc: 528001e0     	mov	w0, #0xf                // =15
   109d0: 94000000     	bl	0x109d0 <syna_cdev_ioctls+0x216c>
		00000000000109d0:  R_AARCH64_CALL26	__fortify_panic
   109d4: 528001e0     	mov	w0, #0xf                // =15
   109d8: aa1603e2     	mov	x2, x22
   109dc: 94000000     	bl	0x109dc <syna_cdev_ioctls+0x2178>
		00000000000109dc:  R_AARCH64_CALL26	__fortify_panic
   109e0: 528001e0     	mov	w0, #0xf                // =15
   109e4: aa1403e2     	mov	x2, x20
   109e8: 94000000     	bl	0x109e8 <syna_cdev_ioctls+0x2184>
		00000000000109e8:  R_AARCH64_CALL26	__fortify_panic
