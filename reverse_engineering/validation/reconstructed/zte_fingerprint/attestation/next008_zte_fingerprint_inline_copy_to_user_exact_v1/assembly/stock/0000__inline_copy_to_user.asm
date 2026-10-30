
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b1c <_inline_copy_to_user>:
     b1c: d5384109     	mrs	x9, SP_EL0
     b20: 39411928     	ldrb	w8, [x9, #0x46]
     b24: 37280088     	tbnz	w8, #0x5, 0xb34 <_inline_copy_to_user+0x18>
     b28: f940012a     	ldr	x10, [x9]
     b2c: aa0003e8     	mov	x8, x0
     b30: 36d0006a     	tbz	w10, #0x1a, 0xb3c <_inline_copy_to_user+0x20>
     b34: d378dc08     	lsl	x8, x0, #8
     b38: 8a882008     	and	x8, x0, x8, asr #8
     b3c: d503233f     	paciasp
     b40: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     b44: 910003fd     	mov	x29, sp
     b48: d367fd0a     	lsr	x10, x8, #39
     b4c: 52800028     	mov	w8, #0x1                // =1
     b50: b500034a     	cbnz	x10, 0xbb8 <_inline_copy_to_user+0x9c>
     b54: d503201f     	nop
     b58: d53b4228     	mrs	x8, DAIF
     b5c: d50343df     	msr	DAIFSet, #0x3
     b60: f9400529     	ldr	x9, [x9, #0x8]
     b64: d538202a     	mrs	x10, TTBR1_EL1
     b68: aa0903eb     	mov	x11, x9
     b6c: b340bd4b     	bfxil	x11, x10, #0, #48
     b70: d518202b     	msr	TTBR1_EL1, x11
     b74: d5182009     	msr	TTBR0_EL1, x9
     b78: d5033fdf     	isb
     b7c: d51b4228     	msr	DAIF, x8
     b80: 9248f800     	and	x0, x0, #0xff7fffffffffffff
     b84: 52800022     	mov	w2, #0x1                // =1
     b88: 94000000     	bl	0xb88 <_inline_copy_to_user+0x6c>
		0000000000000b88:  R_AARCH64_CALL26	__arch_copy_to_user
     b8c: aa0003e8     	mov	x8, x0
     b90: d503201f     	nop
     b94: d53b4229     	mrs	x9, DAIF
     b98: d50343df     	msr	DAIFSet, #0x3
     b9c: d538202a     	mrs	x10, TTBR1_EL1
     ba0: 9240bd4a     	and	x10, x10, #0xffffffffffff
     ba4: d140054b     	sub	x11, x10, #0x1, lsl #12 // =0x1000
     ba8: d518200b     	msr	TTBR0_EL1, x11
     bac: d518202a     	msr	TTBR1_EL1, x10
     bb0: d5033fdf     	isb
     bb4: d51b4229     	msr	DAIF, x9
     bb8: aa0803e0     	mov	x0, x8
     bbc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     bc0: d50323bf     	autiasp
     bc4: d65f03c0     	ret
