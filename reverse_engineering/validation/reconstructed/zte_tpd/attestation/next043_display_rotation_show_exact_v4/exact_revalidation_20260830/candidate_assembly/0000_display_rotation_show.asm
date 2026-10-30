
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025764 <display_rotation_show>:
   25764: d503233f     	paciasp
   25768: d10183ff     	sub	sp, sp, #0x60
   2576c: a9037bfd     	stp	x29, x30, [sp, #0x30]
   25770: a90457f6     	stp	x22, x21, [sp, #0x40]
   25774: a9054ff4     	stp	x20, x19, [sp, #0x50]
   25778: 9100c3fd     	add	x29, sp, #0x30
   2577c: d5384108     	mrs	x8, SP_EL0
   25780: aa1f03e0     	mov	x0, xzr
   25784: f9438908     	ldr	x8, [x8, #0x710]
   25788: f81f83a8     	stur	x8, [x29, #-0x8]
   2578c: f9400068     	ldr	x8, [x3]
   25790: f801e3ff     	stur	xzr, [sp, #0x1e]
   25794: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   25798: f90007ff     	str	xzr, [sp, #0x8]
   2579c: b4000188     	cbz	x8, 0x257cc <display_rotation_show+0x68>
   257a0: d5384108     	mrs	x8, SP_EL0
   257a4: f9438908     	ldr	x8, [x8, #0x710]
   257a8: f85f83a9     	ldur	x9, [x29, #-0x8]
   257ac: eb09011f     	cmp	x8, x9
   257b0: 54000421     	b.ne	0x25834 <display_rotation_show+0xd0>
   257b4: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   257b8: a94457f6     	ldp	x22, x21, [sp, #0x40]
   257bc: a9437bfd     	ldp	x29, x30, [sp, #0x30]
   257c0: 910183ff     	add	sp, sp, #0x60
   257c4: d50323bf     	autiasp
   257c8: d65f03c0     	ret
   257cc: 90000008     	adrp	x8, 0x25000 <tp_glove_read+0x5c>
		00000000000257cc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   257d0: 90000009     	adrp	x9, 0x25000 <tp_glove_read+0x5c>
		00000000000257d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31de
   257d4: 91000129     	add	x9, x9, #0x0
		00000000000257d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31de
   257d8: f9400116     	ldr	x22, [x8]
		00000000000257d8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   257dc: 90000000     	adrp	x0, 0x25000 <tp_glove_read+0x5c>
		00000000000257dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9144
   257e0: 91000000     	add	x0, x0, #0x0
		00000000000257e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9144
   257e4: aa0103f3     	mov	x19, x1
   257e8: aa0903e1     	mov	x1, x9
   257ec: aa0203f4     	mov	x20, x2
   257f0: b94012c8     	ldr	w8, [x22, #0x10]
   257f4: aa0303f5     	mov	x21, x3
   257f8: 2a0803e2     	mov	w2, w8
   257fc: 94000000     	bl	0x257fc <display_rotation_show+0x98>
		00000000000257fc:  R_AARCH64_CALL26	_printk
   25800: b94012c3     	ldr	w3, [x22, #0x10]
   25804: 90000002     	adrp	x2, 0x25000 <tp_glove_read+0x5c>
		0000000000025804:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1250
   25808: 91000042     	add	x2, x2, #0x0
		0000000000025808:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1250
   2580c: 910023e0     	add	x0, sp, #0x8
   25810: 528003c1     	mov	w1, #0x1e               // =30
   25814: 94000000     	bl	0x25814 <display_rotation_show+0xb0>
		0000000000025814:  R_AARCH64_CALL26	snprintf
   25818: 93407c04     	sxtw	x4, w0
   2581c: 910023e3     	add	x3, sp, #0x8
   25820: aa1403e1     	mov	x1, x20
   25824: aa1303e0     	mov	x0, x19
   25828: aa1503e2     	mov	x2, x21
   2582c: 94000000     	bl	0x2582c <display_rotation_show+0xc8>
		000000000002582c:  R_AARCH64_CALL26	simple_read_from_buffer
   25830: 17ffffdc     	b	0x257a0 <display_rotation_show+0x3c>
   25834: 94000000     	bl	0x25834 <display_rotation_show+0xd0>
		0000000000025834:  R_AARCH64_CALL26	__stack_chk_fail
