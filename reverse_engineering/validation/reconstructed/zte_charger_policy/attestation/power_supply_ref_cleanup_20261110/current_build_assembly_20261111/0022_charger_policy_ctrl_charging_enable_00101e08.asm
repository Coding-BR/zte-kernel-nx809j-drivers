
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000318 <charger_policy_ctrl_charging_enable>:
     318: d503233f     	paciasp
     31c: d10183ff     	sub	sp, sp, #0x60
     320: a9027bfd     	stp	x29, x30, [sp, #0x20]
     324: f9001bf7     	str	x23, [sp, #0x30]
     328: a90457f6     	stp	x22, x21, [sp, #0x40]
     32c: a9054ff4     	stp	x20, x19, [sp, #0x50]
     330: 910083fd     	add	x29, sp, #0x20
     334: d5384108     	mrs	x8, SP_EL0
     338: aa0003f3     	mov	x19, x0
     33c: 2a0203f5     	mov	w21, w2
     340: f9438908     	ldr	x8, [x8, #0x710]
     344: 2a0103f4     	mov	w20, w1
     348: d10033a2     	sub	x2, x29, #0xc
     34c: 2a1f03e1     	mov	w1, wzr
     350: f81f83a8     	stur	x8, [x29, #-0x8]
     354: f940dc00     	ldr	x0, [x0, #0x1b8]
     358: 2901ffff     	stp	wzr, wzr, [sp, #0xc]
     35c: b81f43bf     	stur	wzr, [x29, #-0xc]
     360: 97ffff62     	bl	0xe8 <charger_policy_get_prop_by_name+0xe8>
		0000000000000360:  R_AARCH64_CALL26	charger_policy_get_prop_by_name
     364: 36f80100     	tbz	w0, #0x1f, 0x384 <charger_policy_ctrl_charging_enable+0x6c>
     368: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000368:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1942
     36c: 91000000     	add	x0, x0, #0x0
		000000000000036c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1942
     370: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x222
     374: 91000021     	add	x1, x1, #0x0
		0000000000000374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x222
     378: 94000000     	bl	0x378 <charger_policy_ctrl_charging_enable+0x60>
		0000000000000378:  R_AARCH64_CALL26	_printk
     37c: 2a1f03f6     	mov	w22, wzr
     380: 1400000b     	b	0x3ac <charger_policy_ctrl_charging_enable+0x94>
     384: b85f43a8     	ldur	w8, [x29, #-0xc]
     388: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000388:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cae
     38c: 91000000     	add	x0, x0, #0x0
		000000000000038c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cae
     390: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000390:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x222
     394: 91000021     	add	x1, x1, #0x0
		0000000000000394:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x222
     398: 7100051f     	cmp	w8, #0x1
     39c: 7a441904     	ccmp	w8, #0x4, #0x4, ne
     3a0: 1a9f17f6     	cset	w22, eq
     3a4: 2a1603e2     	mov	w2, w22
     3a8: 94000000     	bl	0x3a8 <charger_policy_ctrl_charging_enable+0x90>
		00000000000003a8:  R_AARCH64_CALL26	_printk
     3ac: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000003ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21c0
     3b0: 91000000     	add	x0, x0, #0x0
		00000000000003b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21c0
     3b4: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000003b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf44
     3b8: 91000021     	add	x1, x1, #0x0
		00000000000003b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf44
     3bc: 2a1603e2     	mov	w2, w22
     3c0: 94000000     	bl	0x3c0 <charger_policy_ctrl_charging_enable+0xa8>
		00000000000003c0:  R_AARCH64_CALL26	_printk
     3c4: f940e260     	ldr	x0, [x19, #0x1c0]
     3c8: 910033e2     	add	x2, sp, #0xc
     3cc: 52800061     	mov	w1, #0x3                // =3
     3d0: 94000058     	bl	0x530 <charger_policy_disable_cas>
		00000000000003d0:  R_AARCH64_CALL26	zte_charger_policy_get_prop_by_name
     3d4: 36f80080     	tbz	w0, #0x1f, 0x3e4 <charger_policy_ctrl_charging_enable+0xcc>
     3d8: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000003d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x246
     3dc: 91000000     	add	x0, x0, #0x0
		00000000000003dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x246
     3e0: 1400000f     	b	0x41c <charger_policy_ctrl_charging_enable+0x104>
     3e4: b9400ff6     	ldr	w22, [sp, #0xc]
     3e8: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000003e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21e2
     3ec: 91000000     	add	x0, x0, #0x0
		00000000000003ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21e2
     3f0: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000003f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf44
     3f4: 91000021     	add	x1, x1, #0x0
		00000000000003f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf44
     3f8: 2a1603e2     	mov	w2, w22
     3fc: 94000000     	bl	0x3fc <charger_policy_ctrl_charging_enable+0xe4>
		00000000000003fc:  R_AARCH64_CALL26	_printk
     400: f940e260     	ldr	x0, [x19, #0x1c0]
     404: 910043e2     	add	x2, sp, #0x10
     408: 52800081     	mov	w1, #0x4                // =4
     40c: 94000049     	bl	0x530 <charger_policy_disable_cas>
		000000000000040c:  R_AARCH64_CALL26	zte_charger_policy_get_prop_by_name
     410: 36f80100     	tbz	w0, #0x1f, 0x430 <charger_policy_ctrl_charging_enable+0x118>
     414: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000414:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28a
     418: 91000000     	add	x0, x0, #0x0
		0000000000000418:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28a
     41c: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		000000000000041c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf44
     420: 91000021     	add	x1, x1, #0x0
		0000000000000420:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf44
     424: 94000000     	bl	0x424 <charger_policy_ctrl_charging_enable+0x10c>
		0000000000000424:  R_AARCH64_CALL26	_printk
     428: 2a1f03e0     	mov	w0, wzr
     42c: 14000016     	b	0x484 <charger_policy_ctrl_charging_enable+0x16c>
     430: b94013f7     	ldr	w23, [sp, #0x10]
     434: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000434:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2024
     438: 91000000     	add	x0, x0, #0x0
		0000000000000438:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2024
     43c: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		000000000000043c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf44
     440: 91000021     	add	x1, x1, #0x0
		0000000000000440:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf44
     444: 2a1703e2     	mov	w2, w23
     448: 94000000     	bl	0x448 <charger_policy_ctrl_charging_enable+0x130>
		0000000000000448:  R_AARCH64_CALL26	_printk
     44c: 120002b5     	and	w21, w21, #0x1
     450: 12000294     	and	w20, w20, #0x1
     454: 6b1502df     	cmp	w22, w21
     458: 540002e1     	b.ne	0x4b4 <charger_policy_ctrl_charging_enable+0x19c>
     45c: 6b1402ff     	cmp	w23, w20
     460: 540004c1     	b.ne	0x4f8 <charger_policy_ctrl_charging_enable+0x1e0>
     464: 6b1402ff     	cmp	w23, w20
     468: 540000c0     	b.eq	0x480 <charger_policy_ctrl_charging_enable+0x168>
     46c: f940e260     	ldr	x0, [x19, #0x1c0]
     470: 52800081     	mov	w1, #0x4                // =4
     474: 2a1403e2     	mov	w2, w20
     478: 9400006f     	bl	0x634 <charger_policy_disable_cas+0x104>
		0000000000000478:  R_AARCH64_CALL26	zte_charger_policy_set_prop_by_name
     47c: 37f80520     	tbnz	w0, #0x1f, 0x520 <charger_policy_ctrl_charging_enable+0x208>
     480: 52800020     	mov	w0, #0x1                // =1
     484: d5384108     	mrs	x8, SP_EL0
     488: f9438908     	ldr	x8, [x8, #0x710]
     48c: f85f83a9     	ldur	x9, [x29, #-0x8]
     490: eb09011f     	cmp	x8, x9
     494: 540004c1     	b.ne	0x52c <charger_policy_ctrl_charging_enable+0x214>
     498: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     49c: f9401bf7     	ldr	x23, [sp, #0x30]
     4a0: a94457f6     	ldp	x22, x21, [sp, #0x40]
     4a4: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     4a8: 910183ff     	add	sp, sp, #0x60
     4ac: d50323bf     	autiasp
     4b0: d65f03c0     	ret
     4b4: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000004b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2054
     4b8: 91000000     	add	x0, x0, #0x0
		00000000000004b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2054
     4bc: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000004bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf44
     4c0: 91000021     	add	x1, x1, #0x0
		00000000000004c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf44
     4c4: 2a1603e2     	mov	w2, w22
     4c8: 2a1503e3     	mov	w3, w21
     4cc: 2a1703e4     	mov	w4, w23
     4d0: 2a1403e5     	mov	w5, w20
     4d4: 94000000     	bl	0x4d4 <charger_policy_ctrl_charging_enable+0x1bc>
		00000000000004d4:  R_AARCH64_CALL26	_printk
     4d8: f940e260     	ldr	x0, [x19, #0x1c0]
     4dc: 52800061     	mov	w1, #0x3                // =3
     4e0: 2a1503e2     	mov	w2, w21
     4e4: 94000054     	bl	0x634 <charger_policy_disable_cas+0x104>
		00000000000004e4:  R_AARCH64_CALL26	zte_charger_policy_set_prop_by_name
     4e8: 36fffbe0     	tbz	w0, #0x1f, 0x464 <charger_policy_ctrl_charging_enable+0x14c>
     4ec: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000004ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4da
     4f0: 91000000     	add	x0, x0, #0x0
		00000000000004f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4da
     4f4: 17ffffca     	b	0x41c <charger_policy_ctrl_charging_enable+0x104>
     4f8: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000004f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2054
     4fc: 91000000     	add	x0, x0, #0x0
		00000000000004fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2054
     500: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000500:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf44
     504: 91000021     	add	x1, x1, #0x0
		0000000000000504:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf44
     508: 2a1603e2     	mov	w2, w22
     50c: 2a1603e3     	mov	w3, w22
     510: 2a1703e4     	mov	w4, w23
     514: 2a1403e5     	mov	w5, w20
     518: 94000000     	bl	0x518 <charger_policy_ctrl_charging_enable+0x200>
		0000000000000518:  R_AARCH64_CALL26	_printk
     51c: 17ffffd2     	b	0x464 <charger_policy_ctrl_charging_enable+0x14c>
     520: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000520:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1482
     524: 91000000     	add	x0, x0, #0x0
		0000000000000524:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1482
     528: 17ffffbd     	b	0x41c <charger_policy_ctrl_charging_enable+0x104>
     52c: 94000000     	bl	0x52c <charger_policy_ctrl_charging_enable+0x214>
		000000000000052c:  R_AARCH64_CALL26	__stack_chk_fail
