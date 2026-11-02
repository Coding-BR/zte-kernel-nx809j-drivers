
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000370 <fan_enable_store>:
     370: d503233f     	paciasp
     374: d100c3ff     	sub	sp, sp, #0x30
     378: a9017bfd     	stp	x29, x30, [sp, #0x10]
     37c: a9024ff4     	stp	x20, x19, [sp, #0x20]
     380: 910043fd     	add	x29, sp, #0x10
     384: d5384108     	mrs	x8, SP_EL0
     388: aa0203e0     	mov	x0, x2
     38c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000038c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x415
     390: 91000021     	add	x1, x1, #0x0
		0000000000000390:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x415
     394: f9438908     	ldr	x8, [x8, #0x710]
     398: 910013e2     	add	x2, sp, #0x4
     39c: aa0303f3     	mov	x19, x3
     3a0: f90007e8     	str	x8, [sp, #0x8]
     3a4: b90007ff     	str	wzr, [sp, #0x4]
     3a8: 94000000     	bl	0x3a8 <fan_enable_store+0x38>
		00000000000003a8:  R_AARCH64_CALL26	sscanf
     3ac: 90000014     	adrp	x20, 0x0 <.text>
		00000000000003ac:  R_AARCH64_ADR_PREL_PG_HI21	chip
     3b0: b94007ea     	ldr	w10, [sp, #0x4]
     3b4: f9400288     	ldr	x8, [x20]
		00000000000003b4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     3b8: 7100015f     	cmp	w10, #0x0
     3bc: f9400509     	ldr	x9, [x8, #0x8]
     3c0: 1a9f07ea     	cset	w10, ne
     3c4: 3940312b     	ldrb	w11, [x9, #0xc]
     3c8: 6b0a017f     	cmp	w11, w10
     3cc: 54000141     	b.ne	0x3f4 <fan_enable_store+0x84>
     3d0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d1
     3d4: 91000000     	add	x0, x0, #0x0
		00000000000003d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d1
     3d8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x331
     3dc: 91000021     	add	x1, x1, #0x0
		00000000000003dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x331
     3e0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000003e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c8
     3e4: 91000042     	add	x2, x2, #0x0
		00000000000003e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c8
     3e8: 528027e3     	mov	w3, #0x13f              // =319
     3ec: 94000000     	bl	0x3ec <fan_enable_store+0x7c>
		00000000000003ec:  R_AARCH64_CALL26	_printk
     3f0: 1400002e     	b	0x4a8 <fan_enable_store+0x138>
     3f4: 3900312a     	strb	w10, [x9, #0xc]
     3f8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x313
     3fc: 91000000     	add	x0, x0, #0x0
		00000000000003fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x313
     400: f9400508     	ldr	x8, [x8, #0x8]
     404: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000404:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x331
     408: 91000021     	add	x1, x1, #0x0
		0000000000000408:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x331
     40c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000040c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c8
     410: 91000042     	add	x2, x2, #0x0
		0000000000000410:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c8
     414: 52802863     	mov	w3, #0x143              // =323
     418: 39403104     	ldrb	w4, [x8, #0xc]
     41c: 94000000     	bl	0x41c <fan_enable_store+0xac>
		000000000000041c:  R_AARCH64_CALL26	_printk
     420: f9400288     	ldr	x8, [x20]
		0000000000000420:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     424: 91006100     	add	x0, x8, #0x18
     428: 94000000     	bl	0x428 <fan_enable_store+0xb8>
		0000000000000428:  R_AARCH64_CALL26	mutex_lock
     42c: f9400288     	ldr	x8, [x20]
		000000000000042c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     430: f9400500     	ldr	x0, [x8, #0x8]
     434: 39403008     	ldrb	w8, [x0, #0xc]
     438: 36000268     	tbz	w8, #0x0, 0x484 <fan_enable_store+0x114>
     43c: 39400401     	ldrb	w1, [x0, #0x1]
     440: 340002e1     	cbz	w1, 0x49c <fan_enable_store+0x12c>
     444: 94000025     	bl	0x4d8 <fan_level_set>
     448: f9400288     	ldr	x8, [x20]
		0000000000000448:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     44c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000044c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x241
     450: 91000000     	add	x0, x0, #0x0
		0000000000000450:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x241
     454: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000454:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x331
     458: 91000021     	add	x1, x1, #0x0
		0000000000000458:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x331
     45c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000045c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c8
     460: 91000042     	add	x2, x2, #0x0
		0000000000000460:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c8
     464: f9400508     	ldr	x8, [x8, #0x8]
     468: 52802983     	mov	w3, #0x14c              // =332
     46c: 39400504     	ldrb	w4, [x8, #0x1]
     470: 94000000     	bl	0x470 <fan_enable_store+0x100>
		0000000000000470:  R_AARCH64_CALL26	_printk
     474: f9400288     	ldr	x8, [x20]
		0000000000000474:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     478: f9400508     	ldr	x8, [x8, #0x8]
     47c: 3900051f     	strb	wzr, [x8, #0x1]
     480: 14000007     	b	0x49c <fan_enable_store+0x12c>
     484: 39400008     	ldrb	w8, [x0]
     488: 2a1f03e1     	mov	w1, wzr
     48c: 39000408     	strb	w8, [x0, #0x1]
     490: f9400288     	ldr	x8, [x20]
		0000000000000490:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     494: f9400500     	ldr	x0, [x8, #0x8]
     498: 94000010     	bl	0x4d8 <fan_level_set>
     49c: f9400288     	ldr	x8, [x20]
		000000000000049c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     4a0: 91006100     	add	x0, x8, #0x18
     4a4: 94000000     	bl	0x4a4 <fan_enable_store+0x134>
		00000000000004a4:  R_AARCH64_CALL26	mutex_unlock
     4a8: d5384108     	mrs	x8, SP_EL0
     4ac: f9438908     	ldr	x8, [x8, #0x710]
     4b0: f94007e9     	ldr	x9, [sp, #0x8]
     4b4: eb09011f     	cmp	x8, x9
     4b8: 540000e1     	b.ne	0x4d4 <fan_enable_store+0x164>
     4bc: aa1303e0     	mov	x0, x19
     4c0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     4c4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     4c8: 9100c3ff     	add	sp, sp, #0x30
     4cc: d50323bf     	autiasp
     4d0: d65f03c0     	ret
     4d4: 94000000     	bl	0x4d4 <fan_enable_store+0x164>
		00000000000004d4:  R_AARCH64_CALL26	__stack_chk_fail
