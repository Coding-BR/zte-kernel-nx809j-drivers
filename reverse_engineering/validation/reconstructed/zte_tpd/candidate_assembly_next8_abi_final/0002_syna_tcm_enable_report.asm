
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000010734 <syna_tcm_enable_report>:
   10734: d503233f     	paciasp
   10738: d10103ff     	sub	sp, sp, #0x40
   1073c: a9017bfd     	stp	x29, x30, [sp, #0x10]
   10740: f90013f5     	str	x21, [sp, #0x20]
   10744: a9034ff4     	stp	x20, x19, [sp, #0x30]
   10748: 910043fd     	add	x29, sp, #0x10
   1074c: d5384108     	mrs	x8, SP_EL0
   10750: f9438908     	ldr	x8, [x8, #0x710]
   10754: f90007e8     	str	x8, [sp, #0x8]
   10758: 390013e1     	strb	w1, [sp, #0x4]
   1075c: b40004e0     	cbz	x0, 0x107f8 <syna_tcm_enable_report+0xc4>
   10760: 2a0203f3     	mov	w19, w2
   10764: 39402402     	ldrb	w2, [x0, #0x9]
   10768: 7100045f     	cmp	w2, #0x1
   1076c: 54000541     	b.ne	0x10814 <syna_tcm_enable_report+0xe0>
   10770: 2a0303f4     	mov	w20, w3
   10774: 350000a3     	cbnz	w3, 0x10788 <syna_tcm_enable_report+0x54>
   10778: f9402408     	ldr	x8, [x0, #0x48]
   1077c: 39405108     	ldrb	w8, [x8, #0x14]
   10780: 360007a8     	tbz	w8, #0x0, 0x10874 <syna_tcm_enable_report+0x140>
   10784: 2a1f03f4     	mov	w20, wzr
   10788: 7200027f     	tst	w19, #0x1
   1078c: 528000a8     	mov	w8, #0x5                // =5
   10790: f941cc09     	ldr	x9, [x0, #0x398]
   10794: 1a881515     	cinc	w21, w8, eq
   10798: 910013e2     	add	x2, sp, #0x4
   1079c: 52800023     	mov	w3, #0x1                // =1
   107a0: 2a1503e1     	mov	w1, w21
   107a4: aa1f03e4     	mov	x4, xzr
   107a8: 2a1403e5     	mov	w5, w20
   107ac: b85fc130     	ldur	w16, [x9, #-0x4]
   107b0: 728751d1     	movk	w17, #0x3a8e
   107b4: 72a48411     	movk	w17, #0x2420, lsl #16
   107b8: 6b11021f     	cmp	w16, w17
   107bc: 54000040     	b.eq	0x107c4 <syna_tcm_enable_report+0x90>
   107c0: d4304520     	brk	#0x8229
   107c4: d63f0120     	blr	x9
   107c8: 37f80340     	tbnz	w0, #0x1f, 0x10830 <syna_tcm_enable_report+0xfc>
   107cc: d5384108     	mrs	x8, SP_EL0
   107d0: f9438908     	ldr	x8, [x8, #0x710]
   107d4: f94007e9     	ldr	x9, [sp, #0x8]
   107d8: eb09011f     	cmp	x8, x9
   107dc: 54000601     	b.ne	0x1089c <syna_tcm_enable_report+0x168>
   107e0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   107e4: f94013f5     	ldr	x21, [sp, #0x20]
   107e8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   107ec: 910103ff     	add	sp, sp, #0x40
   107f0: d50323bf     	autiasp
   107f4: d65f03c0     	ret
   107f8: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0xa0>
		00000000000107f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd85
   107fc: 91000000     	add	x0, x0, #0x0
		00000000000107fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd85
   10800: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0xa0>
		0000000000010800:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a34
   10804: 91000021     	add	x1, x1, #0x0
		0000000000010804:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a34
   10808: 94000000     	bl	0x10808 <syna_tcm_enable_report+0xd4>
		0000000000010808:  R_AARCH64_CALL26	_printk
   1080c: 12801e00     	mov	w0, #-0xf1              // =-241
   10810: 17ffffef     	b	0x107cc <syna_tcm_enable_report+0x98>
   10814: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0xa0>
		0000000000010814:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1168
   10818: 91000000     	add	x0, x0, #0x0
		0000000000010818:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1168
   1081c: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0xa0>
		000000000001081c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a34
   10820: 91000021     	add	x1, x1, #0x0
		0000000000010820:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a34
   10824: 94000000     	bl	0x10824 <syna_tcm_enable_report+0xf0>
		0000000000010824:  R_AARCH64_CALL26	_printk
   10828: 12801e00     	mov	w0, #-0xf1              // =-241
   1082c: 17ffffe8     	b	0x107cc <syna_tcm_enable_report+0x98>
   10830: 90000008     	adrp	x8, 0x10000 <syna_tcm_detect_device+0xa0>
		0000000000010830:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd6
   10834: 91000108     	add	x8, x8, #0x0
		0000000000010834:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd6
   10838: 7200027f     	tst	w19, #0x1
   1083c: 90000009     	adrp	x9, 0x10000 <syna_tcm_detect_device+0xa0>
		000000000001083c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x499a
   10840: 91000129     	add	x9, x9, #0x0
		0000000000010840:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x499a
   10844: 394013e4     	ldrb	w4, [sp, #0x4]
   10848: 9a881123     	csel	x3, x9, x8, ne
   1084c: 90000008     	adrp	x8, 0x10000 <syna_tcm_detect_device+0xa0>
		000000000001084c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x39e1
   10850: 91000108     	add	x8, x8, #0x0
		0000000000010850:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x39e1
   10854: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0xa0>
		0000000000010854:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a34
   10858: 91000021     	add	x1, x1, #0x0
		0000000000010858:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a34
   1085c: 12001ea2     	and	w2, w21, #0xff
   10860: 2a0003f3     	mov	w19, w0
   10864: aa0803e0     	mov	x0, x8
   10868: 94000000     	bl	0x10868 <syna_tcm_enable_report+0x134>
		0000000000010868:  R_AARCH64_CALL26	_printk
   1086c: 2a1303e0     	mov	w0, w19
   10870: 17ffffd7     	b	0x107cc <syna_tcm_enable_report+0x98>
   10874: 90000008     	adrp	x8, 0x10000 <syna_tcm_detect_device+0xa0>
		0000000000010874:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42ec
   10878: 91000108     	add	x8, x8, #0x0
		0000000000010878:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42ec
   1087c: b9420c14     	ldr	w20, [x0, #0x20c]
   10880: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0xa0>
		0000000000010880:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a34
   10884: 91000021     	add	x1, x1, #0x0
		0000000000010884:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a34
   10888: aa0003f5     	mov	x21, x0
   1088c: aa0803e0     	mov	x0, x8
   10890: 94000000     	bl	0x10890 <syna_tcm_enable_report+0x15c>
		0000000000010890:  R_AARCH64_CALL26	_printk
   10894: aa1503e0     	mov	x0, x21
   10898: 17ffffbc     	b	0x10788 <syna_tcm_enable_report+0x54>
   1089c: 94000000     	bl	0x1089c <syna_tcm_enable_report+0x168>
		000000000001089c:  R_AARCH64_CALL26	__stack_chk_fail
