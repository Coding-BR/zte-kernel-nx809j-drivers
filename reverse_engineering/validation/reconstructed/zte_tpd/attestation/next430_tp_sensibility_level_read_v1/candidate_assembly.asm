
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001ecc8 <tp_sensibility_level_read>:
   1ecc8: d503233f     	paciasp
   1eccc: d10143ff     	sub	sp, sp, #0x50
   1ecd0: a9027bfd     	stp	x29, x30, [sp, #0x20]
   1ecd4: a90357f6     	stp	x22, x21, [sp, #0x30]
   1ecd8: a9044ff4     	stp	x20, x19, [sp, #0x40]
   1ecdc: 910083fd     	add	x29, sp, #0x20
   1ece0: d5384108     	mrs	x8, SP_EL0
   1ece4: aa1f03e0     	mov	x0, xzr
   1ece8: f9438908     	ldr	x8, [x8, #0x710]
   1ecec: f81f83a8     	stur	x8, [x29, #-0x8]
   1ecf0: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   1ecf4: d5384108     	mrs	x8, SP_EL0
   1ecf8: f9400068     	ldr	x8, [x3]
   1ecfc: b40001a8     	cbz	x8, 0x1ed30 <tp_sensibility_level_read+0x68>
   1ed00: d5384108     	mrs	x8, SP_EL0
   1ed04: f9438908     	ldr	x8, [x8, #0x710]
   1ed08: d5384109     	mrs	x9, SP_EL0
   1ed0c: f85f83a9     	ldur	x9, [x29, #-0x8]
   1ed10: eb09011f     	cmp	x8, x9
   1ed14: 54000521     	b.ne	0x1edb8 <tp_sensibility_level_read+0xf0>
   1ed18: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   1ed1c: a94357f6     	ldp	x22, x21, [sp, #0x30]
   1ed20: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   1ed24: 910143ff     	add	sp, sp, #0x50
   1ed28: d50323bf     	autiasp
   1ed2c: d65f03c0     	ret
   1ed30: 90000008     	adrp	x8, 0x1e000 <tp_ghost_check+0x394>
		000000000001ed30:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1ed34: aa0103f5     	mov	x21, x1
   1ed38: aa0203f4     	mov	x20, x2
   1ed3c: f9400116     	ldr	x22, [x8]
		000000000001ed3c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1ed40: aa0303f3     	mov	x19, x3
   1ed44: f946d6c8     	ldr	x8, [x22, #0xda8]
   1ed48: b4000128     	cbz	x8, 0x1ed6c <tp_sensibility_level_read+0xa4>
   1ed4c: aa1603e0     	mov	x0, x22
   1ed50: b85fc110     	ldur	w16, [x8, #-0x4]
   1ed54: 728631d1     	movk	w17, #0x318e
   1ed58: 72b73211     	movk	w17, #0xb990, lsl #16
   1ed5c: 6b11021f     	cmp	w16, w17
   1ed60: 54000040     	b.eq	0x1ed68 <tp_sensibility_level_read+0xa0>
   1ed64: d4304500     	brk	#0x8228
   1ed68: d63f0100     	blr	x8
   1ed6c: 394102c2     	ldrb	w2, [x22, #0x40]
   1ed70: 90000000     	adrp	x0, 0x1e000 <tp_ghost_check+0x394>
		000000000001ed70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70b7
   1ed74: 91000000     	add	x0, x0, #0x0
		000000000001ed74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70b7
   1ed78: 90000001     	adrp	x1, 0x1e000 <tp_ghost_check+0x394>
		000000000001ed78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32b
   1ed7c: 91000021     	add	x1, x1, #0x0
		000000000001ed7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32b
   1ed80: 94000000     	bl	0x1ed80 <tp_sensibility_level_read+0xb8>
		000000000001ed80:  R_AARCH64_CALL26	_printk
   1ed84: 394102c3     	ldrb	w3, [x22, #0x40]
   1ed88: 90000002     	adrp	x2, 0x1e000 <tp_ghost_check+0x394>
		000000000001ed88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x488e
   1ed8c: 91000042     	add	x2, x2, #0x0
		000000000001ed8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x488e
   1ed90: 910023e0     	add	x0, sp, #0x8
   1ed94: 52800141     	mov	w1, #0xa                // =10
   1ed98: 94000000     	bl	0x1ed98 <tp_sensibility_level_read+0xd0>
		000000000001ed98:  R_AARCH64_CALL26	snprintf
   1ed9c: 93407c04     	sxtw	x4, w0
   1eda0: 910023e3     	add	x3, sp, #0x8
   1eda4: aa1403e1     	mov	x1, x20
   1eda8: aa1503e0     	mov	x0, x21
   1edac: aa1303e2     	mov	x2, x19
   1edb0: 94000000     	bl	0x1edb0 <tp_sensibility_level_read+0xe8>
		000000000001edb0:  R_AARCH64_CALL26	simple_read_from_buffer
   1edb4: 17ffffd3     	b	0x1ed00 <tp_sensibility_level_read+0x38>
   1edb8: 94000000     	bl	0x1edb8 <tp_sensibility_level_read+0xf0>
		000000000001edb8:  R_AARCH64_CALL26	__stack_chk_fail
