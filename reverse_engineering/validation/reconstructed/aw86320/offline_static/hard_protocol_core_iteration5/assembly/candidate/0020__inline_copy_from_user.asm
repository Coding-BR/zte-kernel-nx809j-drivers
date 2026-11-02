
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001e1c <_inline_copy_from_user>:
    1e1c: d503233f     	paciasp
    1e20: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1e24: f9000bf5     	str	x21, [sp, #0x10]
    1e28: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1e2c: 910003fd     	mov	x29, sp
    1e30: d5384108     	mrs	x8, SP_EL0
    1e34: 39411909     	ldrb	w9, [x8, #0x46]
    1e38: aa0203f3     	mov	x19, x2
    1e3c: aa0003f4     	mov	x20, x0
    1e40: 37280089     	tbnz	w9, #0x5, 0x1e50 <_inline_copy_from_user+0x34>
    1e44: f940010a     	ldr	x10, [x8]
    1e48: aa0103e9     	mov	x9, x1
    1e4c: 36d0006a     	tbz	w10, #0x1a, 0x1e58 <_inline_copy_from_user+0x3c>
    1e50: d378dc29     	lsl	x9, x1, #8
    1e54: 8a892029     	and	x9, x1, x9, asr #8
    1e58: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
    1e5c: aa1303f5     	mov	x21, x19
    1e60: eb0a027f     	cmp	x19, x10
    1e64: 54000408     	b.hi	0x1ee4 <_inline_copy_from_user+0xc8>
    1e68: cb13014a     	sub	x10, x10, x19
    1e6c: aa1303f5     	mov	x21, x19
    1e70: eb09015f     	cmp	x10, x9
    1e74: 54000383     	b.lo	0x1ee4 <_inline_copy_from_user+0xc8>
    1e78: d503201f     	nop
    1e7c: d53b4229     	mrs	x9, DAIF
    1e80: d50343df     	msr	DAIFSet, #0x3
    1e84: f9400508     	ldr	x8, [x8, #0x8]
    1e88: d538202a     	mrs	x10, TTBR1_EL1
    1e8c: aa0803eb     	mov	x11, x8
    1e90: b340bd4b     	bfxil	x11, x10, #0, #48
    1e94: d518202b     	msr	TTBR1_EL1, x11
    1e98: d5182008     	msr	TTBR0_EL1, x8
    1e9c: d5033fdf     	isb
    1ea0: d51b4229     	msr	DAIF, x9
    1ea4: 9248f821     	and	x1, x1, #0xff7fffffffffffff
    1ea8: aa1403e0     	mov	x0, x20
    1eac: aa1303e2     	mov	x2, x19
    1eb0: 94000000     	bl	0x1eb0 <_inline_copy_from_user+0x94>
		0000000000001eb0:  R_AARCH64_CALL26	__arch_copy_from_user
    1eb4: aa0003f5     	mov	x21, x0
    1eb8: d503201f     	nop
    1ebc: d53b4228     	mrs	x8, DAIF
    1ec0: d50343df     	msr	DAIFSet, #0x3
    1ec4: d5382029     	mrs	x9, TTBR1_EL1
    1ec8: 9240bd29     	and	x9, x9, #0xffffffffffff
    1ecc: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    1ed0: d518200a     	msr	TTBR0_EL1, x10
    1ed4: d5182029     	msr	TTBR1_EL1, x9
    1ed8: d5033fdf     	isb
    1edc: d51b4228     	msr	DAIF, x8
    1ee0: b40000d5     	cbz	x21, 0x1ef8 <_inline_copy_from_user+0xdc>
    1ee4: cb150268     	sub	x8, x19, x21
    1ee8: 2a1f03e1     	mov	w1, wzr
    1eec: aa1503e2     	mov	x2, x21
    1ef0: 8b080280     	add	x0, x20, x8
    1ef4: 94000000     	bl	0x1ef4 <_inline_copy_from_user+0xd8>
		0000000000001ef4:  R_AARCH64_CALL26	memset
    1ef8: aa1503e0     	mov	x0, x21
    1efc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1f00: f9400bf5     	ldr	x21, [sp, #0x10]
    1f04: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1f08: d50323bf     	autiasp
    1f0c: d65f03c0     	ret
