
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000068c <fan_enable_store>:
     68c: d503233f     	paciasp
     690: d100c3ff     	sub	sp, sp, #0x30
     694: a9017bfd     	stp	x29, x30, [sp, #0x10]
     698: a9024ff4     	stp	x20, x19, [sp, #0x20]
     69c: 910043fd     	add	x29, sp, #0x10
     6a0: d5384108     	mrs	x8, SP_EL0
     6a4: aa0203e0     	mov	x0, x2
     6a8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x55b
     6ac: 91000021     	add	x1, x1, #0x0
		00000000000006ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x55b
     6b0: f9438908     	ldr	x8, [x8, #0x710]
     6b4: 910013e2     	add	x2, sp, #0x4
     6b8: aa0303f3     	mov	x19, x3
     6bc: f90007e8     	str	x8, [sp, #0x8]
     6c0: b90007ff     	str	wzr, [sp, #0x4]
     6c4: 94000000     	bl	0x6c4 <fan_enable_store+0x38>
		00000000000006c4:  R_AARCH64_CALL26	sscanf
     6c8: 90000014     	adrp	x20, 0x0 <.text>
		00000000000006c8:  R_AARCH64_ADR_PREL_PG_HI21	chip
     6cc: b94007ea     	ldr	w10, [sp, #0x4]
     6d0: f9400288     	ldr	x8, [x20]
		00000000000006d0:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     6d4: 7100015f     	cmp	w10, #0x0
     6d8: f9400509     	ldr	x9, [x8, #0x8]
     6dc: 1a9f07ea     	cset	w10, ne
     6e0: 3940312b     	ldrb	w11, [x9, #0xc]
     6e4: 6b0a017f     	cmp	w11, w10
     6e8: 54000141     	b.ne	0x710 <fan_enable_store+0x84>
     6ec: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x517
     6f0: 91000000     	add	x0, x0, #0x0
		00000000000006f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x517
     6f4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     6f8: 91000021     	add	x1, x1, #0x0
		00000000000006f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     6fc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000006fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x614
     700: 91000042     	add	x2, x2, #0x0
		0000000000000700:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x614
     704: 528027e3     	mov	w3, #0x13f              // =319
     708: 94000000     	bl	0x708 <fan_enable_store+0x7c>
		0000000000000708:  R_AARCH64_CALL26	_printk
     70c: 1400002e     	b	0x7c4 <fan_enable_store+0x138>
     710: 3900312a     	strb	w10, [x9, #0xc]
     714: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000714:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3fb
     718: 91000000     	add	x0, x0, #0x0
		0000000000000718:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3fb
     71c: f9400508     	ldr	x8, [x8, #0x8]
     720: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000720:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     724: 91000021     	add	x1, x1, #0x0
		0000000000000724:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     728: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000728:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x614
     72c: 91000042     	add	x2, x2, #0x0
		000000000000072c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x614
     730: 52802863     	mov	w3, #0x143              // =323
     734: 39403104     	ldrb	w4, [x8, #0xc]
     738: 94000000     	bl	0x738 <fan_enable_store+0xac>
		0000000000000738:  R_AARCH64_CALL26	_printk
     73c: f9400288     	ldr	x8, [x20]
		000000000000073c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     740: 91006100     	add	x0, x8, #0x18
     744: 94000000     	bl	0x744 <fan_enable_store+0xb8>
		0000000000000744:  R_AARCH64_CALL26	mutex_lock
     748: f9400288     	ldr	x8, [x20]
		0000000000000748:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     74c: f9400500     	ldr	x0, [x8, #0x8]
     750: 39403008     	ldrb	w8, [x0, #0xc]
     754: 36000268     	tbz	w8, #0x0, 0x7a0 <fan_enable_store+0x114>
     758: 39400401     	ldrb	w1, [x0, #0x1]
     75c: 340002e1     	cbz	w1, 0x7b8 <fan_enable_store+0x12c>
     760: 94000025     	bl	0x7f4 <fan_level_set>
     764: f9400288     	ldr	x8, [x20]
		0000000000000764:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     768: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000768:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d6
     76c: 91000000     	add	x0, x0, #0x0
		000000000000076c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d6
     770: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000770:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     774: 91000021     	add	x1, x1, #0x0
		0000000000000774:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     778: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000778:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x614
     77c: 91000042     	add	x2, x2, #0x0
		000000000000077c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x614
     780: f9400508     	ldr	x8, [x8, #0x8]
     784: 52802983     	mov	w3, #0x14c              // =332
     788: 39400504     	ldrb	w4, [x8, #0x1]
     78c: 94000000     	bl	0x78c <fan_enable_store+0x100>
		000000000000078c:  R_AARCH64_CALL26	_printk
     790: f9400288     	ldr	x8, [x20]
		0000000000000790:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     794: f9400508     	ldr	x8, [x8, #0x8]
     798: 3900051f     	strb	wzr, [x8, #0x1]
     79c: 14000007     	b	0x7b8 <fan_enable_store+0x12c>
     7a0: 39400008     	ldrb	w8, [x0]
     7a4: 2a1f03e1     	mov	w1, wzr
     7a8: 39000408     	strb	w8, [x0, #0x1]
     7ac: f9400288     	ldr	x8, [x20]
		00000000000007ac:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     7b0: f9400500     	ldr	x0, [x8, #0x8]
     7b4: 94000010     	bl	0x7f4 <fan_level_set>
     7b8: f9400288     	ldr	x8, [x20]
		00000000000007b8:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     7bc: 91006100     	add	x0, x8, #0x18
     7c0: 94000000     	bl	0x7c0 <fan_enable_store+0x134>
		00000000000007c0:  R_AARCH64_CALL26	mutex_unlock
     7c4: d5384108     	mrs	x8, SP_EL0
     7c8: f9438908     	ldr	x8, [x8, #0x710]
     7cc: f94007e9     	ldr	x9, [sp, #0x8]
     7d0: eb09011f     	cmp	x8, x9
     7d4: 540000e1     	b.ne	0x7f0 <fan_enable_store+0x164>
     7d8: aa1303e0     	mov	x0, x19
     7dc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     7e0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     7e4: 9100c3ff     	add	sp, sp, #0x30
     7e8: d50323bf     	autiasp
     7ec: d65f03c0     	ret
     7f0: 94000000     	bl	0x7f0 <fan_enable_store+0x164>
		00000000000007f0:  R_AARCH64_CALL26	__stack_chk_fail
