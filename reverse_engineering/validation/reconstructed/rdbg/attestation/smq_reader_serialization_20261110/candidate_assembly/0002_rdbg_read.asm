
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a9c <rdbg_read>:
     a9c: d503233f     	paciasp
     aa0: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
     aa4: f9000bf9     	str	x25, [sp, #0x10]
     aa8: a9025ff8     	stp	x24, x23, [sp, #0x20]
     aac: a90357f6     	stp	x22, x21, [sp, #0x30]
     ab0: a9044ff4     	stp	x20, x19, [sp, #0x40]
     ab4: 910003fd     	mov	x29, sp
     ab8: f9401017     	ldr	x23, [x0, #0x20]
     abc: b40018b7     	cbz	x23, 0xdd0 <rdbg_read+0x334>
     ac0: f94002f8     	ldr	x24, [x23]
     ac4: b4001878     	cbz	x24, 0xdd0 <rdbg_read+0x334>
     ac8: 91002300     	add	x0, x24, #0x8
     acc: aa0203f4     	mov	x20, x2
     ad0: aa0103f3     	mov	x19, x1
     ad4: 94000000     	bl	0xad4 <rdbg_read+0x38>
		0000000000000ad4:  R_AARCH64_CALL26	wait_for_completion_interruptible
     ad8: 35001860     	cbnz	w0, 0xde4 <rdbg_read+0x348>
     adc: 529fe039     	mov	w25, #0xff01            // =65281
     ae0: 910022e0     	add	x0, x23, #0x8
     ae4: 72bfe019     	movk	w25, #0xff00, lsl #16
     ae8: 94000000     	bl	0xae8 <rdbg_read+0x4c>
		0000000000000ae8:  R_AARCH64_CALL26	mutex_lock
     aec: b9411308     	ldr	w8, [x24, #0x110]
     af0: 7100091f     	cmp	w8, #0x2
     af4: 54000861     	b.ne	0xc00 <rdbg_read+0x164>
     af8: f9406b08     	ldr	x8, [x24, #0xd0]
     afc: b9400109     	ldr	w9, [x8]
     b00: 6b19013f     	cmp	w9, w25
     b04: 540007e1     	b.ne	0xc00 <rdbg_read+0x164>
     b08: f9406709     	ldr	x9, [x24, #0xc8]
     b0c: 39400129     	ldrb	w9, [x9]
     b10: 7100053f     	cmp	w9, #0x1
     b14: 54000761     	b.ne	0xc00 <rdbg_read+0x164>
     b18: f9406f09     	ldr	x9, [x24, #0xd8]
     b1c: b9400515     	ldr	w21, [x8, #0x4]
     b20: b9400528     	ldr	w8, [x9, #0x4]
     b24: 6b15011f     	cmp	w8, w21
     b28: 540006c0     	b.eq	0xc00 <rdbg_read+0x164>
     b2c: b9000535     	str	w21, [x9, #0x4]
     b30: b940eb08     	ldr	w8, [x24, #0xe8]
     b34: 34000168     	cbz	w8, 0xb60 <rdbg_read+0xc4>
     b38: aa1f03e8     	mov	x8, xzr
     b3c: 52800209     	mov	w9, #0x10               // =16
     b40: 529fffea     	mov	w10, #0xffff            // =65535
     b44: f9406f0b     	ldr	x11, [x24, #0xd8]
     b48: 91000508     	add	x8, x8, #0x1
     b4c: 7829696a     	strh	w10, [x11, x9]
     b50: 91001129     	add	x9, x9, #0x4
     b54: b940eb0b     	ldr	w11, [x24, #0xe8]
     b58: eb0b011f     	cmp	x8, x11
     b5c: 54ffff43     	b.lo	0xb44 <rdbg_read+0xa8>
     b60: f9406f08     	ldr	x8, [x24, #0xd8]
     b64: b900091f     	str	wzr, [x8, #0x8]
     b68: f9406f08     	ldr	x8, [x24, #0xd8]
     b6c: b9000d1f     	str	wzr, [x8, #0xc]
     b70: b940c308     	ldr	w8, [x24, #0xc0]
     b74: 7100051f     	cmp	w8, #0x1
     b78: 54000441     	b.ne	0xc00 <rdbg_read+0x164>
     b7c: f9405300     	ldr	x0, [x24, #0xa0]
     b80: 94000000     	bl	0xb80 <rdbg_read+0xe4>
		0000000000000b80:  R_AARCH64_CALL26	mutex_lock
     b84: f9404308     	ldr	x8, [x24, #0x80]
     b88: b9400509     	ldr	w9, [x8, #0x4]
     b8c: 6b15013f     	cmp	w9, w21
     b90: 54000340     	b.eq	0xbf8 <rdbg_read+0x15c>
     b94: b9000515     	str	w21, [x8, #0x4]
     b98: b9409b08     	ldr	w8, [x24, #0x98]
     b9c: 34000168     	cbz	w8, 0xbc8 <rdbg_read+0x12c>
     ba0: aa1f03e8     	mov	x8, xzr
     ba4: 52800209     	mov	w9, #0x10               // =16
     ba8: 529fffea     	mov	w10, #0xffff            // =65535
     bac: f940430b     	ldr	x11, [x24, #0x80]
     bb0: 91000508     	add	x8, x8, #0x1
     bb4: 7829696a     	strh	w10, [x11, x9]
     bb8: 91001129     	add	x9, x9, #0x4
     bbc: b9409b0b     	ldr	w11, [x24, #0x98]
     bc0: eb0b011f     	cmp	x8, x11
     bc4: 54ffff43     	b.lo	0xbac <rdbg_read+0x110>
     bc8: f9405f08     	ldr	x8, [x24, #0xb8]
     bcc: b40000e8     	cbz	x8, 0xbe8 <rdbg_read+0x14c>
     bd0: b940b708     	ldr	w8, [x24, #0xb4]
     bd4: f9405f00     	ldr	x0, [x24, #0xb8]
     bd8: 2a1f03e1     	mov	w1, wzr
     bdc: 11000502     	add	w2, w8, #0x1
     be0: 94000000     	bl	0xbe0 <rdbg_read+0x144>
		0000000000000be0:  R_AARCH64_CALL26	memset
     be4: b900b31f     	str	wzr, [x24, #0xb0]
     be8: f9404308     	ldr	x8, [x24, #0x80]
     bec: b900091f     	str	wzr, [x8, #0x8]
     bf0: f9404308     	ldr	x8, [x24, #0x80]
     bf4: b9000d1f     	str	wzr, [x8, #0xc]
     bf8: f9405300     	ldr	x0, [x24, #0xa0]
     bfc: 94000000     	bl	0xbfc <rdbg_read+0x160>
		0000000000000bfc:  R_AARCH64_CALL26	mutex_unlock
     c00: a94ca708     	ldp	x8, x9, [x24, #0xc8]
     c04: 39400108     	ldrb	w8, [x8]
     c08: 7100051f     	cmp	w8, #0x1
     c0c: 54000080     	b.eq	0xc1c <rdbg_read+0x180>
     c10: b9400128     	ldr	w8, [x9]
     c14: 6b19011f     	cmp	w8, w25
     c18: 54000ce1     	b.ne	0xdb4 <rdbg_read+0x318>
     c1c: f9406f08     	ldr	x8, [x24, #0xd8]
     c20: b940092b     	ldr	w11, [x9, #0x8]
     c24: b940090a     	ldr	w10, [x8, #0x8]
     c28: 6b0b015f     	cmp	w10, w11
     c2c: 54000c40     	b.eq	0xdb4 <rdbg_read+0x318>
     c30: 8b0a0929     	add	x9, x9, x10, lsl #2
     c34: b940eb0b     	ldr	w11, [x24, #0xe8]
     c38: 78410d2c     	ldrh	w12, [x9, #0x10]!
     c3c: 6b0c017f     	cmp	w11, w12
     c40: 54000ba9     	b.ls	0xdb4 <rdbg_read+0x318>
     c44: 1100054a     	add	w10, w10, #0x1
     c48: 52800022     	mov	w2, #0x1                // =1
     c4c: 1acb094c     	udiv	w12, w10, w11
     c50: 1b0ba98a     	msub	w10, w12, w11, w10
     c54: b900090a     	str	w10, [x8, #0x8]
     c58: 79400528     	ldrh	w8, [x9, #0x2]
     c5c: f940730a     	ldr	x10, [x24, #0xe0]
     c60: 79400129     	ldrh	w9, [x9]
     c64: d5033d9f     	dsb	ld
     c68: d379e108     	lsl	x8, x8, #7
     c6c: 8b091d56     	add	x22, x10, x9, lsl #7
     c70: eb14011f     	cmp	x8, x20
     c74: aa1603e0     	mov	x0, x22
     c78: 9a943115     	csel	x21, x8, x20, lo
     c7c: aa1503e1     	mov	x1, x21
     c80: 94000000     	bl	0xc80 <rdbg_read+0x1e4>
		0000000000000c80:  R_AARCH64_CALL26	__check_object_size
     c84: d5384108     	mrs	x8, SP_EL0
     c88: 39411909     	ldrb	w9, [x8, #0x46]
     c8c: 37280089     	tbnz	w9, #0x5, 0xc9c <rdbg_read+0x200>
     c90: f940010a     	ldr	x10, [x8]
     c94: aa1303e9     	mov	x9, x19
     c98: 36d0006a     	tbz	w10, #0x1a, 0xca4 <rdbg_read+0x208>
     c9c: d378de69     	lsl	x9, x19, #8
     ca0: 8a892269     	and	x9, x19, x9, asr #8
     ca4: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
     ca8: aa1503e3     	mov	x3, x21
     cac: cb15014a     	sub	x10, x10, x21
     cb0: eb09015f     	cmp	x10, x9
     cb4: 54000363     	b.lo	0xd20 <rdbg_read+0x284>
     cb8: d503201f     	nop
     cbc: d53b4229     	mrs	x9, DAIF
     cc0: d50343df     	msr	DAIFSet, #0x3
     cc4: f9400508     	ldr	x8, [x8, #0x8]
     cc8: d538202a     	mrs	x10, TTBR1_EL1
     ccc: aa0803eb     	mov	x11, x8
     cd0: b340bd4b     	bfxil	x11, x10, #0, #48
     cd4: d518202b     	msr	TTBR1_EL1, x11
     cd8: d5182008     	msr	TTBR0_EL1, x8
     cdc: d5033fdf     	isb
     ce0: d51b4229     	msr	DAIF, x9
     ce4: 9248fa60     	and	x0, x19, #0xff7fffffffffffff
     ce8: aa1603e1     	mov	x1, x22
     cec: aa1503e2     	mov	x2, x21
     cf0: 94000000     	bl	0xcf0 <rdbg_read+0x254>
		0000000000000cf0:  R_AARCH64_CALL26	__arch_copy_to_user
     cf4: aa0003e3     	mov	x3, x0
     cf8: d503201f     	nop
     cfc: d53b4228     	mrs	x8, DAIF
     d00: d50343df     	msr	DAIFSet, #0x3
     d04: d5382029     	mrs	x9, TTBR1_EL1
     d08: 9240bd29     	and	x9, x9, #0xffffffffffff
     d0c: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
     d10: d518200a     	msr	TTBR0_EL1, x10
     d14: d5182029     	msr	TTBR1_EL1, x9
     d18: d5033fdf     	isb
     d1c: d51b4228     	msr	DAIF, x8
     d20: 35000723     	cbnz	w3, 0xe04 <rdbg_read+0x368>
     d24: f9407b00     	ldr	x0, [x24, #0xf0]
     d28: b4000040     	cbz	x0, 0xd30 <rdbg_read+0x294>
     d2c: 94000000     	bl	0xd2c <rdbg_read+0x290>
		0000000000000d2c:  R_AARCH64_CALL26	mutex_lock
     d30: f9406708     	ldr	x8, [x24, #0xc8]
     d34: 39400108     	ldrb	w8, [x8]
     d38: 7100051f     	cmp	w8, #0x1
     d3c: 540000a0     	b.eq	0xd50 <rdbg_read+0x2b4>
     d40: f9406b08     	ldr	x8, [x24, #0xd0]
     d44: b9400108     	ldr	w8, [x8]
     d48: 6b19011f     	cmp	w8, w25
     d4c: 540002c1     	b.ne	0xda4 <rdbg_read+0x308>
     d50: f9407308     	ldr	x8, [x24, #0xe0]
     d54: cb0802c8     	sub	x8, x22, x8
     d58: 9101fd09     	add	x9, x8, #0x7f
     d5c: f100011f     	cmp	x8, #0x0
     d60: 9a88b128     	csel	x8, x9, x8, lt
     d64: b940eb09     	ldr	w9, [x24, #0xe8]
     d68: 9347fd08     	asr	x8, x8, #7
     d6c: 6b08013f     	cmp	w9, w8
     d70: 540001a9     	b.ls	0xda4 <rdbg_read+0x308>
     d74: f9406f09     	ldr	x9, [x24, #0xd8]
     d78: b9400d2a     	ldr	w10, [x9, #0xc]
     d7c: 8b0a0929     	add	x9, x9, x10, lsl #2
     d80: 79002128     	strh	w8, [x9, #0x10]
     d84: 7900253f     	strh	wzr, [x9, #0x12]
     d88: f9406f08     	ldr	x8, [x24, #0xd8]
     d8c: b940eb0a     	ldr	w10, [x24, #0xe8]
     d90: b9400d09     	ldr	w9, [x8, #0xc]
     d94: 11000529     	add	w9, w9, #0x1
     d98: 1aca092b     	udiv	w11, w9, w10
     d9c: 1b0aa569     	msub	w9, w11, w10, w9
     da0: b9000d09     	str	w9, [x8, #0xc]
     da4: f9407b00     	ldr	x0, [x24, #0xf0]
     da8: b40003c0     	cbz	x0, 0xe20 <rdbg_read+0x384>
     dac: 94000000     	bl	0xdac <rdbg_read+0x310>
		0000000000000dac:  R_AARCH64_CALL26	mutex_unlock
     db0: 1400001c     	b	0xe20 <rdbg_read+0x384>
     db4: f9400300     	ldr	x0, [x24]
     db8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000db8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d0
     dbc: 91000021     	add	x1, x1, #0x0
		0000000000000dbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d0
     dc0: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000dc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x262
     dc4: 91000042     	add	x2, x2, #0x0
		0000000000000dc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x262
     dc8: 2a1f03e3     	mov	w3, wzr
     dcc: 14000013     	b	0xe18 <rdbg_read+0x37c>
     dd0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000dd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x227
     dd4: 91000000     	add	x0, x0, #0x0
		0000000000000dd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x227
     dd8: 94000000     	bl	0xdd8 <rdbg_read+0x33c>
		0000000000000dd8:  R_AARCH64_CALL26	_printk
     ddc: 128002b5     	mov	w21, #-0x16             // =-22
     de0: 14000012     	b	0xe28 <rdbg_read+0x38c>
     de4: 2a0003f5     	mov	w21, w0
     de8: f9400300     	ldr	x0, [x24]
     dec: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000dec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5
     df0: 91000021     	add	x1, x1, #0x0
		0000000000000df0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5
     df4: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000df4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x262
     df8: 91000042     	add	x2, x2, #0x0
		0000000000000df8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x262
     dfc: 94000000     	bl	0xdfc <rdbg_read+0x360>
		0000000000000dfc:  R_AARCH64_CALL26	_dev_err
     e00: 1400000a     	b	0xe28 <rdbg_read+0x38c>
     e04: f9400300     	ldr	x0, [x24]
     e08: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42a
     e0c: 91000021     	add	x1, x1, #0x0
		0000000000000e0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42a
     e10: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000e10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x262
     e14: 91000042     	add	x2, x2, #0x0
		0000000000000e14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x262
     e18: 94000000     	bl	0xe18 <rdbg_read+0x37c>
		0000000000000e18:  R_AARCH64_CALL26	_dev_err
     e1c: 12800795     	mov	w21, #-0x3d             // =-61
     e20: 910022e0     	add	x0, x23, #0x8
     e24: 94000000     	bl	0xe24 <rdbg_read+0x388>
		0000000000000e24:  R_AARCH64_CALL26	mutex_unlock
     e28: 93407ea0     	sxtw	x0, w21
     e2c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     e30: f9400bf9     	ldr	x25, [sp, #0x10]
     e34: a94357f6     	ldp	x22, x21, [sp, #0x30]
     e38: a9425ff8     	ldp	x24, x23, [sp, #0x20]
     e3c: a8c57bfd     	ldp	x29, x30, [sp], #0x50
     e40: d50323bf     	autiasp
     e44: d65f03c0     	ret
