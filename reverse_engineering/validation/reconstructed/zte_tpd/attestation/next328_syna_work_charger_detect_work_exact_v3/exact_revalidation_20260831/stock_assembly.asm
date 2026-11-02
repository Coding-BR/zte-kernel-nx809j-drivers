
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025048 <syna_work_charger_detect_work>:
   25048: d503233f     	paciasp
   2504c: d10143ff     	sub	sp, sp, #0x50
   25050: a9017bfd     	stp	x29, x30, [sp, #0x10]
   25054: a9025ff8     	stp	x24, x23, [sp, #0x20]
   25058: a90357f6     	stp	x22, x21, [sp, #0x30]
   2505c: a9044ff4     	stp	x20, x19, [sp, #0x40]
   25060: 910043fd     	add	x29, sp, #0x10
   25064: d5384108     	mrs	x8, SP_EL0
   25068: f9438908     	ldr	x8, [x8, #0x710]
   2506c: f1188013     	subs	x19, x0, #0x620
   25070: f90007e8     	str	x8, [sp, #0x8]
   25074: 540001a1     	b.ne	0x250a8 <syna_work_charger_detect_work+0x60>
   25078: d5384108     	mrs	x8, SP_EL0
   2507c: f9438908     	ldr	x8, [x8, #0x710]
   25080: f94007e9     	ldr	x9, [sp, #0x8]
   25084: eb09011f     	cmp	x8, x9
   25088: 54000ca1     	b.ne	0x2521c <syna_work_charger_detect_work+0x1d4>
   2508c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   25090: a94357f6     	ldp	x22, x21, [sp, #0x30]
   25094: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   25098: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   2509c: 910143ff     	add	sp, sp, #0x50
   250a0: d50323bf     	autiasp
   250a4: d65f03c0     	ret
   250a8: d10ec008     	sub	x8, x0, #0x3b0
   250ac: f9400109     	ldr	x9, [x8]
   250b0: f9400268     	ldr	x8, [x19]
   250b4: b940b92a     	ldr	w10, [x9, #0xb8]
   250b8: 340000ca     	cbz	w10, 0x250d0 <syna_work_charger_detect_work+0x88>
   250bc: 3942f129     	ldrb	w9, [x9, #0xbc]
   250c0: 36000089     	tbz	w9, #0x0, 0x250d0 <syna_work_charger_detect_work+0x88>
   250c4: aa0003f7     	mov	x23, x0
   250c8: 2a1f03f4     	mov	w20, wzr
   250cc: 14000003     	b	0x250d8 <syna_work_charger_detect_work+0x90>
   250d0: b9420d14     	ldr	w20, [x8, #0x20c]
   250d4: aa0003f7     	mov	x23, x0
   250d8: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		00000000000250d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d2e
   250dc: 91000000     	add	x0, x0, #0x0
		00000000000250dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d2e
   250e0: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		00000000000250e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3677
   250e4: 91000021     	add	x1, x1, #0x0
		00000000000250e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3677
   250e8: 94000000     	bl	0x250e8 <syna_work_charger_detect_work+0xa0>
		00000000000250e8:  R_AARCH64_CALL26	_printk
   250ec: 90000015     	adrp	x21, 0x25000 <syna_tpd_register_fw_class+0x32c>
		00000000000250ec:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x968
   250f0: 90000016     	adrp	x22, 0x25000 <syna_tpd_register_fw_class+0x32c>
		00000000000250f0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x970
   250f4: f90003ff     	str	xzr, [sp]
   250f8: f94002a0     	ldr	x0, [x21]
		00000000000250f8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x968
   250fc: b50001e0     	cbnz	x0, 0x25138 <syna_work_charger_detect_work+0xf0>
   25100: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025100:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb781
   25104: 91000000     	add	x0, x0, #0x0
		0000000000025104:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb781
   25108: 94000000     	bl	0x25108 <syna_work_charger_detect_work+0xc0>
		0000000000025108:  R_AARCH64_CALL26	power_supply_get_by_name
   2510c: f90002a0     	str	x0, [x21]
		000000000002510c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x968
   25110: b5000140     	cbnz	x0, 0x25138 <syna_work_charger_detect_work+0xf0>
   25114: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025114:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x944d
   25118: 91000000     	add	x0, x0, #0x0
		0000000000025118:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x944d
   2511c: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		000000000002511c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x843c
   25120: 91000021     	add	x1, x1, #0x0
		0000000000025120:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x843c
   25124: 2a1f03e2     	mov	w2, wzr
   25128: 94000000     	bl	0x25128 <syna_work_charger_detect_work+0xe0>
		0000000000025128:  R_AARCH64_CALL26	_printk
   2512c: 90000008     	adrp	x8, 0x25000 <syna_tpd_register_fw_class+0x32c>
		000000000002512c:  R_AARCH64_ADR_PREL_PG_HI21	syna_usb_detect_flag
   25130: 3900011f     	strb	wzr, [x8]
		0000000000025130:  R_AARCH64_LDST8_ABS_LO12_NC	syna_usb_detect_flag
   25134: 14000024     	b	0x251c4 <syna_work_charger_detect_work+0x17c>
   25138: f9400008     	ldr	x8, [x0]
   2513c: 910003e2     	mov	x2, sp
   25140: 2a1f03e1     	mov	w1, wzr
   25144: f9401508     	ldr	x8, [x8, #0x28]
   25148: b85fc110     	ldur	w16, [x8, #-0x4]
   2514c: 72819a71     	movk	w17, #0xcd3
   25150: 72bd1331     	movk	w17, #0xe899, lsl #16
   25154: 6b11021f     	cmp	w16, w17
   25158: 54000040     	b.eq	0x25160 <syna_work_charger_detect_work+0x118>
   2515c: d4304500     	brk	#0x8228
   25160: d63f0100     	blr	x8
   25164: b94003f8     	ldr	w24, [sp]
   25168: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025168:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x944d
   2516c: 91000000     	add	x0, x0, #0x0
		000000000002516c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x944d
   25170: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025170:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x843c
   25174: 91000021     	add	x1, x1, #0x0
		0000000000025174:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x843c
   25178: 7100131f     	cmp	w24, #0x4
   2517c: 1a9f17e8     	cset	w8, eq
   25180: 7100071f     	cmp	w24, #0x1
   25184: 1a9f1515     	csinc	w21, w8, wzr, ne
   25188: 2a1503e2     	mov	w2, w21
   2518c: 94000000     	bl	0x2518c <syna_work_charger_detect_work+0x144>
		000000000002518c:  R_AARCH64_CALL26	_printk
   25190: 7100131f     	cmp	w24, #0x4
   25194: 90000008     	adrp	x8, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025194:  R_AARCH64_ADR_PREL_PG_HI21	syna_usb_detect_flag
   25198: 39000115     	strb	w21, [x8]
		0000000000025198:  R_AARCH64_LDST8_ABS_LO12_NC	syna_usb_detect_flag
   2519c: 54000060     	b.eq	0x251a8 <syna_work_charger_detect_work+0x160>
   251a0: 7100071f     	cmp	w24, #0x1
   251a4: 54000101     	b.ne	0x251c4 <syna_work_charger_detect_work+0x17c>
   251a8: b855c2e8     	ldur	w8, [x23, #-0xa4]
   251ac: 394002c9     	ldrb	w9, [x22]
		00000000000251ac:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x970
   251b0: 7100051f     	cmp	w8, #0x1
   251b4: 54000201     	b.ne	0x251f4 <syna_work_charger_detect_work+0x1ac>
   251b8: 370001e9     	tbnz	w9, #0x0, 0x251f4 <syna_work_charger_detect_work+0x1ac>
   251bc: 52800035     	mov	w21, #0x1               // =1
   251c0: 14000007     	b	0x251dc <syna_work_charger_detect_work+0x194>
   251c4: b855c2e8     	ldur	w8, [x23, #-0xa4]
   251c8: 394002c9     	ldrb	w9, [x22]
		00000000000251c8:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x970
   251cc: 7100051f     	cmp	w8, #0x1
   251d0: 540001c1     	b.ne	0x25208 <syna_work_charger_detect_work+0x1c0>
   251d4: 360001a9     	tbz	w9, #0x0, 0x25208 <syna_work_charger_detect_work+0x1c0>
   251d8: 2a1f03f5     	mov	w21, wzr
   251dc: aa1303e0     	mov	x0, x19
   251e0: 2a1503e1     	mov	w1, w21
   251e4: 2a1403e2     	mov	w2, w20
   251e8: 94000000     	bl	0x251e8 <syna_work_charger_detect_work+0x1a0>
		00000000000251e8:  R_AARCH64_CALL26	syna_dev_set_charger_mode
   251ec: 390002d5     	strb	w21, [x22]
		00000000000251ec:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x970
   251f0: 17ffffa2     	b	0x25078 <syna_work_charger_detect_work+0x30>
   251f4: 7100051f     	cmp	w8, #0x1
   251f8: 1a9f1528     	csinc	w8, w9, wzr, ne
   251fc: 3707f3e8     	tbnz	w8, #0x0, 0x25078 <syna_work_charger_detect_work+0x30>
   25200: 52800035     	mov	w21, #0x1               // =1
   25204: 17fffffa     	b	0x251ec <syna_work_charger_detect_work+0x1a4>
   25208: 7100051f     	cmp	w8, #0x1
   2520c: 1a8903e8     	csel	w8, wzr, w9, eq
   25210: 3607f348     	tbz	w8, #0x0, 0x25078 <syna_work_charger_detect_work+0x30>
   25214: 2a1f03f5     	mov	w21, wzr
   25218: 17fffff5     	b	0x251ec <syna_work_charger_detect_work+0x1a4>
   2521c: 94000000     	bl	0x2521c <syna_work_charger_detect_work+0x1d4>
		000000000002521c:  R_AARCH64_CALL26	__stack_chk_fail
