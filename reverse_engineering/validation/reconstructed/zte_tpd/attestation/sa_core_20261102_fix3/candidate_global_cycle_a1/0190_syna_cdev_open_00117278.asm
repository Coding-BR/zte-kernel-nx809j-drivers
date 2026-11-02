
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001561c <syna_cdev_open>:
   1561c: d503233f     	paciasp
   15620: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   15624: a90157f6     	stp	x22, x21, [sp, #0x10]
   15628: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1562c: 910003fd     	mov	x29, sp
   15630: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015630:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data
   15634: 91000000     	add	x0, x0, #0x0
		0000000000015634:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data
   15638: f8450408     	ldr	x8, [x0], #0x50
   1563c: f9405514     	ldr	x20, [x8, #0xa8]
   15640: 94000000     	bl	0x15640 <syna_cdev_open+0x24>
		0000000000015640:  R_AARCH64_CALL26	mutex_lock
   15644: b9438682     	ldr	w2, [x20, #0x384]
   15648: 35000062     	cbnz	w2, 0x15654 <syna_cdev_open+0x38>
   1564c: 52800028     	mov	w8, #0x1                // =1
   15650: 14000008     	b	0x15670 <syna_cdev_open+0x54>
   15654: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015654:  R_AARCH64_ADR_PREL_PG_HI21	unk_366C2
   15658: 91000000     	add	x0, x0, #0x0
		0000000000015658:  R_AARCH64_ADD_ABS_LO12_NC	unk_366C2
   1565c: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x3d4>
		000000000001565c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c075
   15660: 91000021     	add	x1, x1, #0x0
		0000000000015660:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c075
   15664: 94000000     	bl	0x15664 <syna_cdev_open+0x48>
		0000000000015664:  R_AARCH64_CALL26	_printk
   15668: b9438688     	ldr	w8, [x20, #0x384]
   1566c: 11000508     	add	w8, w8, #0x1
   15670: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015670:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
   15674: 91000000     	add	x0, x0, #0x0
		0000000000015674:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
   15678: b9038688     	str	w8, [x20, #0x384]
   1567c: f900181f     	str	xzr, [x0, #0x30]
   15680: b900381f     	str	wzr, [x0, #0x38]
   15684: f9400289     	ldr	x9, [x20]
   15688: b9403d28     	ldr	w8, [x9, #0x3c]
   1568c: b9004008     	str	w8, [x0, #0x40]
   15690: f9400288     	ldr	x8, [x20]
   15694: b9403908     	ldr	w8, [x8, #0x38]
   15698: b9003c08     	str	w8, [x0, #0x3c]
   1569c: f9400288     	ldr	x8, [x20]
   156a0: 390de91f     	strb	wzr, [x8, #0x37a]
   156a4: 3916129f     	strb	wzr, [x20, #0x584]
   156a8: 94000000     	bl	0x156a8 <syna_cdev_open+0x8c>
		00000000000156a8:  R_AARCH64_CALL26	mutex_lock
   156ac: f9427e93     	ldr	x19, [x20, #0x4f8]
   156b0: 9113e295     	add	x21, x20, #0x4f8
   156b4: eb15027f     	cmp	x19, x21
   156b8: 54000281     	b.ne	0x15708 <syna_cdev_open+0xec>
   156bc: 90000013     	adrp	x19, 0x15000 <tp_edge_report_limit_read+0x3d4>
		00000000000156bc:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x50
   156c0: 91000273     	add	x19, x19, #0x0
		00000000000156c0:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x50
   156c4: 9100c260     	add	x0, x19, #0x30
   156c8: 94000000     	bl	0x156c8 <syna_cdev_open+0xac>
		00000000000156c8:  R_AARCH64_CALL26	mutex_unlock
   156cc: f9400280     	ldr	x0, [x20]
   156d0: 94000000     	bl	0x156d0 <syna_cdev_open+0xb4>
		00000000000156d0:  R_AARCH64_CALL26	syna_tcm_clear_data_duplicator
   156d4: aa1303e0     	mov	x0, x19
   156d8: 94000000     	bl	0x156d8 <syna_cdev_open+0xbc>
		00000000000156d8:  R_AARCH64_CALL26	mutex_unlock
   156dc: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x3d4>
		00000000000156dc:  R_AARCH64_ADR_PREL_PG_HI21	unk_34E37
   156e0: 91000000     	add	x0, x0, #0x0
		00000000000156e0:  R_AARCH64_ADD_ABS_LO12_NC	unk_34E37
   156e4: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x3d4>
		00000000000156e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c075
   156e8: 91000021     	add	x1, x1, #0x0
		00000000000156e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c075
   156ec: 94000000     	bl	0x156ec <syna_cdev_open+0xd0>
		00000000000156ec:  R_AARCH64_CALL26	_printk
   156f0: 2a1f03e0     	mov	w0, wzr
   156f4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   156f8: a94157f6     	ldp	x22, x21, [sp, #0x10]
   156fc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   15700: d50323bf     	autiasp
   15704: d65f03c0     	ret
   15708: d2802016     	mov	x22, #0x100             // =256
   1570c: f2fbd5b6     	movk	x22, #0xdead, lsl #48
   15710: 14000004     	b	0x15720 <syna_cdev_open+0x104>
   15714: f94002b3     	ldr	x19, [x21]
   15718: eb15027f     	cmp	x19, x21
   1571c: 54fffd00     	b.eq	0x156bc <syna_cdev_open+0xa0>
   15720: f9400668     	ldr	x8, [x19, #0x8]
   15724: f9400109     	ldr	x9, [x8]
   15728: eb13013f     	cmp	x9, x19
   1572c: 54000241     	b.ne	0x15774 <syna_cdev_open+0x158>
   15730: f9400269     	ldr	x9, [x19]
   15734: f940052a     	ldr	x10, [x9, #0x8]
   15738: eb13015f     	cmp	x10, x19
   1573c: 540001c1     	b.ne	0x15774 <syna_cdev_open+0x158>
   15740: f9000528     	str	x8, [x9, #0x8]
   15744: f9000109     	str	x9, [x8]
   15748: f9400a60     	ldr	x0, [x19, #0x10]
   1574c: 91008ac8     	add	x8, x22, #0x22
   15750: a9002276     	stp	x22, x8, [x19]
   15754: 94000000     	bl	0x15754 <syna_cdev_open+0x138>
		0000000000015754:  R_AARCH64_CALL26	kfree
   15758: aa1303e0     	mov	x0, x19
   1575c: 94000000     	bl	0x1575c <syna_cdev_open+0x140>
		000000000001575c:  R_AARCH64_CALL26	kfree
   15760: b944f288     	ldr	w8, [x20, #0x4f0]
   15764: 34fffd88     	cbz	w8, 0x15714 <syna_cdev_open+0xf8>
   15768: 51000508     	sub	w8, w8, #0x1
   1576c: b904f288     	str	w8, [x20, #0x4f0]
   15770: 17ffffe9     	b	0x15714 <syna_cdev_open+0xf8>
   15774: aa1303e0     	mov	x0, x19
   15778: 94000000     	bl	0x15778 <syna_cdev_open+0x15c>
		0000000000015778:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
   1577c: 17fffff3     	b	0x15748 <syna_cdev_open+0x12c>
