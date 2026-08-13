
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001f510 <tp_smart_cover_write>:
   1f510: d503233f     	paciasp
   1f514: d100c3ff     	sub	sp, sp, #0x30
   1f518: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1f51c: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1f520: 910043fd     	add	x29, sp, #0x10
   1f524: d5384108     	mrs	x8, SP_EL0
   1f528: aa0203f3     	mov	x19, x2
   1f52c: aa0103e0     	mov	x0, x1
   1f530: f9438908     	ldr	x8, [x8, #0x710]
   1f534: 910013e3     	add	x3, sp, #0x4
   1f538: aa0203e1     	mov	x1, x2
   1f53c: 52800142     	mov	w2, #0xa                // =10
   1f540: f90007e8     	str	x8, [sp, #0x8]
   1f544: 90000008     	adrp	x8, 0x1f000 <tp_single_aod_write+0x7c>
		000000000001f544:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1f548: f9400114     	ldr	x20, [x8]
		000000000001f548:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1f54c: b90007ff     	str	wzr, [sp, #0x4]
   1f550: 94000000     	bl	0x1f550 <tp_smart_cover_write+0x40>
		000000000001f550:  R_AARCH64_CALL26	kstrtouint_from_user
   1f554: 340001a0     	cbz	w0, 0x1f588 <tp_smart_cover_write+0x78>
   1f558: 928002b3     	mov	x19, #-0x16             // =-22
   1f55c: d5384108     	mrs	x8, SP_EL0
   1f560: f9438908     	ldr	x8, [x8, #0x710]
   1f564: f94007e9     	ldr	x9, [sp, #0x8]
   1f568: eb09011f     	cmp	x8, x9
   1f56c: 54000381     	b.ne	0x1f5dc <tp_smart_cover_write+0xcc>
   1f570: aa1303e0     	mov	x0, x19
   1f574: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1f578: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1f57c: 9100c3ff     	add	sp, sp, #0x30
   1f580: d50323bf     	autiasp
   1f584: d65f03c0     	ret
   1f588: b94007e8     	ldr	w8, [sp, #0x4]
   1f58c: 90000000     	adrp	x0, 0x1f000 <tp_single_aod_write+0x7c>
		000000000001f58c:  R_AARCH64_ADR_PREL_PG_HI21	unk_328A8
   1f590: 91000000     	add	x0, x0, #0x0
		000000000001f590:  R_AARCH64_ADD_ABS_LO12_NC	unk_328A8
   1f594: 90000001     	adrp	x1, 0x1f000 <tp_single_aod_write+0x7c>
		000000000001f594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44b3
   1f598: 91000021     	add	x1, x1, #0x0
		000000000001f598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44b3
   1f59c: 7100011f     	cmp	w8, #0x0
   1f5a0: 1a9f07e2     	cset	w2, ne
   1f5a4: b90007e2     	str	w2, [sp, #0x4]
   1f5a8: 94000000     	bl	0x1f5a8 <tp_smart_cover_write+0x98>
		000000000001f5a8:  R_AARCH64_CALL26	_printk
   1f5ac: f9472288     	ldr	x8, [x20, #0xe40]
   1f5b0: b4fffd68     	cbz	x8, 0x1f55c <tp_smart_cover_write+0x4c>
   1f5b4: b94007e1     	ldr	w1, [sp, #0x4]
   1f5b8: aa1403e0     	mov	x0, x20
   1f5bc: b85fc110     	ldur	w16, [x8, #-0x4]
   1f5c0: 72969331     	movk	w17, #0xb499
   1f5c4: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   1f5c8: 6b11021f     	cmp	w16, w17
   1f5cc: 54000040     	b.eq	0x1f5d4 <tp_smart_cover_write+0xc4>
   1f5d0: d4304500     	brk	#0x8228
   1f5d4: d63f0100     	blr	x8
   1f5d8: 17ffffe1     	b	0x1f55c <tp_smart_cover_write+0x4c>
   1f5dc: 94000000     	bl	0x1f5dc <tp_smart_cover_write+0xcc>
		000000000001f5dc:  R_AARCH64_CALL26	__stack_chk_fail
