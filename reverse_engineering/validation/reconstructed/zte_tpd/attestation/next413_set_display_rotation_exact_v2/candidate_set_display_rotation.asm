
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002a010 <set_display_rotation>:
   2a010: d503233f     	paciasp
   2a014: d10143ff     	sub	sp, sp, #0x50
   2a018: a9027bfd     	stp	x29, x30, [sp, #0x20]
   2a01c: f9001bf5     	str	x21, [sp, #0x30]
   2a020: a9044ff4     	stp	x20, x19, [sp, #0x40]
   2a024: 910083fd     	add	x29, sp, #0x20
   2a028: d5384108     	mrs	x8, SP_EL0
   2a02c: aa0103f5     	mov	x21, x1
   2a030: 910023e0     	add	x0, sp, #0x8
   2a034: f9438908     	ldr	x8, [x8, #0x710]
   2a038: f100245f     	cmp	x2, #0x9
   2a03c: f81f83a8     	stur	x8, [x29, #-0x8]
   2a040: 90000008     	adrp	x8, 0x2a000 <display_rotation_show+0xc8>
		000000000002a040:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   2a044: f9400114     	ldr	x20, [x8]
		000000000002a044:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   2a048: 52800128     	mov	w8, #0x9                // =9
   2a04c: b90007ff     	str	wzr, [sp, #0x4]
   2a050: 9a883053     	csel	x19, x2, x8, lo
   2a054: 2a1f03e2     	mov	w2, wzr
   2a058: 790023ff     	strh	wzr, [sp, #0x10]
   2a05c: aa1303e1     	mov	x1, x19
   2a060: f90007ff     	str	xzr, [sp, #0x8]
   2a064: 94000000     	bl	0x2a064 <set_display_rotation+0x54>
		000000000002a064:  R_AARCH64_CALL26	__check_object_size
   2a068: 910023e0     	add	x0, sp, #0x8
   2a06c: aa1503e1     	mov	x1, x21
   2a070: aa1303e2     	mov	x2, x19
   2a074: 97ffff04     	bl	0x29c84 <headset_state_store+0x18>
		000000000002a074:  R_AARCH64_CALL26	_inline_copy_from_user
   2a078: 350000c0     	cbnz	w0, 0x2a090 <set_display_rotation+0x80>
   2a07c: 910023e0     	add	x0, sp, #0x8
   2a080: 910013e2     	add	x2, sp, #0x4
   2a084: 2a1f03e1     	mov	w1, wzr
   2a088: 94000000     	bl	0x2a088 <set_display_rotation+0x78>
		000000000002a088:  R_AARCH64_CALL26	kstrtouint
   2a08c: 340001c0     	cbz	w0, 0x2a0c4 <set_display_rotation+0xb4>
   2a090: 928002b3     	mov	x19, #-0x16             // =-22
   2a094: d5384108     	mrs	x8, SP_EL0
   2a098: f9438908     	ldr	x8, [x8, #0x710]
   2a09c: f85f83a9     	ldur	x9, [x29, #-0x8]
   2a0a0: eb09011f     	cmp	x8, x9
   2a0a4: 54000361     	b.ne	0x2a110 <set_display_rotation+0x100>
   2a0a8: aa1303e0     	mov	x0, x19
   2a0ac: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   2a0b0: f9401bf5     	ldr	x21, [sp, #0x30]
   2a0b4: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   2a0b8: 910143ff     	add	sp, sp, #0x50
   2a0bc: d50323bf     	autiasp
   2a0c0: d65f03c0     	ret
   2a0c4: b94007e2     	ldr	w2, [sp, #0x4]
   2a0c8: 90000000     	adrp	x0, 0x2a000 <display_rotation_show+0xc8>
		000000000002a0c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x67c
   2a0cc: 91000000     	add	x0, x0, #0x0
		000000000002a0cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x67c
   2a0d0: 90000001     	adrp	x1, 0x2a000 <display_rotation_show+0xc8>
		000000000002a0d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25de
   2a0d4: 91000021     	add	x1, x1, #0x0
		000000000002a0d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25de
   2a0d8: b9001282     	str	w2, [x20, #0x10]
   2a0dc: 94000000     	bl	0x2a0dc <set_display_rotation+0xcc>
		000000000002a0dc:  R_AARCH64_CALL26	_printk
   2a0e0: f9474a88     	ldr	x8, [x20, #0xe90]
   2a0e4: b4fffd88     	cbz	x8, 0x2a094 <set_display_rotation+0x84>
   2a0e8: b94007e1     	ldr	w1, [sp, #0x4]
   2a0ec: aa1403e0     	mov	x0, x20
   2a0f0: b85fc110     	ldur	w16, [x8, #-0x4]
   2a0f4: 72969331     	movk	w17, #0xb499
   2a0f8: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   2a0fc: 6b11021f     	cmp	w16, w17
   2a100: 54000040     	b.eq	0x2a108 <set_display_rotation+0xf8>
   2a104: d4304500     	brk	#0x8228
   2a108: d63f0100     	blr	x8
   2a10c: 17ffffe2     	b	0x2a094 <set_display_rotation+0x84>
   2a110: 94000000     	bl	0x2a110 <set_display_rotation+0x100>
		000000000002a110:  R_AARCH64_CALL26	__stack_chk_fail
