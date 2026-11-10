
/input/zlog_test_candidate.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000005c0 <zlog_test2_thread>:
     5c0: d503233f     	paciasp
     5c4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     5c8: f9000bf5     	str	x21, [sp, #0x10]
     5cc: a9024ff4     	stp	x20, x19, [sp, #0x20]
     5d0: 910003fd     	mov	x29, sp
     5d4: 94000000     	bl	0x5d4 <zlog_test2_thread+0x14>
		00000000000005d4:  R_AARCH64_CALL26	get_random_u32
     5d8: 90000014     	adrp	x20, 0x0 <.text>
		00000000000005d8:  R_AARCH64_ADR_PREL_PG_HI21	client_2
     5dc: 2a0003f3     	mov	w19, w0
     5e0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x388
     5e4: 91000021     	add	x1, x1, #0x0
		00000000000005e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x388
     5e8: f9400288     	ldr	x8, [x20]
		00000000000005e8:  R_AARCH64_LDST64_ABS_LO12_NC	client_2
     5ec: aa0803e0     	mov	x0, x8
     5f0: 94000000     	bl	0x5f0 <zlog_test2_thread+0x30>
		00000000000005f0:  R_AARCH64_CALL26	zlog_client_record
     5f4: f9400280     	ldr	x0, [x20]
		00000000000005f4:  R_AARCH64_LDST64_ABS_LO12_NC	client_2
     5f8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f
     5fc: 91000021     	add	x1, x1, #0x0
		00000000000005fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f
     600: 94000000     	bl	0x600 <zlog_test2_thread+0x40>
		0000000000000600:  R_AARCH64_CALL26	zlog_client_record
     604: f9400280     	ldr	x0, [x20]
		0000000000000604:  R_AARCH64_LDST64_ABS_LO12_NC	client_2
     608: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000608:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ba
     60c: 91000021     	add	x1, x1, #0x0
		000000000000060c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ba
     610: 94000000     	bl	0x610 <zlog_test2_thread+0x50>
		0000000000000610:  R_AARCH64_CALL26	zlog_client_record
     614: f9400280     	ldr	x0, [x20]
		0000000000000614:  R_AARCH64_LDST64_ABS_LO12_NC	client_2
     618: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000618:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11c
     61c: 91000021     	add	x1, x1, #0x0
		000000000000061c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11c
     620: 94000000     	bl	0x620 <zlog_test2_thread+0x60>
		0000000000000620:  R_AARCH64_CALL26	zlog_client_record
     624: f9400280     	ldr	x0, [x20]
		0000000000000624:  R_AARCH64_LDST64_ABS_LO12_NC	client_2
     628: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000628:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ae
     62c: 91000021     	add	x1, x1, #0x0
		000000000000062c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ae
     630: 94000000     	bl	0x630 <zlog_test2_thread+0x70>
		0000000000000630:  R_AARCH64_CALL26	zlog_client_record
     634: f9400280     	ldr	x0, [x20]
		0000000000000634:  R_AARCH64_LDST64_ABS_LO12_NC	client_2
     638: 528000a1     	mov	w1, #0x5                // =5
     63c: 94000000     	bl	0x63c <zlog_test2_thread+0x7c>
		000000000000063c:  R_AARCH64_CALL26	zlog_client_notify
     640: f9400288     	ldr	x8, [x20]
		0000000000000640:  R_AARCH64_LDST64_ABS_LO12_NC	client_2
     644: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000644:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b0
     648: 91000000     	add	x0, x0, #0x0
		0000000000000648:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b0
     64c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000064c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     650: 91000021     	add	x1, x1, #0x0
		0000000000000650:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     654: 91001102     	add	x2, x8, #0x4
     658: 94000000     	bl	0x658 <zlog_test2_thread+0x98>
		0000000000000658:  R_AARCH64_CALL26	_printk
     65c: 529999a8     	mov	w8, #0xcccd             // =52429
     660: 52807d09     	mov	w9, #0x3e8              // =1000
     664: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000664:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test2_workqueue
     668: 72b99988     	movk	w8, #0xcccc, lsl #16
     66c: 9ba87e68     	umull	x8, w19, w8
     670: d362fd08     	lsr	x8, x8, #34
     674: 0b080908     	add	w8, w8, w8, lsl #2
     678: 4b080268     	sub	w8, w19, w8
     67c: f9400153     	ldr	x19, [x10]
		000000000000067c:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test2_workqueue
     680: 1b097d00     	mul	w0, w8, w9
     684: 94000000     	bl	0x684 <zlog_test2_thread+0xc4>
		0000000000000684:  R_AARCH64_CALL26	__msecs_to_jiffies
     688: aa0003f4     	mov	x20, x0
     68c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000068c:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     690: 91000000     	add	x0, x0, #0x0
		0000000000000690:  R_AARCH64_ADD_ABS_LO12_NC	.bss
     694: 94000000     	bl	0x694 <zlog_test2_thread+0xd4>
		0000000000000694:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
     698: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000698:  R_AARCH64_ADR_PREL_PG_HI21	zlog_enable_test_flag
     69c: aa0003f5     	mov	x21, x0
     6a0: b9400108     	ldr	w8, [x8]
		00000000000006a0:  R_AARCH64_LDST32_ABS_LO12_NC	zlog_enable_test_flag
     6a4: 340000e8     	cbz	w8, 0x6c0 <zlog_test2_thread+0x100>
     6a8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000006a8:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test2_work
     6ac: 91000042     	add	x2, x2, #0x0
		00000000000006ac:  R_AARCH64_ADD_ABS_LO12_NC	zlog_test2_work
     6b0: 52800400     	mov	w0, #0x20               // =32
     6b4: aa1303e1     	mov	x1, x19
     6b8: aa1403e3     	mov	x3, x20
     6bc: 94000000     	bl	0x6bc <zlog_test2_thread+0xfc>
		00000000000006bc:  R_AARCH64_CALL26	queue_delayed_work_on
     6c0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006c0:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     6c4: 91000000     	add	x0, x0, #0x0
		00000000000006c4:  R_AARCH64_ADD_ABS_LO12_NC	.bss
     6c8: aa1503e1     	mov	x1, x21
     6cc: 94000000     	bl	0x6cc <zlog_test2_thread+0x10c>
		00000000000006cc:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
     6d0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     6d4: f9400bf5     	ldr	x21, [sp, #0x10]
     6d8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     6dc: d50323bf     	autiasp
     6e0: d65f03c0     	ret
