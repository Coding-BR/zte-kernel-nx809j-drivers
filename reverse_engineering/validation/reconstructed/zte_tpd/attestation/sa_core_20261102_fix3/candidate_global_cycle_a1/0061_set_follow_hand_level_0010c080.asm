
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000015d00 <set_follow_hand_level>:
   15d00: d503233f     	paciasp
   15d04: d100c3ff     	sub	sp, sp, #0x30
   15d08: a9017bfd     	stp	x29, x30, [sp, #0x10]
   15d0c: a9024ff4     	stp	x20, x19, [sp, #0x20]
   15d10: 910043fd     	add	x29, sp, #0x10
   15d14: d5384108     	mrs	x8, SP_EL0
   15d18: aa0203f3     	mov	x19, x2
   15d1c: aa0103e0     	mov	x0, x1
   15d20: f9438908     	ldr	x8, [x8, #0x710]
   15d24: 910013e3     	add	x3, sp, #0x4
   15d28: aa0203e1     	mov	x1, x2
   15d2c: 52800142     	mov	w2, #0xa                // =10
   15d30: f90007e8     	str	x8, [sp, #0x8]
   15d34: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015d34:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   15d38: f9400114     	ldr	x20, [x8]
		0000000000015d38:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   15d3c: b90007ff     	str	wzr, [sp, #0x4]
   15d40: 94000000     	bl	0x15d40 <set_follow_hand_level+0x40>
		0000000000015d40:  R_AARCH64_CALL26	kstrtouint_from_user
   15d44: 340001a0     	cbz	w0, 0x15d78 <set_follow_hand_level+0x78>
   15d48: 928002b3     	mov	x19, #-0x16             // =-22
   15d4c: d5384108     	mrs	x8, SP_EL0
   15d50: f9438908     	ldr	x8, [x8, #0x710]
   15d54: f94007e9     	ldr	x9, [sp, #0x8]
   15d58: eb09011f     	cmp	x8, x9
   15d5c: 54000321     	b.ne	0x15dc0 <set_follow_hand_level+0xc0>
   15d60: aa1303e0     	mov	x0, x19
   15d64: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   15d68: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   15d6c: 9100c3ff     	add	sp, sp, #0x30
   15d70: d50323bf     	autiasp
   15d74: d65f03c0     	ret
   15d78: b94007e2     	ldr	w2, [sp, #0x4]
   15d7c: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015d7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d88
   15d80: 91000000     	add	x0, x0, #0x0
		0000000000015d80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d88
   15d84: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015d84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa69
   15d88: 91000021     	add	x1, x1, #0x0
		0000000000015d88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa69
   15d8c: 94000000     	bl	0x15d8c <set_follow_hand_level+0x8c>
		0000000000015d8c:  R_AARCH64_CALL26	_printk
   15d90: f9479288     	ldr	x8, [x20, #0xf20]
   15d94: b4fffdc8     	cbz	x8, 0x15d4c <set_follow_hand_level+0x4c>
   15d98: b94007e1     	ldr	w1, [sp, #0x4]
   15d9c: aa1403e0     	mov	x0, x20
   15da0: b85fc110     	ldur	w16, [x8, #-0x4]
   15da4: 72969331     	movk	w17, #0xb499
   15da8: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   15dac: 6b11021f     	cmp	w16, w17
   15db0: 54000040     	b.eq	0x15db8 <set_follow_hand_level+0xb8>
   15db4: d4304500     	brk	#0x8228
   15db8: d63f0100     	blr	x8
   15dbc: 17ffffe4     	b	0x15d4c <set_follow_hand_level+0x4c>
   15dc0: 94000000     	bl	0x15dc0 <set_follow_hand_level+0xc0>
		0000000000015dc0:  R_AARCH64_CALL26	__stack_chk_fail
