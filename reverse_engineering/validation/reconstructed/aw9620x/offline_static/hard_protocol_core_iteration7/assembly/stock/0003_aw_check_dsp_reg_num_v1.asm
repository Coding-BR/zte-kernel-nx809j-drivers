
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000360 <aw_check_dsp_reg_num_v1>:
     360: d503233f     	paciasp
     364: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
     368: f9000bf9     	str	x25, [sp, #0x10]
     36c: a9025ff8     	stp	x24, x23, [sp, #0x20]
     370: a90357f6     	stp	x22, x21, [sp, #0x30]
     374: a9044ff4     	stp	x20, x19, [sp, #0x40]
     378: 910003fd     	mov	x29, sp
     37c: 2a0103f3     	mov	w19, w1
     380: aa0003f4     	mov	x20, x0
     384: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000384:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x199c
     388: 91000000     	add	x0, x0, #0x0
		0000000000000388:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x199c
     38c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000038c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3717
     390: 91000021     	add	x1, x1, #0x0
		0000000000000390:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3717
     394: 52801722     	mov	w2, #0xb9               // =185
     398: 94000000     	bl	0x398 <aw_check_dsp_reg_num_v1+0x38>
		0000000000000398:  R_AARCH64_CALL26	_printk
     39c: 7101927f     	cmp	w19, #0x64
     3a0: 540007a2     	b.hs	0x494 <aw_check_dsp_reg_num_v1+0x134>
     3a4: 52800a88     	mov	w8, #0x54               // =84
     3a8: 52841d19     	mov	w25, #0x20e8            // =8424
     3ac: 90000016     	adrp	x22, 0x0 <.text>
		00000000000003ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3717
     3b0: 910002d6     	add	x22, x22, #0x0
		00000000000003b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3717
     3b4: 9ba85277     	umaddl	x23, w19, w8, x20
     3b8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48f
     3bc: 91000000     	add	x0, x0, #0x0
		00000000000003bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48f
     3c0: aa1603e1     	mov	x1, x22
     3c4: 528017a2     	mov	w2, #0xbd               // =189
     3c8: b94056e8     	ldr	w8, [x23, #0x54]
     3cc: 8b080298     	add	x24, x20, x8
     3d0: 8b190303     	add	x3, x24, x25
     3d4: 94000000     	bl	0x3d4 <aw_check_dsp_reg_num_v1+0x74>
		00000000000003d4:  R_AARCH64_CALL26	_printk
     3d8: b9402ae8     	ldr	w8, [x23, #0x28]
     3dc: b960f309     	ldr	w9, [x24, #0x20f0]
     3e0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e3a
     3e4: 91000000     	add	x0, x0, #0x0
		00000000000003e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e3a
     3e8: b960ef14     	ldr	w20, [x24, #0x20ec]
     3ec: aa1603e1     	mov	x1, x22
     3f0: 51003108     	sub	w8, w8, #0xc
     3f4: 52801942     	mov	w2, #0xca               // =202
     3f8: 2a1303e3     	mov	w3, w19
     3fc: 1ac90915     	udiv	w21, w8, w9
     400: 2a1403e4     	mov	w4, w20
     404: b9005ee9     	str	w9, [x23, #0x5c]
     408: 2a1503e5     	mov	w5, w21
     40c: 94000000     	bl	0x40c <aw_check_dsp_reg_num_v1+0xac>
		000000000000040c:  R_AARCH64_CALL26	_printk
     410: 6b15029f     	cmp	w20, w21
     414: 54000221     	b.ne	0x458 <aw_check_dsp_reg_num_v1+0xf8>
     418: b8796b08     	ldr	w8, [x24, x25]
     41c: b84282e9     	ldur	w9, [x23, #0x28]
     420: 2a1f03e0     	mov	w0, wzr
     424: b84542ea     	ldur	w10, [x23, #0x54]
     428: b80602e8     	stur	w8, [x23, #0x60]
     42c: 51003128     	sub	w8, w9, #0xc
     430: 11003149     	add	w9, w10, #0xc
     434: b80502e8     	stur	w8, [x23, #0x50]
     438: 290ad2e9     	stp	w9, w20, [x23, #0x54]
     43c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     440: f9400bf9     	ldr	x25, [sp, #0x10]
     444: a94357f6     	ldp	x22, x21, [sp, #0x30]
     448: a9425ff8     	ldp	x24, x23, [sp, #0x20]
     44c: a8c57bfd     	ldp	x29, x30, [sp], #0x50
     450: d50323bf     	autiasp
     454: d65f03c0     	ret
     458: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000458:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d6b
     45c: 91000000     	add	x0, x0, #0x0
		000000000000045c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d6b
     460: aa1603e1     	mov	x1, x22
     464: 528019a2     	mov	w2, #0xcd               // =205
     468: 94000000     	bl	0x468 <aw_check_dsp_reg_num_v1+0x108>
		0000000000000468:  R_AARCH64_CALL26	_printk
     46c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000046c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c7
     470: 91000000     	add	x0, x0, #0x0
		0000000000000470:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c7
     474: aa1603e1     	mov	x1, x22
     478: 528019c2     	mov	w2, #0xce               // =206
     47c: 2a1303e3     	mov	w3, w19
     480: 2a1403e4     	mov	w4, w20
     484: 2a1503e5     	mov	w5, w21
     488: 94000000     	bl	0x488 <aw_check_dsp_reg_num_v1+0x128>
		0000000000000488:  R_AARCH64_CALL26	_printk
     48c: 128000a0     	mov	w0, #-0x6               // =-6
     490: 17ffffeb     	b	0x43c <aw_check_dsp_reg_num_v1+0xdc>
     494: d42aa240     	brk	#0x5512
