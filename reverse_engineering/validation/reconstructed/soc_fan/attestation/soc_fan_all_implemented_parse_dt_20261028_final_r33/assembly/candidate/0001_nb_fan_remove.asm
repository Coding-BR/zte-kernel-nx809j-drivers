
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000530 <nb_fan_remove>:
     530: d503233f     	paciasp
     534: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     538: f9000bf3     	str	x19, [sp, #0x10]
     53c: 910003fd     	mov	x29, sp
     540: f9405413     	ldr	x19, [x0, #0xa8]
     544: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000544:  R_AARCH64_ADR_PREL_PG_HI21	.data+0xf0
     548: 91000021     	add	x1, x1, #0x0
		0000000000000548:  R_AARCH64_ADD_ABS_LO12_NC	.data+0xf0
     54c: f9400a60     	ldr	x0, [x19, #0x10]
     550: 94000000     	bl	0x550 <nb_fan_remove+0x20>
		0000000000000550:  R_AARCH64_CALL26	sysfs_remove_group
     554: f9400268     	ldr	x8, [x19]
     558: f9004d1f     	str	xzr, [x8, #0x98]
     55c: f9400bf3     	ldr	x19, [sp, #0x10]
     560: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     564: d50323bf     	autiasp
     568: d65f03c0     	ret
