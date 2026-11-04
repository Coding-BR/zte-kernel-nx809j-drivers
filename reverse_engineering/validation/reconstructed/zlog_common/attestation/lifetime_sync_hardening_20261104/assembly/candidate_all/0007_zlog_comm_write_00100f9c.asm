
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000930 <zlog_comm_write>:
     930: d503233f     	paciasp
     934: d10143ff     	sub	sp, sp, #0x50
     938: a9027bfd     	stp	x29, x30, [sp, #0x20]
     93c: a90357f6     	stp	x22, x21, [sp, #0x30]
     940: a9044ff4     	stp	x20, x19, [sp, #0x40]
     944: 910083fd     	add	x29, sp, #0x20
     948: d5384108     	mrs	x8, SP_EL0
     94c: f9438908     	ldr	x8, [x8, #0x710]
     950: f100405f     	cmp	x2, #0x10
     954: f81f83a8     	stur	x8, [x29, #-0x8]
     958: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     95c: 54000861     	b.ne	0xa68 <zlog_comm_write+0x138>
     960: d5384108     	mrs	x8, SP_EL0
     964: 39411909     	ldrb	w9, [x8, #0x46]
     968: 37280089     	tbnz	w9, #0x5, 0x978 <zlog_comm_write+0x48>
     96c: f940010a     	ldr	x10, [x8]
     970: aa0103e9     	mov	x9, x1
     974: 36d0006a     	tbz	w10, #0x1a, 0x980 <zlog_comm_write+0x50>
     978: d378dc29     	lsl	x9, x1, #8
     97c: 8a892029     	and	x9, x1, x9, asr #8
     980: b27c8bea     	mov	x10, #0x7ffffffff0      // =549755813872
     984: eb0a013f     	cmp	x9, x10
     988: 54000808     	b.hi	0xa88 <zlog_comm_write+0x158>
     98c: d503201f     	nop
     990: d53b4229     	mrs	x9, DAIF
     994: d50343df     	msr	DAIFSet, #0x3
     998: f9400508     	ldr	x8, [x8, #0x8]
     99c: d538202a     	mrs	x10, TTBR1_EL1
     9a0: aa0803eb     	mov	x11, x8
     9a4: b340bd4b     	bfxil	x11, x10, #0, #48
     9a8: d518202b     	msr	TTBR1_EL1, x11
     9ac: d5182008     	msr	TTBR0_EL1, x8
     9b0: d5033fdf     	isb
     9b4: d51b4229     	msr	DAIF, x9
     9b8: 9248f821     	and	x1, x1, #0xff7fffffffffffff
     9bc: 910023e0     	add	x0, sp, #0x8
     9c0: 52800202     	mov	w2, #0x10               // =16
     9c4: 94000000     	bl	0x9c4 <zlog_comm_write+0x94>
		00000000000009c4:  R_AARCH64_CALL26	__arch_copy_from_user
     9c8: aa0003e2     	mov	x2, x0
     9cc: d503201f     	nop
     9d0: d53b4228     	mrs	x8, DAIF
     9d4: d50343df     	msr	DAIFSet, #0x3
     9d8: d5382029     	mrs	x9, TTBR1_EL1
     9dc: 9240bd29     	and	x9, x9, #0xffffffffffff
     9e0: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
     9e4: d518200a     	msr	TTBR0_EL1, x10
     9e8: d5182029     	msr	TTBR1_EL1, x9
     9ec: d5033fdf     	isb
     9f0: d51b4228     	msr	DAIF, x8
     9f4: b50004c2     	cbnz	x2, 0xa8c <zlog_comm_write+0x15c>
     9f8: b9400bf5     	ldr	w21, [sp, #0x8]
     9fc: 90000014     	adrp	x20, 0x0 <.text>
		00000000000009fc:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server
     a00: 91000294     	add	x20, x20, #0x0
		0000000000000a00:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_server
     a04: 52800416     	mov	w22, #0x20              // =32
     a08: 52800213     	mov	w19, #0x10              // =16
     a0c: 14000004     	b	0xa1c <zlog_comm_write+0xec>
     a10: f10006d6     	subs	x22, x22, #0x1
     a14: 91048294     	add	x20, x20, #0x120
     a18: 54000540     	b.eq	0xac0 <zlog_comm_write+0x190>
     a1c: 39446288     	ldrb	w8, [x20, #0x118]
     a20: 34ffff88     	cbz	w8, 0xa10 <zlog_comm_write+0xe0>
     a24: b940e288     	ldr	w8, [x20, #0xe0]
     a28: 6b15011f     	cmp	w8, w21
     a2c: 54ffff21     	b.ne	0xa10 <zlog_comm_write+0xe0>
     a30: f9405688     	ldr	x8, [x20, #0xa8]
     a34: b4fffee8     	cbz	x8, 0xa10 <zlog_comm_write+0xe0>
     a38: f9400508     	ldr	x8, [x8, #0x8]
     a3c: b4fffea8     	cbz	x8, 0xa10 <zlog_comm_write+0xe0>
     a40: aa1403e0     	mov	x0, x20
     a44: 2a1503e1     	mov	w1, w21
     a48: b85fc110     	ldur	w16, [x8, #-0x4]
     a4c: 729908b1     	movk	w17, #0xc845
     a50: 72b854d1     	movk	w17, #0xc2a6, lsl #16
     a54: 6b11021f     	cmp	w16, w17
     a58: 54000040     	b.eq	0xa60 <zlog_comm_write+0x130>
     a5c: d4304500     	brk	#0x8228
     a60: d63f0100     	blr	x8
     a64: 17ffffeb     	b	0xa10 <zlog_comm_write+0xe0>
     a68: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9a1
     a6c: 91000000     	add	x0, x0, #0x0
		0000000000000a6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9a1
     a70: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d5
     a74: 91000021     	add	x1, x1, #0x0
		0000000000000a74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d5
     a78: 52800203     	mov	w3, #0x10               // =16
     a7c: 94000000     	bl	0xa7c <zlog_comm_write+0x14c>
		0000000000000a7c:  R_AARCH64_CALL26	_printk
     a80: 928002b3     	mov	x19, #-0x16             // =-22
     a84: 1400000f     	b	0xac0 <zlog_comm_write+0x190>
     a88: 52800202     	mov	w2, #0x10               // =16
     a8c: f100445f     	cmp	x2, #0x11
     a90: 54000322     	b.hs	0xaf4 <zlog_comm_write+0x1c4>
     a94: 910023e8     	add	x8, sp, #0x8
     a98: 2a1f03e1     	mov	w1, wzr
     a9c: cb020108     	sub	x8, x8, x2
     aa0: 91004100     	add	x0, x8, #0x10
     aa4: 94000000     	bl	0xaa4 <zlog_comm_write+0x174>
		0000000000000aa4:  R_AARCH64_CALL26	memset
     aa8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000aa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x82c
     aac: 91000000     	add	x0, x0, #0x0
		0000000000000aac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x82c
     ab0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ab0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d5
     ab4: 91000021     	add	x1, x1, #0x0
		0000000000000ab4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d5
     ab8: 94000000     	bl	0xab8 <zlog_comm_write+0x188>
		0000000000000ab8:  R_AARCH64_CALL26	_printk
     abc: 92800173     	mov	x19, #-0xc              // =-12
     ac0: d5384108     	mrs	x8, SP_EL0
     ac4: f9438908     	ldr	x8, [x8, #0x710]
     ac8: f85f83a9     	ldur	x9, [x29, #-0x8]
     acc: eb09011f     	cmp	x8, x9
     ad0: 54000101     	b.ne	0xaf0 <zlog_comm_write+0x1c0>
     ad4: aa1303e0     	mov	x0, x19
     ad8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     adc: a94357f6     	ldp	x22, x21, [sp, #0x30]
     ae0: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     ae4: 910143ff     	add	sp, sp, #0x50
     ae8: d50323bf     	autiasp
     aec: d65f03c0     	ret
     af0: 94000000     	bl	0xaf0 <zlog_comm_write+0x1c0>
		0000000000000af0:  R_AARCH64_CALL26	__stack_chk_fail
     af4: 528001e0     	mov	w0, #0xf                // =15
     af8: aa1f03e1     	mov	x1, xzr
     afc: 94000000     	bl	0xafc <zlog_comm_write+0x1cc>
		0000000000000afc:  R_AARCH64_CALL26	__fortify_panic
