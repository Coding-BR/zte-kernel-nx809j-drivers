
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000dcf8 <syna_ioctl>:
    dcf8: d503233f     	paciasp
    dcfc: d10183ff     	sub	sp, sp, #0x60
    dd00: a9047bfd     	stp	x29, x30, [sp, #0x40]
    dd04: a9054ff4     	stp	x20, x19, [sp, #0x50]
    dd08: 910103fd     	add	x29, sp, #0x40
    dd0c: d5384108     	mrs	x8, SP_EL0
    dd10: aa0203f3     	mov	x19, x2
    dd14: f9438908     	ldr	x8, [x8, #0x710]
    dd18: f81f83a8     	stur	x8, [x29, #-0x8]
    dd1c: 528e0068     	mov	w8, #0x7003             // =28675
    dd20: 72b80088     	movk	w8, #0xc004, lsl #16
    dd24: f9401014     	ldr	x20, [x0, #0x20]
    dd28: b81f43bf     	stur	wzr, [x29, #-0xc]
    dd2c: 6b08003f     	cmp	w1, w8
    dd30: 540008c0     	b.eq	0xde48 <syna_ioctl+0x150>
    dd34: 528e0048     	mov	w8, #0x7002             // =28674
    dd38: 72b80088     	movk	w8, #0xc004, lsl #16
    dd3c: 6b08003f     	cmp	w1, w8
    dd40: 54000300     	b.eq	0xdda0 <syna_ioctl+0xa8>
    dd44: 528e0028     	mov	w8, #0x7001             // =28673
    dd48: 72b80088     	movk	w8, #0xc004, lsl #16
    dd4c: 6b08003f     	cmp	w1, w8
    dd50: 54000d81     	b.ne	0xdf00 <syna_ioctl+0x208>
    dd54: b945e288     	ldr	w8, [x20, #0x5e0]
    dd58: 34000e08     	cbz	w8, 0xdf18 <syna_ioctl+0x220>
    dd5c: b9446a88     	ldr	w8, [x20, #0x468]
    dd60: 35000e68     	cbnz	w8, 0xdf2c <syna_ioctl+0x234>
    dd64: 910023e0     	add	x0, sp, #0x8
    dd68: 2a1f03e1     	mov	w1, wzr
    dd6c: a9027fff     	stp	xzr, xzr, [sp, #0x20]
    dd70: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    dd74: f90007ff     	str	xzr, [sp, #0x8]
    dd78: 94000000     	bl	0xdd78 <syna_ioctl+0x80>
		000000000000dd78:  R_AARCH64_CALL26	init_wait_entry
    dd7c: 91112280     	add	x0, x20, #0x448
    dd80: 910023e1     	add	x1, sp, #0x8
    dd84: 52800022     	mov	w2, #0x1                // =1
    dd88: 94000000     	bl	0xdd88 <syna_ioctl+0x90>
		000000000000dd88:  R_AARCH64_CALL26	prepare_to_wait_event
    dd8c: b9446a88     	ldr	w8, [x20, #0x468]
    dd90: 35000c88     	cbnz	w8, 0xdf20 <syna_ioctl+0x228>
    dd94: b5000cc0     	cbnz	x0, 0xdf2c <syna_ioctl+0x234>
    dd98: 94000000     	bl	0xdd98 <syna_ioctl+0xa0>
		000000000000dd98:  R_AARCH64_CALL26	schedule
    dd9c: 17fffff8     	b	0xdd7c <syna_ioctl+0x84>
    dda0: b945e288     	ldr	w8, [x20, #0x5e0]
    dda4: 9111c280     	add	x0, x20, #0x470
    dda8: b81f43a8     	stur	w8, [x29, #-0xc]
    ddac: 94000000     	bl	0xddac <syna_ioctl+0xb4>
		000000000000ddac:  R_AARCH64_CALL26	mutex_lock
    ddb0: d5384108     	mrs	x8, SP_EL0
    ddb4: 39411909     	ldrb	w9, [x8, #0x46]
    ddb8: 37280089     	tbnz	w9, #0x5, 0xddc8 <syna_ioctl+0xd0>
    ddbc: f940010a     	ldr	x10, [x8]
    ddc0: aa1303e9     	mov	x9, x19
    ddc4: 36d0006a     	tbz	w10, #0x1a, 0xddd0 <syna_ioctl+0xd8>
    ddc8: d378de69     	lsl	x9, x19, #8
    ddcc: 8a892269     	and	x9, x19, x9, asr #8
    ddd0: b2705bea     	mov	x10, #0x7fffff0000      // =549755748352
    ddd4: f29fffaa     	movk	x10, #0xfffd
    ddd8: eb0a013f     	cmp	x9, x10
    dddc: 540008a2     	b.hs	0xdef0 <syna_ioctl+0x1f8>
    dde0: d503201f     	nop
    dde4: d53b4229     	mrs	x9, DAIF
    dde8: d50343df     	msr	DAIFSet, #0x3
    ddec: f9400508     	ldr	x8, [x8, #0x8]
    ddf0: d538202a     	mrs	x10, TTBR1_EL1
    ddf4: aa0803eb     	mov	x11, x8
    ddf8: b340bd4b     	bfxil	x11, x10, #0, #48
    ddfc: d518202b     	msr	TTBR1_EL1, x11
    de00: d5182008     	msr	TTBR0_EL1, x8
    de04: d5033fdf     	isb
    de08: d51b4229     	msr	DAIF, x9
    de0c: 9248fa60     	and	x0, x19, #0xff7fffffffffffff
    de10: d10033a1     	sub	x1, x29, #0xc
    de14: 52800082     	mov	w2, #0x4                // =4
    de18: 94000000     	bl	0xde18 <syna_ioctl+0x120>
		000000000000de18:  R_AARCH64_CALL26	__arch_copy_to_user
    de1c: d503201f     	nop
    de20: d53b4228     	mrs	x8, DAIF
    de24: d50343df     	msr	DAIFSet, #0x3
    de28: d5382029     	mrs	x9, TTBR1_EL1
    de2c: 9240bd29     	and	x9, x9, #0xffffffffffff
    de30: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    de34: d518200a     	msr	TTBR0_EL1, x10
    de38: d5182029     	msr	TTBR1_EL1, x9
    de3c: d5033fdf     	isb
    de40: d51b4228     	msr	DAIF, x8
    de44: 1400002a     	b	0xdeec <syna_ioctl+0x1f4>
    de48: b9443a88     	ldr	w8, [x20, #0x438]
    de4c: 9111c280     	add	x0, x20, #0x470
    de50: b81f43a8     	stur	w8, [x29, #-0xc]
    de54: 94000000     	bl	0xde54 <syna_ioctl+0x15c>
		000000000000de54:  R_AARCH64_CALL26	mutex_lock
    de58: d5384108     	mrs	x8, SP_EL0
    de5c: 39411909     	ldrb	w9, [x8, #0x46]
    de60: 37280089     	tbnz	w9, #0x5, 0xde70 <syna_ioctl+0x178>
    de64: f940010a     	ldr	x10, [x8]
    de68: aa1303e9     	mov	x9, x19
    de6c: 36d0006a     	tbz	w10, #0x1a, 0xde78 <syna_ioctl+0x180>
    de70: d378de69     	lsl	x9, x19, #8
    de74: 8a892269     	and	x9, x19, x9, asr #8
    de78: b2705bea     	mov	x10, #0x7fffff0000      // =549755748352
    de7c: f29fffaa     	movk	x10, #0xfffd
    de80: eb0a013f     	cmp	x9, x10
    de84: 54000362     	b.hs	0xdef0 <syna_ioctl+0x1f8>
    de88: d503201f     	nop
    de8c: d53b4229     	mrs	x9, DAIF
    de90: d50343df     	msr	DAIFSet, #0x3
    de94: f9400508     	ldr	x8, [x8, #0x8]
    de98: d538202a     	mrs	x10, TTBR1_EL1
    de9c: aa0803eb     	mov	x11, x8
    dea0: b340bd4b     	bfxil	x11, x10, #0, #48
    dea4: d518202b     	msr	TTBR1_EL1, x11
    dea8: d5182008     	msr	TTBR0_EL1, x8
    deac: d5033fdf     	isb
    deb0: d51b4229     	msr	DAIF, x9
    deb4: 9248fa60     	and	x0, x19, #0xff7fffffffffffff
    deb8: d10033a1     	sub	x1, x29, #0xc
    debc: 52800082     	mov	w2, #0x4                // =4
    dec0: 94000000     	bl	0xdec0 <syna_ioctl+0x1c8>
		000000000000dec0:  R_AARCH64_CALL26	__arch_copy_to_user
    dec4: d503201f     	nop
    dec8: d53b4228     	mrs	x8, DAIF
    decc: d50343df     	msr	DAIFSet, #0x3
    ded0: d5382029     	mrs	x9, TTBR1_EL1
    ded4: 9240bd29     	and	x9, x9, #0xffffffffffff
    ded8: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    dedc: d518200a     	msr	TTBR0_EL1, x10
    dee0: d5182029     	msr	TTBR1_EL1, x9
    dee4: d5033fdf     	isb
    dee8: d51b4228     	msr	DAIF, x8
    deec: b40000e0     	cbz	x0, 0xdf08 <syna_ioctl+0x210>
    def0: 9111c280     	add	x0, x20, #0x470
    def4: 94000000     	bl	0xdef4 <syna_ioctl+0x1fc>
		000000000000def4:  R_AARCH64_CALL26	mutex_unlock
    def8: 928001a0     	mov	x0, #-0xe               // =-14
    defc: 1400000e     	b	0xdf34 <syna_ioctl+0x23c>
    df00: 92800300     	mov	x0, #-0x19              // =-25
    df04: 1400000c     	b	0xdf34 <syna_ioctl+0x23c>
    df08: 9111c280     	add	x0, x20, #0x470
    df0c: 94000000     	bl	0xdf0c <syna_ioctl+0x214>
		000000000000df0c:  R_AARCH64_CALL26	mutex_unlock
    df10: aa1f03e0     	mov	x0, xzr
    df14: 14000008     	b	0xdf34 <syna_ioctl+0x23c>
    df18: 92800140     	mov	x0, #-0xb               // =-11
    df1c: 14000006     	b	0xdf34 <syna_ioctl+0x23c>
    df20: 91112280     	add	x0, x20, #0x448
    df24: 910023e1     	add	x1, sp, #0x8
    df28: 94000000     	bl	0xdf28 <syna_ioctl+0x230>
		000000000000df28:  R_AARCH64_CALL26	finish_wait
    df2c: aa1f03e0     	mov	x0, xzr
    df30: b9046a9f     	str	wzr, [x20, #0x468]
    df34: d5384108     	mrs	x8, SP_EL0
    df38: f9438908     	ldr	x8, [x8, #0x710]
    df3c: f85f83a9     	ldur	x9, [x29, #-0x8]
    df40: eb09011f     	cmp	x8, x9
    df44: 540000c1     	b.ne	0xdf5c <syna_ioctl+0x264>
    df48: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    df4c: a9447bfd     	ldp	x29, x30, [sp, #0x40]
    df50: 910183ff     	add	sp, sp, #0x60
    df54: d50323bf     	autiasp
    df58: d65f03c0     	ret
    df5c: 94000000     	bl	0xdf5c <syna_ioctl+0x264>
		000000000000df5c:  R_AARCH64_CALL26	__stack_chk_fail
