
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000017380 <ghost_debug_write>:
   17380: d503233f     	paciasp
   17384: d103c3ff     	sub	sp, sp, #0xf0
   17388: a90b7bfd     	stp	x29, x30, [sp, #0xb0]
   1738c: f90063f7     	str	x23, [sp, #0xc0]
   17390: a90d57f6     	stp	x22, x21, [sp, #0xd0]
   17394: a90e4ff4     	stp	x20, x19, [sp, #0xe0]
   17398: 9102c3fd     	add	x29, sp, #0xb0
   1739c: d5384108     	mrs	x8, SP_EL0
   173a0: 910103f6     	add	x22, sp, #0x40
   173a4: f9438908     	ldr	x8, [x8, #0x710]
   173a8: f101905f     	cmp	x2, #0x64
   173ac: f81f83a8     	stur	x8, [x29, #-0x8]
   173b0: 90000008     	adrp	x8, 0x17000 <tp_zlog_debug_write+0xa8>
		00000000000173b0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   173b4: f9400115     	ldr	x21, [x8]
		00000000000173b4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   173b8: 52800c88     	mov	w8, #0x64               // =100
   173bc: b900a3ff     	str	wzr, [sp, #0xa0]
   173c0: 9a883053     	csel	x19, x2, x8, lo
   173c4: a9057edf     	stp	xzr, xzr, [x22, #0x50]
   173c8: a9087fff     	stp	xzr, xzr, [sp, #0x80]
   173cc: a9077fff     	stp	xzr, xzr, [sp, #0x70]
   173d0: a9067fff     	stp	xzr, xzr, [sp, #0x60]
   173d4: a9057fff     	stp	xzr, xzr, [sp, #0x50]
   173d8: a9047fff     	stp	xzr, xzr, [sp, #0x40]
   173dc: b9000fff     	str	wzr, [sp, #0xc]
   173e0: a9037fff     	stp	xzr, xzr, [sp, #0x30]
   173e4: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   173e8: f9000fff     	str	xzr, [sp, #0x18]
   173ec: b4000161     	cbz	x1, 0x17418 <ghost_debug_write+0x98>
   173f0: aa0103f4     	mov	x20, x1
   173f4: 910103e0     	add	x0, sp, #0x40
   173f8: aa1303e1     	mov	x1, x19
   173fc: 2a1f03e2     	mov	w2, wzr
   17400: 94000000     	bl	0x17400 <ghost_debug_write+0x80>
		0000000000017400:  R_AARCH64_CALL26	__check_object_size
   17404: 910103e0     	add	x0, sp, #0x40
   17408: aa1403e1     	mov	x1, x20
   1740c: aa1303e2     	mov	x2, x19
   17410: 97fff31a     	bl	0x14078 <syna_tcm_reset+0x154>
		0000000000017410:  R_AARCH64_CALL26	_inline_copy_from_user
   17414: b5000860     	cbnz	x0, 0x17520 <ghost_debug_write+0x1a0>
   17418: 90000001     	adrp	x1, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017418:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f00
   1741c: 91000021     	add	x1, x1, #0x0
		000000000001741c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f00
   17420: 910043e0     	add	x0, sp, #0x10
   17424: f9000bf6     	str	x22, [sp, #0x10]
   17428: 94000000     	bl	0x17428 <ghost_debug_write+0xa8>
		0000000000017428:  R_AARCH64_CALL26	strsep
   1742c: b40003c0     	cbz	x0, 0x174a4 <ghost_debug_write+0x124>
   17430: 2a1f03f6     	mov	w22, wzr
   17434: 910063f7     	add	x23, sp, #0x18
   17438: 90000014     	adrp	x20, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017438:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f00
   1743c: 91000294     	add	x20, x20, #0x0
		000000000001743c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f00
   17440: 910033e2     	add	x2, sp, #0xc
   17444: 52800141     	mov	w1, #0xa                // =10
   17448: 94000000     	bl	0x17448 <ghost_debug_write+0xc8>
		0000000000017448:  R_AARCH64_CALL26	kstrtouint
   1744c: 350000c0     	cbnz	w0, 0x17464 <ghost_debug_write+0xe4>
   17450: 71004edf     	cmp	w22, #0x13
   17454: 54000708     	b.hi	0x17534 <ghost_debug_write+0x1b4>
   17458: b9400fe8     	ldr	w8, [sp, #0xc]
   1745c: 78365ae8     	strh	w8, [x23, w22, uxtw #1]
   17460: 110006d6     	add	w22, w22, #0x1
   17464: 910043e0     	add	x0, sp, #0x10
   17468: aa1403e1     	mov	x1, x20
   1746c: 94000000     	bl	0x1746c <ghost_debug_write+0xec>
		000000000001746c:  R_AARCH64_CALL26	strsep
   17470: b4000060     	cbz	x0, 0x1747c <ghost_debug_write+0xfc>
   17474: 71002adf     	cmp	w22, #0xa
   17478: 54fffe43     	b.lo	0x17440 <ghost_debug_write+0xc0>
   1747c: 794047eb     	ldrh	w11, [sp, #0x22]
   17480: 79404bea     	ldrh	w10, [sp, #0x24]
   17484: 79404fe9     	ldrh	w9, [sp, #0x26]
   17488: 794053e8     	ldrh	w8, [sp, #0x28]
   1748c: 394083ec     	ldrb	w12, [sp, #0x20]
   17490: 39407bed     	ldrb	w13, [sp, #0x1e]
   17494: 394073ee     	ldrb	w14, [sp, #0x1c]
   17498: 39406bef     	ldrb	w15, [sp, #0x1a]
   1749c: 394063f0     	ldrb	w16, [sp, #0x18]
   174a0: 1400000a     	b	0x174c8 <ghost_debug_write+0x148>
   174a4: 2a1f03e8     	mov	w8, wzr
   174a8: 2a1f03e9     	mov	w9, wzr
   174ac: 2a1f03ea     	mov	w10, wzr
   174b0: 2a1f03eb     	mov	w11, wzr
   174b4: 2a1f03ec     	mov	w12, wzr
   174b8: 2a1f03ed     	mov	w13, wzr
   174bc: 2a1f03ee     	mov	w14, wzr
   174c0: 2a1f03ef     	mov	w15, wzr
   174c4: 2a1f03f0     	mov	w16, wzr
   174c8: 391246b0     	strb	w16, [x21, #0x491]
   174cc: 39124aaf     	strb	w15, [x21, #0x492]
   174d0: 39124eae     	strb	w14, [x21, #0x493]
   174d4: 391252ad     	strb	w13, [x21, #0x494]
   174d8: 391256ac     	strb	w12, [x21, #0x495]
   174dc: b9049aab     	str	w11, [x21, #0x498]
   174e0: b9049eaa     	str	w10, [x21, #0x49c]
   174e4: b904a2a9     	str	w9, [x21, #0x4a0]
   174e8: b904a6a8     	str	w8, [x21, #0x4a4]
   174ec: d5384108     	mrs	x8, SP_EL0
   174f0: f9438908     	ldr	x8, [x8, #0x710]
   174f4: f85f83a9     	ldur	x9, [x29, #-0x8]
   174f8: eb09011f     	cmp	x8, x9
   174fc: 540001e1     	b.ne	0x17538 <ghost_debug_write+0x1b8>
   17500: aa1303e0     	mov	x0, x19
   17504: a94e4ff4     	ldp	x20, x19, [sp, #0xe0]
   17508: f94063f7     	ldr	x23, [sp, #0xc0]
   1750c: a94d57f6     	ldp	x22, x21, [sp, #0xd0]
   17510: a94b7bfd     	ldp	x29, x30, [sp, #0xb0]
   17514: 9103c3ff     	add	sp, sp, #0xf0
   17518: d50323bf     	autiasp
   1751c: d65f03c0     	ret
   17520: 90000000     	adrp	x0, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017520:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b0
   17524: 91000000     	add	x0, x0, #0x0
		0000000000017524:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b0
   17528: 94000000     	bl	0x17528 <ghost_debug_write+0x1a8>
		0000000000017528:  R_AARCH64_CALL26	_printk
   1752c: 928002b3     	mov	x19, #-0x16             // =-22
   17530: 17ffffef     	b	0x174ec <ghost_debug_write+0x16c>
   17534: d4200020     	brk	#0x1
   17538: 94000000     	bl	0x17538 <ghost_debug_write+0x1b8>
		0000000000017538:  R_AARCH64_CALL26	__stack_chk_fail
