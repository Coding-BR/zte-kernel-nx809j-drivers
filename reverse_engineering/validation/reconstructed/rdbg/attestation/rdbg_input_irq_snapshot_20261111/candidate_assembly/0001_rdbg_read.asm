
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b20 <rdbg_read>:
     b20: d503233f     	paciasp
     b24: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
     b28: f9000bf9     	str	x25, [sp, #0x10]
     b2c: a9025ff8     	stp	x24, x23, [sp, #0x20]
     b30: a90357f6     	stp	x22, x21, [sp, #0x30]
     b34: a9044ff4     	stp	x20, x19, [sp, #0x40]
     b38: 910003fd     	mov	x29, sp
     b3c: f9401017     	ldr	x23, [x0, #0x20]
     b40: b40018b7     	cbz	x23, 0xe54 <rdbg_read+0x334>
     b44: f94002f8     	ldr	x24, [x23]
     b48: b4001878     	cbz	x24, 0xe54 <rdbg_read+0x334>
     b4c: 91002300     	add	x0, x24, #0x8
     b50: aa0203f4     	mov	x20, x2
     b54: aa0103f3     	mov	x19, x1
     b58: 94000000     	bl	0xb58 <rdbg_read+0x38>
		0000000000000b58:  R_AARCH64_CALL26	wait_for_completion_interruptible
     b5c: 35001860     	cbnz	w0, 0xe68 <rdbg_read+0x348>
     b60: 529fe039     	mov	w25, #0xff01            // =65281
     b64: 910022e0     	add	x0, x23, #0x8
     b68: 72bfe019     	movk	w25, #0xff00, lsl #16
     b6c: 94000000     	bl	0xb6c <rdbg_read+0x4c>
		0000000000000b6c:  R_AARCH64_CALL26	mutex_lock
     b70: b9411308     	ldr	w8, [x24, #0x110]
     b74: 7100091f     	cmp	w8, #0x2
     b78: 54000861     	b.ne	0xc84 <rdbg_read+0x164>
     b7c: f9406b08     	ldr	x8, [x24, #0xd0]
     b80: b9400109     	ldr	w9, [x8]
     b84: 6b19013f     	cmp	w9, w25
     b88: 540007e1     	b.ne	0xc84 <rdbg_read+0x164>
     b8c: f9406709     	ldr	x9, [x24, #0xc8]
     b90: 39400129     	ldrb	w9, [x9]
     b94: 7100053f     	cmp	w9, #0x1
     b98: 54000761     	b.ne	0xc84 <rdbg_read+0x164>
     b9c: f9406f09     	ldr	x9, [x24, #0xd8]
     ba0: b9400515     	ldr	w21, [x8, #0x4]
     ba4: b9400528     	ldr	w8, [x9, #0x4]
     ba8: 6b15011f     	cmp	w8, w21
     bac: 540006c0     	b.eq	0xc84 <rdbg_read+0x164>
     bb0: b9000535     	str	w21, [x9, #0x4]
     bb4: b940eb08     	ldr	w8, [x24, #0xe8]
     bb8: 34000168     	cbz	w8, 0xbe4 <rdbg_read+0xc4>
     bbc: aa1f03e8     	mov	x8, xzr
     bc0: 52800209     	mov	w9, #0x10               // =16
     bc4: 529fffea     	mov	w10, #0xffff            // =65535
     bc8: f9406f0b     	ldr	x11, [x24, #0xd8]
     bcc: 91000508     	add	x8, x8, #0x1
     bd0: 7829696a     	strh	w10, [x11, x9]
     bd4: 91001129     	add	x9, x9, #0x4
     bd8: b940eb0b     	ldr	w11, [x24, #0xe8]
     bdc: eb0b011f     	cmp	x8, x11
     be0: 54ffff43     	b.lo	0xbc8 <rdbg_read+0xa8>
     be4: f9406f08     	ldr	x8, [x24, #0xd8]
     be8: b900091f     	str	wzr, [x8, #0x8]
     bec: f9406f08     	ldr	x8, [x24, #0xd8]
     bf0: b9000d1f     	str	wzr, [x8, #0xc]
     bf4: b940c308     	ldr	w8, [x24, #0xc0]
     bf8: 7100051f     	cmp	w8, #0x1
     bfc: 54000441     	b.ne	0xc84 <rdbg_read+0x164>
     c00: f9405300     	ldr	x0, [x24, #0xa0]
     c04: 94000000     	bl	0xc04 <rdbg_read+0xe4>
		0000000000000c04:  R_AARCH64_CALL26	mutex_lock
     c08: f9404308     	ldr	x8, [x24, #0x80]
     c0c: b9400509     	ldr	w9, [x8, #0x4]
     c10: 6b15013f     	cmp	w9, w21
     c14: 54000340     	b.eq	0xc7c <rdbg_read+0x15c>
     c18: b9000515     	str	w21, [x8, #0x4]
     c1c: b9409b08     	ldr	w8, [x24, #0x98]
     c20: 34000168     	cbz	w8, 0xc4c <rdbg_read+0x12c>
     c24: aa1f03e8     	mov	x8, xzr
     c28: 52800209     	mov	w9, #0x10               // =16
     c2c: 529fffea     	mov	w10, #0xffff            // =65535
     c30: f940430b     	ldr	x11, [x24, #0x80]
     c34: 91000508     	add	x8, x8, #0x1
     c38: 7829696a     	strh	w10, [x11, x9]
     c3c: 91001129     	add	x9, x9, #0x4
     c40: b9409b0b     	ldr	w11, [x24, #0x98]
     c44: eb0b011f     	cmp	x8, x11
     c48: 54ffff43     	b.lo	0xc30 <rdbg_read+0x110>
     c4c: f9405f08     	ldr	x8, [x24, #0xb8]
     c50: b40000e8     	cbz	x8, 0xc6c <rdbg_read+0x14c>
     c54: b940b708     	ldr	w8, [x24, #0xb4]
     c58: f9405f00     	ldr	x0, [x24, #0xb8]
     c5c: 2a1f03e1     	mov	w1, wzr
     c60: 11000502     	add	w2, w8, #0x1
     c64: 94000000     	bl	0xc64 <rdbg_read+0x144>
		0000000000000c64:  R_AARCH64_CALL26	memset
     c68: b900b31f     	str	wzr, [x24, #0xb0]
     c6c: f9404308     	ldr	x8, [x24, #0x80]
     c70: b900091f     	str	wzr, [x8, #0x8]
     c74: f9404308     	ldr	x8, [x24, #0x80]
     c78: b9000d1f     	str	wzr, [x8, #0xc]
     c7c: f9405300     	ldr	x0, [x24, #0xa0]
     c80: 94000000     	bl	0xc80 <rdbg_read+0x160>
		0000000000000c80:  R_AARCH64_CALL26	mutex_unlock
     c84: a94ca708     	ldp	x8, x9, [x24, #0xc8]
     c88: 39400108     	ldrb	w8, [x8]
     c8c: 7100051f     	cmp	w8, #0x1
     c90: 54000080     	b.eq	0xca0 <rdbg_read+0x180>
     c94: b9400128     	ldr	w8, [x9]
     c98: 6b19011f     	cmp	w8, w25
     c9c: 54000ce1     	b.ne	0xe38 <rdbg_read+0x318>
     ca0: f9406f08     	ldr	x8, [x24, #0xd8]
     ca4: b940092b     	ldr	w11, [x9, #0x8]
     ca8: b940090a     	ldr	w10, [x8, #0x8]
     cac: 6b0b015f     	cmp	w10, w11
     cb0: 54000c40     	b.eq	0xe38 <rdbg_read+0x318>
     cb4: 8b0a0929     	add	x9, x9, x10, lsl #2
     cb8: b940eb0b     	ldr	w11, [x24, #0xe8]
     cbc: 78410d2c     	ldrh	w12, [x9, #0x10]!
     cc0: 6b0c017f     	cmp	w11, w12
     cc4: 54000ba9     	b.ls	0xe38 <rdbg_read+0x318>
     cc8: 1100054a     	add	w10, w10, #0x1
     ccc: 52800022     	mov	w2, #0x1                // =1
     cd0: 1acb094c     	udiv	w12, w10, w11
     cd4: 1b0ba98a     	msub	w10, w12, w11, w10
     cd8: b900090a     	str	w10, [x8, #0x8]
     cdc: 79400528     	ldrh	w8, [x9, #0x2]
     ce0: f940730a     	ldr	x10, [x24, #0xe0]
     ce4: 79400129     	ldrh	w9, [x9]
     ce8: d5033d9f     	dsb	ld
     cec: d379e108     	lsl	x8, x8, #7
     cf0: 8b091d56     	add	x22, x10, x9, lsl #7
     cf4: eb14011f     	cmp	x8, x20
     cf8: aa1603e0     	mov	x0, x22
     cfc: 9a943115     	csel	x21, x8, x20, lo
     d00: aa1503e1     	mov	x1, x21
     d04: 94000000     	bl	0xd04 <rdbg_read+0x1e4>
		0000000000000d04:  R_AARCH64_CALL26	__check_object_size
     d08: d5384108     	mrs	x8, SP_EL0
     d0c: 39411909     	ldrb	w9, [x8, #0x46]
     d10: 37280089     	tbnz	w9, #0x5, 0xd20 <rdbg_read+0x200>
     d14: f940010a     	ldr	x10, [x8]
     d18: aa1303e9     	mov	x9, x19
     d1c: 36d0006a     	tbz	w10, #0x1a, 0xd28 <rdbg_read+0x208>
     d20: d378de69     	lsl	x9, x19, #8
     d24: 8a892269     	and	x9, x19, x9, asr #8
     d28: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
     d2c: aa1503e3     	mov	x3, x21
     d30: cb15014a     	sub	x10, x10, x21
     d34: eb09015f     	cmp	x10, x9
     d38: 54000363     	b.lo	0xda4 <rdbg_read+0x284>
     d3c: d503201f     	nop
     d40: d53b4229     	mrs	x9, DAIF
     d44: d50343df     	msr	DAIFSet, #0x3
     d48: f9400508     	ldr	x8, [x8, #0x8]
     d4c: d538202a     	mrs	x10, TTBR1_EL1
     d50: aa0803eb     	mov	x11, x8
     d54: b340bd4b     	bfxil	x11, x10, #0, #48
     d58: d518202b     	msr	TTBR1_EL1, x11
     d5c: d5182008     	msr	TTBR0_EL1, x8
     d60: d5033fdf     	isb
     d64: d51b4229     	msr	DAIF, x9
     d68: 9248fa60     	and	x0, x19, #0xff7fffffffffffff
     d6c: aa1603e1     	mov	x1, x22
     d70: aa1503e2     	mov	x2, x21
     d74: 94000000     	bl	0xd74 <rdbg_read+0x254>
		0000000000000d74:  R_AARCH64_CALL26	__arch_copy_to_user
     d78: aa0003e3     	mov	x3, x0
     d7c: d503201f     	nop
     d80: d53b4228     	mrs	x8, DAIF
     d84: d50343df     	msr	DAIFSet, #0x3
     d88: d5382029     	mrs	x9, TTBR1_EL1
     d8c: 9240bd29     	and	x9, x9, #0xffffffffffff
     d90: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
     d94: d518200a     	msr	TTBR0_EL1, x10
     d98: d5182029     	msr	TTBR1_EL1, x9
     d9c: d5033fdf     	isb
     da0: d51b4228     	msr	DAIF, x8
     da4: 35000723     	cbnz	w3, 0xe88 <rdbg_read+0x368>
     da8: f9407b00     	ldr	x0, [x24, #0xf0]
     dac: b4000040     	cbz	x0, 0xdb4 <rdbg_read+0x294>
     db0: 94000000     	bl	0xdb0 <rdbg_read+0x290>
		0000000000000db0:  R_AARCH64_CALL26	mutex_lock
     db4: f9406708     	ldr	x8, [x24, #0xc8]
     db8: 39400108     	ldrb	w8, [x8]
     dbc: 7100051f     	cmp	w8, #0x1
     dc0: 540000a0     	b.eq	0xdd4 <rdbg_read+0x2b4>
     dc4: f9406b08     	ldr	x8, [x24, #0xd0]
     dc8: b9400108     	ldr	w8, [x8]
     dcc: 6b19011f     	cmp	w8, w25
     dd0: 540002c1     	b.ne	0xe28 <rdbg_read+0x308>
     dd4: f9407308     	ldr	x8, [x24, #0xe0]
     dd8: cb0802c8     	sub	x8, x22, x8
     ddc: 9101fd09     	add	x9, x8, #0x7f
     de0: f100011f     	cmp	x8, #0x0
     de4: 9a88b128     	csel	x8, x9, x8, lt
     de8: b940eb09     	ldr	w9, [x24, #0xe8]
     dec: 9347fd08     	asr	x8, x8, #7
     df0: 6b08013f     	cmp	w9, w8
     df4: 540001a9     	b.ls	0xe28 <rdbg_read+0x308>
     df8: f9406f09     	ldr	x9, [x24, #0xd8]
     dfc: b9400d2a     	ldr	w10, [x9, #0xc]
     e00: 8b0a0929     	add	x9, x9, x10, lsl #2
     e04: 79002128     	strh	w8, [x9, #0x10]
     e08: 7900253f     	strh	wzr, [x9, #0x12]
     e0c: f9406f08     	ldr	x8, [x24, #0xd8]
     e10: b940eb0a     	ldr	w10, [x24, #0xe8]
     e14: b9400d09     	ldr	w9, [x8, #0xc]
     e18: 11000529     	add	w9, w9, #0x1
     e1c: 1aca092b     	udiv	w11, w9, w10
     e20: 1b0aa569     	msub	w9, w11, w10, w9
     e24: b9000d09     	str	w9, [x8, #0xc]
     e28: f9407b00     	ldr	x0, [x24, #0xf0]
     e2c: b40003c0     	cbz	x0, 0xea4 <rdbg_read+0x384>
     e30: 94000000     	bl	0xe30 <rdbg_read+0x310>
		0000000000000e30:  R_AARCH64_CALL26	mutex_unlock
     e34: 1400001c     	b	0xea4 <rdbg_read+0x384>
     e38: f9400300     	ldr	x0, [x24]
     e3c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d0
     e40: 91000021     	add	x1, x1, #0x0
		0000000000000e40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d0
     e44: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000e44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x262
     e48: 91000042     	add	x2, x2, #0x0
		0000000000000e48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x262
     e4c: 2a1f03e3     	mov	w3, wzr
     e50: 14000013     	b	0xe9c <rdbg_read+0x37c>
     e54: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x227
     e58: 91000000     	add	x0, x0, #0x0
		0000000000000e58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x227
     e5c: 94000000     	bl	0xe5c <rdbg_read+0x33c>
		0000000000000e5c:  R_AARCH64_CALL26	_printk
     e60: 128002b5     	mov	w21, #-0x16             // =-22
     e64: 14000012     	b	0xeac <rdbg_read+0x38c>
     e68: 2a0003f5     	mov	w21, w0
     e6c: f9400300     	ldr	x0, [x24]
     e70: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5
     e74: 91000021     	add	x1, x1, #0x0
		0000000000000e74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5
     e78: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000e78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x262
     e7c: 91000042     	add	x2, x2, #0x0
		0000000000000e7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x262
     e80: 94000000     	bl	0xe80 <rdbg_read+0x360>
		0000000000000e80:  R_AARCH64_CALL26	_dev_err
     e84: 1400000a     	b	0xeac <rdbg_read+0x38c>
     e88: f9400300     	ldr	x0, [x24]
     e8c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42a
     e90: 91000021     	add	x1, x1, #0x0
		0000000000000e90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42a
     e94: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000e94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x262
     e98: 91000042     	add	x2, x2, #0x0
		0000000000000e98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x262
     e9c: 94000000     	bl	0xe9c <rdbg_read+0x37c>
		0000000000000e9c:  R_AARCH64_CALL26	_dev_err
     ea0: 12800795     	mov	w21, #-0x3d             // =-61
     ea4: 910022e0     	add	x0, x23, #0x8
     ea8: 94000000     	bl	0xea8 <rdbg_read+0x388>
		0000000000000ea8:  R_AARCH64_CALL26	mutex_unlock
     eac: 93407ea0     	sxtw	x0, w21
     eb0: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     eb4: f9400bf9     	ldr	x25, [sp, #0x10]
     eb8: a94357f6     	ldp	x22, x21, [sp, #0x30]
     ebc: a9425ff8     	ldp	x24, x23, [sp, #0x20]
     ec0: a8c57bfd     	ldp	x29, x30, [sp], #0x50
     ec4: d50323bf     	autiasp
     ec8: d65f03c0     	ret
