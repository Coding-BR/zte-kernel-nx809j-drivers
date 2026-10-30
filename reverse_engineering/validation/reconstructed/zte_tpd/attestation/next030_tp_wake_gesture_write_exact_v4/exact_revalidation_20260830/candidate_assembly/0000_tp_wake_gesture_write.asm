
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000c904 <tp_wake_gesture_write>:
    c904: d503233f     	paciasp
    c908: d100c3ff     	sub	sp, sp, #0x30
    c90c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    c910: a9024ff4     	stp	x20, x19, [sp, #0x20]
    c914: 910043fd     	add	x29, sp, #0x10
    c918: d5384108     	mrs	x8, SP_EL0
    c91c: aa0203f3     	mov	x19, x2
    c920: aa0103e0     	mov	x0, x1
    c924: f9438908     	ldr	x8, [x8, #0x710]
    c928: 910013e3     	add	x3, sp, #0x4
    c92c: aa0203e1     	mov	x1, x2
    c930: 52800142     	mov	w2, #0xa                // =10
    c934: f90007e8     	str	x8, [sp, #0x8]
    c938: 90000008     	adrp	x8, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c938:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    c93c: f9400114     	ldr	x20, [x8]
		000000000000c93c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    c940: b90007ff     	str	wzr, [sp, #0x4]
    c944: 94000000     	bl	0xc944 <tp_wake_gesture_write+0x40>
		000000000000c944:  R_AARCH64_CALL26	kstrtouint_from_user
    c948: 340001a0     	cbz	w0, 0xc97c <tp_wake_gesture_write+0x78>
    c94c: 928002b3     	mov	x19, #-0x16             // =-22
    c950: d5384108     	mrs	x8, SP_EL0
    c954: f9438908     	ldr	x8, [x8, #0x710]
    c958: f94007e9     	ldr	x9, [sp, #0x8]
    c95c: eb09011f     	cmp	x8, x9
    c960: 54000381     	b.ne	0xc9d0 <tp_wake_gesture_write+0xcc>
    c964: aa1303e0     	mov	x0, x19
    c968: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    c96c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    c970: 9100c3ff     	add	sp, sp, #0x30
    c974: d50323bf     	autiasp
    c978: d65f03c0     	ret
    c97c: b94007e8     	ldr	w8, [sp, #0x4]
    c980: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c980:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17b45
    c984: 91000000     	add	x0, x0, #0x0
		000000000000c984:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17b45
    c988: 90000001     	adrp	x1, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c988:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af97
    c98c: 91000021     	add	x1, x1, #0x0
		000000000000c98c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af97
    c990: 7100011f     	cmp	w8, #0x0
    c994: 1a9f07e2     	cset	w2, ne
    c998: b90007e2     	str	w2, [sp, #0x4]
    c99c: 94000000     	bl	0xc99c <tp_wake_gesture_write+0x98>
		000000000000c99c:  R_AARCH64_CALL26	_printk
    c9a0: f9471a88     	ldr	x8, [x20, #0xe30]
    c9a4: b4fffd68     	cbz	x8, 0xc950 <tp_wake_gesture_write+0x4c>
    c9a8: b94007e1     	ldr	w1, [sp, #0x4]
    c9ac: aa1403e0     	mov	x0, x20
    c9b0: b85fc110     	ldur	w16, [x8, #-0x4]
    c9b4: 72969331     	movk	w17, #0xb499
    c9b8: 72ad5f11     	movk	w17, #0x6af8, lsl #16
    c9bc: 6b11021f     	cmp	w16, w17
    c9c0: 54000040     	b.eq	0xc9c8 <tp_wake_gesture_write+0xc4>
    c9c4: d4304500     	brk	#0x8228
    c9c8: d63f0100     	blr	x8
    c9cc: 17ffffe1     	b	0xc950 <tp_wake_gesture_write+0x4c>
    c9d0: 94000000     	bl	0xc9d0 <tp_wake_gesture_write+0xcc>
		000000000000c9d0:  R_AARCH64_CALL26	__stack_chk_fail
