
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000064c <charger_policy_check_usb_present>:
     64c: d503233f     	paciasp
     650: d10183ff     	sub	sp, sp, #0x60
     654: a9027bfd     	stp	x29, x30, [sp, #0x20]
     658: f9001bf7     	str	x23, [sp, #0x30]
     65c: a90457f6     	stp	x22, x21, [sp, #0x40]
     660: a9054ff4     	stp	x20, x19, [sp, #0x50]
     664: 910083fd     	add	x29, sp, #0x20
     668: d5384108     	mrs	x8, SP_EL0
     66c: aa0003f4     	mov	x20, x0
     670: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000670:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32d
     674: 91000000     	add	x0, x0, #0x0
		0000000000000674:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32d
     678: f9438908     	ldr	x8, [x8, #0x710]
     67c: f81f83a8     	stur	x8, [x29, #-0x8]
     680: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     684: 94000000     	bl	0x684 <charger_policy_check_usb_present+0x38>
		0000000000000684:  R_AARCH64_CALL26	power_supply_get_by_name
     688: b5000120     	cbnz	x0, 0x6ac <charger_policy_check_usb_present+0x60>
     68c: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		000000000000068c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2014
     690: 91000000     	add	x0, x0, #0x0
		0000000000000690:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2014
     694: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000694:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa08
     698: 91000021     	add	x1, x1, #0x0
		0000000000000698:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa08
     69c: 90000002     	adrp	x2, 0x0 <charger_policy_get_prop_by_name>
		000000000000069c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32d
     6a0: 91000042     	add	x2, x2, #0x0
		00000000000006a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32d
     6a4: 94000000     	bl	0x6a4 <charger_policy_check_usb_present+0x58>
		00000000000006a4:  R_AARCH64_CALL26	_printk
     6a8: 1400000f     	b	0x6e4 <charger_policy_check_usb_present+0x98>
     6ac: 910043e2     	add	x2, sp, #0x10
     6b0: 52800081     	mov	w1, #0x4                // =4
     6b4: aa0003f5     	mov	x21, x0
     6b8: 94000000     	bl	0x6b8 <charger_policy_check_usb_present+0x6c>
		00000000000006b8:  R_AARCH64_CALL26	power_supply_get_property
     6bc: 36f80220     	tbz	w0, #0x1f, 0x700 <charger_policy_check_usb_present+0xb4>
     6c0: 2a0003e4     	mov	w4, w0
     6c4: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000006c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9e
     6c8: 91000000     	add	x0, x0, #0x0
		00000000000006c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9e
     6cc: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000006cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa08
     6d0: 91000021     	add	x1, x1, #0x0
		00000000000006d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa08
     6d4: 90000002     	adrp	x2, 0x0 <charger_policy_get_prop_by_name>
		00000000000006d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32d
     6d8: 91000042     	add	x2, x2, #0x0
		00000000000006d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32d
     6dc: 52800083     	mov	w3, #0x4                // =4
     6e0: 94000000     	bl	0x6e0 <charger_policy_check_usb_present+0x94>
		00000000000006e0:  R_AARCH64_CALL26	_printk
     6e4: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000006e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e58
     6e8: 91000000     	add	x0, x0, #0x0
		00000000000006e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e58
     6ec: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000006ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x250b
     6f0: 91000021     	add	x1, x1, #0x0
		00000000000006f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x250b
     6f4: 94000000     	bl	0x6f4 <charger_policy_check_usb_present+0xa8>
		00000000000006f4:  R_AARCH64_CALL26	_printk
     6f8: 2a1f03f3     	mov	w19, wzr
     6fc: 14000004     	b	0x70c <charger_policy_check_usb_present+0xc0>
     700: b94013f3     	ldr	w19, [sp, #0x10]
     704: aa1503e0     	mov	x0, x21
     708: 94000000     	bl	0x708 <charger_policy_check_usb_present+0xbc>
		0000000000000708:  R_AARCH64_CALL26	power_supply_put
     70c: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		000000000000070c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x195c
     710: 91000000     	add	x0, x0, #0x0
		0000000000000710:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x195c
     714: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000714:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x250b
     718: 91000021     	add	x1, x1, #0x0
		0000000000000718:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x250b
     71c: 2a1303e2     	mov	w2, w19
     720: 94000000     	bl	0x720 <charger_policy_check_usb_present+0xd4>
		0000000000000720:  R_AARCH64_CALL26	_printk
     724: f940e680     	ldr	x0, [x20, #0x1c8]
     728: 910033e2     	add	x2, sp, #0xc
     72c: 52800221     	mov	w1, #0x11               // =17
     730: 97fffb2a     	bl	0xfffffffffffff3d8 <policy_external_power_changed+0xffffffffffff9ed8>
		0000000000000730:  R_AARCH64_CALL26	zte_charger_policy_get_prop_by_name
     734: 36f800c0     	tbz	w0, #0x1f, 0x74c <charger_policy_check_usb_present+0x100>
     738: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000738:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b2f
     73c: 91000000     	add	x0, x0, #0x0
		000000000000073c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b2f
     740: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000740:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x250b
     744: 91000021     	add	x1, x1, #0x0
		0000000000000744:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x250b
     748: 94000000     	bl	0x748 <charger_policy_check_usb_present+0xfc>
		0000000000000748:  R_AARCH64_CALL26	_printk
     74c: b9400ff5     	ldr	w21, [sp, #0xc]
     750: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000750:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1410
     754: 91000000     	add	x0, x0, #0x0
		0000000000000754:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1410
     758: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000758:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x250b
     75c: 91000021     	add	x1, x1, #0x0
		000000000000075c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x250b
     760: 2a1503e2     	mov	w2, w21
     764: 94000000     	bl	0x764 <charger_policy_check_usb_present+0x118>
		0000000000000764:  R_AARCH64_CALL26	_printk
     768: f940e680     	ldr	x0, [x20, #0x1c8]
     76c: 910023e2     	add	x2, sp, #0x8
     770: 52800241     	mov	w1, #0x12               // =18
     774: 97fffb19     	bl	0xfffffffffffff3d8 <policy_external_power_changed+0xffffffffffff9ed8>
		0000000000000774:  R_AARCH64_CALL26	zte_charger_policy_get_prop_by_name
     778: 36f800c0     	tbz	w0, #0x1f, 0x790 <charger_policy_check_usb_present+0x144>
     77c: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		000000000000077c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa28
     780: 91000000     	add	x0, x0, #0x0
		0000000000000780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa28
     784: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x250b
     788: 91000021     	add	x1, x1, #0x0
		0000000000000788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x250b
     78c: 94000000     	bl	0x78c <charger_policy_check_usb_present+0x140>
		000000000000078c:  R_AARCH64_CALL26	_printk
     790: b9400bf4     	ldr	w20, [sp, #0x8]
     794: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000794:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe9c
     798: 91000000     	add	x0, x0, #0x0
		0000000000000798:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe9c
     79c: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		000000000000079c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x250b
     7a0: 91000021     	add	x1, x1, #0x0
		00000000000007a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x250b
     7a4: 2a1403e2     	mov	w2, w20
     7a8: 94000000     	bl	0x7a8 <charger_policy_check_usb_present+0x15c>
		00000000000007a8:  R_AARCH64_CALL26	_printk
     7ac: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000007ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x331
     7b0: 91000000     	add	x0, x0, #0x0
		00000000000007b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x331
     7b4: f9000bff     	str	xzr, [sp, #0x10]
     7b8: 94000000     	bl	0x7b8 <charger_policy_check_usb_present+0x16c>
		00000000000007b8:  R_AARCH64_CALL26	power_supply_get_by_name
     7bc: b4000360     	cbz	x0, 0x828 <charger_policy_check_usb_present+0x1dc>
     7c0: 910043e2     	add	x2, sp, #0x10
     7c4: 52800081     	mov	w1, #0x4                // =4
     7c8: aa0003f6     	mov	x22, x0
     7cc: 94000000     	bl	0x7cc <charger_policy_check_usb_present+0x180>
		00000000000007cc:  R_AARCH64_CALL26	power_supply_get_property
     7d0: 37f803c0     	tbnz	w0, #0x1f, 0x848 <charger_policy_check_usb_present+0x1fc>
     7d4: b94013f7     	ldr	w23, [sp, #0x10]
     7d8: aa1603e0     	mov	x0, x22
     7dc: 94000000     	bl	0x7dc <charger_policy_check_usb_present+0x190>
		00000000000007dc:  R_AARCH64_CALL26	power_supply_put
     7e0: 710002ff     	cmp	w23, #0x0
     7e4: 1a9f07e8     	cset	w8, ne
     7e8: 2a1302a9     	orr	w9, w21, w19
     7ec: d538410a     	mrs	x10, SP_EL0
     7f0: f943894a     	ldr	x10, [x10, #0x710]
     7f4: 2a140129     	orr	w9, w9, w20
     7f8: f85f83ab     	ldur	x11, [x29, #-0x8]
     7fc: 7100013f     	cmp	w9, #0x0
     800: 1a9f0500     	csinc	w0, w8, wzr, eq
     804: eb0b015f     	cmp	x10, x11
     808: 54000401     	b.ne	0x888 <charger_policy_check_usb_present+0x23c>
     80c: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     810: f9401bf7     	ldr	x23, [sp, #0x30]
     814: a94457f6     	ldp	x22, x21, [sp, #0x40]
     818: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     81c: 910183ff     	add	sp, sp, #0x60
     820: d50323bf     	autiasp
     824: d65f03c0     	ret
     828: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000828:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2014
     82c: 91000000     	add	x0, x0, #0x0
		000000000000082c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2014
     830: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000830:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa08
     834: 91000021     	add	x1, x1, #0x0
		0000000000000834:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa08
     838: 90000002     	adrp	x2, 0x0 <charger_policy_get_prop_by_name>
		0000000000000838:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x331
     83c: 91000042     	add	x2, x2, #0x0
		000000000000083c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x331
     840: 94000000     	bl	0x840 <charger_policy_check_usb_present+0x1f4>
		0000000000000840:  R_AARCH64_CALL26	_printk
     844: 1400000a     	b	0x86c <charger_policy_check_usb_present+0x220>
     848: 2a0003e4     	mov	w4, w0
     84c: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		000000000000084c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9e
     850: 91000000     	add	x0, x0, #0x0
		0000000000000850:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9e
     854: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000854:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa08
     858: 91000021     	add	x1, x1, #0x0
		0000000000000858:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa08
     85c: 90000002     	adrp	x2, 0x0 <charger_policy_get_prop_by_name>
		000000000000085c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x331
     860: 91000042     	add	x2, x2, #0x0
		0000000000000860:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x331
     864: 52800083     	mov	w3, #0x4                // =4
     868: 94000000     	bl	0x868 <charger_policy_check_usb_present+0x21c>
		0000000000000868:  R_AARCH64_CALL26	_printk
     86c: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		000000000000086c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e58
     870: 91000000     	add	x0, x0, #0x0
		0000000000000870:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e58
     874: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000874:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x250b
     878: 91000021     	add	x1, x1, #0x0
		0000000000000878:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x250b
     87c: 94000000     	bl	0x87c <charger_policy_check_usb_present+0x230>
		000000000000087c:  R_AARCH64_CALL26	_printk
     880: 2a1f03e8     	mov	w8, wzr
     884: 17ffffd9     	b	0x7e8 <charger_policy_check_usb_present+0x19c>
     888: 94000000     	bl	0x888 <charger_policy_check_usb_present+0x23c>
		0000000000000888:  R_AARCH64_CALL26	__stack_chk_fail
