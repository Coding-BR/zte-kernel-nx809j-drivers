
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000394 <nubia_hw_ver_probe>:
     394: d503233f     	paciasp
     398: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
     39c: a9016ffc     	stp	x28, x27, [sp, #0x10]
     3a0: a90267fa     	stp	x26, x25, [sp, #0x20]
     3a4: a9035ff8     	stp	x24, x23, [sp, #0x30]
     3a8: a90457f6     	stp	x22, x21, [sp, #0x40]
     3ac: a9054ff4     	stp	x20, x19, [sp, #0x50]
     3b0: 910003fd     	mov	x29, sp
     3b4: 90000019     	adrp	x25, 0x0 <.text>
		00000000000003b4:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_bss_base+0x18
     3b8: f9417c16     	ldr	x22, [x0, #0x2f8]
     3bc: aa0003f3     	mov	x19, x0
     3c0: b9400328     	ldr	w8, [x25]
		00000000000003c0:  R_AARCH64_LDST32_ABS_LO12_NC	nubia_hw_exact_bss_base+0x18
     3c4: 7100051f     	cmp	w8, #0x1
     3c8: 54001360     	b.eq	0x634 <nubia_hw_ver_probe+0x2a0>
     3cc: b40013d3     	cbz	x19, 0x644 <nubia_hw_ver_probe+0x2b0>
     3d0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003d0:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base
     3d4: 91000021     	add	x1, x1, #0x0
		00000000000003d4:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base
     3d8: aa1603e0     	mov	x0, x22
     3dc: 2a1f03e2     	mov	w2, wzr
     3e0: 94000000     	bl	0x3e0 <nubia_hw_ver_probe+0x4c>
		00000000000003e0:  R_AARCH64_CALL26	of_get_named_gpio
     3e4: 37f81380     	tbnz	w0, #0x1f, 0x654 <nubia_hw_ver_probe+0x2c0>
     3e8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003e8:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x5f
     3ec: 91000021     	add	x1, x1, #0x0
		00000000000003ec:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x5f
     3f0: 2a0003f4     	mov	w20, w0
     3f4: 94000000     	bl	0x3f4 <nubia_hw_ver_probe+0x60>
		00000000000003f4:  R_AARCH64_CALL26	gpio_request
     3f8: 37f81400     	tbnz	w0, #0x1f, 0x678 <nubia_hw_ver_probe+0x2e4>
     3fc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003fc:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x50
     400: 91000021     	add	x1, x1, #0x0
		0000000000000400:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x50
     404: aa1603e0     	mov	x0, x22
     408: 2a1f03e2     	mov	w2, wzr
     40c: 94000000     	bl	0x40c <nubia_hw_ver_probe+0x78>
		000000000000040c:  R_AARCH64_CALL26	of_get_named_gpio
     410: 37f80300     	tbnz	w0, #0x1f, 0x470 <nubia_hw_ver_probe+0xdc>
     414: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000414:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x178
     418: 91000021     	add	x1, x1, #0x0
		0000000000000418:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x178
     41c: 2a0003f7     	mov	w23, w0
     420: 94000000     	bl	0x420 <nubia_hw_ver_probe+0x8c>
		0000000000000420:  R_AARCH64_CALL26	gpio_request
     424: 37f81800     	tbnz	w0, #0x1f, 0x724 <nubia_hw_ver_probe+0x390>
     428: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000428:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x3e8
     42c: 91000021     	add	x1, x1, #0x0
		000000000000042c:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x3e8
     430: aa1603e0     	mov	x0, x22
     434: 2a1f03e2     	mov	w2, wzr
     438: 94000000     	bl	0x438 <nubia_hw_ver_probe+0xa4>
		0000000000000438:  R_AARCH64_CALL26	of_get_named_gpio
     43c: 90000015     	adrp	x21, 0x0 <.text>
		000000000000043c:  R_AARCH64_ADR_PREL_PG_HI21	pcb_gpio3
     440: b90002a0     	str	w0, [x21]
		0000000000000440:  R_AARCH64_LDST32_ABS_LO12_NC	pcb_gpio3
     444: 37f80200     	tbnz	w0, #0x1f, 0x484 <nubia_hw_ver_probe+0xf0>
     448: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000448:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x216
     44c: 91000021     	add	x1, x1, #0x0
		000000000000044c:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x216
     450: 94000000     	bl	0x450 <nubia_hw_ver_probe+0xbc>
		0000000000000450:  R_AARCH64_CALL26	gpio_request
     454: 36f801e0     	tbz	w0, #0x1f, 0x490 <nubia_hw_ver_probe+0xfc>
     458: b94002a1     	ldr	w1, [x21]
		0000000000000458:  R_AARCH64_LDST32_ABS_LO12_NC	pcb_gpio3
     45c: 2a0003e2     	mov	w2, w0
     460: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000460:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0xfa
     464: 91000000     	add	x0, x0, #0x0
		0000000000000464:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0xfa
     468: 94000000     	bl	0x468 <nubia_hw_ver_probe+0xd4>
		0000000000000468:  R_AARCH64_CALL26	_printk
     46c: 14000009     	b	0x490 <nubia_hw_ver_probe+0xfc>
     470: b9400328     	ldr	w8, [x25]
		0000000000000470:  R_AARCH64_LDST32_ABS_LO12_NC	nubia_hw_exact_bss_base+0x18
     474: 7100051f     	cmp	w8, #0x1
     478: 54001620     	b.eq	0x73c <nubia_hw_ver_probe+0x3a8>
     47c: 2a1f03f7     	mov	w23, wzr
     480: 14000004     	b	0x490 <nubia_hw_ver_probe+0xfc>
     484: b9400328     	ldr	w8, [x25]
		0000000000000484:  R_AARCH64_LDST32_ABS_LO12_NC	nubia_hw_exact_bss_base+0x18
     488: 7100051f     	cmp	w8, #0x1
     48c: 54002120     	b.eq	0x8b0 <nubia_hw_ver_probe+0x51c>
     490: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000490:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x1b9
     494: 91000021     	add	x1, x1, #0x0
		0000000000000494:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x1b9
     498: aa1603e0     	mov	x0, x22
     49c: 2a1f03e2     	mov	w2, wzr
     4a0: 94000000     	bl	0x4a0 <nubia_hw_ver_probe+0x10c>
		00000000000004a0:  R_AARCH64_CALL26	of_get_named_gpio
     4a4: 37f80f60     	tbnz	w0, #0x1f, 0x690 <nubia_hw_ver_probe+0x2fc>
     4a8: 2a0003f5     	mov	w21, w0
     4ac: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004ac:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x3fe
     4b0: 91000021     	add	x1, x1, #0x0
		00000000000004b0:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x3fe
     4b4: aa1603e0     	mov	x0, x22
     4b8: 2a1f03e2     	mov	w2, wzr
     4bc: 94000000     	bl	0x4bc <nubia_hw_ver_probe+0x128>
		00000000000004bc:  R_AARCH64_CALL26	of_get_named_gpio
     4c0: 37f80f40     	tbnz	w0, #0x1f, 0x6a8 <nubia_hw_ver_probe+0x314>
     4c4: 2a0003f6     	mov	w22, w0
     4c8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004c8:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0xf
     4cc: 91000021     	add	x1, x1, #0x0
		00000000000004cc:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0xf
     4d0: 2a1503e0     	mov	w0, w21
     4d4: 94000000     	bl	0x4d4 <nubia_hw_ver_probe+0x140>
		00000000000004d4:  R_AARCH64_CALL26	gpio_request
     4d8: 37f810e0     	tbnz	w0, #0x1f, 0x6f4 <nubia_hw_ver_probe+0x360>
     4dc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004dc:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x3d6
     4e0: 91000021     	add	x1, x1, #0x0
		00000000000004e0:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x3d6
     4e4: 2a1603e0     	mov	w0, w22
     4e8: 94000000     	bl	0x4e8 <nubia_hw_ver_probe+0x154>
		00000000000004e8:  R_AARCH64_CALL26	gpio_request
     4ec: 37f81100     	tbnz	w0, #0x1f, 0x70c <nubia_hw_ver_probe+0x378>
     4f0: aa1303e0     	mov	x0, x19
     4f4: 94000000     	bl	0x4f4 <nubia_hw_ver_probe+0x160>
		00000000000004f4:  R_AARCH64_CALL26	nubia_gpio_ctrl
     4f8: 350009a0     	cbnz	w0, 0x62c <nubia_hw_ver_probe+0x298>
     4fc: 2a1403e0     	mov	w0, w20
     500: 94000000     	bl	0x500 <nubia_hw_ver_probe+0x16c>
		0000000000000500:  R_AARCH64_CALL26	gpio_to_desc
     504: 94000000     	bl	0x504 <nubia_hw_ver_probe+0x170>
		0000000000000504:  R_AARCH64_CALL26	gpiod_direction_input
     508: 52800020     	mov	w0, #0x1                // =1
     50c: 94000000     	bl	0x50c <nubia_hw_ver_probe+0x178>
		000000000000050c:  R_AARCH64_CALL26	msleep
     510: 2a1403e0     	mov	w0, w20
     514: 94000000     	bl	0x514 <nubia_hw_ver_probe+0x180>
		0000000000000514:  R_AARCH64_CALL26	gpio_to_desc
     518: 94000000     	bl	0x518 <nubia_hw_ver_probe+0x184>
		0000000000000518:  R_AARCH64_CALL26	gpiod_get_raw_value
     51c: b9400328     	ldr	w8, [x25]
		000000000000051c:  R_AARCH64_LDST32_ABS_LO12_NC	nubia_hw_exact_bss_base+0x18
     520: 7100051f     	cmp	w8, #0x1
     524: 54001140     	b.eq	0x74c <nubia_hw_ver_probe+0x3b8>
     528: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000528:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio1_v
     52c: 39000100     	strb	w0, [x8]
		000000000000052c:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio1_v
     530: 2a1703e0     	mov	w0, w23
     534: 94000000     	bl	0x534 <nubia_hw_ver_probe+0x1a0>
		0000000000000534:  R_AARCH64_CALL26	gpio_to_desc
     538: 94000000     	bl	0x538 <nubia_hw_ver_probe+0x1a4>
		0000000000000538:  R_AARCH64_CALL26	gpiod_direction_input
     53c: 52800020     	mov	w0, #0x1                // =1
     540: 94000000     	bl	0x540 <nubia_hw_ver_probe+0x1ac>
		0000000000000540:  R_AARCH64_CALL26	msleep
     544: 2a1703e0     	mov	w0, w23
     548: 94000000     	bl	0x548 <nubia_hw_ver_probe+0x1b4>
		0000000000000548:  R_AARCH64_CALL26	gpio_to_desc
     54c: 94000000     	bl	0x54c <nubia_hw_ver_probe+0x1b8>
		000000000000054c:  R_AARCH64_CALL26	gpiod_get_raw_value
     550: b9400328     	ldr	w8, [x25]
		0000000000000550:  R_AARCH64_LDST32_ABS_LO12_NC	nubia_hw_exact_bss_base+0x18
     554: 7100051f     	cmp	w8, #0x1
     558: 540010a0     	b.eq	0x76c <nubia_hw_ver_probe+0x3d8>
     55c: 9000001a     	adrp	x26, 0x0 <.text>
		000000000000055c:  R_AARCH64_ADR_PREL_PG_HI21	pcb_gpio3
     560: 9000001b     	adrp	x27, 0x0 <.text>
		0000000000000560:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio2_v
     564: b9400358     	ldr	w24, [x26]
		0000000000000564:  R_AARCH64_LDST32_ABS_LO12_NC	pcb_gpio3
     568: 39000360     	strb	w0, [x27]
		0000000000000568:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio2_v
     56c: 2a1803e0     	mov	w0, w24
     570: 94000000     	bl	0x570 <nubia_hw_ver_probe+0x1dc>
		0000000000000570:  R_AARCH64_CALL26	gpio_to_desc
     574: 94000000     	bl	0x574 <nubia_hw_ver_probe+0x1e0>
		0000000000000574:  R_AARCH64_CALL26	gpiod_direction_input
     578: 52800020     	mov	w0, #0x1                // =1
     57c: 94000000     	bl	0x57c <nubia_hw_ver_probe+0x1e8>
		000000000000057c:  R_AARCH64_CALL26	msleep
     580: 2a1803e0     	mov	w0, w24
     584: 94000000     	bl	0x584 <nubia_hw_ver_probe+0x1f0>
		0000000000000584:  R_AARCH64_CALL26	gpio_to_desc
     588: 94000000     	bl	0x588 <nubia_hw_ver_probe+0x1f4>
		0000000000000588:  R_AARCH64_CALL26	gpiod_get_raw_value
     58c: b9400328     	ldr	w8, [x25]
		000000000000058c:  R_AARCH64_LDST32_ABS_LO12_NC	nubia_hw_exact_bss_base+0x18
     590: 7100051f     	cmp	w8, #0x1
     594: 54000fc0     	b.eq	0x78c <nubia_hw_ver_probe+0x3f8>
     598: 90000018     	adrp	x24, 0x0 <.text>
		0000000000000598:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio3_v
     59c: 39000300     	strb	w0, [x24]
		000000000000059c:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio3_v
     5a0: 2a1503e0     	mov	w0, w21
     5a4: 94000000     	bl	0x5a4 <nubia_hw_ver_probe+0x210>
		00000000000005a4:  R_AARCH64_CALL26	gpio_to_desc
     5a8: 94000000     	bl	0x5a8 <nubia_hw_ver_probe+0x214>
		00000000000005a8:  R_AARCH64_CALL26	gpiod_direction_input
     5ac: 52800020     	mov	w0, #0x1                // =1
     5b0: 94000000     	bl	0x5b0 <nubia_hw_ver_probe+0x21c>
		00000000000005b0:  R_AARCH64_CALL26	msleep
     5b4: 2a1503e0     	mov	w0, w21
     5b8: 94000000     	bl	0x5b8 <nubia_hw_ver_probe+0x224>
		00000000000005b8:  R_AARCH64_CALL26	gpio_to_desc
     5bc: 94000000     	bl	0x5bc <nubia_hw_ver_probe+0x228>
		00000000000005bc:  R_AARCH64_CALL26	gpiod_get_raw_value
     5c0: b9400328     	ldr	w8, [x25]
		00000000000005c0:  R_AARCH64_LDST32_ABS_LO12_NC	nubia_hw_exact_bss_base+0x18
     5c4: 7100051f     	cmp	w8, #0x1
     5c8: 54000f20     	b.eq	0x7ac <nubia_hw_ver_probe+0x418>
     5cc: 90000008     	adrp	x8, 0x0 <.text>
		00000000000005cc:  R_AARCH64_ADR_PREL_PG_HI21	nubia_rf_gpio1_v
     5d0: 39000100     	strb	w0, [x8]
		00000000000005d0:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio1_v
     5d4: 2a1603e0     	mov	w0, w22
     5d8: 94000000     	bl	0x5d8 <nubia_hw_ver_probe+0x244>
		00000000000005d8:  R_AARCH64_CALL26	gpio_to_desc
     5dc: 94000000     	bl	0x5dc <nubia_hw_ver_probe+0x248>
		00000000000005dc:  R_AARCH64_CALL26	gpiod_direction_input
     5e0: 52800020     	mov	w0, #0x1                // =1
     5e4: 94000000     	bl	0x5e4 <nubia_hw_ver_probe+0x250>
		00000000000005e4:  R_AARCH64_CALL26	msleep
     5e8: 2a1603e0     	mov	w0, w22
     5ec: 94000000     	bl	0x5ec <nubia_hw_ver_probe+0x258>
		00000000000005ec:  R_AARCH64_CALL26	gpio_to_desc
     5f0: 94000000     	bl	0x5f0 <nubia_hw_ver_probe+0x25c>
		00000000000005f0:  R_AARCH64_CALL26	gpiod_get_raw_value
     5f4: b9400328     	ldr	w8, [x25]
		00000000000005f4:  R_AARCH64_LDST32_ABS_LO12_NC	nubia_hw_exact_bss_base+0x18
     5f8: 7100051f     	cmp	w8, #0x1
     5fc: 54000e80     	b.eq	0x7cc <nubia_hw_ver_probe+0x438>
     600: 9000001c     	adrp	x28, 0x0 <.text>
		0000000000000600:  R_AARCH64_ADR_PREL_PG_HI21	nubia_rf_gpio2_v
     604: 39000380     	strb	w0, [x28]
		0000000000000604:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio2_v
     608: 52800280     	mov	w0, #0x14               // =20
     60c: 94000000     	bl	0x60c <nubia_hw_ver_probe+0x278>
		000000000000060c:  R_AARCH64_CALL26	msleep
     610: f9405668     	ldr	x8, [x19, #0xa8]
     614: b4000ec8     	cbz	x8, 0x7ec <nubia_hw_ver_probe+0x458>
     618: f9400901     	ldr	x1, [x8, #0x10]
     61c: b4000f41     	cbz	x1, 0x804 <nubia_hw_ver_probe+0x470>
     620: f9400100     	ldr	x0, [x8]
     624: 94000000     	bl	0x624 <nubia_hw_ver_probe+0x290>
		0000000000000624:  R_AARCH64_CALL26	pinctrl_select_state
     628: 34000f80     	cbz	w0, 0x818 <nubia_hw_ver_probe+0x484>
     62c: 12800240     	mov	w0, #-0x13              // =-19
     630: 14000029     	b	0x6d4 <nubia_hw_ver_probe+0x340>
     634: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000634:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x570
     638: 91000000     	add	x0, x0, #0x0
		0000000000000638:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x570
     63c: 94000000     	bl	0x63c <nubia_hw_ver_probe+0x2a8>
		000000000000063c:  R_AARCH64_CALL26	_printk
     640: b5ffec93     	cbnz	x19, 0x3d0 <nubia_hw_ver_probe+0x3c>
     644: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000644:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x270
     648: 91000000     	add	x0, x0, #0x0
		0000000000000648:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x270
     64c: 94000000     	bl	0x64c <nubia_hw_ver_probe+0x2b8>
		000000000000064c:  R_AARCH64_CALL26	_printk
     650: 14000020     	b	0x6d0 <nubia_hw_ver_probe+0x33c>
     654: b9400328     	ldr	w8, [x25]
		0000000000000654:  R_AARCH64_LDST32_ABS_LO12_NC	nubia_hw_exact_bss_base+0x18
     658: 7100051f     	cmp	w8, #0x1
     65c: 54000081     	b.ne	0x66c <nubia_hw_ver_probe+0x2d8>
     660: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000660:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x297
     664: 91000000     	add	x0, x0, #0x0
		0000000000000664:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x297
     668: 94000000     	bl	0x668 <nubia_hw_ver_probe+0x2d4>
		0000000000000668:  R_AARCH64_CALL26	_printk
     66c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000066c:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x38
     670: 91000021     	add	x1, x1, #0x0
		0000000000000670:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x38
     674: 14000015     	b	0x6c8 <nubia_hw_ver_probe+0x334>
     678: 2a0003e2     	mov	w2, w0
     67c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000067c:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x1f2
     680: 91000000     	add	x0, x0, #0x0
		0000000000000680:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x1f2
     684: 2a1403e1     	mov	w1, w20
     688: 94000000     	bl	0x688 <nubia_hw_ver_probe+0x2f4>
		0000000000000688:  R_AARCH64_CALL26	_printk
     68c: 17ffff5c     	b	0x3fc <nubia_hw_ver_probe+0x68>
     690: b9400328     	ldr	w8, [x25]
		0000000000000690:  R_AARCH64_LDST32_ABS_LO12_NC	nubia_hw_exact_bss_base+0x18
     694: 7100051f     	cmp	w8, #0x1
     698: 54000141     	b.ne	0x6c0 <nubia_hw_ver_probe+0x32c>
     69c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000069c:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x5a9
     6a0: 91000000     	add	x0, x0, #0x0
		00000000000006a0:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x5a9
     6a4: 14000006     	b	0x6bc <nubia_hw_ver_probe+0x328>
     6a8: b9400328     	ldr	w8, [x25]
		00000000000006a8:  R_AARCH64_LDST32_ABS_LO12_NC	nubia_hw_exact_bss_base+0x18
     6ac: 7100051f     	cmp	w8, #0x1
     6b0: 54000081     	b.ne	0x6c0 <nubia_hw_ver_probe+0x32c>
     6b4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006b4:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x475
     6b8: 91000000     	add	x0, x0, #0x0
		00000000000006b8:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x475
     6bc: 94000000     	bl	0x6bc <nubia_hw_ver_probe+0x328>
		00000000000006bc:  R_AARCH64_CALL26	_printk
     6c0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006c0:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x559
     6c4: 91000021     	add	x1, x1, #0x0
		00000000000006c4:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x559
     6c8: 91004260     	add	x0, x19, #0x10
     6cc: 94000000     	bl	0x6cc <nubia_hw_ver_probe+0x338>
		00000000000006cc:  R_AARCH64_CALL26	_dev_err
     6d0: 12804080     	mov	w0, #-0x205             // =-517
     6d4: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     6d8: a94457f6     	ldp	x22, x21, [sp, #0x40]
     6dc: a9435ff8     	ldp	x24, x23, [sp, #0x30]
     6e0: a94267fa     	ldp	x26, x25, [sp, #0x20]
     6e4: a9416ffc     	ldp	x28, x27, [sp, #0x10]
     6e8: a8c67bfd     	ldp	x29, x30, [sp], #0x60
     6ec: d50323bf     	autiasp
     6f0: d65f03c0     	ret
     6f4: 2a0003e2     	mov	w2, w0
     6f8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006f8:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x1f2
     6fc: 91000000     	add	x0, x0, #0x0
		00000000000006fc:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x1f2
     700: 2a1503e1     	mov	w1, w21
     704: 94000000     	bl	0x704 <nubia_hw_ver_probe+0x370>
		0000000000000704:  R_AARCH64_CALL26	_printk
     708: 17ffff75     	b	0x4dc <nubia_hw_ver_probe+0x148>
     70c: 2a0003e2     	mov	w2, w0
     710: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000710:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0xfa
     714: 91000000     	add	x0, x0, #0x0
		0000000000000714:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0xfa
     718: 2a1603e1     	mov	w1, w22
     71c: 94000000     	bl	0x71c <nubia_hw_ver_probe+0x388>
		000000000000071c:  R_AARCH64_CALL26	_printk
     720: 17ffff74     	b	0x4f0 <nubia_hw_ver_probe+0x15c>
     724: 2a0003e2     	mov	w2, w0
     728: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000728:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0xfa
     72c: 91000000     	add	x0, x0, #0x0
		000000000000072c:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0xfa
     730: 2a1703e1     	mov	w1, w23
     734: 94000000     	bl	0x734 <nubia_hw_ver_probe+0x3a0>
		0000000000000734:  R_AARCH64_CALL26	_printk
     738: 17ffff3c     	b	0x428 <nubia_hw_ver_probe+0x94>
     73c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000073c:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x18b
     740: 91000000     	add	x0, x0, #0x0
		0000000000000740:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x18b
     744: 94000000     	bl	0x744 <nubia_hw_ver_probe+0x3b0>
		0000000000000744:  R_AARCH64_CALL26	_printk
     748: 17ffff4d     	b	0x47c <nubia_hw_ver_probe+0xe8>
     74c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000074c:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x5f9
     750: 91000108     	add	x8, x8, #0x0
		0000000000000750:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x5f9
     754: 12001c01     	and	w1, w0, #0xff
     758: 2a0003f8     	mov	w24, w0
     75c: aa0803e0     	mov	x0, x8
     760: 94000000     	bl	0x760 <nubia_hw_ver_probe+0x3cc>
		0000000000000760:  R_AARCH64_CALL26	_printk
     764: 2a1803e0     	mov	w0, w24
     768: 17ffff70     	b	0x528 <nubia_hw_ver_probe+0x194>
     76c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000076c:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x5f9
     770: 91000108     	add	x8, x8, #0x0
		0000000000000770:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x5f9
     774: 12001c01     	and	w1, w0, #0xff
     778: 2a0003f8     	mov	w24, w0
     77c: aa0803e0     	mov	x0, x8
     780: 94000000     	bl	0x780 <nubia_hw_ver_probe+0x3ec>
		0000000000000780:  R_AARCH64_CALL26	_printk
     784: 2a1803e0     	mov	w0, w24
     788: 17ffff75     	b	0x55c <nubia_hw_ver_probe+0x1c8>
     78c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000078c:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x5f9
     790: 91000108     	add	x8, x8, #0x0
		0000000000000790:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x5f9
     794: 12001c01     	and	w1, w0, #0xff
     798: 2a0003f8     	mov	w24, w0
     79c: aa0803e0     	mov	x0, x8
     7a0: 94000000     	bl	0x7a0 <nubia_hw_ver_probe+0x40c>
		00000000000007a0:  R_AARCH64_CALL26	_printk
     7a4: 2a1803e0     	mov	w0, w24
     7a8: 17ffff7c     	b	0x598 <nubia_hw_ver_probe+0x204>
     7ac: 90000008     	adrp	x8, 0x0 <.text>
		00000000000007ac:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x5f9
     7b0: 91000108     	add	x8, x8, #0x0
		00000000000007b0:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x5f9
     7b4: 12001c01     	and	w1, w0, #0xff
     7b8: 2a0003fc     	mov	w28, w0
     7bc: aa0803e0     	mov	x0, x8
     7c0: 94000000     	bl	0x7c0 <nubia_hw_ver_probe+0x42c>
		00000000000007c0:  R_AARCH64_CALL26	_printk
     7c4: 2a1c03e0     	mov	w0, w28
     7c8: 17ffff81     	b	0x5cc <nubia_hw_ver_probe+0x238>
     7cc: 90000008     	adrp	x8, 0x0 <.text>
		00000000000007cc:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x5f9
     7d0: 91000108     	add	x8, x8, #0x0
		00000000000007d0:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x5f9
     7d4: 12001c01     	and	w1, w0, #0xff
     7d8: 2a0003fc     	mov	w28, w0
     7dc: aa0803e0     	mov	x0, x8
     7e0: 94000000     	bl	0x7e0 <nubia_hw_ver_probe+0x44c>
		00000000000007e0:  R_AARCH64_CALL26	_printk
     7e4: 2a1c03e0     	mov	w0, w28
     7e8: 17ffff86     	b	0x600 <nubia_hw_ver_probe+0x26c>
     7ec: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007ec:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x40c
     7f0: 91000021     	add	x1, x1, #0x0
		00000000000007f0:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x40c
     7f4: 91004260     	add	x0, x19, #0x10
     7f8: 94000000     	bl	0x7f8 <nubia_hw_ver_probe+0x464>
		00000000000007f8:  R_AARCH64_CALL26	_dev_err
     7fc: 12800240     	mov	w0, #-0x13              // =-19
     800: 17ffffb5     	b	0x6d4 <nubia_hw_ver_probe+0x340>
     804: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000804:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x249
     808: 91000000     	add	x0, x0, #0x0
		0000000000000808:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x249
     80c: 94000000     	bl	0x80c <nubia_hw_ver_probe+0x478>
		000000000000080c:  R_AARCH64_CALL26	_printk
     810: 12800240     	mov	w0, #-0x13              // =-19
     814: 17ffffb0     	b	0x6d4 <nubia_hw_ver_probe+0x340>
     818: 2a1403e0     	mov	w0, w20
     81c: 9400006c     	bl	0x9cc <nubia_get_gpio_status>
     820: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000820:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio1_v
     824: 39400268     	ldrb	w8, [x19]
		0000000000000824:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio1_v
     828: 0b000108     	add	w8, w8, w0
     82c: 2a1703e0     	mov	w0, w23
     830: 39000268     	strb	w8, [x19]
		0000000000000830:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio1_v
     834: 94000066     	bl	0x9cc <nubia_get_gpio_status>
     838: 39400368     	ldrb	w8, [x27]
		0000000000000838:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio2_v
     83c: 0b000108     	add	w8, w8, w0
     840: b9400340     	ldr	w0, [x26]
		0000000000000840:  R_AARCH64_LDST32_ABS_LO12_NC	pcb_gpio3
     844: 39000368     	strb	w8, [x27]
		0000000000000844:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio2_v
     848: 94000061     	bl	0x9cc <nubia_get_gpio_status>
     84c: 39400308     	ldrb	w8, [x24]
		000000000000084c:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio3_v
     850: b9400329     	ldr	w9, [x25]
		0000000000000850:  R_AARCH64_LDST32_ABS_LO12_NC	nubia_hw_exact_bss_base+0x18
     854: 0b000108     	add	w8, w8, w0
     858: 7100053f     	cmp	w9, #0x1
     85c: 39000308     	strb	w8, [x24]
		000000000000085c:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio3_v
     860: 540000e1     	b.ne	0x87c <nubia_hw_ver_probe+0x4e8>
     864: 39400261     	ldrb	w1, [x19]
		0000000000000864:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio1_v
     868: 39400362     	ldrb	w2, [x27]
		0000000000000868:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio2_v
     86c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000086c:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x382
     870: 91000000     	add	x0, x0, #0x0
		0000000000000870:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x382
     874: 12001d03     	and	w3, w8, #0xff
     878: 94000000     	bl	0x878 <nubia_hw_ver_probe+0x4e4>
		0000000000000878:  R_AARCH64_CALL26	_printk
     87c: 39400269     	ldrb	w9, [x19]
		000000000000087c:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio1_v
     880: 39800368     	ldrsb	x8, [x27]
		0000000000000880:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio2_v
     884: 7100053f     	cmp	w9, #0x1
     888: 540001cc     	b.gt	0x8c0 <nubia_hw_ver_probe+0x52c>
     88c: 90000013     	adrp	x19, 0x0 <.text>
		000000000000088c:  R_AARCH64_ADR_PREL_PG_HI21	nubia_rf_gpio1_v
     890: 340002c9     	cbz	w9, 0x8e8 <nubia_hw_ver_probe+0x554>
     894: 7100053f     	cmp	w9, #0x1
     898: 54000461     	b.ne	0x924 <nubia_hw_ver_probe+0x590>
     89c: 71000d1f     	cmp	w8, #0x3
     8a0: 54000422     	b.hs	0x924 <nubia_hw_ver_probe+0x590>
     8a4: 90000009     	adrp	x9, 0x0 <.text>
		00000000000008a4:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_base+0x340
     8a8: 91000129     	add	x9, x9, #0x0
		00000000000008a8:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_base+0x340
     8ac: 14000018     	b	0x90c <nubia_hw_ver_probe+0x578>
     8b0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008b0:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x11f
     8b4: 91000000     	add	x0, x0, #0x0
		00000000000008b4:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x11f
     8b8: 94000000     	bl	0x8b8 <nubia_hw_ver_probe+0x524>
		00000000000008b8:  R_AARCH64_CALL26	_printk
     8bc: 17fffef5     	b	0x490 <nubia_hw_ver_probe+0xfc>
     8c0: 7100093f     	cmp	w9, #0x2
     8c4: 90000013     	adrp	x19, 0x0 <.text>
		00000000000008c4:  R_AARCH64_ADR_PREL_PG_HI21	nubia_rf_gpio1_v
     8c8: 540001a0     	b.eq	0x8fc <nubia_hw_ver_probe+0x568>
     8cc: 71000d3f     	cmp	w9, #0x3
     8d0: 540002a1     	b.ne	0x924 <nubia_hw_ver_probe+0x590>
     8d4: 71000d1f     	cmp	w8, #0x3
     8d8: 54000261     	b.ne	0x924 <nubia_hw_ver_probe+0x590>
     8dc: 90000008     	adrp	x8, 0x0 <.text>
		00000000000008dc:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_base+0xd8
     8e0: 91000108     	add	x8, x8, #0x0
		00000000000008e0:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_base+0xd8
     8e4: 1400000b     	b	0x910 <nubia_hw_ver_probe+0x57c>
     8e8: 71000d1f     	cmp	w8, #0x3
     8ec: 540001c2     	b.hs	0x924 <nubia_hw_ver_probe+0x590>
     8f0: 90000009     	adrp	x9, 0x0 <.text>
		00000000000008f0:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_base+0x310
     8f4: 91000129     	add	x9, x9, #0x0
		00000000000008f4:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_base+0x310
     8f8: 14000005     	b	0x90c <nubia_hw_ver_probe+0x578>
     8fc: 71000d1f     	cmp	w8, #0x3
     900: 54000122     	b.hs	0x924 <nubia_hw_ver_probe+0x590>
     904: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000904:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_base+0x328
     908: 91000129     	add	x9, x9, #0x0
		0000000000000908:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_base+0x328
     90c: f8687928     	ldr	x8, [x9, x8, lsl #3]
     910: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000910:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0xe8
     914: 91000000     	add	x0, x0, #0x0
		0000000000000914:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0xe8
     918: 91003101     	add	x1, x8, #0xc
     91c: 94000000     	bl	0x91c <nubia_hw_ver_probe+0x588>
		000000000000091c:  R_AARCH64_CALL26	_printk
     920: 14000004     	b	0x930 <nubia_hw_ver_probe+0x59c>
     924: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000924:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x280
     928: 91000000     	add	x0, x0, #0x0
		0000000000000928:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x280
     92c: 94000000     	bl	0x92c <nubia_hw_ver_probe+0x598>
		000000000000092c:  R_AARCH64_CALL26	_printk
     930: 2a1503e0     	mov	w0, w21
     934: 94000026     	bl	0x9cc <nubia_get_gpio_status>
     938: 39400268     	ldrb	w8, [x19]
		0000000000000938:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio1_v
     93c: 0b000108     	add	w8, w8, w0
     940: 2a1603e0     	mov	w0, w22
     944: 39000268     	strb	w8, [x19]
		0000000000000944:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio1_v
     948: 94000021     	bl	0x9cc <nubia_get_gpio_status>
     94c: 39400388     	ldrb	w8, [x28]
		000000000000094c:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio2_v
     950: b9400329     	ldr	w9, [x25]
		0000000000000950:  R_AARCH64_LDST32_ABS_LO12_NC	nubia_hw_exact_bss_base+0x18
     954: 0b000108     	add	w8, w8, w0
     958: 7100053f     	cmp	w9, #0x1
     95c: 39000388     	strb	w8, [x28]
		000000000000095c:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio2_v
     960: 54000060     	b.eq	0x96c <nubia_hw_ver_probe+0x5d8>
     964: 2a1f03e0     	mov	w0, wzr
     968: 17ffff5b     	b	0x6d4 <nubia_hw_ver_probe+0x340>
     96c: 39400261     	ldrb	w1, [x19]
		000000000000096c:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio1_v
     970: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000970:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x500
     974: 91000000     	add	x0, x0, #0x0
		0000000000000974:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x500
     978: 12001d02     	and	w2, w8, #0xff
     97c: 94000000     	bl	0x97c <nubia_hw_ver_probe+0x5e8>
		000000000000097c:  R_AARCH64_CALL26	_printk
     980: 17fffff9     	b	0x964 <nubia_hw_ver_probe+0x5d0>
