
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a360 <one_key_report>:
    a360: d503233f     	paciasp
    a364: d10103ff     	sub	sp, sp, #0x40
    a368: a9027bfd     	stp	x29, x30, [sp, #0x20]
    a36c: f9001bf3     	str	x19, [sp, #0x30]
    a370: 910083fd     	add	x29, sp, #0x20
    a374: d5384108     	mrs	x8, SP_EL0
    a378: f9438908     	ldr	x8, [x8, #0x710]
    a37c: f81f83a8     	stur	x8, [x29, #-0x8]
    a380: 34000400     	cbz	w0, 0xa400 <one_key_report+0xa0>
    a384: 90000008     	adrp	x8, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a384:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    a388: f9400109     	ldr	x9, [x8]
		000000000000a388:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    a38c: 79403d2a     	ldrh	w10, [x9, #0x1e]
    a390: 79404528     	ldrh	w8, [x9, #0x22]
    a394: 4b08014b     	sub	w11, w10, w8
    a398: 0b0a010a     	add	w10, w8, w10
    a39c: 6b01017f     	cmp	w11, w1
    a3a0: 7a41b144     	ccmp	w10, w1, #0x4, lt
    a3a4: 540003ad     	b.le	0xa418 <one_key_report+0xb8>
    a3a8: 79404129     	ldrh	w9, [x9, #0x20]
    a3ac: 4b08012a     	sub	w10, w9, w8
    a3b0: 6b02015f     	cmp	w10, w2
    a3b4: 5400032a     	b.ge	0xa418 <one_key_report+0xb8>
    a3b8: 0b080128     	add	w8, w9, w8
    a3bc: 6b02011f     	cmp	w8, w2
    a3c0: 540002cd     	b.le	0xa418 <one_key_report+0xb8>
    a3c4: 7100287f     	cmp	w3, #0xa
    a3c8: 54000682     	b.hs	0xa498 <one_key_report+0x138>
    a3cc: 90000008     	adrp	x8, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a3cc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6f9
    a3d0: 91000108     	add	x8, x8, #0x0
		000000000000a3d0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x6f9
    a3d4: 38634909     	ldrb	w9, [x8, w3, uxtw]
    a3d8: 35000209     	cbnz	w9, 0xa418 <one_key_report+0xb8>
    a3dc: 90000009     	adrp	x9, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a3dc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x704
    a3e0: 3940012a     	ldrb	w10, [x9]
		000000000000a3e0:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x704
    a3e4: 370001aa     	tbnz	w10, #0x0, 0xa418 <one_key_report+0xb8>
    a3e8: 5280002a     	mov	w10, #0x1               // =1
    a3ec: 3823490a     	strb	w10, [x8, w3, uxtw]
    a3f0: 90000013     	adrp	x19, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a3f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8b1a
    a3f4: 91000273     	add	x19, x19, #0x0
		000000000000a3f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8b1a
    a3f8: 3900012a     	strb	w10, [x9]
		000000000000a3f8:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x704
    a3fc: 14000016     	b	0xa454 <one_key_report+0xf4>
    a400: 7100247f     	cmp	w3, #0x9
    a404: 540004a8     	b.hi	0xa498 <one_key_report+0x138>
    a408: 90000008     	adrp	x8, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a408:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6f9
    a40c: 91000108     	add	x8, x8, #0x0
		000000000000a40c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x6f9
    a410: 38634909     	ldrb	w9, [x8, w3, uxtw]
    a414: 35000169     	cbnz	w9, 0xa440 <one_key_report+0xe0>
    a418: d5384108     	mrs	x8, SP_EL0
    a41c: f9438908     	ldr	x8, [x8, #0x710]
    a420: f85f83a9     	ldur	x9, [x29, #-0x8]
    a424: eb09011f     	cmp	x8, x9
    a428: 54000361     	b.ne	0xa494 <one_key_report+0x134>
    a42c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    a430: f9401bf3     	ldr	x19, [sp, #0x30]
    a434: 910103ff     	add	sp, sp, #0x40
    a438: d50323bf     	autiasp
    a43c: d65f03c0     	ret
    a440: 3823491f     	strb	wzr, [x8, w3, uxtw]
    a444: 90000008     	adrp	x8, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a444:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x704
    a448: 90000013     	adrp	x19, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a448:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3802
    a44c: 91000273     	add	x19, x19, #0x0
		000000000000a44c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3802
    a450: 3900011f     	strb	wzr, [x8]
		000000000000a450:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x704
    a454: 90000008     	adrp	x8, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a454:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xeb0
    a458: 91000108     	add	x8, x8, #0x0
		000000000000a458:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xeb0
    a45c: 90000009     	adrp	x9, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a45c:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
    a460: f8635908     	ldr	x8, [x8, w3, uxtw #3]
    a464: 910003e2     	mov	x2, sp
    a468: 52800041     	mov	w1, #0x2                // =2
    a46c: f9000bff     	str	xzr, [sp, #0x10]
    a470: a90023f3     	stp	x19, x8, [sp]
    a474: f9400128     	ldr	x8, [x9]
		000000000000a474:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
    a478: 91004100     	add	x0, x8, #0x10
    a47c: 94000000     	bl	0xa47c <one_key_report+0x11c>
		000000000000a47c:  R_AARCH64_CALL26	kobject_uevent_env
    a480: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a480:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa5c5
    a484: 91000000     	add	x0, x0, #0x0
		000000000000a484:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa5c5
    a488: aa1303e1     	mov	x1, x19
    a48c: 94000000     	bl	0xa48c <one_key_report+0x12c>
		000000000000a48c:  R_AARCH64_CALL26	_printk
    a490: 17ffffe2     	b	0xa418 <one_key_report+0xb8>
    a494: 94000000     	bl	0xa494 <one_key_report+0x134>
		000000000000a494:  R_AARCH64_CALL26	__stack_chk_fail
    a498: d42aa240     	brk	#0x5512
