
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000980 <zlog_comm_write>:
     980: d503233f     	paciasp
     984: d10143ff     	sub	sp, sp, #0x50
     988: a9027bfd     	stp	x29, x30, [sp, #0x20]
     98c: a90357f6     	stp	x22, x21, [sp, #0x30]
     990: a9044ff4     	stp	x20, x19, [sp, #0x40]
     994: 910083fd     	add	x29, sp, #0x20
     998: d5384108     	mrs	x8, SP_EL0
     99c: f9438908     	ldr	x8, [x8, #0x710]
     9a0: f100405f     	cmp	x2, #0x10
     9a4: f81f83a8     	stur	x8, [x29, #-0x8]
     9a8: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     9ac: 54000861     	b.ne	0xab8 <zlog_comm_write+0x138>
     9b0: d5384108     	mrs	x8, SP_EL0
     9b4: 39411909     	ldrb	w9, [x8, #0x46]
     9b8: 37280089     	tbnz	w9, #0x5, 0x9c8 <zlog_comm_write+0x48>
     9bc: f940010a     	ldr	x10, [x8]
     9c0: aa0103e9     	mov	x9, x1
     9c4: 36d0006a     	tbz	w10, #0x1a, 0x9d0 <zlog_comm_write+0x50>
     9c8: d378dc29     	lsl	x9, x1, #8
     9cc: 8a892029     	and	x9, x1, x9, asr #8
     9d0: b27c8bea     	mov	x10, #0x7ffffffff0      // =549755813872
     9d4: eb0a013f     	cmp	x9, x10
     9d8: 54000808     	b.hi	0xad8 <zlog_comm_write+0x158>
     9dc: d503201f     	nop
     9e0: d53b4229     	mrs	x9, DAIF
     9e4: d50343df     	msr	DAIFSet, #0x3
     9e8: f9400508     	ldr	x8, [x8, #0x8]
     9ec: d538202a     	mrs	x10, TTBR1_EL1
     9f0: aa0803eb     	mov	x11, x8
     9f4: b340bd4b     	bfxil	x11, x10, #0, #48
     9f8: d518202b     	msr	TTBR1_EL1, x11
     9fc: d5182008     	msr	TTBR0_EL1, x8
     a00: d5033fdf     	isb
     a04: d51b4229     	msr	DAIF, x9
     a08: 9248f821     	and	x1, x1, #0xff7fffffffffffff
     a0c: 910023e0     	add	x0, sp, #0x8
     a10: 52800202     	mov	w2, #0x10               // =16
     a14: 94000000     	bl	0xa14 <zlog_comm_write+0x94>
		0000000000000a14:  R_AARCH64_CALL26	__arch_copy_from_user
     a18: aa0003e2     	mov	x2, x0
     a1c: d503201f     	nop
     a20: d53b4228     	mrs	x8, DAIF
     a24: d50343df     	msr	DAIFSet, #0x3
     a28: d5382029     	mrs	x9, TTBR1_EL1
     a2c: 9240bd29     	and	x9, x9, #0xffffffffffff
     a30: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
     a34: d518200a     	msr	TTBR0_EL1, x10
     a38: d5182029     	msr	TTBR1_EL1, x9
     a3c: d5033fdf     	isb
     a40: d51b4228     	msr	DAIF, x8
     a44: b50004c2     	cbnz	x2, 0xadc <zlog_comm_write+0x15c>
     a48: b9400bf5     	ldr	w21, [sp, #0x8]
     a4c: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000a4c:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server
     a50: 91000294     	add	x20, x20, #0x0
		0000000000000a50:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_server
     a54: 52800416     	mov	w22, #0x20              // =32
     a58: 52800213     	mov	w19, #0x10              // =16
     a5c: 14000004     	b	0xa6c <zlog_comm_write+0xec>
     a60: f10006d6     	subs	x22, x22, #0x1
     a64: 91048294     	add	x20, x20, #0x120
     a68: 54000540     	b.eq	0xb10 <zlog_comm_write+0x190>
     a6c: 39446288     	ldrb	w8, [x20, #0x118]
     a70: 34ffff88     	cbz	w8, 0xa60 <zlog_comm_write+0xe0>
     a74: b940e288     	ldr	w8, [x20, #0xe0]
     a78: 6b15011f     	cmp	w8, w21
     a7c: 54ffff21     	b.ne	0xa60 <zlog_comm_write+0xe0>
     a80: f9405688     	ldr	x8, [x20, #0xa8]
     a84: b4fffee8     	cbz	x8, 0xa60 <zlog_comm_write+0xe0>
     a88: f9400508     	ldr	x8, [x8, #0x8]
     a8c: b4fffea8     	cbz	x8, 0xa60 <zlog_comm_write+0xe0>
     a90: aa1403e0     	mov	x0, x20
     a94: 2a1503e1     	mov	w1, w21
     a98: b85fc110     	ldur	w16, [x8, #-0x4]
     a9c: 729908b1     	movk	w17, #0xc845
     aa0: 72b854d1     	movk	w17, #0xc2a6, lsl #16
     aa4: 6b11021f     	cmp	w16, w17
     aa8: 54000040     	b.eq	0xab0 <zlog_comm_write+0x130>
     aac: d4304500     	brk	#0x8228
     ab0: d63f0100     	blr	x8
     ab4: 17ffffeb     	b	0xa60 <zlog_comm_write+0xe0>
     ab8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa73
     abc: 91000000     	add	x0, x0, #0x0
		0000000000000abc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa73
     ac0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ac0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x971
     ac4: 91000021     	add	x1, x1, #0x0
		0000000000000ac4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x971
     ac8: 52800203     	mov	w3, #0x10               // =16
     acc: 94000000     	bl	0xacc <zlog_comm_write+0x14c>
		0000000000000acc:  R_AARCH64_CALL26	_printk
     ad0: 928002b3     	mov	x19, #-0x16             // =-22
     ad4: 1400000f     	b	0xb10 <zlog_comm_write+0x190>
     ad8: 52800202     	mov	w2, #0x10               // =16
     adc: f100445f     	cmp	x2, #0x11
     ae0: 54000322     	b.hs	0xb44 <zlog_comm_write+0x1c4>
     ae4: 910023e8     	add	x8, sp, #0x8
     ae8: 2a1f03e1     	mov	w1, wzr
     aec: cb020108     	sub	x8, x8, x2
     af0: 91004100     	add	x0, x8, #0x10
     af4: 94000000     	bl	0xaf4 <zlog_comm_write+0x174>
		0000000000000af4:  R_AARCH64_CALL26	memset
     af8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000af8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8c8
     afc: 91000000     	add	x0, x0, #0x0
		0000000000000afc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8c8
     b00: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x971
     b04: 91000021     	add	x1, x1, #0x0
		0000000000000b04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x971
     b08: 94000000     	bl	0xb08 <zlog_comm_write+0x188>
		0000000000000b08:  R_AARCH64_CALL26	_printk
     b0c: 92800173     	mov	x19, #-0xc              // =-12
     b10: d5384108     	mrs	x8, SP_EL0
     b14: f9438908     	ldr	x8, [x8, #0x710]
     b18: f85f83a9     	ldur	x9, [x29, #-0x8]
     b1c: eb09011f     	cmp	x8, x9
     b20: 54000101     	b.ne	0xb40 <zlog_comm_write+0x1c0>
     b24: aa1303e0     	mov	x0, x19
     b28: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     b2c: a94357f6     	ldp	x22, x21, [sp, #0x30]
     b30: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     b34: 910143ff     	add	sp, sp, #0x50
     b38: d50323bf     	autiasp
     b3c: d65f03c0     	ret
     b40: 94000000     	bl	0xb40 <zlog_comm_write+0x1c0>
		0000000000000b40:  R_AARCH64_CALL26	__stack_chk_fail
     b44: 528001e0     	mov	w0, #0xf                // =15
     b48: aa1f03e1     	mov	x1, xzr
     b4c: 94000000     	bl	0xb4c <zlog_comm_write+0x1cc>
		0000000000000b4c:  R_AARCH64_CALL26	__fortify_panic
