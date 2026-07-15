
/input/zte_ir.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000001f4 <zte_ir_ioctl>:
     1f4: d503233f     	paciasp
     1f8: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     1fc: f9000bf7     	str	x23, [sp, #0x10]
     200: a90257f6     	stp	x22, x21, [sp, #0x20]
     204: a9034ff4     	stp	x20, x19, [sp, #0x30]
     208: 910003fd     	mov	x29, sp
     20c: aa0003e8     	mov	x8, x0
     210: 92800240     	mov	x0, #-0x13              // =-19
     214: b4000828     	cbz	x8, 0x318 <zte_ir_ioctl+0x124>
     218: f9401113     	ldr	x19, [x8, #0x20]
     21c: b40007f3     	cbz	x19, 0x318 <zte_ir_ioctl+0x124>
     220: 528d2628     	mov	w8, #0x6931             // =26929
     224: 92800300     	mov	x0, #-0x19              // =-25
     228: 72a80088     	movk	w8, #0x4004, lsl #16
     22c: 6b08003f     	cmp	w1, w8
     230: 54000741     	b.ne	0x318 <zte_ir_ioctl+0x124>
     234: d5384108     	mrs	x8, SP_EL0
     238: 39411909     	ldrb	w9, [x8, #0x46]
     23c: 37280089     	tbnz	w9, #0x5, 0x24c <zte_ir_ioctl+0x58>
     240: f940010a     	ldr	x10, [x8]
     244: aa0203e9     	mov	x9, x2
     248: 36d0006a     	tbz	w10, #0x1a, 0x254 <zte_ir_ioctl+0x60>
     24c: d378dc49     	lsl	x9, x2, #8
     250: 8a892049     	and	x9, x2, x9, asr #8
     254: b27e93ea     	mov	x10, #0x7ffffffffc      // =549755813884
     258: 928001a0     	mov	x0, #-0xe               // =-14
     25c: eb0a013f     	cmp	x9, x10
     260: 540005c8     	b.hi	0x318 <zte_ir_ioctl+0x124>
     264: 9248f849     	and	x9, x2, #0xff7fffffffffffff
     268: 91404e74     	add	x20, x19, #0x13, lsl #12 // =0x13000
     26c: d503201f     	nop
     270: d53b422a     	mrs	x10, DAIF
     274: d50343df     	msr	DAIFSet, #0x3
     278: f9400508     	ldr	x8, [x8, #0x8]
     27c: d538202b     	mrs	x11, TTBR1_EL1
     280: aa0803ec     	mov	x12, x8
     284: b340bd6c     	bfxil	x12, x11, #0, #48
     288: d518202c     	msr	TTBR1_EL1, x12
     28c: d5182008     	msr	TTBR0_EL1, x8
     290: d5033fdf     	isb
     294: d51b422a     	msr	DAIF, x10
     298: b8400935     	ldtr	w21, [x9]
     29c: d503201f     	nop
     2a0: d53b4228     	mrs	x8, DAIF
     2a4: d50343df     	msr	DAIFSet, #0x3
     2a8: d5382029     	mrs	x9, TTBR1_EL1
     2ac: 9240bd29     	and	x9, x9, #0xffffffffffff
     2b0: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
     2b4: d518200a     	msr	TTBR0_EL1, x10
     2b8: d5182029     	msr	TTBR1_EL1, x9
     2bc: d5033fdf     	isb
     2c0: d51b4228     	msr	DAIF, x8
     2c4: 710006bf     	cmp	w21, #0x1
     2c8: 928002a0     	mov	x0, #-0x16              // =-22
     2cc: 5400026b     	b.lt	0x318 <zte_ir_ioctl+0x124>
     2d0: 52989688     	mov	w8, #0xc4b4             // =50356
     2d4: 72a00088     	movk	w8, #0x4, lsl #16
     2d8: 6b0802bf     	cmp	w21, w8
     2dc: 540001e8     	b.hi	0x318 <zte_ir_ioctl+0x124>
     2e0: 52871516     	mov	w22, #0x38a8            // =14504
     2e4: 72a00036     	movk	w22, #0x1, lsl #16
     2e8: 8b160260     	add	x0, x19, x22
     2ec: 94000000     	bl	0x2ec <zte_ir_ioctl+0xf8>
		00000000000002ec:  R_AARCH64_CALL26	mutex_lock
     2f0: 3963b288     	ldrb	w8, [x20, #0x8ec]
     2f4: 36000068     	tbz	w8, #0x0, 0x300 <zte_ir_ioctl+0x10c>
     2f8: 92800d77     	mov	x23, #-0x6c             // =-108
     2fc: 14000004     	b	0x30c <zte_ir_ioctl+0x118>
     300: 531c6ea8     	lsl	w8, w21, #4
     304: aa1f03f7     	mov	x23, xzr
     308: b9088a88     	str	w8, [x20, #0x888]
     30c: 8b160260     	add	x0, x19, x22
     310: 94000000     	bl	0x310 <zte_ir_ioctl+0x11c>
		0000000000000310:  R_AARCH64_CALL26	mutex_unlock
     314: aa1703e0     	mov	x0, x23
     318: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     31c: f9400bf7     	ldr	x23, [sp, #0x10]
     320: a94257f6     	ldp	x22, x21, [sp, #0x20]
     324: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     328: d50323bf     	autiasp
     32c: d65f03c0     	ret
     330: 928001a0     	mov	x0, #-0xe               // =-14
     334: d503201f     	nop
     338: d53b4228     	mrs	x8, DAIF
     33c: d50343df     	msr	DAIFSet, #0x3
     340: d5382029     	mrs	x9, TTBR1_EL1
     344: 9240bd29     	and	x9, x9, #0xffffffffffff
     348: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
     34c: d518200a     	msr	TTBR0_EL1, x10
     350: d5182029     	msr	TTBR1_EL1, x9
     354: d5033fdf     	isb
     358: d51b4228     	msr	DAIF, x8
     35c: 17ffffef     	b	0x318 <zte_ir_ioctl+0x124>
