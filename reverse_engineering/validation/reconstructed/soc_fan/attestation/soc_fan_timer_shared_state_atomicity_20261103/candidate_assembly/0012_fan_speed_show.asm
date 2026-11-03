
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000006ec <fan_speed_show>:
     6ec: d503233f     	paciasp
     6f0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     6f4: a9015ff8     	stp	x24, x23, [sp, #0x10]
     6f8: a90257f6     	stp	x22, x21, [sp, #0x20]
     6fc: a9034ff4     	stp	x20, x19, [sp, #0x30]
     700: 910003fd     	mov	x29, sp
     704: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000704:  R_AARCH64_ADR_PREL_PG_HI21	chip
     708: aa0203f3     	mov	x19, x2
     70c: f94002e8     	ldr	x8, [x23]
		000000000000070c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     710: 91006100     	add	x0, x8, #0x18
     714: 94000000     	bl	0x714 <fan_speed_show+0x28>
		0000000000000714:  R_AARCH64_CALL26	mutex_lock
     718: f94002e8     	ldr	x8, [x23]
		0000000000000718:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     71c: f9400515     	ldr	x21, [x8, #0x8]
     720: 394002a8     	ldrb	w8, [x21]
     724: 35000068     	cbnz	w8, 0x730 <fan_speed_show+0x44>
     728: 2a1f03f4     	mov	w20, wzr
     72c: 14000089     	b	0x950 <fan_speed_show+0x264>
     730: 52884801     	mov	w1, #0x4240             // =16960
     734: 52800028     	mov	w8, #0x1                // =1
     738: 9100a2a0     	add	x0, x21, #0x28
     73c: 72a001e1     	movk	w1, #0xf, lsl #16
     740: aa1f03e2     	mov	x2, xzr
     744: 52800023     	mov	w3, #0x1                // =1
     748: 39000aa8     	strb	w8, [x21, #0x2]
     74c: 94000000     	bl	0x74c <fan_speed_show+0x60>
		000000000000074c:  R_AARCH64_CALL26	hrtimer_start_range_ns
     750: 52807d00     	mov	w0, #0x3e8              // =1000
     754: 94000000     	bl	0x754 <fan_speed_show+0x68>
		0000000000000754:  R_AARCH64_CALL26	msleep
     758: b9400aa8     	ldr	w8, [x21, #0x8]
     75c: 394002a4     	ldrb	w4, [x21]
     760: 0b080908     	add	w8, w8, w8, lsl #2
     764: 71000c9f     	cmp	w4, #0x3
     768: 531d7114     	lsl	w20, w8, #3
     76c: 540000e1     	b.ne	0x788 <fan_speed_show+0x9c>
     770: 713e829f     	cmp	w20, #0xfa0
     774: 540000a9     	b.ls	0x788 <fan_speed_show+0x9c>
     778: 52865908     	mov	w8, #0x32c8             // =13000
     77c: b9400aa9     	ldr	w9, [x21, #0x8]
     780: 0b080136     	add	w22, w9, w8
     784: 1400000e     	b	0x7bc <fan_speed_show+0xd0>
     788: 7100149f     	cmp	w4, #0x5
     78c: 540000e0     	b.eq	0x7a8 <fan_speed_show+0xbc>
     790: 7100109f     	cmp	w4, #0x4
     794: 54000121     	b.ne	0x7b8 <fan_speed_show+0xcc>
     798: 713e829f     	cmp	w20, #0xfa0
     79c: 540000e9     	b.ls	0x7b8 <fan_speed_show+0xcc>
     7a0: 5287d008     	mov	w8, #0x3e80             // =16000
     7a4: 17fffff6     	b	0x77c <fan_speed_show+0x90>
     7a8: 713e869f     	cmp	w20, #0xfa1
     7ac: 54000063     	b.lo	0x7b8 <fan_speed_show+0xcc>
     7b0: 52894708     	mov	w8, #0x4a38             // =19000
     7b4: 17fffff2     	b	0x77c <fan_speed_show+0x90>
     7b8: 2a1f03f6     	mov	w22, wzr
     7bc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fd
     7c0: 91000000     	add	x0, x0, #0x0
		00000000000007c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fd
     7c4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
     7c8: 91000021     	add	x1, x1, #0x0
		00000000000007c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
     7cc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000007cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb43
     7d0: 91000042     	add	x2, x2, #0x0
		00000000000007d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb43
     7d4: 52802503     	mov	w3, #0x128              // =296
     7d8: 2a1403e5     	mov	w5, w20
     7dc: 2a1603e6     	mov	w6, w22
     7e0: 94000000     	bl	0x7e0 <fan_speed_show+0xf4>
		00000000000007e0:  R_AARCH64_CALL26	_printk
     7e4: f94002e9     	ldr	x9, [x23]
		00000000000007e4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     7e8: 6b1402df     	cmp	w22, w20
     7ec: 2a1f03e8     	mov	w8, wzr
     7f0: 1a9482d4     	csel	w20, w22, w20, hi
     7f4: 90000018     	adrp	x24, 0x0 <.text>
		00000000000007f4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xc
     7f8: f9400520     	ldr	x0, [x9, #0x8]
     7fc: 39400015     	ldrb	w21, [x0]
     800: 34000a75     	cbz	w21, 0x94c <fan_speed_show+0x260>
     804: 52807d09     	mov	w9, #0x3e8              // =1000
     808: 1b097ea9     	mul	w9, w21, w9
     80c: 6b14013f     	cmp	w9, w20
     810: 540009e3     	b.lo	0x94c <fan_speed_show+0x260>
     814: b9400308     	ldr	w8, [x24]
		0000000000000814:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
     818: 7100291f     	cmp	w8, #0xa
     81c: 540009ac     	b.gt	0x950 <fan_speed_show+0x264>
     820: 2a1f03e1     	mov	w1, wzr
     824: 94000000     	bl	0x824 <fan_speed_show+0x138>
		0000000000000824:  R_AARCH64_CALL26	.text+0x1520
     828: f94002e8     	ldr	x8, [x23]
		0000000000000828:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     82c: f9402516     	ldr	x22, [x8, #0x48]
     830: b40001f6     	cbz	x22, 0x86c <fan_speed_show+0x180>
     834: aa1603e0     	mov	x0, x22
     838: 94000000     	bl	0x838 <fan_speed_show+0x14c>
		0000000000000838:  R_AARCH64_CALL26	regulator_is_enabled
     83c: 34000180     	cbz	w0, 0x86c <fan_speed_show+0x180>
     840: aa1603e0     	mov	x0, x22
     844: 94000000     	bl	0x844 <fan_speed_show+0x158>
		0000000000000844:  R_AARCH64_CALL26	.text+0x12b0
     848: 2a0003e4     	mov	w4, w0
     84c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000084c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32
     850: 91000000     	add	x0, x0, #0x0
		0000000000000850:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32
     854: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000854:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
     858: 91000021     	add	x1, x1, #0x0
		0000000000000858:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
     85c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000085c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb4f
     860: 91000042     	add	x2, x2, #0x0
		0000000000000860:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb4f
     864: 52801ca3     	mov	w3, #0xe5               // =229
     868: 94000000     	bl	0x868 <fan_speed_show+0x17c>
		0000000000000868:  R_AARCH64_CALL26	_printk
     86c: 52800640     	mov	w0, #0x32               // =50
     870: 94000000     	bl	0x870 <fan_speed_show+0x184>
		0000000000000870:  R_AARCH64_CALL26	msleep
     874: f94002e8     	ldr	x8, [x23]
		0000000000000874:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     878: f9402516     	ldr	x22, [x8, #0x48]
     87c: b4000256     	cbz	x22, 0x8c4 <fan_speed_show+0x1d8>
     880: aa1603e0     	mov	x0, x22
     884: 94000000     	bl	0x884 <fan_speed_show+0x198>
		0000000000000884:  R_AARCH64_CALL26	regulator_is_enabled
     888: 350001e0     	cbnz	w0, 0x8c4 <fan_speed_show+0x1d8>
     88c: aa1603e0     	mov	x0, x22
     890: 94000000     	bl	0x890 <fan_speed_show+0x1a4>
		0000000000000890:  R_AARCH64_CALL26	.text+0x1240
     894: 2a0003f6     	mov	w22, w0
     898: 52800140     	mov	w0, #0xa                // =10
     89c: 94000000     	bl	0x89c <fan_speed_show+0x1b0>
		000000000000089c:  R_AARCH64_CALL26	msleep
     8a0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fc
     8a4: 91000000     	add	x0, x0, #0x0
		00000000000008a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fc
     8a8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
     8ac: 91000021     	add	x1, x1, #0x0
		00000000000008ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
     8b0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000008b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb4f
     8b4: 91000042     	add	x2, x2, #0x0
		00000000000008b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb4f
     8b8: 52801da3     	mov	w3, #0xed               // =237
     8bc: 2a1603e4     	mov	w4, w22
     8c0: 94000000     	bl	0x8c0 <fan_speed_show+0x1d4>
		00000000000008c0:  R_AARCH64_CALL26	_printk
     8c4: f94002e8     	ldr	x8, [x23]
		00000000000008c4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     8c8: 2a1503e1     	mov	w1, w21
     8cc: f9400500     	ldr	x0, [x8, #0x8]
     8d0: 94000000     	bl	0x8d0 <fan_speed_show+0x1e4>
		00000000000008d0:  R_AARCH64_CALL26	.text+0x1520
     8d4: f94002e8     	ldr	x8, [x23]
		00000000000008d4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     8d8: b9400306     	ldr	w6, [x24]
		00000000000008d8:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
     8dc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc3f
     8e0: 91000000     	add	x0, x0, #0x0
		00000000000008e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc3f
     8e4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
     8e8: 91000021     	add	x1, x1, #0x0
		00000000000008e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
     8ec: f9400508     	ldr	x8, [x8, #0x8]
     8f0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000008f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dc
     8f4: 91000042     	add	x2, x2, #0x0
		00000000000008f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dc
     8f8: 528035a3     	mov	w3, #0x1ad              // =429
     8fc: 2a1403e5     	mov	w5, w20
     900: 39400104     	ldrb	w4, [x8]
     904: 94000000     	bl	0x904 <fan_speed_show+0x218>
		0000000000000904:  R_AARCH64_CALL26	_printk
     908: b9400308     	ldr	w8, [x24]
		0000000000000908:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
     90c: 7100291f     	cmp	w8, #0xa
     910: 540001c1     	b.ne	0x948 <fan_speed_show+0x25c>
     914: f94002e8     	ldr	x8, [x23]
		0000000000000914:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     918: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000918:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x657
     91c: 91000000     	add	x0, x0, #0x0
		000000000000091c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x657
     920: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000920:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
     924: 91000021     	add	x1, x1, #0x0
		0000000000000924:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
     928: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000928:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dc
     92c: 91000042     	add	x2, x2, #0x0
		000000000000092c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dc
     930: f9400508     	ldr	x8, [x8, #0x8]
     934: 52803603     	mov	w3, #0x1b0              // =432
     938: 2a1403e5     	mov	w5, w20
     93c: 39400104     	ldrb	w4, [x8]
     940: 94000000     	bl	0x940 <fan_speed_show+0x254>
		0000000000000940:  R_AARCH64_CALL26	_printk
     944: b9400308     	ldr	w8, [x24]
		0000000000000944:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
     948: 11000508     	add	w8, w8, #0x1
     94c: b9000308     	str	w8, [x24]
		000000000000094c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
     950: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000950:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ed
     954: 91000021     	add	x1, x1, #0x0
		0000000000000954:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ed
     958: aa1303e0     	mov	x0, x19
     95c: 2a1403e2     	mov	w2, w20
     960: 94000000     	bl	0x960 <fan_speed_show+0x274>
		0000000000000960:  R_AARCH64_CALL26	sprintf
     964: f94002e8     	ldr	x8, [x23]
		0000000000000964:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     968: 2a0003f3     	mov	w19, w0
     96c: 91006100     	add	x0, x8, #0x18
     970: 94000000     	bl	0x970 <fan_speed_show+0x284>
		0000000000000970:  R_AARCH64_CALL26	mutex_unlock
     974: f94002e8     	ldr	x8, [x23]
		0000000000000974:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     978: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000978:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa7e
     97c: 91000000     	add	x0, x0, #0x0
		000000000000097c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa7e
     980: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000980:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
     984: 91000021     	add	x1, x1, #0x0
		0000000000000984:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
     988: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000988:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a5
     98c: 91000042     	add	x2, x2, #0x0
		000000000000098c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a5
     990: f9400508     	ldr	x8, [x8, #0x8]
     994: 52803883     	mov	w3, #0x1c4              // =452
     998: 2a1403e5     	mov	w5, w20
     99c: 39400104     	ldrb	w4, [x8]
     9a0: 94000000     	bl	0x9a0 <fan_speed_show+0x2b4>
		00000000000009a0:  R_AARCH64_CALL26	_printk
     9a4: 93407e60     	sxtw	x0, w19
     9a8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     9ac: a94257f6     	ldp	x22, x21, [sp, #0x20]
     9b0: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     9b4: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     9b8: d50323bf     	autiasp
     9bc: d65f03c0     	ret
