
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000f34 <_inline_copy_to_user>:
     f34: d5384109     	mrs	x9, SP_EL0
     f38: 39411928     	ldrb	w8, [x9, #0x46]
     f3c: 37280088     	tbnz	w8, #0x5, 0xf4c <_inline_copy_to_user+0x18>
     f40: f940012a     	ldr	x10, [x9]
     f44: aa0003e8     	mov	x8, x0
     f48: 36d0006a     	tbz	w10, #0x1a, 0xf54 <_inline_copy_to_user+0x20>
     f4c: d378dc08     	lsl	x8, x0, #8
     f50: 8a882008     	and	x8, x0, x8, asr #8
     f54: d503233f     	paciasp
     f58: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     f5c: 910003fd     	mov	x29, sp
     f60: d367fd0a     	lsr	x10, x8, #39
     f64: 52800028     	mov	w8, #0x1                // =1
     f68: b500034a     	cbnz	x10, 0xfd0 <_inline_copy_to_user+0x9c>
     f6c: d503201f     	nop
     f70: d53b4228     	mrs	x8, DAIF
     f74: d50343df     	msr	DAIFSet, #0x3
     f78: f9400529     	ldr	x9, [x9, #0x8]
     f7c: d538202a     	mrs	x10, TTBR1_EL1
     f80: aa0903eb     	mov	x11, x9
     f84: b340bd4b     	bfxil	x11, x10, #0, #48
     f88: d518202b     	msr	TTBR1_EL1, x11
     f8c: d5182009     	msr	TTBR0_EL1, x9
     f90: d5033fdf     	isb
     f94: d51b4228     	msr	DAIF, x8
     f98: 9248f800     	and	x0, x0, #0xff7fffffffffffff
     f9c: 52800022     	mov	w2, #0x1                // =1
     fa0: 94000000     	bl	0xfa0 <_inline_copy_to_user+0x6c>
		0000000000000fa0:  R_AARCH64_CALL26	__arch_copy_to_user
     fa4: aa0003e8     	mov	x8, x0
     fa8: d503201f     	nop
     fac: d53b4229     	mrs	x9, DAIF
     fb0: d50343df     	msr	DAIFSet, #0x3
     fb4: d538202a     	mrs	x10, TTBR1_EL1
     fb8: 9240bd4a     	and	x10, x10, #0xffffffffffff
     fbc: d140054b     	sub	x11, x10, #0x1, lsl #12 // =0x1000
     fc0: d518200b     	msr	TTBR0_EL1, x11
     fc4: d518202a     	msr	TTBR1_EL1, x10
     fc8: d5033fdf     	isb
     fcc: d51b4229     	msr	DAIF, x9
     fd0: aa0803e0     	mov	x0, x8
     fd4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     fd8: d50323bf     	autiasp
     fdc: d65f03c0     	ret
