
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000244d0 <syna_tcm_testing_check_frame_data>:
   244d0: d503233f     	paciasp
   244d4: d101c3ff     	sub	sp, sp, #0x70
   244d8: a9017bfd     	stp	x29, x30, [sp, #0x10]
   244dc: a9026ffc     	stp	x28, x27, [sp, #0x20]
   244e0: a90367fa     	stp	x26, x25, [sp, #0x30]
   244e4: a9045ff8     	stp	x24, x23, [sp, #0x40]
   244e8: a90557f6     	stp	x22, x21, [sp, #0x50]
   244ec: a9064ff4     	stp	x20, x19, [sp, #0x60]
   244f0: 910043fd     	add	x29, sp, #0x10
   244f4: b9000be3     	str	w3, [sp, #0x8]
   244f8: b4000844     	cbz	x4, 0x24600 <syna_tcm_testing_check_frame_data+0x130>
   244fc: aa0003f9     	mov	x25, x0
   24500: b4000800     	cbz	x0, 0x24600 <syna_tcm_testing_check_frame_data+0x130>
   24504: aa0503f5     	mov	x21, x5
   24508: b40007c5     	cbz	x5, 0x24600 <syna_tcm_testing_check_frame_data+0x130>
   2450c: b9400be8     	ldr	w8, [sp, #0x8]
   24510: aa0103f3     	mov	x19, x1
   24514: 1b087c48     	mul	w8, w2, w8
   24518: 531f7903     	lsl	w3, w8, #1
   2451c: eb01007f     	cmp	x3, x1
   24520: 540007e8     	b.hi	0x2461c <syna_tcm_testing_check_frame_data+0x14c>
   24524: 7100045f     	cmp	w2, #0x1
   24528: 5400056b     	b.lt	0x245d4 <syna_tcm_testing_check_frame_data+0x104>
   2452c: b9400be8     	ldr	w8, [sp, #0x8]
   24530: aa0603f4     	mov	x20, x6
   24534: aa0403f6     	mov	x22, x4
   24538: 2a1f03e9     	mov	w9, wzr
   2453c: 2a1f03fa     	mov	w26, wzr
   24540: 5280003c     	mov	w28, #0x1               // =1
   24544: 531f790a     	lsl	w10, w8, #1
   24548: 2a0803f7     	mov	w23, w8
   2454c: 29000bea     	stp	w10, w2, [sp]
   24550: 14000007     	b	0x2456c <syna_tcm_testing_check_frame_data+0x9c>
   24554: 29400be8     	ldp	w8, w2, [sp]
   24558: b85fc3a9     	ldur	w9, [x29, #-0x4]
   2455c: 1100075a     	add	w26, w26, #0x1
   24560: 6b02035f     	cmp	w26, w2
   24564: 0b080129     	add	w9, w9, w8
   24568: 54000380     	b.eq	0x245d8 <syna_tcm_testing_check_frame_data+0x108>
   2456c: b9400be8     	ldr	w8, [sp, #0x8]
   24570: b81fc3a9     	stur	w9, [x29, #-0x4]
   24574: 7100051f     	cmp	w8, #0x1
   24578: 54fffeeb     	b.lt	0x24554 <syna_tcm_testing_check_frame_data+0x84>
   2457c: aa1f03fb     	mov	x27, xzr
   24580: 2a0903f8     	mov	w24, w9
   24584: 93407f08     	sxtw	x8, w24
   24588: eb13029f     	cmp	x20, x19
   2458c: 2a1b03e2     	mov	w2, w27
   24590: 2a1a03e3     	mov	w3, w26
   24594: 9a8833e9     	csel	x9, xzr, x8, lo
   24598: 8b080320     	add	x0, x25, x8
   2459c: 8b0902a1     	add	x1, x21, x9
   245a0: b85fc2d0     	ldur	w16, [x22, #-0x4]
   245a4: 7290be51     	movk	w17, #0x85f2
   245a8: 72b46651     	movk	w17, #0xa332, lsl #16
   245ac: 6b11021f     	cmp	w16, w17
   245b0: 54000040     	b.eq	0x245b8 <syna_tcm_testing_check_frame_data+0xe8>
   245b4: d43046c0     	brk	#0x8236
   245b8: d63f02c0     	blr	x22
   245bc: 9100077b     	add	x27, x27, #0x1
   245c0: 0a1c001c     	and	w28, w0, w28
   245c4: 11000b18     	add	w24, w24, #0x2
   245c8: eb1b02ff     	cmp	x23, x27
   245cc: 54fffdc1     	b.ne	0x24584 <syna_tcm_testing_check_frame_data+0xb4>
   245d0: 17ffffe1     	b	0x24554 <syna_tcm_testing_check_frame_data+0x84>
   245d4: 5280003c     	mov	w28, #0x1               // =1
   245d8: 12000380     	and	w0, w28, #0x1
   245dc: a9464ff4     	ldp	x20, x19, [sp, #0x60]
   245e0: a94557f6     	ldp	x22, x21, [sp, #0x50]
   245e4: a9445ff8     	ldp	x24, x23, [sp, #0x40]
   245e8: a94367fa     	ldp	x26, x25, [sp, #0x30]
   245ec: a9426ffc     	ldp	x28, x27, [sp, #0x20]
   245f0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   245f4: 9101c3ff     	add	sp, sp, #0x70
   245f8: d50323bf     	autiasp
   245fc: d65f03c0     	ret
   24600: 90000000     	adrp	x0, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024600:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ca78
   24604: 91000000     	add	x0, x0, #0x0
		0000000000024604:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ca78
   24608: 90000001     	adrp	x1, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024608:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1caae
   2460c: 91000021     	add	x1, x1, #0x0
		000000000002460c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1caae
   24610: 94000000     	bl	0x24610 <syna_tcm_testing_check_frame_data+0x140>
		0000000000024610:  R_AARCH64_CALL26	_printk
   24614: 2a1f03fc     	mov	w28, wzr
   24618: 17fffff0     	b	0x245d8 <syna_tcm_testing_check_frame_data+0x108>
   2461c: 90000000     	adrp	x0, 0x24000 <syna_testing_pt01_show+0x24c>
		000000000002461c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cad0
   24620: 91000000     	add	x0, x0, #0x0
		0000000000024620:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cad0
   24624: 90000001     	adrp	x1, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024624:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1caae
   24628: 91000021     	add	x1, x1, #0x0
		0000000000024628:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1caae
   2462c: 2a1303e2     	mov	w2, w19
   24630: 94000000     	bl	0x24630 <syna_tcm_testing_check_frame_data+0x160>
		0000000000024630:  R_AARCH64_CALL26	_printk
   24634: 2a1f03fc     	mov	w28, wzr
   24638: 17ffffe8     	b	0x245d8 <syna_tcm_testing_check_frame_data+0x108>
