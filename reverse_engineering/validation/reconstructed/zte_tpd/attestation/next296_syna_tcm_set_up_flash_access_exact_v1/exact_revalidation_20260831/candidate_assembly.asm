
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000002e0 <syna_tcm_set_up_flash_access>:
     2e0: d503233f     	paciasp
     2e4: d101c3ff     	sub	sp, sp, #0x70
     2e8: a9047bfd     	stp	x29, x30, [sp, #0x40]
     2ec: a90557f6     	stp	x22, x21, [sp, #0x50]
     2f0: a9064ff4     	stp	x20, x19, [sp, #0x60]
     2f4: 910103fd     	add	x29, sp, #0x40
     2f8: d5384108     	mrs	x8, SP_EL0
     2fc: f9438908     	ldr	x8, [x8, #0x710]
     300: f81f83a8     	stur	x8, [x29, #-0x8]
     304: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     308: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     30c: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     310: b5000101     	cbnz	x1, 0x330 <syna_tcm_set_up_flash_access+0x50>
     314: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000314:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29ae
     318: 91000000     	add	x0, x0, #0x0
		0000000000000318:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29ae
     31c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000031c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x958c
     320: 91000021     	add	x1, x1, #0x0
		0000000000000320:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x958c
     324: 94000000     	bl	0x324 <syna_tcm_set_up_flash_access+0x44>
		0000000000000324:  R_AARCH64_CALL26	_printk
     328: 12801e00     	mov	w0, #-0xf1              // =-241
     32c: 1400007c     	b	0x51c <syna_tcm_set_up_flash_access+0x23c>
     330: aa0103f3     	mov	x19, x1
     334: aa0003f4     	mov	x20, x0
     338: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79c0
     33c: 91000000     	add	x0, x0, #0x0
		000000000000033c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79c0
     340: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x958c
     344: 91000021     	add	x1, x1, #0x0
		0000000000000344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x958c
     348: 2a0203f5     	mov	w21, w2
     34c: 2a0303f6     	mov	w22, w3
     350: 94000000     	bl	0x350 <syna_tcm_set_up_flash_access+0x70>
		0000000000000350:  R_AARCH64_CALL26	_printk
     354: 910023e1     	add	x1, sp, #0x8
     358: aa1403e0     	mov	x0, x20
     35c: 2a1503e2     	mov	w2, w21
     360: 94000000     	bl	0x360 <syna_tcm_set_up_flash_access+0x80>
		0000000000000360:  R_AARCH64_CALL26	syna_tcm_identify
     364: 36f80140     	tbz	w0, #0x1f, 0x38c <syna_tcm_set_up_flash_access+0xac>
     368: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000368:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xac36
     36c: 91000108     	add	x8, x8, #0x0
		000000000000036c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xac36
     370: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x958c
     374: 91000021     	add	x1, x1, #0x0
		0000000000000374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x958c
     378: 2a0003f3     	mov	w19, w0
     37c: aa0803e0     	mov	x0, x8
     380: 94000000     	bl	0x380 <syna_tcm_set_up_flash_access+0xa0>
		0000000000000380:  R_AARCH64_CALL26	_printk
     384: 2a1303e0     	mov	w0, w19
     388: 14000065     	b	0x51c <syna_tcm_set_up_flash_access+0x23c>
     38c: 394027e8     	ldrb	w8, [sp, #0x9]
     390: 7100051f     	cmp	w8, #0x1
     394: 540001c1     	b.ne	0x3cc <syna_tcm_set_up_flash_access+0xec>
     398: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000398:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6016
     39c: 91000000     	add	x0, x0, #0x0
		000000000000039c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6016
     3a0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x958c
     3a4: 91000021     	add	x1, x1, #0x0
		00000000000003a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x958c
     3a8: 94000000     	bl	0x3a8 <syna_tcm_set_up_flash_access+0xc8>
		00000000000003a8:  R_AARCH64_CALL26	_printk
     3ac: aa1403e0     	mov	x0, x20
     3b0: 52800161     	mov	w1, #0xb                // =11
     3b4: 2a1603e2     	mov	w2, w22
     3b8: 94000000     	bl	0x3b8 <syna_tcm_set_up_flash_access+0xd8>
		00000000000003b8:  R_AARCH64_CALL26	syna_tcm_switch_fw_mode
     3bc: 36f80080     	tbz	w0, #0x1f, 0x3cc <syna_tcm_set_up_flash_access+0xec>
     3c0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000003c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa53c
     3c4: 91000108     	add	x8, x8, #0x0
		00000000000003c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa53c
     3c8: 17ffffea     	b	0x370 <syna_tcm_set_up_flash_access+0x90>
     3cc: 39402682     	ldrb	w2, [x20, #0x9]
     3d0: 71002c5f     	cmp	w2, #0xb
     3d4: 54000241     	b.ne	0x41c <syna_tcm_set_up_flash_access+0x13c>
     3d8: aa1f03e8     	mov	x8, xzr
     3dc: 52800029     	mov	w9, #0x1                // =1
     3e0: 14000004     	b	0x3f0 <syna_tcm_set_up_flash_access+0x110>
     3e4: 91000508     	add	x8, x8, #0x1
     3e8: f100411f     	cmp	x8, #0x10
     3ec: 540002a0     	b.eq	0x440 <syna_tcm_set_up_flash_access+0x160>
     3f0: 8b08028a     	add	x10, x20, x8
     3f4: 3942094a     	ldrb	w10, [x10, #0x82]
     3f8: 7100e95f     	cmp	w10, #0x3a
     3fc: 54ffff41     	b.ne	0x3e4 <syna_tcm_set_up_flash_access+0x104>
     400: f100311f     	cmp	x8, #0xc
     404: 54000dc8     	b.hi	0x5bc <syna_tcm_set_up_flash_access+0x2dc>
     408: 8b08028a     	add	x10, x20, x8
     40c: 3942154a     	ldrb	w10, [x10, #0x85]
     410: 362ffeaa     	tbz	w10, #0x5, 0x3e4 <syna_tcm_set_up_flash_access+0x104>
     414: 39022269     	strb	w9, [x19, #0x88]
     418: 17fffff3     	b	0x3e4 <syna_tcm_set_up_flash_access+0x104>
     41c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000041c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x432a
     420: 91000108     	add	x8, x8, #0x0
		0000000000000420:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x432a
     424: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000424:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x958c
     428: 91000021     	add	x1, x1, #0x0
		0000000000000428:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x958c
     42c: 2a0003f3     	mov	w19, w0
     430: aa0803e0     	mov	x0, x8
     434: 94000000     	bl	0x434 <syna_tcm_set_up_flash_access+0x154>
		0000000000000434:  R_AARCH64_CALL26	_printk
     438: 2a1303e0     	mov	w0, w19
     43c: 14000038     	b	0x51c <syna_tcm_set_up_flash_access+0x23c>
     440: 91038281     	add	x1, x20, #0xe0
     444: aa1403e0     	mov	x0, x20
     448: 2a1503e2     	mov	w2, w21
     44c: f9001261     	str	x1, [x19, #0x20]
     450: 94000000     	bl	0x450 <syna_tcm_set_up_flash_access+0x170>
		0000000000000450:  R_AARCH64_CALL26	syna_tcm_get_boot_info
     454: 36f80080     	tbz	w0, #0x1f, 0x464 <syna_tcm_set_up_flash_access+0x184>
     458: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000458:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5056
     45c: 91000108     	add	x8, x8, #0x0
		000000000000045c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5056
     460: 17ffffc4     	b	0x370 <syna_tcm_set_up_flash_access+0x90>
     464: f9401268     	ldr	x8, [x19, #0x20]
     468: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000468:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x958c
     46c: 910002b5     	add	x21, x21, #0x0
		000000000000046c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x958c
     470: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000470:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4368
     474: 91000000     	add	x0, x0, #0x0
		0000000000000474:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4368
     478: aa1503e1     	mov	x1, x21
     47c: 39400102     	ldrb	w2, [x8]
     480: 94000000     	bl	0x480 <syna_tcm_set_up_flash_access+0x1a0>
		0000000000000480:  R_AARCH64_CALL26	_printk
     484: f9401268     	ldr	x8, [x19, #0x20]
     488: b9403a94     	ldr	w20, [x20, #0x38]
     48c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000048c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb342
     490: 91000000     	add	x0, x0, #0x0
		0000000000000490:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb342
     494: aa1503e1     	mov	x1, x21
     498: 39401103     	ldrb	w3, [x8, #0x4]
     49c: 531f7862     	lsl	w2, w3, #1
     4a0: b9002e62     	str	w2, [x19, #0x2c]
     4a4: 94000000     	bl	0x4a4 <syna_tcm_set_up_flash_access+0x1c4>
		00000000000004a4:  R_AARCH64_CALL26	_printk
     4a8: f9401268     	ldr	x8, [x19, #0x20]
     4ac: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15b2
     4b0: 91000000     	add	x0, x0, #0x0
		00000000000004b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15b2
     4b4: aa1503e1     	mov	x1, x21
     4b8: 78405103     	ldurh	w3, [x8, #0x5]
     4bc: 531f7862     	lsl	w2, w3, #1
     4c0: b9002a62     	str	w2, [x19, #0x28]
     4c4: 94000000     	bl	0x4c4 <syna_tcm_set_up_flash_access+0x1e4>
		00000000000004c4:  R_AARCH64_CALL26	_printk
     4c8: f9401268     	ldr	x8, [x19, #0x20]
     4cc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x67b4
     4d0: 91000000     	add	x0, x0, #0x0
		00000000000004d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x67b4
     4d4: aa1503e1     	mov	x1, x21
     4d8: 78407102     	ldurh	w2, [x8, #0x7]
     4dc: b9003262     	str	w2, [x19, #0x30]
     4e0: 94000000     	bl	0x4e0 <syna_tcm_set_up_flash_access+0x200>
		00000000000004e0:  R_AARCH64_CALL26	_printk
     4e4: b9402e68     	ldr	w8, [x19, #0x2c]
     4e8: 340000b4     	cbz	w20, 0x4fc <syna_tcm_set_up_flash_access+0x21c>
     4ec: 6b14011f     	cmp	w8, w20
     4f0: 54000069     	b.ls	0x4fc <syna_tcm_set_up_flash_access+0x21c>
     4f4: b9002e74     	str	w20, [x19, #0x2c]
     4f8: 14000002     	b	0x500 <syna_tcm_set_up_flash_access+0x220>
     4fc: 34000508     	cbz	w8, 0x59c <syna_tcm_set_up_flash_access+0x2bc>
     500: b9402a68     	ldr	w8, [x19, #0x28]
     504: 34000228     	cbz	w8, 0x548 <syna_tcm_set_up_flash_access+0x268>
     508: f9401269     	ldr	x9, [x19, #0x20]
     50c: 3940012a     	ldrb	w10, [x9]
     510: 71000d5f     	cmp	w10, #0x3
     514: 54000200     	b.eq	0x554 <syna_tcm_set_up_flash_access+0x274>
     518: 2a1f03e0     	mov	w0, wzr
     51c: d5384108     	mrs	x8, SP_EL0
     520: f9438908     	ldr	x8, [x8, #0x710]
     524: f85f83a9     	ldur	x9, [x29, #-0x8]
     528: eb09011f     	cmp	x8, x9
     52c: 540004a1     	b.ne	0x5c0 <syna_tcm_set_up_flash_access+0x2e0>
     530: a9464ff4     	ldp	x20, x19, [sp, #0x60]
     534: a94557f6     	ldp	x22, x21, [sp, #0x50]
     538: a9447bfd     	ldp	x29, x30, [sp, #0x40]
     53c: 9101c3ff     	add	sp, sp, #0x70
     540: d50323bf     	autiasp
     544: d65f03c0     	ret
     548: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000548:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa56a
     54c: 91000000     	add	x0, x0, #0x0
		000000000000054c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa56a
     550: 14000015     	b	0x5a4 <syna_tcm_set_up_flash_access+0x2c4>
     554: 39405129     	ldrb	w9, [x9, #0x14]
     558: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000558:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x958c
     55c: 91000294     	add	x20, x20, #0x0
		000000000000055c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x958c
     560: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000560:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c86
     564: 91000000     	add	x0, x0, #0x0
		0000000000000564:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c86
     568: aa1403e1     	mov	x1, x20
     56c: 1b097d02     	mul	w2, w8, w9
     570: 2a0203e3     	mov	w3, w2
     574: b9003e62     	str	w2, [x19, #0x3c]
     578: 94000000     	bl	0x578 <syna_tcm_set_up_flash_access+0x298>
		0000000000000578:  R_AARCH64_CALL26	_printk
     57c: f9401268     	ldr	x8, [x19, #0x20]
     580: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000580:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xac60
     584: 91000000     	add	x0, x0, #0x0
		0000000000000584:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xac60
     588: aa1403e1     	mov	x1, x20
     58c: 39405102     	ldrb	w2, [x8, #0x14]
     590: 39405503     	ldrb	w3, [x8, #0x15]
     594: 94000000     	bl	0x594 <syna_tcm_set_up_flash_access+0x2b4>
		0000000000000594:  R_AARCH64_CALL26	_printk
     598: 17ffffe0     	b	0x518 <syna_tcm_set_up_flash_access+0x238>
     59c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000059c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e66
     5a0: 91000000     	add	x0, x0, #0x0
		00000000000005a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e66
     5a4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x958c
     5a8: 91000021     	add	x1, x1, #0x0
		00000000000005a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x958c
     5ac: 2a1f03e2     	mov	w2, wzr
     5b0: 94000000     	bl	0x5b0 <syna_tcm_set_up_flash_access+0x2d0>
		00000000000005b0:  R_AARCH64_CALL26	_printk
     5b4: 12801e00     	mov	w0, #-0xf1              // =-241
     5b8: 17ffffd9     	b	0x51c <syna_tcm_set_up_flash_access+0x23c>
     5bc: d42aa240     	brk	#0x5512
     5c0: 94000000     	bl	0x5c0 <syna_tcm_set_up_flash_access+0x2e0>
		00000000000005c0:  R_AARCH64_CALL26	__stack_chk_fail
