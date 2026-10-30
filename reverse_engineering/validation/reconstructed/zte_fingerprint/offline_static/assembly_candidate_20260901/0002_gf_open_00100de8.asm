
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000006c0 <gf_open>:
     6c0: d503233f     	paciasp
     6c4: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     6c8: f9000bf7     	str	x23, [sp, #0x10]
     6cc: a90257f6     	stp	x22, x21, [sp, #0x20]
     6d0: a9034ff4     	stp	x20, x19, [sp, #0x30]
     6d4: 910003fd     	mov	x29, sp
     6d8: aa0103f4     	mov	x20, x1
     6dc: aa0003f5     	mov	x21, x0
     6e0: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		00000000000006e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x664
     6e4: 91000000     	add	x0, x0, #0x0
		00000000000006e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x664
     6e8: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		00000000000006e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa83
     6ec: 91000021     	add	x1, x1, #0x0
		00000000000006ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa83
     6f0: 94000000     	bl	0x6f0 <gf_open+0x30>
		00000000000006f0:  R_AARCH64_CALL26	_printk
     6f4: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		00000000000006f4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     6f8: 91000000     	add	x0, x0, #0x0
		00000000000006f8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     6fc: 94000000     	bl	0x6fc <gf_open+0x3c>
		00000000000006fc:  R_AARCH64_CALL26	mutex_lock
     700: 90000008     	adrp	x8, 0x0 <zte_goodix_pinctrl_select>
		0000000000000700:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x60
     704: 91000108     	add	x8, x8, #0x0
		0000000000000704:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x60
     708: aa0803f7     	mov	x23, x8
     70c: f94002f7     	ldr	x23, [x23]
     710: eb0802ff     	cmp	x23, x8
     714: 54000880     	b.eq	0x824 <gf_open+0x164>
     718: b85f82e9     	ldur	w9, [x23, #-0x8]
     71c: b9404eaa     	ldr	w10, [x21, #0x4c]
     720: 6b0a013f     	cmp	w9, w10
     724: 54ffff41     	b.ne	0x70c <gf_open+0x4c>
     728: 90000016     	adrp	x22, 0x0 <zte_goodix_pinctrl_select>
		0000000000000728:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa83
     72c: 910002d6     	add	x22, x22, #0x0
		000000000000072c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa83
     730: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000730:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xae8
     734: 91000000     	add	x0, x0, #0x0
		0000000000000734:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xae8
     738: aa1603e1     	mov	x1, x22
     73c: d10022f3     	sub	x19, x23, #0x8
     740: 94000000     	bl	0x740 <gf_open+0x80>
		0000000000000740:  R_AARCH64_CALL26	_printk
     744: b94032e8     	ldr	w8, [x23, #0x30]
     748: aa1503e0     	mov	x0, x21
     74c: aa1403e1     	mov	x1, x20
     750: 11000508     	add	w8, w8, #0x1
     754: b90032e8     	str	w8, [x23, #0x30]
     758: f9001293     	str	x19, [x20, #0x20]
     75c: 94000000     	bl	0x75c <gf_open+0x9c>
		000000000000075c:  R_AARCH64_CALL26	nonseekable_open
     760: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000760:  R_AARCH64_ADR_PREL_PG_HI21	goodix_zlog_fp_dev
     764: 91000000     	add	x0, x0, #0x0
		0000000000000764:  R_AARCH64_ADD_ABS_LO12_NC	goodix_zlog_fp_dev
     768: 94000000     	bl	0x768 <gf_open+0xa8>
		0000000000000768:  R_AARCH64_CALL26	zlog_register_client
     76c: aa0003e2     	mov	x2, x0
     770: f9003ae0     	str	x0, [x23, #0x70]
     774: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000774:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xee2
     778: 91000000     	add	x0, x0, #0x0
		0000000000000778:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xee2
     77c: aa1603e1     	mov	x1, x22
     780: 94000000     	bl	0x780 <gf_open+0xc0>
		0000000000000780:  R_AARCH64_CALL26	_printk
     784: b94032e2     	ldr	w2, [x23, #0x30]
     788: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000788:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x900
     78c: 91000000     	add	x0, x0, #0x0
		000000000000078c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x900
     790: aa1603e1     	mov	x1, x22
     794: 94000000     	bl	0x794 <gf_open+0xd4>
		0000000000000794:  R_AARCH64_CALL26	_printk
     798: b94032e8     	ldr	w8, [x23, #0x30]
     79c: 7100051f     	cmp	w8, #0x1
     7a0: 54000361     	b.ne	0x80c <gf_open+0x14c>
     7a4: aa1303e0     	mov	x0, x19
     7a8: 94000249     	bl	0x10cc <gf_parse_dts>
     7ac: 2a0003f4     	mov	w20, w0
     7b0: 350007a0     	cbnz	w0, 0x8a4 <gf_open+0x1e4>
     7b4: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		00000000000007b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe7a
     7b8: 91000000     	add	x0, x0, #0x0
		00000000000007b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe7a
     7bc: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		00000000000007bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa83
     7c0: 91000021     	add	x1, x1, #0x0
		00000000000007c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa83
     7c4: 94000000     	bl	0x7c4 <gf_open+0x104>
		00000000000007c4:  R_AARCH64_CALL26	_printk
     7c8: aa1303e0     	mov	x0, x19
     7cc: 9400031a     	bl	0x1434 <gf_irq_num>
     7d0: 90000002     	adrp	x2, 0x0 <zte_goodix_pinctrl_select>
		00000000000007d0:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x147c
     7d4: 91000042     	add	x2, x2, #0x0
		00000000000007d4:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x147c
     7d8: 90000004     	adrp	x4, 0x0 <zte_goodix_pinctrl_select>
		00000000000007d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a8
     7dc: 91000084     	add	x4, x4, #0x0
		00000000000007dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a8
     7e0: aa1f03e1     	mov	x1, xzr
     7e4: 52840023     	mov	w3, #0x2001             // =8193
     7e8: aa1303e5     	mov	x5, x19
     7ec: b90042e0     	str	w0, [x23, #0x40]
     7f0: 94000000     	bl	0x7f0 <gf_open+0x130>
		00000000000007f0:  R_AARCH64_CALL26	request_threaded_irq
     7f4: 35000480     	cbnz	w0, 0x884 <gf_open+0x1c4>
     7f8: b94042e0     	ldr	w0, [x23, #0x40]
     7fc: 52800021     	mov	w1, #0x1                // =1
     800: 52800034     	mov	w20, #0x1               // =1
     804: 94000000     	bl	0x804 <gf_open+0x144>
		0000000000000804:  R_AARCH64_CALL26	irq_set_irq_wake
     808: b90046f4     	str	w20, [x23, #0x44]
     80c: aa1303e0     	mov	x0, x19
     810: 9400006f     	bl	0x9cc <gf_hw_reset>
     814: 2a1f03f4     	mov	w20, wzr
     818: 52800028     	mov	w8, #0x1                // =1
     81c: 3901a2e8     	strb	w8, [x23, #0x68]
     820: 14000009     	b	0x844 <gf_open+0x184>
     824: b9404ea8     	ldr	w8, [x21, #0x4c]
     828: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000828:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x308
     82c: 91000000     	add	x0, x0, #0x0
		000000000000082c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x308
     830: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000830:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa83
     834: 91000021     	add	x1, x1, #0x0
		0000000000000834:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa83
     838: 12004d02     	and	w2, w8, #0xfffff
     83c: 94000000     	bl	0x83c <gf_open+0x17c>
		000000000000083c:  R_AARCH64_CALL26	_printk
     840: 128000b4     	mov	w20, #-0x6              // =-6
     844: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000844:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     848: 91000000     	add	x0, x0, #0x0
		0000000000000848:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     84c: 94000000     	bl	0x84c <gf_open+0x18c>
		000000000000084c:  R_AARCH64_CALL26	mutex_unlock
     850: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000850:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43b
     854: 91000000     	add	x0, x0, #0x0
		0000000000000854:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43b
     858: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000858:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa83
     85c: 91000021     	add	x1, x1, #0x0
		000000000000085c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa83
     860: 2a1403e2     	mov	w2, w20
     864: 94000000     	bl	0x864 <gf_open+0x1a4>
		0000000000000864:  R_AARCH64_CALL26	_printk
     868: 2a1403e0     	mov	w0, w20
     86c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     870: f9400bf7     	ldr	x23, [sp, #0x10]
     874: a94257f6     	ldp	x22, x21, [sp, #0x20]
     878: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     87c: d50323bf     	autiasp
     880: d65f03c0     	ret
     884: 2a0003f4     	mov	w20, w0
     888: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000888:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5bd
     88c: 91000000     	add	x0, x0, #0x0
		000000000000088c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5bd
     890: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000890:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa83
     894: 91000021     	add	x1, x1, #0x0
		0000000000000894:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa83
     898: 94000000     	bl	0x898 <gf_open+0x1d8>
		0000000000000898:  R_AARCH64_CALL26	_printk
     89c: aa1303e0     	mov	x0, x19
     8a0: 940000ff     	bl	0xc9c <gf_cleanup>
     8a4: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		00000000000008a4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     8a8: 91000000     	add	x0, x0, #0x0
		00000000000008a8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     8ac: 94000000     	bl	0x8ac <gf_open+0x1ec>
		00000000000008ac:  R_AARCH64_CALL26	mutex_unlock
     8b0: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		00000000000008b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb94
     8b4: 91000000     	add	x0, x0, #0x0
		00000000000008b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb94
     8b8: 17ffffe8     	b	0x858 <gf_open+0x198>
