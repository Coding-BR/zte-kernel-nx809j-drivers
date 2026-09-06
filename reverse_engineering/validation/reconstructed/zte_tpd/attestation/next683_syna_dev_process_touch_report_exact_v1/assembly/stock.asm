
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d3ec <syna_dev_process_touch_report>:
    d3ec: d503233f     	paciasp
    d3f0: d10243ff     	sub	sp, sp, #0x90
    d3f4: a9037bfd     	stp	x29, x30, [sp, #0x30]
    d3f8: a9046ffc     	stp	x28, x27, [sp, #0x40]
    d3fc: a90567fa     	stp	x26, x25, [sp, #0x50]
    d400: a9065ff8     	stp	x24, x23, [sp, #0x60]
    d404: a90757f6     	stp	x22, x21, [sp, #0x70]
    d408: a9084ff4     	stp	x20, x19, [sp, #0x80]
    d40c: 9100c3fd     	add	x29, sp, #0x30
    d410: d5384108     	mrs	x8, SP_EL0
    d414: f9438908     	ldr	x8, [x8, #0x710]
    d418: f81f83a8     	stur	x8, [x29, #-0x8]
    d41c: b40020c3     	cbz	x3, 0xd834 <syna_dev_process_touch_report+0x448>
    d420: 12001c08     	and	w8, w0, #0xff
    d424: 7100451f     	cmp	w8, #0x11
    d428: 54002141     	b.ne	0xd850 <syna_dev_process_touch_report+0x464>
    d42c: b9438468     	ldr	w8, [x3, #0x384]
    d430: aa0303f3     	mov	x19, x3
    d434: 7100051f     	cmp	w8, #0x1
    d438: 5400008b     	b.lt	0xd448 <syna_dev_process_touch_report+0x5c>
    d43c: 39561268     	ldrb	w8, [x19, #0x584]
    d440: 7100051f     	cmp	w8, #0x1
    d444: 54001da1     	b.ne	0xd7f8 <syna_dev_process_touch_report+0x40c>
    d448: b945e268     	ldr	w8, [x19, #0x5e0]
    d44c: 34000288     	cbz	w8, 0xd49c <syna_dev_process_touch_report+0xb0>
    d450: 52840008     	mov	w8, #0x2000             // =8192
    d454: 7140c85f     	cmp	w2, #0x32, lsl #12      // =0x32000
    d458: f9423260     	ldr	x0, [x19, #0x460]
    d45c: 72a00068     	movk	w8, #0x3, lsl #16
    d460: 2a0203f6     	mov	w22, w2
    d464: aa0103f4     	mov	x20, x1
    d468: 1a883055     	csel	w21, w2, w8, lo
    d46c: aa1503e2     	mov	x2, x21
    d470: 94000000     	bl	0xd470 <syna_dev_process_touch_report+0x84>
		000000000000d470:  R_AARCH64_CALL26	memcpy
    d474: 52800028     	mov	w8, #0x1                // =1
    d478: 91112260     	add	x0, x19, #0x448
    d47c: 52800021     	mov	w1, #0x1                // =1
    d480: 52800022     	mov	w2, #0x1                // =1
    d484: aa1f03e3     	mov	x3, xzr
    d488: b9043a75     	str	w21, [x19, #0x438]
    d48c: b9046a68     	str	w8, [x19, #0x468]
    d490: 94000000     	bl	0xd490 <syna_dev_process_touch_report+0xa4>
		000000000000d490:  R_AARCH64_CALL26	__wake_up
    d494: aa1403e1     	mov	x1, x20
    d498: 2a1603e2     	mov	w2, w22
    d49c: aa1303e3     	mov	x3, x19
    d4a0: f8410460     	ldr	x0, [x3], #0x10
    d4a4: 94000000     	bl	0xd4a4 <syna_dev_process_touch_report+0xb8>
		000000000000d4a4:  R_AARCH64_CALL26	syna_tcm_parse_touch_report
    d4a8: 37f81e40     	tbnz	w0, #0x1f, 0xd870 <syna_dev_process_touch_report+0x484>
    d4ac: f941da74     	ldr	x20, [x19, #0x3b0]
    d4b0: b4001a54     	cbz	x20, 0xd7f8 <syna_dev_process_touch_report+0x40c>
    d4b4: f9400268     	ldr	x8, [x19]
    d4b8: 90000009     	adrp	x9, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d4b8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    d4bc: 9109e260     	add	x0, x19, #0x278
    d4c0: b9401919     	ldr	w25, [x8, #0x18]
    d4c4: f9400128     	ldr	x8, [x9]
		000000000000d4c4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d4c8: f9000be8     	str	x8, [sp, #0x10]
    d4cc: 94000000     	bl	0xd4cc <syna_dev_process_touch_report+0xe0>
		000000000000d4cc:  R_AARCH64_CALL26	mutex_lock
    d4d0: b9457e68     	ldr	w8, [x19, #0x57c]
    d4d4: 7100091f     	cmp	w8, #0x2
    d4d8: 54000081     	b.ne	0xd4e8 <syna_dev_process_touch_report+0xfc>
    d4dc: 394bd268     	ldrb	w8, [x19, #0x2f4]
    d4e0: 7100051f     	cmp	w8, #0x1
    d4e4: 54001d80     	b.eq	0xd894 <syna_dev_process_touch_report+0x4a8>
    d4e8: b9422268     	ldr	w8, [x19, #0x220]
    d4ec: 7102011f     	cmp	w8, #0x80
    d4f0: 540000a0     	b.eq	0xd504 <syna_dev_process_touch_report+0x118>
    d4f4: 7102051f     	cmp	w8, #0x81
    d4f8: 540000a1     	b.ne	0xd50c <syna_dev_process_touch_report+0x120>
    d4fc: 2a1f03e0     	mov	w0, wzr
    d500: 14000002     	b	0xd508 <syna_dev_process_touch_report+0x11c>
    d504: 52800020     	mov	w0, #0x1                // =1
    d508: 94000000     	bl	0xd508 <syna_dev_process_touch_report+0x11c>
		000000000000d508:  R_AARCH64_CALL26	report_ufp_uevent
    d50c: b9457e68     	ldr	w8, [x19, #0x57c]
    d510: 7100091f     	cmp	w8, #0x2
    d514: 540016e0     	b.eq	0xd7f0 <syna_dev_process_touch_report+0x404>
    d518: 340014f9     	cbz	w25, 0xd7b4 <syna_dev_process_touch_report+0x3c8>
    d51c: aa1f03f5     	mov	x21, xzr
    d520: 2a1f03fb     	mov	w27, wzr
    d524: 91099277     	add	x23, x19, #0x264
    d528: 9100a276     	add	x22, x19, #0x28
    d52c: f90007f9     	str	x25, [sp, #0x8]
    d530: 14000010     	b	0xd570 <syna_dev_process_touch_report+0x184>
    d534: aa1403e0     	mov	x0, x20
    d538: 52800061     	mov	w1, #0x3                // =3
    d53c: 528005e2     	mov	w2, #0x2f               // =47
    d540: 2a1503e3     	mov	w3, w21
    d544: 94000000     	bl	0xd544 <syna_dev_process_touch_report+0x158>
		000000000000d544:  R_AARCH64_CALL26	input_event
    d548: aa1403e0     	mov	x0, x20
    d54c: 2a1f03e1     	mov	w1, wzr
    d550: 2a1f03e2     	mov	w2, wzr
    d554: 94000000     	bl	0xd554 <syna_dev_process_touch_report+0x168>
		000000000000d554:  R_AARCH64_CALL26	input_mt_report_slot_state
    d558: 385f02c8     	ldurb	w8, [x22, #-0x10]
    d55c: 9100d2d6     	add	x22, x22, #0x34
    d560: 38356ae8     	strb	w8, [x23, x21]
    d564: 910006b5     	add	x21, x21, #0x1
    d568: eb15033f     	cmp	x25, x21
    d56c: 54001220     	b.eq	0xd7b0 <syna_dev_process_touch_report+0x3c4>
    d570: 385f02c8     	ldurb	w8, [x22, #-0x10]
    d574: 7100191f     	cmp	w8, #0x6
    d578: 540001a1     	b.ne	0xd5ac <syna_dev_process_touch_report+0x1c0>
    d57c: b945e668     	ldr	w8, [x19, #0x5e4]
    d580: 34000168     	cbz	w8, 0xd5ac <syna_dev_process_touch_report+0x1c0>
    d584: 90000008     	adrp	x8, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d584:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
    d588: f9400108     	ldr	x8, [x8]
		000000000000d588:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
    d58c: b4000de8     	cbz	x8, 0xd748 <syna_dev_process_touch_report+0x35c>
    d590: 90000009     	adrp	x9, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d590:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x360
    d594: b9400129     	ldr	w9, [x9]
		000000000000d594:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x360
    d598: 36f80e09     	tbz	w9, #0x1f, 0xd758 <syna_dev_process_touch_report+0x36c>
    d59c: 90000009     	adrp	x9, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d59c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7ac
    d5a0: b9400129     	ldr	w9, [x9]
		000000000000d5a0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x7ac
    d5a4: 7100093f     	cmp	w9, #0x2
    d5a8: 54000e6d     	b.le	0xd774 <syna_dev_process_touch_report+0x388>
    d5ac: f1002abf     	cmp	x21, #0xa
    d5b0: 54001b80     	b.eq	0xd920 <syna_dev_process_touch_report+0x534>
    d5b4: 38756ae9     	ldrb	w9, [x23, x21]
    d5b8: 385f02c8     	ldurb	w8, [x22, #-0x10]
    d5bc: 35000049     	cbnz	w9, 0xd5c4 <syna_dev_process_touch_report+0x1d8>
    d5c0: 34fffcc8     	cbz	w8, 0xd558 <syna_dev_process_touch_report+0x16c>
    d5c4: 51000509     	sub	w9, w8, #0x1
    d5c8: 7100093f     	cmp	w9, #0x2
    d5cc: 540001c2     	b.hs	0xd604 <syna_dev_process_touch_report+0x218>
    d5d0: b9461a68     	ldr	w8, [x19, #0x618]
    d5d4: b85f42d9     	ldur	w25, [x22, #-0xc]
    d5d8: 7100111f     	cmp	w8, #0x4
    d5dc: 54000361     	b.ne	0xd648 <syna_dev_process_touch_report+0x25c>
    d5e0: 297f72c8     	ldp	w8, w28, [x22, #-0x8]
    d5e4: 529999aa     	mov	w10, #0xcccd            // =52429
    d5e8: b94002d8     	ldr	w24, [x22]
    d5ec: 72b9998a     	movk	w10, #0xcccc, lsl #16
    d5f0: 9baa7f29     	umull	x9, w25, w10
    d5f4: 9baa7d08     	umull	x8, w8, w10
    d5f8: d363fd39     	lsr	x25, x9, #35
    d5fc: d363fd1a     	lsr	x26, x8, #35
    d600: 14000026     	b	0xd698 <syna_dev_process_touch_report+0x2ac>
    d604: 35fffaa8     	cbnz	w8, 0xd558 <syna_dev_process_touch_report+0x16c>
    d608: f9400be8     	ldr	x8, [sp, #0x10]
    d60c: 39406d08     	ldrb	w8, [x8, #0x1b]
    d610: 7100051f     	cmp	w8, #0x1
    d614: 54fff901     	b.ne	0xd534 <syna_dev_process_touch_report+0x148>
    d618: b9461a68     	ldr	w8, [x19, #0x618]
    d61c: 7100111f     	cmp	w8, #0x4
    d620: 54fff8a0     	b.eq	0xd534 <syna_dev_process_touch_report+0x148>
    d624: aa1403e0     	mov	x0, x20
    d628: 2a1503e1     	mov	w1, w21
    d62c: 94000000     	bl	0xd62c <syna_dev_process_touch_report+0x240>
		000000000000d62c:  R_AARCH64_CALL26	tpd_touch_release
    d630: 2a1f03e0     	mov	w0, wzr
    d634: 12800001     	mov	w1, #-0x1               // =-1
    d638: 12800002     	mov	w2, #-0x1               // =-1
    d63c: 2a1503e3     	mov	w3, w21
    d640: 94000000     	bl	0xd640 <syna_dev_process_touch_report+0x254>
		000000000000d640:  R_AARCH64_CALL26	one_key_report
    d644: 17ffffc5     	b	0xd558 <syna_dev_process_touch_report+0x16c>
    d648: f9400be8     	ldr	x8, [sp, #0x10]
    d64c: b94002d8     	ldr	w24, [x22]
    d650: 297f72da     	ldp	w26, w28, [x22, #-0x8]
    d654: 39406d08     	ldrb	w8, [x8, #0x1b]
    d658: 7100051f     	cmp	w8, #0x1
    d65c: 540001e1     	b.ne	0xd698 <syna_dev_process_touch_report+0x2ac>
    d660: 6b18039f     	cmp	w28, w24
    d664: aa1403e0     	mov	x0, x20
    d668: 2a1903e1     	mov	w1, w25
    d66c: 1a98c384     	csel	w4, w28, w24, gt
    d670: 2a1a03e2     	mov	w2, w26
    d674: 2a1503e3     	mov	w3, w21
    d678: 2a1f03e5     	mov	w5, wzr
    d67c: 94000000     	bl	0xd67c <syna_dev_process_touch_report+0x290>
		000000000000d67c:  R_AARCH64_CALL26	tpd_touch_press
    d680: 52800020     	mov	w0, #0x1                // =1
    d684: 2a1903e1     	mov	w1, w25
    d688: 2a1a03e2     	mov	w2, w26
    d68c: 2a1503e3     	mov	w3, w21
    d690: 94000000     	bl	0xd690 <syna_dev_process_touch_report+0x2a4>
		000000000000d690:  R_AARCH64_CALL26	one_key_report
    d694: 1400002a     	b	0xd73c <syna_dev_process_touch_report+0x350>
    d698: aa1403e0     	mov	x0, x20
    d69c: 52800061     	mov	w1, #0x3                // =3
    d6a0: 528005e2     	mov	w2, #0x2f               // =47
    d6a4: 2a1503e3     	mov	w3, w21
    d6a8: 94000000     	bl	0xd6a8 <syna_dev_process_touch_report+0x2bc>
		000000000000d6a8:  R_AARCH64_CALL26	input_event
    d6ac: aa1403e0     	mov	x0, x20
    d6b0: 2a1f03e1     	mov	w1, wzr
    d6b4: 52800022     	mov	w2, #0x1                // =1
    d6b8: 94000000     	bl	0xd6b8 <syna_dev_process_touch_report+0x2cc>
		000000000000d6b8:  R_AARCH64_CALL26	input_mt_report_slot_state
    d6bc: aa1403e0     	mov	x0, x20
    d6c0: 52800021     	mov	w1, #0x1                // =1
    d6c4: 52802942     	mov	w2, #0x14a              // =330
    d6c8: 52800023     	mov	w3, #0x1                // =1
    d6cc: 94000000     	bl	0xd6cc <syna_dev_process_touch_report+0x2e0>
		000000000000d6cc:  R_AARCH64_CALL26	input_event
    d6d0: aa1403e0     	mov	x0, x20
    d6d4: 52800021     	mov	w1, #0x1                // =1
    d6d8: 528028a2     	mov	w2, #0x145              // =325
    d6dc: 52800023     	mov	w3, #0x1                // =1
    d6e0: 94000000     	bl	0xd6e0 <syna_dev_process_touch_report+0x2f4>
		000000000000d6e0:  R_AARCH64_CALL26	input_event
    d6e4: aa1403e0     	mov	x0, x20
    d6e8: 52800061     	mov	w1, #0x3                // =3
    d6ec: 528006a2     	mov	w2, #0x35               // =53
    d6f0: 2a1903e3     	mov	w3, w25
    d6f4: 94000000     	bl	0xd6f4 <syna_dev_process_touch_report+0x308>
		000000000000d6f4:  R_AARCH64_CALL26	input_event
    d6f8: aa1403e0     	mov	x0, x20
    d6fc: 52800061     	mov	w1, #0x3                // =3
    d700: 528006c2     	mov	w2, #0x36               // =54
    d704: 2a1a03e3     	mov	w3, w26
    d708: 94000000     	bl	0xd708 <syna_dev_process_touch_report+0x31c>
		000000000000d708:  R_AARCH64_CALL26	input_event
    d70c: 6b18039f     	cmp	w28, w24
    d710: aa1403e0     	mov	x0, x20
    d714: 52800061     	mov	w1, #0x3                // =3
    d718: 1a98c383     	csel	w3, w28, w24, gt
    d71c: 52800602     	mov	w2, #0x30               // =48
    d720: 1a98b399     	csel	w25, w28, w24, lt
    d724: 94000000     	bl	0xd724 <syna_dev_process_touch_report+0x338>
		000000000000d724:  R_AARCH64_CALL26	input_event
    d728: aa1403e0     	mov	x0, x20
    d72c: 52800061     	mov	w1, #0x3                // =3
    d730: 52800622     	mov	w2, #0x31               // =49
    d734: 2a1903e3     	mov	w3, w25
    d738: 94000000     	bl	0xd738 <syna_dev_process_touch_report+0x34c>
		000000000000d738:  R_AARCH64_CALL26	input_event
    d73c: f94007f9     	ldr	x25, [sp, #0x8]
    d740: 1100077b     	add	w27, w27, #0x1
    d744: 17ffff85     	b	0xd558 <syna_dev_process_touch_report+0x16c>
    d748: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d748:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x261e
    d74c: 91000000     	add	x0, x0, #0x0
		000000000000d74c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x261e
    d750: 94000000     	bl	0xd750 <syna_dev_process_touch_report+0x364>
		000000000000d750:  R_AARCH64_CALL26	_printk
    d754: 17ffff96     	b	0xd5ac <syna_dev_process_touch_report+0x1c0>
    d758: 51000521     	sub	w1, w9, #0x1
    d75c: 90000008     	adrp	x8, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d75c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x360
    d760: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d760:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3229
    d764: 91000000     	add	x0, x0, #0x0
		000000000000d764:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3229
    d768: b9000101     	str	w1, [x8]
		000000000000d768:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x360
    d76c: 94000000     	bl	0xd76c <syna_dev_process_touch_report+0x380>
		000000000000d76c:  R_AARCH64_CALL26	_printk
    d770: 17ffff8f     	b	0xd5ac <syna_dev_process_touch_report+0x1c0>
    d774: 90000009     	adrp	x9, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d774:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc044
    d778: 91000129     	add	x9, x9, #0x0
		000000000000d778:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc044
    d77c: 91004100     	add	x0, x8, #0x10
    d780: 910063e2     	add	x2, sp, #0x18
    d784: 52800041     	mov	w1, #0x2                // =2
    d788: a901ffe9     	stp	x9, xzr, [sp, #0x18]
    d78c: 94000000     	bl	0xd78c <syna_dev_process_touch_report+0x3a0>
		000000000000d78c:  R_AARCH64_CALL26	kobject_uevent_env
    d790: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d790:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x191b
    d794: 91000000     	add	x0, x0, #0x0
		000000000000d794:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x191b
    d798: 94000000     	bl	0xd798 <syna_dev_process_touch_report+0x3ac>
		000000000000d798:  R_AARCH64_CALL26	_printk
    d79c: 90000009     	adrp	x9, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d79c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7ac
    d7a0: b9400128     	ldr	w8, [x9]
		000000000000d7a0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x7ac
    d7a4: 11000508     	add	w8, w8, #0x1
    d7a8: b9000128     	str	w8, [x9]
		000000000000d7a8:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x7ac
    d7ac: 17ffff80     	b	0xd5ac <syna_dev_process_touch_report+0x1c0>
    d7b0: 3500017b     	cbnz	w27, 0xd7dc <syna_dev_process_touch_report+0x3f0>
    d7b4: aa1403e0     	mov	x0, x20
    d7b8: 52800021     	mov	w1, #0x1                // =1
    d7bc: 52802942     	mov	w2, #0x14a              // =330
    d7c0: 2a1f03e3     	mov	w3, wzr
    d7c4: 94000000     	bl	0xd7c4 <syna_dev_process_touch_report+0x3d8>
		000000000000d7c4:  R_AARCH64_CALL26	input_event
    d7c8: aa1403e0     	mov	x0, x20
    d7cc: 52800021     	mov	w1, #0x1                // =1
    d7d0: 528028a2     	mov	w2, #0x145              // =325
    d7d4: 2a1f03e3     	mov	w3, wzr
    d7d8: 94000000     	bl	0xd7d8 <syna_dev_process_touch_report+0x3ec>
		000000000000d7d8:  R_AARCH64_CALL26	input_event
    d7dc: aa1403e0     	mov	x0, x20
    d7e0: 2a1f03e1     	mov	w1, wzr
    d7e4: 2a1f03e2     	mov	w2, wzr
    d7e8: 2a1f03e3     	mov	w3, wzr
    d7ec: 94000000     	bl	0xd7ec <syna_dev_process_touch_report+0x400>
		000000000000d7ec:  R_AARCH64_CALL26	input_event
    d7f0: 9109e260     	add	x0, x19, #0x278
    d7f4: 94000000     	bl	0xd7f4 <syna_dev_process_touch_report+0x408>
		000000000000d7f4:  R_AARCH64_CALL26	mutex_unlock
    d7f8: 2a1f03e0     	mov	w0, wzr
    d7fc: d5384108     	mrs	x8, SP_EL0
    d800: f9438908     	ldr	x8, [x8, #0x710]
    d804: f85f83a9     	ldur	x9, [x29, #-0x8]
    d808: eb09011f     	cmp	x8, x9
    d80c: 540008c1     	b.ne	0xd924 <syna_dev_process_touch_report+0x538>
    d810: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    d814: a94757f6     	ldp	x22, x21, [sp, #0x70]
    d818: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    d81c: a94567fa     	ldp	x26, x25, [sp, #0x50]
    d820: a9446ffc     	ldp	x28, x27, [sp, #0x40]
    d824: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    d828: 910243ff     	add	sp, sp, #0x90
    d82c: d50323bf     	autiasp
    d830: d65f03c0     	ret
    d834: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d834:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b51
    d838: 91000000     	add	x0, x0, #0x0
		000000000000d838:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b51
    d83c: 90000001     	adrp	x1, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d83c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x180
    d840: 91000021     	add	x1, x1, #0x0
		000000000000d840:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x180
    d844: 94000000     	bl	0xd844 <syna_dev_process_touch_report+0x458>
		000000000000d844:  R_AARCH64_CALL26	_printk
    d848: 128002a0     	mov	w0, #-0x16              // =-22
    d84c: 17ffffec     	b	0xd7fc <syna_dev_process_touch_report+0x410>
    d850: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d850:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x51aa
    d854: 91000000     	add	x0, x0, #0x0
		000000000000d854:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x51aa
    d858: 90000001     	adrp	x1, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d858:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x180
    d85c: 91000021     	add	x1, x1, #0x0
		000000000000d85c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x180
    d860: 2a0803e2     	mov	w2, w8
    d864: 94000000     	bl	0xd864 <syna_dev_process_touch_report+0x478>
		000000000000d864:  R_AARCH64_CALL26	_printk
    d868: 128002a0     	mov	w0, #-0x16              // =-22
    d86c: 17ffffe4     	b	0xd7fc <syna_dev_process_touch_report+0x410>
    d870: 90000008     	adrp	x8, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d870:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x971d
    d874: 91000108     	add	x8, x8, #0x0
		000000000000d874:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x971d
    d878: 90000001     	adrp	x1, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d878:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x180
    d87c: 91000021     	add	x1, x1, #0x0
		000000000000d87c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x180
    d880: 2a0003f3     	mov	w19, w0
    d884: aa0803e0     	mov	x0, x8
    d888: 94000000     	bl	0xd888 <syna_dev_process_touch_report+0x49c>
		000000000000d888:  R_AARCH64_CALL26	_printk
    d88c: 2a1303e0     	mov	w0, w19
    d890: 17ffffdb     	b	0xd7fc <syna_dev_process_touch_report+0x410>
    d894: b9422262     	ldr	w2, [x19, #0x220]
    d898: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d898:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b3d
    d89c: 91000000     	add	x0, x0, #0x0
		000000000000d89c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b3d
    d8a0: 90000001     	adrp	x1, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d8a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3fea
    d8a4: 91000021     	add	x1, x1, #0x0
		000000000000d8a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3fea
    d8a8: 94000000     	bl	0xd8a8 <syna_dev_process_touch_report+0x4bc>
		000000000000d8a8:  R_AARCH64_CALL26	_printk
    d8ac: b9422262     	ldr	w2, [x19, #0x220]
    d8b0: 7100045f     	cmp	w2, #0x1
    d8b4: 54000180     	b.eq	0xd8e4 <syna_dev_process_touch_report+0x4f8>
    d8b8: 7100405f     	cmp	w2, #0x10
    d8bc: 54000261     	b.ne	0xd908 <syna_dev_process_touch_report+0x51c>
    d8c0: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d8c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f48
    d8c4: 91000000     	add	x0, x0, #0x0
		000000000000d8c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f48
    d8c8: 90000001     	adrp	x1, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d8c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3fea
    d8cc: 91000021     	add	x1, x1, #0x0
		000000000000d8cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3fea
    d8d0: 94000000     	bl	0xd8d0 <syna_dev_process_touch_report+0x4e4>
		000000000000d8d0:  R_AARCH64_CALL26	_printk
    d8d4: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d8d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3dec
    d8d8: 91000000     	add	x0, x0, #0x0
		000000000000d8d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3dec
    d8dc: 94000000     	bl	0xd8dc <syna_dev_process_touch_report+0x4f0>
		000000000000d8dc:  R_AARCH64_CALL26	ufp_report_gesture_uevent
    d8e0: 17ffff02     	b	0xd4e8 <syna_dev_process_touch_report+0xfc>
    d8e4: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d8e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b64
    d8e8: 91000000     	add	x0, x0, #0x0
		000000000000d8e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b64
    d8ec: 90000001     	adrp	x1, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d8ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3fea
    d8f0: 91000021     	add	x1, x1, #0x0
		000000000000d8f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3fea
    d8f4: 94000000     	bl	0xd8f4 <syna_dev_process_touch_report+0x508>
		000000000000d8f4:  R_AARCH64_CALL26	_printk
    d8f8: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d8f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43ee
    d8fc: 91000000     	add	x0, x0, #0x0
		000000000000d8fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43ee
    d900: 94000000     	bl	0xd900 <syna_dev_process_touch_report+0x514>
		000000000000d900:  R_AARCH64_CALL26	ufp_report_gesture_uevent
    d904: 17fffef9     	b	0xd4e8 <syna_dev_process_touch_report+0xfc>
    d908: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d908:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x623d
    d90c: 91000000     	add	x0, x0, #0x0
		000000000000d90c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x623d
    d910: 90000001     	adrp	x1, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d910:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3fea
    d914: 91000021     	add	x1, x1, #0x0
		000000000000d914:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3fea
    d918: 94000000     	bl	0xd918 <syna_dev_process_touch_report+0x52c>
		000000000000d918:  R_AARCH64_CALL26	_printk
    d91c: 17fffef3     	b	0xd4e8 <syna_dev_process_touch_report+0xfc>
    d920: d42aa240     	brk	#0x5512
    d924: 94000000     	bl	0xd924 <syna_dev_process_touch_report+0x538>
		000000000000d924:  R_AARCH64_CALL26	__stack_chk_fail
