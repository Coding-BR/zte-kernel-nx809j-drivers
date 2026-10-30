
/input/zlog_test.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000003d8 <dump>:
     3d8: d503233f     	paciasp
     3dc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     3e0: a9014ff4     	stp	x20, x19, [sp, #0x10]
     3e4: 910003fd     	mov	x29, sp
     3e8: 90000014     	adrp	x20, 0x0 <.text>
		00000000000003e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d8
     3ec: 91000294     	add	x20, x20, #0x0
		00000000000003ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d8
     3f0: 2a0103e3     	mov	w3, w1
     3f4: aa0003f3     	mov	x19, x0
     3f8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe3
     3fc: 91000000     	add	x0, x0, #0x0
		00000000000003fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe3
     400: aa1403e1     	mov	x1, x20
     404: aa1403e2     	mov	x2, x20
     408: 94000000     	bl	0x408 <dump+0x30>
		0000000000000408:  R_AARCH64_CALL26	_printk
     40c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000040c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x64d
     410: 91000021     	add	x1, x1, #0x0
		0000000000000410:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x64d
     414: aa1303e0     	mov	x0, x19
     418: 94000000     	bl	0x418 <dump+0x40>
		0000000000000418:  R_AARCH64_CALL26	zlog_client_record
     41c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000041c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59b
     420: 91000021     	add	x1, x1, #0x0
		0000000000000420:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59b
     424: aa1303e0     	mov	x0, x19
     428: 94000000     	bl	0x428 <dump+0x50>
		0000000000000428:  R_AARCH64_CALL26	zlog_client_record
     42c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000042c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x40c
     430: 91000021     	add	x1, x1, #0x0
		0000000000000430:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x40c
     434: aa1303e0     	mov	x0, x19
     438: 94000000     	bl	0x438 <dump+0x60>
		0000000000000438:  R_AARCH64_CALL26	zlog_client_record
     43c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000043c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x494
     440: 91000021     	add	x1, x1, #0x0
		0000000000000440:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x494
     444: aa1303e0     	mov	x0, x19
     448: 94000000     	bl	0x448 <dump+0x70>
		0000000000000448:  R_AARCH64_CALL26	zlog_client_record
     44c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000044c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24f
     450: 91000021     	add	x1, x1, #0x0
		0000000000000450:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24f
     454: aa1303e0     	mov	x0, x19
     458: 94000000     	bl	0x458 <dump+0x80>
		0000000000000458:  R_AARCH64_CALL26	zlog_client_record
     45c: 52802141     	mov	w1, #0x10a              // =266
     460: aa1303e0     	mov	x0, x19
     464: 72a00801     	movk	w1, #0x40, lsl #16
     468: 94000000     	bl	0x468 <dump+0x90>
		0000000000000468:  R_AARCH64_CALL26	zlog_client_notify
     46c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000046c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4af
     470: 91000000     	add	x0, x0, #0x0
		0000000000000470:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4af
     474: 91001262     	add	x2, x19, #0x4
     478: aa1403e1     	mov	x1, x20
     47c: 94000000     	bl	0x47c <dump+0xa4>
		000000000000047c:  R_AARCH64_CALL26	_printk
     480: 2a1f03e0     	mov	w0, wzr
     484: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     488: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     48c: d50323bf     	autiasp
     490: d65f03c0     	ret
