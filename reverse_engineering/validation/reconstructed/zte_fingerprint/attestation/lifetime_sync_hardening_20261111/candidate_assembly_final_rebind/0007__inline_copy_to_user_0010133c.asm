
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001410 <_inline_copy_to_user>:
    1410: d5384109     	mrs	x9, SP_EL0
    1414: 39411928     	ldrb	w8, [x9, #0x46]
    1418: 37280088     	tbnz	w8, #0x5, 0x1428 <_inline_copy_to_user+0x18>
    141c: f940012a     	ldr	x10, [x9]
    1420: aa0003e8     	mov	x8, x0
    1424: 36d0006a     	tbz	w10, #0x1a, 0x1430 <_inline_copy_to_user+0x20>
    1428: d378dc08     	lsl	x8, x0, #8
    142c: 8a882008     	and	x8, x0, x8, asr #8
    1430: d503233f     	paciasp
    1434: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1438: 910003fd     	mov	x29, sp
    143c: d367fd0a     	lsr	x10, x8, #39
    1440: 52800028     	mov	w8, #0x1                // =1
    1444: b500034a     	cbnz	x10, 0x14ac <_inline_copy_to_user+0x9c>
    1448: d503201f     	nop
    144c: d53b4228     	mrs	x8, DAIF
    1450: d50343df     	msr	DAIFSet, #0x3
    1454: f9400529     	ldr	x9, [x9, #0x8]
    1458: d538202a     	mrs	x10, TTBR1_EL1
    145c: aa0903eb     	mov	x11, x9
    1460: b340bd4b     	bfxil	x11, x10, #0, #48
    1464: d518202b     	msr	TTBR1_EL1, x11
    1468: d5182009     	msr	TTBR0_EL1, x9
    146c: d5033fdf     	isb
    1470: d51b4228     	msr	DAIF, x8
    1474: 9248f800     	and	x0, x0, #0xff7fffffffffffff
    1478: 52800022     	mov	w2, #0x1                // =1
    147c: 94000000     	bl	0x147c <_inline_copy_to_user+0x6c>
		000000000000147c:  R_AARCH64_CALL26	__arch_copy_to_user
    1480: aa0003e8     	mov	x8, x0
    1484: d503201f     	nop
    1488: d53b4229     	mrs	x9, DAIF
    148c: d50343df     	msr	DAIFSet, #0x3
    1490: d538202a     	mrs	x10, TTBR1_EL1
    1494: 9240bd4a     	and	x10, x10, #0xffffffffffff
    1498: d140054b     	sub	x11, x10, #0x1, lsl #12 // =0x1000
    149c: d518200b     	msr	TTBR0_EL1, x11
    14a0: d518202a     	msr	TTBR1_EL1, x10
    14a4: d5033fdf     	isb
    14a8: d51b4229     	msr	DAIF, x9
    14ac: aa0803e0     	mov	x0, x8
    14b0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    14b4: d50323bf     	autiasp
    14b8: d65f03c0     	ret
