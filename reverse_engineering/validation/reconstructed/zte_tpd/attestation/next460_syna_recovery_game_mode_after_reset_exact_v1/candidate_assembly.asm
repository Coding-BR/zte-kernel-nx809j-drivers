
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000253c8 <syna_recovery_game_mode_after_reset>:
   253c8: b5000060     	cbnz	x0, 0x253d4 <syna_recovery_game_mode_after_reset+0xc>
   253cc: 128002a0     	mov	w0, #-0x16              // =-22
   253d0: d65f03c0     	ret
   253d4: d503233f     	paciasp
   253d8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   253dc: f9000bf5     	str	x21, [sp, #0x10]
   253e0: a9024ff4     	stp	x20, x19, [sp, #0x20]
   253e4: 910003fd     	mov	x29, sp
   253e8: f9413809     	ldr	x9, [x0, #0x270]
   253ec: f9400008     	ldr	x8, [x0]
   253f0: b102a13f     	cmn	x9, #0xa8
   253f4: 540000e0     	b.eq	0x25410 <syna_recovery_game_mode_after_reset+0x48>
   253f8: b940b92a     	ldr	w10, [x9, #0xb8]
   253fc: 340000aa     	cbz	w10, 0x25410 <syna_recovery_game_mode_after_reset+0x48>
   25400: 3942f129     	ldrb	w9, [x9, #0xbc]
   25404: 36000069     	tbz	w9, #0x0, 0x25410 <syna_recovery_game_mode_after_reset+0x48>
   25408: 2a1f03f3     	mov	w19, wzr
   2540c: 14000002     	b	0x25414 <syna_recovery_game_mode_after_reset+0x4c>
   25410: b9420d13     	ldr	w19, [x8, #0x20c]
   25414: b945dc08     	ldr	w8, [x0, #0x5dc]
   25418: 35000148     	cbnz	w8, 0x25440 <syna_recovery_game_mode_after_reset+0x78>
   2541c: b945f801     	ldr	w1, [x0, #0x5f8]
   25420: 2a1303e2     	mov	w2, w19
   25424: 94000000     	bl	0x25424 <syna_recovery_game_mode_after_reset+0x5c>
		0000000000025424:  R_AARCH64_CALL26	syna_dev_set_tp_report_rate
   25428: 90000013     	adrp	x19, 0x25000 <syna_dev_set_follow_hand_level+0x58>
		0000000000025428:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1227a
   2542c: 91000273     	add	x19, x19, #0x0
		000000000002542c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1227a
   25430: 36f80840     	tbz	w0, #0x1f, 0x25538 <syna_recovery_game_mode_after_reset+0x170>
   25434: 90000000     	adrp	x0, 0x25000 <syna_dev_set_follow_hand_level+0x58>
		0000000000025434:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x120c0
   25438: 91000000     	add	x0, x0, #0x0
		0000000000025438:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x120c0
   2543c: 1400003c     	b	0x2552c <syna_recovery_game_mode_after_reset+0x164>
   25440: 90000008     	adrp	x8, 0x25000 <syna_dev_set_follow_hand_level+0x58>
		0000000000025440:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12070
   25444: 91000108     	add	x8, x8, #0x0
		0000000000025444:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12070
   25448: 90000001     	adrp	x1, 0x25000 <syna_dev_set_follow_hand_level+0x58>
		0000000000025448:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11fe8
   2544c: 91000021     	add	x1, x1, #0x0
		000000000002544c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11fe8
   25450: aa0003f5     	mov	x21, x0
   25454: aa0803e0     	mov	x0, x8
   25458: 52800022     	mov	w2, #0x1                // =1
   2545c: 94000000     	bl	0x2545c <syna_recovery_game_mode_after_reset+0x94>
		000000000002545c:  R_AARCH64_CALL26	_printk
   25460: f94002a0     	ldr	x0, [x21]
   25464: 52801aa1     	mov	w1, #0xd5               // =213
   25468: 52800062     	mov	w2, #0x3                // =3
   2546c: 2a1303e3     	mov	w3, w19
   25470: aa1503f4     	mov	x20, x21
   25474: 94000000     	bl	0x25474 <syna_recovery_game_mode_after_reset+0xac>
		0000000000025474:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   25478: 36f800c0     	tbz	w0, #0x1f, 0x25490 <syna_recovery_game_mode_after_reset+0xc8>
   2547c: 90000000     	adrp	x0, 0x25000 <syna_dev_set_follow_hand_level+0x58>
		000000000002547c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1201e
   25480: 91000000     	add	x0, x0, #0x0
		0000000000025480:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1201e
   25484: 90000001     	adrp	x1, 0x25000 <syna_dev_set_follow_hand_level+0x58>
		0000000000025484:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x122e0
   25488: 91000021     	add	x1, x1, #0x0
		0000000000025488:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x122e0
   2548c: 94000000     	bl	0x2548c <syna_recovery_game_mode_after_reset+0xc4>
		000000000002548c:  R_AARCH64_CALL26	_printk
   25490: b945fa81     	ldr	w1, [x20, #0x5f8]
   25494: aa1403e0     	mov	x0, x20
   25498: 2a1303e2     	mov	w2, w19
   2549c: 94000000     	bl	0x2549c <syna_recovery_game_mode_after_reset+0xd4>
		000000000002549c:  R_AARCH64_CALL26	syna_dev_set_tp_report_rate
   254a0: 36f800c0     	tbz	w0, #0x1f, 0x254b8 <syna_recovery_game_mode_after_reset+0xf0>
   254a4: 90000000     	adrp	x0, 0x25000 <syna_dev_set_follow_hand_level+0x58>
		00000000000254a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x120c0
   254a8: 91000000     	add	x0, x0, #0x0
		00000000000254a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x120c0
   254ac: 90000001     	adrp	x1, 0x25000 <syna_dev_set_follow_hand_level+0x58>
		00000000000254ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x122e0
   254b0: 91000021     	add	x1, x1, #0x0
		00000000000254b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x122e0
   254b4: 94000000     	bl	0x254b4 <syna_recovery_game_mode_after_reset+0xec>
		00000000000254b4:  R_AARCH64_CALL26	_printk
   254b8: b945fe81     	ldr	w1, [x20, #0x5fc]
   254bc: aa1403e0     	mov	x0, x20
   254c0: 2a1303e2     	mov	w2, w19
   254c4: 94000000     	bl	0x254c4 <syna_recovery_game_mode_after_reset+0xfc>
		00000000000254c4:  R_AARCH64_CALL26	syna_dev_set_sensibility_level
   254c8: 36f800c0     	tbz	w0, #0x1f, 0x254e0 <syna_recovery_game_mode_after_reset+0x118>
   254cc: 90000000     	adrp	x0, 0x25000 <syna_dev_set_follow_hand_level+0x58>
		00000000000254cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1201e
   254d0: 91000000     	add	x0, x0, #0x0
		00000000000254d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1201e
   254d4: 90000001     	adrp	x1, 0x25000 <syna_dev_set_follow_hand_level+0x58>
		00000000000254d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x122e0
   254d8: 91000021     	add	x1, x1, #0x0
		00000000000254d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x122e0
   254dc: 94000000     	bl	0x254dc <syna_recovery_game_mode_after_reset+0x114>
		00000000000254dc:  R_AARCH64_CALL26	_printk
   254e0: b9460281     	ldr	w1, [x20, #0x600]
   254e4: aa1403e0     	mov	x0, x20
   254e8: 2a1303e2     	mov	w2, w19
   254ec: 94000000     	bl	0x254ec <syna_recovery_game_mode_after_reset+0x124>
		00000000000254ec:  R_AARCH64_CALL26	syna_dev_set_follow_hand_level
   254f0: 36f800c0     	tbz	w0, #0x1f, 0x25508 <syna_recovery_game_mode_after_reset+0x140>
   254f4: 90000000     	adrp	x0, 0x25000 <syna_dev_set_follow_hand_level+0x58>
		00000000000254f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1201e
   254f8: 91000000     	add	x0, x0, #0x0
		00000000000254f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1201e
   254fc: 90000001     	adrp	x1, 0x25000 <syna_dev_set_follow_hand_level+0x58>
		00000000000254fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x122e0
   25500: 91000021     	add	x1, x1, #0x0
		0000000000025500:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x122e0
   25504: 94000000     	bl	0x25504 <syna_recovery_game_mode_after_reset+0x13c>
		0000000000025504:  R_AARCH64_CALL26	_printk
   25508: b9460681     	ldr	w1, [x20, #0x604]
   2550c: aa1403e0     	mov	x0, x20
   25510: 2a1303e2     	mov	w2, w19
   25514: 94000000     	bl	0x25514 <syna_recovery_game_mode_after_reset+0x14c>
		0000000000025514:  R_AARCH64_CALL26	syna_dev_set_stability_level
   25518: 90000013     	adrp	x19, 0x25000 <syna_dev_set_follow_hand_level+0x58>
		0000000000025518:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x123d6
   2551c: 91000273     	add	x19, x19, #0x0
		000000000002551c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x123d6
   25520: 36f800c0     	tbz	w0, #0x1f, 0x25538 <syna_recovery_game_mode_after_reset+0x170>
   25524: 90000000     	adrp	x0, 0x25000 <syna_dev_set_follow_hand_level+0x58>
		0000000000025524:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1201e
   25528: 91000000     	add	x0, x0, #0x0
		0000000000025528:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1201e
   2552c: 90000001     	adrp	x1, 0x25000 <syna_dev_set_follow_hand_level+0x58>
		000000000002552c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x122e0
   25530: 91000021     	add	x1, x1, #0x0
		0000000000025530:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x122e0
   25534: 94000000     	bl	0x25534 <syna_recovery_game_mode_after_reset+0x16c>
		0000000000025534:  R_AARCH64_CALL26	_printk
   25538: 90000001     	adrp	x1, 0x25000 <syna_dev_set_follow_hand_level+0x58>
		0000000000025538:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x122e0
   2553c: 91000021     	add	x1, x1, #0x0
		000000000002553c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x122e0
   25540: aa1303e0     	mov	x0, x19
   25544: 94000000     	bl	0x25544 <syna_recovery_game_mode_after_reset+0x17c>
		0000000000025544:  R_AARCH64_CALL26	_printk
   25548: 2a1f03e0     	mov	w0, wzr
   2554c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   25550: f9400bf5     	ldr	x21, [sp, #0x10]
   25554: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   25558: d50323bf     	autiasp
   2555c: d65f03c0     	ret
