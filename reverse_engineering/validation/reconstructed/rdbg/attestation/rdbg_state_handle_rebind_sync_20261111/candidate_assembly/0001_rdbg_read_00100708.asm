
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ae4 <rdbg_read>:
     ae4: d503233f     	paciasp
     ae8: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
     aec: f9000bf9     	str	x25, [sp, #0x10]
     af0: a9025ff8     	stp	x24, x23, [sp, #0x20]
     af4: a90357f6     	stp	x22, x21, [sp, #0x30]
     af8: a9044ff4     	stp	x20, x19, [sp, #0x40]
     afc: 910003fd     	mov	x29, sp
     b00: f9401017     	ldr	x23, [x0, #0x20]
     b04: b40018b7     	cbz	x23, 0xe18 <rdbg_read+0x334>
     b08: f94002f8     	ldr	x24, [x23]
     b0c: b4001878     	cbz	x24, 0xe18 <rdbg_read+0x334>
     b10: 91002300     	add	x0, x24, #0x8
     b14: aa0203f4     	mov	x20, x2
     b18: aa0103f3     	mov	x19, x1
     b1c: 94000000     	bl	0xb1c <rdbg_read+0x38>
		0000000000000b1c:  R_AARCH64_CALL26	wait_for_completion_interruptible
     b20: 35001860     	cbnz	w0, 0xe2c <rdbg_read+0x348>
     b24: 529fe039     	mov	w25, #0xff01            // =65281
     b28: 910022e0     	add	x0, x23, #0x8
     b2c: 72bfe019     	movk	w25, #0xff00, lsl #16
     b30: 94000000     	bl	0xb30 <rdbg_read+0x4c>
		0000000000000b30:  R_AARCH64_CALL26	mutex_lock
     b34: b9411308     	ldr	w8, [x24, #0x110]
     b38: 7100091f     	cmp	w8, #0x2
     b3c: 54000861     	b.ne	0xc48 <rdbg_read+0x164>
     b40: f9406b08     	ldr	x8, [x24, #0xd0]
     b44: b9400109     	ldr	w9, [x8]
     b48: 6b19013f     	cmp	w9, w25
     b4c: 540007e1     	b.ne	0xc48 <rdbg_read+0x164>
     b50: f9406709     	ldr	x9, [x24, #0xc8]
     b54: 39400129     	ldrb	w9, [x9]
     b58: 7100053f     	cmp	w9, #0x1
     b5c: 54000761     	b.ne	0xc48 <rdbg_read+0x164>
     b60: f9406f09     	ldr	x9, [x24, #0xd8]
     b64: b9400515     	ldr	w21, [x8, #0x4]
     b68: b9400528     	ldr	w8, [x9, #0x4]
     b6c: 6b15011f     	cmp	w8, w21
     b70: 540006c0     	b.eq	0xc48 <rdbg_read+0x164>
     b74: b9000535     	str	w21, [x9, #0x4]
     b78: b940eb08     	ldr	w8, [x24, #0xe8]
     b7c: 34000168     	cbz	w8, 0xba8 <rdbg_read+0xc4>
     b80: aa1f03e8     	mov	x8, xzr
     b84: 52800209     	mov	w9, #0x10               // =16
     b88: 529fffea     	mov	w10, #0xffff            // =65535
     b8c: f9406f0b     	ldr	x11, [x24, #0xd8]
     b90: 91000508     	add	x8, x8, #0x1
     b94: 7829696a     	strh	w10, [x11, x9]
     b98: 91001129     	add	x9, x9, #0x4
     b9c: b940eb0b     	ldr	w11, [x24, #0xe8]
     ba0: eb0b011f     	cmp	x8, x11
     ba4: 54ffff43     	b.lo	0xb8c <rdbg_read+0xa8>
     ba8: f9406f08     	ldr	x8, [x24, #0xd8]
     bac: b900091f     	str	wzr, [x8, #0x8]
     bb0: f9406f08     	ldr	x8, [x24, #0xd8]
     bb4: b9000d1f     	str	wzr, [x8, #0xc]
     bb8: b940c308     	ldr	w8, [x24, #0xc0]
     bbc: 7100051f     	cmp	w8, #0x1
     bc0: 54000441     	b.ne	0xc48 <rdbg_read+0x164>
     bc4: f9405300     	ldr	x0, [x24, #0xa0]
     bc8: 94000000     	bl	0xbc8 <rdbg_read+0xe4>
		0000000000000bc8:  R_AARCH64_CALL26	mutex_lock
     bcc: f9404308     	ldr	x8, [x24, #0x80]
     bd0: b9400509     	ldr	w9, [x8, #0x4]
     bd4: 6b15013f     	cmp	w9, w21
     bd8: 54000340     	b.eq	0xc40 <rdbg_read+0x15c>
     bdc: b9000515     	str	w21, [x8, #0x4]
     be0: b9409b08     	ldr	w8, [x24, #0x98]
     be4: 34000168     	cbz	w8, 0xc10 <rdbg_read+0x12c>
     be8: aa1f03e8     	mov	x8, xzr
     bec: 52800209     	mov	w9, #0x10               // =16
     bf0: 529fffea     	mov	w10, #0xffff            // =65535
     bf4: f940430b     	ldr	x11, [x24, #0x80]
     bf8: 91000508     	add	x8, x8, #0x1
     bfc: 7829696a     	strh	w10, [x11, x9]
     c00: 91001129     	add	x9, x9, #0x4
     c04: b9409b0b     	ldr	w11, [x24, #0x98]
     c08: eb0b011f     	cmp	x8, x11
     c0c: 54ffff43     	b.lo	0xbf4 <rdbg_read+0x110>
     c10: f9405f08     	ldr	x8, [x24, #0xb8]
     c14: b40000e8     	cbz	x8, 0xc30 <rdbg_read+0x14c>
     c18: b940b708     	ldr	w8, [x24, #0xb4]
     c1c: f9405f00     	ldr	x0, [x24, #0xb8]
     c20: 2a1f03e1     	mov	w1, wzr
     c24: 11000502     	add	w2, w8, #0x1
     c28: 94000000     	bl	0xc28 <rdbg_read+0x144>
		0000000000000c28:  R_AARCH64_CALL26	memset
     c2c: b900b31f     	str	wzr, [x24, #0xb0]
     c30: f9404308     	ldr	x8, [x24, #0x80]
     c34: b900091f     	str	wzr, [x8, #0x8]
     c38: f9404308     	ldr	x8, [x24, #0x80]
     c3c: b9000d1f     	str	wzr, [x8, #0xc]
     c40: f9405300     	ldr	x0, [x24, #0xa0]
     c44: 94000000     	bl	0xc44 <rdbg_read+0x160>
		0000000000000c44:  R_AARCH64_CALL26	mutex_unlock
     c48: a94ca708     	ldp	x8, x9, [x24, #0xc8]
     c4c: 39400108     	ldrb	w8, [x8]
     c50: 7100051f     	cmp	w8, #0x1
     c54: 54000080     	b.eq	0xc64 <rdbg_read+0x180>
     c58: b9400128     	ldr	w8, [x9]
     c5c: 6b19011f     	cmp	w8, w25
     c60: 54000ce1     	b.ne	0xdfc <rdbg_read+0x318>
     c64: f9406f08     	ldr	x8, [x24, #0xd8]
     c68: b940092b     	ldr	w11, [x9, #0x8]
     c6c: b940090a     	ldr	w10, [x8, #0x8]
     c70: 6b0b015f     	cmp	w10, w11
     c74: 54000c40     	b.eq	0xdfc <rdbg_read+0x318>
     c78: 8b0a0929     	add	x9, x9, x10, lsl #2
     c7c: b940eb0b     	ldr	w11, [x24, #0xe8]
     c80: 78410d2c     	ldrh	w12, [x9, #0x10]!
     c84: 6b0c017f     	cmp	w11, w12
     c88: 54000ba9     	b.ls	0xdfc <rdbg_read+0x318>
     c8c: 1100054a     	add	w10, w10, #0x1
     c90: 52800022     	mov	w2, #0x1                // =1
     c94: 1acb094c     	udiv	w12, w10, w11
     c98: 1b0ba98a     	msub	w10, w12, w11, w10
     c9c: b900090a     	str	w10, [x8, #0x8]
     ca0: 79400528     	ldrh	w8, [x9, #0x2]
     ca4: f940730a     	ldr	x10, [x24, #0xe0]
     ca8: 79400129     	ldrh	w9, [x9]
     cac: d5033d9f     	dsb	ld
     cb0: d379e108     	lsl	x8, x8, #7
     cb4: 8b091d56     	add	x22, x10, x9, lsl #7
     cb8: eb14011f     	cmp	x8, x20
     cbc: aa1603e0     	mov	x0, x22
     cc0: 9a943115     	csel	x21, x8, x20, lo
     cc4: aa1503e1     	mov	x1, x21
     cc8: 94000000     	bl	0xcc8 <rdbg_read+0x1e4>
		0000000000000cc8:  R_AARCH64_CALL26	__check_object_size
     ccc: d5384108     	mrs	x8, SP_EL0
     cd0: 39411909     	ldrb	w9, [x8, #0x46]
     cd4: 37280089     	tbnz	w9, #0x5, 0xce4 <rdbg_read+0x200>
     cd8: f940010a     	ldr	x10, [x8]
     cdc: aa1303e9     	mov	x9, x19
     ce0: 36d0006a     	tbz	w10, #0x1a, 0xcec <rdbg_read+0x208>
     ce4: d378de69     	lsl	x9, x19, #8
     ce8: 8a892269     	and	x9, x19, x9, asr #8
     cec: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
     cf0: aa1503e3     	mov	x3, x21
     cf4: cb15014a     	sub	x10, x10, x21
     cf8: eb09015f     	cmp	x10, x9
     cfc: 54000363     	b.lo	0xd68 <rdbg_read+0x284>
     d00: d503201f     	nop
     d04: d53b4229     	mrs	x9, DAIF
     d08: d50343df     	msr	DAIFSet, #0x3
     d0c: f9400508     	ldr	x8, [x8, #0x8]
     d10: d538202a     	mrs	x10, TTBR1_EL1
     d14: aa0803eb     	mov	x11, x8
     d18: b340bd4b     	bfxil	x11, x10, #0, #48
     d1c: d518202b     	msr	TTBR1_EL1, x11
     d20: d5182008     	msr	TTBR0_EL1, x8
     d24: d5033fdf     	isb
     d28: d51b4229     	msr	DAIF, x9
     d2c: 9248fa60     	and	x0, x19, #0xff7fffffffffffff
     d30: aa1603e1     	mov	x1, x22
     d34: aa1503e2     	mov	x2, x21
     d38: 94000000     	bl	0xd38 <rdbg_read+0x254>
		0000000000000d38:  R_AARCH64_CALL26	__arch_copy_to_user
     d3c: aa0003e3     	mov	x3, x0
     d40: d503201f     	nop
     d44: d53b4228     	mrs	x8, DAIF
     d48: d50343df     	msr	DAIFSet, #0x3
     d4c: d5382029     	mrs	x9, TTBR1_EL1
     d50: 9240bd29     	and	x9, x9, #0xffffffffffff
     d54: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
     d58: d518200a     	msr	TTBR0_EL1, x10
     d5c: d5182029     	msr	TTBR1_EL1, x9
     d60: d5033fdf     	isb
     d64: d51b4228     	msr	DAIF, x8
     d68: 35000723     	cbnz	w3, 0xe4c <rdbg_read+0x368>
     d6c: f9407b00     	ldr	x0, [x24, #0xf0]
     d70: b4000040     	cbz	x0, 0xd78 <rdbg_read+0x294>
     d74: 94000000     	bl	0xd74 <rdbg_read+0x290>
		0000000000000d74:  R_AARCH64_CALL26	mutex_lock
     d78: f9406708     	ldr	x8, [x24, #0xc8]
     d7c: 39400108     	ldrb	w8, [x8]
     d80: 7100051f     	cmp	w8, #0x1
     d84: 540000a0     	b.eq	0xd98 <rdbg_read+0x2b4>
     d88: f9406b08     	ldr	x8, [x24, #0xd0]
     d8c: b9400108     	ldr	w8, [x8]
     d90: 6b19011f     	cmp	w8, w25
     d94: 540002c1     	b.ne	0xdec <rdbg_read+0x308>
     d98: f9407308     	ldr	x8, [x24, #0xe0]
     d9c: cb0802c8     	sub	x8, x22, x8
     da0: 9101fd09     	add	x9, x8, #0x7f
     da4: f100011f     	cmp	x8, #0x0
     da8: 9a88b128     	csel	x8, x9, x8, lt
     dac: b940eb09     	ldr	w9, [x24, #0xe8]
     db0: 9347fd08     	asr	x8, x8, #7
     db4: 6b08013f     	cmp	w9, w8
     db8: 540001a9     	b.ls	0xdec <rdbg_read+0x308>
     dbc: f9406f09     	ldr	x9, [x24, #0xd8]
     dc0: b9400d2a     	ldr	w10, [x9, #0xc]
     dc4: 8b0a0929     	add	x9, x9, x10, lsl #2
     dc8: 79002128     	strh	w8, [x9, #0x10]
     dcc: 7900253f     	strh	wzr, [x9, #0x12]
     dd0: f9406f08     	ldr	x8, [x24, #0xd8]
     dd4: b940eb0a     	ldr	w10, [x24, #0xe8]
     dd8: b9400d09     	ldr	w9, [x8, #0xc]
     ddc: 11000529     	add	w9, w9, #0x1
     de0: 1aca092b     	udiv	w11, w9, w10
     de4: 1b0aa569     	msub	w9, w11, w10, w9
     de8: b9000d09     	str	w9, [x8, #0xc]
     dec: f9407b00     	ldr	x0, [x24, #0xf0]
     df0: b40003c0     	cbz	x0, 0xe68 <rdbg_read+0x384>
     df4: 94000000     	bl	0xdf4 <rdbg_read+0x310>
		0000000000000df4:  R_AARCH64_CALL26	mutex_unlock
     df8: 1400001c     	b	0xe68 <rdbg_read+0x384>
     dfc: f9400300     	ldr	x0, [x24]
     e00: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d0
     e04: 91000021     	add	x1, x1, #0x0
		0000000000000e04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d0
     e08: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000e08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x262
     e0c: 91000042     	add	x2, x2, #0x0
		0000000000000e0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x262
     e10: 2a1f03e3     	mov	w3, wzr
     e14: 14000013     	b	0xe60 <rdbg_read+0x37c>
     e18: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x227
     e1c: 91000000     	add	x0, x0, #0x0
		0000000000000e1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x227
     e20: 94000000     	bl	0xe20 <rdbg_read+0x33c>
		0000000000000e20:  R_AARCH64_CALL26	_printk
     e24: 128002b5     	mov	w21, #-0x16             // =-22
     e28: 14000012     	b	0xe70 <rdbg_read+0x38c>
     e2c: 2a0003f5     	mov	w21, w0
     e30: f9400300     	ldr	x0, [x24]
     e34: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5
     e38: 91000021     	add	x1, x1, #0x0
		0000000000000e38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5
     e3c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000e3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x262
     e40: 91000042     	add	x2, x2, #0x0
		0000000000000e40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x262
     e44: 94000000     	bl	0xe44 <rdbg_read+0x360>
		0000000000000e44:  R_AARCH64_CALL26	_dev_err
     e48: 1400000a     	b	0xe70 <rdbg_read+0x38c>
     e4c: f9400300     	ldr	x0, [x24]
     e50: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42a
     e54: 91000021     	add	x1, x1, #0x0
		0000000000000e54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42a
     e58: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000e58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x262
     e5c: 91000042     	add	x2, x2, #0x0
		0000000000000e5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x262
     e60: 94000000     	bl	0xe60 <rdbg_read+0x37c>
		0000000000000e60:  R_AARCH64_CALL26	_dev_err
     e64: 12800795     	mov	w21, #-0x3d             // =-61
     e68: 910022e0     	add	x0, x23, #0x8
     e6c: 94000000     	bl	0xe6c <rdbg_read+0x388>
		0000000000000e6c:  R_AARCH64_CALL26	mutex_unlock
     e70: 93407ea0     	sxtw	x0, w21
     e74: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     e78: f9400bf9     	ldr	x25, [sp, #0x10]
     e7c: a94357f6     	ldp	x22, x21, [sp, #0x30]
     e80: a9425ff8     	ldp	x24, x23, [sp, #0x20]
     e84: a8c57bfd     	ldp	x29, x30, [sp], #0x50
     e88: d50323bf     	autiasp
     e8c: d65f03c0     	ret
