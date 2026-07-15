
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000067f0 <get_fake_sleep>:
    67f0: d503233f     	paciasp
    67f4: d10143ff     	sub	sp, sp, #0x50
    67f8: a9027bfd     	stp	x29, x30, [sp, #0x20]
    67fc: a90357f6     	stp	x22, x21, [sp, #0x30]
    6800: a9044ff4     	stp	x20, x19, [sp, #0x40]
    6804: 910083fd     	add	x29, sp, #0x20
    6808: d5384108     	mrs	x8, SP_EL0
    680c: aa1f03e0     	mov	x0, xzr
    6810: f9438908     	ldr	x8, [x8, #0x710]
    6814: f81f83a8     	stur	x8, [x29, #-0x8]
    6818: f9400068     	ldr	x8, [x3]
    681c: 790023ff     	strh	wzr, [sp, #0x10]
    6820: f90007ff     	str	xzr, [sp, #0x8]
    6824: b4000188     	cbz	x8, 0x6854 <get_fake_sleep+0x64>
    6828: d5384108     	mrs	x8, SP_EL0
    682c: f9438908     	ldr	x8, [x8, #0x710]
    6830: f85f83a9     	ldur	x9, [x29, #-0x8]
    6834: eb09011f     	cmp	x8, x9
    6838: 54000521     	b.ne	0x68dc <get_fake_sleep+0xec>
    683c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    6840: a94357f6     	ldp	x22, x21, [sp, #0x30]
    6844: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    6848: 910143ff     	add	sp, sp, #0x50
    684c: d50323bf     	autiasp
    6850: d65f03c0     	ret
    6854: 90000008     	adrp	x8, 0x6000 <tp_pen_only_write+0x70>
		0000000000006854:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    6858: aa0103f5     	mov	x21, x1
    685c: aa0203f4     	mov	x20, x2
    6860: f9400116     	ldr	x22, [x8]
		0000000000006860:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    6864: aa0303f3     	mov	x19, x3
    6868: f947e6c8     	ldr	x8, [x22, #0xfc8]
    686c: b4000128     	cbz	x8, 0x6890 <get_fake_sleep+0xa0>
    6870: aa1603e0     	mov	x0, x22
    6874: b85fc110     	ldur	w16, [x8, #-0x4]
    6878: 7281af31     	movk	w17, #0xd79
    687c: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    6880: 6b11021f     	cmp	w16, w17
    6884: 54000040     	b.eq	0x688c <get_fake_sleep+0x9c>
    6888: d4304500     	brk	#0x8228
    688c: d63f0100     	blr	x8
    6890: b94482c2     	ldr	w2, [x22, #0x480]
    6894: 90000000     	adrp	x0, 0x6000 <tp_pen_only_write+0x70>
		0000000000006894:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8efe
    6898: 91000000     	add	x0, x0, #0x0
		0000000000006898:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8efe
    689c: 90000001     	adrp	x1, 0x6000 <tp_pen_only_write+0x70>
		000000000000689c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6152
    68a0: 91000021     	add	x1, x1, #0x0
		00000000000068a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6152
    68a4: 94000000     	bl	0x68a4 <get_fake_sleep+0xb4>
		00000000000068a4:  R_AARCH64_CALL26	_printk
    68a8: b94482c3     	ldr	w3, [x22, #0x480]
    68ac: 90000002     	adrp	x2, 0x6000 <tp_pen_only_write+0x70>
		00000000000068ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fca
    68b0: 91000042     	add	x2, x2, #0x0
		00000000000068b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fca
    68b4: 910023e0     	add	x0, sp, #0x8
    68b8: 52800141     	mov	w1, #0xa                // =10
    68bc: 94000000     	bl	0x68bc <get_fake_sleep+0xcc>
		00000000000068bc:  R_AARCH64_CALL26	snprintf
    68c0: 93407c04     	sxtw	x4, w0
    68c4: 910023e3     	add	x3, sp, #0x8
    68c8: aa1403e1     	mov	x1, x20
    68cc: aa1503e0     	mov	x0, x21
    68d0: aa1303e2     	mov	x2, x19
    68d4: 94000000     	bl	0x68d4 <get_fake_sleep+0xe4>
		00000000000068d4:  R_AARCH64_CALL26	simple_read_from_buffer
    68d8: 17ffffd4     	b	0x6828 <get_fake_sleep+0x38>
    68dc: 94000000     	bl	0x68dc <get_fake_sleep+0xec>
		00000000000068dc:  R_AARCH64_CALL26	__stack_chk_fail
