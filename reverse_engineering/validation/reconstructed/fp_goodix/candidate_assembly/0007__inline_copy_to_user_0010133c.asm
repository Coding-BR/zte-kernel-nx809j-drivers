
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b10 <_inline_copy_to_user>:
     b10: d5384109     	mrs	x9, SP_EL0
     b14: 39411928     	ldrb	w8, [x9, #0x46]
     b18: 37280088     	tbnz	w8, #0x5, 0xb28 <_inline_copy_to_user+0x18>
     b1c: f940012a     	ldr	x10, [x9]
     b20: aa0003e8     	mov	x8, x0
     b24: 36d0006a     	tbz	w10, #0x1a, 0xb30 <_inline_copy_to_user+0x20>
     b28: d378dc08     	lsl	x8, x0, #8
     b2c: 8a882008     	and	x8, x0, x8, asr #8
     b30: d503233f     	paciasp
     b34: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     b38: 910003fd     	mov	x29, sp
     b3c: d367fd0a     	lsr	x10, x8, #39
     b40: 52800028     	mov	w8, #0x1                // =1
     b44: b500034a     	cbnz	x10, 0xbac <_inline_copy_to_user+0x9c>
     b48: d503201f     	nop
     b4c: d53b4228     	mrs	x8, DAIF
     b50: d50343df     	msr	DAIFSet, #0x3
     b54: f9400529     	ldr	x9, [x9, #0x8]
     b58: d538202a     	mrs	x10, TTBR1_EL1
     b5c: aa0903eb     	mov	x11, x9
     b60: b340bd4b     	bfxil	x11, x10, #0, #48
     b64: d518202b     	msr	TTBR1_EL1, x11
     b68: d5182009     	msr	TTBR0_EL1, x9
     b6c: d5033fdf     	isb
     b70: d51b4228     	msr	DAIF, x8
     b74: 9248f800     	and	x0, x0, #0xff7fffffffffffff
     b78: 52800022     	mov	w2, #0x1                // =1
     b7c: 94000000     	bl	0xb7c <_inline_copy_to_user+0x6c>
		0000000000000b7c:  R_AARCH64_CALL26	__arch_copy_to_user
     b80: aa0003e8     	mov	x8, x0
     b84: d503201f     	nop
     b88: d53b4229     	mrs	x9, DAIF
     b8c: d50343df     	msr	DAIFSet, #0x3
     b90: d538202a     	mrs	x10, TTBR1_EL1
     b94: 9240bd4a     	and	x10, x10, #0xffffffffffff
     b98: d140054b     	sub	x11, x10, #0x1, lsl #12 // =0x1000
     b9c: d518200b     	msr	TTBR0_EL1, x11
     ba0: d518202a     	msr	TTBR1_EL1, x10
     ba4: d5033fdf     	isb
     ba8: d51b4229     	msr	DAIF, x9
     bac: aa0803e0     	mov	x0, x8
     bb0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     bb4: d50323bf     	autiasp
     bb8: d65f03c0     	ret
