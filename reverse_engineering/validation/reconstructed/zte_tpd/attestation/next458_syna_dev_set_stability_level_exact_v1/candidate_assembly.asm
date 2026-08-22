
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000253dc <syna_dev_set_stability_level>:
   253dc: d503233f     	paciasp
   253e0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   253e4: f9000bf5     	str	x21, [sp, #0x10]
   253e8: a9024ff4     	stp	x20, x19, [sp, #0x20]
   253ec: 910003fd     	mov	x29, sp
   253f0: 2a0103f5     	mov	w21, w1
   253f4: 90000001     	adrp	x1, 0x25000 <set_stability_level+0x78>
		00000000000253f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x121b2
   253f8: 91000021     	add	x1, x1, #0x0
		00000000000253f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x121b2
   253fc: 2a0203f3     	mov	w19, w2
   25400: aa0003f4     	mov	x20, x0
   25404: 90000000     	adrp	x0, 0x25000 <set_stability_level+0x78>
		0000000000025404:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12168
   25408: 91000000     	add	x0, x0, #0x0
		0000000000025408:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12168
   2540c: aa0103e2     	mov	x2, x1
   25410: 94000000     	bl	0x25410 <syna_dev_set_stability_level+0x34>
		0000000000025410:  R_AARCH64_CALL26	_printk
   25414: b40002f4     	cbz	x20, 0x25470 <syna_dev_set_stability_level+0x94>
   25418: 710006bf     	cmp	w21, #0x1
   2541c: 90000000     	adrp	x0, 0x25000 <set_stability_level+0x78>
		000000000002541c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1222e
   25420: 91000000     	add	x0, x0, #0x0
		0000000000025420:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1222e
   25424: 540002ad     	b.le	0x25478 <syna_dev_set_stability_level+0x9c>
   25428: 71000abf     	cmp	w21, #0x2
   2542c: 54000440     	b.eq	0x254b4 <syna_dev_set_stability_level+0xd8>
   25430: 71000ebf     	cmp	w21, #0x3
   25434: 540006e0     	b.eq	0x25510 <syna_dev_set_stability_level+0x134>
   25438: 710012bf     	cmp	w21, #0x4
   2543c: 54000801     	b.ne	0x2553c <syna_dev_set_stability_level+0x160>
   25440: b9460288     	ldr	w8, [x20, #0x600]
   25444: b945fe89     	ldr	w9, [x20, #0x5fc]
   25448: 52801f21     	mov	w1, #0xf9               // =249
   2544c: f9400280     	ldr	x0, [x20]
   25450: 2a1303e3     	mov	w3, w19
   25454: 2a081128     	orr	w8, w9, w8, lsl #4
   25458: 32160102     	orr	w2, w8, #0x400
   2545c: 94000000     	bl	0x2545c <syna_dev_set_stability_level+0x80>
		000000000002545c:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   25460: 37f80780     	tbnz	w0, #0x1f, 0x25550 <syna_dev_set_stability_level+0x174>
   25464: 90000000     	adrp	x0, 0x25000 <set_stability_level+0x78>
		0000000000025464:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12000
   25468: 91000000     	add	x0, x0, #0x0
		0000000000025468:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12000
   2546c: 14000034     	b	0x2553c <syna_dev_set_stability_level+0x160>
   25470: 128002a0     	mov	w0, #-0x16              // =-22
   25474: 14000037     	b	0x25550 <syna_dev_set_stability_level+0x174>
   25478: 34000375     	cbz	w21, 0x254e4 <syna_dev_set_stability_level+0x108>
   2547c: 710006bf     	cmp	w21, #0x1
   25480: 540005e1     	b.ne	0x2553c <syna_dev_set_stability_level+0x160>
   25484: b9460288     	ldr	w8, [x20, #0x600]
   25488: b945fe89     	ldr	w9, [x20, #0x5fc]
   2548c: 52801f21     	mov	w1, #0xf9               // =249
   25490: f9400280     	ldr	x0, [x20]
   25494: 2a1303e3     	mov	w3, w19
   25498: 2a081128     	orr	w8, w9, w8, lsl #4
   2549c: 32180102     	orr	w2, w8, #0x100
   254a0: 94000000     	bl	0x254a0 <syna_dev_set_stability_level+0xc4>
		00000000000254a0:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   254a4: 37f80560     	tbnz	w0, #0x1f, 0x25550 <syna_dev_set_stability_level+0x174>
   254a8: 90000000     	adrp	x0, 0x25000 <set_stability_level+0x78>
		00000000000254a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1202e
   254ac: 91000000     	add	x0, x0, #0x0
		00000000000254ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1202e
   254b0: 14000023     	b	0x2553c <syna_dev_set_stability_level+0x160>
   254b4: b9460288     	ldr	w8, [x20, #0x600]
   254b8: b945fe89     	ldr	w9, [x20, #0x5fc]
   254bc: 52801f21     	mov	w1, #0xf9               // =249
   254c0: f9400280     	ldr	x0, [x20]
   254c4: 2a1303e3     	mov	w3, w19
   254c8: 2a081128     	orr	w8, w9, w8, lsl #4
   254cc: 32170102     	orr	w2, w8, #0x200
   254d0: 94000000     	bl	0x254d0 <syna_dev_set_stability_level+0xf4>
		00000000000254d0:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   254d4: 37f803e0     	tbnz	w0, #0x1f, 0x25550 <syna_dev_set_stability_level+0x174>
   254d8: 90000000     	adrp	x0, 0x25000 <set_stability_level+0x78>
		00000000000254d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1211a
   254dc: 91000000     	add	x0, x0, #0x0
		00000000000254dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1211a
   254e0: 14000017     	b	0x2553c <syna_dev_set_stability_level+0x160>
   254e4: b9460288     	ldr	w8, [x20, #0x600]
   254e8: b945fe89     	ldr	w9, [x20, #0x5fc]
   254ec: 52801f21     	mov	w1, #0xf9               // =249
   254f0: f9400280     	ldr	x0, [x20]
   254f4: 2a1303e3     	mov	w3, w19
   254f8: 2a081122     	orr	w2, w9, w8, lsl #4
   254fc: 94000000     	bl	0x254fc <syna_dev_set_stability_level+0x120>
		00000000000254fc:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   25500: 37f80280     	tbnz	w0, #0x1f, 0x25550 <syna_dev_set_stability_level+0x174>
   25504: 90000000     	adrp	x0, 0x25000 <set_stability_level+0x78>
		0000000000025504:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x121d0
   25508: 91000000     	add	x0, x0, #0x0
		0000000000025508:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x121d0
   2550c: 1400000c     	b	0x2553c <syna_dev_set_stability_level+0x160>
   25510: b9460288     	ldr	w8, [x20, #0x600]
   25514: b945fe89     	ldr	w9, [x20, #0x5fc]
   25518: 52801f21     	mov	w1, #0xf9               // =249
   2551c: f9400280     	ldr	x0, [x20]
   25520: 2a1303e3     	mov	w3, w19
   25524: 2a081128     	orr	w8, w9, w8, lsl #4
   25528: 32180502     	orr	w2, w8, #0x300
   2552c: 94000000     	bl	0x2552c <syna_dev_set_stability_level+0x150>
		000000000002552c:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   25530: 37f80100     	tbnz	w0, #0x1f, 0x25550 <syna_dev_set_stability_level+0x174>
   25534: 90000000     	adrp	x0, 0x25000 <set_stability_level+0x78>
		0000000000025534:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x120bc
   25538: 91000000     	add	x0, x0, #0x0
		0000000000025538:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x120bc
   2553c: 90000001     	adrp	x1, 0x25000 <set_stability_level+0x78>
		000000000002553c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x121b2
   25540: 91000021     	add	x1, x1, #0x0
		0000000000025540:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x121b2
   25544: aa0103e2     	mov	x2, x1
   25548: 94000000     	bl	0x25548 <syna_dev_set_stability_level+0x16c>
		0000000000025548:  R_AARCH64_CALL26	_printk
   2554c: 2a1f03e0     	mov	w0, wzr
   25550: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   25554: f9400bf5     	ldr	x21, [sp, #0x10]
   25558: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   2555c: d50323bf     	autiasp
   25560: d65f03c0     	ret
