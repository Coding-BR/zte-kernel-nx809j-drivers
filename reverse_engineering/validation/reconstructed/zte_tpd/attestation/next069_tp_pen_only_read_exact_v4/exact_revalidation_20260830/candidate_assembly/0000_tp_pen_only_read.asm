
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000c4fc <tp_pen_only_read>:
    c4fc: d503233f     	paciasp
    c500: d10143ff     	sub	sp, sp, #0x50
    c504: a9027bfd     	stp	x29, x30, [sp, #0x20]
    c508: a90357f6     	stp	x22, x21, [sp, #0x30]
    c50c: a9044ff4     	stp	x20, x19, [sp, #0x40]
    c510: 910083fd     	add	x29, sp, #0x20
    c514: d5384108     	mrs	x8, SP_EL0
    c518: aa1f03e0     	mov	x0, xzr
    c51c: f9438908     	ldr	x8, [x8, #0x710]
    c520: f81f83a8     	stur	x8, [x29, #-0x8]
    c524: f9400068     	ldr	x8, [x3]
    c528: 790023ff     	strh	wzr, [sp, #0x10]
    c52c: f90007ff     	str	xzr, [sp, #0x8]
    c530: b4000188     	cbz	x8, 0xc560 <tp_pen_only_read+0x64>
    c534: d5384108     	mrs	x8, SP_EL0
    c538: f9438908     	ldr	x8, [x8, #0x710]
    c53c: f85f83a9     	ldur	x9, [x29, #-0x8]
    c540: eb09011f     	cmp	x8, x9
    c544: 54000521     	b.ne	0xc5e8 <tp_pen_only_read+0xec>
    c548: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    c54c: a94357f6     	ldp	x22, x21, [sp, #0x30]
    c550: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    c554: 910143ff     	add	sp, sp, #0x50
    c558: d50323bf     	autiasp
    c55c: d65f03c0     	ret
    c560: 90000008     	adrp	x8, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c560:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    c564: aa0103f5     	mov	x21, x1
    c568: aa0203f4     	mov	x20, x2
    c56c: f9400116     	ldr	x22, [x8]
		000000000000c56c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    c570: aa0303f3     	mov	x19, x3
    c574: f947c2c8     	ldr	x8, [x22, #0xf80]
    c578: b4000128     	cbz	x8, 0xc59c <tp_pen_only_read+0xa0>
    c57c: aa1603e0     	mov	x0, x22
    c580: b85fc110     	ldur	w16, [x8, #-0x4]
    c584: 7281af31     	movk	w17, #0xd79
    c588: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    c58c: 6b11021f     	cmp	w16, w17
    c590: 54000040     	b.eq	0xc598 <tp_pen_only_read+0x9c>
    c594: d4304500     	brk	#0x8228
    c598: d63f0100     	blr	x8
    c59c: 395106c2     	ldrb	w2, [x22, #0x441]
    c5a0: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c5a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x191df
    c5a4: 91000000     	add	x0, x0, #0x0
		000000000000c5a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x191df
    c5a8: 90000001     	adrp	x1, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c5a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a51
    c5ac: 91000021     	add	x1, x1, #0x0
		000000000000c5ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a51
    c5b0: 94000000     	bl	0xc5b0 <tp_pen_only_read+0xb4>
		000000000000c5b0:  R_AARCH64_CALL26	_printk
    c5b4: 395106c3     	ldrb	w3, [x22, #0x441]
    c5b8: 90000002     	adrp	x2, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c5b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac39
    c5bc: 91000042     	add	x2, x2, #0x0
		000000000000c5bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac39
    c5c0: 910023e0     	add	x0, sp, #0x8
    c5c4: 52800141     	mov	w1, #0xa                // =10
    c5c8: 94000000     	bl	0xc5c8 <tp_pen_only_read+0xcc>
		000000000000c5c8:  R_AARCH64_CALL26	snprintf
    c5cc: 93407c04     	sxtw	x4, w0
    c5d0: 910023e3     	add	x3, sp, #0x8
    c5d4: aa1403e1     	mov	x1, x20
    c5d8: aa1503e0     	mov	x0, x21
    c5dc: aa1303e2     	mov	x2, x19
    c5e0: 94000000     	bl	0xc5e0 <tp_pen_only_read+0xe4>
		000000000000c5e0:  R_AARCH64_CALL26	simple_read_from_buffer
    c5e4: 17ffffd4     	b	0xc534 <tp_pen_only_read+0x38>
    c5e8: 94000000     	bl	0xc5e8 <tp_pen_only_read+0xec>
		000000000000c5e8:  R_AARCH64_CALL26	__stack_chk_fail
