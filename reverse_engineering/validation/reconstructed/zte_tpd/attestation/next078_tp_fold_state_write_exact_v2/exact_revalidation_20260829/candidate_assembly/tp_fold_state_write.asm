
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000169f8 <tp_fold_state_write>:
   169f8: d503233f     	paciasp
   169fc: d100c3ff     	sub	sp, sp, #0x30
   16a00: a9017bfd     	stp	x29, x30, [sp, #0x10]
   16a04: a9024ff4     	stp	x20, x19, [sp, #0x20]
   16a08: 910043fd     	add	x29, sp, #0x10
   16a0c: d5384108     	mrs	x8, SP_EL0
   16a10: aa0203f3     	mov	x19, x2
   16a14: aa0103e0     	mov	x0, x1
   16a18: f9438908     	ldr	x8, [x8, #0x710]
   16a1c: 910013e3     	add	x3, sp, #0x4
   16a20: aa0203e1     	mov	x1, x2
   16a24: 52800142     	mov	w2, #0xa                // =10
   16a28: f90007e8     	str	x8, [sp, #0x8]
   16a2c: 90000008     	adrp	x8, 0x16000 <tp_sensibility_level_read+0xd8>
		0000000000016a2c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   16a30: f9400114     	ldr	x20, [x8]
		0000000000016a30:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   16a34: b90007ff     	str	wzr, [sp, #0x4]
   16a38: 94000000     	bl	0x16a38 <tp_fold_state_write+0x40>
		0000000000016a38:  R_AARCH64_CALL26	kstrtouint_from_user
   16a3c: 340001a0     	cbz	w0, 0x16a70 <tp_fold_state_write+0x78>
   16a40: 928002b3     	mov	x19, #-0x16             // =-22
   16a44: d5384108     	mrs	x8, SP_EL0
   16a48: f9438908     	ldr	x8, [x8, #0x710]
   16a4c: f94007e9     	ldr	x9, [sp, #0x8]
   16a50: eb09011f     	cmp	x8, x9
   16a54: 54000381     	b.ne	0x16ac4 <tp_fold_state_write+0xcc>
   16a58: aa1303e0     	mov	x0, x19
   16a5c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   16a60: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   16a64: 9100c3ff     	add	sp, sp, #0x30
   16a68: d50323bf     	autiasp
   16a6c: d65f03c0     	ret
   16a70: b94007e8     	ldr	w8, [sp, #0x4]
   16a74: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0xd8>
		0000000000016a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x629a
   16a78: 91000000     	add	x0, x0, #0x0
		0000000000016a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x629a
   16a7c: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0xd8>
		0000000000016a7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8230
   16a80: 91000021     	add	x1, x1, #0x0
		0000000000016a80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8230
   16a84: 7100011f     	cmp	w8, #0x0
   16a88: 1a9f07e2     	cset	w2, ne
   16a8c: b90007e2     	str	w2, [sp, #0x4]
   16a90: 94000000     	bl	0x16a90 <tp_fold_state_write+0x98>
		0000000000016a90:  R_AARCH64_CALL26	_printk
   16a94: f947e288     	ldr	x8, [x20, #0xfc0]
   16a98: b4fffd68     	cbz	x8, 0x16a44 <tp_fold_state_write+0x4c>
   16a9c: b94007e1     	ldr	w1, [sp, #0x4]
   16aa0: aa1403e0     	mov	x0, x20
   16aa4: b85fc110     	ldur	w16, [x8, #-0x4]
   16aa8: 72969331     	movk	w17, #0xb499
   16aac: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   16ab0: 6b11021f     	cmp	w16, w17
   16ab4: 54000040     	b.eq	0x16abc <tp_fold_state_write+0xc4>
   16ab8: d4304500     	brk	#0x8228
   16abc: d63f0100     	blr	x8
   16ac0: 17ffffe1     	b	0x16a44 <tp_fold_state_write+0x4c>
   16ac4: 94000000     	bl	0x16ac4 <tp_fold_state_write+0xcc>
		0000000000016ac4:  R_AARCH64_CALL26	__stack_chk_fail
