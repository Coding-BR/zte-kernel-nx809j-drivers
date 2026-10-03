
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c680 <syna_ts_panel_notifier_callback>:
   1c680: d503233f     	paciasp
   1c684: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1c688: f9000bf3     	str	x19, [sp, #0x10]
   1c68c: 910003fd     	mov	x29, sp
   1c690: b4000581     	cbz	x1, 0x1c740 <syna_ts_panel_notifier_callback+0xc0>
   1c694: b9400028     	ldr	w8, [x1]
   1c698: 71000d1f     	cmp	w8, #0x3
   1c69c: 540000ab     	b.lt	0x1c6b0 <syna_ts_panel_notifier_callback+0x30>
   1c6a0: 540002e0     	b.eq	0x1c6fc <syna_ts_panel_notifier_callback+0x7c>
   1c6a4: 7100111f     	cmp	w8, #0x4
   1c6a8: 540005c0     	b.eq	0x1c760 <syna_ts_panel_notifier_callback+0xe0>
   1c6ac: 14000029     	b	0x1c750 <syna_ts_panel_notifier_callback+0xd0>
   1c6b0: 7100051f     	cmp	w8, #0x1
   1c6b4: 54000320     	b.eq	0x1c718 <syna_ts_panel_notifier_callback+0x98>
   1c6b8: 7100091f     	cmp	w8, #0x2
   1c6bc: 540004a1     	b.ne	0x1c750 <syna_ts_panel_notifier_callback+0xd0>
   1c6c0: 90000008     	adrp	x8, 0x1c000 <syna_testing_pt0a_zte+0x240>
		000000000001c6c0:  R_AARCH64_ADR_PREL_PG_HI21	panel_enter_low_power
   1c6c4: 39400109     	ldrb	w9, [x8]
		000000000001c6c4:  R_AARCH64_LDST8_ABS_LO12_NC	panel_enter_low_power
   1c6c8: 7100053f     	cmp	w9, #0x1
   1c6cc: 540000c1     	b.ne	0x1c6e4 <syna_ts_panel_notifier_callback+0x64>
   1c6d0: 2a1f03e0     	mov	w0, wzr
   1c6d4: 3900011f     	strb	wzr, [x8]
		000000000001c6d4:  R_AARCH64_LDST8_ABS_LO12_NC	panel_enter_low_power
   1c6d8: aa0103f3     	mov	x19, x1
   1c6dc: 94000000     	bl	0x1c6dc <syna_ts_panel_notifier_callback+0x5c>
		000000000001c6dc:  R_AARCH64_CALL26	ufp_notifier_cb
   1c6e0: aa1303e1     	mov	x1, x19
   1c6e4: 39403028     	ldrb	w8, [x1, #0xc]
   1c6e8: 7100051f     	cmp	w8, #0x1
   1c6ec: 54000420     	b.eq	0x1c770 <syna_ts_panel_notifier_callback+0xf0>
   1c6f0: 52800040     	mov	w0, #0x2                // =2
   1c6f4: 94000000     	bl	0x1c6f4 <syna_ts_panel_notifier_callback+0x74>
		000000000001c6f4:  R_AARCH64_CALL26	change_tp_state
   1c6f8: 1400001a     	b	0x1c760 <syna_ts_panel_notifier_callback+0xe0>
   1c6fc: 90000008     	adrp	x8, 0x1c000 <syna_testing_pt0a_zte+0x240>
		000000000001c6fc:  R_AARCH64_ADR_PREL_PG_HI21	panel_enter_low_power
   1c700: 52800029     	mov	w9, #0x1                // =1
   1c704: 52800020     	mov	w0, #0x1                // =1
   1c708: 39000109     	strb	w9, [x8]
		000000000001c708:  R_AARCH64_LDST8_ABS_LO12_NC	panel_enter_low_power
   1c70c: 94000000     	bl	0x1c70c <syna_ts_panel_notifier_callback+0x8c>
		000000000001c70c:  R_AARCH64_CALL26	ufp_notifier_cb
   1c710: 94000000     	bl	0x1c710 <syna_ts_panel_notifier_callback+0x90>
		000000000001c710:  R_AARCH64_CALL26	ufp_report_lcd_state
   1c714: 14000013     	b	0x1c760 <syna_ts_panel_notifier_callback+0xe0>
   1c718: 90000008     	adrp	x8, 0x1c000 <syna_testing_pt0a_zte+0x240>
		000000000001c718:  R_AARCH64_ADR_PREL_PG_HI21	panel_enter_low_power
   1c71c: 39400109     	ldrb	w9, [x8]
		000000000001c71c:  R_AARCH64_LDST8_ABS_LO12_NC	panel_enter_low_power
   1c720: 7100053f     	cmp	w9, #0x1
   1c724: 540002c0     	b.eq	0x1c77c <syna_ts_panel_notifier_callback+0xfc>
   1c728: 39403028     	ldrb	w8, [x1, #0xc]
   1c72c: 7100051f     	cmp	w8, #0x1
   1c730: 54000381     	b.ne	0x1c7a0 <syna_ts_panel_notifier_callback+0x120>
   1c734: 52800060     	mov	w0, #0x3                // =3
   1c738: 94000000     	bl	0x1c738 <syna_ts_panel_notifier_callback+0xb8>
		000000000001c738:  R_AARCH64_CALL26	change_tp_state
   1c73c: 14000009     	b	0x1c760 <syna_ts_panel_notifier_callback+0xe0>
   1c740: 90000000     	adrp	x0, 0x1c000 <syna_testing_pt0a_zte+0x240>
		000000000001c740:  R_AARCH64_ADR_PREL_PG_HI21	unk_31F2D
   1c744: 91000000     	add	x0, x0, #0x0
		000000000001c744:  R_AARCH64_ADD_ABS_LO12_NC	unk_31F2D
   1c748: 94000000     	bl	0x1c748 <syna_ts_panel_notifier_callback+0xc8>
		000000000001c748:  R_AARCH64_CALL26	_printk
   1c74c: 14000005     	b	0x1c760 <syna_ts_panel_notifier_callback+0xe0>
   1c750: 90000000     	adrp	x0, 0x1c000 <syna_testing_pt0a_zte+0x240>
		000000000001c750:  R_AARCH64_ADR_PREL_PG_HI21	unk_3C4D0
   1c754: 91000000     	add	x0, x0, #0x0
		000000000001c754:  R_AARCH64_ADD_ABS_LO12_NC	unk_3C4D0
   1c758: 2a0803e1     	mov	w1, w8
   1c75c: 94000000     	bl	0x1c75c <syna_ts_panel_notifier_callback+0xdc>
		000000000001c75c:  R_AARCH64_CALL26	_printk
   1c760: f9400bf3     	ldr	x19, [sp, #0x10]
   1c764: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1c768: d50323bf     	autiasp
   1c76c: d65f03c0     	ret
   1c770: 90000000     	adrp	x0, 0x1c000 <syna_testing_pt0a_zte+0x240>
		000000000001c770:  R_AARCH64_ADR_PREL_PG_HI21	unk_347E1
   1c774: 91000000     	add	x0, x0, #0x0
		000000000001c774:  R_AARCH64_ADD_ABS_LO12_NC	unk_347E1
   1c778: 17fffff4     	b	0x1c748 <syna_ts_panel_notifier_callback+0xc8>
   1c77c: 2a1f03e0     	mov	w0, wzr
   1c780: 3900011f     	strb	wzr, [x8]
		000000000001c780:  R_AARCH64_LDST8_ABS_LO12_NC	panel_enter_low_power
   1c784: aa0103f3     	mov	x19, x1
   1c788: 94000000     	bl	0x1c788 <syna_ts_panel_notifier_callback+0x108>
		000000000001c788:  R_AARCH64_CALL26	ufp_notifier_cb
   1c78c: 90000000     	adrp	x0, 0x1c000 <syna_testing_pt0a_zte+0x240>
		000000000001c78c:  R_AARCH64_ADR_PREL_PG_HI21	unk_35A7D
   1c790: 91000000     	add	x0, x0, #0x0
		000000000001c790:  R_AARCH64_ADD_ABS_LO12_NC	unk_35A7D
   1c794: 94000000     	bl	0x1c794 <syna_ts_panel_notifier_callback+0x114>
		000000000001c794:  R_AARCH64_CALL26	_printk
   1c798: aa1303e1     	mov	x1, x19
   1c79c: 17ffffe3     	b	0x1c728 <syna_ts_panel_notifier_callback+0xa8>
   1c7a0: 90000000     	adrp	x0, 0x1c000 <syna_testing_pt0a_zte+0x240>
		000000000001c7a0:  R_AARCH64_ADR_PREL_PG_HI21	unk_32F7F
   1c7a4: 91000000     	add	x0, x0, #0x0
		000000000001c7a4:  R_AARCH64_ADD_ABS_LO12_NC	unk_32F7F
   1c7a8: 17ffffe8     	b	0x1c748 <syna_ts_panel_notifier_callback+0xc8>
