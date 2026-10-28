
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000084 <fan_enable_show>:
      84: d503233f     	paciasp
      88: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
      8c: a9014ff4     	stp	x20, x19, [sp, #0x10]
      90: 910003fd     	mov	x29, sp
      94: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000094:  R_AARCH64_ADR_PREL_PG_HI21	chip
      98: aa0203f3     	mov	x19, x2
      9c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000009c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b
      a0: 91000000     	add	x0, x0, #0x0
		00000000000000a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b
      a4: f9400288     	ldr	x8, [x20]
		00000000000000a4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
      a8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4
      ac: 91000021     	add	x1, x1, #0x0
		00000000000000ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4
      b0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000000b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb
      b4: 91000042     	add	x2, x2, #0x0
		00000000000000b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb
      b8: f9400508     	ldr	x8, [x8, #0x8]
      bc: 52802603     	mov	w3, #0x130              // =304
      c0: 39403104     	ldrb	w4, [x8, #0xc]
      c4: 94000000     	bl	0xc4 <fan_enable_show+0x40>
		00000000000000c4:  R_AARCH64_CALL26	_printk
      c8: f9400288     	ldr	x8, [x20]
		00000000000000c8:  R_AARCH64_LDST64_ABS_LO12_NC	chip
      cc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      d0: 91000021     	add	x1, x1, #0x0
		00000000000000d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      d4: aa1303e0     	mov	x0, x19
      d8: f9400508     	ldr	x8, [x8, #0x8]
      dc: 39403102     	ldrb	w2, [x8, #0xc]
      e0: 94000000     	bl	0xe0 <fan_enable_show+0x5c>
		00000000000000e0:  R_AARCH64_CALL26	sprintf
      e4: 93407c00     	sxtw	x0, w0
      e8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
      ec: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      f0: d50323bf     	autiasp
      f4: d65f03c0     	ret
