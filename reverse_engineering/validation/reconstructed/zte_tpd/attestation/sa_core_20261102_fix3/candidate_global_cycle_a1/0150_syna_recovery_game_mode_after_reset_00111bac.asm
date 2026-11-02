
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000165a4 <syna_recovery_game_mode_after_reset>:
   165a4: b5000060     	cbnz	x0, 0x165b0 <syna_recovery_game_mode_after_reset+0xc>
   165a8: 128002a0     	mov	w0, #-0x16              // =-22
   165ac: d65f03c0     	ret
   165b0: d503233f     	paciasp
   165b4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   165b8: f9000bf5     	str	x21, [sp, #0x10]
   165bc: a9024ff4     	stp	x20, x19, [sp, #0x20]
   165c0: 910003fd     	mov	x29, sp
   165c4: f9413809     	ldr	x9, [x0, #0x270]
   165c8: f9400008     	ldr	x8, [x0]
   165cc: b102a13f     	cmn	x9, #0xa8
   165d0: 540000e0     	b.eq	0x165ec <syna_recovery_game_mode_after_reset+0x48>
   165d4: b940b92a     	ldr	w10, [x9, #0xb8]
   165d8: 340000aa     	cbz	w10, 0x165ec <syna_recovery_game_mode_after_reset+0x48>
   165dc: 3942f129     	ldrb	w9, [x9, #0xbc]
   165e0: 36000069     	tbz	w9, #0x0, 0x165ec <syna_recovery_game_mode_after_reset+0x48>
   165e4: 2a1f03f3     	mov	w19, wzr
   165e8: 14000002     	b	0x165f0 <syna_recovery_game_mode_after_reset+0x4c>
   165ec: b9420d13     	ldr	w19, [x8, #0x20c]
   165f0: b945dc08     	ldr	w8, [x0, #0x5dc]
   165f4: 35000148     	cbnz	w8, 0x1661c <syna_recovery_game_mode_after_reset+0x78>
   165f8: b945f801     	ldr	w1, [x0, #0x5f8]
   165fc: 2a1303e2     	mov	w2, w19
   16600: 94000000     	bl	0x16600 <syna_recovery_game_mode_after_reset+0x5c>
		0000000000016600:  R_AARCH64_CALL26	syna_dev_set_tp_report_rate
   16604: 90000013     	adrp	x19, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x927a
   16608: 91000273     	add	x19, x19, #0x0
		0000000000016608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x927a
   1660c: 36f80840     	tbz	w0, #0x1f, 0x16714 <syna_recovery_game_mode_after_reset+0x170>
   16610: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016610:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b4c
   16614: 91000000     	add	x0, x0, #0x0
		0000000000016614:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b4c
   16618: 1400003c     	b	0x16708 <syna_recovery_game_mode_after_reset+0x164>
   1661c: 90000008     	adrp	x8, 0x16000 <tp_sensibility_level_read+0x7c>
		000000000001661c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ba0
   16620: 91000108     	add	x8, x8, #0x0
		0000000000016620:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ba0
   16624: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016624:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12f8
   16628: 91000021     	add	x1, x1, #0x0
		0000000000016628:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12f8
   1662c: aa0003f5     	mov	x21, x0
   16630: aa0803e0     	mov	x0, x8
   16634: 52800022     	mov	w2, #0x1                // =1
   16638: 94000000     	bl	0x16638 <syna_recovery_game_mode_after_reset+0x94>
		0000000000016638:  R_AARCH64_CALL26	_printk
   1663c: f94002a0     	ldr	x0, [x21]
   16640: 52801aa1     	mov	w1, #0xd5               // =213
   16644: 52800062     	mov	w2, #0x3                // =3
   16648: 2a1303e3     	mov	w3, w19
   1664c: aa1503f4     	mov	x20, x21
   16650: 94000000     	bl	0x16650 <syna_recovery_game_mode_after_reset+0xac>
		0000000000016650:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   16654: 36f800c0     	tbz	w0, #0x1f, 0x1666c <syna_recovery_game_mode_after_reset+0xc8>
   16658: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016658:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x328e
   1665c: 91000000     	add	x0, x0, #0x0
		000000000001665c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x328e
   16660: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016660:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9900
   16664: 91000021     	add	x1, x1, #0x0
		0000000000016664:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9900
   16668: 94000000     	bl	0x16668 <syna_recovery_game_mode_after_reset+0xc4>
		0000000000016668:  R_AARCH64_CALL26	_printk
   1666c: b945fa81     	ldr	w1, [x20, #0x5f8]
   16670: aa1403e0     	mov	x0, x20
   16674: 2a1303e2     	mov	w2, w19
   16678: 94000000     	bl	0x16678 <syna_recovery_game_mode_after_reset+0xd4>
		0000000000016678:  R_AARCH64_CALL26	syna_dev_set_tp_report_rate
   1667c: 36f800c0     	tbz	w0, #0x1f, 0x16694 <syna_recovery_game_mode_after_reset+0xf0>
   16680: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016680:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b4c
   16684: 91000000     	add	x0, x0, #0x0
		0000000000016684:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b4c
   16688: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016688:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9900
   1668c: 91000021     	add	x1, x1, #0x0
		000000000001668c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9900
   16690: 94000000     	bl	0x16690 <syna_recovery_game_mode_after_reset+0xec>
		0000000000016690:  R_AARCH64_CALL26	_printk
   16694: b945fe81     	ldr	w1, [x20, #0x5fc]
   16698: aa1403e0     	mov	x0, x20
   1669c: 2a1303e2     	mov	w2, w19
   166a0: 94000000     	bl	0x166a0 <syna_recovery_game_mode_after_reset+0xfc>
		00000000000166a0:  R_AARCH64_CALL26	syna_dev_set_sensibility_level
   166a4: 36f800c0     	tbz	w0, #0x1f, 0x166bc <syna_recovery_game_mode_after_reset+0x118>
   166a8: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		00000000000166a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x328e
   166ac: 91000000     	add	x0, x0, #0x0
		00000000000166ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x328e
   166b0: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0x7c>
		00000000000166b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9900
   166b4: 91000021     	add	x1, x1, #0x0
		00000000000166b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9900
   166b8: 94000000     	bl	0x166b8 <syna_recovery_game_mode_after_reset+0x114>
		00000000000166b8:  R_AARCH64_CALL26	_printk
   166bc: b9460281     	ldr	w1, [x20, #0x600]
   166c0: aa1403e0     	mov	x0, x20
   166c4: 2a1303e2     	mov	w2, w19
   166c8: 94000000     	bl	0x166c8 <syna_recovery_game_mode_after_reset+0x124>
		00000000000166c8:  R_AARCH64_CALL26	syna_dev_set_follow_hand_level
   166cc: 36f800c0     	tbz	w0, #0x1f, 0x166e4 <syna_recovery_game_mode_after_reset+0x140>
   166d0: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		00000000000166d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x328e
   166d4: 91000000     	add	x0, x0, #0x0
		00000000000166d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x328e
   166d8: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0x7c>
		00000000000166d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9900
   166dc: 91000021     	add	x1, x1, #0x0
		00000000000166dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9900
   166e0: 94000000     	bl	0x166e0 <syna_recovery_game_mode_after_reset+0x13c>
		00000000000166e0:  R_AARCH64_CALL26	_printk
   166e4: b9460681     	ldr	w1, [x20, #0x604]
   166e8: aa1403e0     	mov	x0, x20
   166ec: 2a1303e2     	mov	w2, w19
   166f0: 94000000     	bl	0x166f0 <syna_recovery_game_mode_after_reset+0x14c>
		00000000000166f0:  R_AARCH64_CALL26	syna_dev_set_stability_level
   166f4: 90000013     	adrp	x19, 0x16000 <tp_sensibility_level_read+0x7c>
		00000000000166f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf7a
   166f8: 91000273     	add	x19, x19, #0x0
		00000000000166f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf7a
   166fc: 36f800c0     	tbz	w0, #0x1f, 0x16714 <syna_recovery_game_mode_after_reset+0x170>
   16700: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016700:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x328e
   16704: 91000000     	add	x0, x0, #0x0
		0000000000016704:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x328e
   16708: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016708:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9900
   1670c: 91000021     	add	x1, x1, #0x0
		000000000001670c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9900
   16710: 94000000     	bl	0x16710 <syna_recovery_game_mode_after_reset+0x16c>
		0000000000016710:  R_AARCH64_CALL26	_printk
   16714: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016714:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9900
   16718: 91000021     	add	x1, x1, #0x0
		0000000000016718:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9900
   1671c: aa1303e0     	mov	x0, x19
   16720: 94000000     	bl	0x16720 <syna_recovery_game_mode_after_reset+0x17c>
		0000000000016720:  R_AARCH64_CALL26	_printk
   16724: 2a1f03e0     	mov	w0, wzr
   16728: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1672c: f9400bf5     	ldr	x21, [sp, #0x10]
   16730: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   16734: d50323bf     	autiasp
   16738: d65f03c0     	ret
