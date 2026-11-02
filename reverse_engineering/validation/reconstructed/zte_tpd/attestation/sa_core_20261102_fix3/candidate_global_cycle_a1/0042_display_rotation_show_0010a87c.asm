
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000257c0 <display_rotation_show>:
   257c0: d503233f     	paciasp
   257c4: d10183ff     	sub	sp, sp, #0x60
   257c8: a9037bfd     	stp	x29, x30, [sp, #0x30]
   257cc: a90457f6     	stp	x22, x21, [sp, #0x40]
   257d0: a9054ff4     	stp	x20, x19, [sp, #0x50]
   257d4: 9100c3fd     	add	x29, sp, #0x30
   257d8: d5384108     	mrs	x8, SP_EL0
   257dc: aa1f03e0     	mov	x0, xzr
   257e0: f9438908     	ldr	x8, [x8, #0x710]
   257e4: f81f83a8     	stur	x8, [x29, #-0x8]
   257e8: f9400068     	ldr	x8, [x3]
   257ec: f801e3ff     	stur	xzr, [sp, #0x1e]
   257f0: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   257f4: f90007ff     	str	xzr, [sp, #0x8]
   257f8: b4000188     	cbz	x8, 0x25828 <display_rotation_show+0x68>
   257fc: d5384108     	mrs	x8, SP_EL0
   25800: f9438908     	ldr	x8, [x8, #0x710]
   25804: f85f83a9     	ldur	x9, [x29, #-0x8]
   25808: eb09011f     	cmp	x8, x9
   2580c: 54000421     	b.ne	0x25890 <display_rotation_show+0xd0>
   25810: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   25814: a94457f6     	ldp	x22, x21, [sp, #0x40]
   25818: a9437bfd     	ldp	x29, x30, [sp, #0x30]
   2581c: 910183ff     	add	sp, sp, #0x60
   25820: d50323bf     	autiasp
   25824: d65f03c0     	ret
   25828: 90000008     	adrp	x8, 0x25000 <tp_glove_read>
		0000000000025828:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   2582c: 90000009     	adrp	x9, 0x25000 <tp_glove_read>
		000000000002582c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31de
   25830: 91000129     	add	x9, x9, #0x0
		0000000000025830:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31de
   25834: f9400116     	ldr	x22, [x8]
		0000000000025834:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25838: 90000000     	adrp	x0, 0x25000 <tp_glove_read>
		0000000000025838:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9144
   2583c: 91000000     	add	x0, x0, #0x0
		000000000002583c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9144
   25840: aa0103f3     	mov	x19, x1
   25844: aa0903e1     	mov	x1, x9
   25848: aa0203f4     	mov	x20, x2
   2584c: b94012c8     	ldr	w8, [x22, #0x10]
   25850: aa0303f5     	mov	x21, x3
   25854: 2a0803e2     	mov	w2, w8
   25858: 94000000     	bl	0x25858 <display_rotation_show+0x98>
		0000000000025858:  R_AARCH64_CALL26	_printk
   2585c: b94012c3     	ldr	w3, [x22, #0x10]
   25860: 90000002     	adrp	x2, 0x25000 <tp_glove_read>
		0000000000025860:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1250
   25864: 91000042     	add	x2, x2, #0x0
		0000000000025864:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1250
   25868: 910023e0     	add	x0, sp, #0x8
   2586c: 528003c1     	mov	w1, #0x1e               // =30
   25870: 94000000     	bl	0x25870 <display_rotation_show+0xb0>
		0000000000025870:  R_AARCH64_CALL26	snprintf
   25874: 93407c04     	sxtw	x4, w0
   25878: 910023e3     	add	x3, sp, #0x8
   2587c: aa1403e1     	mov	x1, x20
   25880: aa1303e0     	mov	x0, x19
   25884: aa1503e2     	mov	x2, x21
   25888: 94000000     	bl	0x25888 <display_rotation_show+0xc8>
		0000000000025888:  R_AARCH64_CALL26	simple_read_from_buffer
   2588c: 17ffffdc     	b	0x257fc <display_rotation_show+0x3c>
   25890: 94000000     	bl	0x25890 <display_rotation_show+0xd0>
		0000000000025890:  R_AARCH64_CALL26	__stack_chk_fail
