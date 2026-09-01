
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000005cc <zte_power_supply_get_battery_info>:
     5cc: d503233f     	paciasp
     5d0: d103c3ff     	sub	sp, sp, #0xf0
     5d4: a9097bfd     	stp	x29, x30, [sp, #0x90]
     5d8: a90a6ffc     	stp	x28, x27, [sp, #0xa0]
     5dc: a90b67fa     	stp	x26, x25, [sp, #0xb0]
     5e0: a90c5ff8     	stp	x24, x23, [sp, #0xc0]
     5e4: a90d57f6     	stp	x22, x21, [sp, #0xd0]
     5e8: a90e4ff4     	stp	x20, x19, [sp, #0xe0]
     5ec: 910243fd     	add	x29, sp, #0x90
     5f0: d5384109     	mrs	x9, SP_EL0
     5f4: 128002a8     	mov	w8, #-0x16              // =-22
     5f8: aa0103f6     	mov	x22, x1
     5fc: f9438929     	ldr	x9, [x9, #0x710]
     600: 928002aa     	mov	x10, #-0x16             // =-22
     604: aa0003f5     	mov	x21, x0
     608: f2dffd4a     	movk	x10, #0xffea, lsl #32
     60c: f81f83a9     	stur	x9, [x29, #-0x8]
     610: b805cec8     	str	w8, [x22, #0x5c]!
     614: 910572c9     	add	x9, x22, #0x15c
     618: f900013f     	str	xzr, [x9]
     61c: 910472c9     	add	x9, x22, #0x11c
     620: aa1603fc     	mov	x28, x22
     624: f900012a     	str	x10, [x9]
     628: 910492c9     	add	x9, x22, #0x124
     62c: aa1603fb     	mov	x27, x22
     630: f900012a     	str	x10, [x9]
     634: 9104b2c9     	add	x9, x22, #0x12c
     638: aa1603fa     	mov	x26, x22
     63c: f900012a     	str	x10, [x9]
     640: 9104d2c9     	add	x9, x22, #0x134
     644: aa1603f9     	mov	x25, x22
     648: aa1603f8     	mov	x24, x22
     64c: aa1603f7     	mov	x23, x22
     650: aa1603f3     	mov	x19, x22
     654: f900012a     	str	x10, [x9]
     658: 910412c9     	add	x9, x22, #0x104
     65c: f81a8f8a     	str	x10, [x28, #-0x58]!
     660: f81b0f6a     	str	x10, [x27, #-0x50]!
     664: b81bcf48     	str	w8, [x26, #-0x44]!
     668: b81c4f28     	str	w8, [x25, #-0x3c]!
     66c: f81d0f0a     	str	x10, [x24, #-0x30]!
     670: b81f8ee8     	str	w8, [x23, #-0x8]!
     674: f806ce7f     	str	xzr, [x19, #0x6c]!
     678: b9010ec8     	str	w8, [x22, #0x10c]
     67c: f80742df     	stur	xzr, [x22, #0x74]
     680: f80042ca     	stur	x10, [x22, #0x4]
     684: f9008aca     	str	x10, [x22, #0x110]
     688: f807c2df     	stur	xzr, [x22, #0x7c]
     68c: f80842df     	stur	xzr, [x22, #0x84]
     690: b9011ac8     	str	w8, [x22, #0x118]
     694: f808c2df     	stur	xzr, [x22, #0x8c]
     698: 2901a2c8     	stp	w8, w8, [x22, #0xc]
     69c: f80942df     	stur	xzr, [x22, #0x94]
     6a0: f80142ca     	stur	x10, [x22, #0x14]
     6a4: f809c2df     	stur	xzr, [x22, #0x9c]
     6a8: f80a42df     	stur	xzr, [x22, #0xa4]
     6ac: f801c2ca     	stur	x10, [x22, #0x1c]
     6b0: f80ac2df     	stur	xzr, [x22, #0xac]
     6b4: f80b42df     	stur	xzr, [x22, #0xb4]
     6b8: f80242ca     	stur	x10, [x22, #0x24]
     6bc: f80bc2df     	stur	xzr, [x22, #0xbc]
     6c0: f80c42df     	stur	xzr, [x22, #0xc4]
     6c4: f80cc2df     	stur	xzr, [x22, #0xcc]
     6c8: 2905a2c8     	stp	w8, w8, [x22, #0x2c]
     6cc: b9013ec8     	str	w8, [x22, #0x13c]
     6d0: f80d42df     	stur	xzr, [x22, #0xd4]
     6d4: b90142c8     	str	w8, [x22, #0x140]
     6d8: f80dc2df     	stur	xzr, [x22, #0xdc]
     6dc: 2906a2c8     	stp	w8, w8, [x22, #0x34]
     6e0: b90146c8     	str	w8, [x22, #0x144]
     6e4: f80e42df     	stur	xzr, [x22, #0xe4]
     6e8: b9014ac8     	str	w8, [x22, #0x148]
     6ec: f80ec2df     	stur	xzr, [x22, #0xec]
     6f0: 2907a2c8     	stp	w8, w8, [x22, #0x3c]
     6f4: b9014ec8     	str	w8, [x22, #0x14c]
     6f8: f80f42df     	stur	xzr, [x22, #0xf4]
     6fc: b90152c8     	str	w8, [x22, #0x150]
     700: f80fc2df     	stur	xzr, [x22, #0xfc]
     704: 2908a2c8     	stp	w8, w8, [x22, #0x44]
     708: b90156c8     	str	w8, [x22, #0x154]
     70c: f900013f     	str	xzr, [x9]
     710: b9004ec8     	str	w8, [x22, #0x4c]
     714: b9015ac8     	str	w8, [x22, #0x158]
     718: f9401400     	ldr	x0, [x0, #0x28]
     71c: f9001bff     	str	xzr, [sp, #0x30]
     720: b9002fff     	str	wzr, [sp, #0x2c]
     724: b40016e0     	cbz	x0, 0xa00 <zte_power_supply_get_battery_info+0x434>
     728: f9000fe1     	str	x1, [sp, #0x18]
     72c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000072c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b9
     730: 91000021     	add	x1, x1, #0x0
		0000000000000730:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b9
     734: 9100e3e5     	add	x5, sp, #0x38
     738: aa1f03e2     	mov	x2, xzr
     73c: 2a1f03e3     	mov	w3, wzr
     740: 2a1f03e4     	mov	w4, wzr
     744: a907ffff     	stp	xzr, xzr, [sp, #0x78]
     748: a906ffff     	stp	xzr, xzr, [sp, #0x68]
     74c: a905ffff     	stp	xzr, xzr, [sp, #0x58]
     750: a904ffff     	stp	xzr, xzr, [sp, #0x48]
     754: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     758: 94000000     	bl	0x758 <zte_power_supply_get_battery_info+0x18c>
		0000000000000758:  R_AARCH64_CALL26	__of_parse_phandle_with_args
     75c: 12800254     	mov	w20, #-0x13             // =-19
     760: 350015e0     	cbnz	w0, 0xa1c <zte_power_supply_get_battery_info+0x450>
     764: f90013f5     	str	x21, [sp, #0x20]
     768: f9401ff5     	ldr	x21, [sp, #0x38]
     76c: b4001595     	cbz	x21, 0xa1c <zte_power_supply_get_battery_info+0x450>
     770: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000770:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ac
     774: 91000021     	add	x1, x1, #0x0
		0000000000000774:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ac
     778: 9100c3e2     	add	x2, sp, #0x30
     77c: aa1503e0     	mov	x0, x21
     780: 94000000     	bl	0x780 <zte_power_supply_get_battery_info+0x1b4>
		0000000000000780:  R_AARCH64_CALL26	of_property_read_string
     784: 2a0003f4     	mov	w20, w0
     788: 350014a0     	cbnz	w0, 0xa1c <zte_power_supply_get_battery_info+0x450>
     78c: f9401be1     	ldr	x1, [sp, #0x30]
     790: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000790:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3cb
     794: 91000000     	add	x0, x0, #0x0
		0000000000000794:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3cb
     798: 94000000     	bl	0x798 <zte_power_supply_get_battery_info+0x1cc>
		0000000000000798:  R_AARCH64_CALL26	strcmp
     79c: 34000060     	cbz	w0, 0x7a8 <zte_power_supply_get_battery_info+0x1dc>
     7a0: 12800254     	mov	w20, #-0x13             // =-19
     7a4: 1400009e     	b	0xa1c <zte_power_supply_get_battery_info+0x450>
     7a8: d10132c9     	sub	x9, x22, #0x4c
     7ac: d100b2c8     	sub	x8, x22, #0x2c
     7b0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23d
     7b4: 91000021     	add	x1, x1, #0x0
		00000000000007b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23d
     7b8: aa1503e0     	mov	x0, x21
     7bc: aa1c03e2     	mov	x2, x28
     7c0: 52800023     	mov	w3, #0x1                // =1
     7c4: aa1f03e4     	mov	x4, xzr
     7c8: d10152d4     	sub	x20, x22, #0x54
     7cc: a900a3e9     	stp	x9, x8, [sp, #0x8]
     7d0: 94000000     	bl	0x7d0 <zte_power_supply_get_battery_info+0x204>
		00000000000007d0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
     7d4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15c
     7d8: 91000021     	add	x1, x1, #0x0
		00000000000007d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15c
     7dc: aa1503e0     	mov	x0, x21
     7e0: aa1403e2     	mov	x2, x20
     7e4: 52800023     	mov	w3, #0x1                // =1
     7e8: aa1f03e4     	mov	x4, xzr
     7ec: 94000000     	bl	0x7ec <zte_power_supply_get_battery_info+0x220>
		00000000000007ec:  R_AARCH64_CALL26	of_property_read_variable_u32_array
     7f0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x361
     7f4: 91000021     	add	x1, x1, #0x0
		00000000000007f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x361
     7f8: aa1503e0     	mov	x0, x21
     7fc: aa1b03e2     	mov	x2, x27
     800: 52800023     	mov	w3, #0x1                // =1
     804: aa1f03e4     	mov	x4, xzr
     808: 94000000     	bl	0x808 <zte_power_supply_get_battery_info+0x23c>
		0000000000000808:  R_AARCH64_CALL26	of_property_read_variable_u32_array
     80c: f94007e2     	ldr	x2, [sp, #0x8]
     810: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000810:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5bf
     814: 91000021     	add	x1, x1, #0x0
		0000000000000814:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5bf
     818: aa1503e0     	mov	x0, x21
     81c: 52800023     	mov	w3, #0x1                // =1
     820: aa1f03e4     	mov	x4, xzr
     824: 94000000     	bl	0x824 <zte_power_supply_get_battery_info+0x258>
		0000000000000824:  R_AARCH64_CALL26	of_property_read_variable_u32_array
     828: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000828:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x567
     82c: 91000021     	add	x1, x1, #0x0
		000000000000082c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x567
     830: aa1503e0     	mov	x0, x21
     834: aa1a03e2     	mov	x2, x26
     838: 52800023     	mov	w3, #0x1                // =1
     83c: aa1f03e4     	mov	x4, xzr
     840: 94000000     	bl	0x840 <zte_power_supply_get_battery_info+0x274>
		0000000000000840:  R_AARCH64_CALL26	of_property_read_variable_u32_array
     844: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000844:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f9
     848: 91000021     	add	x1, x1, #0x0
		0000000000000848:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f9
     84c: aa1503e0     	mov	x0, x21
     850: aa1903e2     	mov	x2, x25
     854: 52800023     	mov	w3, #0x1                // =1
     858: aa1f03e4     	mov	x4, xzr
     85c: 94000000     	bl	0x85c <zte_power_supply_get_battery_info+0x290>
		000000000000085c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
     860: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000860:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7f
     864: 91000021     	add	x1, x1, #0x0
		0000000000000864:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7f
     868: aa1503e0     	mov	x0, x21
     86c: aa1803e2     	mov	x2, x24
     870: 52800023     	mov	w3, #0x1                // =1
     874: aa1f03e4     	mov	x4, xzr
     878: 94000000     	bl	0x878 <zte_power_supply_get_battery_info+0x2ac>
		0000000000000878:  R_AARCH64_CALL26	of_property_read_variable_u32_array
     87c: f9400be2     	ldr	x2, [sp, #0x10]
     880: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000880:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x582
     884: 91000021     	add	x1, x1, #0x0
		0000000000000884:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x582
     888: aa1503e0     	mov	x0, x21
     88c: 52800023     	mov	w3, #0x1                // =1
     890: aa1f03e4     	mov	x4, xzr
     894: 94000000     	bl	0x894 <zte_power_supply_get_battery_info+0x2c8>
		0000000000000894:  R_AARCH64_CALL26	of_property_read_variable_u32_array
     898: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000898:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fe
     89c: 91000021     	add	x1, x1, #0x0
		000000000000089c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fe
     8a0: aa1503e0     	mov	x0, x21
     8a4: aa1703e2     	mov	x2, x23
     8a8: 52800023     	mov	w3, #0x1                // =1
     8ac: aa1f03e4     	mov	x4, xzr
     8b0: 94000000     	bl	0x8b0 <zte_power_supply_get_battery_info+0x2e4>
		00000000000008b0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
     8b4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ee
     8b8: 91000021     	add	x1, x1, #0x0
		00000000000008b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ee
     8bc: aa1503e0     	mov	x0, x21
     8c0: 52800082     	mov	w2, #0x4                // =4
     8c4: 94000000     	bl	0x8c4 <zte_power_supply_get_battery_info+0x2f8>
		00000000000008c4:  R_AARCH64_CALL26	of_property_count_elems_of_size
     8c8: 2a0003f4     	mov	w20, w0
     8cc: b9002fe0     	str	w0, [sp, #0x2c]
     8d0: 36f80060     	tbz	w0, #0x1f, 0x8dc <zte_power_supply_get_battery_info+0x310>
     8d4: 31005a9f     	cmn	w20, #0x16
     8d8: 54000a21     	b.ne	0xa1c <zte_power_supply_get_battery_info+0x450>
     8dc: 7100569f     	cmp	w20, #0x15
     8e0: 540011aa     	b.ge	0xb14 <zte_power_supply_get_battery_info+0x548>
     8e4: 7100069f     	cmp	w20, #0x1
     8e8: 54000b8b     	b.lt	0xa58 <zte_power_supply_get_battery_info+0x48c>
     8ec: 2a1403f7     	mov	w23, w20
     8f0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ee
     8f4: 91000021     	add	x1, x1, #0x0
		00000000000008f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ee
     8f8: aa1503e0     	mov	x0, x21
     8fc: aa1603e2     	mov	x2, x22
     900: aa1703e3     	mov	x3, x23
     904: aa1f03e4     	mov	x4, xzr
     908: 910432da     	add	x26, x22, #0x10c
     90c: 94000000     	bl	0x90c <zte_power_supply_get_battery_info+0x340>
		000000000000090c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
     910: aa1f03f4     	mov	x20, xzr
     914: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000914:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     918: 910002d6     	add	x22, x22, #0x0
		0000000000000918:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     91c: 14000004     	b	0x92c <zte_power_supply_get_battery_info+0x360>
     920: 91000694     	add	x20, x20, #0x1
     924: eb17029f     	cmp	x20, x23
     928: 54000982     	b.hs	0xa58 <zte_power_supply_get_battery_info+0x48c>
     92c: 52819800     	mov	w0, #0xcc0              // =3264
     930: aa1603e1     	mov	x1, x22
     934: 2a1403e2     	mov	w2, w20
     938: b9003bff     	str	wzr, [sp, #0x38]
     93c: 94000000     	bl	0x93c <zte_power_supply_get_battery_info+0x370>
		000000000000093c:  R_AARCH64_CALL26	kasprintf
     940: aa0003f9     	mov	x25, x0
     944: 9100e3e2     	add	x2, sp, #0x38
     948: aa1503e0     	mov	x0, x21
     94c: aa1903e1     	mov	x1, x25
     950: 94000000     	bl	0x950 <zte_power_supply_get_battery_info+0x384>
		0000000000000950:  R_AARCH64_CALL26	of_get_property
     954: b4000ee0     	cbz	x0, 0xb30 <zte_power_supply_get_battery_info+0x564>
     958: b9403be8     	ldr	w8, [sp, #0x38]
     95c: 34000ea8     	cbz	w8, 0xb30 <zte_power_supply_get_battery_info+0x564>
     960: aa0003f8     	mov	x24, x0
     964: aa1903e0     	mov	x0, x25
     968: 94000000     	bl	0x968 <zte_power_supply_get_battery_info+0x39c>
		0000000000000968:  R_AARCH64_CALL26	kfree
     96c: f100529f     	cmp	x20, #0x14
     970: 54001460     	b.eq	0xbfc <zte_power_supply_get_battery_info+0x630>
     974: b9403bfc     	ldr	w28, [sp, #0x38]
     978: 13037f9b     	asr	w27, w28, #3
     97c: b8347b5b     	str	w27, [x26, x20, lsl #2]
     980: 37f8107b     	tbnz	w27, #0x1f, 0xb8c <zte_power_supply_get_battery_info+0x5c0>
     984: d37d7f79     	ubfiz	x25, x27, #3, #32
     988: f94013e8     	ldr	x8, [sp, #0x20]
     98c: 5281b802     	mov	w2, #0xdc0              // =3520
     990: 9100e100     	add	x0, x8, #0x38
     994: aa1903e1     	mov	x1, x25
     998: 94000000     	bl	0x998 <zte_power_supply_get_battery_info+0x3cc>
		0000000000000998:  R_AARCH64_CALL26	devm_kmalloc
     99c: f8347a60     	str	x0, [x19, x20, lsl #3]
     9a0: b4000f80     	cbz	x0, 0xb90 <zte_power_supply_get_battery_info+0x5c4>
     9a4: 7100239f     	cmp	w28, #0x8
     9a8: 54fffbc3     	b.lo	0x920 <zte_power_supply_get_battery_info+0x354>
     9ac: 7100077f     	cmp	w27, #0x1
     9b0: aa1f03e9     	mov	x9, xzr
     9b4: 1a9f8768     	csinc	w8, w27, wzr, hi
     9b8: d37d7d08     	ubfiz	x8, x8, #3, #32
     9bc: eb09033f     	cmp	x25, x9
     9c0: 540010c9     	b.ls	0xbd8 <zte_power_supply_get_battery_info+0x60c>
     9c4: 8b09030a     	add	x10, x24, x9
     9c8: 9100112c     	add	x12, x9, #0x4
     9cc: b940014b     	ldr	w11, [x10]
     9d0: eb0c033f     	cmp	x25, x12
     9d4: 5ac0096b     	rev	w11, w11
     9d8: b829680b     	str	w11, [x0, x9]
     9dc: 54000fe3     	b.lo	0xbd8 <zte_power_supply_get_battery_info+0x60c>
     9e0: b940054a     	ldr	w10, [x10, #0x4]
     9e4: 8b09000b     	add	x11, x0, x9
     9e8: 91002129     	add	x9, x9, #0x8
     9ec: eb09011f     	cmp	x8, x9
     9f0: 5ac0094a     	rev	w10, w10
     9f4: b900056a     	str	w10, [x11, #0x4]
     9f8: 54fffe21     	b.ne	0x9bc <zte_power_supply_get_battery_info+0x3f0>
     9fc: 17ffffc9     	b	0x920 <zte_power_supply_get_battery_info+0x354>
     a00: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x540
     a04: 91000021     	add	x1, x1, #0x0
		0000000000000a04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x540
     a08: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48a
     a0c: 91000042     	add	x2, x2, #0x0
		0000000000000a0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48a
     a10: 9100e2a0     	add	x0, x21, #0x38
     a14: 94000000     	bl	0xa14 <zte_power_supply_get_battery_info+0x448>
		0000000000000a14:  R_AARCH64_CALL26	_dev_warn
     a18: 128000b4     	mov	w20, #-0x6              // =-6
     a1c: d5384108     	mrs	x8, SP_EL0
     a20: f9438908     	ldr	x8, [x8, #0x710]
     a24: f85f83a9     	ldur	x9, [x29, #-0x8]
     a28: eb09011f     	cmp	x8, x9
     a2c: 54000e61     	b.ne	0xbf8 <zte_power_supply_get_battery_info+0x62c>
     a30: 2a1403e0     	mov	w0, w20
     a34: a94e4ff4     	ldp	x20, x19, [sp, #0xe0]
     a38: a94d57f6     	ldp	x22, x21, [sp, #0xd0]
     a3c: a94c5ff8     	ldp	x24, x23, [sp, #0xc0]
     a40: a94b67fa     	ldp	x26, x25, [sp, #0xb0]
     a44: a94a6ffc     	ldp	x28, x27, [sp, #0xa0]
     a48: a9497bfd     	ldp	x29, x30, [sp, #0x90]
     a4c: 9103c3ff     	add	sp, sp, #0xf0
     a50: d50323bf     	autiasp
     a54: d65f03c0     	ret
     a58: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x416
     a5c: 91000021     	add	x1, x1, #0x0
		0000000000000a5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x416
     a60: 9100b3e2     	add	x2, sp, #0x2c
     a64: aa1503e0     	mov	x0, x21
     a68: 94000000     	bl	0xa68 <zte_power_supply_get_battery_info+0x49c>
		0000000000000a68:  R_AARCH64_CALL26	of_get_property
     a6c: 2a1f03f4     	mov	w20, wzr
     a70: b4fffd60     	cbz	x0, 0xa1c <zte_power_supply_get_battery_info+0x450>
     a74: b9402fe8     	ldr	w8, [sp, #0x2c]
     a78: 34fffd28     	cbz	w8, 0xa1c <zte_power_supply_get_battery_info+0x450>
     a7c: 13037d08     	asr	w8, w8, #3
     a80: f9400ff4     	ldr	x20, [sp, #0x18]
     a84: b901c288     	str	w8, [x20, #0x1c0]
     a88: 37f80aa8     	tbnz	w8, #0x1f, 0xbdc <zte_power_supply_get_battery_info+0x610>
     a8c: d37d7d16     	ubfiz	x22, x8, #3, #32
     a90: f94013f3     	ldr	x19, [sp, #0x20]
     a94: aa0003f5     	mov	x21, x0
     a98: 5281b802     	mov	w2, #0xdc0              // =3520
     a9c: 9100e260     	add	x0, x19, #0x38
     aa0: aa1603e1     	mov	x1, x22
     aa4: 94000000     	bl	0xaa4 <zte_power_supply_get_battery_info+0x4d8>
		0000000000000aa4:  R_AARCH64_CALL26	devm_kmalloc
     aa8: f900de80     	str	x0, [x20, #0x1b8]
     aac: b40009c0     	cbz	x0, 0xbe4 <zte_power_supply_get_battery_info+0x618>
     ab0: b941c288     	ldr	w8, [x20, #0x1c0]
     ab4: 7100051f     	cmp	w8, #0x1
     ab8: 540002ab     	b.lt	0xb0c <zte_power_supply_get_battery_info+0x540>
     abc: d37df108     	lsl	x8, x8, #3
     ac0: aa1f03e9     	mov	x9, xzr
     ac4: eb0902df     	cmp	x22, x9
     ac8: 54000889     	b.ls	0xbd8 <zte_power_supply_get_battery_info+0x60c>
     acc: 8b0902aa     	add	x10, x21, x9
     ad0: 9100112c     	add	x12, x9, #0x4
     ad4: b940014b     	ldr	w11, [x10]
     ad8: eb0c02df     	cmp	x22, x12
     adc: 5ac0096b     	rev	w11, w11
     ae0: b829680b     	str	w11, [x0, x9]
     ae4: 540007a3     	b.lo	0xbd8 <zte_power_supply_get_battery_info+0x60c>
     ae8: b940054a     	ldr	w10, [x10, #0x4]
     aec: 8b09000b     	add	x11, x0, x9
     af0: 91002129     	add	x9, x9, #0x8
     af4: 2a1f03f4     	mov	w20, wzr
     af8: eb09011f     	cmp	x8, x9
     afc: 5ac0094a     	rev	w10, w10
     b00: b900056a     	str	w10, [x11, #0x4]
     b04: 54fffe01     	b.ne	0xac4 <zte_power_supply_get_battery_info+0x4f8>
     b08: 17ffffc5     	b	0xa1c <zte_power_supply_get_battery_info+0x450>
     b0c: 2a1f03f4     	mov	w20, wzr
     b10: 17ffffc3     	b	0xa1c <zte_power_supply_get_battery_info+0x450>
     b14: f94013e8     	ldr	x8, [sp, #0x20]
     b18: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ca
     b1c: 91000021     	add	x1, x1, #0x0
		0000000000000b1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ca
     b20: 9100e100     	add	x0, x8, #0x38
     b24: 94000000     	bl	0xb24 <zte_power_supply_get_battery_info+0x558>
		0000000000000b24:  R_AARCH64_CALL26	_dev_err
     b28: 128002b4     	mov	w20, #-0x16             // =-22
     b2c: 17ffffbc     	b	0xa1c <zte_power_supply_get_battery_info+0x450>
     b30: f94013f5     	ldr	x21, [sp, #0x20]
     b34: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38b
     b38: 91000021     	add	x1, x1, #0x0
		0000000000000b38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38b
     b3c: aa1903e2     	mov	x2, x25
     b40: 9100e2a0     	add	x0, x21, #0x38
     b44: 94000000     	bl	0xb44 <zte_power_supply_get_battery_info+0x578>
		0000000000000b44:  R_AARCH64_CALL26	_dev_err
     b48: aa1903e0     	mov	x0, x25
     b4c: 94000000     	bl	0xb4c <zte_power_supply_get_battery_info+0x580>
		0000000000000b4c:  R_AARCH64_CALL26	kfree
     b50: aa1f03f4     	mov	x20, xzr
     b54: 14000004     	b	0xb64 <zte_power_supply_get_battery_info+0x598>
     b58: 91002294     	add	x20, x20, #0x8
     b5c: f102829f     	cmp	x20, #0xa0
     b60: 540000c0     	b.eq	0xb78 <zte_power_supply_get_battery_info+0x5ac>
     b64: f8746a61     	ldr	x1, [x19, x20]
     b68: b4ffff81     	cbz	x1, 0xb58 <zte_power_supply_get_battery_info+0x58c>
     b6c: 9100e2a0     	add	x0, x21, #0x38
     b70: 94000000     	bl	0xb70 <zte_power_supply_get_battery_info+0x5a4>
		0000000000000b70:  R_AARCH64_CALL26	devm_kfree
     b74: 17fffff9     	b	0xb58 <zte_power_supply_get_battery_info+0x58c>
     b78: f9400fe8     	ldr	x8, [sp, #0x18]
     b7c: 128002b4     	mov	w20, #-0x16             // =-22
     b80: f940dd01     	ldr	x1, [x8, #0x1b8]
     b84: b5000241     	cbnz	x1, 0xbcc <zte_power_supply_get_battery_info+0x600>
     b88: 17ffffa5     	b	0xa1c <zte_power_supply_get_battery_info+0x450>
     b8c: f8347a7f     	str	xzr, [x19, x20, lsl #3]
     b90: f94013f5     	ldr	x21, [sp, #0x20]
     b94: aa1f03f4     	mov	x20, xzr
     b98: 14000004     	b	0xba8 <zte_power_supply_get_battery_info+0x5dc>
     b9c: 91002294     	add	x20, x20, #0x8
     ba0: f102829f     	cmp	x20, #0xa0
     ba4: 540000c0     	b.eq	0xbbc <zte_power_supply_get_battery_info+0x5f0>
     ba8: f8746a61     	ldr	x1, [x19, x20]
     bac: b4ffff81     	cbz	x1, 0xb9c <zte_power_supply_get_battery_info+0x5d0>
     bb0: 9100e2a0     	add	x0, x21, #0x38
     bb4: 94000000     	bl	0xbb4 <zte_power_supply_get_battery_info+0x5e8>
		0000000000000bb4:  R_AARCH64_CALL26	devm_kfree
     bb8: 17fffff9     	b	0xb9c <zte_power_supply_get_battery_info+0x5d0>
     bbc: f9400fe8     	ldr	x8, [sp, #0x18]
     bc0: 12800174     	mov	w20, #-0xc              // =-12
     bc4: f940dd01     	ldr	x1, [x8, #0x1b8]
     bc8: b4fff2a1     	cbz	x1, 0xa1c <zte_power_supply_get_battery_info+0x450>
     bcc: 9100e2a0     	add	x0, x21, #0x38
     bd0: 94000000     	bl	0xbd0 <zte_power_supply_get_battery_info+0x604>
		0000000000000bd0:  R_AARCH64_CALL26	devm_kfree
     bd4: 17ffff92     	b	0xa1c <zte_power_supply_get_battery_info+0x450>
     bd8: d4200020     	brk	#0x1
     bdc: f94013f3     	ldr	x19, [sp, #0x20]
     be0: f900de9f     	str	xzr, [x20, #0x1b8]
     be4: aa1303e0     	mov	x0, x19
     be8: aa1403e1     	mov	x1, x20
     bec: 94000000     	bl	0xbec <zte_power_supply_get_battery_info+0x620>
		0000000000000bec:  R_AARCH64_CALL26	zte_power_supply_put_battery_info
     bf0: 12800174     	mov	w20, #-0xc              // =-12
     bf4: 17ffff8a     	b	0xa1c <zte_power_supply_get_battery_info+0x450>
     bf8: 94000000     	bl	0xbf8 <zte_power_supply_get_battery_info+0x62c>
		0000000000000bf8:  R_AARCH64_CALL26	__stack_chk_fail
     bfc: d42aa240     	brk	#0x5512
