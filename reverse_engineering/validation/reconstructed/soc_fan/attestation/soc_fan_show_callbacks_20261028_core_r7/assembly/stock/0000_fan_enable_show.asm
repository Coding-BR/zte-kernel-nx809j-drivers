
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000bb4 <fan_enable_show>:
     bb4: d503233f     	paciasp
     bb8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     bbc: a9014ff4     	stp	x20, x19, [sp, #0x10]
     bc0: 910003fd     	mov	x29, sp
     bc4: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000bc4:  R_AARCH64_ADR_PREL_PG_HI21	chip
     bc8: aa0203f3     	mov	x19, x2
     bcc: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000bcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x984
     bd0: 91000000     	add	x0, x0, #0x0
		0000000000000bd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x984
     bd4: f9400288     	ldr	x8, [x20]
		0000000000000bd4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     bd8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000bd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     bdc: 91000021     	add	x1, x1, #0x0
		0000000000000bdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     be0: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000be0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x844
     be4: 91000042     	add	x2, x2, #0x0
		0000000000000be4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x844
     be8: f9400508     	ldr	x8, [x8, #0x8]
     bec: 52802603     	mov	w3, #0x130              // =304
     bf0: 39403104     	ldrb	w4, [x8, #0xc]
     bf4: 94000000     	bl	0xbf4 <fan_enable_show+0x40>
		0000000000000bf4:  R_AARCH64_CALL26	_printk
     bf8: f9400288     	ldr	x8, [x20]
		0000000000000bf8:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     bfc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000bfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fb
     c00: 91000021     	add	x1, x1, #0x0
		0000000000000c00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fb
     c04: aa1303e0     	mov	x0, x19
     c08: f9400508     	ldr	x8, [x8, #0x8]
     c0c: 39403102     	ldrb	w2, [x8, #0xc]
     c10: 94000000     	bl	0xc10 <fan_enable_show+0x5c>
		0000000000000c10:  R_AARCH64_CALL26	sprintf
     c14: 93407c00     	sxtw	x0, w0
     c18: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     c1c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     c20: d50323bf     	autiasp
     c24: d65f03c0     	ret
