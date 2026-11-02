
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000214 <nb_fan_remove>:
     214: d503233f     	paciasp
     218: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     21c: f9000bf3     	str	x19, [sp, #0x10]
     220: 910003fd     	mov	x29, sp
     224: f9405413     	ldr	x19, [x0, #0xa8]
     228: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000228:  R_AARCH64_ADR_PREL_PG_HI21	.data+0xf0
     22c: 91000021     	add	x1, x1, #0x0
		000000000000022c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0xf0
     230: f9400a60     	ldr	x0, [x19, #0x10]
     234: 94000000     	bl	0x234 <nb_fan_remove+0x20>
		0000000000000234:  R_AARCH64_CALL26	sysfs_remove_group
     238: f9400268     	ldr	x8, [x19]
     23c: f9004d1f     	str	xzr, [x8, #0x98]
     240: f9400bf3     	ldr	x19, [sp, #0x10]
     244: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     248: d50323bf     	autiasp
     24c: d65f03c0     	ret
