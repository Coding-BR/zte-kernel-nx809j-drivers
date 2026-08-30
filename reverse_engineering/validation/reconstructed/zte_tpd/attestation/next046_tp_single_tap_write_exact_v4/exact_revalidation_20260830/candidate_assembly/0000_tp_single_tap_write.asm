
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025a38 <tp_single_tap_write>:
   25a38: d503233f     	paciasp
   25a3c: d100c3ff     	sub	sp, sp, #0x30
   25a40: a9017bfd     	stp	x29, x30, [sp, #0x10]
   25a44: a9024ff4     	stp	x20, x19, [sp, #0x20]
   25a48: 910043fd     	add	x29, sp, #0x10
   25a4c: d5384108     	mrs	x8, SP_EL0
   25a50: aa0203f3     	mov	x19, x2
   25a54: aa0103e0     	mov	x0, x1
   25a58: f9438908     	ldr	x8, [x8, #0x710]
   25a5c: 910013e3     	add	x3, sp, #0x4
   25a60: aa0203e1     	mov	x1, x2
   25a64: 52800142     	mov	w2, #0xa                // =10
   25a68: f90007e8     	str	x8, [sp, #0x8]
   25a6c: 90000008     	adrp	x8, 0x25000 <tp_glove_read+0x5c>
		0000000000025a6c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25a70: f9400114     	ldr	x20, [x8]
		0000000000025a70:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25a74: b90007ff     	str	wzr, [sp, #0x4]
   25a78: 94000000     	bl	0x25a78 <tp_single_tap_write+0x40>
		0000000000025a78:  R_AARCH64_CALL26	kstrtouint_from_user
   25a7c: 340001a0     	cbz	w0, 0x25ab0 <tp_single_tap_write+0x78>
   25a80: 928002b3     	mov	x19, #-0x16             // =-22
   25a84: d5384108     	mrs	x8, SP_EL0
   25a88: f9438908     	ldr	x8, [x8, #0x710]
   25a8c: f94007e9     	ldr	x9, [sp, #0x8]
   25a90: eb09011f     	cmp	x8, x9
   25a94: 540003a1     	b.ne	0x25b08 <tp_single_tap_write+0xd0>
   25a98: aa1303e0     	mov	x0, x19
   25a9c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   25aa0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   25aa4: 9100c3ff     	add	sp, sp, #0x30
   25aa8: d50323bf     	autiasp
   25aac: d65f03c0     	ret
   25ab0: b94007e8     	ldr	w8, [sp, #0x4]
   25ab4: 90000000     	adrp	x0, 0x25000 <tp_glove_read+0x5c>
		0000000000025ab4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x629a
   25ab8: 91000000     	add	x0, x0, #0x0
		0000000000025ab8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x629a
   25abc: 90000001     	adrp	x1, 0x25000 <tp_glove_read+0x5c>
		0000000000025abc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1266
   25ac0: 91000021     	add	x1, x1, #0x0
		0000000000025ac0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1266
   25ac4: 7100011f     	cmp	w8, #0x0
   25ac8: 528000a8     	mov	w8, #0x5                // =5
   25acc: 1a8803e2     	csel	w2, wzr, w8, eq
   25ad0: b90007e2     	str	w2, [sp, #0x4]
   25ad4: 94000000     	bl	0x25ad4 <tp_single_tap_write+0x9c>
		0000000000025ad4:  R_AARCH64_CALL26	_printk
   25ad8: f9476288     	ldr	x8, [x20, #0xec0]
   25adc: b4fffd48     	cbz	x8, 0x25a84 <tp_single_tap_write+0x4c>
   25ae0: b94007e1     	ldr	w1, [sp, #0x4]
   25ae4: aa1403e0     	mov	x0, x20
   25ae8: b85fc110     	ldur	w16, [x8, #-0x4]
   25aec: 72969331     	movk	w17, #0xb499
   25af0: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   25af4: 6b11021f     	cmp	w16, w17
   25af8: 54000040     	b.eq	0x25b00 <tp_single_tap_write+0xc8>
   25afc: d4304500     	brk	#0x8228
   25b00: d63f0100     	blr	x8
   25b04: 17ffffe0     	b	0x25a84 <tp_single_tap_write+0x4c>
   25b08: 94000000     	bl	0x25b08 <tp_single_tap_write+0xd0>
		0000000000025b08:  R_AARCH64_CALL26	__stack_chk_fail
