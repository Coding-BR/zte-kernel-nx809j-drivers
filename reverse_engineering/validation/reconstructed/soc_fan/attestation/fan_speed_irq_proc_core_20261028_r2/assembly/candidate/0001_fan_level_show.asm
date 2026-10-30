
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000000bc <fan_level_show>:
      bc: d503233f     	paciasp
      c0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
      c4: 910003fd     	mov	x29, sp
      c8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000000c8:  R_AARCH64_ADR_PREL_PG_HI21	chip
      cc: aa0203e0     	mov	x0, x2
      d0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      d4: 91000021     	add	x1, x1, #0x0
		00000000000000d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      d8: f9400108     	ldr	x8, [x8]
		00000000000000d8:  R_AARCH64_LDST64_ABS_LO12_NC	chip
      dc: f9400508     	ldr	x8, [x8, #0x8]
      e0: 39403109     	ldrb	w9, [x8, #0xc]
      e4: d2400129     	eor	x9, x9, #0x1
      e8: 38696908     	ldrb	w8, [x8, x9]
      ec: 2a0803e2     	mov	w2, w8
      f0: 94000000     	bl	0xf0 <fan_level_show+0x34>
		00000000000000f0:  R_AARCH64_CALL26	sprintf
      f4: 93407c00     	sxtw	x0, w0
      f8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      fc: d50323bf     	autiasp
     100: d65f03c0     	ret
