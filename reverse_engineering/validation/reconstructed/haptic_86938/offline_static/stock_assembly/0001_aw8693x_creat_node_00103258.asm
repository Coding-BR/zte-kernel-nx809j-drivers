
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000438 <aw8693x_creat_node>:
     438: d503233f     	paciasp
     43c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     440: f9000bf3     	str	x19, [sp, #0x10]
     444: 910003fd     	mov	x29, sp
     448: f9407c00     	ldr	x0, [x0, #0xf8]
     44c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000044c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x190
     450: 91000021     	add	x1, x1, #0x0
		0000000000000450:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x190
     454: 94000000     	bl	0x454 <aw8693x_creat_node+0x1c>
		0000000000000454:  R_AARCH64_CALL26	sysfs_create_group
     458: 37f800c0     	tbnz	w0, #0x1f, 0x470 <aw8693x_creat_node+0x38>
     45c: 2a1f03e0     	mov	w0, wzr
     460: f9400bf3     	ldr	x19, [sp, #0x10]
     464: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     468: d50323bf     	autiasp
     46c: d65f03c0     	ret
     470: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000470:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x178b
     474: 91000108     	add	x8, x8, #0x0
		0000000000000474:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x178b
     478: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000478:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     47c: 91000021     	add	x1, x1, #0x0
		000000000000047c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     480: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000480:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfad
     484: 91000063     	add	x3, x3, #0x0
		0000000000000484:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfad
     488: 2a0003f3     	mov	w19, w0
     48c: aa0803e0     	mov	x0, x8
     490: 52812342     	mov	w2, #0x91a              // =2330
     494: 94000000     	bl	0x494 <aw8693x_creat_node+0x5c>
		0000000000000494:  R_AARCH64_CALL26	_printk
     498: 2a1303e0     	mov	w0, w19
     49c: 17fffff1     	b	0x460 <aw8693x_creat_node+0x28>
