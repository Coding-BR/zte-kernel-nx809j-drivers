
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001e950 <tp_pen_only_write>:
   1e950: d503233f     	paciasp
   1e954: d10143ff     	sub	sp, sp, #0x50
   1e958: a9027bfd     	stp	x29, x30, [sp, #0x20]
   1e95c: f9001bf5     	str	x21, [sp, #0x30]
   1e960: a9044ff4     	stp	x20, x19, [sp, #0x40]
   1e964: 910083fd     	add	x29, sp, #0x20
   1e968: d5384108     	mrs	x8, SP_EL0
   1e96c: aa0103f5     	mov	x21, x1
   1e970: 910023e0     	add	x0, sp, #0x8
   1e974: f9438908     	ldr	x8, [x8, #0x710]
   1e978: f100245f     	cmp	x2, #0x9
   1e97c: f81f83a8     	stur	x8, [x29, #-0x8]
   1e980: 90000008     	adrp	x8, 0x1e000 <tp_ghost_check+0x3b4>
		000000000001e980:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1e984: f9400114     	ldr	x20, [x8]
		000000000001e984:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1e988: 52800128     	mov	w8, #0x9                // =9
   1e98c: b90007ff     	str	wzr, [sp, #0x4]
   1e990: 9a883053     	csel	x19, x2, x8, lo
   1e994: 2a1f03e2     	mov	w2, wzr
   1e998: 790023ff     	strh	wzr, [sp, #0x10]
   1e99c: aa1303e1     	mov	x1, x19
   1e9a0: f90007ff     	str	xzr, [sp, #0x8]
   1e9a4: 94000000     	bl	0x1e9a4 <tp_pen_only_write+0x54>
		000000000001e9a4:  R_AARCH64_CALL26	__check_object_size
   1e9a8: 910023e0     	add	x0, sp, #0x8
   1e9ac: aa1503e1     	mov	x1, x21
   1e9b0: aa1303e2     	mov	x2, x19
   1e9b4: 94000000     	bl	0x1e9b4 <tp_pen_only_write+0x64>
		000000000001e9b4:  R_AARCH64_CALL26	_inline_copy_from_user
   1e9b8: 350000c0     	cbnz	w0, 0x1e9d0 <tp_pen_only_write+0x80>
   1e9bc: 910023e0     	add	x0, sp, #0x8
   1e9c0: 910013e2     	add	x2, sp, #0x4
   1e9c4: 2a1f03e1     	mov	w1, wzr
   1e9c8: 94000000     	bl	0x1e9c8 <tp_pen_only_write+0x78>
		000000000001e9c8:  R_AARCH64_CALL26	kstrtouint
   1e9cc: 340001c0     	cbz	w0, 0x1ea04 <tp_pen_only_write+0xb4>
   1e9d0: 928002b3     	mov	x19, #-0x16             // =-22
   1e9d4: d5384108     	mrs	x8, SP_EL0
   1e9d8: f9438908     	ldr	x8, [x8, #0x710]
   1e9dc: f85f83a9     	ldur	x9, [x29, #-0x8]
   1e9e0: eb09011f     	cmp	x8, x9
   1e9e4: 540003c1     	b.ne	0x1ea5c <tp_pen_only_write+0x10c>
   1e9e8: aa1303e0     	mov	x0, x19
   1e9ec: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   1e9f0: f9401bf5     	ldr	x21, [sp, #0x30]
   1e9f4: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   1e9f8: 910143ff     	add	sp, sp, #0x50
   1e9fc: d50323bf     	autiasp
   1ea00: d65f03c0     	ret
   1ea04: b94007e8     	ldr	w8, [sp, #0x4]
   1ea08: 90000000     	adrp	x0, 0x1e000 <tp_ghost_check+0x3b4>
		000000000001ea08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7154
   1ea0c: 91000000     	add	x0, x0, #0x0
		000000000001ea0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7154
   1ea10: 90000001     	adrp	x1, 0x1e000 <tp_ghost_check+0x3b4>
		000000000001ea10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6201
   1ea14: 91000021     	add	x1, x1, #0x0
		000000000001ea14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6201
   1ea18: 7100011f     	cmp	w8, #0x0
   1ea1c: 1a9f07e2     	cset	w2, ne
   1ea20: b90007e2     	str	w2, [sp, #0x4]
   1ea24: 39110682     	strb	w2, [x20, #0x441]
   1ea28: 94000000     	bl	0x1ea28 <tp_pen_only_write+0xd8>
		000000000001ea28:  R_AARCH64_CALL26	_printk
   1ea2c: f947c688     	ldr	x8, [x20, #0xf88]
   1ea30: b4fffd28     	cbz	x8, 0x1e9d4 <tp_pen_only_write+0x84>
   1ea34: b94007e1     	ldr	w1, [sp, #0x4]
   1ea38: aa1403e0     	mov	x0, x20
   1ea3c: b85fc110     	ldur	w16, [x8, #-0x4]
   1ea40: 7287b831     	movk	w17, #0x3dc1
   1ea44: 72bc3ad1     	movk	w17, #0xe1d6, lsl #16
   1ea48: 6b11021f     	cmp	w16, w17
   1ea4c: 54000040     	b.eq	0x1ea54 <tp_pen_only_write+0x104>
   1ea50: d4304500     	brk	#0x8228
   1ea54: d63f0100     	blr	x8
   1ea58: 17ffffdf     	b	0x1e9d4 <tp_pen_only_write+0x84>
   1ea5c: 94000000     	bl	0x1ea5c <tp_pen_only_write+0x10c>
		000000000001ea5c:  R_AARCH64_CALL26	__stack_chk_fail
