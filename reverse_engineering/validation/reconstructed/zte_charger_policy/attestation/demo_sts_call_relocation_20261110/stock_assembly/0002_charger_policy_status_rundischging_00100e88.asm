
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000458 <charger_policy_status_rundischging>:
     458: d503233f     	paciasp
     45c: d10103ff     	sub	sp, sp, #0x40
     460: a9017bfd     	stp	x29, x30, [sp, #0x10]
     464: a90257f6     	stp	x22, x21, [sp, #0x20]
     468: a9034ff4     	stp	x20, x19, [sp, #0x30]
     46c: 910043fd     	add	x29, sp, #0x10
     470: d5384108     	mrs	x8, SP_EL0
     474: aa0003f3     	mov	x19, x0
     478: f9438908     	ldr	x8, [x8, #0x710]
     47c: f90007e8     	str	x8, [sp, #0x8]
     480: 39487008     	ldrb	w8, [x0, #0x21c]
     484: 7100051f     	cmp	w8, #0x1
     488: 54000181     	b.ne	0x4b8 <charger_policy_status_rundischging+0x60>
     48c: 52800020     	mov	w0, #0x1                // =1
     490: 94000000     	bl	0x490 <charger_policy_status_rundischging+0x38>
		0000000000000490:  R_AARCH64_CALL26	ktime_get_with_offset
     494: 94000000     	bl	0x494 <charger_policy_status_rundischging+0x3c>
		0000000000000494:  R_AARCH64_CALL26	ns_to_timespec64
     498: 39487668     	ldrb	w8, [x19, #0x21d]
     49c: 7100051f     	cmp	w8, #0x1
     4a0: 54001060     	b.eq	0x6ac <charger_policy_status_rundischging+0x254>
     4a4: f9410668     	ldr	x8, [x19, #0x208]
     4a8: b941fa69     	ldr	w9, [x19, #0x1f8]
     4ac: cb080008     	sub	x8, x0, x8
     4b0: eb09011f     	cmp	x8, x9
     4b4: 5400116c     	b.gt	0x6e0 <charger_policy_status_rundischging+0x288>
     4b8: f940de60     	ldr	x0, [x19, #0x1b8]
     4bc: 910013e2     	add	x2, sp, #0x4
     4c0: 528005e1     	mov	w1, #0x2f               // =47
     4c4: b90007ff     	str	wzr, [sp, #0x4]
     4c8: 94000338     	bl	0x11a8 <charger_policy_get_prop_by_name>
     4cc: 37f80b20     	tbnz	w0, #0x1f, 0x630 <charger_policy_status_rundischging+0x1d8>
     4d0: 39486a68     	ldrb	w8, [x19, #0x21a]
     4d4: 7100051f     	cmp	w8, #0x1
     4d8: 54000361     	b.ne	0x544 <charger_policy_status_rundischging+0xec>
     4dc: 39486e68     	ldrb	w8, [x19, #0x21b]
     4e0: 7100051f     	cmp	w8, #0x1
     4e4: 54000301     	b.ne	0x544 <charger_policy_status_rundischging+0xec>
     4e8: b9419a68     	ldr	w8, [x19, #0x198]
     4ec: 39487269     	ldrb	w9, [x19, #0x21c]
     4f0: 2a0803f4     	mov	w20, w8
     4f4: 37000069     	tbnz	w9, #0x0, 0x500 <charger_policy_status_rundischging+0xa8>
     4f8: b941aa69     	ldr	w9, [x19, #0x1a8]
     4fc: 0b080134     	add	w20, w9, w8
     500: b9419e69     	ldr	w9, [x19, #0x19c]
     504: 0b080128     	add	w8, w9, w8
     508: 39487669     	ldrb	w9, [x19, #0x21d]
     50c: 7100011f     	cmp	w8, #0x0
     510: 1a88a508     	cinc	w8, w8, lt
     514: 7100053f     	cmp	w9, #0x1
     518: 13017d15     	asr	w21, w8, #1
     51c: 54000181     	b.ne	0x54c <charger_policy_status_rundischging+0xf4>
     520: b94007e2     	ldr	w2, [sp, #0x4]
     524: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000524:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa38
     528: 91000000     	add	x0, x0, #0x0
		0000000000000528:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa38
     52c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000052c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf53
     530: 91000021     	add	x1, x1, #0x0
		0000000000000530:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf53
     534: 2a1403e3     	mov	w3, w20
     538: 2a1503e4     	mov	w4, w21
     53c: 94000000     	bl	0x53c <charger_policy_status_rundischging+0xe4>
		000000000000053c:  R_AARCH64_CALL26	_printk
     540: 14000003     	b	0x54c <charger_policy_status_rundischging+0xf4>
     544: 2a1f03f5     	mov	w21, wzr
     548: 2a1f03f4     	mov	w20, wzr
     54c: 39486668     	ldrb	w8, [x19, #0x219]
     550: 36000428     	tbz	w8, #0x0, 0x5d4 <charger_policy_status_rundischging+0x17c>
     554: b941a268     	ldr	w8, [x19, #0x1a0]
     558: 39487269     	ldrb	w9, [x19, #0x21c]
     55c: 2a0803f4     	mov	w20, w8
     560: 37000069     	tbnz	w9, #0x0, 0x56c <charger_policy_status_rundischging+0x114>
     564: b941aa69     	ldr	w9, [x19, #0x1a8]
     568: 0b080134     	add	w20, w9, w8
     56c: b941a669     	ldr	w9, [x19, #0x1a4]
     570: b94007f6     	ldr	w22, [sp, #0x4]
     574: 0b080128     	add	w8, w9, w8
     578: 39487669     	ldrb	w9, [x19, #0x21d]
     57c: 7100011f     	cmp	w8, #0x0
     580: 1a88a508     	cinc	w8, w8, lt
     584: 7100053f     	cmp	w9, #0x1
     588: 13017d15     	asr	w21, w8, #1
     58c: 54000121     	b.ne	0x5b0 <charger_policy_status_rundischging+0x158>
     590: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000590:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19ee
     594: 91000000     	add	x0, x0, #0x0
		0000000000000594:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19ee
     598: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000598:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf53
     59c: 91000021     	add	x1, x1, #0x0
		000000000000059c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf53
     5a0: 2a1603e2     	mov	w2, w22
     5a4: 2a1403e3     	mov	w3, w20
     5a8: 2a1503e4     	mov	w4, w21
     5ac: 94000000     	bl	0x5ac <charger_policy_status_rundischging+0x154>
		00000000000005ac:  R_AARCH64_CALL26	_printk
     5b0: 6b1402df     	cmp	w22, w20
     5b4: 5400016a     	b.ge	0x5e0 <charger_policy_status_rundischging+0x188>
     5b8: 6b1502df     	cmp	w22, w21
     5bc: 540001cc     	b.gt	0x5f4 <charger_policy_status_rundischging+0x19c>
     5c0: aa1303e0     	mov	x0, x19
     5c4: 2a1f03e1     	mov	w1, wzr
     5c8: 52800022     	mov	w2, #0x1                // =1
     5cc: 94000383     	bl	0x13d8 <charger_policy_ctrl_charging_enable>
     5d0: 14000009     	b	0x5f4 <charger_policy_status_rundischging+0x19c>
     5d4: b94007f6     	ldr	w22, [sp, #0x4]
     5d8: 6b1402df     	cmp	w22, w20
     5dc: 54fffeeb     	b.lt	0x5b8 <charger_policy_status_rundischging+0x160>
     5e0: aa1303e0     	mov	x0, x19
     5e4: 2a1f03e1     	mov	w1, wzr
     5e8: 2a1f03e2     	mov	w2, wzr
     5ec: 9400037b     	bl	0x13d8 <charger_policy_ctrl_charging_enable>
     5f0: 360008c0     	tbz	w0, #0x0, 0x708 <charger_policy_status_rundischging+0x2b0>
     5f4: aa1303e0     	mov	x0, x19
     5f8: 9400047f     	bl	0x17f4 <charger_policy_check_soc_reach_min>
     5fc: 37000260     	tbnz	w0, #0x0, 0x648 <charger_policy_status_rundischging+0x1f0>
     600: d5384108     	mrs	x8, SP_EL0
     604: f9438908     	ldr	x8, [x8, #0x710]
     608: f94007e9     	ldr	x9, [sp, #0x8]
     60c: eb09011f     	cmp	x8, x9
     610: 540008c1     	b.ne	0x728 <charger_policy_status_rundischging+0x2d0>
     614: 2a1f03e0     	mov	w0, wzr
     618: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     61c: a94257f6     	ldp	x22, x21, [sp, #0x20]
     620: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     624: 910103ff     	add	sp, sp, #0x40
     628: d50323bf     	autiasp
     62c: d65f03c0     	ret
     630: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000630:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e4
     634: 91000000     	add	x0, x0, #0x0
		0000000000000634:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e4
     638: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000638:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf53
     63c: 91000021     	add	x1, x1, #0x0
		000000000000063c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf53
     640: 94000000     	bl	0x640 <charger_policy_status_rundischging+0x1e8>
		0000000000000640:  R_AARCH64_CALL26	_printk
     644: 17ffffec     	b	0x5f4 <charger_policy_status_rundischging+0x19c>
     648: 52800020     	mov	w0, #0x1                // =1
     64c: 52800035     	mov	w21, #0x1               // =1
     650: 94000000     	bl	0x650 <charger_policy_status_rundischging+0x1f8>
		0000000000000650:  R_AARCH64_CALL26	ktime_get_with_offset
     654: 94000000     	bl	0x654 <charger_policy_status_rundischging+0x1fc>
		0000000000000654:  R_AARCH64_CALL26	ns_to_timespec64
     658: b941ee68     	ldr	w8, [x19, #0x1ec]
     65c: b901ee75     	str	w21, [x19, #0x1ec]
     660: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000660:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6
     664: 910002b5     	add	x21, x21, #0x0
		0000000000000664:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6
     668: aa0003f4     	mov	x20, x0
     66c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000066c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ec
     670: 91000000     	add	x0, x0, #0x0
		0000000000000670:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ec
     674: aa1503e1     	mov	x1, x21
     678: b901f268     	str	w8, [x19, #0x1f0]
     67c: 94000000     	bl	0x67c <charger_policy_status_rundischging+0x224>
		000000000000067c:  R_AARCH64_CALL26	_printk
     680: aa1303e0     	mov	x0, x19
     684: 52800021     	mov	w1, #0x1                // =1
     688: 52800022     	mov	w2, #0x1                // =1
     68c: 94000353     	bl	0x13d8 <charger_policy_ctrl_charging_enable>
     690: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000690:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x988
     694: 91000000     	add	x0, x0, #0x0
		0000000000000694:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x988
     698: aa1503e1     	mov	x1, x21
     69c: aa1403e2     	mov	x2, x20
     6a0: f9010674     	str	x20, [x19, #0x208]
     6a4: 94000000     	bl	0x6a4 <charger_policy_status_rundischging+0x24c>
		00000000000006a4:  R_AARCH64_CALL26	_printk
     6a8: 17ffffd6     	b	0x600 <charger_policy_status_rundischging+0x1a8>
     6ac: f9410663     	ldr	x3, [x19, #0x208]
     6b0: b941fa65     	ldr	w5, [x19, #0x1f8]
     6b4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000006b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fad
     6b8: 91000108     	add	x8, x8, #0x0
		00000000000006b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fad
     6bc: aa0003f4     	mov	x20, x0
     6c0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x244
     6c4: 91000021     	add	x1, x1, #0x0
		00000000000006c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x244
     6c8: cb030004     	sub	x4, x0, x3
     6cc: aa0803e0     	mov	x0, x8
     6d0: aa1403e2     	mov	x2, x20
     6d4: 94000000     	bl	0x6d4 <charger_policy_status_rundischging+0x27c>
		00000000000006d4:  R_AARCH64_CALL26	_printk
     6d8: aa1403e0     	mov	x0, x20
     6dc: 17ffff72     	b	0x4a4 <charger_policy_status_rundischging+0x4c>
     6e0: b941ee68     	ldr	w8, [x19, #0x1ec]
     6e4: 52800069     	mov	w9, #0x3                // =3
     6e8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1246
     6ec: 91000000     	add	x0, x0, #0x0
		00000000000006ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1246
     6f0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6
     6f4: 91000021     	add	x1, x1, #0x0
		00000000000006f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6
     6f8: b901f268     	str	w8, [x19, #0x1f0]
     6fc: b901ee69     	str	w9, [x19, #0x1ec]
     700: 94000000     	bl	0x700 <charger_policy_status_rundischging+0x2a8>
		0000000000000700:  R_AARCH64_CALL26	_printk
     704: 17ffffbf     	b	0x600 <charger_policy_status_rundischging+0x1a8>
     708: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000708:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf7a
     70c: 91000000     	add	x0, x0, #0x0
		000000000000070c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf7a
     710: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000710:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf53
     714: 91000021     	add	x1, x1, #0x0
		0000000000000714:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf53
     718: 94000000     	bl	0x718 <charger_policy_status_rundischging+0x2c0>
		0000000000000718:  R_AARCH64_CALL26	_printk
     71c: 9100a260     	add	x0, x19, #0x28
     720: 94000000     	bl	0x720 <charger_policy_status_rundischging+0x2c8>
		0000000000000720:  R_AARCH64_CALL26	alarm_try_to_cancel
     724: 17ffffb4     	b	0x5f4 <charger_policy_status_rundischging+0x19c>
     728: 94000000     	bl	0x728 <charger_policy_status_rundischging+0x2d0>
		0000000000000728:  R_AARCH64_CALL26	__stack_chk_fail
