
/input/zlog_test_candidate.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000938 <zlog_test5_thread>:
     938: d503233f     	paciasp
     93c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     940: f9000bf5     	str	x21, [sp, #0x10]
     944: a9024ff4     	stp	x20, x19, [sp, #0x20]
     948: 910003fd     	mov	x29, sp
     94c: 94000000     	bl	0x94c <zlog_test5_thread+0x14>
		000000000000094c:  R_AARCH64_CALL26	get_random_u32
     950: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000950:  R_AARCH64_ADR_PREL_PG_HI21	client_5
     954: 2a0003f3     	mov	w19, w0
     958: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000958:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12
     95c: 91000021     	add	x1, x1, #0x0
		000000000000095c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12
     960: f9400288     	ldr	x8, [x20]
		0000000000000960:  R_AARCH64_LDST64_ABS_LO12_NC	client_5
     964: aa0803e0     	mov	x0, x8
     968: 94000000     	bl	0x968 <zlog_test5_thread+0x30>
		0000000000000968:  R_AARCH64_CALL26	zlog_client_record
     96c: f9400280     	ldr	x0, [x20]
		000000000000096c:  R_AARCH64_LDST64_ABS_LO12_NC	client_5
     970: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000970:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d2
     974: 91000021     	add	x1, x1, #0x0
		0000000000000974:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d2
     978: 94000000     	bl	0x978 <zlog_test5_thread+0x40>
		0000000000000978:  R_AARCH64_CALL26	zlog_client_record
     97c: f9400280     	ldr	x0, [x20]
		000000000000097c:  R_AARCH64_LDST64_ABS_LO12_NC	client_5
     980: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000980:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd9
     984: 91000021     	add	x1, x1, #0x0
		0000000000000984:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd9
     988: 94000000     	bl	0x988 <zlog_test5_thread+0x50>
		0000000000000988:  R_AARCH64_CALL26	zlog_client_record
     98c: f9400280     	ldr	x0, [x20]
		000000000000098c:  R_AARCH64_LDST64_ABS_LO12_NC	client_5
     990: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000990:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d8
     994: 91000021     	add	x1, x1, #0x0
		0000000000000994:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d8
     998: 94000000     	bl	0x998 <zlog_test5_thread+0x60>
		0000000000000998:  R_AARCH64_CALL26	zlog_client_record
     99c: f9400280     	ldr	x0, [x20]
		000000000000099c:  R_AARCH64_LDST64_ABS_LO12_NC	client_5
     9a0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x51d
     9a4: 91000021     	add	x1, x1, #0x0
		00000000000009a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x51d
     9a8: 94000000     	bl	0x9a8 <zlog_test5_thread+0x70>
		00000000000009a8:  R_AARCH64_CALL26	zlog_client_record
     9ac: f9400280     	ldr	x0, [x20]
		00000000000009ac:  R_AARCH64_LDST64_ABS_LO12_NC	client_5
     9b0: 528000a1     	mov	w1, #0x5                // =5
     9b4: 94000000     	bl	0x9b4 <zlog_test5_thread+0x7c>
		00000000000009b4:  R_AARCH64_CALL26	zlog_client_notify
     9b8: f9400288     	ldr	x8, [x20]
		00000000000009b8:  R_AARCH64_LDST64_ABS_LO12_NC	client_5
     9bc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b0
     9c0: 91000000     	add	x0, x0, #0x0
		00000000000009c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b0
     9c4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b8
     9c8: 91000021     	add	x1, x1, #0x0
		00000000000009c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b8
     9cc: 91001102     	add	x2, x8, #0x4
     9d0: 94000000     	bl	0x9d0 <zlog_test5_thread+0x98>
		00000000000009d0:  R_AARCH64_CALL26	_printk
     9d4: 529999a8     	mov	w8, #0xcccd             // =52429
     9d8: 52807d09     	mov	w9, #0x3e8              // =1000
     9dc: 9000000a     	adrp	x10, 0x0 <.text>
		00000000000009dc:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test5_workqueue
     9e0: 72b99988     	movk	w8, #0xcccc, lsl #16
     9e4: 9ba87e68     	umull	x8, w19, w8
     9e8: d362fd08     	lsr	x8, x8, #34
     9ec: 0b080908     	add	w8, w8, w8, lsl #2
     9f0: 4b080268     	sub	w8, w19, w8
     9f4: f9400153     	ldr	x19, [x10]
		00000000000009f4:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test5_workqueue
     9f8: 1b097d00     	mul	w0, w8, w9
     9fc: 94000000     	bl	0x9fc <zlog_test5_thread+0xc4>
		00000000000009fc:  R_AARCH64_CALL26	__msecs_to_jiffies
     a00: aa0003f4     	mov	x20, x0
     a04: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a04:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     a08: 91000000     	add	x0, x0, #0x0
		0000000000000a08:  R_AARCH64_ADD_ABS_LO12_NC	.bss
     a0c: 94000000     	bl	0xa0c <zlog_test5_thread+0xd4>
		0000000000000a0c:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
     a10: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000a10:  R_AARCH64_ADR_PREL_PG_HI21	zlog_enable_test_flag
     a14: aa0003f5     	mov	x21, x0
     a18: b9400108     	ldr	w8, [x8]
		0000000000000a18:  R_AARCH64_LDST32_ABS_LO12_NC	zlog_enable_test_flag
     a1c: 340000e8     	cbz	w8, 0xa38 <zlog_test5_thread+0x100>
     a20: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a20:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test5_work
     a24: 91000042     	add	x2, x2, #0x0
		0000000000000a24:  R_AARCH64_ADD_ABS_LO12_NC	zlog_test5_work
     a28: 52800400     	mov	w0, #0x20               // =32
     a2c: aa1303e1     	mov	x1, x19
     a30: aa1403e3     	mov	x3, x20
     a34: 94000000     	bl	0xa34 <zlog_test5_thread+0xfc>
		0000000000000a34:  R_AARCH64_CALL26	queue_delayed_work_on
     a38: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a38:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     a3c: 91000000     	add	x0, x0, #0x0
		0000000000000a3c:  R_AARCH64_ADD_ABS_LO12_NC	.bss
     a40: aa1503e1     	mov	x1, x21
     a44: 94000000     	bl	0xa44 <zlog_test5_thread+0x10c>
		0000000000000a44:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
     a48: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     a4c: f9400bf5     	ldr	x21, [sp, #0x10]
     a50: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     a54: d50323bf     	autiasp
     a58: d65f03c0     	ret
