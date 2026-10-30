
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001154c <tp_wake_gesture_write>:
   1154c: d503233f     	paciasp
   11550: d100c3ff     	sub	sp, sp, #0x30
   11554: a9017bfd     	stp	x29, x30, [sp, #0x10]
   11558: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1155c: 910043fd     	add	x29, sp, #0x10
   11560: d5384108     	mrs	x8, SP_EL0
   11564: aa0203f3     	mov	x19, x2
   11568: aa0103e0     	mov	x0, x1
   1156c: f9438908     	ldr	x8, [x8, #0x710]
   11570: 910013e3     	add	x3, sp, #0x4
   11574: aa0203e1     	mov	x1, x2
   11578: 52800142     	mov	w2, #0xa                // =10
   1157c: f90007e8     	str	x8, [sp, #0x8]
   11580: 90000008     	adrp	x8, 0x11000 <tp_single_game_write+0x14>
		0000000000011580:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   11584: f9400114     	ldr	x20, [x8]
		0000000000011584:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   11588: b90007ff     	str	wzr, [sp, #0x4]
   1158c: 94000000     	bl	0x1158c <tp_wake_gesture_write+0x40>
		000000000001158c:  R_AARCH64_CALL26	kstrtouint_from_user
   11590: 340001a0     	cbz	w0, 0x115c4 <tp_wake_gesture_write+0x78>
   11594: 928002b3     	mov	x19, #-0x16             // =-22
   11598: d5384108     	mrs	x8, SP_EL0
   1159c: f9438908     	ldr	x8, [x8, #0x710]
   115a0: f94007e9     	ldr	x9, [sp, #0x8]
   115a4: eb09011f     	cmp	x8, x9
   115a8: 54000381     	b.ne	0x11618 <tp_wake_gesture_write+0xcc>
   115ac: aa1303e0     	mov	x0, x19
   115b0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   115b4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   115b8: 9100c3ff     	add	sp, sp, #0x30
   115bc: d50323bf     	autiasp
   115c0: d65f03c0     	ret
   115c4: b94007e8     	ldr	w8, [sp, #0x4]
   115c8: 90000000     	adrp	x0, 0x11000 <tp_single_game_write+0x14>
		00000000000115c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d32
   115cc: 91000000     	add	x0, x0, #0x0
		00000000000115cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d32
   115d0: 90000001     	adrp	x1, 0x11000 <tp_single_game_write+0x14>
		00000000000115d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be7e
   115d4: 91000021     	add	x1, x1, #0x0
		00000000000115d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be7e
   115d8: 7100011f     	cmp	w8, #0x0
   115dc: 1a9f07e2     	cset	w2, ne
   115e0: b90007e2     	str	w2, [sp, #0x4]
   115e4: 94000000     	bl	0x115e4 <tp_wake_gesture_write+0x98>
		00000000000115e4:  R_AARCH64_CALL26	_printk
   115e8: f9471a88     	ldr	x8, [x20, #0xe30]
   115ec: b4fffd68     	cbz	x8, 0x11598 <tp_wake_gesture_write+0x4c>
   115f0: b94007e1     	ldr	w1, [sp, #0x4]
   115f4: aa1403e0     	mov	x0, x20
   115f8: b85fc110     	ldur	w16, [x8, #-0x4]
   115fc: 72969331     	movk	w17, #0xb499
   11600: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   11604: 6b11021f     	cmp	w16, w17
   11608: 54000040     	b.eq	0x11610 <tp_wake_gesture_write+0xc4>
   1160c: d4304500     	brk	#0x8228
   11610: d63f0100     	blr	x8
   11614: 17ffffe1     	b	0x11598 <tp_wake_gesture_write+0x4c>
   11618: 94000000     	bl	0x11618 <tp_wake_gesture_write+0xcc>
		0000000000011618:  R_AARCH64_CALL26	__stack_chk_fail
