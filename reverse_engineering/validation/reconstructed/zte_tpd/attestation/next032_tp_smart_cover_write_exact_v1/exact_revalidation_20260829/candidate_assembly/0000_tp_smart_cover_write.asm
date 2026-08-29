
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024ed0 <tp_smart_cover_write>:
   24ed0: d503233f     	paciasp
   24ed4: d100c3ff     	sub	sp, sp, #0x30
   24ed8: a9017bfd     	stp	x29, x30, [sp, #0x10]
   24edc: a9024ff4     	stp	x20, x19, [sp, #0x20]
   24ee0: 910043fd     	add	x29, sp, #0x10
   24ee4: d5384108     	mrs	x8, SP_EL0
   24ee8: aa0203f3     	mov	x19, x2
   24eec: aa0103e0     	mov	x0, x1
   24ef0: f9438908     	ldr	x8, [x8, #0x710]
   24ef4: 910013e3     	add	x3, sp, #0x4
   24ef8: aa0203e1     	mov	x1, x2
   24efc: 52800142     	mov	w2, #0xa                // =10
   24f00: f90007e8     	str	x8, [sp, #0x8]
   24f04: 90000008     	adrp	x8, 0x24000 <syna_tcm_testing_noise+0x4c>
		0000000000024f04:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   24f08: f9400114     	ldr	x20, [x8]
		0000000000024f08:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   24f0c: b90007ff     	str	wzr, [sp, #0x4]
   24f10: 94000000     	bl	0x24f10 <tp_smart_cover_write+0x40>
		0000000000024f10:  R_AARCH64_CALL26	kstrtouint_from_user
   24f14: 340001a0     	cbz	w0, 0x24f48 <tp_smart_cover_write+0x78>
   24f18: 928002b3     	mov	x19, #-0x16             // =-22
   24f1c: d5384108     	mrs	x8, SP_EL0
   24f20: f9438908     	ldr	x8, [x8, #0x710]
   24f24: f94007e9     	ldr	x9, [sp, #0x8]
   24f28: eb09011f     	cmp	x8, x9
   24f2c: 54000381     	b.ne	0x24f9c <tp_smart_cover_write+0xcc>
   24f30: aa1303e0     	mov	x0, x19
   24f34: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   24f38: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   24f3c: 9100c3ff     	add	sp, sp, #0x30
   24f40: d50323bf     	autiasp
   24f44: d65f03c0     	ret
   24f48: b94007e8     	ldr	w8, [sp, #0x4]
   24f4c: 90000000     	adrp	x0, 0x24000 <syna_tcm_testing_noise+0x4c>
		0000000000024f4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17b45
   24f50: 91000000     	add	x0, x0, #0x0
		0000000000024f50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17b45
   24f54: 90000001     	adrp	x1, 0x24000 <syna_tcm_testing_noise+0x4c>
		0000000000024f54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a954
   24f58: 91000021     	add	x1, x1, #0x0
		0000000000024f58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a954
   24f5c: 7100011f     	cmp	w8, #0x0
   24f60: 1a9f07e2     	cset	w2, ne
   24f64: b90007e2     	str	w2, [sp, #0x4]
   24f68: 94000000     	bl	0x24f68 <tp_smart_cover_write+0x98>
		0000000000024f68:  R_AARCH64_CALL26	_printk
   24f6c: f9472288     	ldr	x8, [x20, #0xe40]
   24f70: b4fffd68     	cbz	x8, 0x24f1c <tp_smart_cover_write+0x4c>
   24f74: b94007e1     	ldr	w1, [sp, #0x4]
   24f78: aa1403e0     	mov	x0, x20
   24f7c: b85fc110     	ldur	w16, [x8, #-0x4]
   24f80: 72969331     	movk	w17, #0xb499
   24f84: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   24f88: 6b11021f     	cmp	w16, w17
   24f8c: 54000040     	b.eq	0x24f94 <tp_smart_cover_write+0xc4>
   24f90: d4304500     	brk	#0x8228
   24f94: d63f0100     	blr	x8
   24f98: 17ffffe1     	b	0x24f1c <tp_smart_cover_write+0x4c>
   24f9c: 94000000     	bl	0x24f9c <tp_smart_cover_write+0xcc>
		0000000000024f9c:  R_AARCH64_CALL26	__stack_chk_fail
