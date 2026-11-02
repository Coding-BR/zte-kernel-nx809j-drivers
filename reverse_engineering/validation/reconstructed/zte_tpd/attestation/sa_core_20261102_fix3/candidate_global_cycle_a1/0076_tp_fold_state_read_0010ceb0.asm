
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016960 <tp_fold_state_read>:
   16960: d503233f     	paciasp
   16964: d10143ff     	sub	sp, sp, #0x50
   16968: a9027bfd     	stp	x29, x30, [sp, #0x20]
   1696c: a90357f6     	stp	x22, x21, [sp, #0x30]
   16970: a9044ff4     	stp	x20, x19, [sp, #0x40]
   16974: 910083fd     	add	x29, sp, #0x20
   16978: d5384108     	mrs	x8, SP_EL0
   1697c: aa1f03e0     	mov	x0, xzr
   16980: f9438908     	ldr	x8, [x8, #0x710]
   16984: f81f83a8     	stur	x8, [x29, #-0x8]
   16988: f9400068     	ldr	x8, [x3]
   1698c: 790023ff     	strh	wzr, [sp, #0x10]
   16990: f90007ff     	str	xzr, [sp, #0x8]
   16994: b4000188     	cbz	x8, 0x169c4 <tp_fold_state_read+0x64>
   16998: d5384108     	mrs	x8, SP_EL0
   1699c: f9438908     	ldr	x8, [x8, #0x710]
   169a0: f85f83a9     	ldur	x9, [x29, #-0x8]
   169a4: eb09011f     	cmp	x8, x9
   169a8: 54000521     	b.ne	0x16a4c <tp_fold_state_read+0xec>
   169ac: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   169b0: a94357f6     	ldp	x22, x21, [sp, #0x30]
   169b4: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   169b8: 910143ff     	add	sp, sp, #0x50
   169bc: d50323bf     	autiasp
   169c0: d65f03c0     	ret
   169c4: 90000008     	adrp	x8, 0x16000 <tp_sensibility_level_read+0x7c>
		00000000000169c4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   169c8: aa0103f5     	mov	x21, x1
   169cc: aa0203f4     	mov	x20, x2
   169d0: f9400116     	ldr	x22, [x8]
		00000000000169d0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   169d4: aa0303f3     	mov	x19, x3
   169d8: f947dec8     	ldr	x8, [x22, #0xfb8]
   169dc: b4000128     	cbz	x8, 0x16a00 <tp_fold_state_read+0xa0>
   169e0: aa1603e0     	mov	x0, x22
   169e4: b85fc110     	ldur	w16, [x8, #-0x4]
   169e8: 7281af31     	movk	w17, #0xd79
   169ec: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   169f0: 6b11021f     	cmp	w16, w17
   169f4: 54000040     	b.eq	0x169fc <tp_fold_state_read+0x9c>
   169f8: d4304500     	brk	#0x8228
   169fc: d63f0100     	blr	x8
   16a00: b9447ec2     	ldr	w2, [x22, #0x47c]
   16a04: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016a04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b36
   16a08: 91000000     	add	x0, x0, #0x0
		0000000000016a08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b36
   16a0c: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016a0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b4a
   16a10: 91000021     	add	x1, x1, #0x0
		0000000000016a10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b4a
   16a14: 94000000     	bl	0x16a14 <tp_fold_state_read+0xb4>
		0000000000016a14:  R_AARCH64_CALL26	_printk
   16a18: b9447ec3     	ldr	w3, [x22, #0x47c]
   16a1c: 90000002     	adrp	x2, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016a1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81d4
   16a20: 91000042     	add	x2, x2, #0x0
		0000000000016a20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81d4
   16a24: 910023e0     	add	x0, sp, #0x8
   16a28: 52800141     	mov	w1, #0xa                // =10
   16a2c: 94000000     	bl	0x16a2c <tp_fold_state_read+0xcc>
		0000000000016a2c:  R_AARCH64_CALL26	snprintf
   16a30: 93407c04     	sxtw	x4, w0
   16a34: 910023e3     	add	x3, sp, #0x8
   16a38: aa1403e1     	mov	x1, x20
   16a3c: aa1503e0     	mov	x0, x21
   16a40: aa1303e2     	mov	x2, x19
   16a44: 94000000     	bl	0x16a44 <tp_fold_state_read+0xe4>
		0000000000016a44:  R_AARCH64_CALL26	simple_read_from_buffer
   16a48: 17ffffd4     	b	0x16998 <tp_fold_state_read+0x38>
   16a4c: 94000000     	bl	0x16a4c <tp_fold_state_read+0xec>
		0000000000016a4c:  R_AARCH64_CALL26	__stack_chk_fail
