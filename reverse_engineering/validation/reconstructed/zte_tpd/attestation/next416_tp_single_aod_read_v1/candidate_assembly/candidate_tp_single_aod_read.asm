
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001ee60 <tp_single_aod_read>:
   1ee60: d503233f     	paciasp
   1ee64: d10143ff     	sub	sp, sp, #0x50
   1ee68: a9027bfd     	stp	x29, x30, [sp, #0x20]
   1ee6c: a90357f6     	stp	x22, x21, [sp, #0x30]
   1ee70: a9044ff4     	stp	x20, x19, [sp, #0x40]
   1ee74: 910083fd     	add	x29, sp, #0x20
   1ee78: d5384108     	mrs	x8, SP_EL0
   1ee7c: aa1f03e0     	mov	x0, xzr
   1ee80: f9438908     	ldr	x8, [x8, #0x710]
   1ee84: f81f83a8     	stur	x8, [x29, #-0x8]
   1ee88: f9400068     	ldr	x8, [x3]
   1ee8c: f90007ff     	str	xzr, [sp, #0x8]
   1ee90: b4000188     	cbz	x8, 0x1eec0 <tp_single_aod_read+0x60>
   1ee94: d5384108     	mrs	x8, SP_EL0
   1ee98: f9438908     	ldr	x8, [x8, #0x710]
   1ee9c: f85f83a9     	ldur	x9, [x29, #-0x8]
   1eea0: eb09011f     	cmp	x8, x9
   1eea4: 54000541     	b.ne	0x1ef4c <tp_single_aod_read+0xec>
   1eea8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   1eeac: a94357f6     	ldp	x22, x21, [sp, #0x30]
   1eeb0: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   1eeb4: 910143ff     	add	sp, sp, #0x50
   1eeb8: d50323bf     	autiasp
   1eebc: d65f03c0     	ret
   1eec0: 90000008     	adrp	x8, 0x1e000 <tp_ghost_check+0x448>
		000000000001eec0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1eec4: f9000bff     	str	xzr, [sp, #0x10]
   1eec8: aa0103f5     	mov	x21, x1
   1eecc: f9400116     	ldr	x22, [x8]
		000000000001eecc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1eed0: aa0203f4     	mov	x20, x2
   1eed4: aa0303f3     	mov	x19, x3
   1eed8: f94766c8     	ldr	x8, [x22, #0xec8]
   1eedc: b4000128     	cbz	x8, 0x1ef00 <tp_single_aod_read+0xa0>
   1eee0: aa1603e0     	mov	x0, x22
   1eee4: b85fc110     	ldur	w16, [x8, #-0x4]
   1eee8: 7281af31     	movk	w17, #0xd79
   1eeec: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   1eef0: 6b11021f     	cmp	w16, w17
   1eef4: 54000040     	b.eq	0x1eefc <tp_single_aod_read+0x9c>
   1eef8: d4304500     	brk	#0x8228
   1eefc: d63f0100     	blr	x8
   1ef00: b94452c2     	ldr	w2, [x22, #0x450]
   1ef04: 90000000     	adrp	x0, 0x1e000 <tp_ghost_check+0x448>
		000000000001ef04:  R_AARCH64_ADR_PREL_PG_HI21	unk_34061
   1ef08: 91000000     	add	x0, x0, #0x0
		000000000001ef08:  R_AARCH64_ADD_ABS_LO12_NC	unk_34061
   1ef0c: 90000001     	adrp	x1, 0x1e000 <tp_ghost_check+0x448>
		000000000001ef0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ea8
   1ef10: 91000021     	add	x1, x1, #0x0
		000000000001ef10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ea8
   1ef14: 94000000     	bl	0x1ef14 <tp_single_aod_read+0xb4>
		000000000001ef14:  R_AARCH64_CALL26	_printk
   1ef18: b94452c3     	ldr	w3, [x22, #0x450]
   1ef1c: 90000002     	adrp	x2, 0x1e000 <tp_ghost_check+0x448>
		000000000001ef1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x499d
   1ef20: 91000042     	add	x2, x2, #0x0
		000000000001ef20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x499d
   1ef24: 910023e0     	add	x0, sp, #0x8
   1ef28: 52800141     	mov	w1, #0xa                // =10
   1ef2c: 94000000     	bl	0x1ef2c <tp_single_aod_read+0xcc>
		000000000001ef2c:  R_AARCH64_CALL26	snprintf
   1ef30: 93407c04     	sxtw	x4, w0
   1ef34: 910023e3     	add	x3, sp, #0x8
   1ef38: aa1403e1     	mov	x1, x20
   1ef3c: aa1503e0     	mov	x0, x21
   1ef40: aa1303e2     	mov	x2, x19
   1ef44: 94000000     	bl	0x1ef44 <tp_single_aod_read+0xe4>
		000000000001ef44:  R_AARCH64_CALL26	simple_read_from_buffer
   1ef48: 17ffffd3     	b	0x1ee94 <tp_single_aod_read+0x34>
   1ef4c: 94000000     	bl	0x1ef4c <tp_single_aod_read+0xec>
		000000000001ef4c:  R_AARCH64_CALL26	__stack_chk_fail
