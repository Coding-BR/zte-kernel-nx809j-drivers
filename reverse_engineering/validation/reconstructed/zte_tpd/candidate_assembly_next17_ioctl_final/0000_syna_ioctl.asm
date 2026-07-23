
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000af90 <syna_ioctl>:
    af90: d503233f     	paciasp
    af94: d10183ff     	sub	sp, sp, #0x60
    af98: a9047bfd     	stp	x29, x30, [sp, #0x40]
    af9c: a9054ff4     	stp	x20, x19, [sp, #0x50]
    afa0: 910103fd     	add	x29, sp, #0x40
    afa4: d5384108     	mrs	x8, SP_EL0
    afa8: aa0203f3     	mov	x19, x2
    afac: f9438908     	ldr	x8, [x8, #0x710]
    afb0: f81f83a8     	stur	x8, [x29, #-0x8]
    afb4: 528e0068     	mov	w8, #0x7003             // =28675
    afb8: 72b80088     	movk	w8, #0xc004, lsl #16
    afbc: f9401014     	ldr	x20, [x0, #0x20]
    afc0: b81f43bf     	stur	wzr, [x29, #-0xc]
    afc4: 6b08003f     	cmp	w1, w8
    afc8: 540008c0     	b.eq	0xb0e0 <syna_ioctl+0x150>
    afcc: 528e0048     	mov	w8, #0x7002             // =28674
    afd0: 72b80088     	movk	w8, #0xc004, lsl #16
    afd4: 6b08003f     	cmp	w1, w8
    afd8: 54000300     	b.eq	0xb038 <syna_ioctl+0xa8>
    afdc: 528e0028     	mov	w8, #0x7001             // =28673
    afe0: 72b80088     	movk	w8, #0xc004, lsl #16
    afe4: 6b08003f     	cmp	w1, w8
    afe8: 54000d81     	b.ne	0xb198 <syna_ioctl+0x208>
    afec: b945e288     	ldr	w8, [x20, #0x5e0]
    aff0: 34000e08     	cbz	w8, 0xb1b0 <syna_ioctl+0x220>
    aff4: b9446a88     	ldr	w8, [x20, #0x468]
    aff8: 35000e68     	cbnz	w8, 0xb1c4 <syna_ioctl+0x234>
    affc: 910023e0     	add	x0, sp, #0x8
    b000: 2a1f03e1     	mov	w1, wzr
    b004: a9027fff     	stp	xzr, xzr, [sp, #0x20]
    b008: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    b00c: f90007ff     	str	xzr, [sp, #0x8]
    b010: 94000000     	bl	0xb010 <syna_ioctl+0x80>
		000000000000b010:  R_AARCH64_CALL26	init_wait_entry
    b014: 91112280     	add	x0, x20, #0x448
    b018: 910023e1     	add	x1, sp, #0x8
    b01c: 52800022     	mov	w2, #0x1                // =1
    b020: 94000000     	bl	0xb020 <syna_ioctl+0x90>
		000000000000b020:  R_AARCH64_CALL26	prepare_to_wait_event
    b024: b9446a88     	ldr	w8, [x20, #0x468]
    b028: 35000c88     	cbnz	w8, 0xb1b8 <syna_ioctl+0x228>
    b02c: b5000cc0     	cbnz	x0, 0xb1c4 <syna_ioctl+0x234>
    b030: 94000000     	bl	0xb030 <syna_ioctl+0xa0>
		000000000000b030:  R_AARCH64_CALL26	schedule
    b034: 17fffff8     	b	0xb014 <syna_ioctl+0x84>
    b038: b945e288     	ldr	w8, [x20, #0x5e0]
    b03c: 9111c280     	add	x0, x20, #0x470
    b040: b81f43a8     	stur	w8, [x29, #-0xc]
    b044: 94000000     	bl	0xb044 <syna_ioctl+0xb4>
		000000000000b044:  R_AARCH64_CALL26	mutex_lock
    b048: d5384108     	mrs	x8, SP_EL0
    b04c: 39411909     	ldrb	w9, [x8, #0x46]
    b050: 37280089     	tbnz	w9, #0x5, 0xb060 <syna_ioctl+0xd0>
    b054: f940010a     	ldr	x10, [x8]
    b058: aa1303e9     	mov	x9, x19
    b05c: 36d0006a     	tbz	w10, #0x1a, 0xb068 <syna_ioctl+0xd8>
    b060: d378de69     	lsl	x9, x19, #8
    b064: 8a892269     	and	x9, x19, x9, asr #8
    b068: b2705bea     	mov	x10, #0x7fffff0000      // =549755748352
    b06c: f29fffaa     	movk	x10, #0xfffd
    b070: eb0a013f     	cmp	x9, x10
    b074: 540008a2     	b.hs	0xb188 <syna_ioctl+0x1f8>
    b078: d503201f     	nop
    b07c: d53b4229     	mrs	x9, DAIF
    b080: d50343df     	msr	DAIFSet, #0x3
    b084: f9400508     	ldr	x8, [x8, #0x8]
    b088: d538202a     	mrs	x10, TTBR1_EL1
    b08c: aa0803eb     	mov	x11, x8
    b090: b340bd4b     	bfxil	x11, x10, #0, #48
    b094: d518202b     	msr	TTBR1_EL1, x11
    b098: d5182008     	msr	TTBR0_EL1, x8
    b09c: d5033fdf     	isb
    b0a0: d51b4229     	msr	DAIF, x9
    b0a4: 9248fa60     	and	x0, x19, #0xff7fffffffffffff
    b0a8: d10033a1     	sub	x1, x29, #0xc
    b0ac: 52800082     	mov	w2, #0x4                // =4
    b0b0: 94000000     	bl	0xb0b0 <syna_ioctl+0x120>
		000000000000b0b0:  R_AARCH64_CALL26	__arch_copy_to_user
    b0b4: d503201f     	nop
    b0b8: d53b4228     	mrs	x8, DAIF
    b0bc: d50343df     	msr	DAIFSet, #0x3
    b0c0: d5382029     	mrs	x9, TTBR1_EL1
    b0c4: 9240bd29     	and	x9, x9, #0xffffffffffff
    b0c8: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    b0cc: d518200a     	msr	TTBR0_EL1, x10
    b0d0: d5182029     	msr	TTBR1_EL1, x9
    b0d4: d5033fdf     	isb
    b0d8: d51b4228     	msr	DAIF, x8
    b0dc: 1400002a     	b	0xb184 <syna_ioctl+0x1f4>
    b0e0: b9443a88     	ldr	w8, [x20, #0x438]
    b0e4: 9111c280     	add	x0, x20, #0x470
    b0e8: b81f43a8     	stur	w8, [x29, #-0xc]
    b0ec: 94000000     	bl	0xb0ec <syna_ioctl+0x15c>
		000000000000b0ec:  R_AARCH64_CALL26	mutex_lock
    b0f0: d5384108     	mrs	x8, SP_EL0
    b0f4: 39411909     	ldrb	w9, [x8, #0x46]
    b0f8: 37280089     	tbnz	w9, #0x5, 0xb108 <syna_ioctl+0x178>
    b0fc: f940010a     	ldr	x10, [x8]
    b100: aa1303e9     	mov	x9, x19
    b104: 36d0006a     	tbz	w10, #0x1a, 0xb110 <syna_ioctl+0x180>
    b108: d378de69     	lsl	x9, x19, #8
    b10c: 8a892269     	and	x9, x19, x9, asr #8
    b110: b2705bea     	mov	x10, #0x7fffff0000      // =549755748352
    b114: f29fffaa     	movk	x10, #0xfffd
    b118: eb0a013f     	cmp	x9, x10
    b11c: 54000362     	b.hs	0xb188 <syna_ioctl+0x1f8>
    b120: d503201f     	nop
    b124: d53b4229     	mrs	x9, DAIF
    b128: d50343df     	msr	DAIFSet, #0x3
    b12c: f9400508     	ldr	x8, [x8, #0x8]
    b130: d538202a     	mrs	x10, TTBR1_EL1
    b134: aa0803eb     	mov	x11, x8
    b138: b340bd4b     	bfxil	x11, x10, #0, #48
    b13c: d518202b     	msr	TTBR1_EL1, x11
    b140: d5182008     	msr	TTBR0_EL1, x8
    b144: d5033fdf     	isb
    b148: d51b4229     	msr	DAIF, x9
    b14c: 9248fa60     	and	x0, x19, #0xff7fffffffffffff
    b150: d10033a1     	sub	x1, x29, #0xc
    b154: 52800082     	mov	w2, #0x4                // =4
    b158: 94000000     	bl	0xb158 <syna_ioctl+0x1c8>
		000000000000b158:  R_AARCH64_CALL26	__arch_copy_to_user
    b15c: d503201f     	nop
    b160: d53b4228     	mrs	x8, DAIF
    b164: d50343df     	msr	DAIFSet, #0x3
    b168: d5382029     	mrs	x9, TTBR1_EL1
    b16c: 9240bd29     	and	x9, x9, #0xffffffffffff
    b170: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    b174: d518200a     	msr	TTBR0_EL1, x10
    b178: d5182029     	msr	TTBR1_EL1, x9
    b17c: d5033fdf     	isb
    b180: d51b4228     	msr	DAIF, x8
    b184: b40000e0     	cbz	x0, 0xb1a0 <syna_ioctl+0x210>
    b188: 9111c280     	add	x0, x20, #0x470
    b18c: 94000000     	bl	0xb18c <syna_ioctl+0x1fc>
		000000000000b18c:  R_AARCH64_CALL26	mutex_unlock
    b190: 928001a0     	mov	x0, #-0xe               // =-14
    b194: 1400000e     	b	0xb1cc <syna_ioctl+0x23c>
    b198: 92800300     	mov	x0, #-0x19              // =-25
    b19c: 1400000c     	b	0xb1cc <syna_ioctl+0x23c>
    b1a0: 9111c280     	add	x0, x20, #0x470
    b1a4: 94000000     	bl	0xb1a4 <syna_ioctl+0x214>
		000000000000b1a4:  R_AARCH64_CALL26	mutex_unlock
    b1a8: aa1f03e0     	mov	x0, xzr
    b1ac: 14000008     	b	0xb1cc <syna_ioctl+0x23c>
    b1b0: 92800140     	mov	x0, #-0xb               // =-11
    b1b4: 14000006     	b	0xb1cc <syna_ioctl+0x23c>
    b1b8: 91112280     	add	x0, x20, #0x448
    b1bc: 910023e1     	add	x1, sp, #0x8
    b1c0: 94000000     	bl	0xb1c0 <syna_ioctl+0x230>
		000000000000b1c0:  R_AARCH64_CALL26	finish_wait
    b1c4: aa1f03e0     	mov	x0, xzr
    b1c8: b9046a9f     	str	wzr, [x20, #0x468]
    b1cc: d5384108     	mrs	x8, SP_EL0
    b1d0: f9438908     	ldr	x8, [x8, #0x710]
    b1d4: f85f83a9     	ldur	x9, [x29, #-0x8]
    b1d8: eb09011f     	cmp	x8, x9
    b1dc: 540000c1     	b.ne	0xb1f4 <syna_ioctl+0x264>
    b1e0: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    b1e4: a9447bfd     	ldp	x29, x30, [sp, #0x40]
    b1e8: 910183ff     	add	sp, sp, #0x60
    b1ec: d50323bf     	autiasp
    b1f0: d65f03c0     	ret
    b1f4: 94000000     	bl	0xb1f4 <syna_ioctl+0x264>
		000000000000b1f4:  R_AARCH64_CALL26	__stack_chk_fail
