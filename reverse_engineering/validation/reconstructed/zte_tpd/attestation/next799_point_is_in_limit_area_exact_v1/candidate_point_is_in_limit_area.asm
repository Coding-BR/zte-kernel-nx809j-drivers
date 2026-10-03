
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000251d0 <point_is_in_limit_area>:
   251d0: 90000008     	adrp	x8, 0x25000 <tpd_id2_report_work+0x1c>
		00000000000251d0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   251d4: 12003c2a     	and	w10, w1, #0xffff
   251d8: f9400109     	ldr	x9, [x8]
		00000000000251d8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   251dc: b940112c     	ldr	w12, [x9, #0x10]
   251e0: 321f0188     	orr	w8, w12, #0x2
   251e4: 71000d1f     	cmp	w8, #0x3
   251e8: 12003c08     	and	w8, w0, #0xffff
   251ec: 540000c1     	b.ne	0x25204 <point_is_in_limit_area+0x34>
   251f0: 39409d2b     	ldrb	w11, [x9, #0x27]
   251f4: 6b08017f     	cmp	w11, w8
   251f8: 54000109     	b.ls	0x25218 <point_is_in_limit_area+0x48>
   251fc: 52800020     	mov	w0, #0x1                // =1
   25200: d65f03c0     	ret
   25204: 39409d2b     	ldrb	w11, [x9, #0x27]
   25208: 6b08017f     	cmp	w11, w8
   2520c: 54000149     	b.ls	0x25234 <point_is_in_limit_area+0x64>
   25210: 52800020     	mov	w0, #0x1                // =1
   25214: d65f03c0     	ret
   25218: 79488528     	ldrh	w8, [x9, #0x442]
   2521c: 3940a12b     	ldrb	w11, [x9, #0x28]
   25220: 4b0b0108     	sub	w8, w8, w11
   25224: 6b20211f     	cmp	w8, w0, uxth
   25228: 5400014a     	b.ge	0x25250 <point_is_in_limit_area+0x80>
   2522c: 52800020     	mov	w0, #0x1                // =1
   25230: d65f03c0     	ret
   25234: 7948852b     	ldrh	w11, [x9, #0x442]
   25238: 3940a12d     	ldrb	w13, [x9, #0x28]
   2523c: 4b0d016d     	sub	w13, w11, w13
   25240: 6b0801bf     	cmp	w13, w8
   25244: 5400010a     	b.ge	0x25264 <point_is_in_limit_area+0x94>
   25248: 52800020     	mov	w0, #0x1                // =1
   2524c: d65f03c0     	ret
   25250: 3940a528     	ldrb	w8, [x9, #0x29]
   25254: 6b0a011f     	cmp	w8, w10
   25258: 54000229     	b.ls	0x2529c <point_is_in_limit_area+0xcc>
   2525c: 52800020     	mov	w0, #0x1                // =1
   25260: d65f03c0     	ret
   25264: 340002ec     	cbz	w12, 0x252c0 <point_is_in_limit_area+0xf0>
   25268: 3940e12c     	ldrb	w12, [x9, #0x38]
   2526c: 3400026c     	cbz	w12, 0x252b8 <point_is_in_limit_area+0xe8>
   25270: 79405d2c     	ldrh	w12, [x9, #0x2e]
   25274: 6b0a019f     	cmp	w12, w10
   25278: 54000202     	b.hs	0x252b8 <point_is_in_limit_area+0xe8>
   2527c: 79405929     	ldrh	w9, [x9, #0x2c]
   25280: 52800020     	mov	w0, #0x1                // =1
   25284: 6b08013f     	cmp	w9, w8
   25288: 540001a8     	b.hi	0x252bc <point_is_in_limit_area+0xec>
   2528c: 4b090169     	sub	w9, w11, w9
   25290: 6b08013f     	cmp	w9, w8
   25294: 5400012a     	b.ge	0x252b8 <point_is_in_limit_area+0xe8>
   25298: 14000009     	b	0x252bc <point_is_in_limit_area+0xec>
   2529c: 79488928     	ldrh	w8, [x9, #0x444]
   252a0: 3940a929     	ldrb	w9, [x9, #0x2a]
   252a4: 4b090108     	sub	w8, w8, w9
   252a8: 6b21211f     	cmp	w8, w1, uxth
   252ac: 5400006a     	b.ge	0x252b8 <point_is_in_limit_area+0xe8>
   252b0: 52800020     	mov	w0, #0x1                // =1
   252b4: d65f03c0     	ret
   252b8: 2a1f03e0     	mov	w0, wzr
   252bc: d65f03c0     	ret
   252c0: 3940d12c     	ldrb	w12, [x9, #0x34]
   252c4: 0b0c058c     	add	w12, w12, w12, lsl #1
   252c8: 6b4c051f     	cmp	w8, w12, lsr #1
   252cc: 540000c3     	b.lo	0x252e4 <point_is_in_limit_area+0x114>
   252d0: 3940d52c     	ldrb	w12, [x9, #0x35]
   252d4: 0b0c058c     	add	w12, w12, w12, lsl #1
   252d8: 4b4c056c     	sub	w12, w11, w12, lsr #1
   252dc: 6b08019f     	cmp	w12, w8
   252e0: 54fffc4a     	b.ge	0x25268 <point_is_in_limit_area+0x98>
   252e4: 9000000c     	adrp	x12, 0x25000 <tpd_id2_report_work+0x1c>
		00000000000252e4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x53
   252e8: 3940018c     	ldrb	w12, [x12]
		00000000000252e8:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x53
   252ec: 370003ac     	tbnz	w12, #0x0, 0x25360 <point_is_in_limit_area+0x190>
   252f0: 9000000c     	adrp	x12, 0x25000 <tpd_id2_report_work+0x1c>
		00000000000252f0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0xdb
   252f4: 3940018c     	ldrb	w12, [x12]
		00000000000252f4:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0xdb
   252f8: 3700034c     	tbnz	w12, #0x0, 0x25360 <point_is_in_limit_area+0x190>
   252fc: 9000000c     	adrp	x12, 0x25000 <tpd_id2_report_work+0x1c>
		00000000000252fc:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x163
   25300: 3940018c     	ldrb	w12, [x12]
		0000000000025300:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x163
   25304: 370002ec     	tbnz	w12, #0x0, 0x25360 <point_is_in_limit_area+0x190>
   25308: 9000000c     	adrp	x12, 0x25000 <tpd_id2_report_work+0x1c>
		0000000000025308:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x1eb
   2530c: 3940018c     	ldrb	w12, [x12]
		000000000002530c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x1eb
   25310: 3700028c     	tbnz	w12, #0x0, 0x25360 <point_is_in_limit_area+0x190>
   25314: 9000000c     	adrp	x12, 0x25000 <tpd_id2_report_work+0x1c>
		0000000000025314:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x273
   25318: 3940018c     	ldrb	w12, [x12]
		0000000000025318:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x273
   2531c: 3700022c     	tbnz	w12, #0x0, 0x25360 <point_is_in_limit_area+0x190>
   25320: 9000000c     	adrp	x12, 0x25000 <tpd_id2_report_work+0x1c>
		0000000000025320:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x2fb
   25324: 3940018c     	ldrb	w12, [x12]
		0000000000025324:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x2fb
   25328: 370001cc     	tbnz	w12, #0x0, 0x25360 <point_is_in_limit_area+0x190>
   2532c: 9000000c     	adrp	x12, 0x25000 <tpd_id2_report_work+0x1c>
		000000000002532c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x383
   25330: 3940018c     	ldrb	w12, [x12]
		0000000000025330:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x383
   25334: 3700016c     	tbnz	w12, #0x0, 0x25360 <point_is_in_limit_area+0x190>
   25338: 9000000c     	adrp	x12, 0x25000 <tpd_id2_report_work+0x1c>
		0000000000025338:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x40b
   2533c: 3940018c     	ldrb	w12, [x12]
		000000000002533c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x40b
   25340: 3700010c     	tbnz	w12, #0x0, 0x25360 <point_is_in_limit_area+0x190>
   25344: 9000000c     	adrp	x12, 0x25000 <tpd_id2_report_work+0x1c>
		0000000000025344:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x493
   25348: 3940018c     	ldrb	w12, [x12]
		0000000000025348:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x493
   2534c: 370000ac     	tbnz	w12, #0x0, 0x25360 <point_is_in_limit_area+0x190>
   25350: 9000000c     	adrp	x12, 0x25000 <tpd_id2_report_work+0x1c>
		0000000000025350:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x51b
   25354: 3940018c     	ldrb	w12, [x12]
		0000000000025354:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x51b
   25358: 7100059f     	cmp	w12, #0x1
   2535c: 54fff861     	b.ne	0x25268 <point_is_in_limit_area+0x98>
   25360: d503233f     	paciasp
   25364: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   25368: 910003fd     	mov	x29, sp
   2536c: 90000000     	adrp	x0, 0x25000 <tpd_id2_report_work+0x1c>
		000000000002536c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a4e
   25370: 91000000     	add	x0, x0, #0x0
		0000000000025370:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a4e
   25374: 12003c22     	and	w2, w1, #0xffff
   25378: 2a0803e1     	mov	w1, w8
   2537c: 94000000     	bl	0x2537c <point_is_in_limit_area+0x1ac>
		000000000002537c:  R_AARCH64_CALL26	_printk
   25380: 52800020     	mov	w0, #0x1                // =1
   25384: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   25388: d50323bf     	autiasp
   2538c: d65f03c0     	ret
