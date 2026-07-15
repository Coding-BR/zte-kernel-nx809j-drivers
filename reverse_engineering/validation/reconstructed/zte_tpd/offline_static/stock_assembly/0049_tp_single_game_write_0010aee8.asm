
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004660 <tp_single_game_write>:
    4660: d503233f     	paciasp
    4664: d100c3ff     	sub	sp, sp, #0x30
    4668: a9017bfd     	stp	x29, x30, [sp, #0x10]
    466c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    4670: 910043fd     	add	x29, sp, #0x10
    4674: d5384108     	mrs	x8, SP_EL0
    4678: aa0203f3     	mov	x19, x2
    467c: aa0103e0     	mov	x0, x1
    4680: f9438908     	ldr	x8, [x8, #0x710]
    4684: 910013e3     	add	x3, sp, #0x4
    4688: aa0203e1     	mov	x1, x2
    468c: 52800142     	mov	w2, #0xa                // =10
    4690: f90007e8     	str	x8, [sp, #0x8]
    4694: 90000008     	adrp	x8, 0x4000 <display_rotation_show+0xc>
		0000000000004694:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    4698: f9400114     	ldr	x20, [x8]
		0000000000004698:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    469c: b90007ff     	str	wzr, [sp, #0x4]
    46a0: 94000000     	bl	0x46a0 <tp_single_game_write+0x40>
		00000000000046a0:  R_AARCH64_CALL26	kstrtouint_from_user
    46a4: 340001a0     	cbz	w0, 0x46d8 <tp_single_game_write+0x78>
    46a8: 928002b3     	mov	x19, #-0x16             // =-22
    46ac: d5384108     	mrs	x8, SP_EL0
    46b0: f9438908     	ldr	x8, [x8, #0x710]
    46b4: f94007e9     	ldr	x9, [sp, #0x8]
    46b8: eb09011f     	cmp	x8, x9
    46bc: 540003a1     	b.ne	0x4730 <tp_single_game_write+0xd0>
    46c0: aa1303e0     	mov	x0, x19
    46c4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    46c8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    46cc: 9100c3ff     	add	sp, sp, #0x30
    46d0: d50323bf     	autiasp
    46d4: d65f03c0     	ret
    46d8: b94007e8     	ldr	w8, [sp, #0x4]
    46dc: 90000000     	adrp	x0, 0x4000 <display_rotation_show+0xc>
		00000000000046dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x610f
    46e0: 91000000     	add	x0, x0, #0x0
		00000000000046e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x610f
    46e4: 90000001     	adrp	x1, 0x4000 <display_rotation_show+0xc>
		00000000000046e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb307
    46e8: 91000021     	add	x1, x1, #0x0
		00000000000046e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb307
    46ec: 7100011f     	cmp	w8, #0x0
    46f0: 528000a8     	mov	w8, #0x5                // =5
    46f4: 1a8803e2     	csel	w2, wzr, w8, eq
    46f8: b90007e2     	str	w2, [sp, #0x4]
    46fc: 94000000     	bl	0x46fc <tp_single_game_write+0x9c>
		00000000000046fc:  R_AARCH64_CALL26	_printk
    4700: f9477288     	ldr	x8, [x20, #0xee0]
    4704: b4fffd48     	cbz	x8, 0x46ac <tp_single_game_write+0x4c>
    4708: b94007e1     	ldr	w1, [sp, #0x4]
    470c: aa1403e0     	mov	x0, x20
    4710: b85fc110     	ldur	w16, [x8, #-0x4]
    4714: 72969331     	movk	w17, #0xb499
    4718: 72ad5f11     	movk	w17, #0x6af8, lsl #16
    471c: 6b11021f     	cmp	w16, w17
    4720: 54000040     	b.eq	0x4728 <tp_single_game_write+0xc8>
    4724: d4304500     	brk	#0x8228
    4728: d63f0100     	blr	x8
    472c: 17ffffe0     	b	0x46ac <tp_single_game_write+0x4c>
    4730: 94000000     	bl	0x4730 <tp_single_game_write+0xd0>
		0000000000004730:  R_AARCH64_CALL26	__stack_chk_fail
