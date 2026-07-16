
/input/zlog_exception.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000850 <zlog_open>:
     850: d503233f     	paciasp
     854: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     858: 910003fd     	mov	x29, sp
     85c: 14000010     	b	0x89c <zlog_open+0x4c>
     860: 52800028     	mov	w8, #0x1                // =1
     864: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000864:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_info+0x90
     868: 91000129     	add	x9, x9, #0x0
		0000000000000868:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_info+0x90
     86c: b828013f     	stadd	w8, [x9]
     870: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000870:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_info+0x90
     874: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000874:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x201
     878: 91000000     	add	x0, x0, #0x0
		0000000000000878:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x201
     87c: b9400102     	ldr	w2, [x8]
		000000000000087c:  R_AARCH64_LDST32_ABS_LO12_NC	g_zlog_info+0x90
     880: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000880:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27d
     884: 91000021     	add	x1, x1, #0x0
		0000000000000884:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27d
     888: 94000000     	bl	0x888 <zlog_open+0x38>
		0000000000000888:  R_AARCH64_CALL26	_printk
     88c: 2a1f03e0     	mov	w0, wzr
     890: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     894: d50323bf     	autiasp
     898: d65f03c0     	ret
     89c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000089c:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_info+0x90
     8a0: 91000108     	add	x8, x8, #0x0
		00000000000008a0:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_info+0x90
     8a4: f9800111     	prfm	pstl1strm, [x8]
     8a8: 885f7d09     	ldxr	w9, [x8]
     8ac: 11000529     	add	w9, w9, #0x1
     8b0: 880a7d09     	stxr	w10, w9, [x8]
     8b4: 35ffffaa     	cbnz	w10, 0x8a8 <zlog_open+0x58>
     8b8: 17ffffee     	b	0x870 <zlog_open+0x20>
