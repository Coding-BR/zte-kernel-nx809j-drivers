
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001f120 <tp_single_game_write>:
   1f120: d503233f     	paciasp
   1f124: d100c3ff     	sub	sp, sp, #0x30
   1f128: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1f12c: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1f130: 910043fd     	add	x29, sp, #0x10
   1f134: d5384108     	mrs	x8, SP_EL0
   1f138: aa0203f3     	mov	x19, x2
   1f13c: aa0103e0     	mov	x0, x1
   1f140: f9438908     	ldr	x8, [x8, #0x710]
   1f144: 910013e3     	add	x3, sp, #0x4
   1f148: aa0203e1     	mov	x1, x2
   1f14c: 52800142     	mov	w2, #0xa                // =10
   1f150: f90007e8     	str	x8, [sp, #0x8]
   1f154: 90000008     	adrp	x8, 0x1f000 <tp_single_aod_write+0xac>
		000000000001f154:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1f158: f9400114     	ldr	x20, [x8]
		000000000001f158:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1f15c: b90007ff     	str	wzr, [sp, #0x4]
   1f160: 94000000     	bl	0x1f160 <tp_single_game_write+0x40>
		000000000001f160:  R_AARCH64_CALL26	kstrtouint_from_user
   1f164: 340001a0     	cbz	w0, 0x1f198 <tp_single_game_write+0x78>
   1f168: 928002b3     	mov	x19, #-0x16             // =-22
   1f16c: d5384108     	mrs	x8, SP_EL0
   1f170: f9438908     	ldr	x8, [x8, #0x710]
   1f174: f94007e9     	ldr	x9, [sp, #0x8]
   1f178: eb09011f     	cmp	x8, x9
   1f17c: 540003a1     	b.ne	0x1f1f0 <tp_single_game_write+0xd0>
   1f180: aa1303e0     	mov	x0, x19
   1f184: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1f188: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1f18c: 9100c3ff     	add	sp, sp, #0x30
   1f190: d50323bf     	autiasp
   1f194: d65f03c0     	ret
   1f198: b94007e8     	ldr	w8, [sp, #0x4]
   1f19c: 90000000     	adrp	x0, 0x1f000 <tp_single_aod_write+0xac>
		000000000001f19c:  R_AARCH64_ADR_PREL_PG_HI21	unk_374F7
   1f1a0: 91000000     	add	x0, x0, #0x0
		000000000001f1a0:  R_AARCH64_ADD_ABS_LO12_NC	unk_374F7
   1f1a4: 90000001     	adrp	x1, 0x1f000 <tp_single_aod_write+0xac>
		000000000001f1a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a48
   1f1a8: 91000021     	add	x1, x1, #0x0
		000000000001f1a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a48
   1f1ac: 7100011f     	cmp	w8, #0x0
   1f1b0: 528000a8     	mov	w8, #0x5                // =5
   1f1b4: 1a8803e2     	csel	w2, wzr, w8, eq
   1f1b8: b90007e2     	str	w2, [sp, #0x4]
   1f1bc: 94000000     	bl	0x1f1bc <tp_single_game_write+0x9c>
		000000000001f1bc:  R_AARCH64_CALL26	_printk
   1f1c0: f9477288     	ldr	x8, [x20, #0xee0]
   1f1c4: b4fffd48     	cbz	x8, 0x1f16c <tp_single_game_write+0x4c>
   1f1c8: b94007e1     	ldr	w1, [sp, #0x4]
   1f1cc: aa1403e0     	mov	x0, x20
   1f1d0: b85fc110     	ldur	w16, [x8, #-0x4]
   1f1d4: 72969331     	movk	w17, #0xb499
   1f1d8: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   1f1dc: 6b11021f     	cmp	w16, w17
   1f1e0: 54000040     	b.eq	0x1f1e8 <tp_single_game_write+0xc8>
   1f1e4: d4304500     	brk	#0x8228
   1f1e8: d63f0100     	blr	x8
   1f1ec: 17ffffe0     	b	0x1f16c <tp_single_game_write+0x4c>
   1f1f0: 94000000     	bl	0x1f1f0 <tp_single_game_write+0xd0>
		000000000001f1f0:  R_AARCH64_CALL26	__stack_chk_fail
