
/input/zlog_common_candidate.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000089c <zlog_reset_client>:
     89c: d503233f     	paciasp
     8a0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     8a4: f9000bf3     	str	x19, [sp, #0x10]
     8a8: 910003fd     	mov	x29, sp
     8ac: 90000008     	adrp	x8, 0x0 <.text>
		00000000000008ac:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c4
     8b0: 39400108     	ldrb	w8, [x8]
		00000000000008b0:  R_AARCH64_LDST8_ABS_LO12_NC	g_zlog_server+0x24c4
     8b4: 36000348     	tbz	w8, #0x0, 0x91c <zlog_reset_client+0x80>
     8b8: aa0003f3     	mov	x19, x0
     8bc: b40003e0     	cbz	x0, 0x938 <zlog_reset_client+0x9c>
     8c0: 9102c260     	add	x0, x19, #0xb0
     8c4: 94000000     	bl	0x8c4 <zlog_reset_client+0x28>
		00000000000008c4:  R_AARCH64_CALL26	mutex_lock
     8c8: 39446268     	ldrb	w8, [x19, #0x118]
     8cc: 340001c8     	cbz	w8, 0x904 <zlog_reset_client+0x68>
     8d0: f9408262     	ldr	x2, [x19, #0x100]
     8d4: b4000182     	cbz	x2, 0x904 <zlog_reset_client+0x68>
     8d8: f9408668     	ldr	x8, [x19, #0x108]
     8dc: b4000148     	cbz	x8, 0x904 <zlog_reset_client+0x68>
     8e0: f9408660     	ldr	x0, [x19, #0x108]
     8e4: 2a1f03e1     	mov	w1, wzr
     8e8: b900e67f     	str	wzr, [x19, #0xe4]
     8ec: a90f7e7f     	stp	xzr, xzr, [x19, #0xf0]
     8f0: 94000000     	bl	0x8f0 <zlog_reset_client+0x54>
		00000000000008f0:  R_AARCH64_CALL26	memset
     8f4: 14000017     	b	0x950 <zlog_reset_client+0xb4>
     8f8: 9103a268     	add	x8, x19, #0xe8
     8fc: 52800049     	mov	w9, #0x2                // =2
     900: f829111f     	stclr	x9, [x8]
     904: 9102c260     	add	x0, x19, #0xb0
     908: 94000000     	bl	0x908 <zlog_reset_client+0x6c>
		0000000000000908:  R_AARCH64_CALL26	mutex_unlock
     90c: f9400bf3     	ldr	x19, [sp, #0x10]
     910: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     914: d50323bf     	autiasp
     918: d65f03c0     	ret
     91c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000091c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x943
     920: 91000021     	add	x1, x1, #0x0
		0000000000000920:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x943
     924: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa1a
     928: 91000000     	add	x0, x0, #0x0
		0000000000000928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa1a
     92c: aa0103e2     	mov	x2, x1
     930: 94000000     	bl	0x930 <zlog_reset_client+0x94>
		0000000000000930:  R_AARCH64_CALL26	_printk
     934: 17fffff6     	b	0x90c <zlog_reset_client+0x70>
     938: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000938:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x774
     93c: 91000000     	add	x0, x0, #0x0
		000000000000093c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x774
     940: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000940:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x943
     944: 91000021     	add	x1, x1, #0x0
		0000000000000944:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x943
     948: 94000000     	bl	0x948 <zlog_reset_client+0xac>
		0000000000000948:  R_AARCH64_CALL26	_printk
     94c: 17fffff0     	b	0x90c <zlog_reset_client+0x70>
     950: 9103a268     	add	x8, x19, #0xe8
     954: 52800049     	mov	w9, #0x2                // =2
     958: f9800111     	prfm	pstl1strm, [x8]
     95c: c85f7d0a     	ldxr	x10, [x8]
     960: 8a29014a     	bic	x10, x10, x9
     964: c80b7d0a     	stxr	w11, x10, [x8]
     968: 35ffffab     	cbnz	w11, 0x95c <zlog_reset_client+0xc0>
     96c: 17ffffe6     	b	0x904 <zlog_reset_client+0x68>
