
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024ddc <tp_smart_cover_read>:
   24ddc: d503233f     	paciasp
   24de0: d10143ff     	sub	sp, sp, #0x50
   24de4: a9027bfd     	stp	x29, x30, [sp, #0x20]
   24de8: a90357f6     	stp	x22, x21, [sp, #0x30]
   24dec: a9044ff4     	stp	x20, x19, [sp, #0x40]
   24df0: 910083fd     	add	x29, sp, #0x20
   24df4: d5384108     	mrs	x8, SP_EL0
   24df8: aa1f03e0     	mov	x0, xzr
   24dfc: f9438908     	ldr	x8, [x8, #0x710]
   24e00: f81f83a8     	stur	x8, [x29, #-0x8]
   24e04: f9400068     	ldr	x8, [x3]
   24e08: 790023ff     	strh	wzr, [sp, #0x10]
   24e0c: f90007ff     	str	xzr, [sp, #0x8]
   24e10: b4000188     	cbz	x8, 0x24e40 <tp_smart_cover_read+0x64>
   24e14: d5384108     	mrs	x8, SP_EL0
   24e18: f9438908     	ldr	x8, [x8, #0x710]
   24e1c: f85f83a9     	ldur	x9, [x29, #-0x8]
   24e20: eb09011f     	cmp	x8, x9
   24e24: 54000521     	b.ne	0x24ec8 <tp_smart_cover_read+0xec>
   24e28: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   24e2c: a94357f6     	ldp	x22, x21, [sp, #0x30]
   24e30: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   24e34: 910143ff     	add	sp, sp, #0x50
   24e38: d50323bf     	autiasp
   24e3c: d65f03c0     	ret
   24e40: 90000008     	adrp	x8, 0x24000 <syna_tcm_testing_noise+0x4c>
		0000000000024e40:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   24e44: aa0103f5     	mov	x21, x1
   24e48: aa0203f4     	mov	x20, x2
   24e4c: f9400116     	ldr	x22, [x8]
		0000000000024e4c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   24e50: aa0303f3     	mov	x19, x3
   24e54: f9471ec8     	ldr	x8, [x22, #0xe38]
   24e58: b4000128     	cbz	x8, 0x24e7c <tp_smart_cover_read+0xa0>
   24e5c: aa1603e0     	mov	x0, x22
   24e60: b85fc110     	ldur	w16, [x8, #-0x4]
   24e64: 7281af31     	movk	w17, #0xd79
   24e68: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   24e6c: 6b11021f     	cmp	w16, w17
   24e70: 54000040     	b.eq	0x24e78 <tp_smart_cover_read+0x9c>
   24e74: d4304500     	brk	#0x8228
   24e78: d63f0100     	blr	x8
   24e7c: b94006c2     	ldr	w2, [x22, #0x4]
   24e80: 90000000     	adrp	x0, 0x24000 <syna_tcm_testing_noise+0x4c>
		0000000000024e80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b33c
   24e84: 91000000     	add	x0, x0, #0x0
		0000000000024e84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b33c
   24e88: 90000001     	adrp	x1, 0x24000 <syna_tcm_testing_noise+0x4c>
		0000000000024e88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d3a
   24e8c: 91000021     	add	x1, x1, #0x0
		0000000000024e8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d3a
   24e90: 94000000     	bl	0x24e90 <tp_smart_cover_read+0xb4>
		0000000000024e90:  R_AARCH64_CALL26	_printk
   24e94: b94006c3     	ldr	w3, [x22, #0x4]
   24e98: 90000002     	adrp	x2, 0x24000 <syna_tcm_testing_noise+0x4c>
		0000000000024e98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac39
   24e9c: 91000042     	add	x2, x2, #0x0
		0000000000024e9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac39
   24ea0: 910023e0     	add	x0, sp, #0x8
   24ea4: 52800141     	mov	w1, #0xa                // =10
   24ea8: 94000000     	bl	0x24ea8 <tp_smart_cover_read+0xcc>
		0000000000024ea8:  R_AARCH64_CALL26	snprintf
   24eac: 93407c04     	sxtw	x4, w0
   24eb0: 910023e3     	add	x3, sp, #0x8
   24eb4: aa1403e1     	mov	x1, x20
   24eb8: aa1503e0     	mov	x0, x21
   24ebc: aa1303e2     	mov	x2, x19
   24ec0: 94000000     	bl	0x24ec0 <tp_smart_cover_read+0xe4>
		0000000000024ec0:  R_AARCH64_CALL26	simple_read_from_buffer
   24ec4: 17ffffd4     	b	0x24e14 <tp_smart_cover_read+0x38>
   24ec8: 94000000     	bl	0x24ec8 <tp_smart_cover_read+0xec>
		0000000000024ec8:  R_AARCH64_CALL26	__stack_chk_fail
