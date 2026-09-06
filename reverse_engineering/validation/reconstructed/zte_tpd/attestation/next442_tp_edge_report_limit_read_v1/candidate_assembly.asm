
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025070 <tp_edge_report_limit_read>:
   25070: d503233f     	paciasp
   25074: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   25078: f9000bf9     	str	x25, [sp, #0x10]
   2507c: a9025ff8     	stp	x24, x23, [sp, #0x20]
   25080: a90357f6     	stp	x22, x21, [sp, #0x30]
   25084: a9044ff4     	stp	x20, x19, [sp, #0x40]
   25088: 910003fd     	mov	x29, sp
   2508c: f9400068     	ldr	x8, [x3]
   25090: b4000068     	cbz	x8, 0x2509c <tp_edge_report_limit_read+0x2c>
   25094: aa1f03e0     	mov	x0, xzr
   25098: 1400012c     	b	0x25548 <tp_edge_report_limit_read+0x4d8>
   2509c: 90000008     	adrp	x8, 0x25000 <zte_touch_shutdown+0xa0>
		000000000002509c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   250a0: aa0103f5     	mov	x21, x1
   250a4: aa0203f4     	mov	x20, x2
   250a8: f9400117     	ldr	x23, [x8]
		00000000000250a8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   250ac: aa0303f3     	mov	x19, x3
   250b0: d503201f     	nop
   250b4: 90000008     	adrp	x8, 0x25000 <zte_touch_shutdown+0xa0>
		00000000000250b4:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   250b8: 5281b801     	mov	w1, #0xdc0              // =3520
   250bc: 52820002     	mov	w2, #0x1000             // =4096
   250c0: f9400100     	ldr	x0, [x8]
		00000000000250c0:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   250c4: 94000000     	bl	0x250c4 <tp_edge_report_limit_read+0x54>
		00000000000250c4:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   250c8: aa0003f6     	mov	x22, x0
   250cc: b4002676     	cbz	x22, 0x25598 <tp_edge_report_limit_read+0x528>
   250d0: 90000001     	adrp	x1, 0x25000 <zte_touch_shutdown+0xa0>
		00000000000250d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ae1
   250d4: 91000021     	add	x1, x1, #0x0
		00000000000250d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ae1
   250d8: 90000002     	adrp	x2, 0x25000 <zte_touch_shutdown+0xa0>
		00000000000250d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b12
   250dc: 91000042     	add	x2, x2, #0x0
		00000000000250dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b12
   250e0: a9411423     	ldp	x3, x5, [x1, #0x10]
   250e4: 90000004     	adrp	x4, 0x25000 <zte_touch_shutdown+0xa0>
		00000000000250e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x71b5
   250e8: 91000084     	add	x4, x4, #0x0
		00000000000250e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x71b5
   250ec: 9000000c     	adrp	x12, 0x25000 <zte_touch_shutdown+0xa0>
		00000000000250ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6665
   250f0: 9100018c     	add	x12, x12, #0x0
		00000000000250f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6665
   250f4: 90000000     	adrp	x0, 0x25000 <zte_touch_shutdown+0xa0>
		00000000000250f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a48
   250f8: 91000000     	add	x0, x0, #0x0
		00000000000250f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a48
   250fc: a90616c3     	stp	x3, x5, [x22, #0x60]
   25100: a9420c26     	ldp	x6, x3, [x1, #0x20]
   25104: a9400425     	ldp	x5, x1, [x1]
   25108: f9400010     	ldr	x16, [x0]
   2510c: a941a18a     	ldp	x10, x8, [x12, #0x18]
   25110: 5280014e     	mov	w14, #0xa               // =10
   25114: a9070ec6     	stp	x6, x3, [x22, #0x70]
   25118: a940a58b     	ldp	x11, x9, [x12, #0x8]
   2511c: a90506c5     	stp	x5, x1, [x22, #0x50]
   25120: a9428c41     	ldp	x1, x3, [x2, #0x28]
   25124: a940bc0d     	ldp	x13, x15, [x0, #0x8]
   25128: f940018c     	ldr	x12, [x12]
   2512c: a9418011     	ldp	x17, x0, [x0, #0x18]
   25130: a901a2ca     	stp	x10, x8, [x22, #0x18]
   25134: a90a8ec1     	stp	x1, x3, [x22, #0xa8]
   25138: a9400445     	ldp	x5, x1, [x2]
   2513c: a9419843     	ldp	x3, x6, [x2, #0x18]
   25140: 5281b198     	mov	w24, #0xd8c             // =3468
   25144: a900a6cb     	stp	x11, x9, [x22, #0x8]
   25148: a90806c5     	stp	x5, x1, [x22, #0x80]
   2514c: f9400841     	ldr	x1, [x2, #0x10]
   25150: a9099ac3     	stp	x3, x6, [x22, #0x98]
   25154: f9004ac1     	str	x1, [x22, #0x90]
   25158: a9408881     	ldp	x1, x2, [x4, #0x8]
   2515c: f90002cc     	str	x12, [x22]
   25160: 39013ece     	strb	w14, [x22, #0x4f]
   25164: f80c72c2     	stur	x2, [x22, #0xc7]
   25168: f9400082     	ldr	x2, [x4]
   2516c: f80bf2c1     	stur	x1, [x22, #0xbf]
   25170: f80b72c2     	stur	x2, [x22, #0xb7]
   25174: a9428482     	ldp	x2, x1, [x4, #0x28]
   25178: f802f2cd     	stur	x13, [x22, #0x2f]
   2517c: f80372cf     	stur	x15, [x22, #0x37]
   25180: f80e72c1     	stur	x1, [x22, #0xe7]
   25184: a9418483     	ldp	x3, x1, [x4, #0x18]
   25188: 90000004     	adrp	x4, 0x25000 <zte_touch_shutdown+0xa0>
		0000000000025188:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x371a
   2518c: 91000084     	add	x4, x4, #0x0
		000000000002518c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x371a
   25190: f80df2c2     	stur	x2, [x22, #0xdf]
   25194: f803f2d1     	stur	x17, [x22, #0x3f]
   25198: f80d72c1     	stur	x1, [x22, #0xd7]
   2519c: a9408482     	ldp	x2, x1, [x4, #0x8]
   251a0: f80cf2c3     	stur	x3, [x22, #0xcf]
   251a4: f9400083     	ldr	x3, [x4]
   251a8: f80472c0     	stur	x0, [x22, #0x47]
   251ac: f80ff2c1     	stur	x1, [x22, #0xff]
   251b0: aa1603e1     	mov	x1, x22
   251b4: f80f72c2     	stur	x2, [x22, #0xf7]
   251b8: f842d082     	ldur	x2, [x4, #0x2d]
   251bc: f80efc23     	str	x3, [x1, #0xef]!
   251c0: f9401483     	ldr	x3, [x4, #0x28]
   251c4: a9419085     	ldp	x5, x4, [x4, #0x18]
   251c8: f802d022     	stur	x2, [x1, #0x2d]
   251cc: 90000002     	adrp	x2, 0x25000 <zte_touch_shutdown+0xa0>
		00000000000251cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20cd
   251d0: 91000042     	add	x2, x2, #0x0
		00000000000251d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20cd
   251d4: f80272d0     	stur	x16, [x22, #0x27]
   251d8: 39088ece     	strb	w14, [x22, #0x223]
   251dc: a9020c24     	stp	x4, x3, [x1, #0x20]
   251e0: a9400c44     	ldp	x4, x3, [x2]
   251e4: f9000c25     	str	x5, [x1, #0x18]
   251e8: 528d2da1     	mov	w1, #0x696d             // =26989
   251ec: 910492c5     	add	x5, x22, #0x124
   251f0: 72a14e81     	movk	w1, #0xa74, lsl #16
   251f4: b9015ec1     	str	w1, [x22, #0x15c]
   251f8: a9000ca4     	stp	x4, x3, [x5]
   251fc: a9428443     	ldp	x3, x1, [x2, #0x28]
   25200: f9400844     	ldr	x4, [x2, #0x10]
   25204: a90284a3     	stp	x3, x1, [x5, #0x28]
   25208: a9418442     	ldp	x2, x1, [x2, #0x18]
   2520c: 90000003     	adrp	x3, 0x25000 <zte_touch_shutdown+0xa0>
		000000000002520c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x71ee
   25210: 91000063     	add	x3, x3, #0x0
		0000000000025210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x71ee
   25214: f90008a4     	str	x4, [x5, #0x10]
   25218: a90184a2     	stp	x2, x1, [x5, #0x18]
   2521c: a9410464     	ldp	x4, x1, [x3, #0x10]
   25220: a91706c4     	stp	x4, x1, [x22, #0x170]
   25224: a9400861     	ldp	x1, x2, [x3]
   25228: a9160ac1     	stp	x1, x2, [x22, #0x160]
   2522c: a9431062     	ldp	x2, x4, [x3, #0x30]
   25230: a9420463     	ldp	x3, x1, [x3, #0x20]
   25234: a91912c2     	stp	x2, x4, [x22, #0x190]
   25238: 90000002     	adrp	x2, 0x25000 <zte_touch_shutdown+0xa0>
		0000000000025238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44d1
   2523c: 91000042     	add	x2, x2, #0x0
		000000000002523c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44d1
   25240: a91806c3     	stp	x3, x1, [x22, #0x180]
   25244: a9400c44     	ldp	x4, x3, [x2]
   25248: 528e8d21     	mov	w1, #0x7469             // =29801
   2524c: 72a00141     	movk	w1, #0xa, lsl #16
   25250: b901dac1     	str	w1, [x22, #0x1d8]
   25254: a91a0ec4     	stp	x4, x3, [x22, #0x1a0]
   25258: a9428443     	ldp	x3, x1, [x2, #0x28]
   2525c: a91c86c3     	stp	x3, x1, [x22, #0x1c8]
   25260: f9400841     	ldr	x1, [x2, #0x10]
   25264: a9419042     	ldp	x2, x4, [x2, #0x18]
   25268: f900dac1     	str	x1, [x22, #0x1b0]
   2526c: 90000001     	adrp	x1, 0x25000 <zte_touch_shutdown+0xa0>
		000000000002526c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5e6b
   25270: 91000021     	add	x1, x1, #0x0
		0000000000025270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5e6b
   25274: a91b92c2     	stp	x2, x4, [x22, #0x1b8]
   25278: a9410823     	ldp	x3, x2, [x1, #0x10]
   2527c: 91076ec4     	add	x4, x22, #0x1db
   25280: a9010883     	stp	x3, x2, [x4, #0x10]
   25284: a9401422     	ldp	x2, x5, [x1]
   25288: a9001482     	stp	x2, x5, [x4]
   2528c: a9438c22     	ldp	x2, x3, [x1, #0x38]
   25290: a9038c82     	stp	x2, x3, [x4, #0x38]
   25294: f9401022     	ldr	x2, [x1, #0x20]
   25298: a9429421     	ldp	x1, x5, [x1, #0x28]
   2529c: f9001082     	str	x2, [x4, #0x20]
   252a0: 90000002     	adrp	x2, 0x25000 <zte_touch_shutdown+0xa0>
		00000000000252a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x450d
   252a4: 91000042     	add	x2, x2, #0x0
		00000000000252a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x450d
   252a8: a9029481     	stp	x1, x5, [x4, #0x28]
   252ac: 910892c1     	add	x1, x22, #0x224
   252b0: a901a02a     	stp	x10, x8, [x1, #0x18]
   252b4: 91092ec8     	add	x8, x22, #0x24b
   252b8: a900a42b     	stp	x11, x9, [x1, #0x8]
   252bc: f900002c     	str	x12, [x1]
   252c0: 5281b181     	mov	w1, #0xd8c              // =3468
   252c4: 7900510e     	strh	w14, [x8, #0x28]
   252c8: a901450f     	stp	x15, x17, [x8, #0x10]
   252cc: f9001100     	str	x0, [x8, #0x20]
   252d0: 9109d2c0     	add	x0, x22, #0x274
   252d4: a9003510     	stp	x16, x13, [x8]
   252d8: 39406ee3     	ldrb	w3, [x23, #0x1b]
   252dc: 94000000     	bl	0x252dc <tp_edge_report_limit_read+0x26c>
		00000000000252dc:  R_AARCH64_CALL26	snprintf
   252e0: 93407c08     	sxtw	x8, w0
   252e4: 394092e3     	ldrb	w3, [x23, #0x24]
   252e8: 90000002     	adrp	x2, 0x25000 <zte_touch_shutdown+0xa0>
		00000000000252e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a29
   252ec: 91000042     	add	x2, x2, #0x0
		00000000000252ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a29
   252f0: 9109d119     	add	x25, x8, #0x274
   252f4: cb080301     	sub	x1, x24, x8
   252f8: 8b1902c0     	add	x0, x22, x25
   252fc: 94000000     	bl	0x252fc <tp_edge_report_limit_read+0x28c>
		00000000000252fc:  R_AARCH64_CALL26	snprintf
   25300: 8b20c339     	add	x25, x25, w0, sxtw
   25304: 52820018     	mov	w24, #0x1000            // =4096
   25308: 79407ee3     	ldrh	w3, [x23, #0x3e]
   2530c: 90000002     	adrp	x2, 0x25000 <zte_touch_shutdown+0xa0>
		000000000002530c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa3c
   25310: 91000042     	add	x2, x2, #0x0
		0000000000025310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa3c
   25314: cb190301     	sub	x1, x24, x25
   25318: 8b1902c0     	add	x0, x22, x25
   2531c: 94000000     	bl	0x2531c <tp_edge_report_limit_read+0x2ac>
		000000000002531c:  R_AARCH64_CALL26	snprintf
   25320: 8b20c339     	add	x25, x25, w0, sxtw
   25324: 39409ae3     	ldrb	w3, [x23, #0x26]
   25328: 90000002     	adrp	x2, 0x25000 <zte_touch_shutdown+0xa0>
		0000000000025328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4119
   2532c: 91000042     	add	x2, x2, #0x0
		000000000002532c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4119
   25330: cb190301     	sub	x1, x24, x25
   25334: 8b1902c0     	add	x0, x22, x25
   25338: 94000000     	bl	0x25338 <tp_edge_report_limit_read+0x2c8>
		0000000000025338:  R_AARCH64_CALL26	snprintf
   2533c: 8b20c339     	add	x25, x25, w0, sxtw
   25340: 394096e3     	ldrb	w3, [x23, #0x25]
   25344: 90000002     	adrp	x2, 0x25000 <zte_touch_shutdown+0xa0>
		0000000000025344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e37
   25348: 91000042     	add	x2, x2, #0x0
		0000000000025348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e37
   2534c: cb190301     	sub	x1, x24, x25
   25350: 8b1902c0     	add	x0, x22, x25
   25354: 94000000     	bl	0x25354 <tp_edge_report_limit_read+0x2e4>
		0000000000025354:  R_AARCH64_CALL26	snprintf
   25358: 8b20c339     	add	x25, x25, w0, sxtw
   2535c: 79407ae3     	ldrh	w3, [x23, #0x3c]
   25360: 90000002     	adrp	x2, 0x25000 <zte_touch_shutdown+0xa0>
		0000000000025360:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b76
   25364: 91000042     	add	x2, x2, #0x0
		0000000000025364:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b76
   25368: cb190301     	sub	x1, x24, x25
   2536c: 8b1902c0     	add	x0, x22, x25
   25370: 94000000     	bl	0x25370 <tp_edge_report_limit_read+0x300>
		0000000000025370:  R_AARCH64_CALL26	snprintf
   25374: 8b20c339     	add	x25, x25, w0, sxtw
   25378: 3940e2e3     	ldrb	w3, [x23, #0x38]
   2537c: 90000002     	adrp	x2, 0x25000 <zte_touch_shutdown+0xa0>
		000000000002537c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1158
   25380: 91000042     	add	x2, x2, #0x0
		0000000000025380:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1158
   25384: cb190301     	sub	x1, x24, x25
   25388: 8b1902c0     	add	x0, x22, x25
   2538c: 94000000     	bl	0x2538c <tp_edge_report_limit_read+0x31c>
		000000000002538c:  R_AARCH64_CALL26	snprintf
   25390: 8b20c339     	add	x25, x25, w0, sxtw
   25394: 90000002     	adrp	x2, 0x25000 <zte_touch_shutdown+0xa0>
		0000000000025394:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2469
   25398: 91000042     	add	x2, x2, #0x0
		0000000000025398:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2469
   2539c: cb190301     	sub	x1, x24, x25
   253a0: 8b1902c0     	add	x0, x22, x25
   253a4: 94000000     	bl	0x253a4 <tp_edge_report_limit_read+0x334>
		00000000000253a4:  R_AARCH64_CALL26	snprintf
   253a8: 8b20c338     	add	x24, x25, w0, sxtw
   253ac: f13feb1f     	cmp	x24, #0xffa
   253b0: 540004e8     	b.hi	0x2544c <tp_edge_report_limit_read+0x3dc>
   253b4: 52820008     	mov	w8, #0x1000             // =4096
   253b8: 39409ee3     	ldrb	w3, [x23, #0x27]
   253bc: 90000002     	adrp	x2, 0x25000 <zte_touch_shutdown+0xa0>
		00000000000253bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x247c
   253c0: 91000042     	add	x2, x2, #0x0
		00000000000253c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x247c
   253c4: cb180101     	sub	x1, x8, x24
   253c8: 8b1802c0     	add	x0, x22, x24
   253cc: 94000000     	bl	0x253cc <tp_edge_report_limit_read+0x35c>
		00000000000253cc:  R_AARCH64_CALL26	snprintf
   253d0: 8b20c318     	add	x24, x24, w0, sxtw
   253d4: f13feb1f     	cmp	x24, #0xffa
   253d8: 540003a8     	b.hi	0x2544c <tp_edge_report_limit_read+0x3dc>
   253dc: 52820008     	mov	w8, #0x1000             // =4096
   253e0: 3940a2e3     	ldrb	w3, [x23, #0x28]
   253e4: 90000002     	adrp	x2, 0x25000 <zte_touch_shutdown+0xa0>
		00000000000253e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x247c
   253e8: 91000042     	add	x2, x2, #0x0
		00000000000253e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x247c
   253ec: cb180101     	sub	x1, x8, x24
   253f0: 8b1802c0     	add	x0, x22, x24
   253f4: 94000000     	bl	0x253f4 <tp_edge_report_limit_read+0x384>
		00000000000253f4:  R_AARCH64_CALL26	snprintf
   253f8: 8b20c318     	add	x24, x24, w0, sxtw
   253fc: f13feb1f     	cmp	x24, #0xffa
   25400: 54000268     	b.hi	0x2544c <tp_edge_report_limit_read+0x3dc>
   25404: 52820008     	mov	w8, #0x1000             // =4096
   25408: 3940a6e3     	ldrb	w3, [x23, #0x29]
   2540c: 90000002     	adrp	x2, 0x25000 <zte_touch_shutdown+0xa0>
		000000000002540c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x247c
   25410: 91000042     	add	x2, x2, #0x0
		0000000000025410:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x247c
   25414: cb180101     	sub	x1, x8, x24
   25418: 8b1802c0     	add	x0, x22, x24
   2541c: 94000000     	bl	0x2541c <tp_edge_report_limit_read+0x3ac>
		000000000002541c:  R_AARCH64_CALL26	snprintf
   25420: 8b20c318     	add	x24, x24, w0, sxtw
   25424: f13feb1f     	cmp	x24, #0xffa
   25428: 54000128     	b.hi	0x2544c <tp_edge_report_limit_read+0x3dc>
   2542c: 52820008     	mov	w8, #0x1000             // =4096
   25430: 3940aae3     	ldrb	w3, [x23, #0x2a]
   25434: 90000002     	adrp	x2, 0x25000 <zte_touch_shutdown+0xa0>
		0000000000025434:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x247c
   25438: 91000042     	add	x2, x2, #0x0
		0000000000025438:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x247c
   2543c: cb180101     	sub	x1, x8, x24
   25440: 8b1802c0     	add	x0, x22, x24
   25444: 94000000     	bl	0x25444 <tp_edge_report_limit_read+0x3d4>
		0000000000025444:  R_AARCH64_CALL26	snprintf
   25448: 8b20c318     	add	x24, x24, w0, sxtw
   2544c: 52820008     	mov	w8, #0x1000             // =4096
   25450: 90000002     	adrp	x2, 0x25000 <zte_touch_shutdown+0xa0>
		0000000000025450:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5373
   25454: 91000042     	add	x2, x2, #0x0
		0000000000025454:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5373
   25458: cb180101     	sub	x1, x8, x24
   2545c: 8b1802c0     	add	x0, x22, x24
   25460: 94000000     	bl	0x25460 <tp_edge_report_limit_read+0x3f0>
		0000000000025460:  R_AARCH64_CALL26	snprintf
   25464: 8b20c318     	add	x24, x24, w0, sxtw
   25468: f13feb1f     	cmp	x24, #0xffa
   2546c: 540004e8     	b.hi	0x25508 <tp_edge_report_limit_read+0x498>
   25470: 52820008     	mov	w8, #0x1000             // =4096
   25474: 3940d2e3     	ldrb	w3, [x23, #0x34]
   25478: 90000002     	adrp	x2, 0x25000 <zte_touch_shutdown+0xa0>
		0000000000025478:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x247c
   2547c: 91000042     	add	x2, x2, #0x0
		000000000002547c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x247c
   25480: cb180101     	sub	x1, x8, x24
   25484: 8b1802c0     	add	x0, x22, x24
   25488: 94000000     	bl	0x25488 <tp_edge_report_limit_read+0x418>
		0000000000025488:  R_AARCH64_CALL26	snprintf
   2548c: 8b20c318     	add	x24, x24, w0, sxtw
   25490: f13feb1f     	cmp	x24, #0xffa
   25494: 540003a8     	b.hi	0x25508 <tp_edge_report_limit_read+0x498>
   25498: 52820008     	mov	w8, #0x1000             // =4096
   2549c: 3940d6e3     	ldrb	w3, [x23, #0x35]
   254a0: 90000002     	adrp	x2, 0x25000 <zte_touch_shutdown+0xa0>
		00000000000254a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x247c
   254a4: 91000042     	add	x2, x2, #0x0
		00000000000254a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x247c
   254a8: cb180101     	sub	x1, x8, x24
   254ac: 8b1802c0     	add	x0, x22, x24
   254b0: 94000000     	bl	0x254b0 <tp_edge_report_limit_read+0x440>
		00000000000254b0:  R_AARCH64_CALL26	snprintf
   254b4: 8b20c318     	add	x24, x24, w0, sxtw
   254b8: f13feb1f     	cmp	x24, #0xffa
   254bc: 54000268     	b.hi	0x25508 <tp_edge_report_limit_read+0x498>
   254c0: 52820008     	mov	w8, #0x1000             // =4096
   254c4: 3940dae3     	ldrb	w3, [x23, #0x36]
   254c8: 90000002     	adrp	x2, 0x25000 <zte_touch_shutdown+0xa0>
		00000000000254c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x247c
   254cc: 91000042     	add	x2, x2, #0x0
		00000000000254cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x247c
   254d0: cb180101     	sub	x1, x8, x24
   254d4: 8b1802c0     	add	x0, x22, x24
   254d8: 94000000     	bl	0x254d8 <tp_edge_report_limit_read+0x468>
		00000000000254d8:  R_AARCH64_CALL26	snprintf
   254dc: 8b20c318     	add	x24, x24, w0, sxtw
   254e0: f13feb1f     	cmp	x24, #0xffa
   254e4: 54000128     	b.hi	0x25508 <tp_edge_report_limit_read+0x498>
   254e8: 52820008     	mov	w8, #0x1000             // =4096
   254ec: 3940dee3     	ldrb	w3, [x23, #0x37]
   254f0: 90000002     	adrp	x2, 0x25000 <zte_touch_shutdown+0xa0>
		00000000000254f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x247c
   254f4: 91000042     	add	x2, x2, #0x0
		00000000000254f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x247c
   254f8: cb180101     	sub	x1, x8, x24
   254fc: 8b1802c0     	add	x0, x22, x24
   25500: 94000000     	bl	0x25500 <tp_edge_report_limit_read+0x490>
		0000000000025500:  R_AARCH64_CALL26	snprintf
   25504: 8b20c318     	add	x24, x24, w0, sxtw
   25508: 52820008     	mov	w8, #0x1000             // =4096
   2550c: 90000002     	adrp	x2, 0x25000 <zte_touch_shutdown+0xa0>
		000000000002550c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4609
   25510: 91000042     	add	x2, x2, #0x0
		0000000000025510:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4609
   25514: cb180101     	sub	x1, x8, x24
   25518: 8b1802c0     	add	x0, x22, x24
   2551c: 94000000     	bl	0x2551c <tp_edge_report_limit_read+0x4ac>
		000000000002551c:  R_AARCH64_CALL26	snprintf
   25520: 8b20c317     	add	x23, x24, w0, sxtw
   25524: aa1503e0     	mov	x0, x21
   25528: aa1403e1     	mov	x1, x20
   2552c: aa1303e2     	mov	x2, x19
   25530: aa1603e3     	mov	x3, x22
   25534: aa1703e4     	mov	x4, x23
   25538: 94000000     	bl	0x25538 <tp_edge_report_limit_read+0x4c8>
		0000000000025538:  R_AARCH64_CALL26	simple_read_from_buffer
   2553c: aa1603e0     	mov	x0, x22
   25540: 94000000     	bl	0x25540 <tp_edge_report_limit_read+0x4d0>
		0000000000025540:  R_AARCH64_CALL26	kfree
   25544: aa1703e0     	mov	x0, x23
   25548: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   2554c: f9400bf9     	ldr	x25, [sp, #0x10]
   25550: a94357f6     	ldp	x22, x21, [sp, #0x30]
   25554: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   25558: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   2555c: d50323bf     	autiasp
   25560: d65f03c0     	ret
   25564: 90000008     	adrp	x8, 0x25000 <zte_touch_shutdown+0xa0>
		0000000000025564:  R_AARCH64_ADR_PREL_PG_HI21	tp_edge_report_limit_read._alloc_tag
   25568: 91000108     	add	x8, x8, #0x0
		0000000000025568:  R_AARCH64_ADD_ABS_LO12_NC	tp_edge_report_limit_read._alloc_tag
   2556c: d5384118     	mrs	x24, SP_EL0
   25570: f9402b19     	ldr	x25, [x24, #0x50]
   25574: f9002b08     	str	x8, [x24, #0x50]
   25578: 90000008     	adrp	x8, 0x25000 <zte_touch_shutdown+0xa0>
		0000000000025578:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   2557c: f9400100     	ldr	x0, [x8]
		000000000002557c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   25580: 5281b801     	mov	w1, #0xdc0              // =3520
   25584: 52820002     	mov	w2, #0x1000             // =4096
   25588: 94000000     	bl	0x25588 <tp_edge_report_limit_read+0x518>
		0000000000025588:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   2558c: aa0003f6     	mov	x22, x0
   25590: f9002b19     	str	x25, [x24, #0x50]
   25594: b5ffd9f6     	cbnz	x22, 0x250d0 <tp_edge_report_limit_read+0x60>
   25598: 90000000     	adrp	x0, 0x25000 <zte_touch_shutdown+0xa0>
		0000000000025598:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1411
   2559c: 91000000     	add	x0, x0, #0x0
		000000000002559c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1411
   255a0: 94000000     	bl	0x255a0 <tp_edge_report_limit_read+0x530>
		00000000000255a0:  R_AARCH64_CALL26	_printk
   255a4: 92800160     	mov	x0, #-0xc               // =-12
   255a8: 17ffffe8     	b	0x25548 <tp_edge_report_limit_read+0x4d8>
