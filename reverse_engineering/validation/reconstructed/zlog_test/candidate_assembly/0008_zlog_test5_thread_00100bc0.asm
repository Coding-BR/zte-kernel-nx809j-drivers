
/input/zlog_test.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000858 <zlog_test5_thread>:
     858: d503233f     	paciasp
     85c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     860: a9014ff4     	stp	x20, x19, [sp, #0x10]
     864: 910003fd     	mov	x29, sp
     868: 94000000     	bl	0x868 <zlog_test5_thread+0x10>
		0000000000000868:  R_AARCH64_CALL26	get_random_u32
     86c: 90000014     	adrp	x20, 0x0 <.text>
		000000000000086c:  R_AARCH64_ADR_PREL_PG_HI21	client_5
     870: 2a0003f3     	mov	w19, w0
     874: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000874:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12
     878: 91000021     	add	x1, x1, #0x0
		0000000000000878:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12
     87c: f9400288     	ldr	x8, [x20]
		000000000000087c:  R_AARCH64_LDST64_ABS_LO12_NC	client_5
     880: aa0803e0     	mov	x0, x8
     884: 94000000     	bl	0x884 <zlog_test5_thread+0x2c>
		0000000000000884:  R_AARCH64_CALL26	zlog_client_record
     888: f9400280     	ldr	x0, [x20]
		0000000000000888:  R_AARCH64_LDST64_ABS_LO12_NC	client_5
     88c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000088c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e0
     890: 91000021     	add	x1, x1, #0x0
		0000000000000890:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e0
     894: 94000000     	bl	0x894 <zlog_test5_thread+0x3c>
		0000000000000894:  R_AARCH64_CALL26	zlog_client_record
     898: f9400280     	ldr	x0, [x20]
		0000000000000898:  R_AARCH64_LDST64_ABS_LO12_NC	client_5
     89c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000089c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc5
     8a0: 91000021     	add	x1, x1, #0x0
		00000000000008a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc5
     8a4: 94000000     	bl	0x8a4 <zlog_test5_thread+0x4c>
		00000000000008a4:  R_AARCH64_CALL26	zlog_client_record
     8a8: f9400280     	ldr	x0, [x20]
		00000000000008a8:  R_AARCH64_LDST64_ABS_LO12_NC	client_5
     8ac: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d7
     8b0: 91000021     	add	x1, x1, #0x0
		00000000000008b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d7
     8b4: 94000000     	bl	0x8b4 <zlog_test5_thread+0x5c>
		00000000000008b4:  R_AARCH64_CALL26	zlog_client_record
     8b8: f9400280     	ldr	x0, [x20]
		00000000000008b8:  R_AARCH64_LDST64_ABS_LO12_NC	client_5
     8bc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x573
     8c0: 91000021     	add	x1, x1, #0x0
		00000000000008c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x573
     8c4: 94000000     	bl	0x8c4 <zlog_test5_thread+0x6c>
		00000000000008c4:  R_AARCH64_CALL26	zlog_client_record
     8c8: f9400280     	ldr	x0, [x20]
		00000000000008c8:  R_AARCH64_LDST64_ABS_LO12_NC	client_5
     8cc: 528000a1     	mov	w1, #0x5                // =5
     8d0: 94000000     	bl	0x8d0 <zlog_test5_thread+0x78>
		00000000000008d0:  R_AARCH64_CALL26	zlog_client_notify
     8d4: f9400288     	ldr	x8, [x20]
		00000000000008d4:  R_AARCH64_LDST64_ABS_LO12_NC	client_5
     8d8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4af
     8dc: 91000000     	add	x0, x0, #0x0
		00000000000008dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4af
     8e0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e8
     8e4: 91000021     	add	x1, x1, #0x0
		00000000000008e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e8
     8e8: 91001102     	add	x2, x8, #0x4
     8ec: 94000000     	bl	0x8ec <zlog_test5_thread+0x94>
		00000000000008ec:  R_AARCH64_CALL26	_printk
     8f0: 529999a8     	mov	w8, #0xcccd             // =52429
     8f4: 52807d09     	mov	w9, #0x3e8              // =1000
     8f8: 9000000a     	adrp	x10, 0x0 <.text>
		00000000000008f8:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test5_workqueue
     8fc: 72b99988     	movk	w8, #0xcccc, lsl #16
     900: 9ba87e68     	umull	x8, w19, w8
     904: d362fd08     	lsr	x8, x8, #34
     908: 0b080908     	add	w8, w8, w8, lsl #2
     90c: 4b080268     	sub	w8, w19, w8
     910: f9400153     	ldr	x19, [x10]
		0000000000000910:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test5_workqueue
     914: 1b097d00     	mul	w0, w8, w9
     918: 94000000     	bl	0x918 <zlog_test5_thread+0xc0>
		0000000000000918:  R_AARCH64_CALL26	__msecs_to_jiffies
     91c: aa0003e3     	mov	x3, x0
     920: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000920:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test5_work
     924: 91000042     	add	x2, x2, #0x0
		0000000000000924:  R_AARCH64_ADD_ABS_LO12_NC	zlog_test5_work
     928: 52800400     	mov	w0, #0x20               // =32
     92c: aa1303e1     	mov	x1, x19
     930: 94000000     	bl	0x930 <zlog_test5_thread+0xd8>
		0000000000000930:  R_AARCH64_CALL26	queue_delayed_work_on
     934: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     938: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     93c: d50323bf     	autiasp
     940: d65f03c0     	ret
