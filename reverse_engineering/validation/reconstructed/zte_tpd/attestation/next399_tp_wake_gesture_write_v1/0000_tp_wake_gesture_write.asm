
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001f83c <tp_wake_gesture_write>:
   1f83c: d503233f     	paciasp
   1f840: d100c3ff     	sub	sp, sp, #0x30
   1f844: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1f848: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1f84c: 910043fd     	add	x29, sp, #0x10
   1f850: d5384108     	mrs	x8, SP_EL0
   1f854: aa0203f3     	mov	x19, x2
   1f858: aa0103e0     	mov	x0, x1
   1f85c: f9438908     	ldr	x8, [x8, #0x710]
   1f860: 910013e3     	add	x3, sp, #0x4
   1f864: aa0203e1     	mov	x1, x2
   1f868: 52800142     	mov	w2, #0xa                // =10
   1f86c: f90007e8     	str	x8, [sp, #0x8]
   1f870: 90000008     	adrp	x8, 0x1f000 <tp_single_aod_write+0x7c>
		000000000001f870:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1f874: f9400114     	ldr	x20, [x8]
		000000000001f874:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1f878: b90007ff     	str	wzr, [sp, #0x4]
   1f87c: 94000000     	bl	0x1f87c <tp_wake_gesture_write+0x40>
		000000000001f87c:  R_AARCH64_CALL26	kstrtouint_from_user
   1f880: 340001a0     	cbz	w0, 0x1f8b4 <tp_wake_gesture_write+0x78>
   1f884: 928002b3     	mov	x19, #-0x16             // =-22
   1f888: d5384108     	mrs	x8, SP_EL0
   1f88c: f9438908     	ldr	x8, [x8, #0x710]
   1f890: f94007e9     	ldr	x9, [sp, #0x8]
   1f894: eb09011f     	cmp	x8, x9
   1f898: 54000381     	b.ne	0x1f908 <tp_wake_gesture_write+0xcc>
   1f89c: aa1303e0     	mov	x0, x19
   1f8a0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1f8a4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1f8a8: 9100c3ff     	add	sp, sp, #0x30
   1f8ac: d50323bf     	autiasp
   1f8b0: d65f03c0     	ret
   1f8b4: b94007e8     	ldr	w8, [sp, #0x4]
   1f8b8: 90000000     	adrp	x0, 0x1f000 <tp_single_aod_write+0x7c>
		000000000001f8b8:  R_AARCH64_ADR_PREL_PG_HI21	unk_328A8
   1f8bc: 91000000     	add	x0, x0, #0x0
		000000000001f8bc:  R_AARCH64_ADD_ABS_LO12_NC	unk_328A8
   1f8c0: 90000001     	adrp	x1, 0x1f000 <tp_single_aod_write+0x7c>
		000000000001f8c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4fe4
   1f8c4: 91000021     	add	x1, x1, #0x0
		000000000001f8c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4fe4
   1f8c8: 7100011f     	cmp	w8, #0x0
   1f8cc: 1a9f07e2     	cset	w2, ne
   1f8d0: b90007e2     	str	w2, [sp, #0x4]
   1f8d4: 94000000     	bl	0x1f8d4 <tp_wake_gesture_write+0x98>
		000000000001f8d4:  R_AARCH64_CALL26	_printk
   1f8d8: f9471a88     	ldr	x8, [x20, #0xe30]
   1f8dc: b4fffd68     	cbz	x8, 0x1f888 <tp_wake_gesture_write+0x4c>
   1f8e0: b94007e1     	ldr	w1, [sp, #0x4]
   1f8e4: aa1403e0     	mov	x0, x20
   1f8e8: b85fc110     	ldur	w16, [x8, #-0x4]
   1f8ec: 72969331     	movk	w17, #0xb499
   1f8f0: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   1f8f4: 6b11021f     	cmp	w16, w17
   1f8f8: 54000040     	b.eq	0x1f900 <tp_wake_gesture_write+0xc4>
   1f8fc: d4304500     	brk	#0x8228
   1f900: d63f0100     	blr	x8
   1f904: 17ffffe1     	b	0x1f888 <tp_wake_gesture_write+0x4c>
   1f908: 94000000     	bl	0x1f908 <tp_wake_gesture_write+0xcc>
		000000000001f908:  R_AARCH64_CALL26	__stack_chk_fail
