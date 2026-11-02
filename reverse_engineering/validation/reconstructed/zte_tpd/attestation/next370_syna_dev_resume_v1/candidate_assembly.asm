
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000963c <syna_dev_resume>:
    963c: d503233f     	paciasp
    9640: d10143ff     	sub	sp, sp, #0x50
    9644: a9017bfd     	stp	x29, x30, [sp, #0x10]
    9648: f90013f7     	str	x23, [sp, #0x20]
    964c: a90357f6     	stp	x22, x21, [sp, #0x30]
    9650: a9044ff4     	stp	x20, x19, [sp, #0x40]
    9654: 910043fd     	add	x29, sp, #0x10
    9658: d5384108     	mrs	x8, SP_EL0
    965c: f9438908     	ldr	x8, [x8, #0x710]
    9660: f90007e8     	str	x8, [sp, #0x8]
    9664: b90007ff     	str	wzr, [sp, #0x4]
    9668: d5384108     	mrs	x8, SP_EL0
    966c: f9404c13     	ldr	x19, [x0, #0x98]
    9670: b40001f3     	cbz	x19, 0x96ac <syna_dev_resume+0x70>
    9674: f9413a75     	ldr	x21, [x19, #0x270]
    9678: b102a2bf     	cmn	x21, #0xa8
    967c: 540000a0     	b.eq	0x9690 <syna_dev_resume+0x54>
    9680: b940baa8     	ldr	w8, [x21, #0xb8]
    9684: 34000068     	cbz	w8, 0x9690 <syna_dev_resume+0x54>
    9688: 3942f2a8     	ldrb	w8, [x21, #0xbc]
    968c: 370002c8     	tbnz	w8, #0x0, 0x96e4 <syna_dev_resume+0xa8>
    9690: f9400268     	ldr	x8, [x19]
    9694: b9420d14     	ldr	w20, [x8, #0x20c]
    9698: b9457e68     	ldr	w8, [x19, #0x57c]
    969c: 7100051f     	cmp	w8, #0x1
    96a0: 54000261     	b.ne	0x96ec <syna_dev_resume+0xb0>
    96a4: 2a1f03e0     	mov	w0, wzr
    96a8: 14000002     	b	0x96b0 <syna_dev_resume+0x74>
    96ac: 128002a0     	mov	w0, #-0x16              // =-22
    96b0: d5384108     	mrs	x8, SP_EL0
    96b4: f9438908     	ldr	x8, [x8, #0x710]
    96b8: d5384109     	mrs	x9, SP_EL0
    96bc: f94007e9     	ldr	x9, [sp, #0x8]
    96c0: eb09011f     	cmp	x8, x9
    96c4: 54002d21     	b.ne	0x9c68 <syna_dev_resume+0x62c>
    96c8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    96cc: f94013f7     	ldr	x23, [sp, #0x20]
    96d0: a94357f6     	ldp	x22, x21, [sp, #0x30]
    96d4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    96d8: 910143ff     	add	sp, sp, #0x50
    96dc: d50323bf     	autiasp
    96e0: d65f03c0     	ret
    96e4: 2a1f03f4     	mov	w20, wzr
    96e8: 17ffffec     	b	0x9698 <syna_dev_resume+0x5c>
    96ec: 90000016     	adrp	x22, 0x9000 <syna_dev_process_touch_report+0x268>
		00000000000096ec:  R_AARCH64_ADR_PREL_PG_HI21	word_314C0
    96f0: 390013ff     	strb	wzr, [sp, #0x4]
    96f4: 394002c8     	ldrb	w8, [x22]
		00000000000096f4:  R_AARCH64_LDST8_ABS_LO12_NC	word_314C0
    96f8: 7100051f     	cmp	w8, #0x1
    96fc: 54000361     	b.ne	0x9768 <syna_dev_resume+0x12c>
    9700: b945d668     	ldr	w8, [x19, #0x5d4]
    9704: 35000288     	cbnz	w8, 0x9754 <syna_dev_resume+0x118>
    9708: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009708:  R_AARCH64_ADR_PREL_PG_HI21	unk_37652
    970c: 91000000     	add	x0, x0, #0x0
		000000000000970c:  R_AARCH64_ADD_ABS_LO12_NC	unk_37652
    9710: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009710:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7010
    9714: 91000021     	add	x1, x1, #0x0
		0000000000009714:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7010
    9718: 94000000     	bl	0x9718 <syna_dev_resume+0xdc>
		0000000000009718:  R_AARCH64_CALL26	_printk
    971c: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		000000000000971c:  R_AARCH64_ADR_PREL_PG_HI21	dword_314A0
    9720: 91000000     	add	x0, x0, #0x0
		0000000000009720:  R_AARCH64_ADD_ABS_LO12_NC	dword_314A0
    9724: 52804e21     	mov	w1, #0x271              // =625
    9728: 94000000     	bl	0x9728 <syna_dev_resume+0xec>
		0000000000009728:  R_AARCH64_CALL26	wait_for_completion_timeout
    972c: b50000c0     	cbnz	x0, 0x9744 <syna_dev_resume+0x108>
    9730: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009730:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A355
    9734: 91000000     	add	x0, x0, #0x0
		0000000000009734:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A355
    9738: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009738:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7010
    973c: 91000021     	add	x1, x1, #0x0
		000000000000973c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7010
    9740: 94000000     	bl	0x9740 <syna_dev_resume+0x104>
		0000000000009740:  R_AARCH64_CALL26	_printk
    9744: 2a1f03e0     	mov	w0, wzr
    9748: 390002df     	strb	wzr, [x22]
		0000000000009748:  R_AARCH64_LDST8_ABS_LO12_NC	word_314C0
    974c: 94000000     	bl	0x974c <syna_dev_resume+0x110>
		000000000000974c:  R_AARCH64_CALL26	report_ufp_uevent
    9750: 14000006     	b	0x9768 <syna_dev_resume+0x12c>
    9754: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009754:  R_AARCH64_ADR_PREL_PG_HI21	unk_32F51
    9758: 91000000     	add	x0, x0, #0x0
		0000000000009758:  R_AARCH64_ADD_ABS_LO12_NC	unk_32F51
    975c: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x268>
		000000000000975c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7010
    9760: 91000021     	add	x1, x1, #0x0
		0000000000009760:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7010
    9764: 94000000     	bl	0x9764 <syna_dev_resume+0x128>
		0000000000009764:  R_AARCH64_CALL26	_printk
    9768: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009768:  R_AARCH64_ADR_PREL_PG_HI21	unk_31973
    976c: 91000000     	add	x0, x0, #0x0
		000000000000976c:  R_AARCH64_ADD_ABS_LO12_NC	unk_31973
    9770: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009770:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7010
    9774: 91000021     	add	x1, x1, #0x0
		0000000000009774:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7010
    9778: 94000000     	bl	0x9778 <syna_dev_resume+0x13c>
		0000000000009778:  R_AARCH64_CALL26	_printk
    977c: 39560668     	ldrb	w8, [x19, #0x581]
    9780: 52800029     	mov	w9, #0x1                // =1
    9784: b9057e69     	str	w9, [x19, #0x57c]
    9788: 90000009     	adrp	x9, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009788:  R_AARCH64_ADR_PREL_PG_HI21	large_area_uevent_count
    978c: 7100051f     	cmp	w8, #0x1
    9790: b900013f     	str	wzr, [x9]
		0000000000009790:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_uevent_count
    9794: 54000301     	b.ne	0x97f4 <syna_dev_resume+0x1b8>
    9798: f94022b7     	ldr	x23, [x21, #0x40]
    979c: b40002d7     	cbz	x23, 0x97f4 <syna_dev_resume+0x1b8>
    97a0: b85fc2e8     	ldur	w8, [x23, #-0x4]
    97a4: 528c3629     	mov	w9, #0x61b1             // =25009
    97a8: 72a685c9     	movk	w9, #0x342e, lsl #16
    97ac: 6b09011f     	cmp	w8, w9
    97b0: 54000100     	b.eq	0x97d0 <syna_dev_resume+0x194>
    97b4: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		00000000000097b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24
    97b8: 91000000     	add	x0, x0, #0x0
		00000000000097b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24
    97bc: 90000002     	adrp	x2, 0x9000 <syna_dev_process_touch_report+0x268>
		00000000000097bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6425
    97c0: 91000042     	add	x2, x2, #0x0
		00000000000097c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6425
    97c4: 52904501     	mov	w1, #0x8228             // =33320
    97c8: 528007c3     	mov	w3, #0x3e               // =62
    97cc: 94000000     	bl	0x97cc <syna_dev_resume+0x190>
		00000000000097cc:  R_AARCH64_CALL26	_printk
    97d0: 910022a0     	add	x0, x21, #0x8
    97d4: aa1f03e1     	mov	x1, xzr
    97d8: b85fc2f0     	ldur	w16, [x23, #-0x4]
    97dc: 7280e7f1     	movk	w17, #0x73f
    97e0: 72b8e2f1     	movk	w17, #0xc717, lsl #16
    97e4: 6b11021f     	cmp	w16, w17
    97e8: 54000040     	b.eq	0x97f0 <syna_dev_resume+0x1b4>
    97ec: d43046e0     	brk	#0x8237
    97f0: d63f02e0     	blr	x23
    97f4: b945d668     	ldr	w8, [x19, #0x5d4]
    97f8: 340000e8     	cbz	w8, 0x9814 <syna_dev_resume+0x1d8>
    97fc: 90000008     	adrp	x8, 0x9000 <syna_dev_process_touch_report+0x268>
		00000000000097fc:  R_AARCH64_ADR_PREL_PG_HI21	word_314C0
    9800: 91000108     	add	x8, x8, #0x0
		0000000000009800:  R_AARCH64_ADD_ABS_LO12_NC	word_314C0
    9804: 39400509     	ldrb	w9, [x8, #0x1]
    9808: 39400108     	ldrb	w8, [x8]
    980c: 2a090108     	orr	w8, w8, w9
    9810: 35000fc8     	cbnz	w8, 0x9a08 <syna_dev_resume+0x3cc>
    9814: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009814:  R_AARCH64_ADR_PREL_PG_HI21	unk_33C55
    9818: 91000000     	add	x0, x0, #0x0
		0000000000009818:  R_AARCH64_ADD_ABS_LO12_NC	unk_33C55
    981c: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x268>
		000000000000981c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7010
    9820: 91000021     	add	x1, x1, #0x0
		0000000000009820:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7010
    9824: 94000000     	bl	0x9824 <syna_dev_resume+0x1e8>
		0000000000009824:  R_AARCH64_CALL26	_printk
    9828: f940c6a8     	ldr	x8, [x21, #0x188]
    982c: b5000108     	cbnz	x8, 0x984c <syna_dev_resume+0x210>
    9830: f9400260     	ldr	x0, [x19]
    9834: 2a1403e1     	mov	w1, w20
    9838: 94000000     	bl	0x9838 <syna_dev_resume+0x1fc>
		0000000000009838:  R_AARCH64_CALL26	syna_tcm_reset
    983c: 36f80f60     	tbz	w0, #0x1f, 0x9a28 <syna_dev_resume+0x3ec>
    9840: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009840:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A94B
    9844: 91000000     	add	x0, x0, #0x0
		0000000000009844:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A94B
    9848: 1400008e     	b	0x9a80 <syna_dev_resume+0x444>
    984c: aa1503e0     	mov	x0, x21
    9850: b85fc110     	ldur	w16, [x8, #-0x4]
    9854: 728631d1     	movk	w17, #0x318e
    9858: 72b73211     	movk	w17, #0xb990, lsl #16
    985c: 6b11021f     	cmp	w16, w17
    9860: 54000040     	b.eq	0x9868 <syna_dev_resume+0x22c>
    9864: d4304500     	brk	#0x8228
    9868: d63f0100     	blr	x8
    986c: 3942f2a8     	ldrb	w8, [x21, #0xbc]
    9870: 37000dc8     	tbnz	w8, #0x0, 0x9a28 <syna_dev_resume+0x3ec>
    9874: f9400260     	ldr	x0, [x19]
    9878: 910013e1     	add	x1, sp, #0x4
    987c: aa1f03e2     	mov	x2, xzr
    9880: 94000000     	bl	0x9880 <syna_dev_resume+0x244>
		0000000000009880:  R_AARCH64_CALL26	syna_tcm_get_event_data
    9884: 37f80fa0     	tbnz	w0, #0x1f, 0x9a78 <syna_dev_resume+0x43c>
    9888: 394013e8     	ldrb	w8, [sp, #0x4]
    988c: 7100411f     	cmp	w8, #0x10
    9890: 54000cc0     	b.eq	0x9a28 <syna_dev_resume+0x3ec>
    9894: 52800640     	mov	w0, #0x32               // =50
    9898: 94000000     	bl	0x9898 <syna_dev_resume+0x25c>
		0000000000009898:  R_AARCH64_CALL26	msleep
    989c: f9400260     	ldr	x0, [x19]
    98a0: 910013e1     	add	x1, sp, #0x4
    98a4: aa1f03e2     	mov	x2, xzr
    98a8: 94000000     	bl	0x98a8 <syna_dev_resume+0x26c>
		00000000000098a8:  R_AARCH64_CALL26	syna_tcm_get_event_data
    98ac: 37f80e60     	tbnz	w0, #0x1f, 0x9a78 <syna_dev_resume+0x43c>
    98b0: 394013e8     	ldrb	w8, [sp, #0x4]
    98b4: 7100411f     	cmp	w8, #0x10
    98b8: 54000b80     	b.eq	0x9a28 <syna_dev_resume+0x3ec>
    98bc: 52800640     	mov	w0, #0x32               // =50
    98c0: 94000000     	bl	0x98c0 <syna_dev_resume+0x284>
		00000000000098c0:  R_AARCH64_CALL26	msleep
    98c4: f9400260     	ldr	x0, [x19]
    98c8: 910013e1     	add	x1, sp, #0x4
    98cc: aa1f03e2     	mov	x2, xzr
    98d0: 94000000     	bl	0x98d0 <syna_dev_resume+0x294>
		00000000000098d0:  R_AARCH64_CALL26	syna_tcm_get_event_data
    98d4: 37f80d20     	tbnz	w0, #0x1f, 0x9a78 <syna_dev_resume+0x43c>
    98d8: 394013e8     	ldrb	w8, [sp, #0x4]
    98dc: 7100411f     	cmp	w8, #0x10
    98e0: 54000a40     	b.eq	0x9a28 <syna_dev_resume+0x3ec>
    98e4: 52800640     	mov	w0, #0x32               // =50
    98e8: 94000000     	bl	0x98e8 <syna_dev_resume+0x2ac>
		00000000000098e8:  R_AARCH64_CALL26	msleep
    98ec: f9400260     	ldr	x0, [x19]
    98f0: 910013e1     	add	x1, sp, #0x4
    98f4: aa1f03e2     	mov	x2, xzr
    98f8: 94000000     	bl	0x98f8 <syna_dev_resume+0x2bc>
		00000000000098f8:  R_AARCH64_CALL26	syna_tcm_get_event_data
    98fc: 37f80be0     	tbnz	w0, #0x1f, 0x9a78 <syna_dev_resume+0x43c>
    9900: 394013e8     	ldrb	w8, [sp, #0x4]
    9904: 7100411f     	cmp	w8, #0x10
    9908: 54000900     	b.eq	0x9a28 <syna_dev_resume+0x3ec>
    990c: 52800640     	mov	w0, #0x32               // =50
    9910: 94000000     	bl	0x9910 <syna_dev_resume+0x2d4>
		0000000000009910:  R_AARCH64_CALL26	msleep
    9914: f9400260     	ldr	x0, [x19]
    9918: 910013e1     	add	x1, sp, #0x4
    991c: aa1f03e2     	mov	x2, xzr
    9920: 94000000     	bl	0x9920 <syna_dev_resume+0x2e4>
		0000000000009920:  R_AARCH64_CALL26	syna_tcm_get_event_data
    9924: 37f80aa0     	tbnz	w0, #0x1f, 0x9a78 <syna_dev_resume+0x43c>
    9928: 394013e8     	ldrb	w8, [sp, #0x4]
    992c: 7100411f     	cmp	w8, #0x10
    9930: 540007c0     	b.eq	0x9a28 <syna_dev_resume+0x3ec>
    9934: 52800640     	mov	w0, #0x32               // =50
    9938: 94000000     	bl	0x9938 <syna_dev_resume+0x2fc>
		0000000000009938:  R_AARCH64_CALL26	msleep
    993c: f9400260     	ldr	x0, [x19]
    9940: 910013e1     	add	x1, sp, #0x4
    9944: aa1f03e2     	mov	x2, xzr
    9948: 94000000     	bl	0x9948 <syna_dev_resume+0x30c>
		0000000000009948:  R_AARCH64_CALL26	syna_tcm_get_event_data
    994c: 37f80960     	tbnz	w0, #0x1f, 0x9a78 <syna_dev_resume+0x43c>
    9950: 394013e8     	ldrb	w8, [sp, #0x4]
    9954: 7100411f     	cmp	w8, #0x10
    9958: 54000680     	b.eq	0x9a28 <syna_dev_resume+0x3ec>
    995c: 52800640     	mov	w0, #0x32               // =50
    9960: 94000000     	bl	0x9960 <syna_dev_resume+0x324>
		0000000000009960:  R_AARCH64_CALL26	msleep
    9964: f9400260     	ldr	x0, [x19]
    9968: 910013e1     	add	x1, sp, #0x4
    996c: aa1f03e2     	mov	x2, xzr
    9970: 94000000     	bl	0x9970 <syna_dev_resume+0x334>
		0000000000009970:  R_AARCH64_CALL26	syna_tcm_get_event_data
    9974: 37f80820     	tbnz	w0, #0x1f, 0x9a78 <syna_dev_resume+0x43c>
    9978: 394013e8     	ldrb	w8, [sp, #0x4]
    997c: 7100411f     	cmp	w8, #0x10
    9980: 54000540     	b.eq	0x9a28 <syna_dev_resume+0x3ec>
    9984: 52800640     	mov	w0, #0x32               // =50
    9988: 94000000     	bl	0x9988 <syna_dev_resume+0x34c>
		0000000000009988:  R_AARCH64_CALL26	msleep
    998c: f9400260     	ldr	x0, [x19]
    9990: 910013e1     	add	x1, sp, #0x4
    9994: aa1f03e2     	mov	x2, xzr
    9998: 94000000     	bl	0x9998 <syna_dev_resume+0x35c>
		0000000000009998:  R_AARCH64_CALL26	syna_tcm_get_event_data
    999c: 37f806e0     	tbnz	w0, #0x1f, 0x9a78 <syna_dev_resume+0x43c>
    99a0: 394013e8     	ldrb	w8, [sp, #0x4]
    99a4: 7100411f     	cmp	w8, #0x10
    99a8: 54000400     	b.eq	0x9a28 <syna_dev_resume+0x3ec>
    99ac: 52800640     	mov	w0, #0x32               // =50
    99b0: 94000000     	bl	0x99b0 <syna_dev_resume+0x374>
		00000000000099b0:  R_AARCH64_CALL26	msleep
    99b4: f9400260     	ldr	x0, [x19]
    99b8: 910013e1     	add	x1, sp, #0x4
    99bc: aa1f03e2     	mov	x2, xzr
    99c0: 94000000     	bl	0x99c0 <syna_dev_resume+0x384>
		00000000000099c0:  R_AARCH64_CALL26	syna_tcm_get_event_data
    99c4: 37f805a0     	tbnz	w0, #0x1f, 0x9a78 <syna_dev_resume+0x43c>
    99c8: 394013e8     	ldrb	w8, [sp, #0x4]
    99cc: 7100411f     	cmp	w8, #0x10
    99d0: 540002c0     	b.eq	0x9a28 <syna_dev_resume+0x3ec>
    99d4: 52800640     	mov	w0, #0x32               // =50
    99d8: 94000000     	bl	0x99d8 <syna_dev_resume+0x39c>
		00000000000099d8:  R_AARCH64_CALL26	msleep
    99dc: f9400260     	ldr	x0, [x19]
    99e0: 910013e1     	add	x1, sp, #0x4
    99e4: aa1f03e2     	mov	x2, xzr
    99e8: 94000000     	bl	0x99e8 <syna_dev_resume+0x3ac>
		00000000000099e8:  R_AARCH64_CALL26	syna_tcm_get_event_data
    99ec: 37f80460     	tbnz	w0, #0x1f, 0x9a78 <syna_dev_resume+0x43c>
    99f0: 394013e8     	ldrb	w8, [sp, #0x4]
    99f4: 7100411f     	cmp	w8, #0x10
    99f8: 54000180     	b.eq	0x9a28 <syna_dev_resume+0x3ec>
    99fc: 52800640     	mov	w0, #0x32               // =50
    9a00: 94000000     	bl	0x9a00 <syna_dev_resume+0x3c4>
		0000000000009a00:  R_AARCH64_CALL26	msleep
    9a04: 14000009     	b	0x9a28 <syna_dev_resume+0x3ec>
    9a08: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009a08:  R_AARCH64_ADR_PREL_PG_HI21	unk_360CF
    9a0c: 91000000     	add	x0, x0, #0x0
		0000000000009a0c:  R_AARCH64_ADD_ABS_LO12_NC	unk_360CF
    9a10: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009a10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7010
    9a14: 91000021     	add	x1, x1, #0x0
		0000000000009a14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7010
    9a18: 94000000     	bl	0x9a18 <syna_dev_resume+0x3dc>
		0000000000009a18:  R_AARCH64_CALL26	_printk
    9a1c: aa1303e0     	mov	x0, x19
    9a20: 94000000     	bl	0x9a20 <syna_dev_resume+0x3e4>
		0000000000009a20:  R_AARCH64_CALL26	syna_dev_enter_normal_sensing
    9a24: 37f80240     	tbnz	w0, #0x1f, 0x9a6c <syna_dev_resume+0x430>
    9a28: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009a28:  R_AARCH64_ADR_PREL_PG_HI21	unk_31EEA
    9a2c: 91000000     	add	x0, x0, #0x0
		0000000000009a2c:  R_AARCH64_ADD_ABS_LO12_NC	unk_31EEA
    9a30: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009a30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7010
    9a34: 91000021     	add	x1, x1, #0x0
		0000000000009a34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7010
    9a38: 94000000     	bl	0x9a38 <syna_dev_resume+0x3fc>
		0000000000009a38:  R_AARCH64_CALL26	_printk
    9a3c: aa1303e0     	mov	x0, x19
    9a40: 94000000     	bl	0x9a40 <syna_dev_resume+0x404>
		0000000000009a40:  R_AARCH64_CALL26	syna_dev_set_up_app_fw
    9a44: 37f800e0     	tbnz	w0, #0x1f, 0x9a60 <syna_dev_resume+0x424>
    9a48: 90000008     	adrp	x8, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009a48:  R_AARCH64_ADR_PREL_PG_HI21	byte_314C2
    9a4c: 790002df     	strh	wzr, [x22]
		0000000000009a4c:  R_AARCH64_LDST16_ABS_LO12_NC	word_314C0
    9a50: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009a50:  R_AARCH64_ADR_PREL_PG_HI21	unk_39D7B
    9a54: 91000000     	add	x0, x0, #0x0
		0000000000009a54:  R_AARCH64_ADD_ABS_LO12_NC	unk_39D7B
    9a58: 3900011f     	strb	wzr, [x8]
		0000000000009a58:  R_AARCH64_LDST8_ABS_LO12_NC	byte_314C2
    9a5c: 14000009     	b	0x9a80 <syna_dev_resume+0x444>
    9a60: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009a60:  R_AARCH64_ADR_PREL_PG_HI21	unk_37007
    9a64: 91000000     	add	x0, x0, #0x0
		0000000000009a64:  R_AARCH64_ADD_ABS_LO12_NC	unk_37007
    9a68: 14000006     	b	0x9a80 <syna_dev_resume+0x444>
    9a6c: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009a6c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BF10
    9a70: 91000000     	add	x0, x0, #0x0
		0000000000009a70:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BF10
    9a74: 14000003     	b	0x9a80 <syna_dev_resume+0x444>
    9a78: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009a78:  R_AARCH64_ADR_PREL_PG_HI21	unk_329B7
    9a7c: 91000000     	add	x0, x0, #0x0
		0000000000009a7c:  R_AARCH64_ADD_ABS_LO12_NC	unk_329B7
    9a80: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009a80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7010
    9a84: 91000021     	add	x1, x1, #0x0
		0000000000009a84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7010
    9a88: 94000000     	bl	0x9a88 <syna_dev_resume+0x44c>
		0000000000009a88:  R_AARCH64_CALL26	_printk
    9a8c: 3942f2a8     	ldrb	w8, [x21, #0xbc]
    9a90: 37000188     	tbnz	w8, #0x0, 0x9ac0 <syna_dev_resume+0x484>
    9a94: f94022a8     	ldr	x8, [x21, #0x40]
    9a98: b4000148     	cbz	x8, 0x9ac0 <syna_dev_resume+0x484>
    9a9c: 910022a0     	add	x0, x21, #0x8
    9aa0: 52800021     	mov	w1, #0x1                // =1
    9aa4: b85fc110     	ldur	w16, [x8, #-0x4]
    9aa8: 728f8a71     	movk	w17, #0x7c53
    9aac: 72bea491     	movk	w17, #0xf524, lsl #16
    9ab0: 6b11021f     	cmp	w16, w17
    9ab4: 54000040     	b.eq	0x9abc <syna_dev_resume+0x480>
    9ab8: d4304500     	brk	#0x8228
    9abc: d63f0100     	blr	x8
    9ac0: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009ac0:  R_AARCH64_ADR_PREL_PG_HI21	unk_36A84
    9ac4: 91000000     	add	x0, x0, #0x0
		0000000000009ac4:  R_AARCH64_ADD_ABS_LO12_NC	unk_36A84
    9ac8: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009ac8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1711
    9acc: 91000021     	add	x1, x1, #0x0
		0000000000009acc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1711
    9ad0: 3916027f     	strb	wzr, [x19, #0x580]
    9ad4: 94000000     	bl	0x9ad4 <syna_dev_resume+0x498>
		0000000000009ad4:  R_AARCH64_CALL26	_printk
    9ad8: f9400260     	ldr	x0, [x19]
    9adc: 52801a81     	mov	w1, #0xd4               // =212
    9ae0: 52800062     	mov	w2, #0x3                // =3
    9ae4: 2a1403e3     	mov	w3, w20
    9ae8: 94000000     	bl	0x9ae8 <syna_dev_resume+0x4ac>
		0000000000009ae8:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    9aec: 36f80160     	tbz	w0, #0x1f, 0x9b18 <syna_dev_resume+0x4dc>
    9af0: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009af0:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B058
    9af4: 91000000     	add	x0, x0, #0x0
		0000000000009af4:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B058
    9af8: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009af8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1711
    9afc: 91000021     	add	x1, x1, #0x0
		0000000000009afc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1711
    9b00: 94000000     	bl	0x9b00 <syna_dev_resume+0x4c4>
		0000000000009b00:  R_AARCH64_CALL26	_printk
    9b04: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009b04:  R_AARCH64_ADR_PREL_PG_HI21	unk_354E1
    9b08: 91000000     	add	x0, x0, #0x0
		0000000000009b08:  R_AARCH64_ADD_ABS_LO12_NC	unk_354E1
    9b0c: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009b0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7010
    9b10: 91000021     	add	x1, x1, #0x0
		0000000000009b10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7010
    9b14: 94000000     	bl	0x9b14 <syna_dev_resume+0x4d8>
		0000000000009b14:  R_AARCH64_CALL26	_printk
    9b18: 90000008     	adrp	x8, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009b18:  R_AARCH64_ADR_PREL_PG_HI21	syna_usb_detect_flag
    9b1c: b9400108     	ldr	w8, [x8]
		0000000000009b1c:  R_AARCH64_LDST32_ABS_LO12_NC	syna_usb_detect_flag
    9b20: 7100051f     	cmp	w8, #0x1
    9b24: 54000161     	b.ne	0x9b50 <syna_dev_resume+0x514>
    9b28: aa1303e0     	mov	x0, x19
    9b2c: 52800021     	mov	w1, #0x1                // =1
    9b30: 2a1403e2     	mov	w2, w20
    9b34: 94000000     	bl	0x9b34 <syna_dev_resume+0x4f8>
		0000000000009b34:  R_AARCH64_CALL26	syna_dev_set_charger_mode
    9b38: 340000c0     	cbz	w0, 0x9b50 <syna_dev_resume+0x514>
    9b3c: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009b3c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3D102
    9b40: 91000000     	add	x0, x0, #0x0
		0000000000009b40:  R_AARCH64_ADD_ABS_LO12_NC	unk_3D102
    9b44: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009b44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7010
    9b48: 91000021     	add	x1, x1, #0x0
		0000000000009b48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7010
    9b4c: 94000000     	bl	0x9b4c <syna_dev_resume+0x510>
		0000000000009b4c:  R_AARCH64_CALL26	_printk
    9b50: b9460a61     	ldr	w1, [x19, #0x608]
    9b54: aa1303e0     	mov	x0, x19
    9b58: 2a1403e2     	mov	w2, w20
    9b5c: 94000000     	bl	0x9b5c <syna_dev_resume+0x520>
		0000000000009b5c:  R_AARCH64_CALL26	syna_dev_set_display_rotation
    9b60: b945de68     	ldr	w8, [x19, #0x5dc]
    9b64: 350000c8     	cbnz	w8, 0x9b7c <syna_dev_resume+0x540>
    9b68: b945fa61     	ldr	w1, [x19, #0x5f8]
    9b6c: aa1303e0     	mov	x0, x19
    9b70: 2a1403e2     	mov	w2, w20
    9b74: 94000000     	bl	0x9b74 <syna_dev_resume+0x538>
		0000000000009b74:  R_AARCH64_CALL26	syna_dev_set_tp_report_rate
    9b78: 1400001b     	b	0x9be4 <syna_dev_resume+0x5a8>
    9b7c: aa1303e0     	mov	x0, x19
    9b80: 52800021     	mov	w1, #0x1                // =1
    9b84: 2a1403e2     	mov	w2, w20
    9b88: 94000000     	bl	0x9b88 <syna_dev_resume+0x54c>
		0000000000009b88:  R_AARCH64_CALL26	syna_dev_set_play_game
    9b8c: 340000c0     	cbz	w0, 0x9ba4 <syna_dev_resume+0x568>
    9b90: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009b90:  R_AARCH64_ADR_PREL_PG_HI21	unk_34708
    9b94: 91000000     	add	x0, x0, #0x0
		0000000000009b94:  R_AARCH64_ADD_ABS_LO12_NC	unk_34708
    9b98: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009b98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7010
    9b9c: 91000021     	add	x1, x1, #0x0
		0000000000009b9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7010
    9ba0: 94000000     	bl	0x9ba0 <syna_dev_resume+0x564>
		0000000000009ba0:  R_AARCH64_CALL26	_printk
    9ba4: b945fa61     	ldr	w1, [x19, #0x5f8]
    9ba8: aa1303e0     	mov	x0, x19
    9bac: 2a1403e2     	mov	w2, w20
    9bb0: 94000000     	bl	0x9bb0 <syna_dev_resume+0x574>
		0000000000009bb0:  R_AARCH64_CALL26	syna_dev_set_tp_report_rate
    9bb4: b945fe61     	ldr	w1, [x19, #0x5fc]
    9bb8: aa1303e0     	mov	x0, x19
    9bbc: 2a1403e2     	mov	w2, w20
    9bc0: 94000000     	bl	0x9bc0 <syna_dev_resume+0x584>
		0000000000009bc0:  R_AARCH64_CALL26	syna_dev_set_sensibility_level
    9bc4: b9460261     	ldr	w1, [x19, #0x600]
    9bc8: aa1303e0     	mov	x0, x19
    9bcc: 2a1403e2     	mov	w2, w20
    9bd0: 94000000     	bl	0x9bd0 <syna_dev_resume+0x594>
		0000000000009bd0:  R_AARCH64_CALL26	syna_dev_set_follow_hand_level
    9bd4: b9460661     	ldr	w1, [x19, #0x604]
    9bd8: aa1303e0     	mov	x0, x19
    9bdc: 2a1403e2     	mov	w2, w20
    9be0: 94000000     	bl	0x9be0 <syna_dev_resume+0x5a4>
		0000000000009be0:  R_AARCH64_CALL26	syna_dev_set_stability_level
    9be4: b945ee68     	ldr	w8, [x19, #0x5ec]
    9be8: b945f669     	ldr	w9, [x19, #0x5f4]
    9bec: 90000015     	adrp	x21, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009bec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7010
    9bf0: 910002b5     	add	x21, x21, #0x0
		0000000000009bf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7010
    9bf4: 2a0003f4     	mov	w20, w0
    9bf8: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009bf8:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B149
    9bfc: 91000000     	add	x0, x0, #0x0
		0000000000009bfc:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B149
    9c00: aa1503e1     	mov	x1, x21
    9c04: b905ea68     	str	w8, [x19, #0x5e8]
    9c08: b905f269     	str	w9, [x19, #0x5f0]
    9c0c: 94000000     	bl	0x9c0c <syna_dev_resume+0x5d0>
		0000000000009c0c:  R_AARCH64_CALL26	_printk
    9c10: b945c662     	ldr	w2, [x19, #0x5c4]
    9c14: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009c14:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B7E6
    9c18: 91000000     	add	x0, x0, #0x0
		0000000000009c18:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B7E6
    9c1c: aa1503e1     	mov	x1, x21
    9c20: 94000000     	bl	0x9c20 <syna_dev_resume+0x5e4>
		0000000000009c20:  R_AARCH64_CALL26	_printk
    9c24: b945d662     	ldr	w2, [x19, #0x5d4]
    9c28: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009c28:  R_AARCH64_ADR_PREL_PG_HI21	unk_37D84
    9c2c: 91000000     	add	x0, x0, #0x0
		0000000000009c2c:  R_AARCH64_ADD_ABS_LO12_NC	unk_37D84
    9c30: aa1503e1     	mov	x1, x21
    9c34: 94000000     	bl	0x9c34 <syna_dev_resume+0x5f8>
		0000000000009c34:  R_AARCH64_CALL26	_printk
    9c38: b945ea62     	ldr	w2, [x19, #0x5e8]
    9c3c: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009c3c:  R_AARCH64_ADR_PREL_PG_HI21	unk_335AE
    9c40: 91000000     	add	x0, x0, #0x0
		0000000000009c40:  R_AARCH64_ADD_ABS_LO12_NC	unk_335AE
    9c44: aa1503e1     	mov	x1, x21
    9c48: 94000000     	bl	0x9c48 <syna_dev_resume+0x60c>
		0000000000009c48:  R_AARCH64_CALL26	_printk
    9c4c: b945f262     	ldr	w2, [x19, #0x5f0]
    9c50: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009c50:  R_AARCH64_ADR_PREL_PG_HI21	unk_3937A
    9c54: 91000000     	add	x0, x0, #0x0
		0000000000009c54:  R_AARCH64_ADD_ABS_LO12_NC	unk_3937A
    9c58: aa1503e1     	mov	x1, x21
    9c5c: 94000000     	bl	0x9c5c <syna_dev_resume+0x620>
		0000000000009c5c:  R_AARCH64_CALL26	_printk
    9c60: 2a1403e0     	mov	w0, w20
    9c64: 17fffe93     	b	0x96b0 <syna_dev_resume+0x74>
    9c68: 94000000     	bl	0x9c68 <syna_dev_resume+0x62c>
		0000000000009c68:  R_AARCH64_CALL26	__stack_chk_fail
