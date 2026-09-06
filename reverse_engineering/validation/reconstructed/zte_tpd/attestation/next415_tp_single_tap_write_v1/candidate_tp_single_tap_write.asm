
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001f30c <tp_single_tap_write>:
   1f30c: d503233f     	paciasp
   1f310: d100c3ff     	sub	sp, sp, #0x30
   1f314: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1f318: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1f31c: 910043fd     	add	x29, sp, #0x10
   1f320: d5384108     	mrs	x8, SP_EL0
   1f324: aa0203f3     	mov	x19, x2
   1f328: aa0103e0     	mov	x0, x1
   1f32c: f9438908     	ldr	x8, [x8, #0x710]
   1f330: 910013e3     	add	x3, sp, #0x4
   1f334: aa0203e1     	mov	x1, x2
   1f338: 52800142     	mov	w2, #0xa                // =10
   1f33c: f90007e8     	str	x8, [sp, #0x8]
   1f340: 90000008     	adrp	x8, 0x1f000 <tp_single_aod_write+0xa4>
		000000000001f340:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1f344: f9400114     	ldr	x20, [x8]
		000000000001f344:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1f348: b90007ff     	str	wzr, [sp, #0x4]
   1f34c: 94000000     	bl	0x1f34c <tp_single_tap_write+0x40>
		000000000001f34c:  R_AARCH64_CALL26	kstrtouint_from_user
   1f350: 340001a0     	cbz	w0, 0x1f384 <tp_single_tap_write+0x78>
   1f354: 928002b3     	mov	x19, #-0x16             // =-22
   1f358: d5384108     	mrs	x8, SP_EL0
   1f35c: f9438908     	ldr	x8, [x8, #0x710]
   1f360: f94007e9     	ldr	x9, [sp, #0x8]
   1f364: eb09011f     	cmp	x8, x9
   1f368: 540003a1     	b.ne	0x1f3dc <tp_single_tap_write+0xd0>
   1f36c: aa1303e0     	mov	x0, x19
   1f370: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1f374: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1f378: 9100c3ff     	add	sp, sp, #0x30
   1f37c: d50323bf     	autiasp
   1f380: d65f03c0     	ret
   1f384: b94007e8     	ldr	w8, [sp, #0x4]
   1f388: 90000000     	adrp	x0, 0x1f000 <tp_single_aod_write+0xa4>
		000000000001f388:  R_AARCH64_ADR_PREL_PG_HI21	unk_374F7
   1f38c: 91000000     	add	x0, x0, #0x0
		000000000001f38c:  R_AARCH64_ADD_ABS_LO12_NC	unk_374F7
   1f390: 90000001     	adrp	x1, 0x1f000 <tp_single_aod_write+0xa4>
		000000000001f390:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc95
   1f394: 91000021     	add	x1, x1, #0x0
		000000000001f394:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc95
   1f398: 7100011f     	cmp	w8, #0x0
   1f39c: 528000a8     	mov	w8, #0x5                // =5
   1f3a0: 9a8803e2     	csel	x2, xzr, x8, eq
   1f3a4: b90007e2     	str	w2, [sp, #0x4]
   1f3a8: 94000000     	bl	0x1f3a8 <tp_single_tap_write+0x9c>
		000000000001f3a8:  R_AARCH64_CALL26	_printk
   1f3ac: f9476288     	ldr	x8, [x20, #0xec0]
   1f3b0: b4fffd48     	cbz	x8, 0x1f358 <tp_single_tap_write+0x4c>
   1f3b4: b94007e1     	ldr	w1, [sp, #0x4]
   1f3b8: aa1403e0     	mov	x0, x20
   1f3bc: b85fc110     	ldur	w16, [x8, #-0x4]
   1f3c0: 72969331     	movk	w17, #0xb499
   1f3c4: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   1f3c8: 6b11021f     	cmp	w16, w17
   1f3cc: 54000040     	b.eq	0x1f3d4 <tp_single_tap_write+0xc8>
   1f3d0: d4304500     	brk	#0x8228
   1f3d4: d63f0100     	blr	x8
   1f3d8: 17ffffe0     	b	0x1f358 <tp_single_tap_write+0x4c>
   1f3dc: 94000000     	bl	0x1f3dc <tp_single_tap_write+0xd0>
		000000000001f3dc:  R_AARCH64_CALL26	__stack_chk_fail
