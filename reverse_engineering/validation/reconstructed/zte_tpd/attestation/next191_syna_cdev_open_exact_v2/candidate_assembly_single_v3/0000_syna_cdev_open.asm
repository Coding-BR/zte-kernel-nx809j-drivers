
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001b5b8 <syna_cdev_open>:
   1b5b8: d503233f     	paciasp
   1b5bc: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1b5c0: a90157f6     	stp	x22, x21, [sp, #0x10]
   1b5c4: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1b5c8: 910003fd     	mov	x29, sp
   1b5cc: 90000000     	adrp	x0, 0x1b000 <tp_edge_report_limit_read+0x438>
		000000000001b5cc:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data
   1b5d0: 91000000     	add	x0, x0, #0x0
		000000000001b5d0:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data
   1b5d4: f8450408     	ldr	x8, [x0], #0x50
   1b5d8: f9405514     	ldr	x20, [x8, #0xa8]
   1b5dc: 94000000     	bl	0x1b5dc <syna_cdev_open+0x24>
		000000000001b5dc:  R_AARCH64_CALL26	mutex_lock
   1b5e0: b9438682     	ldr	w2, [x20, #0x384]
   1b5e4: 35000062     	cbnz	w2, 0x1b5f0 <syna_cdev_open+0x38>
   1b5e8: 52800028     	mov	w8, #0x1                // =1
   1b5ec: 14000008     	b	0x1b60c <syna_cdev_open+0x54>
   1b5f0: 90000000     	adrp	x0, 0x1b000 <tp_edge_report_limit_read+0x438>
		000000000001b5f0:  R_AARCH64_ADR_PREL_PG_HI21	unk_366C2
   1b5f4: 91000000     	add	x0, x0, #0x0
		000000000001b5f4:  R_AARCH64_ADD_ABS_LO12_NC	unk_366C2
   1b5f8: 90000001     	adrp	x1, 0x1b000 <tp_edge_report_limit_read+0x438>
		000000000001b5f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d195
   1b5fc: 91000021     	add	x1, x1, #0x0
		000000000001b5fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d195
   1b600: 94000000     	bl	0x1b600 <syna_cdev_open+0x48>
		000000000001b600:  R_AARCH64_CALL26	_printk
   1b604: b9438688     	ldr	w8, [x20, #0x384]
   1b608: 11000508     	add	w8, w8, #0x1
   1b60c: 90000000     	adrp	x0, 0x1b000 <tp_edge_report_limit_read+0x438>
		000000000001b60c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
   1b610: 91000000     	add	x0, x0, #0x0
		000000000001b610:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
   1b614: b9038688     	str	w8, [x20, #0x384]
   1b618: f900181f     	str	xzr, [x0, #0x30]
   1b61c: b900381f     	str	wzr, [x0, #0x38]
   1b620: f9400289     	ldr	x9, [x20]
   1b624: b9403d28     	ldr	w8, [x9, #0x3c]
   1b628: b9004008     	str	w8, [x0, #0x40]
   1b62c: f9400288     	ldr	x8, [x20]
   1b630: b9403908     	ldr	w8, [x8, #0x38]
   1b634: b9003c08     	str	w8, [x0, #0x3c]
   1b638: f9400288     	ldr	x8, [x20]
   1b63c: 390de91f     	strb	wzr, [x8, #0x37a]
   1b640: 3916129f     	strb	wzr, [x20, #0x584]
   1b644: 94000000     	bl	0x1b644 <syna_cdev_open+0x8c>
		000000000001b644:  R_AARCH64_CALL26	mutex_lock
   1b648: f9427e93     	ldr	x19, [x20, #0x4f8]
   1b64c: 9113e295     	add	x21, x20, #0x4f8
   1b650: eb15027f     	cmp	x19, x21
   1b654: 54000281     	b.ne	0x1b6a4 <syna_cdev_open+0xec>
   1b658: 90000013     	adrp	x19, 0x1b000 <tp_edge_report_limit_read+0x438>
		000000000001b658:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x50
   1b65c: 91000273     	add	x19, x19, #0x0
		000000000001b65c:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x50
   1b660: 9100c260     	add	x0, x19, #0x30
   1b664: 94000000     	bl	0x1b664 <syna_cdev_open+0xac>
		000000000001b664:  R_AARCH64_CALL26	mutex_unlock
   1b668: f9400280     	ldr	x0, [x20]
   1b66c: 94000000     	bl	0x1b66c <syna_cdev_open+0xb4>
		000000000001b66c:  R_AARCH64_CALL26	syna_tcm_clear_data_duplicator
   1b670: aa1303e0     	mov	x0, x19
   1b674: 94000000     	bl	0x1b674 <syna_cdev_open+0xbc>
		000000000001b674:  R_AARCH64_CALL26	mutex_unlock
   1b678: 90000000     	adrp	x0, 0x1b000 <tp_edge_report_limit_read+0x438>
		000000000001b678:  R_AARCH64_ADR_PREL_PG_HI21	unk_34E37
   1b67c: 91000000     	add	x0, x0, #0x0
		000000000001b67c:  R_AARCH64_ADD_ABS_LO12_NC	unk_34E37
   1b680: 90000001     	adrp	x1, 0x1b000 <tp_edge_report_limit_read+0x438>
		000000000001b680:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d195
   1b684: 91000021     	add	x1, x1, #0x0
		000000000001b684:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d195
   1b688: 94000000     	bl	0x1b688 <syna_cdev_open+0xd0>
		000000000001b688:  R_AARCH64_CALL26	_printk
   1b68c: 2a1f03e0     	mov	w0, wzr
   1b690: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1b694: a94157f6     	ldp	x22, x21, [sp, #0x10]
   1b698: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1b69c: d50323bf     	autiasp
   1b6a0: d65f03c0     	ret
   1b6a4: d2802016     	mov	x22, #0x100             // =256
   1b6a8: f2fbd5b6     	movk	x22, #0xdead, lsl #48
   1b6ac: 14000004     	b	0x1b6bc <syna_cdev_open+0x104>
   1b6b0: f94002b3     	ldr	x19, [x21]
   1b6b4: eb15027f     	cmp	x19, x21
   1b6b8: 54fffd00     	b.eq	0x1b658 <syna_cdev_open+0xa0>
   1b6bc: f9400668     	ldr	x8, [x19, #0x8]
   1b6c0: f9400109     	ldr	x9, [x8]
   1b6c4: eb13013f     	cmp	x9, x19
   1b6c8: 54000241     	b.ne	0x1b710 <syna_cdev_open+0x158>
   1b6cc: f9400269     	ldr	x9, [x19]
   1b6d0: f940052a     	ldr	x10, [x9, #0x8]
   1b6d4: eb13015f     	cmp	x10, x19
   1b6d8: 540001c1     	b.ne	0x1b710 <syna_cdev_open+0x158>
   1b6dc: f9000528     	str	x8, [x9, #0x8]
   1b6e0: f9000109     	str	x9, [x8]
   1b6e4: f9400a60     	ldr	x0, [x19, #0x10]
   1b6e8: 91008ac8     	add	x8, x22, #0x22
   1b6ec: a9002276     	stp	x22, x8, [x19]
   1b6f0: 94000000     	bl	0x1b6f0 <syna_cdev_open+0x138>
		000000000001b6f0:  R_AARCH64_CALL26	kfree
   1b6f4: aa1303e0     	mov	x0, x19
   1b6f8: 94000000     	bl	0x1b6f8 <syna_cdev_open+0x140>
		000000000001b6f8:  R_AARCH64_CALL26	kfree
   1b6fc: b944f288     	ldr	w8, [x20, #0x4f0]
   1b700: 34fffd88     	cbz	w8, 0x1b6b0 <syna_cdev_open+0xf8>
   1b704: 51000508     	sub	w8, w8, #0x1
   1b708: b904f288     	str	w8, [x20, #0x4f0]
   1b70c: 17ffffe9     	b	0x1b6b0 <syna_cdev_open+0xf8>
   1b710: aa1303e0     	mov	x0, x19
   1b714: 94000000     	bl	0x1b714 <syna_cdev_open+0x15c>
		000000000001b714:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
   1b718: 17fffff3     	b	0x1b6e4 <syna_cdev_open+0x12c>
