
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000c334 <tp_palm_mode_read>:
    c334: d503233f     	paciasp
    c338: d10143ff     	sub	sp, sp, #0x50
    c33c: a9027bfd     	stp	x29, x30, [sp, #0x20]
    c340: a90357f6     	stp	x22, x21, [sp, #0x30]
    c344: a9044ff4     	stp	x20, x19, [sp, #0x40]
    c348: 910083fd     	add	x29, sp, #0x20
    c34c: d5384108     	mrs	x8, SP_EL0
    c350: aa1f03e0     	mov	x0, xzr
    c354: f9438908     	ldr	x8, [x8, #0x710]
    c358: f81f83a8     	stur	x8, [x29, #-0x8]
    c35c: f9400068     	ldr	x8, [x3]
    c360: 790023ff     	strh	wzr, [sp, #0x10]
    c364: f90007ff     	str	xzr, [sp, #0x8]
    c368: b4000188     	cbz	x8, 0xc398 <tp_palm_mode_read+0x64>
    c36c: d5384108     	mrs	x8, SP_EL0
    c370: f9438908     	ldr	x8, [x8, #0x710]
    c374: f85f83a9     	ldur	x9, [x29, #-0x8]
    c378: eb09011f     	cmp	x8, x9
    c37c: 54000521     	b.ne	0xc420 <tp_palm_mode_read+0xec>
    c380: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    c384: a94357f6     	ldp	x22, x21, [sp, #0x30]
    c388: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    c38c: 910143ff     	add	sp, sp, #0x50
    c390: d50323bf     	autiasp
    c394: d65f03c0     	ret
    c398: 90000008     	adrp	x8, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c398:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    c39c: aa0103f5     	mov	x21, x1
    c3a0: aa0203f4     	mov	x20, x2
    c3a4: f9400116     	ldr	x22, [x8]
		000000000000c3a4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    c3a8: aa0303f3     	mov	x19, x3
    c3ac: f947d6c8     	ldr	x8, [x22, #0xfa8]
    c3b0: b4000128     	cbz	x8, 0xc3d4 <tp_palm_mode_read+0xa0>
    c3b4: aa1603e0     	mov	x0, x22
    c3b8: b85fc110     	ldur	w16, [x8, #-0x4]
    c3bc: 7281af31     	movk	w17, #0xd79
    c3c0: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    c3c4: 6b11021f     	cmp	w16, w17
    c3c8: 54000040     	b.eq	0xc3d0 <tp_palm_mode_read+0x9c>
    c3cc: d4304500     	brk	#0x8228
    c3d0: d63f0100     	blr	x8
    c3d4: b9447ac2     	ldr	w2, [x22, #0x478]
    c3d8: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c3d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18692
    c3dc: 91000000     	add	x0, x0, #0x0
		000000000000c3dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18692
    c3e0: 90000001     	adrp	x1, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c3e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18cbb
    c3e4: 91000021     	add	x1, x1, #0x0
		000000000000c3e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18cbb
    c3e8: 94000000     	bl	0xc3e8 <tp_palm_mode_read+0xb4>
		000000000000c3e8:  R_AARCH64_CALL26	_printk
    c3ec: b9447ac3     	ldr	w3, [x22, #0x478]
    c3f0: 90000002     	adrp	x2, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c3f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac39
    c3f4: 91000042     	add	x2, x2, #0x0
		000000000000c3f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac39
    c3f8: 910023e0     	add	x0, sp, #0x8
    c3fc: 52800141     	mov	w1, #0xa                // =10
    c400: 94000000     	bl	0xc400 <tp_palm_mode_read+0xcc>
		000000000000c400:  R_AARCH64_CALL26	snprintf
    c404: 93407c04     	sxtw	x4, w0
    c408: 910023e3     	add	x3, sp, #0x8
    c40c: aa1403e1     	mov	x1, x20
    c410: aa1503e0     	mov	x0, x21
    c414: aa1303e2     	mov	x2, x19
    c418: 94000000     	bl	0xc418 <tp_palm_mode_read+0xe4>
		000000000000c418:  R_AARCH64_CALL26	simple_read_from_buffer
    c41c: 17ffffd4     	b	0xc36c <tp_palm_mode_read+0x38>
    c420: 94000000     	bl	0xc420 <tp_palm_mode_read+0xec>
		000000000000c420:  R_AARCH64_CALL26	__stack_chk_fail
