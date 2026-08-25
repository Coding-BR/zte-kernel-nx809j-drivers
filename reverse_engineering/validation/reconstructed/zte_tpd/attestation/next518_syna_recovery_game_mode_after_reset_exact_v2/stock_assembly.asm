
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b324 <syna_recovery_game_mode_after_reset>:
    b324: b5000060     	cbnz	x0, 0xb330 <syna_recovery_game_mode_after_reset+0xc>
    b328: 128002a0     	mov	w0, #-0x16              // =-22
    b32c: d65f03c0     	ret
    b330: d503233f     	paciasp
    b334: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    b338: f9000bf5     	str	x21, [sp, #0x10]
    b33c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    b340: 910003fd     	mov	x29, sp
    b344: f9413809     	ldr	x9, [x0, #0x270]
    b348: f9400008     	ldr	x8, [x0]
    b34c: b102a13f     	cmn	x9, #0xa8
    b350: 540000e0     	b.eq	0xb36c <syna_recovery_game_mode_after_reset+0x48>
    b354: b940b92a     	ldr	w10, [x9, #0xb8]
    b358: 340000aa     	cbz	w10, 0xb36c <syna_recovery_game_mode_after_reset+0x48>
    b35c: 3942f129     	ldrb	w9, [x9, #0xbc]
    b360: 36000069     	tbz	w9, #0x0, 0xb36c <syna_recovery_game_mode_after_reset+0x48>
    b364: 2a1f03f3     	mov	w19, wzr
    b368: 14000002     	b	0xb370 <syna_recovery_game_mode_after_reset+0x4c>
    b36c: b9420d13     	ldr	w19, [x8, #0x20c]
    b370: b945dc08     	ldr	w8, [x0, #0x5dc]
    b374: 35000148     	cbnz	w8, 0xb39c <syna_recovery_game_mode_after_reset+0x78>
    b378: b945f801     	ldr	w1, [x0, #0x5f8]
    b37c: 2a1303e2     	mov	w2, w19
    b380: 94000000     	bl	0xb380 <syna_recovery_game_mode_after_reset+0x5c>
		000000000000b380:  R_AARCH64_CALL26	syna_dev_set_tp_report_rate
    b384: 90000013     	adrp	x19, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b384:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x902f
    b388: 91000273     	add	x19, x19, #0x0
		000000000000b388:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x902f
    b38c: 36f80840     	tbz	w0, #0x1f, 0xb494 <syna_recovery_game_mode_after_reset+0x170>
    b390: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b390:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x69a6
    b394: 91000000     	add	x0, x0, #0x0
		000000000000b394:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x69a6
    b398: 1400003c     	b	0xb488 <syna_recovery_game_mode_after_reset+0x164>
    b39c: 90000008     	adrp	x8, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b39c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a8f
    b3a0: 91000108     	add	x8, x8, #0x0
		000000000000b3a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a8f
    b3a4: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b3a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12b2
    b3a8: 91000021     	add	x1, x1, #0x0
		000000000000b3a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12b2
    b3ac: aa0003f5     	mov	x21, x0
    b3b0: aa0803e0     	mov	x0, x8
    b3b4: 52800022     	mov	w2, #0x1                // =1
    b3b8: 94000000     	bl	0xb3b8 <syna_recovery_game_mode_after_reset+0x94>
		000000000000b3b8:  R_AARCH64_CALL26	_printk
    b3bc: f94002a0     	ldr	x0, [x21]
    b3c0: 52801aa1     	mov	w1, #0xd5               // =213
    b3c4: 52800062     	mov	w2, #0x3                // =3
    b3c8: 2a1303e3     	mov	w3, w19
    b3cc: aa1503f4     	mov	x20, x21
    b3d0: 94000000     	bl	0xb3d0 <syna_recovery_game_mode_after_reset+0xac>
		000000000000b3d0:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    b3d4: 36f800c0     	tbz	w0, #0x1f, 0xb3ec <syna_recovery_game_mode_after_reset+0xc8>
    b3d8: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b3d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31d6
    b3dc: 91000000     	add	x0, x0, #0x0
		000000000000b3dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31d6
    b3e0: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b3e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x969c
    b3e4: 91000021     	add	x1, x1, #0x0
		000000000000b3e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x969c
    b3e8: 94000000     	bl	0xb3e8 <syna_recovery_game_mode_after_reset+0xc4>
		000000000000b3e8:  R_AARCH64_CALL26	_printk
    b3ec: b945fa81     	ldr	w1, [x20, #0x5f8]
    b3f0: aa1403e0     	mov	x0, x20
    b3f4: 2a1303e2     	mov	w2, w19
    b3f8: 94000000     	bl	0xb3f8 <syna_recovery_game_mode_after_reset+0xd4>
		000000000000b3f8:  R_AARCH64_CALL26	syna_dev_set_tp_report_rate
    b3fc: 36f800c0     	tbz	w0, #0x1f, 0xb414 <syna_recovery_game_mode_after_reset+0xf0>
    b400: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b400:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x69a6
    b404: 91000000     	add	x0, x0, #0x0
		000000000000b404:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x69a6
    b408: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b408:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x969c
    b40c: 91000021     	add	x1, x1, #0x0
		000000000000b40c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x969c
    b410: 94000000     	bl	0xb410 <syna_recovery_game_mode_after_reset+0xec>
		000000000000b410:  R_AARCH64_CALL26	_printk
    b414: b945fe81     	ldr	w1, [x20, #0x5fc]
    b418: aa1403e0     	mov	x0, x20
    b41c: 2a1303e2     	mov	w2, w19
    b420: 94000000     	bl	0xb420 <syna_recovery_game_mode_after_reset+0xfc>
		000000000000b420:  R_AARCH64_CALL26	syna_dev_set_sensibility_level
    b424: 36f800c0     	tbz	w0, #0x1f, 0xb43c <syna_recovery_game_mode_after_reset+0x118>
    b428: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b428:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31d6
    b42c: 91000000     	add	x0, x0, #0x0
		000000000000b42c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31d6
    b430: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b430:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x969c
    b434: 91000021     	add	x1, x1, #0x0
		000000000000b434:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x969c
    b438: 94000000     	bl	0xb438 <syna_recovery_game_mode_after_reset+0x114>
		000000000000b438:  R_AARCH64_CALL26	_printk
    b43c: b9460281     	ldr	w1, [x20, #0x600]
    b440: aa1403e0     	mov	x0, x20
    b444: 2a1303e2     	mov	w2, w19
    b448: 94000000     	bl	0xb448 <syna_recovery_game_mode_after_reset+0x124>
		000000000000b448:  R_AARCH64_CALL26	syna_dev_set_follow_hand_level
    b44c: 36f800c0     	tbz	w0, #0x1f, 0xb464 <syna_recovery_game_mode_after_reset+0x140>
    b450: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b450:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31d6
    b454: 91000000     	add	x0, x0, #0x0
		000000000000b454:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31d6
    b458: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b458:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x969c
    b45c: 91000021     	add	x1, x1, #0x0
		000000000000b45c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x969c
    b460: 94000000     	bl	0xb460 <syna_recovery_game_mode_after_reset+0x13c>
		000000000000b460:  R_AARCH64_CALL26	_printk
    b464: b9460681     	ldr	w1, [x20, #0x604]
    b468: aa1403e0     	mov	x0, x20
    b46c: 2a1303e2     	mov	w2, w19
    b470: 94000000     	bl	0xb470 <syna_recovery_game_mode_after_reset+0x14c>
		000000000000b470:  R_AARCH64_CALL26	syna_dev_set_stability_level
    b474: 90000013     	adrp	x19, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b474:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xacd3
    b478: 91000273     	add	x19, x19, #0x0
		000000000000b478:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xacd3
    b47c: 36f800c0     	tbz	w0, #0x1f, 0xb494 <syna_recovery_game_mode_after_reset+0x170>
    b480: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b480:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31d6
    b484: 91000000     	add	x0, x0, #0x0
		000000000000b484:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31d6
    b488: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b488:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x969c
    b48c: 91000021     	add	x1, x1, #0x0
		000000000000b48c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x969c
    b490: 94000000     	bl	0xb490 <syna_recovery_game_mode_after_reset+0x16c>
		000000000000b490:  R_AARCH64_CALL26	_printk
    b494: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b494:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x969c
    b498: 91000021     	add	x1, x1, #0x0
		000000000000b498:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x969c
    b49c: aa1303e0     	mov	x0, x19
    b4a0: 94000000     	bl	0xb4a0 <syna_recovery_game_mode_after_reset+0x17c>
		000000000000b4a0:  R_AARCH64_CALL26	_printk
    b4a4: 2a1f03e0     	mov	w0, wzr
    b4a8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    b4ac: f9400bf5     	ldr	x21, [sp, #0x10]
    b4b0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    b4b4: d50323bf     	autiasp
    b4b8: d65f03c0     	ret
