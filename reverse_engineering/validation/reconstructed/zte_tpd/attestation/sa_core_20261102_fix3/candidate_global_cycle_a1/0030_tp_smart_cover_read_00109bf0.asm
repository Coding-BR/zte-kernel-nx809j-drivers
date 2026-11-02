
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024e38 <tp_smart_cover_read>:
   24e38: d503233f     	paciasp
   24e3c: d10143ff     	sub	sp, sp, #0x50
   24e40: a9027bfd     	stp	x29, x30, [sp, #0x20]
   24e44: a90357f6     	stp	x22, x21, [sp, #0x30]
   24e48: a9044ff4     	stp	x20, x19, [sp, #0x40]
   24e4c: 910083fd     	add	x29, sp, #0x20
   24e50: d5384108     	mrs	x8, SP_EL0
   24e54: aa1f03e0     	mov	x0, xzr
   24e58: f9438908     	ldr	x8, [x8, #0x710]
   24e5c: f81f83a8     	stur	x8, [x29, #-0x8]
   24e60: f9400068     	ldr	x8, [x3]
   24e64: 790023ff     	strh	wzr, [sp, #0x10]
   24e68: f90007ff     	str	xzr, [sp, #0x8]
   24e6c: b4000188     	cbz	x8, 0x24e9c <tp_smart_cover_read+0x64>
   24e70: d5384108     	mrs	x8, SP_EL0
   24e74: f9438908     	ldr	x8, [x8, #0x710]
   24e78: f85f83a9     	ldur	x9, [x29, #-0x8]
   24e7c: eb09011f     	cmp	x8, x9
   24e80: 54000521     	b.ne	0x24f24 <tp_smart_cover_read+0xec>
   24e84: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   24e88: a94357f6     	ldp	x22, x21, [sp, #0x30]
   24e8c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   24e90: 910143ff     	add	sp, sp, #0x50
   24e94: d50323bf     	autiasp
   24e98: d65f03c0     	ret
   24e9c: 90000008     	adrp	x8, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024e9c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   24ea0: aa0103f5     	mov	x21, x1
   24ea4: aa0203f4     	mov	x20, x2
   24ea8: f9400116     	ldr	x22, [x8]
		0000000000024ea8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   24eac: aa0303f3     	mov	x19, x3
   24eb0: f9471ec8     	ldr	x8, [x22, #0xe38]
   24eb4: b4000128     	cbz	x8, 0x24ed8 <tp_smart_cover_read+0xa0>
   24eb8: aa1603e0     	mov	x0, x22
   24ebc: b85fc110     	ldur	w16, [x8, #-0x4]
   24ec0: 7281af31     	movk	w17, #0xd79
   24ec4: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   24ec8: 6b11021f     	cmp	w16, w17
   24ecc: 54000040     	b.eq	0x24ed4 <tp_smart_cover_read+0x9c>
   24ed0: d4304500     	brk	#0x8228
   24ed4: d63f0100     	blr	x8
   24ed8: b94006c2     	ldr	w2, [x22, #0x4]
   24edc: 90000000     	adrp	x0, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024edc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b33c
   24ee0: 91000000     	add	x0, x0, #0x0
		0000000000024ee0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b33c
   24ee4: 90000001     	adrp	x1, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024ee4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d3a
   24ee8: 91000021     	add	x1, x1, #0x0
		0000000000024ee8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d3a
   24eec: 94000000     	bl	0x24eec <tp_smart_cover_read+0xb4>
		0000000000024eec:  R_AARCH64_CALL26	_printk
   24ef0: b94006c3     	ldr	w3, [x22, #0x4]
   24ef4: 90000002     	adrp	x2, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024ef4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac39
   24ef8: 91000042     	add	x2, x2, #0x0
		0000000000024ef8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac39
   24efc: 910023e0     	add	x0, sp, #0x8
   24f00: 52800141     	mov	w1, #0xa                // =10
   24f04: 94000000     	bl	0x24f04 <tp_smart_cover_read+0xcc>
		0000000000024f04:  R_AARCH64_CALL26	snprintf
   24f08: 93407c04     	sxtw	x4, w0
   24f0c: 910023e3     	add	x3, sp, #0x8
   24f10: aa1403e1     	mov	x1, x20
   24f14: aa1503e0     	mov	x0, x21
   24f18: aa1303e2     	mov	x2, x19
   24f1c: 94000000     	bl	0x24f1c <tp_smart_cover_read+0xe4>
		0000000000024f1c:  R_AARCH64_CALL26	simple_read_from_buffer
   24f20: 17ffffd4     	b	0x24e70 <tp_smart_cover_read+0x38>
   24f24: 94000000     	bl	0x24f24 <tp_smart_cover_read+0xec>
		0000000000024f24:  R_AARCH64_CALL26	__stack_chk_fail
