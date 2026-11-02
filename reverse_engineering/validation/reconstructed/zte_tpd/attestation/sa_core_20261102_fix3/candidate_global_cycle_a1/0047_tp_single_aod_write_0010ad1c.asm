
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025c60 <tp_single_aod_write>:
   25c60: d503233f     	paciasp
   25c64: d100c3ff     	sub	sp, sp, #0x30
   25c68: a9017bfd     	stp	x29, x30, [sp, #0x10]
   25c6c: a9024ff4     	stp	x20, x19, [sp, #0x20]
   25c70: 910043fd     	add	x29, sp, #0x10
   25c74: d5384108     	mrs	x8, SP_EL0
   25c78: aa0203f3     	mov	x19, x2
   25c7c: aa0103e0     	mov	x0, x1
   25c80: f9438908     	ldr	x8, [x8, #0x710]
   25c84: 910013e3     	add	x3, sp, #0x4
   25c88: aa0203e1     	mov	x1, x2
   25c8c: 52800142     	mov	w2, #0xa                // =10
   25c90: f90007e8     	str	x8, [sp, #0x8]
   25c94: 90000008     	adrp	x8, 0x25000 <tp_glove_read>
		0000000000025c94:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25c98: f9400114     	ldr	x20, [x8]
		0000000000025c98:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25c9c: b90007ff     	str	wzr, [sp, #0x4]
   25ca0: 94000000     	bl	0x25ca0 <tp_single_aod_write+0x40>
		0000000000025ca0:  R_AARCH64_CALL26	kstrtouint_from_user
   25ca4: 340001a0     	cbz	w0, 0x25cd8 <tp_single_aod_write+0x78>
   25ca8: 928002b3     	mov	x19, #-0x16             // =-22
   25cac: d5384108     	mrs	x8, SP_EL0
   25cb0: f9438908     	ldr	x8, [x8, #0x710]
   25cb4: f94007e9     	ldr	x9, [sp, #0x8]
   25cb8: eb09011f     	cmp	x8, x9
   25cbc: 540003a1     	b.ne	0x25d30 <tp_single_aod_write+0xd0>
   25cc0: aa1303e0     	mov	x0, x19
   25cc4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   25cc8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   25ccc: 9100c3ff     	add	sp, sp, #0x30
   25cd0: d50323bf     	autiasp
   25cd4: d65f03c0     	ret
   25cd8: b94007e8     	ldr	w8, [sp, #0x4]
   25cdc: 90000000     	adrp	x0, 0x25000 <tp_glove_read>
		0000000000025cdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x629a
   25ce0: 91000000     	add	x0, x0, #0x0
		0000000000025ce0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x629a
   25ce4: 90000001     	adrp	x1, 0x25000 <tp_glove_read>
		0000000000025ce4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa78a
   25ce8: 91000021     	add	x1, x1, #0x0
		0000000000025ce8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa78a
   25cec: 7100011f     	cmp	w8, #0x0
   25cf0: 528000a8     	mov	w8, #0x5                // =5
   25cf4: 1a8803e2     	csel	w2, wzr, w8, eq
   25cf8: b90007e2     	str	w2, [sp, #0x4]
   25cfc: 94000000     	bl	0x25cfc <tp_single_aod_write+0x9c>
		0000000000025cfc:  R_AARCH64_CALL26	_printk
   25d00: f9476a88     	ldr	x8, [x20, #0xed0]
   25d04: b4fffd48     	cbz	x8, 0x25cac <tp_single_aod_write+0x4c>
   25d08: b94007e1     	ldr	w1, [sp, #0x4]
   25d0c: aa1403e0     	mov	x0, x20
   25d10: b85fc110     	ldur	w16, [x8, #-0x4]
   25d14: 72969331     	movk	w17, #0xb499
   25d18: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   25d1c: 6b11021f     	cmp	w16, w17
   25d20: 54000040     	b.eq	0x25d28 <tp_single_aod_write+0xc8>
   25d24: d4304500     	brk	#0x8228
   25d28: d63f0100     	blr	x8
   25d2c: 17ffffe0     	b	0x25cac <tp_single_aod_write+0x4c>
   25d30: 94000000     	bl	0x25d30 <tp_single_aod_write+0xd0>
		0000000000025d30:  R_AARCH64_CALL26	__stack_chk_fail
