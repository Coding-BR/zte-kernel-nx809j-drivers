
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a4a0 <uf_touch_report>:
    a4a0: d503233f     	paciasp
    a4a4: d100c3ff     	sub	sp, sp, #0x30
    a4a8: a9027bfd     	stp	x29, x30, [sp, #0x20]
    a4ac: 910083fd     	add	x29, sp, #0x20
    a4b0: d5384108     	mrs	x8, SP_EL0
    a4b4: f9438908     	ldr	x8, [x8, #0x710]
    a4b8: f81f83a8     	stur	x8, [x29, #-0x8]
    a4bc: 340006a0     	cbz	w0, 0xa590 <uf_touch_report+0xf0>
    a4c0: 90000008     	adrp	x8, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a4c0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    a4c4: f9400109     	ldr	x9, [x8]
		000000000000a4c4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    a4c8: 79403d2a     	ldrh	w10, [x9, #0x1e]
    a4cc: 79404528     	ldrh	w8, [x9, #0x22]
    a4d0: 4b08014b     	sub	w11, w10, w8
    a4d4: 0b0a010a     	add	w10, w8, w10
    a4d8: 6b01017f     	cmp	w11, w1
    a4dc: 7a41b144     	ccmp	w10, w1, #0x4, lt
    a4e0: 5400064d     	b.le	0xa5a8 <uf_touch_report+0x108>
    a4e4: 79404129     	ldrh	w9, [x9, #0x20]
    a4e8: 4b08012a     	sub	w10, w9, w8
    a4ec: 6b02015f     	cmp	w10, w2
    a4f0: 540005ca     	b.ge	0xa5a8 <uf_touch_report+0x108>
    a4f4: 0b080128     	add	w8, w9, w8
    a4f8: 6b02011f     	cmp	w8, w2
    a4fc: 5400056d     	b.le	0xa5a8 <uf_touch_report+0x108>
    a500: 7100287f     	cmp	w3, #0xa
    a504: 54000a62     	b.hs	0xa650 <uf_touch_report+0x1b0>
    a508: 90000009     	adrp	x9, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a508:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x708
    a50c: 91000129     	add	x9, x9, #0x0
		000000000000a50c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x708
    a510: b8635928     	ldr	w8, [x9, w3, uxtw #2]
    a514: 350004a8     	cbnz	w8, 0xa5a8 <uf_touch_report+0x108>
    a518: 9000000a     	adrp	x10, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a518:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x730
    a51c: 39400148     	ldrb	w8, [x10]
		000000000000a51c:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x730
    a520: 37000448     	tbnz	w8, #0x0, 0xa5a8 <uf_touch_report+0x108>
    a524: 90000008     	adrp	x8, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a524:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
    a528: 5280002b     	mov	w11, #0x1               // =1
    a52c: b823592b     	str	w11, [x9, w3, uxtw #2]
    a530: f9400108     	ldr	x8, [x8]
		000000000000a530:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
    a534: 3900014b     	strb	w11, [x10]
		000000000000a534:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x730
    a538: b4000568     	cbz	x8, 0xa5e4 <uf_touch_report+0x144>
    a53c: 90000009     	adrp	x9, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a53c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc031
    a540: 91000129     	add	x9, x9, #0x0
		000000000000a540:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc031
    a544: f90003e9     	str	x9, [sp]
    a548: 90000009     	adrp	x9, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a548:  R_AARCH64_ADR_PREL_PG_HI21	current_lcd_state
    a54c: b9400129     	ldr	w9, [x9]
		000000000000a54c:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
    a550: 71000d3f     	cmp	w9, #0x3
    a554: 540007e2     	b.hs	0xa650 <uf_touch_report+0x1b0>
    a558: 9000000a     	adrp	x10, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a558:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xe98
    a55c: 9100014a     	add	x10, x10, #0x0
		000000000000a55c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xe98
    a560: 91004100     	add	x0, x8, #0x10
    a564: f8697949     	ldr	x9, [x10, x9, lsl #3]
    a568: 910003e2     	mov	x2, sp
    a56c: 52800041     	mov	w1, #0x2                // =2
    a570: a900ffe9     	stp	x9, xzr, [sp, #0x8]
    a574: 94000000     	bl	0xa574 <uf_touch_report+0xd4>
		000000000000a574:  R_AARCH64_CALL26	kobject_uevent_env
    a578: f94007e2     	ldr	x2, [sp, #0x8]
    a57c: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a57c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x691b
    a580: 91000000     	add	x0, x0, #0x0
		000000000000a580:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x691b
    a584: 90000001     	adrp	x1, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a584:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc031
    a588: 91000021     	add	x1, x1, #0x0
		000000000000a588:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc031
    a58c: 1400002e     	b	0xa644 <uf_touch_report+0x1a4>
    a590: 7100247f     	cmp	w3, #0x9
    a594: 540005e8     	b.hi	0xa650 <uf_touch_report+0x1b0>
    a598: 90000009     	adrp	x9, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a598:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x708
    a59c: 91000129     	add	x9, x9, #0x0
		000000000000a59c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x708
    a5a0: b8635928     	ldr	w8, [x9, w3, uxtw #2]
    a5a4: 35000148     	cbnz	w8, 0xa5cc <uf_touch_report+0x12c>
    a5a8: d5384108     	mrs	x8, SP_EL0
    a5ac: f9438908     	ldr	x8, [x8, #0x710]
    a5b0: f85f83a9     	ldur	x9, [x29, #-0x8]
    a5b4: eb09011f     	cmp	x8, x9
    a5b8: 540004a1     	b.ne	0xa64c <uf_touch_report+0x1ac>
    a5bc: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    a5c0: 9100c3ff     	add	sp, sp, #0x30
    a5c4: d50323bf     	autiasp
    a5c8: d65f03c0     	ret
    a5cc: 90000008     	adrp	x8, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a5cc:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
    a5d0: b823593f     	str	wzr, [x9, w3, uxtw #2]
    a5d4: 90000009     	adrp	x9, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a5d4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x730
    a5d8: f9400108     	ldr	x8, [x8]
		000000000000a5d8:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
    a5dc: 3900013f     	strb	wzr, [x9]
		000000000000a5dc:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x730
    a5e0: b50000a8     	cbnz	x8, 0xa5f4 <uf_touch_report+0x154>
    a5e4: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a5e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x68e3
    a5e8: 91000000     	add	x0, x0, #0x0
		000000000000a5e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x68e3
    a5ec: 94000000     	bl	0xa5ec <uf_touch_report+0x14c>
		000000000000a5ec:  R_AARCH64_CALL26	_printk
    a5f0: 17ffffee     	b	0xa5a8 <uf_touch_report+0x108>
    a5f4: 90000009     	adrp	x9, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a5f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xac76
    a5f8: 91000129     	add	x9, x9, #0x0
		000000000000a5f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xac76
    a5fc: f90003e9     	str	x9, [sp]
    a600: 90000009     	adrp	x9, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a600:  R_AARCH64_ADR_PREL_PG_HI21	current_lcd_state
    a604: b9400129     	ldr	w9, [x9]
		000000000000a604:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
    a608: 71000d3f     	cmp	w9, #0x3
    a60c: 54000222     	b.hs	0xa650 <uf_touch_report+0x1b0>
    a610: 9000000a     	adrp	x10, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a610:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xe98
    a614: 9100014a     	add	x10, x10, #0x0
		000000000000a614:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xe98
    a618: 91004100     	add	x0, x8, #0x10
    a61c: f8697949     	ldr	x9, [x10, x9, lsl #3]
    a620: 910003e2     	mov	x2, sp
    a624: 52800041     	mov	w1, #0x2                // =2
    a628: a900ffe9     	stp	x9, xzr, [sp, #0x8]
    a62c: 94000000     	bl	0xa62c <uf_touch_report+0x18c>
		000000000000a62c:  R_AARCH64_CALL26	kobject_uevent_env
    a630: f94007e2     	ldr	x2, [sp, #0x8]
    a634: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a634:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x691b
    a638: 91000000     	add	x0, x0, #0x0
		000000000000a638:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x691b
    a63c: 90000001     	adrp	x1, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a63c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xac76
    a640: 91000021     	add	x1, x1, #0x0
		000000000000a640:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xac76
    a644: 94000000     	bl	0xa644 <uf_touch_report+0x1a4>
		000000000000a644:  R_AARCH64_CALL26	_printk
    a648: 17ffffd8     	b	0xa5a8 <uf_touch_report+0x108>
    a64c: 94000000     	bl	0xa64c <uf_touch_report+0x1ac>
		000000000000a64c:  R_AARCH64_CALL26	__stack_chk_fail
    a650: d42aa240     	brk	#0x5512
