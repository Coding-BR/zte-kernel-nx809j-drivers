
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004494 <tp_single_aod_write>:
    4494: d503233f     	paciasp
    4498: d100c3ff     	sub	sp, sp, #0x30
    449c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    44a0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    44a4: 910043fd     	add	x29, sp, #0x10
    44a8: d5384108     	mrs	x8, SP_EL0
    44ac: aa0203f3     	mov	x19, x2
    44b0: aa0103e0     	mov	x0, x1
    44b4: f9438908     	ldr	x8, [x8, #0x710]
    44b8: 910013e3     	add	x3, sp, #0x4
    44bc: aa0203e1     	mov	x1, x2
    44c0: 52800142     	mov	w2, #0xa                // =10
    44c4: f90007e8     	str	x8, [sp, #0x8]
    44c8: 90000008     	adrp	x8, 0x4000 <display_rotation_show+0xc>
		00000000000044c8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    44cc: f9400114     	ldr	x20, [x8]
		00000000000044cc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    44d0: b90007ff     	str	wzr, [sp, #0x4]
    44d4: 94000000     	bl	0x44d4 <tp_single_aod_write+0x40>
		00000000000044d4:  R_AARCH64_CALL26	kstrtouint_from_user
    44d8: 340001a0     	cbz	w0, 0x450c <tp_single_aod_write+0x78>
    44dc: 928002b3     	mov	x19, #-0x16             // =-22
    44e0: d5384108     	mrs	x8, SP_EL0
    44e4: f9438908     	ldr	x8, [x8, #0x710]
    44e8: f94007e9     	ldr	x9, [sp, #0x8]
    44ec: eb09011f     	cmp	x8, x9
    44f0: 540003a1     	b.ne	0x4564 <tp_single_aod_write+0xd0>
    44f4: aa1303e0     	mov	x0, x19
    44f8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    44fc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    4500: 9100c3ff     	add	sp, sp, #0x30
    4504: d50323bf     	autiasp
    4508: d65f03c0     	ret
    450c: b94007e8     	ldr	w8, [sp, #0x4]
    4510: 90000000     	adrp	x0, 0x4000 <display_rotation_show+0xc>
		0000000000004510:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x610f
    4514: 91000000     	add	x0, x0, #0x0
		0000000000004514:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x610f
    4518: 90000001     	adrp	x1, 0x4000 <display_rotation_show+0xc>
		0000000000004518:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa4fe
    451c: 91000021     	add	x1, x1, #0x0
		000000000000451c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa4fe
    4520: 7100011f     	cmp	w8, #0x0
    4524: 528000a8     	mov	w8, #0x5                // =5
    4528: 1a8803e2     	csel	w2, wzr, w8, eq
    452c: b90007e2     	str	w2, [sp, #0x4]
    4530: 94000000     	bl	0x4530 <tp_single_aod_write+0x9c>
		0000000000004530:  R_AARCH64_CALL26	_printk
    4534: f9476a88     	ldr	x8, [x20, #0xed0]
    4538: b4fffd48     	cbz	x8, 0x44e0 <tp_single_aod_write+0x4c>
    453c: b94007e1     	ldr	w1, [sp, #0x4]
    4540: aa1403e0     	mov	x0, x20
    4544: b85fc110     	ldur	w16, [x8, #-0x4]
    4548: 72969331     	movk	w17, #0xb499
    454c: 72ad5f11     	movk	w17, #0x6af8, lsl #16
    4550: 6b11021f     	cmp	w16, w17
    4554: 54000040     	b.eq	0x455c <tp_single_aod_write+0xc8>
    4558: d4304500     	brk	#0x8228
    455c: d63f0100     	blr	x8
    4560: 17ffffe0     	b	0x44e0 <tp_single_aod_write+0x4c>
    4564: 94000000     	bl	0x4564 <tp_single_aod_write+0xd0>
		0000000000004564:  R_AARCH64_CALL26	__stack_chk_fail
