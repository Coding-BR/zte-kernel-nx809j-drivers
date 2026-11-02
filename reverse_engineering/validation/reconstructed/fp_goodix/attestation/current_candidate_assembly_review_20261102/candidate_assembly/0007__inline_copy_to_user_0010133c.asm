
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001ff0 <_inline_copy_to_user>:
    1ff0: d5384109     	mrs	x9, SP_EL0
    1ff4: 39411928     	ldrb	w8, [x9, #0x46]
    1ff8: 37280088     	tbnz	w8, #0x5, 0x2008 <_inline_copy_to_user+0x18>
    1ffc: f940012a     	ldr	x10, [x9]
    2000: aa0003e8     	mov	x8, x0
    2004: 36d0006a     	tbz	w10, #0x1a, 0x2010 <_inline_copy_to_user+0x20>
    2008: d378dc08     	lsl	x8, x0, #8
    200c: 8a882008     	and	x8, x0, x8, asr #8
    2010: d503233f     	paciasp
    2014: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    2018: 910003fd     	mov	x29, sp
    201c: d367fd0a     	lsr	x10, x8, #39
    2020: 52800028     	mov	w8, #0x1                // =1
    2024: b500034a     	cbnz	x10, 0x208c <_inline_copy_to_user+0x9c>
    2028: d503201f     	nop
    202c: d53b4228     	mrs	x8, DAIF
    2030: d50343df     	msr	DAIFSet, #0x3
    2034: f9400529     	ldr	x9, [x9, #0x8]
    2038: d538202a     	mrs	x10, TTBR1_EL1
    203c: aa0903eb     	mov	x11, x9
    2040: b340bd4b     	bfxil	x11, x10, #0, #48
    2044: d518202b     	msr	TTBR1_EL1, x11
    2048: d5182009     	msr	TTBR0_EL1, x9
    204c: d5033fdf     	isb
    2050: d51b4228     	msr	DAIF, x8
    2054: 9248f800     	and	x0, x0, #0xff7fffffffffffff
    2058: 52800022     	mov	w2, #0x1                // =1
    205c: 94000000     	bl	0x205c <_inline_copy_to_user+0x6c>
		000000000000205c:  R_AARCH64_CALL26	__arch_copy_to_user
    2060: aa0003e8     	mov	x8, x0
    2064: d503201f     	nop
    2068: d53b4229     	mrs	x9, DAIF
    206c: d50343df     	msr	DAIFSet, #0x3
    2070: d538202a     	mrs	x10, TTBR1_EL1
    2074: 9240bd4a     	and	x10, x10, #0xffffffffffff
    2078: d140054b     	sub	x11, x10, #0x1, lsl #12 // =0x1000
    207c: d518200b     	msr	TTBR0_EL1, x11
    2080: d518202a     	msr	TTBR1_EL1, x10
    2084: d5033fdf     	isb
    2088: d51b4229     	msr	DAIF, x9
    208c: aa0803e0     	mov	x0, x8
    2090: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    2094: d50323bf     	autiasp
    2098: d65f03c0     	ret
