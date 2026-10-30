
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016904 <tp_fold_state_read>:
   16904: d503233f     	paciasp
   16908: d10143ff     	sub	sp, sp, #0x50
   1690c: a9027bfd     	stp	x29, x30, [sp, #0x20]
   16910: a90357f6     	stp	x22, x21, [sp, #0x30]
   16914: a9044ff4     	stp	x20, x19, [sp, #0x40]
   16918: 910083fd     	add	x29, sp, #0x20
   1691c: d5384108     	mrs	x8, SP_EL0
   16920: aa1f03e0     	mov	x0, xzr
   16924: f9438908     	ldr	x8, [x8, #0x710]
   16928: f81f83a8     	stur	x8, [x29, #-0x8]
   1692c: f9400068     	ldr	x8, [x3]
   16930: 790023ff     	strh	wzr, [sp, #0x10]
   16934: f90007ff     	str	xzr, [sp, #0x8]
   16938: b4000188     	cbz	x8, 0x16968 <tp_fold_state_read+0x64>
   1693c: d5384108     	mrs	x8, SP_EL0
   16940: f9438908     	ldr	x8, [x8, #0x710]
   16944: f85f83a9     	ldur	x9, [x29, #-0x8]
   16948: eb09011f     	cmp	x8, x9
   1694c: 54000521     	b.ne	0x169f0 <tp_fold_state_read+0xec>
   16950: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   16954: a94357f6     	ldp	x22, x21, [sp, #0x30]
   16958: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   1695c: 910143ff     	add	sp, sp, #0x50
   16960: d50323bf     	autiasp
   16964: d65f03c0     	ret
   16968: 90000008     	adrp	x8, 0x16000 <tp_sensibility_level_read+0xd8>
		0000000000016968:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1696c: aa0103f5     	mov	x21, x1
   16970: aa0203f4     	mov	x20, x2
   16974: f9400116     	ldr	x22, [x8]
		0000000000016974:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   16978: aa0303f3     	mov	x19, x3
   1697c: f947dec8     	ldr	x8, [x22, #0xfb8]
   16980: b4000128     	cbz	x8, 0x169a4 <tp_fold_state_read+0xa0>
   16984: aa1603e0     	mov	x0, x22
   16988: b85fc110     	ldur	w16, [x8, #-0x4]
   1698c: 7281af31     	movk	w17, #0xd79
   16990: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   16994: 6b11021f     	cmp	w16, w17
   16998: 54000040     	b.eq	0x169a0 <tp_fold_state_read+0x9c>
   1699c: d4304500     	brk	#0x8228
   169a0: d63f0100     	blr	x8
   169a4: b9447ec2     	ldr	w2, [x22, #0x47c]
   169a8: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0xd8>
		00000000000169a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b36
   169ac: 91000000     	add	x0, x0, #0x0
		00000000000169ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b36
   169b0: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0xd8>
		00000000000169b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b4a
   169b4: 91000021     	add	x1, x1, #0x0
		00000000000169b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b4a
   169b8: 94000000     	bl	0x169b8 <tp_fold_state_read+0xb4>
		00000000000169b8:  R_AARCH64_CALL26	_printk
   169bc: b9447ec3     	ldr	w3, [x22, #0x47c]
   169c0: 90000002     	adrp	x2, 0x16000 <tp_sensibility_level_read+0xd8>
		00000000000169c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81d4
   169c4: 91000042     	add	x2, x2, #0x0
		00000000000169c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81d4
   169c8: 910023e0     	add	x0, sp, #0x8
   169cc: 52800141     	mov	w1, #0xa                // =10
   169d0: 94000000     	bl	0x169d0 <tp_fold_state_read+0xcc>
		00000000000169d0:  R_AARCH64_CALL26	snprintf
   169d4: 93407c04     	sxtw	x4, w0
   169d8: 910023e3     	add	x3, sp, #0x8
   169dc: aa1403e1     	mov	x1, x20
   169e0: aa1503e0     	mov	x0, x21
   169e4: aa1303e2     	mov	x2, x19
   169e8: 94000000     	bl	0x169e8 <tp_fold_state_read+0xe4>
		00000000000169e8:  R_AARCH64_CALL26	simple_read_from_buffer
   169ec: 17ffffd4     	b	0x1693c <tp_fold_state_read+0x38>
   169f0: 94000000     	bl	0x169f0 <tp_fold_state_read+0xec>
		00000000000169f0:  R_AARCH64_CALL26	__stack_chk_fail
