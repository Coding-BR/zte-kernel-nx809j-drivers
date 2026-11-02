
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000017540 <tp_BBAT_test_read>:
   17540: d503233f     	paciasp
   17544: d10143ff     	sub	sp, sp, #0x50
   17548: a9027bfd     	stp	x29, x30, [sp, #0x20]
   1754c: a90357f6     	stp	x22, x21, [sp, #0x30]
   17550: a9044ff4     	stp	x20, x19, [sp, #0x40]
   17554: 910083fd     	add	x29, sp, #0x20
   17558: d5384108     	mrs	x8, SP_EL0
   1755c: aa1f03e0     	mov	x0, xzr
   17560: f9438908     	ldr	x8, [x8, #0x710]
   17564: f81f83a8     	stur	x8, [x29, #-0x8]
   17568: f9400068     	ldr	x8, [x3]
   1756c: 790023ff     	strh	wzr, [sp, #0x10]
   17570: f90007ff     	str	xzr, [sp, #0x8]
   17574: b5000428     	cbnz	x8, 0x175f8 <tp_BBAT_test_read+0xb8>
   17578: 90000008     	adrp	x8, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017578:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1757c: aa0303f3     	mov	x19, x3
   17580: aa0203f4     	mov	x20, x2
   17584: f9400100     	ldr	x0, [x8]
		0000000000017584:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   17588: aa0103f5     	mov	x21, x1
   1758c: f947f408     	ldr	x8, [x0, #0xfe8]
   17590: b4000168     	cbz	x8, 0x175bc <tp_BBAT_test_read+0x7c>
   17594: b85fc110     	ldur	w16, [x8, #-0x4]
   17598: 7281af31     	movk	w17, #0xd79
   1759c: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   175a0: 6b11021f     	cmp	w16, w17
   175a4: 54000040     	b.eq	0x175ac <tp_BBAT_test_read+0x6c>
   175a8: d4304500     	brk	#0x8228
   175ac: d63f0100     	blr	x8
   175b0: 350003a0     	cbnz	w0, 0x17624 <tp_BBAT_test_read+0xe4>
   175b4: 2a1f03e3     	mov	w3, wzr
   175b8: 14000005     	b	0x175cc <tp_BBAT_test_read+0x8c>
   175bc: 39405008     	ldrb	w8, [x0, #0x14]
   175c0: 7100011f     	cmp	w8, #0x0
   175c4: 1a9f17e8     	cset	w8, eq
   175c8: 531f7903     	lsl	w3, w8, #1
   175cc: 90000002     	adrp	x2, 0x17000 <tp_zlog_debug_write+0xa8>
		00000000000175cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b5e
   175d0: 91000042     	add	x2, x2, #0x0
		00000000000175d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b5e
   175d4: 910023e0     	add	x0, sp, #0x8
   175d8: 52800141     	mov	w1, #0xa                // =10
   175dc: 94000000     	bl	0x175dc <tp_BBAT_test_read+0x9c>
		00000000000175dc:  R_AARCH64_CALL26	snprintf
   175e0: 93407c04     	sxtw	x4, w0
   175e4: 910023e3     	add	x3, sp, #0x8
   175e8: aa1403e1     	mov	x1, x20
   175ec: aa1503e0     	mov	x0, x21
   175f0: aa1303e2     	mov	x2, x19
   175f4: 94000000     	bl	0x175f4 <tp_BBAT_test_read+0xb4>
		00000000000175f4:  R_AARCH64_CALL26	simple_read_from_buffer
   175f8: d5384108     	mrs	x8, SP_EL0
   175fc: f9438908     	ldr	x8, [x8, #0x710]
   17600: f85f83a9     	ldur	x9, [x29, #-0x8]
   17604: eb09011f     	cmp	x8, x9
   17608: 540001c1     	b.ne	0x17640 <tp_BBAT_test_read+0x100>
   1760c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   17610: a94357f6     	ldp	x22, x21, [sp, #0x30]
   17614: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   17618: 910143ff     	add	sp, sp, #0x50
   1761c: d50323bf     	autiasp
   17620: d65f03c0     	ret
   17624: 90000008     	adrp	x8, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017624:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbcc8
   17628: 91000108     	add	x8, x8, #0x0
		0000000000017628:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbcc8
   1762c: 2a0003f6     	mov	w22, w0
   17630: aa0803e0     	mov	x0, x8
   17634: 94000000     	bl	0x17634 <tp_BBAT_test_read+0xf4>
		0000000000017634:  R_AARCH64_CALL26	_printk
   17638: 2a1603e3     	mov	w3, w22
   1763c: 17ffffe4     	b	0x175cc <tp_BBAT_test_read+0x8c>
   17640: 94000000     	bl	0x17640 <tp_BBAT_test_read+0x100>
		0000000000017640:  R_AARCH64_CALL26	__stack_chk_fail
