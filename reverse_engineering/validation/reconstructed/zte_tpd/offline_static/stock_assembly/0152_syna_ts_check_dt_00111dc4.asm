
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b53c <syna_ts_check_dt>:
    b53c: d503233f     	paciasp
    b540: d10303ff     	sub	sp, sp, #0xc0
    b544: a9067bfd     	stp	x29, x30, [sp, #0x60]
    b548: a9076ffc     	stp	x28, x27, [sp, #0x70]
    b54c: a90867fa     	stp	x26, x25, [sp, #0x80]
    b550: a9095ff8     	stp	x24, x23, [sp, #0x90]
    b554: a90a57f6     	stp	x22, x21, [sp, #0xa0]
    b558: a90b4ff4     	stp	x20, x19, [sp, #0xb0]
    b55c: 910183fd     	add	x29, sp, #0x60
    b560: d5384108     	mrs	x8, SP_EL0
    b564: aa0003f3     	mov	x19, x0
    b568: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b568:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x96c0
    b56c: 91000021     	add	x1, x1, #0x0
		000000000000b56c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x96c0
    b570: f9438908     	ldr	x8, [x8, #0x710]
    b574: aa1f03e2     	mov	x2, xzr
    b578: f81f83a8     	stur	x8, [x29, #-0x8]
    b57c: f9417400     	ldr	x0, [x0, #0x2e8]
    b580: 94000000     	bl	0xb580 <syna_ts_check_dt+0x44>
		000000000000b580:  R_AARCH64_CALL26	of_count_phandle_with_args
    b584: 7100041f     	cmp	w0, #0x1
    b588: 5400070b     	b.lt	0xb668 <syna_ts_check_dt+0x12c>
    b58c: 2a0003f5     	mov	w21, w0
    b590: 2a1f03f6     	mov	w22, wzr
    b594: 90000017     	adrp	x23, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x96c0
    b598: 910002f7     	add	x23, x23, #0x0
		000000000000b598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x96c0
    b59c: 9000001b     	adrp	x27, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b59c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2601
    b5a0: 9100037b     	add	x27, x27, #0x0
		000000000000b5a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2601
    b5a4: 90000018     	adrp	x24, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b5a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x96c6
    b5a8: 91000318     	add	x24, x24, #0x0
		000000000000b5a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x96c6
    b5ac: 9000001c     	adrp	x28, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b5ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f17
    b5b0: 9100039c     	add	x28, x28, #0x0
		000000000000b5b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f17
    b5b4: 12800014     	mov	w20, #-0x1              // =-1
    b5b8: 90000019     	adrp	x25, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b5b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6fe
    b5bc: 91000339     	add	x25, x25, #0x0
		000000000000b5bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6fe
    b5c0: 14000009     	b	0xb5e4 <syna_ts_check_dt+0xa8>
    b5c4: 12800254     	mov	w20, #-0x13             // =-19
    b5c8: aa1b03e0     	mov	x0, x27
    b5cc: aa1803e1     	mov	x1, x24
    b5d0: aa1803e2     	mov	x2, x24
    b5d4: 94000000     	bl	0xb5d4 <syna_ts_check_dt+0x98>
		000000000000b5d4:  R_AARCH64_CALL26	_printk
    b5d8: 110006d6     	add	w22, w22, #0x1
    b5dc: 6b1602bf     	cmp	w21, w22
    b5e0: 540005c0     	b.eq	0xb698 <syna_ts_check_dt+0x15c>
    b5e4: f9417660     	ldr	x0, [x19, #0x2e8]
    b5e8: 910023e5     	add	x5, sp, #0x8
    b5ec: aa1703e1     	mov	x1, x23
    b5f0: aa1f03e2     	mov	x2, xzr
    b5f4: 2a1f03e3     	mov	w3, wzr
    b5f8: 2a1603e4     	mov	w4, w22
    b5fc: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    b600: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    b604: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    b608: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    b60c: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    b610: 94000000     	bl	0xb610 <syna_ts_check_dt+0xd4>
		000000000000b610:  R_AARCH64_CALL26	__of_parse_phandle_with_args
    b614: f94007e8     	ldr	x8, [sp, #0x8]
    b618: 7100001f     	cmp	w0, #0x0
    b61c: 9a9f011a     	csel	x26, x8, xzr, eq
    b620: b500019a     	cbnz	x26, 0xb650 <syna_ts_check_dt+0x114>
    b624: aa1a03e0     	mov	x0, x26
    b628: 94000000     	bl	0xb628 <syna_ts_check_dt+0xec>
		000000000000b628:  R_AARCH64_CALL26	of_drm_find_panel
    b62c: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    b630: 54000209     	b.ls	0xb670 <syna_ts_check_dt+0x134>
    b634: b1004c1f     	cmn	x0, #0x13
    b638: 54fffc60     	b.eq	0xb5c4 <syna_ts_check_dt+0x88>
    b63c: b108141f     	cmn	x0, #0x205
    b640: 54fffcc1     	b.ne	0xb5d8 <syna_ts_check_dt+0x9c>
    b644: 12804094     	mov	w20, #-0x205            // =-517
    b648: aa1c03e0     	mov	x0, x28
    b64c: 17ffffe0     	b	0xb5cc <syna_ts_check_dt+0x90>
    b650: f9400343     	ldr	x3, [x26]
    b654: aa1903e0     	mov	x0, x25
    b658: aa1803e1     	mov	x1, x24
    b65c: aa1803e2     	mov	x2, x24
    b660: 94000000     	bl	0xb660 <syna_ts_check_dt+0x124>
		000000000000b660:  R_AARCH64_CALL26	_printk
    b664: 17fffff0     	b	0xb624 <syna_ts_check_dt+0xe8>
    b668: 12800254     	mov	w20, #-0x13             // =-19
    b66c: 1400000b     	b	0xb698 <syna_ts_check_dt+0x15c>
    b670: f9400341     	ldr	x1, [x26]
    b674: 90000008     	adrp	x8, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b674:  R_AARCH64_ADR_PREL_PG_HI21	DEVICE_NODE_NAME
    b678: 91000108     	add	x8, x8, #0x0
		000000000000b678:  R_AARCH64_ADD_ABS_LO12_NC	DEVICE_NODE_NAME
    b67c: aa0003f3     	mov	x19, x0
    b680: aa0803e0     	mov	x0, x8
    b684: 52800c82     	mov	w2, #0x64               // =100
    b688: 94000000     	bl	0xb688 <syna_ts_check_dt+0x14c>
		000000000000b688:  R_AARCH64_CALL26	strncpy
    b68c: 90000008     	adrp	x8, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b68c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7a0
    b690: 2a1f03f4     	mov	w20, wzr
    b694: f9000113     	str	x19, [x8]
		000000000000b694:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x7a0
    b698: d5384108     	mrs	x8, SP_EL0
    b69c: f9438908     	ldr	x8, [x8, #0x710]
    b6a0: f85f83a9     	ldur	x9, [x29, #-0x8]
    b6a4: eb09011f     	cmp	x8, x9
    b6a8: 54000161     	b.ne	0xb6d4 <syna_ts_check_dt+0x198>
    b6ac: 2a1403e0     	mov	w0, w20
    b6b0: a94b4ff4     	ldp	x20, x19, [sp, #0xb0]
    b6b4: a94a57f6     	ldp	x22, x21, [sp, #0xa0]
    b6b8: a9495ff8     	ldp	x24, x23, [sp, #0x90]
    b6bc: a94867fa     	ldp	x26, x25, [sp, #0x80]
    b6c0: a9476ffc     	ldp	x28, x27, [sp, #0x70]
    b6c4: a9467bfd     	ldp	x29, x30, [sp, #0x60]
    b6c8: 910303ff     	add	sp, sp, #0xc0
    b6cc: d50323bf     	autiasp
    b6d0: d65f03c0     	ret
    b6d4: 94000000     	bl	0xb6d4 <syna_ts_check_dt+0x198>
		000000000000b6d4:  R_AARCH64_CALL26	__stack_chk_fail
