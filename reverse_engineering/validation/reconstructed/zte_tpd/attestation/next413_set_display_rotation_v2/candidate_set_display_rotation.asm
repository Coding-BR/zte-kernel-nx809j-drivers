
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002208 <set_display_rotation>:
    2208: d503233f     	paciasp
    220c: d10143ff     	sub	sp, sp, #0x50
    2210: a9027bfd     	stp	x29, x30, [sp, #0x20]
    2214: f9001bf5     	str	x21, [sp, #0x30]
    2218: a9044ff4     	stp	x20, x19, [sp, #0x40]
    221c: 910083fd     	add	x29, sp, #0x20
    2220: d5384108     	mrs	x8, SP_EL0
    2224: aa0103f5     	mov	x21, x1
    2228: 910023e0     	add	x0, sp, #0x8
    222c: f9438908     	ldr	x8, [x8, #0x710]
    2230: f100245f     	cmp	x2, #0x9
    2234: f81f83a8     	stur	x8, [x29, #-0x8]
    2238: 90000008     	adrp	x8, 0x2000 <report_ufp_uevent+0x58>
		0000000000002238:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    223c: f9400114     	ldr	x20, [x8]
		000000000000223c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    2240: 52800128     	mov	w8, #0x9                // =9
    2244: 790023ff     	strh	wzr, [sp, #0x10]
    2248: 9a88b053     	csel	x19, x2, x8, lt
    224c: 2a1f03e2     	mov	w2, wzr
    2250: f90007ff     	str	xzr, [sp, #0x8]
    2254: aa1303e1     	mov	x1, x19
    2258: b81f43bf     	stur	wzr, [x29, #-0xc]
    225c: 94000000     	bl	0x225c <set_display_rotation+0x54>
		000000000000225c:  R_AARCH64_CALL26	__check_object_size
    2260: 910023e0     	add	x0, sp, #0x8
    2264: aa1503e1     	mov	x1, x21
    2268: aa1303e2     	mov	x2, x19
    226c: 94000000     	bl	0x226c <set_display_rotation+0x64>
		000000000000226c:  R_AARCH64_CALL26	_inline_copy_from_user
    2270: b50000c0     	cbnz	x0, 0x2288 <set_display_rotation+0x80>
    2274: 910023e0     	add	x0, sp, #0x8
    2278: d10033a2     	sub	x2, x29, #0xc
    227c: 2a1f03e1     	mov	w1, wzr
    2280: 94000000     	bl	0x2280 <set_display_rotation+0x78>
		0000000000002280:  R_AARCH64_CALL26	kstrtouint
    2284: 340001c0     	cbz	w0, 0x22bc <set_display_rotation+0xb4>
    2288: 928002b3     	mov	x19, #-0x16             // =-22
    228c: d5384108     	mrs	x8, SP_EL0
    2290: f9438908     	ldr	x8, [x8, #0x710]
    2294: f85f83a9     	ldur	x9, [x29, #-0x8]
    2298: eb09011f     	cmp	x8, x9
    229c: 54000361     	b.ne	0x2308 <set_display_rotation+0x100>
    22a0: aa1303e0     	mov	x0, x19
    22a4: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    22a8: f9401bf5     	ldr	x21, [sp, #0x30]
    22ac: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    22b0: 910143ff     	add	sp, sp, #0x50
    22b4: d50323bf     	autiasp
    22b8: d65f03c0     	ret
    22bc: b85f43a2     	ldur	w2, [x29, #-0xc]
    22c0: 90000000     	adrp	x0, 0x2000 <report_ufp_uevent+0x58>
		00000000000022c0:  R_AARCH64_ADR_PREL_PG_HI21	unk_31DC4
    22c4: 91000000     	add	x0, x0, #0x0
		00000000000022c4:  R_AARCH64_ADD_ABS_LO12_NC	unk_31DC4
    22c8: 90000001     	adrp	x1, 0x2000 <report_ufp_uevent+0x58>
		00000000000022c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x166e
    22cc: 91000021     	add	x1, x1, #0x0
		00000000000022cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x166e
    22d0: b9001282     	str	w2, [x20, #0x10]
    22d4: 94000000     	bl	0x22d4 <set_display_rotation+0xcc>
		00000000000022d4:  R_AARCH64_CALL26	_printk
    22d8: f9474a88     	ldr	x8, [x20, #0xe90]
    22dc: b4fffd88     	cbz	x8, 0x228c <set_display_rotation+0x84>
    22e0: b85f43a1     	ldur	w1, [x29, #-0xc]
    22e4: aa1403e0     	mov	x0, x20
    22e8: b85fc110     	ldur	w16, [x8, #-0x4]
    22ec: 72969331     	movk	w17, #0xb499
    22f0: 72ad5f11     	movk	w17, #0x6af8, lsl #16
    22f4: 6b11021f     	cmp	w16, w17
    22f8: 54000040     	b.eq	0x2300 <set_display_rotation+0xf8>
    22fc: d4304500     	brk	#0x8228
    2300: d63f0100     	blr	x8
    2304: 17ffffe2     	b	0x228c <set_display_rotation+0x84>
    2308: 94000000     	bl	0x2308 <set_display_rotation+0x100>
		0000000000002308:  R_AARCH64_CALL26	__stack_chk_fail
