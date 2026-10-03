
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000052b8 <set_one_key>:
    52b8: d503233f     	paciasp
    52bc: d100c3ff     	sub	sp, sp, #0x30
    52c0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    52c4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    52c8: 910043fd     	add	x29, sp, #0x10
    52cc: d5384108     	mrs	x8, SP_EL0
    52d0: aa0203f3     	mov	x19, x2
    52d4: aa0103e0     	mov	x0, x1
    52d8: f9438908     	ldr	x8, [x8, #0x710]
    52dc: 910013e3     	add	x3, sp, #0x4
    52e0: aa0203e1     	mov	x1, x2
    52e4: 52800142     	mov	w2, #0xa                // =10
    52e8: f90007e8     	str	x8, [sp, #0x8]
    52ec: 90000008     	adrp	x8, 0x5000 <tp_edge_report_limit_write+0x1f8>
		00000000000052ec:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    52f0: f9400114     	ldr	x20, [x8]
		00000000000052f0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    52f4: b90007ff     	str	wzr, [sp, #0x4]
    52f8: 94000000     	bl	0x52f8 <set_one_key+0x40>
		00000000000052f8:  R_AARCH64_CALL26	kstrtouint_from_user
    52fc: 340001a0     	cbz	w0, 0x5330 <set_one_key+0x78>
    5300: 928002b3     	mov	x19, #-0x16             // =-22
    5304: d5384108     	mrs	x8, SP_EL0
    5308: f9438908     	ldr	x8, [x8, #0x710]
    530c: f94007e9     	ldr	x9, [sp, #0x8]
    5310: eb09011f     	cmp	x8, x9
    5314: 54000381     	b.ne	0x5384 <set_one_key+0xcc>
    5318: aa1303e0     	mov	x0, x19
    531c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    5320: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    5324: 9100c3ff     	add	sp, sp, #0x30
    5328: d50323bf     	autiasp
    532c: d65f03c0     	ret
    5330: b94007e8     	ldr	w8, [sp, #0x4]
    5334: 90000000     	adrp	x0, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005334:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x610f
    5338: 91000000     	add	x0, x0, #0x0
		0000000000005338:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x610f
    533c: 90000001     	adrp	x1, 0x5000 <tp_edge_report_limit_write+0x1f8>
		000000000000533c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x180a
    5340: 91000021     	add	x1, x1, #0x0
		0000000000005340:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x180a
    5344: 7100011f     	cmp	w8, #0x0
    5348: 1a9f07e2     	cset	w2, ne
    534c: b90007e2     	str	w2, [sp, #0x4]
    5350: 94000000     	bl	0x5350 <set_one_key+0x98>
		0000000000005350:  R_AARCH64_CALL26	_printk
    5354: f9477e88     	ldr	x8, [x20, #0xef8]
    5358: b4fffd68     	cbz	x8, 0x5304 <set_one_key+0x4c>
    535c: b94007e1     	ldr	w1, [sp, #0x4]
    5360: aa1403e0     	mov	x0, x20
    5364: b85fc110     	ldur	w16, [x8, #-0x4]
    5368: 72969331     	movk	w17, #0xb499
    536c: 72ad5f11     	movk	w17, #0x6af8, lsl #16
    5370: 6b11021f     	cmp	w16, w17
    5374: 54000040     	b.eq	0x537c <set_one_key+0xc4>
    5378: d4304500     	brk	#0x8228
    537c: d63f0100     	blr	x8
    5380: 17ffffe1     	b	0x5304 <set_one_key+0x4c>
    5384: 94000000     	bl	0x5384 <set_one_key+0xcc>
		0000000000005384:  R_AARCH64_CALL26	__stack_chk_fail
