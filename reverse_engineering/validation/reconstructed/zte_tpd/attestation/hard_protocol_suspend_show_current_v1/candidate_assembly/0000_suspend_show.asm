
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001b528 <suspend_show>:
   1b528: d503233f     	paciasp
   1b52c: d10183ff     	sub	sp, sp, #0x60
   1b530: a9037bfd     	stp	x29, x30, [sp, #0x30]
   1b534: a90457f6     	stp	x22, x21, [sp, #0x40]
   1b538: a9054ff4     	stp	x20, x19, [sp, #0x50]
   1b53c: 9100c3fd     	add	x29, sp, #0x30
   1b540: d5384108     	mrs	x8, SP_EL0
   1b544: aa1f03e0     	mov	x0, xzr
   1b548: f9438908     	ldr	x8, [x8, #0x710]
   1b54c: f81f83a8     	stur	x8, [x29, #-0x8]
   1b550: f9400068     	ldr	x8, [x3]
   1b554: f801e3ff     	stur	xzr, [sp, #0x1e]
   1b558: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   1b55c: f90007ff     	str	xzr, [sp, #0x8]
   1b560: b4000188     	cbz	x8, 0x1b590 <suspend_show+0x68>
   1b564: d5384108     	mrs	x8, SP_EL0
   1b568: f9438908     	ldr	x8, [x8, #0x710]
   1b56c: f85f83a9     	ldur	x9, [x29, #-0x8]
   1b570: eb09011f     	cmp	x8, x9
   1b574: 54000521     	b.ne	0x1b618 <suspend_show+0xf0>
   1b578: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   1b57c: a94457f6     	ldp	x22, x21, [sp, #0x40]
   1b580: a9437bfd     	ldp	x29, x30, [sp, #0x30]
   1b584: 910183ff     	add	sp, sp, #0x60
   1b588: d50323bf     	autiasp
   1b58c: d65f03c0     	ret
   1b590: 90000008     	adrp	x8, 0x1b000 <string_change+0x404>
		000000000001b590:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1b594: aa0103f5     	mov	x21, x1
   1b598: aa0203f4     	mov	x20, x2
   1b59c: f9400116     	ldr	x22, [x8]
		000000000001b59c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1b5a0: aa0303f3     	mov	x19, x3
   1b5a4: f9472ec8     	ldr	x8, [x22, #0xe58]
   1b5a8: b4000128     	cbz	x8, 0x1b5cc <suspend_show+0xa4>
   1b5ac: aa1603e0     	mov	x0, x22
   1b5b0: b85fc110     	ldur	w16, [x8, #-0x4]
   1b5b4: 7281af31     	movk	w17, #0xd79
   1b5b8: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   1b5bc: 6b11021f     	cmp	w16, w17
   1b5c0: 54000040     	b.eq	0x1b5c8 <suspend_show+0xa0>
   1b5c4: d4304500     	brk	#0x8228
   1b5c8: d63f0100     	blr	x8
   1b5cc: 394056c2     	ldrb	w2, [x22, #0x15]
   1b5d0: 90000000     	adrp	x0, 0x1b000 <string_change+0x404>
		000000000001b5d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9144
   1b5d4: 91000000     	add	x0, x0, #0x0
		000000000001b5d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9144
   1b5d8: 90000001     	adrp	x1, 0x1b000 <string_change+0x404>
		000000000001b5d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b14
   1b5dc: 91000021     	add	x1, x1, #0x0
		000000000001b5dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b14
   1b5e0: 94000000     	bl	0x1b5e0 <suspend_show+0xb8>
		000000000001b5e0:  R_AARCH64_CALL26	_printk
   1b5e4: 394056c3     	ldrb	w3, [x22, #0x15]
   1b5e8: 90000002     	adrp	x2, 0x1b000 <string_change+0x404>
		000000000001b5e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31ca
   1b5ec: 91000042     	add	x2, x2, #0x0
		000000000001b5ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31ca
   1b5f0: 910023e0     	add	x0, sp, #0x8
   1b5f4: 528003c1     	mov	w1, #0x1e               // =30
   1b5f8: 94000000     	bl	0x1b5f8 <suspend_show+0xd0>
		000000000001b5f8:  R_AARCH64_CALL26	snprintf
   1b5fc: 93407c04     	sxtw	x4, w0
   1b600: 910023e3     	add	x3, sp, #0x8
   1b604: aa1403e1     	mov	x1, x20
   1b608: aa1503e0     	mov	x0, x21
   1b60c: aa1303e2     	mov	x2, x19
   1b610: 94000000     	bl	0x1b610 <suspend_show+0xe8>
		000000000001b610:  R_AARCH64_CALL26	simple_read_from_buffer
   1b614: 17ffffd4     	b	0x1b564 <suspend_show+0x3c>
   1b618: 94000000     	bl	0x1b618 <suspend_show+0xf0>
		000000000001b618:  R_AARCH64_CALL26	__stack_chk_fail
