
/input/zlog_test_candidate.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000006e8 <zlog_test3_thread>:
     6e8: d503233f     	paciasp
     6ec: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     6f0: f9000bf5     	str	x21, [sp, #0x10]
     6f4: a9024ff4     	stp	x20, x19, [sp, #0x20]
     6f8: 910003fd     	mov	x29, sp
     6fc: 94000000     	bl	0x6fc <zlog_test3_thread+0x14>
		00000000000006fc:  R_AARCH64_CALL26	get_random_u32
     700: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000700:  R_AARCH64_ADR_PREL_PG_HI21	client_3
     704: 2a0003f3     	mov	w19, w0
     708: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000708:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x654
     70c: 91000021     	add	x1, x1, #0x0
		000000000000070c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x654
     710: f9400288     	ldr	x8, [x20]
		0000000000000710:  R_AARCH64_LDST64_ABS_LO12_NC	client_3
     714: aa0803e0     	mov	x0, x8
     718: 94000000     	bl	0x718 <zlog_test3_thread+0x30>
		0000000000000718:  R_AARCH64_CALL26	zlog_client_record
     71c: f9400280     	ldr	x0, [x20]
		000000000000071c:  R_AARCH64_LDST64_ABS_LO12_NC	client_3
     720: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000720:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x160
     724: 91000021     	add	x1, x1, #0x0
		0000000000000724:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x160
     728: 94000000     	bl	0x728 <zlog_test3_thread+0x40>
		0000000000000728:  R_AARCH64_CALL26	zlog_client_record
     72c: f9400280     	ldr	x0, [x20]
		000000000000072c:  R_AARCH64_LDST64_ABS_LO12_NC	client_3
     730: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000730:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a0
     734: 91000021     	add	x1, x1, #0x0
		0000000000000734:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a0
     738: 94000000     	bl	0x738 <zlog_test3_thread+0x50>
		0000000000000738:  R_AARCH64_CALL26	zlog_client_record
     73c: f9400280     	ldr	x0, [x20]
		000000000000073c:  R_AARCH64_LDST64_ABS_LO12_NC	client_3
     740: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000740:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44e
     744: 91000021     	add	x1, x1, #0x0
		0000000000000744:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44e
     748: 94000000     	bl	0x748 <zlog_test3_thread+0x60>
		0000000000000748:  R_AARCH64_CALL26	zlog_client_record
     74c: f9400280     	ldr	x0, [x20]
		000000000000074c:  R_AARCH64_LDST64_ABS_LO12_NC	client_3
     750: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000750:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa2
     754: 91000021     	add	x1, x1, #0x0
		0000000000000754:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa2
     758: 94000000     	bl	0x758 <zlog_test3_thread+0x70>
		0000000000000758:  R_AARCH64_CALL26	zlog_client_record
     75c: f9400280     	ldr	x0, [x20]
		000000000000075c:  R_AARCH64_LDST64_ABS_LO12_NC	client_3
     760: 528000a1     	mov	w1, #0x5                // =5
     764: 94000000     	bl	0x764 <zlog_test3_thread+0x7c>
		0000000000000764:  R_AARCH64_CALL26	zlog_client_notify
     768: f9400288     	ldr	x8, [x20]
		0000000000000768:  R_AARCH64_LDST64_ABS_LO12_NC	client_3
     76c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000076c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b0
     770: 91000000     	add	x0, x0, #0x0
		0000000000000770:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b0
     774: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000774:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x50b
     778: 91000021     	add	x1, x1, #0x0
		0000000000000778:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x50b
     77c: 91001102     	add	x2, x8, #0x4
     780: 94000000     	bl	0x780 <zlog_test3_thread+0x98>
		0000000000000780:  R_AARCH64_CALL26	_printk
     784: 529999a8     	mov	w8, #0xcccd             // =52429
     788: 52807d09     	mov	w9, #0x3e8              // =1000
     78c: 9000000a     	adrp	x10, 0x0 <.text>
		000000000000078c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test3_workqueue
     790: 72b99988     	movk	w8, #0xcccc, lsl #16
     794: 9ba87e68     	umull	x8, w19, w8
     798: d362fd08     	lsr	x8, x8, #34
     79c: 0b080908     	add	w8, w8, w8, lsl #2
     7a0: 4b080268     	sub	w8, w19, w8
     7a4: f9400153     	ldr	x19, [x10]
		00000000000007a4:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test3_workqueue
     7a8: 1b097d00     	mul	w0, w8, w9
     7ac: 94000000     	bl	0x7ac <zlog_test3_thread+0xc4>
		00000000000007ac:  R_AARCH64_CALL26	__msecs_to_jiffies
     7b0: aa0003f4     	mov	x20, x0
     7b4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007b4:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     7b8: 91000000     	add	x0, x0, #0x0
		00000000000007b8:  R_AARCH64_ADD_ABS_LO12_NC	.bss
     7bc: 94000000     	bl	0x7bc <zlog_test3_thread+0xd4>
		00000000000007bc:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
     7c0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000007c0:  R_AARCH64_ADR_PREL_PG_HI21	zlog_enable_test_flag
     7c4: aa0003f5     	mov	x21, x0
     7c8: b9400108     	ldr	w8, [x8]
		00000000000007c8:  R_AARCH64_LDST32_ABS_LO12_NC	zlog_enable_test_flag
     7cc: 340000e8     	cbz	w8, 0x7e8 <zlog_test3_thread+0x100>
     7d0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000007d0:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test3_work
     7d4: 91000042     	add	x2, x2, #0x0
		00000000000007d4:  R_AARCH64_ADD_ABS_LO12_NC	zlog_test3_work
     7d8: 52800400     	mov	w0, #0x20               // =32
     7dc: aa1303e1     	mov	x1, x19
     7e0: aa1403e3     	mov	x3, x20
     7e4: 94000000     	bl	0x7e4 <zlog_test3_thread+0xfc>
		00000000000007e4:  R_AARCH64_CALL26	queue_delayed_work_on
     7e8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007e8:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     7ec: 91000000     	add	x0, x0, #0x0
		00000000000007ec:  R_AARCH64_ADD_ABS_LO12_NC	.bss
     7f0: aa1503e1     	mov	x1, x21
     7f4: 94000000     	bl	0x7f4 <zlog_test3_thread+0x10c>
		00000000000007f4:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
     7f8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     7fc: f9400bf5     	ldr	x21, [sp, #0x10]
     800: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     804: d50323bf     	autiasp
     808: d65f03c0     	ret
