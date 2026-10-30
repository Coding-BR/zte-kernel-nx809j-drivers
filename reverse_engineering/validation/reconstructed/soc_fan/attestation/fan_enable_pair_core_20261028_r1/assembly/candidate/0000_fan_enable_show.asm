
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <fan_enable_show>:
       4: d503233f     	paciasp
       8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
       c: a9014ff4     	stp	x20, x19, [sp, #0x10]
      10: 910003fd     	mov	x29, sp
      14: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000014:  R_AARCH64_ADR_PREL_PG_HI21	chip
      18: aa0203f3     	mov	x19, x2
      1c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000001c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b
      20: 91000000     	add	x0, x0, #0x0
		0000000000000020:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b
      24: f9400288     	ldr	x8, [x20]
		0000000000000024:  R_AARCH64_LDST64_ABS_LO12_NC	chip
      28: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4
      2c: 91000021     	add	x1, x1, #0x0
		000000000000002c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4
      30: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000030:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb
      34: 91000042     	add	x2, x2, #0x0
		0000000000000034:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb
      38: f9400508     	ldr	x8, [x8, #0x8]
      3c: 52802603     	mov	w3, #0x130              // =304
      40: 39403104     	ldrb	w4, [x8, #0xc]
      44: 94000000     	bl	0x44 <fan_enable_show+0x40>
		0000000000000044:  R_AARCH64_CALL26	_printk
      48: f9400288     	ldr	x8, [x20]
		0000000000000048:  R_AARCH64_LDST64_ABS_LO12_NC	chip
      4c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000004c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      50: 91000021     	add	x1, x1, #0x0
		0000000000000050:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      54: aa1303e0     	mov	x0, x19
      58: f9400508     	ldr	x8, [x8, #0x8]
      5c: 39403102     	ldrb	w2, [x8, #0xc]
      60: 94000000     	bl	0x60 <fan_enable_show+0x5c>
		0000000000000060:  R_AARCH64_CALL26	sprintf
      64: 93407c00     	sxtw	x0, w0
      68: a9414ff4     	ldp	x20, x19, [sp, #0x10]
      6c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      70: d50323bf     	autiasp
      74: d65f03c0     	ret
