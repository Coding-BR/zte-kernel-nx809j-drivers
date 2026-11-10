
/input/zlog_test_candidate.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000344 <dump>:
     344: d503233f     	paciasp
     348: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     34c: a9014ff4     	stp	x20, x19, [sp, #0x10]
     350: 910003fd     	mov	x29, sp
     354: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000354:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x582
     358: 91000294     	add	x20, x20, #0x0
		0000000000000358:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x582
     35c: 2a0103e3     	mov	w3, w1
     360: aa0003f3     	mov	x19, x0
     364: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000364:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf7
     368: 91000000     	add	x0, x0, #0x0
		0000000000000368:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf7
     36c: aa1403e1     	mov	x1, x20
     370: aa1403e2     	mov	x2, x20
     374: 94000000     	bl	0x374 <dump+0x30>
		0000000000000374:  R_AARCH64_CALL26	_printk
     378: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x624
     37c: 91000021     	add	x1, x1, #0x0
		000000000000037c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x624
     380: aa1303e0     	mov	x0, x19
     384: 94000000     	bl	0x384 <dump+0x40>
		0000000000000384:  R_AARCH64_CALL26	zlog_client_record
     388: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000388:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x545
     38c: 91000021     	add	x1, x1, #0x0
		000000000000038c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x545
     390: aa1303e0     	mov	x0, x19
     394: 94000000     	bl	0x394 <dump+0x50>
		0000000000000394:  R_AARCH64_CALL26	zlog_client_record
     398: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000398:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d9
     39c: 91000021     	add	x1, x1, #0x0
		000000000000039c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d9
     3a0: aa1303e0     	mov	x0, x19
     3a4: 94000000     	bl	0x3a4 <dump+0x60>
		00000000000003a4:  R_AARCH64_CALL26	zlog_client_record
     3a8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x495
     3ac: 91000021     	add	x1, x1, #0x0
		00000000000003ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x495
     3b0: aa1303e0     	mov	x0, x19
     3b4: 94000000     	bl	0x3b4 <dump+0x70>
		00000000000003b4:  R_AARCH64_CALL26	zlog_client_record
     3b8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x241
     3bc: 91000021     	add	x1, x1, #0x0
		00000000000003bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x241
     3c0: aa1303e0     	mov	x0, x19
     3c4: 94000000     	bl	0x3c4 <dump+0x80>
		00000000000003c4:  R_AARCH64_CALL26	zlog_client_record
     3c8: 52802141     	mov	w1, #0x10a              // =266
     3cc: aa1303e0     	mov	x0, x19
     3d0: 72a00801     	movk	w1, #0x40, lsl #16
     3d4: 94000000     	bl	0x3d4 <dump+0x90>
		00000000000003d4:  R_AARCH64_CALL26	zlog_client_notify
     3d8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b0
     3dc: 91000000     	add	x0, x0, #0x0
		00000000000003dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b0
     3e0: 91001262     	add	x2, x19, #0x4
     3e4: aa1403e1     	mov	x1, x20
     3e8: 94000000     	bl	0x3e8 <dump+0xa4>
		00000000000003e8:  R_AARCH64_CALL26	_printk
     3ec: 2a1f03e0     	mov	w0, wzr
     3f0: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     3f4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     3f8: d50323bf     	autiasp
     3fc: d65f03c0     	ret
