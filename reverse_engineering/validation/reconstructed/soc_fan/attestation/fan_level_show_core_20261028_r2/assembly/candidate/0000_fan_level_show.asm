
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <fan_level_show>:
       4: d503233f     	paciasp
       8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
       c: 910003fd     	mov	x29, sp
      10: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000010:  R_AARCH64_ADR_PREL_PG_HI21	chip
      14: aa0203e0     	mov	x0, x2
      18: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      1c: 91000021     	add	x1, x1, #0x0
		000000000000001c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      20: f9400108     	ldr	x8, [x8]
		0000000000000020:  R_AARCH64_LDST64_ABS_LO12_NC	chip
      24: f9400508     	ldr	x8, [x8, #0x8]
      28: 39403109     	ldrb	w9, [x8, #0xc]
      2c: d2400129     	eor	x9, x9, #0x1
      30: 38696908     	ldrb	w8, [x8, x9]
      34: 2a0803e2     	mov	w2, w8
      38: 94000000     	bl	0x38 <fan_level_show+0x34>
		0000000000000038:  R_AARCH64_CALL26	sprintf
      3c: 93407c00     	sxtw	x0, w0
      40: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      44: d50323bf     	autiasp
      48: d65f03c0     	ret
