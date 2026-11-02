
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000209c <_inline_copy_from_user>:
    209c: d503233f     	paciasp
    20a0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    20a4: f9000bf5     	str	x21, [sp, #0x10]
    20a8: a9024ff4     	stp	x20, x19, [sp, #0x20]
    20ac: 910003fd     	mov	x29, sp
    20b0: d5384108     	mrs	x8, SP_EL0
    20b4: 39411909     	ldrb	w9, [x8, #0x46]
    20b8: aa0203f3     	mov	x19, x2
    20bc: aa0003f4     	mov	x20, x0
    20c0: 37280089     	tbnz	w9, #0x5, 0x20d0 <_inline_copy_from_user+0x34>
    20c4: f940010a     	ldr	x10, [x8]
    20c8: aa0103e9     	mov	x9, x1
    20cc: 36d0006a     	tbz	w10, #0x1a, 0x20d8 <_inline_copy_from_user+0x3c>
    20d0: d378dc29     	lsl	x9, x1, #8
    20d4: 8a892029     	and	x9, x1, x9, asr #8
    20d8: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
    20dc: aa1303f5     	mov	x21, x19
    20e0: cb13014a     	sub	x10, x10, x19
    20e4: eb09015f     	cmp	x10, x9
    20e8: 540000e2     	b.hs	0x2104 <_inline_copy_from_user+0x68>
    20ec: cb150268     	sub	x8, x19, x21
    20f0: 2a1f03e1     	mov	w1, wzr
    20f4: aa1503e2     	mov	x2, x21
    20f8: 8b080280     	add	x0, x20, x8
    20fc: 94000000     	bl	0x20fc <_inline_copy_from_user+0x60>
		00000000000020fc:  R_AARCH64_CALL26	memset
    2100: 1400001c     	b	0x2170 <_inline_copy_from_user+0xd4>
    2104: d503201f     	nop
    2108: d53b4229     	mrs	x9, DAIF
    210c: d50343df     	msr	DAIFSet, #0x3
    2110: f9400508     	ldr	x8, [x8, #0x8]
    2114: d538202a     	mrs	x10, TTBR1_EL1
    2118: aa0803eb     	mov	x11, x8
    211c: b340bd4b     	bfxil	x11, x10, #0, #48
    2120: d518202b     	msr	TTBR1_EL1, x11
    2124: d5182008     	msr	TTBR0_EL1, x8
    2128: d5033fdf     	isb
    212c: d51b4229     	msr	DAIF, x9
    2130: 9248f821     	and	x1, x1, #0xff7fffffffffffff
    2134: aa1403e0     	mov	x0, x20
    2138: aa1303e2     	mov	x2, x19
    213c: 94000000     	bl	0x213c <_inline_copy_from_user+0xa0>
		000000000000213c:  R_AARCH64_CALL26	__arch_copy_from_user
    2140: aa0003f5     	mov	x21, x0
    2144: d503201f     	nop
    2148: d53b4228     	mrs	x8, DAIF
    214c: d50343df     	msr	DAIFSet, #0x3
    2150: d5382029     	mrs	x9, TTBR1_EL1
    2154: 9240bd29     	and	x9, x9, #0xffffffffffff
    2158: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    215c: d518200a     	msr	TTBR0_EL1, x10
    2160: d5182029     	msr	TTBR1_EL1, x9
    2164: d5033fdf     	isb
    2168: d51b4228     	msr	DAIF, x8
    216c: b5fffc15     	cbnz	x21, 0x20ec <_inline_copy_from_user+0x50>
    2170: aa1503e0     	mov	x0, x21
    2174: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    2178: f9400bf5     	ldr	x21, [sp, #0x10]
    217c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    2180: d50323bf     	autiasp
    2184: d65f03c0     	ret
