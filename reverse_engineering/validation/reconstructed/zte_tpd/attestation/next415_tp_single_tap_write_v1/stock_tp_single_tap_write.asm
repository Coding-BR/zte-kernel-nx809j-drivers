
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000042c8 <tp_single_tap_write>:
    42c8: d503233f     	paciasp
    42cc: d100c3ff     	sub	sp, sp, #0x30
    42d0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    42d4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    42d8: 910043fd     	add	x29, sp, #0x10
    42dc: d5384108     	mrs	x8, SP_EL0
    42e0: aa0203f3     	mov	x19, x2
    42e4: aa0103e0     	mov	x0, x1
    42e8: f9438908     	ldr	x8, [x8, #0x710]
    42ec: 910013e3     	add	x3, sp, #0x4
    42f0: aa0203e1     	mov	x1, x2
    42f4: 52800142     	mov	w2, #0xa                // =10
    42f8: f90007e8     	str	x8, [sp, #0x8]
    42fc: 90000008     	adrp	x8, 0x4000 <display_rotation_show+0xc>
		00000000000042fc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    4300: f9400114     	ldr	x20, [x8]
		0000000000004300:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    4304: b90007ff     	str	wzr, [sp, #0x4]
    4308: 94000000     	bl	0x4308 <tp_single_tap_write+0x40>
		0000000000004308:  R_AARCH64_CALL26	kstrtouint_from_user
    430c: 340001a0     	cbz	w0, 0x4340 <tp_single_tap_write+0x78>
    4310: 928002b3     	mov	x19, #-0x16             // =-22
    4314: d5384108     	mrs	x8, SP_EL0
    4318: f9438908     	ldr	x8, [x8, #0x710]
    431c: f94007e9     	ldr	x9, [sp, #0x8]
    4320: eb09011f     	cmp	x8, x9
    4324: 540003a1     	b.ne	0x4398 <tp_single_tap_write+0xd0>
    4328: aa1303e0     	mov	x0, x19
    432c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    4330: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    4334: 9100c3ff     	add	sp, sp, #0x30
    4338: d50323bf     	autiasp
    433c: d65f03c0     	ret
    4340: b94007e8     	ldr	w8, [sp, #0x4]
    4344: 90000000     	adrp	x0, 0x4000 <display_rotation_show+0xc>
		0000000000004344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x610f
    4348: 91000000     	add	x0, x0, #0x0
		0000000000004348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x610f
    434c: 90000001     	adrp	x1, 0x4000 <display_rotation_show+0xc>
		000000000000434c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1223
    4350: 91000021     	add	x1, x1, #0x0
		0000000000004350:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1223
    4354: 7100011f     	cmp	w8, #0x0
    4358: 528000a8     	mov	w8, #0x5                // =5
    435c: 1a8803e2     	csel	w2, wzr, w8, eq
    4360: b90007e2     	str	w2, [sp, #0x4]
    4364: 94000000     	bl	0x4364 <tp_single_tap_write+0x9c>
		0000000000004364:  R_AARCH64_CALL26	_printk
    4368: f9476288     	ldr	x8, [x20, #0xec0]
    436c: b4fffd48     	cbz	x8, 0x4314 <tp_single_tap_write+0x4c>
    4370: b94007e1     	ldr	w1, [sp, #0x4]
    4374: aa1403e0     	mov	x0, x20
    4378: b85fc110     	ldur	w16, [x8, #-0x4]
    437c: 72969331     	movk	w17, #0xb499
    4380: 72ad5f11     	movk	w17, #0x6af8, lsl #16
    4384: 6b11021f     	cmp	w16, w17
    4388: 54000040     	b.eq	0x4390 <tp_single_tap_write+0xc8>
    438c: d4304500     	brk	#0x8228
    4390: d63f0100     	blr	x8
    4394: 17ffffe0     	b	0x4314 <tp_single_tap_write+0x4c>
    4398: 94000000     	bl	0x4398 <tp_single_tap_write+0xd0>
		0000000000004398:  R_AARCH64_CALL26	__stack_chk_fail
