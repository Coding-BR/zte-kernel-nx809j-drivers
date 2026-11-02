
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000063c8 <tp_self_test_write>:
    63c8: d503233f     	paciasp
    63cc: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    63d0: f9000bf5     	str	x21, [sp, #0x10]
    63d4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    63d8: 910003fd     	mov	x29, sp
    63dc: 90000015     	adrp	x21, 0x6000 <tp_pen_only_write+0x70>
		00000000000063dc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    63e0: 52a00200     	mov	w0, #0x100000           // =1048576
    63e4: aa0203f3     	mov	x19, x2
    63e8: f94002b4     	ldr	x20, [x21]
		00000000000063e8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    63ec: 94000000     	bl	0x63ec <tp_self_test_write+0x24>
		00000000000063ec:  R_AARCH64_CALL26	tp_alloc_tp_firmware_data
    63f0: 350002c0     	cbnz	w0, 0x6448 <tp_self_test_write+0x80>
    63f4: f947d288     	ldr	x8, [x20, #0xfa0]
    63f8: b4000128     	cbz	x8, 0x641c <tp_self_test_write+0x54>
    63fc: aa1403e0     	mov	x0, x20
    6400: b85fc110     	ldur	w16, [x8, #-0x4]
    6404: 7281af31     	movk	w17, #0xd79
    6408: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    640c: 6b11021f     	cmp	w16, w17
    6410: 54000040     	b.eq	0x6418 <tp_self_test_write+0x50>
    6414: d4304500     	brk	#0x8228
    6418: d63f0100     	blr	x8
    641c: f94002a8     	ldr	x8, [x21]
		000000000000641c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    6420: b9444909     	ldr	w9, [x8, #0x448]
    6424: f9462d0a     	ldr	x10, [x8, #0xc58]
    6428: f9000149     	str	x9, [x10]
    642c: b904491f     	str	wzr, [x8, #0x448]
    6430: aa1303e0     	mov	x0, x19
    6434: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    6438: f9400bf5     	ldr	x21, [sp, #0x10]
    643c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    6440: d50323bf     	autiasp
    6444: d65f03c0     	ret
    6448: 90000000     	adrp	x0, 0x6000 <tp_pen_only_write+0x70>
		0000000000006448:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e7c
    644c: 91000000     	add	x0, x0, #0x0
		000000000000644c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e7c
    6450: 94000000     	bl	0x6450 <tp_self_test_write+0x88>
		0000000000006450:  R_AARCH64_CALL26	_printk
    6454: 92800173     	mov	x19, #-0xc              // =-12
    6458: 17fffff6     	b	0x6430 <tp_self_test_write+0x68>
