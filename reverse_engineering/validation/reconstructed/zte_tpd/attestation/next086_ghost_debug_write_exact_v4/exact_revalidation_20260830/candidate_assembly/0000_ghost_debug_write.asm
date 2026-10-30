
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000017324 <ghost_debug_write>:
   17324: d503233f     	paciasp
   17328: d103c3ff     	sub	sp, sp, #0xf0
   1732c: a90b7bfd     	stp	x29, x30, [sp, #0xb0]
   17330: f90063f7     	str	x23, [sp, #0xc0]
   17334: a90d57f6     	stp	x22, x21, [sp, #0xd0]
   17338: a90e4ff4     	stp	x20, x19, [sp, #0xe0]
   1733c: 9102c3fd     	add	x29, sp, #0xb0
   17340: d5384108     	mrs	x8, SP_EL0
   17344: 910103f6     	add	x22, sp, #0x40
   17348: f9438908     	ldr	x8, [x8, #0x710]
   1734c: f101905f     	cmp	x2, #0x64
   17350: f81f83a8     	stur	x8, [x29, #-0x8]
   17354: 90000008     	adrp	x8, 0x17000 <ghost_debug_read+0x30>
		0000000000017354:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   17358: f9400115     	ldr	x21, [x8]
		0000000000017358:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1735c: 52800c88     	mov	w8, #0x64               // =100
   17360: b900a3ff     	str	wzr, [sp, #0xa0]
   17364: 9a883053     	csel	x19, x2, x8, lo
   17368: a9057edf     	stp	xzr, xzr, [x22, #0x50]
   1736c: a9087fff     	stp	xzr, xzr, [sp, #0x80]
   17370: a9077fff     	stp	xzr, xzr, [sp, #0x70]
   17374: a9067fff     	stp	xzr, xzr, [sp, #0x60]
   17378: a9057fff     	stp	xzr, xzr, [sp, #0x50]
   1737c: a9047fff     	stp	xzr, xzr, [sp, #0x40]
   17380: b9000fff     	str	wzr, [sp, #0xc]
   17384: a9037fff     	stp	xzr, xzr, [sp, #0x30]
   17388: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   1738c: f9000fff     	str	xzr, [sp, #0x18]
   17390: b4000161     	cbz	x1, 0x173bc <ghost_debug_write+0x98>
   17394: aa0103f4     	mov	x20, x1
   17398: 910103e0     	add	x0, sp, #0x40
   1739c: aa1303e1     	mov	x1, x19
   173a0: 2a1f03e2     	mov	w2, wzr
   173a4: 94000000     	bl	0x173a4 <ghost_debug_write+0x80>
		00000000000173a4:  R_AARCH64_CALL26	__check_object_size
   173a8: 910103e0     	add	x0, sp, #0x40
   173ac: aa1403e1     	mov	x1, x20
   173b0: aa1303e2     	mov	x2, x19
   173b4: 97fff31a     	bl	0x1401c <syna_tcm_reset+0x154>
		00000000000173b4:  R_AARCH64_CALL26	_inline_copy_from_user
   173b8: b5000860     	cbnz	x0, 0x174c4 <ghost_debug_write+0x1a0>
   173bc: 90000001     	adrp	x1, 0x17000 <ghost_debug_read+0x30>
		00000000000173bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f00
   173c0: 91000021     	add	x1, x1, #0x0
		00000000000173c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f00
   173c4: 910043e0     	add	x0, sp, #0x10
   173c8: f9000bf6     	str	x22, [sp, #0x10]
   173cc: 94000000     	bl	0x173cc <ghost_debug_write+0xa8>
		00000000000173cc:  R_AARCH64_CALL26	strsep
   173d0: b40003c0     	cbz	x0, 0x17448 <ghost_debug_write+0x124>
   173d4: 2a1f03f6     	mov	w22, wzr
   173d8: 910063f7     	add	x23, sp, #0x18
   173dc: 90000014     	adrp	x20, 0x17000 <ghost_debug_read+0x30>
		00000000000173dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f00
   173e0: 91000294     	add	x20, x20, #0x0
		00000000000173e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f00
   173e4: 910033e2     	add	x2, sp, #0xc
   173e8: 52800141     	mov	w1, #0xa                // =10
   173ec: 94000000     	bl	0x173ec <ghost_debug_write+0xc8>
		00000000000173ec:  R_AARCH64_CALL26	kstrtouint
   173f0: 350000c0     	cbnz	w0, 0x17408 <ghost_debug_write+0xe4>
   173f4: 71004edf     	cmp	w22, #0x13
   173f8: 54000708     	b.hi	0x174d8 <ghost_debug_write+0x1b4>
   173fc: b9400fe8     	ldr	w8, [sp, #0xc]
   17400: 78365ae8     	strh	w8, [x23, w22, uxtw #1]
   17404: 110006d6     	add	w22, w22, #0x1
   17408: 910043e0     	add	x0, sp, #0x10
   1740c: aa1403e1     	mov	x1, x20
   17410: 94000000     	bl	0x17410 <ghost_debug_write+0xec>
		0000000000017410:  R_AARCH64_CALL26	strsep
   17414: b4000060     	cbz	x0, 0x17420 <ghost_debug_write+0xfc>
   17418: 71002adf     	cmp	w22, #0xa
   1741c: 54fffe43     	b.lo	0x173e4 <ghost_debug_write+0xc0>
   17420: 794047eb     	ldrh	w11, [sp, #0x22]
   17424: 79404bea     	ldrh	w10, [sp, #0x24]
   17428: 79404fe9     	ldrh	w9, [sp, #0x26]
   1742c: 794053e8     	ldrh	w8, [sp, #0x28]
   17430: 394083ec     	ldrb	w12, [sp, #0x20]
   17434: 39407bed     	ldrb	w13, [sp, #0x1e]
   17438: 394073ee     	ldrb	w14, [sp, #0x1c]
   1743c: 39406bef     	ldrb	w15, [sp, #0x1a]
   17440: 394063f0     	ldrb	w16, [sp, #0x18]
   17444: 1400000a     	b	0x1746c <ghost_debug_write+0x148>
   17448: 2a1f03e8     	mov	w8, wzr
   1744c: 2a1f03e9     	mov	w9, wzr
   17450: 2a1f03ea     	mov	w10, wzr
   17454: 2a1f03eb     	mov	w11, wzr
   17458: 2a1f03ec     	mov	w12, wzr
   1745c: 2a1f03ed     	mov	w13, wzr
   17460: 2a1f03ee     	mov	w14, wzr
   17464: 2a1f03ef     	mov	w15, wzr
   17468: 2a1f03f0     	mov	w16, wzr
   1746c: 391246b0     	strb	w16, [x21, #0x491]
   17470: 39124aaf     	strb	w15, [x21, #0x492]
   17474: 39124eae     	strb	w14, [x21, #0x493]
   17478: 391252ad     	strb	w13, [x21, #0x494]
   1747c: 391256ac     	strb	w12, [x21, #0x495]
   17480: b9049aab     	str	w11, [x21, #0x498]
   17484: b9049eaa     	str	w10, [x21, #0x49c]
   17488: b904a2a9     	str	w9, [x21, #0x4a0]
   1748c: b904a6a8     	str	w8, [x21, #0x4a4]
   17490: d5384108     	mrs	x8, SP_EL0
   17494: f9438908     	ldr	x8, [x8, #0x710]
   17498: f85f83a9     	ldur	x9, [x29, #-0x8]
   1749c: eb09011f     	cmp	x8, x9
   174a0: 540001e1     	b.ne	0x174dc <ghost_debug_write+0x1b8>
   174a4: aa1303e0     	mov	x0, x19
   174a8: a94e4ff4     	ldp	x20, x19, [sp, #0xe0]
   174ac: f94063f7     	ldr	x23, [sp, #0xc0]
   174b0: a94d57f6     	ldp	x22, x21, [sp, #0xd0]
   174b4: a94b7bfd     	ldp	x29, x30, [sp, #0xb0]
   174b8: 9103c3ff     	add	sp, sp, #0xf0
   174bc: d50323bf     	autiasp
   174c0: d65f03c0     	ret
   174c4: 90000000     	adrp	x0, 0x17000 <ghost_debug_read+0x30>
		00000000000174c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b0
   174c8: 91000000     	add	x0, x0, #0x0
		00000000000174c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b0
   174cc: 94000000     	bl	0x174cc <ghost_debug_write+0x1a8>
		00000000000174cc:  R_AARCH64_CALL26	_printk
   174d0: 928002b3     	mov	x19, #-0x16             // =-22
   174d4: 17ffffef     	b	0x17490 <ghost_debug_write+0x16c>
   174d8: d4200020     	brk	#0x1
   174dc: 94000000     	bl	0x174dc <ghost_debug_write+0x1b8>
		00000000000174dc:  R_AARCH64_CALL26	__stack_chk_fail
