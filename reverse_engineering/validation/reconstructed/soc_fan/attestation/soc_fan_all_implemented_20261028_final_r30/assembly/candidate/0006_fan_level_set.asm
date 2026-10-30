
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000004d8 <fan_level_set>:
     4d8: d503233f     	paciasp
     4dc: d10143ff     	sub	sp, sp, #0x50
     4e0: a9027bfd     	stp	x29, x30, [sp, #0x20]
     4e4: a90357f6     	stp	x22, x21, [sp, #0x30]
     4e8: a9044ff4     	stp	x20, x19, [sp, #0x40]
     4ec: 910083fd     	add	x29, sp, #0x20
     4f0: d5384108     	mrs	x8, SP_EL0
     4f4: 12001c33     	and	w19, w1, #0xff
     4f8: f9438908     	ldr	x8, [x8, #0x710]
     4fc: f81f83a8     	stur	x8, [x29, #-0x8]
     500: 39400008     	ldrb	w8, [x0]
     504: 6b13011f     	cmp	w8, w19
     508: 54000bc0     	b.eq	0x680 <fan_level_set+0x1a8>
     50c: 90000016     	adrp	x22, 0x0 <.text>
		000000000000050c:  R_AARCH64_ADR_PREL_PG_HI21	chip
     510: aa0003f4     	mov	x20, x0
     514: f94002c8     	ldr	x8, [x22]
		0000000000000514:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     518: f9402515     	ldr	x21, [x8, #0x48]
     51c: 34000273     	cbz	w19, 0x568 <fan_level_set+0x90>
     520: b40002d5     	cbz	x21, 0x578 <fan_level_set+0xa0>
     524: aa1503e0     	mov	x0, x21
     528: 94000000     	bl	0x528 <fan_level_set+0x50>
		0000000000000528:  R_AARCH64_CALL26	regulator_is_enabled
     52c: 35000260     	cbnz	w0, 0x578 <fan_level_set+0xa0>
     530: aa1503e0     	mov	x0, x21
     534: 94000000     	bl	0x534 <fan_level_set+0x5c>
		0000000000000534:  R_AARCH64_CALL26	regulator_enable
     538: 2a0003f5     	mov	w21, w0
     53c: 52800140     	mov	w0, #0xa                // =10
     540: 94000000     	bl	0x540 <fan_level_set+0x68>
		0000000000000540:  R_AARCH64_CALL26	msleep
     544: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000544:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x467
     548: 91000000     	add	x0, x0, #0x0
		0000000000000548:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x467
     54c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000054c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x331
     550: 91000021     	add	x1, x1, #0x0
		0000000000000550:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x331
     554: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000554:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x55b
     558: 91000042     	add	x2, x2, #0x0
		0000000000000558:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x55b
     55c: 52801da3     	mov	w3, #0xed               // =237
     560: 2a1503e4     	mov	w4, w21
     564: 1400006a     	b	0x70c <fan_level_set+0x234>
     568: b4000095     	cbz	x21, 0x578 <fan_level_set+0xa0>
     56c: aa1503e0     	mov	x0, x21
     570: 94000000     	bl	0x570 <fan_level_set+0x98>
		0000000000000570:  R_AARCH64_CALL26	regulator_is_enabled
     574: 35000b80     	cbnz	w0, 0x6e4 <fan_level_set+0x20c>
     578: f9403688     	ldr	x8, [x20, #0x68]
     57c: 5283e809     	mov	w9, #0x1f40             // =8000
     580: 7100027f     	cmp	w19, #0x0
     584: 1b097e69     	mul	w9, w19, w9
     588: 1a9f07ea     	cset	w10, ne
     58c: f9402108     	ldr	x8, [x8, #0x40]
     590: a900a3e9     	stp	x9, x8, [sp, #0x8]
     594: f94002c8     	ldr	x8, [x22]
		0000000000000594:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     598: 52938809     	mov	w9, #0x9c40             // =40000
     59c: 390053ea     	strb	w10, [sp, #0x14]
     5a0: f9400508     	ldr	x8, [x8, #0x8]
     5a4: f90003e9     	str	x9, [sp]
     5a8: b9401100     	ldr	w0, [x8, #0x10]
     5ac: 94000000     	bl	0x5ac <fan_level_set+0xd4>
		00000000000005ac:  R_AARCH64_CALL26	gpio_to_desc
     5b0: 94000000     	bl	0x5b0 <fan_level_set+0xd8>
		00000000000005b0:  R_AARCH64_CALL26	gpiod_get_raw_value
     5b4: 7100167f     	cmp	w19, #0x5
     5b8: 54000241     	b.ne	0x600 <fan_level_set+0x128>
     5bc: 7100041f     	cmp	w0, #0x1
     5c0: 540000e1     	b.ne	0x5dc <fan_level_set+0x104>
     5c4: f94002c8     	ldr	x8, [x22]
		00000000000005c4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     5c8: f9400508     	ldr	x8, [x8, #0x8]
     5cc: b9401100     	ldr	w0, [x8, #0x10]
     5d0: 94000000     	bl	0x5d0 <fan_level_set+0xf8>
		00000000000005d0:  R_AARCH64_CALL26	gpio_to_desc
     5d4: 2a1f03e1     	mov	w1, wzr
     5d8: 94000000     	bl	0x5d8 <fan_level_set+0x100>
		00000000000005d8:  R_AARCH64_CALL26	gpiod_direction_output_raw
     5dc: f9403688     	ldr	x8, [x20, #0x68]
     5e0: f9402109     	ldr	x9, [x8, #0x40]
     5e4: b940290a     	ldr	w10, [x8, #0x28]
     5e8: f9401108     	ldr	x8, [x8, #0x20]
     5ec: a900a7ff     	stp	xzr, x9, [sp, #0x8]
     5f0: b90013ea     	str	w10, [sp, #0x10]
     5f4: f90003e8     	str	x8, [sp]
     5f8: 79002bff     	strh	wzr, [sp, #0x14]
     5fc: 14000008     	b	0x61c <fan_level_set+0x144>
     600: 350000e0     	cbnz	w0, 0x61c <fan_level_set+0x144>
     604: f94002c8     	ldr	x8, [x22]
		0000000000000604:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     608: f9400508     	ldr	x8, [x8, #0x8]
     60c: b9401100     	ldr	w0, [x8, #0x10]
     610: 94000000     	bl	0x610 <fan_level_set+0x138>
		0000000000000610:  R_AARCH64_CALL26	gpio_to_desc
     614: 52800021     	mov	w1, #0x1                // =1
     618: 94000000     	bl	0x618 <fan_level_set+0x140>
		0000000000000618:  R_AARCH64_CALL26	gpiod_direction_output_raw
     61c: f9403681     	ldr	x1, [x20, #0x68]
     620: 910003e2     	mov	x2, sp
     624: f9400c20     	ldr	x0, [x1, #0x18]
     628: f941c808     	ldr	x8, [x0, #0x390]
     62c: f9400d08     	ldr	x8, [x8, #0x18]
     630: b85fc110     	ldur	w16, [x8, #-0x4]
     634: 7292fa11     	movk	w17, #0x97d0
     638: 72bbba11     	movk	w17, #0xddd0, lsl #16
     63c: 6b11021f     	cmp	w16, w17
     640: 54000040     	b.eq	0x648 <fan_level_set+0x170>
     644: d4304500     	brk	#0x8228
     648: d63f0100     	blr	x8
     64c: 37f80300     	tbnz	w0, #0x1f, 0x6ac <fan_level_set+0x1d4>
     650: 39000293     	strb	w19, [x20]
     654: d5384108     	mrs	x8, SP_EL0
     658: f9438908     	ldr	x8, [x8, #0x710]
     65c: f85f83a9     	ldur	x9, [x29, #-0x8]
     660: eb09011f     	cmp	x8, x9
     664: 54000581     	b.ne	0x714 <fan_level_set+0x23c>
     668: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     66c: a94357f6     	ldp	x22, x21, [sp, #0x30]
     670: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     674: 910143ff     	add	sp, sp, #0x50
     678: d50323bf     	autiasp
     67c: d65f03c0     	ret
     680: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000680:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x529
     684: 91000000     	add	x0, x0, #0x0
		0000000000000684:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x529
     688: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000688:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x331
     68c: 91000021     	add	x1, x1, #0x0
		000000000000068c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x331
     690: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000690:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xda
     694: 91000042     	add	x2, x2, #0x0
		0000000000000694:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xda
     698: 52801283     	mov	w3, #0x94               // =148
     69c: 2a1303e4     	mov	w4, w19
     6a0: 94000000     	bl	0x6a0 <fan_level_set+0x1c8>
		00000000000006a0:  R_AARCH64_CALL26	_printk
     6a4: 2a1f03e0     	mov	w0, wzr
     6a8: 17ffffeb     	b	0x654 <fan_level_set+0x17c>
     6ac: 90000008     	adrp	x8, 0x0 <.text>
		00000000000006ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x277
     6b0: 91000108     	add	x8, x8, #0x0
		00000000000006b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x277
     6b4: 2a0003f4     	mov	w20, w0
     6b8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x331
     6bc: 91000021     	add	x1, x1, #0x0
		00000000000006bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x331
     6c0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000006c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xda
     6c4: 91000042     	add	x2, x2, #0x0
		00000000000006c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xda
     6c8: aa0803e0     	mov	x0, x8
     6cc: 528017e3     	mov	w3, #0xbf               // =191
     6d0: 2a1303e4     	mov	w4, w19
     6d4: 2a1403e5     	mov	w5, w20
     6d8: 94000000     	bl	0x6d8 <fan_level_set+0x200>
		00000000000006d8:  R_AARCH64_CALL26	_printk
     6dc: 2a1403e0     	mov	w0, w20
     6e0: 17ffffdd     	b	0x654 <fan_level_set+0x17c>
     6e4: aa1503e0     	mov	x0, x21
     6e8: 94000000     	bl	0x6e8 <fan_level_set+0x210>
		00000000000006e8:  R_AARCH64_CALL26	regulator_disable
     6ec: 2a0003e4     	mov	w4, w0
     6f0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     6f4: 91000000     	add	x0, x0, #0x0
		00000000000006f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     6f8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x331
     6fc: 91000021     	add	x1, x1, #0x0
		00000000000006fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x331
     700: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000700:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x55b
     704: 91000042     	add	x2, x2, #0x0
		0000000000000704:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x55b
     708: 52801ca3     	mov	w3, #0xe5               // =229
     70c: 94000000     	bl	0x70c <fan_level_set+0x234>
		000000000000070c:  R_AARCH64_CALL26	_printk
     710: 17ffff9a     	b	0x578 <fan_level_set+0xa0>
     714: 94000000     	bl	0x714 <fan_level_set+0x23c>
		0000000000000714:  R_AARCH64_CALL26	__stack_chk_fail
