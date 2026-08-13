
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001f748 <tp_wake_gesture_read>:
   1f748: d503233f     	paciasp
   1f74c: d10143ff     	sub	sp, sp, #0x50
   1f750: a9027bfd     	stp	x29, x30, [sp, #0x20]
   1f754: a90357f6     	stp	x22, x21, [sp, #0x30]
   1f758: a9044ff4     	stp	x20, x19, [sp, #0x40]
   1f75c: 910083fd     	add	x29, sp, #0x20
   1f760: d5384108     	mrs	x8, SP_EL0
   1f764: aa1f03e0     	mov	x0, xzr
   1f768: f9438908     	ldr	x8, [x8, #0x710]
   1f76c: f81f83a8     	stur	x8, [x29, #-0x8]
   1f770: f9400068     	ldr	x8, [x3]
   1f774: f90007ff     	str	xzr, [sp, #0x8]
   1f778: b4000188     	cbz	x8, 0x1f7a8 <tp_wake_gesture_read+0x60>
   1f77c: d5384108     	mrs	x8, SP_EL0
   1f780: f9438908     	ldr	x8, [x8, #0x710]
   1f784: f85f83a9     	ldur	x9, [x29, #-0x8]
   1f788: eb09011f     	cmp	x8, x9
   1f78c: 54000541     	b.ne	0x1f834 <tp_wake_gesture_read+0xec>
   1f790: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   1f794: a94357f6     	ldp	x22, x21, [sp, #0x30]
   1f798: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   1f79c: 910143ff     	add	sp, sp, #0x50
   1f7a0: d50323bf     	autiasp
   1f7a4: d65f03c0     	ret
   1f7a8: 90000008     	adrp	x8, 0x1f000 <tp_single_aod_write+0x7c>
		000000000001f7a8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1f7ac: f9000bff     	str	xzr, [sp, #0x10]
   1f7b0: aa0103f5     	mov	x21, x1
   1f7b4: f9400116     	ldr	x22, [x8]
		000000000001f7b4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1f7b8: aa0203f4     	mov	x20, x2
   1f7bc: aa0303f3     	mov	x19, x3
   1f7c0: f94716c8     	ldr	x8, [x22, #0xe28]
   1f7c4: b4000128     	cbz	x8, 0x1f7e8 <tp_wake_gesture_read+0xa0>
   1f7c8: aa1603e0     	mov	x0, x22
   1f7cc: b85fc110     	ldur	w16, [x8, #-0x4]
   1f7d0: 7281af31     	movk	w17, #0xd79
   1f7d4: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   1f7d8: 6b11021f     	cmp	w16, w17
   1f7dc: 54000040     	b.eq	0x1f7e4 <tp_wake_gesture_read+0x9c>
   1f7e0: d4304500     	brk	#0x8228
   1f7e4: d63f0100     	blr	x8
   1f7e8: b94002c2     	ldr	w2, [x22]
   1f7ec: 90000000     	adrp	x0, 0x1f000 <tp_single_aod_write+0x7c>
		000000000001f7ec:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A127
   1f7f0: 91000000     	add	x0, x0, #0x0
		000000000001f7f0:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A127
   1f7f4: 90000001     	adrp	x1, 0x1f000 <tp_single_aod_write+0x7c>
		000000000001f7f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2563
   1f7f8: 91000021     	add	x1, x1, #0x0
		000000000001f7f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2563
   1f7fc: 94000000     	bl	0x1f7fc <tp_wake_gesture_read+0xb4>
		000000000001f7fc:  R_AARCH64_CALL26	_printk
   1f800: b94002c3     	ldr	w3, [x22]
   1f804: 90000002     	adrp	x2, 0x1f000 <tp_single_aod_write+0x7c>
		000000000001f804:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x499d
   1f808: 91000042     	add	x2, x2, #0x0
		000000000001f808:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x499d
   1f80c: 910023e0     	add	x0, sp, #0x8
   1f810: 52800141     	mov	w1, #0xa                // =10
   1f814: 94000000     	bl	0x1f814 <tp_wake_gesture_read+0xcc>
		000000000001f814:  R_AARCH64_CALL26	snprintf
   1f818: 93407c04     	sxtw	x4, w0
   1f81c: 910023e3     	add	x3, sp, #0x8
   1f820: aa1403e1     	mov	x1, x20
   1f824: aa1503e0     	mov	x0, x21
   1f828: aa1303e2     	mov	x2, x19
   1f82c: 94000000     	bl	0x1f82c <tp_wake_gesture_read+0xe4>
		000000000001f82c:  R_AARCH64_CALL26	simple_read_from_buffer
   1f830: 17ffffd3     	b	0x1f77c <tp_wake_gesture_read+0x34>
   1f834: 94000000     	bl	0x1f834 <tp_wake_gesture_read+0xec>
		000000000001f834:  R_AARCH64_CALL26	__stack_chk_fail
