
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a58 <nb_fan_remove>:
     a58: d503233f     	paciasp
     a5c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     a60: f9000bf3     	str	x19, [sp, #0x10]
     a64: 910003fd     	mov	x29, sp
     a68: f9405413     	ldr	x19, [x0, #0xa8]
     a6c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a6c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0xf0
     a70: 91000021     	add	x1, x1, #0x0
		0000000000000a70:  R_AARCH64_ADD_ABS_LO12_NC	.data+0xf0
     a74: f9400a60     	ldr	x0, [x19, #0x10]
     a78: 94000000     	bl	0xa78 <nb_fan_remove+0x20>
		0000000000000a78:  R_AARCH64_CALL26	sysfs_remove_group
     a7c: f9400268     	ldr	x8, [x19]
     a80: f9004d1f     	str	xzr, [x8, #0x98]
     a84: f9400bf3     	ldr	x19, [sp, #0x10]
     a88: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     a8c: d50323bf     	autiasp
     a90: d65f03c0     	ret
