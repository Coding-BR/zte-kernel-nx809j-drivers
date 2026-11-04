
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000344 <zlog_handle_work>:
     344: d503233f     	paciasp
     348: d10503ff     	sub	sp, sp, #0x140
     34c: a90e7bfd     	stp	x29, x30, [sp, #0xe0]
     350: a90f6ffc     	stp	x28, x27, [sp, #0xf0]
     354: a91067fa     	stp	x26, x25, [sp, #0x100]
     358: a9115ff8     	stp	x24, x23, [sp, #0x110]
     35c: a91257f6     	stp	x22, x21, [sp, #0x120]
     360: a9134ff4     	stp	x20, x19, [sp, #0x130]
     364: 910383fd     	add	x29, sp, #0xe0
     368: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000368:  R_AARCH64_ADR_PREL_PG_HI21	zlog_lifetime_lock
     36c: 91000000     	add	x0, x0, #0x0
		000000000000036c:  R_AARCH64_ADD_ABS_LO12_NC	zlog_lifetime_lock
     370: 94000000     	bl	0x370 <zlog_handle_work+0x2c>
		0000000000000370:  R_AARCH64_CALL26	mutex_lock
     374: d5384108     	mrs	x8, SP_EL0
     378: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000378:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x4f1
     37c: 91000273     	add	x19, x19, #0x0
		000000000000037c:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x4f1
     380: f9438908     	ldr	x8, [x8, #0x710]
     384: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000384:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x20b
     388: 91000000     	add	x0, x0, #0x0
		0000000000000388:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x20b
     38c: aa1303e1     	mov	x1, x19
     390: aa1303e2     	mov	x2, x19
     394: f81f03a8     	stur	x8, [x29, #-0x10]
     398: 94000000     	bl	0x398 <zlog_handle_work+0x54>
		0000000000000398:  R_AARCH64_CALL26	_printk
     39c: aa1f03f4     	mov	x20, xzr
     3a0: 90000015     	adrp	x21, 0x0 <.text>
		00000000000003a0:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_bss_base+0xb0
     3a4: 910002b5     	add	x21, x21, #0x0
		00000000000003a4:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_bss_base+0xb0
     3a8: 90000019     	adrp	x25, 0x0 <.text>
		00000000000003a8:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x1d9
     3ac: 91000339     	add	x25, x25, #0x0
		00000000000003ac:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x1d9
     3b0: 9000001a     	adrp	x26, 0x0 <.text>
		00000000000003b0:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x6b1
     3b4: 9100035a     	add	x26, x26, #0x0
		00000000000003b4:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x6b1
     3b8: 5280011b     	mov	w27, #0x8               // =8
     3bc: d5384108     	mrs	x8, SP_EL0
     3c0: f9000be8     	str	x8, [sp, #0x10]
     3c4: 14000016     	b	0x41c <zlog_handle_work+0xd8>
     3c8: aa1a03e0     	mov	x0, x26
     3cc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003cc:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x4a3
     3d0: 91000021     	add	x1, x1, #0x0
		00000000000003d0:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x4a3
     3d4: 94000000     	bl	0x3d4 <zlog_handle_work+0x90>
		00000000000003d4:  R_AARCH64_CALL26	_printk
     3d8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003d8:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x315
     3dc: 91000000     	add	x0, x0, #0x0
		00000000000003dc:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x315
     3e0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003e0:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x8c
     3e4: 91000021     	add	x1, x1, #0x0
		00000000000003e4:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x8c
     3e8: 94000000     	bl	0x3e8 <zlog_handle_work+0xa4>
		00000000000003e8:  R_AARCH64_CALL26	_printk
     3ec: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003ec:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x480
     3f0: 91000000     	add	x0, x0, #0x0
		00000000000003f0:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x480
     3f4: aa1303e1     	mov	x1, x19
     3f8: aa1c03e2     	mov	x2, x28
     3fc: d102c2b7     	sub	x23, x21, #0xb0
     400: 94000000     	bl	0x400 <zlog_handle_work+0xbc>
		0000000000000400:  R_AARCH64_CALL26	_printk
     404: aa1703e0     	mov	x0, x23
     408: 94000000     	bl	0x408 <zlog_handle_work+0xc4>
		0000000000000408:  R_AARCH64_CALL26	zlog_reset_client
     40c: 91000694     	add	x20, x20, #0x1
     410: 910482b5     	add	x21, x21, #0x120
     414: f100829f     	cmp	x20, #0x20
     418: 54001720     	b.eq	0x6fc <zlog_handle_work+0x3b8>
     41c: 3941a2a8     	ldrb	w8, [x21, #0x68]
     420: 34ffff68     	cbz	w8, 0x40c <zlog_handle_work+0xc8>
     424: aa1503e0     	mov	x0, x21
     428: 94000000     	bl	0x428 <zlog_handle_work+0xe4>
		0000000000000428:  R_AARCH64_CALL26	mutex_lock
     42c: f9401ea4     	ldr	x4, [x21, #0x38]
     430: d102b2bc     	sub	x28, x21, #0xac
     434: aa1903e0     	mov	x0, x25
     438: aa1303e1     	mov	x1, x19
     43c: 2a1403e2     	mov	w2, w20
     440: aa1c03e3     	mov	x3, x28
     444: 94000000     	bl	0x444 <zlog_handle_work+0x100>
		0000000000000444:  R_AARCH64_CALL26	_printk
     448: 14000097     	b	0x6a4 <zlog_handle_work+0x360>
     44c: 9100e2a8     	add	x8, x21, #0x38
     450: f8fb1116     	ldclral	x27, x22, [x8]
     454: aa1503e0     	mov	x0, x21
     458: 94000000     	bl	0x458 <zlog_handle_work+0x114>
		0000000000000458:  R_AARCH64_CALL26	mutex_unlock
     45c: 361ffd96     	tbz	w22, #0x3, 0x40c <zlog_handle_work+0xc8>
     460: aa1503e0     	mov	x0, x21
     464: 94000000     	bl	0x464 <zlog_handle_work+0x120>
		0000000000000464:  R_AARCH64_CALL26	mutex_lock
     468: f94026a8     	ldr	x8, [x21, #0x48]
     46c: aa1503e0     	mov	x0, x21
     470: 9106e918     	add	x24, x8, #0x1ba
     474: 94000000     	bl	0x474 <zlog_handle_work+0x130>
		0000000000000474:  R_AARCH64_CALL26	mutex_unlock
     478: d503201f     	nop
     47c: aa1803e0     	mov	x0, x24
     480: 5281b801     	mov	w1, #0xdc0              // =3520
     484: 94000000     	bl	0x484 <zlog_handle_work+0x140>
		0000000000000484:  R_AARCH64_CALL26	__kmalloc_noprof
     488: aa0003f7     	mov	x23, x0
     48c: b4fff9f7     	cbz	x23, 0x3c8 <zlog_handle_work+0x84>
     490: aa1503e0     	mov	x0, x21
     494: a90c7fff     	stp	xzr, xzr, [sp, #0xc0]
     498: a90b7fff     	stp	xzr, xzr, [sp, #0xb0]
     49c: a90a7fff     	stp	xzr, xzr, [sp, #0xa0]
     4a0: a9097fff     	stp	xzr, xzr, [sp, #0x90]
     4a4: a9087fff     	stp	xzr, xzr, [sp, #0x80]
     4a8: a9077fff     	stp	xzr, xzr, [sp, #0x70]
     4ac: a9067fff     	stp	xzr, xzr, [sp, #0x60]
     4b0: a9057fff     	stp	xzr, xzr, [sp, #0x50]
     4b4: 94000000     	bl	0x4b4 <zlog_handle_work+0x170>
		00000000000004b4:  R_AARCH64_CALL26	mutex_lock
     4b8: 910103e0     	add	x0, sp, #0x40
     4bc: a9047fff     	stp	xzr, xzr, [sp, #0x40]
     4c0: b9003bff     	str	wzr, [sp, #0x38]
     4c4: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     4c8: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     4cc: 94000000     	bl	0x4cc <zlog_handle_work+0x188>
		00000000000004cc:  R_AARCH64_CALL26	ktime_get_real_ts64
     4d0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000004d0:  R_AARCH64_ADR_PREL_PG_HI21	sys_tz
     4d4: 910063e1     	add	x1, sp, #0x18
     4d8: b9400108     	ldr	w8, [x8]
		00000000000004d8:  R_AARCH64_LDST32_ABS_LO12_NC	sys_tz
     4dc: 531a6509     	lsl	w9, w8, #6
     4e0: 4b080928     	sub	w8, w9, w8, lsl #2
     4e4: f94023e9     	ldr	x9, [sp, #0x40]
     4e8: cb28c120     	sub	x0, x9, w8, sxtw
     4ec: f90023e0     	str	x0, [sp, #0x40]
     4f0: 94000000     	bl	0x4f0 <zlog_handle_work+0x1ac>
		00000000000004f0:  R_AARCH64_CALL26	rtc_time64_to_tm
     4f4: 294523e9     	ldp	w9, w8, [sp, #0x28]
     4f8: 294413e5     	ldp	w5, w4, [sp, #0x20]
     4fc: 29431be7     	ldp	w7, w6, [sp, #0x18]
     500: 910143e0     	add	x0, sp, #0x50
     504: 111db102     	add	w2, w8, #0x76c
     508: 11000523     	add	w3, w9, #0x1
     50c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000050c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x255
     510: 91000021     	add	x1, x1, #0x0
		0000000000000510:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x255
     514: 94000000     	bl	0x514 <zlog_handle_work+0x1d0>
		0000000000000514:  R_AARCH64_CALL26	sprintf
     518: b94032a3     	ldr	w3, [x21, #0x30]
     51c: 2a0003f9     	mov	w25, w0
     520: aa1703e0     	mov	x0, x23
     524: aa1803e1     	mov	x1, x24
     528: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000528:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x2dd
     52c: 91000042     	add	x2, x2, #0x0
		000000000000052c:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x2dd
     530: 94000000     	bl	0x530 <zlog_handle_work+0x1ec>
		0000000000000530:  R_AARCH64_CALL26	snprintf
     534: 294626a8     	ldp	w8, w9, [x21, #0x30]
     538: 2a0003fa     	mov	w26, w0
     53c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000053c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x6f2
     540: 91000042     	add	x2, x2, #0x0
		0000000000000540:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x6f2
     544: 93407f4a     	sxtw	x10, w26
     548: 2a086123     	orr	w3, w9, w8, lsl #24
     54c: cb0a0301     	sub	x1, x24, x10
     550: 8b0a02e0     	add	x0, x23, x10
     554: 94000000     	bl	0x554 <zlog_handle_work+0x210>
		0000000000000554:  R_AARCH64_CALL26	snprintf
     558: 0b1a0016     	add	w22, w0, w26
     55c: 7100073f     	cmp	w25, #0x1
     560: 2a1603fa     	mov	w26, w22
     564: 540001ab     	b.lt	0x598 <zlog_handle_work+0x254>
     568: 7102033f     	cmp	w25, #0x80
     56c: 54000f42     	b.hs	0x754 <zlog_handle_work+0x410>
     570: 93407ec8     	sxtw	x8, w22
     574: 910143e9     	add	x9, sp, #0x50
     578: 910143e3     	add	x3, sp, #0x50
     57c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000057c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x3e2
     580: 91000042     	add	x2, x2, #0x0
		0000000000000580:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x3e2
     584: 3839493f     	strb	wzr, [x9, w25, uxtw]
     588: cb080301     	sub	x1, x24, x8
     58c: 8b0802e0     	add	x0, x23, x8
     590: 94000000     	bl	0x590 <zlog_handle_work+0x24c>
		0000000000000590:  R_AARCH64_CALL26	snprintf
     594: 0b16001a     	add	w26, w0, w22
     598: 93407f48     	sxtw	x8, w26
     59c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000059c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x4b5
     5a0: 91000042     	add	x2, x2, #0x0
		00000000000005a0:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x4b5
     5a4: aa1c03e3     	mov	x3, x28
     5a8: cb080301     	sub	x1, x24, x8
     5ac: 8b0802e0     	add	x0, x23, x8
     5b0: 94000000     	bl	0x5b0 <zlog_handle_work+0x26c>
		00000000000005b0:  R_AARCH64_CALL26	snprintf
     5b4: 0b1a0016     	add	w22, w0, w26
     5b8: d10232a3     	sub	x3, x21, #0x8c
     5bc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000005bc:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x572
     5c0: 91000042     	add	x2, x2, #0x0
		00000000000005c0:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x572
     5c4: 93407ec8     	sxtw	x8, w22
     5c8: cb080301     	sub	x1, x24, x8
     5cc: 8b0802e0     	add	x0, x23, x8
     5d0: 94000000     	bl	0x5d0 <zlog_handle_work+0x28c>
		00000000000005d0:  R_AARCH64_CALL26	snprintf
     5d4: 0b160016     	add	w22, w0, w22
     5d8: d100b2a3     	sub	x3, x21, #0x2c
     5dc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000005dc:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x3a9
     5e0: 91000042     	add	x2, x2, #0x0
		00000000000005e0:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x3a9
     5e4: 93407ec8     	sxtw	x8, w22
     5e8: cb080301     	sub	x1, x24, x8
     5ec: 8b0802e0     	add	x0, x23, x8
     5f0: 94000000     	bl	0x5f0 <zlog_handle_work+0x2ac>
		00000000000005f0:  R_AARCH64_CALL26	snprintf
     5f4: 0b160016     	add	w22, w0, w22
     5f8: d101b2a3     	sub	x3, x21, #0x6c
     5fc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000005fc:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x7e
     600: 91000042     	add	x2, x2, #0x0
		0000000000000600:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x7e
     604: 93407ec8     	sxtw	x8, w22
     608: cb080301     	sub	x1, x24, x8
     60c: 8b0802e0     	add	x0, x23, x8
     610: 94000000     	bl	0x610 <zlog_handle_work+0x2cc>
		0000000000000610:  R_AARCH64_CALL26	snprintf
     614: 0b160016     	add	w22, w0, w22
     618: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000618:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x76a
     61c: 91000042     	add	x2, x2, #0x0
		000000000000061c:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x76a
     620: 93407ec8     	sxtw	x8, w22
     624: cb080301     	sub	x1, x24, x8
     628: 8b0802e0     	add	x0, x23, x8
     62c: 94000000     	bl	0x62c <zlog_handle_work+0x2e8>
		000000000000062c:  R_AARCH64_CALL26	snprintf
     630: 0b160008     	add	w8, w0, w22
     634: f94026a2     	ldr	x2, [x21, #0x48]
     638: 93407d19     	sxtw	x25, w8
     63c: eb190308     	subs	x8, x24, x25
     640: 9a8833e1     	csel	x1, xzr, x8, lo
     644: eb02003f     	cmp	x1, x2
     648: 54000823     	b.lo	0x74c <zlog_handle_work+0x408>
     64c: f9402ea1     	ldr	x1, [x21, #0x58]
     650: 8b1902e0     	add	x0, x23, x25
     654: 94000000     	bl	0x654 <zlog_handle_work+0x310>
		0000000000000654:  R_AARCH64_CALL26	memcpy
     658: f94026b6     	ldr	x22, [x21, #0x48]
     65c: aa1503e0     	mov	x0, x21
     660: 94000000     	bl	0x660 <zlog_handle_work+0x31c>
		0000000000000660:  R_AARCH64_CALL26	mutex_unlock
     664: 8b1902c1     	add	x1, x22, x25
     668: aa1703e0     	mov	x0, x23
     66c: 94000000     	bl	0x66c <zlog_handle_work+0x328>
		000000000000066c:  R_AARCH64_CALL26	zlog_write_internal
     670: 9000001a     	adrp	x26, 0x0 <.text>
		0000000000000670:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x6b1
     674: 9100035a     	add	x26, x26, #0x0
		0000000000000674:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x6b1
     678: 36f800c0     	tbz	w0, #0x1f, 0x690 <zlog_handle_work+0x34c>
     67c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000067c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x52f
     680: 91000000     	add	x0, x0, #0x0
		0000000000000680:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x52f
     684: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000684:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x8c
     688: 91000021     	add	x1, x1, #0x0
		0000000000000688:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x8c
     68c: 94000000     	bl	0x68c <zlog_handle_work+0x348>
		000000000000068c:  R_AARCH64_CALL26	_printk
     690: aa1703e0     	mov	x0, x23
     694: 94000000     	bl	0x694 <zlog_handle_work+0x350>
		0000000000000694:  R_AARCH64_CALL26	kfree
     698: 90000019     	adrp	x25, 0x0 <.text>
		0000000000000698:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x1d9
     69c: 91000339     	add	x25, x25, #0x0
		000000000000069c:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x1d9
     6a0: 17ffff53     	b	0x3ec <zlog_handle_work+0xa8>
     6a4: 9100e2a8     	add	x8, x21, #0x38
     6a8: f9800111     	prfm	pstl1strm, [x8]
     6ac: c85f7d16     	ldxr	x22, [x8]
     6b0: 8a3b02c9     	bic	x9, x22, x27
     6b4: c80afd09     	stlxr	w10, x9, [x8]
     6b8: 35ffffaa     	cbnz	w10, 0x6ac <zlog_handle_work+0x368>
     6bc: d5033bbf     	dmb	ish
     6c0: 17ffff65     	b	0x454 <zlog_handle_work+0x110>
     6c4: f9400bf6     	ldr	x22, [sp, #0x10]
     6c8: aa1803e0     	mov	x0, x24
     6cc: 5281b801     	mov	w1, #0xdc0              // =3520
     6d0: f9402ac8     	ldr	x8, [x22, #0x50]
     6d4: f90007e8     	str	x8, [sp, #0x8]
     6d8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000006d8:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_codetag_base+0x28
     6dc: 91000108     	add	x8, x8, #0x0
		00000000000006dc:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_codetag_base+0x28
     6e0: f9002ac8     	str	x8, [x22, #0x50]
     6e4: 94000000     	bl	0x6e4 <zlog_handle_work+0x3a0>
		00000000000006e4:  R_AARCH64_CALL26	__kmalloc_noprof
     6e8: f94007e8     	ldr	x8, [sp, #0x8]
     6ec: aa0003f7     	mov	x23, x0
     6f0: f9002ac8     	str	x8, [x22, #0x50]
     6f4: b4ffe6b7     	cbz	x23, 0x3c8 <zlog_handle_work+0x84>
     6f8: 17ffff66     	b	0x490 <zlog_handle_work+0x14c>
     6fc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006fc:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x4f1
     700: 91000021     	add	x1, x1, #0x0
		0000000000000700:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x4f1
     704: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000704:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x697
     708: 91000000     	add	x0, x0, #0x0
		0000000000000708:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x697
     70c: aa0103e2     	mov	x2, x1
     710: 94000000     	bl	0x710 <zlog_handle_work+0x3cc>
		0000000000000710:  R_AARCH64_CALL26	_printk
     714: d5384108     	mrs	x8, SP_EL0
     718: f9438908     	ldr	x8, [x8, #0x710]
     71c: f85f03a9     	ldur	x9, [x29, #-0x10]
     720: eb09011f     	cmp	x8, x9
     724: 540001a1     	b.ne	0x758 <zlog_handle_work+0x414>
     728: a9534ff4     	ldp	x20, x19, [sp, #0x130]
     72c: a95257f6     	ldp	x22, x21, [sp, #0x120]
     730: a9515ff8     	ldp	x24, x23, [sp, #0x110]
     734: a95067fa     	ldp	x26, x25, [sp, #0x100]
     738: a94f6ffc     	ldp	x28, x27, [sp, #0xf0]
     73c: a94e7bfd     	ldp	x29, x30, [sp, #0xe0]
     740: 910503ff     	add	sp, sp, #0x140
     744: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000744:  R_AARCH64_ADR_PREL_PG_HI21	zlog_lifetime_lock
     748: 91000000     	add	x0, x0, #0x0
		0000000000000748:  R_AARCH64_ADD_ABS_LO12_NC	zlog_lifetime_lock
     74c: 94000000     	bl	0x74c <zlog_handle_work+0x408>
		000000000000074c:  R_AARCH64_CALL26	mutex_unlock
     750: d50323bf     	autiasp
     754: d65f03c0     	ret
     758: 52800220     	mov	w0, #0x11               // =17
     75c: 94000000     	bl	0x75c <zlog_handle_work+0x418>
		000000000000075c:  R_AARCH64_CALL26	__fortify_panic
     760: d42aa240     	brk	#0x5512
     764: 94000000     	bl	0x764 <zlog_handle_work+0x420>
		0000000000000764:  R_AARCH64_CALL26	__stack_chk_fail
