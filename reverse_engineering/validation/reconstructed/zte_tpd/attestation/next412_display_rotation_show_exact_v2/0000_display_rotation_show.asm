
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002a040 <display_rotation_show>:
   2a040: d503233f     	paciasp
   2a044: d10183ff     	sub	sp, sp, #0x60
   2a048: a9037bfd     	stp	x29, x30, [sp, #0x30]
   2a04c: a90457f6     	stp	x22, x21, [sp, #0x40]
   2a050: a9054ff4     	stp	x20, x19, [sp, #0x50]
   2a054: 9100c3fd     	add	x29, sp, #0x30
   2a058: d5384108     	mrs	x8, SP_EL0
   2a05c: aa1f03e0     	mov	x0, xzr
   2a060: f9438908     	ldr	x8, [x8, #0x710]
   2a064: f81f83a8     	stur	x8, [x29, #-0x8]
   2a068: f9400068     	ldr	x8, [x3]
   2a06c: f801e3ff     	stur	xzr, [sp, #0x1e]
   2a070: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   2a074: f90007ff     	str	xzr, [sp, #0x8]
   2a078: b4000188     	cbz	x8, 0x2a0a8 <display_rotation_show+0x68>
   2a07c: d5384108     	mrs	x8, SP_EL0
   2a080: f9438908     	ldr	x8, [x8, #0x710]
   2a084: f85f83a9     	ldur	x9, [x29, #-0x8]
   2a088: eb09011f     	cmp	x8, x9
   2a08c: 54000421     	b.ne	0x2a110 <display_rotation_show+0xd0>
   2a090: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   2a094: a94457f6     	ldp	x22, x21, [sp, #0x40]
   2a098: a9437bfd     	ldp	x29, x30, [sp, #0x30]
   2a09c: 910183ff     	add	sp, sp, #0x60
   2a0a0: d50323bf     	autiasp
   2a0a4: d65f03c0     	ret
   2a0a8: 90000008     	adrp	x8, 0x2a000 <set_rotation_limit_level+0x88>
		000000000002a0a8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   2a0ac: 90000009     	adrp	x9, 0x2a000 <set_rotation_limit_level+0x88>
		000000000002a0ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31de
   2a0b0: 91000129     	add	x9, x9, #0x0
		000000000002a0b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31de
   2a0b4: f9400116     	ldr	x22, [x8]
		000000000002a0b4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   2a0b8: 90000000     	adrp	x0, 0x2a000 <set_rotation_limit_level+0x88>
		000000000002a0b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9144
   2a0bc: 91000000     	add	x0, x0, #0x0
		000000000002a0bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9144
   2a0c0: aa0103f3     	mov	x19, x1
   2a0c4: aa0903e1     	mov	x1, x9
   2a0c8: aa0203f4     	mov	x20, x2
   2a0cc: b94012c8     	ldr	w8, [x22, #0x10]
   2a0d0: aa0303f5     	mov	x21, x3
   2a0d4: 2a0803e2     	mov	w2, w8
   2a0d8: 94000000     	bl	0x2a0d8 <display_rotation_show+0x98>
		000000000002a0d8:  R_AARCH64_CALL26	_printk
   2a0dc: b94012c3     	ldr	w3, [x22, #0x10]
   2a0e0: 90000002     	adrp	x2, 0x2a000 <set_rotation_limit_level+0x88>
		000000000002a0e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1250
   2a0e4: 91000042     	add	x2, x2, #0x0
		000000000002a0e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1250
   2a0e8: 910023e0     	add	x0, sp, #0x8
   2a0ec: 528003c1     	mov	w1, #0x1e               // =30
   2a0f0: 94000000     	bl	0x2a0f0 <display_rotation_show+0xb0>
		000000000002a0f0:  R_AARCH64_CALL26	snprintf
   2a0f4: 93407c04     	sxtw	x4, w0
   2a0f8: 910023e3     	add	x3, sp, #0x8
   2a0fc: aa1403e1     	mov	x1, x20
   2a100: aa1303e0     	mov	x0, x19
   2a104: aa1503e2     	mov	x2, x21
   2a108: 94000000     	bl	0x2a108 <display_rotation_show+0xc8>
		000000000002a108:  R_AARCH64_CALL26	simple_read_from_buffer
   2a10c: 17ffffdc     	b	0x2a07c <display_rotation_show+0x3c>
   2a110: 94000000     	bl	0x2a110 <display_rotation_show+0xd0>
		000000000002a110:  R_AARCH64_CALL26	__stack_chk_fail
