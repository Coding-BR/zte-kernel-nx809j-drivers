
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001e850 <tp_edge_report_limit_write>:
   1e850: d503233f     	paciasp
   1e854: d10243ff     	sub	sp, sp, #0x90
   1e858: a9047bfd     	stp	x29, x30, [sp, #0x40]
   1e85c: f9002bf9     	str	x25, [sp, #0x50]
   1e860: a9065ff8     	stp	x24, x23, [sp, #0x60]
   1e864: a90757f6     	stp	x22, x21, [sp, #0x70]
   1e868: a9084ff4     	stp	x20, x19, [sp, #0x80]
   1e86c: 910103fd     	add	x29, sp, #0x40
   1e870: d5384108     	mrs	x8, SP_EL0
   1e874: aa0103f4     	mov	x20, x1
   1e878: f9438908     	ldr	x8, [x8, #0x710]
   1e87c: f101905f     	cmp	x2, #0x64
   1e880: f81f83a8     	stur	x8, [x29, #-0x8]
   1e884: 90000008     	adrp	x8, 0x1e000 <syna_ts_register_for_panel_events+0x24>
		000000000001e884:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1e888: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   1e88c: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   1e890: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   1e894: d5384109     	mrs	x9, SP_EL0
   1e898: f9400116     	ldr	x22, [x8]
		000000000001e898:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1e89c: 52800c88     	mov	w8, #0x64               // =100
   1e8a0: 9a88b053     	csel	x19, x2, x8, lt
   1e8a4: b40000c1     	cbz	x1, 0x1e8bc <tp_edge_report_limit_write+0x6c>
   1e8a8: 910063e0     	add	x0, sp, #0x18
   1e8ac: aa1403e1     	mov	x1, x20
   1e8b0: aa1303e2     	mov	x2, x19
   1e8b4: 94000000     	bl	0x1e8b4 <tp_edge_report_limit_write+0x64>
		000000000001e8b4:  R_AARCH64_CALL26	_inline_copy_from_user
   1e8b8: b50007a0     	cbnz	x0, 0x1e9ac <tp_edge_report_limit_write+0x15c>
   1e8bc: 910063e0     	add	x0, sp, #0x18
   1e8c0: 94000000     	bl	0x1e8c0 <tp_edge_report_limit_write+0x70>
		000000000001e8c0:  R_AARCH64_CALL26	get_tp_algo_item_id
   1e8c4: 36f80340     	tbz	w0, #0x1f, 0x1e92c <tp_edge_report_limit_write+0xdc>
   1e8c8: 910043e3     	add	x3, sp, #0x10
   1e8cc: aa1403e0     	mov	x0, x20
   1e8d0: aa1303e1     	mov	x1, x19
   1e8d4: 52800142     	mov	w2, #0xa                // =10
   1e8d8: 94000000     	bl	0x1e8d8 <tp_edge_report_limit_write+0x88>
		000000000001e8d8:  R_AARCH64_CALL26	kstrtouint_from_user
   1e8dc: 35000080     	cbnz	w0, 0x1e8ec <tp_edge_report_limit_write+0x9c>
   1e8e0: f9400be8     	ldr	x8, [sp, #0x10]
   1e8e4: 7100291f     	cmp	w8, #0xa
   1e8e8: 540009c9     	b.ls	0x1ea20 <tp_edge_report_limit_write+0x1d0>
   1e8ec: 928002b3     	mov	x19, #-0x16             // =-22
   1e8f0: d5384108     	mrs	x8, SP_EL0
   1e8f4: f9438908     	ldr	x8, [x8, #0x710]
   1e8f8: d5384109     	mrs	x9, SP_EL0
   1e8fc: f85f83a9     	ldur	x9, [x29, #-0x8]
   1e900: eb09011f     	cmp	x8, x9
   1e904: 540016c1     	b.ne	0x1ebdc <tp_edge_report_limit_write+0x38c>
   1e908: aa1303e0     	mov	x0, x19
   1e90c: a9484ff4     	ldp	x20, x19, [sp, #0x80]
   1e910: f9402bf9     	ldr	x25, [sp, #0x50]
   1e914: a94757f6     	ldp	x22, x21, [sp, #0x70]
   1e918: a9465ff8     	ldp	x24, x23, [sp, #0x60]
   1e91c: a9447bfd     	ldp	x29, x30, [sp, #0x40]
   1e920: 910243ff     	add	sp, sp, #0x90
   1e924: d50323bf     	autiasp
   1e928: d65f03c0     	ret
   1e92c: 2a0003f5     	mov	w21, w0
   1e930: 910063e0     	add	x0, sp, #0x18
   1e934: 52800741     	mov	w1, #0x3a               // =58
   1e938: 94000000     	bl	0x1e938 <tp_edge_report_limit_write+0xe8>
		000000000001e938:  R_AARCH64_CALL26	strchr
   1e93c: 91000414     	add	x20, x0, #0x1
   1e940: 90000000     	adrp	x0, 0x1e000 <syna_ts_register_for_panel_events+0x24>
		000000000001e940:  R_AARCH64_ADR_PREL_PG_HI21	unk_31887
   1e944: 91000000     	add	x0, x0, #0x0
		000000000001e944:  R_AARCH64_ADD_ABS_LO12_NC	unk_31887
   1e948: aa1403e1     	mov	x1, x20
   1e94c: aa1f03e2     	mov	x2, xzr
   1e950: f90007f4     	str	x20, [sp, #0x8]
   1e954: 94000000     	bl	0x1e954 <tp_edge_report_limit_write+0x104>
		000000000001e954:  R_AARCH64_CALL26	_printk
   1e958: 2a1503e8     	mov	w8, w21
   1e95c: 71000abf     	cmp	w21, #0x2
   1e960: 54000328     	b.hi	0x1e9c4 <tp_edge_report_limit_write+0x174>
   1e964: 54000d80     	b.eq	0x1eb14 <tp_edge_report_limit_write+0x2c4>
   1e968: 7100051f     	cmp	w8, #0x1
   1e96c: 54000ea0     	b.eq	0x1eb40 <tp_edge_report_limit_write+0x2f0>
   1e970: 350012a8     	cbnz	w8, 0x1ebc4 <tp_edge_report_limit_write+0x374>
   1e974: 910043e8     	add	x8, sp, #0x10
   1e978: aa1403e0     	mov	x0, x20
   1e97c: 52800141     	mov	w1, #0xa                // =10
   1e980: b27e0102     	orr	x2, x8, #0x4
   1e984: 94000000     	bl	0x1e984 <tp_edge_report_limit_write+0x134>
		000000000001e984:  R_AARCH64_CALL26	kstrtouint
   1e988: 35fffb40     	cbnz	w0, 0x1e8f0 <tp_edge_report_limit_write+0xa0>
   1e98c: b94017e8     	ldr	w8, [sp, #0x14]
   1e990: 90000000     	adrp	x0, 0x1e000 <syna_ts_register_for_panel_events+0x24>
		000000000001e990:  R_AARCH64_ADR_PREL_PG_HI21	unk_37521
   1e994: 91000000     	add	x0, x0, #0x0
		000000000001e994:  R_AARCH64_ADD_ABS_LO12_NC	unk_37521
   1e998: 7100011f     	cmp	w8, #0x0
   1e99c: 1a9f07e1     	cset	w1, ne
   1e9a0: b90017e1     	str	w1, [sp, #0x14]
   1e9a4: 39006ec1     	strb	w1, [x22, #0x1b]
   1e9a8: 14000079     	b	0x1eb8c <tp_edge_report_limit_write+0x33c>
   1e9ac: 90000000     	adrp	x0, 0x1e000 <syna_ts_register_for_panel_events+0x24>
		000000000001e9ac:  R_AARCH64_ADR_PREL_PG_HI21	unk_33B59
   1e9b0: 91000000     	add	x0, x0, #0x0
		000000000001e9b0:  R_AARCH64_ADD_ABS_LO12_NC	unk_33B59
   1e9b4: aa1f03e1     	mov	x1, xzr
   1e9b8: aa1f03e2     	mov	x2, xzr
   1e9bc: 94000000     	bl	0x1e9bc <tp_edge_report_limit_write+0x16c>
		000000000001e9bc:  R_AARCH64_CALL26	_printk
   1e9c0: 17ffffcb     	b	0x1e8ec <tp_edge_report_limit_write+0x9c>
   1e9c4: 7100111f     	cmp	w8, #0x4
   1e9c8: 540004c8     	b.hi	0x1ea60 <tp_edge_report_limit_write+0x210>
   1e9cc: 910043e9     	add	x9, sp, #0x10
   1e9d0: aa1403e0     	mov	x0, x20
   1e9d4: 52800141     	mov	w1, #0xa                // =10
   1e9d8: b27e0122     	orr	x2, x9, #0x4
   1e9dc: 2a0803f5     	mov	w21, w8
   1e9e0: 94000000     	bl	0x1e9e0 <tp_edge_report_limit_write+0x190>
		000000000001e9e0:  R_AARCH64_CALL26	kstrtouint
   1e9e4: 71000ebf     	cmp	w21, #0x3
   1e9e8: 54000c21     	b.ne	0x1eb6c <tp_edge_report_limit_write+0x31c>
   1e9ec: 35fff820     	cbnz	w0, 0x1e8f0 <tp_edge_report_limit_write+0xa0>
   1e9f0: 394053e1     	ldrb	w1, [sp, #0x14]
   1e9f4: 90000000     	adrp	x0, 0x1e000 <syna_ts_register_for_panel_events+0x24>
		000000000001e9f4:  R_AARCH64_ADR_PREL_PG_HI21	unk_38CA5
   1e9f8: 91000000     	add	x0, x0, #0x0
		000000000001e9f8:  R_AARCH64_ADD_ABS_LO12_NC	unk_38CA5
   1e9fc: aa1f03e2     	mov	x2, xzr
   1ea00: 39009ac1     	strb	w1, [x22, #0x26]
   1ea04: 94000000     	bl	0x1ea04 <tp_edge_report_limit_write+0x1b4>
		000000000001ea04:  R_AARCH64_CALL26	_printk
   1ea08: 39409ac8     	ldrb	w8, [x22, #0x26]
   1ea0c: 39009ec8     	strb	w8, [x22, #0x27]
   1ea10: 3900a2c8     	strb	w8, [x22, #0x28]
   1ea14: 3900a6c8     	strb	w8, [x22, #0x29]
   1ea18: 3900aac8     	strb	w8, [x22, #0x2a]
   1ea1c: 17ffffb5     	b	0x1e8f0 <tp_edge_report_limit_write+0xa0>
   1ea20: 794886c9     	ldrh	w9, [x22, #0x442]
   1ea24: 7100191f     	cmp	w8, #0x6
   1ea28: 3900e2c8     	strb	w8, [x22, #0x38]
   1ea2c: 54000563     	b.lo	0x1ead8 <tp_edge_report_limit_write+0x288>
   1ea30: d341fd2a     	lsr	x10, x9, #1
   1ea34: 5290626b     	mov	w11, #0x8313            // =33555
   1ea38: 9bab7d4a     	umull	x10, w10, w11
   1ea3c: 5298550b     	mov	w11, #0xc2a8            // =49832
   1ea40: 72a11eab     	movk	w11, #0x8f5, lsl #16
   1ea44: 9bab7d29     	umull	x9, w9, w11
   1ea48: 529fff6b     	mov	w11, #0xfffb            // =65531
   1ea4c: d356fd4a     	lsr	x10, x10, #22
   1ea50: 0b0b010b     	add	w11, w8, w11
   1ea54: d360fd29     	lsr	x9, x9, #32
   1ea58: 1b0a2569     	madd	w9, w11, w10, w9
   1ea5c: 14000026     	b	0x1eaf4 <tp_edge_report_limit_write+0x2a4>
   1ea60: 7100151f     	cmp	w8, #0x5
   1ea64: 540009a0     	b.eq	0x1eb98 <tp_edge_report_limit_write+0x348>
   1ea68: 7100191f     	cmp	w8, #0x6
   1ea6c: 54000ac1     	b.ne	0x1ebc4 <tp_edge_report_limit_write+0x374>
   1ea70: aa1f03f4     	mov	x20, xzr
   1ea74: 910043f7     	add	x23, sp, #0x10
   1ea78: 90000015     	adrp	x21, 0x1e000 <syna_ts_register_for_panel_events+0x24>
		000000000001ea78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a51
   1ea7c: 910002b5     	add	x21, x21, #0x0
		000000000001ea7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a51
   1ea80: 9100d2d8     	add	x24, x22, #0x34
   1ea84: 90000016     	adrp	x22, 0x1e000 <syna_ts_register_for_panel_events+0x24>
		000000000001ea84:  R_AARCH64_ADR_PREL_PG_HI21	unk_3CA2F
   1ea88: 910002d6     	add	x22, x22, #0x0
		000000000001ea88:  R_AARCH64_ADD_ABS_LO12_NC	unk_3CA2F
   1ea8c: 910023e0     	add	x0, sp, #0x8
   1ea90: aa1503e1     	mov	x1, x21
   1ea94: 94000000     	bl	0x1ea94 <tp_edge_report_limit_write+0x244>
		000000000001ea94:  R_AARCH64_CALL26	strsep
   1ea98: b4fff2c0     	cbz	x0, 0x1e8f0 <tp_edge_report_limit_write+0xa0>
   1ea9c: b27e02e2     	orr	x2, x23, #0x4
   1eaa0: 52800141     	mov	w1, #0xa                // =10
   1eaa4: 94000000     	bl	0x1eaa4 <tp_edge_report_limit_write+0x254>
		000000000001eaa4:  R_AARCH64_CALL26	kstrtouint
   1eaa8: 34000080     	cbz	w0, 0x1eab8 <tp_edge_report_limit_write+0x268>
   1eaac: f100129f     	cmp	x20, #0x4
   1eab0: 54fffee3     	b.lo	0x1ea8c <tp_edge_report_limit_write+0x23c>
   1eab4: 17ffff8f     	b	0x1e8f0 <tp_edge_report_limit_write+0xa0>
   1eab8: 394053e2     	ldrb	w2, [sp, #0x14]
   1eabc: aa1603e0     	mov	x0, x22
   1eac0: 2a1403e1     	mov	w1, w20
   1eac4: 38346b02     	strb	w2, [x24, x20]
   1eac8: 91000699     	add	x25, x20, #0x1
   1eacc: 94000000     	bl	0x1eacc <tp_edge_report_limit_write+0x27c>
		000000000001eacc:  R_AARCH64_CALL26	_printk
   1ead0: aa1903f4     	mov	x20, x25
   1ead4: 17fffff6     	b	0x1eaac <tp_edge_report_limit_write+0x25c>
   1ead8: 1b097d09     	mul	w9, w8, w9
   1eadc: 531d712a     	lsl	w10, w9, #3
   1eae0: 4b090149     	sub	w9, w10, w9
   1eae4: 5289ba6a     	mov	w10, #0x4dd3            // =19923
   1eae8: 72a20c4a     	movk	w10, #0x1062, lsl #16
   1eaec: 9baa7d29     	umull	x9, w9, w10
   1eaf0: d366fd29     	lsr	x9, x9, #38
   1eaf4: 90000000     	adrp	x0, 0x1e000 <syna_ts_register_for_panel_events+0x24>
		000000000001eaf4:  R_AARCH64_ADR_PREL_PG_HI21	unk_328F9
   1eaf8: 91000000     	add	x0, x0, #0x0
		000000000001eaf8:  R_AARCH64_ADD_ABS_LO12_NC	unk_328F9
   1eafc: 92407d01     	and	x1, x8, #0xffffffff
   1eb00: 12003d22     	and	w2, w9, #0xffff
   1eb04: 79005ac9     	strh	w9, [x22, #0x2c]
   1eb08: 79005edf     	strh	wzr, [x22, #0x2e]
   1eb0c: 94000000     	bl	0x1eb0c <tp_edge_report_limit_write+0x2bc>
		000000000001eb0c:  R_AARCH64_CALL26	_printk
   1eb10: 17ffff78     	b	0x1e8f0 <tp_edge_report_limit_write+0xa0>
   1eb14: 910043e8     	add	x8, sp, #0x10
   1eb18: aa1403e0     	mov	x0, x20
   1eb1c: 52800141     	mov	w1, #0xa                // =10
   1eb20: b27e0102     	orr	x2, x8, #0x4
   1eb24: 94000000     	bl	0x1eb24 <tp_edge_report_limit_write+0x2d4>
		000000000001eb24:  R_AARCH64_CALL26	kstrtouint
   1eb28: 35ffee40     	cbnz	w0, 0x1e8f0 <tp_edge_report_limit_write+0xa0>
   1eb2c: 79402be1     	ldrh	w1, [sp, #0x14]
   1eb30: 90000000     	adrp	x0, 0x1e000 <syna_ts_register_for_panel_events+0x24>
		000000000001eb30:  R_AARCH64_ADR_PREL_PG_HI21	unk_33421
   1eb34: 91000000     	add	x0, x0, #0x0
		000000000001eb34:  R_AARCH64_ADD_ABS_LO12_NC	unk_33421
   1eb38: 79007ec1     	strh	w1, [x22, #0x3e]
   1eb3c: 14000025     	b	0x1ebd0 <tp_edge_report_limit_write+0x380>
   1eb40: 910043e8     	add	x8, sp, #0x10
   1eb44: aa1403e0     	mov	x0, x20
   1eb48: 52800141     	mov	w1, #0xa                // =10
   1eb4c: b27e0102     	orr	x2, x8, #0x4
   1eb50: 94000000     	bl	0x1eb50 <tp_edge_report_limit_write+0x300>
		000000000001eb50:  R_AARCH64_CALL26	kstrtouint
   1eb54: 35ffece0     	cbnz	w0, 0x1e8f0 <tp_edge_report_limit_write+0xa0>
   1eb58: 394053e1     	ldrb	w1, [sp, #0x14]
   1eb5c: 90000000     	adrp	x0, 0x1e000 <syna_ts_register_for_panel_events+0x24>
		000000000001eb5c:  R_AARCH64_ADR_PREL_PG_HI21	unk_39CF4
   1eb60: 91000000     	add	x0, x0, #0x0
		000000000001eb60:  R_AARCH64_ADD_ABS_LO12_NC	unk_39CF4
   1eb64: 390092c1     	strb	w1, [x22, #0x24]
   1eb68: 1400001a     	b	0x1ebd0 <tp_edge_report_limit_write+0x380>
   1eb6c: 35ffec20     	cbnz	w0, 0x1e8f0 <tp_edge_report_limit_write+0xa0>
   1eb70: b94017e8     	ldr	w8, [sp, #0x14]
   1eb74: 90000000     	adrp	x0, 0x1e000 <syna_ts_register_for_panel_events+0x24>
		000000000001eb74:  R_AARCH64_ADR_PREL_PG_HI21	unk_380F6
   1eb78: 91000000     	add	x0, x0, #0x0
		000000000001eb78:  R_AARCH64_ADD_ABS_LO12_NC	unk_380F6
   1eb7c: 7100011f     	cmp	w8, #0x0
   1eb80: 1a9f07e1     	cset	w1, ne
   1eb84: b90017e1     	str	w1, [sp, #0x14]
   1eb88: 390096c1     	strb	w1, [x22, #0x25]
   1eb8c: aa1f03e2     	mov	x2, xzr
   1eb90: 94000000     	bl	0x1eb90 <tp_edge_report_limit_write+0x340>
		000000000001eb90:  R_AARCH64_CALL26	_printk
   1eb94: 17ffff57     	b	0x1e8f0 <tp_edge_report_limit_write+0xa0>
   1eb98: 910043e8     	add	x8, sp, #0x10
   1eb9c: aa1403e0     	mov	x0, x20
   1eba0: 52800141     	mov	w1, #0xa                // =10
   1eba4: b27e0102     	orr	x2, x8, #0x4
   1eba8: 94000000     	bl	0x1eba8 <tp_edge_report_limit_write+0x358>
		000000000001eba8:  R_AARCH64_CALL26	kstrtouint
   1ebac: 35ffea20     	cbnz	w0, 0x1e8f0 <tp_edge_report_limit_write+0xa0>
   1ebb0: 79402be1     	ldrh	w1, [sp, #0x14]
   1ebb4: 90000000     	adrp	x0, 0x1e000 <syna_ts_register_for_panel_events+0x24>
		000000000001ebb4:  R_AARCH64_ADR_PREL_PG_HI21	unk_37521
   1ebb8: 91000000     	add	x0, x0, #0x0
		000000000001ebb8:  R_AARCH64_ADD_ABS_LO12_NC	unk_37521
   1ebbc: 79007ac1     	strh	w1, [x22, #0x3c]
   1ebc0: 14000004     	b	0x1ebd0 <tp_edge_report_limit_write+0x380>
   1ebc4: 90000000     	adrp	x0, 0x1e000 <syna_ts_register_for_panel_events+0x24>
		000000000001ebc4:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B681
   1ebc8: 91000000     	add	x0, x0, #0x0
		000000000001ebc8:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B681
   1ebcc: aa1f03e1     	mov	x1, xzr
   1ebd0: aa1f03e2     	mov	x2, xzr
   1ebd4: 94000000     	bl	0x1ebd4 <tp_edge_report_limit_write+0x384>
		000000000001ebd4:  R_AARCH64_CALL26	_printk
   1ebd8: 17ffff46     	b	0x1e8f0 <tp_edge_report_limit_write+0xa0>
   1ebdc: 94000000     	bl	0x1ebdc <tp_edge_report_limit_write+0x38c>
		000000000001ebdc:  R_AARCH64_CALL26	__stack_chk_fail
