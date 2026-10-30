
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000c280 <tp_ghost_check_work>:
    c280: d503233f     	paciasp
    c284: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    c288: f9000bf3     	str	x19, [sp, #0x10]
    c28c: 910003fd     	mov	x29, sp
    c290: 90000008     	adrp	x8, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c290:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    c294: f9400113     	ldr	x19, [x8]
		000000000000c294:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    c298: 94000000     	bl	0xc298 <tp_ghost_check_work+0x18>
		000000000000c298:  R_AARCH64_CALL26	tp_ghost_check
    c29c: 370000e0     	tbnz	w0, #0x0, 0xc2b8 <tp_ghost_check_work+0x38>
    c2a0: 94000000     	bl	0xc2a0 <tp_ghost_check_work+0x20>
		000000000000c2a0:  R_AARCH64_CALL26	ghost_check_reset
    c2a4: 3912227f     	strb	wzr, [x19, #0x488]
    c2a8: f9400bf3     	ldr	x19, [sp, #0x10]
    c2ac: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    c2b0: d50323bf     	autiasp
    c2b4: d65f03c0     	ret
    c2b8: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c2b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd39
    c2bc: 91000000     	add	x0, x0, #0x0
		000000000000c2bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd39
    c2c0: 94000000     	bl	0xc2c0 <tp_ghost_check_work+0x40>
		000000000000c2c0:  R_AARCH64_CALL26	_printk
    c2c4: b944aa68     	ldr	w8, [x19, #0x4a8]
    c2c8: 7100091f     	cmp	w8, #0x2
    c2cc: 540000cc     	b.gt	0xc2e4 <tp_ghost_check_work+0x64>
    c2d0: f947fa69     	ldr	x9, [x19, #0xff0]
    c2d4: b5000109     	cbnz	x9, 0xc2f4 <tp_ghost_check_work+0x74>
    c2d8: 11000508     	add	w8, w8, #0x1
    c2dc: b904aa68     	str	w8, [x19, #0x4a8]
    c2e0: 17fffff0     	b	0xc2a0 <tp_ghost_check_work+0x20>
    c2e4: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c2e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x199ee
    c2e8: 91000000     	add	x0, x0, #0x0
		000000000000c2e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x199ee
    c2ec: 94000000     	bl	0xc2ec <tp_ghost_check_work+0x6c>
		000000000000c2ec:  R_AARCH64_CALL26	_printk
    c2f0: 17ffffec     	b	0xc2a0 <tp_ghost_check_work+0x20>
    c2f4: aa1303e0     	mov	x0, x19
    c2f8: b85fc130     	ldur	w16, [x9, #-0x4]
    c2fc: 7281af31     	movk	w17, #0xd79
    c300: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    c304: 6b11021f     	cmp	w16, w17
    c308: 54000040     	b.eq	0xc310 <tp_ghost_check_work+0x90>
    c30c: d4304520     	brk	#0x8229
    c310: d63f0120     	blr	x9
    c314: b944aa68     	ldr	w8, [x19, #0x4a8]
    c318: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c318:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a6ff
    c31c: 91000000     	add	x0, x0, #0x0
		000000000000c31c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a6ff
    c320: 11000501     	add	w1, w8, #0x1
    c324: 94000000     	bl	0xc324 <tp_ghost_check_work+0xa4>
		000000000000c324:  R_AARCH64_CALL26	_printk
    c328: b944aa68     	ldr	w8, [x19, #0x4a8]
    c32c: 17ffffeb     	b	0xc2d8 <tp_ghost_check_work+0x58>
