
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000005f4 <rdbg_write>:
     5f4: d503233f     	paciasp
     5f8: d10243ff     	sub	sp, sp, #0x90
     5fc: a9037bfd     	stp	x29, x30, [sp, #0x30]
     600: a9046ffc     	stp	x28, x27, [sp, #0x40]
     604: a90567fa     	stp	x26, x25, [sp, #0x50]
     608: a9065ff8     	stp	x24, x23, [sp, #0x60]
     60c: a90757f6     	stp	x22, x21, [sp, #0x70]
     610: a9084ff4     	stp	x20, x19, [sp, #0x80]
     614: 9100c3fd     	add	x29, sp, #0x30
     618: f9401018     	ldr	x24, [x0, #0x20]
     61c: b4001ed8     	cbz	x24, 0x9f4 <rdbg_write+0x400>
     620: d378dc28     	lsl	x8, x1, #8
     624: aa0203f7     	mov	x23, x2
     628: 93407c53     	sxtw	x19, w2
     62c: 1101feea     	add	w10, w23, #0x7f
     630: d2c01009     	mov	x9, #0x8000000000       // =549755813888
     634: 529fe05c     	mov	w28, #0xff02            // =65282
     638: 8a882028     	and	x8, x1, x8, asr #8
     63c: 13077d5b     	asr	w27, w10, #7
     640: 2a1f03f9     	mov	w25, wzr
     644: 72bfe01c     	movk	w28, #0xff00, lsl #16
     648: 5280003a     	mov	w26, #0x1               // =1
     64c: b81fc3aa     	stur	w10, [x29, #-0x4]
     650: f90007e8     	str	x8, [sp, #0x8]
     654: cb130128     	sub	x8, x9, x19
     658: d5384114     	mrs	x20, SP_EL0
     65c: a90107e8     	stp	x8, x1, [sp, #0x10]
     660: f81f03a2     	stur	x2, [x29, #-0x10]
     664: f9405300     	ldr	x0, [x24, #0xa0]
     668: 94000000     	bl	0x668 <rdbg_write+0x74>
		0000000000000668:  R_AARCH64_CALL26	mutex_lock
     66c: f9404709     	ldr	x9, [x24, #0x88]
     670: b9400128     	ldr	w8, [x9]
     674: 6b1c011f     	cmp	w8, w28
     678: 54000141     	b.ne	0x6a0 <rdbg_write+0xac>
     67c: f9403f08     	ldr	x8, [x24, #0x78]
     680: 39400508     	ldrb	w8, [x8, #0x1]
     684: 7100051f     	cmp	w8, #0x1
     688: 540000c1     	b.ne	0x6a0 <rdbg_write+0xac>
     68c: f9404308     	ldr	x8, [x24, #0x80]
     690: b940052b     	ldr	w11, [x9, #0x4]
     694: b940050a     	ldr	w10, [x8, #0x4]
     698: 6b0b015f     	cmp	w10, w11
     69c: 54000260     	b.eq	0x6e8 <rdbg_write+0xf4>
     6a0: b940b308     	ldr	w8, [x24, #0xb0]
     6a4: 7100077f     	cmp	w27, #0x1
     6a8: 540004e1     	b.ne	0x744 <rdbg_write+0x150>
     6ac: f9405f09     	ldr	x9, [x24, #0xb8]
     6b0: 2a0803f5     	mov	w21, w8
     6b4: 3875492a     	ldrb	w10, [x9, w21, uxtw]
     6b8: 3400082a     	cbz	w10, 0x7bc <rdbg_write+0x1c8>
     6bc: b940b70a     	ldr	w10, [x24, #0xb4]
     6c0: 110006ab     	add	w11, w21, #0x1
     6c4: 1aca096c     	udiv	w12, w11, w10
     6c8: 1b0aad95     	msub	w21, w12, w10, w11
     6cc: 6b15011f     	cmp	w8, w21
     6d0: b900b315     	str	w21, [x24, #0xb0]
     6d4: 54ffff01     	b.ne	0x6b4 <rdbg_write+0xc0>
     6d8: 2a1f03f5     	mov	w21, wzr
     6dc: 1400009e     	b	0x954 <rdbg_write+0x360>
     6e0: d5033d9f     	dsb	ld
     6e4: a9482708     	ldp	x8, x9, [x24, #0x80]
     6e8: b840cd0a     	ldr	w10, [x8, #0xc]!
     6ec: b9400d2b     	ldr	w11, [x9, #0xc]
     6f0: 6b0b015f     	cmp	w10, w11
     6f4: 54fffd60     	b.eq	0x6a0 <rdbg_write+0xac>
     6f8: 8b2a4929     	add	x9, x9, w10, uxtw #2
     6fc: b9409b0b     	ldr	w11, [x24, #0x98]
     700: 78410d2c     	ldrh	w12, [x9, #0x10]!
     704: 6b0c017f     	cmp	w11, w12
     708: 54fffe89     	b.ls	0x6d8 <rdbg_write+0xe4>
     70c: 1100054a     	add	w10, w10, #0x1
     710: 1acb094c     	udiv	w12, w10, w11
     714: 1b0ba98a     	msub	w10, w12, w11, w10
     718: b900010a     	str	w10, [x8]
     71c: 79400128     	ldrh	w8, [x9]
     720: f9405f09     	ldr	x9, [x24, #0xb8]
     724: 38686929     	ldrb	w9, [x9, x8]
     728: 34fffdc9     	cbz	w9, 0x6e0 <rdbg_write+0xec>
     72c: f9405f0a     	ldr	x10, [x24, #0xb8]
     730: 71000529     	subs	w9, w9, #0x1
     734: 3828695f     	strb	wzr, [x10, x8]
     738: 91000508     	add	x8, x8, #0x1
     73c: 54ffff81     	b.ne	0x72c <rdbg_write+0x138>
     740: 17ffffe8     	b	0x6e0 <rdbg_write+0xec>
     744: b940b709     	ldr	w9, [x24, #0xb4]
     748: f9405f0b     	ldr	x11, [x24, #0xb8]
     74c: 2a1f03ea     	mov	w10, wzr
     750: 2a0803ec     	mov	w12, w8
     754: 2a0903ed     	mov	w13, w9
     758: 1400000c     	b	0x788 <rdbg_write+0x194>
     75c: 0b0e0108     	add	w8, w8, w14
     760: 2a1f03ea     	mov	w10, wzr
     764: 2a0903f5     	mov	w21, w9
     768: 51000508     	sub	w8, w8, #0x1
     76c: 11000508     	add	w8, w8, #0x1
     770: 1ac9090d     	udiv	w13, w8, w9
     774: 1b09a1a8     	msub	w8, w13, w9, w8
     778: 2a1503ed     	mov	w13, w21
     77c: 6b08019f     	cmp	w12, w8
     780: b900b308     	str	w8, [x24, #0xb0]
     784: 54fffaa0     	b.eq	0x6d8 <rdbg_write+0xe4>
     788: 3868496e     	ldrb	w14, [x11, w8, uxtw]
     78c: 35fffe8e     	cbnz	w14, 0x75c <rdbg_write+0x168>
     790: 6b0801bf     	cmp	w13, w8
     794: 1a8a874a     	csinc	w10, w26, w10, hi
     798: 1a8c810c     	csel	w12, w8, w12, hi
     79c: 1a8831b5     	csel	w21, w13, w8, lo
     7a0: 6b1b015f     	cmp	w10, w27
     7a4: 54fffe41     	b.ne	0x76c <rdbg_write+0x178>
     7a8: b85fc3a9     	ldur	w9, [x29, #-0x4]
     7ac: 7102013f     	cmp	w9, #0x80
     7b0: 54000122     	b.hs	0x7d4 <rdbg_write+0x1e0>
     7b4: 2a1f03e9     	mov	w9, wzr
     7b8: 14000012     	b	0x800 <rdbg_write+0x20c>
     7bc: 3835493a     	strb	w26, [x9, w21, uxtw]
     7c0: 29562708     	ldp	w8, w9, [x24, #0xb0]
     7c4: 11000508     	add	w8, w8, #0x1
     7c8: 1ac9090a     	udiv	w10, w8, w9
     7cc: 1b09a148     	msub	w8, w10, w9, w8
     7d0: 1400000e     	b	0x808 <rdbg_write+0x214>
     7d4: 6b0801bf     	cmp	w13, w8
     7d8: aa1b03e9     	mov	x9, x27
     7dc: 1a8831a8     	csel	w8, w13, w8, lo
     7e0: f9405f0a     	ldr	x10, [x24, #0xb8]
     7e4: 38284949     	strb	w9, [x10, w8, uxtw]
     7e8: f1000529     	subs	x9, x9, #0x1
     7ec: 11000508     	add	w8, w8, #0x1
     7f0: 54ffff81     	b.ne	0x7e0 <rdbg_write+0x1ec>
     7f4: f9405f09     	ldr	x9, [x24, #0xb8]
     7f8: b940b308     	ldr	w8, [x24, #0xb0]
     7fc: 38686929     	ldrb	w9, [x9, x8]
     800: 0b090108     	add	w8, w8, w9
     804: 51000508     	sub	w8, w8, #0x1
     808: f9404b09     	ldr	x9, [x24, #0x90]
     80c: 531962aa     	lsl	w10, w21, #7
     810: b900b308     	str	w8, [x24, #0xb0]
     814: 8b0a0136     	add	x22, x9, x10
     818: 37f80ad7     	tbnz	w23, #0x1f, 0x970 <rdbg_write+0x37c>
     81c: aa1603e0     	mov	x0, x22
     820: aa1303e1     	mov	x1, x19
     824: 2a1f03e2     	mov	w2, wzr
     828: 94000000     	bl	0x828 <rdbg_write+0x234>
		0000000000000828:  R_AARCH64_CALL26	__check_object_size
     82c: 39411a88     	ldrb	w8, [x20, #0x46]
     830: 37280088     	tbnz	w8, #0x5, 0x840 <rdbg_write+0x24c>
     834: f9400289     	ldr	x9, [x20]
     838: f9400fe8     	ldr	x8, [sp, #0x18]
     83c: 36d00049     	tbz	w9, #0x1a, 0x844 <rdbg_write+0x250>
     840: f94007e8     	ldr	x8, [sp, #0x8]
     844: f9400be9     	ldr	x9, [sp, #0x10]
     848: aa1303f7     	mov	x23, x19
     84c: eb08013f     	cmp	x9, x8
     850: 54000242     	b.hs	0x898 <rdbg_write+0x2a4>
     854: cb170268     	sub	x8, x19, x23
     858: 2a1f03e1     	mov	w1, wzr
     85c: aa1703e2     	mov	x2, x23
     860: 8b0802c0     	add	x0, x22, x8
     864: 94000000     	bl	0x864 <rdbg_write+0x270>
		0000000000000864:  R_AARCH64_CALL26	memset
     868: 34000517     	cbz	w23, 0x908 <rdbg_write+0x314>
     86c: b4000876     	cbz	x22, 0x978 <rdbg_write+0x384>
     870: f9405f08     	ldr	x8, [x24, #0xb8]
     874: f85f03b7     	ldur	x23, [x29, #-0x10]
     878: 38754908     	ldrb	w8, [x8, w21, uxtw]
     87c: 34fff2e8     	cbz	w8, 0x6d8 <rdbg_write+0xe4>
     880: f9405f09     	ldr	x9, [x24, #0xb8]
     884: 71000508     	subs	w8, w8, #0x1
     888: 3835493f     	strb	wzr, [x9, w21, uxtw]
     88c: 110006b5     	add	w21, w21, #0x1
     890: 54ffff81     	b.ne	0x880 <rdbg_write+0x28c>
     894: 17ffff91     	b	0x6d8 <rdbg_write+0xe4>
     898: d503201f     	nop
     89c: d53b4228     	mrs	x8, DAIF
     8a0: d50343df     	msr	DAIFSet, #0x3
     8a4: f9400689     	ldr	x9, [x20, #0x8]
     8a8: d538202a     	mrs	x10, TTBR1_EL1
     8ac: aa0903eb     	mov	x11, x9
     8b0: b340bd4b     	bfxil	x11, x10, #0, #48
     8b4: d518202b     	msr	TTBR1_EL1, x11
     8b8: d5182009     	msr	TTBR0_EL1, x9
     8bc: d5033fdf     	isb
     8c0: d51b4228     	msr	DAIF, x8
     8c4: f9400fe8     	ldr	x8, [sp, #0x18]
     8c8: 9248f901     	and	x1, x8, #0xff7fffffffffffff
     8cc: aa1603e0     	mov	x0, x22
     8d0: aa1303e2     	mov	x2, x19
     8d4: 94000000     	bl	0x8d4 <rdbg_write+0x2e0>
		00000000000008d4:  R_AARCH64_CALL26	__arch_copy_from_user
     8d8: aa0003f7     	mov	x23, x0
     8dc: d503201f     	nop
     8e0: d53b4228     	mrs	x8, DAIF
     8e4: d50343df     	msr	DAIFSet, #0x3
     8e8: d5382029     	mrs	x9, TTBR1_EL1
     8ec: 9240bd29     	and	x9, x9, #0xffffffffffff
     8f0: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
     8f4: d518200a     	msr	TTBR0_EL1, x10
     8f8: d5182029     	msr	TTBR1_EL1, x9
     8fc: d5033fdf     	isb
     900: d51b4228     	msr	DAIF, x8
     904: b5fffa97     	cbnz	x23, 0x854 <rdbg_write+0x260>
     908: f9404308     	ldr	x8, [x24, #0x80]
     90c: b85fc3aa     	ldur	w10, [x29, #-0x4]
     910: f85f03b7     	ldur	x23, [x29, #-0x10]
     914: b9400909     	ldr	w9, [x8, #0x8]
     918: 53077d4a     	lsr	w10, w10, #7
     91c: 8b090908     	add	x8, x8, x9, lsl #2
     920: 79002115     	strh	w21, [x8, #0x10]
     924: 52800035     	mov	w21, #0x1               // =1
     928: f9404308     	ldr	x8, [x24, #0x80]
     92c: b9400909     	ldr	w9, [x8, #0x8]
     930: 8b090908     	add	x8, x8, x9, lsl #2
     934: 7900250a     	strh	w10, [x8, #0x12]
     938: f9404308     	ldr	x8, [x24, #0x80]
     93c: b9409b0a     	ldr	w10, [x24, #0x98]
     940: b9400909     	ldr	w9, [x8, #0x8]
     944: 11000529     	add	w9, w9, #0x1
     948: 1aca092b     	udiv	w11, w9, w10
     94c: 1b0aa569     	msub	w9, w11, w10, w9
     950: b9000909     	str	w9, [x8, #0x8]
     954: f9405300     	ldr	x0, [x24, #0xa0]
     958: 94000000     	bl	0x958 <rdbg_write+0x364>
		0000000000000958:  R_AARCH64_CALL26	mutex_unlock
     95c: 37000155     	tbnz	w21, #0x0, 0x984 <rdbg_write+0x390>
     960: 7100533f     	cmp	w25, #0x14
     964: 11000739     	add	w25, w25, #0x1
     968: 54ffe7e3     	b.lo	0x664 <rdbg_write+0x70>
     96c: 14000006     	b	0x984 <rdbg_write+0x390>
     970: d4210000     	brk	#0x800
     974: b5fff7f6     	cbnz	x22, 0x870 <rdbg_write+0x27c>
     978: f85f03b7     	ldur	x23, [x29, #-0x10]
     97c: 2a1f03f5     	mov	w21, wzr
     980: 17fffff5     	b	0x954 <rdbg_write+0x360>
     984: 36000435     	tbz	w21, #0x0, 0xa08 <rdbg_write+0x414>
     988: b9405f15     	ldr	w21, [x24, #0x5c]
     98c: 710082bf     	cmp	w21, #0x20
     990: 54000462     	b.hs	0xa1c <rdbg_write+0x428>
     994: b9404b08     	ldr	w8, [x24, #0x48]
     998: 8b150b16     	add	x22, x24, x21, lsl #2
     99c: 52800029     	mov	w9, #0x1                // =1
     9a0: f9402b00     	ldr	x0, [x24, #0x50]
     9a4: 0b150108     	add	w8, w8, w21
     9a8: b9414aca     	ldr	w10, [x22, #0x148]
     9ac: 9ac82121     	lsl	x1, x9, x8
     9b0: 4a010154     	eor	w20, w10, w1
     9b4: 2a1403e2     	mov	w2, w20
     9b8: 94000000     	bl	0x9b8 <rdbg_write+0x3c4>
		00000000000009b8:  R_AARCH64_CALL26	qcom_smem_state_update_bits
     9bc: 110006a8     	add	w8, w21, #0x1
     9c0: b9014ad4     	str	w20, [x22, #0x148]
     9c4: 12001108     	and	w8, w8, #0x1f
     9c8: b9005f08     	str	w8, [x24, #0x5c]
     9cc: aa1303e0     	mov	x0, x19
     9d0: a9484ff4     	ldp	x20, x19, [sp, #0x80]
     9d4: a94757f6     	ldp	x22, x21, [sp, #0x70]
     9d8: a9465ff8     	ldp	x24, x23, [sp, #0x60]
     9dc: a94567fa     	ldp	x26, x25, [sp, #0x50]
     9e0: a9446ffc     	ldp	x28, x27, [sp, #0x40]
     9e4: a9437bfd     	ldp	x29, x30, [sp, #0x30]
     9e8: 910243ff     	add	sp, sp, #0x90
     9ec: d50323bf     	autiasp
     9f0: d65f03c0     	ret
     9f4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x236
     9f8: 91000000     	add	x0, x0, #0x0
		00000000000009f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x236
     9fc: 94000000     	bl	0x9fc <rdbg_write+0x408>
		00000000000009fc:  R_AARCH64_CALL26	_printk
     a00: 928002b3     	mov	x19, #-0x16             // =-22
     a04: 17fffff2     	b	0x9cc <rdbg_write+0x3d8>
     a08: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4fc
     a0c: 91000000     	add	x0, x0, #0x0
		0000000000000a0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4fc
     a10: 94000000     	bl	0xa10 <rdbg_write+0x41c>
		0000000000000a10:  R_AARCH64_CALL26	_printk
     a14: 928008b3     	mov	x19, #-0x46             // =-70
     a18: 17ffffed     	b	0x9cc <rdbg_write+0x3d8>
     a1c: d42aa240     	brk	#0x5512
