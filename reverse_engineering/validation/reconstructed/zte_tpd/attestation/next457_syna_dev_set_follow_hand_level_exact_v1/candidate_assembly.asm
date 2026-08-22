
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000253e0 <syna_dev_set_follow_hand_level>:
   253e0: d503233f     	paciasp
   253e4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   253e8: f9000bf5     	str	x21, [sp, #0x10]
   253ec: a9024ff4     	stp	x20, x19, [sp, #0x20]
   253f0: 910003fd     	mov	x29, sp
   253f4: 2a0103f5     	mov	w21, w1
   253f8: 90000001     	adrp	x1, 0x25000 <set_follow_hand_level+0xa4>
		00000000000253f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x120ae
   253fc: 91000021     	add	x1, x1, #0x0
		00000000000253fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x120ae
   25400: 2a0203f3     	mov	w19, w2
   25404: aa0003f4     	mov	x20, x0
   25408: 90000000     	adrp	x0, 0x25000 <set_follow_hand_level+0xa4>
		0000000000025408:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x120ce
   2540c: 91000000     	add	x0, x0, #0x0
		000000000002540c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x120ce
   25410: aa0103e2     	mov	x2, x1
   25414: 94000000     	bl	0x25414 <syna_dev_set_follow_hand_level+0x34>
		0000000000025414:  R_AARCH64_CALL26	_printk
   25418: b40002f4     	cbz	x20, 0x25474 <syna_dev_set_follow_hand_level+0x94>
   2541c: 710006bf     	cmp	w21, #0x1
   25420: 90000000     	adrp	x0, 0x25000 <set_follow_hand_level+0xa4>
		0000000000025420:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12148
   25424: 91000000     	add	x0, x0, #0x0
		0000000000025424:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12148
   25428: 540002ad     	b.le	0x2547c <syna_dev_set_follow_hand_level+0x9c>
   2542c: 71000abf     	cmp	w21, #0x2
   25430: 54000440     	b.eq	0x254b8 <syna_dev_set_follow_hand_level+0xd8>
   25434: 71000ebf     	cmp	w21, #0x3
   25438: 540006e0     	b.eq	0x25514 <syna_dev_set_follow_hand_level+0x134>
   2543c: 710012bf     	cmp	w21, #0x4
   25440: 54000801     	b.ne	0x25540 <syna_dev_set_follow_hand_level+0x160>
   25444: b9460688     	ldr	w8, [x20, #0x604]
   25448: b945fe89     	ldr	w9, [x20, #0x5fc]
   2544c: 52801f21     	mov	w1, #0xf9               // =249
   25450: f9400280     	ldr	x0, [x20]
   25454: 2a1303e3     	mov	w3, w19
   25458: 2a082128     	orr	w8, w9, w8, lsl #8
   2545c: 321a0102     	orr	w2, w8, #0x40
   25460: 94000000     	bl	0x25460 <syna_dev_set_follow_hand_level+0x80>
		0000000000025460:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   25464: 37f80780     	tbnz	w0, #0x1f, 0x25554 <syna_dev_set_follow_hand_level+0x174>
   25468: 90000000     	adrp	x0, 0x25000 <set_follow_hand_level+0xa4>
		0000000000025468:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12118
   2546c: 91000000     	add	x0, x0, #0x0
		000000000002546c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12118
   25470: 14000034     	b	0x25540 <syna_dev_set_follow_hand_level+0x160>
   25474: 128002a0     	mov	w0, #-0x16              // =-22
   25478: 14000037     	b	0x25554 <syna_dev_set_follow_hand_level+0x174>
   2547c: 34000375     	cbz	w21, 0x254e8 <syna_dev_set_follow_hand_level+0x108>
   25480: 710006bf     	cmp	w21, #0x1
   25484: 540005e1     	b.ne	0x25540 <syna_dev_set_follow_hand_level+0x160>
   25488: b9460688     	ldr	w8, [x20, #0x604]
   2548c: b945fe89     	ldr	w9, [x20, #0x5fc]
   25490: 52801f21     	mov	w1, #0xf9               // =249
   25494: f9400280     	ldr	x0, [x20]
   25498: 2a1303e3     	mov	w3, w19
   2549c: 2a082128     	orr	w8, w9, w8, lsl #8
   254a0: 321c0102     	orr	w2, w8, #0x10
   254a4: 94000000     	bl	0x254a4 <syna_dev_set_follow_hand_level+0xc4>
		00000000000254a4:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   254a8: 37f80560     	tbnz	w0, #0x1f, 0x25554 <syna_dev_set_follow_hand_level+0x174>
   254ac: 90000000     	adrp	x0, 0x25000 <set_follow_hand_level+0xa4>
		00000000000254ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1201e
   254b0: 91000000     	add	x0, x0, #0x0
		00000000000254b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1201e
   254b4: 14000023     	b	0x25540 <syna_dev_set_follow_hand_level+0x160>
   254b8: b9460688     	ldr	w8, [x20, #0x604]
   254bc: b945fe89     	ldr	w9, [x20, #0x5fc]
   254c0: 52801f21     	mov	w1, #0xf9               // =249
   254c4: f9400280     	ldr	x0, [x20]
   254c8: 2a1303e3     	mov	w3, w19
   254cc: 2a082128     	orr	w8, w9, w8, lsl #8
   254d0: 321b0102     	orr	w2, w8, #0x20
   254d4: 94000000     	bl	0x254d4 <syna_dev_set_follow_hand_level+0xf4>
		00000000000254d4:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   254d8: 37f803e0     	tbnz	w0, #0x1f, 0x25554 <syna_dev_set_follow_hand_level+0x174>
   254dc: 90000000     	adrp	x0, 0x25000 <set_follow_hand_level+0xa4>
		00000000000254dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1207e
   254e0: 91000000     	add	x0, x0, #0x0
		00000000000254e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1207e
   254e4: 14000017     	b	0x25540 <syna_dev_set_follow_hand_level+0x160>
   254e8: b9460688     	ldr	w8, [x20, #0x604]
   254ec: b945fe89     	ldr	w9, [x20, #0x5fc]
   254f0: 52801f21     	mov	w1, #0xf9               // =249
   254f4: f9400280     	ldr	x0, [x20]
   254f8: 2a1303e3     	mov	w3, w19
   254fc: 2a082122     	orr	w2, w9, w8, lsl #8
   25500: 94000000     	bl	0x25500 <syna_dev_set_follow_hand_level+0x120>
		0000000000025500:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   25504: 37f80280     	tbnz	w0, #0x1f, 0x25554 <syna_dev_set_follow_hand_level+0x174>
   25508: 90000000     	adrp	x0, 0x25000 <set_follow_hand_level+0xa4>
		0000000000025508:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x120e8
   2550c: 91000000     	add	x0, x0, #0x0
		000000000002550c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x120e8
   25510: 1400000c     	b	0x25540 <syna_dev_set_follow_hand_level+0x160>
   25514: b9460688     	ldr	w8, [x20, #0x604]
   25518: b945fe89     	ldr	w9, [x20, #0x5fc]
   2551c: 52801f21     	mov	w1, #0xf9               // =249
   25520: f9400280     	ldr	x0, [x20]
   25524: 2a1303e3     	mov	w3, w19
   25528: 2a082128     	orr	w8, w9, w8, lsl #8
   2552c: 321c0502     	orr	w2, w8, #0x30
   25530: 94000000     	bl	0x25530 <syna_dev_set_follow_hand_level+0x150>
		0000000000025530:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   25534: 37f80100     	tbnz	w0, #0x1f, 0x25554 <syna_dev_set_follow_hand_level+0x174>
   25538: 90000000     	adrp	x0, 0x25000 <set_follow_hand_level+0xa4>
		0000000000025538:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1204e
   2553c: 91000000     	add	x0, x0, #0x0
		000000000002553c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1204e
   25540: 90000001     	adrp	x1, 0x25000 <set_follow_hand_level+0xa4>
		0000000000025540:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x120ae
   25544: 91000021     	add	x1, x1, #0x0
		0000000000025544:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x120ae
   25548: aa0103e2     	mov	x2, x1
   2554c: 94000000     	bl	0x2554c <syna_dev_set_follow_hand_level+0x16c>
		000000000002554c:  R_AARCH64_CALL26	_printk
   25550: 2a1f03e0     	mov	w0, wzr
   25554: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   25558: f9400bf5     	ldr	x21, [sp, #0x10]
   2555c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   25560: d50323bf     	autiasp
   25564: d65f03c0     	ret
