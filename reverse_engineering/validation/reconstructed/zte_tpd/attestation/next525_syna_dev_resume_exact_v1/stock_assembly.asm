
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000c4e4 <syna_dev_resume>:
    c4e4: d503233f     	paciasp
    c4e8: d10103ff     	sub	sp, sp, #0x40
    c4ec: a9017bfd     	stp	x29, x30, [sp, #0x10]
    c4f0: a90257f6     	stp	x22, x21, [sp, #0x20]
    c4f4: a9034ff4     	stp	x20, x19, [sp, #0x30]
    c4f8: 910043fd     	add	x29, sp, #0x10
    c4fc: d5384108     	mrs	x8, SP_EL0
    c500: f9438908     	ldr	x8, [x8, #0x710]
    c504: f90007e8     	str	x8, [sp, #0x8]
    c508: f9404c13     	ldr	x19, [x0, #0x98]
    c50c: b4000233     	cbz	x19, 0xc550 <syna_dev_resume+0x6c>
    c510: f9413a75     	ldr	x21, [x19, #0x270]
    c514: f9400268     	ldr	x8, [x19]
    c518: b102a2bf     	cmn	x21, #0xa8
    c51c: 540000e0     	b.eq	0xc538 <syna_dev_resume+0x54>
    c520: b940baa9     	ldr	w9, [x21, #0xb8]
    c524: 340000a9     	cbz	w9, 0xc538 <syna_dev_resume+0x54>
    c528: 3942f2a9     	ldrb	w9, [x21, #0xbc]
    c52c: 36000069     	tbz	w9, #0x0, 0xc538 <syna_dev_resume+0x54>
    c530: 2a1f03f4     	mov	w20, wzr
    c534: 14000002     	b	0xc53c <syna_dev_resume+0x58>
    c538: b9420d14     	ldr	w20, [x8, #0x20c]
    c53c: b9457e68     	ldr	w8, [x19, #0x57c]
    c540: 7100051f     	cmp	w8, #0x1
    c544: 540001e1     	b.ne	0xc580 <syna_dev_resume+0x9c>
    c548: 2a1f03e0     	mov	w0, wzr
    c54c: 14000002     	b	0xc554 <syna_dev_resume+0x70>
    c550: 128002a0     	mov	w0, #-0x16              // =-22
    c554: d5384108     	mrs	x8, SP_EL0
    c558: f9438908     	ldr	x8, [x8, #0x710]
    c55c: f94007e9     	ldr	x9, [sp, #0x8]
    c560: eb09011f     	cmp	x8, x9
    c564: 54002c41     	b.ne	0xcaec <syna_dev_resume+0x608>
    c568: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    c56c: a94257f6     	ldp	x22, x21, [sp, #0x20]
    c570: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    c574: 910103ff     	add	sp, sp, #0x40
    c578: d50323bf     	autiasp
    c57c: d65f03c0     	ret
    c580: 90000016     	adrp	x22, 0xc000 <syna_dev_connect+0x174>
		000000000000c580:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa0
    c584: 390013ff     	strb	wzr, [sp, #0x4]
    c588: 394002c8     	ldrb	w8, [x22]
		000000000000c588:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa0
    c58c: 7100051f     	cmp	w8, #0x1
    c590: 54000361     	b.ne	0xc5fc <syna_dev_resume+0x118>
    c594: b945d668     	ldr	w8, [x19, #0x5d4]
    c598: 35000288     	cbnz	w8, 0xc5e8 <syna_dev_resume+0x104>
    c59c: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c59c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x626a
    c5a0: 91000000     	add	x0, x0, #0x0
		000000000000c5a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x626a
    c5a4: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000c5a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc076
    c5a8: 91000021     	add	x1, x1, #0x0
		000000000000c5a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc076
    c5ac: 94000000     	bl	0xc5ac <syna_dev_resume+0xc8>
		000000000000c5ac:  R_AARCH64_CALL26	_printk
    c5b0: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c5b0:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x80
    c5b4: 91000000     	add	x0, x0, #0x0
		000000000000c5b4:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x80
    c5b8: 52804e21     	mov	w1, #0x271              // =625
    c5bc: 94000000     	bl	0xc5bc <syna_dev_resume+0xd8>
		000000000000c5bc:  R_AARCH64_CALL26	wait_for_completion_timeout
    c5c0: b50000c0     	cbnz	x0, 0xc5d8 <syna_dev_resume+0xf4>
    c5c4: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c5c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x912c
    c5c8: 91000000     	add	x0, x0, #0x0
		000000000000c5c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x912c
    c5cc: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000c5cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc076
    c5d0: 91000021     	add	x1, x1, #0x0
		000000000000c5d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc076
    c5d4: 94000000     	bl	0xc5d4 <syna_dev_resume+0xf0>
		000000000000c5d4:  R_AARCH64_CALL26	_printk
    c5d8: 2a1f03e0     	mov	w0, wzr
    c5dc: 390002df     	strb	wzr, [x22]
		000000000000c5dc:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa0
    c5e0: 94000000     	bl	0xc5e0 <syna_dev_resume+0xfc>
		000000000000c5e0:  R_AARCH64_CALL26	report_ufp_uevent
    c5e4: 14000006     	b	0xc5fc <syna_dev_resume+0x118>
    c5e8: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c5e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194c
    c5ec: 91000000     	add	x0, x0, #0x0
		000000000000c5ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194c
    c5f0: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000c5f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc076
    c5f4: 91000021     	add	x1, x1, #0x0
		000000000000c5f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc076
    c5f8: 94000000     	bl	0xc5f8 <syna_dev_resume+0x114>
		000000000000c5f8:  R_AARCH64_CALL26	_printk
    c5fc: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c5fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b2
    c600: 91000000     	add	x0, x0, #0x0
		000000000000c600:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b2
    c604: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000c604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc076
    c608: 91000021     	add	x1, x1, #0x0
		000000000000c608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc076
    c60c: 94000000     	bl	0xc60c <syna_dev_resume+0x128>
		000000000000c60c:  R_AARCH64_CALL26	_printk
    c610: 39560668     	ldrb	w8, [x19, #0x581]
    c614: 52800029     	mov	w9, #0x1                // =1
    c618: b9057e69     	str	w9, [x19, #0x57c]
    c61c: 90000009     	adrp	x9, 0xc000 <syna_dev_connect+0x174>
		000000000000c61c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7ac
    c620: 7100051f     	cmp	w8, #0x1
    c624: b900013f     	str	wzr, [x9]
		000000000000c624:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x7ac
    c628: 54000181     	b.ne	0xc658 <syna_dev_resume+0x174>
    c62c: f94022a8     	ldr	x8, [x21, #0x40]
    c630: b4000148     	cbz	x8, 0xc658 <syna_dev_resume+0x174>
    c634: 910022a0     	add	x0, x21, #0x8
    c638: 2a1f03e1     	mov	w1, wzr
    c63c: b85fc110     	ldur	w16, [x8, #-0x4]
    c640: 728c3631     	movk	w17, #0x61b1
    c644: 72a685d1     	movk	w17, #0x342e, lsl #16
    c648: 6b11021f     	cmp	w16, w17
    c64c: 54000040     	b.eq	0xc654 <syna_dev_resume+0x170>
    c650: d4304500     	brk	#0x8228
    c654: d63f0100     	blr	x8
    c658: b945d668     	ldr	w8, [x19, #0x5d4]
    c65c: 340000e8     	cbz	w8, 0xc678 <syna_dev_resume+0x194>
    c660: 90000008     	adrp	x8, 0xc000 <syna_dev_connect+0x174>
		000000000000c660:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa0
    c664: 91000108     	add	x8, x8, #0x0
		000000000000c664:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0xa0
    c668: 39400109     	ldrb	w9, [x8]
    c66c: 39400508     	ldrb	w8, [x8, #0x1]
    c670: 2a090108     	orr	w8, w8, w9
    c674: 35000428     	cbnz	w8, 0xc6f8 <syna_dev_resume+0x214>
    c678: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c678:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2668
    c67c: 91000000     	add	x0, x0, #0x0
		000000000000c67c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2668
    c680: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000c680:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc076
    c684: 91000021     	add	x1, x1, #0x0
		000000000000c684:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc076
    c688: 94000000     	bl	0xc688 <syna_dev_resume+0x1a4>
		000000000000c688:  R_AARCH64_CALL26	_printk
    c68c: f940c6a8     	ldr	x8, [x21, #0x188]
    c690: b5000108     	cbnz	x8, 0xc6b0 <syna_dev_resume+0x1cc>
    c694: f9400260     	ldr	x0, [x19]
    c698: 2a1403e1     	mov	w1, w20
    c69c: 94000000     	bl	0xc69c <syna_dev_resume+0x1b8>
		000000000000c69c:  R_AARCH64_CALL26	syna_tcm_reset
    c6a0: 36f80480     	tbz	w0, #0x1f, 0xc730 <syna_dev_resume+0x24c>
    c6a4: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c6a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9754
    c6a8: 91000000     	add	x0, x0, #0x0
		000000000000c6a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9754
    c6ac: 1400002b     	b	0xc758 <syna_dev_resume+0x274>
    c6b0: aa1503e0     	mov	x0, x21
    c6b4: b85fc110     	ldur	w16, [x8, #-0x4]
    c6b8: 72974371     	movk	w17, #0xba1b
    c6bc: 72a56791     	movk	w17, #0x2b3c, lsl #16
    c6c0: 6b11021f     	cmp	w16, w17
    c6c4: 54000040     	b.eq	0xc6cc <syna_dev_resume+0x1e8>
    c6c8: d4304500     	brk	#0x8228
    c6cc: d63f0100     	blr	x8
    c6d0: 3942f2a8     	ldrb	w8, [x21, #0xbc]
    c6d4: 370002e8     	tbnz	w8, #0x0, 0xc730 <syna_dev_resume+0x24c>
    c6d8: f9400260     	ldr	x0, [x19]
    c6dc: 910013e1     	add	x1, sp, #0x4
    c6e0: aa1f03e2     	mov	x2, xzr
    c6e4: 94000000     	bl	0xc6e4 <syna_dev_resume+0x200>
		000000000000c6e4:  R_AARCH64_CALL26	syna_tcm_get_event_data
    c6e8: 36f801e0     	tbz	w0, #0x1f, 0xc724 <syna_dev_resume+0x240>
    c6ec: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c6ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12f5
    c6f0: 91000000     	add	x0, x0, #0x0
		000000000000c6f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12f5
    c6f4: 14000019     	b	0xc758 <syna_dev_resume+0x274>
    c6f8: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c6f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c37
    c6fc: 91000000     	add	x0, x0, #0x0
		000000000000c6fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c37
    c700: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000c700:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc076
    c704: 91000021     	add	x1, x1, #0x0
		000000000000c704:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc076
    c708: 94000000     	bl	0xc708 <syna_dev_resume+0x224>
		000000000000c708:  R_AARCH64_CALL26	_printk
    c70c: aa1303e0     	mov	x0, x19
    c710: 940004bf     	bl	0xda0c <syna_dev_enter_normal_sensing>
    c714: 36f800e0     	tbz	w0, #0x1f, 0xc730 <syna_dev_resume+0x24c>
    c718: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c718:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xadff
    c71c: 91000000     	add	x0, x0, #0x0
		000000000000c71c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xadff
    c720: 1400000e     	b	0xc758 <syna_dev_resume+0x274>
    c724: 394013e8     	ldrb	w8, [sp, #0x4]
    c728: 7100411f     	cmp	w8, #0x10
    c72c: 54001261     	b.ne	0xc978 <syna_dev_resume+0x494>
    c730: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c730:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x788
    c734: 91000000     	add	x0, x0, #0x0
		000000000000c734:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x788
    c738: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000c738:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc076
    c73c: 91000021     	add	x1, x1, #0x0
		000000000000c73c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc076
    c740: 94000000     	bl	0xc740 <syna_dev_resume+0x25c>
		000000000000c740:  R_AARCH64_CALL26	_printk
    c744: aa1303e0     	mov	x0, x19
    c748: 97ffff30     	bl	0xc408 <syna_dev_set_up_app_fw>
    c74c: 36f80120     	tbz	w0, #0x1f, 0xc770 <syna_dev_resume+0x28c>
    c750: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c750:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5bf0
    c754: 91000000     	add	x0, x0, #0x0
		000000000000c754:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5bf0
    c758: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000c758:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc076
    c75c: 91000021     	add	x1, x1, #0x0
		000000000000c75c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc076
    c760: 94000000     	bl	0xc760 <syna_dev_resume+0x27c>
		000000000000c760:  R_AARCH64_CALL26	_printk
    c764: 3942f2a8     	ldrb	w8, [x21, #0xbc]
    c768: 360001c8     	tbz	w8, #0x0, 0xc7a0 <syna_dev_resume+0x2bc>
    c76c: 14000018     	b	0xc7cc <syna_dev_resume+0x2e8>
    c770: b9457e62     	ldr	w2, [x19, #0x57c]
    c774: 90000008     	adrp	x8, 0xc000 <syna_dev_connect+0x174>
		000000000000c774:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa0
    c778: 91000108     	add	x8, x8, #0x0
		000000000000c778:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0xa0
    c77c: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c77c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8b52
    c780: 91000000     	add	x0, x0, #0x0
		000000000000c780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8b52
    c784: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000c784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc076
    c788: 91000021     	add	x1, x1, #0x0
		000000000000c788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc076
    c78c: 3900091f     	strb	wzr, [x8, #0x2]
    c790: 7900011f     	strh	wzr, [x8]
    c794: 94000000     	bl	0xc794 <syna_dev_resume+0x2b0>
		000000000000c794:  R_AARCH64_CALL26	_printk
    c798: 3942f2a8     	ldrb	w8, [x21, #0xbc]
    c79c: 37000188     	tbnz	w8, #0x0, 0xc7cc <syna_dev_resume+0x2e8>
    c7a0: f94022a8     	ldr	x8, [x21, #0x40]
    c7a4: b4000148     	cbz	x8, 0xc7cc <syna_dev_resume+0x2e8>
    c7a8: 910022a0     	add	x0, x21, #0x8
    c7ac: 52800021     	mov	w1, #0x1                // =1
    c7b0: b85fc110     	ldur	w16, [x8, #-0x4]
    c7b4: 728c3631     	movk	w17, #0x61b1
    c7b8: 72a685d1     	movk	w17, #0x342e, lsl #16
    c7bc: 6b11021f     	cmp	w16, w17
    c7c0: 54000040     	b.eq	0xc7c8 <syna_dev_resume+0x2e4>
    c7c4: d4304500     	brk	#0x8228
    c7c8: d63f0100     	blr	x8
    c7cc: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c7cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5641
    c7d0: 91000000     	add	x0, x0, #0x0
		000000000000c7d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5641
    c7d4: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000c7d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2593
    c7d8: 91000021     	add	x1, x1, #0x0
		000000000000c7d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2593
    c7dc: 3916027f     	strb	wzr, [x19, #0x580]
    c7e0: 94000000     	bl	0xc7e0 <syna_dev_resume+0x2fc>
		000000000000c7e0:  R_AARCH64_CALL26	_printk
    c7e4: f9400260     	ldr	x0, [x19]
    c7e8: 52801a81     	mov	w1, #0xd4               // =212
    c7ec: 52800062     	mov	w2, #0x3                // =3
    c7f0: 2a1403e3     	mov	w3, w20
    c7f4: 94000000     	bl	0xc7f4 <syna_dev_resume+0x310>
		000000000000c7f4:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    c7f8: 36f80160     	tbz	w0, #0x1f, 0xc824 <syna_dev_resume+0x340>
    c7fc: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c7fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e91
    c800: 91000000     	add	x0, x0, #0x0
		000000000000c800:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e91
    c804: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000c804:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2593
    c808: 91000021     	add	x1, x1, #0x0
		000000000000c808:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2593
    c80c: 94000000     	bl	0xc80c <syna_dev_resume+0x328>
		000000000000c80c:  R_AARCH64_CALL26	_printk
    c810: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c810:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x401c
    c814: 91000000     	add	x0, x0, #0x0
		000000000000c814:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x401c
    c818: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000c818:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc076
    c81c: 91000021     	add	x1, x1, #0x0
		000000000000c81c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc076
    c820: 94000000     	bl	0xc820 <syna_dev_resume+0x33c>
		000000000000c820:  R_AARCH64_CALL26	_printk
    c824: 90000008     	adrp	x8, 0xc000 <syna_dev_connect+0x174>
		000000000000c824:  R_AARCH64_ADR_PREL_PG_HI21	syna_usb_detect_flag
    c828: 39400108     	ldrb	w8, [x8]
		000000000000c828:  R_AARCH64_LDST8_ABS_LO12_NC	syna_usb_detect_flag
    c82c: 7100051f     	cmp	w8, #0x1
    c830: 54000161     	b.ne	0xc85c <syna_dev_resume+0x378>
    c834: aa1303e0     	mov	x0, x19
    c838: 52800021     	mov	w1, #0x1                // =1
    c83c: 2a1403e2     	mov	w2, w20
    c840: 94000000     	bl	0xc840 <syna_dev_resume+0x35c>
		000000000000c840:  R_AARCH64_CALL26	syna_dev_set_charger_mode
    c844: 340000c0     	cbz	w0, 0xc85c <syna_dev_resume+0x378>
    c848: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c848:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc086
    c84c: 91000000     	add	x0, x0, #0x0
		000000000000c84c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc086
    c850: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000c850:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc076
    c854: 91000021     	add	x1, x1, #0x0
		000000000000c854:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc076
    c858: 94000000     	bl	0xc858 <syna_dev_resume+0x374>
		000000000000c858:  R_AARCH64_CALL26	_printk
    c85c: b9460a61     	ldr	w1, [x19, #0x608]
    c860: aa1303e0     	mov	x0, x19
    c864: 2a1403e2     	mov	w2, w20
    c868: 94000000     	bl	0xc868 <syna_dev_resume+0x384>
		000000000000c868:  R_AARCH64_CALL26	syna_dev_set_display_rotation
    c86c: b945de68     	ldr	w8, [x19, #0x5dc]
    c870: 350000c8     	cbnz	w8, 0xc888 <syna_dev_resume+0x3a4>
    c874: b945fa61     	ldr	w1, [x19, #0x5f8]
    c878: aa1303e0     	mov	x0, x19
    c87c: 2a1403e2     	mov	w2, w20
    c880: 94000000     	bl	0xc880 <syna_dev_resume+0x39c>
		000000000000c880:  R_AARCH64_CALL26	syna_dev_set_tp_report_rate
    c884: 1400001b     	b	0xc8f0 <syna_dev_resume+0x40c>
    c888: aa1303e0     	mov	x0, x19
    c88c: 52800021     	mov	w1, #0x1                // =1
    c890: 2a1403e2     	mov	w2, w20
    c894: 94000000     	bl	0xc894 <syna_dev_resume+0x3b0>
		000000000000c894:  R_AARCH64_CALL26	syna_dev_set_play_game
    c898: 340000c0     	cbz	w0, 0xc8b0 <syna_dev_resume+0x3cc>
    c89c: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c89c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31d6
    c8a0: 91000000     	add	x0, x0, #0x0
		000000000000c8a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31d6
    c8a4: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000c8a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc076
    c8a8: 91000021     	add	x1, x1, #0x0
		000000000000c8a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc076
    c8ac: 94000000     	bl	0xc8ac <syna_dev_resume+0x3c8>
		000000000000c8ac:  R_AARCH64_CALL26	_printk
    c8b0: b945fa61     	ldr	w1, [x19, #0x5f8]
    c8b4: aa1303e0     	mov	x0, x19
    c8b8: 2a1403e2     	mov	w2, w20
    c8bc: 94000000     	bl	0xc8bc <syna_dev_resume+0x3d8>
		000000000000c8bc:  R_AARCH64_CALL26	syna_dev_set_tp_report_rate
    c8c0: b945fe61     	ldr	w1, [x19, #0x5fc]
    c8c4: aa1303e0     	mov	x0, x19
    c8c8: 2a1403e2     	mov	w2, w20
    c8cc: 94000000     	bl	0xc8cc <syna_dev_resume+0x3e8>
		000000000000c8cc:  R_AARCH64_CALL26	syna_dev_set_sensibility_level
    c8d0: b9460261     	ldr	w1, [x19, #0x600]
    c8d4: aa1303e0     	mov	x0, x19
    c8d8: 2a1403e2     	mov	w2, w20
    c8dc: 94000000     	bl	0xc8dc <syna_dev_resume+0x3f8>
		000000000000c8dc:  R_AARCH64_CALL26	syna_dev_set_follow_hand_level
    c8e0: b9460661     	ldr	w1, [x19, #0x604]
    c8e4: aa1303e0     	mov	x0, x19
    c8e8: 2a1403e2     	mov	w2, w20
    c8ec: 94000000     	bl	0xc8ec <syna_dev_resume+0x408>
		000000000000c8ec:  R_AARCH64_CALL26	syna_dev_set_stability_level
    c8f0: b945ee68     	ldr	w8, [x19, #0x5ec]
    c8f4: b945f669     	ldr	w9, [x19, #0x5f4]
    c8f8: 90000015     	adrp	x21, 0xc000 <syna_dev_connect+0x174>
		000000000000c8f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc076
    c8fc: 910002b5     	add	x21, x21, #0x0
		000000000000c8fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc076
    c900: b945b262     	ldr	w2, [x19, #0x5b0]
    c904: 2a0003f4     	mov	w20, w0
    c908: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c908:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9f82
    c90c: 91000000     	add	x0, x0, #0x0
		000000000000c90c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9f82
    c910: aa1503e1     	mov	x1, x21
    c914: b905ea68     	str	w8, [x19, #0x5e8]
    c918: b905f269     	str	w9, [x19, #0x5f0]
    c91c: 94000000     	bl	0xc91c <syna_dev_resume+0x438>
		000000000000c91c:  R_AARCH64_CALL26	_printk
    c920: b945c662     	ldr	w2, [x19, #0x5c4]
    c924: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa677
    c928: 91000000     	add	x0, x0, #0x0
		000000000000c928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa677
    c92c: aa1503e1     	mov	x1, x21
    c930: 94000000     	bl	0xc930 <syna_dev_resume+0x44c>
		000000000000c930:  R_AARCH64_CALL26	_printk
    c934: b945d662     	ldr	w2, [x19, #0x5d4]
    c938: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c938:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x69e4
    c93c: 91000000     	add	x0, x0, #0x0
		000000000000c93c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x69e4
    c940: aa1503e1     	mov	x1, x21
    c944: 94000000     	bl	0xc944 <syna_dev_resume+0x460>
		000000000000c944:  R_AARCH64_CALL26	_printk
    c948: b945ea62     	ldr	w2, [x19, #0x5e8]
    c94c: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c94c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fa9
    c950: 91000000     	add	x0, x0, #0x0
		000000000000c950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fa9
    c954: aa1503e1     	mov	x1, x21
    c958: 94000000     	bl	0xc958 <syna_dev_resume+0x474>
		000000000000c958:  R_AARCH64_CALL26	_printk
    c95c: b945f262     	ldr	w2, [x19, #0x5f0]
    c960: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c960:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x811d
    c964: 91000000     	add	x0, x0, #0x0
		000000000000c964:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x811d
    c968: aa1503e1     	mov	x1, x21
    c96c: 94000000     	bl	0xc96c <syna_dev_resume+0x488>
		000000000000c96c:  R_AARCH64_CALL26	_printk
    c970: 2a1403e0     	mov	w0, w20
    c974: 17fffef8     	b	0xc554 <syna_dev_resume+0x70>
    c978: 52800640     	mov	w0, #0x32               // =50
    c97c: 94000000     	bl	0xc97c <syna_dev_resume+0x498>
		000000000000c97c:  R_AARCH64_CALL26	msleep
    c980: f9400260     	ldr	x0, [x19]
    c984: 910013e1     	add	x1, sp, #0x4
    c988: aa1f03e2     	mov	x2, xzr
    c98c: 94000000     	bl	0xc98c <syna_dev_resume+0x4a8>
		000000000000c98c:  R_AARCH64_CALL26	syna_tcm_get_event_data
    c990: 37ffeae0     	tbnz	w0, #0x1f, 0xc6ec <syna_dev_resume+0x208>
    c994: 394013e8     	ldrb	w8, [sp, #0x4]
    c998: 7100411f     	cmp	w8, #0x10
    c99c: 54ffeca0     	b.eq	0xc730 <syna_dev_resume+0x24c>
    c9a0: 52800640     	mov	w0, #0x32               // =50
    c9a4: 94000000     	bl	0xc9a4 <syna_dev_resume+0x4c0>
		000000000000c9a4:  R_AARCH64_CALL26	msleep
    c9a8: f9400260     	ldr	x0, [x19]
    c9ac: 910013e1     	add	x1, sp, #0x4
    c9b0: aa1f03e2     	mov	x2, xzr
    c9b4: 94000000     	bl	0xc9b4 <syna_dev_resume+0x4d0>
		000000000000c9b4:  R_AARCH64_CALL26	syna_tcm_get_event_data
    c9b8: 37ffe9a0     	tbnz	w0, #0x1f, 0xc6ec <syna_dev_resume+0x208>
    c9bc: 394013e8     	ldrb	w8, [sp, #0x4]
    c9c0: 7100411f     	cmp	w8, #0x10
    c9c4: 54ffeb60     	b.eq	0xc730 <syna_dev_resume+0x24c>
    c9c8: 52800640     	mov	w0, #0x32               // =50
    c9cc: 94000000     	bl	0xc9cc <syna_dev_resume+0x4e8>
		000000000000c9cc:  R_AARCH64_CALL26	msleep
    c9d0: f9400260     	ldr	x0, [x19]
    c9d4: 910013e1     	add	x1, sp, #0x4
    c9d8: aa1f03e2     	mov	x2, xzr
    c9dc: 94000000     	bl	0xc9dc <syna_dev_resume+0x4f8>
		000000000000c9dc:  R_AARCH64_CALL26	syna_tcm_get_event_data
    c9e0: 37ffe860     	tbnz	w0, #0x1f, 0xc6ec <syna_dev_resume+0x208>
    c9e4: 394013e8     	ldrb	w8, [sp, #0x4]
    c9e8: 7100411f     	cmp	w8, #0x10
    c9ec: 54ffea20     	b.eq	0xc730 <syna_dev_resume+0x24c>
    c9f0: 52800640     	mov	w0, #0x32               // =50
    c9f4: 94000000     	bl	0xc9f4 <syna_dev_resume+0x510>
		000000000000c9f4:  R_AARCH64_CALL26	msleep
    c9f8: f9400260     	ldr	x0, [x19]
    c9fc: 910013e1     	add	x1, sp, #0x4
    ca00: aa1f03e2     	mov	x2, xzr
    ca04: 94000000     	bl	0xca04 <syna_dev_resume+0x520>
		000000000000ca04:  R_AARCH64_CALL26	syna_tcm_get_event_data
    ca08: 37ffe720     	tbnz	w0, #0x1f, 0xc6ec <syna_dev_resume+0x208>
    ca0c: 394013e8     	ldrb	w8, [sp, #0x4]
    ca10: 7100411f     	cmp	w8, #0x10
    ca14: 54ffe8e0     	b.eq	0xc730 <syna_dev_resume+0x24c>
    ca18: 52800640     	mov	w0, #0x32               // =50
    ca1c: 94000000     	bl	0xca1c <syna_dev_resume+0x538>
		000000000000ca1c:  R_AARCH64_CALL26	msleep
    ca20: f9400260     	ldr	x0, [x19]
    ca24: 910013e1     	add	x1, sp, #0x4
    ca28: aa1f03e2     	mov	x2, xzr
    ca2c: 94000000     	bl	0xca2c <syna_dev_resume+0x548>
		000000000000ca2c:  R_AARCH64_CALL26	syna_tcm_get_event_data
    ca30: 37ffe5e0     	tbnz	w0, #0x1f, 0xc6ec <syna_dev_resume+0x208>
    ca34: 394013e8     	ldrb	w8, [sp, #0x4]
    ca38: 7100411f     	cmp	w8, #0x10
    ca3c: 54ffe7a0     	b.eq	0xc730 <syna_dev_resume+0x24c>
    ca40: 52800640     	mov	w0, #0x32               // =50
    ca44: 94000000     	bl	0xca44 <syna_dev_resume+0x560>
		000000000000ca44:  R_AARCH64_CALL26	msleep
    ca48: f9400260     	ldr	x0, [x19]
    ca4c: 910013e1     	add	x1, sp, #0x4
    ca50: aa1f03e2     	mov	x2, xzr
    ca54: 94000000     	bl	0xca54 <syna_dev_resume+0x570>
		000000000000ca54:  R_AARCH64_CALL26	syna_tcm_get_event_data
    ca58: 37ffe4a0     	tbnz	w0, #0x1f, 0xc6ec <syna_dev_resume+0x208>
    ca5c: 394013e8     	ldrb	w8, [sp, #0x4]
    ca60: 7100411f     	cmp	w8, #0x10
    ca64: 54ffe660     	b.eq	0xc730 <syna_dev_resume+0x24c>
    ca68: 52800640     	mov	w0, #0x32               // =50
    ca6c: 94000000     	bl	0xca6c <syna_dev_resume+0x588>
		000000000000ca6c:  R_AARCH64_CALL26	msleep
    ca70: f9400260     	ldr	x0, [x19]
    ca74: 910013e1     	add	x1, sp, #0x4
    ca78: aa1f03e2     	mov	x2, xzr
    ca7c: 94000000     	bl	0xca7c <syna_dev_resume+0x598>
		000000000000ca7c:  R_AARCH64_CALL26	syna_tcm_get_event_data
    ca80: 37ffe360     	tbnz	w0, #0x1f, 0xc6ec <syna_dev_resume+0x208>
    ca84: 394013e8     	ldrb	w8, [sp, #0x4]
    ca88: 7100411f     	cmp	w8, #0x10
    ca8c: 54ffe520     	b.eq	0xc730 <syna_dev_resume+0x24c>
    ca90: 52800640     	mov	w0, #0x32               // =50
    ca94: 94000000     	bl	0xca94 <syna_dev_resume+0x5b0>
		000000000000ca94:  R_AARCH64_CALL26	msleep
    ca98: f9400260     	ldr	x0, [x19]
    ca9c: 910013e1     	add	x1, sp, #0x4
    caa0: aa1f03e2     	mov	x2, xzr
    caa4: 94000000     	bl	0xcaa4 <syna_dev_resume+0x5c0>
		000000000000caa4:  R_AARCH64_CALL26	syna_tcm_get_event_data
    caa8: 37ffe220     	tbnz	w0, #0x1f, 0xc6ec <syna_dev_resume+0x208>
    caac: 394013e8     	ldrb	w8, [sp, #0x4]
    cab0: 7100411f     	cmp	w8, #0x10
    cab4: 54ffe3e0     	b.eq	0xc730 <syna_dev_resume+0x24c>
    cab8: 52800640     	mov	w0, #0x32               // =50
    cabc: 94000000     	bl	0xcabc <syna_dev_resume+0x5d8>
		000000000000cabc:  R_AARCH64_CALL26	msleep
    cac0: f9400260     	ldr	x0, [x19]
    cac4: 910013e1     	add	x1, sp, #0x4
    cac8: aa1f03e2     	mov	x2, xzr
    cacc: 94000000     	bl	0xcacc <syna_dev_resume+0x5e8>
		000000000000cacc:  R_AARCH64_CALL26	syna_tcm_get_event_data
    cad0: 37ffe0e0     	tbnz	w0, #0x1f, 0xc6ec <syna_dev_resume+0x208>
    cad4: 394013e8     	ldrb	w8, [sp, #0x4]
    cad8: 7100411f     	cmp	w8, #0x10
    cadc: 54ffe2a0     	b.eq	0xc730 <syna_dev_resume+0x24c>
    cae0: 52800640     	mov	w0, #0x32               // =50
    cae4: 94000000     	bl	0xcae4 <syna_dev_resume+0x600>
		000000000000cae4:  R_AARCH64_CALL26	msleep
    cae8: 17ffff12     	b	0xc730 <syna_dev_resume+0x24c>
    caec: 94000000     	bl	0xcaec <syna_dev_resume+0x608>
		000000000000caec:  R_AARCH64_CALL26	__stack_chk_fail
