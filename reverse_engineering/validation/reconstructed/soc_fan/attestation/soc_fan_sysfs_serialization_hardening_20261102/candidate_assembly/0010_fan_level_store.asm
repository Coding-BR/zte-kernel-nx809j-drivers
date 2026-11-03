
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000003fc <fan_level_store>:
     3fc: d503233f     	paciasp
     400: d10103ff     	sub	sp, sp, #0x40
     404: a9017bfd     	stp	x29, x30, [sp, #0x10]
     408: f90013f5     	str	x21, [sp, #0x20]
     40c: a9034ff4     	stp	x20, x19, [sp, #0x30]
     410: 910043fd     	add	x29, sp, #0x10
     414: d5384108     	mrs	x8, SP_EL0
     418: aa0203e0     	mov	x0, x2
     41c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000041c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x918
     420: 91000021     	add	x1, x1, #0x0
		0000000000000420:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x918
     424: f9438908     	ldr	x8, [x8, #0x710]
     428: 910013e2     	add	x2, sp, #0x4
     42c: aa0303f3     	mov	x19, x3
     430: f90007e8     	str	x8, [sp, #0x8]
     434: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000434:  R_AARCH64_ADR_PREL_PG_HI21	chip
     438: f9400115     	ldr	x21, [x8]
		0000000000000438:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     43c: b90007ff     	str	wzr, [sp, #0x4]
     440: f94006b4     	ldr	x20, [x21, #0x8]
     444: 94000000     	bl	0x444 <fan_level_store+0x48>
		0000000000000444:  R_AARCH64_CALL26	sscanf
     448: b94007e4     	ldr	w4, [sp, #0x4]
     44c: 7100189f     	cmp	w4, #0x6
     450: 54000342     	b.hs	0x4b8 <fan_level_store+0xbc>
     454: 910062a0     	add	x0, x21, #0x18
     458: 94000000     	bl	0x458 <fan_level_store+0x5c>
		0000000000000458:  R_AARCH64_CALL26	mutex_lock
     45c: 39403288     	ldrb	w8, [x20, #0xc]
     460: b94007e4     	ldr	w4, [sp, #0x4]
     464: 36000428     	tbz	w8, #0x0, 0x4e8 <fan_level_store+0xec>
     468: aa1403e0     	mov	x0, x20
     46c: 2a0403e1     	mov	w1, w4
     470: 9400042c     	bl	0x1520 <fan_level_set>
     474: 2a0003f4     	mov	w20, w0
     478: 910062a0     	add	x0, x21, #0x18
     47c: 94000000     	bl	0x47c <fan_level_store+0x80>
		000000000000047c:  R_AARCH64_CALL26	mutex_unlock
     480: 340004d4     	cbz	w20, 0x518 <fan_level_store+0x11c>
     484: 93407e93     	sxtw	x19, w20
     488: d5384108     	mrs	x8, SP_EL0
     48c: f9438908     	ldr	x8, [x8, #0x710]
     490: f94007e9     	ldr	x9, [sp, #0x8]
     494: eb09011f     	cmp	x8, x9
     498: 54000561     	b.ne	0x544 <fan_level_store+0x148>
     49c: aa1303e0     	mov	x0, x19
     4a0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     4a4: f94013f5     	ldr	x21, [sp, #0x20]
     4a8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     4ac: 910103ff     	add	sp, sp, #0x40
     4b0: d50323bf     	autiasp
     4b4: d65f03c0     	ret
     4b8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x98
     4bc: 91000000     	add	x0, x0, #0x0
		00000000000004bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x98
     4c0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
     4c4: 91000021     	add	x1, x1, #0x0
		00000000000004c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
     4c8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000004c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x91b
     4cc: 91000042     	add	x2, x2, #0x0
		00000000000004cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x91b
     4d0: 52802ca3     	mov	w3, #0x165              // =357
     4d4: 2a1f03e5     	mov	w5, wzr
     4d8: 528000a6     	mov	w6, #0x5                // =5
     4dc: 94000000     	bl	0x4dc <fan_level_store+0xe0>
		00000000000004dc:  R_AARCH64_CALL26	_printk
     4e0: 928002b3     	mov	x19, #-0x16             // =-22
     4e4: 17ffffe9     	b	0x488 <fan_level_store+0x8c>
     4e8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x324
     4ec: 91000000     	add	x0, x0, #0x0
		00000000000004ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x324
     4f0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
     4f4: 91000021     	add	x1, x1, #0x0
		00000000000004f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
     4f8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000004f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x91b
     4fc: 91000042     	add	x2, x2, #0x0
		00000000000004fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x91b
     500: 52802d63     	mov	w3, #0x16b              // =363
     504: 39000684     	strb	w4, [x20, #0x1]
     508: 94000000     	bl	0x508 <fan_level_store+0x10c>
		0000000000000508:  R_AARCH64_CALL26	_printk
     50c: 910062a0     	add	x0, x21, #0x18
     510: 94000000     	bl	0x510 <fan_level_store+0x114>
		0000000000000510:  R_AARCH64_CALL26	mutex_unlock
     514: 17ffffdd     	b	0x488 <fan_level_store+0x8c>
     518: b94007e4     	ldr	w4, [sp, #0x4]
     51c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000051c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb60
     520: 91000000     	add	x0, x0, #0x0
		0000000000000520:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb60
     524: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000524:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
     528: 91000021     	add	x1, x1, #0x0
		0000000000000528:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
     52c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000052c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x91b
     530: 91000042     	add	x2, x2, #0x0
		0000000000000530:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x91b
     534: 52802ea3     	mov	w3, #0x175              // =373
     538: 2a1f03e5     	mov	w5, wzr
     53c: 94000000     	bl	0x53c <fan_level_store+0x140>
		000000000000053c:  R_AARCH64_CALL26	_printk
     540: 17ffffd2     	b	0x488 <fan_level_store+0x8c>
     544: 94000000     	bl	0x544 <fan_level_store+0x148>
		0000000000000544:  R_AARCH64_CALL26	__stack_chk_fail
