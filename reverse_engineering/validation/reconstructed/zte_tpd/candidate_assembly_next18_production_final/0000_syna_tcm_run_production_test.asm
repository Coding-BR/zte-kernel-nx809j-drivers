
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000105dc <syna_tcm_run_production_test>:
   105dc: d503233f     	paciasp
   105e0: d10103ff     	sub	sp, sp, #0x40
   105e4: a9017bfd     	stp	x29, x30, [sp, #0x10]
   105e8: a90257f6     	stp	x22, x21, [sp, #0x20]
   105ec: a9034ff4     	stp	x20, x19, [sp, #0x30]
   105f0: 910043fd     	add	x29, sp, #0x10
   105f4: d5384108     	mrs	x8, SP_EL0
   105f8: f9438908     	ldr	x8, [x8, #0x710]
   105fc: f90007e8     	str	x8, [sp, #0x8]
   10600: b40005a0     	cbz	x0, 0x106b4 <syna_tcm_run_production_test+0xd8>
   10604: aa0203f3     	mov	x19, x2
   10608: 39402402     	ldrb	w2, [x0, #0x9]
   1060c: aa0003f4     	mov	x20, x0
   10610: 7100045f     	cmp	w2, #0x1
   10614: 540005e1     	b.ne	0x106d0 <syna_tcm_run_production_test+0xf4>
   10618: 2a0303f5     	mov	w21, w3
   1061c: 350000a3     	cbnz	w3, 0x10630 <syna_tcm_run_production_test+0x54>
   10620: f9402688     	ldr	x8, [x20, #0x48]
   10624: 39405108     	ldrb	w8, [x8, #0x14]
   10628: 36000888     	tbz	w8, #0x0, 0x10738 <syna_tcm_run_production_test+0x15c>
   1062c: 2a1f03f5     	mov	w21, wzr
   10630: f941ce88     	ldr	x8, [x20, #0x398]
   10634: 390013e1     	strb	w1, [sp, #0x4]
   10638: 910013e2     	add	x2, sp, #0x4
   1063c: aa1403e0     	mov	x0, x20
   10640: 52800541     	mov	w1, #0x2a               // =42
   10644: 52800023     	mov	w3, #0x1                // =1
   10648: aa1f03e4     	mov	x4, xzr
   1064c: 2a1503e5     	mov	w5, w21
   10650: b85fc110     	ldur	w16, [x8, #-0x4]
   10654: 728751d1     	movk	w17, #0x3a8e
   10658: 72a48411     	movk	w17, #0x2420, lsl #16
   1065c: 6b11021f     	cmp	w16, w17
   10660: 54000040     	b.eq	0x10668 <syna_tcm_run_production_test+0x8c>
   10664: d4304500     	brk	#0x8228
   10668: d63f0100     	blr	x8
   1066c: 37f80400     	tbnz	w0, #0x1f, 0x106ec <syna_tcm_run_production_test+0x110>
   10670: b40000d3     	cbz	x19, 0x10688 <syna_tcm_run_production_test+0xac>
   10674: 91052281     	add	x1, x20, #0x148
   10678: aa1303e0     	mov	x0, x19
   1067c: 9400003a     	bl	0x10764 <syna_tcm_buf_copy>
   10680: 37f804a0     	tbnz	w0, #0x1f, 0x10714 <syna_tcm_run_production_test+0x138>
   10684: 2a1f03e0     	mov	w0, wzr
   10688: d5384108     	mrs	x8, SP_EL0
   1068c: f9438908     	ldr	x8, [x8, #0x710]
   10690: f94007e9     	ldr	x9, [sp, #0x8]
   10694: eb09011f     	cmp	x8, x9
   10698: 54000641     	b.ne	0x10760 <syna_tcm_run_production_test+0x184>
   1069c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   106a0: a94257f6     	ldp	x22, x21, [sp, #0x20]
   106a4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   106a8: 910103ff     	add	sp, sp, #0x40
   106ac: d50323bf     	autiasp
   106b0: d65f03c0     	ret
   106b4: 90000000     	adrp	x0, 0x10000 <syna_tcm_do_fw_update+0x344>
		00000000000106b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xccc
   106b8: 91000000     	add	x0, x0, #0x0
		00000000000106b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xccc
   106bc: 90000001     	adrp	x1, 0x10000 <syna_tcm_do_fw_update+0x344>
		00000000000106bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x157d
   106c0: 91000021     	add	x1, x1, #0x0
		00000000000106c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x157d
   106c4: 94000000     	bl	0x106c4 <syna_tcm_run_production_test+0xe8>
		00000000000106c4:  R_AARCH64_CALL26	_printk
   106c8: 12801e00     	mov	w0, #-0xf1              // =-241
   106cc: 17ffffef     	b	0x10688 <syna_tcm_run_production_test+0xac>
   106d0: 90000000     	adrp	x0, 0x10000 <syna_tcm_do_fw_update+0x344>
		00000000000106d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10dd
   106d4: 91000000     	add	x0, x0, #0x0
		00000000000106d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10dd
   106d8: 90000001     	adrp	x1, 0x10000 <syna_tcm_do_fw_update+0x344>
		00000000000106d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x157d
   106dc: 91000021     	add	x1, x1, #0x0
		00000000000106dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x157d
   106e0: 94000000     	bl	0x106e0 <syna_tcm_run_production_test+0x104>
		00000000000106e0:  R_AARCH64_CALL26	_printk
   106e4: 12801e00     	mov	w0, #-0xf1              // =-241
   106e8: 17ffffe8     	b	0x10688 <syna_tcm_run_production_test+0xac>
   106ec: 394013e2     	ldrb	w2, [sp, #0x4]
   106f0: 90000008     	adrp	x8, 0x10000 <syna_tcm_do_fw_update+0x344>
		00000000000106f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x398c
   106f4: 91000108     	add	x8, x8, #0x0
		00000000000106f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x398c
   106f8: 90000001     	adrp	x1, 0x10000 <syna_tcm_do_fw_update+0x344>
		00000000000106f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x157d
   106fc: 91000021     	add	x1, x1, #0x0
		00000000000106fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x157d
   10700: 2a0003f3     	mov	w19, w0
   10704: aa0803e0     	mov	x0, x8
   10708: 52800543     	mov	w3, #0x2a               // =42
   1070c: 94000000     	bl	0x1070c <syna_tcm_run_production_test+0x130>
		000000000001070c:  R_AARCH64_CALL26	_printk
   10710: 14000008     	b	0x10730 <syna_tcm_run_production_test+0x154>
   10714: 90000008     	adrp	x8, 0x10000 <syna_tcm_do_fw_update+0x344>
		0000000000010714:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25c0
   10718: 91000108     	add	x8, x8, #0x0
		0000000000010718:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25c0
   1071c: 90000001     	adrp	x1, 0x10000 <syna_tcm_do_fw_update+0x344>
		000000000001071c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x157d
   10720: 91000021     	add	x1, x1, #0x0
		0000000000010720:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x157d
   10724: 2a0003f3     	mov	w19, w0
   10728: aa0803e0     	mov	x0, x8
   1072c: 94000000     	bl	0x1072c <syna_tcm_run_production_test+0x150>
		000000000001072c:  R_AARCH64_CALL26	_printk
   10730: 2a1303e0     	mov	w0, w19
   10734: 17ffffd5     	b	0x10688 <syna_tcm_run_production_test+0xac>
   10738: 90000008     	adrp	x8, 0x10000 <syna_tcm_do_fw_update+0x344>
		0000000000010738:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x157d
   1073c: 91000108     	add	x8, x8, #0x0
		000000000001073c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x157d
   10740: b9420e95     	ldr	w21, [x20, #0x20c]
   10744: 90000000     	adrp	x0, 0x10000 <syna_tcm_do_fw_update+0x344>
		0000000000010744:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42e1
   10748: 91000000     	add	x0, x0, #0x0
		0000000000010748:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42e1
   1074c: 2a0103f6     	mov	w22, w1
   10750: aa0803e1     	mov	x1, x8
   10754: 94000000     	bl	0x10754 <syna_tcm_run_production_test+0x178>
		0000000000010754:  R_AARCH64_CALL26	_printk
   10758: 2a1603e1     	mov	w1, w22
   1075c: 17ffffb5     	b	0x10630 <syna_tcm_run_production_test+0x54>
   10760: 94000000     	bl	0x10760 <syna_tcm_run_production_test+0x184>
		0000000000010760:  R_AARCH64_CALL26	__stack_chk_fail
