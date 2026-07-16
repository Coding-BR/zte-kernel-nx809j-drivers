
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
     494: 90000019     	adrp	x25, 0x0 <.text>
		0000000000000494:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
     498: f9417c16     	ldr	x22, [x0, #0x2f8]
     49c: aa0003f3     	mov	x19, x0
     4a0: b9400328     	ldr	w8, [x25]
		00000000000004a0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
     4a4: 7100051f     	cmp	w8, #0x1
     4a8: 54001360     	b.eq	0x714 <nubia_hw_ver_probe+0x2a0>
     4ac: b40013d3     	cbz	x19, 0x724 <nubia_hw_ver_probe+0x2b0>
     4b0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     4b4: 91000021     	add	x1, x1, #0x0
		00000000000004b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     4b8: aa1603e0     	mov	x0, x22
     4bc: 2a1f03e2     	mov	w2, wzr
     4c0: 94000000     	bl	0x4c0 <nubia_hw_ver_probe+0x4c>
		00000000000004c0:  R_AARCH64_CALL26	of_get_named_gpio
     4c4: 37f81380     	tbnz	w0, #0x1f, 0x734 <nubia_hw_ver_probe+0x2c0>
     4c8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f
     4cc: 91000021     	add	x1, x1, #0x0
		00000000000004cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f
     4d0: 2a0003f4     	mov	w20, w0
     4d4: 94000000     	bl	0x4d4 <nubia_hw_ver_probe+0x60>
		00000000000004d4:  R_AARCH64_CALL26	gpio_request
     4d8: 37f81400     	tbnz	w0, #0x1f, 0x758 <nubia_hw_ver_probe+0x2e4>
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
		00000000000004f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x178
     4f8: 91000021     	add	x1, x1, #0x0
		00000000000004f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x178
     4fc: 2a0003f7     	mov	w23, w0
     500: 94000000     	bl	0x500 <nubia_hw_ver_probe+0x8c>
		0000000000000500:  R_AARCH64_CALL26	gpio_request
     504: 37f81800     	tbnz	w0, #0x1f, 0x804 <nubia_hw_ver_probe+0x390>
     508: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000508:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e8
     50c: 91000021     	add	x1, x1, #0x0
		000000000000050c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e8
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
		0000000000000528:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x216
     52c: 91000021     	add	x1, x1, #0x0
		000000000000052c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x216
     530: 94000000     	bl	0x530 <nubia_hw_ver_probe+0xbc>
		0000000000000530:  R_AARCH64_CALL26	gpio_request
     534: 36f801e0     	tbz	w0, #0x1f, 0x570 <nubia_hw_ver_probe+0xfc>
     538: b94002a1     	ldr	w1, [x21]
		0000000000000538:  R_AARCH64_LDST32_ABS_LO12_NC	pcb_gpio3
     53c: 2a0003e2     	mov	w2, w0
     540: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000540:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfa
     544: 91000000     	add	x0, x0, #0x0
		0000000000000544:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfa
     548: 94000000     	bl	0x548 <nubia_hw_ver_probe+0xd4>
		0000000000000548:  R_AARCH64_CALL26	_printk
     54c: 14000009     	b	0x570 <nubia_hw_ver_probe+0xfc>
     550: b9400328     	ldr	w8, [x25]
		0000000000000550:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
     554: 7100051f     	cmp	w8, #0x1
     558: 54001620     	b.eq	0x81c <nubia_hw_ver_probe+0x3a8>
     55c: 2a1f03f7     	mov	w23, wzr
     560: 14000004     	b	0x570 <nubia_hw_ver_probe+0xfc>
     564: b9400328     	ldr	w8, [x25]
		0000000000000564:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
     568: 7100051f     	cmp	w8, #0x1
     56c: 54002120     	b.eq	0x990 <nubia_hw_ver_probe+0x51c>
     570: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000570:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b9
     574: 91000021     	add	x1, x1, #0x0
		0000000000000574:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b9
     578: aa1603e0     	mov	x0, x22
     57c: 2a1f03e2     	mov	w2, wzr
     580: 94000000     	bl	0x580 <nubia_hw_ver_probe+0x10c>
		0000000000000580:  R_AARCH64_CALL26	of_get_named_gpio
     584: 37f80f60     	tbnz	w0, #0x1f, 0x770 <nubia_hw_ver_probe+0x2fc>
     588: 2a0003f5     	mov	w21, w0
     58c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000058c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3fe
     590: 91000021     	add	x1, x1, #0x0
		0000000000000590:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3fe
     594: aa1603e0     	mov	x0, x22
     598: 2a1f03e2     	mov	w2, wzr
     59c: 94000000     	bl	0x59c <nubia_hw_ver_probe+0x128>
		000000000000059c:  R_AARCH64_CALL26	of_get_named_gpio
     5a0: 37f80f40     	tbnz	w0, #0x1f, 0x788 <nubia_hw_ver_probe+0x314>
     5a4: 2a0003f6     	mov	w22, w0
     5a8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf
     5ac: 91000021     	add	x1, x1, #0x0
		00000000000005ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf
     5b0: 2a1503e0     	mov	w0, w21
     5b4: 94000000     	bl	0x5b4 <nubia_hw_ver_probe+0x140>
		00000000000005b4:  R_AARCH64_CALL26	gpio_request
     5b8: 37f810e0     	tbnz	w0, #0x1f, 0x7d4 <nubia_hw_ver_probe+0x360>
     5bc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d6
     5c0: 91000021     	add	x1, x1, #0x0
		00000000000005c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d6
     5c4: 2a1603e0     	mov	w0, w22
     5c8: 94000000     	bl	0x5c8 <nubia_hw_ver_probe+0x154>
		00000000000005c8:  R_AARCH64_CALL26	gpio_request
     5cc: 37f81100     	tbnz	w0, #0x1f, 0x7ec <nubia_hw_ver_probe+0x378>
     5d0: aa1303e0     	mov	x0, x19
     5d4: 94000000     	bl	0x5d4 <nubia_hw_ver_probe+0x160>
		00000000000005d4:  R_AARCH64_CALL26	nubia_gpio_ctrl
     5d8: 350009a0     	cbnz	w0, 0x70c <nubia_hw_ver_probe+0x298>
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
     5fc: b9400328     	ldr	w8, [x25]
		00000000000005fc:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
     600: 7100051f     	cmp	w8, #0x1
     604: 54001140     	b.eq	0x82c <nubia_hw_ver_probe+0x3b8>
     608: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000608:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio1_v
     60c: 39000100     	strb	w0, [x8]
		000000000000060c:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio1_v
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
     630: b9400328     	ldr	w8, [x25]
		0000000000000630:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
     634: 7100051f     	cmp	w8, #0x1
     638: 540010a0     	b.eq	0x84c <nubia_hw_ver_probe+0x3d8>
     63c: 9000001a     	adrp	x26, 0x0 <.text>
		000000000000063c:  R_AARCH64_ADR_PREL_PG_HI21	pcb_gpio3
     640: 9000001b     	adrp	x27, 0x0 <.text>
		0000000000000640:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio2_v
     644: b9400358     	ldr	w24, [x26]
		0000000000000644:  R_AARCH64_LDST32_ABS_LO12_NC	pcb_gpio3
     648: 39000360     	strb	w0, [x27]
		0000000000000648:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio2_v
     64c: 2a1803e0     	mov	w0, w24
     650: 94000000     	bl	0x650 <nubia_hw_ver_probe+0x1dc>
		0000000000000650:  R_AARCH64_CALL26	gpio_to_desc
     654: 94000000     	bl	0x654 <nubia_hw_ver_probe+0x1e0>
		0000000000000654:  R_AARCH64_CALL26	gpiod_direction_input
     658: 52800020     	mov	w0, #0x1                // =1
     65c: 94000000     	bl	0x65c <nubia_hw_ver_probe+0x1e8>
		000000000000065c:  R_AARCH64_CALL26	msleep
     660: 2a1803e0     	mov	w0, w24
     664: 94000000     	bl	0x664 <nubia_hw_ver_probe+0x1f0>
		0000000000000664:  R_AARCH64_CALL26	gpio_to_desc
     668: 94000000     	bl	0x668 <nubia_hw_ver_probe+0x1f4>
		0000000000000668:  R_AARCH64_CALL26	gpiod_get_raw_value
     66c: b9400328     	ldr	w8, [x25]
		000000000000066c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
     670: 7100051f     	cmp	w8, #0x1
     674: 54000fc0     	b.eq	0x86c <nubia_hw_ver_probe+0x3f8>
     678: 90000018     	adrp	x24, 0x0 <.text>
		0000000000000678:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio3_v
     67c: 39000300     	strb	w0, [x24]
		000000000000067c:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio3_v
     680: 2a1503e0     	mov	w0, w21
     684: 94000000     	bl	0x684 <nubia_hw_ver_probe+0x210>
		0000000000000684:  R_AARCH64_CALL26	gpio_to_desc
     688: 94000000     	bl	0x688 <nubia_hw_ver_probe+0x214>
		0000000000000688:  R_AARCH64_CALL26	gpiod_direction_input
     68c: 52800020     	mov	w0, #0x1                // =1
     690: 94000000     	bl	0x690 <nubia_hw_ver_probe+0x21c>
		0000000000000690:  R_AARCH64_CALL26	msleep
     694: 2a1503e0     	mov	w0, w21
     698: 94000000     	bl	0x698 <nubia_hw_ver_probe+0x224>
		0000000000000698:  R_AARCH64_CALL26	gpio_to_desc
     69c: 94000000     	bl	0x69c <nubia_hw_ver_probe+0x228>
		000000000000069c:  R_AARCH64_CALL26	gpiod_get_raw_value
     6a0: b9400328     	ldr	w8, [x25]
		00000000000006a0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
     6a4: 7100051f     	cmp	w8, #0x1
     6a8: 54000f20     	b.eq	0x88c <nubia_hw_ver_probe+0x418>
     6ac: 90000008     	adrp	x8, 0x0 <.text>
		00000000000006ac:  R_AARCH64_ADR_PREL_PG_HI21	nubia_rf_gpio1_v
     6b0: 39000100     	strb	w0, [x8]
		00000000000006b0:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio1_v
     6b4: 2a1603e0     	mov	w0, w22
     6b8: 94000000     	bl	0x6b8 <nubia_hw_ver_probe+0x244>
		00000000000006b8:  R_AARCH64_CALL26	gpio_to_desc
     6bc: 94000000     	bl	0x6bc <nubia_hw_ver_probe+0x248>
		00000000000006bc:  R_AARCH64_CALL26	gpiod_direction_input
     6c0: 52800020     	mov	w0, #0x1                // =1
     6c4: 94000000     	bl	0x6c4 <nubia_hw_ver_probe+0x250>
		00000000000006c4:  R_AARCH64_CALL26	msleep
     6c8: 2a1603e0     	mov	w0, w22
     6cc: 94000000     	bl	0x6cc <nubia_hw_ver_probe+0x258>
		00000000000006cc:  R_AARCH64_CALL26	gpio_to_desc
     6d0: 94000000     	bl	0x6d0 <nubia_hw_ver_probe+0x25c>
		00000000000006d0:  R_AARCH64_CALL26	gpiod_get_raw_value
     6d4: b9400328     	ldr	w8, [x25]
		00000000000006d4:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
     6d8: 7100051f     	cmp	w8, #0x1
     6dc: 54000e80     	b.eq	0x8ac <nubia_hw_ver_probe+0x438>
     6e0: 9000001c     	adrp	x28, 0x0 <.text>
		00000000000006e0:  R_AARCH64_ADR_PREL_PG_HI21	nubia_rf_gpio2_v
     6e4: 39000380     	strb	w0, [x28]
		00000000000006e4:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio2_v
     6e8: 52800280     	mov	w0, #0x14               // =20
     6ec: 94000000     	bl	0x6ec <nubia_hw_ver_probe+0x278>
		00000000000006ec:  R_AARCH64_CALL26	msleep
     6f0: f9405668     	ldr	x8, [x19, #0xa8]
     6f4: b4000ec8     	cbz	x8, 0x8cc <nubia_hw_ver_probe+0x458>
     6f8: f9400901     	ldr	x1, [x8, #0x10]
     6fc: b4000f41     	cbz	x1, 0x8e4 <nubia_hw_ver_probe+0x470>
     700: f9400100     	ldr	x0, [x8]
     704: 94000000     	bl	0x704 <nubia_hw_ver_probe+0x290>
		0000000000000704:  R_AARCH64_CALL26	pinctrl_select_state
     708: 34000f80     	cbz	w0, 0x8f8 <nubia_hw_ver_probe+0x484>
     70c: 12800240     	mov	w0, #-0x13              // =-19
     710: 14000029     	b	0x7b4 <nubia_hw_ver_probe+0x340>
     714: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000714:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x570
     718: 91000000     	add	x0, x0, #0x0
		0000000000000718:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x570
     71c: 94000000     	bl	0x71c <nubia_hw_ver_probe+0x2a8>
		000000000000071c:  R_AARCH64_CALL26	_printk
     720: b5ffec93     	cbnz	x19, 0x4b0 <nubia_hw_ver_probe+0x3c>
     724: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x270
     728: 91000000     	add	x0, x0, #0x0
		0000000000000728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x270
     72c: 94000000     	bl	0x72c <nubia_hw_ver_probe+0x2b8>
		000000000000072c:  R_AARCH64_CALL26	_printk
     730: 14000020     	b	0x7b0 <nubia_hw_ver_probe+0x33c>
     734: b9400328     	ldr	w8, [x25]
		0000000000000734:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
     738: 7100051f     	cmp	w8, #0x1
     73c: 54000081     	b.ne	0x74c <nubia_hw_ver_probe+0x2d8>
     740: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000740:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x297
     744: 91000000     	add	x0, x0, #0x0
		0000000000000744:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x297
     748: 94000000     	bl	0x748 <nubia_hw_ver_probe+0x2d4>
		0000000000000748:  R_AARCH64_CALL26	_printk
     74c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000074c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38
     750: 91000021     	add	x1, x1, #0x0
		0000000000000750:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38
     754: 14000015     	b	0x7a8 <nubia_hw_ver_probe+0x334>
     758: 2a0003e2     	mov	w2, w0
     75c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000075c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f2
     760: 91000000     	add	x0, x0, #0x0
		0000000000000760:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f2
     764: 2a1403e1     	mov	w1, w20
     768: 94000000     	bl	0x768 <nubia_hw_ver_probe+0x2f4>
		0000000000000768:  R_AARCH64_CALL26	_printk
     76c: 17ffff5c     	b	0x4dc <nubia_hw_ver_probe+0x68>
     770: b9400328     	ldr	w8, [x25]
		0000000000000770:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
     774: 7100051f     	cmp	w8, #0x1
     778: 54000141     	b.ne	0x7a0 <nubia_hw_ver_probe+0x32c>
     77c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000077c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a9
     780: 91000000     	add	x0, x0, #0x0
		0000000000000780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a9
     784: 14000006     	b	0x79c <nubia_hw_ver_probe+0x328>
     788: b9400328     	ldr	w8, [x25]
		0000000000000788:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
     78c: 7100051f     	cmp	w8, #0x1
     790: 54000081     	b.ne	0x7a0 <nubia_hw_ver_probe+0x32c>
     794: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000794:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x475
     798: 91000000     	add	x0, x0, #0x0
		0000000000000798:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x475
     79c: 94000000     	bl	0x79c <nubia_hw_ver_probe+0x328>
		000000000000079c:  R_AARCH64_CALL26	_printk
     7a0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x559
     7a4: 91000021     	add	x1, x1, #0x0
		00000000000007a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x559
     7a8: 91004260     	add	x0, x19, #0x10
     7ac: 94000000     	bl	0x7ac <nubia_hw_ver_probe+0x338>
		00000000000007ac:  R_AARCH64_CALL26	_dev_err
     7b0: 12804080     	mov	w0, #-0x205             // =-517
     7b4: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     7b8: a94457f6     	ldp	x22, x21, [sp, #0x40]
     7bc: a9435ff8     	ldp	x24, x23, [sp, #0x30]
     7c0: a94267fa     	ldp	x26, x25, [sp, #0x20]
     7c4: a9416ffc     	ldp	x28, x27, [sp, #0x10]
     7c8: a8c67bfd     	ldp	x29, x30, [sp], #0x60
     7cc: d50323bf     	autiasp
     7d0: d65f03c0     	ret
     7d4: 2a0003e2     	mov	w2, w0
     7d8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f2
     7dc: 91000000     	add	x0, x0, #0x0
		00000000000007dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f2
     7e0: 2a1503e1     	mov	w1, w21
     7e4: 94000000     	bl	0x7e4 <nubia_hw_ver_probe+0x370>
		00000000000007e4:  R_AARCH64_CALL26	_printk
     7e8: 17ffff75     	b	0x5bc <nubia_hw_ver_probe+0x148>
     7ec: 2a0003e2     	mov	w2, w0
     7f0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfa
     7f4: 91000000     	add	x0, x0, #0x0
		00000000000007f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfa
     7f8: 2a1603e1     	mov	w1, w22
     7fc: 94000000     	bl	0x7fc <nubia_hw_ver_probe+0x388>
		00000000000007fc:  R_AARCH64_CALL26	_printk
     800: 17ffff74     	b	0x5d0 <nubia_hw_ver_probe+0x15c>
     804: 2a0003e2     	mov	w2, w0
     808: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000808:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfa
     80c: 91000000     	add	x0, x0, #0x0
		000000000000080c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfa
     810: 2a1703e1     	mov	w1, w23
     814: 94000000     	bl	0x814 <nubia_hw_ver_probe+0x3a0>
		0000000000000814:  R_AARCH64_CALL26	_printk
     818: 17ffff3c     	b	0x508 <nubia_hw_ver_probe+0x94>
     81c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000081c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18b
     820: 91000000     	add	x0, x0, #0x0
		0000000000000820:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18b
     824: 94000000     	bl	0x824 <nubia_hw_ver_probe+0x3b0>
		0000000000000824:  R_AARCH64_CALL26	_printk
     828: 17ffff4d     	b	0x55c <nubia_hw_ver_probe+0xe8>
     82c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000082c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f9
     830: 91000108     	add	x8, x8, #0x0
		0000000000000830:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f9
     834: 12001c01     	and	w1, w0, #0xff
     838: 2a0003f8     	mov	w24, w0
     83c: aa0803e0     	mov	x0, x8
     840: 94000000     	bl	0x840 <nubia_hw_ver_probe+0x3cc>
		0000000000000840:  R_AARCH64_CALL26	_printk
     844: 2a1803e0     	mov	w0, w24
     848: 17ffff70     	b	0x608 <nubia_hw_ver_probe+0x194>
     84c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000084c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f9
     850: 91000108     	add	x8, x8, #0x0
		0000000000000850:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f9
     854: 12001c01     	and	w1, w0, #0xff
     858: 2a0003f8     	mov	w24, w0
     85c: aa0803e0     	mov	x0, x8
     860: 94000000     	bl	0x860 <nubia_hw_ver_probe+0x3ec>
		0000000000000860:  R_AARCH64_CALL26	_printk
     864: 2a1803e0     	mov	w0, w24
     868: 17ffff75     	b	0x63c <nubia_hw_ver_probe+0x1c8>
     86c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000086c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f9
     870: 91000108     	add	x8, x8, #0x0
		0000000000000870:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f9
     874: 12001c01     	and	w1, w0, #0xff
     878: 2a0003f8     	mov	w24, w0
     87c: aa0803e0     	mov	x0, x8
     880: 94000000     	bl	0x880 <nubia_hw_ver_probe+0x40c>
		0000000000000880:  R_AARCH64_CALL26	_printk
     884: 2a1803e0     	mov	w0, w24
     888: 17ffff7c     	b	0x678 <nubia_hw_ver_probe+0x204>
     88c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000088c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f9
     890: 91000108     	add	x8, x8, #0x0
		0000000000000890:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f9
     894: 12001c01     	and	w1, w0, #0xff
     898: 2a0003fc     	mov	w28, w0
     89c: aa0803e0     	mov	x0, x8
     8a0: 94000000     	bl	0x8a0 <nubia_hw_ver_probe+0x42c>
		00000000000008a0:  R_AARCH64_CALL26	_printk
     8a4: 2a1c03e0     	mov	w0, w28
     8a8: 17ffff81     	b	0x6ac <nubia_hw_ver_probe+0x238>
     8ac: 90000008     	adrp	x8, 0x0 <.text>
		00000000000008ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f9
     8b0: 91000108     	add	x8, x8, #0x0
		00000000000008b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f9
     8b4: 12001c01     	and	w1, w0, #0xff
     8b8: 2a0003fc     	mov	w28, w0
     8bc: aa0803e0     	mov	x0, x8
     8c0: 94000000     	bl	0x8c0 <nubia_hw_ver_probe+0x44c>
		00000000000008c0:  R_AARCH64_CALL26	_printk
     8c4: 2a1c03e0     	mov	w0, w28
     8c8: 17ffff86     	b	0x6e0 <nubia_hw_ver_probe+0x26c>
     8cc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x40c
     8d0: 91000021     	add	x1, x1, #0x0
		00000000000008d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x40c
     8d4: 91004260     	add	x0, x19, #0x10
     8d8: 94000000     	bl	0x8d8 <nubia_hw_ver_probe+0x464>
		00000000000008d8:  R_AARCH64_CALL26	_dev_err
     8dc: 12800240     	mov	w0, #-0x13              // =-19
     8e0: 17ffffb5     	b	0x7b4 <nubia_hw_ver_probe+0x340>
     8e4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x249
     8e8: 91000000     	add	x0, x0, #0x0
		00000000000008e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x249
     8ec: 94000000     	bl	0x8ec <nubia_hw_ver_probe+0x478>
		00000000000008ec:  R_AARCH64_CALL26	_printk
     8f0: 12800240     	mov	w0, #-0x13              // =-19
     8f4: 17ffffb0     	b	0x7b4 <nubia_hw_ver_probe+0x340>
     8f8: 2a1403e0     	mov	w0, w20
     8fc: 9400006c     	bl	0xaac <nubia_get_gpio_status>
     900: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000900:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio1_v
     904: 39400268     	ldrb	w8, [x19]
		0000000000000904:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio1_v
     908: 0b000108     	add	w8, w8, w0
     90c: 2a1703e0     	mov	w0, w23
     910: 39000268     	strb	w8, [x19]
		0000000000000910:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio1_v
     914: 94000066     	bl	0xaac <nubia_get_gpio_status>
     918: 39400368     	ldrb	w8, [x27]
		0000000000000918:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio2_v
     91c: 0b000108     	add	w8, w8, w0
     920: b9400340     	ldr	w0, [x26]
		0000000000000920:  R_AARCH64_LDST32_ABS_LO12_NC	pcb_gpio3
     924: 39000368     	strb	w8, [x27]
		0000000000000924:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio2_v
     928: 94000061     	bl	0xaac <nubia_get_gpio_status>
     92c: 39400308     	ldrb	w8, [x24]
		000000000000092c:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio3_v
     930: b9400329     	ldr	w9, [x25]
		0000000000000930:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
     934: 0b000108     	add	w8, w8, w0
     938: 7100053f     	cmp	w9, #0x1
     93c: 39000308     	strb	w8, [x24]
		000000000000093c:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio3_v
     940: 540000e1     	b.ne	0x95c <nubia_hw_ver_probe+0x4e8>
     944: 39400261     	ldrb	w1, [x19]
		0000000000000944:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio1_v
     948: 39400362     	ldrb	w2, [x27]
		0000000000000948:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio2_v
     94c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000094c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x382
     950: 91000000     	add	x0, x0, #0x0
		0000000000000950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x382
     954: 12001d03     	and	w3, w8, #0xff
     958: 94000000     	bl	0x958 <nubia_hw_ver_probe+0x4e4>
		0000000000000958:  R_AARCH64_CALL26	_printk
     95c: 39400269     	ldrb	w9, [x19]
		000000000000095c:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio1_v
     960: 39800368     	ldrsb	x8, [x27]
		0000000000000960:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio2_v
     964: 7100053f     	cmp	w9, #0x1
     968: 540001cc     	b.gt	0x9a0 <nubia_hw_ver_probe+0x52c>
     96c: 90000013     	adrp	x19, 0x0 <.text>
		000000000000096c:  R_AARCH64_ADR_PREL_PG_HI21	nubia_rf_gpio1_v
     970: 340002c9     	cbz	w9, 0x9c8 <nubia_hw_ver_probe+0x554>
     974: 7100053f     	cmp	w9, #0x1
     978: 54000461     	b.ne	0xa04 <nubia_hw_ver_probe+0x590>
     97c: 71000d1f     	cmp	w8, #0x3
     980: 54000422     	b.hs	0xa04 <nubia_hw_ver_probe+0x590>
     984: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000984:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x340
     988: 91000129     	add	x9, x9, #0x0
		0000000000000988:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x340
     98c: 14000018     	b	0x9ec <nubia_hw_ver_probe+0x578>
     990: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000990:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11f
     994: 91000000     	add	x0, x0, #0x0
		0000000000000994:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11f
     998: 94000000     	bl	0x998 <nubia_hw_ver_probe+0x524>
		0000000000000998:  R_AARCH64_CALL26	_printk
     99c: 17fffef5     	b	0x570 <nubia_hw_ver_probe+0xfc>
     9a0: 7100093f     	cmp	w9, #0x2
     9a4: 90000013     	adrp	x19, 0x0 <.text>
		00000000000009a4:  R_AARCH64_ADR_PREL_PG_HI21	nubia_rf_gpio1_v
     9a8: 540001a0     	b.eq	0x9dc <nubia_hw_ver_probe+0x568>
     9ac: 71000d3f     	cmp	w9, #0x3
     9b0: 540002a1     	b.ne	0xa04 <nubia_hw_ver_probe+0x590>
     9b4: 71000d1f     	cmp	w8, #0x3
     9b8: 54000261     	b.ne	0xa04 <nubia_hw_ver_probe+0x590>
     9bc: 90000008     	adrp	x8, 0x0 <.text>
		00000000000009bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xd8
     9c0: 91000108     	add	x8, x8, #0x0
		00000000000009c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xd8
     9c4: 1400000b     	b	0x9f0 <nubia_hw_ver_probe+0x57c>
     9c8: 71000d1f     	cmp	w8, #0x3
     9cc: 540001c2     	b.hs	0xa04 <nubia_hw_ver_probe+0x590>
     9d0: 90000009     	adrp	x9, 0x0 <.text>
		00000000000009d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x310
     9d4: 91000129     	add	x9, x9, #0x0
		00000000000009d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x310
     9d8: 14000005     	b	0x9ec <nubia_hw_ver_probe+0x578>
     9dc: 71000d1f     	cmp	w8, #0x3
     9e0: 54000122     	b.hs	0xa04 <nubia_hw_ver_probe+0x590>
     9e4: 90000009     	adrp	x9, 0x0 <.text>
		00000000000009e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x328
     9e8: 91000129     	add	x9, x9, #0x0
		00000000000009e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x328
     9ec: f8687928     	ldr	x8, [x9, x8, lsl #3]
     9f0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe8
     9f4: 91000000     	add	x0, x0, #0x0
		00000000000009f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe8
     9f8: 91003101     	add	x1, x8, #0xc
     9fc: 94000000     	bl	0x9fc <nubia_hw_ver_probe+0x588>
		00000000000009fc:  R_AARCH64_CALL26	_printk
     a00: 14000004     	b	0xa10 <nubia_hw_ver_probe+0x59c>
     a04: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x280
     a08: 91000000     	add	x0, x0, #0x0
		0000000000000a08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x280
     a0c: 94000000     	bl	0xa0c <nubia_hw_ver_probe+0x598>
		0000000000000a0c:  R_AARCH64_CALL26	_printk
     a10: 2a1503e0     	mov	w0, w21
     a14: 94000026     	bl	0xaac <nubia_get_gpio_status>
     a18: 39400268     	ldrb	w8, [x19]
		0000000000000a18:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio1_v
     a1c: 0b000108     	add	w8, w8, w0
     a20: 2a1603e0     	mov	w0, w22
     a24: 39000268     	strb	w8, [x19]
		0000000000000a24:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio1_v
     a28: 94000021     	bl	0xaac <nubia_get_gpio_status>
     a2c: 39400388     	ldrb	w8, [x28]
		0000000000000a2c:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio2_v
     a30: b9400329     	ldr	w9, [x25]
		0000000000000a30:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
     a34: 0b000108     	add	w8, w8, w0
     a38: 7100053f     	cmp	w9, #0x1
     a3c: 39000388     	strb	w8, [x28]
		0000000000000a3c:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio2_v
     a40: 54000060     	b.eq	0xa4c <nubia_hw_ver_probe+0x5d8>
     a44: 2a1f03e0     	mov	w0, wzr
     a48: 17ffff5b     	b	0x7b4 <nubia_hw_ver_probe+0x340>
     a4c: 39400261     	ldrb	w1, [x19]
		0000000000000a4c:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio1_v
     a50: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x500
     a54: 91000000     	add	x0, x0, #0x0
		0000000000000a54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x500
     a58: 12001d02     	and	w2, w8, #0xff
     a5c: 94000000     	bl	0xa5c <nubia_hw_ver_probe+0x5e8>
		0000000000000a5c:  R_AARCH64_CALL26	_printk
     a60: 17fffff9     	b	0xa44 <nubia_hw_ver_probe+0x5d0>
