
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000059b4 <set_stability_level>:
    59b4: d503233f     	paciasp
    59b8: d100c3ff     	sub	sp, sp, #0x30
    59bc: a9017bfd     	stp	x29, x30, [sp, #0x10]
    59c0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    59c4: 910043fd     	add	x29, sp, #0x10
    59c8: d5384108     	mrs	x8, SP_EL0
    59cc: aa0203f3     	mov	x19, x2
    59d0: aa0103e0     	mov	x0, x1
    59d4: f9438908     	ldr	x8, [x8, #0x710]
    59d8: 910013e3     	add	x3, sp, #0x4
    59dc: aa0203e1     	mov	x1, x2
    59e0: 52800142     	mov	w2, #0xa                // =10
    59e4: f90007e8     	str	x8, [sp, #0x8]
    59e8: 90000008     	adrp	x8, 0x5000 <tp_edge_report_limit_write+0x1f8>
		00000000000059e8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    59ec: f9400114     	ldr	x20, [x8]
		00000000000059ec:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    59f0: b90007ff     	str	wzr, [sp, #0x4]
    59f4: 94000000     	bl	0x59f4 <set_stability_level+0x40>
		00000000000059f4:  R_AARCH64_CALL26	kstrtouint_from_user
    59f8: 340001a0     	cbz	w0, 0x5a2c <set_stability_level+0x78>
    59fc: 928002b3     	mov	x19, #-0x16             // =-22
    5a00: d5384108     	mrs	x8, SP_EL0
    5a04: f9438908     	ldr	x8, [x8, #0x710]
    5a08: f94007e9     	ldr	x9, [sp, #0x8]
    5a0c: eb09011f     	cmp	x8, x9
    5a10: 54000321     	b.ne	0x5a74 <set_stability_level+0xc0>
    5a14: aa1303e0     	mov	x0, x19
    5a18: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    5a1c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    5a20: 9100c3ff     	add	sp, sp, #0x30
    5a24: d50323bf     	autiasp
    5a28: d65f03c0     	ret
    5a2c: b94007e2     	ldr	w2, [sp, #0x4]
    5a30: 90000000     	adrp	x0, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005a30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x610f
    5a34: 91000000     	add	x0, x0, #0x0
		0000000000005a34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x610f
    5a38: 90000001     	adrp	x1, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005a38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x682
    5a3c: 91000021     	add	x1, x1, #0x0
		0000000000005a3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x682
    5a40: 94000000     	bl	0x5a40 <set_stability_level+0x8c>
		0000000000005a40:  R_AARCH64_CALL26	_printk
    5a44: f9479a88     	ldr	x8, [x20, #0xf30]
    5a48: b4fffdc8     	cbz	x8, 0x5a00 <set_stability_level+0x4c>
    5a4c: b94007e1     	ldr	w1, [sp, #0x4]
    5a50: aa1403e0     	mov	x0, x20
    5a54: b85fc110     	ldur	w16, [x8, #-0x4]
    5a58: 72969331     	movk	w17, #0xb499
    5a5c: 72ad5f11     	movk	w17, #0x6af8, lsl #16
    5a60: 6b11021f     	cmp	w16, w17
    5a64: 54000040     	b.eq	0x5a6c <set_stability_level+0xb8>
    5a68: d4304500     	brk	#0x8228
    5a6c: d63f0100     	blr	x8
    5a70: 17ffffe4     	b	0x5a00 <set_stability_level+0x4c>
    5a74: 94000000     	bl	0x5a74 <set_stability_level+0xc0>
		0000000000005a74:  R_AARCH64_CALL26	__stack_chk_fail
