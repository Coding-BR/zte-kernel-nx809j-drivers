
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000aabc <syna_ioctl>:
    aabc: d503233f     	paciasp
    aac0: d10183ff     	sub	sp, sp, #0x60
    aac4: a9047bfd     	stp	x29, x30, [sp, #0x40]
    aac8: a9054ff4     	stp	x20, x19, [sp, #0x50]
    aacc: 910103fd     	add	x29, sp, #0x40
    aad0: d5384108     	mrs	x8, SP_EL0
    aad4: aa0203f3     	mov	x19, x2
    aad8: f9438908     	ldr	x8, [x8, #0x710]
    aadc: f81f83a8     	stur	x8, [x29, #-0x8]
    aae0: 528e0068     	mov	w8, #0x7003             // =28675
    aae4: 72b80088     	movk	w8, #0xc004, lsl #16
    aae8: f9401014     	ldr	x20, [x0, #0x20]
    aaec: b81f43bf     	stur	wzr, [x29, #-0xc]
    aaf0: 6b08003f     	cmp	w1, w8
    aaf4: 540008c0     	b.eq	0xac0c <syna_ioctl+0x150>
    aaf8: 528e0048     	mov	w8, #0x7002             // =28674
    aafc: 72b80088     	movk	w8, #0xc004, lsl #16
    ab00: 6b08003f     	cmp	w1, w8
    ab04: 54000300     	b.eq	0xab64 <syna_ioctl+0xa8>
    ab08: 528e0028     	mov	w8, #0x7001             // =28673
    ab0c: 72b80088     	movk	w8, #0xc004, lsl #16
    ab10: 6b08003f     	cmp	w1, w8
    ab14: 54000d81     	b.ne	0xacc4 <syna_ioctl+0x208>
    ab18: b945e288     	ldr	w8, [x20, #0x5e0]
    ab1c: 34000e08     	cbz	w8, 0xacdc <syna_ioctl+0x220>
    ab20: b9446a88     	ldr	w8, [x20, #0x468]
    ab24: 35000e68     	cbnz	w8, 0xacf0 <syna_ioctl+0x234>
    ab28: 910023e0     	add	x0, sp, #0x8
    ab2c: 2a1f03e1     	mov	w1, wzr
    ab30: a9027fff     	stp	xzr, xzr, [sp, #0x20]
    ab34: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    ab38: f90007ff     	str	xzr, [sp, #0x8]
    ab3c: 94000000     	bl	0xab3c <syna_ioctl+0x80>
		000000000000ab3c:  R_AARCH64_CALL26	init_wait_entry
    ab40: 91112280     	add	x0, x20, #0x448
    ab44: 910023e1     	add	x1, sp, #0x8
    ab48: 52800022     	mov	w2, #0x1                // =1
    ab4c: 94000000     	bl	0xab4c <syna_ioctl+0x90>
		000000000000ab4c:  R_AARCH64_CALL26	prepare_to_wait_event
    ab50: b9446a88     	ldr	w8, [x20, #0x468]
    ab54: 35000c88     	cbnz	w8, 0xace4 <syna_ioctl+0x228>
    ab58: b5000cc0     	cbnz	x0, 0xacf0 <syna_ioctl+0x234>
    ab5c: 94000000     	bl	0xab5c <syna_ioctl+0xa0>
		000000000000ab5c:  R_AARCH64_CALL26	schedule
    ab60: 17fffff8     	b	0xab40 <syna_ioctl+0x84>
    ab64: b945e288     	ldr	w8, [x20, #0x5e0]
    ab68: 9111c280     	add	x0, x20, #0x470
    ab6c: b81f43a8     	stur	w8, [x29, #-0xc]
    ab70: 94000000     	bl	0xab70 <syna_ioctl+0xb4>
		000000000000ab70:  R_AARCH64_CALL26	mutex_lock
    ab74: d5384108     	mrs	x8, SP_EL0
    ab78: 39411909     	ldrb	w9, [x8, #0x46]
    ab7c: 37280089     	tbnz	w9, #0x5, 0xab8c <syna_ioctl+0xd0>
    ab80: f940010a     	ldr	x10, [x8]
    ab84: aa1303e9     	mov	x9, x19
    ab88: 36d0006a     	tbz	w10, #0x1a, 0xab94 <syna_ioctl+0xd8>
    ab8c: d378de69     	lsl	x9, x19, #8
    ab90: 8a892269     	and	x9, x19, x9, asr #8
    ab94: b2705bea     	mov	x10, #0x7fffff0000      // =549755748352
    ab98: f29fffaa     	movk	x10, #0xfffd
    ab9c: eb0a013f     	cmp	x9, x10
    aba0: 540008a2     	b.hs	0xacb4 <syna_ioctl+0x1f8>
    aba4: d503201f     	nop
    aba8: d53b4229     	mrs	x9, DAIF
    abac: d50343df     	msr	DAIFSet, #0x3
    abb0: f9400508     	ldr	x8, [x8, #0x8]
    abb4: d538202a     	mrs	x10, TTBR1_EL1
    abb8: aa0803eb     	mov	x11, x8
    abbc: b340bd4b     	bfxil	x11, x10, #0, #48
    abc0: d518202b     	msr	TTBR1_EL1, x11
    abc4: d5182008     	msr	TTBR0_EL1, x8
    abc8: d5033fdf     	isb
    abcc: d51b4229     	msr	DAIF, x9
    abd0: 9248fa60     	and	x0, x19, #0xff7fffffffffffff
    abd4: d10033a1     	sub	x1, x29, #0xc
    abd8: 52800082     	mov	w2, #0x4                // =4
    abdc: 94000000     	bl	0xabdc <syna_ioctl+0x120>
		000000000000abdc:  R_AARCH64_CALL26	__arch_copy_to_user
    abe0: d503201f     	nop
    abe4: d53b4228     	mrs	x8, DAIF
    abe8: d50343df     	msr	DAIFSet, #0x3
    abec: d5382029     	mrs	x9, TTBR1_EL1
    abf0: 9240bd29     	and	x9, x9, #0xffffffffffff
    abf4: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    abf8: d518200a     	msr	TTBR0_EL1, x10
    abfc: d5182029     	msr	TTBR1_EL1, x9
    ac00: d5033fdf     	isb
    ac04: d51b4228     	msr	DAIF, x8
    ac08: 1400002a     	b	0xacb0 <syna_ioctl+0x1f4>
    ac0c: b9443a88     	ldr	w8, [x20, #0x438]
    ac10: 9111c280     	add	x0, x20, #0x470
    ac14: b81f43a8     	stur	w8, [x29, #-0xc]
    ac18: 94000000     	bl	0xac18 <syna_ioctl+0x15c>
		000000000000ac18:  R_AARCH64_CALL26	mutex_lock
    ac1c: d5384108     	mrs	x8, SP_EL0
    ac20: 39411909     	ldrb	w9, [x8, #0x46]
    ac24: 37280089     	tbnz	w9, #0x5, 0xac34 <syna_ioctl+0x178>
    ac28: f940010a     	ldr	x10, [x8]
    ac2c: aa1303e9     	mov	x9, x19
    ac30: 36d0006a     	tbz	w10, #0x1a, 0xac3c <syna_ioctl+0x180>
    ac34: d378de69     	lsl	x9, x19, #8
    ac38: 8a892269     	and	x9, x19, x9, asr #8
    ac3c: b2705bea     	mov	x10, #0x7fffff0000      // =549755748352
    ac40: f29fffaa     	movk	x10, #0xfffd
    ac44: eb0a013f     	cmp	x9, x10
    ac48: 54000362     	b.hs	0xacb4 <syna_ioctl+0x1f8>
    ac4c: d503201f     	nop
    ac50: d53b4229     	mrs	x9, DAIF
    ac54: d50343df     	msr	DAIFSet, #0x3
    ac58: f9400508     	ldr	x8, [x8, #0x8]
    ac5c: d538202a     	mrs	x10, TTBR1_EL1
    ac60: aa0803eb     	mov	x11, x8
    ac64: b340bd4b     	bfxil	x11, x10, #0, #48
    ac68: d518202b     	msr	TTBR1_EL1, x11
    ac6c: d5182008     	msr	TTBR0_EL1, x8
    ac70: d5033fdf     	isb
    ac74: d51b4229     	msr	DAIF, x9
    ac78: 9248fa60     	and	x0, x19, #0xff7fffffffffffff
    ac7c: d10033a1     	sub	x1, x29, #0xc
    ac80: 52800082     	mov	w2, #0x4                // =4
    ac84: 94000000     	bl	0xac84 <syna_ioctl+0x1c8>
		000000000000ac84:  R_AARCH64_CALL26	__arch_copy_to_user
    ac88: d503201f     	nop
    ac8c: d53b4228     	mrs	x8, DAIF
    ac90: d50343df     	msr	DAIFSet, #0x3
    ac94: d5382029     	mrs	x9, TTBR1_EL1
    ac98: 9240bd29     	and	x9, x9, #0xffffffffffff
    ac9c: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    aca0: d518200a     	msr	TTBR0_EL1, x10
    aca4: d5182029     	msr	TTBR1_EL1, x9
    aca8: d5033fdf     	isb
    acac: d51b4228     	msr	DAIF, x8
    acb0: b40000e0     	cbz	x0, 0xaccc <syna_ioctl+0x210>
    acb4: 9111c280     	add	x0, x20, #0x470
    acb8: 94000000     	bl	0xacb8 <syna_ioctl+0x1fc>
		000000000000acb8:  R_AARCH64_CALL26	mutex_unlock
    acbc: 928001a0     	mov	x0, #-0xe               // =-14
    acc0: 1400000e     	b	0xacf8 <syna_ioctl+0x23c>
    acc4: 92800300     	mov	x0, #-0x19              // =-25
    acc8: 1400000c     	b	0xacf8 <syna_ioctl+0x23c>
    accc: 9111c280     	add	x0, x20, #0x470
    acd0: 94000000     	bl	0xacd0 <syna_ioctl+0x214>
		000000000000acd0:  R_AARCH64_CALL26	mutex_unlock
    acd4: aa1f03e0     	mov	x0, xzr
    acd8: 14000008     	b	0xacf8 <syna_ioctl+0x23c>
    acdc: 92800140     	mov	x0, #-0xb               // =-11
    ace0: 14000006     	b	0xacf8 <syna_ioctl+0x23c>
    ace4: 91112280     	add	x0, x20, #0x448
    ace8: 910023e1     	add	x1, sp, #0x8
    acec: 94000000     	bl	0xacec <syna_ioctl+0x230>
		000000000000acec:  R_AARCH64_CALL26	finish_wait
    acf0: aa1f03e0     	mov	x0, xzr
    acf4: b9046a9f     	str	wzr, [x20, #0x468]
    acf8: d5384108     	mrs	x8, SP_EL0
    acfc: f9438908     	ldr	x8, [x8, #0x710]
    ad00: f85f83a9     	ldur	x9, [x29, #-0x8]
    ad04: eb09011f     	cmp	x8, x9
    ad08: 540000c1     	b.ne	0xad20 <syna_ioctl+0x264>
    ad0c: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    ad10: a9447bfd     	ldp	x29, x30, [sp, #0x40]
    ad14: 910183ff     	add	sp, sp, #0x60
    ad18: d50323bf     	autiasp
    ad1c: d65f03c0     	ret
    ad20: 94000000     	bl	0xad20 <syna_ioctl+0x264>
		000000000000ad20:  R_AARCH64_CALL26	__stack_chk_fail
