
/input/ftmmod.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <ftm_remove>:
       4: d503233f     	paciasp
       8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
       c: f9000bf3     	str	x19, [sp, #0x10]
      10: 910003fd     	mov	x29, sp
      14: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000014:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12b
      18: 91000273     	add	x19, x19, #0x0
		0000000000000018:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12b
      1c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000001c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x122
      20: 91000000     	add	x0, x0, #0x0
		0000000000000020:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x122
      24: aa1303e1     	mov	x1, x19
      28: 94000000     	bl	0x28 <ftm_remove+0x24>
		0000000000000028:  R_AARCH64_CALL26	_printk
      2c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000002c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9d
      30: 91000000     	add	x0, x0, #0x0
		0000000000000030:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9d
      34: aa1303e1     	mov	x1, x19
      38: 94000000     	bl	0x38 <ftm_remove+0x34>
		0000000000000038:  R_AARCH64_CALL26	_printk
      3c: f9400bf3     	ldr	x19, [sp, #0x10]
      40: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      44: d50323bf     	autiasp
      48: d65f03c0     	ret
