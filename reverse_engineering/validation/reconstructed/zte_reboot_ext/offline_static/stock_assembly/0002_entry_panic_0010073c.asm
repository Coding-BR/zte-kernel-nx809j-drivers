
/input/zte_reboot_ext.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000001ec <entry_panic>:
     1ec: d503233f     	paciasp
     1f0: d10683ff     	sub	sp, sp, #0x1a0
     1f4: a9147bfd     	stp	x29, x30, [sp, #0x140]
     1f8: a9156ffc     	stp	x28, x27, [sp, #0x150]
     1fc: a91667fa     	stp	x26, x25, [sp, #0x160]
     200: a9175ff8     	stp	x24, x23, [sp, #0x170]
     204: a91857f6     	stp	x22, x21, [sp, #0x180]
     208: a9194ff4     	stp	x20, x19, [sp, #0x190]
     20c: 910503fd     	add	x29, sp, #0x140
     210: d5384108     	mrs	x8, SP_EL0
     214: 90000019     	adrp	x25, 0x0 <.text>
		0000000000000214:  R_AARCH64_ADR_PREL_PG_HI21	once_entry_panic_count
     218: aa0103f4     	mov	x20, x1
     21c: f9438908     	ldr	x8, [x8, #0x710]
     220: f81f03a8     	stur	x8, [x29, #-0x10]
     224: b9400328     	ldr	w8, [x25]
		0000000000000224:  R_AARCH64_LDST32_ABS_LO12_NC	once_entry_panic_count
     228: f9400033     	ldr	x19, [x1]
     22c: a9127fff     	stp	xzr, xzr, [sp, #0x120]
     230: a9117fff     	stp	xzr, xzr, [sp, #0x110]
     234: 11000501     	add	w1, w8, #0x1
     238: a9107fff     	stp	xzr, xzr, [sp, #0x100]
     23c: a90f7fff     	stp	xzr, xzr, [sp, #0xf0]
     240: a90e7fff     	stp	xzr, xzr, [sp, #0xe0]
     244: a90d7fff     	stp	xzr, xzr, [sp, #0xd0]
     248: a90c7fff     	stp	xzr, xzr, [sp, #0xc0]
     24c: a90b7fff     	stp	xzr, xzr, [sp, #0xb0]
     250: a90a7fff     	stp	xzr, xzr, [sp, #0xa0]
     254: a9097fff     	stp	xzr, xzr, [sp, #0x90]
     258: a9087fff     	stp	xzr, xzr, [sp, #0x80]
     25c: a9077fff     	stp	xzr, xzr, [sp, #0x70]
     260: a9067fff     	stp	xzr, xzr, [sp, #0x60]
     264: a9057fff     	stp	xzr, xzr, [sp, #0x50]
     268: a9047fff     	stp	xzr, xzr, [sp, #0x40]
     26c: a9037fff     	stp	xzr, xzr, [sp, #0x30]
     270: b9000321     	str	w1, [x25]
		0000000000000270:  R_AARCH64_LDST32_ABS_LO12_NC	once_entry_panic_count
     274: 350006e8     	cbnz	w8, 0x350 <entry_panic+0x164>
     278: b4000a73     	cbz	x19, 0x3c4 <entry_panic+0x1d8>
     27c: aa1303e0     	mov	x0, x19
     280: 94000000     	bl	0x280 <entry_panic+0x94>
		0000000000000280:  R_AARCH64_CALL26	strlen
     284: 91005408     	add	x8, x0, #0x15
     288: f104011f     	cmp	x8, #0x100
     28c: 54000908     	b.hi	0x3ac <entry_panic+0x1c0>
     290: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000290:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x177
     294: 91000042     	add	x2, x2, #0x0
		0000000000000294:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x177
     298: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000298:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a5
     29c: 91000063     	add	x3, x3, #0x0
		000000000000029c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a5
     2a0: 9100c3e0     	add	x0, sp, #0x30
     2a4: 52802001     	mov	w1, #0x100              // =256
     2a8: aa1303e4     	mov	x4, x19
     2ac: 9100c3fa     	add	x26, sp, #0x30
     2b0: 94000000     	bl	0x2b0 <entry_panic+0xc4>
		00000000000002b0:  R_AARCH64_CALL26	snprintf
     2b4: aa1f03fb     	mov	x27, xzr
     2b8: 2a1f03e8     	mov	w8, wzr
     2bc: 2a1f03f5     	mov	w21, wzr
     2c0: 1280001c     	mov	w28, #-0x1              // =-1
     2c4: 90000017     	adrp	x23, 0x0 <.text>
		00000000000002c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5dd
     2c8: 910002f7     	add	x23, x23, #0x0
		00000000000002c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5dd
     2cc: 12800016     	mov	w22, #-0x1              // =-1
     2d0: 14000005     	b	0x2e4 <entry_panic+0xf8>
     2d4: 52000108     	eor	w8, w8, #0x1
     2d8: f103fb7f     	cmp	x27, #0xfe
     2dc: 9100077b     	add	x27, x27, #0x1
     2e0: 54001408     	b.hi	0x560 <entry_panic+0x374>
     2e4: 387b6b58     	ldrb	w24, [x26, x27]
     2e8: 7100971f     	cmp	w24, #0x25
     2ec: 54ffff40     	b.eq	0x2d4 <entry_panic+0xe8>
     2f0: 34000c78     	cbz	w24, 0x47c <entry_panic+0x290>
     2f4: 36000228     	tbz	w8, #0x0, 0x338 <entry_panic+0x14c>
     2f8: aa1703e0     	mov	x0, x23
     2fc: 2a1803e1     	mov	w1, w24
     300: 52800282     	mov	w2, #0x14               // =20
     304: 94000000     	bl	0x304 <entry_panic+0x118>
		0000000000000304:  R_AARCH64_CALL26	memchr
     308: b40001c0     	cbz	x0, 0x340 <entry_panic+0x154>
     30c: 7101cf1f     	cmp	w24, #0x73
     310: 110006ab     	add	w11, w21, #0x1
     314: 2a1f03e8     	mov	w8, wzr
     318: 1a9f17e9     	cset	w9, eq
     31c: 3100079f     	cmn	w28, #0x1
     320: 1a9f17ea     	cset	w10, eq
     324: 6a0a013f     	tst	w9, w10
     328: 1a9506d6     	csinc	w22, w22, w21, eq
     32c: 1a95079c     	csinc	w28, w28, w21, eq
     330: 2a0b03f5     	mov	w21, w11
     334: 17ffffe9     	b	0x2d8 <entry_panic+0xec>
     338: 2a1f03e8     	mov	w8, wzr
     33c: 17ffffe7     	b	0x2d8 <entry_panic+0xec>
     340: 7100ab1f     	cmp	w24, #0x2a
     344: 540009a0     	b.eq	0x478 <entry_panic+0x28c>
     348: 52800028     	mov	w8, #0x1                // =1
     34c: 17ffffe3     	b	0x2d8 <entry_panic+0xec>
     350: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000350:  R_AARCH64_ADR_PREL_PG_HI21	saved_nvmem_buf
     354: 91000108     	add	x8, x8, #0x0
		0000000000000354:  R_AARCH64_ADD_ABS_LO12_NC	saved_nvmem_buf
     358: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000358:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x269
     35c: 91000000     	add	x0, x0, #0x0
		000000000000035c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x269
     360: 39400102     	ldrb	w2, [x8]
     364: 39400503     	ldrb	w3, [x8, #0x1]
     368: 39400904     	ldrb	w4, [x8, #0x2]
     36c: 39400d05     	ldrb	w5, [x8, #0x3]
     370: 39401106     	ldrb	w6, [x8, #0x4]
     374: 39401507     	ldrb	w7, [x8, #0x5]
     378: 39401909     	ldrb	w9, [x8, #0x6]
     37c: 39401d0a     	ldrb	w10, [x8, #0x7]
     380: 3940210b     	ldrb	w11, [x8, #0x8]
     384: 3940250c     	ldrb	w12, [x8, #0x9]
     388: 3940290d     	ldrb	w13, [x8, #0xa]
     38c: 39402d08     	ldrb	w8, [x8, #0xb]
     390: b9000bea     	str	w10, [sp, #0x8]
     394: b90023ed     	str	w13, [sp, #0x20]
     398: b9002be8     	str	w8, [sp, #0x28]
     39c: b9001bec     	str	w12, [sp, #0x18]
     3a0: b90013eb     	str	w11, [sp, #0x10]
     3a4: b90003e9     	str	w9, [sp]
     3a8: 14000024     	b	0x438 <entry_panic+0x24c>
     3ac: 90000008     	adrp	x8, 0x0 <.text>
		00000000000003ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58a
     3b0: 91000108     	add	x8, x8, #0x0
		00000000000003b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58a
     3b4: 91004801     	add	x1, x0, #0x12
     3b8: aa0803e0     	mov	x0, x8
     3bc: aa1303e2     	mov	x2, x19
     3c0: 94000000     	bl	0x3c0 <entry_panic+0x1d4>
		00000000000003c0:  R_AARCH64_CALL26	_printk
     3c4: aa1f03e0     	mov	x0, xzr
     3c8: 90000014     	adrp	x20, 0x0 <.text>
		00000000000003c8:  R_AARCH64_ADR_PREL_PG_HI21	saved_nvmem_buf
     3cc: 91000294     	add	x20, x20, #0x0
		00000000000003cc:  R_AARCH64_ADD_ABS_LO12_NC	saved_nvmem_buf
     3d0: 52800a08     	mov	w8, #0x50               // =80
     3d4: aa1303e1     	mov	x1, x19
     3d8: aa1403e2     	mov	x2, x20
     3dc: 52800083     	mov	w3, #0x4                // =4
     3e0: 52800024     	mov	w4, #0x1                // =1
     3e4: 39000e88     	strb	w8, [x20, #0x3]
     3e8: 94000000     	bl	0x3e8 <entry_panic+0x1fc>
		00000000000003e8:  R_AARCH64_CALL26	fill_nvmem_buf
     3ec: 39401e88     	ldrb	w8, [x20, #0x7]
     3f0: 39402289     	ldrb	w9, [x20, #0x8]
     3f4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85
     3f8: 91000000     	add	x0, x0, #0x0
		00000000000003f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85
     3fc: 3940268a     	ldrb	w10, [x20, #0x9]
     400: 39402a8b     	ldrb	w11, [x20, #0xa]
     404: 39402e8c     	ldrb	w12, [x20, #0xb]
     408: 39400281     	ldrb	w1, [x20]
     40c: 39400682     	ldrb	w2, [x20, #0x1]
     410: 39400a83     	ldrb	w3, [x20, #0x2]
     414: 39400e84     	ldrb	w4, [x20, #0x3]
     418: 39401285     	ldrb	w5, [x20, #0x4]
     41c: 39401686     	ldrb	w6, [x20, #0x5]
     420: 39401a87     	ldrb	w7, [x20, #0x6]
     424: b90023ec     	str	w12, [sp, #0x20]
     428: b9001beb     	str	w11, [sp, #0x18]
     42c: b90013ea     	str	w10, [sp, #0x10]
     430: b9000be9     	str	w9, [sp, #0x8]
     434: b90003e8     	str	w8, [sp]
     438: 94000000     	bl	0x438 <entry_panic+0x24c>
		0000000000000438:  R_AARCH64_CALL26	_printk
     43c: d5384108     	mrs	x8, SP_EL0
     440: f9438908     	ldr	x8, [x8, #0x710]
     444: f85f03a9     	ldur	x9, [x29, #-0x10]
     448: eb09011f     	cmp	x8, x9
     44c: 540008c1     	b.ne	0x564 <entry_panic+0x378>
     450: 2a1f03e0     	mov	w0, wzr
     454: a9594ff4     	ldp	x20, x19, [sp, #0x190]
     458: a95857f6     	ldp	x22, x21, [sp, #0x180]
     45c: a9575ff8     	ldp	x24, x23, [sp, #0x170]
     460: a95667fa     	ldp	x26, x25, [sp, #0x160]
     464: a9556ffc     	ldp	x28, x27, [sp, #0x150]
     468: a9547bfd     	ldp	x29, x30, [sp, #0x140]
     46c: 910683ff     	add	sp, sp, #0x1a0
     470: d50323bf     	autiasp
     474: d65f03c0     	ret
     478: 12800015     	mov	w21, #-0x1              // =-1
     47c: 510006c8     	sub	w8, w22, #0x1
     480: 7100191f     	cmp	w8, #0x6
     484: 540000e8     	b.hi	0x4a0 <entry_panic+0x2b4>
     488: f8765a88     	ldr	x8, [x20, w22, uxtw #3]
     48c: b50000e8     	cbnz	x8, 0x4a8 <entry_panic+0x2bc>
     490: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000490:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44a
     494: 91000000     	add	x0, x0, #0x0
		0000000000000494:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44a
     498: 2a1603e1     	mov	w1, w22
     49c: 94000000     	bl	0x49c <entry_panic+0x2b0>
		000000000000049c:  R_AARCH64_CALL26	_printk
     4a0: aa1f03f6     	mov	x22, xzr
     4a4: 1400000b     	b	0x4d0 <entry_panic+0x2e4>
     4a8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30a
     4ac: 91000000     	add	x0, x0, #0x0
		00000000000004ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30a
     4b0: aa0803e1     	mov	x1, x8
     4b4: aa0803f6     	mov	x22, x8
     4b8: 94000000     	bl	0x4b8 <entry_panic+0x2cc>
		00000000000004b8:  R_AARCH64_CALL26	_printk
     4bc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17c
     4c0: 91000021     	add	x1, x1, #0x0
		00000000000004c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17c
     4c4: aa1603e0     	mov	x0, x22
     4c8: 94000000     	bl	0x4c8 <entry_panic+0x2dc>
		00000000000004c8:  R_AARCH64_CALL26	strcmp
     4cc: 340004e0     	cbz	w0, 0x568 <entry_panic+0x37c>
     4d0: 710006bf     	cmp	w21, #0x1
     4d4: 5400012c     	b.gt	0x4f8 <entry_panic+0x30c>
     4d8: 34000335     	cbz	w21, 0x53c <entry_panic+0x350>
     4dc: 710006bf     	cmp	w21, #0x1
     4e0: 54000201     	b.ne	0x520 <entry_panic+0x334>
     4e4: f9400681     	ldr	x1, [x20, #0x8]
     4e8: 9100c3e0     	add	x0, sp, #0x30
     4ec: 94000000     	bl	0x4ec <entry_panic+0x300>
		00000000000004ec:  R_AARCH64_CALL26	_printk
     4f0: aa1603e0     	mov	x0, x22
     4f4: 17ffffb5     	b	0x3c8 <entry_panic+0x1dc>
     4f8: 71000abf     	cmp	w21, #0x2
     4fc: 54000280     	b.eq	0x54c <entry_panic+0x360>
     500: 71000ebf     	cmp	w21, #0x3
     504: 540000e1     	b.ne	0x520 <entry_panic+0x334>
     508: a9408a81     	ldp	x1, x2, [x20, #0x8]
     50c: 9100c3e0     	add	x0, sp, #0x30
     510: f9400e83     	ldr	x3, [x20, #0x18]
     514: 94000000     	bl	0x514 <entry_panic+0x328>
		0000000000000514:  R_AARCH64_CALL26	_printk
     518: aa1603e0     	mov	x0, x22
     51c: 17ffffab     	b	0x3c8 <entry_panic+0x1dc>
     520: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000520:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bf
     524: 91000000     	add	x0, x0, #0x0
		0000000000000524:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bf
     528: 2a1503e1     	mov	w1, w21
     52c: aa1303e2     	mov	x2, x19
     530: 94000000     	bl	0x530 <entry_panic+0x344>
		0000000000000530:  R_AARCH64_CALL26	_printk
     534: aa1603e0     	mov	x0, x22
     538: 17ffffa4     	b	0x3c8 <entry_panic+0x1dc>
     53c: 9100c3e0     	add	x0, sp, #0x30
     540: 94000000     	bl	0x540 <entry_panic+0x354>
		0000000000000540:  R_AARCH64_CALL26	_printk
     544: aa1603e0     	mov	x0, x22
     548: 17ffffa0     	b	0x3c8 <entry_panic+0x1dc>
     54c: a9408a81     	ldp	x1, x2, [x20, #0x8]
     550: 9100c3e0     	add	x0, sp, #0x30
     554: 94000000     	bl	0x554 <entry_panic+0x368>
		0000000000000554:  R_AARCH64_CALL26	_printk
     558: aa1603e0     	mov	x0, x22
     55c: 17ffff9b     	b	0x3c8 <entry_panic+0x1dc>
     560: d4200020     	brk	#0x1
     564: 94000000     	bl	0x564 <entry_panic+0x378>
		0000000000000564:  R_AARCH64_CALL26	__stack_chk_fail
     568: b9400321     	ldr	w1, [x25]
		0000000000000568:  R_AARCH64_LDST32_ABS_LO12_NC	once_entry_panic_count
     56c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000056c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x50f
     570: 91000000     	add	x0, x0, #0x0
		0000000000000570:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x50f
     574: 94000000     	bl	0x574 <entry_panic+0x388>
		0000000000000574:  R_AARCH64_CALL26	panic
