
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000007a0 <zlog_handle_work>:
     7a0: d503233f     	paciasp
     7a4: d10503ff     	sub	sp, sp, #0x140
     7a8: a90e7bfd     	stp	x29, x30, [sp, #0xe0]
     7ac: a90f6ffc     	stp	x28, x27, [sp, #0xf0]
     7b0: a91067fa     	stp	x26, x25, [sp, #0x100]
     7b4: a9115ff8     	stp	x24, x23, [sp, #0x110]
     7b8: a91257f6     	stp	x22, x21, [sp, #0x120]
     7bc: a9134ff4     	stp	x20, x19, [sp, #0x130]
     7c0: 910383fd     	add	x29, sp, #0xe0
     7c4: d5384108     	mrs	x8, SP_EL0
     7c8: 90000013     	adrp	x19, 0x0 <.text>
		00000000000007c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f1
     7cc: 91000273     	add	x19, x19, #0x0
		00000000000007cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f1
     7d0: f9438908     	ldr	x8, [x8, #0x710]
     7d4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20b
     7d8: 91000000     	add	x0, x0, #0x0
		00000000000007d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20b
     7dc: aa1303e1     	mov	x1, x19
     7e0: aa1303e2     	mov	x2, x19
     7e4: f81f03a8     	stur	x8, [x29, #-0x10]
     7e8: 94000000     	bl	0x7e8 <zlog_handle_work+0x48>
		00000000000007e8:  R_AARCH64_CALL26	_printk
     7ec: aa1f03f4     	mov	x20, xzr
     7f0: 90000015     	adrp	x21, 0x0 <.text>
		00000000000007f0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xb0
     7f4: 910002b5     	add	x21, x21, #0x0
		00000000000007f4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0xb0
     7f8: 90000019     	adrp	x25, 0x0 <.text>
		00000000000007f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d9
     7fc: 91000339     	add	x25, x25, #0x0
		00000000000007fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d9
     800: 9000001a     	adrp	x26, 0x0 <.text>
		0000000000000800:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b1
     804: 9100035a     	add	x26, x26, #0x0
		0000000000000804:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b1
     808: 5280011b     	mov	w27, #0x8               // =8
     80c: d5384108     	mrs	x8, SP_EL0
     810: f9000be8     	str	x8, [sp, #0x10]
     814: 14000016     	b	0x86c <zlog_handle_work+0xcc>
     818: aa1a03e0     	mov	x0, x26
     81c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000081c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a3
     820: 91000021     	add	x1, x1, #0x0
		0000000000000820:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a3
     824: 94000000     	bl	0x824 <zlog_handle_work+0x84>
		0000000000000824:  R_AARCH64_CALL26	_printk
     828: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000828:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x315
     82c: 91000000     	add	x0, x0, #0x0
		000000000000082c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x315
     830: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000830:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8c
     834: 91000021     	add	x1, x1, #0x0
		0000000000000834:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8c
     838: 94000000     	bl	0x838 <zlog_handle_work+0x98>
		0000000000000838:  R_AARCH64_CALL26	_printk
     83c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000083c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x480
     840: 91000000     	add	x0, x0, #0x0
		0000000000000840:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x480
     844: aa1303e1     	mov	x1, x19
     848: aa1c03e2     	mov	x2, x28
     84c: d102c2b7     	sub	x23, x21, #0xb0
     850: 94000000     	bl	0x850 <zlog_handle_work+0xb0>
		0000000000000850:  R_AARCH64_CALL26	_printk
     854: aa1703e0     	mov	x0, x23
     858: 94000000     	bl	0x858 <zlog_handle_work+0xb8>
		0000000000000858:  R_AARCH64_CALL26	zlog_reset_client
     85c: 91000694     	add	x20, x20, #0x1
     860: 910482b5     	add	x21, x21, #0x120
     864: f100829f     	cmp	x20, #0x20
     868: 54001720     	b.eq	0xb4c <zlog_handle_work+0x3ac>
     86c: 3941a2a8     	ldrb	w8, [x21, #0x68]
     870: 34ffff68     	cbz	w8, 0x85c <zlog_handle_work+0xbc>
     874: aa1503e0     	mov	x0, x21
     878: 94000000     	bl	0x878 <zlog_handle_work+0xd8>
		0000000000000878:  R_AARCH64_CALL26	mutex_lock
     87c: f9401ea4     	ldr	x4, [x21, #0x38]
     880: d102b2bc     	sub	x28, x21, #0xac
     884: aa1903e0     	mov	x0, x25
     888: aa1303e1     	mov	x1, x19
     88c: 2a1403e2     	mov	w2, w20
     890: aa1c03e3     	mov	x3, x28
     894: 94000000     	bl	0x894 <zlog_handle_work+0xf4>
		0000000000000894:  R_AARCH64_CALL26	_printk
     898: 14000097     	b	0xaf4 <zlog_handle_work+0x354>
     89c: 9100e2a8     	add	x8, x21, #0x38
     8a0: f8fb1116     	ldclral	x27, x22, [x8]
     8a4: aa1503e0     	mov	x0, x21
     8a8: 94000000     	bl	0x8a8 <zlog_handle_work+0x108>
		00000000000008a8:  R_AARCH64_CALL26	mutex_unlock
     8ac: 361ffd96     	tbz	w22, #0x3, 0x85c <zlog_handle_work+0xbc>
     8b0: aa1503e0     	mov	x0, x21
     8b4: 94000000     	bl	0x8b4 <zlog_handle_work+0x114>
		00000000000008b4:  R_AARCH64_CALL26	mutex_lock
     8b8: f94026a8     	ldr	x8, [x21, #0x48]
     8bc: aa1503e0     	mov	x0, x21
     8c0: 9106e918     	add	x24, x8, #0x1ba
     8c4: 94000000     	bl	0x8c4 <zlog_handle_work+0x124>
		00000000000008c4:  R_AARCH64_CALL26	mutex_unlock
     8c8: d503201f     	nop
     8cc: aa1803e0     	mov	x0, x24
     8d0: 5281b801     	mov	w1, #0xdc0              // =3520
     8d4: 94000000     	bl	0x8d4 <zlog_handle_work+0x134>
		00000000000008d4:  R_AARCH64_CALL26	__kmalloc_noprof
     8d8: aa0003f7     	mov	x23, x0
     8dc: b4fff9f7     	cbz	x23, 0x818 <zlog_handle_work+0x78>
     8e0: aa1503e0     	mov	x0, x21
     8e4: a90c7fff     	stp	xzr, xzr, [sp, #0xc0]
     8e8: a90b7fff     	stp	xzr, xzr, [sp, #0xb0]
     8ec: a90a7fff     	stp	xzr, xzr, [sp, #0xa0]
     8f0: a9097fff     	stp	xzr, xzr, [sp, #0x90]
     8f4: a9087fff     	stp	xzr, xzr, [sp, #0x80]
     8f8: a9077fff     	stp	xzr, xzr, [sp, #0x70]
     8fc: a9067fff     	stp	xzr, xzr, [sp, #0x60]
     900: a9057fff     	stp	xzr, xzr, [sp, #0x50]
     904: 94000000     	bl	0x904 <zlog_handle_work+0x164>
		0000000000000904:  R_AARCH64_CALL26	mutex_lock
     908: 910103e0     	add	x0, sp, #0x40
     90c: a9047fff     	stp	xzr, xzr, [sp, #0x40]
     910: b9003bff     	str	wzr, [sp, #0x38]
     914: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     918: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     91c: 94000000     	bl	0x91c <zlog_handle_work+0x17c>
		000000000000091c:  R_AARCH64_CALL26	ktime_get_real_ts64
     920: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000920:  R_AARCH64_ADR_PREL_PG_HI21	sys_tz
     924: 910063e1     	add	x1, sp, #0x18
     928: b9400108     	ldr	w8, [x8]
		0000000000000928:  R_AARCH64_LDST32_ABS_LO12_NC	sys_tz
     92c: 531a6509     	lsl	w9, w8, #6
     930: 4b080928     	sub	w8, w9, w8, lsl #2
     934: f94023e9     	ldr	x9, [sp, #0x40]
     938: cb28c120     	sub	x0, x9, w8, sxtw
     93c: f90023e0     	str	x0, [sp, #0x40]
     940: 94000000     	bl	0x940 <zlog_handle_work+0x1a0>
		0000000000000940:  R_AARCH64_CALL26	rtc_time64_to_tm
     944: 294523e9     	ldp	w9, w8, [sp, #0x28]
     948: 294413e5     	ldp	w5, w4, [sp, #0x20]
     94c: 29431be7     	ldp	w7, w6, [sp, #0x18]
     950: 910143e0     	add	x0, sp, #0x50
     954: 111db102     	add	w2, w8, #0x76c
     958: 11000523     	add	w3, w9, #0x1
     95c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000095c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x255
     960: 91000021     	add	x1, x1, #0x0
		0000000000000960:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x255
     964: 94000000     	bl	0x964 <zlog_handle_work+0x1c4>
		0000000000000964:  R_AARCH64_CALL26	sprintf
     968: b94032a3     	ldr	w3, [x21, #0x30]
     96c: 2a0003f9     	mov	w25, w0
     970: aa1703e0     	mov	x0, x23
     974: aa1803e1     	mov	x1, x24
     978: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000978:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dd
     97c: 91000042     	add	x2, x2, #0x0
		000000000000097c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dd
     980: 94000000     	bl	0x980 <zlog_handle_work+0x1e0>
		0000000000000980:  R_AARCH64_CALL26	snprintf
     984: 294626a8     	ldp	w8, w9, [x21, #0x30]
     988: 2a0003fa     	mov	w26, w0
     98c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000098c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f2
     990: 91000042     	add	x2, x2, #0x0
		0000000000000990:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f2
     994: 93407f4a     	sxtw	x10, w26
     998: 2a086123     	orr	w3, w9, w8, lsl #24
     99c: cb0a0301     	sub	x1, x24, x10
     9a0: 8b0a02e0     	add	x0, x23, x10
     9a4: 94000000     	bl	0x9a4 <zlog_handle_work+0x204>
		00000000000009a4:  R_AARCH64_CALL26	snprintf
     9a8: 0b1a0016     	add	w22, w0, w26
     9ac: 7100073f     	cmp	w25, #0x1
     9b0: 2a1603fa     	mov	w26, w22
     9b4: 540001ab     	b.lt	0x9e8 <zlog_handle_work+0x248>
     9b8: 7102033f     	cmp	w25, #0x80
     9bc: 54000f42     	b.hs	0xba4 <zlog_handle_work+0x404>
     9c0: 93407ec8     	sxtw	x8, w22
     9c4: 910143e9     	add	x9, sp, #0x50
     9c8: 910143e3     	add	x3, sp, #0x50
     9cc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000009cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e2
     9d0: 91000042     	add	x2, x2, #0x0
		00000000000009d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e2
     9d4: 3839493f     	strb	wzr, [x9, w25, uxtw]
     9d8: cb080301     	sub	x1, x24, x8
     9dc: 8b0802e0     	add	x0, x23, x8
     9e0: 94000000     	bl	0x9e0 <zlog_handle_work+0x240>
		00000000000009e0:  R_AARCH64_CALL26	snprintf
     9e4: 0b16001a     	add	w26, w0, w22
     9e8: 93407f48     	sxtw	x8, w26
     9ec: 90000002     	adrp	x2, 0x0 <.text>
		00000000000009ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b5
     9f0: 91000042     	add	x2, x2, #0x0
		00000000000009f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b5
     9f4: aa1c03e3     	mov	x3, x28
     9f8: cb080301     	sub	x1, x24, x8
     9fc: 8b0802e0     	add	x0, x23, x8
     a00: 94000000     	bl	0xa00 <zlog_handle_work+0x260>
		0000000000000a00:  R_AARCH64_CALL26	snprintf
     a04: 0b1a0016     	add	w22, w0, w26
     a08: d10232a3     	sub	x3, x21, #0x8c
     a0c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x572
     a10: 91000042     	add	x2, x2, #0x0
		0000000000000a10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x572
     a14: 93407ec8     	sxtw	x8, w22
     a18: cb080301     	sub	x1, x24, x8
     a1c: 8b0802e0     	add	x0, x23, x8
     a20: 94000000     	bl	0xa20 <zlog_handle_work+0x280>
		0000000000000a20:  R_AARCH64_CALL26	snprintf
     a24: 0b160016     	add	w22, w0, w22
     a28: d100b2a3     	sub	x3, x21, #0x2c
     a2c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a9
     a30: 91000042     	add	x2, x2, #0x0
		0000000000000a30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a9
     a34: 93407ec8     	sxtw	x8, w22
     a38: cb080301     	sub	x1, x24, x8
     a3c: 8b0802e0     	add	x0, x23, x8
     a40: 94000000     	bl	0xa40 <zlog_handle_work+0x2a0>
		0000000000000a40:  R_AARCH64_CALL26	snprintf
     a44: 0b160016     	add	w22, w0, w22
     a48: d101b2a3     	sub	x3, x21, #0x6c
     a4c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e
     a50: 91000042     	add	x2, x2, #0x0
		0000000000000a50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e
     a54: 93407ec8     	sxtw	x8, w22
     a58: cb080301     	sub	x1, x24, x8
     a5c: 8b0802e0     	add	x0, x23, x8
     a60: 94000000     	bl	0xa60 <zlog_handle_work+0x2c0>
		0000000000000a60:  R_AARCH64_CALL26	snprintf
     a64: 0b160016     	add	w22, w0, w22
     a68: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x76a
     a6c: 91000042     	add	x2, x2, #0x0
		0000000000000a6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x76a
     a70: 93407ec8     	sxtw	x8, w22
     a74: cb080301     	sub	x1, x24, x8
     a78: 8b0802e0     	add	x0, x23, x8
     a7c: 94000000     	bl	0xa7c <zlog_handle_work+0x2dc>
		0000000000000a7c:  R_AARCH64_CALL26	snprintf
     a80: 0b160008     	add	w8, w0, w22
     a84: f94026a2     	ldr	x2, [x21, #0x48]
     a88: 93407d19     	sxtw	x25, w8
     a8c: eb190308     	subs	x8, x24, x25
     a90: 9a8833e1     	csel	x1, xzr, x8, lo
     a94: eb02003f     	cmp	x1, x2
     a98: 54000823     	b.lo	0xb9c <zlog_handle_work+0x3fc>
     a9c: f9402ea1     	ldr	x1, [x21, #0x58]
     aa0: 8b1902e0     	add	x0, x23, x25
     aa4: 94000000     	bl	0xaa4 <zlog_handle_work+0x304>
		0000000000000aa4:  R_AARCH64_CALL26	memcpy
     aa8: f94026b6     	ldr	x22, [x21, #0x48]
     aac: aa1503e0     	mov	x0, x21
     ab0: 94000000     	bl	0xab0 <zlog_handle_work+0x310>
		0000000000000ab0:  R_AARCH64_CALL26	mutex_unlock
     ab4: 8b1902c1     	add	x1, x22, x25
     ab8: aa1703e0     	mov	x0, x23
     abc: 94000000     	bl	0xabc <zlog_handle_work+0x31c>
		0000000000000abc:  R_AARCH64_CALL26	zlog_write_internal
     ac0: 9000001a     	adrp	x26, 0x0 <.text>
		0000000000000ac0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b1
     ac4: 9100035a     	add	x26, x26, #0x0
		0000000000000ac4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b1
     ac8: 36f800c0     	tbz	w0, #0x1f, 0xae0 <zlog_handle_work+0x340>
     acc: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000acc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52f
     ad0: 91000000     	add	x0, x0, #0x0
		0000000000000ad0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52f
     ad4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ad4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8c
     ad8: 91000021     	add	x1, x1, #0x0
		0000000000000ad8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8c
     adc: 94000000     	bl	0xadc <zlog_handle_work+0x33c>
		0000000000000adc:  R_AARCH64_CALL26	_printk
     ae0: aa1703e0     	mov	x0, x23
     ae4: 94000000     	bl	0xae4 <zlog_handle_work+0x344>
		0000000000000ae4:  R_AARCH64_CALL26	kfree
     ae8: 90000019     	adrp	x25, 0x0 <.text>
		0000000000000ae8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d9
     aec: 91000339     	add	x25, x25, #0x0
		0000000000000aec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d9
     af0: 17ffff53     	b	0x83c <zlog_handle_work+0x9c>
     af4: 9100e2a8     	add	x8, x21, #0x38
     af8: f9800111     	prfm	pstl1strm, [x8]
     afc: c85f7d16     	ldxr	x22, [x8]
     b00: 8a3b02c9     	bic	x9, x22, x27
     b04: c80afd09     	stlxr	w10, x9, [x8]
     b08: 35ffffaa     	cbnz	w10, 0xafc <zlog_handle_work+0x35c>
     b0c: d5033bbf     	dmb	ish
     b10: 17ffff65     	b	0x8a4 <zlog_handle_work+0x104>
     b14: f9400bf6     	ldr	x22, [sp, #0x10]
     b18: aa1803e0     	mov	x0, x24
     b1c: 5281b801     	mov	w1, #0xdc0              // =3520
     b20: f9402ac8     	ldr	x8, [x22, #0x50]
     b24: f90007e8     	str	x8, [sp, #0x8]
     b28: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000b28:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x28
     b2c: 91000108     	add	x8, x8, #0x0
		0000000000000b2c:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x28
     b30: f9002ac8     	str	x8, [x22, #0x50]
     b34: 94000000     	bl	0xb34 <zlog_handle_work+0x394>
		0000000000000b34:  R_AARCH64_CALL26	__kmalloc_noprof
     b38: f94007e8     	ldr	x8, [sp, #0x8]
     b3c: aa0003f7     	mov	x23, x0
     b40: f9002ac8     	str	x8, [x22, #0x50]
     b44: b4ffe6b7     	cbz	x23, 0x818 <zlog_handle_work+0x78>
     b48: 17ffff66     	b	0x8e0 <zlog_handle_work+0x140>
     b4c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f1
     b50: 91000021     	add	x1, x1, #0x0
		0000000000000b50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f1
     b54: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x697
     b58: 91000000     	add	x0, x0, #0x0
		0000000000000b58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x697
     b5c: aa0103e2     	mov	x2, x1
     b60: 94000000     	bl	0xb60 <zlog_handle_work+0x3c0>
		0000000000000b60:  R_AARCH64_CALL26	_printk
     b64: d5384108     	mrs	x8, SP_EL0
     b68: f9438908     	ldr	x8, [x8, #0x710]
     b6c: f85f03a9     	ldur	x9, [x29, #-0x10]
     b70: eb09011f     	cmp	x8, x9
     b74: 540001a1     	b.ne	0xba8 <zlog_handle_work+0x408>
     b78: a9534ff4     	ldp	x20, x19, [sp, #0x130]
     b7c: a95257f6     	ldp	x22, x21, [sp, #0x120]
     b80: a9515ff8     	ldp	x24, x23, [sp, #0x110]
     b84: a95067fa     	ldp	x26, x25, [sp, #0x100]
     b88: a94f6ffc     	ldp	x28, x27, [sp, #0xf0]
     b8c: a94e7bfd     	ldp	x29, x30, [sp, #0xe0]
     b90: 910503ff     	add	sp, sp, #0x140
     b94: d50323bf     	autiasp
     b98: d65f03c0     	ret
     b9c: 52800220     	mov	w0, #0x11               // =17
     ba0: 94000000     	bl	0xba0 <zlog_handle_work+0x400>
		0000000000000ba0:  R_AARCH64_CALL26	__fortify_panic
     ba4: d42aa240     	brk	#0x5512
     ba8: 94000000     	bl	0xba8 <zlog_handle_work+0x408>
		0000000000000ba8:  R_AARCH64_CALL26	__stack_chk_fail
