
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000044 <nb_fan_remove>:
      44: d503233f     	paciasp
      48: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
      4c: f9000bf3     	str	x19, [sp, #0x10]
      50: 910003fd     	mov	x29, sp
      54: f9405413     	ldr	x19, [x0, #0xa8]
      58: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000058:  R_AARCH64_ADR_PREL_PG_HI21	.data+0xf0
      5c: 91000021     	add	x1, x1, #0x0
		000000000000005c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0xf0
      60: f9400a60     	ldr	x0, [x19, #0x10]
      64: 94000000     	bl	0x64 <nb_fan_remove+0x20>
		0000000000000064:  R_AARCH64_CALL26	sysfs_remove_group
      68: f9400268     	ldr	x8, [x19]
      6c: f9004d1f     	str	xzr, [x8, #0x98]
      70: f9400bf3     	ldr	x19, [sp, #0x10]
      74: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      78: d50323bf     	autiasp
      7c: d65f03c0     	ret
