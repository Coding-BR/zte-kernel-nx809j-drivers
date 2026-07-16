
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000794 <zlog_handle_work>:
     794: d503233f     	paciasp
     798: d10503ff     	sub	sp, sp, #0x140
     79c: a90e7bfd     	stp	x29, x30, [sp, #0xe0]
     7a0: a90f6ffc     	stp	x28, x27, [sp, #0xf0]
     7a4: a91067fa     	stp	x26, x25, [sp, #0x100]
     7a8: a9115ff8     	stp	x24, x23, [sp, #0x110]
     7ac: a91257f6     	stp	x22, x21, [sp, #0x120]
     7b0: a9134ff4     	stp	x20, x19, [sp, #0x130]
     7b4: 910383fd     	add	x29, sp, #0xe0
     7b8: d5384108     	mrs	x8, SP_EL0
     7bc: 90000013     	adrp	x19, 0x0 <.text>
		00000000000007bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4db
     7c0: 91000273     	add	x19, x19, #0x0
		00000000000007c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4db
     7c4: f9438908     	ldr	x8, [x8, #0x710]
     7c8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20b
     7cc: 91000000     	add	x0, x0, #0x0
		00000000000007cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20b
     7d0: aa1303e1     	mov	x1, x19
     7d4: aa1303e2     	mov	x2, x19
     7d8: f81f03a8     	stur	x8, [x29, #-0x10]
     7dc: 94000000     	bl	0x7dc <zlog_handle_work+0x48>
		00000000000007dc:  R_AARCH64_CALL26	_printk
     7e0: aa1f03f4     	mov	x20, xzr
     7e4: 90000015     	adrp	x21, 0x0 <.text>
		00000000000007e4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xb0
     7e8: 910002b5     	add	x21, x21, #0x0
		00000000000007e8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0xb0
     7ec: 90000019     	adrp	x25, 0x0 <.text>
		00000000000007ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d9
     7f0: 91000339     	add	x25, x25, #0x0
		00000000000007f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d9
     7f4: 9000001a     	adrp	x26, 0x0 <.text>
		00000000000007f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x681
     7f8: 9100035a     	add	x26, x26, #0x0
		00000000000007f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x681
     7fc: 5280011b     	mov	w27, #0x8               // =8
     800: d5384108     	mrs	x8, SP_EL0
     804: f9000be8     	str	x8, [sp, #0x10]
     808: 14000016     	b	0x860 <zlog_handle_work+0xcc>
     80c: aa1a03e0     	mov	x0, x26
     810: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000810:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x46a
     814: 91000021     	add	x1, x1, #0x0
		0000000000000814:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x46a
     818: 94000000     	bl	0x818 <zlog_handle_work+0x84>
		0000000000000818:  R_AARCH64_CALL26	_printk
     81c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000081c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d4
     820: 91000000     	add	x0, x0, #0x0
		0000000000000820:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d4
     824: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000824:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8c
     828: 91000021     	add	x1, x1, #0x0
		0000000000000828:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8c
     82c: 94000000     	bl	0x82c <zlog_handle_work+0x98>
		000000000000082c:  R_AARCH64_CALL26	_printk
     830: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000830:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x47c
     834: 91000000     	add	x0, x0, #0x0
		0000000000000834:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x47c
     838: aa1303e1     	mov	x1, x19
     83c: aa1c03e2     	mov	x2, x28
     840: d102c2b7     	sub	x23, x21, #0xb0
     844: 94000000     	bl	0x844 <zlog_handle_work+0xb0>
		0000000000000844:  R_AARCH64_CALL26	_printk
     848: aa1703e0     	mov	x0, x23
     84c: 94000000     	bl	0x84c <zlog_handle_work+0xb8>
		000000000000084c:  R_AARCH64_CALL26	zlog_reset_client
     850: 91000694     	add	x20, x20, #0x1
     854: 910482b5     	add	x21, x21, #0x120
     858: f100829f     	cmp	x20, #0x20
     85c: 54001720     	b.eq	0xb40 <zlog_handle_work+0x3ac>
     860: 3941a2a8     	ldrb	w8, [x21, #0x68]
     864: 34ffff68     	cbz	w8, 0x850 <zlog_handle_work+0xbc>
     868: aa1503e0     	mov	x0, x21
     86c: 94000000     	bl	0x86c <zlog_handle_work+0xd8>
		000000000000086c:  R_AARCH64_CALL26	mutex_lock
     870: f9401ea4     	ldr	x4, [x21, #0x38]
     874: d102b2bc     	sub	x28, x21, #0xac
     878: aa1903e0     	mov	x0, x25
     87c: aa1303e1     	mov	x1, x19
     880: 2a1403e2     	mov	w2, w20
     884: aa1c03e3     	mov	x3, x28
     888: 94000000     	bl	0x888 <zlog_handle_work+0xf4>
		0000000000000888:  R_AARCH64_CALL26	_printk
     88c: 14000097     	b	0xae8 <zlog_handle_work+0x354>
     890: 9100e2a8     	add	x8, x21, #0x38
     894: f8fb1116     	ldclral	x27, x22, [x8]
     898: aa1503e0     	mov	x0, x21
     89c: 94000000     	bl	0x89c <zlog_handle_work+0x108>
		000000000000089c:  R_AARCH64_CALL26	mutex_unlock
     8a0: 361ffd96     	tbz	w22, #0x3, 0x850 <zlog_handle_work+0xbc>
     8a4: aa1503e0     	mov	x0, x21
     8a8: 94000000     	bl	0x8a8 <zlog_handle_work+0x114>
		00000000000008a8:  R_AARCH64_CALL26	mutex_lock
     8ac: f94026a8     	ldr	x8, [x21, #0x48]
     8b0: aa1503e0     	mov	x0, x21
     8b4: 9106e918     	add	x24, x8, #0x1ba
     8b8: 94000000     	bl	0x8b8 <zlog_handle_work+0x124>
		00000000000008b8:  R_AARCH64_CALL26	mutex_unlock
     8bc: d503201f     	nop
     8c0: aa1803e0     	mov	x0, x24
     8c4: 5281b801     	mov	w1, #0xdc0              // =3520
     8c8: 94000000     	bl	0x8c8 <zlog_handle_work+0x134>
		00000000000008c8:  R_AARCH64_CALL26	__kmalloc_noprof
     8cc: aa0003f7     	mov	x23, x0
     8d0: b4fff9f7     	cbz	x23, 0x80c <zlog_handle_work+0x78>
     8d4: aa1503e0     	mov	x0, x21
     8d8: a9047fff     	stp	xzr, xzr, [sp, #0x40]
     8dc: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     8e0: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     8e4: b9003bff     	str	wzr, [sp, #0x38]
     8e8: a9057fff     	stp	xzr, xzr, [sp, #0x50]
     8ec: a9067fff     	stp	xzr, xzr, [sp, #0x60]
     8f0: a9077fff     	stp	xzr, xzr, [sp, #0x70]
     8f4: a9087fff     	stp	xzr, xzr, [sp, #0x80]
     8f8: a9097fff     	stp	xzr, xzr, [sp, #0x90]
     8fc: a90a7fff     	stp	xzr, xzr, [sp, #0xa0]
     900: a90b7fff     	stp	xzr, xzr, [sp, #0xb0]
     904: a90c7fff     	stp	xzr, xzr, [sp, #0xc0]
     908: 94000000     	bl	0x908 <zlog_handle_work+0x174>
		0000000000000908:  R_AARCH64_CALL26	mutex_lock
     90c: 910103e0     	add	x0, sp, #0x40
     910: 94000000     	bl	0x910 <zlog_handle_work+0x17c>
		0000000000000910:  R_AARCH64_CALL26	ktime_get_real_ts64
     914: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000914:  R_AARCH64_ADR_PREL_PG_HI21	sys_tz
     918: 910063e1     	add	x1, sp, #0x18
     91c: b9400108     	ldr	w8, [x8]
		000000000000091c:  R_AARCH64_LDST32_ABS_LO12_NC	sys_tz
     920: 531a6509     	lsl	w9, w8, #6
     924: 4b080928     	sub	w8, w9, w8, lsl #2
     928: f94023e9     	ldr	x9, [sp, #0x40]
     92c: cb28c120     	sub	x0, x9, w8, sxtw
     930: f90023e0     	str	x0, [sp, #0x40]
     934: 94000000     	bl	0x934 <zlog_handle_work+0x1a0>
		0000000000000934:  R_AARCH64_CALL26	rtc_time64_to_tm
     938: 294523e9     	ldp	w9, w8, [sp, #0x28]
     93c: 294413e5     	ldp	w5, w4, [sp, #0x20]
     940: 29431be7     	ldp	w7, w6, [sp, #0x18]
     944: 910143e0     	add	x0, sp, #0x50
     948: 111db102     	add	w2, w8, #0x76c
     94c: 11000523     	add	w3, w9, #0x1
     950: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000950:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x255
     954: 91000021     	add	x1, x1, #0x0
		0000000000000954:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x255
     958: 94000000     	bl	0x958 <zlog_handle_work+0x1c4>
		0000000000000958:  R_AARCH64_CALL26	sprintf
     95c: b94032a3     	ldr	w3, [x21, #0x30]
     960: 2a0003f9     	mov	w25, w0
     964: aa1703e0     	mov	x0, x23
     968: aa1803e1     	mov	x1, x24
     96c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000096c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29c
     970: 91000042     	add	x2, x2, #0x0
		0000000000000970:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29c
     974: 94000000     	bl	0x974 <zlog_handle_work+0x1e0>
		0000000000000974:  R_AARCH64_CALL26	snprintf
     978: 294622a9     	ldp	w9, w8, [x21, #0x30]
     97c: 2a0003fa     	mov	w26, w0
     980: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000980:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6dc
     984: 91000042     	add	x2, x2, #0x0
		0000000000000984:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6dc
     988: 93407f4a     	sxtw	x10, w26
     98c: 2a096103     	orr	w3, w8, w9, lsl #24
     990: cb0a0301     	sub	x1, x24, x10
     994: 8b0a02e0     	add	x0, x23, x10
     998: 94000000     	bl	0x998 <zlog_handle_work+0x204>
		0000000000000998:  R_AARCH64_CALL26	snprintf
     99c: 0b1a0016     	add	w22, w0, w26
     9a0: 7100073f     	cmp	w25, #0x1
     9a4: 2a1603fa     	mov	w26, w22
     9a8: 540001ab     	b.lt	0x9dc <zlog_handle_work+0x248>
     9ac: 7101ff3f     	cmp	w25, #0x7f
     9b0: 54000f48     	b.hi	0xb98 <zlog_handle_work+0x404>
     9b4: 93407ec8     	sxtw	x8, w22
     9b8: 910143e9     	add	x9, sp, #0x50
     9bc: 910143e3     	add	x3, sp, #0x50
     9c0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000009c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3cc
     9c4: 91000042     	add	x2, x2, #0x0
		00000000000009c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3cc
     9c8: 3839493f     	strb	wzr, [x9, w25, uxtw]
     9cc: cb080301     	sub	x1, x24, x8
     9d0: 8b0802e0     	add	x0, x23, x8
     9d4: 94000000     	bl	0x9d4 <zlog_handle_work+0x240>
		00000000000009d4:  R_AARCH64_CALL26	snprintf
     9d8: 0b16001a     	add	w26, w0, w22
     9dc: 93407f48     	sxtw	x8, w26
     9e0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000009e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x49f
     9e4: 91000042     	add	x2, x2, #0x0
		00000000000009e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x49f
     9e8: aa1c03e3     	mov	x3, x28
     9ec: cb080301     	sub	x1, x24, x8
     9f0: 8b0802e0     	add	x0, x23, x8
     9f4: 94000000     	bl	0x9f4 <zlog_handle_work+0x260>
		00000000000009f4:  R_AARCH64_CALL26	snprintf
     9f8: 0b1a0016     	add	w22, w0, w26
     9fc: d10232a3     	sub	x3, x21, #0x8c
     a00: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x55c
     a04: 91000042     	add	x2, x2, #0x0
		0000000000000a04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x55c
     a08: 93407ec8     	sxtw	x8, w22
     a0c: cb080301     	sub	x1, x24, x8
     a10: 8b0802e0     	add	x0, x23, x8
     a14: 94000000     	bl	0xa14 <zlog_handle_work+0x280>
		0000000000000a14:  R_AARCH64_CALL26	snprintf
     a18: 0b0002d6     	add	w22, w22, w0
     a1c: d100b2a3     	sub	x3, x21, #0x2c
     a20: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x393
     a24: 91000042     	add	x2, x2, #0x0
		0000000000000a24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x393
     a28: 93407ec8     	sxtw	x8, w22
     a2c: cb080301     	sub	x1, x24, x8
     a30: 8b0802e0     	add	x0, x23, x8
     a34: 94000000     	bl	0xa34 <zlog_handle_work+0x2a0>
		0000000000000a34:  R_AARCH64_CALL26	snprintf
     a38: 0b0002d6     	add	w22, w22, w0
     a3c: d101b2a3     	sub	x3, x21, #0x6c
     a40: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e
     a44: 91000042     	add	x2, x2, #0x0
		0000000000000a44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e
     a48: 93407ec8     	sxtw	x8, w22
     a4c: cb080301     	sub	x1, x24, x8
     a50: 8b0802e0     	add	x0, x23, x8
     a54: 94000000     	bl	0xa54 <zlog_handle_work+0x2c0>
		0000000000000a54:  R_AARCH64_CALL26	snprintf
     a58: 0b0002d6     	add	w22, w22, w0
     a5c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x754
     a60: 91000042     	add	x2, x2, #0x0
		0000000000000a60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x754
     a64: 93407ec8     	sxtw	x8, w22
     a68: cb080301     	sub	x1, x24, x8
     a6c: 8b0802e0     	add	x0, x23, x8
     a70: 94000000     	bl	0xa70 <zlog_handle_work+0x2dc>
		0000000000000a70:  R_AARCH64_CALL26	snprintf
     a74: 0b0002c8     	add	w8, w22, w0
     a78: f94026a2     	ldr	x2, [x21, #0x48]
     a7c: 93407d19     	sxtw	x25, w8
     a80: eb190308     	subs	x8, x24, x25
     a84: 9a8833e1     	csel	x1, xzr, x8, lo
     a88: eb02003f     	cmp	x1, x2
     a8c: 54000823     	b.lo	0xb90 <zlog_handle_work+0x3fc>
     a90: f9402ea1     	ldr	x1, [x21, #0x58]
     a94: 8b1902e0     	add	x0, x23, x25
     a98: 94000000     	bl	0xa98 <zlog_handle_work+0x304>
		0000000000000a98:  R_AARCH64_CALL26	memcpy
     a9c: f94026b6     	ldr	x22, [x21, #0x48]
     aa0: aa1503e0     	mov	x0, x21
     aa4: 94000000     	bl	0xaa4 <zlog_handle_work+0x310>
		0000000000000aa4:  R_AARCH64_CALL26	mutex_unlock
     aa8: 8b1902c1     	add	x1, x22, x25
     aac: aa1703e0     	mov	x0, x23
     ab0: 94000000     	bl	0xab0 <zlog_handle_work+0x31c>
		0000000000000ab0:  R_AARCH64_CALL26	zlog_write_internal
     ab4: 9000001a     	adrp	x26, 0x0 <.text>
		0000000000000ab4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x681
     ab8: 9100035a     	add	x26, x26, #0x0
		0000000000000ab8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x681
     abc: 36f800c0     	tbz	w0, #0x1f, 0xad4 <zlog_handle_work+0x340>
     ac0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ac0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x519
     ac4: 91000000     	add	x0, x0, #0x0
		0000000000000ac4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x519
     ac8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ac8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8c
     acc: 91000021     	add	x1, x1, #0x0
		0000000000000acc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8c
     ad0: 94000000     	bl	0xad0 <zlog_handle_work+0x33c>
		0000000000000ad0:  R_AARCH64_CALL26	_printk
     ad4: aa1703e0     	mov	x0, x23
     ad8: 94000000     	bl	0xad8 <zlog_handle_work+0x344>
		0000000000000ad8:  R_AARCH64_CALL26	kfree
     adc: 90000019     	adrp	x25, 0x0 <.text>
		0000000000000adc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d9
     ae0: 91000339     	add	x25, x25, #0x0
		0000000000000ae0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d9
     ae4: 17ffff53     	b	0x830 <zlog_handle_work+0x9c>
     ae8: 9100e2a8     	add	x8, x21, #0x38
     aec: f9800111     	prfm	pstl1strm, [x8]
     af0: c85f7d16     	ldxr	x22, [x8]
     af4: 8a3b02c9     	bic	x9, x22, x27
     af8: c80afd09     	stlxr	w10, x9, [x8]
     afc: 35ffffaa     	cbnz	w10, 0xaf0 <zlog_handle_work+0x35c>
     b00: d5033bbf     	dmb	ish
     b04: 17ffff65     	b	0x898 <zlog_handle_work+0x104>
     b08: f9400bf6     	ldr	x22, [sp, #0x10]
     b0c: aa1803e0     	mov	x0, x24
     b10: 5281b801     	mov	w1, #0xdc0              // =3520
     b14: f9402ac8     	ldr	x8, [x22, #0x50]
     b18: f90007e8     	str	x8, [sp, #0x8]
     b1c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000b1c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x28
     b20: 91000108     	add	x8, x8, #0x0
		0000000000000b20:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x28
     b24: f9002ac8     	str	x8, [x22, #0x50]
     b28: 94000000     	bl	0xb28 <zlog_handle_work+0x394>
		0000000000000b28:  R_AARCH64_CALL26	__kmalloc_noprof
     b2c: f94007e8     	ldr	x8, [sp, #0x8]
     b30: aa0003f7     	mov	x23, x0
     b34: f9002ac8     	str	x8, [x22, #0x50]
     b38: b4ffe6b7     	cbz	x23, 0x80c <zlog_handle_work+0x78>
     b3c: 17ffff66     	b	0x8d4 <zlog_handle_work+0x140>
     b40: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4db
     b44: 91000021     	add	x1, x1, #0x0
		0000000000000b44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4db
     b48: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ad
     b4c: 91000000     	add	x0, x0, #0x0
		0000000000000b4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ad
     b50: aa0103e2     	mov	x2, x1
     b54: 94000000     	bl	0xb54 <zlog_handle_work+0x3c0>
		0000000000000b54:  R_AARCH64_CALL26	_printk
     b58: d5384108     	mrs	x8, SP_EL0
     b5c: f9438908     	ldr	x8, [x8, #0x710]
     b60: f85f03a9     	ldur	x9, [x29, #-0x10]
     b64: eb09011f     	cmp	x8, x9
     b68: 540001a1     	b.ne	0xb9c <zlog_handle_work+0x408>
     b6c: a9534ff4     	ldp	x20, x19, [sp, #0x130]
     b70: a95257f6     	ldp	x22, x21, [sp, #0x120]
     b74: a9515ff8     	ldp	x24, x23, [sp, #0x110]
     b78: a95067fa     	ldp	x26, x25, [sp, #0x100]
     b7c: a94f6ffc     	ldp	x28, x27, [sp, #0xf0]
     b80: a94e7bfd     	ldp	x29, x30, [sp, #0xe0]
     b84: 910503ff     	add	sp, sp, #0x140
     b88: d50323bf     	autiasp
     b8c: d65f03c0     	ret
     b90: 52800220     	mov	w0, #0x11               // =17
     b94: 94000000     	bl	0xb94 <zlog_handle_work+0x400>
		0000000000000b94:  R_AARCH64_CALL26	__fortify_panic
     b98: d42aa240     	brk	#0x5512
     b9c: 94000000     	bl	0xb9c <zlog_handle_work+0x408>
		0000000000000b9c:  R_AARCH64_CALL26	__stack_chk_fail
