
/input/zlog_common_candidate.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000980 <zlog_comm_write>:
     980: d503233f     	paciasp
     984: d10143ff     	sub	sp, sp, #0x50
     988: a9027bfd     	stp	x29, x30, [sp, #0x20]
     98c: f9001bf5     	str	x21, [sp, #0x30]
     990: a9044ff4     	stp	x20, x19, [sp, #0x40]
     994: 910083fd     	add	x29, sp, #0x20
     998: d5384108     	mrs	x8, SP_EL0
     99c: f9438908     	ldr	x8, [x8, #0x710]
     9a0: f100405f     	cmp	x2, #0x10
     9a4: f81f83a8     	stur	x8, [x29, #-0x8]
     9a8: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     9ac: 54000a81     	b.ne	0xafc <zlog_comm_write+0x17c>
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
     9d8: 54000a28     	b.hi	0xb1c <zlog_comm_write+0x19c>
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
     a44: b50006e2     	cbnz	x2, 0xb20 <zlog_comm_write+0x1a0>
     a48: b9400bf3     	ldr	w19, [sp, #0x8]
     a4c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a4c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_lifetime_lock
     a50: 91000000     	add	x0, x0, #0x0
		0000000000000a50:  R_AARCH64_ADD_ABS_LO12_NC	zlog_lifetime_lock
     a54: 94000000     	bl	0xa54 <zlog_comm_write+0xd4>
		0000000000000a54:  R_AARCH64_CALL26	mutex_lock
     a58: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000a58:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server
     a5c: 91000294     	add	x20, x20, #0x0
		0000000000000a5c:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_server
     a60: 52800415     	mov	w21, #0x20              // =32
     a64: 14000004     	b	0xa74 <zlog_comm_write+0xf4>
     a68: f10006b5     	subs	x21, x21, #0x1
     a6c: 91048294     	add	x20, x20, #0x120
     a70: 54000280     	b.eq	0xac0 <zlog_comm_write+0x140>
     a74: 39446288     	ldrb	w8, [x20, #0x118]
     a78: 34ffff88     	cbz	w8, 0xa68 <zlog_comm_write+0xe8>
     a7c: b940e288     	ldr	w8, [x20, #0xe0]
     a80: 6b13011f     	cmp	w8, w19
     a84: 54ffff21     	b.ne	0xa68 <zlog_comm_write+0xe8>
     a88: f9405688     	ldr	x8, [x20, #0xa8]
     a8c: b4fffee8     	cbz	x8, 0xa68 <zlog_comm_write+0xe8>
     a90: f9400508     	ldr	x8, [x8, #0x8]
     a94: b4fffea8     	cbz	x8, 0xa68 <zlog_comm_write+0xe8>
     a98: aa1403e0     	mov	x0, x20
     a9c: 2a1303e1     	mov	w1, w19
     aa0: b85fc110     	ldur	w16, [x8, #-0x4]
     aa4: 729908b1     	movk	w17, #0xc845
     aa8: 72b854d1     	movk	w17, #0xc2a6, lsl #16
     aac: 6b11021f     	cmp	w16, w17
     ab0: 54000040     	b.eq	0xab8 <zlog_comm_write+0x138>
     ab4: d4304500     	brk	#0x8228
     ab8: d63f0100     	blr	x8
     abc: 17ffffeb     	b	0xa68 <zlog_comm_write+0xe8>
     ac0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ac0:  R_AARCH64_ADR_PREL_PG_HI21	zlog_lifetime_lock
     ac4: 91000000     	add	x0, x0, #0x0
		0000000000000ac4:  R_AARCH64_ADD_ABS_LO12_NC	zlog_lifetime_lock
     ac8: 94000000     	bl	0xac8 <zlog_comm_write+0x148>
		0000000000000ac8:  R_AARCH64_CALL26	mutex_unlock
     acc: 52800200     	mov	w0, #0x10               // =16
     ad0: d5384108     	mrs	x8, SP_EL0
     ad4: f9438908     	ldr	x8, [x8, #0x710]
     ad8: f85f83a9     	ldur	x9, [x29, #-0x8]
     adc: eb09011f     	cmp	x8, x9
     ae0: 540003c1     	b.ne	0xb58 <zlog_comm_write+0x1d8>
     ae4: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     ae8: f9401bf5     	ldr	x21, [sp, #0x30]
     aec: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     af0: 910143ff     	add	sp, sp, #0x50
     af4: d50323bf     	autiasp
     af8: d65f03c0     	ret
     afc: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000afc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa73
     b00: 91000000     	add	x0, x0, #0x0
		0000000000000b00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa73
     b04: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x971
     b08: 91000021     	add	x1, x1, #0x0
		0000000000000b08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x971
     b0c: 52800203     	mov	w3, #0x10               // =16
     b10: 94000000     	bl	0xb10 <zlog_comm_write+0x190>
		0000000000000b10:  R_AARCH64_CALL26	_printk
     b14: 928002a0     	mov	x0, #-0x16              // =-22
     b18: 17ffffee     	b	0xad0 <zlog_comm_write+0x150>
     b1c: 52800202     	mov	w2, #0x10               // =16
     b20: f100445f     	cmp	x2, #0x11
     b24: 540001c2     	b.hs	0xb5c <zlog_comm_write+0x1dc>
     b28: 910023e8     	add	x8, sp, #0x8
     b2c: 2a1f03e1     	mov	w1, wzr
     b30: cb020108     	sub	x8, x8, x2
     b34: 91004100     	add	x0, x8, #0x10
     b38: 94000000     	bl	0xb38 <zlog_comm_write+0x1b8>
		0000000000000b38:  R_AARCH64_CALL26	memset
     b3c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8c8
     b40: 91000000     	add	x0, x0, #0x0
		0000000000000b40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8c8
     b44: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x971
     b48: 91000021     	add	x1, x1, #0x0
		0000000000000b48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x971
     b4c: 94000000     	bl	0xb4c <zlog_comm_write+0x1cc>
		0000000000000b4c:  R_AARCH64_CALL26	_printk
     b50: 92800160     	mov	x0, #-0xc               // =-12
     b54: 17ffffdf     	b	0xad0 <zlog_comm_write+0x150>
     b58: 94000000     	bl	0xb58 <zlog_comm_write+0x1d8>
		0000000000000b58:  R_AARCH64_CALL26	__stack_chk_fail
     b5c: 528001e0     	mov	w0, #0xf                // =15
     b60: aa1f03e1     	mov	x1, xzr
     b64: 94000000     	bl	0xb64 <zlog_comm_write+0x1e4>
		0000000000000b64:  R_AARCH64_CALL26	__fortify_panic
