
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000bbc <_inline_copy_from_user>:
     bbc: d503233f     	paciasp
     bc0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     bc4: f9000bf5     	str	x21, [sp, #0x10]
     bc8: a9024ff4     	stp	x20, x19, [sp, #0x20]
     bcc: 910003fd     	mov	x29, sp
     bd0: d5384108     	mrs	x8, SP_EL0
     bd4: 39411909     	ldrb	w9, [x8, #0x46]
     bd8: aa0203f3     	mov	x19, x2
     bdc: aa0003f4     	mov	x20, x0
     be0: 37280089     	tbnz	w9, #0x5, 0xbf0 <_inline_copy_from_user+0x34>
     be4: f940010a     	ldr	x10, [x8]
     be8: aa0103e9     	mov	x9, x1
     bec: 36d0006a     	tbz	w10, #0x1a, 0xbf8 <_inline_copy_from_user+0x3c>
     bf0: d378dc29     	lsl	x9, x1, #8
     bf4: 8a892029     	and	x9, x1, x9, asr #8
     bf8: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
     bfc: aa1303f5     	mov	x21, x19
     c00: cb13014a     	sub	x10, x10, x19
     c04: eb09015f     	cmp	x10, x9
     c08: 540000e2     	b.hs	0xc24 <_inline_copy_from_user+0x68>
     c0c: cb150268     	sub	x8, x19, x21
     c10: 2a1f03e1     	mov	w1, wzr
     c14: aa1503e2     	mov	x2, x21
     c18: 8b080280     	add	x0, x20, x8
     c1c: 94000000     	bl	0xc1c <_inline_copy_from_user+0x60>
		0000000000000c1c:  R_AARCH64_CALL26	memset
     c20: 1400001c     	b	0xc90 <_inline_copy_from_user+0xd4>
     c24: d503201f     	nop
     c28: d53b4229     	mrs	x9, DAIF
     c2c: d50343df     	msr	DAIFSet, #0x3
     c30: f9400508     	ldr	x8, [x8, #0x8]
     c34: d538202a     	mrs	x10, TTBR1_EL1
     c38: aa0803eb     	mov	x11, x8
     c3c: b340bd4b     	bfxil	x11, x10, #0, #48
     c40: d518202b     	msr	TTBR1_EL1, x11
     c44: d5182008     	msr	TTBR0_EL1, x8
     c48: d5033fdf     	isb
     c4c: d51b4229     	msr	DAIF, x9
     c50: 9248f821     	and	x1, x1, #0xff7fffffffffffff
     c54: aa1403e0     	mov	x0, x20
     c58: aa1303e2     	mov	x2, x19
     c5c: 94000000     	bl	0xc5c <_inline_copy_from_user+0xa0>
		0000000000000c5c:  R_AARCH64_CALL26	__arch_copy_from_user
     c60: aa0003f5     	mov	x21, x0
     c64: d503201f     	nop
     c68: d53b4228     	mrs	x8, DAIF
     c6c: d50343df     	msr	DAIFSet, #0x3
     c70: d5382029     	mrs	x9, TTBR1_EL1
     c74: 9240bd29     	and	x9, x9, #0xffffffffffff
     c78: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
     c7c: d518200a     	msr	TTBR0_EL1, x10
     c80: d5182029     	msr	TTBR1_EL1, x9
     c84: d5033fdf     	isb
     c88: d51b4228     	msr	DAIF, x8
     c8c: b5fffc15     	cbnz	x21, 0xc0c <_inline_copy_from_user+0x50>
     c90: aa1503e0     	mov	x0, x21
     c94: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     c98: f9400bf5     	ldr	x21, [sp, #0x10]
     c9c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     ca0: d50323bf     	autiasp
     ca4: d65f03c0     	ret
