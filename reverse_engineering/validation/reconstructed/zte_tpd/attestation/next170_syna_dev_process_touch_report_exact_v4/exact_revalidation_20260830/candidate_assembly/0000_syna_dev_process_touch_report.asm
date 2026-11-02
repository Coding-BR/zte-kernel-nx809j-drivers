
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001d270 <syna_dev_process_touch_report>:
   1d270: d503233f     	paciasp
   1d274: d10243ff     	sub	sp, sp, #0x90
   1d278: a9037bfd     	stp	x29, x30, [sp, #0x30]
   1d27c: a9046ffc     	stp	x28, x27, [sp, #0x40]
   1d280: a90567fa     	stp	x26, x25, [sp, #0x50]
   1d284: a9065ff8     	stp	x24, x23, [sp, #0x60]
   1d288: a90757f6     	stp	x22, x21, [sp, #0x70]
   1d28c: a9084ff4     	stp	x20, x19, [sp, #0x80]
   1d290: 9100c3fd     	add	x29, sp, #0x30
   1d294: d5384108     	mrs	x8, SP_EL0
   1d298: f9438908     	ldr	x8, [x8, #0x710]
   1d29c: f81f83a8     	stur	x8, [x29, #-0x8]
   1d2a0: b40020c3     	cbz	x3, 0x1d6b8 <syna_dev_process_touch_report+0x448>
   1d2a4: 12001c08     	and	w8, w0, #0xff
   1d2a8: 7100451f     	cmp	w8, #0x11
   1d2ac: 54002141     	b.ne	0x1d6d4 <syna_dev_process_touch_report+0x464>
   1d2b0: b9438468     	ldr	w8, [x3, #0x384]
   1d2b4: aa0303f3     	mov	x19, x3
   1d2b8: 7100051f     	cmp	w8, #0x1
   1d2bc: 5400008b     	b.lt	0x1d2cc <syna_dev_process_touch_report+0x5c>
   1d2c0: 39561268     	ldrb	w8, [x19, #0x584]
   1d2c4: 7100051f     	cmp	w8, #0x1
   1d2c8: 54001da1     	b.ne	0x1d67c <syna_dev_process_touch_report+0x40c>
   1d2cc: b945e268     	ldr	w8, [x19, #0x5e0]
   1d2d0: 34000288     	cbz	w8, 0x1d320 <syna_dev_process_touch_report+0xb0>
   1d2d4: 52840008     	mov	w8, #0x2000             // =8192
   1d2d8: 7140c85f     	cmp	w2, #0x32, lsl #12      // =0x32000
   1d2dc: f9423260     	ldr	x0, [x19, #0x460]
   1d2e0: 72a00068     	movk	w8, #0x3, lsl #16
   1d2e4: 2a0203f6     	mov	w22, w2
   1d2e8: aa0103f4     	mov	x20, x1
   1d2ec: 1a883055     	csel	w21, w2, w8, lo
   1d2f0: aa1503e2     	mov	x2, x21
   1d2f4: 94000000     	bl	0x1d2f4 <syna_dev_process_touch_report+0x84>
		000000000001d2f4:  R_AARCH64_CALL26	memcpy
   1d2f8: 52800028     	mov	w8, #0x1                // =1
   1d2fc: 91112260     	add	x0, x19, #0x448
   1d300: 52800021     	mov	w1, #0x1                // =1
   1d304: 52800022     	mov	w2, #0x1                // =1
   1d308: aa1f03e3     	mov	x3, xzr
   1d30c: b9043a75     	str	w21, [x19, #0x438]
   1d310: b9046a68     	str	w8, [x19, #0x468]
   1d314: 94000000     	bl	0x1d314 <syna_dev_process_touch_report+0xa4>
		000000000001d314:  R_AARCH64_CALL26	__wake_up
   1d318: aa1403e1     	mov	x1, x20
   1d31c: 2a1603e2     	mov	w2, w22
   1d320: aa1303e3     	mov	x3, x19
   1d324: f8410460     	ldr	x0, [x3], #0x10
   1d328: 94000000     	bl	0x1d328 <syna_dev_process_touch_report+0xb8>
		000000000001d328:  R_AARCH64_CALL26	syna_tcm_parse_touch_report
   1d32c: 37f81e40     	tbnz	w0, #0x1f, 0x1d6f4 <syna_dev_process_touch_report+0x484>
   1d330: f941da74     	ldr	x20, [x19, #0x3b0]
   1d334: b4001a54     	cbz	x20, 0x1d67c <syna_dev_process_touch_report+0x40c>
   1d338: f9400268     	ldr	x8, [x19]
   1d33c: 90000009     	adrp	x9, 0x1d000 <syna_dev_probe+0x314>
		000000000001d33c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1d340: 9109e260     	add	x0, x19, #0x278
   1d344: b9401919     	ldr	w25, [x8, #0x18]
   1d348: f9400128     	ldr	x8, [x9]
		000000000001d348:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1d34c: f9000be8     	str	x8, [sp, #0x10]
   1d350: 94000000     	bl	0x1d350 <syna_dev_process_touch_report+0xe0>
		000000000001d350:  R_AARCH64_CALL26	mutex_lock
   1d354: b9457e68     	ldr	w8, [x19, #0x57c]
   1d358: 7100091f     	cmp	w8, #0x2
   1d35c: 54000081     	b.ne	0x1d36c <syna_dev_process_touch_report+0xfc>
   1d360: 394bd268     	ldrb	w8, [x19, #0x2f4]
   1d364: 7100051f     	cmp	w8, #0x1
   1d368: 54001d80     	b.eq	0x1d718 <syna_dev_process_touch_report+0x4a8>
   1d36c: b9422268     	ldr	w8, [x19, #0x220]
   1d370: 7102011f     	cmp	w8, #0x80
   1d374: 540000a0     	b.eq	0x1d388 <syna_dev_process_touch_report+0x118>
   1d378: 7102051f     	cmp	w8, #0x81
   1d37c: 540000a1     	b.ne	0x1d390 <syna_dev_process_touch_report+0x120>
   1d380: 2a1f03e0     	mov	w0, wzr
   1d384: 14000002     	b	0x1d38c <syna_dev_process_touch_report+0x11c>
   1d388: 52800020     	mov	w0, #0x1                // =1
   1d38c: 94000000     	bl	0x1d38c <syna_dev_process_touch_report+0x11c>
		000000000001d38c:  R_AARCH64_CALL26	report_ufp_uevent
   1d390: b9457e68     	ldr	w8, [x19, #0x57c]
   1d394: 7100091f     	cmp	w8, #0x2
   1d398: 540016e0     	b.eq	0x1d674 <syna_dev_process_touch_report+0x404>
   1d39c: 340014f9     	cbz	w25, 0x1d638 <syna_dev_process_touch_report+0x3c8>
   1d3a0: aa1f03f5     	mov	x21, xzr
   1d3a4: 2a1f03fb     	mov	w27, wzr
   1d3a8: 91099277     	add	x23, x19, #0x264
   1d3ac: 9100a276     	add	x22, x19, #0x28
   1d3b0: f90007f9     	str	x25, [sp, #0x8]
   1d3b4: 14000010     	b	0x1d3f4 <syna_dev_process_touch_report+0x184>
   1d3b8: aa1403e0     	mov	x0, x20
   1d3bc: 52800061     	mov	w1, #0x3                // =3
   1d3c0: 528005e2     	mov	w2, #0x2f               // =47
   1d3c4: 2a1503e3     	mov	w3, w21
   1d3c8: 94000000     	bl	0x1d3c8 <syna_dev_process_touch_report+0x158>
		000000000001d3c8:  R_AARCH64_CALL26	input_event
   1d3cc: aa1403e0     	mov	x0, x20
   1d3d0: 2a1f03e1     	mov	w1, wzr
   1d3d4: 2a1f03e2     	mov	w2, wzr
   1d3d8: 94000000     	bl	0x1d3d8 <syna_dev_process_touch_report+0x168>
		000000000001d3d8:  R_AARCH64_CALL26	input_mt_report_slot_state
   1d3dc: 385f02c8     	ldurb	w8, [x22, #-0x10]
   1d3e0: 9100d2d6     	add	x22, x22, #0x34
   1d3e4: 38356ae8     	strb	w8, [x23, x21]
   1d3e8: 910006b5     	add	x21, x21, #0x1
   1d3ec: eb15033f     	cmp	x25, x21
   1d3f0: 54001220     	b.eq	0x1d634 <syna_dev_process_touch_report+0x3c4>
   1d3f4: 385f02c8     	ldurb	w8, [x22, #-0x10]
   1d3f8: 7100191f     	cmp	w8, #0x6
   1d3fc: 540001a1     	b.ne	0x1d430 <syna_dev_process_touch_report+0x1c0>
   1d400: b945e668     	ldr	w8, [x19, #0x5e4]
   1d404: 34000168     	cbz	w8, 0x1d430 <syna_dev_process_touch_report+0x1c0>
   1d408: 90000008     	adrp	x8, 0x1d000 <syna_dev_probe+0x314>
		000000000001d408:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
   1d40c: f9400108     	ldr	x8, [x8]
		000000000001d40c:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
   1d410: b4000de8     	cbz	x8, 0x1d5cc <syna_dev_process_touch_report+0x35c>
   1d414: 90000009     	adrp	x9, 0x1d000 <syna_dev_probe+0x314>
		000000000001d414:  R_AARCH64_ADR_PREL_PG_HI21	large_area_ignore_count
   1d418: b9400129     	ldr	w9, [x9]
		000000000001d418:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_ignore_count
   1d41c: 36f80e09     	tbz	w9, #0x1f, 0x1d5dc <syna_dev_process_touch_report+0x36c>
   1d420: 90000009     	adrp	x9, 0x1d000 <syna_dev_probe+0x314>
		000000000001d420:  R_AARCH64_ADR_PREL_PG_HI21	large_area_uevent_count
   1d424: b9400129     	ldr	w9, [x9]
		000000000001d424:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_uevent_count
   1d428: 7100093f     	cmp	w9, #0x2
   1d42c: 54000e6d     	b.le	0x1d5f8 <syna_dev_process_touch_report+0x388>
   1d430: f1002abf     	cmp	x21, #0xa
   1d434: 54001b80     	b.eq	0x1d7a4 <syna_dev_process_touch_report+0x534>
   1d438: 38756ae9     	ldrb	w9, [x23, x21]
   1d43c: 385f02c8     	ldurb	w8, [x22, #-0x10]
   1d440: 35000049     	cbnz	w9, 0x1d448 <syna_dev_process_touch_report+0x1d8>
   1d444: 34fffcc8     	cbz	w8, 0x1d3dc <syna_dev_process_touch_report+0x16c>
   1d448: 51000509     	sub	w9, w8, #0x1
   1d44c: 7100093f     	cmp	w9, #0x2
   1d450: 540001c2     	b.hs	0x1d488 <syna_dev_process_touch_report+0x218>
   1d454: b9461a68     	ldr	w8, [x19, #0x618]
   1d458: b85f42d9     	ldur	w25, [x22, #-0xc]
   1d45c: 7100111f     	cmp	w8, #0x4
   1d460: 54000361     	b.ne	0x1d4cc <syna_dev_process_touch_report+0x25c>
   1d464: 297f72c8     	ldp	w8, w28, [x22, #-0x8]
   1d468: 529999aa     	mov	w10, #0xcccd            // =52429
   1d46c: b94002d8     	ldr	w24, [x22]
   1d470: 72b9998a     	movk	w10, #0xcccc, lsl #16
   1d474: 9baa7f29     	umull	x9, w25, w10
   1d478: 9baa7d08     	umull	x8, w8, w10
   1d47c: d363fd39     	lsr	x25, x9, #35
   1d480: d363fd1a     	lsr	x26, x8, #35
   1d484: 14000026     	b	0x1d51c <syna_dev_process_touch_report+0x2ac>
   1d488: 35fffaa8     	cbnz	w8, 0x1d3dc <syna_dev_process_touch_report+0x16c>
   1d48c: f9400be8     	ldr	x8, [sp, #0x10]
   1d490: 39406d08     	ldrb	w8, [x8, #0x1b]
   1d494: 7100051f     	cmp	w8, #0x1
   1d498: 54fff901     	b.ne	0x1d3b8 <syna_dev_process_touch_report+0x148>
   1d49c: b9461a68     	ldr	w8, [x19, #0x618]
   1d4a0: 7100111f     	cmp	w8, #0x4
   1d4a4: 54fff8a0     	b.eq	0x1d3b8 <syna_dev_process_touch_report+0x148>
   1d4a8: aa1403e0     	mov	x0, x20
   1d4ac: 2a1503e1     	mov	w1, w21
   1d4b0: 94000000     	bl	0x1d4b0 <syna_dev_process_touch_report+0x240>
		000000000001d4b0:  R_AARCH64_CALL26	tpd_touch_release
   1d4b4: 2a1f03e0     	mov	w0, wzr
   1d4b8: 12800001     	mov	w1, #-0x1               // =-1
   1d4bc: 12800002     	mov	w2, #-0x1               // =-1
   1d4c0: 2a1503e3     	mov	w3, w21
   1d4c4: 94000000     	bl	0x1d4c4 <syna_dev_process_touch_report+0x254>
		000000000001d4c4:  R_AARCH64_CALL26	one_key_report
   1d4c8: 17ffffc5     	b	0x1d3dc <syna_dev_process_touch_report+0x16c>
   1d4cc: f9400be8     	ldr	x8, [sp, #0x10]
   1d4d0: b94002d8     	ldr	w24, [x22]
   1d4d4: 297f72da     	ldp	w26, w28, [x22, #-0x8]
   1d4d8: 39406d08     	ldrb	w8, [x8, #0x1b]
   1d4dc: 7100051f     	cmp	w8, #0x1
   1d4e0: 540001e1     	b.ne	0x1d51c <syna_dev_process_touch_report+0x2ac>
   1d4e4: 6b18039f     	cmp	w28, w24
   1d4e8: aa1403e0     	mov	x0, x20
   1d4ec: 2a1903e1     	mov	w1, w25
   1d4f0: 1a98c384     	csel	w4, w28, w24, gt
   1d4f4: 2a1a03e2     	mov	w2, w26
   1d4f8: 2a1503e3     	mov	w3, w21
   1d4fc: 2a1f03e5     	mov	w5, wzr
   1d500: 94000000     	bl	0x1d500 <syna_dev_process_touch_report+0x290>
		000000000001d500:  R_AARCH64_CALL26	tpd_touch_press
   1d504: 52800020     	mov	w0, #0x1                // =1
   1d508: 2a1903e1     	mov	w1, w25
   1d50c: 2a1a03e2     	mov	w2, w26
   1d510: 2a1503e3     	mov	w3, w21
   1d514: 94000000     	bl	0x1d514 <syna_dev_process_touch_report+0x2a4>
		000000000001d514:  R_AARCH64_CALL26	one_key_report
   1d518: 1400002a     	b	0x1d5c0 <syna_dev_process_touch_report+0x350>
   1d51c: aa1403e0     	mov	x0, x20
   1d520: 52800061     	mov	w1, #0x3                // =3
   1d524: 528005e2     	mov	w2, #0x2f               // =47
   1d528: 2a1503e3     	mov	w3, w21
   1d52c: 94000000     	bl	0x1d52c <syna_dev_process_touch_report+0x2bc>
		000000000001d52c:  R_AARCH64_CALL26	input_event
   1d530: aa1403e0     	mov	x0, x20
   1d534: 2a1f03e1     	mov	w1, wzr
   1d538: 52800022     	mov	w2, #0x1                // =1
   1d53c: 94000000     	bl	0x1d53c <syna_dev_process_touch_report+0x2cc>
		000000000001d53c:  R_AARCH64_CALL26	input_mt_report_slot_state
   1d540: aa1403e0     	mov	x0, x20
   1d544: 52800021     	mov	w1, #0x1                // =1
   1d548: 52802942     	mov	w2, #0x14a              // =330
   1d54c: 52800023     	mov	w3, #0x1                // =1
   1d550: 94000000     	bl	0x1d550 <syna_dev_process_touch_report+0x2e0>
		000000000001d550:  R_AARCH64_CALL26	input_event
   1d554: aa1403e0     	mov	x0, x20
   1d558: 52800021     	mov	w1, #0x1                // =1
   1d55c: 528028a2     	mov	w2, #0x145              // =325
   1d560: 52800023     	mov	w3, #0x1                // =1
   1d564: 94000000     	bl	0x1d564 <syna_dev_process_touch_report+0x2f4>
		000000000001d564:  R_AARCH64_CALL26	input_event
   1d568: aa1403e0     	mov	x0, x20
   1d56c: 52800061     	mov	w1, #0x3                // =3
   1d570: 528006a2     	mov	w2, #0x35               // =53
   1d574: 2a1903e3     	mov	w3, w25
   1d578: 94000000     	bl	0x1d578 <syna_dev_process_touch_report+0x308>
		000000000001d578:  R_AARCH64_CALL26	input_event
   1d57c: aa1403e0     	mov	x0, x20
   1d580: 52800061     	mov	w1, #0x3                // =3
   1d584: 528006c2     	mov	w2, #0x36               // =54
   1d588: 2a1a03e3     	mov	w3, w26
   1d58c: 94000000     	bl	0x1d58c <syna_dev_process_touch_report+0x31c>
		000000000001d58c:  R_AARCH64_CALL26	input_event
   1d590: 6b18039f     	cmp	w28, w24
   1d594: aa1403e0     	mov	x0, x20
   1d598: 52800061     	mov	w1, #0x3                // =3
   1d59c: 1a98c383     	csel	w3, w28, w24, gt
   1d5a0: 52800602     	mov	w2, #0x30               // =48
   1d5a4: 1a98b399     	csel	w25, w28, w24, lt
   1d5a8: 94000000     	bl	0x1d5a8 <syna_dev_process_touch_report+0x338>
		000000000001d5a8:  R_AARCH64_CALL26	input_event
   1d5ac: aa1403e0     	mov	x0, x20
   1d5b0: 52800061     	mov	w1, #0x3                // =3
   1d5b4: 52800622     	mov	w2, #0x31               // =49
   1d5b8: 2a1903e3     	mov	w3, w25
   1d5bc: 94000000     	bl	0x1d5bc <syna_dev_process_touch_report+0x34c>
		000000000001d5bc:  R_AARCH64_CALL26	input_event
   1d5c0: f94007f9     	ldr	x25, [sp, #0x8]
   1d5c4: 1100077b     	add	w27, w27, #0x1
   1d5c8: 17ffff85     	b	0x1d3dc <syna_dev_process_touch_report+0x16c>
   1d5cc: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x314>
		000000000001d5cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x184d1
   1d5d0: 91000000     	add	x0, x0, #0x0
		000000000001d5d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x184d1
   1d5d4: 94000000     	bl	0x1d5d4 <syna_dev_process_touch_report+0x364>
		000000000001d5d4:  R_AARCH64_CALL26	_printk
   1d5d8: 17ffff96     	b	0x1d430 <syna_dev_process_touch_report+0x1c0>
   1d5dc: 51000521     	sub	w1, w9, #0x1
   1d5e0: 90000008     	adrp	x8, 0x1d000 <syna_dev_probe+0x314>
		000000000001d5e0:  R_AARCH64_ADR_PREL_PG_HI21	large_area_ignore_count
   1d5e4: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x314>
		000000000001d5e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18b7d
   1d5e8: 91000000     	add	x0, x0, #0x0
		000000000001d5e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18b7d
   1d5ec: b9000101     	str	w1, [x8]
		000000000001d5ec:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_ignore_count
   1d5f0: 94000000     	bl	0x1d5f0 <syna_dev_process_touch_report+0x380>
		000000000001d5f0:  R_AARCH64_CALL26	_printk
   1d5f4: 17ffff8f     	b	0x1d430 <syna_dev_process_touch_report+0x1c0>
   1d5f8: 90000009     	adrp	x9, 0x1d000 <syna_dev_probe+0x314>
		000000000001d5f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c850
   1d5fc: 91000129     	add	x9, x9, #0x0
		000000000001d5fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c850
   1d600: 91004100     	add	x0, x8, #0x10
   1d604: 910063e2     	add	x2, sp, #0x18
   1d608: 52800041     	mov	w1, #0x2                // =2
   1d60c: a901ffe9     	stp	x9, xzr, [sp, #0x18]
   1d610: 94000000     	bl	0x1d610 <syna_dev_process_touch_report+0x3a0>
		000000000001d610:  R_AARCH64_CALL26	kobject_uevent_env
   1d614: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x314>
		000000000001d614:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18010
   1d618: 91000000     	add	x0, x0, #0x0
		000000000001d618:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18010
   1d61c: 94000000     	bl	0x1d61c <syna_dev_process_touch_report+0x3ac>
		000000000001d61c:  R_AARCH64_CALL26	_printk
   1d620: 90000009     	adrp	x9, 0x1d000 <syna_dev_probe+0x314>
		000000000001d620:  R_AARCH64_ADR_PREL_PG_HI21	large_area_uevent_count
   1d624: b9400128     	ldr	w8, [x9]
		000000000001d624:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_uevent_count
   1d628: 11000508     	add	w8, w8, #0x1
   1d62c: b9000128     	str	w8, [x9]
		000000000001d62c:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_uevent_count
   1d630: 17ffff80     	b	0x1d430 <syna_dev_process_touch_report+0x1c0>
   1d634: 3500017b     	cbnz	w27, 0x1d660 <syna_dev_process_touch_report+0x3f0>
   1d638: aa1403e0     	mov	x0, x20
   1d63c: 52800021     	mov	w1, #0x1                // =1
   1d640: 52802942     	mov	w2, #0x14a              // =330
   1d644: 2a1f03e3     	mov	w3, wzr
   1d648: 94000000     	bl	0x1d648 <syna_dev_process_touch_report+0x3d8>
		000000000001d648:  R_AARCH64_CALL26	input_event
   1d64c: aa1403e0     	mov	x0, x20
   1d650: 52800021     	mov	w1, #0x1                // =1
   1d654: 528028a2     	mov	w2, #0x145              // =325
   1d658: 2a1f03e3     	mov	w3, wzr
   1d65c: 94000000     	bl	0x1d65c <syna_dev_process_touch_report+0x3ec>
		000000000001d65c:  R_AARCH64_CALL26	input_event
   1d660: aa1403e0     	mov	x0, x20
   1d664: 2a1f03e1     	mov	w1, wzr
   1d668: 2a1f03e2     	mov	w2, wzr
   1d66c: 2a1f03e3     	mov	w3, wzr
   1d670: 94000000     	bl	0x1d670 <syna_dev_process_touch_report+0x400>
		000000000001d670:  R_AARCH64_CALL26	input_event
   1d674: 9109e260     	add	x0, x19, #0x278
   1d678: 94000000     	bl	0x1d678 <syna_dev_process_touch_report+0x408>
		000000000001d678:  R_AARCH64_CALL26	mutex_unlock
   1d67c: 2a1f03e0     	mov	w0, wzr
   1d680: d5384108     	mrs	x8, SP_EL0
   1d684: f9438908     	ldr	x8, [x8, #0x710]
   1d688: f85f83a9     	ldur	x9, [x29, #-0x8]
   1d68c: eb09011f     	cmp	x8, x9
   1d690: 540008c1     	b.ne	0x1d7a8 <syna_dev_process_touch_report+0x538>
   1d694: a9484ff4     	ldp	x20, x19, [sp, #0x80]
   1d698: a94757f6     	ldp	x22, x21, [sp, #0x70]
   1d69c: a9465ff8     	ldp	x24, x23, [sp, #0x60]
   1d6a0: a94567fa     	ldp	x26, x25, [sp, #0x50]
   1d6a4: a9446ffc     	ldp	x28, x27, [sp, #0x40]
   1d6a8: a9437bfd     	ldp	x29, x30, [sp, #0x30]
   1d6ac: 910243ff     	add	sp, sp, #0x90
   1d6b0: d50323bf     	autiasp
   1d6b4: d65f03c0     	ret
   1d6b8: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x314>
		000000000001d6b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x186dc
   1d6bc: 91000000     	add	x0, x0, #0x0
		000000000001d6bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x186dc
   1d6c0: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x314>
		000000000001d6c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17516
   1d6c4: 91000021     	add	x1, x1, #0x0
		000000000001d6c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17516
   1d6c8: 94000000     	bl	0x1d6c8 <syna_dev_process_touch_report+0x458>
		000000000001d6c8:  R_AARCH64_CALL26	_printk
   1d6cc: 128002a0     	mov	w0, #-0x16              // =-22
   1d6d0: 17ffffec     	b	0x1d680 <syna_dev_process_touch_report+0x410>
   1d6d4: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x314>
		000000000001d6d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1980b
   1d6d8: 91000000     	add	x0, x0, #0x0
		000000000001d6d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1980b
   1d6dc: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x314>
		000000000001d6dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17516
   1d6e0: 91000021     	add	x1, x1, #0x0
		000000000001d6e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17516
   1d6e4: 2a0803e2     	mov	w2, w8
   1d6e8: 94000000     	bl	0x1d6e8 <syna_dev_process_touch_report+0x478>
		000000000001d6e8:  R_AARCH64_CALL26	_printk
   1d6ec: 128002a0     	mov	w0, #-0x16              // =-22
   1d6f0: 17ffffe4     	b	0x1d680 <syna_dev_process_touch_report+0x410>
   1d6f4: 90000008     	adrp	x8, 0x1d000 <syna_dev_probe+0x314>
		000000000001d6f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b70b
   1d6f8: 91000108     	add	x8, x8, #0x0
		000000000001d6f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b70b
   1d6fc: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x314>
		000000000001d6fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17516
   1d700: 91000021     	add	x1, x1, #0x0
		000000000001d700:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17516
   1d704: 2a0003f3     	mov	w19, w0
   1d708: aa0803e0     	mov	x0, x8
   1d70c: 94000000     	bl	0x1d70c <syna_dev_process_touch_report+0x49c>
		000000000001d70c:  R_AARCH64_CALL26	_printk
   1d710: 2a1303e0     	mov	w0, w19
   1d714: 17ffffdb     	b	0x1d680 <syna_dev_process_touch_report+0x410>
   1d718: b9422262     	ldr	w2, [x19, #0x220]
   1d71c: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x314>
		000000000001d71c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19522
   1d720: 91000000     	add	x0, x0, #0x0
		000000000001d720:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19522
   1d724: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x314>
		000000000001d724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18fda
   1d728: 91000021     	add	x1, x1, #0x0
		000000000001d728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18fda
   1d72c: 94000000     	bl	0x1d72c <syna_dev_process_touch_report+0x4bc>
		000000000001d72c:  R_AARCH64_CALL26	_printk
   1d730: b9422262     	ldr	w2, [x19, #0x220]
   1d734: 7100045f     	cmp	w2, #0x1
   1d738: 54000180     	b.eq	0x1d768 <syna_dev_process_touch_report+0x4f8>
   1d73c: 7100405f     	cmp	w2, #0x10
   1d740: 54000261     	b.ne	0x1d78c <syna_dev_process_touch_report+0x51c>
   1d744: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x314>
		000000000001d744:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1826c
   1d748: 91000000     	add	x0, x0, #0x0
		000000000001d748:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1826c
   1d74c: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x314>
		000000000001d74c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18fda
   1d750: 91000021     	add	x1, x1, #0x0
		000000000001d750:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18fda
   1d754: 94000000     	bl	0x1d754 <syna_dev_process_touch_report+0x4e4>
		000000000001d754:  R_AARCH64_CALL26	_printk
   1d758: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x314>
		000000000001d758:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18fca
   1d75c: 91000000     	add	x0, x0, #0x0
		000000000001d75c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18fca
   1d760: 94000000     	bl	0x1d760 <syna_dev_process_touch_report+0x4f0>
		000000000001d760:  R_AARCH64_CALL26	ufp_report_gesture_uevent
   1d764: 17ffff02     	b	0x1d36c <syna_dev_process_touch_report+0xfc>
   1d768: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x314>
		000000000001d768:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19549
   1d76c: 91000000     	add	x0, x0, #0x0
		000000000001d76c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19549
   1d770: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x314>
		000000000001d770:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18fda
   1d774: 91000021     	add	x1, x1, #0x0
		000000000001d774:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18fda
   1d778: 94000000     	bl	0x1d778 <syna_dev_process_touch_report+0x508>
		000000000001d778:  R_AARCH64_CALL26	_printk
   1d77c: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x314>
		000000000001d77c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x192a1
   1d780: 91000000     	add	x0, x0, #0x0
		000000000001d780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x192a1
   1d784: 94000000     	bl	0x1d784 <syna_dev_process_touch_report+0x514>
		000000000001d784:  R_AARCH64_CALL26	ufp_report_gesture_uevent
   1d788: 17fffef9     	b	0x1d36c <syna_dev_process_touch_report+0xfc>
   1d78c: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x314>
		000000000001d78c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19ea5
   1d790: 91000000     	add	x0, x0, #0x0
		000000000001d790:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19ea5
   1d794: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x314>
		000000000001d794:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18fda
   1d798: 91000021     	add	x1, x1, #0x0
		000000000001d798:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18fda
   1d79c: 94000000     	bl	0x1d79c <syna_dev_process_touch_report+0x52c>
		000000000001d79c:  R_AARCH64_CALL26	_printk
   1d7a0: 17fffef3     	b	0x1d36c <syna_dev_process_touch_report+0xfc>
   1d7a4: d42aa240     	brk	#0x5512
   1d7a8: 94000000     	bl	0x1d7a8 <syna_dev_process_touch_report+0x538>
		000000000001d7a8:  R_AARCH64_CALL26	__stack_chk_fail
