
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000748c <tp_frame_data_read>:
    748c: d503233f     	paciasp
    7490: d10143ff     	sub	sp, sp, #0x50
    7494: a9027bfd     	stp	x29, x30, [sp, #0x20]
    7498: a90357f6     	stp	x22, x21, [sp, #0x30]
    749c: a9044ff4     	stp	x20, x19, [sp, #0x40]
    74a0: 910083fd     	add	x29, sp, #0x20
    74a4: d5384108     	mrs	x8, SP_EL0
    74a8: aa1f03e0     	mov	x0, xzr
    74ac: f9438908     	ldr	x8, [x8, #0x710]
    74b0: f81f83a8     	stur	x8, [x29, #-0x8]
    74b4: f9400068     	ldr	x8, [x3]
    74b8: 790023ff     	strh	wzr, [sp, #0x10]
    74bc: f90007ff     	str	xzr, [sp, #0x8]
    74c0: b4000188     	cbz	x8, 0x74f0 <tp_frame_data_read+0x64>
    74c4: d5384108     	mrs	x8, SP_EL0
    74c8: f9438908     	ldr	x8, [x8, #0x710]
    74cc: f85f83a9     	ldur	x9, [x29, #-0x8]
    74d0: eb09011f     	cmp	x8, x9
    74d4: 54000521     	b.ne	0x7578 <tp_frame_data_read+0xec>
    74d8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    74dc: a94357f6     	ldp	x22, x21, [sp, #0x30]
    74e0: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    74e4: 910143ff     	add	sp, sp, #0x50
    74e8: d50323bf     	autiasp
    74ec: d65f03c0     	ret
    74f0: 90000008     	adrp	x8, 0x7000 <ghost_debug_read+0x30c>
		00000000000074f0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    74f4: aa0103f5     	mov	x21, x1
    74f8: aa0203f4     	mov	x20, x2
    74fc: f9400116     	ldr	x22, [x8]
		00000000000074fc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    7500: aa0303f3     	mov	x19, x3
    7504: f94802c8     	ldr	x8, [x22, #0x1000]
    7508: b4000128     	cbz	x8, 0x752c <tp_frame_data_read+0xa0>
    750c: aa1603e0     	mov	x0, x22
    7510: b85fc110     	ldur	w16, [x8, #-0x4]
    7514: 7281af31     	movk	w17, #0xd79
    7518: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    751c: 6b11021f     	cmp	w16, w17
    7520: 54000040     	b.eq	0x7528 <tp_frame_data_read+0x9c>
    7524: d4304500     	brk	#0x8228
    7528: d63f0100     	blr	x8
    752c: b94462c2     	ldr	w2, [x22, #0x460]
    7530: 90000000     	adrp	x0, 0x7000 <ghost_debug_read+0x30c>
		0000000000007530:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8efe
    7534: 91000000     	add	x0, x0, #0x0
		0000000000007534:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8efe
    7538: 90000001     	adrp	x1, 0x7000 <ghost_debug_read+0x30c>
		0000000000007538:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x689b
    753c: 91000021     	add	x1, x1, #0x0
		000000000000753c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x689b
    7540: 94000000     	bl	0x7540 <tp_frame_data_read+0xb4>
		0000000000007540:  R_AARCH64_CALL26	_printk
    7544: b94462c3     	ldr	w3, [x22, #0x460]
    7548: 90000002     	adrp	x2, 0x7000 <ghost_debug_read+0x30c>
		0000000000007548:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fca
    754c: 91000042     	add	x2, x2, #0x0
		000000000000754c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fca
    7550: 910023e0     	add	x0, sp, #0x8
    7554: 52800141     	mov	w1, #0xa                // =10
    7558: 94000000     	bl	0x7558 <tp_frame_data_read+0xcc>
		0000000000007558:  R_AARCH64_CALL26	snprintf
    755c: 93407c04     	sxtw	x4, w0
    7560: 910023e3     	add	x3, sp, #0x8
    7564: aa1403e1     	mov	x1, x20
    7568: aa1503e0     	mov	x0, x21
    756c: aa1303e2     	mov	x2, x19
    7570: 94000000     	bl	0x7570 <tp_frame_data_read+0xe4>
		0000000000007570:  R_AARCH64_CALL26	simple_read_from_buffer
    7574: 17ffffd4     	b	0x74c4 <tp_frame_data_read+0x38>
    7578: 94000000     	bl	0x7578 <tp_frame_data_read+0xec>
		0000000000007578:  R_AARCH64_CALL26	__stack_chk_fail
