
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001d2cc <syna_dev_process_touch_report>:
   1d2cc: d503233f     	paciasp
   1d2d0: d10243ff     	sub	sp, sp, #0x90
   1d2d4: a9037bfd     	stp	x29, x30, [sp, #0x30]
   1d2d8: a9046ffc     	stp	x28, x27, [sp, #0x40]
   1d2dc: a90567fa     	stp	x26, x25, [sp, #0x50]
   1d2e0: a9065ff8     	stp	x24, x23, [sp, #0x60]
   1d2e4: a90757f6     	stp	x22, x21, [sp, #0x70]
   1d2e8: a9084ff4     	stp	x20, x19, [sp, #0x80]
   1d2ec: 9100c3fd     	add	x29, sp, #0x30
   1d2f0: d5384108     	mrs	x8, SP_EL0
   1d2f4: f9438908     	ldr	x8, [x8, #0x710]
   1d2f8: f81f83a8     	stur	x8, [x29, #-0x8]
   1d2fc: b40020c3     	cbz	x3, 0x1d714 <syna_dev_process_touch_report+0x448>
   1d300: 12001c08     	and	w8, w0, #0xff
   1d304: 7100451f     	cmp	w8, #0x11
   1d308: 54002141     	b.ne	0x1d730 <syna_dev_process_touch_report+0x464>
   1d30c: b9438468     	ldr	w8, [x3, #0x384]
   1d310: aa0303f3     	mov	x19, x3
   1d314: 7100051f     	cmp	w8, #0x1
   1d318: 5400008b     	b.lt	0x1d328 <syna_dev_process_touch_report+0x5c>
   1d31c: 39561268     	ldrb	w8, [x19, #0x584]
   1d320: 7100051f     	cmp	w8, #0x1
   1d324: 54001da1     	b.ne	0x1d6d8 <syna_dev_process_touch_report+0x40c>
   1d328: b945e268     	ldr	w8, [x19, #0x5e0]
   1d32c: 34000288     	cbz	w8, 0x1d37c <syna_dev_process_touch_report+0xb0>
   1d330: 52840008     	mov	w8, #0x2000             // =8192
   1d334: 7140c85f     	cmp	w2, #0x32, lsl #12      // =0x32000
   1d338: f9423260     	ldr	x0, [x19, #0x460]
   1d33c: 72a00068     	movk	w8, #0x3, lsl #16
   1d340: 2a0203f6     	mov	w22, w2
   1d344: aa0103f4     	mov	x20, x1
   1d348: 1a883055     	csel	w21, w2, w8, lo
   1d34c: aa1503e2     	mov	x2, x21
   1d350: 94000000     	bl	0x1d350 <syna_dev_process_touch_report+0x84>
		000000000001d350:  R_AARCH64_CALL26	memcpy
   1d354: 52800028     	mov	w8, #0x1                // =1
   1d358: 91112260     	add	x0, x19, #0x448
   1d35c: 52800021     	mov	w1, #0x1                // =1
   1d360: 52800022     	mov	w2, #0x1                // =1
   1d364: aa1f03e3     	mov	x3, xzr
   1d368: b9043a75     	str	w21, [x19, #0x438]
   1d36c: b9046a68     	str	w8, [x19, #0x468]
   1d370: 94000000     	bl	0x1d370 <syna_dev_process_touch_report+0xa4>
		000000000001d370:  R_AARCH64_CALL26	__wake_up
   1d374: aa1403e1     	mov	x1, x20
   1d378: 2a1603e2     	mov	w2, w22
   1d37c: aa1303e3     	mov	x3, x19
   1d380: f8410460     	ldr	x0, [x3], #0x10
   1d384: 94000000     	bl	0x1d384 <syna_dev_process_touch_report+0xb8>
		000000000001d384:  R_AARCH64_CALL26	syna_tcm_parse_touch_report
   1d388: 37f81e40     	tbnz	w0, #0x1f, 0x1d750 <syna_dev_process_touch_report+0x484>
   1d38c: f941da74     	ldr	x20, [x19, #0x3b0]
   1d390: b4001a54     	cbz	x20, 0x1d6d8 <syna_dev_process_touch_report+0x40c>
   1d394: f9400268     	ldr	x8, [x19]
   1d398: 90000009     	adrp	x9, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d398:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1d39c: 9109e260     	add	x0, x19, #0x278
   1d3a0: b9401919     	ldr	w25, [x8, #0x18]
   1d3a4: f9400128     	ldr	x8, [x9]
		000000000001d3a4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1d3a8: f9000be8     	str	x8, [sp, #0x10]
   1d3ac: 94000000     	bl	0x1d3ac <syna_dev_process_touch_report+0xe0>
		000000000001d3ac:  R_AARCH64_CALL26	mutex_lock
   1d3b0: b9457e68     	ldr	w8, [x19, #0x57c]
   1d3b4: 7100091f     	cmp	w8, #0x2
   1d3b8: 54000081     	b.ne	0x1d3c8 <syna_dev_process_touch_report+0xfc>
   1d3bc: 394bd268     	ldrb	w8, [x19, #0x2f4]
   1d3c0: 7100051f     	cmp	w8, #0x1
   1d3c4: 54001d80     	b.eq	0x1d774 <syna_dev_process_touch_report+0x4a8>
   1d3c8: b9422268     	ldr	w8, [x19, #0x220]
   1d3cc: 7102011f     	cmp	w8, #0x80
   1d3d0: 540000a0     	b.eq	0x1d3e4 <syna_dev_process_touch_report+0x118>
   1d3d4: 7102051f     	cmp	w8, #0x81
   1d3d8: 540000a1     	b.ne	0x1d3ec <syna_dev_process_touch_report+0x120>
   1d3dc: 2a1f03e0     	mov	w0, wzr
   1d3e0: 14000002     	b	0x1d3e8 <syna_dev_process_touch_report+0x11c>
   1d3e4: 52800020     	mov	w0, #0x1                // =1
   1d3e8: 94000000     	bl	0x1d3e8 <syna_dev_process_touch_report+0x11c>
		000000000001d3e8:  R_AARCH64_CALL26	report_ufp_uevent
   1d3ec: b9457e68     	ldr	w8, [x19, #0x57c]
   1d3f0: 7100091f     	cmp	w8, #0x2
   1d3f4: 540016e0     	b.eq	0x1d6d0 <syna_dev_process_touch_report+0x404>
   1d3f8: 340014f9     	cbz	w25, 0x1d694 <syna_dev_process_touch_report+0x3c8>
   1d3fc: aa1f03f5     	mov	x21, xzr
   1d400: 2a1f03fb     	mov	w27, wzr
   1d404: 91099277     	add	x23, x19, #0x264
   1d408: 9100a276     	add	x22, x19, #0x28
   1d40c: f90007f9     	str	x25, [sp, #0x8]
   1d410: 14000010     	b	0x1d450 <syna_dev_process_touch_report+0x184>
   1d414: aa1403e0     	mov	x0, x20
   1d418: 52800061     	mov	w1, #0x3                // =3
   1d41c: 528005e2     	mov	w2, #0x2f               // =47
   1d420: 2a1503e3     	mov	w3, w21
   1d424: 94000000     	bl	0x1d424 <syna_dev_process_touch_report+0x158>
		000000000001d424:  R_AARCH64_CALL26	input_event
   1d428: aa1403e0     	mov	x0, x20
   1d42c: 2a1f03e1     	mov	w1, wzr
   1d430: 2a1f03e2     	mov	w2, wzr
   1d434: 94000000     	bl	0x1d434 <syna_dev_process_touch_report+0x168>
		000000000001d434:  R_AARCH64_CALL26	input_mt_report_slot_state
   1d438: 385f02c8     	ldurb	w8, [x22, #-0x10]
   1d43c: 9100d2d6     	add	x22, x22, #0x34
   1d440: 38356ae8     	strb	w8, [x23, x21]
   1d444: 910006b5     	add	x21, x21, #0x1
   1d448: eb15033f     	cmp	x25, x21
   1d44c: 54001220     	b.eq	0x1d690 <syna_dev_process_touch_report+0x3c4>
   1d450: 385f02c8     	ldurb	w8, [x22, #-0x10]
   1d454: 7100191f     	cmp	w8, #0x6
   1d458: 540001a1     	b.ne	0x1d48c <syna_dev_process_touch_report+0x1c0>
   1d45c: b945e668     	ldr	w8, [x19, #0x5e4]
   1d460: 34000168     	cbz	w8, 0x1d48c <syna_dev_process_touch_report+0x1c0>
   1d464: 90000008     	adrp	x8, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d464:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
   1d468: f9400108     	ldr	x8, [x8]
		000000000001d468:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
   1d46c: b4000de8     	cbz	x8, 0x1d628 <syna_dev_process_touch_report+0x35c>
   1d470: 90000009     	adrp	x9, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d470:  R_AARCH64_ADR_PREL_PG_HI21	large_area_ignore_count
   1d474: b9400129     	ldr	w9, [x9]
		000000000001d474:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_ignore_count
   1d478: 36f80e09     	tbz	w9, #0x1f, 0x1d638 <syna_dev_process_touch_report+0x36c>
   1d47c: 90000009     	adrp	x9, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d47c:  R_AARCH64_ADR_PREL_PG_HI21	large_area_uevent_count
   1d480: b9400129     	ldr	w9, [x9]
		000000000001d480:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_uevent_count
   1d484: 7100093f     	cmp	w9, #0x2
   1d488: 54000e6d     	b.le	0x1d654 <syna_dev_process_touch_report+0x388>
   1d48c: f1002abf     	cmp	x21, #0xa
   1d490: 54001b80     	b.eq	0x1d800 <syna_dev_process_touch_report+0x534>
   1d494: 38756ae9     	ldrb	w9, [x23, x21]
   1d498: 385f02c8     	ldurb	w8, [x22, #-0x10]
   1d49c: 35000049     	cbnz	w9, 0x1d4a4 <syna_dev_process_touch_report+0x1d8>
   1d4a0: 34fffcc8     	cbz	w8, 0x1d438 <syna_dev_process_touch_report+0x16c>
   1d4a4: 51000509     	sub	w9, w8, #0x1
   1d4a8: 7100093f     	cmp	w9, #0x2
   1d4ac: 540001c2     	b.hs	0x1d4e4 <syna_dev_process_touch_report+0x218>
   1d4b0: b9461a68     	ldr	w8, [x19, #0x618]
   1d4b4: b85f42d9     	ldur	w25, [x22, #-0xc]
   1d4b8: 7100111f     	cmp	w8, #0x4
   1d4bc: 54000361     	b.ne	0x1d528 <syna_dev_process_touch_report+0x25c>
   1d4c0: 297f72c8     	ldp	w8, w28, [x22, #-0x8]
   1d4c4: 529999aa     	mov	w10, #0xcccd            // =52429
   1d4c8: b94002d8     	ldr	w24, [x22]
   1d4cc: 72b9998a     	movk	w10, #0xcccc, lsl #16
   1d4d0: 9baa7f29     	umull	x9, w25, w10
   1d4d4: 9baa7d08     	umull	x8, w8, w10
   1d4d8: d363fd39     	lsr	x25, x9, #35
   1d4dc: d363fd1a     	lsr	x26, x8, #35
   1d4e0: 14000026     	b	0x1d578 <syna_dev_process_touch_report+0x2ac>
   1d4e4: 35fffaa8     	cbnz	w8, 0x1d438 <syna_dev_process_touch_report+0x16c>
   1d4e8: f9400be8     	ldr	x8, [sp, #0x10]
   1d4ec: 39406d08     	ldrb	w8, [x8, #0x1b]
   1d4f0: 7100051f     	cmp	w8, #0x1
   1d4f4: 54fff901     	b.ne	0x1d414 <syna_dev_process_touch_report+0x148>
   1d4f8: b9461a68     	ldr	w8, [x19, #0x618]
   1d4fc: 7100111f     	cmp	w8, #0x4
   1d500: 54fff8a0     	b.eq	0x1d414 <syna_dev_process_touch_report+0x148>
   1d504: aa1403e0     	mov	x0, x20
   1d508: 2a1503e1     	mov	w1, w21
   1d50c: 94000000     	bl	0x1d50c <syna_dev_process_touch_report+0x240>
		000000000001d50c:  R_AARCH64_CALL26	tpd_touch_release
   1d510: 2a1f03e0     	mov	w0, wzr
   1d514: 12800001     	mov	w1, #-0x1               // =-1
   1d518: 12800002     	mov	w2, #-0x1               // =-1
   1d51c: 2a1503e3     	mov	w3, w21
   1d520: 94000000     	bl	0x1d520 <syna_dev_process_touch_report+0x254>
		000000000001d520:  R_AARCH64_CALL26	one_key_report
   1d524: 17ffffc5     	b	0x1d438 <syna_dev_process_touch_report+0x16c>
   1d528: f9400be8     	ldr	x8, [sp, #0x10]
   1d52c: b94002d8     	ldr	w24, [x22]
   1d530: 297f72da     	ldp	w26, w28, [x22, #-0x8]
   1d534: 39406d08     	ldrb	w8, [x8, #0x1b]
   1d538: 7100051f     	cmp	w8, #0x1
   1d53c: 540001e1     	b.ne	0x1d578 <syna_dev_process_touch_report+0x2ac>
   1d540: 6b18039f     	cmp	w28, w24
   1d544: aa1403e0     	mov	x0, x20
   1d548: 2a1903e1     	mov	w1, w25
   1d54c: 1a98c384     	csel	w4, w28, w24, gt
   1d550: 2a1a03e2     	mov	w2, w26
   1d554: 2a1503e3     	mov	w3, w21
   1d558: 2a1f03e5     	mov	w5, wzr
   1d55c: 94000000     	bl	0x1d55c <syna_dev_process_touch_report+0x290>
		000000000001d55c:  R_AARCH64_CALL26	tpd_touch_press
   1d560: 52800020     	mov	w0, #0x1                // =1
   1d564: 2a1903e1     	mov	w1, w25
   1d568: 2a1a03e2     	mov	w2, w26
   1d56c: 2a1503e3     	mov	w3, w21
   1d570: 94000000     	bl	0x1d570 <syna_dev_process_touch_report+0x2a4>
		000000000001d570:  R_AARCH64_CALL26	one_key_report
   1d574: 1400002a     	b	0x1d61c <syna_dev_process_touch_report+0x350>
   1d578: aa1403e0     	mov	x0, x20
   1d57c: 52800061     	mov	w1, #0x3                // =3
   1d580: 528005e2     	mov	w2, #0x2f               // =47
   1d584: 2a1503e3     	mov	w3, w21
   1d588: 94000000     	bl	0x1d588 <syna_dev_process_touch_report+0x2bc>
		000000000001d588:  R_AARCH64_CALL26	input_event
   1d58c: aa1403e0     	mov	x0, x20
   1d590: 2a1f03e1     	mov	w1, wzr
   1d594: 52800022     	mov	w2, #0x1                // =1
   1d598: 94000000     	bl	0x1d598 <syna_dev_process_touch_report+0x2cc>
		000000000001d598:  R_AARCH64_CALL26	input_mt_report_slot_state
   1d59c: aa1403e0     	mov	x0, x20
   1d5a0: 52800021     	mov	w1, #0x1                // =1
   1d5a4: 52802942     	mov	w2, #0x14a              // =330
   1d5a8: 52800023     	mov	w3, #0x1                // =1
   1d5ac: 94000000     	bl	0x1d5ac <syna_dev_process_touch_report+0x2e0>
		000000000001d5ac:  R_AARCH64_CALL26	input_event
   1d5b0: aa1403e0     	mov	x0, x20
   1d5b4: 52800021     	mov	w1, #0x1                // =1
   1d5b8: 528028a2     	mov	w2, #0x145              // =325
   1d5bc: 52800023     	mov	w3, #0x1                // =1
   1d5c0: 94000000     	bl	0x1d5c0 <syna_dev_process_touch_report+0x2f4>
		000000000001d5c0:  R_AARCH64_CALL26	input_event
   1d5c4: aa1403e0     	mov	x0, x20
   1d5c8: 52800061     	mov	w1, #0x3                // =3
   1d5cc: 528006a2     	mov	w2, #0x35               // =53
   1d5d0: 2a1903e3     	mov	w3, w25
   1d5d4: 94000000     	bl	0x1d5d4 <syna_dev_process_touch_report+0x308>
		000000000001d5d4:  R_AARCH64_CALL26	input_event
   1d5d8: aa1403e0     	mov	x0, x20
   1d5dc: 52800061     	mov	w1, #0x3                // =3
   1d5e0: 528006c2     	mov	w2, #0x36               // =54
   1d5e4: 2a1a03e3     	mov	w3, w26
   1d5e8: 94000000     	bl	0x1d5e8 <syna_dev_process_touch_report+0x31c>
		000000000001d5e8:  R_AARCH64_CALL26	input_event
   1d5ec: 6b18039f     	cmp	w28, w24
   1d5f0: aa1403e0     	mov	x0, x20
   1d5f4: 52800061     	mov	w1, #0x3                // =3
   1d5f8: 1a98c383     	csel	w3, w28, w24, gt
   1d5fc: 52800602     	mov	w2, #0x30               // =48
   1d600: 1a98b399     	csel	w25, w28, w24, lt
   1d604: 94000000     	bl	0x1d604 <syna_dev_process_touch_report+0x338>
		000000000001d604:  R_AARCH64_CALL26	input_event
   1d608: aa1403e0     	mov	x0, x20
   1d60c: 52800061     	mov	w1, #0x3                // =3
   1d610: 52800622     	mov	w2, #0x31               // =49
   1d614: 2a1903e3     	mov	w3, w25
   1d618: 94000000     	bl	0x1d618 <syna_dev_process_touch_report+0x34c>
		000000000001d618:  R_AARCH64_CALL26	input_event
   1d61c: f94007f9     	ldr	x25, [sp, #0x8]
   1d620: 1100077b     	add	w27, w27, #0x1
   1d624: 17ffff85     	b	0x1d438 <syna_dev_process_touch_report+0x16c>
   1d628: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d628:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x184d1
   1d62c: 91000000     	add	x0, x0, #0x0
		000000000001d62c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x184d1
   1d630: 94000000     	bl	0x1d630 <syna_dev_process_touch_report+0x364>
		000000000001d630:  R_AARCH64_CALL26	_printk
   1d634: 17ffff96     	b	0x1d48c <syna_dev_process_touch_report+0x1c0>
   1d638: 51000521     	sub	w1, w9, #0x1
   1d63c: 90000008     	adrp	x8, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d63c:  R_AARCH64_ADR_PREL_PG_HI21	large_area_ignore_count
   1d640: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d640:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18b7d
   1d644: 91000000     	add	x0, x0, #0x0
		000000000001d644:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18b7d
   1d648: b9000101     	str	w1, [x8]
		000000000001d648:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_ignore_count
   1d64c: 94000000     	bl	0x1d64c <syna_dev_process_touch_report+0x380>
		000000000001d64c:  R_AARCH64_CALL26	_printk
   1d650: 17ffff8f     	b	0x1d48c <syna_dev_process_touch_report+0x1c0>
   1d654: 90000009     	adrp	x9, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d654:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c869
   1d658: 91000129     	add	x9, x9, #0x0
		000000000001d658:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c869
   1d65c: 91004100     	add	x0, x8, #0x10
   1d660: 910063e2     	add	x2, sp, #0x18
   1d664: 52800041     	mov	w1, #0x2                // =2
   1d668: a901ffe9     	stp	x9, xzr, [sp, #0x18]
   1d66c: 94000000     	bl	0x1d66c <syna_dev_process_touch_report+0x3a0>
		000000000001d66c:  R_AARCH64_CALL26	kobject_uevent_env
   1d670: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d670:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18010
   1d674: 91000000     	add	x0, x0, #0x0
		000000000001d674:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18010
   1d678: 94000000     	bl	0x1d678 <syna_dev_process_touch_report+0x3ac>
		000000000001d678:  R_AARCH64_CALL26	_printk
   1d67c: 90000009     	adrp	x9, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d67c:  R_AARCH64_ADR_PREL_PG_HI21	large_area_uevent_count
   1d680: b9400128     	ldr	w8, [x9]
		000000000001d680:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_uevent_count
   1d684: 11000508     	add	w8, w8, #0x1
   1d688: b9000128     	str	w8, [x9]
		000000000001d688:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_uevent_count
   1d68c: 17ffff80     	b	0x1d48c <syna_dev_process_touch_report+0x1c0>
   1d690: 3500017b     	cbnz	w27, 0x1d6bc <syna_dev_process_touch_report+0x3f0>
   1d694: aa1403e0     	mov	x0, x20
   1d698: 52800021     	mov	w1, #0x1                // =1
   1d69c: 52802942     	mov	w2, #0x14a              // =330
   1d6a0: 2a1f03e3     	mov	w3, wzr
   1d6a4: 94000000     	bl	0x1d6a4 <syna_dev_process_touch_report+0x3d8>
		000000000001d6a4:  R_AARCH64_CALL26	input_event
   1d6a8: aa1403e0     	mov	x0, x20
   1d6ac: 52800021     	mov	w1, #0x1                // =1
   1d6b0: 528028a2     	mov	w2, #0x145              // =325
   1d6b4: 2a1f03e3     	mov	w3, wzr
   1d6b8: 94000000     	bl	0x1d6b8 <syna_dev_process_touch_report+0x3ec>
		000000000001d6b8:  R_AARCH64_CALL26	input_event
   1d6bc: aa1403e0     	mov	x0, x20
   1d6c0: 2a1f03e1     	mov	w1, wzr
   1d6c4: 2a1f03e2     	mov	w2, wzr
   1d6c8: 2a1f03e3     	mov	w3, wzr
   1d6cc: 94000000     	bl	0x1d6cc <syna_dev_process_touch_report+0x400>
		000000000001d6cc:  R_AARCH64_CALL26	input_event
   1d6d0: 9109e260     	add	x0, x19, #0x278
   1d6d4: 94000000     	bl	0x1d6d4 <syna_dev_process_touch_report+0x408>
		000000000001d6d4:  R_AARCH64_CALL26	mutex_unlock
   1d6d8: 2a1f03e0     	mov	w0, wzr
   1d6dc: d5384108     	mrs	x8, SP_EL0
   1d6e0: f9438908     	ldr	x8, [x8, #0x710]
   1d6e4: f85f83a9     	ldur	x9, [x29, #-0x8]
   1d6e8: eb09011f     	cmp	x8, x9
   1d6ec: 540008c1     	b.ne	0x1d804 <syna_dev_process_touch_report+0x538>
   1d6f0: a9484ff4     	ldp	x20, x19, [sp, #0x80]
   1d6f4: a94757f6     	ldp	x22, x21, [sp, #0x70]
   1d6f8: a9465ff8     	ldp	x24, x23, [sp, #0x60]
   1d6fc: a94567fa     	ldp	x26, x25, [sp, #0x50]
   1d700: a9446ffc     	ldp	x28, x27, [sp, #0x40]
   1d704: a9437bfd     	ldp	x29, x30, [sp, #0x30]
   1d708: 910243ff     	add	sp, sp, #0x90
   1d70c: d50323bf     	autiasp
   1d710: d65f03c0     	ret
   1d714: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d714:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x186dc
   1d718: 91000000     	add	x0, x0, #0x0
		000000000001d718:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x186dc
   1d71c: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d71c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17516
   1d720: 91000021     	add	x1, x1, #0x0
		000000000001d720:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17516
   1d724: 94000000     	bl	0x1d724 <syna_dev_process_touch_report+0x458>
		000000000001d724:  R_AARCH64_CALL26	_printk
   1d728: 128002a0     	mov	w0, #-0x16              // =-22
   1d72c: 17ffffec     	b	0x1d6dc <syna_dev_process_touch_report+0x410>
   1d730: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d730:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1980b
   1d734: 91000000     	add	x0, x0, #0x0
		000000000001d734:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1980b
   1d738: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d738:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17516
   1d73c: 91000021     	add	x1, x1, #0x0
		000000000001d73c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17516
   1d740: 2a0803e2     	mov	w2, w8
   1d744: 94000000     	bl	0x1d744 <syna_dev_process_touch_report+0x478>
		000000000001d744:  R_AARCH64_CALL26	_printk
   1d748: 128002a0     	mov	w0, #-0x16              // =-22
   1d74c: 17ffffe4     	b	0x1d6dc <syna_dev_process_touch_report+0x410>
   1d750: 90000008     	adrp	x8, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d750:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b70b
   1d754: 91000108     	add	x8, x8, #0x0
		000000000001d754:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b70b
   1d758: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d758:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17516
   1d75c: 91000021     	add	x1, x1, #0x0
		000000000001d75c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17516
   1d760: 2a0003f3     	mov	w19, w0
   1d764: aa0803e0     	mov	x0, x8
   1d768: 94000000     	bl	0x1d768 <syna_dev_process_touch_report+0x49c>
		000000000001d768:  R_AARCH64_CALL26	_printk
   1d76c: 2a1303e0     	mov	w0, w19
   1d770: 17ffffdb     	b	0x1d6dc <syna_dev_process_touch_report+0x410>
   1d774: b9422262     	ldr	w2, [x19, #0x220]
   1d778: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d778:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19522
   1d77c: 91000000     	add	x0, x0, #0x0
		000000000001d77c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19522
   1d780: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d780:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18fda
   1d784: 91000021     	add	x1, x1, #0x0
		000000000001d784:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18fda
   1d788: 94000000     	bl	0x1d788 <syna_dev_process_touch_report+0x4bc>
		000000000001d788:  R_AARCH64_CALL26	_printk
   1d78c: b9422262     	ldr	w2, [x19, #0x220]
   1d790: 7100045f     	cmp	w2, #0x1
   1d794: 54000180     	b.eq	0x1d7c4 <syna_dev_process_touch_report+0x4f8>
   1d798: 7100405f     	cmp	w2, #0x10
   1d79c: 54000261     	b.ne	0x1d7e8 <syna_dev_process_touch_report+0x51c>
   1d7a0: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d7a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1826c
   1d7a4: 91000000     	add	x0, x0, #0x0
		000000000001d7a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1826c
   1d7a8: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d7a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18fda
   1d7ac: 91000021     	add	x1, x1, #0x0
		000000000001d7ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18fda
   1d7b0: 94000000     	bl	0x1d7b0 <syna_dev_process_touch_report+0x4e4>
		000000000001d7b0:  R_AARCH64_CALL26	_printk
   1d7b4: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d7b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18fca
   1d7b8: 91000000     	add	x0, x0, #0x0
		000000000001d7b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18fca
   1d7bc: 94000000     	bl	0x1d7bc <syna_dev_process_touch_report+0x4f0>
		000000000001d7bc:  R_AARCH64_CALL26	ufp_report_gesture_uevent
   1d7c0: 17ffff02     	b	0x1d3c8 <syna_dev_process_touch_report+0xfc>
   1d7c4: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d7c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19549
   1d7c8: 91000000     	add	x0, x0, #0x0
		000000000001d7c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19549
   1d7cc: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d7cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18fda
   1d7d0: 91000021     	add	x1, x1, #0x0
		000000000001d7d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18fda
   1d7d4: 94000000     	bl	0x1d7d4 <syna_dev_process_touch_report+0x508>
		000000000001d7d4:  R_AARCH64_CALL26	_printk
   1d7d8: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d7d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x192a1
   1d7dc: 91000000     	add	x0, x0, #0x0
		000000000001d7dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x192a1
   1d7e0: 94000000     	bl	0x1d7e0 <syna_dev_process_touch_report+0x514>
		000000000001d7e0:  R_AARCH64_CALL26	ufp_report_gesture_uevent
   1d7e4: 17fffef9     	b	0x1d3c8 <syna_dev_process_touch_report+0xfc>
   1d7e8: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d7e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19ea5
   1d7ec: 91000000     	add	x0, x0, #0x0
		000000000001d7ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19ea5
   1d7f0: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d7f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18fda
   1d7f4: 91000021     	add	x1, x1, #0x0
		000000000001d7f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18fda
   1d7f8: 94000000     	bl	0x1d7f8 <syna_dev_process_touch_report+0x52c>
		000000000001d7f8:  R_AARCH64_CALL26	_printk
   1d7fc: 17fffef3     	b	0x1d3c8 <syna_dev_process_touch_report+0xfc>
   1d800: d42aa240     	brk	#0x5512
   1d804: 94000000     	bl	0x1d804 <syna_dev_process_touch_report+0x538>
		000000000001d804:  R_AARCH64_CALL26	__stack_chk_fail
