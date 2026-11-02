
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c558 <syna_ts_check_dt>:
   1c558: d503233f     	paciasp
   1c55c: d10303ff     	sub	sp, sp, #0xc0
   1c560: a9067bfd     	stp	x29, x30, [sp, #0x60]
   1c564: a9076ffc     	stp	x28, x27, [sp, #0x70]
   1c568: a90867fa     	stp	x26, x25, [sp, #0x80]
   1c56c: a9095ff8     	stp	x24, x23, [sp, #0x90]
   1c570: a90a57f6     	stp	x22, x21, [sp, #0xa0]
   1c574: a90b4ff4     	stp	x20, x19, [sp, #0xb0]
   1c578: 910183fd     	add	x29, sp, #0x60
   1c57c: d5384108     	mrs	x8, SP_EL0
   1c580: aa0003f3     	mov	x19, x0
   1c584: 90000001     	adrp	x1, 0x1c000 <syna_testing_pt0a_zte+0x1ac>
		000000000001c584:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a4e
   1c588: 91000021     	add	x1, x1, #0x0
		000000000001c588:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a4e
   1c58c: f9438908     	ldr	x8, [x8, #0x710]
   1c590: aa1f03e2     	mov	x2, xzr
   1c594: f81f83a8     	stur	x8, [x29, #-0x8]
   1c598: a9047fff     	stp	xzr, xzr, [sp, #0x40]
   1c59c: a9037fff     	stp	xzr, xzr, [sp, #0x30]
   1c5a0: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   1c5a4: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   1c5a8: a9007fff     	stp	xzr, xzr, [sp]
   1c5ac: d5384108     	mrs	x8, SP_EL0
   1c5b0: f9438908     	ldr	x8, [x8, #0x710]
   1c5b4: f9002be8     	str	x8, [sp, #0x50]
   1c5b8: f9417400     	ldr	x0, [x0, #0x2e8]
   1c5bc: 94000000     	bl	0x1c5bc <syna_ts_check_dt+0x64>
		000000000001c5bc:  R_AARCH64_CALL26	of_count_phandle_with_args
   1c5c0: 7100041f     	cmp	w0, #0x1
   1c5c4: 540006eb     	b.lt	0x1c6a0 <syna_ts_check_dt+0x148>
   1c5c8: 2a0003f4     	mov	w20, w0
   1c5cc: 2a1f03f5     	mov	w21, wzr
   1c5d0: 90000017     	adrp	x23, 0x1c000 <syna_testing_pt0a_zte+0x1ac>
		000000000001c5d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a4e
   1c5d4: 910002f7     	add	x23, x23, #0x0
		000000000001c5d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a4e
   1c5d8: 90000018     	adrp	x24, 0x1c000 <syna_testing_pt0a_zte+0x1ac>
		000000000001c5d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a54
   1c5dc: 91000318     	add	x24, x24, #0x0
		000000000001c5dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a54
   1c5e0: 9000001c     	adrp	x28, 0x1c000 <syna_testing_pt0a_zte+0x1ac>
		000000000001c5e0:  R_AARCH64_ADR_PREL_PG_HI21	unk_3351C
   1c5e4: 9100039c     	add	x28, x28, #0x0
		000000000001c5e4:  R_AARCH64_ADD_ABS_LO12_NC	unk_3351C
   1c5e8: 12800016     	mov	w22, #-0x1              // =-1
   1c5ec: 90000019     	adrp	x25, 0x1c000 <syna_testing_pt0a_zte+0x1ac>
		000000000001c5ec:  R_AARCH64_ADR_PREL_PG_HI21	unk_31E60
   1c5f0: 91000339     	add	x25, x25, #0x0
		000000000001c5f0:  R_AARCH64_ADD_ABS_LO12_NC	unk_31E60
   1c5f4: 1400000a     	b	0x1c61c <syna_ts_check_dt+0xc4>
   1c5f8: 90000000     	adrp	x0, 0x1c000 <syna_testing_pt0a_zte+0x1ac>
		000000000001c5f8:  R_AARCH64_ADR_PREL_PG_HI21	unk_33BEE
   1c5fc: 91000000     	add	x0, x0, #0x0
		000000000001c5fc:  R_AARCH64_ADD_ABS_LO12_NC	unk_33BEE
   1c600: aa1803e1     	mov	x1, x24
   1c604: aa1803e2     	mov	x2, x24
   1c608: 94000000     	bl	0x1c608 <syna_ts_check_dt+0xb0>
		000000000001c608:  R_AARCH64_CALL26	_printk
   1c60c: 2a1a03f6     	mov	w22, w26
   1c610: 110006b5     	add	w21, w21, #0x1
   1c614: 6b15029f     	cmp	w20, w21
   1c618: 540005a0     	b.eq	0x1c6cc <syna_ts_check_dt+0x174>
   1c61c: f9417660     	ldr	x0, [x19, #0x2e8]
   1c620: 910003e5     	mov	x5, sp
   1c624: aa1703e1     	mov	x1, x23
   1c628: aa1f03e2     	mov	x2, xzr
   1c62c: 2a1f03e3     	mov	w3, wzr
   1c630: 2a1503e4     	mov	w4, w21
   1c634: a9007fff     	stp	xzr, xzr, [sp]
   1c638: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   1c63c: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   1c640: a9037fff     	stp	xzr, xzr, [sp, #0x30]
   1c644: a9047fff     	stp	xzr, xzr, [sp, #0x40]
   1c648: 94000000     	bl	0x1c648 <syna_ts_check_dt+0xf0>
		000000000001c648:  R_AARCH64_CALL26	__of_parse_phandle_with_args
   1c64c: f94003e8     	ldr	x8, [sp]
   1c650: 7100001f     	cmp	w0, #0x0
   1c654: 9a9f011b     	csel	x27, x8, xzr, eq
   1c658: b500019b     	cbnz	x27, 0x1c688 <syna_ts_check_dt+0x130>
   1c65c: aa1b03e0     	mov	x0, x27
   1c660: 94000000     	bl	0x1c660 <syna_ts_check_dt+0x108>
		000000000001c660:  R_AARCH64_CALL26	of_drm_find_panel
   1c664: 2a0003fa     	mov	w26, w0
   1c668: 3140041f     	cmn	w0, #0x1, lsl #12       // =0x1000
   1c66c: 540001e9     	b.ls	0x1c6a8 <syna_ts_check_dt+0x150>
   1c670: 31004f5f     	cmn	w26, #0x13
   1c674: 54fffc20     	b.eq	0x1c5f8 <syna_ts_check_dt+0xa0>
   1c678: 3108175f     	cmn	w26, #0x205
   1c67c: 54fffca1     	b.ne	0x1c610 <syna_ts_check_dt+0xb8>
   1c680: aa1c03e0     	mov	x0, x28
   1c684: 17ffffdf     	b	0x1c600 <syna_ts_check_dt+0xa8>
   1c688: f9400363     	ldr	x3, [x27]
   1c68c: aa1903e0     	mov	x0, x25
   1c690: aa1803e1     	mov	x1, x24
   1c694: aa1803e2     	mov	x2, x24
   1c698: 94000000     	bl	0x1c698 <syna_ts_check_dt+0x140>
		000000000001c698:  R_AARCH64_CALL26	_printk
   1c69c: 17fffff0     	b	0x1c65c <syna_ts_check_dt+0x104>
   1c6a0: 12800256     	mov	w22, #-0x13             // =-19
   1c6a4: 1400000a     	b	0x1c6cc <syna_ts_check_dt+0x174>
   1c6a8: f9400361     	ldr	x1, [x27]
   1c6ac: 90000000     	adrp	x0, 0x1c000 <syna_testing_pt0a_zte+0x1ac>
		000000000001c6ac:  R_AARCH64_ADR_PREL_PG_HI21	DEVICE_NODE_NAME
   1c6b0: 91000000     	add	x0, x0, #0x0
		000000000001c6b0:  R_AARCH64_ADD_ABS_LO12_NC	DEVICE_NODE_NAME
   1c6b4: 52800c82     	mov	w2, #0x64               // =100
   1c6b8: 93407f53     	sxtw	x19, w26
   1c6bc: 94000000     	bl	0x1c6bc <syna_ts_check_dt+0x164>
		000000000001c6bc:  R_AARCH64_CALL26	strncpy
   1c6c0: 90000008     	adrp	x8, 0x1c000 <syna_testing_pt0a_zte+0x1ac>
		000000000001c6c0:  R_AARCH64_ADR_PREL_PG_HI21	active_panel
   1c6c4: 2a1f03f6     	mov	w22, wzr
   1c6c8: f9000113     	str	x19, [x8]
		000000000001c6c8:  R_AARCH64_LDST64_ABS_LO12_NC	active_panel
   1c6cc: d5384108     	mrs	x8, SP_EL0
   1c6d0: f9438908     	ldr	x8, [x8, #0x710]
   1c6d4: d5384109     	mrs	x9, SP_EL0
   1c6d8: f85f83a9     	ldur	x9, [x29, #-0x8]
   1c6dc: eb09011f     	cmp	x8, x9
   1c6e0: 54000161     	b.ne	0x1c70c <syna_ts_check_dt+0x1b4>
   1c6e4: 2a1603e0     	mov	w0, w22
   1c6e8: a94b4ff4     	ldp	x20, x19, [sp, #0xb0]
   1c6ec: a94a57f6     	ldp	x22, x21, [sp, #0xa0]
   1c6f0: a9495ff8     	ldp	x24, x23, [sp, #0x90]
   1c6f4: a94867fa     	ldp	x26, x25, [sp, #0x80]
   1c6f8: a9476ffc     	ldp	x28, x27, [sp, #0x70]
   1c6fc: a9467bfd     	ldp	x29, x30, [sp, #0x60]
   1c700: 910303ff     	add	sp, sp, #0xc0
   1c704: d50323bf     	autiasp
   1c708: d65f03c0     	ret
   1c70c: 94000000     	bl	0x1c70c <syna_ts_check_dt+0x1b4>
		000000000001c70c:  R_AARCH64_CALL26	__stack_chk_fail
