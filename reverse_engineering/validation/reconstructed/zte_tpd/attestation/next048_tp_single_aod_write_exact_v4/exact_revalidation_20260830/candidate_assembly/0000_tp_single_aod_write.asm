
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025c04 <tp_single_aod_write>:
   25c04: d503233f     	paciasp
   25c08: d100c3ff     	sub	sp, sp, #0x30
   25c0c: a9017bfd     	stp	x29, x30, [sp, #0x10]
   25c10: a9024ff4     	stp	x20, x19, [sp, #0x20]
   25c14: 910043fd     	add	x29, sp, #0x10
   25c18: d5384108     	mrs	x8, SP_EL0
   25c1c: aa0203f3     	mov	x19, x2
   25c20: aa0103e0     	mov	x0, x1
   25c24: f9438908     	ldr	x8, [x8, #0x710]
   25c28: 910013e3     	add	x3, sp, #0x4
   25c2c: aa0203e1     	mov	x1, x2
   25c30: 52800142     	mov	w2, #0xa                // =10
   25c34: f90007e8     	str	x8, [sp, #0x8]
   25c38: 90000008     	adrp	x8, 0x25000 <tp_glove_read+0x5c>
		0000000000025c38:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25c3c: f9400114     	ldr	x20, [x8]
		0000000000025c3c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25c40: b90007ff     	str	wzr, [sp, #0x4]
   25c44: 94000000     	bl	0x25c44 <tp_single_aod_write+0x40>
		0000000000025c44:  R_AARCH64_CALL26	kstrtouint_from_user
   25c48: 340001a0     	cbz	w0, 0x25c7c <tp_single_aod_write+0x78>
   25c4c: 928002b3     	mov	x19, #-0x16             // =-22
   25c50: d5384108     	mrs	x8, SP_EL0
   25c54: f9438908     	ldr	x8, [x8, #0x710]
   25c58: f94007e9     	ldr	x9, [sp, #0x8]
   25c5c: eb09011f     	cmp	x8, x9
   25c60: 540003a1     	b.ne	0x25cd4 <tp_single_aod_write+0xd0>
   25c64: aa1303e0     	mov	x0, x19
   25c68: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   25c6c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   25c70: 9100c3ff     	add	sp, sp, #0x30
   25c74: d50323bf     	autiasp
   25c78: d65f03c0     	ret
   25c7c: b94007e8     	ldr	w8, [sp, #0x4]
   25c80: 90000000     	adrp	x0, 0x25000 <tp_glove_read+0x5c>
		0000000000025c80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x629a
   25c84: 91000000     	add	x0, x0, #0x0
		0000000000025c84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x629a
   25c88: 90000001     	adrp	x1, 0x25000 <tp_glove_read+0x5c>
		0000000000025c88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa78a
   25c8c: 91000021     	add	x1, x1, #0x0
		0000000000025c8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa78a
   25c90: 7100011f     	cmp	w8, #0x0
   25c94: 528000a8     	mov	w8, #0x5                // =5
   25c98: 1a8803e2     	csel	w2, wzr, w8, eq
   25c9c: b90007e2     	str	w2, [sp, #0x4]
   25ca0: 94000000     	bl	0x25ca0 <tp_single_aod_write+0x9c>
		0000000000025ca0:  R_AARCH64_CALL26	_printk
   25ca4: f9476a88     	ldr	x8, [x20, #0xed0]
   25ca8: b4fffd48     	cbz	x8, 0x25c50 <tp_single_aod_write+0x4c>
   25cac: b94007e1     	ldr	w1, [sp, #0x4]
   25cb0: aa1403e0     	mov	x0, x20
   25cb4: b85fc110     	ldur	w16, [x8, #-0x4]
   25cb8: 72969331     	movk	w17, #0xb499
   25cbc: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   25cc0: 6b11021f     	cmp	w16, w17
   25cc4: 54000040     	b.eq	0x25ccc <tp_single_aod_write+0xc8>
   25cc8: d4304500     	brk	#0x8228
   25ccc: d63f0100     	blr	x8
   25cd0: 17ffffe0     	b	0x25c50 <tp_single_aod_write+0x4c>
   25cd4: 94000000     	bl	0x25cd4 <tp_single_aod_write+0xd0>
		0000000000025cd4:  R_AARCH64_CALL26	__stack_chk_fail
