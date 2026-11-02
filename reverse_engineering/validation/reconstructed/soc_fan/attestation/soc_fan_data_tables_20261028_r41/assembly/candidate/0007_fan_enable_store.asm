
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000005e4 <fan_enable_store>:
     5e4: d503233f     	paciasp
     5e8: d100c3ff     	sub	sp, sp, #0x30
     5ec: a9017bfd     	stp	x29, x30, [sp, #0x10]
     5f0: a9024ff4     	stp	x20, x19, [sp, #0x20]
     5f4: 910043fd     	add	x29, sp, #0x10
     5f8: d5384108     	mrs	x8, SP_EL0
     5fc: aa0203e0     	mov	x0, x2
     600: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000600:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e5
     604: 91000021     	add	x1, x1, #0x0
		0000000000000604:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e5
     608: f9438908     	ldr	x8, [x8, #0x710]
     60c: 910013e2     	add	x2, sp, #0x4
     610: aa0303f3     	mov	x19, x3
     614: f90007e8     	str	x8, [sp, #0x8]
     618: b90007ff     	str	wzr, [sp, #0x4]
     61c: 94000000     	bl	0x61c <fan_enable_store+0x38>
		000000000000061c:  R_AARCH64_CALL26	sscanf
     620: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000620:  R_AARCH64_ADR_PREL_PG_HI21	chip
     624: b94007ea     	ldr	w10, [sp, #0x4]
     628: f9400288     	ldr	x8, [x20]
		0000000000000628:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     62c: 7100015f     	cmp	w10, #0x0
     630: f9400509     	ldr	x9, [x8, #0x8]
     634: 1a9f07ea     	cset	w10, ne
     638: 3940312b     	ldrb	w11, [x9, #0xc]
     63c: 6b0a017f     	cmp	w11, w10
     640: 54000141     	b.ne	0x668 <fan_enable_store+0x84>
     644: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000644:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x844
     648: 91000000     	add	x0, x0, #0x0
		0000000000000648:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x844
     64c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000064c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     650: 91000021     	add	x1, x1, #0x0
		0000000000000650:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     654: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000654:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa2a
     658: 91000042     	add	x2, x2, #0x0
		0000000000000658:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa2a
     65c: 528027e3     	mov	w3, #0x13f              // =319
     660: 94000000     	bl	0x660 <fan_enable_store+0x7c>
		0000000000000660:  R_AARCH64_CALL26	_printk
     664: 1400002e     	b	0x71c <fan_enable_store+0x138>
     668: 3900312a     	strb	w10, [x9, #0xc]
     66c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000066c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b3
     670: 91000000     	add	x0, x0, #0x0
		0000000000000670:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b3
     674: f9400508     	ldr	x8, [x8, #0x8]
     678: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000678:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     67c: 91000021     	add	x1, x1, #0x0
		000000000000067c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     680: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000680:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa2a
     684: 91000042     	add	x2, x2, #0x0
		0000000000000684:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa2a
     688: 52802863     	mov	w3, #0x143              // =323
     68c: 39403104     	ldrb	w4, [x8, #0xc]
     690: 94000000     	bl	0x690 <fan_enable_store+0xac>
		0000000000000690:  R_AARCH64_CALL26	_printk
     694: f9400288     	ldr	x8, [x20]
		0000000000000694:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     698: 91006100     	add	x0, x8, #0x18
     69c: 94000000     	bl	0x69c <fan_enable_store+0xb8>
		000000000000069c:  R_AARCH64_CALL26	mutex_lock
     6a0: f9400288     	ldr	x8, [x20]
		00000000000006a0:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     6a4: f9400500     	ldr	x0, [x8, #0x8]
     6a8: 39403008     	ldrb	w8, [x0, #0xc]
     6ac: 36000268     	tbz	w8, #0x0, 0x6f8 <fan_enable_store+0x114>
     6b0: 39400401     	ldrb	w1, [x0, #0x1]
     6b4: 340002e1     	cbz	w1, 0x710 <fan_enable_store+0x12c>
     6b8: 9400033a     	bl	0x13a0 <fan_level_set>
     6bc: f9400288     	ldr	x8, [x20]
		00000000000006bc:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     6c0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x582
     6c4: 91000000     	add	x0, x0, #0x0
		00000000000006c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x582
     6c8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     6cc: 91000021     	add	x1, x1, #0x0
		00000000000006cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     6d0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000006d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa2a
     6d4: 91000042     	add	x2, x2, #0x0
		00000000000006d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa2a
     6d8: f9400508     	ldr	x8, [x8, #0x8]
     6dc: 52802983     	mov	w3, #0x14c              // =332
     6e0: 39400504     	ldrb	w4, [x8, #0x1]
     6e4: 94000000     	bl	0x6e4 <fan_enable_store+0x100>
		00000000000006e4:  R_AARCH64_CALL26	_printk
     6e8: f9400288     	ldr	x8, [x20]
		00000000000006e8:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     6ec: f9400508     	ldr	x8, [x8, #0x8]
     6f0: 3900051f     	strb	wzr, [x8, #0x1]
     6f4: 14000007     	b	0x710 <fan_enable_store+0x12c>
     6f8: 39400008     	ldrb	w8, [x0]
     6fc: 2a1f03e1     	mov	w1, wzr
     700: 39000408     	strb	w8, [x0, #0x1]
     704: f9400288     	ldr	x8, [x20]
		0000000000000704:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     708: f9400500     	ldr	x0, [x8, #0x8]
     70c: 94000325     	bl	0x13a0 <fan_level_set>
     710: f9400288     	ldr	x8, [x20]
		0000000000000710:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     714: 91006100     	add	x0, x8, #0x18
     718: 94000000     	bl	0x718 <fan_enable_store+0x134>
		0000000000000718:  R_AARCH64_CALL26	mutex_unlock
     71c: d5384108     	mrs	x8, SP_EL0
     720: f9438908     	ldr	x8, [x8, #0x710]
     724: f94007e9     	ldr	x9, [sp, #0x8]
     728: eb09011f     	cmp	x8, x9
     72c: 540000e1     	b.ne	0x748 <fan_enable_store+0x164>
     730: aa1303e0     	mov	x0, x19
     734: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     738: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     73c: 9100c3ff     	add	sp, sp, #0x30
     740: d50323bf     	autiasp
     744: d65f03c0     	ret
     748: 94000000     	bl	0x748 <fan_enable_store+0x164>
		0000000000000748:  R_AARCH64_CALL26	__stack_chk_fail
