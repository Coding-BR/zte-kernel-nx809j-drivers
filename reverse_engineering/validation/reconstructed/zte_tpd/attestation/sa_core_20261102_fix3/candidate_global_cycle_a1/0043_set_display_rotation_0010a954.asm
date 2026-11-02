
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025898 <set_display_rotation>:
   25898: d503233f     	paciasp
   2589c: d10143ff     	sub	sp, sp, #0x50
   258a0: a9027bfd     	stp	x29, x30, [sp, #0x20]
   258a4: f9001bf5     	str	x21, [sp, #0x30]
   258a8: a9044ff4     	stp	x20, x19, [sp, #0x40]
   258ac: 910083fd     	add	x29, sp, #0x20
   258b0: d5384108     	mrs	x8, SP_EL0
   258b4: aa0103f5     	mov	x21, x1
   258b8: 910023e0     	add	x0, sp, #0x8
   258bc: f9438908     	ldr	x8, [x8, #0x710]
   258c0: f100245f     	cmp	x2, #0x9
   258c4: f81f83a8     	stur	x8, [x29, #-0x8]
   258c8: 90000008     	adrp	x8, 0x25000 <tp_glove_read>
		00000000000258c8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   258cc: f9400114     	ldr	x20, [x8]
		00000000000258cc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   258d0: 52800128     	mov	w8, #0x9                // =9
   258d4: b90007ff     	str	wzr, [sp, #0x4]
   258d8: 9a883053     	csel	x19, x2, x8, lo
   258dc: 2a1f03e2     	mov	w2, wzr
   258e0: 790023ff     	strh	wzr, [sp, #0x10]
   258e4: aa1303e1     	mov	x1, x19
   258e8: f90007ff     	str	xzr, [sp, #0x8]
   258ec: 94000000     	bl	0x258ec <set_display_rotation+0x54>
		00000000000258ec:  R_AARCH64_CALL26	__check_object_size
   258f0: 910023e0     	add	x0, sp, #0x8
   258f4: aa1503e1     	mov	x1, x21
   258f8: aa1303e2     	mov	x2, x19
   258fc: 97ffff04     	bl	0x2550c <headset_state_store+0x18>
		00000000000258fc:  R_AARCH64_CALL26	_inline_copy_from_user
   25900: 350000c0     	cbnz	w0, 0x25918 <set_display_rotation+0x80>
   25904: 910023e0     	add	x0, sp, #0x8
   25908: 910013e2     	add	x2, sp, #0x4
   2590c: 2a1f03e1     	mov	w1, wzr
   25910: 94000000     	bl	0x25910 <set_display_rotation+0x78>
		0000000000025910:  R_AARCH64_CALL26	kstrtouint
   25914: 340001c0     	cbz	w0, 0x2594c <set_display_rotation+0xb4>
   25918: 928002b3     	mov	x19, #-0x16             // =-22
   2591c: d5384108     	mrs	x8, SP_EL0
   25920: f9438908     	ldr	x8, [x8, #0x710]
   25924: f85f83a9     	ldur	x9, [x29, #-0x8]
   25928: eb09011f     	cmp	x8, x9
   2592c: 54000361     	b.ne	0x25998 <set_display_rotation+0x100>
   25930: aa1303e0     	mov	x0, x19
   25934: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   25938: f9401bf5     	ldr	x21, [sp, #0x30]
   2593c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   25940: 910143ff     	add	sp, sp, #0x50
   25944: d50323bf     	autiasp
   25948: d65f03c0     	ret
   2594c: b94007e2     	ldr	w2, [sp, #0x4]
   25950: 90000000     	adrp	x0, 0x25000 <tp_glove_read>
		0000000000025950:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x67c
   25954: 91000000     	add	x0, x0, #0x0
		0000000000025954:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x67c
   25958: 90000001     	adrp	x1, 0x25000 <tp_glove_read>
		0000000000025958:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25de
   2595c: 91000021     	add	x1, x1, #0x0
		000000000002595c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25de
   25960: b9001282     	str	w2, [x20, #0x10]
   25964: 94000000     	bl	0x25964 <set_display_rotation+0xcc>
		0000000000025964:  R_AARCH64_CALL26	_printk
   25968: f9474a88     	ldr	x8, [x20, #0xe90]
   2596c: b4fffd88     	cbz	x8, 0x2591c <set_display_rotation+0x84>
   25970: b94007e1     	ldr	w1, [sp, #0x4]
   25974: aa1403e0     	mov	x0, x20
   25978: b85fc110     	ldur	w16, [x8, #-0x4]
   2597c: 72969331     	movk	w17, #0xb499
   25980: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   25984: 6b11021f     	cmp	w16, w17
   25988: 54000040     	b.eq	0x25990 <set_display_rotation+0xf8>
   2598c: d4304500     	brk	#0x8228
   25990: d63f0100     	blr	x8
   25994: 17ffffe2     	b	0x2591c <set_display_rotation+0x84>
   25998: 94000000     	bl	0x25998 <set_display_rotation+0x100>
		0000000000025998:  R_AARCH64_CALL26	__stack_chk_fail
