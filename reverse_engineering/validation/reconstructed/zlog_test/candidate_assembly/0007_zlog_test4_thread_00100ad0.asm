
/input/zlog_test.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000768 <zlog_test4_thread>:
     768: d503233f     	paciasp
     76c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     770: a9014ff4     	stp	x20, x19, [sp, #0x10]
     774: 910003fd     	mov	x29, sp
     778: 94000000     	bl	0x778 <zlog_test4_thread+0x10>
		0000000000000778:  R_AARCH64_CALL26	get_random_u32
     77c: 90000014     	adrp	x20, 0x0 <.text>
		000000000000077c:  R_AARCH64_ADR_PREL_PG_HI21	client_4
     780: 2a0003f3     	mov	w19, w0
     784: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12c
     788: 91000021     	add	x1, x1, #0x0
		0000000000000788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12c
     78c: f9400288     	ldr	x8, [x20]
		000000000000078c:  R_AARCH64_LDST64_ABS_LO12_NC	client_4
     790: aa0803e0     	mov	x0, x8
     794: 94000000     	bl	0x794 <zlog_test4_thread+0x2c>
		0000000000000794:  R_AARCH64_CALL26	zlog_client_record
     798: f9400280     	ldr	x0, [x20]
		0000000000000798:  R_AARCH64_LDST64_ABS_LO12_NC	client_4
     79c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000079c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62f
     7a0: 91000021     	add	x1, x1, #0x0
		00000000000007a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62f
     7a4: 94000000     	bl	0x7a4 <zlog_test4_thread+0x3c>
		00000000000007a4:  R_AARCH64_CALL26	zlog_client_record
     7a8: f9400280     	ldr	x0, [x20]
		00000000000007a8:  R_AARCH64_LDST64_ABS_LO12_NC	client_4
     7ac: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa8
     7b0: 91000021     	add	x1, x1, #0x0
		00000000000007b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa8
     7b4: 94000000     	bl	0x7b4 <zlog_test4_thread+0x4c>
		00000000000007b4:  R_AARCH64_CALL26	zlog_client_record
     7b8: f9400280     	ldr	x0, [x20]
		00000000000007b8:  R_AARCH64_LDST64_ABS_LO12_NC	client_4
     7bc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x206
     7c0: 91000021     	add	x1, x1, #0x0
		00000000000007c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x206
     7c4: 94000000     	bl	0x7c4 <zlog_test4_thread+0x5c>
		00000000000007c4:  R_AARCH64_CALL26	zlog_client_record
     7c8: f9400280     	ldr	x0, [x20]
		00000000000007c8:  R_AARCH64_LDST64_ABS_LO12_NC	client_4
     7cc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b6
     7d0: 91000021     	add	x1, x1, #0x0
		00000000000007d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b6
     7d4: 94000000     	bl	0x7d4 <zlog_test4_thread+0x6c>
		00000000000007d4:  R_AARCH64_CALL26	zlog_client_record
     7d8: f9400280     	ldr	x0, [x20]
		00000000000007d8:  R_AARCH64_LDST64_ABS_LO12_NC	client_4
     7dc: 528000a1     	mov	w1, #0x5                // =5
     7e0: 94000000     	bl	0x7e0 <zlog_test4_thread+0x78>
		00000000000007e0:  R_AARCH64_CALL26	zlog_client_notify
     7e4: f9400288     	ldr	x8, [x20]
		00000000000007e4:  R_AARCH64_LDST64_ABS_LO12_NC	client_4
     7e8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4af
     7ec: 91000000     	add	x0, x0, #0x0
		00000000000007ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4af
     7f0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30e
     7f4: 91000021     	add	x1, x1, #0x0
		00000000000007f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30e
     7f8: 91001102     	add	x2, x8, #0x4
     7fc: 94000000     	bl	0x7fc <zlog_test4_thread+0x94>
		00000000000007fc:  R_AARCH64_CALL26	_printk
     800: 529999a8     	mov	w8, #0xcccd             // =52429
     804: 52807d09     	mov	w9, #0x3e8              // =1000
     808: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000808:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test4_workqueue
     80c: 72b99988     	movk	w8, #0xcccc, lsl #16
     810: 9ba87e68     	umull	x8, w19, w8
     814: d362fd08     	lsr	x8, x8, #34
     818: 0b080908     	add	w8, w8, w8, lsl #2
     81c: 4b080268     	sub	w8, w19, w8
     820: f9400153     	ldr	x19, [x10]
		0000000000000820:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test4_workqueue
     824: 1b097d00     	mul	w0, w8, w9
     828: 94000000     	bl	0x828 <zlog_test4_thread+0xc0>
		0000000000000828:  R_AARCH64_CALL26	__msecs_to_jiffies
     82c: aa0003e3     	mov	x3, x0
     830: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000830:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test4_work
     834: 91000042     	add	x2, x2, #0x0
		0000000000000834:  R_AARCH64_ADD_ABS_LO12_NC	zlog_test4_work
     838: 52800400     	mov	w0, #0x20               // =32
     83c: aa1303e1     	mov	x1, x19
     840: 94000000     	bl	0x840 <zlog_test4_thread+0xd8>
		0000000000000840:  R_AARCH64_CALL26	queue_delayed_work_on
     844: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     848: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     84c: d50323bf     	autiasp
     850: d65f03c0     	ret
