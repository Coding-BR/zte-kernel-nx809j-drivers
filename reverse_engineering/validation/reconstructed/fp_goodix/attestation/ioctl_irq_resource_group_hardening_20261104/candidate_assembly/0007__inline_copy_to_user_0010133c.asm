
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002290 <_inline_copy_to_user>:
    2290: d5384109     	mrs	x9, SP_EL0
    2294: 39411928     	ldrb	w8, [x9, #0x46]
    2298: 37280088     	tbnz	w8, #0x5, 0x22a8 <_inline_copy_to_user+0x18>
    229c: f940012a     	ldr	x10, [x9]
    22a0: aa0003e8     	mov	x8, x0
    22a4: 36d0006a     	tbz	w10, #0x1a, 0x22b0 <_inline_copy_to_user+0x20>
    22a8: d378dc08     	lsl	x8, x0, #8
    22ac: 8a882008     	and	x8, x0, x8, asr #8
    22b0: d503233f     	paciasp
    22b4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    22b8: 910003fd     	mov	x29, sp
    22bc: d367fd0a     	lsr	x10, x8, #39
    22c0: 52800028     	mov	w8, #0x1                // =1
    22c4: b500034a     	cbnz	x10, 0x232c <_inline_copy_to_user+0x9c>
    22c8: d503201f     	nop
    22cc: d53b4228     	mrs	x8, DAIF
    22d0: d50343df     	msr	DAIFSet, #0x3
    22d4: f9400529     	ldr	x9, [x9, #0x8]
    22d8: d538202a     	mrs	x10, TTBR1_EL1
    22dc: aa0903eb     	mov	x11, x9
    22e0: b340bd4b     	bfxil	x11, x10, #0, #48
    22e4: d518202b     	msr	TTBR1_EL1, x11
    22e8: d5182009     	msr	TTBR0_EL1, x9
    22ec: d5033fdf     	isb
    22f0: d51b4228     	msr	DAIF, x8
    22f4: 9248f800     	and	x0, x0, #0xff7fffffffffffff
    22f8: 52800022     	mov	w2, #0x1                // =1
    22fc: 94000000     	bl	0x22fc <_inline_copy_to_user+0x6c>
		00000000000022fc:  R_AARCH64_CALL26	__arch_copy_to_user
    2300: aa0003e8     	mov	x8, x0
    2304: d503201f     	nop
    2308: d53b4229     	mrs	x9, DAIF
    230c: d50343df     	msr	DAIFSet, #0x3
    2310: d538202a     	mrs	x10, TTBR1_EL1
    2314: 9240bd4a     	and	x10, x10, #0xffffffffffff
    2318: d140054b     	sub	x11, x10, #0x1, lsl #12 // =0x1000
    231c: d518200b     	msr	TTBR0_EL1, x11
    2320: d518202a     	msr	TTBR1_EL1, x10
    2324: d5033fdf     	isb
    2328: d51b4229     	msr	DAIF, x9
    232c: aa0803e0     	mov	x0, x8
    2330: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    2334: d50323bf     	autiasp
    2338: d65f03c0     	ret
