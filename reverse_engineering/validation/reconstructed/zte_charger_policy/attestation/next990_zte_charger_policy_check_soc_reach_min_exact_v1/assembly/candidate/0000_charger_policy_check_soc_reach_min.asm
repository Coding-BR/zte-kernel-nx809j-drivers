
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000064c <charger_policy_check_soc_reach_min>:
     64c: d503233f     	paciasp
     650: d10103ff     	sub	sp, sp, #0x40
     654: a9017bfd     	stp	x29, x30, [sp, #0x10]
     658: f90013f5     	str	x21, [sp, #0x20]
     65c: a9034ff4     	stp	x20, x19, [sp, #0x30]
     660: 910043fd     	add	x29, sp, #0x10
     664: d5384108     	mrs	x8, SP_EL0
     668: aa0003f3     	mov	x19, x0
     66c: 910013e2     	add	x2, sp, #0x4
     670: f9438908     	ldr	x8, [x8, #0x710]
     674: 528005e1     	mov	w1, #0x2f               // =47
     678: f90007e8     	str	x8, [sp, #0x8]
     67c: f940dc00     	ldr	x0, [x0, #0x1b8]
     680: b90007ff     	str	wzr, [sp, #0x4]
     684: 97fffe5f     	bl	0x0 <charger_policy_get_prop_by_name>
		0000000000000684:  R_AARCH64_CALL26	charger_policy_get_prop_by_name
     688: 37f805e0     	tbnz	w0, #0x1f, 0x744 <charger_policy_check_soc_reach_min+0xf8>
     68c: 39487668     	ldrb	w8, [x19, #0x21d]
     690: 7100051f     	cmp	w8, #0x1
     694: 54000660     	b.eq	0x760 <charger_policy_check_soc_reach_min+0x114>
     698: 39486668     	ldrb	w8, [x19, #0x219]
     69c: 7100051f     	cmp	w8, #0x1
     6a0: 54000181     	b.ne	0x6d0 <charger_policy_check_soc_reach_min+0x84>
     6a4: 39487268     	ldrb	w8, [x19, #0x21c]
     6a8: b941a674     	ldr	w20, [x19, #0x1a4]
     6ac: 37000068     	tbnz	w8, #0x0, 0x6b8 <charger_policy_check_soc_reach_min+0x6c>
     6b0: b941aa68     	ldr	w8, [x19, #0x1a8]
     6b4: 4b080294     	sub	w20, w20, w8
     6b8: 39487668     	ldrb	w8, [x19, #0x21d]
     6bc: b94007f5     	ldr	w21, [sp, #0x4]
     6c0: 7100051f     	cmp	w8, #0x1
     6c4: 54000620     	b.eq	0x788 <charger_policy_check_soc_reach_min+0x13c>
     6c8: 6b1402bf     	cmp	w21, w20
     6cc: 5400070d     	b.le	0x7ac <charger_policy_check_soc_reach_min+0x160>
     6d0: 39486a68     	ldrb	w8, [x19, #0x21a]
     6d4: 7100051f     	cmp	w8, #0x1
     6d8: 540001e1     	b.ne	0x714 <charger_policy_check_soc_reach_min+0xc8>
     6dc: 39486e68     	ldrb	w8, [x19, #0x21b]
     6e0: 7100051f     	cmp	w8, #0x1
     6e4: 54000181     	b.ne	0x714 <charger_policy_check_soc_reach_min+0xc8>
     6e8: 39487268     	ldrb	w8, [x19, #0x21c]
     6ec: b9419e74     	ldr	w20, [x19, #0x19c]
     6f0: 37000068     	tbnz	w8, #0x0, 0x6fc <charger_policy_check_soc_reach_min+0xb0>
     6f4: b941aa68     	ldr	w8, [x19, #0x1a8]
     6f8: 4b080294     	sub	w20, w20, w8
     6fc: 39487668     	ldrb	w8, [x19, #0x21d]
     700: b94007f3     	ldr	w19, [sp, #0x4]
     704: 7100051f     	cmp	w8, #0x1
     708: 540005e0     	b.eq	0x7c4 <charger_policy_check_soc_reach_min+0x178>
     70c: 6b14027f     	cmp	w19, w20
     710: 540006cd     	b.le	0x7e8 <charger_policy_check_soc_reach_min+0x19c>
     714: 2a1f03e0     	mov	w0, wzr
     718: d5384108     	mrs	x8, SP_EL0
     71c: f9438908     	ldr	x8, [x8, #0x710]
     720: f94007e9     	ldr	x9, [sp, #0x8]
     724: eb09011f     	cmp	x8, x9
     728: 54000721     	b.ne	0x80c <charger_policy_check_soc_reach_min+0x1c0>
     72c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     730: f94013f5     	ldr	x21, [sp, #0x20]
     734: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     738: 910103ff     	add	sp, sp, #0x40
     73c: d50323bf     	autiasp
     740: d65f03c0     	ret
     744: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000744:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x66b
     748: 91000000     	add	x0, x0, #0x0
		0000000000000748:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x66b
     74c: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		000000000000074c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc1e
     750: 91000021     	add	x1, x1, #0x0
		0000000000000750:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc1e
     754: 94000000     	bl	0x754 <charger_policy_check_soc_reach_min+0x108>
		0000000000000754:  R_AARCH64_CALL26	_printk
     758: 2a1f03e0     	mov	w0, wzr
     75c: 17ffffef     	b	0x718 <charger_policy_check_soc_reach_min+0xcc>
     760: 39486662     	ldrb	w2, [x19, #0x219]
     764: 39486a63     	ldrb	w3, [x19, #0x21a]
     768: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000768:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa24
     76c: 91000000     	add	x0, x0, #0x0
		000000000000076c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa24
     770: 39486e64     	ldrb	w4, [x19, #0x21b]
     774: 39487265     	ldrb	w5, [x19, #0x21c]
     778: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000778:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc1e
     77c: 91000021     	add	x1, x1, #0x0
		000000000000077c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc1e
     780: 94000000     	bl	0x780 <charger_policy_check_soc_reach_min+0x134>
		0000000000000780:  R_AARCH64_CALL26	_printk
     784: 17ffffc5     	b	0x698 <charger_policy_check_soc_reach_min+0x4c>
     788: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000788:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x222f
     78c: 91000000     	add	x0, x0, #0x0
		000000000000078c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x222f
     790: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000790:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc1e
     794: 91000021     	add	x1, x1, #0x0
		0000000000000794:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc1e
     798: 2a1503e2     	mov	w2, w21
     79c: 2a1403e3     	mov	w3, w20
     7a0: 94000000     	bl	0x7a0 <charger_policy_check_soc_reach_min+0x154>
		00000000000007a0:  R_AARCH64_CALL26	_printk
     7a4: 6b1402bf     	cmp	w21, w20
     7a8: 54fff94c     	b.gt	0x6d0 <charger_policy_check_soc_reach_min+0x84>
     7ac: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000007ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x142c
     7b0: 91000000     	add	x0, x0, #0x0
		00000000000007b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x142c
     7b4: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000007b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc1e
     7b8: 91000021     	add	x1, x1, #0x0
		00000000000007b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc1e
     7bc: 2a1503e2     	mov	w2, w21
     7c0: 1400000f     	b	0x7fc <charger_policy_check_soc_reach_min+0x1b0>
     7c4: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000007c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6d
     7c8: 91000000     	add	x0, x0, #0x0
		00000000000007c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6d
     7cc: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000007cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc1e
     7d0: 91000021     	add	x1, x1, #0x0
		00000000000007d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc1e
     7d4: 2a1303e2     	mov	w2, w19
     7d8: 2a1403e3     	mov	w3, w20
     7dc: 94000000     	bl	0x7dc <charger_policy_check_soc_reach_min+0x190>
		00000000000007dc:  R_AARCH64_CALL26	_printk
     7e0: 6b14027f     	cmp	w19, w20
     7e4: 54fff98c     	b.gt	0x714 <charger_policy_check_soc_reach_min+0xc8>
     7e8: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000007e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf18
     7ec: 91000000     	add	x0, x0, #0x0
		00000000000007ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf18
     7f0: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000007f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc1e
     7f4: 91000021     	add	x1, x1, #0x0
		00000000000007f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc1e
     7f8: 2a1303e2     	mov	w2, w19
     7fc: 2a1403e3     	mov	w3, w20
     800: 94000000     	bl	0x800 <charger_policy_check_soc_reach_min+0x1b4>
		0000000000000800:  R_AARCH64_CALL26	_printk
     804: 52800020     	mov	w0, #0x1                // =1
     808: 17ffffc4     	b	0x718 <charger_policy_check_soc_reach_min+0xcc>
     80c: 94000000     	bl	0x80c <charger_policy_check_soc_reach_min+0x1c0>
		000000000000080c:  R_AARCH64_CALL26	__stack_chk_fail
