
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000474 <nubia_hw_ver_probe>:
     474: d503233f     	paciasp
     478: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
     47c: a9016ffc     	stp	x28, x27, [sp, #0x10]
     480: a90267fa     	stp	x26, x25, [sp, #0x20]
     484: a9035ff8     	stp	x24, x23, [sp, #0x30]
     488: a90457f6     	stp	x22, x21, [sp, #0x40]
     48c: a9054ff4     	stp	x20, x19, [sp, #0x50]
     490: 910003fd     	mov	x29, sp
     494: 90000018     	adrp	x24, 0x0 <.text>
		0000000000000494:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     498: f9417c16     	ldr	x22, [x0, #0x2f8]
     49c: aa0003f3     	mov	x19, x0
     4a0: b9400308     	ldr	w8, [x24]
		00000000000004a0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     4a4: 7100051f     	cmp	w8, #0x1
     4a8: 54001340     	b.eq	0x710 <nubia_hw_ver_probe+0x29c>
     4ac: b40013b3     	cbz	x19, 0x720 <nubia_hw_ver_probe+0x2ac>
     4b0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     4b4: 91000021     	add	x1, x1, #0x0
		00000000000004b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     4b8: aa1603e0     	mov	x0, x22
     4bc: 2a1f03e2     	mov	w2, wzr
     4c0: 94000000     	bl	0x4c0 <nubia_hw_ver_probe+0x4c>
		00000000000004c0:  R_AARCH64_CALL26	of_get_named_gpio
     4c4: 37f81360     	tbnz	w0, #0x1f, 0x730 <nubia_hw_ver_probe+0x2bc>
     4c8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f
     4cc: 91000021     	add	x1, x1, #0x0
		00000000000004cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f
     4d0: 2a0003f4     	mov	w20, w0
     4d4: 94000000     	bl	0x4d4 <nubia_hw_ver_probe+0x60>
		00000000000004d4:  R_AARCH64_CALL26	gpio_request
     4d8: 37f813e0     	tbnz	w0, #0x1f, 0x754 <nubia_hw_ver_probe+0x2e0>
     4dc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x50
     4e0: 91000021     	add	x1, x1, #0x0
		00000000000004e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x50
     4e4: aa1603e0     	mov	x0, x22
     4e8: 2a1f03e2     	mov	w2, wzr
     4ec: 94000000     	bl	0x4ec <nubia_hw_ver_probe+0x78>
		00000000000004ec:  R_AARCH64_CALL26	of_get_named_gpio
     4f0: 37f80300     	tbnz	w0, #0x1f, 0x550 <nubia_hw_ver_probe+0xdc>
     4f4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x153
     4f8: 91000021     	add	x1, x1, #0x0
		00000000000004f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x153
     4fc: 2a0003f7     	mov	w23, w0
     500: 94000000     	bl	0x500 <nubia_hw_ver_probe+0x8c>
		0000000000000500:  R_AARCH64_CALL26	gpio_request
     504: 37f817e0     	tbnz	w0, #0x1f, 0x800 <nubia_hw_ver_probe+0x38c>
     508: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000508:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c5
     50c: 91000021     	add	x1, x1, #0x0
		000000000000050c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c5
     510: aa1603e0     	mov	x0, x22
     514: 2a1f03e2     	mov	w2, wzr
     518: 94000000     	bl	0x518 <nubia_hw_ver_probe+0xa4>
		0000000000000518:  R_AARCH64_CALL26	of_get_named_gpio
     51c: 90000015     	adrp	x21, 0x0 <.text>
		000000000000051c:  R_AARCH64_ADR_PREL_PG_HI21	pcb_gpio3
     520: b90002a0     	str	w0, [x21]
		0000000000000520:  R_AARCH64_LDST32_ABS_LO12_NC	pcb_gpio3
     524: 37f80200     	tbnz	w0, #0x1f, 0x564 <nubia_hw_ver_probe+0xf0>
     528: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000528:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cd
     52c: 91000021     	add	x1, x1, #0x0
		000000000000052c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cd
     530: 94000000     	bl	0x530 <nubia_hw_ver_probe+0xbc>
		0000000000000530:  R_AARCH64_CALL26	gpio_request
     534: 36f801e0     	tbz	w0, #0x1f, 0x570 <nubia_hw_ver_probe+0xfc>
     538: b94002a1     	ldr	w1, [x21]
		0000000000000538:  R_AARCH64_LDST32_ABS_LO12_NC	pcb_gpio3
     53c: 2a0003e2     	mov	w2, w0
     540: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000540:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4dd
     544: 91000000     	add	x0, x0, #0x0
		0000000000000544:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4dd
     548: 94000000     	bl	0x548 <nubia_hw_ver_probe+0xd4>
		0000000000000548:  R_AARCH64_CALL26	_printk
     54c: 14000009     	b	0x570 <nubia_hw_ver_probe+0xfc>
     550: b9400308     	ldr	w8, [x24]
		0000000000000550:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     554: 7100051f     	cmp	w8, #0x1
     558: 54001600     	b.eq	0x818 <nubia_hw_ver_probe+0x3a4>
     55c: 2a1f03f7     	mov	w23, wzr
     560: 14000004     	b	0x570 <nubia_hw_ver_probe+0xfc>
     564: b9400308     	ldr	w8, [x24]
		0000000000000564:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     568: 7100051f     	cmp	w8, #0x1
     56c: 54001fe0     	b.eq	0x968 <nubia_hw_ver_probe+0x4f4>
     570: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000570:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194
     574: 91000021     	add	x1, x1, #0x0
		0000000000000574:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194
     578: aa1603e0     	mov	x0, x22
     57c: 2a1f03e2     	mov	w2, wzr
     580: 94000000     	bl	0x580 <nubia_hw_ver_probe+0x10c>
		0000000000000580:  R_AARCH64_CALL26	of_get_named_gpio
     584: 37f80f40     	tbnz	w0, #0x1f, 0x76c <nubia_hw_ver_probe+0x2f8>
     588: 2a0003f5     	mov	w21, w0
     58c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000058c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3db
     590: 91000021     	add	x1, x1, #0x0
		0000000000000590:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3db
     594: aa1603e0     	mov	x0, x22
     598: 2a1f03e2     	mov	w2, wzr
     59c: 94000000     	bl	0x59c <nubia_hw_ver_probe+0x128>
		000000000000059c:  R_AARCH64_CALL26	of_get_named_gpio
     5a0: 37f80f20     	tbnz	w0, #0x1f, 0x784 <nubia_hw_ver_probe+0x310>
     5a4: 2a0003f6     	mov	w22, w0
     5a8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf
     5ac: 91000021     	add	x1, x1, #0x0
		00000000000005ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf
     5b0: 2a1503e0     	mov	w0, w21
     5b4: 94000000     	bl	0x5b4 <nubia_hw_ver_probe+0x140>
		00000000000005b4:  R_AARCH64_CALL26	gpio_request
     5b8: 37f810c0     	tbnz	w0, #0x1f, 0x7d0 <nubia_hw_ver_probe+0x35c>
     5bc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35f
     5c0: 91000021     	add	x1, x1, #0x0
		00000000000005c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35f
     5c4: 2a1603e0     	mov	w0, w22
     5c8: 94000000     	bl	0x5c8 <nubia_hw_ver_probe+0x154>
		00000000000005c8:  R_AARCH64_CALL26	gpio_request
     5cc: 37f810e0     	tbnz	w0, #0x1f, 0x7e8 <nubia_hw_ver_probe+0x374>
     5d0: aa1303e0     	mov	x0, x19
     5d4: 94000000     	bl	0x5d4 <nubia_hw_ver_probe+0x160>
		00000000000005d4:  R_AARCH64_CALL26	nubia_gpio_ctrl
     5d8: 35000980     	cbnz	w0, 0x708 <nubia_hw_ver_probe+0x294>
     5dc: 2a1403e0     	mov	w0, w20
     5e0: 94000000     	bl	0x5e0 <nubia_hw_ver_probe+0x16c>
		00000000000005e0:  R_AARCH64_CALL26	gpio_to_desc
     5e4: 94000000     	bl	0x5e4 <nubia_hw_ver_probe+0x170>
		00000000000005e4:  R_AARCH64_CALL26	gpiod_direction_input
     5e8: 52800020     	mov	w0, #0x1                // =1
     5ec: 94000000     	bl	0x5ec <nubia_hw_ver_probe+0x178>
		00000000000005ec:  R_AARCH64_CALL26	msleep
     5f0: 2a1403e0     	mov	w0, w20
     5f4: 94000000     	bl	0x5f4 <nubia_hw_ver_probe+0x180>
		00000000000005f4:  R_AARCH64_CALL26	gpio_to_desc
     5f8: 94000000     	bl	0x5f8 <nubia_hw_ver_probe+0x184>
		00000000000005f8:  R_AARCH64_CALL26	gpiod_get_raw_value
     5fc: b9400308     	ldr	w8, [x24]
		00000000000005fc:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     600: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000600:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio1_v
     604: 39000120     	strb	w0, [x9]
		0000000000000604:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio1_v
     608: 7100051f     	cmp	w8, #0x1
     60c: 54001100     	b.eq	0x82c <nubia_hw_ver_probe+0x3b8>
     610: 2a1703e0     	mov	w0, w23
     614: 94000000     	bl	0x614 <nubia_hw_ver_probe+0x1a0>
		0000000000000614:  R_AARCH64_CALL26	gpio_to_desc
     618: 94000000     	bl	0x618 <nubia_hw_ver_probe+0x1a4>
		0000000000000618:  R_AARCH64_CALL26	gpiod_direction_input
     61c: 52800020     	mov	w0, #0x1                // =1
     620: 94000000     	bl	0x620 <nubia_hw_ver_probe+0x1ac>
		0000000000000620:  R_AARCH64_CALL26	msleep
     624: 2a1703e0     	mov	w0, w23
     628: 94000000     	bl	0x628 <nubia_hw_ver_probe+0x1b4>
		0000000000000628:  R_AARCH64_CALL26	gpio_to_desc
     62c: 94000000     	bl	0x62c <nubia_hw_ver_probe+0x1b8>
		000000000000062c:  R_AARCH64_CALL26	gpiod_get_raw_value
     630: b9400308     	ldr	w8, [x24]
		0000000000000630:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     634: 9000001b     	adrp	x27, 0x0 <.text>
		0000000000000634:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio2_v
     638: 39000360     	strb	w0, [x27]
		0000000000000638:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio2_v
     63c: 7100051f     	cmp	w8, #0x1
     640: 54001020     	b.eq	0x844 <nubia_hw_ver_probe+0x3d0>
     644: 90000019     	adrp	x25, 0x0 <.text>
		0000000000000644:  R_AARCH64_ADR_PREL_PG_HI21	pcb_gpio3
     648: b9400320     	ldr	w0, [x25]
		0000000000000648:  R_AARCH64_LDST32_ABS_LO12_NC	pcb_gpio3
     64c: 94000000     	bl	0x64c <nubia_hw_ver_probe+0x1d8>
		000000000000064c:  R_AARCH64_CALL26	gpio_to_desc
     650: 94000000     	bl	0x650 <nubia_hw_ver_probe+0x1dc>
		0000000000000650:  R_AARCH64_CALL26	gpiod_direction_input
     654: 52800020     	mov	w0, #0x1                // =1
     658: 94000000     	bl	0x658 <nubia_hw_ver_probe+0x1e4>
		0000000000000658:  R_AARCH64_CALL26	msleep
     65c: b9400320     	ldr	w0, [x25]
		000000000000065c:  R_AARCH64_LDST32_ABS_LO12_NC	pcb_gpio3
     660: 94000000     	bl	0x660 <nubia_hw_ver_probe+0x1ec>
		0000000000000660:  R_AARCH64_CALL26	gpio_to_desc
     664: 94000000     	bl	0x664 <nubia_hw_ver_probe+0x1f0>
		0000000000000664:  R_AARCH64_CALL26	gpiod_get_raw_value
     668: b9400308     	ldr	w8, [x24]
		0000000000000668:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     66c: 9000001a     	adrp	x26, 0x0 <.text>
		000000000000066c:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio3_v
     670: 39000340     	strb	w0, [x26]
		0000000000000670:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio3_v
     674: 7100051f     	cmp	w8, #0x1
     678: 54000f20     	b.eq	0x85c <nubia_hw_ver_probe+0x3e8>
     67c: 2a1503e0     	mov	w0, w21
     680: 94000000     	bl	0x680 <nubia_hw_ver_probe+0x20c>
		0000000000000680:  R_AARCH64_CALL26	gpio_to_desc
     684: 94000000     	bl	0x684 <nubia_hw_ver_probe+0x210>
		0000000000000684:  R_AARCH64_CALL26	gpiod_direction_input
     688: 52800020     	mov	w0, #0x1                // =1
     68c: 94000000     	bl	0x68c <nubia_hw_ver_probe+0x218>
		000000000000068c:  R_AARCH64_CALL26	msleep
     690: 2a1503e0     	mov	w0, w21
     694: 94000000     	bl	0x694 <nubia_hw_ver_probe+0x220>
		0000000000000694:  R_AARCH64_CALL26	gpio_to_desc
     698: 94000000     	bl	0x698 <nubia_hw_ver_probe+0x224>
		0000000000000698:  R_AARCH64_CALL26	gpiod_get_raw_value
     69c: b9400308     	ldr	w8, [x24]
		000000000000069c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     6a0: 90000009     	adrp	x9, 0x0 <.text>
		00000000000006a0:  R_AARCH64_ADR_PREL_PG_HI21	nubia_rf_gpio1_v
     6a4: 39000120     	strb	w0, [x9]
		00000000000006a4:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio1_v
     6a8: 7100051f     	cmp	w8, #0x1
     6ac: 54000e40     	b.eq	0x874 <nubia_hw_ver_probe+0x400>
     6b0: 2a1603e0     	mov	w0, w22
     6b4: 94000000     	bl	0x6b4 <nubia_hw_ver_probe+0x240>
		00000000000006b4:  R_AARCH64_CALL26	gpio_to_desc
     6b8: 94000000     	bl	0x6b8 <nubia_hw_ver_probe+0x244>
		00000000000006b8:  R_AARCH64_CALL26	gpiod_direction_input
     6bc: 52800020     	mov	w0, #0x1                // =1
     6c0: 94000000     	bl	0x6c0 <nubia_hw_ver_probe+0x24c>
		00000000000006c0:  R_AARCH64_CALL26	msleep
     6c4: 2a1603e0     	mov	w0, w22
     6c8: 94000000     	bl	0x6c8 <nubia_hw_ver_probe+0x254>
		00000000000006c8:  R_AARCH64_CALL26	gpio_to_desc
     6cc: 94000000     	bl	0x6cc <nubia_hw_ver_probe+0x258>
		00000000000006cc:  R_AARCH64_CALL26	gpiod_get_raw_value
     6d0: b9400308     	ldr	w8, [x24]
		00000000000006d0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     6d4: 9000001c     	adrp	x28, 0x0 <.text>
		00000000000006d4:  R_AARCH64_ADR_PREL_PG_HI21	nubia_rf_gpio2_v
     6d8: 39000380     	strb	w0, [x28]
		00000000000006d8:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio2_v
     6dc: 7100051f     	cmp	w8, #0x1
     6e0: 54000d60     	b.eq	0x88c <nubia_hw_ver_probe+0x418>
     6e4: 52800280     	mov	w0, #0x14               // =20
     6e8: 94000000     	bl	0x6e8 <nubia_hw_ver_probe+0x274>
		00000000000006e8:  R_AARCH64_CALL26	msleep
     6ec: f9405668     	ldr	x8, [x19, #0xa8]
     6f0: b4000da8     	cbz	x8, 0x8a4 <nubia_hw_ver_probe+0x430>
     6f4: f9400901     	ldr	x1, [x8, #0x10]
     6f8: b4000e21     	cbz	x1, 0x8bc <nubia_hw_ver_probe+0x448>
     6fc: f9400100     	ldr	x0, [x8]
     700: 94000000     	bl	0x700 <nubia_hw_ver_probe+0x28c>
		0000000000000700:  R_AARCH64_CALL26	pinctrl_select_state
     704: 34000e60     	cbz	w0, 0x8d0 <nubia_hw_ver_probe+0x45c>
     708: 12800240     	mov	w0, #-0x13              // =-19
     70c: 14000029     	b	0x7b0 <nubia_hw_ver_probe+0x33c>
     710: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000710:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x574
     714: 91000000     	add	x0, x0, #0x0
		0000000000000714:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x574
     718: 94000000     	bl	0x718 <nubia_hw_ver_probe+0x2a4>
		0000000000000718:  R_AARCH64_CALL26	_printk
     71c: b5ffecb3     	cbnz	x19, 0x4b0 <nubia_hw_ver_probe+0x3c>
     720: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000720:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x227
     724: 91000000     	add	x0, x0, #0x0
		0000000000000724:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x227
     728: 94000000     	bl	0x728 <nubia_hw_ver_probe+0x2b4>
		0000000000000728:  R_AARCH64_CALL26	_printk
     72c: 14000020     	b	0x7ac <nubia_hw_ver_probe+0x338>
     730: b9400308     	ldr	w8, [x24]
		0000000000000730:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     734: 7100051f     	cmp	w8, #0x1
     738: 54000081     	b.ne	0x748 <nubia_hw_ver_probe+0x2d4>
     73c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000073c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24e
     740: 91000000     	add	x0, x0, #0x0
		0000000000000740:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24e
     744: 94000000     	bl	0x744 <nubia_hw_ver_probe+0x2d0>
		0000000000000744:  R_AARCH64_CALL26	_printk
     748: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000748:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38
     74c: 91000021     	add	x1, x1, #0x0
		000000000000074c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38
     750: 14000015     	b	0x7a4 <nubia_hw_ver_probe+0x330>
     754: 2a0003e2     	mov	w2, w0
     758: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000758:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x339
     75c: 91000000     	add	x0, x0, #0x0
		000000000000075c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x339
     760: 2a1403e1     	mov	w1, w20
     764: 94000000     	bl	0x764 <nubia_hw_ver_probe+0x2f0>
		0000000000000764:  R_AARCH64_CALL26	_printk
     768: 17ffff5d     	b	0x4dc <nubia_hw_ver_probe+0x68>
     76c: b9400308     	ldr	w8, [x24]
		000000000000076c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     770: 7100051f     	cmp	w8, #0x1
     774: 54000141     	b.ne	0x79c <nubia_hw_ver_probe+0x328>
     778: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000778:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ad
     77c: 91000000     	add	x0, x0, #0x0
		000000000000077c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ad
     780: 14000006     	b	0x798 <nubia_hw_ver_probe+0x324>
     784: b9400308     	ldr	w8, [x24]
		0000000000000784:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     788: 7100051f     	cmp	w8, #0x1
     78c: 54000081     	b.ne	0x79c <nubia_hw_ver_probe+0x328>
     790: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000790:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x452
     794: 91000000     	add	x0, x0, #0x0
		0000000000000794:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x452
     798: 94000000     	bl	0x798 <nubia_hw_ver_probe+0x324>
		0000000000000798:  R_AARCH64_CALL26	_printk
     79c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000079c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x55d
     7a0: 91000021     	add	x1, x1, #0x0
		00000000000007a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x55d
     7a4: 91004260     	add	x0, x19, #0x10
     7a8: 94000000     	bl	0x7a8 <nubia_hw_ver_probe+0x334>
		00000000000007a8:  R_AARCH64_CALL26	_dev_err
     7ac: 12804080     	mov	w0, #-0x205             // =-517
     7b0: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     7b4: a94457f6     	ldp	x22, x21, [sp, #0x40]
     7b8: a9435ff8     	ldp	x24, x23, [sp, #0x30]
     7bc: a94267fa     	ldp	x26, x25, [sp, #0x20]
     7c0: a9416ffc     	ldp	x28, x27, [sp, #0x10]
     7c4: a8c67bfd     	ldp	x29, x30, [sp], #0x60
     7c8: d50323bf     	autiasp
     7cc: d65f03c0     	ret
     7d0: 2a0003e2     	mov	w2, w0
     7d4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x339
     7d8: 91000000     	add	x0, x0, #0x0
		00000000000007d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x339
     7dc: 2a1503e1     	mov	w1, w21
     7e0: 94000000     	bl	0x7e0 <nubia_hw_ver_probe+0x36c>
		00000000000007e0:  R_AARCH64_CALL26	_printk
     7e4: 17ffff76     	b	0x5bc <nubia_hw_ver_probe+0x148>
     7e8: 2a0003e2     	mov	w2, w0
     7ec: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4dd
     7f0: 91000000     	add	x0, x0, #0x0
		00000000000007f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4dd
     7f4: 2a1603e1     	mov	w1, w22
     7f8: 94000000     	bl	0x7f8 <nubia_hw_ver_probe+0x384>
		00000000000007f8:  R_AARCH64_CALL26	_printk
     7fc: 17ffff75     	b	0x5d0 <nubia_hw_ver_probe+0x15c>
     800: 2a0003e2     	mov	w2, w0
     804: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000804:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4dd
     808: 91000000     	add	x0, x0, #0x0
		0000000000000808:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4dd
     80c: 2a1703e1     	mov	w1, w23
     810: 94000000     	bl	0x810 <nubia_hw_ver_probe+0x39c>
		0000000000000810:  R_AARCH64_CALL26	_printk
     814: 17ffff3d     	b	0x508 <nubia_hw_ver_probe+0x94>
     818: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000818:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x166
     81c: 91000000     	add	x0, x0, #0x0
		000000000000081c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x166
     820: 94000000     	bl	0x820 <nubia_hw_ver_probe+0x3ac>
		0000000000000820:  R_AARCH64_CALL26	_printk
     824: 2a1f03f7     	mov	w23, wzr
     828: 17ffff52     	b	0x570 <nubia_hw_ver_probe+0xfc>
     82c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000082c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fd
     830: 91000108     	add	x8, x8, #0x0
		0000000000000830:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fd
     834: 12001c01     	and	w1, w0, #0xff
     838: aa0803e0     	mov	x0, x8
     83c: 94000000     	bl	0x83c <nubia_hw_ver_probe+0x3c8>
		000000000000083c:  R_AARCH64_CALL26	_printk
     840: 17ffff74     	b	0x610 <nubia_hw_ver_probe+0x19c>
     844: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000844:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fd
     848: 91000108     	add	x8, x8, #0x0
		0000000000000848:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fd
     84c: 12001c01     	and	w1, w0, #0xff
     850: aa0803e0     	mov	x0, x8
     854: 94000000     	bl	0x854 <nubia_hw_ver_probe+0x3e0>
		0000000000000854:  R_AARCH64_CALL26	_printk
     858: 17ffff7b     	b	0x644 <nubia_hw_ver_probe+0x1d0>
     85c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000085c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fd
     860: 91000108     	add	x8, x8, #0x0
		0000000000000860:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fd
     864: 12001c01     	and	w1, w0, #0xff
     868: aa0803e0     	mov	x0, x8
     86c: 94000000     	bl	0x86c <nubia_hw_ver_probe+0x3f8>
		000000000000086c:  R_AARCH64_CALL26	_printk
     870: 17ffff83     	b	0x67c <nubia_hw_ver_probe+0x208>
     874: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000874:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fd
     878: 91000108     	add	x8, x8, #0x0
		0000000000000878:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fd
     87c: 12001c01     	and	w1, w0, #0xff
     880: aa0803e0     	mov	x0, x8
     884: 94000000     	bl	0x884 <nubia_hw_ver_probe+0x410>
		0000000000000884:  R_AARCH64_CALL26	_printk
     888: 17ffff8a     	b	0x6b0 <nubia_hw_ver_probe+0x23c>
     88c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000088c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fd
     890: 91000108     	add	x8, x8, #0x0
		0000000000000890:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fd
     894: 12001c01     	and	w1, w0, #0xff
     898: aa0803e0     	mov	x0, x8
     89c: 94000000     	bl	0x89c <nubia_hw_ver_probe+0x428>
		000000000000089c:  R_AARCH64_CALL26	_printk
     8a0: 17ffff91     	b	0x6e4 <nubia_hw_ver_probe+0x270>
     8a4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e9
     8a8: 91000021     	add	x1, x1, #0x0
		00000000000008a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e9
     8ac: 91004260     	add	x0, x19, #0x10
     8b0: 94000000     	bl	0x8b0 <nubia_hw_ver_probe+0x43c>
		00000000000008b0:  R_AARCH64_CALL26	_dev_err
     8b4: 12800240     	mov	w0, #-0x13              // =-19
     8b8: 17ffffbe     	b	0x7b0 <nubia_hw_ver_probe+0x33c>
     8bc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x200
     8c0: 91000000     	add	x0, x0, #0x0
		00000000000008c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x200
     8c4: 94000000     	bl	0x8c4 <nubia_hw_ver_probe+0x450>
		00000000000008c4:  R_AARCH64_CALL26	_printk
     8c8: 12800240     	mov	w0, #-0x13              // =-19
     8cc: 17ffffb9     	b	0x7b0 <nubia_hw_ver_probe+0x33c>
     8d0: 2a1403e0     	mov	w0, w20
     8d4: 9400006c     	bl	0xa84 <nubia_get_gpio_status>
     8d8: 90000013     	adrp	x19, 0x0 <.text>
		00000000000008d8:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio1_v
     8dc: 39400268     	ldrb	w8, [x19]
		00000000000008dc:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio1_v
     8e0: 0b000108     	add	w8, w8, w0
     8e4: 2a1703e0     	mov	w0, w23
     8e8: 39000268     	strb	w8, [x19]
		00000000000008e8:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio1_v
     8ec: 94000066     	bl	0xa84 <nubia_get_gpio_status>
     8f0: 39400368     	ldrb	w8, [x27]
		00000000000008f0:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio2_v
     8f4: 0b000108     	add	w8, w8, w0
     8f8: b9400320     	ldr	w0, [x25]
		00000000000008f8:  R_AARCH64_LDST32_ABS_LO12_NC	pcb_gpio3
     8fc: 39000368     	strb	w8, [x27]
		00000000000008fc:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio2_v
     900: 94000061     	bl	0xa84 <nubia_get_gpio_status>
     904: 39400348     	ldrb	w8, [x26]
		0000000000000904:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio3_v
     908: b9400309     	ldr	w9, [x24]
		0000000000000908:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     90c: 0b000108     	add	w8, w8, w0
     910: 7100053f     	cmp	w9, #0x1
     914: 39000348     	strb	w8, [x26]
		0000000000000914:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio3_v
     918: 540000e1     	b.ne	0x934 <nubia_hw_ver_probe+0x4c0>
     91c: 39400261     	ldrb	w1, [x19]
		000000000000091c:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio1_v
     920: 39400362     	ldrb	w2, [x27]
		0000000000000920:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio2_v
     924: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x371
     928: 91000000     	add	x0, x0, #0x0
		0000000000000928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x371
     92c: 12001d03     	and	w3, w8, #0xff
     930: 94000000     	bl	0x930 <nubia_hw_ver_probe+0x4bc>
		0000000000000930:  R_AARCH64_CALL26	_printk
     934: 39400269     	ldrb	w9, [x19]
		0000000000000934:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio1_v
     938: 39800368     	ldrsb	x8, [x27]
		0000000000000938:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio2_v
     93c: 7100053f     	cmp	w9, #0x1
     940: 540001cc     	b.gt	0x978 <nubia_hw_ver_probe+0x504>
     944: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000944:  R_AARCH64_ADR_PREL_PG_HI21	nubia_rf_gpio1_v
     948: 340002c9     	cbz	w9, 0x9a0 <nubia_hw_ver_probe+0x52c>
     94c: 7100053f     	cmp	w9, #0x1
     950: 54000461     	b.ne	0x9dc <nubia_hw_ver_probe+0x568>
     954: 71000d1f     	cmp	w8, #0x3
     958: 54000422     	b.hs	0x9dc <nubia_hw_ver_probe+0x568>
     95c: 90000009     	adrp	x9, 0x0 <.text>
		000000000000095c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x3b0
     960: 91000129     	add	x9, x9, #0x0
		0000000000000960:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x3b0
     964: 14000018     	b	0x9c4 <nubia_hw_ver_probe+0x550>
     968: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000968:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe8
     96c: 91000000     	add	x0, x0, #0x0
		000000000000096c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe8
     970: 94000000     	bl	0x970 <nubia_hw_ver_probe+0x4fc>
		0000000000000970:  R_AARCH64_CALL26	_printk
     974: 17fffeff     	b	0x570 <nubia_hw_ver_probe+0xfc>
     978: 7100093f     	cmp	w9, #0x2
     97c: 90000013     	adrp	x19, 0x0 <.text>
		000000000000097c:  R_AARCH64_ADR_PREL_PG_HI21	nubia_rf_gpio1_v
     980: 540001a0     	b.eq	0x9b4 <nubia_hw_ver_probe+0x540>
     984: 71000d3f     	cmp	w9, #0x3
     988: 540002a1     	b.ne	0x9dc <nubia_hw_ver_probe+0x568>
     98c: 71000d1f     	cmp	w8, #0x3
     990: 54000261     	b.ne	0x9dc <nubia_hw_ver_probe+0x568>
     994: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000994:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xd8
     998: 91000108     	add	x8, x8, #0x0
		0000000000000998:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xd8
     99c: 1400000b     	b	0x9c8 <nubia_hw_ver_probe+0x554>
     9a0: 71000d1f     	cmp	w8, #0x3
     9a4: 540001c2     	b.hs	0x9dc <nubia_hw_ver_probe+0x568>
     9a8: 90000009     	adrp	x9, 0x0 <.text>
		00000000000009a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x380
     9ac: 91000129     	add	x9, x9, #0x0
		00000000000009ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x380
     9b0: 14000005     	b	0x9c4 <nubia_hw_ver_probe+0x550>
     9b4: 71000d1f     	cmp	w8, #0x3
     9b8: 54000122     	b.hs	0x9dc <nubia_hw_ver_probe+0x568>
     9bc: 90000009     	adrp	x9, 0x0 <.text>
		00000000000009bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x398
     9c0: 91000129     	add	x9, x9, #0x0
		00000000000009c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x398
     9c4: f8687928     	ldr	x8, [x9, x8, lsl #3]
     9c8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x116
     9cc: 91000000     	add	x0, x0, #0x0
		00000000000009cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x116
     9d0: 91003101     	add	x1, x8, #0xc
     9d4: 94000000     	bl	0x9d4 <nubia_hw_ver_probe+0x560>
		00000000000009d4:  R_AARCH64_CALL26	_printk
     9d8: 14000004     	b	0x9e8 <nubia_hw_ver_probe+0x574>
     9dc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x237
     9e0: 91000000     	add	x0, x0, #0x0
		00000000000009e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x237
     9e4: 94000000     	bl	0x9e4 <nubia_hw_ver_probe+0x570>
		00000000000009e4:  R_AARCH64_CALL26	_printk
     9e8: 2a1503e0     	mov	w0, w21
     9ec: 94000026     	bl	0xa84 <nubia_get_gpio_status>
     9f0: 39400268     	ldrb	w8, [x19]
		00000000000009f0:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio1_v
     9f4: 0b000108     	add	w8, w8, w0
     9f8: 2a1603e0     	mov	w0, w22
     9fc: 39000268     	strb	w8, [x19]
		00000000000009fc:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio1_v
     a00: 94000021     	bl	0xa84 <nubia_get_gpio_status>
     a04: 39400388     	ldrb	w8, [x28]
		0000000000000a04:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio2_v
     a08: b9400309     	ldr	w9, [x24]
		0000000000000a08:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     a0c: 0b000108     	add	w8, w8, w0
     a10: 7100053f     	cmp	w9, #0x1
     a14: 39000388     	strb	w8, [x28]
		0000000000000a14:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio2_v
     a18: 54000060     	b.eq	0xa24 <nubia_hw_ver_probe+0x5b0>
     a1c: 2a1f03e0     	mov	w0, wzr
     a20: 17ffff64     	b	0x7b0 <nubia_hw_ver_probe+0x33c>
     a24: 39400261     	ldrb	w1, [x19]
		0000000000000a24:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio1_v
     a28: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x504
     a2c: 91000000     	add	x0, x0, #0x0
		0000000000000a2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x504
     a30: 12001d02     	and	w2, w8, #0xff
     a34: 94000000     	bl	0xa34 <nubia_hw_ver_probe+0x5c0>
		0000000000000a34:  R_AARCH64_CALL26	_printk
     a38: 17fffff9     	b	0xa1c <nubia_hw_ver_probe+0x5a8>
