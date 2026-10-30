
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001f584 <uf_touch_report>:
   1f584: d503233f     	paciasp
   1f588: d100c3ff     	sub	sp, sp, #0x30
   1f58c: a9027bfd     	stp	x29, x30, [sp, #0x20]
   1f590: 910083fd     	add	x29, sp, #0x20
   1f594: d5384108     	mrs	x8, SP_EL0
   1f598: f9438908     	ldr	x8, [x8, #0x710]
   1f59c: f81f83a8     	stur	x8, [x29, #-0x8]
   1f5a0: 340006a0     	cbz	w0, 0x1f674 <uf_touch_report+0xf0>
   1f5a4: 90000008     	adrp	x8, 0x1f000 <tpd_report_work_init+0x15c>
		000000000001f5a4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1f5a8: f9400109     	ldr	x9, [x8]
		000000000001f5a8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1f5ac: 79403d2a     	ldrh	w10, [x9, #0x1e]
   1f5b0: 79404528     	ldrh	w8, [x9, #0x22]
   1f5b4: 4b08014b     	sub	w11, w10, w8
   1f5b8: 0b0a010a     	add	w10, w8, w10
   1f5bc: 6b01017f     	cmp	w11, w1
   1f5c0: 7a41b144     	ccmp	w10, w1, #0x4, lt
   1f5c4: 5400064d     	b.le	0x1f68c <uf_touch_report+0x108>
   1f5c8: 79404129     	ldrh	w9, [x9, #0x20]
   1f5cc: 4b08012a     	sub	w10, w9, w8
   1f5d0: 6b02015f     	cmp	w10, w2
   1f5d4: 540005ca     	b.ge	0x1f68c <uf_touch_report+0x108>
   1f5d8: 0b080128     	add	w8, w9, w8
   1f5dc: 6b02011f     	cmp	w8, w2
   1f5e0: 5400056d     	b.le	0x1f68c <uf_touch_report+0x108>
   1f5e4: 7100287f     	cmp	w3, #0xa
   1f5e8: 54000a62     	b.hs	0x1f734 <uf_touch_report+0x1b0>
   1f5ec: 90000009     	adrp	x9, 0x1f000 <tpd_report_work_init+0x15c>
		000000000001f5ec:  R_AARCH64_ADR_PREL_PG_HI21	uf_touch_report.fp_finger
   1f5f0: 91000129     	add	x9, x9, #0x0
		000000000001f5f0:  R_AARCH64_ADD_ABS_LO12_NC	uf_touch_report.fp_finger
   1f5f4: b8635928     	ldr	w8, [x9, w3, uxtw #2]
   1f5f8: 350004a8     	cbnz	w8, 0x1f68c <uf_touch_report+0x108>
   1f5fc: 9000000a     	adrp	x10, 0x1f000 <tpd_report_work_init+0x15c>
		000000000001f5fc:  R_AARCH64_ADR_PREL_PG_HI21	uf_touch_report.area_meet_down
   1f600: 39400148     	ldrb	w8, [x10]
		000000000001f600:  R_AARCH64_LDST8_ABS_LO12_NC	uf_touch_report.area_meet_down
   1f604: 37000448     	tbnz	w8, #0x0, 0x1f68c <uf_touch_report+0x108>
   1f608: 90000008     	adrp	x8, 0x1f000 <tpd_report_work_init+0x15c>
		000000000001f608:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
   1f60c: 5280002b     	mov	w11, #0x1               // =1
   1f610: b823592b     	str	w11, [x9, w3, uxtw #2]
   1f614: f9400108     	ldr	x8, [x8]
		000000000001f614:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
   1f618: 3900014b     	strb	w11, [x10]
		000000000001f618:  R_AARCH64_LDST8_ABS_LO12_NC	uf_touch_report.area_meet_down
   1f61c: b4000568     	cbz	x8, 0x1f6c8 <uf_touch_report+0x144>
   1f620: 90000009     	adrp	x9, 0x1f000 <tpd_report_work_init+0x15c>
		000000000001f620:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1db1b
   1f624: 91000129     	add	x9, x9, #0x0
		000000000001f624:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1db1b
   1f628: f90003e9     	str	x9, [sp]
   1f62c: 90000009     	adrp	x9, 0x1f000 <tpd_report_work_init+0x15c>
		000000000001f62c:  R_AARCH64_ADR_PREL_PG_HI21	current_lcd_state
   1f630: b9400129     	ldr	w9, [x9]
		000000000001f630:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
   1f634: 71000d3f     	cmp	w9, #0x3
   1f638: 540007e2     	b.hs	0x1f734 <uf_touch_report+0x1b0>
   1f63c: 9000000a     	adrp	x10, 0x1f000 <tpd_report_work_init+0x15c>
		000000000001f63c:  R_AARCH64_ADR_PREL_PG_HI21	uf_touch_report_tppower_to_str
   1f640: 9100014a     	add	x10, x10, #0x0
		000000000001f640:  R_AARCH64_ADD_ABS_LO12_NC	uf_touch_report_tppower_to_str
   1f644: 91004100     	add	x0, x8, #0x10
   1f648: f8697949     	ldr	x9, [x10, x9, lsl #3]
   1f64c: 910003e2     	mov	x2, sp
   1f650: 52800041     	mov	w1, #0x2                // =2
   1f654: a900ffe9     	stp	x9, xzr, [sp, #0x8]
   1f658: 94000000     	bl	0x1f658 <uf_touch_report+0xd4>
		000000000001f658:  R_AARCH64_CALL26	kobject_uevent_env
   1f65c: f94007e2     	ldr	x2, [sp, #0x8]
   1f660: 90000000     	adrp	x0, 0x1f000 <tpd_report_work_init+0x15c>
		000000000001f660:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1add4
   1f664: 91000000     	add	x0, x0, #0x0
		000000000001f664:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1add4
   1f668: 90000001     	adrp	x1, 0x1f000 <tpd_report_work_init+0x15c>
		000000000001f668:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1db1b
   1f66c: 91000021     	add	x1, x1, #0x0
		000000000001f66c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1db1b
   1f670: 1400002e     	b	0x1f728 <uf_touch_report+0x1a4>
   1f674: 7100247f     	cmp	w3, #0x9
   1f678: 540005e8     	b.hi	0x1f734 <uf_touch_report+0x1b0>
   1f67c: 90000009     	adrp	x9, 0x1f000 <tpd_report_work_init+0x15c>
		000000000001f67c:  R_AARCH64_ADR_PREL_PG_HI21	uf_touch_report.fp_finger
   1f680: 91000129     	add	x9, x9, #0x0
		000000000001f680:  R_AARCH64_ADD_ABS_LO12_NC	uf_touch_report.fp_finger
   1f684: b8635928     	ldr	w8, [x9, w3, uxtw #2]
   1f688: 35000148     	cbnz	w8, 0x1f6b0 <uf_touch_report+0x12c>
   1f68c: d5384108     	mrs	x8, SP_EL0
   1f690: f9438908     	ldr	x8, [x8, #0x710]
   1f694: f85f83a9     	ldur	x9, [x29, #-0x8]
   1f698: eb09011f     	cmp	x8, x9
   1f69c: 540004a1     	b.ne	0x1f730 <uf_touch_report+0x1ac>
   1f6a0: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   1f6a4: 9100c3ff     	add	sp, sp, #0x30
   1f6a8: d50323bf     	autiasp
   1f6ac: d65f03c0     	ret
   1f6b0: 90000008     	adrp	x8, 0x1f000 <tpd_report_work_init+0x15c>
		000000000001f6b0:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
   1f6b4: b823593f     	str	wzr, [x9, w3, uxtw #2]
   1f6b8: 90000009     	adrp	x9, 0x1f000 <tpd_report_work_init+0x15c>
		000000000001f6b8:  R_AARCH64_ADR_PREL_PG_HI21	uf_touch_report.area_meet_down
   1f6bc: f9400108     	ldr	x8, [x8]
		000000000001f6bc:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
   1f6c0: 3900013f     	strb	wzr, [x9]
		000000000001f6c0:  R_AARCH64_LDST8_ABS_LO12_NC	uf_touch_report.area_meet_down
   1f6c4: b50000a8     	cbnz	x8, 0x1f6d8 <uf_touch_report+0x154>
   1f6c8: 90000000     	adrp	x0, 0x1f000 <tpd_report_work_init+0x15c>
		000000000001f6c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1adae
   1f6cc: 91000000     	add	x0, x0, #0x0
		000000000001f6cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1adae
   1f6d0: 94000000     	bl	0x1f6d0 <uf_touch_report+0x14c>
		000000000001f6d0:  R_AARCH64_CALL26	_printk
   1f6d4: 17ffffee     	b	0x1f68c <uf_touch_report+0x108>
   1f6d8: 90000009     	adrp	x9, 0x1f000 <tpd_report_work_init+0x15c>
		000000000001f6d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d19a
   1f6dc: 91000129     	add	x9, x9, #0x0
		000000000001f6dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d19a
   1f6e0: f90003e9     	str	x9, [sp]
   1f6e4: 90000009     	adrp	x9, 0x1f000 <tpd_report_work_init+0x15c>
		000000000001f6e4:  R_AARCH64_ADR_PREL_PG_HI21	current_lcd_state
   1f6e8: b9400129     	ldr	w9, [x9]
		000000000001f6e8:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
   1f6ec: 71000d3f     	cmp	w9, #0x3
   1f6f0: 54000222     	b.hs	0x1f734 <uf_touch_report+0x1b0>
   1f6f4: 9000000a     	adrp	x10, 0x1f000 <tpd_report_work_init+0x15c>
		000000000001f6f4:  R_AARCH64_ADR_PREL_PG_HI21	uf_touch_report_tppower_to_str
   1f6f8: 9100014a     	add	x10, x10, #0x0
		000000000001f6f8:  R_AARCH64_ADD_ABS_LO12_NC	uf_touch_report_tppower_to_str
   1f6fc: 91004100     	add	x0, x8, #0x10
   1f700: f8697949     	ldr	x9, [x10, x9, lsl #3]
   1f704: 910003e2     	mov	x2, sp
   1f708: 52800041     	mov	w1, #0x2                // =2
   1f70c: a900ffe9     	stp	x9, xzr, [sp, #0x8]
   1f710: 94000000     	bl	0x1f710 <uf_touch_report+0x18c>
		000000000001f710:  R_AARCH64_CALL26	kobject_uevent_env
   1f714: f94007e2     	ldr	x2, [sp, #0x8]
   1f718: 90000000     	adrp	x0, 0x1f000 <tpd_report_work_init+0x15c>
		000000000001f718:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1add4
   1f71c: 91000000     	add	x0, x0, #0x0
		000000000001f71c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1add4
   1f720: 90000001     	adrp	x1, 0x1f000 <tpd_report_work_init+0x15c>
		000000000001f720:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d19a
   1f724: 91000021     	add	x1, x1, #0x0
		000000000001f724:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d19a
   1f728: 94000000     	bl	0x1f728 <uf_touch_report+0x1a4>
		000000000001f728:  R_AARCH64_CALL26	_printk
   1f72c: 17ffffd8     	b	0x1f68c <uf_touch_report+0x108>
   1f730: 94000000     	bl	0x1f730 <uf_touch_report+0x1ac>
		000000000001f730:  R_AARCH64_CALL26	__stack_chk_fail
   1f734: d42aa240     	brk	#0x5512
