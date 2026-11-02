
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000768 <fan_level_store>:
     768: d503233f     	paciasp
     76c: d100c3ff     	sub	sp, sp, #0x30
     770: a9017bfd     	stp	x29, x30, [sp, #0x10]
     774: a9024ff4     	stp	x20, x19, [sp, #0x20]
     778: 910043fd     	add	x29, sp, #0x10
     77c: d5384108     	mrs	x8, SP_EL0
     780: aa0203e0     	mov	x0, x2
     784: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x368
     788: 91000021     	add	x1, x1, #0x0
		0000000000000788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x368
     78c: f9438908     	ldr	x8, [x8, #0x710]
     790: 910013e2     	add	x2, sp, #0x4
     794: aa0303f3     	mov	x19, x3
     798: f90007e8     	str	x8, [sp, #0x8]
     79c: b90007ff     	str	wzr, [sp, #0x4]
     7a0: 94000000     	bl	0x7a0 <fan_level_store+0x38>
		00000000000007a0:  R_AARCH64_CALL26	sscanf
     7a4: b94007e4     	ldr	w4, [sp, #0x4]
     7a8: 7100189f     	cmp	w4, #0x6
     7ac: 540003a2     	b.hs	0x820 <fan_level_store+0xb8>
     7b0: 90000014     	adrp	x20, 0x0 <.text>
		00000000000007b0:  R_AARCH64_ADR_PREL_PG_HI21	chip
     7b4: f9400288     	ldr	x8, [x20]
		00000000000007b4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     7b8: f9400509     	ldr	x9, [x8, #0x8]
     7bc: 3940312a     	ldrb	w10, [x9, #0xc]
     7c0: 3600048a     	tbz	w10, #0x0, 0x850 <fan_level_store+0xe8>
     7c4: 91006100     	add	x0, x8, #0x18
     7c8: 94000000     	bl	0x7c8 <fan_level_store+0x60>
		00000000000007c8:  R_AARCH64_CALL26	mutex_lock
     7cc: f9400288     	ldr	x8, [x20]
		00000000000007cc:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     7d0: b94007e1     	ldr	w1, [sp, #0x4]
     7d4: f9400500     	ldr	x0, [x8, #0x8]
     7d8: 97ffff40     	bl	0x4d8 <fan_level_set>
     7dc: f9400288     	ldr	x8, [x20]
		00000000000007dc:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     7e0: 2a0003f4     	mov	w20, w0
     7e4: 91006100     	add	x0, x8, #0x18
     7e8: 94000000     	bl	0x7e8 <fan_level_store+0x80>
		00000000000007e8:  R_AARCH64_CALL26	mutex_unlock
     7ec: 34000494     	cbz	w20, 0x87c <fan_level_store+0x114>
     7f0: 93407e93     	sxtw	x19, w20
     7f4: d5384108     	mrs	x8, SP_EL0
     7f8: f9438908     	ldr	x8, [x8, #0x710]
     7fc: f94007e9     	ldr	x9, [sp, #0x8]
     800: eb09011f     	cmp	x8, x9
     804: 54000521     	b.ne	0x8a8 <fan_level_store+0x140>
     808: aa1303e0     	mov	x0, x19
     80c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     810: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     814: 9100c3ff     	add	sp, sp, #0x30
     818: d50323bf     	autiasp
     81c: d65f03c0     	ret
     820: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000820:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30
     824: 91000000     	add	x0, x0, #0x0
		0000000000000824:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30
     828: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000828:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c0
     82c: 91000021     	add	x1, x1, #0x0
		000000000000082c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c0
     830: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000830:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36b
     834: 91000042     	add	x2, x2, #0x0
		0000000000000834:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36b
     838: 52802ca3     	mov	w3, #0x165              // =357
     83c: 2a1f03e5     	mov	w5, wzr
     840: 528000a6     	mov	w6, #0x5                // =5
     844: 94000000     	bl	0x844 <fan_level_store+0xdc>
		0000000000000844:  R_AARCH64_CALL26	_printk
     848: 928002b3     	mov	x19, #-0x16             // =-22
     84c: 17ffffea     	b	0x7f4 <fan_level_store+0x8c>
     850: 39000524     	strb	w4, [x9, #0x1]
     854: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000854:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15c
     858: 91000000     	add	x0, x0, #0x0
		0000000000000858:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15c
     85c: b94007e4     	ldr	w4, [sp, #0x4]
     860: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000860:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c0
     864: 91000021     	add	x1, x1, #0x0
		0000000000000864:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c0
     868: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000868:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36b
     86c: 91000042     	add	x2, x2, #0x0
		000000000000086c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36b
     870: 52802d63     	mov	w3, #0x16b              // =363
     874: 94000000     	bl	0x874 <fan_level_store+0x10c>
		0000000000000874:  R_AARCH64_CALL26	_printk
     878: 17ffffdf     	b	0x7f4 <fan_level_store+0x8c>
     87c: b94007e4     	ldr	w4, [sp, #0x4]
     880: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000880:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x489
     884: 91000000     	add	x0, x0, #0x0
		0000000000000884:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x489
     888: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000888:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c0
     88c: 91000021     	add	x1, x1, #0x0
		000000000000088c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c0
     890: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000890:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36b
     894: 91000042     	add	x2, x2, #0x0
		0000000000000894:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36b
     898: 52802ea3     	mov	w3, #0x175              // =373
     89c: 2a1f03e5     	mov	w5, wzr
     8a0: 94000000     	bl	0x8a0 <fan_level_store+0x138>
		00000000000008a0:  R_AARCH64_CALL26	_printk
     8a4: 17ffffd4     	b	0x7f4 <fan_level_store+0x8c>
     8a8: 94000000     	bl	0x8a8 <fan_level_store+0x140>
		00000000000008a8:  R_AARCH64_CALL26	__stack_chk_fail
