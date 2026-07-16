
/input/zlog_test.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000498 <zlog_test1_thread>:
     498: d503233f     	paciasp
     49c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     4a0: a9014ff4     	stp	x20, x19, [sp, #0x10]
     4a4: 910003fd     	mov	x29, sp
     4a8: 94000000     	bl	0x4a8 <zlog_test1_thread+0x10>
		00000000000004a8:  R_AARCH64_CALL26	get_random_u32
     4ac: 90000014     	adrp	x20, 0x0 <.text>
		00000000000004ac:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     4b0: 2a0003f3     	mov	w19, w0
     4b4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ee
     4b8: 91000021     	add	x1, x1, #0x0
		00000000000004b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ee
     4bc: f9400288     	ldr	x8, [x20]
		00000000000004bc:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
     4c0: aa0803e0     	mov	x0, x8
     4c4: 94000000     	bl	0x4c4 <zlog_test1_thread+0x2c>
		00000000000004c4:  R_AARCH64_CALL26	zlog_client_record
     4c8: f9400280     	ldr	x0, [x20]
		00000000000004c8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
     4cc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x238
     4d0: 91000021     	add	x1, x1, #0x0
		00000000000004d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x238
     4d4: 94000000     	bl	0x4d4 <zlog_test1_thread+0x3c>
		00000000000004d4:  R_AARCH64_CALL26	zlog_client_record
     4d8: f9400280     	ldr	x0, [x20]
		00000000000004d8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
     4dc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x305
     4e0: 91000021     	add	x1, x1, #0x0
		00000000000004e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x305
     4e4: 94000000     	bl	0x4e4 <zlog_test1_thread+0x4c>
		00000000000004e4:  R_AARCH64_CALL26	zlog_client_record
     4e8: f9400280     	ldr	x0, [x20]
		00000000000004e8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
     4ec: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a1
     4f0: 91000021     	add	x1, x1, #0x0
		00000000000004f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a1
     4f4: 94000000     	bl	0x4f4 <zlog_test1_thread+0x5c>
		00000000000004f4:  R_AARCH64_CALL26	zlog_client_record
     4f8: f9400280     	ldr	x0, [x20]
		00000000000004f8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
     4fc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x275
     500: 91000021     	add	x1, x1, #0x0
		0000000000000500:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x275
     504: 94000000     	bl	0x504 <zlog_test1_thread+0x6c>
		0000000000000504:  R_AARCH64_CALL26	zlog_client_record
     508: f9400280     	ldr	x0, [x20]
		0000000000000508:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
     50c: 528000a1     	mov	w1, #0x5                // =5
     510: 94000000     	bl	0x510 <zlog_test1_thread+0x78>
		0000000000000510:  R_AARCH64_CALL26	zlog_client_notify
     514: f9400288     	ldr	x8, [x20]
		0000000000000514:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
     518: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000518:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4af
     51c: 91000000     	add	x0, x0, #0x0
		000000000000051c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4af
     520: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000520:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f2
     524: 91000021     	add	x1, x1, #0x0
		0000000000000524:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f2
     528: 91001102     	add	x2, x8, #0x4
     52c: 94000000     	bl	0x52c <zlog_test1_thread+0x94>
		000000000000052c:  R_AARCH64_CALL26	_printk
     530: 529999a8     	mov	w8, #0xcccd             // =52429
     534: 52807d09     	mov	w9, #0x3e8              // =1000
     538: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000538:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x30
     53c: 72b99988     	movk	w8, #0xcccc, lsl #16
     540: 9ba87e68     	umull	x8, w19, w8
     544: d362fd08     	lsr	x8, x8, #34
     548: 0b080908     	add	w8, w8, w8, lsl #2
     54c: 4b080268     	sub	w8, w19, w8
     550: f9400153     	ldr	x19, [x10]
		0000000000000550:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x30
     554: 1b097d00     	mul	w0, w8, w9
     558: 94000000     	bl	0x558 <zlog_test1_thread+0xc0>
		0000000000000558:  R_AARCH64_CALL26	__msecs_to_jiffies
     55c: aa0003e3     	mov	x3, x0
     560: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000560:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x38
     564: 91000042     	add	x2, x2, #0x0
		0000000000000564:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x38
     568: 52800400     	mov	w0, #0x20               // =32
     56c: aa1303e1     	mov	x1, x19
     570: 94000000     	bl	0x570 <zlog_test1_thread+0xd8>
		0000000000000570:  R_AARCH64_CALL26	queue_delayed_work_on
     574: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     578: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     57c: d50323bf     	autiasp
     580: d65f03c0     	ret
