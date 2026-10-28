
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000052c <nb_fan_remove>:
     52c: d503233f     	paciasp
     530: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     534: f9000bf3     	str	x19, [sp, #0x10]
     538: 910003fd     	mov	x29, sp
     53c: f9405413     	ldr	x19, [x0, #0xa8]
     540: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000540:  R_AARCH64_ADR_PREL_PG_HI21	.data+0xf0
     544: 91000021     	add	x1, x1, #0x0
		0000000000000544:  R_AARCH64_ADD_ABS_LO12_NC	.data+0xf0
     548: f9400a60     	ldr	x0, [x19, #0x10]
     54c: 94000000     	bl	0x54c <nb_fan_remove+0x20>
		000000000000054c:  R_AARCH64_CALL26	sysfs_remove_group
     550: f9400268     	ldr	x8, [x19]
     554: f9004d1f     	str	xzr, [x8, #0x98]
     558: f9400bf3     	ldr	x19, [sp, #0x10]
     55c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     560: d50323bf     	autiasp
     564: d65f03c0     	ret
