
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000040cc <set_display_rotation>:
    40cc: d503233f     	paciasp
    40d0: d10143ff     	sub	sp, sp, #0x50
    40d4: a9027bfd     	stp	x29, x30, [sp, #0x20]
    40d8: f9001bf5     	str	x21, [sp, #0x30]
    40dc: a9044ff4     	stp	x20, x19, [sp, #0x40]
    40e0: 910083fd     	add	x29, sp, #0x20
    40e4: d5384108     	mrs	x8, SP_EL0
    40e8: aa0103f5     	mov	x21, x1
    40ec: 910023e0     	add	x0, sp, #0x8
    40f0: f9438908     	ldr	x8, [x8, #0x710]
    40f4: f100245f     	cmp	x2, #0x9
    40f8: f81f83a8     	stur	x8, [x29, #-0x8]
    40fc: 90000008     	adrp	x8, 0x4000 <display_rotation_show+0xc>
		00000000000040fc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    4100: f9400114     	ldr	x20, [x8]
		0000000000004100:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    4104: 52800128     	mov	w8, #0x9                // =9
    4108: b90007ff     	str	wzr, [sp, #0x4]
    410c: 9a883053     	csel	x19, x2, x8, lo
    4110: 2a1f03e2     	mov	w2, wzr
    4114: 790023ff     	strh	wzr, [sp, #0x10]
    4118: aa1303e1     	mov	x1, x19
    411c: f90007ff     	str	xzr, [sp, #0x8]
    4120: 94000000     	bl	0x4120 <set_display_rotation+0x54>
		0000000000004120:  R_AARCH64_CALL26	__check_object_size
    4124: 910023e0     	add	x0, sp, #0x8
    4128: aa1503e1     	mov	x1, x21
    412c: aa1303e2     	mov	x2, x19
    4130: 97ffff04     	bl	0x3d40 <_inline_copy_from_user>
    4134: 350000c0     	cbnz	w0, 0x414c <set_display_rotation+0x80>
    4138: 910023e0     	add	x0, sp, #0x8
    413c: 910013e2     	add	x2, sp, #0x4
    4140: 2a1f03e1     	mov	w1, wzr
    4144: 94000000     	bl	0x4144 <set_display_rotation+0x78>
		0000000000004144:  R_AARCH64_CALL26	kstrtouint
    4148: 340001c0     	cbz	w0, 0x4180 <set_display_rotation+0xb4>
    414c: 928002b3     	mov	x19, #-0x16             // =-22
    4150: d5384108     	mrs	x8, SP_EL0
    4154: f9438908     	ldr	x8, [x8, #0x710]
    4158: f85f83a9     	ldur	x9, [x29, #-0x8]
    415c: eb09011f     	cmp	x8, x9
    4160: 54000361     	b.ne	0x41cc <set_display_rotation+0x100>
    4164: aa1303e0     	mov	x0, x19
    4168: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    416c: f9401bf5     	ldr	x21, [sp, #0x30]
    4170: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    4174: 910143ff     	add	sp, sp, #0x50
    4178: d50323bf     	autiasp
    417c: d65f03c0     	ret
    4180: b94007e2     	ldr	w2, [sp, #0x4]
    4184: 90000000     	adrp	x0, 0x4000 <display_rotation_show+0xc>
		0000000000004184:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x662
    4188: 91000000     	add	x0, x0, #0x0
		0000000000004188:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x662
    418c: 90000001     	adrp	x1, 0x4000 <display_rotation_show+0xc>
		000000000000418c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2557
    4190: 91000021     	add	x1, x1, #0x0
		0000000000004190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2557
    4194: b9001282     	str	w2, [x20, #0x10]
    4198: 94000000     	bl	0x4198 <set_display_rotation+0xcc>
		0000000000004198:  R_AARCH64_CALL26	_printk
    419c: f9474a88     	ldr	x8, [x20, #0xe90]
    41a0: b4fffd88     	cbz	x8, 0x4150 <set_display_rotation+0x84>
    41a4: b94007e1     	ldr	w1, [sp, #0x4]
    41a8: aa1403e0     	mov	x0, x20
    41ac: b85fc110     	ldur	w16, [x8, #-0x4]
    41b0: 72969331     	movk	w17, #0xb499
    41b4: 72ad5f11     	movk	w17, #0x6af8, lsl #16
    41b8: 6b11021f     	cmp	w16, w17
    41bc: 54000040     	b.eq	0x41c4 <set_display_rotation+0xf8>
    41c0: d4304500     	brk	#0x8228
    41c4: d63f0100     	blr	x8
    41c8: 17ffffe2     	b	0x4150 <set_display_rotation+0x84>
    41cc: 94000000     	bl	0x41cc <set_display_rotation+0x100>
		00000000000041cc:  R_AARCH64_CALL26	__stack_chk_fail
