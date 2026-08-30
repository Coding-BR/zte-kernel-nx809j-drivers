
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007580 <tp_frame_data_write>:
    7580: d503233f     	paciasp
    7584: d100c3ff     	sub	sp, sp, #0x30
    7588: a9017bfd     	stp	x29, x30, [sp, #0x10]
    758c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    7590: 910043fd     	add	x29, sp, #0x10
    7594: d5384108     	mrs	x8, SP_EL0
    7598: aa0203f3     	mov	x19, x2
    759c: aa0103e0     	mov	x0, x1
    75a0: f9438908     	ldr	x8, [x8, #0x710]
    75a4: 910013e3     	add	x3, sp, #0x4
    75a8: aa0203e1     	mov	x1, x2
    75ac: 52800142     	mov	w2, #0xa                // =10
    75b0: f90007e8     	str	x8, [sp, #0x8]
    75b4: 90000008     	adrp	x8, 0x7000 <ghost_debug_read+0x30c>
		00000000000075b4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    75b8: f9400114     	ldr	x20, [x8]
		00000000000075b8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    75bc: b90007ff     	str	wzr, [sp, #0x4]
    75c0: 94000000     	bl	0x75c0 <tp_frame_data_write+0x40>
		00000000000075c0:  R_AARCH64_CALL26	kstrtouint_from_user
    75c4: 340001a0     	cbz	w0, 0x75f8 <tp_frame_data_write+0x78>
    75c8: 928002b3     	mov	x19, #-0x16             // =-22
    75cc: d5384108     	mrs	x8, SP_EL0
    75d0: f9438908     	ldr	x8, [x8, #0x710]
    75d4: f94007e9     	ldr	x9, [sp, #0x8]
    75d8: eb09011f     	cmp	x8, x9
    75dc: 54000381     	b.ne	0x764c <tp_frame_data_write+0xcc>
    75e0: aa1303e0     	mov	x0, x19
    75e4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    75e8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    75ec: 9100c3ff     	add	sp, sp, #0x30
    75f0: d50323bf     	autiasp
    75f4: d65f03c0     	ret
    75f8: b94007e8     	ldr	w8, [sp, #0x4]
    75fc: 90000000     	adrp	x0, 0x7000 <ghost_debug_read+0x30c>
		00000000000075fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x610f
    7600: 91000000     	add	x0, x0, #0x0
		0000000000007600:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x610f
    7604: 90000001     	adrp	x1, 0x7000 <ghost_debug_read+0x30c>
		0000000000007604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xabfa
    7608: 91000021     	add	x1, x1, #0x0
		0000000000007608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xabfa
    760c: 7100011f     	cmp	w8, #0x0
    7610: 1a9f07e2     	cset	w2, ne
    7614: b90007e2     	str	w2, [sp, #0x4]
    7618: 94000000     	bl	0x7618 <tp_frame_data_write+0x98>
		0000000000007618:  R_AARCH64_CALL26	_printk
    761c: f947fe88     	ldr	x8, [x20, #0xff8]
    7620: b4fffd68     	cbz	x8, 0x75cc <tp_frame_data_write+0x4c>
    7624: b94007e1     	ldr	w1, [sp, #0x4]
    7628: aa1403e0     	mov	x0, x20
    762c: b85fc110     	ldur	w16, [x8, #-0x4]
    7630: 72969331     	movk	w17, #0xb499
    7634: 72ad5f11     	movk	w17, #0x6af8, lsl #16
    7638: 6b11021f     	cmp	w16, w17
    763c: 54000040     	b.eq	0x7644 <tp_frame_data_write+0xc4>
    7640: d4304500     	brk	#0x8228
    7644: d63f0100     	blr	x8
    7648: 17ffffe1     	b	0x75cc <tp_frame_data_write+0x4c>
    764c: 94000000     	bl	0x764c <tp_frame_data_write+0xcc>
		000000000000764c:  R_AARCH64_CALL26	__stack_chk_fail
