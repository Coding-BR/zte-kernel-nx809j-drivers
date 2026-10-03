
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000538c <get_play_game>:
    538c: d503233f     	paciasp
    5390: d10143ff     	sub	sp, sp, #0x50
    5394: a9027bfd     	stp	x29, x30, [sp, #0x20]
    5398: a90357f6     	stp	x22, x21, [sp, #0x30]
    539c: a9044ff4     	stp	x20, x19, [sp, #0x40]
    53a0: 910083fd     	add	x29, sp, #0x20
    53a4: d5384108     	mrs	x8, SP_EL0
    53a8: aa1f03e0     	mov	x0, xzr
    53ac: f9438908     	ldr	x8, [x8, #0x710]
    53b0: f81f83a8     	stur	x8, [x29, #-0x8]
    53b4: f9400068     	ldr	x8, [x3]
    53b8: 790023ff     	strh	wzr, [sp, #0x10]
    53bc: f90007ff     	str	xzr, [sp, #0x8]
    53c0: b4000188     	cbz	x8, 0x53f0 <get_play_game+0x64>
    53c4: d5384108     	mrs	x8, SP_EL0
    53c8: f9438908     	ldr	x8, [x8, #0x710]
    53cc: f85f83a9     	ldur	x9, [x29, #-0x8]
    53d0: eb09011f     	cmp	x8, x9
    53d4: 54000521     	b.ne	0x5478 <get_play_game+0xec>
    53d8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    53dc: a94357f6     	ldp	x22, x21, [sp, #0x30]
    53e0: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    53e4: 910143ff     	add	sp, sp, #0x50
    53e8: d50323bf     	autiasp
    53ec: d65f03c0     	ret
    53f0: 90000008     	adrp	x8, 0x5000 <tp_edge_report_limit_write+0x1f8>
		00000000000053f0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    53f4: aa0103f5     	mov	x21, x1
    53f8: aa0203f4     	mov	x20, x2
    53fc: f9400116     	ldr	x22, [x8]
		00000000000053fc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    5400: aa0303f3     	mov	x19, x3
    5404: f94782c8     	ldr	x8, [x22, #0xf00]
    5408: b4000128     	cbz	x8, 0x542c <get_play_game+0xa0>
    540c: aa1603e0     	mov	x0, x22
    5410: b85fc110     	ldur	w16, [x8, #-0x4]
    5414: 7281af31     	movk	w17, #0xd79
    5418: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    541c: 6b11021f     	cmp	w16, w17
    5420: 54000040     	b.eq	0x5428 <get_play_game+0x9c>
    5424: d4304500     	brk	#0x8228
    5428: d63f0100     	blr	x8
    542c: b9445ec2     	ldr	w2, [x22, #0x45c]
    5430: 90000000     	adrp	x0, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005430:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8efe
    5434: 91000000     	add	x0, x0, #0x0
		0000000000005434:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8efe
    5438: 90000001     	adrp	x1, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005438:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x317b
    543c: 91000021     	add	x1, x1, #0x0
		000000000000543c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x317b
    5440: 94000000     	bl	0x5440 <get_play_game+0xb4>
		0000000000005440:  R_AARCH64_CALL26	_printk
    5444: b9445ec3     	ldr	w3, [x22, #0x45c]
    5448: 90000002     	adrp	x2, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005448:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fca
    544c: 91000042     	add	x2, x2, #0x0
		000000000000544c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fca
    5450: 910023e0     	add	x0, sp, #0x8
    5454: 52800141     	mov	w1, #0xa                // =10
    5458: 94000000     	bl	0x5458 <get_play_game+0xcc>
		0000000000005458:  R_AARCH64_CALL26	snprintf
    545c: 93407c04     	sxtw	x4, w0
    5460: 910023e3     	add	x3, sp, #0x8
    5464: aa1403e1     	mov	x1, x20
    5468: aa1503e0     	mov	x0, x21
    546c: aa1303e2     	mov	x2, x19
    5470: 94000000     	bl	0x5470 <get_play_game+0xe4>
		0000000000005470:  R_AARCH64_CALL26	simple_read_from_buffer
    5474: 17ffffd4     	b	0x53c4 <get_play_game+0x38>
    5478: 94000000     	bl	0x5478 <get_play_game+0xec>
		0000000000005478:  R_AARCH64_CALL26	__stack_chk_fail
