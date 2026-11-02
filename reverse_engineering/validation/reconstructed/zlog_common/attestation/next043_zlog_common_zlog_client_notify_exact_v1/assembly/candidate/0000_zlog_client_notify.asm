
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a28 <zlog_client_notify>:
     a28: d503233f     	paciasp
     a2c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     a30: a9014ff4     	stp	x20, x19, [sp, #0x10]
     a34: 910003fd     	mov	x29, sp
     a38: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000a38:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c4
     a3c: 39400108     	ldrb	w8, [x8]
		0000000000000a3c:  R_AARCH64_LDST8_ABS_LO12_NC	g_zlog_server+0x24c4
     a40: 36000348     	tbz	w8, #0x0, 0xaa8 <zlog_client_notify+0x80>
     a44: aa0003f3     	mov	x19, x0
     a48: b4000360     	cbz	x0, 0xab4 <zlog_client_notify+0x8c>
     a4c: 9102c260     	add	x0, x19, #0xb0
     a50: 2a0103f4     	mov	w20, w1
     a54: 94000000     	bl	0xa54 <zlog_client_notify+0x2c>
		0000000000000a54:  R_AARCH64_CALL26	mutex_lock
     a58: b900e674     	str	w20, [x19, #0xe4]
     a5c: 1400001d     	b	0xad0 <zlog_client_notify+0xa8>
     a60: 9103a268     	add	x8, x19, #0xe8
     a64: 52800109     	mov	w9, #0x8                // =8
     a68: f829311f     	stset	x9, [x8]
     a6c: 9102c260     	add	x0, x19, #0xb0
     a70: 94000000     	bl	0xa70 <zlog_client_notify+0x48>
		0000000000000a70:  R_AARCH64_CALL26	mutex_unlock
     a74: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000a74:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x2400
     a78: 91000273     	add	x19, x19, #0x0
		0000000000000a78:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_server+0x2400
     a7c: 91002260     	add	x0, x19, #0x8
     a80: 94000000     	bl	0xa80 <zlog_client_notify+0x58>
		0000000000000a80:  R_AARCH64_CALL26	cancel_delayed_work
     a84: f9400261     	ldr	x1, [x19]
     a88: 91002262     	add	x2, x19, #0x8
     a8c: 52800400     	mov	w0, #0x20               // =32
     a90: 52800643     	mov	w3, #0x32               // =50
     a94: 94000000     	bl	0xa94 <zlog_client_notify+0x6c>
		0000000000000a94:  R_AARCH64_CALL26	queue_delayed_work_on
     a98: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     a9c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     aa0: d50323bf     	autiasp
     aa4: d65f03c0     	ret
     aa8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000aa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x919
     aac: 91000000     	add	x0, x0, #0x0
		0000000000000aac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x919
     ab0: 14000003     	b	0xabc <zlog_client_notify+0x94>
     ab4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ab4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x84f
     ab8: 91000000     	add	x0, x0, #0x0
		0000000000000ab8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x84f
     abc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000abc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8fc
     ac0: 91000021     	add	x1, x1, #0x0
		0000000000000ac0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8fc
     ac4: aa0103e2     	mov	x2, x1
     ac8: 94000000     	bl	0xac8 <zlog_client_notify+0xa0>
		0000000000000ac8:  R_AARCH64_CALL26	_printk
     acc: 17fffff3     	b	0xa98 <zlog_client_notify+0x70>
     ad0: 9103a268     	add	x8, x19, #0xe8
     ad4: f9800111     	prfm	pstl1strm, [x8]
     ad8: c85f7d09     	ldxr	x9, [x8]
     adc: b27d0129     	orr	x9, x9, #0x8
     ae0: c80a7d09     	stxr	w10, x9, [x8]
     ae4: 35ffffaa     	cbnz	w10, 0xad8 <zlog_client_notify+0xb0>
     ae8: 17ffffe1     	b	0xa6c <zlog_client_notify+0x44>
