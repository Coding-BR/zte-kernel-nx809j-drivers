
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001f5a0 <one_key_report>:
   1f5a0: d503233f     	paciasp
   1f5a4: d10103ff     	sub	sp, sp, #0x40
   1f5a8: a9027bfd     	stp	x29, x30, [sp, #0x20]
   1f5ac: f9001bf3     	str	x19, [sp, #0x30]
   1f5b0: 910083fd     	add	x29, sp, #0x20
   1f5b4: d5384108     	mrs	x8, SP_EL0
   1f5b8: f9438908     	ldr	x8, [x8, #0x710]
   1f5bc: f81f83a8     	stur	x8, [x29, #-0x8]
   1f5c0: 34000400     	cbz	w0, 0x1f640 <one_key_report+0xa0>
   1f5c4: 90000008     	adrp	x8, 0x1f000 <tpd_report_work_init>
		000000000001f5c4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1f5c8: f9400109     	ldr	x9, [x8]
		000000000001f5c8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1f5cc: 79403d2a     	ldrh	w10, [x9, #0x1e]
   1f5d0: 79404528     	ldrh	w8, [x9, #0x22]
   1f5d4: 4b08014b     	sub	w11, w10, w8
   1f5d8: 0b0a010a     	add	w10, w8, w10
   1f5dc: 6b01017f     	cmp	w11, w1
   1f5e0: 7a41b144     	ccmp	w10, w1, #0x4, lt
   1f5e4: 540003ad     	b.le	0x1f658 <one_key_report+0xb8>
   1f5e8: 79404129     	ldrh	w9, [x9, #0x20]
   1f5ec: 4b08012a     	sub	w10, w9, w8
   1f5f0: 6b02015f     	cmp	w10, w2
   1f5f4: 5400032a     	b.ge	0x1f658 <one_key_report+0xb8>
   1f5f8: 0b080128     	add	w8, w9, w8
   1f5fc: 6b02011f     	cmp	w8, w2
   1f600: 540002cd     	b.le	0x1f658 <one_key_report+0xb8>
   1f604: 7100287f     	cmp	w3, #0xa
   1f608: 54000682     	b.hs	0x1f6d8 <one_key_report+0x138>
   1f60c: 90000008     	adrp	x8, 0x1f000 <tpd_report_work_init>
		000000000001f60c:  R_AARCH64_ADR_PREL_PG_HI21	one_key_report.one_key_finger
   1f610: 91000108     	add	x8, x8, #0x0
		000000000001f610:  R_AARCH64_ADD_ABS_LO12_NC	one_key_report.one_key_finger
   1f614: 38634909     	ldrb	w9, [x8, w3, uxtw]
   1f618: 35000209     	cbnz	w9, 0x1f658 <one_key_report+0xb8>
   1f61c: 90000009     	adrp	x9, 0x1f000 <tpd_report_work_init>
		000000000001f61c:  R_AARCH64_ADR_PREL_PG_HI21	one_key_report.one_key_down
   1f620: 3940012a     	ldrb	w10, [x9]
		000000000001f620:  R_AARCH64_LDST8_ABS_LO12_NC	one_key_report.one_key_down
   1f624: 370001aa     	tbnz	w10, #0x0, 0x1f658 <one_key_report+0xb8>
   1f628: 5280002a     	mov	w10, #0x1               // =1
   1f62c: 3823490a     	strb	w10, [x8, w3, uxtw]
   1f630: 90000013     	adrp	x19, 0x1f000 <tpd_report_work_init>
		000000000001f630:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c19d
   1f634: 91000273     	add	x19, x19, #0x0
		000000000001f634:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c19d
   1f638: 3900012a     	strb	w10, [x9]
		000000000001f638:  R_AARCH64_LDST8_ABS_LO12_NC	one_key_report.one_key_down
   1f63c: 14000016     	b	0x1f694 <one_key_report+0xf4>
   1f640: 7100247f     	cmp	w3, #0x9
   1f644: 540004a8     	b.hi	0x1f6d8 <one_key_report+0x138>
   1f648: 90000008     	adrp	x8, 0x1f000 <tpd_report_work_init>
		000000000001f648:  R_AARCH64_ADR_PREL_PG_HI21	one_key_report.one_key_finger
   1f64c: 91000108     	add	x8, x8, #0x0
		000000000001f64c:  R_AARCH64_ADD_ABS_LO12_NC	one_key_report.one_key_finger
   1f650: 38634909     	ldrb	w9, [x8, w3, uxtw]
   1f654: 35000169     	cbnz	w9, 0x1f680 <one_key_report+0xe0>
   1f658: d5384108     	mrs	x8, SP_EL0
   1f65c: f9438908     	ldr	x8, [x8, #0x710]
   1f660: f85f83a9     	ldur	x9, [x29, #-0x8]
   1f664: eb09011f     	cmp	x8, x9
   1f668: 54000361     	b.ne	0x1f6d4 <one_key_report+0x134>
   1f66c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   1f670: f9401bf3     	ldr	x19, [sp, #0x30]
   1f674: 910103ff     	add	sp, sp, #0x40
   1f678: d50323bf     	autiasp
   1f67c: d65f03c0     	ret
   1f680: 3823491f     	strb	wzr, [x8, w3, uxtw]
   1f684: 90000008     	adrp	x8, 0x1f000 <tpd_report_work_init>
		000000000001f684:  R_AARCH64_ADR_PREL_PG_HI21	one_key_report.one_key_down
   1f688: 90000013     	adrp	x19, 0x1f000 <tpd_report_work_init>
		000000000001f688:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1941d
   1f68c: 91000273     	add	x19, x19, #0x0
		000000000001f68c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1941d
   1f690: 3900011f     	strb	wzr, [x8]
		000000000001f690:  R_AARCH64_LDST8_ABS_LO12_NC	one_key_report.one_key_down
   1f694: 90000008     	adrp	x8, 0x1f000 <tpd_report_work_init>
		000000000001f694:  R_AARCH64_ADR_PREL_PG_HI21	one_key_finger_id
   1f698: 91000108     	add	x8, x8, #0x0
		000000000001f698:  R_AARCH64_ADD_ABS_LO12_NC	one_key_finger_id
   1f69c: 90000009     	adrp	x9, 0x1f000 <tpd_report_work_init>
		000000000001f69c:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
   1f6a0: f8635908     	ldr	x8, [x8, w3, uxtw #3]
   1f6a4: 910003e2     	mov	x2, sp
   1f6a8: 52800041     	mov	w1, #0x2                // =2
   1f6ac: f9000bff     	str	xzr, [sp, #0x10]
   1f6b0: a90023f3     	stp	x19, x8, [sp]
   1f6b4: f9400128     	ldr	x8, [x9]
		000000000001f6b4:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
   1f6b8: 91004100     	add	x0, x8, #0x10
   1f6bc: 94000000     	bl	0x1f6bc <one_key_report+0x11c>
		000000000001f6bc:  R_AARCH64_CALL26	kobject_uevent_env
   1f6c0: 90000000     	adrp	x0, 0x1f000 <tpd_report_work_init>
		000000000001f6c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cebd
   1f6c4: 91000000     	add	x0, x0, #0x0
		000000000001f6c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cebd
   1f6c8: aa1303e1     	mov	x1, x19
   1f6cc: 94000000     	bl	0x1f6cc <one_key_report+0x12c>
		000000000001f6cc:  R_AARCH64_CALL26	_printk
   1f6d0: 17ffffe2     	b	0x1f658 <one_key_report+0xb8>
   1f6d4: 94000000     	bl	0x1f6d4 <one_key_report+0x134>
		000000000001f6d4:  R_AARCH64_CALL26	__stack_chk_fail
   1f6d8: d42aa240     	brk	#0x5512
