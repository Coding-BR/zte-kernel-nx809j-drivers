
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025308 <tp_test_read>:
   25308: d503233f     	paciasp
   2530c: d10143ff     	sub	sp, sp, #0x50
   25310: a9027bfd     	stp	x29, x30, [sp, #0x20]
   25314: a90357f6     	stp	x22, x21, [sp, #0x30]
   25318: a9044ff4     	stp	x20, x19, [sp, #0x40]
   2531c: 910083fd     	add	x29, sp, #0x20
   25320: d5384108     	mrs	x8, SP_EL0
   25324: aa1f03e0     	mov	x0, xzr
   25328: f9438908     	ldr	x8, [x8, #0x710]
   2532c: f81f83a8     	stur	x8, [x29, #-0x8]
   25330: f9400068     	ldr	x8, [x3]
   25334: 790023ff     	strh	wzr, [sp, #0x10]
   25338: f90007ff     	str	xzr, [sp, #0x8]
   2533c: b4000188     	cbz	x8, 0x2536c <tp_test_read+0x64>
   25340: d5384108     	mrs	x8, SP_EL0
   25344: f9438908     	ldr	x8, [x8, #0x710]
   25348: f85f83a9     	ldur	x9, [x29, #-0x8]
   2534c: eb09011f     	cmp	x8, x9
   25350: 540005e1     	b.ne	0x2540c <tp_test_read+0x104>
   25354: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   25358: a94357f6     	ldp	x22, x21, [sp, #0x30]
   2535c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   25360: 910143ff     	add	sp, sp, #0x50
   25364: d50323bf     	autiasp
   25368: d65f03c0     	ret
   2536c: 90000008     	adrp	x8, 0x25000 <ghost_debug_read+0x34c>
		000000000002536c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25370: aa0103f5     	mov	x21, x1
   25374: aa0203f4     	mov	x20, x2
   25378: f9400116     	ldr	x22, [x8]
		0000000000025378:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   2537c: aa0303f3     	mov	x19, x3
   25380: 397002c1     	ldrb	w1, [x22, #0xc00]
   25384: 7103fc3f     	cmp	w1, #0xff
   25388: 54000181     	b.ne	0x253b8 <tp_test_read+0xb0>
   2538c: 39511ac1     	ldrb	w1, [x22, #0x446]
   25390: 90000000     	adrp	x0, 0x25000 <ghost_debug_read+0x34c>
		0000000000025390:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d914
   25394: 91000000     	add	x0, x0, #0x0
		0000000000025394:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d914
   25398: 94000000     	bl	0x25398 <tp_test_read+0x90>
		0000000000025398:  R_AARCH64_CALL26	_printk
   2539c: 394076c8     	ldrb	w8, [x22, #0x1d]
   253a0: 36000168     	tbz	w8, #0x0, 0x253cc <tp_test_read+0xc4>
   253a4: 90000000     	adrp	x0, 0x25000 <ghost_debug_read+0x34c>
		00000000000253a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17f1e
   253a8: 91000000     	add	x0, x0, #0x0
		00000000000253a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17f1e
   253ac: 94000000     	bl	0x253ac <tp_test_read+0xa4>
		00000000000253ac:  R_AARCH64_CALL26	_printk
   253b0: 2a1f03e3     	mov	w3, wzr
   253b4: 1400000a     	b	0x253dc <tp_test_read+0xd4>
   253b8: 90000000     	adrp	x0, 0x25000 <ghost_debug_read+0x34c>
		00000000000253b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x147d8
   253bc: 91000000     	add	x0, x0, #0x0
		00000000000253bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x147d8
   253c0: 94000000     	bl	0x253c0 <tp_test_read+0xb8>
		00000000000253c0:  R_AARCH64_CALL26	_printk
   253c4: 52800023     	mov	w3, #0x1                // =1
   253c8: 14000005     	b	0x253dc <tp_test_read+0xd4>
   253cc: 90000000     	adrp	x0, 0x25000 <ghost_debug_read+0x34c>
		00000000000253cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19e74
   253d0: 91000000     	add	x0, x0, #0x0
		00000000000253d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19e74
   253d4: 94000000     	bl	0x253d4 <tp_test_read+0xcc>
		00000000000253d4:  R_AARCH64_CALL26	_printk
   253d8: 52800043     	mov	w3, #0x2                // =2
   253dc: 90000002     	adrp	x2, 0x25000 <ghost_debug_read+0x34c>
		00000000000253dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x147d4
   253e0: 91000042     	add	x2, x2, #0x0
		00000000000253e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x147d4
   253e4: 910023e0     	add	x0, sp, #0x8
   253e8: 52800141     	mov	w1, #0xa                // =10
   253ec: 94000000     	bl	0x253ec <tp_test_read+0xe4>
		00000000000253ec:  R_AARCH64_CALL26	snprintf
   253f0: 93407c04     	sxtw	x4, w0
   253f4: 910023e3     	add	x3, sp, #0x8
   253f8: aa1403e1     	mov	x1, x20
   253fc: aa1503e0     	mov	x0, x21
   25400: aa1303e2     	mov	x2, x19
   25404: 94000000     	bl	0x25404 <tp_test_read+0xfc>
		0000000000025404:  R_AARCH64_CALL26	simple_read_from_buffer
   25408: 17ffffce     	b	0x25340 <tp_test_read+0x38>
   2540c: 94000000     	bl	0x2540c <tp_test_read+0x104>
		000000000002540c:  R_AARCH64_CALL26	__stack_chk_fail
