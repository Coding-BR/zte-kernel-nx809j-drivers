
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000044 <fan_enable_show>:
      44: d503233f     	paciasp
      48: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
      4c: a9014ff4     	stp	x20, x19, [sp, #0x10]
      50: 910003fd     	mov	x29, sp
      54: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000054:  R_AARCH64_ADR_PREL_PG_HI21	chip
      58: aa0203f3     	mov	x19, x2
      5c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000005c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b
      60: 91000000     	add	x0, x0, #0x0
		0000000000000060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b
      64: f9400288     	ldr	x8, [x20]
		0000000000000064:  R_AARCH64_LDST64_ABS_LO12_NC	chip
      68: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000068:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4
      6c: 91000021     	add	x1, x1, #0x0
		000000000000006c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4
      70: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000070:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb
      74: 91000042     	add	x2, x2, #0x0
		0000000000000074:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb
      78: f9400508     	ldr	x8, [x8, #0x8]
      7c: 52802603     	mov	w3, #0x130              // =304
      80: 39403104     	ldrb	w4, [x8, #0xc]
      84: 94000000     	bl	0x84 <fan_enable_show+0x40>
		0000000000000084:  R_AARCH64_CALL26	_printk
      88: f9400288     	ldr	x8, [x20]
		0000000000000088:  R_AARCH64_LDST64_ABS_LO12_NC	chip
      8c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000008c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      90: 91000021     	add	x1, x1, #0x0
		0000000000000090:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      94: aa1303e0     	mov	x0, x19
      98: f9400508     	ldr	x8, [x8, #0x8]
      9c: 39403102     	ldrb	w2, [x8, #0xc]
      a0: 94000000     	bl	0xa0 <fan_enable_show+0x5c>
		00000000000000a0:  R_AARCH64_CALL26	sprintf
      a4: 93407c00     	sxtw	x0, w0
      a8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
      ac: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      b0: d50323bf     	autiasp
      b4: d65f03c0     	ret
