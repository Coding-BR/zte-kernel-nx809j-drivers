
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024474 <syna_tcm_testing_check_frame_data>:
   24474: d503233f     	paciasp
   24478: d101c3ff     	sub	sp, sp, #0x70
   2447c: a9017bfd     	stp	x29, x30, [sp, #0x10]
   24480: a9026ffc     	stp	x28, x27, [sp, #0x20]
   24484: a90367fa     	stp	x26, x25, [sp, #0x30]
   24488: a9045ff8     	stp	x24, x23, [sp, #0x40]
   2448c: a90557f6     	stp	x22, x21, [sp, #0x50]
   24490: a9064ff4     	stp	x20, x19, [sp, #0x60]
   24494: 910043fd     	add	x29, sp, #0x10
   24498: b9000be3     	str	w3, [sp, #0x8]
   2449c: b4000844     	cbz	x4, 0x245a4 <syna_tcm_testing_check_frame_data+0x130>
   244a0: aa0003f9     	mov	x25, x0
   244a4: b4000800     	cbz	x0, 0x245a4 <syna_tcm_testing_check_frame_data+0x130>
   244a8: aa0503f5     	mov	x21, x5
   244ac: b40007c5     	cbz	x5, 0x245a4 <syna_tcm_testing_check_frame_data+0x130>
   244b0: b9400be8     	ldr	w8, [sp, #0x8]
   244b4: aa0103f3     	mov	x19, x1
   244b8: 1b087c48     	mul	w8, w2, w8
   244bc: 531f7903     	lsl	w3, w8, #1
   244c0: eb01007f     	cmp	x3, x1
   244c4: 540007e8     	b.hi	0x245c0 <syna_tcm_testing_check_frame_data+0x14c>
   244c8: 7100045f     	cmp	w2, #0x1
   244cc: 5400056b     	b.lt	0x24578 <syna_tcm_testing_check_frame_data+0x104>
   244d0: b9400be8     	ldr	w8, [sp, #0x8]
   244d4: aa0603f4     	mov	x20, x6
   244d8: aa0403f6     	mov	x22, x4
   244dc: 2a1f03e9     	mov	w9, wzr
   244e0: 2a1f03fa     	mov	w26, wzr
   244e4: 5280003c     	mov	w28, #0x1               // =1
   244e8: 531f790a     	lsl	w10, w8, #1
   244ec: 2a0803f7     	mov	w23, w8
   244f0: 29000bea     	stp	w10, w2, [sp]
   244f4: 14000007     	b	0x24510 <syna_tcm_testing_check_frame_data+0x9c>
   244f8: 29400be8     	ldp	w8, w2, [sp]
   244fc: b85fc3a9     	ldur	w9, [x29, #-0x4]
   24500: 1100075a     	add	w26, w26, #0x1
   24504: 6b02035f     	cmp	w26, w2
   24508: 0b080129     	add	w9, w9, w8
   2450c: 54000380     	b.eq	0x2457c <syna_tcm_testing_check_frame_data+0x108>
   24510: b9400be8     	ldr	w8, [sp, #0x8]
   24514: b81fc3a9     	stur	w9, [x29, #-0x4]
   24518: 7100051f     	cmp	w8, #0x1
   2451c: 54fffeeb     	b.lt	0x244f8 <syna_tcm_testing_check_frame_data+0x84>
   24520: aa1f03fb     	mov	x27, xzr
   24524: 2a0903f8     	mov	w24, w9
   24528: 93407f08     	sxtw	x8, w24
   2452c: eb13029f     	cmp	x20, x19
   24530: 2a1b03e2     	mov	w2, w27
   24534: 2a1a03e3     	mov	w3, w26
   24538: 9a8833e9     	csel	x9, xzr, x8, lo
   2453c: 8b080320     	add	x0, x25, x8
   24540: 8b0902a1     	add	x1, x21, x9
   24544: b85fc2d0     	ldur	w16, [x22, #-0x4]
   24548: 7290be51     	movk	w17, #0x85f2
   2454c: 72b46651     	movk	w17, #0xa332, lsl #16
   24550: 6b11021f     	cmp	w16, w17
   24554: 54000040     	b.eq	0x2455c <syna_tcm_testing_check_frame_data+0xe8>
   24558: d43046c0     	brk	#0x8236
   2455c: d63f02c0     	blr	x22
   24560: 9100077b     	add	x27, x27, #0x1
   24564: 0a1c001c     	and	w28, w0, w28
   24568: 11000b18     	add	w24, w24, #0x2
   2456c: eb1b02ff     	cmp	x23, x27
   24570: 54fffdc1     	b.ne	0x24528 <syna_tcm_testing_check_frame_data+0xb4>
   24574: 17ffffe1     	b	0x244f8 <syna_tcm_testing_check_frame_data+0x84>
   24578: 5280003c     	mov	w28, #0x1               // =1
   2457c: 12000380     	and	w0, w28, #0x1
   24580: a9464ff4     	ldp	x20, x19, [sp, #0x60]
   24584: a94557f6     	ldp	x22, x21, [sp, #0x50]
   24588: a9445ff8     	ldp	x24, x23, [sp, #0x40]
   2458c: a94367fa     	ldp	x26, x25, [sp, #0x30]
   24590: a9426ffc     	ldp	x28, x27, [sp, #0x20]
   24594: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   24598: 9101c3ff     	add	sp, sp, #0x70
   2459c: d50323bf     	autiasp
   245a0: d65f03c0     	ret
   245a4: 90000000     	adrp	x0, 0x24000 <syna_tcm_testing_noise+0x4c>
		00000000000245a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ca60
   245a8: 91000000     	add	x0, x0, #0x0
		00000000000245a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ca60
   245ac: 90000001     	adrp	x1, 0x24000 <syna_tcm_testing_noise+0x4c>
		00000000000245ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ca96
   245b0: 91000021     	add	x1, x1, #0x0
		00000000000245b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ca96
   245b4: 94000000     	bl	0x245b4 <syna_tcm_testing_check_frame_data+0x140>
		00000000000245b4:  R_AARCH64_CALL26	_printk
   245b8: 2a1f03fc     	mov	w28, wzr
   245bc: 17fffff0     	b	0x2457c <syna_tcm_testing_check_frame_data+0x108>
   245c0: 90000000     	adrp	x0, 0x24000 <syna_tcm_testing_noise+0x4c>
		00000000000245c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cab8
   245c4: 91000000     	add	x0, x0, #0x0
		00000000000245c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cab8
   245c8: 90000001     	adrp	x1, 0x24000 <syna_tcm_testing_noise+0x4c>
		00000000000245c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ca96
   245cc: 91000021     	add	x1, x1, #0x0
		00000000000245cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ca96
   245d0: 2a1303e2     	mov	w2, w19
   245d4: 94000000     	bl	0x245d4 <syna_tcm_testing_check_frame_data+0x160>
		00000000000245d4:  R_AARCH64_CALL26	_printk
   245d8: 2a1f03fc     	mov	w28, wzr
   245dc: 17ffffe8     	b	0x2457c <syna_tcm_testing_check_frame_data+0x108>
