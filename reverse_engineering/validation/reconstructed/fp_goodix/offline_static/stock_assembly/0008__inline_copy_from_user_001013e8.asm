
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000bc8 <_inline_copy_from_user>:
     bc8: d503233f     	paciasp
     bcc: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     bd0: f9000bf5     	str	x21, [sp, #0x10]
     bd4: a9024ff4     	stp	x20, x19, [sp, #0x20]
     bd8: 910003fd     	mov	x29, sp
     bdc: d5384108     	mrs	x8, SP_EL0
     be0: 39411909     	ldrb	w9, [x8, #0x46]
     be4: aa0203f3     	mov	x19, x2
     be8: aa0003f4     	mov	x20, x0
     bec: 37280089     	tbnz	w9, #0x5, 0xbfc <_inline_copy_from_user+0x34>
     bf0: f940010a     	ldr	x10, [x8]
     bf4: aa0103e9     	mov	x9, x1
     bf8: 36d0006a     	tbz	w10, #0x1a, 0xc04 <_inline_copy_from_user+0x3c>
     bfc: d378dc29     	lsl	x9, x1, #8
     c00: 8a892029     	and	x9, x1, x9, asr #8
     c04: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
     c08: aa1303f5     	mov	x21, x19
     c0c: cb13014a     	sub	x10, x10, x19
     c10: eb09015f     	cmp	x10, x9
     c14: 540000e2     	b.hs	0xc30 <_inline_copy_from_user+0x68>
     c18: cb150268     	sub	x8, x19, x21
     c1c: 2a1f03e1     	mov	w1, wzr
     c20: aa1503e2     	mov	x2, x21
     c24: 8b080280     	add	x0, x20, x8
     c28: 94000000     	bl	0xc28 <_inline_copy_from_user+0x60>
		0000000000000c28:  R_AARCH64_CALL26	memset
     c2c: 1400001c     	b	0xc9c <_inline_copy_from_user+0xd4>
     c30: d503201f     	nop
     c34: d53b4229     	mrs	x9, DAIF
     c38: d50343df     	msr	DAIFSet, #0x3
     c3c: f9400508     	ldr	x8, [x8, #0x8]
     c40: d538202a     	mrs	x10, TTBR1_EL1
     c44: aa0803eb     	mov	x11, x8
     c48: b340bd4b     	bfxil	x11, x10, #0, #48
     c4c: d518202b     	msr	TTBR1_EL1, x11
     c50: d5182008     	msr	TTBR0_EL1, x8
     c54: d5033fdf     	isb
     c58: d51b4229     	msr	DAIF, x9
     c5c: 9248f821     	and	x1, x1, #0xff7fffffffffffff
     c60: aa1403e0     	mov	x0, x20
     c64: aa1303e2     	mov	x2, x19
     c68: 94000000     	bl	0xc68 <_inline_copy_from_user+0xa0>
		0000000000000c68:  R_AARCH64_CALL26	__arch_copy_from_user
     c6c: aa0003f5     	mov	x21, x0
     c70: d503201f     	nop
     c74: d53b4228     	mrs	x8, DAIF
     c78: d50343df     	msr	DAIFSet, #0x3
     c7c: d5382029     	mrs	x9, TTBR1_EL1
     c80: 9240bd29     	and	x9, x9, #0xffffffffffff
     c84: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
     c88: d518200a     	msr	TTBR0_EL1, x10
     c8c: d5182029     	msr	TTBR1_EL1, x9
     c90: d5033fdf     	isb
     c94: d51b4228     	msr	DAIF, x8
     c98: b5fffc15     	cbnz	x21, 0xc18 <_inline_copy_from_user+0x50>
     c9c: aa1503e0     	mov	x0, x21
     ca0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     ca4: f9400bf5     	ldr	x21, [sp, #0x10]
     ca8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     cac: d50323bf     	autiasp
     cb0: d65f03c0     	ret
