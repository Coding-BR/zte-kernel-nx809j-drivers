
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000360 <nb_fan_probe>:
     360: d503233f     	paciasp
     364: d10103ff     	sub	sp, sp, #0x40
     368: a9017bfd     	stp	x29, x30, [sp, #0x10]
     36c: f90013f5     	str	x21, [sp, #0x20]
     370: a9034ff4     	stp	x20, x19, [sp, #0x30]
     374: 910043fd     	add	x29, sp, #0x10
     378: d5384108     	mrs	x8, SP_EL0
     37c: aa0003f3     	mov	x19, x0
     380: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000380:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x414
     384: 91000000     	add	x0, x0, #0x0
		0000000000000384:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x414
     388: f9438908     	ldr	x8, [x8, #0x710]
     38c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000038c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     390: 91000021     	add	x1, x1, #0x0
		0000000000000390:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     394: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000394:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a4
     398: 91000042     	add	x2, x2, #0x0
		0000000000000398:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a4
     39c: 52806e63     	mov	w3, #0x373              // =883
     3a0: f90007e8     	str	x8, [sp, #0x8]
     3a4: 94000000     	bl	0x3a4 <nb_fan_probe+0x44>
		00000000000003a4:  R_AARCH64_CALL26	_printk
     3a8: 91004273     	add	x19, x19, #0x10
     3ac: 52800b01     	mov	w1, #0x58               // =88
     3b0: 5281b802     	mov	w2, #0xdc0              // =3520
     3b4: aa1303e0     	mov	x0, x19
     3b8: 94000000     	bl	0x3b8 <nb_fan_probe+0x58>
		00000000000003b8:  R_AARCH64_CALL26	devm_kmalloc
     3bc: 90000014     	adrp	x20, 0x0 <.text>
		00000000000003bc:  R_AARCH64_ADR_PREL_PG_HI21	chip
     3c0: f9000280     	str	x0, [x20]
		00000000000003c0:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     3c4: b50001c0     	cbnz	x0, 0x3fc <nb_fan_probe+0x9c>
     3c8: 12800173     	mov	w19, #-0xc              // =-12
     3cc: d5384108     	mrs	x8, SP_EL0
     3d0: f9438908     	ldr	x8, [x8, #0x710]
     3d4: f94007e9     	ldr	x9, [sp, #0x8]
     3d8: eb09011f     	cmp	x8, x9
     3dc: 54002521     	b.ne	0x880 <nb_fan_probe+0x520>
     3e0: 2a1303e0     	mov	w0, w19
     3e4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     3e8: f94013f5     	ldr	x21, [sp, #0x20]
     3ec: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     3f0: 910103ff     	add	sp, sp, #0x40
     3f4: d50323bf     	autiasp
     3f8: d65f03c0     	ret
     3fc: f9000013     	str	x19, [x0]
     400: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000400:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x49d
     404: 91000021     	add	x1, x1, #0x0
		0000000000000404:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x49d
     408: aa0003f5     	mov	x21, x0
     40c: aa1303e0     	mov	x0, x19
     410: b90007ff     	str	wzr, [sp, #0x4]
     414: 94000000     	bl	0x414 <nb_fan_probe+0xb4>
		0000000000000414:  R_AARCH64_CALL26	regulator_get
     418: aa1503e8     	mov	x8, x21
     41c: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
     420: f90026a0     	str	x0, [x21, #0x48]
     424: 540001a9     	b.ls	0x458 <nb_fan_probe+0xf8>
     428: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000428:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb2c
     42c: 91000000     	add	x0, x0, #0x0
		000000000000042c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb2c
     430: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000430:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     434: 91000021     	add	x1, x1, #0x0
		0000000000000434:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     438: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000438:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c8
     43c: 91000042     	add	x2, x2, #0x0
		000000000000043c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c8
     440: 52805ec3     	mov	w3, #0x2f6              // =758
     444: aa0803f3     	mov	x19, x8
     448: 94000000     	bl	0x448 <nb_fan_probe+0xe8>
		0000000000000448:  R_AARCH64_CALL26	_printk
     44c: b9404a73     	ldr	w19, [x19, #0x48]
     450: 34000653     	cbz	w19, 0x518 <nb_fan_probe+0x1b8>
     454: 1400007a     	b	0x63c <nb_fan_probe+0x2dc>
     458: f9400108     	ldr	x8, [x8]
     45c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000045c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x697
     460: 91000021     	add	x1, x1, #0x0
		0000000000000460:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x697
     464: 910013e2     	add	x2, sp, #0x4
     468: 52800023     	mov	w3, #0x1                // =1
     46c: aa1f03e4     	mov	x4, xzr
     470: f9417500     	ldr	x0, [x8, #0x2e8]
     474: 94000000     	bl	0x474 <nb_fan_probe+0x114>
		0000000000000474:  R_AARCH64_CALL26	of_property_read_variable_u32_array
     478: 37f80060     	tbnz	w0, #0x1f, 0x484 <nb_fan_probe+0x124>
     47c: b94007f3     	ldr	w19, [sp, #0x4]
     480: 1400000d     	b	0x4b4 <nb_fan_probe+0x154>
     484: 2a0003e4     	mov	w4, w0
     488: 52973013     	mov	w19, #0xb980            // =47488
     48c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000048c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x179
     490: 91000000     	add	x0, x0, #0x0
		0000000000000490:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x179
     494: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000494:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     498: 91000021     	add	x1, x1, #0x0
		0000000000000498:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     49c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000049c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c8
     4a0: 91000042     	add	x2, x2, #0x0
		00000000000004a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c8
     4a4: 52805fa3     	mov	w3, #0x2fd              // =765
     4a8: 72a00553     	movk	w19, #0x2a, lsl #16
     4ac: 94000000     	bl	0x4ac <nb_fan_probe+0x14c>
		00000000000004ac:  R_AARCH64_CALL26	_printk
     4b0: b90007f3     	str	w19, [sp, #0x4]
     4b4: f94026a0     	ldr	x0, [x21, #0x48]
     4b8: 2a1303e1     	mov	w1, w19
     4bc: 2a1303e2     	mov	w2, w19
     4c0: 94000000     	bl	0x4c0 <nb_fan_probe+0x160>
		00000000000004c0:  R_AARCH64_CALL26	regulator_set_voltage
     4c4: 35000820     	cbnz	w0, 0x5c8 <nb_fan_probe+0x268>
     4c8: b94007e4     	ldr	w4, [sp, #0x4]
     4cc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62
     4d0: 91000000     	add	x0, x0, #0x0
		00000000000004d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62
     4d4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     4d8: 91000021     	add	x1, x1, #0x0
		00000000000004d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     4dc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000004dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c8
     4e0: 91000042     	add	x2, x2, #0x0
		00000000000004e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c8
     4e4: 528060e3     	mov	w3, #0x307              // =775
     4e8: 94000000     	bl	0x4e8 <nb_fan_probe+0x188>
		00000000000004e8:  R_AARCH64_CALL26	_printk
     4ec: f94026a0     	ldr	x0, [x21, #0x48]
     4f0: 94000000     	bl	0x4f0 <nb_fan_probe+0x190>
		00000000000004f0:  R_AARCH64_CALL26	regulator_is_enabled
     4f4: 35000920     	cbnz	w0, 0x618 <nb_fan_probe+0x2b8>
     4f8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x90d
     4fc: 91000000     	add	x0, x0, #0x0
		00000000000004fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x90d
     500: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000500:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     504: 91000021     	add	x1, x1, #0x0
		0000000000000504:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     508: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000508:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c8
     50c: 91000042     	add	x2, x2, #0x0
		000000000000050c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c8
     510: 528061a3     	mov	w3, #0x30d              // =781
     514: 94000000     	bl	0x514 <nb_fan_probe+0x1b4>
		0000000000000514:  R_AARCH64_CALL26	_printk
     518: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000518:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa99
     51c: 91000000     	add	x0, x0, #0x0
		000000000000051c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa99
     520: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000520:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     524: 91000021     	add	x1, x1, #0x0
		0000000000000524:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     528: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000528:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a4
     52c: 91000042     	add	x2, x2, #0x0
		000000000000052c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a4
     530: 52807003     	mov	w3, #0x380              // =896
     534: 94000000     	bl	0x534 <nb_fan_probe+0x1d4>
		0000000000000534:  R_AARCH64_CALL26	_printk
     538: f9400295     	ldr	x21, [x20]
		0000000000000538:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     53c: f94002a0     	ldr	x0, [x21]
     540: 94000000     	bl	0x540 <nb_fan_probe+0x1e0>
		0000000000000540:  R_AARCH64_CALL26	devm_pinctrl_get
     544: aa0003f3     	mov	x19, x0
     548: b4000560     	cbz	x0, 0x5f4 <nb_fan_probe+0x294>
     54c: b13ffe7f     	cmn	x19, #0xfff
     550: 54000522     	b.hs	0x5f4 <nb_fan_probe+0x294>
     554: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000554:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a6
     558: 91000000     	add	x0, x0, #0x0
		0000000000000558:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a6
     55c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000055c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     560: 91000021     	add	x1, x1, #0x0
		0000000000000560:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     564: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000564:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6da
     568: 91000042     	add	x2, x2, #0x0
		0000000000000568:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6da
     56c: 52806523     	mov	w3, #0x329              // =809
     570: 94000000     	bl	0x570 <nb_fan_probe+0x210>
		0000000000000570:  R_AARCH64_CALL26	_printk
     574: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000574:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x74f
     578: 91000021     	add	x1, x1, #0x0
		0000000000000578:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x74f
     57c: aa1303e0     	mov	x0, x19
     580: 94000000     	bl	0x580 <nb_fan_probe+0x220>
		0000000000000580:  R_AARCH64_CALL26	pinctrl_lookup_state
     584: f9002aa0     	str	x0, [x21, #0x50]
     588: b40006a0     	cbz	x0, 0x65c <nb_fan_probe+0x2fc>
     58c: b13ffc1f     	cmn	x0, #0xfff
     590: 54000662     	b.hs	0x65c <nb_fan_probe+0x2fc>
     594: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29e
     598: 91000000     	add	x0, x0, #0x0
		0000000000000598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29e
     59c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000059c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     5a0: 91000021     	add	x1, x1, #0x0
		00000000000005a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     5a4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000005a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6da
     5a8: 91000042     	add	x2, x2, #0x0
		00000000000005a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6da
     5ac: 52806623     	mov	w3, #0x331              // =817
     5b0: 94000000     	bl	0x5b0 <nb_fan_probe+0x250>
		00000000000005b0:  R_AARCH64_CALL26	_printk
     5b4: f9402aa1     	ldr	x1, [x21, #0x50]
     5b8: aa1303e0     	mov	x0, x19
     5bc: 94000000     	bl	0x5bc <nb_fan_probe+0x25c>
		00000000000005bc:  R_AARCH64_CALL26	pinctrl_select_state
     5c0: 2a0003f3     	mov	w19, w0
     5c4: 1400002f     	b	0x680 <nb_fan_probe+0x320>
     5c8: 2a0003f3     	mov	w19, w0
     5cc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d0
     5d0: 91000000     	add	x0, x0, #0x0
		00000000000005d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d0
     5d4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     5d8: 91000021     	add	x1, x1, #0x0
		00000000000005d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     5dc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000005dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c8
     5e0: 91000042     	add	x2, x2, #0x0
		00000000000005e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c8
     5e4: 52806083     	mov	w3, #0x304              // =772
     5e8: 2a1303e4     	mov	w4, w19
     5ec: 94000000     	bl	0x5ec <nb_fan_probe+0x28c>
		00000000000005ec:  R_AARCH64_CALL26	_printk
     5f0: 14000013     	b	0x63c <nb_fan_probe+0x2dc>
     5f4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xac1
     5f8: 91000000     	add	x0, x0, #0x0
		00000000000005f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xac1
     5fc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     600: 91000021     	add	x1, x1, #0x0
		0000000000000600:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     604: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6da
     608: 91000042     	add	x2, x2, #0x0
		0000000000000608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6da
     60c: 528064c3     	mov	w3, #0x326              // =806
     610: 94000000     	bl	0x610 <nb_fan_probe+0x2b0>
		0000000000000610:  R_AARCH64_CALL26	_printk
     614: 1400001b     	b	0x680 <nb_fan_probe+0x320>
     618: 2a0003f3     	mov	w19, w0
     61c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000061c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ca
     620: 91000000     	add	x0, x0, #0x0
		0000000000000620:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ca
     624: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000624:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     628: 91000021     	add	x1, x1, #0x0
		0000000000000628:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     62c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000062c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c8
     630: 91000042     	add	x2, x2, #0x0
		0000000000000630:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c8
     634: 52806163     	mov	w3, #0x30b              // =779
     638: 94000000     	bl	0x638 <nb_fan_probe+0x2d8>
		0000000000000638:  R_AARCH64_CALL26	_printk
     63c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000063c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43a
     640: 91000000     	add	x0, x0, #0x0
		0000000000000640:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43a
     644: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000644:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     648: 91000021     	add	x1, x1, #0x0
		0000000000000648:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     64c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000064c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a4
     650: 91000042     	add	x2, x2, #0x0
		0000000000000650:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a4
     654: 52806fa3     	mov	w3, #0x37d              // =893
     658: 14000026     	b	0x6f0 <nb_fan_probe+0x390>
     65c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000065c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35e
     660: 91000000     	add	x0, x0, #0x0
		0000000000000660:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35e
     664: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000664:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     668: 91000021     	add	x1, x1, #0x0
		0000000000000668:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     66c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000066c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6da
     670: 91000042     	add	x2, x2, #0x0
		0000000000000670:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6da
     674: 528065c3     	mov	w3, #0x32e              // =814
     678: 94000000     	bl	0x678 <nb_fan_probe+0x318>
		0000000000000678:  R_AARCH64_CALL26	_printk
     67c: b94052b3     	ldr	w19, [x21, #0x50]
     680: 350002b3     	cbnz	w19, 0x6d4 <nb_fan_probe+0x374>
     684: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000684:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b1
     688: 91000000     	add	x0, x0, #0x0
		0000000000000688:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b1
     68c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000068c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     690: 91000021     	add	x1, x1, #0x0
		0000000000000690:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     694: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000694:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a4
     698: 91000042     	add	x2, x2, #0x0
		0000000000000698:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a4
     69c: 52807103     	mov	w3, #0x388              // =904
     6a0: 94000000     	bl	0x6a0 <nb_fan_probe+0x340>
		00000000000006a0:  R_AARCH64_CALL26	_printk
     6a4: f9400280     	ldr	x0, [x20]
		00000000000006a4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     6a8: 94000000     	bl	0x6a8 <nb_fan_probe+0x348>
		00000000000006a8:  R_AARCH64_CALL26	.text+0x40
     6ac: 36f80280     	tbz	w0, #0x1f, 0x6fc <nb_fan_probe+0x39c>
     6b0: 2a0003f3     	mov	w19, w0
     6b4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb66
     6b8: 91000000     	add	x0, x0, #0x0
		00000000000006b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb66
     6bc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     6c0: 91000021     	add	x1, x1, #0x0
		00000000000006c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     6c4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000006c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a4
     6c8: 91000042     	add	x2, x2, #0x0
		00000000000006c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a4
     6cc: 528071a3     	mov	w3, #0x38d              // =909
     6d0: 14000008     	b	0x6f0 <nb_fan_probe+0x390>
     6d4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     6d8: 91000000     	add	x0, x0, #0x0
		00000000000006d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     6dc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     6e0: 91000021     	add	x1, x1, #0x0
		00000000000006e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     6e4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000006e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a4
     6e8: 91000042     	add	x2, x2, #0x0
		00000000000006e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a4
     6ec: 528070a3     	mov	w3, #0x385              // =901
     6f0: 2a1303e4     	mov	w4, w19
     6f4: 94000000     	bl	0x6f4 <nb_fan_probe+0x394>
		00000000000006f4:  R_AARCH64_CALL26	_printk
     6f8: 17ffff35     	b	0x3cc <nb_fan_probe+0x6c>
     6fc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd2
     700: 91000000     	add	x0, x0, #0x0
		0000000000000700:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd2
     704: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000704:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     708: 91000021     	add	x1, x1, #0x0
		0000000000000708:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     70c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000070c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a4
     710: 91000042     	add	x2, x2, #0x0
		0000000000000710:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a4
     714: 52807203     	mov	w3, #0x390              // =912
     718: 94000000     	bl	0x718 <nb_fan_probe+0x3b8>
		0000000000000718:  R_AARCH64_CALL26	_printk
     71c: f9400280     	ldr	x0, [x20]
		000000000000071c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     720: 94000000     	bl	0x720 <nb_fan_probe+0x3c0>
		0000000000000720:  R_AARCH64_CALL26	.text+0x884
     724: 350005c0     	cbnz	w0, 0x7dc <nb_fan_probe+0x47c>
     728: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000728:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x860
     72c: 91000000     	add	x0, x0, #0x0
		000000000000072c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x860
     730: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000730:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     734: 91000021     	add	x1, x1, #0x0
		0000000000000734:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     738: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000738:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a4
     73c: 91000042     	add	x2, x2, #0x0
		000000000000073c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a4
     740: 52807303     	mov	w3, #0x398              // =920
     744: 94000000     	bl	0x744 <nb_fan_probe+0x3e4>
		0000000000000744:  R_AARCH64_CALL26	_printk
     748: f9400288     	ldr	x8, [x20]
		0000000000000748:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     74c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000074c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb5a
     750: 91000021     	add	x1, x1, #0x0
		0000000000000750:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb5a
     754: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000754:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     758: 91000042     	add	x2, x2, #0x0
		0000000000000758:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x8
     75c: 91006100     	add	x0, x8, #0x18
     760: 94000000     	bl	0x760 <nb_fan_probe+0x400>
		0000000000000760:  R_AARCH64_CALL26	__mutex_init
     764: f9400288     	ldr	x8, [x20]
		0000000000000764:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     768: 52800021     	mov	w1, #0x1                // =1
     76c: 52800022     	mov	w2, #0x1                // =1
     770: f9400508     	ldr	x8, [x8, #0x8]
     774: 9100a100     	add	x0, x8, #0x28
     778: 94000000     	bl	0x778 <nb_fan_probe+0x418>
		0000000000000778:  R_AARCH64_CALL26	hrtimer_init
     77c: f9400288     	ldr	x8, [x20]
		000000000000077c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     780: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000780:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xa98
     784: 9100014a     	add	x10, x10, #0x0
		0000000000000784:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xa98
     788: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000788:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25d
     78c: 91000000     	add	x0, x0, #0x0
		000000000000078c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25d
     790: f9400509     	ldr	x9, [x8, #0x8]
     794: f900292a     	str	x10, [x9, #0x50]
     798: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000798:  R_AARCH64_ADR_PREL_PG_HI21	kernel_kobj
     79c: f9400109     	ldr	x9, [x8]
     7a0: f9400141     	ldr	x1, [x10]
		00000000000007a0:  R_AARCH64_LDST64_ABS_LO12_NC	kernel_kobj
     7a4: f9004d28     	str	x8, [x9, #0x98]
     7a8: 94000000     	bl	0x7a8 <nb_fan_probe+0x448>
		00000000000007a8:  R_AARCH64_CALL26	kobject_create_and_add
     7ac: f9400288     	ldr	x8, [x20]
		00000000000007ac:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     7b0: f9000900     	str	x0, [x8, #0x10]
     7b4: b5000260     	cbnz	x0, 0x800 <nb_fan_probe+0x4a0>
     7b8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x97b
     7bc: 91000000     	add	x0, x0, #0x0
		00000000000007bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x97b
     7c0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     7c4: 91000021     	add	x1, x1, #0x0
		00000000000007c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     7c8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000007c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a4
     7cc: 91000042     	add	x2, x2, #0x0
		00000000000007cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a4
     7d0: 52807463     	mov	w3, #0x3a3              // =931
     7d4: 94000000     	bl	0x7d4 <nb_fan_probe+0x474>
		00000000000007d4:  R_AARCH64_CALL26	_printk
     7d8: 17fffefc     	b	0x3c8 <nb_fan_probe+0x68>
     7dc: 2a0003f3     	mov	w19, w0
     7e0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78b
     7e4: 91000000     	add	x0, x0, #0x0
		00000000000007e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78b
     7e8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     7ec: 91000021     	add	x1, x1, #0x0
		00000000000007ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     7f0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000007f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a4
     7f4: 91000042     	add	x2, x2, #0x0
		00000000000007f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a4
     7f8: 528072a3     	mov	w3, #0x395              // =917
     7fc: 17ffffbd     	b	0x6f0 <nb_fan_probe+0x390>
     800: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000800:  R_AARCH64_ADR_PREL_PG_HI21	.data+0xf0
     804: 91000021     	add	x1, x1, #0x0
		0000000000000804:  R_AARCH64_ADD_ABS_LO12_NC	.data+0xf0
     808: 94000000     	bl	0x808 <nb_fan_probe+0x4a8>
		0000000000000808:  R_AARCH64_CALL26	sysfs_create_group
     80c: 35000260     	cbnz	w0, 0x858 <nb_fan_probe+0x4f8>
     810: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000810:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     814: 91000273     	add	x19, x19, #0x0
		0000000000000814:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     818: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000818:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a4
     81c: 91000294     	add	x20, x20, #0x0
		000000000000081c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a4
     820: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000820:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x888
     824: 91000000     	add	x0, x0, #0x0
		0000000000000824:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x888
     828: aa1303e1     	mov	x1, x19
     82c: aa1403e2     	mov	x2, x20
     830: 52807583     	mov	w3, #0x3ac              // =940
     834: 94000000     	bl	0x834 <nb_fan_probe+0x4d4>
		0000000000000834:  R_AARCH64_CALL26	_printk
     838: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000838:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba2
     83c: 91000000     	add	x0, x0, #0x0
		000000000000083c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba2
     840: aa1303e1     	mov	x1, x19
     844: aa1403e2     	mov	x2, x20
     848: 52807643     	mov	w3, #0x3b2              // =946
     84c: 94000000     	bl	0x84c <nb_fan_probe+0x4ec>
		000000000000084c:  R_AARCH64_CALL26	_printk
     850: 2a1f03f3     	mov	w19, wzr
     854: 17fffede     	b	0x3cc <nb_fan_probe+0x6c>
     858: 2a0003f3     	mov	w19, w0
     85c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000085c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x467
     860: 91000000     	add	x0, x0, #0x0
		0000000000000860:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x467
     864: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000864:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     868: 91000021     	add	x1, x1, #0x0
		0000000000000868:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     86c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000086c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a4
     870: 91000042     	add	x2, x2, #0x0
		0000000000000870:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a4
     874: 52807523     	mov	w3, #0x3a9              // =937
     878: 94000000     	bl	0x878 <nb_fan_probe+0x518>
		0000000000000878:  R_AARCH64_CALL26	_printk
     87c: 17fffed4     	b	0x3cc <nb_fan_probe+0x6c>
     880: 94000000     	bl	0x880 <nb_fan_probe+0x520>
		0000000000000880:  R_AARCH64_CALL26	__stack_chk_fail
