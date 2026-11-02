
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000ac78 <syna_ioctl>:
    ac78: d503233f     	paciasp
    ac7c: d10183ff     	sub	sp, sp, #0x60
    ac80: a9047bfd     	stp	x29, x30, [sp, #0x40]
    ac84: a9054ff4     	stp	x20, x19, [sp, #0x50]
    ac88: 910103fd     	add	x29, sp, #0x40
    ac8c: d5384108     	mrs	x8, SP_EL0
    ac90: aa0203f3     	mov	x19, x2
    ac94: f9438908     	ldr	x8, [x8, #0x710]
    ac98: f81f83a8     	stur	x8, [x29, #-0x8]
    ac9c: 528e0068     	mov	w8, #0x7003             // =28675
    aca0: 72b80088     	movk	w8, #0xc004, lsl #16
    aca4: f9401014     	ldr	x20, [x0, #0x20]
    aca8: b81f43bf     	stur	wzr, [x29, #-0xc]
    acac: 6b08003f     	cmp	w1, w8
    acb0: 540008c0     	b.eq	0xadc8 <syna_ioctl+0x150>
    acb4: 528e0048     	mov	w8, #0x7002             // =28674
    acb8: 72b80088     	movk	w8, #0xc004, lsl #16
    acbc: 6b08003f     	cmp	w1, w8
    acc0: 54000300     	b.eq	0xad20 <syna_ioctl+0xa8>
    acc4: 528e0028     	mov	w8, #0x7001             // =28673
    acc8: 72b80088     	movk	w8, #0xc004, lsl #16
    accc: 6b08003f     	cmp	w1, w8
    acd0: 54000d81     	b.ne	0xae80 <syna_ioctl+0x208>
    acd4: b945e288     	ldr	w8, [x20, #0x5e0]
    acd8: 34000e08     	cbz	w8, 0xae98 <syna_ioctl+0x220>
    acdc: b9446a88     	ldr	w8, [x20, #0x468]
    ace0: 35000e68     	cbnz	w8, 0xaeac <syna_ioctl+0x234>
    ace4: 910023e0     	add	x0, sp, #0x8
    ace8: 2a1f03e1     	mov	w1, wzr
    acec: a9027fff     	stp	xzr, xzr, [sp, #0x20]
    acf0: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    acf4: f90007ff     	str	xzr, [sp, #0x8]
    acf8: 94000000     	bl	0xacf8 <syna_ioctl+0x80>
		000000000000acf8:  R_AARCH64_CALL26	init_wait_entry
    acfc: 91112280     	add	x0, x20, #0x448
    ad00: 910023e1     	add	x1, sp, #0x8
    ad04: 52800022     	mov	w2, #0x1                // =1
    ad08: 94000000     	bl	0xad08 <syna_ioctl+0x90>
		000000000000ad08:  R_AARCH64_CALL26	prepare_to_wait_event
    ad0c: b9446a88     	ldr	w8, [x20, #0x468]
    ad10: 35000c88     	cbnz	w8, 0xaea0 <syna_ioctl+0x228>
    ad14: b5000cc0     	cbnz	x0, 0xaeac <syna_ioctl+0x234>
    ad18: 94000000     	bl	0xad18 <syna_ioctl+0xa0>
		000000000000ad18:  R_AARCH64_CALL26	schedule
    ad1c: 17fffff8     	b	0xacfc <syna_ioctl+0x84>
    ad20: b945e288     	ldr	w8, [x20, #0x5e0]
    ad24: 9111c280     	add	x0, x20, #0x470
    ad28: b81f43a8     	stur	w8, [x29, #-0xc]
    ad2c: 94000000     	bl	0xad2c <syna_ioctl+0xb4>
		000000000000ad2c:  R_AARCH64_CALL26	mutex_lock
    ad30: d5384108     	mrs	x8, SP_EL0
    ad34: 39411909     	ldrb	w9, [x8, #0x46]
    ad38: 37280089     	tbnz	w9, #0x5, 0xad48 <syna_ioctl+0xd0>
    ad3c: f940010a     	ldr	x10, [x8]
    ad40: aa1303e9     	mov	x9, x19
    ad44: 36d0006a     	tbz	w10, #0x1a, 0xad50 <syna_ioctl+0xd8>
    ad48: d378de69     	lsl	x9, x19, #8
    ad4c: 8a892269     	and	x9, x19, x9, asr #8
    ad50: b2705bea     	mov	x10, #0x7fffff0000      // =549755748352
    ad54: f29fffaa     	movk	x10, #0xfffd
    ad58: eb0a013f     	cmp	x9, x10
    ad5c: 540008a2     	b.hs	0xae70 <syna_ioctl+0x1f8>
    ad60: d503201f     	nop
    ad64: d53b4229     	mrs	x9, DAIF
    ad68: d50343df     	msr	DAIFSet, #0x3
    ad6c: f9400508     	ldr	x8, [x8, #0x8]
    ad70: d538202a     	mrs	x10, TTBR1_EL1
    ad74: aa0803eb     	mov	x11, x8
    ad78: b340bd4b     	bfxil	x11, x10, #0, #48
    ad7c: d518202b     	msr	TTBR1_EL1, x11
    ad80: d5182008     	msr	TTBR0_EL1, x8
    ad84: d5033fdf     	isb
    ad88: d51b4229     	msr	DAIF, x9
    ad8c: 9248fa60     	and	x0, x19, #0xff7fffffffffffff
    ad90: d10033a1     	sub	x1, x29, #0xc
    ad94: 52800082     	mov	w2, #0x4                // =4
    ad98: 94000000     	bl	0xad98 <syna_ioctl+0x120>
		000000000000ad98:  R_AARCH64_CALL26	__arch_copy_to_user
    ad9c: d503201f     	nop
    ada0: d53b4228     	mrs	x8, DAIF
    ada4: d50343df     	msr	DAIFSet, #0x3
    ada8: d5382029     	mrs	x9, TTBR1_EL1
    adac: 9240bd29     	and	x9, x9, #0xffffffffffff
    adb0: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    adb4: d518200a     	msr	TTBR0_EL1, x10
    adb8: d5182029     	msr	TTBR1_EL1, x9
    adbc: d5033fdf     	isb
    adc0: d51b4228     	msr	DAIF, x8
    adc4: 1400002a     	b	0xae6c <syna_ioctl+0x1f4>
    adc8: b9443a88     	ldr	w8, [x20, #0x438]
    adcc: 9111c280     	add	x0, x20, #0x470
    add0: b81f43a8     	stur	w8, [x29, #-0xc]
    add4: 94000000     	bl	0xadd4 <syna_ioctl+0x15c>
		000000000000add4:  R_AARCH64_CALL26	mutex_lock
    add8: d5384108     	mrs	x8, SP_EL0
    addc: 39411909     	ldrb	w9, [x8, #0x46]
    ade0: 37280089     	tbnz	w9, #0x5, 0xadf0 <syna_ioctl+0x178>
    ade4: f940010a     	ldr	x10, [x8]
    ade8: aa1303e9     	mov	x9, x19
    adec: 36d0006a     	tbz	w10, #0x1a, 0xadf8 <syna_ioctl+0x180>
    adf0: d378de69     	lsl	x9, x19, #8
    adf4: 8a892269     	and	x9, x19, x9, asr #8
    adf8: b2705bea     	mov	x10, #0x7fffff0000      // =549755748352
    adfc: f29fffaa     	movk	x10, #0xfffd
    ae00: eb0a013f     	cmp	x9, x10
    ae04: 54000362     	b.hs	0xae70 <syna_ioctl+0x1f8>
    ae08: d503201f     	nop
    ae0c: d53b4229     	mrs	x9, DAIF
    ae10: d50343df     	msr	DAIFSet, #0x3
    ae14: f9400508     	ldr	x8, [x8, #0x8]
    ae18: d538202a     	mrs	x10, TTBR1_EL1
    ae1c: aa0803eb     	mov	x11, x8
    ae20: b340bd4b     	bfxil	x11, x10, #0, #48
    ae24: d518202b     	msr	TTBR1_EL1, x11
    ae28: d5182008     	msr	TTBR0_EL1, x8
    ae2c: d5033fdf     	isb
    ae30: d51b4229     	msr	DAIF, x9
    ae34: 9248fa60     	and	x0, x19, #0xff7fffffffffffff
    ae38: d10033a1     	sub	x1, x29, #0xc
    ae3c: 52800082     	mov	w2, #0x4                // =4
    ae40: 94000000     	bl	0xae40 <syna_ioctl+0x1c8>
		000000000000ae40:  R_AARCH64_CALL26	__arch_copy_to_user
    ae44: d503201f     	nop
    ae48: d53b4228     	mrs	x8, DAIF
    ae4c: d50343df     	msr	DAIFSet, #0x3
    ae50: d5382029     	mrs	x9, TTBR1_EL1
    ae54: 9240bd29     	and	x9, x9, #0xffffffffffff
    ae58: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    ae5c: d518200a     	msr	TTBR0_EL1, x10
    ae60: d5182029     	msr	TTBR1_EL1, x9
    ae64: d5033fdf     	isb
    ae68: d51b4228     	msr	DAIF, x8
    ae6c: b40000e0     	cbz	x0, 0xae88 <syna_ioctl+0x210>
    ae70: 9111c280     	add	x0, x20, #0x470
    ae74: 94000000     	bl	0xae74 <syna_ioctl+0x1fc>
		000000000000ae74:  R_AARCH64_CALL26	mutex_unlock
    ae78: 928001a0     	mov	x0, #-0xe               // =-14
    ae7c: 1400000e     	b	0xaeb4 <syna_ioctl+0x23c>
    ae80: 92800300     	mov	x0, #-0x19              // =-25
    ae84: 1400000c     	b	0xaeb4 <syna_ioctl+0x23c>
    ae88: 9111c280     	add	x0, x20, #0x470
    ae8c: 94000000     	bl	0xae8c <syna_ioctl+0x214>
		000000000000ae8c:  R_AARCH64_CALL26	mutex_unlock
    ae90: aa1f03e0     	mov	x0, xzr
    ae94: 14000008     	b	0xaeb4 <syna_ioctl+0x23c>
    ae98: 92800140     	mov	x0, #-0xb               // =-11
    ae9c: 14000006     	b	0xaeb4 <syna_ioctl+0x23c>
    aea0: 91112280     	add	x0, x20, #0x448
    aea4: 910023e1     	add	x1, sp, #0x8
    aea8: 94000000     	bl	0xaea8 <syna_ioctl+0x230>
		000000000000aea8:  R_AARCH64_CALL26	finish_wait
    aeac: aa1f03e0     	mov	x0, xzr
    aeb0: b9046a9f     	str	wzr, [x20, #0x468]
    aeb4: d5384108     	mrs	x8, SP_EL0
    aeb8: f9438908     	ldr	x8, [x8, #0x710]
    aebc: f85f83a9     	ldur	x9, [x29, #-0x8]
    aec0: eb09011f     	cmp	x8, x9
    aec4: 540000c1     	b.ne	0xaedc <syna_ioctl+0x264>
    aec8: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    aecc: a9447bfd     	ldp	x29, x30, [sp, #0x40]
    aed0: 910183ff     	add	sp, sp, #0x60
    aed4: d50323bf     	autiasp
    aed8: d65f03c0     	ret
    aedc: 94000000     	bl	0xaedc <syna_ioctl+0x264>
		000000000000aedc:  R_AARCH64_CALL26	__stack_chk_fail
