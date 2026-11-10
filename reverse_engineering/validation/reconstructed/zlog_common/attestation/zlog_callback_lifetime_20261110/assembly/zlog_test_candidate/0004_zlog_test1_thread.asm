
/input/zlog_test_candidate.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000498 <zlog_test1_thread>:
     498: d503233f     	paciasp
     49c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     4a0: f9000bf5     	str	x21, [sp, #0x10]
     4a4: a9024ff4     	stp	x20, x19, [sp, #0x20]
     4a8: 910003fd     	mov	x29, sp
     4ac: 94000000     	bl	0x4ac <zlog_test1_thread+0x14>
		00000000000004ac:  R_AARCH64_CALL26	get_random_u32
     4b0: 90000014     	adrp	x20, 0x0 <.text>
		00000000000004b0:  R_AARCH64_ADR_PREL_PG_HI21	client_1
     4b4: 2a0003f3     	mov	w19, w0
     4b8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d2
     4bc: 91000021     	add	x1, x1, #0x0
		00000000000004bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d2
     4c0: f9400288     	ldr	x8, [x20]
		00000000000004c0:  R_AARCH64_LDST64_ABS_LO12_NC	client_1
     4c4: aa0803e0     	mov	x0, x8
     4c8: 94000000     	bl	0x4c8 <zlog_test1_thread+0x30>
		00000000000004c8:  R_AARCH64_CALL26	zlog_client_record
     4cc: f9400280     	ldr	x0, [x20]
		00000000000004cc:  R_AARCH64_LDST64_ABS_LO12_NC	client_1
     4d0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x217
     4d4: 91000021     	add	x1, x1, #0x0
		00000000000004d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x217
     4d8: 94000000     	bl	0x4d8 <zlog_test1_thread+0x40>
		00000000000004d8:  R_AARCH64_CALL26	zlog_client_record
     4dc: f9400280     	ldr	x0, [x20]
		00000000000004dc:  R_AARCH64_LDST64_ABS_LO12_NC	client_1
     4e0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e9
     4e4: 91000021     	add	x1, x1, #0x0
		00000000000004e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e9
     4e8: 94000000     	bl	0x4e8 <zlog_test1_thread+0x50>
		00000000000004e8:  R_AARCH64_CALL26	zlog_client_record
     4ec: f9400280     	ldr	x0, [x20]
		00000000000004ec:  R_AARCH64_LDST64_ABS_LO12_NC	client_1
     4f0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x371
     4f4: 91000021     	add	x1, x1, #0x0
		00000000000004f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x371
     4f8: 94000000     	bl	0x4f8 <zlog_test1_thread+0x60>
		00000000000004f8:  R_AARCH64_CALL26	zlog_client_record
     4fc: f9400280     	ldr	x0, [x20]
		00000000000004fc:  R_AARCH64_LDST64_ABS_LO12_NC	client_1
     500: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000500:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x267
     504: 91000021     	add	x1, x1, #0x0
		0000000000000504:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x267
     508: 94000000     	bl	0x508 <zlog_test1_thread+0x70>
		0000000000000508:  R_AARCH64_CALL26	zlog_client_record
     50c: f9400280     	ldr	x0, [x20]
		000000000000050c:  R_AARCH64_LDST64_ABS_LO12_NC	client_1
     510: 528000a1     	mov	w1, #0x5                // =5
     514: 94000000     	bl	0x514 <zlog_test1_thread+0x7c>
		0000000000000514:  R_AARCH64_CALL26	zlog_client_notify
     518: f9400288     	ldr	x8, [x20]
		0000000000000518:  R_AARCH64_LDST64_ABS_LO12_NC	client_1
     51c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000051c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b0
     520: 91000000     	add	x0, x0, #0x0
		0000000000000520:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b0
     524: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000524:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59c
     528: 91000021     	add	x1, x1, #0x0
		0000000000000528:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59c
     52c: 91001102     	add	x2, x8, #0x4
     530: 94000000     	bl	0x530 <zlog_test1_thread+0x98>
		0000000000000530:  R_AARCH64_CALL26	_printk
     534: 529999a8     	mov	w8, #0xcccd             // =52429
     538: 52807d09     	mov	w9, #0x3e8              // =1000
     53c: 9000000a     	adrp	x10, 0x0 <.text>
		000000000000053c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test1_workqueue
     540: 72b99988     	movk	w8, #0xcccc, lsl #16
     544: 9ba87e68     	umull	x8, w19, w8
     548: d362fd08     	lsr	x8, x8, #34
     54c: 0b080908     	add	w8, w8, w8, lsl #2
     550: 4b080268     	sub	w8, w19, w8
     554: f9400153     	ldr	x19, [x10]
		0000000000000554:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test1_workqueue
     558: 1b097d00     	mul	w0, w8, w9
     55c: 94000000     	bl	0x55c <zlog_test1_thread+0xc4>
		000000000000055c:  R_AARCH64_CALL26	__msecs_to_jiffies
     560: aa0003f4     	mov	x20, x0
     564: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000564:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     568: 91000000     	add	x0, x0, #0x0
		0000000000000568:  R_AARCH64_ADD_ABS_LO12_NC	.bss
     56c: 94000000     	bl	0x56c <zlog_test1_thread+0xd4>
		000000000000056c:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
     570: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000570:  R_AARCH64_ADR_PREL_PG_HI21	zlog_enable_test_flag
     574: aa0003f5     	mov	x21, x0
     578: b9400108     	ldr	w8, [x8]
		0000000000000578:  R_AARCH64_LDST32_ABS_LO12_NC	zlog_enable_test_flag
     57c: 340000e8     	cbz	w8, 0x598 <zlog_test1_thread+0x100>
     580: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000580:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test1_work
     584: 91000042     	add	x2, x2, #0x0
		0000000000000584:  R_AARCH64_ADD_ABS_LO12_NC	zlog_test1_work
     588: 52800400     	mov	w0, #0x20               // =32
     58c: aa1303e1     	mov	x1, x19
     590: aa1403e3     	mov	x3, x20
     594: 94000000     	bl	0x594 <zlog_test1_thread+0xfc>
		0000000000000594:  R_AARCH64_CALL26	queue_delayed_work_on
     598: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000598:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     59c: 91000000     	add	x0, x0, #0x0
		000000000000059c:  R_AARCH64_ADD_ABS_LO12_NC	.bss
     5a0: aa1503e1     	mov	x1, x21
     5a4: 94000000     	bl	0x5a4 <zlog_test1_thread+0x10c>
		00000000000005a4:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
     5a8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     5ac: f9400bf5     	ldr	x21, [sp, #0x10]
     5b0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     5b4: d50323bf     	autiasp
     5b8: d65f03c0     	ret
