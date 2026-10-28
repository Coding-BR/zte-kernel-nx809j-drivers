
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000005fc <fan_level_store>:
     5fc: d503233f     	paciasp
     600: d100c3ff     	sub	sp, sp, #0x30
     604: a9017bfd     	stp	x29, x30, [sp, #0x10]
     608: a9024ff4     	stp	x20, x19, [sp, #0x20]
     60c: 910043fd     	add	x29, sp, #0x10
     610: d5384108     	mrs	x8, SP_EL0
     614: aa0203e0     	mov	x0, x2
     618: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000618:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ee
     61c: 91000021     	add	x1, x1, #0x0
		000000000000061c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ee
     620: f9438908     	ldr	x8, [x8, #0x710]
     624: 910013e2     	add	x2, sp, #0x4
     628: aa0303f3     	mov	x19, x3
     62c: f90007e8     	str	x8, [sp, #0x8]
     630: b90007ff     	str	wzr, [sp, #0x4]
     634: 94000000     	bl	0x634 <fan_level_store+0x38>
		0000000000000634:  R_AARCH64_CALL26	sscanf
     638: b94007e4     	ldr	w4, [sp, #0x4]
     63c: 7100189f     	cmp	w4, #0x6
     640: 540003a2     	b.hs	0x6b4 <fan_level_store+0xb8>
     644: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000644:  R_AARCH64_ADR_PREL_PG_HI21	chip
     648: f9400288     	ldr	x8, [x20]
		0000000000000648:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     64c: f9400509     	ldr	x9, [x8, #0x8]
     650: 3940312a     	ldrb	w10, [x9, #0xc]
     654: 3600048a     	tbz	w10, #0x0, 0x6e4 <fan_level_store+0xe8>
     658: 91006100     	add	x0, x8, #0x18
     65c: 94000000     	bl	0x65c <fan_level_store+0x60>
		000000000000065c:  R_AARCH64_CALL26	mutex_lock
     660: f9400288     	ldr	x8, [x20]
		0000000000000660:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     664: b94007e1     	ldr	w1, [sp, #0x4]
     668: f9400500     	ldr	x0, [x8, #0x8]
     66c: 97ffff40     	bl	0x36c <fan_level_set>
     670: f9400288     	ldr	x8, [x20]
		0000000000000670:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     674: 2a0003f4     	mov	w20, w0
     678: 91006100     	add	x0, x8, #0x18
     67c: 94000000     	bl	0x67c <fan_level_store+0x80>
		000000000000067c:  R_AARCH64_CALL26	mutex_unlock
     680: 34000494     	cbz	w20, 0x710 <fan_level_store+0x114>
     684: 93407e93     	sxtw	x19, w20
     688: d5384108     	mrs	x8, SP_EL0
     68c: f9438908     	ldr	x8, [x8, #0x710]
     690: f94007e9     	ldr	x9, [sp, #0x8]
     694: eb09011f     	cmp	x8, x9
     698: 54000521     	b.ne	0x73c <fan_level_store+0x140>
     69c: aa1303e0     	mov	x0, x19
     6a0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     6a4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     6a8: 9100c3ff     	add	sp, sp, #0x30
     6ac: d50323bf     	autiasp
     6b0: d65f03c0     	ret
     6b4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30
     6b8: 91000000     	add	x0, x0, #0x0
		00000000000006b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30
     6bc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26c
     6c0: 91000021     	add	x1, x1, #0x0
		00000000000006c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26c
     6c4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000006c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f1
     6c8: 91000042     	add	x2, x2, #0x0
		00000000000006c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f1
     6cc: 52802ca3     	mov	w3, #0x165              // =357
     6d0: 2a1f03e5     	mov	w5, wzr
     6d4: 528000a6     	mov	w6, #0x5                // =5
     6d8: 94000000     	bl	0x6d8 <fan_level_store+0xdc>
		00000000000006d8:  R_AARCH64_CALL26	_printk
     6dc: 928002b3     	mov	x19, #-0x16             // =-22
     6e0: 17ffffea     	b	0x688 <fan_level_store+0x8c>
     6e4: 39000524     	strb	w4, [x9, #0x1]
     6e8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15c
     6ec: 91000000     	add	x0, x0, #0x0
		00000000000006ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15c
     6f0: b94007e4     	ldr	w4, [sp, #0x4]
     6f4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26c
     6f8: 91000021     	add	x1, x1, #0x0
		00000000000006f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26c
     6fc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000006fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f1
     700: 91000042     	add	x2, x2, #0x0
		0000000000000700:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f1
     704: 52802d63     	mov	w3, #0x16b              // =363
     708: 94000000     	bl	0x708 <fan_level_store+0x10c>
		0000000000000708:  R_AARCH64_CALL26	_printk
     70c: 17ffffdf     	b	0x688 <fan_level_store+0x8c>
     710: b94007e4     	ldr	w4, [sp, #0x4]
     714: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000714:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3fe
     718: 91000000     	add	x0, x0, #0x0
		0000000000000718:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3fe
     71c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000071c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26c
     720: 91000021     	add	x1, x1, #0x0
		0000000000000720:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26c
     724: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f1
     728: 91000042     	add	x2, x2, #0x0
		0000000000000728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f1
     72c: 52802ea3     	mov	w3, #0x175              // =373
     730: 2a1f03e5     	mov	w5, wzr
     734: 94000000     	bl	0x734 <fan_level_store+0x138>
		0000000000000734:  R_AARCH64_CALL26	_printk
     738: 17ffffd4     	b	0x688 <fan_level_store+0x8c>
     73c: 94000000     	bl	0x73c <fan_level_store+0x140>
		000000000000073c:  R_AARCH64_CALL26	__stack_chk_fail
