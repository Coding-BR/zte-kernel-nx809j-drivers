
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016a54 <tp_fold_state_write>:
   16a54: d503233f     	paciasp
   16a58: d100c3ff     	sub	sp, sp, #0x30
   16a5c: a9017bfd     	stp	x29, x30, [sp, #0x10]
   16a60: a9024ff4     	stp	x20, x19, [sp, #0x20]
   16a64: 910043fd     	add	x29, sp, #0x10
   16a68: d5384108     	mrs	x8, SP_EL0
   16a6c: aa0203f3     	mov	x19, x2
   16a70: aa0103e0     	mov	x0, x1
   16a74: f9438908     	ldr	x8, [x8, #0x710]
   16a78: 910013e3     	add	x3, sp, #0x4
   16a7c: aa0203e1     	mov	x1, x2
   16a80: 52800142     	mov	w2, #0xa                // =10
   16a84: f90007e8     	str	x8, [sp, #0x8]
   16a88: 90000008     	adrp	x8, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016a88:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   16a8c: f9400114     	ldr	x20, [x8]
		0000000000016a8c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   16a90: b90007ff     	str	wzr, [sp, #0x4]
   16a94: 94000000     	bl	0x16a94 <tp_fold_state_write+0x40>
		0000000000016a94:  R_AARCH64_CALL26	kstrtouint_from_user
   16a98: 340001a0     	cbz	w0, 0x16acc <tp_fold_state_write+0x78>
   16a9c: 928002b3     	mov	x19, #-0x16             // =-22
   16aa0: d5384108     	mrs	x8, SP_EL0
   16aa4: f9438908     	ldr	x8, [x8, #0x710]
   16aa8: f94007e9     	ldr	x9, [sp, #0x8]
   16aac: eb09011f     	cmp	x8, x9
   16ab0: 54000381     	b.ne	0x16b20 <tp_fold_state_write+0xcc>
   16ab4: aa1303e0     	mov	x0, x19
   16ab8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   16abc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   16ac0: 9100c3ff     	add	sp, sp, #0x30
   16ac4: d50323bf     	autiasp
   16ac8: d65f03c0     	ret
   16acc: b94007e8     	ldr	w8, [sp, #0x4]
   16ad0: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016ad0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x629a
   16ad4: 91000000     	add	x0, x0, #0x0
		0000000000016ad4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x629a
   16ad8: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016ad8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8230
   16adc: 91000021     	add	x1, x1, #0x0
		0000000000016adc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8230
   16ae0: 7100011f     	cmp	w8, #0x0
   16ae4: 1a9f07e2     	cset	w2, ne
   16ae8: b90007e2     	str	w2, [sp, #0x4]
   16aec: 94000000     	bl	0x16aec <tp_fold_state_write+0x98>
		0000000000016aec:  R_AARCH64_CALL26	_printk
   16af0: f947e288     	ldr	x8, [x20, #0xfc0]
   16af4: b4fffd68     	cbz	x8, 0x16aa0 <tp_fold_state_write+0x4c>
   16af8: b94007e1     	ldr	w1, [sp, #0x4]
   16afc: aa1403e0     	mov	x0, x20
   16b00: b85fc110     	ldur	w16, [x8, #-0x4]
   16b04: 72969331     	movk	w17, #0xb499
   16b08: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   16b0c: 6b11021f     	cmp	w16, w17
   16b10: 54000040     	b.eq	0x16b18 <tp_fold_state_write+0xc4>
   16b14: d4304500     	brk	#0x8228
   16b18: d63f0100     	blr	x8
   16b1c: 17ffffe1     	b	0x16aa0 <tp_fold_state_write+0x4c>
   16b20: 94000000     	bl	0x16b20 <tp_fold_state_write+0xcc>
		0000000000016b20:  R_AARCH64_CALL26	__stack_chk_fail
