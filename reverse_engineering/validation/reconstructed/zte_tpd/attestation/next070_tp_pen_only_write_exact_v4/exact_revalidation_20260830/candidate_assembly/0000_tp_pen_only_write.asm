
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000c5f0 <tp_pen_only_write>:
    c5f0: d503233f     	paciasp
    c5f4: d10143ff     	sub	sp, sp, #0x50
    c5f8: a9027bfd     	stp	x29, x30, [sp, #0x20]
    c5fc: f9001bf5     	str	x21, [sp, #0x30]
    c600: a9044ff4     	stp	x20, x19, [sp, #0x40]
    c604: 910083fd     	add	x29, sp, #0x20
    c608: d5384108     	mrs	x8, SP_EL0
    c60c: aa0103f5     	mov	x21, x1
    c610: 910023e0     	add	x0, sp, #0x8
    c614: f9438908     	ldr	x8, [x8, #0x710]
    c618: f100245f     	cmp	x2, #0x9
    c61c: f81f83a8     	stur	x8, [x29, #-0x8]
    c620: 90000008     	adrp	x8, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c620:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    c624: f9400114     	ldr	x20, [x8]
		000000000000c624:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    c628: 52800128     	mov	w8, #0x9                // =9
    c62c: b90007ff     	str	wzr, [sp, #0x4]
    c630: 9a883053     	csel	x19, x2, x8, lo
    c634: 2a1f03e2     	mov	w2, wzr
    c638: 790023ff     	strh	wzr, [sp, #0x10]
    c63c: aa1303e1     	mov	x1, x19
    c640: f90007ff     	str	xzr, [sp, #0x8]
    c644: 94000000     	bl	0xc644 <tp_pen_only_write+0x54>
		000000000000c644:  R_AARCH64_CALL26	__check_object_size
    c648: 910023e0     	add	x0, sp, #0x8
    c64c: aa1503e1     	mov	x1, x21
    c650: aa1303e2     	mov	x2, x19
    c654: 94000000     	bl	0xc654 <tp_pen_only_write+0x64>
		000000000000c654:  R_AARCH64_CALL26	_inline_copy_from_user
    c658: 350000c0     	cbnz	w0, 0xc670 <tp_pen_only_write+0x80>
    c65c: 910023e0     	add	x0, sp, #0x8
    c660: 910013e2     	add	x2, sp, #0x4
    c664: 2a1f03e1     	mov	w1, wzr
    c668: 94000000     	bl	0xc668 <tp_pen_only_write+0x78>
		000000000000c668:  R_AARCH64_CALL26	kstrtouint
    c66c: 340001c0     	cbz	w0, 0xc6a4 <tp_pen_only_write+0xb4>
    c670: 928002b3     	mov	x19, #-0x16             // =-22
    c674: d5384108     	mrs	x8, SP_EL0
    c678: f9438908     	ldr	x8, [x8, #0x710]
    c67c: f85f83a9     	ldur	x9, [x29, #-0x8]
    c680: eb09011f     	cmp	x8, x9
    c684: 540003c1     	b.ne	0xc6fc <tp_pen_only_write+0x10c>
    c688: aa1303e0     	mov	x0, x19
    c68c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    c690: f9401bf5     	ldr	x21, [sp, #0x30]
    c694: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    c698: 910143ff     	add	sp, sp, #0x50
    c69c: d50323bf     	autiasp
    c6a0: d65f03c0     	ret
    c6a4: b94007e8     	ldr	w8, [sp, #0x4]
    c6a8: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c6a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c728
    c6ac: 91000000     	add	x0, x0, #0x0
		000000000000c6ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c728
    c6b0: 90000001     	adrp	x1, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c6b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd53
    c6b4: 91000021     	add	x1, x1, #0x0
		000000000000c6b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd53
    c6b8: 7100011f     	cmp	w8, #0x0
    c6bc: 1a9f07e2     	cset	w2, ne
    c6c0: b90007e2     	str	w2, [sp, #0x4]
    c6c4: 39110682     	strb	w2, [x20, #0x441]
    c6c8: 94000000     	bl	0xc6c8 <tp_pen_only_write+0xd8>
		000000000000c6c8:  R_AARCH64_CALL26	_printk
    c6cc: f947c688     	ldr	x8, [x20, #0xf88]
    c6d0: b4fffd28     	cbz	x8, 0xc674 <tp_pen_only_write+0x84>
    c6d4: b94007e1     	ldr	w1, [sp, #0x4]
    c6d8: aa1403e0     	mov	x0, x20
    c6dc: b85fc110     	ldur	w16, [x8, #-0x4]
    c6e0: 7287b831     	movk	w17, #0x3dc1
    c6e4: 72bc3ad1     	movk	w17, #0xe1d6, lsl #16
    c6e8: 6b11021f     	cmp	w16, w17
    c6ec: 54000040     	b.eq	0xc6f4 <tp_pen_only_write+0x104>
    c6f0: d4304500     	brk	#0x8228
    c6f4: d63f0100     	blr	x8
    c6f8: 17ffffdf     	b	0xc674 <tp_pen_only_write+0x84>
    c6fc: 94000000     	bl	0xc6fc <tp_pen_only_write+0x10c>
		000000000000c6fc:  R_AARCH64_CALL26	__stack_chk_fail
