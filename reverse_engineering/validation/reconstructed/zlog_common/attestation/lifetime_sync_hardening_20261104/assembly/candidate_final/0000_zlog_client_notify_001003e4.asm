
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000076c <zlog_client_notify>:
     76c: d503233f     	paciasp
     770: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     774: a9014ff4     	stp	x20, x19, [sp, #0x10]
     778: 910003fd     	mov	x29, sp
     77c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000077c:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c4
     780: 39400108     	ldrb	w8, [x8]
		0000000000000780:  R_AARCH64_LDST8_ABS_LO12_NC	g_zlog_server+0x24c4
     784: 36000408     	tbz	w8, #0x0, 0x804 <zlog_client_notify+0x98>
     788: aa0003f3     	mov	x19, x0
     78c: b4000420     	cbz	x0, 0x810 <zlog_client_notify+0xa4>
     790: 9102c260     	add	x0, x19, #0xb0
     794: 2a0103f4     	mov	w20, w1
     798: 94000000     	bl	0x798 <zlog_client_notify+0x2c>
		0000000000000798:  R_AARCH64_CALL26	mutex_lock
     79c: 39446268     	ldrb	w8, [x19, #0x118]
     7a0: 34000268     	cbz	w8, 0x7ec <zlog_client_notify+0x80>
     7a4: f9408268     	ldr	x8, [x19, #0x100]
     7a8: b4000228     	cbz	x8, 0x7ec <zlog_client_notify+0x80>
     7ac: f9408668     	ldr	x8, [x19, #0x108]
     7b0: b40001e8     	cbz	x8, 0x7ec <zlog_client_notify+0x80>
     7b4: b900e674     	str	w20, [x19, #0xe4]
     7b8: 1400001d     	b	0x82c <zlog_client_notify+0xc0>
     7bc: 9103a268     	add	x8, x19, #0xe8
     7c0: 52800109     	mov	w9, #0x8                // =8
     7c4: f829311f     	stset	x9, [x8]
     7c8: 90000014     	adrp	x20, 0x0 <.text>
		00000000000007c8:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x2400
     7cc: 91000294     	add	x20, x20, #0x0
		00000000000007cc:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_server+0x2400
     7d0: 91002280     	add	x0, x20, #0x8
     7d4: 94000000     	bl	0x7d4 <zlog_client_notify+0x68>
		00000000000007d4:  R_AARCH64_CALL26	cancel_delayed_work
     7d8: f9400281     	ldr	x1, [x20]
     7dc: 91002282     	add	x2, x20, #0x8
     7e0: 52800400     	mov	w0, #0x20               // =32
     7e4: 52800643     	mov	w3, #0x32               // =50
     7e8: 94000000     	bl	0x7e8 <zlog_client_notify+0x7c>
		00000000000007e8:  R_AARCH64_CALL26	queue_delayed_work_on
     7ec: 9102c260     	add	x0, x19, #0xb0
     7f0: 94000000     	bl	0x7f0 <zlog_client_notify+0x84>
		00000000000007f0:  R_AARCH64_CALL26	mutex_unlock
     7f4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     7f8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     7fc: d50323bf     	autiasp
     800: d65f03c0     	ret
     804: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000804:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ae
     808: 91000000     	add	x0, x0, #0x0
		0000000000000808:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ae
     80c: 14000003     	b	0x818 <zlog_client_notify+0xac>
     810: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000810:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e4
     814: 91000000     	add	x0, x0, #0x0
		0000000000000814:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e4
     818: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000818:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x991
     81c: 91000021     	add	x1, x1, #0x0
		000000000000081c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x991
     820: aa0103e2     	mov	x2, x1
     824: 94000000     	bl	0x824 <zlog_client_notify+0xb8>
		0000000000000824:  R_AARCH64_CALL26	_printk
     828: 17fffff3     	b	0x7f4 <zlog_client_notify+0x88>
     82c: 9103a268     	add	x8, x19, #0xe8
     830: f9800111     	prfm	pstl1strm, [x8]
     834: c85f7d09     	ldxr	x9, [x8]
     838: b27d0129     	orr	x9, x9, #0x8
     83c: c80a7d09     	stxr	w10, x9, [x8]
     840: 35ffffaa     	cbnz	w10, 0x834 <zlog_client_notify+0xc8>
     844: 17ffffe1     	b	0x7c8 <zlog_client_notify+0x5c>
