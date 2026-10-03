
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000bbc <zlog_comm_write>:
     bbc: d503233f     	paciasp
     bc0: d10143ff     	sub	sp, sp, #0x50
     bc4: a9027bfd     	stp	x29, x30, [sp, #0x20]
     bc8: a90357f6     	stp	x22, x21, [sp, #0x30]
     bcc: a9044ff4     	stp	x20, x19, [sp, #0x40]
     bd0: 910083fd     	add	x29, sp, #0x20
     bd4: d5384108     	mrs	x8, SP_EL0
     bd8: f9438908     	ldr	x8, [x8, #0x710]
     bdc: f100405f     	cmp	x2, #0x10
     be0: f81f83a8     	stur	x8, [x29, #-0x8]
     be4: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     be8: 54000861     	b.ne	0xcf4 <zlog_comm_write+0x138>
     bec: d5384108     	mrs	x8, SP_EL0
     bf0: 39411909     	ldrb	w9, [x8, #0x46]
     bf4: 37280089     	tbnz	w9, #0x5, 0xc04 <zlog_comm_write+0x48>
     bf8: f940010a     	ldr	x10, [x8]
     bfc: aa0103e9     	mov	x9, x1
     c00: 36d0006a     	tbz	w10, #0x1a, 0xc0c <zlog_comm_write+0x50>
     c04: d378dc29     	lsl	x9, x1, #8
     c08: 8a892029     	and	x9, x1, x9, asr #8
     c0c: b27c8bea     	mov	x10, #0x7ffffffff0      // =549755813872
     c10: eb0a013f     	cmp	x9, x10
     c14: 54000808     	b.hi	0xd14 <zlog_comm_write+0x158>
     c18: d503201f     	nop
     c1c: d53b4229     	mrs	x9, DAIF
     c20: d50343df     	msr	DAIFSet, #0x3
     c24: f9400508     	ldr	x8, [x8, #0x8]
     c28: d538202a     	mrs	x10, TTBR1_EL1
     c2c: aa0803eb     	mov	x11, x8
     c30: b340bd4b     	bfxil	x11, x10, #0, #48
     c34: d518202b     	msr	TTBR1_EL1, x11
     c38: d5182008     	msr	TTBR0_EL1, x8
     c3c: d5033fdf     	isb
     c40: d51b4229     	msr	DAIF, x9
     c44: 9248f821     	and	x1, x1, #0xff7fffffffffffff
     c48: 910023e0     	add	x0, sp, #0x8
     c4c: 52800202     	mov	w2, #0x10               // =16
     c50: 94000000     	bl	0xc50 <zlog_comm_write+0x94>
		0000000000000c50:  R_AARCH64_CALL26	__arch_copy_from_user
     c54: aa0003e2     	mov	x2, x0
     c58: d503201f     	nop
     c5c: d53b4228     	mrs	x8, DAIF
     c60: d50343df     	msr	DAIFSet, #0x3
     c64: d5382029     	mrs	x9, TTBR1_EL1
     c68: 9240bd29     	and	x9, x9, #0xffffffffffff
     c6c: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
     c70: d518200a     	msr	TTBR0_EL1, x10
     c74: d5182029     	msr	TTBR1_EL1, x9
     c78: d5033fdf     	isb
     c7c: d51b4228     	msr	DAIF, x8
     c80: b50004c2     	cbnz	x2, 0xd18 <zlog_comm_write+0x15c>
     c84: b9400bf5     	ldr	w21, [sp, #0x8]
     c88: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000c88:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     c8c: 91000294     	add	x20, x20, #0x0
		0000000000000c8c:  R_AARCH64_ADD_ABS_LO12_NC	.bss
     c90: 52800416     	mov	w22, #0x20              // =32
     c94: 52800213     	mov	w19, #0x10              // =16
     c98: 14000004     	b	0xca8 <zlog_comm_write+0xec>
     c9c: f10006d6     	subs	x22, x22, #0x1
     ca0: 91048294     	add	x20, x20, #0x120
     ca4: 54000540     	b.eq	0xd4c <zlog_comm_write+0x190>
     ca8: 39446288     	ldrb	w8, [x20, #0x118]
     cac: 34ffff88     	cbz	w8, 0xc9c <zlog_comm_write+0xe0>
     cb0: b940e288     	ldr	w8, [x20, #0xe0]
     cb4: 6b15011f     	cmp	w8, w21
     cb8: 54ffff21     	b.ne	0xc9c <zlog_comm_write+0xe0>
     cbc: f9405688     	ldr	x8, [x20, #0xa8]
     cc0: b4fffee8     	cbz	x8, 0xc9c <zlog_comm_write+0xe0>
     cc4: f9400508     	ldr	x8, [x8, #0x8]
     cc8: b4fffea8     	cbz	x8, 0xc9c <zlog_comm_write+0xe0>
     ccc: aa1403e0     	mov	x0, x20
     cd0: 2a1503e1     	mov	w1, w21
     cd4: b85fc110     	ldur	w16, [x8, #-0x4]
     cd8: 729908b1     	movk	w17, #0xc845
     cdc: 72b854d1     	movk	w17, #0xc2a6, lsl #16
     ce0: 6b11021f     	cmp	w16, w17
     ce4: 54000040     	b.eq	0xcec <zlog_comm_write+0x130>
     ce8: d4304500     	brk	#0x8228
     cec: d63f0100     	blr	x8
     cf0: 17ffffeb     	b	0xc9c <zlog_comm_write+0xe0>
     cf4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000cf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62b
     cf8: 91000000     	add	x0, x0, #0x0
		0000000000000cf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62b
     cfc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000cfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x444
     d00: 91000021     	add	x1, x1, #0x0
		0000000000000d00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x444
     d04: 52800203     	mov	w3, #0x10               // =16
     d08: 94000000     	bl	0xd08 <zlog_comm_write+0x14c>
		0000000000000d08:  R_AARCH64_CALL26	_printk
     d0c: 928002b3     	mov	x19, #-0x16             // =-22
     d10: 1400000f     	b	0xd4c <zlog_comm_write+0x190>
     d14: 52800202     	mov	w2, #0x10               // =16
     d18: f100445f     	cmp	x2, #0x11
     d1c: 54000322     	b.hs	0xd80 <zlog_comm_write+0x1c4>
     d20: 910023e8     	add	x8, sp, #0x8
     d24: 2a1f03e1     	mov	w1, wzr
     d28: cb020108     	sub	x8, x8, x2
     d2c: 91004100     	add	x0, x8, #0x10
     d30: 94000000     	bl	0xd30 <zlog_comm_write+0x174>
		0000000000000d30:  R_AARCH64_CALL26	memset
     d34: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x381
     d38: 91000000     	add	x0, x0, #0x0
		0000000000000d38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x381
     d3c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x444
     d40: 91000021     	add	x1, x1, #0x0
		0000000000000d40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x444
     d44: 94000000     	bl	0xd44 <zlog_comm_write+0x188>
		0000000000000d44:  R_AARCH64_CALL26	_printk
     d48: 92800173     	mov	x19, #-0xc              // =-12
     d4c: d5384108     	mrs	x8, SP_EL0
     d50: f9438908     	ldr	x8, [x8, #0x710]
     d54: f85f83a9     	ldur	x9, [x29, #-0x8]
     d58: eb09011f     	cmp	x8, x9
     d5c: 54000101     	b.ne	0xd7c <zlog_comm_write+0x1c0>
     d60: aa1303e0     	mov	x0, x19
     d64: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     d68: a94357f6     	ldp	x22, x21, [sp, #0x30]
     d6c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     d70: 910143ff     	add	sp, sp, #0x50
     d74: d50323bf     	autiasp
     d78: d65f03c0     	ret
     d7c: 94000000     	bl	0xd7c <zlog_comm_write+0x1c0>
		0000000000000d7c:  R_AARCH64_CALL26	__stack_chk_fail
     d80: 528001e0     	mov	w0, #0xf                // =15
     d84: aa1f03e1     	mov	x1, xzr
     d88: 94000000     	bl	0xd88 <zlog_comm_write+0x1cc>
		0000000000000d88:  R_AARCH64_CALL26	__fortify_panic
