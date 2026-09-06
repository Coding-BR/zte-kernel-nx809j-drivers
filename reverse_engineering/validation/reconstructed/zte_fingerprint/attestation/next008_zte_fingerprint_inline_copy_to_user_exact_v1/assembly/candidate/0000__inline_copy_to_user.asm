
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000013f4 <_inline_copy_to_user>:
    13f4: d5384109     	mrs	x9, SP_EL0
    13f8: 39411928     	ldrb	w8, [x9, #0x46]
    13fc: 37280088     	tbnz	w8, #0x5, 0x140c <_inline_copy_to_user+0x18>
    1400: f940012a     	ldr	x10, [x9]
    1404: aa0003e8     	mov	x8, x0
    1408: 36d0006a     	tbz	w10, #0x1a, 0x1414 <_inline_copy_to_user+0x20>
    140c: d378dc08     	lsl	x8, x0, #8
    1410: 8a882008     	and	x8, x0, x8, asr #8
    1414: d503233f     	paciasp
    1418: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    141c: 910003fd     	mov	x29, sp
    1420: d367fd0a     	lsr	x10, x8, #39
    1424: 52800028     	mov	w8, #0x1                // =1
    1428: b500034a     	cbnz	x10, 0x1490 <_inline_copy_to_user+0x9c>
    142c: d503201f     	nop
    1430: d53b4228     	mrs	x8, DAIF
    1434: d50343df     	msr	DAIFSet, #0x3
    1438: f9400529     	ldr	x9, [x9, #0x8]
    143c: d538202a     	mrs	x10, TTBR1_EL1
    1440: aa0903eb     	mov	x11, x9
    1444: b340bd4b     	bfxil	x11, x10, #0, #48
    1448: d518202b     	msr	TTBR1_EL1, x11
    144c: d5182009     	msr	TTBR0_EL1, x9
    1450: d5033fdf     	isb
    1454: d51b4228     	msr	DAIF, x8
    1458: 9248f800     	and	x0, x0, #0xff7fffffffffffff
    145c: 52800022     	mov	w2, #0x1                // =1
    1460: 94000000     	bl	0x1460 <_inline_copy_to_user+0x6c>
		0000000000001460:  R_AARCH64_CALL26	__arch_copy_to_user
    1464: aa0003e8     	mov	x8, x0
    1468: d503201f     	nop
    146c: d53b4229     	mrs	x9, DAIF
    1470: d50343df     	msr	DAIFSet, #0x3
    1474: d538202a     	mrs	x10, TTBR1_EL1
    1478: 9240bd4a     	and	x10, x10, #0xffffffffffff
    147c: d140054b     	sub	x11, x10, #0x1, lsl #12 // =0x1000
    1480: d518200b     	msr	TTBR0_EL1, x11
    1484: d518202a     	msr	TTBR1_EL1, x10
    1488: d5033fdf     	isb
    148c: d51b4229     	msr	DAIF, x9
    1490: aa0803e0     	mov	x0, x8
    1494: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1498: d50323bf     	autiasp
    149c: d65f03c0     	ret
