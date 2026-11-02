
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000253a8 <syna_ts_check_dt>:
   253a8: d503233f     	paciasp
   253ac: d10303ff     	sub	sp, sp, #0xc0
   253b0: a9067bfd     	stp	x29, x30, [sp, #0x60]
   253b4: a9076ffc     	stp	x28, x27, [sp, #0x70]
   253b8: a90867fa     	stp	x26, x25, [sp, #0x80]
   253bc: a9095ff8     	stp	x24, x23, [sp, #0x90]
   253c0: a90a57f6     	stp	x22, x21, [sp, #0xa0]
   253c4: a90b4ff4     	stp	x20, x19, [sp, #0xb0]
   253c8: 910183fd     	add	x29, sp, #0x60
   253cc: d5384108     	mrs	x8, SP_EL0
   253d0: aa0003f3     	mov	x19, x0
   253d4: 90000001     	adrp	x1, 0x25000 <syna_dev_set_stability_level+0x88>
		00000000000253d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1235a
   253d8: 91000021     	add	x1, x1, #0x0
		00000000000253d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1235a
   253dc: f9438908     	ldr	x8, [x8, #0x710]
   253e0: aa1f03e2     	mov	x2, xzr
   253e4: f81f83a8     	stur	x8, [x29, #-0x8]
   253e8: f9417400     	ldr	x0, [x0, #0x2e8]
   253ec: 94000000     	bl	0x253ec <syna_ts_check_dt+0x44>
		00000000000253ec:  R_AARCH64_CALL26	of_count_phandle_with_args
   253f0: 7100041f     	cmp	w0, #0x1
   253f4: 5400070b     	b.lt	0x254d4 <syna_ts_check_dt+0x12c>
   253f8: 2a0003f5     	mov	w21, w0
   253fc: 2a1f03f6     	mov	w22, wzr
   25400: 90000017     	adrp	x23, 0x25000 <syna_dev_set_stability_level+0x88>
		0000000000025400:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1235a
   25404: 910002f7     	add	x23, x23, #0x0
		0000000000025404:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1235a
   25408: 9000001b     	adrp	x27, 0x25000 <syna_dev_set_stability_level+0x88>
		0000000000025408:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12038
   2540c: 9100037b     	add	x27, x27, #0x0
		000000000002540c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12038
   25410: 90000018     	adrp	x24, 0x25000 <syna_dev_set_stability_level+0x88>
		0000000000025410:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12360
   25414: 91000318     	add	x24, x24, #0x0
		0000000000025414:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12360
   25418: 9000001c     	adrp	x28, 0x25000 <syna_dev_set_stability_level+0x88>
		0000000000025418:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12006
   2541c: 9100039c     	add	x28, x28, #0x0
		000000000002541c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12006
   25420: 12800014     	mov	w20, #-0x1              // =-1
   25424: 90000019     	adrp	x25, 0x25000 <syna_dev_set_stability_level+0x88>
		0000000000025424:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11fd2
   25428: 91000339     	add	x25, x25, #0x0
		0000000000025428:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11fd2
   2542c: 14000009     	b	0x25450 <syna_ts_check_dt+0xa8>
   25430: 12800254     	mov	w20, #-0x13             // =-19
   25434: aa1b03e0     	mov	x0, x27
   25438: aa1803e1     	mov	x1, x24
   2543c: aa1803e2     	mov	x2, x24
   25440: 94000000     	bl	0x25440 <syna_ts_check_dt+0x98>
		0000000000025440:  R_AARCH64_CALL26	_printk
   25444: 110006d6     	add	w22, w22, #0x1
   25448: 6b1602bf     	cmp	w21, w22
   2544c: 540005c0     	b.eq	0x25504 <syna_ts_check_dt+0x15c>
   25450: f9417660     	ldr	x0, [x19, #0x2e8]
   25454: 910023e5     	add	x5, sp, #0x8
   25458: aa1703e1     	mov	x1, x23
   2545c: aa1f03e2     	mov	x2, xzr
   25460: 2a1f03e3     	mov	w3, wzr
   25464: 2a1603e4     	mov	w4, w22
   25468: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   2546c: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   25470: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   25474: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   25478: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   2547c: 94000000     	bl	0x2547c <syna_ts_check_dt+0xd4>
		000000000002547c:  R_AARCH64_CALL26	__of_parse_phandle_with_args
   25480: f94007e8     	ldr	x8, [sp, #0x8]
   25484: 7100001f     	cmp	w0, #0x0
   25488: 9a9f011a     	csel	x26, x8, xzr, eq
   2548c: b500019a     	cbnz	x26, 0x254bc <syna_ts_check_dt+0x114>
   25490: aa1a03e0     	mov	x0, x26
   25494: 94000000     	bl	0x25494 <syna_ts_check_dt+0xec>
		0000000000025494:  R_AARCH64_CALL26	of_drm_find_panel
   25498: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
   2549c: 54000209     	b.ls	0x254dc <syna_ts_check_dt+0x134>
   254a0: b1004c1f     	cmn	x0, #0x13
   254a4: 54fffc60     	b.eq	0x25430 <syna_ts_check_dt+0x88>
   254a8: b108141f     	cmn	x0, #0x205
   254ac: 54fffcc1     	b.ne	0x25444 <syna_ts_check_dt+0x9c>
   254b0: 12804094     	mov	w20, #-0x205            // =-517
   254b4: aa1c03e0     	mov	x0, x28
   254b8: 17ffffe0     	b	0x25438 <syna_ts_check_dt+0x90>
   254bc: f9400343     	ldr	x3, [x26]
   254c0: aa1903e0     	mov	x0, x25
   254c4: aa1803e1     	mov	x1, x24
   254c8: aa1803e2     	mov	x2, x24
   254cc: 94000000     	bl	0x254cc <syna_ts_check_dt+0x124>
		00000000000254cc:  R_AARCH64_CALL26	_printk
   254d0: 17fffff0     	b	0x25490 <syna_ts_check_dt+0xe8>
   254d4: 12800254     	mov	w20, #-0x13             // =-19
   254d8: 1400000b     	b	0x25504 <syna_ts_check_dt+0x15c>
   254dc: f9400341     	ldr	x1, [x26]
   254e0: 90000008     	adrp	x8, 0x25000 <syna_dev_set_stability_level+0x88>
		00000000000254e0:  R_AARCH64_ADR_PREL_PG_HI21	DEVICE_NODE_NAME
   254e4: 91000108     	add	x8, x8, #0x0
		00000000000254e4:  R_AARCH64_ADD_ABS_LO12_NC	DEVICE_NODE_NAME
   254e8: aa0003f3     	mov	x19, x0
   254ec: aa0803e0     	mov	x0, x8
   254f0: 52800c82     	mov	w2, #0x64               // =100
   254f4: 94000000     	bl	0x254f4 <syna_ts_check_dt+0x14c>
		00000000000254f4:  R_AARCH64_CALL26	strncpy
   254f8: 90000008     	adrp	x8, 0x25000 <syna_dev_set_stability_level+0x88>
		00000000000254f8:  R_AARCH64_ADR_PREL_PG_HI21	active_panel
   254fc: 2a1f03f4     	mov	w20, wzr
   25500: f9000113     	str	x19, [x8]
		0000000000025500:  R_AARCH64_LDST64_ABS_LO12_NC	active_panel
   25504: d5384108     	mrs	x8, SP_EL0
   25508: f9438908     	ldr	x8, [x8, #0x710]
   2550c: f85f83a9     	ldur	x9, [x29, #-0x8]
   25510: eb09011f     	cmp	x8, x9
   25514: 54000161     	b.ne	0x25540 <syna_ts_check_dt+0x198>
   25518: 2a1403e0     	mov	w0, w20
   2551c: a94b4ff4     	ldp	x20, x19, [sp, #0xb0]
   25520: a94a57f6     	ldp	x22, x21, [sp, #0xa0]
   25524: a9495ff8     	ldp	x24, x23, [sp, #0x90]
   25528: a94867fa     	ldp	x26, x25, [sp, #0x80]
   2552c: a9476ffc     	ldp	x28, x27, [sp, #0x70]
   25530: a9467bfd     	ldp	x29, x30, [sp, #0x60]
   25534: 910303ff     	add	sp, sp, #0xc0
   25538: d50323bf     	autiasp
   2553c: d65f03c0     	ret
   25540: 94000000     	bl	0x25540 <syna_ts_check_dt+0x198>
		0000000000025540:  R_AARCH64_CALL26	__stack_chk_fail
