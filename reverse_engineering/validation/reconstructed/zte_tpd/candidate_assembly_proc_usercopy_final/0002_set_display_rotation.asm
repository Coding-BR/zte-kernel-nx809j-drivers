
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000025f0 <set_display_rotation>:
    25f0: d503233f     	paciasp
    25f4: d10143ff     	sub	sp, sp, #0x50
    25f8: a9027bfd     	stp	x29, x30, [sp, #0x20]
    25fc: f9001bf5     	str	x21, [sp, #0x30]
    2600: a9044ff4     	stp	x20, x19, [sp, #0x40]
    2604: 910083fd     	add	x29, sp, #0x20
    2608: d5384108     	mrs	x8, SP_EL0
    260c: aa0103f5     	mov	x21, x1
    2610: 910023e0     	add	x0, sp, #0x8
    2614: f9438908     	ldr	x8, [x8, #0x710]
    2618: f100245f     	cmp	x2, #0x9
    261c: f81f83a8     	stur	x8, [x29, #-0x8]
    2620: 90000008     	adrp	x8, 0x2000 <one_key_report+0x58>
		0000000000002620:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    2624: 790023ff     	strh	wzr, [sp, #0x10]
    2628: f90007ff     	str	xzr, [sp, #0x8]
    262c: d5384109     	mrs	x9, SP_EL0
    2630: f9400114     	ldr	x20, [x8]
		0000000000002630:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    2634: 52800128     	mov	w8, #0x9                // =9
    2638: b81f43bf     	stur	wzr, [x29, #-0xc]
    263c: 9a88b053     	csel	x19, x2, x8, lt
    2640: 2a1f03e2     	mov	w2, wzr
    2644: aa1303e1     	mov	x1, x19
    2648: 94000000     	bl	0x2648 <set_display_rotation+0x58>
		0000000000002648:  R_AARCH64_CALL26	__check_object_size
    264c: 910023e0     	add	x0, sp, #0x8
    2650: aa1503e1     	mov	x1, x21
    2654: aa1303e2     	mov	x2, x19
    2658: 94000000     	bl	0x2658 <set_display_rotation+0x68>
		0000000000002658:  R_AARCH64_CALL26	_inline_copy_from_user
    265c: b50000c0     	cbnz	x0, 0x2674 <set_display_rotation+0x84>
    2660: 910023e0     	add	x0, sp, #0x8
    2664: d10033a2     	sub	x2, x29, #0xc
    2668: 2a1f03e1     	mov	w1, wzr
    266c: 94000000     	bl	0x266c <set_display_rotation+0x7c>
		000000000000266c:  R_AARCH64_CALL26	kstrtouint
    2670: 340001e0     	cbz	w0, 0x26ac <set_display_rotation+0xbc>
    2674: 928002b3     	mov	x19, #-0x16             // =-22
    2678: d5384108     	mrs	x8, SP_EL0
    267c: f9438908     	ldr	x8, [x8, #0x710]
    2680: d5384109     	mrs	x9, SP_EL0
    2684: f85f83a9     	ldur	x9, [x29, #-0x8]
    2688: eb09011f     	cmp	x8, x9
    268c: 54000361     	b.ne	0x26f8 <set_display_rotation+0x108>
    2690: aa1303e0     	mov	x0, x19
    2694: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    2698: f9401bf5     	ldr	x21, [sp, #0x30]
    269c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    26a0: 910143ff     	add	sp, sp, #0x50
    26a4: d50323bf     	autiasp
    26a8: d65f03c0     	ret
    26ac: b85f43a2     	ldur	w2, [x29, #-0xc]
    26b0: 90000000     	adrp	x0, 0x2000 <one_key_report+0x58>
		00000000000026b0:  R_AARCH64_ADR_PREL_PG_HI21	unk_31DC4
    26b4: 91000000     	add	x0, x0, #0x0
		00000000000026b4:  R_AARCH64_ADD_ABS_LO12_NC	unk_31DC4
    26b8: 90000001     	adrp	x1, 0x2000 <one_key_report+0x58>
		00000000000026b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfdf
    26bc: 91000021     	add	x1, x1, #0x0
		00000000000026bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfdf
    26c0: b9001282     	str	w2, [x20, #0x10]
    26c4: 94000000     	bl	0x26c4 <set_display_rotation+0xd4>
		00000000000026c4:  R_AARCH64_CALL26	_printk
    26c8: f9466e88     	ldr	x8, [x20, #0xcd8]
    26cc: b4fffd68     	cbz	x8, 0x2678 <set_display_rotation+0x88>
    26d0: b85f43a1     	ldur	w1, [x29, #-0xc]
    26d4: aa1403e0     	mov	x0, x20
    26d8: b85fc110     	ldur	w16, [x8, #-0x4]
    26dc: 728f8a71     	movk	w17, #0x7c53
    26e0: 72bea491     	movk	w17, #0xf524, lsl #16
    26e4: 6b11021f     	cmp	w16, w17
    26e8: 54000040     	b.eq	0x26f0 <set_display_rotation+0x100>
    26ec: d4304500     	brk	#0x8228
    26f0: d63f0100     	blr	x8
    26f4: 17ffffe1     	b	0x2678 <set_display_rotation+0x88>
    26f8: 94000000     	bl	0x26f8 <set_display_rotation+0x108>
		00000000000026f8:  R_AARCH64_CALL26	__stack_chk_fail
