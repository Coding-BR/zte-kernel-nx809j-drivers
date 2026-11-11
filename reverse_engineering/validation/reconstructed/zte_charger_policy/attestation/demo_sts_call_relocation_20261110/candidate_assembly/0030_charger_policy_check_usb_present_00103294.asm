
/input/fresh_candidate_unpromoted.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000065c <charger_policy_check_usb_present>:
     65c: d503233f     	paciasp
     660: d10183ff     	sub	sp, sp, #0x60
     664: a9027bfd     	stp	x29, x30, [sp, #0x20]
     668: f9001bf7     	str	x23, [sp, #0x30]
     66c: a90457f6     	stp	x22, x21, [sp, #0x40]
     670: a9054ff4     	stp	x20, x19, [sp, #0x50]
     674: 910083fd     	add	x29, sp, #0x20
     678: d5384108     	mrs	x8, SP_EL0
     67c: aa0003f4     	mov	x20, x0
     680: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000680:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f6
     684: 91000000     	add	x0, x0, #0x0
		0000000000000684:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f6
     688: f9438908     	ldr	x8, [x8, #0x710]
     68c: f81f83a8     	stur	x8, [x29, #-0x8]
     690: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     694: 94000000     	bl	0x694 <charger_policy_check_usb_present+0x38>
		0000000000000694:  R_AARCH64_CALL26	power_supply_get_by_name
     698: b5000120     	cbnz	x0, 0x6bc <charger_policy_check_usb_present+0x60>
     69c: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		000000000000069c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aec
     6a0: 91000000     	add	x0, x0, #0x0
		00000000000006a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aec
     6a4: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000006a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8ba
     6a8: 91000021     	add	x1, x1, #0x0
		00000000000006a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8ba
     6ac: 90000002     	adrp	x2, 0x0 <charger_policy_get_prop_by_name>
		00000000000006ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f6
     6b0: 91000042     	add	x2, x2, #0x0
		00000000000006b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f6
     6b4: 94000000     	bl	0x6b4 <charger_policy_check_usb_present+0x58>
		00000000000006b4:  R_AARCH64_CALL26	_printk
     6b8: 1400000f     	b	0x6f4 <charger_policy_check_usb_present+0x98>
     6bc: 910043e2     	add	x2, sp, #0x10
     6c0: 52800081     	mov	w1, #0x4                // =4
     6c4: aa0003f5     	mov	x21, x0
     6c8: 94000000     	bl	0x6c8 <charger_policy_check_usb_present+0x6c>
		00000000000006c8:  R_AARCH64_CALL26	power_supply_get_property
     6cc: 36f80220     	tbz	w0, #0x1f, 0x710 <charger_policy_check_usb_present+0xb4>
     6d0: 2a0003e4     	mov	w4, w0
     6d4: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000006d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2320
     6d8: 91000000     	add	x0, x0, #0x0
		00000000000006d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2320
     6dc: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000006dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8ba
     6e0: 91000021     	add	x1, x1, #0x0
		00000000000006e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8ba
     6e4: 90000002     	adrp	x2, 0x0 <charger_policy_get_prop_by_name>
		00000000000006e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f6
     6e8: 91000042     	add	x2, x2, #0x0
		00000000000006e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f6
     6ec: 52800083     	mov	w3, #0x4                // =4
     6f0: 94000000     	bl	0x6f0 <charger_policy_check_usb_present+0x94>
		00000000000006f0:  R_AARCH64_CALL26	_printk
     6f4: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000006f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x196e
     6f8: 91000000     	add	x0, x0, #0x0
		00000000000006f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x196e
     6fc: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000006fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d62
     700: 91000021     	add	x1, x1, #0x0
		0000000000000700:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d62
     704: 94000000     	bl	0x704 <charger_policy_check_usb_present+0xa8>
		0000000000000704:  R_AARCH64_CALL26	_printk
     708: 2a1f03f3     	mov	w19, wzr
     70c: 14000004     	b	0x71c <charger_policy_check_usb_present+0xc0>
     710: b94013f3     	ldr	w19, [sp, #0x10]
     714: aa1503e0     	mov	x0, x21
     718: 94000000     	bl	0x718 <charger_policy_check_usb_present+0xbc>
		0000000000000718:  R_AARCH64_CALL26	power_supply_put
     71c: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		000000000000071c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14ca
     720: 91000000     	add	x0, x0, #0x0
		0000000000000720:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14ca
     724: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d62
     728: 91000021     	add	x1, x1, #0x0
		0000000000000728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d62
     72c: 2a1303e2     	mov	w2, w19
     730: 94000000     	bl	0x730 <charger_policy_check_usb_present+0xd4>
		0000000000000730:  R_AARCH64_CALL26	_printk
     734: f940e680     	ldr	x0, [x20, #0x1c8]
     738: 910033e2     	add	x2, sp, #0xc
     73c: 52800221     	mov	w1, #0x11               // =17
     740: 97fffb2a     	bl	0xfffffffffffff3e8 <charger_policy_remove+0xffffffffffffa788>
		0000000000000740:  R_AARCH64_CALL26	zte_charger_policy_get_prop_by_name
     744: 36f800c0     	tbz	w0, #0x1f, 0x75c <charger_policy_check_usb_present+0x100>
     748: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000748:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x220a
     74c: 91000000     	add	x0, x0, #0x0
		000000000000074c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x220a
     750: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000750:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d62
     754: 91000021     	add	x1, x1, #0x0
		0000000000000754:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d62
     758: 94000000     	bl	0x758 <charger_policy_check_usb_present+0xfc>
		0000000000000758:  R_AARCH64_CALL26	_printk
     75c: b9400ff5     	ldr	w21, [sp, #0xc]
     760: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000760:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1086
     764: 91000000     	add	x0, x0, #0x0
		0000000000000764:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1086
     768: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000768:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d62
     76c: 91000021     	add	x1, x1, #0x0
		000000000000076c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d62
     770: 2a1503e2     	mov	w2, w21
     774: 94000000     	bl	0x774 <charger_policy_check_usb_present+0x118>
		0000000000000774:  R_AARCH64_CALL26	_printk
     778: f940e680     	ldr	x0, [x20, #0x1c8]
     77c: 910023e2     	add	x2, sp, #0x8
     780: 52800241     	mov	w1, #0x12               // =18
     784: 97fffb19     	bl	0xfffffffffffff3e8 <charger_policy_remove+0xffffffffffffa788>
		0000000000000784:  R_AARCH64_CALL26	zte_charger_policy_get_prop_by_name
     788: 36f800c0     	tbz	w0, #0x1f, 0x7a0 <charger_policy_check_usb_present+0x144>
     78c: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		000000000000078c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8da
     790: 91000000     	add	x0, x0, #0x0
		0000000000000790:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8da
     794: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000794:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d62
     798: 91000021     	add	x1, x1, #0x0
		0000000000000798:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d62
     79c: 94000000     	bl	0x79c <charger_policy_check_usb_present+0x140>
		000000000000079c:  R_AARCH64_CALL26	_printk
     7a0: b9400bf4     	ldr	w20, [sp, #0x8]
     7a4: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000007a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc46
     7a8: 91000000     	add	x0, x0, #0x0
		00000000000007a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc46
     7ac: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000007ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d62
     7b0: 91000021     	add	x1, x1, #0x0
		00000000000007b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d62
     7b4: 2a1403e2     	mov	w2, w20
     7b8: 94000000     	bl	0x7b8 <charger_policy_check_usb_present+0x15c>
		00000000000007b8:  R_AARCH64_CALL26	_printk
     7bc: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000007bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fa
     7c0: 91000000     	add	x0, x0, #0x0
		00000000000007c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fa
     7c4: f9000bff     	str	xzr, [sp, #0x10]
     7c8: 94000000     	bl	0x7c8 <charger_policy_check_usb_present+0x16c>
		00000000000007c8:  R_AARCH64_CALL26	power_supply_get_by_name
     7cc: b4000360     	cbz	x0, 0x838 <charger_policy_check_usb_present+0x1dc>
     7d0: 910043e2     	add	x2, sp, #0x10
     7d4: 52800081     	mov	w1, #0x4                // =4
     7d8: aa0003f6     	mov	x22, x0
     7dc: 94000000     	bl	0x7dc <charger_policy_check_usb_present+0x180>
		00000000000007dc:  R_AARCH64_CALL26	power_supply_get_property
     7e0: 37f803c0     	tbnz	w0, #0x1f, 0x858 <charger_policy_check_usb_present+0x1fc>
     7e4: b94013f7     	ldr	w23, [sp, #0x10]
     7e8: aa1603e0     	mov	x0, x22
     7ec: 94000000     	bl	0x7ec <charger_policy_check_usb_present+0x190>
		00000000000007ec:  R_AARCH64_CALL26	power_supply_put
     7f0: 710002ff     	cmp	w23, #0x0
     7f4: 1a9f07e8     	cset	w8, ne
     7f8: 2a1302a9     	orr	w9, w21, w19
     7fc: d538410a     	mrs	x10, SP_EL0
     800: f943894a     	ldr	x10, [x10, #0x710]
     804: 2a140129     	orr	w9, w9, w20
     808: f85f83ab     	ldur	x11, [x29, #-0x8]
     80c: 7100013f     	cmp	w9, #0x0
     810: 1a9f0500     	csinc	w0, w8, wzr, eq
     814: eb0b015f     	cmp	x10, x11
     818: 54000401     	b.ne	0x898 <charger_policy_check_usb_present+0x23c>
     81c: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     820: f9401bf7     	ldr	x23, [sp, #0x30]
     824: a94457f6     	ldp	x22, x21, [sp, #0x40]
     828: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     82c: 910183ff     	add	sp, sp, #0x60
     830: d50323bf     	autiasp
     834: d65f03c0     	ret
     838: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000838:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aec
     83c: 91000000     	add	x0, x0, #0x0
		000000000000083c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aec
     840: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000840:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8ba
     844: 91000021     	add	x1, x1, #0x0
		0000000000000844:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8ba
     848: 90000002     	adrp	x2, 0x0 <charger_policy_get_prop_by_name>
		0000000000000848:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fa
     84c: 91000042     	add	x2, x2, #0x0
		000000000000084c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fa
     850: 94000000     	bl	0x850 <charger_policy_check_usb_present+0x1f4>
		0000000000000850:  R_AARCH64_CALL26	_printk
     854: 1400000a     	b	0x87c <charger_policy_check_usb_present+0x220>
     858: 2a0003e4     	mov	w4, w0
     85c: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		000000000000085c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2320
     860: 91000000     	add	x0, x0, #0x0
		0000000000000860:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2320
     864: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000864:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8ba
     868: 91000021     	add	x1, x1, #0x0
		0000000000000868:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8ba
     86c: 90000002     	adrp	x2, 0x0 <charger_policy_get_prop_by_name>
		000000000000086c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fa
     870: 91000042     	add	x2, x2, #0x0
		0000000000000870:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fa
     874: 52800083     	mov	w3, #0x4                // =4
     878: 94000000     	bl	0x878 <charger_policy_check_usb_present+0x21c>
		0000000000000878:  R_AARCH64_CALL26	_printk
     87c: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		000000000000087c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x196e
     880: 91000000     	add	x0, x0, #0x0
		0000000000000880:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x196e
     884: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000884:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d62
     888: 91000021     	add	x1, x1, #0x0
		0000000000000888:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d62
     88c: 94000000     	bl	0x88c <charger_policy_check_usb_present+0x230>
		000000000000088c:  R_AARCH64_CALL26	_printk
     890: 2a1f03e8     	mov	w8, wzr
     894: 17ffffd9     	b	0x7f8 <charger_policy_check_usb_present+0x19c>
     898: 94000000     	bl	0x898 <charger_policy_check_usb_present+0x23c>
		0000000000000898:  R_AARCH64_CALL26	__stack_chk_fail
