
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000001a0 <fan_enable_show>:
     1a0: d503233f     	paciasp
     1a4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     1a8: a9014ff4     	stp	x20, x19, [sp, #0x10]
     1ac: 910003fd     	mov	x29, sp
     1b0: 90000014     	adrp	x20, 0x0 <.text>
		00000000000001b0:  R_AARCH64_ADR_PREL_PG_HI21	chip
     1b4: aa0203f3     	mov	x19, x2
     1b8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9b
     1bc: 91000000     	add	x0, x0, #0x0
		00000000000001bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9b
     1c0: f9400288     	ldr	x8, [x20]
		00000000000001c0:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     1c4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x71
     1c8: 91000021     	add	x1, x1, #0x0
		00000000000001c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x71
     1cc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000001cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78
     1d0: 91000042     	add	x2, x2, #0x0
		00000000000001d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78
     1d4: f9400508     	ldr	x8, [x8, #0x8]
     1d8: 52802603     	mov	w3, #0x130              // =304
     1dc: 39403104     	ldrb	w4, [x8, #0xc]
     1e0: 94000000     	bl	0x1e0 <fan_enable_show+0x40>
		00000000000001e0:  R_AARCH64_CALL26	_printk
     1e4: f9400288     	ldr	x8, [x20]
		00000000000001e4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     1e8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37
     1ec: 91000021     	add	x1, x1, #0x0
		00000000000001ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37
     1f0: aa1303e0     	mov	x0, x19
     1f4: f9400508     	ldr	x8, [x8, #0x8]
     1f8: 39403102     	ldrb	w2, [x8, #0xc]
     1fc: 94000000     	bl	0x1fc <fan_enable_show+0x5c>
		00000000000001fc:  R_AARCH64_CALL26	sprintf
     200: 93407c00     	sxtw	x0, w0
     204: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     208: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     20c: d50323bf     	autiasp
     210: d65f03c0     	ret
