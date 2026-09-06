
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003294 <tp_wake_gesture_write>:
    3294: d503233f     	paciasp
    3298: d100c3ff     	sub	sp, sp, #0x30
    329c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    32a0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    32a4: 910043fd     	add	x29, sp, #0x10
    32a8: d5384108     	mrs	x8, SP_EL0
    32ac: aa0203f3     	mov	x19, x2
    32b0: aa0103e0     	mov	x0, x1
    32b4: f9438908     	ldr	x8, [x8, #0x710]
    32b8: 910013e3     	add	x3, sp, #0x4
    32bc: aa0203e1     	mov	x1, x2
    32c0: 52800142     	mov	w2, #0xa                // =10
    32c4: f90007e8     	str	x8, [sp, #0x8]
    32c8: 90000008     	adrp	x8, 0x3000 <tp_module_info_read+0x104>
		00000000000032c8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    32cc: f9400114     	ldr	x20, [x8]
		00000000000032cc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    32d0: b90007ff     	str	wzr, [sp, #0x4]
    32d4: 94000000     	bl	0x32d4 <tp_wake_gesture_write+0x40>
		00000000000032d4:  R_AARCH64_CALL26	kstrtouint_from_user
    32d8: 340001a0     	cbz	w0, 0x330c <tp_wake_gesture_write+0x78>
    32dc: 928002b3     	mov	x19, #-0x16             // =-22
    32e0: d5384108     	mrs	x8, SP_EL0
    32e4: f9438908     	ldr	x8, [x8, #0x710]
    32e8: f94007e9     	ldr	x9, [sp, #0x8]
    32ec: eb09011f     	cmp	x8, x9
    32f0: 54000381     	b.ne	0x3360 <tp_wake_gesture_write+0xcc>
    32f4: aa1303e0     	mov	x0, x19
    32f8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    32fc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    3300: 9100c3ff     	add	sp, sp, #0x30
    3304: d50323bf     	autiasp
    3308: d65f03c0     	ret
    330c: b94007e8     	ldr	w8, [sp, #0x4]
    3310: 90000000     	adrp	x0, 0x3000 <tp_module_info_read+0x104>
		0000000000003310:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e6
    3314: 91000000     	add	x0, x0, #0x0
		0000000000003314:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e6
    3318: 90000001     	adrp	x1, 0x3000 <tp_module_info_read+0x104>
		0000000000003318:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x84e5
    331c: 91000021     	add	x1, x1, #0x0
		000000000000331c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x84e5
    3320: 7100011f     	cmp	w8, #0x0
    3324: 1a9f07e2     	cset	w2, ne
    3328: b90007e2     	str	w2, [sp, #0x4]
    332c: 94000000     	bl	0x332c <tp_wake_gesture_write+0x98>
		000000000000332c:  R_AARCH64_CALL26	_printk
    3330: f9471a88     	ldr	x8, [x20, #0xe30]
    3334: b4fffd68     	cbz	x8, 0x32e0 <tp_wake_gesture_write+0x4c>
    3338: b94007e1     	ldr	w1, [sp, #0x4]
    333c: aa1403e0     	mov	x0, x20
    3340: b85fc110     	ldur	w16, [x8, #-0x4]
    3344: 72969331     	movk	w17, #0xb499
    3348: 72ad5f11     	movk	w17, #0x6af8, lsl #16
    334c: 6b11021f     	cmp	w16, w17
    3350: 54000040     	b.eq	0x3358 <tp_wake_gesture_write+0xc4>
    3354: d4304500     	brk	#0x8228
    3358: d63f0100     	blr	x8
    335c: 17ffffe1     	b	0x32e0 <tp_wake_gesture_write+0x4c>
    3360: 94000000     	bl	0x3360 <tp_wake_gesture_write+0xcc>
		0000000000003360:  R_AARCH64_CALL26	__stack_chk_fail
