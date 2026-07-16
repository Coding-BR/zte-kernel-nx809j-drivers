
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000bb0 <zlog_comm_write>:
     bb0: d503233f     	paciasp
     bb4: d10143ff     	sub	sp, sp, #0x50
     bb8: a9027bfd     	stp	x29, x30, [sp, #0x20]
     bbc: a90357f6     	stp	x22, x21, [sp, #0x30]
     bc0: a9044ff4     	stp	x20, x19, [sp, #0x40]
     bc4: 910083fd     	add	x29, sp, #0x20
     bc8: d5384108     	mrs	x8, SP_EL0
     bcc: f9438908     	ldr	x8, [x8, #0x710]
     bd0: f100405f     	cmp	x2, #0x10
     bd4: f81f83a8     	stur	x8, [x29, #-0x8]
     bd8: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     bdc: 54000861     	b.ne	0xce8 <zlog_comm_write+0x138>
     be0: d5384108     	mrs	x8, SP_EL0
     be4: 39411909     	ldrb	w9, [x8, #0x46]
     be8: 37280089     	tbnz	w9, #0x5, 0xbf8 <zlog_comm_write+0x48>
     bec: f940010a     	ldr	x10, [x8]
     bf0: aa0103e9     	mov	x9, x1
     bf4: 36d0006a     	tbz	w10, #0x1a, 0xc00 <zlog_comm_write+0x50>
     bf8: d378dc29     	lsl	x9, x1, #8
     bfc: 8a892029     	and	x9, x1, x9, asr #8
     c00: b27c8bea     	mov	x10, #0x7ffffffff0      // =549755813872
     c04: eb0a013f     	cmp	x9, x10
     c08: 54000808     	b.hi	0xd08 <zlog_comm_write+0x158>
     c0c: d503201f     	nop
     c10: d53b4229     	mrs	x9, DAIF
     c14: d50343df     	msr	DAIFSet, #0x3
     c18: f9400508     	ldr	x8, [x8, #0x8]
     c1c: d538202a     	mrs	x10, TTBR1_EL1
     c20: aa0803eb     	mov	x11, x8
     c24: b340bd4b     	bfxil	x11, x10, #0, #48
     c28: d518202b     	msr	TTBR1_EL1, x11
     c2c: d5182008     	msr	TTBR0_EL1, x8
     c30: d5033fdf     	isb
     c34: d51b4229     	msr	DAIF, x9
     c38: 9248f821     	and	x1, x1, #0xff7fffffffffffff
     c3c: 910023e0     	add	x0, sp, #0x8
     c40: 52800202     	mov	w2, #0x10               // =16
     c44: 94000000     	bl	0xc44 <zlog_comm_write+0x94>
		0000000000000c44:  R_AARCH64_CALL26	__arch_copy_from_user
     c48: aa0003e2     	mov	x2, x0
     c4c: d503201f     	nop
     c50: d53b4228     	mrs	x8, DAIF
     c54: d50343df     	msr	DAIFSet, #0x3
     c58: d5382029     	mrs	x9, TTBR1_EL1
     c5c: 9240bd29     	and	x9, x9, #0xffffffffffff
     c60: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
     c64: d518200a     	msr	TTBR0_EL1, x10
     c68: d5182029     	msr	TTBR1_EL1, x9
     c6c: d5033fdf     	isb
     c70: d51b4228     	msr	DAIF, x8
     c74: b50004c2     	cbnz	x2, 0xd0c <zlog_comm_write+0x15c>
     c78: b9400bf5     	ldr	w21, [sp, #0x8]
     c7c: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000c7c:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     c80: 91000294     	add	x20, x20, #0x0
		0000000000000c80:  R_AARCH64_ADD_ABS_LO12_NC	.bss
     c84: 52800416     	mov	w22, #0x20              // =32
     c88: 52800213     	mov	w19, #0x10              // =16
     c8c: 14000004     	b	0xc9c <zlog_comm_write+0xec>
     c90: f10006d6     	subs	x22, x22, #0x1
     c94: 91048294     	add	x20, x20, #0x120
     c98: 54000540     	b.eq	0xd40 <zlog_comm_write+0x190>
     c9c: 39446288     	ldrb	w8, [x20, #0x118]
     ca0: 34ffff88     	cbz	w8, 0xc90 <zlog_comm_write+0xe0>
     ca4: b940e288     	ldr	w8, [x20, #0xe0]
     ca8: 6b15011f     	cmp	w8, w21
     cac: 54ffff21     	b.ne	0xc90 <zlog_comm_write+0xe0>
     cb0: f9405688     	ldr	x8, [x20, #0xa8]
     cb4: b4fffee8     	cbz	x8, 0xc90 <zlog_comm_write+0xe0>
     cb8: f9400508     	ldr	x8, [x8, #0x8]
     cbc: b4fffea8     	cbz	x8, 0xc90 <zlog_comm_write+0xe0>
     cc0: aa1403e0     	mov	x0, x20
     cc4: 2a1503e1     	mov	w1, w21
     cc8: b85fc110     	ldur	w16, [x8, #-0x4]
     ccc: 729908b1     	movk	w17, #0xc845
     cd0: 72b854d1     	movk	w17, #0xc2a6, lsl #16
     cd4: 6b11021f     	cmp	w16, w17
     cd8: 54000040     	b.eq	0xce0 <zlog_comm_write+0x130>
     cdc: d4304500     	brk	#0x8228
     ce0: d63f0100     	blr	x8
     ce4: 17ffffeb     	b	0xc90 <zlog_comm_write+0xe0>
     ce8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ce8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x615
     cec: 91000000     	add	x0, x0, #0x0
		0000000000000cec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x615
     cf0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000cf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42e
     cf4: 91000021     	add	x1, x1, #0x0
		0000000000000cf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42e
     cf8: 52800203     	mov	w3, #0x10               // =16
     cfc: 94000000     	bl	0xcfc <zlog_comm_write+0x14c>
		0000000000000cfc:  R_AARCH64_CALL26	_printk
     d00: 928002b3     	mov	x19, #-0x16             // =-22
     d04: 1400000f     	b	0xd40 <zlog_comm_write+0x190>
     d08: 52800202     	mov	w2, #0x10               // =16
     d0c: f100445f     	cmp	x2, #0x11
     d10: 54000322     	b.hs	0xd74 <zlog_comm_write+0x1c4>
     d14: 910023e8     	add	x8, sp, #0x8
     d18: 2a1f03e1     	mov	w1, wzr
     d1c: cb020108     	sub	x8, x8, x2
     d20: 91004100     	add	x0, x8, #0x10
     d24: 94000000     	bl	0xd24 <zlog_comm_write+0x174>
		0000000000000d24:  R_AARCH64_CALL26	memset
     d28: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36b
     d2c: 91000000     	add	x0, x0, #0x0
		0000000000000d2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36b
     d30: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42e
     d34: 91000021     	add	x1, x1, #0x0
		0000000000000d34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42e
     d38: 94000000     	bl	0xd38 <zlog_comm_write+0x188>
		0000000000000d38:  R_AARCH64_CALL26	_printk
     d3c: 92800173     	mov	x19, #-0xc              // =-12
     d40: d5384108     	mrs	x8, SP_EL0
     d44: f9438908     	ldr	x8, [x8, #0x710]
     d48: f85f83a9     	ldur	x9, [x29, #-0x8]
     d4c: eb09011f     	cmp	x8, x9
     d50: 54000101     	b.ne	0xd70 <zlog_comm_write+0x1c0>
     d54: aa1303e0     	mov	x0, x19
     d58: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     d5c: a94357f6     	ldp	x22, x21, [sp, #0x30]
     d60: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     d64: 910143ff     	add	sp, sp, #0x50
     d68: d50323bf     	autiasp
     d6c: d65f03c0     	ret
     d70: 94000000     	bl	0xd70 <zlog_comm_write+0x1c0>
		0000000000000d70:  R_AARCH64_CALL26	__stack_chk_fail
     d74: 528001e0     	mov	w0, #0xf                // =15
     d78: aa1f03e1     	mov	x1, xzr
     d7c: 94000000     	bl	0xd7c <zlog_comm_write+0x1cc>
		0000000000000d7c:  R_AARCH64_CALL26	__fortify_panic
