
/input/zte_reboot_ext.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000003e0 <entry_panic>:
     3e0: d503233f     	paciasp
     3e4: d10683ff     	sub	sp, sp, #0x1a0
     3e8: a9147bfd     	stp	x29, x30, [sp, #0x140]
     3ec: a9156ffc     	stp	x28, x27, [sp, #0x150]
     3f0: a91667fa     	stp	x26, x25, [sp, #0x160]
     3f4: a9175ff8     	stp	x24, x23, [sp, #0x170]
     3f8: a91857f6     	stp	x22, x21, [sp, #0x180]
     3fc: a9194ff4     	stp	x20, x19, [sp, #0x190]
     400: 910503fd     	add	x29, sp, #0x140
     404: d5384108     	mrs	x8, SP_EL0
     408: 90000019     	adrp	x25, 0x0 <.text>
		0000000000000408:  R_AARCH64_ADR_PREL_PG_HI21	once_entry_panic_count
     40c: aa0103f4     	mov	x20, x1
     410: f9438908     	ldr	x8, [x8, #0x710]
     414: f81f03a8     	stur	x8, [x29, #-0x10]
     418: b9400328     	ldr	w8, [x25]
		0000000000000418:  R_AARCH64_LDST32_ABS_LO12_NC	once_entry_panic_count
     41c: f9400033     	ldr	x19, [x1]
     420: a9127fff     	stp	xzr, xzr, [sp, #0x120]
     424: a9117fff     	stp	xzr, xzr, [sp, #0x110]
     428: 11000501     	add	w1, w8, #0x1
     42c: a9107fff     	stp	xzr, xzr, [sp, #0x100]
     430: a90f7fff     	stp	xzr, xzr, [sp, #0xf0]
     434: a90e7fff     	stp	xzr, xzr, [sp, #0xe0]
     438: a90d7fff     	stp	xzr, xzr, [sp, #0xd0]
     43c: a90c7fff     	stp	xzr, xzr, [sp, #0xc0]
     440: a90b7fff     	stp	xzr, xzr, [sp, #0xb0]
     444: a90a7fff     	stp	xzr, xzr, [sp, #0xa0]
     448: a9097fff     	stp	xzr, xzr, [sp, #0x90]
     44c: a9087fff     	stp	xzr, xzr, [sp, #0x80]
     450: a9077fff     	stp	xzr, xzr, [sp, #0x70]
     454: a9067fff     	stp	xzr, xzr, [sp, #0x60]
     458: a9057fff     	stp	xzr, xzr, [sp, #0x50]
     45c: a9047fff     	stp	xzr, xzr, [sp, #0x40]
     460: a9037fff     	stp	xzr, xzr, [sp, #0x30]
     464: b9000321     	str	w1, [x25]
		0000000000000464:  R_AARCH64_LDST32_ABS_LO12_NC	once_entry_panic_count
     468: 350006e8     	cbnz	w8, 0x544 <entry_panic+0x164>
     46c: b4000a73     	cbz	x19, 0x5b8 <entry_panic+0x1d8>
     470: aa1303e0     	mov	x0, x19
     474: 94000000     	bl	0x474 <entry_panic+0x94>
		0000000000000474:  R_AARCH64_CALL26	strlen
     478: 91005408     	add	x8, x0, #0x15
     47c: f104011f     	cmp	x8, #0x100
     480: 54000908     	b.hi	0x5a0 <entry_panic+0x1c0>
     484: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000484:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x177
     488: 91000042     	add	x2, x2, #0x0
		0000000000000488:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x177
     48c: 90000003     	adrp	x3, 0x0 <.text>
		000000000000048c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c0
     490: 91000063     	add	x3, x3, #0x0
		0000000000000490:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c0
     494: 9100c3e0     	add	x0, sp, #0x30
     498: 52802001     	mov	w1, #0x100              // =256
     49c: aa1303e4     	mov	x4, x19
     4a0: 9100c3fa     	add	x26, sp, #0x30
     4a4: 94000000     	bl	0x4a4 <entry_panic+0xc4>
		00000000000004a4:  R_AARCH64_CALL26	snprintf
     4a8: aa1f03fb     	mov	x27, xzr
     4ac: 2a1f03e8     	mov	w8, wzr
     4b0: 2a1f03f5     	mov	w21, wzr
     4b4: 1280001c     	mov	w28, #-0x1              // =-1
     4b8: 90000017     	adrp	x23, 0x0 <.text>
		00000000000004b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f8
     4bc: 910002f7     	add	x23, x23, #0x0
		00000000000004bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f8
     4c0: 12800016     	mov	w22, #-0x1              // =-1
     4c4: 14000005     	b	0x4d8 <entry_panic+0xf8>
     4c8: 52000108     	eor	w8, w8, #0x1
     4cc: f103fb7f     	cmp	x27, #0xfe
     4d0: 9100077b     	add	x27, x27, #0x1
     4d4: 54001408     	b.hi	0x754 <entry_panic+0x374>
     4d8: 387b6b58     	ldrb	w24, [x26, x27]
     4dc: 7100971f     	cmp	w24, #0x25
     4e0: 54ffff40     	b.eq	0x4c8 <entry_panic+0xe8>
     4e4: 34000c78     	cbz	w24, 0x670 <entry_panic+0x290>
     4e8: 36000228     	tbz	w8, #0x0, 0x52c <entry_panic+0x14c>
     4ec: aa1703e0     	mov	x0, x23
     4f0: 2a1803e1     	mov	w1, w24
     4f4: 52800282     	mov	w2, #0x14               // =20
     4f8: 94000000     	bl	0x4f8 <entry_panic+0x118>
		00000000000004f8:  R_AARCH64_CALL26	memchr
     4fc: b40001c0     	cbz	x0, 0x534 <entry_panic+0x154>
     500: 7101cf1f     	cmp	w24, #0x73
     504: 110006ab     	add	w11, w21, #0x1
     508: 2a1f03e8     	mov	w8, wzr
     50c: 1a9f17e9     	cset	w9, eq
     510: 3100079f     	cmn	w28, #0x1
     514: 1a9f17ea     	cset	w10, eq
     518: 6a0a013f     	tst	w9, w10
     51c: 1a9506d6     	csinc	w22, w22, w21, eq
     520: 1a95079c     	csinc	w28, w28, w21, eq
     524: 2a0b03f5     	mov	w21, w11
     528: 17ffffe9     	b	0x4cc <entry_panic+0xec>
     52c: 2a1f03e8     	mov	w8, wzr
     530: 17ffffe7     	b	0x4cc <entry_panic+0xec>
     534: 7100ab1f     	cmp	w24, #0x2a
     538: 540009a0     	b.eq	0x66c <entry_panic+0x28c>
     53c: 52800028     	mov	w8, #0x1                // =1
     540: 17ffffe3     	b	0x4cc <entry_panic+0xec>
     544: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000544:  R_AARCH64_ADR_PREL_PG_HI21	saved_nvmem_buf
     548: 91000108     	add	x8, x8, #0x0
		0000000000000548:  R_AARCH64_ADD_ABS_LO12_NC	saved_nvmem_buf
     54c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000054c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x292
     550: 91000000     	add	x0, x0, #0x0
		0000000000000550:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x292
     554: 39400102     	ldrb	w2, [x8]
     558: 39400503     	ldrb	w3, [x8, #0x1]
     55c: 39400904     	ldrb	w4, [x8, #0x2]
     560: 39400d05     	ldrb	w5, [x8, #0x3]
     564: 39401106     	ldrb	w6, [x8, #0x4]
     568: 39401507     	ldrb	w7, [x8, #0x5]
     56c: 39401909     	ldrb	w9, [x8, #0x6]
     570: 39401d0a     	ldrb	w10, [x8, #0x7]
     574: 3940210b     	ldrb	w11, [x8, #0x8]
     578: 3940250c     	ldrb	w12, [x8, #0x9]
     57c: 3940290d     	ldrb	w13, [x8, #0xa]
     580: 39402d08     	ldrb	w8, [x8, #0xb]
     584: b9000bea     	str	w10, [sp, #0x8]
     588: b90023ed     	str	w13, [sp, #0x20]
     58c: b9002be8     	str	w8, [sp, #0x28]
     590: b9001bec     	str	w12, [sp, #0x18]
     594: b90013eb     	str	w11, [sp, #0x10]
     598: b90003e9     	str	w9, [sp]
     59c: 14000024     	b	0x62c <entry_panic+0x24c>
     5a0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000005a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b4
     5a4: 91000108     	add	x8, x8, #0x0
		00000000000005a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b4
     5a8: 91004801     	add	x1, x0, #0x12
     5ac: aa0803e0     	mov	x0, x8
     5b0: aa1303e2     	mov	x2, x19
     5b4: 94000000     	bl	0x5b4 <entry_panic+0x1d4>
		00000000000005b4:  R_AARCH64_CALL26	_printk
     5b8: aa1f03e0     	mov	x0, xzr
     5bc: 90000014     	adrp	x20, 0x0 <.text>
		00000000000005bc:  R_AARCH64_ADR_PREL_PG_HI21	saved_nvmem_buf
     5c0: 91000294     	add	x20, x20, #0x0
		00000000000005c0:  R_AARCH64_ADD_ABS_LO12_NC	saved_nvmem_buf
     5c4: 52800a08     	mov	w8, #0x50               // =80
     5c8: aa1303e1     	mov	x1, x19
     5cc: aa1403e2     	mov	x2, x20
     5d0: 52800083     	mov	w3, #0x4                // =4
     5d4: 52800024     	mov	w4, #0x1                // =1
     5d8: 39000e88     	strb	w8, [x20, #0x3]
     5dc: 94000000     	bl	0x5dc <entry_panic+0x1fc>
		00000000000005dc:  R_AARCH64_CALL26	fill_nvmem_buf
     5e0: 39401e88     	ldrb	w8, [x20, #0x7]
     5e4: 39402289     	ldrb	w9, [x20, #0x8]
     5e8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb8
     5ec: 91000000     	add	x0, x0, #0x0
		00000000000005ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb8
     5f0: 3940268a     	ldrb	w10, [x20, #0x9]
     5f4: 39402a8b     	ldrb	w11, [x20, #0xa]
     5f8: 39402e8c     	ldrb	w12, [x20, #0xb]
     5fc: 39400281     	ldrb	w1, [x20]
     600: 39400682     	ldrb	w2, [x20, #0x1]
     604: 39400a83     	ldrb	w3, [x20, #0x2]
     608: 39400e84     	ldrb	w4, [x20, #0x3]
     60c: 39401285     	ldrb	w5, [x20, #0x4]
     610: 39401686     	ldrb	w6, [x20, #0x5]
     614: 39401a87     	ldrb	w7, [x20, #0x6]
     618: b90023ec     	str	w12, [sp, #0x20]
     61c: b9001beb     	str	w11, [sp, #0x18]
     620: b90013ea     	str	w10, [sp, #0x10]
     624: b9000be9     	str	w9, [sp, #0x8]
     628: b90003e8     	str	w8, [sp]
     62c: 94000000     	bl	0x62c <entry_panic+0x24c>
		000000000000062c:  R_AARCH64_CALL26	_printk
     630: d5384108     	mrs	x8, SP_EL0
     634: f9438908     	ldr	x8, [x8, #0x710]
     638: f85f03a9     	ldur	x9, [x29, #-0x10]
     63c: eb09011f     	cmp	x8, x9
     640: 540008c1     	b.ne	0x758 <entry_panic+0x378>
     644: 2a1f03e0     	mov	w0, wzr
     648: a9594ff4     	ldp	x20, x19, [sp, #0x190]
     64c: a95857f6     	ldp	x22, x21, [sp, #0x180]
     650: a9575ff8     	ldp	x24, x23, [sp, #0x170]
     654: a95667fa     	ldp	x26, x25, [sp, #0x160]
     658: a9556ffc     	ldp	x28, x27, [sp, #0x150]
     65c: a9547bfd     	ldp	x29, x30, [sp, #0x140]
     660: 910683ff     	add	sp, sp, #0x1a0
     664: d50323bf     	autiasp
     668: d65f03c0     	ret
     66c: 12800015     	mov	w21, #-0x1              // =-1
     670: 510006c8     	sub	w8, w22, #0x1
     674: 7100191f     	cmp	w8, #0x6
     678: 540000e8     	b.hi	0x694 <entry_panic+0x2b4>
     67c: f8765a88     	ldr	x8, [x20, w22, uxtw #3]
     680: b50000e8     	cbnz	x8, 0x69c <entry_panic+0x2bc>
     684: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000684:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x491
     688: 91000000     	add	x0, x0, #0x0
		0000000000000688:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x491
     68c: 2a1603e1     	mov	w1, w22
     690: 94000000     	bl	0x690 <entry_panic+0x2b0>
		0000000000000690:  R_AARCH64_CALL26	_printk
     694: aa1f03f6     	mov	x22, xzr
     698: 1400000b     	b	0x6c4 <entry_panic+0x2e4>
     69c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000069c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x381
     6a0: 91000000     	add	x0, x0, #0x0
		00000000000006a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x381
     6a4: aa0803e1     	mov	x1, x8
     6a8: aa0803f6     	mov	x22, x8
     6ac: 94000000     	bl	0x6ac <entry_panic+0x2cc>
		00000000000006ac:  R_AARCH64_CALL26	_printk
     6b0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17c
     6b4: 91000021     	add	x1, x1, #0x0
		00000000000006b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17c
     6b8: aa1603e0     	mov	x0, x22
     6bc: 94000000     	bl	0x6bc <entry_panic+0x2dc>
		00000000000006bc:  R_AARCH64_CALL26	strcmp
     6c0: 340004e0     	cbz	w0, 0x75c <entry_panic+0x37c>
     6c4: 710006bf     	cmp	w21, #0x1
     6c8: 5400012c     	b.gt	0x6ec <entry_panic+0x30c>
     6cc: 34000335     	cbz	w21, 0x730 <entry_panic+0x350>
     6d0: 710006bf     	cmp	w21, #0x1
     6d4: 54000201     	b.ne	0x714 <entry_panic+0x334>
     6d8: f9400681     	ldr	x1, [x20, #0x8]
     6dc: 9100c3e0     	add	x0, sp, #0x30
     6e0: 94000000     	bl	0x6e0 <entry_panic+0x300>
		00000000000006e0:  R_AARCH64_CALL26	_printk
     6e4: aa1603e0     	mov	x0, x22
     6e8: 17ffffb5     	b	0x5bc <entry_panic+0x1dc>
     6ec: 71000abf     	cmp	w21, #0x2
     6f0: 54000280     	b.eq	0x740 <entry_panic+0x360>
     6f4: 71000ebf     	cmp	w21, #0x3
     6f8: 540000e1     	b.ne	0x714 <entry_panic+0x334>
     6fc: a9408a81     	ldp	x1, x2, [x20, #0x8]
     700: 9100c3e0     	add	x0, sp, #0x30
     704: f9400e83     	ldr	x3, [x20, #0x18]
     708: 94000000     	bl	0x708 <entry_panic+0x328>
		0000000000000708:  R_AARCH64_CALL26	_printk
     70c: aa1603e0     	mov	x0, x22
     710: 17ffffab     	b	0x5bc <entry_panic+0x1dc>
     714: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000714:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x41b
     718: 91000000     	add	x0, x0, #0x0
		0000000000000718:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x41b
     71c: 2a1503e1     	mov	w1, w21
     720: aa1303e2     	mov	x2, x19
     724: 94000000     	bl	0x724 <entry_panic+0x344>
		0000000000000724:  R_AARCH64_CALL26	_printk
     728: aa1603e0     	mov	x0, x22
     72c: 17ffffa4     	b	0x5bc <entry_panic+0x1dc>
     730: 9100c3e0     	add	x0, sp, #0x30
     734: 94000000     	bl	0x734 <entry_panic+0x354>
		0000000000000734:  R_AARCH64_CALL26	_printk
     738: aa1603e0     	mov	x0, x22
     73c: 17ffffa0     	b	0x5bc <entry_panic+0x1dc>
     740: a9408a81     	ldp	x1, x2, [x20, #0x8]
     744: 9100c3e0     	add	x0, sp, #0x30
     748: 94000000     	bl	0x748 <entry_panic+0x368>
		0000000000000748:  R_AARCH64_CALL26	_printk
     74c: aa1603e0     	mov	x0, x22
     750: 17ffff9b     	b	0x5bc <entry_panic+0x1dc>
     754: d4200020     	brk	#0x1
     758: 94000000     	bl	0x758 <entry_panic+0x378>
		0000000000000758:  R_AARCH64_CALL26	__stack_chk_fail
     75c: b9400321     	ldr	w1, [x25]
		000000000000075c:  R_AARCH64_LDST32_ABS_LO12_NC	once_entry_panic_count
     760: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000760:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x595
     764: 91000000     	add	x0, x0, #0x0
		0000000000000764:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x595
     768: 94000000     	bl	0x768 <entry_panic+0x388>
		0000000000000768:  R_AARCH64_CALL26	panic
