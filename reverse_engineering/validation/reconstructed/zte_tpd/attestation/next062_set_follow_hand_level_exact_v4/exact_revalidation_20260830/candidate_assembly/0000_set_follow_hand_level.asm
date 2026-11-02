
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000015ca4 <set_follow_hand_level>:
   15ca4: d503233f     	paciasp
   15ca8: d100c3ff     	sub	sp, sp, #0x30
   15cac: a9017bfd     	stp	x29, x30, [sp, #0x10]
   15cb0: a9024ff4     	stp	x20, x19, [sp, #0x20]
   15cb4: 910043fd     	add	x29, sp, #0x10
   15cb8: d5384108     	mrs	x8, SP_EL0
   15cbc: aa0203f3     	mov	x19, x2
   15cc0: aa0103e0     	mov	x0, x1
   15cc4: f9438908     	ldr	x8, [x8, #0x710]
   15cc8: 910013e3     	add	x3, sp, #0x4
   15ccc: aa0203e1     	mov	x1, x2
   15cd0: 52800142     	mov	w2, #0xa                // =10
   15cd4: f90007e8     	str	x8, [sp, #0x8]
   15cd8: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015cd8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   15cdc: f9400114     	ldr	x20, [x8]
		0000000000015cdc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   15ce0: b90007ff     	str	wzr, [sp, #0x4]
   15ce4: 94000000     	bl	0x15ce4 <set_follow_hand_level+0x40>
		0000000000015ce4:  R_AARCH64_CALL26	kstrtouint_from_user
   15ce8: 340001a0     	cbz	w0, 0x15d1c <set_follow_hand_level+0x78>
   15cec: 928002b3     	mov	x19, #-0x16             // =-22
   15cf0: d5384108     	mrs	x8, SP_EL0
   15cf4: f9438908     	ldr	x8, [x8, #0x710]
   15cf8: f94007e9     	ldr	x9, [sp, #0x8]
   15cfc: eb09011f     	cmp	x8, x9
   15d00: 54000321     	b.ne	0x15d64 <set_follow_hand_level+0xc0>
   15d04: aa1303e0     	mov	x0, x19
   15d08: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   15d0c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   15d10: 9100c3ff     	add	sp, sp, #0x30
   15d14: d50323bf     	autiasp
   15d18: d65f03c0     	ret
   15d1c: b94007e2     	ldr	w2, [sp, #0x4]
   15d20: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015d20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d88
   15d24: 91000000     	add	x0, x0, #0x0
		0000000000015d24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d88
   15d28: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015d28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa69
   15d2c: 91000021     	add	x1, x1, #0x0
		0000000000015d2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa69
   15d30: 94000000     	bl	0x15d30 <set_follow_hand_level+0x8c>
		0000000000015d30:  R_AARCH64_CALL26	_printk
   15d34: f9479288     	ldr	x8, [x20, #0xf20]
   15d38: b4fffdc8     	cbz	x8, 0x15cf0 <set_follow_hand_level+0x4c>
   15d3c: b94007e1     	ldr	w1, [sp, #0x4]
   15d40: aa1403e0     	mov	x0, x20
   15d44: b85fc110     	ldur	w16, [x8, #-0x4]
   15d48: 72969331     	movk	w17, #0xb499
   15d4c: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   15d50: 6b11021f     	cmp	w16, w17
   15d54: 54000040     	b.eq	0x15d5c <set_follow_hand_level+0xb8>
   15d58: d4304500     	brk	#0x8228
   15d5c: d63f0100     	blr	x8
   15d60: 17ffffe4     	b	0x15cf0 <set_follow_hand_level+0x4c>
   15d64: 94000000     	bl	0x15d64 <set_follow_hand_level+0xc0>
		0000000000015d64:  R_AARCH64_CALL26	__stack_chk_fail
