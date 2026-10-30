
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000153e0 <syna_tcm_send_command>:
   153e0: d503233f     	paciasp
   153e4: d10183ff     	sub	sp, sp, #0x60
   153e8: a9017bfd     	stp	x29, x30, [sp, #0x10]
   153ec: f90013f9     	str	x25, [sp, #0x20]
   153f0: a9035ff8     	stp	x24, x23, [sp, #0x30]
   153f4: a90457f6     	stp	x22, x21, [sp, #0x40]
   153f8: a9054ff4     	stp	x20, x19, [sp, #0x50]
   153fc: 910043fd     	add	x29, sp, #0x10
   15400: d5384108     	mrs	x8, SP_EL0
   15404: f9438908     	ldr	x8, [x8, #0x710]
   15408: f90007e8     	str	x8, [sp, #0x8]
   1540c: 390013ff     	strb	wzr, [sp, #0x4]
   15410: b4000800     	cbz	x0, 0x15510 <syna_tcm_send_command+0x130>
   15414: aa0503f3     	mov	x19, x5
   15418: aa0403f5     	mov	x21, x4
   1541c: aa0003f4     	mov	x20, x0
   15420: 2a0103f6     	mov	w22, w1
   15424: 350000a6     	cbnz	w6, 0x15438 <syna_tcm_send_command+0x58>
   15428: f9402688     	ldr	x8, [x20, #0x48]
   1542c: 39405108     	ldrb	w8, [x8, #0x14]
   15430: 36000ac8     	tbz	w8, #0x0, 0x15588 <syna_tcm_send_command+0x1a8>
   15434: 2a1f03e6     	mov	w6, wzr
   15438: f941ce88     	ldr	x8, [x20, #0x398]
   1543c: 910013e4     	add	x4, sp, #0x4
   15440: aa1403e0     	mov	x0, x20
   15444: 2a1603e1     	mov	w1, w22
   15448: 2a0603e5     	mov	w5, w6
   1544c: b85fc110     	ldur	w16, [x8, #-0x4]
   15450: 728751d1     	movk	w17, #0x3a8e
   15454: 72a48411     	movk	w17, #0x2420, lsl #16
   15458: 6b11021f     	cmp	w16, w17
   1545c: 54000040     	b.eq	0x15464 <syna_tcm_send_command+0x84>
   15460: d4304500     	brk	#0x8228
   15464: d63f0100     	blr	x8
   15468: 37f807a0     	tbnz	w0, #0x1f, 0x1555c <syna_tcm_send_command+0x17c>
   1546c: b4000075     	cbz	x21, 0x15478 <syna_tcm_send_command+0x98>
   15470: 394013e8     	ldrb	w8, [sp, #0x4]
   15474: 390002a8     	strb	w8, [x21]
   15478: b4000593     	cbz	x19, 0x15528 <syna_tcm_send_command+0x148>
   1547c: 394013e8     	ldrb	w8, [sp, #0x4]
   15480: 51004109     	sub	w9, w8, #0x10
   15484: 7103b93f     	cmp	w9, #0xee
   15488: 540001c8     	b.hi	0x154c0 <syna_tcm_send_command+0xe0>
   1548c: b9410e88     	ldr	w8, [x20, #0x10c]
   15490: 340004c8     	cbz	w8, 0x15528 <syna_tcm_send_command+0x148>
   15494: 91040281     	add	x1, x20, #0x100
   15498: 2a0003f4     	mov	w20, w0
   1549c: aa1303e0     	mov	x0, x19
   154a0: 94000000     	bl	0x154a0 <syna_tcm_send_command+0xc0>
		00000000000154a0:  R_AARCH64_CALL26	syna_tcm_buf_copy
   154a4: 2a0003e8     	mov	w8, w0
   154a8: 2a1403e0     	mov	w0, w20
   154ac: 36f803e8     	tbz	w8, #0x1f, 0x15528 <syna_tcm_send_command+0x148>
   154b0: 394013e2     	ldrb	w2, [sp, #0x4]
   154b4: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x430>
		00000000000154b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab36
   154b8: 91000000     	add	x0, x0, #0x0
		00000000000154b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab36
   154bc: 14000010     	b	0x154fc <syna_tcm_send_command+0x11c>
   154c0: 51000508     	sub	w8, w8, #0x1
   154c4: 7100391f     	cmp	w8, #0xe
   154c8: 54000308     	b.hi	0x15528 <syna_tcm_send_command+0x148>
   154cc: b9415688     	ldr	w8, [x20, #0x154]
   154d0: 340002c8     	cbz	w8, 0x15528 <syna_tcm_send_command+0x148>
   154d4: 91052281     	add	x1, x20, #0x148
   154d8: 2a0003f4     	mov	w20, w0
   154dc: aa1303e0     	mov	x0, x19
   154e0: 94000000     	bl	0x154e0 <syna_tcm_send_command+0x100>
		00000000000154e0:  R_AARCH64_CALL26	syna_tcm_buf_copy
   154e4: 2a0003e8     	mov	w8, w0
   154e8: 2a1403e0     	mov	w0, w20
   154ec: 36f801e8     	tbz	w8, #0x1f, 0x15528 <syna_tcm_send_command+0x148>
   154f0: 394013e2     	ldrb	w2, [sp, #0x4]
   154f4: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x430>
		00000000000154f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb8c4
   154f8: 91000000     	add	x0, x0, #0x0
		00000000000154f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb8c4
   154fc: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x430>
		00000000000154fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc682
   15500: 91000021     	add	x1, x1, #0x0
		0000000000015500:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc682
   15504: 94000000     	bl	0x15504 <syna_tcm_send_command+0x124>
		0000000000015504:  R_AARCH64_CALL26	_printk
   15508: 12801e40     	mov	w0, #-0xf3              // =-243
   1550c: 14000007     	b	0x15528 <syna_tcm_send_command+0x148>
   15510: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015510:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   15514: 91000000     	add	x0, x0, #0x0
		0000000000015514:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   15518: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015518:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc682
   1551c: 91000021     	add	x1, x1, #0x0
		000000000001551c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc682
   15520: 94000000     	bl	0x15520 <syna_tcm_send_command+0x140>
		0000000000015520:  R_AARCH64_CALL26	_printk
   15524: 12801e00     	mov	w0, #-0xf1              // =-241
   15528: d5384108     	mrs	x8, SP_EL0
   1552c: f9438908     	ldr	x8, [x8, #0x710]
   15530: f94007e9     	ldr	x9, [sp, #0x8]
   15534: eb09011f     	cmp	x8, x9
   15538: 54000401     	b.ne	0x155b8 <syna_tcm_send_command+0x1d8>
   1553c: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   15540: f94013f9     	ldr	x25, [sp, #0x20]
   15544: a94457f6     	ldp	x22, x21, [sp, #0x40]
   15548: a9435ff8     	ldp	x24, x23, [sp, #0x30]
   1554c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   15550: 910183ff     	add	sp, sp, #0x60
   15554: d50323bf     	autiasp
   15558: d65f03c0     	ret
   1555c: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x430>
		000000000001555c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59ca
   15560: 91000108     	add	x8, x8, #0x0
		0000000000015560:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59ca
   15564: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015564:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc682
   15568: 91000021     	add	x1, x1, #0x0
		0000000000015568:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc682
   1556c: 12001ec2     	and	w2, w22, #0xff
   15570: 2a0003f6     	mov	w22, w0
   15574: aa0803e0     	mov	x0, x8
   15578: 94000000     	bl	0x15578 <syna_tcm_send_command+0x198>
		0000000000015578:  R_AARCH64_CALL26	_printk
   1557c: 2a1603e0     	mov	w0, w22
   15580: b5fff795     	cbnz	x21, 0x15470 <syna_tcm_send_command+0x90>
   15584: 17ffffbd     	b	0x15478 <syna_tcm_send_command+0x98>
   15588: b9420e99     	ldr	w25, [x20, #0x20c]
   1558c: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x430>
		000000000001558c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab68
   15590: 91000000     	add	x0, x0, #0x0
		0000000000015590:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab68
   15594: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc682
   15598: 91000021     	add	x1, x1, #0x0
		0000000000015598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc682
   1559c: 2a0303f7     	mov	w23, w3
   155a0: aa0203f8     	mov	x24, x2
   155a4: 94000000     	bl	0x155a4 <syna_tcm_send_command+0x1c4>
		00000000000155a4:  R_AARCH64_CALL26	_printk
   155a8: 2a1903e6     	mov	w6, w25
   155ac: aa1803e2     	mov	x2, x24
   155b0: 2a1703e3     	mov	w3, w23
   155b4: 17ffffa1     	b	0x15438 <syna_tcm_send_command+0x58>
   155b8: 94000000     	bl	0x155b8 <syna_tcm_send_command+0x1d8>
		00000000000155b8:  R_AARCH64_CALL26	__stack_chk_fail
