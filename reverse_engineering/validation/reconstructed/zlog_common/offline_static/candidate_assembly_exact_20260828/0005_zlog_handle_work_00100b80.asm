
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000618 <zlog_handle_work>:
     618: d503233f     	paciasp
     61c: d10503ff     	sub	sp, sp, #0x140
     620: a90e7bfd     	stp	x29, x30, [sp, #0xe0]
     624: a90f6ffc     	stp	x28, x27, [sp, #0xf0]
     628: a91067fa     	stp	x26, x25, [sp, #0x100]
     62c: a9115ff8     	stp	x24, x23, [sp, #0x110]
     630: a91257f6     	stp	x22, x21, [sp, #0x120]
     634: a9134ff4     	stp	x20, x19, [sp, #0x130]
     638: 910383fd     	add	x29, sp, #0xe0
     63c: d5384108     	mrs	x8, SP_EL0
     640: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000640:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x4f1
     644: 91000273     	add	x19, x19, #0x0
		0000000000000644:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x4f1
     648: f9438908     	ldr	x8, [x8, #0x710]
     64c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000064c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x20b
     650: 91000000     	add	x0, x0, #0x0
		0000000000000650:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x20b
     654: aa1303e1     	mov	x1, x19
     658: aa1303e2     	mov	x2, x19
     65c: f81f03a8     	stur	x8, [x29, #-0x10]
     660: 94000000     	bl	0x660 <zlog_handle_work+0x48>
		0000000000000660:  R_AARCH64_CALL26	_printk
     664: aa1f03f4     	mov	x20, xzr
     668: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000668:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_bss_base+0xb0
     66c: 910002b5     	add	x21, x21, #0x0
		000000000000066c:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_bss_base+0xb0
     670: 90000019     	adrp	x25, 0x0 <.text>
		0000000000000670:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x1d9
     674: 91000339     	add	x25, x25, #0x0
		0000000000000674:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x1d9
     678: 9000001a     	adrp	x26, 0x0 <.text>
		0000000000000678:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x6b1
     67c: 9100035a     	add	x26, x26, #0x0
		000000000000067c:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x6b1
     680: 5280011b     	mov	w27, #0x8               // =8
     684: d5384108     	mrs	x8, SP_EL0
     688: f9000be8     	str	x8, [sp, #0x10]
     68c: 14000016     	b	0x6e4 <zlog_handle_work+0xcc>
     690: aa1a03e0     	mov	x0, x26
     694: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000694:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x4a3
     698: 91000021     	add	x1, x1, #0x0
		0000000000000698:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x4a3
     69c: 94000000     	bl	0x69c <zlog_handle_work+0x84>
		000000000000069c:  R_AARCH64_CALL26	_printk
     6a0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006a0:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x315
     6a4: 91000000     	add	x0, x0, #0x0
		00000000000006a4:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x315
     6a8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006a8:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x8c
     6ac: 91000021     	add	x1, x1, #0x0
		00000000000006ac:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x8c
     6b0: 94000000     	bl	0x6b0 <zlog_handle_work+0x98>
		00000000000006b0:  R_AARCH64_CALL26	_printk
     6b4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006b4:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x480
     6b8: 91000000     	add	x0, x0, #0x0
		00000000000006b8:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x480
     6bc: aa1303e1     	mov	x1, x19
     6c0: aa1c03e2     	mov	x2, x28
     6c4: d102c2b7     	sub	x23, x21, #0xb0
     6c8: 94000000     	bl	0x6c8 <zlog_handle_work+0xb0>
		00000000000006c8:  R_AARCH64_CALL26	_printk
     6cc: aa1703e0     	mov	x0, x23
     6d0: 94000000     	bl	0x6d0 <zlog_handle_work+0xb8>
		00000000000006d0:  R_AARCH64_CALL26	zlog_reset_client
     6d4: 91000694     	add	x20, x20, #0x1
     6d8: 910482b5     	add	x21, x21, #0x120
     6dc: f100829f     	cmp	x20, #0x20
     6e0: 54001720     	b.eq	0x9c4 <zlog_handle_work+0x3ac>
     6e4: 3941a2a8     	ldrb	w8, [x21, #0x68]
     6e8: 34ffff68     	cbz	w8, 0x6d4 <zlog_handle_work+0xbc>
     6ec: aa1503e0     	mov	x0, x21
     6f0: 94000000     	bl	0x6f0 <zlog_handle_work+0xd8>
		00000000000006f0:  R_AARCH64_CALL26	mutex_lock
     6f4: f9401ea4     	ldr	x4, [x21, #0x38]
     6f8: d102b2bc     	sub	x28, x21, #0xac
     6fc: aa1903e0     	mov	x0, x25
     700: aa1303e1     	mov	x1, x19
     704: 2a1403e2     	mov	w2, w20
     708: aa1c03e3     	mov	x3, x28
     70c: 94000000     	bl	0x70c <zlog_handle_work+0xf4>
		000000000000070c:  R_AARCH64_CALL26	_printk
     710: 14000097     	b	0x96c <zlog_handle_work+0x354>
     714: 9100e2a8     	add	x8, x21, #0x38
     718: f8fb1116     	ldclral	x27, x22, [x8]
     71c: aa1503e0     	mov	x0, x21
     720: 94000000     	bl	0x720 <zlog_handle_work+0x108>
		0000000000000720:  R_AARCH64_CALL26	mutex_unlock
     724: 361ffd96     	tbz	w22, #0x3, 0x6d4 <zlog_handle_work+0xbc>
     728: aa1503e0     	mov	x0, x21
     72c: 94000000     	bl	0x72c <zlog_handle_work+0x114>
		000000000000072c:  R_AARCH64_CALL26	mutex_lock
     730: f94026a8     	ldr	x8, [x21, #0x48]
     734: aa1503e0     	mov	x0, x21
     738: 9106e918     	add	x24, x8, #0x1ba
     73c: 94000000     	bl	0x73c <zlog_handle_work+0x124>
		000000000000073c:  R_AARCH64_CALL26	mutex_unlock
     740: d503201f     	nop
     744: aa1803e0     	mov	x0, x24
     748: 5281b801     	mov	w1, #0xdc0              // =3520
     74c: 94000000     	bl	0x74c <zlog_handle_work+0x134>
		000000000000074c:  R_AARCH64_CALL26	__kmalloc_noprof
     750: aa0003f7     	mov	x23, x0
     754: b4fff9f7     	cbz	x23, 0x690 <zlog_handle_work+0x78>
     758: aa1503e0     	mov	x0, x21
     75c: a90c7fff     	stp	xzr, xzr, [sp, #0xc0]
     760: a90b7fff     	stp	xzr, xzr, [sp, #0xb0]
     764: a90a7fff     	stp	xzr, xzr, [sp, #0xa0]
     768: a9097fff     	stp	xzr, xzr, [sp, #0x90]
     76c: a9087fff     	stp	xzr, xzr, [sp, #0x80]
     770: a9077fff     	stp	xzr, xzr, [sp, #0x70]
     774: a9067fff     	stp	xzr, xzr, [sp, #0x60]
     778: a9057fff     	stp	xzr, xzr, [sp, #0x50]
     77c: 94000000     	bl	0x77c <zlog_handle_work+0x164>
		000000000000077c:  R_AARCH64_CALL26	mutex_lock
     780: 910103e0     	add	x0, sp, #0x40
     784: a9047fff     	stp	xzr, xzr, [sp, #0x40]
     788: b9003bff     	str	wzr, [sp, #0x38]
     78c: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     790: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     794: 94000000     	bl	0x794 <zlog_handle_work+0x17c>
		0000000000000794:  R_AARCH64_CALL26	ktime_get_real_ts64
     798: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000798:  R_AARCH64_ADR_PREL_PG_HI21	sys_tz
     79c: 910063e1     	add	x1, sp, #0x18
     7a0: b9400108     	ldr	w8, [x8]
		00000000000007a0:  R_AARCH64_LDST32_ABS_LO12_NC	sys_tz
     7a4: 531a6509     	lsl	w9, w8, #6
     7a8: 4b080928     	sub	w8, w9, w8, lsl #2
     7ac: f94023e9     	ldr	x9, [sp, #0x40]
     7b0: cb28c120     	sub	x0, x9, w8, sxtw
     7b4: f90023e0     	str	x0, [sp, #0x40]
     7b8: 94000000     	bl	0x7b8 <zlog_handle_work+0x1a0>
		00000000000007b8:  R_AARCH64_CALL26	rtc_time64_to_tm
     7bc: 294523e9     	ldp	w9, w8, [sp, #0x28]
     7c0: 294413e5     	ldp	w5, w4, [sp, #0x20]
     7c4: 29431be7     	ldp	w7, w6, [sp, #0x18]
     7c8: 910143e0     	add	x0, sp, #0x50
     7cc: 111db102     	add	w2, w8, #0x76c
     7d0: 11000523     	add	w3, w9, #0x1
     7d4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007d4:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x255
     7d8: 91000021     	add	x1, x1, #0x0
		00000000000007d8:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x255
     7dc: 94000000     	bl	0x7dc <zlog_handle_work+0x1c4>
		00000000000007dc:  R_AARCH64_CALL26	sprintf
     7e0: b94032a3     	ldr	w3, [x21, #0x30]
     7e4: 2a0003f9     	mov	w25, w0
     7e8: aa1703e0     	mov	x0, x23
     7ec: aa1803e1     	mov	x1, x24
     7f0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000007f0:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x2dd
     7f4: 91000042     	add	x2, x2, #0x0
		00000000000007f4:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x2dd
     7f8: 94000000     	bl	0x7f8 <zlog_handle_work+0x1e0>
		00000000000007f8:  R_AARCH64_CALL26	snprintf
     7fc: 294626a8     	ldp	w8, w9, [x21, #0x30]
     800: 2a0003fa     	mov	w26, w0
     804: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000804:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x6f2
     808: 91000042     	add	x2, x2, #0x0
		0000000000000808:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x6f2
     80c: 93407f4a     	sxtw	x10, w26
     810: 2a086123     	orr	w3, w9, w8, lsl #24
     814: cb0a0301     	sub	x1, x24, x10
     818: 8b0a02e0     	add	x0, x23, x10
     81c: 94000000     	bl	0x81c <zlog_handle_work+0x204>
		000000000000081c:  R_AARCH64_CALL26	snprintf
     820: 0b1a0016     	add	w22, w0, w26
     824: 7100073f     	cmp	w25, #0x1
     828: 2a1603fa     	mov	w26, w22
     82c: 540001ab     	b.lt	0x860 <zlog_handle_work+0x248>
     830: 7102033f     	cmp	w25, #0x80
     834: 54000f42     	b.hs	0xa1c <zlog_handle_work+0x404>
     838: 93407ec8     	sxtw	x8, w22
     83c: 910143e9     	add	x9, sp, #0x50
     840: 910143e3     	add	x3, sp, #0x50
     844: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000844:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x3e2
     848: 91000042     	add	x2, x2, #0x0
		0000000000000848:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x3e2
     84c: 3839493f     	strb	wzr, [x9, w25, uxtw]
     850: cb080301     	sub	x1, x24, x8
     854: 8b0802e0     	add	x0, x23, x8
     858: 94000000     	bl	0x858 <zlog_handle_work+0x240>
		0000000000000858:  R_AARCH64_CALL26	snprintf
     85c: 0b16001a     	add	w26, w0, w22
     860: 93407f48     	sxtw	x8, w26
     864: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000864:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x4b5
     868: 91000042     	add	x2, x2, #0x0
		0000000000000868:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x4b5
     86c: aa1c03e3     	mov	x3, x28
     870: cb080301     	sub	x1, x24, x8
     874: 8b0802e0     	add	x0, x23, x8
     878: 94000000     	bl	0x878 <zlog_handle_work+0x260>
		0000000000000878:  R_AARCH64_CALL26	snprintf
     87c: 0b1a0016     	add	w22, w0, w26
     880: d10232a3     	sub	x3, x21, #0x8c
     884: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000884:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x572
     888: 91000042     	add	x2, x2, #0x0
		0000000000000888:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x572
     88c: 93407ec8     	sxtw	x8, w22
     890: cb080301     	sub	x1, x24, x8
     894: 8b0802e0     	add	x0, x23, x8
     898: 94000000     	bl	0x898 <zlog_handle_work+0x280>
		0000000000000898:  R_AARCH64_CALL26	snprintf
     89c: 0b160016     	add	w22, w0, w22
     8a0: d100b2a3     	sub	x3, x21, #0x2c
     8a4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000008a4:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x3a9
     8a8: 91000042     	add	x2, x2, #0x0
		00000000000008a8:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x3a9
     8ac: 93407ec8     	sxtw	x8, w22
     8b0: cb080301     	sub	x1, x24, x8
     8b4: 8b0802e0     	add	x0, x23, x8
     8b8: 94000000     	bl	0x8b8 <zlog_handle_work+0x2a0>
		00000000000008b8:  R_AARCH64_CALL26	snprintf
     8bc: 0b160016     	add	w22, w0, w22
     8c0: d101b2a3     	sub	x3, x21, #0x6c
     8c4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000008c4:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x7e
     8c8: 91000042     	add	x2, x2, #0x0
		00000000000008c8:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x7e
     8cc: 93407ec8     	sxtw	x8, w22
     8d0: cb080301     	sub	x1, x24, x8
     8d4: 8b0802e0     	add	x0, x23, x8
     8d8: 94000000     	bl	0x8d8 <zlog_handle_work+0x2c0>
		00000000000008d8:  R_AARCH64_CALL26	snprintf
     8dc: 0b160016     	add	w22, w0, w22
     8e0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000008e0:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x76a
     8e4: 91000042     	add	x2, x2, #0x0
		00000000000008e4:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x76a
     8e8: 93407ec8     	sxtw	x8, w22
     8ec: cb080301     	sub	x1, x24, x8
     8f0: 8b0802e0     	add	x0, x23, x8
     8f4: 94000000     	bl	0x8f4 <zlog_handle_work+0x2dc>
		00000000000008f4:  R_AARCH64_CALL26	snprintf
     8f8: 0b160008     	add	w8, w0, w22
     8fc: f94026a2     	ldr	x2, [x21, #0x48]
     900: 93407d19     	sxtw	x25, w8
     904: eb190308     	subs	x8, x24, x25
     908: 9a8833e1     	csel	x1, xzr, x8, lo
     90c: eb02003f     	cmp	x1, x2
     910: 54000823     	b.lo	0xa14 <zlog_handle_work+0x3fc>
     914: f9402ea1     	ldr	x1, [x21, #0x58]
     918: 8b1902e0     	add	x0, x23, x25
     91c: 94000000     	bl	0x91c <zlog_handle_work+0x304>
		000000000000091c:  R_AARCH64_CALL26	memcpy
     920: f94026b6     	ldr	x22, [x21, #0x48]
     924: aa1503e0     	mov	x0, x21
     928: 94000000     	bl	0x928 <zlog_handle_work+0x310>
		0000000000000928:  R_AARCH64_CALL26	mutex_unlock
     92c: 8b1902c1     	add	x1, x22, x25
     930: aa1703e0     	mov	x0, x23
     934: 94000000     	bl	0x934 <zlog_handle_work+0x31c>
		0000000000000934:  R_AARCH64_CALL26	zlog_write_internal
     938: 9000001a     	adrp	x26, 0x0 <.text>
		0000000000000938:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x6b1
     93c: 9100035a     	add	x26, x26, #0x0
		000000000000093c:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x6b1
     940: 36f800c0     	tbz	w0, #0x1f, 0x958 <zlog_handle_work+0x340>
     944: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000944:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x52f
     948: 91000000     	add	x0, x0, #0x0
		0000000000000948:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x52f
     94c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000094c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x8c
     950: 91000021     	add	x1, x1, #0x0
		0000000000000950:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x8c
     954: 94000000     	bl	0x954 <zlog_handle_work+0x33c>
		0000000000000954:  R_AARCH64_CALL26	_printk
     958: aa1703e0     	mov	x0, x23
     95c: 94000000     	bl	0x95c <zlog_handle_work+0x344>
		000000000000095c:  R_AARCH64_CALL26	kfree
     960: 90000019     	adrp	x25, 0x0 <.text>
		0000000000000960:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x1d9
     964: 91000339     	add	x25, x25, #0x0
		0000000000000964:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x1d9
     968: 17ffff53     	b	0x6b4 <zlog_handle_work+0x9c>
     96c: 9100e2a8     	add	x8, x21, #0x38
     970: f9800111     	prfm	pstl1strm, [x8]
     974: c85f7d16     	ldxr	x22, [x8]
     978: 8a3b02c9     	bic	x9, x22, x27
     97c: c80afd09     	stlxr	w10, x9, [x8]
     980: 35ffffaa     	cbnz	w10, 0x974 <zlog_handle_work+0x35c>
     984: d5033bbf     	dmb	ish
     988: 17ffff65     	b	0x71c <zlog_handle_work+0x104>
     98c: f9400bf6     	ldr	x22, [sp, #0x10]
     990: aa1803e0     	mov	x0, x24
     994: 5281b801     	mov	w1, #0xdc0              // =3520
     998: f9402ac8     	ldr	x8, [x22, #0x50]
     99c: f90007e8     	str	x8, [sp, #0x8]
     9a0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000009a0:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_codetag_base+0x28
     9a4: 91000108     	add	x8, x8, #0x0
		00000000000009a4:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_codetag_base+0x28
     9a8: f9002ac8     	str	x8, [x22, #0x50]
     9ac: 94000000     	bl	0x9ac <zlog_handle_work+0x394>
		00000000000009ac:  R_AARCH64_CALL26	__kmalloc_noprof
     9b0: f94007e8     	ldr	x8, [sp, #0x8]
     9b4: aa0003f7     	mov	x23, x0
     9b8: f9002ac8     	str	x8, [x22, #0x50]
     9bc: b4ffe6b7     	cbz	x23, 0x690 <zlog_handle_work+0x78>
     9c0: 17ffff66     	b	0x758 <zlog_handle_work+0x140>
     9c4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009c4:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x4f1
     9c8: 91000021     	add	x1, x1, #0x0
		00000000000009c8:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x4f1
     9cc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009cc:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x697
     9d0: 91000000     	add	x0, x0, #0x0
		00000000000009d0:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x697
     9d4: aa0103e2     	mov	x2, x1
     9d8: 94000000     	bl	0x9d8 <zlog_handle_work+0x3c0>
		00000000000009d8:  R_AARCH64_CALL26	_printk
     9dc: d5384108     	mrs	x8, SP_EL0
     9e0: f9438908     	ldr	x8, [x8, #0x710]
     9e4: f85f03a9     	ldur	x9, [x29, #-0x10]
     9e8: eb09011f     	cmp	x8, x9
     9ec: 540001a1     	b.ne	0xa20 <zlog_handle_work+0x408>
     9f0: a9534ff4     	ldp	x20, x19, [sp, #0x130]
     9f4: a95257f6     	ldp	x22, x21, [sp, #0x120]
     9f8: a9515ff8     	ldp	x24, x23, [sp, #0x110]
     9fc: a95067fa     	ldp	x26, x25, [sp, #0x100]
     a00: a94f6ffc     	ldp	x28, x27, [sp, #0xf0]
     a04: a94e7bfd     	ldp	x29, x30, [sp, #0xe0]
     a08: 910503ff     	add	sp, sp, #0x140
     a0c: d50323bf     	autiasp
     a10: d65f03c0     	ret
     a14: 52800220     	mov	w0, #0x11               // =17
     a18: 94000000     	bl	0xa18 <zlog_handle_work+0x400>
		0000000000000a18:  R_AARCH64_CALL26	__fortify_panic
     a1c: d42aa240     	brk	#0x5512
     a20: 94000000     	bl	0xa20 <zlog_handle_work+0x408>
		0000000000000a20:  R_AARCH64_CALL26	__stack_chk_fail
