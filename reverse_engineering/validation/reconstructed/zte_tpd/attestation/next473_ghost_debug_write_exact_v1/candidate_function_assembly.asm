
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025274 <ghost_debug_write>:
   25274: d503233f     	paciasp
   25278: d103c3ff     	sub	sp, sp, #0xf0
   2527c: a90b7bfd     	stp	x29, x30, [sp, #0xb0]
   25280: f90063f7     	str	x23, [sp, #0xc0]
   25284: a90d57f6     	stp	x22, x21, [sp, #0xd0]
   25288: a90e4ff4     	stp	x20, x19, [sp, #0xe0]
   2528c: 9102c3fd     	add	x29, sp, #0xb0
   25290: d5384108     	mrs	x8, SP_EL0
   25294: 910103f6     	add	x22, sp, #0x40
   25298: f9438908     	ldr	x8, [x8, #0x710]
   2529c: f101905f     	cmp	x2, #0x64
   252a0: f81f83a8     	stur	x8, [x29, #-0x8]
   252a4: 90000008     	adrp	x8, 0x25000 <ghost_debug_read+0xe0>
		00000000000252a4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   252a8: f9400115     	ldr	x21, [x8]
		00000000000252a8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   252ac: 52800c88     	mov	w8, #0x64               // =100
   252b0: b900a3ff     	str	wzr, [sp, #0xa0]
   252b4: 9a883053     	csel	x19, x2, x8, lo
   252b8: a9057edf     	stp	xzr, xzr, [x22, #0x50]
   252bc: a9087fff     	stp	xzr, xzr, [sp, #0x80]
   252c0: a9077fff     	stp	xzr, xzr, [sp, #0x70]
   252c4: a9067fff     	stp	xzr, xzr, [sp, #0x60]
   252c8: a9057fff     	stp	xzr, xzr, [sp, #0x50]
   252cc: a9047fff     	stp	xzr, xzr, [sp, #0x40]
   252d0: b9000fff     	str	wzr, [sp, #0xc]
   252d4: a9037fff     	stp	xzr, xzr, [sp, #0x30]
   252d8: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   252dc: f9000fff     	str	xzr, [sp, #0x18]
   252e0: b4000161     	cbz	x1, 0x2530c <ghost_debug_write+0x98>
   252e4: aa0103f4     	mov	x20, x1
   252e8: 910103e0     	add	x0, sp, #0x40
   252ec: aa1303e1     	mov	x1, x19
   252f0: 2a1f03e2     	mov	w2, wzr
   252f4: 94000000     	bl	0x252f4 <ghost_debug_write+0x80>
		00000000000252f4:  R_AARCH64_CALL26	__check_object_size
   252f8: 910103e0     	add	x0, sp, #0x40
   252fc: aa1403e1     	mov	x1, x20
   25300: aa1303e2     	mov	x2, x19
   25304: 97fff31a     	bl	0x21f6c <zte_touch_probe+0x274>
		0000000000025304:  R_AARCH64_CALL26	_inline_copy_from_user
   25308: b5000860     	cbnz	x0, 0x25414 <ghost_debug_write+0x1a0>
   2530c: 90000001     	adrp	x1, 0x25000 <ghost_debug_read+0xe0>
		000000000002530c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15be0
   25310: 91000021     	add	x1, x1, #0x0
		0000000000025310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15be0
   25314: 910043e0     	add	x0, sp, #0x10
   25318: f9000bf6     	str	x22, [sp, #0x10]
   2531c: 94000000     	bl	0x2531c <ghost_debug_write+0xa8>
		000000000002531c:  R_AARCH64_CALL26	strsep
   25320: b40003c0     	cbz	x0, 0x25398 <ghost_debug_write+0x124>
   25324: 2a1f03f6     	mov	w22, wzr
   25328: 910063f7     	add	x23, sp, #0x18
   2532c: 90000014     	adrp	x20, 0x25000 <ghost_debug_read+0xe0>
		000000000002532c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15be0
   25330: 91000294     	add	x20, x20, #0x0
		0000000000025330:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15be0
   25334: 910033e2     	add	x2, sp, #0xc
   25338: 52800141     	mov	w1, #0xa                // =10
   2533c: 94000000     	bl	0x2533c <ghost_debug_write+0xc8>
		000000000002533c:  R_AARCH64_CALL26	kstrtouint
   25340: 350000c0     	cbnz	w0, 0x25358 <ghost_debug_write+0xe4>
   25344: 71004edf     	cmp	w22, #0x13
   25348: 54000708     	b.hi	0x25428 <ghost_debug_write+0x1b4>
   2534c: b9400fe8     	ldr	w8, [sp, #0xc]
   25350: 78365ae8     	strh	w8, [x23, w22, uxtw #1]
   25354: 110006d6     	add	w22, w22, #0x1
   25358: 910043e0     	add	x0, sp, #0x10
   2535c: aa1403e1     	mov	x1, x20
   25360: 94000000     	bl	0x25360 <ghost_debug_write+0xec>
		0000000000025360:  R_AARCH64_CALL26	strsep
   25364: b4000060     	cbz	x0, 0x25370 <ghost_debug_write+0xfc>
   25368: 71002adf     	cmp	w22, #0xa
   2536c: 54fffe43     	b.lo	0x25334 <ghost_debug_write+0xc0>
   25370: 794047eb     	ldrh	w11, [sp, #0x22]
   25374: 79404bea     	ldrh	w10, [sp, #0x24]
   25378: 79404fe9     	ldrh	w9, [sp, #0x26]
   2537c: 794053e8     	ldrh	w8, [sp, #0x28]
   25380: 394083ec     	ldrb	w12, [sp, #0x20]
   25384: 39407bed     	ldrb	w13, [sp, #0x1e]
   25388: 394073ee     	ldrb	w14, [sp, #0x1c]
   2538c: 39406bef     	ldrb	w15, [sp, #0x1a]
   25390: 394063f0     	ldrb	w16, [sp, #0x18]
   25394: 1400000a     	b	0x253bc <ghost_debug_write+0x148>
   25398: 2a1f03e8     	mov	w8, wzr
   2539c: 2a1f03e9     	mov	w9, wzr
   253a0: 2a1f03ea     	mov	w10, wzr
   253a4: 2a1f03eb     	mov	w11, wzr
   253a8: 2a1f03ec     	mov	w12, wzr
   253ac: 2a1f03ed     	mov	w13, wzr
   253b0: 2a1f03ee     	mov	w14, wzr
   253b4: 2a1f03ef     	mov	w15, wzr
   253b8: 2a1f03f0     	mov	w16, wzr
   253bc: 391246b0     	strb	w16, [x21, #0x491]
   253c0: 39124aaf     	strb	w15, [x21, #0x492]
   253c4: 39124eae     	strb	w14, [x21, #0x493]
   253c8: 391252ad     	strb	w13, [x21, #0x494]
   253cc: 391256ac     	strb	w12, [x21, #0x495]
   253d0: b9049aab     	str	w11, [x21, #0x498]
   253d4: b9049eaa     	str	w10, [x21, #0x49c]
   253d8: b904a2a9     	str	w9, [x21, #0x4a0]
   253dc: b904a6a8     	str	w8, [x21, #0x4a4]
   253e0: d5384108     	mrs	x8, SP_EL0
   253e4: f9438908     	ldr	x8, [x8, #0x710]
   253e8: f85f83a9     	ldur	x9, [x29, #-0x8]
   253ec: eb09011f     	cmp	x8, x9
   253f0: 540001e1     	b.ne	0x2542c <ghost_debug_write+0x1b8>
   253f4: aa1303e0     	mov	x0, x19
   253f8: a94e4ff4     	ldp	x20, x19, [sp, #0xe0]
   253fc: f94063f7     	ldr	x23, [sp, #0xc0]
   25400: a94d57f6     	ldp	x22, x21, [sp, #0xd0]
   25404: a94b7bfd     	ldp	x29, x30, [sp, #0xb0]
   25408: 9103c3ff     	add	sp, sp, #0xf0
   2540c: d50323bf     	autiasp
   25410: d65f03c0     	ret
   25414: 90000000     	adrp	x0, 0x25000 <ghost_debug_read+0xe0>
		0000000000025414:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12336
   25418: 91000000     	add	x0, x0, #0x0
		0000000000025418:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12336
   2541c: 94000000     	bl	0x2541c <ghost_debug_write+0x1a8>
		000000000002541c:  R_AARCH64_CALL26	_printk
   25420: 928002b3     	mov	x19, #-0x16             // =-22
   25424: 17ffffef     	b	0x253e0 <ghost_debug_write+0x16c>
   25428: d4200020     	brk	#0x1
   2542c: 94000000     	bl	0x2542c <ghost_debug_write+0x1b8>
		000000000002542c:  R_AARCH64_CALL26	__stack_chk_fail
