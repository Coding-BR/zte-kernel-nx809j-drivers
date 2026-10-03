
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002512c <edge_long_press_up>:
   2512c: d503233f     	paciasp
   25130: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   25134: f9000bf9     	str	x25, [sp, #0x10]
   25138: a9025ff8     	stp	x24, x23, [sp, #0x20]
   2513c: a90357f6     	stp	x22, x21, [sp, #0x30]
   25140: a9044ff4     	stp	x20, x19, [sp, #0x40]
   25144: 910003fd     	mov	x29, sp
   25148: 12003c28     	and	w8, w1, #0xffff
   2514c: 7100251f     	cmp	w8, #0x9
   25150: 54001248     	b.hi	0x25398 <edge_long_press_up+0x26c>
   25154: 2a0103f4     	mov	w20, w1
   25158: 92403e88     	and	x8, x20, #0xffff
   2515c: 8b213108     	add	x8, x8, w1, uxth #4
   25160: d37df118     	lsl	x24, x8, #3
   25164: 90000008     	adrp	x8, 0x25000 <point_is_in_limit_area+0x94>
		0000000000025164:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info
   25168: 91000108     	add	x8, x8, #0x0
		0000000000025168:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info
   2516c: 8b180117     	add	x23, x8, x24
   25170: 394152e8     	ldrb	w8, [x23, #0x54]
   25174: 35000108     	cbnz	w8, 0x25194 <edge_long_press_up+0x68>
   25178: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   2517c: f9400bf9     	ldr	x25, [sp, #0x10]
   25180: a94357f6     	ldp	x22, x21, [sp, #0x30]
   25184: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   25188: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   2518c: d50323bf     	autiasp
   25190: d65f03c0     	ret
   25194: 90000008     	adrp	x8, 0x25000 <point_is_in_limit_area+0x94>
		0000000000025194:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25198: aa0003f6     	mov	x22, x0
   2519c: f9400119     	ldr	x25, [x8]
		000000000002519c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   251a0: 91324320     	add	x0, x25, #0xc90
   251a4: 94000000     	bl	0x251a4 <edge_long_press_up+0x78>
		00000000000251a4:  R_AARCH64_CALL26	mutex_lock
   251a8: 12003e93     	and	w19, w20, #0xffff
   251ac: aa1603e0     	mov	x0, x22
   251b0: 52800061     	mov	w1, #0x3                // =3
   251b4: 528005e2     	mov	w2, #0x2f               // =47
   251b8: 2a1303e3     	mov	w3, w19
   251bc: 94000000     	bl	0x251bc <edge_long_press_up+0x90>
		00000000000251bc:  R_AARCH64_CALL26	input_event
   251c0: aa1603e0     	mov	x0, x22
   251c4: 2a1f03e1     	mov	w1, wzr
   251c8: 2a1f03e2     	mov	w2, wzr
   251cc: aa1603f5     	mov	x21, x22
   251d0: 94000000     	bl	0x251d0 <edge_long_press_up+0xa4>
		00000000000251d0:  R_AARCH64_CALL26	input_mt_report_slot_state
   251d4: 35000293     	cbnz	w19, 0x25224 <edge_long_press_up+0xf8>
   251d8: 90000008     	adrp	x8, 0x25000 <point_is_in_limit_area+0x94>
		00000000000251d8:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0xdb
   251dc: 39400108     	ldrb	w8, [x8]
		00000000000251dc:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0xdb
   251e0: 37000b68     	tbnz	w8, #0x0, 0x2534c <edge_long_press_up+0x220>
   251e4: 90000008     	adrp	x8, 0x25000 <point_is_in_limit_area+0x94>
		00000000000251e4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0xdc
   251e8: 39400108     	ldrb	w8, [x8]
		00000000000251e8:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0xdc
   251ec: 37000b08     	tbnz	w8, #0x0, 0x2534c <edge_long_press_up+0x220>
   251f0: 12003e88     	and	w8, w20, #0xffff
   251f4: 7100091f     	cmp	w8, #0x2
   251f8: 54000281     	b.ne	0x25248 <edge_long_press_up+0x11c>
   251fc: 90000008     	adrp	x8, 0x25000 <point_is_in_limit_area+0x94>
		00000000000251fc:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x1eb
   25200: 39400108     	ldrb	w8, [x8]
		0000000000025200:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x1eb
   25204: 37000a48     	tbnz	w8, #0x0, 0x2534c <edge_long_press_up+0x220>
   25208: 90000008     	adrp	x8, 0x25000 <point_is_in_limit_area+0x94>
		0000000000025208:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x1ec
   2520c: 39400108     	ldrb	w8, [x8]
		000000000002520c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x1ec
   25210: 370009e8     	tbnz	w8, #0x0, 0x2534c <edge_long_press_up+0x220>
   25214: 12003e88     	and	w8, w20, #0xffff
   25218: 7100111f     	cmp	w8, #0x4
   2521c: 54000281     	b.ne	0x2526c <edge_long_press_up+0x140>
   25220: 1400001c     	b	0x25290 <edge_long_press_up+0x164>
   25224: 90000008     	adrp	x8, 0x25000 <point_is_in_limit_area+0x94>
		0000000000025224:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x53
   25228: 39400108     	ldrb	w8, [x8]
		0000000000025228:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x53
   2522c: 37000908     	tbnz	w8, #0x0, 0x2534c <edge_long_press_up+0x220>
   25230: 90000008     	adrp	x8, 0x25000 <point_is_in_limit_area+0x94>
		0000000000025230:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x54
   25234: 39400108     	ldrb	w8, [x8]
		0000000000025234:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x54
   25238: 370008a8     	tbnz	w8, #0x0, 0x2534c <edge_long_press_up+0x220>
   2523c: 12003e88     	and	w8, w20, #0xffff
   25240: 7100051f     	cmp	w8, #0x1
   25244: 54fffca1     	b.ne	0x251d8 <edge_long_press_up+0xac>
   25248: 90000008     	adrp	x8, 0x25000 <point_is_in_limit_area+0x94>
		0000000000025248:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x163
   2524c: 39400108     	ldrb	w8, [x8]
		000000000002524c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x163
   25250: 370007e8     	tbnz	w8, #0x0, 0x2534c <edge_long_press_up+0x220>
   25254: 90000008     	adrp	x8, 0x25000 <point_is_in_limit_area+0x94>
		0000000000025254:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x164
   25258: 39400108     	ldrb	w8, [x8]
		0000000000025258:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x164
   2525c: 37000788     	tbnz	w8, #0x0, 0x2534c <edge_long_press_up+0x220>
   25260: 12003e88     	and	w8, w20, #0xffff
   25264: 71000d1f     	cmp	w8, #0x3
   25268: 54fffca1     	b.ne	0x251fc <edge_long_press_up+0xd0>
   2526c: 90000008     	adrp	x8, 0x25000 <point_is_in_limit_area+0x94>
		000000000002526c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x273
   25270: 39400108     	ldrb	w8, [x8]
		0000000000025270:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x273
   25274: 370006c8     	tbnz	w8, #0x0, 0x2534c <edge_long_press_up+0x220>
   25278: 90000008     	adrp	x8, 0x25000 <point_is_in_limit_area+0x94>
		0000000000025278:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x274
   2527c: 39400108     	ldrb	w8, [x8]
		000000000002527c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x274
   25280: 37000668     	tbnz	w8, #0x0, 0x2534c <edge_long_press_up+0x220>
   25284: 12003e88     	and	w8, w20, #0xffff
   25288: 7100151f     	cmp	w8, #0x5
   2528c: 54000140     	b.eq	0x252b4 <edge_long_press_up+0x188>
   25290: 90000008     	adrp	x8, 0x25000 <point_is_in_limit_area+0x94>
		0000000000025290:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x2fb
   25294: 39400108     	ldrb	w8, [x8]
		0000000000025294:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x2fb
   25298: 370005a8     	tbnz	w8, #0x0, 0x2534c <edge_long_press_up+0x220>
   2529c: 90000008     	adrp	x8, 0x25000 <point_is_in_limit_area+0x94>
		000000000002529c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x2fc
   252a0: 39400108     	ldrb	w8, [x8]
		00000000000252a0:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x2fc
   252a4: 37000548     	tbnz	w8, #0x0, 0x2534c <edge_long_press_up+0x220>
   252a8: 12003e88     	and	w8, w20, #0xffff
   252ac: 7100191f     	cmp	w8, #0x6
   252b0: 54000140     	b.eq	0x252d8 <edge_long_press_up+0x1ac>
   252b4: 90000008     	adrp	x8, 0x25000 <point_is_in_limit_area+0x94>
		00000000000252b4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x383
   252b8: 39400108     	ldrb	w8, [x8]
		00000000000252b8:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x383
   252bc: 37000488     	tbnz	w8, #0x0, 0x2534c <edge_long_press_up+0x220>
   252c0: 90000008     	adrp	x8, 0x25000 <point_is_in_limit_area+0x94>
		00000000000252c0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x384
   252c4: 39400108     	ldrb	w8, [x8]
		00000000000252c4:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x384
   252c8: 37000428     	tbnz	w8, #0x0, 0x2534c <edge_long_press_up+0x220>
   252cc: 12003e88     	and	w8, w20, #0xffff
   252d0: 71001d1f     	cmp	w8, #0x7
   252d4: 54000140     	b.eq	0x252fc <edge_long_press_up+0x1d0>
   252d8: 90000008     	adrp	x8, 0x25000 <point_is_in_limit_area+0x94>
		00000000000252d8:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x40b
   252dc: 39400108     	ldrb	w8, [x8]
		00000000000252dc:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x40b
   252e0: 37000368     	tbnz	w8, #0x0, 0x2534c <edge_long_press_up+0x220>
   252e4: 90000008     	adrp	x8, 0x25000 <point_is_in_limit_area+0x94>
		00000000000252e4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x40c
   252e8: 39400108     	ldrb	w8, [x8]
		00000000000252e8:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x40c
   252ec: 37000308     	tbnz	w8, #0x0, 0x2534c <edge_long_press_up+0x220>
   252f0: 12003e88     	and	w8, w20, #0xffff
   252f4: 7100211f     	cmp	w8, #0x8
   252f8: 54000140     	b.eq	0x25320 <edge_long_press_up+0x1f4>
   252fc: 90000008     	adrp	x8, 0x25000 <point_is_in_limit_area+0x94>
		00000000000252fc:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x493
   25300: 39400108     	ldrb	w8, [x8]
		0000000000025300:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x493
   25304: 37000248     	tbnz	w8, #0x0, 0x2534c <edge_long_press_up+0x220>
   25308: 90000008     	adrp	x8, 0x25000 <point_is_in_limit_area+0x94>
		0000000000025308:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x494
   2530c: 39400108     	ldrb	w8, [x8]
		000000000002530c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x494
   25310: 370001e8     	tbnz	w8, #0x0, 0x2534c <edge_long_press_up+0x220>
   25314: 12003e88     	and	w8, w20, #0xffff
   25318: 7100251f     	cmp	w8, #0x9
   2531c: 540000e0     	b.eq	0x25338 <edge_long_press_up+0x20c>
   25320: 90000008     	adrp	x8, 0x25000 <point_is_in_limit_area+0x94>
		0000000000025320:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x51b
   25324: 39400108     	ldrb	w8, [x8]
		0000000000025324:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x51b
   25328: 37000128     	tbnz	w8, #0x0, 0x2534c <edge_long_press_up+0x220>
   2532c: 90000008     	adrp	x8, 0x25000 <point_is_in_limit_area+0x94>
		000000000002532c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x51c
   25330: 39400108     	ldrb	w8, [x8]
		0000000000025330:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x51c
   25334: 370000c8     	tbnz	w8, #0x0, 0x2534c <edge_long_press_up+0x220>
   25338: aa1503e0     	mov	x0, x21
   2533c: 52800021     	mov	w1, #0x1                // =1
   25340: 52802942     	mov	w2, #0x14a              // =330
   25344: 2a1f03e3     	mov	w3, wzr
   25348: 94000000     	bl	0x25348 <edge_long_press_up+0x21c>
		0000000000025348:  R_AARCH64_CALL26	input_event
   2534c: aa1503e0     	mov	x0, x21
   25350: 2a1f03e1     	mov	w1, wzr
   25354: 2a1f03e2     	mov	w2, wzr
   25358: 2a1f03e3     	mov	w3, wzr
   2535c: 94000000     	bl	0x2535c <edge_long_press_up+0x230>
		000000000002535c:  R_AARCH64_CALL26	input_event
   25360: 91324320     	add	x0, x25, #0xc90
   25364: 94000000     	bl	0x25364 <edge_long_press_up+0x238>
		0000000000025364:  R_AARCH64_CALL26	mutex_unlock
   25368: b27e0308     	orr	x8, x24, #0x4
   2536c: 390152ff     	strb	wzr, [x23, #0x54]
   25370: f115411f     	cmp	x8, #0x550
   25374: 54000128     	b.hi	0x25398 <edge_long_press_up+0x26c>
   25378: 294012e3     	ldp	w3, w4, [x23]
   2537c: 90000000     	adrp	x0, 0x25000 <point_is_in_limit_area+0x94>
		000000000002537c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a1b6
   25380: 91000000     	add	x0, x0, #0x0
		0000000000025380:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a1b6
   25384: 90000001     	adrp	x1, 0x25000 <point_is_in_limit_area+0x94>
		0000000000025384:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16c5c
   25388: 91000021     	add	x1, x1, #0x0
		0000000000025388:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16c5c
   2538c: 2a1303e2     	mov	w2, w19
   25390: 94000000     	bl	0x25390 <edge_long_press_up+0x264>
		0000000000025390:  R_AARCH64_CALL26	_printk
   25394: 17ffff79     	b	0x25178 <edge_long_press_up+0x4c>
   25398: d4200020     	brk	#0x1
