
/input/zlog_common_candidate.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000007bc <zlog_client_notify>:
     7bc: d503233f     	paciasp
     7c0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     7c4: a9014ff4     	stp	x20, x19, [sp, #0x10]
     7c8: 910003fd     	mov	x29, sp
     7cc: 90000008     	adrp	x8, 0x0 <.text>
		00000000000007cc:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c4
     7d0: 39400108     	ldrb	w8, [x8]
		00000000000007d0:  R_AARCH64_LDST8_ABS_LO12_NC	g_zlog_server+0x24c4
     7d4: 36000408     	tbz	w8, #0x0, 0x854 <zlog_client_notify+0x98>
     7d8: aa0003f3     	mov	x19, x0
     7dc: b4000420     	cbz	x0, 0x860 <zlog_client_notify+0xa4>
     7e0: 9102c260     	add	x0, x19, #0xb0
     7e4: 2a0103f4     	mov	w20, w1
     7e8: 94000000     	bl	0x7e8 <zlog_client_notify+0x2c>
		00000000000007e8:  R_AARCH64_CALL26	mutex_lock
     7ec: 39446268     	ldrb	w8, [x19, #0x118]
     7f0: 34000268     	cbz	w8, 0x83c <zlog_client_notify+0x80>
     7f4: f9408268     	ldr	x8, [x19, #0x100]
     7f8: b4000228     	cbz	x8, 0x83c <zlog_client_notify+0x80>
     7fc: f9408668     	ldr	x8, [x19, #0x108]
     800: b40001e8     	cbz	x8, 0x83c <zlog_client_notify+0x80>
     804: b900e674     	str	w20, [x19, #0xe4]
     808: 1400001d     	b	0x87c <zlog_client_notify+0xc0>
     80c: 9103a268     	add	x8, x19, #0xe8
     810: 52800109     	mov	w9, #0x8                // =8
     814: f829311f     	stset	x9, [x8]
     818: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000818:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x2400
     81c: 91000294     	add	x20, x20, #0x0
		000000000000081c:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_server+0x2400
     820: 91002280     	add	x0, x20, #0x8
     824: 94000000     	bl	0x824 <zlog_client_notify+0x68>
		0000000000000824:  R_AARCH64_CALL26	cancel_delayed_work
     828: f9400281     	ldr	x1, [x20]
     82c: 91002282     	add	x2, x20, #0x8
     830: 52800400     	mov	w0, #0x20               // =32
     834: 52800643     	mov	w3, #0x32               // =50
     838: 94000000     	bl	0x838 <zlog_client_notify+0x7c>
		0000000000000838:  R_AARCH64_CALL26	queue_delayed_work_on
     83c: 9102c260     	add	x0, x19, #0xb0
     840: 94000000     	bl	0x840 <zlog_client_notify+0x84>
		0000000000000840:  R_AARCH64_CALL26	mutex_unlock
     844: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     848: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     84c: d50323bf     	autiasp
     850: d65f03c0     	ret
     854: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000854:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa1a
     858: 91000000     	add	x0, x0, #0x0
		0000000000000858:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa1a
     85c: 14000003     	b	0x868 <zlog_client_notify+0xac>
     860: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000860:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x91a
     864: 91000000     	add	x0, x0, #0x0
		0000000000000864:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x91a
     868: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000868:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c7
     86c: 91000021     	add	x1, x1, #0x0
		000000000000086c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c7
     870: aa0103e2     	mov	x2, x1
     874: 94000000     	bl	0x874 <zlog_client_notify+0xb8>
		0000000000000874:  R_AARCH64_CALL26	_printk
     878: 17fffff3     	b	0x844 <zlog_client_notify+0x88>
     87c: 9103a268     	add	x8, x19, #0xe8
     880: f9800111     	prfm	pstl1strm, [x8]
     884: c85f7d09     	ldxr	x9, [x8]
     888: b27d0129     	orr	x9, x9, #0x8
     88c: c80a7d09     	stxr	w10, x9, [x8]
     890: 35ffffaa     	cbnz	w10, 0x884 <zlog_client_notify+0xc8>
     894: 17ffffe1     	b	0x818 <zlog_client_notify+0x5c>
