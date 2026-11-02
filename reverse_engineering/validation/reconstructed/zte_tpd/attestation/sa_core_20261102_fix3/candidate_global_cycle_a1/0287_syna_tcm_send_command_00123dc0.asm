
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001543c <syna_tcm_send_command>:
   1543c: d503233f     	paciasp
   15440: d10183ff     	sub	sp, sp, #0x60
   15444: a9017bfd     	stp	x29, x30, [sp, #0x10]
   15448: f90013f9     	str	x25, [sp, #0x20]
   1544c: a9035ff8     	stp	x24, x23, [sp, #0x30]
   15450: a90457f6     	stp	x22, x21, [sp, #0x40]
   15454: a9054ff4     	stp	x20, x19, [sp, #0x50]
   15458: 910043fd     	add	x29, sp, #0x10
   1545c: d5384108     	mrs	x8, SP_EL0
   15460: f9438908     	ldr	x8, [x8, #0x710]
   15464: f90007e8     	str	x8, [sp, #0x8]
   15468: 390013ff     	strb	wzr, [sp, #0x4]
   1546c: b4000800     	cbz	x0, 0x1556c <syna_tcm_send_command+0x130>
   15470: aa0503f3     	mov	x19, x5
   15474: aa0403f5     	mov	x21, x4
   15478: aa0003f4     	mov	x20, x0
   1547c: 2a0103f6     	mov	w22, w1
   15480: 350000a6     	cbnz	w6, 0x15494 <syna_tcm_send_command+0x58>
   15484: f9402688     	ldr	x8, [x20, #0x48]
   15488: 39405108     	ldrb	w8, [x8, #0x14]
   1548c: 36000ac8     	tbz	w8, #0x0, 0x155e4 <syna_tcm_send_command+0x1a8>
   15490: 2a1f03e6     	mov	w6, wzr
   15494: f941ce88     	ldr	x8, [x20, #0x398]
   15498: 910013e4     	add	x4, sp, #0x4
   1549c: aa1403e0     	mov	x0, x20
   154a0: 2a1603e1     	mov	w1, w22
   154a4: 2a0603e5     	mov	w5, w6
   154a8: b85fc110     	ldur	w16, [x8, #-0x4]
   154ac: 728751d1     	movk	w17, #0x3a8e
   154b0: 72a48411     	movk	w17, #0x2420, lsl #16
   154b4: 6b11021f     	cmp	w16, w17
   154b8: 54000040     	b.eq	0x154c0 <syna_tcm_send_command+0x84>
   154bc: d4304500     	brk	#0x8228
   154c0: d63f0100     	blr	x8
   154c4: 37f807a0     	tbnz	w0, #0x1f, 0x155b8 <syna_tcm_send_command+0x17c>
   154c8: b4000075     	cbz	x21, 0x154d4 <syna_tcm_send_command+0x98>
   154cc: 394013e8     	ldrb	w8, [sp, #0x4]
   154d0: 390002a8     	strb	w8, [x21]
   154d4: b4000593     	cbz	x19, 0x15584 <syna_tcm_send_command+0x148>
   154d8: 394013e8     	ldrb	w8, [sp, #0x4]
   154dc: 51004109     	sub	w9, w8, #0x10
   154e0: 7103b93f     	cmp	w9, #0xee
   154e4: 540001c8     	b.hi	0x1551c <syna_tcm_send_command+0xe0>
   154e8: b9410e88     	ldr	w8, [x20, #0x10c]
   154ec: 340004c8     	cbz	w8, 0x15584 <syna_tcm_send_command+0x148>
   154f0: 91040281     	add	x1, x20, #0x100
   154f4: 2a0003f4     	mov	w20, w0
   154f8: aa1303e0     	mov	x0, x19
   154fc: 94000000     	bl	0x154fc <syna_tcm_send_command+0xc0>
		00000000000154fc:  R_AARCH64_CALL26	syna_tcm_buf_copy
   15500: 2a0003e8     	mov	w8, w0
   15504: 2a1403e0     	mov	w0, w20
   15508: 36f803e8     	tbz	w8, #0x1f, 0x15584 <syna_tcm_send_command+0x148>
   1550c: 394013e2     	ldrb	w2, [sp, #0x4]
   15510: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015510:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab36
   15514: 91000000     	add	x0, x0, #0x0
		0000000000015514:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab36
   15518: 14000010     	b	0x15558 <syna_tcm_send_command+0x11c>
   1551c: 51000508     	sub	w8, w8, #0x1
   15520: 7100391f     	cmp	w8, #0xe
   15524: 54000308     	b.hi	0x15584 <syna_tcm_send_command+0x148>
   15528: b9415688     	ldr	w8, [x20, #0x154]
   1552c: 340002c8     	cbz	w8, 0x15584 <syna_tcm_send_command+0x148>
   15530: 91052281     	add	x1, x20, #0x148
   15534: 2a0003f4     	mov	w20, w0
   15538: aa1303e0     	mov	x0, x19
   1553c: 94000000     	bl	0x1553c <syna_tcm_send_command+0x100>
		000000000001553c:  R_AARCH64_CALL26	syna_tcm_buf_copy
   15540: 2a0003e8     	mov	w8, w0
   15544: 2a1403e0     	mov	w0, w20
   15548: 36f801e8     	tbz	w8, #0x1f, 0x15584 <syna_tcm_send_command+0x148>
   1554c: 394013e2     	ldrb	w2, [sp, #0x4]
   15550: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015550:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb8c4
   15554: 91000000     	add	x0, x0, #0x0
		0000000000015554:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb8c4
   15558: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015558:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc682
   1555c: 91000021     	add	x1, x1, #0x0
		000000000001555c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc682
   15560: 94000000     	bl	0x15560 <syna_tcm_send_command+0x124>
		0000000000015560:  R_AARCH64_CALL26	_printk
   15564: 12801e40     	mov	w0, #-0xf3              // =-243
   15568: 14000007     	b	0x15584 <syna_tcm_send_command+0x148>
   1556c: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x3d4>
		000000000001556c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   15570: 91000000     	add	x0, x0, #0x0
		0000000000015570:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   15574: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015574:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc682
   15578: 91000021     	add	x1, x1, #0x0
		0000000000015578:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc682
   1557c: 94000000     	bl	0x1557c <syna_tcm_send_command+0x140>
		000000000001557c:  R_AARCH64_CALL26	_printk
   15580: 12801e00     	mov	w0, #-0xf1              // =-241
   15584: d5384108     	mrs	x8, SP_EL0
   15588: f9438908     	ldr	x8, [x8, #0x710]
   1558c: f94007e9     	ldr	x9, [sp, #0x8]
   15590: eb09011f     	cmp	x8, x9
   15594: 54000401     	b.ne	0x15614 <syna_tcm_send_command+0x1d8>
   15598: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   1559c: f94013f9     	ldr	x25, [sp, #0x20]
   155a0: a94457f6     	ldp	x22, x21, [sp, #0x40]
   155a4: a9435ff8     	ldp	x24, x23, [sp, #0x30]
   155a8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   155ac: 910183ff     	add	sp, sp, #0x60
   155b0: d50323bf     	autiasp
   155b4: d65f03c0     	ret
   155b8: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x3d4>
		00000000000155b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59ca
   155bc: 91000108     	add	x8, x8, #0x0
		00000000000155bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59ca
   155c0: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x3d4>
		00000000000155c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc682
   155c4: 91000021     	add	x1, x1, #0x0
		00000000000155c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc682
   155c8: 12001ec2     	and	w2, w22, #0xff
   155cc: 2a0003f6     	mov	w22, w0
   155d0: aa0803e0     	mov	x0, x8
   155d4: 94000000     	bl	0x155d4 <syna_tcm_send_command+0x198>
		00000000000155d4:  R_AARCH64_CALL26	_printk
   155d8: 2a1603e0     	mov	w0, w22
   155dc: b5fff795     	cbnz	x21, 0x154cc <syna_tcm_send_command+0x90>
   155e0: 17ffffbd     	b	0x154d4 <syna_tcm_send_command+0x98>
   155e4: b9420e99     	ldr	w25, [x20, #0x20c]
   155e8: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x3d4>
		00000000000155e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab68
   155ec: 91000000     	add	x0, x0, #0x0
		00000000000155ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab68
   155f0: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x3d4>
		00000000000155f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc682
   155f4: 91000021     	add	x1, x1, #0x0
		00000000000155f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc682
   155f8: 2a0303f7     	mov	w23, w3
   155fc: aa0203f8     	mov	x24, x2
   15600: 94000000     	bl	0x15600 <syna_tcm_send_command+0x1c4>
		0000000000015600:  R_AARCH64_CALL26	_printk
   15604: 2a1903e6     	mov	w6, w25
   15608: aa1803e2     	mov	x2, x24
   1560c: 2a1703e3     	mov	w3, w23
   15610: 17ffffa1     	b	0x15494 <syna_tcm_send_command+0x58>
   15614: 94000000     	bl	0x15614 <syna_tcm_send_command+0x1d8>
		0000000000015614:  R_AARCH64_CALL26	__stack_chk_fail
