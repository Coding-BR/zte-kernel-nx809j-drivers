
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000394 <edge_long_press_up>:
     394: d503233f     	paciasp
     398: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     39c: a9015ff8     	stp	x24, x23, [sp, #0x10]
     3a0: a90257f6     	stp	x22, x21, [sp, #0x20]
     3a4: a9034ff4     	stp	x20, x19, [sp, #0x30]
     3a8: 910003fd     	mov	x29, sp
     3ac: 12003c33     	and	w19, w1, #0xffff
     3b0: 71002a7f     	cmp	w19, #0xa
     3b4: 540011e2     	b.hs	0x5f0 <edge_long_press_up+0x25c>
     3b8: 2a0103f4     	mov	w20, w1
     3bc: 52801109     	mov	w9, #0x88               // =136
     3c0: 9000000a     	adrp	x10, 0x0 <.text>
		00000000000003c0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info
     3c4: 9100014a     	add	x10, x10, #0x0
		00000000000003c4:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info
     3c8: 92403e88     	and	x8, x20, #0xffff
     3cc: 9ba92917     	umaddl	x23, w8, w9, x10
     3d0: 394152e8     	ldrb	w8, [x23, #0x54]
     3d4: 35000108     	cbnz	w8, 0x3f4 <edge_long_press_up+0x60>
     3d8: aa1f03e0     	mov	x0, xzr
     3dc: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     3e0: a94257f6     	ldp	x22, x21, [sp, #0x20]
     3e4: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     3e8: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     3ec: d50323bf     	autiasp
     3f0: d65f03c0     	ret
     3f4: 90000018     	adrp	x24, 0x0 <.text>
		00000000000003f4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
     3f8: aa0003f6     	mov	x22, x0
     3fc: f9400308     	ldr	x8, [x24]
		00000000000003fc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     400: 91324100     	add	x0, x8, #0xc90
     404: 94000000     	bl	0x404 <edge_long_press_up+0x70>
		0000000000000404:  R_AARCH64_CALL26	mutex_lock
     408: aa1603e0     	mov	x0, x22
     40c: 52800061     	mov	w1, #0x3                // =3
     410: 528005e2     	mov	w2, #0x2f               // =47
     414: 2a1303e3     	mov	w3, w19
     418: 94000000     	bl	0x418 <edge_long_press_up+0x84>
		0000000000000418:  R_AARCH64_CALL26	input_event
     41c: aa1603e0     	mov	x0, x22
     420: 2a1f03e1     	mov	w1, wzr
     424: 2a1f03e2     	mov	w2, wzr
     428: aa1603f5     	mov	x21, x22
     42c: 94000000     	bl	0x42c <edge_long_press_up+0x98>
		000000000000042c:  R_AARCH64_CALL26	input_mt_report_slot_state
     430: 72003e9f     	tst	w20, #0xffff
     434: 54000161     	b.ne	0x460 <edge_long_press_up+0xcc>
     438: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000438:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0xdb
     43c: 91000108     	add	x8, x8, #0x0
		000000000000043c:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info+0xdb
     440: 39400109     	ldrb	w9, [x8]
     444: 39400508     	ldrb	w8, [x8, #0x1]
     448: 2a080128     	orr	w8, w9, w8
     44c: 35000b08     	cbnz	w8, 0x5ac <edge_long_press_up+0x218>
     450: 12003e88     	and	w8, w20, #0xffff
     454: 7100091f     	cmp	w8, #0x2
     458: 54000161     	b.ne	0x484 <edge_long_press_up+0xf0>
     45c: 14000013     	b	0x4a8 <edge_long_press_up+0x114>
     460: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000460:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x53
     464: 91000108     	add	x8, x8, #0x0
		0000000000000464:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info+0x53
     468: 39400109     	ldrb	w9, [x8]
     46c: 39400508     	ldrb	w8, [x8, #0x1]
     470: 2a080128     	orr	w8, w9, w8
     474: 350009c8     	cbnz	w8, 0x5ac <edge_long_press_up+0x218>
     478: 12003e88     	and	w8, w20, #0xffff
     47c: 7100051f     	cmp	w8, #0x1
     480: 54fffdc1     	b.ne	0x438 <edge_long_press_up+0xa4>
     484: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000484:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x163
     488: 91000108     	add	x8, x8, #0x0
		0000000000000488:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info+0x163
     48c: 39400109     	ldrb	w9, [x8]
     490: 39400508     	ldrb	w8, [x8, #0x1]
     494: 2a080128     	orr	w8, w9, w8
     498: 350008a8     	cbnz	w8, 0x5ac <edge_long_press_up+0x218>
     49c: 12003e88     	and	w8, w20, #0xffff
     4a0: 71000d1f     	cmp	w8, #0x3
     4a4: 54000140     	b.eq	0x4cc <edge_long_press_up+0x138>
     4a8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000004a8:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x1eb
     4ac: 91000108     	add	x8, x8, #0x0
		00000000000004ac:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info+0x1eb
     4b0: 39400109     	ldrb	w9, [x8]
     4b4: 39400508     	ldrb	w8, [x8, #0x1]
     4b8: 2a080128     	orr	w8, w9, w8
     4bc: 35000788     	cbnz	w8, 0x5ac <edge_long_press_up+0x218>
     4c0: 12003e88     	and	w8, w20, #0xffff
     4c4: 7100111f     	cmp	w8, #0x4
     4c8: 54000140     	b.eq	0x4f0 <edge_long_press_up+0x15c>
     4cc: 90000008     	adrp	x8, 0x0 <.text>
		00000000000004cc:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x273
     4d0: 91000108     	add	x8, x8, #0x0
		00000000000004d0:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info+0x273
     4d4: 39400109     	ldrb	w9, [x8]
     4d8: 39400508     	ldrb	w8, [x8, #0x1]
     4dc: 2a080128     	orr	w8, w9, w8
     4e0: 35000668     	cbnz	w8, 0x5ac <edge_long_press_up+0x218>
     4e4: 12003e88     	and	w8, w20, #0xffff
     4e8: 7100151f     	cmp	w8, #0x5
     4ec: 54000140     	b.eq	0x514 <edge_long_press_up+0x180>
     4f0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000004f0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x2fb
     4f4: 91000108     	add	x8, x8, #0x0
		00000000000004f4:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info+0x2fb
     4f8: 39400109     	ldrb	w9, [x8]
     4fc: 39400508     	ldrb	w8, [x8, #0x1]
     500: 2a080128     	orr	w8, w9, w8
     504: 35000548     	cbnz	w8, 0x5ac <edge_long_press_up+0x218>
     508: 12003e88     	and	w8, w20, #0xffff
     50c: 7100191f     	cmp	w8, #0x6
     510: 54000140     	b.eq	0x538 <edge_long_press_up+0x1a4>
     514: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000514:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x383
     518: 91000108     	add	x8, x8, #0x0
		0000000000000518:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info+0x383
     51c: 39400109     	ldrb	w9, [x8]
     520: 39400508     	ldrb	w8, [x8, #0x1]
     524: 2a080128     	orr	w8, w9, w8
     528: 35000428     	cbnz	w8, 0x5ac <edge_long_press_up+0x218>
     52c: 12003e88     	and	w8, w20, #0xffff
     530: 71001d1f     	cmp	w8, #0x7
     534: 54000140     	b.eq	0x55c <edge_long_press_up+0x1c8>
     538: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000538:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x40b
     53c: 91000108     	add	x8, x8, #0x0
		000000000000053c:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info+0x40b
     540: 39400109     	ldrb	w9, [x8]
     544: 39400508     	ldrb	w8, [x8, #0x1]
     548: 2a080128     	orr	w8, w9, w8
     54c: 35000308     	cbnz	w8, 0x5ac <edge_long_press_up+0x218>
     550: 12003e88     	and	w8, w20, #0xffff
     554: 7100211f     	cmp	w8, #0x8
     558: 54000140     	b.eq	0x580 <edge_long_press_up+0x1ec>
     55c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000055c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x493
     560: 91000108     	add	x8, x8, #0x0
		0000000000000560:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info+0x493
     564: 39400109     	ldrb	w9, [x8]
     568: 39400508     	ldrb	w8, [x8, #0x1]
     56c: 2a080128     	orr	w8, w9, w8
     570: 350001e8     	cbnz	w8, 0x5ac <edge_long_press_up+0x218>
     574: 12003e88     	and	w8, w20, #0xffff
     578: 7100251f     	cmp	w8, #0x9
     57c: 540000e0     	b.eq	0x598 <edge_long_press_up+0x204>
     580: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000580:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x51b
     584: 91000108     	add	x8, x8, #0x0
		0000000000000584:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info+0x51b
     588: 39400109     	ldrb	w9, [x8]
     58c: 39400508     	ldrb	w8, [x8, #0x1]
     590: 2a080128     	orr	w8, w9, w8
     594: 350000c8     	cbnz	w8, 0x5ac <edge_long_press_up+0x218>
     598: aa1503e0     	mov	x0, x21
     59c: 52800021     	mov	w1, #0x1                // =1
     5a0: 52802942     	mov	w2, #0x14a              // =330
     5a4: 2a1f03e3     	mov	w3, wzr
     5a8: 94000000     	bl	0x5a8 <edge_long_press_up+0x214>
		00000000000005a8:  R_AARCH64_CALL26	input_event
     5ac: aa1503e0     	mov	x0, x21
     5b0: 2a1f03e1     	mov	w1, wzr
     5b4: 2a1f03e2     	mov	w2, wzr
     5b8: 2a1f03e3     	mov	w3, wzr
     5bc: 94000000     	bl	0x5bc <edge_long_press_up+0x228>
		00000000000005bc:  R_AARCH64_CALL26	input_event
     5c0: f9400308     	ldr	x8, [x24]
		00000000000005c0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     5c4: 91324100     	add	x0, x8, #0xc90
     5c8: 94000000     	bl	0x5c8 <edge_long_press_up+0x234>
		00000000000005c8:  R_AARCH64_CALL26	mutex_unlock
     5cc: 294012e3     	ldp	w3, w4, [x23]
     5d0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f52
     5d4: 91000000     	add	x0, x0, #0x0
		00000000000005d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f52
     5d8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f5a
     5dc: 91000021     	add	x1, x1, #0x0
		00000000000005dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f5a
     5e0: 2a1303e2     	mov	w2, w19
     5e4: 390152ff     	strb	wzr, [x23, #0x54]
     5e8: 94000000     	bl	0x5e8 <edge_long_press_up+0x254>
		00000000000005e8:  R_AARCH64_CALL26	_printk
     5ec: 17ffff7b     	b	0x3d8 <edge_long_press_up+0x44>
     5f0: d4210000     	brk	#0x800
