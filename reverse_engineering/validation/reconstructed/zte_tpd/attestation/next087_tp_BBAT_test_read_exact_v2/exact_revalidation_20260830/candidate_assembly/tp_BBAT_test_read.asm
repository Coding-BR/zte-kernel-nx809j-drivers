
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000174e4 <tp_BBAT_test_read>:
   174e4: d503233f     	paciasp
   174e8: d10143ff     	sub	sp, sp, #0x50
   174ec: a9027bfd     	stp	x29, x30, [sp, #0x20]
   174f0: a90357f6     	stp	x22, x21, [sp, #0x30]
   174f4: a9044ff4     	stp	x20, x19, [sp, #0x40]
   174f8: 910083fd     	add	x29, sp, #0x20
   174fc: d5384108     	mrs	x8, SP_EL0
   17500: aa1f03e0     	mov	x0, xzr
   17504: f9438908     	ldr	x8, [x8, #0x710]
   17508: f81f83a8     	stur	x8, [x29, #-0x8]
   1750c: f9400068     	ldr	x8, [x3]
   17510: 790023ff     	strh	wzr, [sp, #0x10]
   17514: f90007ff     	str	xzr, [sp, #0x8]
   17518: b5000428     	cbnz	x8, 0x1759c <tp_BBAT_test_read+0xb8>
   1751c: 90000008     	adrp	x8, 0x17000 <ghost_debug_read+0x30>
		000000000001751c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   17520: aa0303f3     	mov	x19, x3
   17524: aa0203f4     	mov	x20, x2
   17528: f9400100     	ldr	x0, [x8]
		0000000000017528:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1752c: aa0103f5     	mov	x21, x1
   17530: f947f408     	ldr	x8, [x0, #0xfe8]
   17534: b4000168     	cbz	x8, 0x17560 <tp_BBAT_test_read+0x7c>
   17538: b85fc110     	ldur	w16, [x8, #-0x4]
   1753c: 7281af31     	movk	w17, #0xd79
   17540: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   17544: 6b11021f     	cmp	w16, w17
   17548: 54000040     	b.eq	0x17550 <tp_BBAT_test_read+0x6c>
   1754c: d4304500     	brk	#0x8228
   17550: d63f0100     	blr	x8
   17554: 350003a0     	cbnz	w0, 0x175c8 <tp_BBAT_test_read+0xe4>
   17558: 2a1f03e3     	mov	w3, wzr
   1755c: 14000005     	b	0x17570 <tp_BBAT_test_read+0x8c>
   17560: 39405008     	ldrb	w8, [x0, #0x14]
   17564: 7100011f     	cmp	w8, #0x0
   17568: 1a9f17e8     	cset	w8, eq
   1756c: 531f7903     	lsl	w3, w8, #1
   17570: 90000002     	adrp	x2, 0x17000 <ghost_debug_read+0x30>
		0000000000017570:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b5e
   17574: 91000042     	add	x2, x2, #0x0
		0000000000017574:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b5e
   17578: 910023e0     	add	x0, sp, #0x8
   1757c: 52800141     	mov	w1, #0xa                // =10
   17580: 94000000     	bl	0x17580 <tp_BBAT_test_read+0x9c>
		0000000000017580:  R_AARCH64_CALL26	snprintf
   17584: 93407c04     	sxtw	x4, w0
   17588: 910023e3     	add	x3, sp, #0x8
   1758c: aa1403e1     	mov	x1, x20
   17590: aa1503e0     	mov	x0, x21
   17594: aa1303e2     	mov	x2, x19
   17598: 94000000     	bl	0x17598 <tp_BBAT_test_read+0xb4>
		0000000000017598:  R_AARCH64_CALL26	simple_read_from_buffer
   1759c: d5384108     	mrs	x8, SP_EL0
   175a0: f9438908     	ldr	x8, [x8, #0x710]
   175a4: f85f83a9     	ldur	x9, [x29, #-0x8]
   175a8: eb09011f     	cmp	x8, x9
   175ac: 540001c1     	b.ne	0x175e4 <tp_BBAT_test_read+0x100>
   175b0: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   175b4: a94357f6     	ldp	x22, x21, [sp, #0x30]
   175b8: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   175bc: 910143ff     	add	sp, sp, #0x50
   175c0: d50323bf     	autiasp
   175c4: d65f03c0     	ret
   175c8: 90000008     	adrp	x8, 0x17000 <ghost_debug_read+0x30>
		00000000000175c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbcc8
   175cc: 91000108     	add	x8, x8, #0x0
		00000000000175cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbcc8
   175d0: 2a0003f6     	mov	w22, w0
   175d4: aa0803e0     	mov	x0, x8
   175d8: 94000000     	bl	0x175d8 <tp_BBAT_test_read+0xf4>
		00000000000175d8:  R_AARCH64_CALL26	_printk
   175dc: 2a1603e3     	mov	w3, w22
   175e0: 17ffffe4     	b	0x17570 <tp_BBAT_test_read+0x8c>
   175e4: 94000000     	bl	0x175e4 <tp_BBAT_test_read+0x100>
		00000000000175e4:  R_AARCH64_CALL26	__stack_chk_fail
