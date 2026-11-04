
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002098 <_inline_copy_from_user>:
    2098: d503233f     	paciasp
    209c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    20a0: f9000bf5     	str	x21, [sp, #0x10]
    20a4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    20a8: 910003fd     	mov	x29, sp
    20ac: d5384108     	mrs	x8, SP_EL0
    20b0: 39411909     	ldrb	w9, [x8, #0x46]
    20b4: aa0203f3     	mov	x19, x2
    20b8: aa0003f4     	mov	x20, x0
    20bc: 37280089     	tbnz	w9, #0x5, 0x20cc <_inline_copy_from_user+0x34>
    20c0: f940010a     	ldr	x10, [x8]
    20c4: aa0103e9     	mov	x9, x1
    20c8: 36d0006a     	tbz	w10, #0x1a, 0x20d4 <_inline_copy_from_user+0x3c>
    20cc: d378dc29     	lsl	x9, x1, #8
    20d0: 8a892029     	and	x9, x1, x9, asr #8
    20d4: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
    20d8: aa1303f5     	mov	x21, x19
    20dc: cb13014a     	sub	x10, x10, x19
    20e0: eb09015f     	cmp	x10, x9
    20e4: 540000e2     	b.hs	0x2100 <_inline_copy_from_user+0x68>
    20e8: cb150268     	sub	x8, x19, x21
    20ec: 2a1f03e1     	mov	w1, wzr
    20f0: aa1503e2     	mov	x2, x21
    20f4: 8b080280     	add	x0, x20, x8
    20f8: 94000000     	bl	0x20f8 <_inline_copy_from_user+0x60>
		00000000000020f8:  R_AARCH64_CALL26	memset
    20fc: 1400001c     	b	0x216c <_inline_copy_from_user+0xd4>
    2100: d503201f     	nop
    2104: d53b4229     	mrs	x9, DAIF
    2108: d50343df     	msr	DAIFSet, #0x3
    210c: f9400508     	ldr	x8, [x8, #0x8]
    2110: d538202a     	mrs	x10, TTBR1_EL1
    2114: aa0803eb     	mov	x11, x8
    2118: b340bd4b     	bfxil	x11, x10, #0, #48
    211c: d518202b     	msr	TTBR1_EL1, x11
    2120: d5182008     	msr	TTBR0_EL1, x8
    2124: d5033fdf     	isb
    2128: d51b4229     	msr	DAIF, x9
    212c: 9248f821     	and	x1, x1, #0xff7fffffffffffff
    2130: aa1403e0     	mov	x0, x20
    2134: aa1303e2     	mov	x2, x19
    2138: 94000000     	bl	0x2138 <_inline_copy_from_user+0xa0>
		0000000000002138:  R_AARCH64_CALL26	__arch_copy_from_user
    213c: aa0003f5     	mov	x21, x0
    2140: d503201f     	nop
    2144: d53b4228     	mrs	x8, DAIF
    2148: d50343df     	msr	DAIFSet, #0x3
    214c: d5382029     	mrs	x9, TTBR1_EL1
    2150: 9240bd29     	and	x9, x9, #0xffffffffffff
    2154: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    2158: d518200a     	msr	TTBR0_EL1, x10
    215c: d5182029     	msr	TTBR1_EL1, x9
    2160: d5033fdf     	isb
    2164: d51b4228     	msr	DAIF, x8
    2168: b5fffc15     	cbnz	x21, 0x20e8 <_inline_copy_from_user+0x50>
    216c: aa1503e0     	mov	x0, x21
    2170: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    2174: f9400bf5     	ldr	x21, [sp, #0x10]
    2178: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    217c: d50323bf     	autiasp
    2180: d65f03c0     	ret
