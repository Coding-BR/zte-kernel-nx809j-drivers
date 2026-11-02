
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025a94 <tp_single_tap_write>:
   25a94: d503233f     	paciasp
   25a98: d100c3ff     	sub	sp, sp, #0x30
   25a9c: a9017bfd     	stp	x29, x30, [sp, #0x10]
   25aa0: a9024ff4     	stp	x20, x19, [sp, #0x20]
   25aa4: 910043fd     	add	x29, sp, #0x10
   25aa8: d5384108     	mrs	x8, SP_EL0
   25aac: aa0203f3     	mov	x19, x2
   25ab0: aa0103e0     	mov	x0, x1
   25ab4: f9438908     	ldr	x8, [x8, #0x710]
   25ab8: 910013e3     	add	x3, sp, #0x4
   25abc: aa0203e1     	mov	x1, x2
   25ac0: 52800142     	mov	w2, #0xa                // =10
   25ac4: f90007e8     	str	x8, [sp, #0x8]
   25ac8: 90000008     	adrp	x8, 0x25000 <tp_glove_read>
		0000000000025ac8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25acc: f9400114     	ldr	x20, [x8]
		0000000000025acc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25ad0: b90007ff     	str	wzr, [sp, #0x4]
   25ad4: 94000000     	bl	0x25ad4 <tp_single_tap_write+0x40>
		0000000000025ad4:  R_AARCH64_CALL26	kstrtouint_from_user
   25ad8: 340001a0     	cbz	w0, 0x25b0c <tp_single_tap_write+0x78>
   25adc: 928002b3     	mov	x19, #-0x16             // =-22
   25ae0: d5384108     	mrs	x8, SP_EL0
   25ae4: f9438908     	ldr	x8, [x8, #0x710]
   25ae8: f94007e9     	ldr	x9, [sp, #0x8]
   25aec: eb09011f     	cmp	x8, x9
   25af0: 540003a1     	b.ne	0x25b64 <tp_single_tap_write+0xd0>
   25af4: aa1303e0     	mov	x0, x19
   25af8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   25afc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   25b00: 9100c3ff     	add	sp, sp, #0x30
   25b04: d50323bf     	autiasp
   25b08: d65f03c0     	ret
   25b0c: b94007e8     	ldr	w8, [sp, #0x4]
   25b10: 90000000     	adrp	x0, 0x25000 <tp_glove_read>
		0000000000025b10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x629a
   25b14: 91000000     	add	x0, x0, #0x0
		0000000000025b14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x629a
   25b18: 90000001     	adrp	x1, 0x25000 <tp_glove_read>
		0000000000025b18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1266
   25b1c: 91000021     	add	x1, x1, #0x0
		0000000000025b1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1266
   25b20: 7100011f     	cmp	w8, #0x0
   25b24: 528000a8     	mov	w8, #0x5                // =5
   25b28: 1a8803e2     	csel	w2, wzr, w8, eq
   25b2c: b90007e2     	str	w2, [sp, #0x4]
   25b30: 94000000     	bl	0x25b30 <tp_single_tap_write+0x9c>
		0000000000025b30:  R_AARCH64_CALL26	_printk
   25b34: f9476288     	ldr	x8, [x20, #0xec0]
   25b38: b4fffd48     	cbz	x8, 0x25ae0 <tp_single_tap_write+0x4c>
   25b3c: b94007e1     	ldr	w1, [sp, #0x4]
   25b40: aa1403e0     	mov	x0, x20
   25b44: b85fc110     	ldur	w16, [x8, #-0x4]
   25b48: 72969331     	movk	w17, #0xb499
   25b4c: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   25b50: 6b11021f     	cmp	w16, w17
   25b54: 54000040     	b.eq	0x25b5c <tp_single_tap_write+0xc8>
   25b58: d4304500     	brk	#0x8228
   25b5c: d63f0100     	blr	x8
   25b60: 17ffffe0     	b	0x25ae0 <tp_single_tap_write+0x4c>
   25b64: 94000000     	bl	0x25b64 <tp_single_tap_write+0xd0>
		0000000000025b64:  R_AARCH64_CALL26	__stack_chk_fail
