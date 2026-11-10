
/input/zlog_test_candidate.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000810 <zlog_test4_thread>:
     810: d503233f     	paciasp
     814: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     818: f9000bf5     	str	x21, [sp, #0x10]
     81c: a9024ff4     	stp	x20, x19, [sp, #0x20]
     820: 910003fd     	mov	x29, sp
     824: 94000000     	bl	0x824 <zlog_test4_thread+0x14>
		0000000000000824:  R_AARCH64_CALL26	get_random_u32
     828: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000828:  R_AARCH64_ADR_PREL_PG_HI21	client_4
     82c: 2a0003f3     	mov	w19, w0
     830: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000830:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x140
     834: 91000021     	add	x1, x1, #0x0
		0000000000000834:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x140
     838: f9400288     	ldr	x8, [x20]
		0000000000000838:  R_AARCH64_LDST64_ABS_LO12_NC	client_4
     83c: aa0803e0     	mov	x0, x8
     840: 94000000     	bl	0x840 <zlog_test4_thread+0x30>
		0000000000000840:  R_AARCH64_CALL26	zlog_client_record
     844: f9400280     	ldr	x0, [x20]
		0000000000000844:  R_AARCH64_LDST64_ABS_LO12_NC	client_4
     848: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000848:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d9
     84c: 91000021     	add	x1, x1, #0x0
		000000000000084c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d9
     850: 94000000     	bl	0x850 <zlog_test4_thread+0x40>
		0000000000000850:  R_AARCH64_CALL26	zlog_client_record
     854: f9400280     	ldr	x0, [x20]
		0000000000000854:  R_AARCH64_LDST64_ABS_LO12_NC	client_4
     858: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000858:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbc
     85c: 91000021     	add	x1, x1, #0x0
		000000000000085c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbc
     860: 94000000     	bl	0x860 <zlog_test4_thread+0x50>
		0000000000000860:  R_AARCH64_CALL26	zlog_client_record
     864: f9400280     	ldr	x0, [x20]
		0000000000000864:  R_AARCH64_LDST64_ABS_LO12_NC	client_4
     868: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000868:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f8
     86c: 91000021     	add	x1, x1, #0x0
		000000000000086c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f8
     870: 94000000     	bl	0x870 <zlog_test4_thread+0x60>
		0000000000000870:  R_AARCH64_CALL26	zlog_client_record
     874: f9400280     	ldr	x0, [x20]
		0000000000000874:  R_AARCH64_LDST64_ABS_LO12_NC	client_4
     878: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000878:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x560
     87c: 91000021     	add	x1, x1, #0x0
		000000000000087c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x560
     880: 94000000     	bl	0x880 <zlog_test4_thread+0x70>
		0000000000000880:  R_AARCH64_CALL26	zlog_client_record
     884: f9400280     	ldr	x0, [x20]
		0000000000000884:  R_AARCH64_LDST64_ABS_LO12_NC	client_4
     888: 528000a1     	mov	w1, #0x5                // =5
     88c: 94000000     	bl	0x88c <zlog_test4_thread+0x7c>
		000000000000088c:  R_AARCH64_CALL26	zlog_client_notify
     890: f9400288     	ldr	x8, [x20]
		0000000000000890:  R_AARCH64_LDST64_ABS_LO12_NC	client_4
     894: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000894:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b0
     898: 91000000     	add	x0, x0, #0x0
		0000000000000898:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b0
     89c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000089c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x300
     8a0: 91000021     	add	x1, x1, #0x0
		00000000000008a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x300
     8a4: 91001102     	add	x2, x8, #0x4
     8a8: 94000000     	bl	0x8a8 <zlog_test4_thread+0x98>
		00000000000008a8:  R_AARCH64_CALL26	_printk
     8ac: 529999a8     	mov	w8, #0xcccd             // =52429
     8b0: 52807d09     	mov	w9, #0x3e8              // =1000
     8b4: 9000000a     	adrp	x10, 0x0 <.text>
		00000000000008b4:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test4_workqueue
     8b8: 72b99988     	movk	w8, #0xcccc, lsl #16
     8bc: 9ba87e68     	umull	x8, w19, w8
     8c0: d362fd08     	lsr	x8, x8, #34
     8c4: 0b080908     	add	w8, w8, w8, lsl #2
     8c8: 4b080268     	sub	w8, w19, w8
     8cc: f9400153     	ldr	x19, [x10]
		00000000000008cc:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test4_workqueue
     8d0: 1b097d00     	mul	w0, w8, w9
     8d4: 94000000     	bl	0x8d4 <zlog_test4_thread+0xc4>
		00000000000008d4:  R_AARCH64_CALL26	__msecs_to_jiffies
     8d8: aa0003f4     	mov	x20, x0
     8dc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008dc:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     8e0: 91000000     	add	x0, x0, #0x0
		00000000000008e0:  R_AARCH64_ADD_ABS_LO12_NC	.bss
     8e4: 94000000     	bl	0x8e4 <zlog_test4_thread+0xd4>
		00000000000008e4:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
     8e8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000008e8:  R_AARCH64_ADR_PREL_PG_HI21	zlog_enable_test_flag
     8ec: aa0003f5     	mov	x21, x0
     8f0: b9400108     	ldr	w8, [x8]
		00000000000008f0:  R_AARCH64_LDST32_ABS_LO12_NC	zlog_enable_test_flag
     8f4: 340000e8     	cbz	w8, 0x910 <zlog_test4_thread+0x100>
     8f8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000008f8:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test4_work
     8fc: 91000042     	add	x2, x2, #0x0
		00000000000008fc:  R_AARCH64_ADD_ABS_LO12_NC	zlog_test4_work
     900: 52800400     	mov	w0, #0x20               // =32
     904: aa1303e1     	mov	x1, x19
     908: aa1403e3     	mov	x3, x20
     90c: 94000000     	bl	0x90c <zlog_test4_thread+0xfc>
		000000000000090c:  R_AARCH64_CALL26	queue_delayed_work_on
     910: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000910:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     914: 91000000     	add	x0, x0, #0x0
		0000000000000914:  R_AARCH64_ADD_ABS_LO12_NC	.bss
     918: aa1503e1     	mov	x1, x21
     91c: 94000000     	bl	0x91c <zlog_test4_thread+0x10c>
		000000000000091c:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
     920: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     924: f9400bf5     	ldr	x21, [sp, #0x10]
     928: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     92c: d50323bf     	autiasp
     930: d65f03c0     	ret
