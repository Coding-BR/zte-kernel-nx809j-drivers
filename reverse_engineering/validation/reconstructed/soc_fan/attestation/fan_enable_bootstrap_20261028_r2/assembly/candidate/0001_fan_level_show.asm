
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000007c <fan_level_show>:
      7c: d503233f     	paciasp
      80: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
      84: 910003fd     	mov	x29, sp
      88: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000088:  R_AARCH64_ADR_PREL_PG_HI21	chip
      8c: aa0203e0     	mov	x0, x2
      90: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      94: 91000021     	add	x1, x1, #0x0
		0000000000000094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      98: f9400108     	ldr	x8, [x8]
		0000000000000098:  R_AARCH64_LDST64_ABS_LO12_NC	chip
      9c: f9400508     	ldr	x8, [x8, #0x8]
      a0: 39403109     	ldrb	w9, [x8, #0xc]
      a4: d2400129     	eor	x9, x9, #0x1
      a8: 38696908     	ldrb	w8, [x8, x9]
      ac: 2a0803e2     	mov	w2, w8
      b0: 94000000     	bl	0xb0 <fan_level_show+0x34>
		00000000000000b0:  R_AARCH64_CALL26	sprintf
      b4: 93407c00     	sxtw	x0, w0
      b8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      bc: d50323bf     	autiasp
      c0: d65f03c0     	ret
