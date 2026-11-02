
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000056c <fan_enable_show>:
     56c: d503233f     	paciasp
     570: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     574: a9014ff4     	stp	x20, x19, [sp, #0x10]
     578: 910003fd     	mov	x29, sp
     57c: 90000014     	adrp	x20, 0x0 <.text>
		000000000000057c:  R_AARCH64_ADR_PREL_PG_HI21	chip
     580: aa0203f3     	mov	x19, x2
     584: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000584:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x984
     588: 91000000     	add	x0, x0, #0x0
		0000000000000588:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x984
     58c: f9400288     	ldr	x8, [x20]
		000000000000058c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     590: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000590:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     594: 91000021     	add	x1, x1, #0x0
		0000000000000594:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     598: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000598:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x86a
     59c: 91000042     	add	x2, x2, #0x0
		000000000000059c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x86a
     5a0: f9400508     	ldr	x8, [x8, #0x8]
     5a4: 52802603     	mov	w3, #0x130              // =304
     5a8: 39403104     	ldrb	w4, [x8, #0xc]
     5ac: 94000000     	bl	0x5ac <fan_enable_show+0x40>
		00000000000005ac:  R_AARCH64_CALL26	_printk
     5b0: f9400288     	ldr	x8, [x20]
		00000000000005b0:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     5b4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ed
     5b8: 91000021     	add	x1, x1, #0x0
		00000000000005b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ed
     5bc: aa1303e0     	mov	x0, x19
     5c0: f9400508     	ldr	x8, [x8, #0x8]
     5c4: 39403102     	ldrb	w2, [x8, #0xc]
     5c8: 94000000     	bl	0x5c8 <fan_enable_show+0x5c>
		00000000000005c8:  R_AARCH64_CALL26	sprintf
     5cc: 93407c00     	sxtw	x0, w0
     5d0: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     5d4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     5d8: d50323bf     	autiasp
     5dc: d65f03c0     	ret
