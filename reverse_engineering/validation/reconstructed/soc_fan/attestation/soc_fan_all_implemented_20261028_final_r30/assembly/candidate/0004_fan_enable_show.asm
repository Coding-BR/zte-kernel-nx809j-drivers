
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000008b0 <fan_enable_show>:
     8b0: d503233f     	paciasp
     8b4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     8b8: a9014ff4     	stp	x20, x19, [sp, #0x10]
     8bc: 910003fd     	mov	x29, sp
     8c0: 90000014     	adrp	x20, 0x0 <.text>
		00000000000008c0:  R_AARCH64_ADR_PREL_PG_HI21	chip
     8c4: aa0203f3     	mov	x19, x2
     8c8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x448
     8cc: 91000000     	add	x0, x0, #0x0
		00000000000008cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x448
     8d0: f9400288     	ldr	x8, [x20]
		00000000000008d0:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     8d4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x331
     8d8: 91000021     	add	x1, x1, #0x0
		00000000000008d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x331
     8dc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000008dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f7
     8e0: 91000042     	add	x2, x2, #0x0
		00000000000008e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f7
     8e4: f9400508     	ldr	x8, [x8, #0x8]
     8e8: 52802603     	mov	w3, #0x130              // =304
     8ec: 39403104     	ldrb	w4, [x8, #0xc]
     8f0: 94000000     	bl	0x8f0 <fan_enable_show+0x40>
		00000000000008f0:  R_AARCH64_CALL26	_printk
     8f4: f9400288     	ldr	x8, [x20]
		00000000000008f4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     8f8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x136
     8fc: 91000021     	add	x1, x1, #0x0
		00000000000008fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x136
     900: aa1303e0     	mov	x0, x19
     904: f9400508     	ldr	x8, [x8, #0x8]
     908: 39403102     	ldrb	w2, [x8, #0xc]
     90c: 94000000     	bl	0x90c <fan_enable_show+0x5c>
		000000000000090c:  R_AARCH64_CALL26	sprintf
     910: 93407c00     	sxtw	x0, w0
     914: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     918: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     91c: d50323bf     	autiasp
     920: d65f03c0     	ret
