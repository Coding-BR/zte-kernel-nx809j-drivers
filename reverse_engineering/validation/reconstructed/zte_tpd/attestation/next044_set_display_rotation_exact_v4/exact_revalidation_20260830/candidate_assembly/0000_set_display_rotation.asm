
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002583c <set_display_rotation>:
   2583c: d503233f     	paciasp
   25840: d10143ff     	sub	sp, sp, #0x50
   25844: a9027bfd     	stp	x29, x30, [sp, #0x20]
   25848: f9001bf5     	str	x21, [sp, #0x30]
   2584c: a9044ff4     	stp	x20, x19, [sp, #0x40]
   25850: 910083fd     	add	x29, sp, #0x20
   25854: d5384108     	mrs	x8, SP_EL0
   25858: aa0103f5     	mov	x21, x1
   2585c: 910023e0     	add	x0, sp, #0x8
   25860: f9438908     	ldr	x8, [x8, #0x710]
   25864: f100245f     	cmp	x2, #0x9
   25868: f81f83a8     	stur	x8, [x29, #-0x8]
   2586c: 90000008     	adrp	x8, 0x25000 <tp_glove_read+0x5c>
		000000000002586c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25870: f9400114     	ldr	x20, [x8]
		0000000000025870:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25874: 52800128     	mov	w8, #0x9                // =9
   25878: b90007ff     	str	wzr, [sp, #0x4]
   2587c: 9a883053     	csel	x19, x2, x8, lo
   25880: 2a1f03e2     	mov	w2, wzr
   25884: 790023ff     	strh	wzr, [sp, #0x10]
   25888: aa1303e1     	mov	x1, x19
   2588c: f90007ff     	str	xzr, [sp, #0x8]
   25890: 94000000     	bl	0x25890 <set_display_rotation+0x54>
		0000000000025890:  R_AARCH64_CALL26	__check_object_size
   25894: 910023e0     	add	x0, sp, #0x8
   25898: aa1503e1     	mov	x1, x21
   2589c: aa1303e2     	mov	x2, x19
   258a0: 97ffff04     	bl	0x254b0 <headset_state_store+0x18>
		00000000000258a0:  R_AARCH64_CALL26	_inline_copy_from_user
   258a4: 350000c0     	cbnz	w0, 0x258bc <set_display_rotation+0x80>
   258a8: 910023e0     	add	x0, sp, #0x8
   258ac: 910013e2     	add	x2, sp, #0x4
   258b0: 2a1f03e1     	mov	w1, wzr
   258b4: 94000000     	bl	0x258b4 <set_display_rotation+0x78>
		00000000000258b4:  R_AARCH64_CALL26	kstrtouint
   258b8: 340001c0     	cbz	w0, 0x258f0 <set_display_rotation+0xb4>
   258bc: 928002b3     	mov	x19, #-0x16             // =-22
   258c0: d5384108     	mrs	x8, SP_EL0
   258c4: f9438908     	ldr	x8, [x8, #0x710]
   258c8: f85f83a9     	ldur	x9, [x29, #-0x8]
   258cc: eb09011f     	cmp	x8, x9
   258d0: 54000361     	b.ne	0x2593c <set_display_rotation+0x100>
   258d4: aa1303e0     	mov	x0, x19
   258d8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   258dc: f9401bf5     	ldr	x21, [sp, #0x30]
   258e0: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   258e4: 910143ff     	add	sp, sp, #0x50
   258e8: d50323bf     	autiasp
   258ec: d65f03c0     	ret
   258f0: b94007e2     	ldr	w2, [sp, #0x4]
   258f4: 90000000     	adrp	x0, 0x25000 <tp_glove_read+0x5c>
		00000000000258f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x67c
   258f8: 91000000     	add	x0, x0, #0x0
		00000000000258f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x67c
   258fc: 90000001     	adrp	x1, 0x25000 <tp_glove_read+0x5c>
		00000000000258fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25de
   25900: 91000021     	add	x1, x1, #0x0
		0000000000025900:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25de
   25904: b9001282     	str	w2, [x20, #0x10]
   25908: 94000000     	bl	0x25908 <set_display_rotation+0xcc>
		0000000000025908:  R_AARCH64_CALL26	_printk
   2590c: f9474a88     	ldr	x8, [x20, #0xe90]
   25910: b4fffd88     	cbz	x8, 0x258c0 <set_display_rotation+0x84>
   25914: b94007e1     	ldr	w1, [sp, #0x4]
   25918: aa1403e0     	mov	x0, x20
   2591c: b85fc110     	ldur	w16, [x8, #-0x4]
   25920: 72969331     	movk	w17, #0xb499
   25924: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   25928: 6b11021f     	cmp	w16, w17
   2592c: 54000040     	b.eq	0x25934 <set_display_rotation+0xf8>
   25930: d4304500     	brk	#0x8228
   25934: d63f0100     	blr	x8
   25938: 17ffffe2     	b	0x258c0 <set_display_rotation+0x84>
   2593c: 94000000     	bl	0x2593c <set_display_rotation+0x100>
		000000000002593c:  R_AARCH64_CALL26	__stack_chk_fail
