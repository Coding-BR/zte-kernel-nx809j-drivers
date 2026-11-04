
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000084c <zlog_reset_client>:
     84c: d503233f     	paciasp
     850: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     854: f9000bf3     	str	x19, [sp, #0x10]
     858: 910003fd     	mov	x29, sp
     85c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000085c:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c4
     860: 39400108     	ldrb	w8, [x8]
		0000000000000860:  R_AARCH64_LDST8_ABS_LO12_NC	g_zlog_server+0x24c4
     864: 36000348     	tbz	w8, #0x0, 0x8cc <zlog_reset_client+0x80>
     868: aa0003f3     	mov	x19, x0
     86c: b40003e0     	cbz	x0, 0x8e8 <zlog_reset_client+0x9c>
     870: 9102c260     	add	x0, x19, #0xb0
     874: 94000000     	bl	0x874 <zlog_reset_client+0x28>
		0000000000000874:  R_AARCH64_CALL26	mutex_lock
     878: 39446268     	ldrb	w8, [x19, #0x118]
     87c: 340001c8     	cbz	w8, 0x8b4 <zlog_reset_client+0x68>
     880: f9408262     	ldr	x2, [x19, #0x100]
     884: b4000182     	cbz	x2, 0x8b4 <zlog_reset_client+0x68>
     888: f9408668     	ldr	x8, [x19, #0x108]
     88c: b4000148     	cbz	x8, 0x8b4 <zlog_reset_client+0x68>
     890: f9408660     	ldr	x0, [x19, #0x108]
     894: 2a1f03e1     	mov	w1, wzr
     898: b900e67f     	str	wzr, [x19, #0xe4]
     89c: a90f7e7f     	stp	xzr, xzr, [x19, #0xf0]
     8a0: 94000000     	bl	0x8a0 <zlog_reset_client+0x54>
		00000000000008a0:  R_AARCH64_CALL26	memset
     8a4: 14000017     	b	0x900 <zlog_reset_client+0xb4>
     8a8: 9103a268     	add	x8, x19, #0xe8
     8ac: 52800049     	mov	w9, #0x2                // =2
     8b0: f829111f     	stclr	x9, [x8]
     8b4: 9102c260     	add	x0, x19, #0xb0
     8b8: 94000000     	bl	0x8b8 <zlog_reset_client+0x6c>
		00000000000008b8:  R_AARCH64_CALL26	mutex_unlock
     8bc: f9400bf3     	ldr	x19, [sp, #0x10]
     8c0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     8c4: d50323bf     	autiasp
     8c8: d65f03c0     	ret
     8cc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a7
     8d0: 91000021     	add	x1, x1, #0x0
		00000000000008d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a7
     8d4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x948
     8d8: 91000000     	add	x0, x0, #0x0
		00000000000008d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x948
     8dc: aa0103e2     	mov	x2, x1
     8e0: 94000000     	bl	0x8e0 <zlog_reset_client+0x94>
		00000000000008e0:  R_AARCH64_CALL26	_printk
     8e4: 17fffff6     	b	0x8bc <zlog_reset_client+0x70>
     8e8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x774
     8ec: 91000000     	add	x0, x0, #0x0
		00000000000008ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x774
     8f0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a7
     8f4: 91000021     	add	x1, x1, #0x0
		00000000000008f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a7
     8f8: 94000000     	bl	0x8f8 <zlog_reset_client+0xac>
		00000000000008f8:  R_AARCH64_CALL26	_printk
     8fc: 17fffff0     	b	0x8bc <zlog_reset_client+0x70>
     900: 9103a268     	add	x8, x19, #0xe8
     904: 52800049     	mov	w9, #0x2                // =2
     908: f9800111     	prfm	pstl1strm, [x8]
     90c: c85f7d0a     	ldxr	x10, [x8]
     910: 8a29014a     	bic	x10, x10, x9
     914: c80b7d0a     	stxr	w11, x10, [x8]
     918: 35ffffab     	cbnz	w11, 0x90c <zlog_reset_client+0xc0>
     91c: 17ffffe6     	b	0x8b4 <zlog_reset_client+0x68>
