
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025224 <change_tp_state>:
   25224: d503233f     	paciasp
   25228: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   2522c: a90157f6     	stp	x22, x21, [sp, #0x10]
   25230: a9024ff4     	stp	x20, x19, [sp, #0x20]
   25234: 910003fd     	mov	x29, sp
   25238: 90000015     	adrp	x21, 0x25000 <edge_long_press_up+0x50>
		0000000000025238:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   2523c: 2a0003f3     	mov	w19, w0
   25240: f94002b4     	ldr	x20, [x21]
		0000000000025240:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25244: 91330280     	add	x0, x20, #0xcc0
   25248: 94000000     	bl	0x25248 <change_tp_state+0x24>
		0000000000025248:  R_AARCH64_CALL26	mutex_lock
   2524c: 90000016     	adrp	x22, 0x25000 <edge_long_press_up+0x50>
		000000000002524c:  R_AARCH64_ADR_PREL_PG_HI21	current_lcd_state
   25250: 71000e7f     	cmp	w19, #0x3
   25254: b94002c8     	ldr	w8, [x22]
		0000000000025254:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
   25258: 54000a08     	b.hi	0x25398 <change_tp_state+0x174>
   2525c: 71000d1f     	cmp	w8, #0x3
   25260: 540009c2     	b.hs	0x25398 <change_tp_state+0x174>
   25264: 90000009     	adrp	x9, 0x25000 <edge_long_press_up+0x50>
		0000000000025264:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x65e8
   25268: 91000129     	add	x9, x9, #0x0
		0000000000025268:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x65e8
   2526c: 9000000a     	adrp	x10, 0x25000 <edge_long_press_up+0x50>
		000000000002526c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x65d0
   25270: 9100014a     	add	x10, x10, #0x0
		0000000000025270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x65d0
   25274: f8735922     	ldr	x2, [x9, w19, uxtw #3]
   25278: 90000000     	adrp	x0, 0x25000 <edge_long_press_up+0x50>
		0000000000025278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dbb4
   2527c: 91000000     	add	x0, x0, #0x0
		000000000002527c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dbb4
   25280: f8685941     	ldr	x1, [x10, w8, uxtw #3]
   25284: 94000000     	bl	0x25284 <change_tp_state+0x60>
		0000000000025284:  R_AARCH64_CALL26	_printk
   25288: b94002c8     	ldr	w8, [x22]
		0000000000025288:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
   2528c: 7100091f     	cmp	w8, #0x2
   25290: 54000120     	b.eq	0x252b4 <change_tp_state+0x90>
   25294: 7100051f     	cmp	w8, #0x1
   25298: 54000280     	b.eq	0x252e8 <change_tp_state+0xc4>
   2529c: 35000668     	cbnz	w8, 0x25368 <change_tp_state+0x144>
   252a0: 71000e7f     	cmp	w19, #0x3
   252a4: 54000120     	b.eq	0x252c8 <change_tp_state+0xa4>
   252a8: 7100067f     	cmp	w19, #0x1
   252ac: 54000380     	b.eq	0x2531c <change_tp_state+0xf8>
   252b0: 1400002b     	b	0x2535c <change_tp_state+0x138>
   252b4: 34000473     	cbz	w19, 0x25340 <change_tp_state+0x11c>
   252b8: 71000a7f     	cmp	w19, #0x2
   252bc: 540001e0     	b.eq	0x252f8 <change_tp_state+0xd4>
   252c0: 71000e7f     	cmp	w19, #0x3
   252c4: 540004c1     	b.ne	0x2535c <change_tp_state+0x138>
   252c8: 52800028     	mov	w8, #0x1                // =1
   252cc: 90000009     	adrp	x9, 0x25000 <edge_long_press_up+0x50>
		00000000000252cc:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
   252d0: 91000129     	add	x9, x9, #0x0
		00000000000252d0:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x8
   252d4: b90002c8     	str	w8, [x22]
		00000000000252d4:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
   252d8: f94002a8     	ldr	x8, [x21]
		00000000000252d8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   252dc: b900013f     	str	wzr, [x9]
   252e0: b900793f     	str	wzr, [x9, #0x78]
   252e4: 14000013     	b	0x25330 <change_tp_state+0x10c>
   252e8: 7100067f     	cmp	w19, #0x1
   252ec: 54000180     	b.eq	0x2531c <change_tp_state+0xf8>
   252f0: 71000a7f     	cmp	w19, #0x2
   252f4: 54000341     	b.ne	0x2535c <change_tp_state+0x138>
   252f8: b90002df     	str	wzr, [x22]
		00000000000252f8:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
   252fc: 52800400     	mov	w0, #0x20               // =32
   25300: f94002a8     	ldr	x8, [x21]
		0000000000025300:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25304: f9425901     	ldr	x1, [x8, #0x4b0]
   25308: 91270102     	add	x2, x8, #0x9c0
   2530c: 94000000     	bl	0x2530c <change_tp_state+0xe8>
		000000000002530c:  R_AARCH64_CALL26	queue_work_on
   25310: 90000008     	adrp	x8, 0x25000 <edge_long_press_up+0x50>
		0000000000025310:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
   25314: b900011f     	str	wzr, [x8]
		0000000000025314:  R_AARCH64_LDST32_ABS_LO12_NC	ufp_tp_ops+0x8
   25318: 1400000a     	b	0x25340 <change_tp_state+0x11c>
   2531c: 52800048     	mov	w8, #0x2                // =2
   25320: 90000009     	adrp	x9, 0x25000 <edge_long_press_up+0x50>
		0000000000025320:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
   25324: b90002c8     	str	w8, [x22]
		0000000000025324:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
   25328: f94002a8     	ldr	x8, [x21]
		0000000000025328:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   2532c: b900013f     	str	wzr, [x9]
		000000000002532c:  R_AARCH64_LDST32_ABS_LO12_NC	ufp_tp_ops+0x8
   25330: f9425901     	ldr	x1, [x8, #0x4b0]
   25334: 91268102     	add	x2, x8, #0x9a0
   25338: 52800400     	mov	w0, #0x20               // =32
   2533c: 94000000     	bl	0x2533c <change_tp_state+0x118>
		000000000002533c:  R_AARCH64_CALL26	queue_work_on
   25340: 91330280     	add	x0, x20, #0xcc0
   25344: 94000000     	bl	0x25344 <change_tp_state+0x120>
		0000000000025344:  R_AARCH64_CALL26	mutex_unlock
   25348: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   2534c: a94157f6     	ldp	x22, x21, [sp, #0x10]
   25350: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   25354: d50323bf     	autiasp
   25358: d65f03c0     	ret
   2535c: 90000000     	adrp	x0, 0x25000 <edge_long_press_up+0x50>
		000000000002535c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19b54
   25360: 91000000     	add	x0, x0, #0x0
		0000000000025360:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19b54
   25364: 1400000b     	b	0x25390 <change_tp_state+0x16c>
   25368: b90002df     	str	wzr, [x22]
		0000000000025368:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
   2536c: 52800400     	mov	w0, #0x20               // =32
   25370: f94002a8     	ldr	x8, [x21]
		0000000000025370:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25374: f9425901     	ldr	x1, [x8, #0x4b0]
   25378: 91270102     	add	x2, x8, #0x9c0
   2537c: 94000000     	bl	0x2537c <change_tp_state+0x158>
		000000000002537c:  R_AARCH64_CALL26	queue_work_on
   25380: 90000008     	adrp	x8, 0x25000 <edge_long_press_up+0x50>
		0000000000025380:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
   25384: 90000000     	adrp	x0, 0x25000 <edge_long_press_up+0x50>
		0000000000025384:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13192
   25388: 91000000     	add	x0, x0, #0x0
		0000000000025388:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13192
   2538c: b900011f     	str	wzr, [x8]
		000000000002538c:  R_AARCH64_LDST32_ABS_LO12_NC	ufp_tp_ops+0x8
   25390: 94000000     	bl	0x25390 <change_tp_state+0x16c>
		0000000000025390:  R_AARCH64_CALL26	_printk
   25394: 17ffffeb     	b	0x25340 <change_tp_state+0x11c>
   25398: d42aa240     	brk	#0x5512
