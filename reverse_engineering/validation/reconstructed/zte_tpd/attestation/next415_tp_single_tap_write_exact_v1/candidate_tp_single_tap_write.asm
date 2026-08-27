
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002a040 <tp_single_tap_write>:
   2a040: d503233f     	paciasp
   2a044: d100c3ff     	sub	sp, sp, #0x30
   2a048: a9017bfd     	stp	x29, x30, [sp, #0x10]
   2a04c: a9024ff4     	stp	x20, x19, [sp, #0x20]
   2a050: 910043fd     	add	x29, sp, #0x10
   2a054: d5384108     	mrs	x8, SP_EL0
   2a058: aa0203f3     	mov	x19, x2
   2a05c: aa0103e0     	mov	x0, x1
   2a060: f9438908     	ldr	x8, [x8, #0x710]
   2a064: 910013e3     	add	x3, sp, #0x4
   2a068: aa0203e1     	mov	x1, x2
   2a06c: 52800142     	mov	w2, #0xa                // =10
   2a070: f90007e8     	str	x8, [sp, #0x8]
   2a074: 90000008     	adrp	x8, 0x2a000 <tp_single_tap_read+0xb4>
		000000000002a074:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   2a078: f9400114     	ldr	x20, [x8]
		000000000002a078:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   2a07c: b90007ff     	str	wzr, [sp, #0x4]
   2a080: 94000000     	bl	0x2a080 <tp_single_tap_write+0x40>
		000000000002a080:  R_AARCH64_CALL26	kstrtouint_from_user
   2a084: 340001a0     	cbz	w0, 0x2a0b8 <tp_single_tap_write+0x78>
   2a088: 928002b3     	mov	x19, #-0x16             // =-22
   2a08c: d5384108     	mrs	x8, SP_EL0
   2a090: f9438908     	ldr	x8, [x8, #0x710]
   2a094: f94007e9     	ldr	x9, [sp, #0x8]
   2a098: eb09011f     	cmp	x8, x9
   2a09c: 540003a1     	b.ne	0x2a110 <tp_single_tap_write+0xd0>
   2a0a0: aa1303e0     	mov	x0, x19
   2a0a4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   2a0a8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   2a0ac: 9100c3ff     	add	sp, sp, #0x30
   2a0b0: d50323bf     	autiasp
   2a0b4: d65f03c0     	ret
   2a0b8: b94007e8     	ldr	w8, [sp, #0x4]
   2a0bc: 90000000     	adrp	x0, 0x2a000 <tp_single_tap_read+0xb4>
		000000000002a0bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x629a
   2a0c0: 91000000     	add	x0, x0, #0x0
		000000000002a0c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x629a
   2a0c4: 90000001     	adrp	x1, 0x2a000 <tp_single_tap_read+0xb4>
		000000000002a0c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1266
   2a0c8: 91000021     	add	x1, x1, #0x0
		000000000002a0c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1266
   2a0cc: 7100011f     	cmp	w8, #0x0
   2a0d0: 528000a8     	mov	w8, #0x5                // =5
   2a0d4: 1a8803e2     	csel	w2, wzr, w8, eq
   2a0d8: b90007e2     	str	w2, [sp, #0x4]
   2a0dc: 94000000     	bl	0x2a0dc <tp_single_tap_write+0x9c>
		000000000002a0dc:  R_AARCH64_CALL26	_printk
   2a0e0: f9476288     	ldr	x8, [x20, #0xec0]
   2a0e4: b4fffd48     	cbz	x8, 0x2a08c <tp_single_tap_write+0x4c>
   2a0e8: b94007e1     	ldr	w1, [sp, #0x4]
   2a0ec: aa1403e0     	mov	x0, x20
   2a0f0: b85fc110     	ldur	w16, [x8, #-0x4]
   2a0f4: 72969331     	movk	w17, #0xb499
   2a0f8: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   2a0fc: 6b11021f     	cmp	w16, w17
   2a100: 54000040     	b.eq	0x2a108 <tp_single_tap_write+0xc8>
   2a104: d4304500     	brk	#0x8228
   2a108: d63f0100     	blr	x8
   2a10c: 17ffffe0     	b	0x2a08c <tp_single_tap_write+0x4c>
   2a110: 94000000     	bl	0x2a110 <tp_single_tap_write+0xd0>
		000000000002a110:  R_AARCH64_CALL26	__stack_chk_fail
