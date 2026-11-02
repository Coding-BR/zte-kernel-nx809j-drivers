
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000370 <fan_enable_show>:
     370: d503233f     	paciasp
     374: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     378: a9014ff4     	stp	x20, x19, [sp, #0x10]
     37c: 910003fd     	mov	x29, sp
     380: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000380:  R_AARCH64_ADR_PREL_PG_HI21	chip
     384: aa0203f3     	mov	x19, x2
     388: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000388:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15b
     38c: 91000000     	add	x0, x0, #0x0
		000000000000038c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15b
     390: f9400288     	ldr	x8, [x20]
		0000000000000390:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     394: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000394:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc7
     398: 91000021     	add	x1, x1, #0x0
		0000000000000398:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc7
     39c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000039c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12b
     3a0: 91000042     	add	x2, x2, #0x0
		00000000000003a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12b
     3a4: f9400508     	ldr	x8, [x8, #0x8]
     3a8: 52802603     	mov	w3, #0x130              // =304
     3ac: 39403104     	ldrb	w4, [x8, #0xc]
     3b0: 94000000     	bl	0x3b0 <fan_enable_show+0x40>
		00000000000003b0:  R_AARCH64_CALL26	_printk
     3b4: f9400288     	ldr	x8, [x20]
		00000000000003b4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     3b8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e
     3bc: 91000021     	add	x1, x1, #0x0
		00000000000003bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e
     3c0: aa1303e0     	mov	x0, x19
     3c4: f9400508     	ldr	x8, [x8, #0x8]
     3c8: 39403102     	ldrb	w2, [x8, #0xc]
     3cc: 94000000     	bl	0x3cc <fan_enable_show+0x5c>
		00000000000003cc:  R_AARCH64_CALL26	sprintf
     3d0: 93407c00     	sxtw	x0, w0
     3d4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     3d8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     3dc: d50323bf     	autiasp
     3e0: d65f03c0     	ret
