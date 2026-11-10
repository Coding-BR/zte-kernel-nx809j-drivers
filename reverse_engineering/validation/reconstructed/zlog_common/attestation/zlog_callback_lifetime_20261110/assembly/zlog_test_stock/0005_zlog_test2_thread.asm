
/input/zlog_test.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000588 <zlog_test2_thread>:
     588: d503233f     	paciasp
     58c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     590: a9014ff4     	stp	x20, x19, [sp, #0x10]
     594: 910003fd     	mov	x29, sp
     598: 94000000     	bl	0x598 <zlog_test2_thread+0x10>
		0000000000000598:  R_AARCH64_CALL26	get_random_u32
     59c: 90000014     	adrp	x20, 0x0 <.text>
		000000000000059c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
     5a0: 2a0003f3     	mov	w19, w0
     5a4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b8
     5a8: 91000021     	add	x1, x1, #0x0
		00000000000005a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b8
     5ac: f9400288     	ldr	x8, [x20]
		00000000000005ac:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     5b0: aa0803e0     	mov	x0, x8
     5b4: 94000000     	bl	0x5b4 <zlog_test2_thread+0x2c>
		00000000000005b4:  R_AARCH64_CALL26	zlog_client_record
     5b8: f9400280     	ldr	x0, [x20]
		00000000000005b8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     5bc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x61
     5c0: 91000021     	add	x1, x1, #0x0
		00000000000005c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x61
     5c4: 94000000     	bl	0x5c4 <zlog_test2_thread+0x3c>
		00000000000005c4:  R_AARCH64_CALL26	zlog_client_record
     5c8: f9400280     	ldr	x0, [x20]
		00000000000005c8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     5cc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d3
     5d0: 91000021     	add	x1, x1, #0x0
		00000000000005d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d3
     5d4: 94000000     	bl	0x5d4 <zlog_test2_thread+0x4c>
		00000000000005d4:  R_AARCH64_CALL26	zlog_client_record
     5d8: f9400280     	ldr	x0, [x20]
		00000000000005d8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     5dc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10b
     5e0: 91000021     	add	x1, x1, #0x0
		00000000000005e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10b
     5e4: 94000000     	bl	0x5e4 <zlog_test2_thread+0x5c>
		00000000000005e4:  R_AARCH64_CALL26	zlog_client_record
     5e8: f9400280     	ldr	x0, [x20]
		00000000000005e8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     5ec: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x614
     5f0: 91000021     	add	x1, x1, #0x0
		00000000000005f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x614
     5f4: 94000000     	bl	0x5f4 <zlog_test2_thread+0x6c>
		00000000000005f4:  R_AARCH64_CALL26	zlog_client_record
     5f8: f9400280     	ldr	x0, [x20]
		00000000000005f8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     5fc: 528000a1     	mov	w1, #0x5                // =5
     600: 94000000     	bl	0x600 <zlog_test2_thread+0x78>
		0000000000000600:  R_AARCH64_CALL26	zlog_client_notify
     604: f9400288     	ldr	x8, [x20]
		0000000000000604:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     608: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000608:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4af
     60c: 91000000     	add	x0, x0, #0x0
		000000000000060c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4af
     610: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000610:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7
     614: 91000021     	add	x1, x1, #0x0
		0000000000000614:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7
     618: 91001102     	add	x2, x8, #0x4
     61c: 94000000     	bl	0x61c <zlog_test2_thread+0x94>
		000000000000061c:  R_AARCH64_CALL26	_printk
     620: 529999a8     	mov	w8, #0xcccd             // =52429
     624: 52807d09     	mov	w9, #0x3e8              // =1000
     628: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000628:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xa0
     62c: 72b99988     	movk	w8, #0xcccc, lsl #16
     630: 9ba87e68     	umull	x8, w19, w8
     634: d362fd08     	lsr	x8, x8, #34
     638: 0b080908     	add	w8, w8, w8, lsl #2
     63c: 4b080268     	sub	w8, w19, w8
     640: f9400153     	ldr	x19, [x10]
		0000000000000640:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0xa0
     644: 1b097d00     	mul	w0, w8, w9
     648: 94000000     	bl	0x648 <zlog_test2_thread+0xc0>
		0000000000000648:  R_AARCH64_CALL26	__msecs_to_jiffies
     64c: aa0003e3     	mov	x3, x0
     650: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000650:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xa8
     654: 91000042     	add	x2, x2, #0x0
		0000000000000654:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0xa8
     658: 52800400     	mov	w0, #0x20               // =32
     65c: aa1303e1     	mov	x1, x19
     660: 94000000     	bl	0x660 <zlog_test2_thread+0xd8>
		0000000000000660:  R_AARCH64_CALL26	queue_delayed_work_on
     664: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     668: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     66c: d50323bf     	autiasp
     670: d65f03c0     	ret
