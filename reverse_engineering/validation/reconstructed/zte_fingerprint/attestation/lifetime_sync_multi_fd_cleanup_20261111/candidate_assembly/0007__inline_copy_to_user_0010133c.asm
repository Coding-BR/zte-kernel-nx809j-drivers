
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001424 <_inline_copy_to_user>:
    1424: d5384109     	mrs	x9, SP_EL0
    1428: 39411928     	ldrb	w8, [x9, #0x46]
    142c: 37280088     	tbnz	w8, #0x5, 0x143c <_inline_copy_to_user+0x18>
    1430: f940012a     	ldr	x10, [x9]
    1434: aa0003e8     	mov	x8, x0
    1438: 36d0006a     	tbz	w10, #0x1a, 0x1444 <_inline_copy_to_user+0x20>
    143c: d378dc08     	lsl	x8, x0, #8
    1440: 8a882008     	and	x8, x0, x8, asr #8
    1444: d503233f     	paciasp
    1448: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    144c: 910003fd     	mov	x29, sp
    1450: d367fd0a     	lsr	x10, x8, #39
    1454: 52800028     	mov	w8, #0x1                // =1
    1458: b500034a     	cbnz	x10, 0x14c0 <_inline_copy_to_user+0x9c>
    145c: d503201f     	nop
    1460: d53b4228     	mrs	x8, DAIF
    1464: d50343df     	msr	DAIFSet, #0x3
    1468: f9400529     	ldr	x9, [x9, #0x8]
    146c: d538202a     	mrs	x10, TTBR1_EL1
    1470: aa0903eb     	mov	x11, x9
    1474: b340bd4b     	bfxil	x11, x10, #0, #48
    1478: d518202b     	msr	TTBR1_EL1, x11
    147c: d5182009     	msr	TTBR0_EL1, x9
    1480: d5033fdf     	isb
    1484: d51b4228     	msr	DAIF, x8
    1488: 9248f800     	and	x0, x0, #0xff7fffffffffffff
    148c: 52800022     	mov	w2, #0x1                // =1
    1490: 94000000     	bl	0x1490 <_inline_copy_to_user+0x6c>
		0000000000001490:  R_AARCH64_CALL26	__arch_copy_to_user
    1494: aa0003e8     	mov	x8, x0
    1498: d503201f     	nop
    149c: d53b4229     	mrs	x9, DAIF
    14a0: d50343df     	msr	DAIFSet, #0x3
    14a4: d538202a     	mrs	x10, TTBR1_EL1
    14a8: 9240bd4a     	and	x10, x10, #0xffffffffffff
    14ac: d140054b     	sub	x11, x10, #0x1, lsl #12 // =0x1000
    14b0: d518200b     	msr	TTBR0_EL1, x11
    14b4: d518202a     	msr	TTBR1_EL1, x10
    14b8: d5033fdf     	isb
    14bc: d51b4229     	msr	DAIF, x9
    14c0: aa0803e0     	mov	x0, x8
    14c4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    14c8: d50323bf     	autiasp
    14cc: d65f03c0     	ret
