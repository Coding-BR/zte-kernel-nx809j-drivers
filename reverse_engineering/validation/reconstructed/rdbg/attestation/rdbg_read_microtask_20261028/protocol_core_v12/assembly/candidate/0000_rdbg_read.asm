
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000009bc <rdbg_read>:
     9bc: d503233f     	paciasp
     9c0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     9c4: f9000bf7     	str	x23, [sp, #0x10]
     9c8: a90257f6     	stp	x22, x21, [sp, #0x20]
     9cc: a9034ff4     	stp	x20, x19, [sp, #0x30]
     9d0: 910003fd     	mov	x29, sp
     9d4: f9401016     	ldr	x22, [x0, #0x20]
     9d8: b4001916     	cbz	x22, 0xcf8 <rdbg_read+0x33c>
     9dc: 910022c0     	add	x0, x22, #0x8
     9e0: aa0203f4     	mov	x20, x2
     9e4: aa0103f3     	mov	x19, x1
     9e8: 94000000     	bl	0x9e8 <rdbg_read+0x2c>
		00000000000009e8:  R_AARCH64_CALL26	wait_for_completion_interruptible
     9ec: 35001900     	cbnz	w0, 0xd0c <rdbg_read+0x350>
     9f0: b94112c8     	ldr	w8, [x22, #0x110]
     9f4: 529fe037     	mov	w23, #0xff01            // =65281
     9f8: 72bfe017     	movk	w23, #0xff00, lsl #16
     9fc: 7100091f     	cmp	w8, #0x2
     a00: 54000861     	b.ne	0xb0c <rdbg_read+0x150>
     a04: f9406ac8     	ldr	x8, [x22, #0xd0]
     a08: b9400109     	ldr	w9, [x8]
     a0c: 6b17013f     	cmp	w9, w23
     a10: 540007e1     	b.ne	0xb0c <rdbg_read+0x150>
     a14: f94066c9     	ldr	x9, [x22, #0xc8]
     a18: 39400129     	ldrb	w9, [x9]
     a1c: 7100053f     	cmp	w9, #0x1
     a20: 54000761     	b.ne	0xb0c <rdbg_read+0x150>
     a24: f9406ec9     	ldr	x9, [x22, #0xd8]
     a28: b9400515     	ldr	w21, [x8, #0x4]
     a2c: b9400528     	ldr	w8, [x9, #0x4]
     a30: 6b15011f     	cmp	w8, w21
     a34: 540006c0     	b.eq	0xb0c <rdbg_read+0x150>
     a38: b9000535     	str	w21, [x9, #0x4]
     a3c: b940eac8     	ldr	w8, [x22, #0xe8]
     a40: 34000168     	cbz	w8, 0xa6c <rdbg_read+0xb0>
     a44: aa1f03e8     	mov	x8, xzr
     a48: 52800209     	mov	w9, #0x10               // =16
     a4c: 529fffea     	mov	w10, #0xffff            // =65535
     a50: f9406ecb     	ldr	x11, [x22, #0xd8]
     a54: 91000508     	add	x8, x8, #0x1
     a58: 7829696a     	strh	w10, [x11, x9]
     a5c: 91001129     	add	x9, x9, #0x4
     a60: b940eacb     	ldr	w11, [x22, #0xe8]
     a64: eb0b011f     	cmp	x8, x11
     a68: 54ffff43     	b.lo	0xa50 <rdbg_read+0x94>
     a6c: f9406ec8     	ldr	x8, [x22, #0xd8]
     a70: b900091f     	str	wzr, [x8, #0x8]
     a74: f9406ec8     	ldr	x8, [x22, #0xd8]
     a78: b9000d1f     	str	wzr, [x8, #0xc]
     a7c: b940c2c8     	ldr	w8, [x22, #0xc0]
     a80: 7100051f     	cmp	w8, #0x1
     a84: 54000441     	b.ne	0xb0c <rdbg_read+0x150>
     a88: f94052c0     	ldr	x0, [x22, #0xa0]
     a8c: 94000000     	bl	0xa8c <rdbg_read+0xd0>
		0000000000000a8c:  R_AARCH64_CALL26	mutex_lock
     a90: f94042c8     	ldr	x8, [x22, #0x80]
     a94: b9400509     	ldr	w9, [x8, #0x4]
     a98: 6b15013f     	cmp	w9, w21
     a9c: 54000340     	b.eq	0xb04 <rdbg_read+0x148>
     aa0: b9000515     	str	w21, [x8, #0x4]
     aa4: b9409ac8     	ldr	w8, [x22, #0x98]
     aa8: 34000168     	cbz	w8, 0xad4 <rdbg_read+0x118>
     aac: aa1f03e8     	mov	x8, xzr
     ab0: 52800209     	mov	w9, #0x10               // =16
     ab4: 529fffea     	mov	w10, #0xffff            // =65535
     ab8: f94042cb     	ldr	x11, [x22, #0x80]
     abc: 91000508     	add	x8, x8, #0x1
     ac0: 7829696a     	strh	w10, [x11, x9]
     ac4: 91001129     	add	x9, x9, #0x4
     ac8: b9409acb     	ldr	w11, [x22, #0x98]
     acc: eb0b011f     	cmp	x8, x11
     ad0: 54ffff43     	b.lo	0xab8 <rdbg_read+0xfc>
     ad4: f9405ec8     	ldr	x8, [x22, #0xb8]
     ad8: b40000e8     	cbz	x8, 0xaf4 <rdbg_read+0x138>
     adc: b940b6c8     	ldr	w8, [x22, #0xb4]
     ae0: f9405ec0     	ldr	x0, [x22, #0xb8]
     ae4: 2a1f03e1     	mov	w1, wzr
     ae8: 11000502     	add	w2, w8, #0x1
     aec: 94000000     	bl	0xaec <rdbg_read+0x130>
		0000000000000aec:  R_AARCH64_CALL26	memset
     af0: b900b2df     	str	wzr, [x22, #0xb0]
     af4: f94042c8     	ldr	x8, [x22, #0x80]
     af8: b900091f     	str	wzr, [x8, #0x8]
     afc: f94042c8     	ldr	x8, [x22, #0x80]
     b00: b9000d1f     	str	wzr, [x8, #0xc]
     b04: f94052c0     	ldr	x0, [x22, #0xa0]
     b08: 94000000     	bl	0xb08 <rdbg_read+0x14c>
		0000000000000b08:  R_AARCH64_CALL26	mutex_unlock
     b0c: a94ca6c8     	ldp	x8, x9, [x22, #0xc8]
     b10: 39400108     	ldrb	w8, [x8]
     b14: 7100051f     	cmp	w8, #0x1
     b18: 54000080     	b.eq	0xb28 <rdbg_read+0x16c>
     b1c: b9400128     	ldr	w8, [x9]
     b20: 6b17011f     	cmp	w8, w23
     b24: 54000dc1     	b.ne	0xcdc <rdbg_read+0x320>
     b28: f9406ec8     	ldr	x8, [x22, #0xd8]
     b2c: b940092b     	ldr	w11, [x9, #0x8]
     b30: b940090a     	ldr	w10, [x8, #0x8]
     b34: 6b0b015f     	cmp	w10, w11
     b38: 54000d20     	b.eq	0xcdc <rdbg_read+0x320>
     b3c: 8b0a0929     	add	x9, x9, x10, lsl #2
     b40: b940eacb     	ldr	w11, [x22, #0xe8]
     b44: 78410d2c     	ldrh	w12, [x9, #0x10]!
     b48: 6b0c017f     	cmp	w11, w12
     b4c: 54000c89     	b.ls	0xcdc <rdbg_read+0x320>
     b50: 1100054a     	add	w10, w10, #0x1
     b54: 52800022     	mov	w2, #0x1                // =1
     b58: 1acb094c     	udiv	w12, w10, w11
     b5c: 1b0ba98a     	msub	w10, w12, w11, w10
     b60: b900090a     	str	w10, [x8, #0x8]
     b64: 79400528     	ldrh	w8, [x9, #0x2]
     b68: f94072ca     	ldr	x10, [x22, #0xe0]
     b6c: 79400129     	ldrh	w9, [x9]
     b70: d5033d9f     	dsb	ld
     b74: d379e108     	lsl	x8, x8, #7
     b78: 8b091d55     	add	x21, x10, x9, lsl #7
     b7c: eb14011f     	cmp	x8, x20
     b80: aa1503e0     	mov	x0, x21
     b84: 9a943114     	csel	x20, x8, x20, lo
     b88: aa1403e1     	mov	x1, x20
     b8c: 94000000     	bl	0xb8c <rdbg_read+0x1d0>
		0000000000000b8c:  R_AARCH64_CALL26	__check_object_size
     b90: d5384108     	mrs	x8, SP_EL0
     b94: 39411909     	ldrb	w9, [x8, #0x46]
     b98: 37280089     	tbnz	w9, #0x5, 0xba8 <rdbg_read+0x1ec>
     b9c: f940010a     	ldr	x10, [x8]
     ba0: aa1303e9     	mov	x9, x19
     ba4: 36d0006a     	tbz	w10, #0x1a, 0xbb0 <rdbg_read+0x1f4>
     ba8: d378de69     	lsl	x9, x19, #8
     bac: 8a892269     	and	x9, x19, x9, asr #8
     bb0: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
     bb4: aa1403e3     	mov	x3, x20
     bb8: cb14014a     	sub	x10, x10, x20
     bbc: eb09015f     	cmp	x10, x9
     bc0: 54000363     	b.lo	0xc2c <rdbg_read+0x270>
     bc4: d503201f     	nop
     bc8: d53b4229     	mrs	x9, DAIF
     bcc: d50343df     	msr	DAIFSet, #0x3
     bd0: f9400508     	ldr	x8, [x8, #0x8]
     bd4: d538202a     	mrs	x10, TTBR1_EL1
     bd8: aa0803eb     	mov	x11, x8
     bdc: b340bd4b     	bfxil	x11, x10, #0, #48
     be0: d518202b     	msr	TTBR1_EL1, x11
     be4: d5182008     	msr	TTBR0_EL1, x8
     be8: d5033fdf     	isb
     bec: d51b4229     	msr	DAIF, x9
     bf0: 9248fa60     	and	x0, x19, #0xff7fffffffffffff
     bf4: aa1503e1     	mov	x1, x21
     bf8: aa1403e2     	mov	x2, x20
     bfc: 94000000     	bl	0xbfc <rdbg_read+0x240>
		0000000000000bfc:  R_AARCH64_CALL26	__arch_copy_to_user
     c00: aa0003e3     	mov	x3, x0
     c04: d503201f     	nop
     c08: d53b4228     	mrs	x8, DAIF
     c0c: d50343df     	msr	DAIFSet, #0x3
     c10: d5382029     	mrs	x9, TTBR1_EL1
     c14: 9240bd29     	and	x9, x9, #0xffffffffffff
     c18: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
     c1c: d518200a     	msr	TTBR0_EL1, x10
     c20: d5182029     	msr	TTBR1_EL1, x9
     c24: d5033fdf     	isb
     c28: d51b4228     	msr	DAIF, x8
     c2c: 35000803     	cbnz	w3, 0xd2c <rdbg_read+0x370>
     c30: f9407ac0     	ldr	x0, [x22, #0xf0]
     c34: b4000040     	cbz	x0, 0xc3c <rdbg_read+0x280>
     c38: 94000000     	bl	0xc38 <rdbg_read+0x27c>
		0000000000000c38:  R_AARCH64_CALL26	mutex_lock
     c3c: f94066c8     	ldr	x8, [x22, #0xc8]
     c40: 39400108     	ldrb	w8, [x8]
     c44: 7100051f     	cmp	w8, #0x1
     c48: 540000a0     	b.eq	0xc5c <rdbg_read+0x2a0>
     c4c: f9406ac8     	ldr	x8, [x22, #0xd0]
     c50: b9400108     	ldr	w8, [x8]
     c54: 6b17011f     	cmp	w8, w23
     c58: 540002c1     	b.ne	0xcb0 <rdbg_read+0x2f4>
     c5c: f94072c8     	ldr	x8, [x22, #0xe0]
     c60: cb0802a8     	sub	x8, x21, x8
     c64: 9101fd09     	add	x9, x8, #0x7f
     c68: f100011f     	cmp	x8, #0x0
     c6c: 9a88b128     	csel	x8, x9, x8, lt
     c70: b940eac9     	ldr	w9, [x22, #0xe8]
     c74: 9347fd08     	asr	x8, x8, #7
     c78: 6b08013f     	cmp	w9, w8
     c7c: 540001a9     	b.ls	0xcb0 <rdbg_read+0x2f4>
     c80: f9406ec9     	ldr	x9, [x22, #0xd8]
     c84: b9400d2a     	ldr	w10, [x9, #0xc]
     c88: 8b0a0929     	add	x9, x9, x10, lsl #2
     c8c: 79002128     	strh	w8, [x9, #0x10]
     c90: 7900253f     	strh	wzr, [x9, #0x12]
     c94: f9406ec8     	ldr	x8, [x22, #0xd8]
     c98: b940eaca     	ldr	w10, [x22, #0xe8]
     c9c: b9400d09     	ldr	w9, [x8, #0xc]
     ca0: 11000529     	add	w9, w9, #0x1
     ca4: 1aca092b     	udiv	w11, w9, w10
     ca8: 1b0aa569     	msub	w9, w11, w10, w9
     cac: b9000d09     	str	w9, [x8, #0xc]
     cb0: f9407ac0     	ldr	x0, [x22, #0xf0]
     cb4: b4000040     	cbz	x0, 0xcbc <rdbg_read+0x300>
     cb8: 94000000     	bl	0xcb8 <rdbg_read+0x2fc>
		0000000000000cb8:  R_AARCH64_CALL26	mutex_unlock
     cbc: 2a1403f5     	mov	w21, w20
     cc0: 93407ea0     	sxtw	x0, w21
     cc4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     cc8: f9400bf7     	ldr	x23, [sp, #0x10]
     ccc: a94257f6     	ldp	x22, x21, [sp, #0x20]
     cd0: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     cd4: d50323bf     	autiasp
     cd8: d65f03c0     	ret
     cdc: f94002c0     	ldr	x0, [x22]
     ce0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ce0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38c
     ce4: 91000021     	add	x1, x1, #0x0
		0000000000000ce4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38c
     ce8: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000ce8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24a
     cec: 91000042     	add	x2, x2, #0x0
		0000000000000cec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24a
     cf0: 2a1f03e3     	mov	w3, wzr
     cf4: 14000013     	b	0xd40 <rdbg_read+0x384>
     cf8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000cf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f4
     cfc: 91000000     	add	x0, x0, #0x0
		0000000000000cfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f4
     d00: 94000000     	bl	0xd00 <rdbg_read+0x344>
		0000000000000d00:  R_AARCH64_CALL26	_printk
     d04: 128002b5     	mov	w21, #-0x16             // =-22
     d08: 17ffffee     	b	0xcc0 <rdbg_read+0x304>
     d0c: 2a0003f5     	mov	w21, w0
     d10: f94002c0     	ldr	x0, [x22]
     d14: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5
     d18: 91000021     	add	x1, x1, #0x0
		0000000000000d18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5
     d1c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000d1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24a
     d20: 91000042     	add	x2, x2, #0x0
		0000000000000d20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24a
     d24: 94000000     	bl	0xd24 <rdbg_read+0x368>
		0000000000000d24:  R_AARCH64_CALL26	_dev_err
     d28: 17ffffe6     	b	0xcc0 <rdbg_read+0x304>
     d2c: f94002c0     	ldr	x0, [x22]
     d30: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3dc
     d34: 91000021     	add	x1, x1, #0x0
		0000000000000d34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3dc
     d38: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000d38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24a
     d3c: 91000042     	add	x2, x2, #0x0
		0000000000000d3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24a
     d40: 94000000     	bl	0xd40 <rdbg_read+0x384>
		0000000000000d40:  R_AARCH64_CALL26	_dev_err
     d44: 12800795     	mov	w21, #-0x3d             // =-61
     d48: 17ffffde     	b	0xcc0 <rdbg_read+0x304>
