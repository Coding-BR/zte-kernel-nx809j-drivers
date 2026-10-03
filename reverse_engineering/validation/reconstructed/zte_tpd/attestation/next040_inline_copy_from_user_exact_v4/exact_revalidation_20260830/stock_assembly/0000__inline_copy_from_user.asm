
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003d40 <_inline_copy_from_user>:
    3d40: d503233f     	paciasp
    3d44: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    3d48: f9000bf5     	str	x21, [sp, #0x10]
    3d4c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    3d50: 910003fd     	mov	x29, sp
    3d54: d5384108     	mrs	x8, SP_EL0
    3d58: 39411909     	ldrb	w9, [x8, #0x46]
    3d5c: aa0203f3     	mov	x19, x2
    3d60: aa0003f4     	mov	x20, x0
    3d64: 37280089     	tbnz	w9, #0x5, 0x3d74 <_inline_copy_from_user+0x34>
    3d68: f940010a     	ldr	x10, [x8]
    3d6c: aa0103e9     	mov	x9, x1
    3d70: 36d0006a     	tbz	w10, #0x1a, 0x3d7c <_inline_copy_from_user+0x3c>
    3d74: d378dc29     	lsl	x9, x1, #8
    3d78: 8a892029     	and	x9, x1, x9, asr #8
    3d7c: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
    3d80: aa1303f5     	mov	x21, x19
    3d84: eb0a027f     	cmp	x19, x10
    3d88: 54000408     	b.hi	0x3e08 <_inline_copy_from_user+0xc8>
    3d8c: cb13014a     	sub	x10, x10, x19
    3d90: aa1303f5     	mov	x21, x19
    3d94: eb09015f     	cmp	x10, x9
    3d98: 54000383     	b.lo	0x3e08 <_inline_copy_from_user+0xc8>
    3d9c: d503201f     	nop
    3da0: d53b4229     	mrs	x9, DAIF
    3da4: d50343df     	msr	DAIFSet, #0x3
    3da8: f9400508     	ldr	x8, [x8, #0x8]
    3dac: d538202a     	mrs	x10, TTBR1_EL1
    3db0: aa0803eb     	mov	x11, x8
    3db4: b340bd4b     	bfxil	x11, x10, #0, #48
    3db8: d518202b     	msr	TTBR1_EL1, x11
    3dbc: d5182008     	msr	TTBR0_EL1, x8
    3dc0: d5033fdf     	isb
    3dc4: d51b4229     	msr	DAIF, x9
    3dc8: 9248f821     	and	x1, x1, #0xff7fffffffffffff
    3dcc: aa1403e0     	mov	x0, x20
    3dd0: aa1303e2     	mov	x2, x19
    3dd4: 94000000     	bl	0x3dd4 <_inline_copy_from_user+0x94>
		0000000000003dd4:  R_AARCH64_CALL26	__arch_copy_from_user
    3dd8: aa0003f5     	mov	x21, x0
    3ddc: d503201f     	nop
    3de0: d53b4228     	mrs	x8, DAIF
    3de4: d50343df     	msr	DAIFSet, #0x3
    3de8: d5382029     	mrs	x9, TTBR1_EL1
    3dec: 9240bd29     	and	x9, x9, #0xffffffffffff
    3df0: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    3df4: d518200a     	msr	TTBR0_EL1, x10
    3df8: d5182029     	msr	TTBR1_EL1, x9
    3dfc: d5033fdf     	isb
    3e00: d51b4228     	msr	DAIF, x8
    3e04: b40000d5     	cbz	x21, 0x3e1c <_inline_copy_from_user+0xdc>
    3e08: cb150268     	sub	x8, x19, x21
    3e0c: 2a1f03e1     	mov	w1, wzr
    3e10: aa1503e2     	mov	x2, x21
    3e14: 8b080280     	add	x0, x20, x8
    3e18: 94000000     	bl	0x3e18 <_inline_copy_from_user+0xd8>
		0000000000003e18:  R_AARCH64_CALL26	memset
    3e1c: aa1503e0     	mov	x0, x21
    3e20: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    3e24: f9400bf5     	ldr	x21, [sp, #0x10]
    3e28: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    3e2c: d50323bf     	autiasp
    3e30: d65f03c0     	ret
