
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000056c <nb_fan_remove>:
     56c: d503233f     	paciasp
     570: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     574: f9000bf3     	str	x19, [sp, #0x10]
     578: 910003fd     	mov	x29, sp
     57c: f9405413     	ldr	x19, [x0, #0xa8]
     580: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000580:  R_AARCH64_ADR_PREL_PG_HI21	.data+0xf0
     584: 91000021     	add	x1, x1, #0x0
		0000000000000584:  R_AARCH64_ADD_ABS_LO12_NC	.data+0xf0
     588: f9400a60     	ldr	x0, [x19, #0x10]
     58c: 94000000     	bl	0x58c <nb_fan_remove+0x20>
		000000000000058c:  R_AARCH64_CALL26	sysfs_remove_group
     590: f9400268     	ldr	x8, [x19]
     594: f9004d1f     	str	xzr, [x8, #0x98]
     598: f9400bf3     	ldr	x19, [sp, #0x10]
     59c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     5a0: d50323bf     	autiasp
     5a4: d65f03c0     	ret
