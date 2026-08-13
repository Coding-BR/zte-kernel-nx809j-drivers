
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b3a8 <syna_recovery_game_mode_after_reset>:
    b3a8: b5000060     	cbnz	x0, 0xb3b4 <syna_recovery_game_mode_after_reset+0xc>
    b3ac: 128002a0     	mov	w0, #-0x16              // =-22
    b3b0: d65f03c0     	ret
    b3b4: d503233f     	paciasp
    b3b8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    b3bc: f9000bf5     	str	x21, [sp, #0x10]
    b3c0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    b3c4: 910003fd     	mov	x29, sp
    b3c8: f9413808     	ldr	x8, [x0, #0x270]
    b3cc: b102a11f     	cmn	x8, #0xa8
    b3d0: 540000a0     	b.eq	0xb3e4 <syna_recovery_game_mode_after_reset+0x3c>
    b3d4: b940b909     	ldr	w9, [x8, #0xb8]
    b3d8: 34000069     	cbz	w9, 0xb3e4 <syna_recovery_game_mode_after_reset+0x3c>
    b3dc: 3942f108     	ldrb	w8, [x8, #0xbc]
    b3e0: 370001c8     	tbnz	w8, #0x0, 0xb418 <syna_recovery_game_mode_after_reset+0x70>
    b3e4: f9400008     	ldr	x8, [x0]
    b3e8: b9420d13     	ldr	w19, [x8, #0x20c]
    b3ec: b945dc08     	ldr	w8, [x0, #0x5dc]
    b3f0: 350001a8     	cbnz	w8, 0xb424 <syna_recovery_game_mode_after_reset+0x7c>
    b3f4: b945f801     	ldr	w1, [x0, #0x5f8]
    b3f8: 2a1303e2     	mov	w2, w19
    b3fc: 94000000     	bl	0xb3fc <syna_recovery_game_mode_after_reset+0x54>
		000000000000b3fc:  R_AARCH64_CALL26	syna_dev_set_tp_report_rate
    b400: 90000013     	adrp	x19, 0xb000 <syna_mmap+0x68>
		000000000000b400:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A258
    b404: 91000273     	add	x19, x19, #0x0
		000000000000b404:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A258
    b408: 36f808a0     	tbz	w0, #0x1f, 0xb51c <syna_recovery_game_mode_after_reset+0x174>
    b40c: 90000000     	adrp	x0, 0xb000 <syna_mmap+0x68>
		000000000000b40c:  R_AARCH64_ADR_PREL_PG_HI21	unk_37D46
    b410: 91000000     	add	x0, x0, #0x0
		000000000000b410:  R_AARCH64_ADD_ABS_LO12_NC	unk_37D46
    b414: 1400003f     	b	0xb510 <syna_recovery_game_mode_after_reset+0x168>
    b418: 2a1f03f3     	mov	w19, wzr
    b41c: b945dc08     	ldr	w8, [x0, #0x5dc]
    b420: 34fffea8     	cbz	w8, 0xb3f4 <syna_recovery_game_mode_after_reset+0x4c>
    b424: 90000008     	adrp	x8, 0xb000 <syna_mmap+0x68>
		000000000000b424:  R_AARCH64_ADR_PREL_PG_HI21	unk_35F27
    b428: 91000108     	add	x8, x8, #0x0
		000000000000b428:  R_AARCH64_ADD_ABS_LO12_NC	unk_35F27
    b42c: 90000001     	adrp	x1, 0xb000 <syna_mmap+0x68>
		000000000000b42c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafd
    b430: 91000021     	add	x1, x1, #0x0
		000000000000b430:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafd
    b434: aa0003f5     	mov	x21, x0
    b438: aa0803e0     	mov	x0, x8
    b43c: 52800022     	mov	w2, #0x1                // =1
    b440: 94000000     	bl	0xb440 <syna_recovery_game_mode_after_reset+0x98>
		000000000000b440:  R_AARCH64_CALL26	_printk
    b444: f94002a0     	ldr	x0, [x21]
    b448: 52801aa1     	mov	w1, #0xd5               // =213
    b44c: 52800062     	mov	w2, #0x3                // =3
    b450: 2a1303e3     	mov	w3, w19
    b454: aa1503f4     	mov	x20, x21
    b458: 94000000     	bl	0xb458 <syna_recovery_game_mode_after_reset+0xb0>
		000000000000b458:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    b45c: 36f800c0     	tbz	w0, #0x1f, 0xb474 <syna_recovery_game_mode_after_reset+0xcc>
    b460: 90000000     	adrp	x0, 0xb000 <syna_mmap+0x68>
		000000000000b460:  R_AARCH64_ADR_PREL_PG_HI21	unk_34708
    b464: 91000000     	add	x0, x0, #0x0
		000000000000b464:  R_AARCH64_ADD_ABS_LO12_NC	unk_34708
    b468: 90000001     	adrp	x1, 0xb000 <syna_mmap+0x68>
		000000000000b468:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5815
    b46c: 91000021     	add	x1, x1, #0x0
		000000000000b46c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5815
    b470: 94000000     	bl	0xb470 <syna_recovery_game_mode_after_reset+0xc8>
		000000000000b470:  R_AARCH64_CALL26	_printk
    b474: b945fa81     	ldr	w1, [x20, #0x5f8]
    b478: aa1403e0     	mov	x0, x20
    b47c: 2a1303e2     	mov	w2, w19
    b480: 94000000     	bl	0xb480 <syna_recovery_game_mode_after_reset+0xd8>
		000000000000b480:  R_AARCH64_CALL26	syna_dev_set_tp_report_rate
    b484: 36f800c0     	tbz	w0, #0x1f, 0xb49c <syna_recovery_game_mode_after_reset+0xf4>
    b488: 90000000     	adrp	x0, 0xb000 <syna_mmap+0x68>
		000000000000b488:  R_AARCH64_ADR_PREL_PG_HI21	unk_37D46
    b48c: 91000000     	add	x0, x0, #0x0
		000000000000b48c:  R_AARCH64_ADD_ABS_LO12_NC	unk_37D46
    b490: 90000001     	adrp	x1, 0xb000 <syna_mmap+0x68>
		000000000000b490:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5815
    b494: 91000021     	add	x1, x1, #0x0
		000000000000b494:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5815
    b498: 94000000     	bl	0xb498 <syna_recovery_game_mode_after_reset+0xf0>
		000000000000b498:  R_AARCH64_CALL26	_printk
    b49c: b945fe81     	ldr	w1, [x20, #0x5fc]
    b4a0: aa1403e0     	mov	x0, x20
    b4a4: 2a1303e2     	mov	w2, w19
    b4a8: 94000000     	bl	0xb4a8 <syna_recovery_game_mode_after_reset+0x100>
		000000000000b4a8:  R_AARCH64_CALL26	syna_dev_set_sensibility_level
    b4ac: 36f800c0     	tbz	w0, #0x1f, 0xb4c4 <syna_recovery_game_mode_after_reset+0x11c>
    b4b0: 90000000     	adrp	x0, 0xb000 <syna_mmap+0x68>
		000000000000b4b0:  R_AARCH64_ADR_PREL_PG_HI21	unk_34708
    b4b4: 91000000     	add	x0, x0, #0x0
		000000000000b4b4:  R_AARCH64_ADD_ABS_LO12_NC	unk_34708
    b4b8: 90000001     	adrp	x1, 0xb000 <syna_mmap+0x68>
		000000000000b4b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5815
    b4bc: 91000021     	add	x1, x1, #0x0
		000000000000b4bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5815
    b4c0: 94000000     	bl	0xb4c0 <syna_recovery_game_mode_after_reset+0x118>
		000000000000b4c0:  R_AARCH64_CALL26	_printk
    b4c4: b9460281     	ldr	w1, [x20, #0x600]
    b4c8: aa1403e0     	mov	x0, x20
    b4cc: 2a1303e2     	mov	w2, w19
    b4d0: 94000000     	bl	0xb4d0 <syna_recovery_game_mode_after_reset+0x128>
		000000000000b4d0:  R_AARCH64_CALL26	syna_dev_set_follow_hand_level
    b4d4: 36f800c0     	tbz	w0, #0x1f, 0xb4ec <syna_recovery_game_mode_after_reset+0x144>
    b4d8: 90000000     	adrp	x0, 0xb000 <syna_mmap+0x68>
		000000000000b4d8:  R_AARCH64_ADR_PREL_PG_HI21	unk_34708
    b4dc: 91000000     	add	x0, x0, #0x0
		000000000000b4dc:  R_AARCH64_ADD_ABS_LO12_NC	unk_34708
    b4e0: 90000001     	adrp	x1, 0xb000 <syna_mmap+0x68>
		000000000000b4e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5815
    b4e4: 91000021     	add	x1, x1, #0x0
		000000000000b4e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5815
    b4e8: 94000000     	bl	0xb4e8 <syna_recovery_game_mode_after_reset+0x140>
		000000000000b4e8:  R_AARCH64_CALL26	_printk
    b4ec: b9460681     	ldr	w1, [x20, #0x604]
    b4f0: aa1403e0     	mov	x0, x20
    b4f4: 2a1303e2     	mov	w2, w19
    b4f8: 94000000     	bl	0xb4f8 <syna_recovery_game_mode_after_reset+0x150>
		000000000000b4f8:  R_AARCH64_CALL26	syna_dev_set_stability_level
    b4fc: 90000013     	adrp	x19, 0xb000 <syna_mmap+0x68>
		000000000000b4fc:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BDE4
    b500: 91000273     	add	x19, x19, #0x0
		000000000000b500:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BDE4
    b504: 36f800c0     	tbz	w0, #0x1f, 0xb51c <syna_recovery_game_mode_after_reset+0x174>
    b508: 90000000     	adrp	x0, 0xb000 <syna_mmap+0x68>
		000000000000b508:  R_AARCH64_ADR_PREL_PG_HI21	unk_34708
    b50c: 91000000     	add	x0, x0, #0x0
		000000000000b50c:  R_AARCH64_ADD_ABS_LO12_NC	unk_34708
    b510: 90000001     	adrp	x1, 0xb000 <syna_mmap+0x68>
		000000000000b510:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5815
    b514: 91000021     	add	x1, x1, #0x0
		000000000000b514:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5815
    b518: 94000000     	bl	0xb518 <syna_recovery_game_mode_after_reset+0x170>
		000000000000b518:  R_AARCH64_CALL26	_printk
    b51c: 90000001     	adrp	x1, 0xb000 <syna_mmap+0x68>
		000000000000b51c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5815
    b520: 91000021     	add	x1, x1, #0x0
		000000000000b520:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5815
    b524: aa1303e0     	mov	x0, x19
    b528: 94000000     	bl	0xb528 <syna_recovery_game_mode_after_reset+0x180>
		000000000000b528:  R_AARCH64_CALL26	_printk
    b52c: 2a1f03e0     	mov	w0, wzr
    b530: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    b534: f9400bf5     	ldr	x21, [sp, #0x10]
    b538: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    b53c: d50323bf     	autiasp
    b540: d65f03c0     	ret
