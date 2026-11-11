
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000013f0 <_inline_copy_to_user>:
    13f0: d5384109     	mrs	x9, SP_EL0
    13f4: 39411928     	ldrb	w8, [x9, #0x46]
    13f8: 37280088     	tbnz	w8, #0x5, 0x1408 <_inline_copy_to_user+0x18>
    13fc: f940012a     	ldr	x10, [x9]
    1400: aa0003e8     	mov	x8, x0
    1404: 36d0006a     	tbz	w10, #0x1a, 0x1410 <_inline_copy_to_user+0x20>
    1408: d378dc08     	lsl	x8, x0, #8
    140c: 8a882008     	and	x8, x0, x8, asr #8
    1410: d503233f     	paciasp
    1414: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1418: 910003fd     	mov	x29, sp
    141c: d367fd0a     	lsr	x10, x8, #39
    1420: 52800028     	mov	w8, #0x1                // =1
    1424: b500034a     	cbnz	x10, 0x148c <_inline_copy_to_user+0x9c>
    1428: d503201f     	nop
    142c: d53b4228     	mrs	x8, DAIF
    1430: d50343df     	msr	DAIFSet, #0x3
    1434: f9400529     	ldr	x9, [x9, #0x8]
    1438: d538202a     	mrs	x10, TTBR1_EL1
    143c: aa0903eb     	mov	x11, x9
    1440: b340bd4b     	bfxil	x11, x10, #0, #48
    1444: d518202b     	msr	TTBR1_EL1, x11
    1448: d5182009     	msr	TTBR0_EL1, x9
    144c: d5033fdf     	isb
    1450: d51b4228     	msr	DAIF, x8
    1454: 9248f800     	and	x0, x0, #0xff7fffffffffffff
    1458: 52800022     	mov	w2, #0x1                // =1
    145c: 94000000     	bl	0x145c <_inline_copy_to_user+0x6c>
		000000000000145c:  R_AARCH64_CALL26	__arch_copy_to_user
    1460: aa0003e8     	mov	x8, x0
    1464: d503201f     	nop
    1468: d53b4229     	mrs	x9, DAIF
    146c: d50343df     	msr	DAIFSet, #0x3
    1470: d538202a     	mrs	x10, TTBR1_EL1
    1474: 9240bd4a     	and	x10, x10, #0xffffffffffff
    1478: d140054b     	sub	x11, x10, #0x1, lsl #12 // =0x1000
    147c: d518200b     	msr	TTBR0_EL1, x11
    1480: d518202a     	msr	TTBR1_EL1, x10
    1484: d5033fdf     	isb
    1488: d51b4229     	msr	DAIF, x9
    148c: aa0803e0     	mov	x0, x8
    1490: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1494: d50323bf     	autiasp
    1498: d65f03c0     	ret
