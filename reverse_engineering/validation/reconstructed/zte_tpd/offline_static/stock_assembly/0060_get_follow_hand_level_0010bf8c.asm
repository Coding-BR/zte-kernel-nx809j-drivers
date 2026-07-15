
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005704 <get_follow_hand_level>:
    5704: d503233f     	paciasp
    5708: d10143ff     	sub	sp, sp, #0x50
    570c: a9027bfd     	stp	x29, x30, [sp, #0x20]
    5710: a90357f6     	stp	x22, x21, [sp, #0x30]
    5714: a9044ff4     	stp	x20, x19, [sp, #0x40]
    5718: 910083fd     	add	x29, sp, #0x20
    571c: d5384108     	mrs	x8, SP_EL0
    5720: aa1f03e0     	mov	x0, xzr
    5724: f9438908     	ldr	x8, [x8, #0x710]
    5728: f81f83a8     	stur	x8, [x29, #-0x8]
    572c: f9400068     	ldr	x8, [x3]
    5730: 790023ff     	strh	wzr, [sp, #0x10]
    5734: f90007ff     	str	xzr, [sp, #0x8]
    5738: b4000188     	cbz	x8, 0x5768 <get_follow_hand_level+0x64>
    573c: d5384108     	mrs	x8, SP_EL0
    5740: f9438908     	ldr	x8, [x8, #0x710]
    5744: f85f83a9     	ldur	x9, [x29, #-0x8]
    5748: eb09011f     	cmp	x8, x9
    574c: 54000521     	b.ne	0x57f0 <get_follow_hand_level+0xec>
    5750: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    5754: a94357f6     	ldp	x22, x21, [sp, #0x30]
    5758: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    575c: 910143ff     	add	sp, sp, #0x50
    5760: d50323bf     	autiasp
    5764: d65f03c0     	ret
    5768: 90000008     	adrp	x8, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005768:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    576c: aa0103f5     	mov	x21, x1
    5770: aa0203f4     	mov	x20, x2
    5774: f9400116     	ldr	x22, [x8]
		0000000000005774:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    5778: aa0303f3     	mov	x19, x3
    577c: f94796c8     	ldr	x8, [x22, #0xf28]
    5780: b4000128     	cbz	x8, 0x57a4 <get_follow_hand_level+0xa0>
    5784: aa1603e0     	mov	x0, x22
    5788: b85fc110     	ldur	w16, [x8, #-0x4]
    578c: 7281af31     	movk	w17, #0xd79
    5790: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    5794: 6b11021f     	cmp	w16, w17
    5798: 54000040     	b.eq	0x57a0 <get_follow_hand_level+0x9c>
    579c: d4304500     	brk	#0x8228
    57a0: d63f0100     	blr	x8
    57a4: b9446ac2     	ldr	w2, [x22, #0x468]
    57a8: 90000000     	adrp	x0, 0x5000 <tp_edge_report_limit_write+0x1f8>
		00000000000057a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8efe
    57ac: 91000000     	add	x0, x0, #0x0
		00000000000057ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8efe
    57b0: 90000001     	adrp	x1, 0x5000 <tp_edge_report_limit_write+0x1f8>
		00000000000057b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e1f
    57b4: 91000021     	add	x1, x1, #0x0
		00000000000057b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e1f
    57b8: 94000000     	bl	0x57b8 <get_follow_hand_level+0xb4>
		00000000000057b8:  R_AARCH64_CALL26	_printk
    57bc: b9446ac3     	ldr	w3, [x22, #0x468]
    57c0: 90000002     	adrp	x2, 0x5000 <tp_edge_report_limit_write+0x1f8>
		00000000000057c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fca
    57c4: 91000042     	add	x2, x2, #0x0
		00000000000057c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fca
    57c8: 910023e0     	add	x0, sp, #0x8
    57cc: 52800141     	mov	w1, #0xa                // =10
    57d0: 94000000     	bl	0x57d0 <get_follow_hand_level+0xcc>
		00000000000057d0:  R_AARCH64_CALL26	snprintf
    57d4: 93407c04     	sxtw	x4, w0
    57d8: 910023e3     	add	x3, sp, #0x8
    57dc: aa1403e1     	mov	x1, x20
    57e0: aa1503e0     	mov	x0, x21
    57e4: aa1303e2     	mov	x2, x19
    57e8: 94000000     	bl	0x57e8 <get_follow_hand_level+0xe4>
		00000000000057e8:  R_AARCH64_CALL26	simple_read_from_buffer
    57ec: 17ffffd4     	b	0x573c <get_follow_hand_level+0x38>
    57f0: 94000000     	bl	0x57f0 <get_follow_hand_level+0xec>
		00000000000057f0:  R_AARCH64_CALL26	__stack_chk_fail
