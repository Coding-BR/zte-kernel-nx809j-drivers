
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000308 <charger_policy_ctrl_charging_enable>:
     308: d503233f     	paciasp
     30c: d10183ff     	sub	sp, sp, #0x60
     310: a9027bfd     	stp	x29, x30, [sp, #0x20]
     314: f9001bf7     	str	x23, [sp, #0x30]
     318: a90457f6     	stp	x22, x21, [sp, #0x40]
     31c: a9054ff4     	stp	x20, x19, [sp, #0x50]
     320: 910083fd     	add	x29, sp, #0x20
     324: d5384108     	mrs	x8, SP_EL0
     328: aa0003f3     	mov	x19, x0
     32c: 2a0203f5     	mov	w21, w2
     330: f9438908     	ldr	x8, [x8, #0x710]
     334: 2a0103f4     	mov	w20, w1
     338: d10033a2     	sub	x2, x29, #0xc
     33c: 2a1f03e1     	mov	w1, wzr
     340: f81f83a8     	stur	x8, [x29, #-0x8]
     344: f940dc00     	ldr	x0, [x0, #0x1b8]
     348: 2901ffff     	stp	wzr, wzr, [sp, #0xc]
     34c: b81f43bf     	stur	wzr, [x29, #-0xc]
     350: 97ffff62     	bl	0xd8 <charger_policy_get_prop_by_name+0xd8>
		0000000000000350:  R_AARCH64_CALL26	charger_policy_get_prop_by_name
     354: 36f80100     	tbz	w0, #0x1f, 0x374 <charger_policy_ctrl_charging_enable+0x6c>
     358: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000358:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1942
     35c: 91000000     	add	x0, x0, #0x0
		000000000000035c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1942
     360: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000360:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x222
     364: 91000021     	add	x1, x1, #0x0
		0000000000000364:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x222
     368: 94000000     	bl	0x368 <charger_policy_ctrl_charging_enable+0x60>
		0000000000000368:  R_AARCH64_CALL26	_printk
     36c: 2a1f03f6     	mov	w22, wzr
     370: 1400000b     	b	0x39c <charger_policy_ctrl_charging_enable+0x94>
     374: b85f43a8     	ldur	w8, [x29, #-0xc]
     378: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cae
     37c: 91000000     	add	x0, x0, #0x0
		000000000000037c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cae
     380: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000380:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x222
     384: 91000021     	add	x1, x1, #0x0
		0000000000000384:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x222
     388: 7100051f     	cmp	w8, #0x1
     38c: 7a441904     	ccmp	w8, #0x4, #0x4, ne
     390: 1a9f17f6     	cset	w22, eq
     394: 2a1603e2     	mov	w2, w22
     398: 94000000     	bl	0x398 <charger_policy_ctrl_charging_enable+0x90>
		0000000000000398:  R_AARCH64_CALL26	_printk
     39c: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		000000000000039c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21c0
     3a0: 91000000     	add	x0, x0, #0x0
		00000000000003a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21c0
     3a4: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000003a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf44
     3a8: 91000021     	add	x1, x1, #0x0
		00000000000003a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf44
     3ac: 2a1603e2     	mov	w2, w22
     3b0: 94000000     	bl	0x3b0 <charger_policy_ctrl_charging_enable+0xa8>
		00000000000003b0:  R_AARCH64_CALL26	_printk
     3b4: f940e260     	ldr	x0, [x19, #0x1c0]
     3b8: 910033e2     	add	x2, sp, #0xc
     3bc: 52800061     	mov	w1, #0x3                // =3
     3c0: 94000058     	bl	0x520 <charger_policy_disable_cas>
		00000000000003c0:  R_AARCH64_CALL26	zte_charger_policy_get_prop_by_name
     3c4: 36f80080     	tbz	w0, #0x1f, 0x3d4 <charger_policy_ctrl_charging_enable+0xcc>
     3c8: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000003c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x246
     3cc: 91000000     	add	x0, x0, #0x0
		00000000000003cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x246
     3d0: 1400000f     	b	0x40c <charger_policy_ctrl_charging_enable+0x104>
     3d4: b9400ff6     	ldr	w22, [sp, #0xc]
     3d8: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000003d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21e2
     3dc: 91000000     	add	x0, x0, #0x0
		00000000000003dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21e2
     3e0: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000003e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf44
     3e4: 91000021     	add	x1, x1, #0x0
		00000000000003e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf44
     3e8: 2a1603e2     	mov	w2, w22
     3ec: 94000000     	bl	0x3ec <charger_policy_ctrl_charging_enable+0xe4>
		00000000000003ec:  R_AARCH64_CALL26	_printk
     3f0: f940e260     	ldr	x0, [x19, #0x1c0]
     3f4: 910043e2     	add	x2, sp, #0x10
     3f8: 52800081     	mov	w1, #0x4                // =4
     3fc: 94000049     	bl	0x520 <charger_policy_disable_cas>
		00000000000003fc:  R_AARCH64_CALL26	zte_charger_policy_get_prop_by_name
     400: 36f80100     	tbz	w0, #0x1f, 0x420 <charger_policy_ctrl_charging_enable+0x118>
     404: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000404:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28a
     408: 91000000     	add	x0, x0, #0x0
		0000000000000408:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28a
     40c: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		000000000000040c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf44
     410: 91000021     	add	x1, x1, #0x0
		0000000000000410:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf44
     414: 94000000     	bl	0x414 <charger_policy_ctrl_charging_enable+0x10c>
		0000000000000414:  R_AARCH64_CALL26	_printk
     418: 2a1f03e0     	mov	w0, wzr
     41c: 14000016     	b	0x474 <charger_policy_ctrl_charging_enable+0x16c>
     420: b94013f7     	ldr	w23, [sp, #0x10]
     424: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000424:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2024
     428: 91000000     	add	x0, x0, #0x0
		0000000000000428:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2024
     42c: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		000000000000042c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf44
     430: 91000021     	add	x1, x1, #0x0
		0000000000000430:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf44
     434: 2a1703e2     	mov	w2, w23
     438: 94000000     	bl	0x438 <charger_policy_ctrl_charging_enable+0x130>
		0000000000000438:  R_AARCH64_CALL26	_printk
     43c: 120002b5     	and	w21, w21, #0x1
     440: 12000294     	and	w20, w20, #0x1
     444: 6b1502df     	cmp	w22, w21
     448: 540002e1     	b.ne	0x4a4 <charger_policy_ctrl_charging_enable+0x19c>
     44c: 6b1402ff     	cmp	w23, w20
     450: 540004c1     	b.ne	0x4e8 <charger_policy_ctrl_charging_enable+0x1e0>
     454: 6b1402ff     	cmp	w23, w20
     458: 540000c0     	b.eq	0x470 <charger_policy_ctrl_charging_enable+0x168>
     45c: f940e260     	ldr	x0, [x19, #0x1c0]
     460: 52800081     	mov	w1, #0x4                // =4
     464: 2a1403e2     	mov	w2, w20
     468: 9400006f     	bl	0x624 <charger_policy_disable_cas+0x104>
		0000000000000468:  R_AARCH64_CALL26	zte_charger_policy_set_prop_by_name
     46c: 37f80520     	tbnz	w0, #0x1f, 0x510 <charger_policy_ctrl_charging_enable+0x208>
     470: 52800020     	mov	w0, #0x1                // =1
     474: d5384108     	mrs	x8, SP_EL0
     478: f9438908     	ldr	x8, [x8, #0x710]
     47c: f85f83a9     	ldur	x9, [x29, #-0x8]
     480: eb09011f     	cmp	x8, x9
     484: 540004c1     	b.ne	0x51c <charger_policy_ctrl_charging_enable+0x214>
     488: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     48c: f9401bf7     	ldr	x23, [sp, #0x30]
     490: a94457f6     	ldp	x22, x21, [sp, #0x40]
     494: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     498: 910183ff     	add	sp, sp, #0x60
     49c: d50323bf     	autiasp
     4a0: d65f03c0     	ret
     4a4: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000004a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2054
     4a8: 91000000     	add	x0, x0, #0x0
		00000000000004a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2054
     4ac: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000004ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf44
     4b0: 91000021     	add	x1, x1, #0x0
		00000000000004b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf44
     4b4: 2a1603e2     	mov	w2, w22
     4b8: 2a1503e3     	mov	w3, w21
     4bc: 2a1703e4     	mov	w4, w23
     4c0: 2a1403e5     	mov	w5, w20
     4c4: 94000000     	bl	0x4c4 <charger_policy_ctrl_charging_enable+0x1bc>
		00000000000004c4:  R_AARCH64_CALL26	_printk
     4c8: f940e260     	ldr	x0, [x19, #0x1c0]
     4cc: 52800061     	mov	w1, #0x3                // =3
     4d0: 2a1503e2     	mov	w2, w21
     4d4: 94000054     	bl	0x624 <charger_policy_disable_cas+0x104>
		00000000000004d4:  R_AARCH64_CALL26	zte_charger_policy_set_prop_by_name
     4d8: 36fffbe0     	tbz	w0, #0x1f, 0x454 <charger_policy_ctrl_charging_enable+0x14c>
     4dc: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000004dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4da
     4e0: 91000000     	add	x0, x0, #0x0
		00000000000004e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4da
     4e4: 17ffffca     	b	0x40c <charger_policy_ctrl_charging_enable+0x104>
     4e8: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000004e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2054
     4ec: 91000000     	add	x0, x0, #0x0
		00000000000004ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2054
     4f0: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000004f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf44
     4f4: 91000021     	add	x1, x1, #0x0
		00000000000004f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf44
     4f8: 2a1603e2     	mov	w2, w22
     4fc: 2a1603e3     	mov	w3, w22
     500: 2a1703e4     	mov	w4, w23
     504: 2a1403e5     	mov	w5, w20
     508: 94000000     	bl	0x508 <charger_policy_ctrl_charging_enable+0x200>
		0000000000000508:  R_AARCH64_CALL26	_printk
     50c: 17ffffd2     	b	0x454 <charger_policy_ctrl_charging_enable+0x14c>
     510: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000510:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1482
     514: 91000000     	add	x0, x0, #0x0
		0000000000000514:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1482
     518: 17ffffbd     	b	0x40c <charger_policy_ctrl_charging_enable+0x104>
     51c: 94000000     	bl	0x51c <charger_policy_ctrl_charging_enable+0x214>
		000000000000051c:  R_AARCH64_CALL26	__stack_chk_fail
