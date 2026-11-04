
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001fec <_inline_copy_to_user>:
    1fec: d5384109     	mrs	x9, SP_EL0
    1ff0: 39411928     	ldrb	w8, [x9, #0x46]
    1ff4: 37280088     	tbnz	w8, #0x5, 0x2004 <_inline_copy_to_user+0x18>
    1ff8: f940012a     	ldr	x10, [x9]
    1ffc: aa0003e8     	mov	x8, x0
    2000: 36d0006a     	tbz	w10, #0x1a, 0x200c <_inline_copy_to_user+0x20>
    2004: d378dc08     	lsl	x8, x0, #8
    2008: 8a882008     	and	x8, x0, x8, asr #8
    200c: d503233f     	paciasp
    2010: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    2014: 910003fd     	mov	x29, sp
    2018: d367fd0a     	lsr	x10, x8, #39
    201c: 52800028     	mov	w8, #0x1                // =1
    2020: b500034a     	cbnz	x10, 0x2088 <_inline_copy_to_user+0x9c>
    2024: d503201f     	nop
    2028: d53b4228     	mrs	x8, DAIF
    202c: d50343df     	msr	DAIFSet, #0x3
    2030: f9400529     	ldr	x9, [x9, #0x8]
    2034: d538202a     	mrs	x10, TTBR1_EL1
    2038: aa0903eb     	mov	x11, x9
    203c: b340bd4b     	bfxil	x11, x10, #0, #48
    2040: d518202b     	msr	TTBR1_EL1, x11
    2044: d5182009     	msr	TTBR0_EL1, x9
    2048: d5033fdf     	isb
    204c: d51b4228     	msr	DAIF, x8
    2050: 9248f800     	and	x0, x0, #0xff7fffffffffffff
    2054: 52800022     	mov	w2, #0x1                // =1
    2058: 94000000     	bl	0x2058 <_inline_copy_to_user+0x6c>
		0000000000002058:  R_AARCH64_CALL26	__arch_copy_to_user
    205c: aa0003e8     	mov	x8, x0
    2060: d503201f     	nop
    2064: d53b4229     	mrs	x9, DAIF
    2068: d50343df     	msr	DAIFSet, #0x3
    206c: d538202a     	mrs	x10, TTBR1_EL1
    2070: 9240bd4a     	and	x10, x10, #0xffffffffffff
    2074: d140054b     	sub	x11, x10, #0x1, lsl #12 // =0x1000
    2078: d518200b     	msr	TTBR0_EL1, x11
    207c: d518202a     	msr	TTBR1_EL1, x10
    2080: d5033fdf     	isb
    2084: d51b4229     	msr	DAIF, x9
    2088: aa0803e0     	mov	x0, x8
    208c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    2090: d50323bf     	autiasp
    2094: d65f03c0     	ret
