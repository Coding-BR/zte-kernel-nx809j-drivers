
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000c428 <tp_palm_mode_write>:
    c428: d503233f     	paciasp
    c42c: d100c3ff     	sub	sp, sp, #0x30
    c430: a9017bfd     	stp	x29, x30, [sp, #0x10]
    c434: a9024ff4     	stp	x20, x19, [sp, #0x20]
    c438: 910043fd     	add	x29, sp, #0x10
    c43c: d5384108     	mrs	x8, SP_EL0
    c440: aa0203f3     	mov	x19, x2
    c444: aa0103e0     	mov	x0, x1
    c448: f9438908     	ldr	x8, [x8, #0x710]
    c44c: 910013e3     	add	x3, sp, #0x4
    c450: aa0203e1     	mov	x1, x2
    c454: 52800142     	mov	w2, #0xa                // =10
    c458: f90007e8     	str	x8, [sp, #0x8]
    c45c: 90000008     	adrp	x8, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c45c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    c460: f9400114     	ldr	x20, [x8]
		000000000000c460:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    c464: b90007ff     	str	wzr, [sp, #0x4]
    c468: 94000000     	bl	0xc468 <tp_palm_mode_write+0x40>
		000000000000c468:  R_AARCH64_CALL26	kstrtouint_from_user
    c46c: 340001a0     	cbz	w0, 0xc4a0 <tp_palm_mode_write+0x78>
    c470: 928002b3     	mov	x19, #-0x16             // =-22
    c474: d5384108     	mrs	x8, SP_EL0
    c478: f9438908     	ldr	x8, [x8, #0x710]
    c47c: f94007e9     	ldr	x9, [sp, #0x8]
    c480: eb09011f     	cmp	x8, x9
    c484: 54000381     	b.ne	0xc4f4 <tp_palm_mode_write+0xcc>
    c488: aa1303e0     	mov	x0, x19
    c48c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    c490: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    c494: 9100c3ff     	add	sp, sp, #0x30
    c498: d50323bf     	autiasp
    c49c: d65f03c0     	ret
    c4a0: b94007e8     	ldr	w8, [sp, #0x4]
    c4a4: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c4a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d88
    c4a8: 91000000     	add	x0, x0, #0x0
		000000000000c4a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d88
    c4ac: 90000001     	adrp	x1, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c4ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad16
    c4b0: 91000021     	add	x1, x1, #0x0
		000000000000c4b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad16
    c4b4: 7100011f     	cmp	w8, #0x0
    c4b8: 1a9f07e2     	cset	w2, ne
    c4bc: b90007e2     	str	w2, [sp, #0x4]
    c4c0: 94000000     	bl	0xc4c0 <tp_palm_mode_write+0x98>
		000000000000c4c0:  R_AARCH64_CALL26	_printk
    c4c4: f947da88     	ldr	x8, [x20, #0xfb0]
    c4c8: b4fffd68     	cbz	x8, 0xc474 <tp_palm_mode_write+0x4c>
    c4cc: b94007e1     	ldr	w1, [sp, #0x4]
    c4d0: aa1403e0     	mov	x0, x20
    c4d4: b85fc110     	ldur	w16, [x8, #-0x4]
    c4d8: 72969331     	movk	w17, #0xb499
    c4dc: 72ad5f11     	movk	w17, #0x6af8, lsl #16
    c4e0: 6b11021f     	cmp	w16, w17
    c4e4: 54000040     	b.eq	0xc4ec <tp_palm_mode_write+0xc4>
    c4e8: d4304500     	brk	#0x8228
    c4ec: d63f0100     	blr	x8
    c4f0: 17ffffe1     	b	0xc474 <tp_palm_mode_write+0x4c>
    c4f4: 94000000     	bl	0xc4f4 <tp_palm_mode_write+0xcc>
		000000000000c4f4:  R_AARCH64_CALL26	__stack_chk_fail
