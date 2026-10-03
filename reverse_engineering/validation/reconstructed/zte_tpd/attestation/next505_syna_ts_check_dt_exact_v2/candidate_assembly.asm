
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000253a0 <syna_ts_check_dt>:
   253a0: d503233f     	paciasp
   253a4: d10303ff     	sub	sp, sp, #0xc0
   253a8: a9067bfd     	stp	x29, x30, [sp, #0x60]
   253ac: a9076ffc     	stp	x28, x27, [sp, #0x70]
   253b0: a90867fa     	stp	x26, x25, [sp, #0x80]
   253b4: a9095ff8     	stp	x24, x23, [sp, #0x90]
   253b8: a90a57f6     	stp	x22, x21, [sp, #0xa0]
   253bc: a90b4ff4     	stp	x20, x19, [sp, #0xb0]
   253c0: 910183fd     	add	x29, sp, #0x60
   253c4: d5384108     	mrs	x8, SP_EL0
   253c8: aa0003f3     	mov	x19, x0
   253cc: 90000001     	adrp	x1, 0x25000 <edge_long_press_up+0x50>
		00000000000253cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b1fe
   253d0: 91000021     	add	x1, x1, #0x0
		00000000000253d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b1fe
   253d4: f9438908     	ldr	x8, [x8, #0x710]
   253d8: aa1f03e2     	mov	x2, xzr
   253dc: f81f83a8     	stur	x8, [x29, #-0x8]
   253e0: f9417400     	ldr	x0, [x0, #0x2e8]
   253e4: 94000000     	bl	0x253e4 <syna_ts_check_dt+0x44>
		00000000000253e4:  R_AARCH64_CALL26	of_count_phandle_with_args
   253e8: 7100041f     	cmp	w0, #0x1
   253ec: 5400070b     	b.lt	0x254cc <syna_ts_check_dt+0x12c>
   253f0: 2a0003f5     	mov	w21, w0
   253f4: 2a1f03f6     	mov	w22, wzr
   253f8: 90000017     	adrp	x23, 0x25000 <edge_long_press_up+0x50>
		00000000000253f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b1fe
   253fc: 910002f7     	add	x23, x23, #0x0
		00000000000253fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b1fe
   25400: 9000001b     	adrp	x27, 0x25000 <edge_long_press_up+0x50>
		0000000000025400:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13f8e
   25404: 9100037b     	add	x27, x27, #0x0
		0000000000025404:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13f8e
   25408: 90000018     	adrp	x24, 0x25000 <edge_long_press_up+0x50>
		0000000000025408:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b204
   2540c: 91000318     	add	x24, x24, #0x0
		000000000002540c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b204
   25410: 9000001c     	adrp	x28, 0x25000 <edge_long_press_up+0x50>
		0000000000025410:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1388a
   25414: 9100039c     	add	x28, x28, #0x0
		0000000000025414:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1388a
   25418: 12800014     	mov	w20, #-0x1              // =-1
   2541c: 90000019     	adrp	x25, 0x25000 <edge_long_press_up+0x50>
		000000000002541c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1201a
   25420: 91000339     	add	x25, x25, #0x0
		0000000000025420:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1201a
   25424: 14000009     	b	0x25448 <syna_ts_check_dt+0xa8>
   25428: 12800254     	mov	w20, #-0x13             // =-19
   2542c: aa1b03e0     	mov	x0, x27
   25430: aa1803e1     	mov	x1, x24
   25434: aa1803e2     	mov	x2, x24
   25438: 94000000     	bl	0x25438 <syna_ts_check_dt+0x98>
		0000000000025438:  R_AARCH64_CALL26	_printk
   2543c: 110006d6     	add	w22, w22, #0x1
   25440: 6b1602bf     	cmp	w21, w22
   25444: 540005c0     	b.eq	0x254fc <syna_ts_check_dt+0x15c>
   25448: f9417660     	ldr	x0, [x19, #0x2e8]
   2544c: 910023e5     	add	x5, sp, #0x8
   25450: aa1703e1     	mov	x1, x23
   25454: aa1f03e2     	mov	x2, xzr
   25458: 2a1f03e3     	mov	w3, wzr
   2545c: 2a1603e4     	mov	w4, w22
   25460: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   25464: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   25468: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   2546c: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   25470: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   25474: 94000000     	bl	0x25474 <syna_ts_check_dt+0xd4>
		0000000000025474:  R_AARCH64_CALL26	__of_parse_phandle_with_args
   25478: f94007e8     	ldr	x8, [sp, #0x8]
   2547c: 7100001f     	cmp	w0, #0x0
   25480: 9a9f011a     	csel	x26, x8, xzr, eq
   25484: b500019a     	cbnz	x26, 0x254b4 <syna_ts_check_dt+0x114>
   25488: aa1a03e0     	mov	x0, x26
   2548c: 94000000     	bl	0x2548c <syna_ts_check_dt+0xec>
		000000000002548c:  R_AARCH64_CALL26	of_drm_find_panel
   25490: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
   25494: 54000209     	b.ls	0x254d4 <syna_ts_check_dt+0x134>
   25498: b1004c1f     	cmn	x0, #0x13
   2549c: 54fffc60     	b.eq	0x25428 <syna_ts_check_dt+0x88>
   254a0: b108141f     	cmn	x0, #0x205
   254a4: 54fffcc1     	b.ne	0x2543c <syna_ts_check_dt+0x9c>
   254a8: 12804094     	mov	w20, #-0x205            // =-517
   254ac: aa1c03e0     	mov	x0, x28
   254b0: 17ffffe0     	b	0x25430 <syna_ts_check_dt+0x90>
   254b4: f9400343     	ldr	x3, [x26]
   254b8: aa1903e0     	mov	x0, x25
   254bc: aa1803e1     	mov	x1, x24
   254c0: aa1803e2     	mov	x2, x24
   254c4: 94000000     	bl	0x254c4 <syna_ts_check_dt+0x124>
		00000000000254c4:  R_AARCH64_CALL26	_printk
   254c8: 17fffff0     	b	0x25488 <syna_ts_check_dt+0xe8>
   254cc: 12800254     	mov	w20, #-0x13             // =-19
   254d0: 1400000b     	b	0x254fc <syna_ts_check_dt+0x15c>
   254d4: f9400341     	ldr	x1, [x26]
   254d8: 90000008     	adrp	x8, 0x25000 <edge_long_press_up+0x50>
		00000000000254d8:  R_AARCH64_ADR_PREL_PG_HI21	DEVICE_NODE_NAME
   254dc: 91000108     	add	x8, x8, #0x0
		00000000000254dc:  R_AARCH64_ADD_ABS_LO12_NC	DEVICE_NODE_NAME
   254e0: aa0003f3     	mov	x19, x0
   254e4: aa0803e0     	mov	x0, x8
   254e8: 52800c82     	mov	w2, #0x64               // =100
   254ec: 94000000     	bl	0x254ec <syna_ts_check_dt+0x14c>
		00000000000254ec:  R_AARCH64_CALL26	strncpy
   254f0: 90000008     	adrp	x8, 0x25000 <edge_long_press_up+0x50>
		00000000000254f0:  R_AARCH64_ADR_PREL_PG_HI21	active_panel
   254f4: 2a1f03f4     	mov	w20, wzr
   254f8: f9000113     	str	x19, [x8]
		00000000000254f8:  R_AARCH64_LDST64_ABS_LO12_NC	active_panel
   254fc: d5384108     	mrs	x8, SP_EL0
   25500: f9438908     	ldr	x8, [x8, #0x710]
   25504: f85f83a9     	ldur	x9, [x29, #-0x8]
   25508: eb09011f     	cmp	x8, x9
   2550c: 54000161     	b.ne	0x25538 <syna_ts_check_dt+0x198>
   25510: 2a1403e0     	mov	w0, w20
   25514: a94b4ff4     	ldp	x20, x19, [sp, #0xb0]
   25518: a94a57f6     	ldp	x22, x21, [sp, #0xa0]
   2551c: a9495ff8     	ldp	x24, x23, [sp, #0x90]
   25520: a94867fa     	ldp	x26, x25, [sp, #0x80]
   25524: a9476ffc     	ldp	x28, x27, [sp, #0x70]
   25528: a9467bfd     	ldp	x29, x30, [sp, #0x60]
   2552c: 910303ff     	add	sp, sp, #0xc0
   25530: d50323bf     	autiasp
   25534: d65f03c0     	ret
   25538: 94000000     	bl	0x25538 <syna_ts_check_dt+0x198>
		0000000000025538:  R_AARCH64_CALL26	__stack_chk_fail
