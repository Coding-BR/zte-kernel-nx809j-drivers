
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000bcc <fan_enable_show>:
     bcc: d503233f     	paciasp
     bd0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     bd4: a9014ff4     	stp	x20, x19, [sp, #0x10]
     bd8: 910003fd     	mov	x29, sp
     bdc: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000bdc:  R_AARCH64_ADR_PREL_PG_HI21	chip
     be0: aa0203f3     	mov	x19, x2
     be4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000be4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x594
     be8: 91000000     	add	x0, x0, #0x0
		0000000000000be8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x594
     bec: f9400288     	ldr	x8, [x20]
		0000000000000bec:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     bf0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000bf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     bf4: 91000021     	add	x1, x1, #0x0
		0000000000000bf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     bf8: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000bf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53d
     bfc: 91000042     	add	x2, x2, #0x0
		0000000000000bfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53d
     c00: f9400508     	ldr	x8, [x8, #0x8]
     c04: 52802603     	mov	w3, #0x130              // =304
     c08: 39403104     	ldrb	w4, [x8, #0xc]
     c0c: 94000000     	bl	0xc0c <fan_enable_show+0x40>
		0000000000000c0c:  R_AARCH64_CALL26	_printk
     c10: f9400288     	ldr	x8, [x20]
		0000000000000c10:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     c14: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x167
     c18: 91000021     	add	x1, x1, #0x0
		0000000000000c18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x167
     c1c: aa1303e0     	mov	x0, x19
     c20: f9400508     	ldr	x8, [x8, #0x8]
     c24: 39403102     	ldrb	w2, [x8, #0xc]
     c28: 94000000     	bl	0xc28 <fan_enable_show+0x5c>
		0000000000000c28:  R_AARCH64_CALL26	sprintf
     c2c: 93407c00     	sxtw	x0, w0
     c30: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     c34: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     c38: d50323bf     	autiasp
     c3c: d65f03c0     	ret
