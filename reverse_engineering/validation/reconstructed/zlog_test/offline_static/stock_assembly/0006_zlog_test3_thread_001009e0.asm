
/input/zlog_test.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000678 <zlog_test3_thread>:
     678: d503233f     	paciasp
     67c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     680: a9014ff4     	stp	x20, x19, [sp, #0x10]
     684: 910003fd     	mov	x29, sp
     688: 94000000     	bl	0x688 <zlog_test3_thread+0x10>
		0000000000000688:  R_AARCH64_CALL26	get_random_u32
     68c: 90000014     	adrp	x20, 0x0 <.text>
		000000000000068c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
     690: 2a0003f3     	mov	w19, w0
     694: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000694:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x67d
     698: 91000021     	add	x1, x1, #0x0
		0000000000000698:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x67d
     69c: f9400288     	ldr	x8, [x20]
		000000000000069c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x18
     6a0: aa0803e0     	mov	x0, x8
     6a4: 94000000     	bl	0x6a4 <zlog_test3_thread+0x2c>
		00000000000006a4:  R_AARCH64_CALL26	zlog_client_record
     6a8: f9400280     	ldr	x0, [x20]
		00000000000006a8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x18
     6ac: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16e
     6b0: 91000021     	add	x1, x1, #0x0
		00000000000006b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16e
     6b4: 94000000     	bl	0x6b4 <zlog_test3_thread+0x3c>
		00000000000006b4:  R_AARCH64_CALL26	zlog_client_record
     6b8: f9400280     	ldr	x0, [x20]
		00000000000006b8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x18
     6bc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d0
     6c0: 91000021     	add	x1, x1, #0x0
		00000000000006c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d0
     6c4: 94000000     	bl	0x6c4 <zlog_test3_thread+0x4c>
		00000000000006c4:  R_AARCH64_CALL26	zlog_client_record
     6c8: f9400280     	ldr	x0, [x20]
		00000000000006c8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x18
     6cc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x47e
     6d0: 91000021     	add	x1, x1, #0x0
		00000000000006d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x47e
     6d4: 94000000     	bl	0x6d4 <zlog_test3_thread+0x5c>
		00000000000006d4:  R_AARCH64_CALL26	zlog_client_record
     6d8: f9400280     	ldr	x0, [x20]
		00000000000006d8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x18
     6dc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e
     6e0: 91000021     	add	x1, x1, #0x0
		00000000000006e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e
     6e4: 94000000     	bl	0x6e4 <zlog_test3_thread+0x6c>
		00000000000006e4:  R_AARCH64_CALL26	zlog_client_record
     6e8: f9400280     	ldr	x0, [x20]
		00000000000006e8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x18
     6ec: 528000a1     	mov	w1, #0x5                // =5
     6f0: 94000000     	bl	0x6f0 <zlog_test3_thread+0x78>
		00000000000006f0:  R_AARCH64_CALL26	zlog_client_notify
     6f4: f9400288     	ldr	x8, [x20]
		00000000000006f4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x18
     6f8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4af
     6fc: 91000000     	add	x0, x0, #0x0
		00000000000006fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4af
     700: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000700:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56c
     704: 91000021     	add	x1, x1, #0x0
		0000000000000704:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56c
     708: 91001102     	add	x2, x8, #0x4
     70c: 94000000     	bl	0x70c <zlog_test3_thread+0x94>
		000000000000070c:  R_AARCH64_CALL26	_printk
     710: 529999a8     	mov	w8, #0xcccd             // =52429
     714: 52807d09     	mov	w9, #0x3e8              // =1000
     718: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000718:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x110
     71c: 72b99988     	movk	w8, #0xcccc, lsl #16
     720: 9ba87e68     	umull	x8, w19, w8
     724: d362fd08     	lsr	x8, x8, #34
     728: 0b080908     	add	w8, w8, w8, lsl #2
     72c: 4b080268     	sub	w8, w19, w8
     730: f9400153     	ldr	x19, [x10]
		0000000000000730:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x110
     734: 1b097d00     	mul	w0, w8, w9
     738: 94000000     	bl	0x738 <zlog_test3_thread+0xc0>
		0000000000000738:  R_AARCH64_CALL26	__msecs_to_jiffies
     73c: aa0003e3     	mov	x3, x0
     740: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000740:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x118
     744: 91000042     	add	x2, x2, #0x0
		0000000000000744:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x118
     748: 52800400     	mov	w0, #0x20               // =32
     74c: aa1303e1     	mov	x1, x19
     750: 94000000     	bl	0x750 <zlog_test3_thread+0xd8>
		0000000000000750:  R_AARCH64_CALL26	queue_delayed_work_on
     754: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     758: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     75c: d50323bf     	autiasp
     760: d65f03c0     	ret
