
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001ef54 <tp_single_aod_write>:
   1ef54: d503233f     	paciasp
   1ef58: d100c3ff     	sub	sp, sp, #0x30
   1ef5c: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1ef60: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1ef64: 910043fd     	add	x29, sp, #0x10
   1ef68: d5384108     	mrs	x8, SP_EL0
   1ef6c: aa0203f3     	mov	x19, x2
   1ef70: aa0103e0     	mov	x0, x1
   1ef74: f9438908     	ldr	x8, [x8, #0x710]
   1ef78: 910013e3     	add	x3, sp, #0x4
   1ef7c: aa0203e1     	mov	x1, x2
   1ef80: 52800142     	mov	w2, #0xa                // =10
   1ef84: f90007e8     	str	x8, [sp, #0x8]
   1ef88: 90000008     	adrp	x8, 0x1e000 <tp_ghost_check+0x448>
		000000000001ef88:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1ef8c: f9400114     	ldr	x20, [x8]
		000000000001ef8c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1ef90: b90007ff     	str	wzr, [sp, #0x4]
   1ef94: 94000000     	bl	0x1ef94 <tp_single_aod_write+0x40>
		000000000001ef94:  R_AARCH64_CALL26	kstrtouint_from_user
   1ef98: 340001a0     	cbz	w0, 0x1efcc <tp_single_aod_write+0x78>
   1ef9c: 928002b3     	mov	x19, #-0x16             // =-22
   1efa0: d5384108     	mrs	x8, SP_EL0
   1efa4: f9438908     	ldr	x8, [x8, #0x710]
   1efa8: f94007e9     	ldr	x9, [sp, #0x8]
   1efac: eb09011f     	cmp	x8, x9
   1efb0: 540003a1     	b.ne	0x1f024 <tp_single_aod_write+0xd0>
   1efb4: aa1303e0     	mov	x0, x19
   1efb8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1efbc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1efc0: 9100c3ff     	add	sp, sp, #0x30
   1efc4: d50323bf     	autiasp
   1efc8: d65f03c0     	ret
   1efcc: b94007e8     	ldr	w8, [sp, #0x4]
   1efd0: 90000000     	adrp	x0, 0x1e000 <tp_ghost_check+0x448>
		000000000001efd0:  R_AARCH64_ADR_PREL_PG_HI21	unk_374F7
   1efd4: 91000000     	add	x0, x0, #0x0
		000000000001efd4:  R_AARCH64_ADD_ABS_LO12_NC	unk_374F7
   1efd8: 90000001     	adrp	x1, 0x1e000 <tp_ghost_check+0x448>
		000000000001efd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6284
   1efdc: 91000021     	add	x1, x1, #0x0
		000000000001efdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6284
   1efe0: 7100011f     	cmp	w8, #0x0
   1efe4: 528000a8     	mov	w8, #0x5                // =5
   1efe8: 1a8803e2     	csel	w2, wzr, w8, eq
   1efec: b90007e2     	str	w2, [sp, #0x4]
   1eff0: 94000000     	bl	0x1eff0 <tp_single_aod_write+0x9c>
		000000000001eff0:  R_AARCH64_CALL26	_printk
   1eff4: f9476a88     	ldr	x8, [x20, #0xed0]
   1eff8: b4fffd48     	cbz	x8, 0x1efa0 <tp_single_aod_write+0x4c>
   1effc: b94007e1     	ldr	w1, [sp, #0x4]
   1f000: aa1403e0     	mov	x0, x20
   1f004: b85fc110     	ldur	w16, [x8, #-0x4]
   1f008: 72969331     	movk	w17, #0xb499
   1f00c: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   1f010: 6b11021f     	cmp	w16, w17
   1f014: 54000040     	b.eq	0x1f01c <tp_single_aod_write+0xc8>
   1f018: d4304500     	brk	#0x8228
   1f01c: d63f0100     	blr	x8
   1f020: 17ffffe0     	b	0x1efa0 <tp_single_aod_write+0x4c>
   1f024: 94000000     	bl	0x1f024 <tp_single_aod_write+0xd0>
		000000000001f024:  R_AARCH64_CALL26	__stack_chk_fail
