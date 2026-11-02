
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000079c <fan_level_store>:
     79c: d503233f     	paciasp
     7a0: d100c3ff     	sub	sp, sp, #0x30
     7a4: a9017bfd     	stp	x29, x30, [sp, #0x10]
     7a8: a9024ff4     	stp	x20, x19, [sp, #0x20]
     7ac: 910043fd     	add	x29, sp, #0x10
     7b0: d5384108     	mrs	x8, SP_EL0
     7b4: aa0203e0     	mov	x0, x2
     7b8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e5
     7bc: 91000021     	add	x1, x1, #0x0
		00000000000007bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e5
     7c0: f9438908     	ldr	x8, [x8, #0x710]
     7c4: 910013e2     	add	x2, sp, #0x4
     7c8: aa0303f3     	mov	x19, x3
     7cc: f90007e8     	str	x8, [sp, #0x8]
     7d0: b90007ff     	str	wzr, [sp, #0x4]
     7d4: 94000000     	bl	0x7d4 <fan_level_store+0x38>
		00000000000007d4:  R_AARCH64_CALL26	sscanf
     7d8: b94007e4     	ldr	w4, [sp, #0x4]
     7dc: 7100189f     	cmp	w4, #0x6
     7e0: 540003a2     	b.hs	0x854 <fan_level_store+0xb8>
     7e4: 90000014     	adrp	x20, 0x0 <.text>
		00000000000007e4:  R_AARCH64_ADR_PREL_PG_HI21	chip
     7e8: f9400288     	ldr	x8, [x20]
		00000000000007e8:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     7ec: f9400509     	ldr	x9, [x8, #0x8]
     7f0: 3940312a     	ldrb	w10, [x9, #0xc]
     7f4: 3600048a     	tbz	w10, #0x0, 0x884 <fan_level_store+0xe8>
     7f8: 91006100     	add	x0, x8, #0x18
     7fc: 94000000     	bl	0x7fc <fan_level_store+0x60>
		00000000000007fc:  R_AARCH64_CALL26	mutex_lock
     800: f9400288     	ldr	x8, [x20]
		0000000000000800:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     804: b94007e1     	ldr	w1, [sp, #0x4]
     808: f9400500     	ldr	x0, [x8, #0x8]
     80c: 940002e5     	bl	0x13a0 <fan_level_set>
     810: f9400288     	ldr	x8, [x20]
		0000000000000810:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     814: 2a0003f4     	mov	w20, w0
     818: 91006100     	add	x0, x8, #0x18
     81c: 94000000     	bl	0x81c <fan_level_store+0x80>
		000000000000081c:  R_AARCH64_CALL26	mutex_unlock
     820: 34000494     	cbz	w20, 0x8b0 <fan_level_store+0x114>
     824: 93407e93     	sxtw	x19, w20
     828: d5384108     	mrs	x8, SP_EL0
     82c: f9438908     	ldr	x8, [x8, #0x710]
     830: f94007e9     	ldr	x9, [sp, #0x8]
     834: eb09011f     	cmp	x8, x9
     838: 54000521     	b.ne	0x8dc <fan_level_store+0x140>
     83c: aa1303e0     	mov	x0, x19
     840: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     844: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     848: 9100c3ff     	add	sp, sp, #0x30
     84c: d50323bf     	autiasp
     850: d65f03c0     	ret
     854: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000854:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x98
     858: 91000000     	add	x0, x0, #0x0
		0000000000000858:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x98
     85c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000085c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     860: 91000021     	add	x1, x1, #0x0
		0000000000000860:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     864: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000864:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e8
     868: 91000042     	add	x2, x2, #0x0
		0000000000000868:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e8
     86c: 52802ca3     	mov	w3, #0x165              // =357
     870: 2a1f03e5     	mov	w5, wzr
     874: 528000a6     	mov	w6, #0x5                // =5
     878: 94000000     	bl	0x878 <fan_level_store+0xdc>
		0000000000000878:  R_AARCH64_CALL26	_printk
     87c: 928002b3     	mov	x19, #-0x16             // =-22
     880: 17ffffea     	b	0x828 <fan_level_store+0x8c>
     884: 39000524     	strb	w4, [x9, #0x1]
     888: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000888:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x324
     88c: 91000000     	add	x0, x0, #0x0
		000000000000088c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x324
     890: b94007e4     	ldr	w4, [sp, #0x4]
     894: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000894:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     898: 91000021     	add	x1, x1, #0x0
		0000000000000898:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     89c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000089c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e8
     8a0: 91000042     	add	x2, x2, #0x0
		00000000000008a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e8
     8a4: 52802d63     	mov	w3, #0x16b              // =363
     8a8: 94000000     	bl	0x8a8 <fan_level_store+0x10c>
		00000000000008a8:  R_AARCH64_CALL26	_printk
     8ac: 17ffffdf     	b	0x828 <fan_level_store+0x8c>
     8b0: b94007e4     	ldr	w4, [sp, #0x4]
     8b4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb2d
     8b8: 91000000     	add	x0, x0, #0x0
		00000000000008b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb2d
     8bc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     8c0: 91000021     	add	x1, x1, #0x0
		00000000000008c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     8c4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000008c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e8
     8c8: 91000042     	add	x2, x2, #0x0
		00000000000008c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e8
     8cc: 52802ea3     	mov	w3, #0x175              // =373
     8d0: 2a1f03e5     	mov	w5, wzr
     8d4: 94000000     	bl	0x8d4 <fan_level_store+0x138>
		00000000000008d4:  R_AARCH64_CALL26	_printk
     8d8: 17ffffd4     	b	0x828 <fan_level_store+0x8c>
     8dc: 94000000     	bl	0x8dc <fan_level_store+0x140>
		00000000000008dc:  R_AARCH64_CALL26	__stack_chk_fail
