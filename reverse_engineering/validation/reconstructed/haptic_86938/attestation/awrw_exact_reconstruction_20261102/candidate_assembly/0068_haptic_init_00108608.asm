
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000087b4 <haptic_init>:
    87b4: d503233f     	paciasp
    87b8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    87bc: f9000bf3     	str	x19, [sp, #0x10]
    87c0: 910003fd     	mov	x29, sp
    87c4: aa0003f3     	mov	x19, x0
    87c8: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x15c>
		00000000000087c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x270a
    87cc: 91000000     	add	x0, x0, #0x0
		00000000000087cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x270a
    87d0: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x15c>
		00000000000087d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    87d4: 91000021     	add	x1, x1, #0x0
		00000000000087d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    87d8: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x15c>
		00000000000087d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44ac
    87dc: 91000063     	add	x3, x3, #0x0
		00000000000087dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44ac
    87e0: 5281fd62     	mov	w2, #0xfeb              // =4075
    87e4: 94000000     	bl	0x87e4 <haptic_init+0x30>
		00000000000087e4:  R_AARCH64_CALL26	_printk
    87e8: d2800028     	mov	x8, #0x1                // =1
    87ec: 91164269     	add	x9, x19, #0x590
    87f0: 91148260     	add	x0, x19, #0x520
    87f4: f2ca68c8     	movk	x8, #0x5346, lsl #32
    87f8: 52800021     	mov	w1, #0x1                // =1
    87fc: 52800022     	mov	w2, #0x1                // =1
    8800: f9026e68     	str	x8, [x19, #0x4d8]
    8804: f902ca69     	str	x9, [x19, #0x590]
    8808: f902ce69     	str	x9, [x19, #0x598]
    880c: 94000000     	bl	0x880c <haptic_init+0x58>
		000000000000880c:  R_AARCH64_CALL26	hrtimer_init
    8810: 90000008     	adrp	x8, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008810:  R_AARCH64_ADR_PREL_PG_HI21	audio_timer_func
    8814: 91000108     	add	x8, x8, #0x0
		0000000000008814:  R_AARCH64_ADD_ABS_LO12_NC	audio_timer_func
    8818: 9115a269     	add	x9, x19, #0x568
    881c: f902a668     	str	x8, [x19, #0x548]
    8820: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    8824: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008824:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ec2
    8828: 91000021     	add	x1, x1, #0x0
		0000000000008828:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ec2
    882c: f902b268     	str	x8, [x19, #0x560]
    8830: 90000008     	adrp	x8, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008830:  R_AARCH64_ADR_PREL_PG_HI21	audio_work_routine
    8834: 91000108     	add	x8, x8, #0x0
		0000000000008834:  R_AARCH64_ADD_ABS_LO12_NC	audio_work_routine
    8838: 90000002     	adrp	x2, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008838:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xcc
    883c: 91000042     	add	x2, x2, #0x0
		000000000000883c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0xcc
    8840: 9113c260     	add	x0, x19, #0x4f0
    8844: f902b669     	str	x9, [x19, #0x568]
    8848: f902ba69     	str	x9, [x19, #0x570]
    884c: f902be68     	str	x8, [x19, #0x578]
    8850: 94000000     	bl	0x8850 <haptic_init+0x9c>
		0000000000008850:  R_AARCH64_CALL26	__mutex_init
    8854: 91160268     	add	x8, x19, #0x580
    8858: 910bc260     	add	x0, x19, #0x2f0
    885c: f902c268     	str	x8, [x19, #0x580]
    8860: f902c668     	str	x8, [x19, #0x588]
    8864: 94000000     	bl	0x8864 <haptic_init+0xb0>
		0000000000008864:  R_AARCH64_CALL26	mutex_lock
    8868: 52801fe8     	mov	w8, #0xff               // =255
    886c: 39518269     	ldrb	w9, [x19, #0x460]
    8870: f942e66a     	ldr	x10, [x19, #0x5c8]
    8874: f807c268     	stur	x8, [x19, #0x7c]
    8878: 528000a8     	mov	w8, #0x5                // =5
    887c: aa1303e0     	mov	x0, x19
    8880: 39004e7f     	strb	wzr, [x19, #0x13]
    8884: 2a1f03e1     	mov	w1, wzr
    8888: 3900767f     	strb	wzr, [x19, #0x1d]
    888c: 39006e69     	strb	w9, [x19, #0x1b]
    8890: b906e268     	str	w8, [x19, #0x6e0]
    8894: f9404d48     	ldr	x8, [x10, #0x98]
    8898: b85fc110     	ldur	w16, [x8, #-0x4]
    889c: 729bedd1     	movk	w17, #0xdf6e
    88a0: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    88a4: 6b11021f     	cmp	w16, w17
    88a8: 54000040     	b.eq	0x88b0 <haptic_init+0xfc>
    88ac: d4304500     	brk	#0x8228
    88b0: d63f0100     	blr	x8
    88b4: f942e668     	ldr	x8, [x19, #0x5c8]
    88b8: aa1303e0     	mov	x0, x19
    88bc: 52800021     	mov	w1, #0x1                // =1
    88c0: f9404108     	ldr	x8, [x8, #0x80]
    88c4: b85fc110     	ldur	w16, [x8, #-0x4]
    88c8: 729bedd1     	movk	w17, #0xdf6e
    88cc: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    88d0: 6b11021f     	cmp	w16, w17
    88d4: 54000040     	b.eq	0x88dc <haptic_init+0x128>
    88d8: d4304500     	brk	#0x8228
    88dc: d63f0100     	blr	x8
    88e0: f942e668     	ldr	x8, [x19, #0x5c8]
    88e4: aa1303e0     	mov	x0, x19
    88e8: f9408108     	ldr	x8, [x8, #0x100]
    88ec: b85fc110     	ldur	w16, [x8, #-0x4]
    88f0: 72810611     	movk	w17, #0x830
    88f4: 72b08f51     	movk	w17, #0x847a, lsl #16
    88f8: 6b11021f     	cmp	w16, w17
    88fc: 54000040     	b.eq	0x8904 <haptic_init+0x150>
    8900: d4304500     	brk	#0x8228
    8904: d63f0100     	blr	x8
    8908: f942e668     	ldr	x8, [x19, #0x5c8]
    890c: aa1303e0     	mov	x0, x19
    8910: f9403908     	ldr	x8, [x8, #0x70]
    8914: b85fc110     	ldur	w16, [x8, #-0x4]
    8918: 72810611     	movk	w17, #0x830
    891c: 72b08f51     	movk	w17, #0x847a, lsl #16
    8920: 6b11021f     	cmp	w16, w17
    8924: 54000040     	b.eq	0x892c <haptic_init+0x178>
    8928: d4304500     	brk	#0x8228
    892c: d63f0100     	blr	x8
    8930: f942e668     	ldr	x8, [x19, #0x5c8]
    8934: b9403261     	ldr	w1, [x19, #0x30]
    8938: aa1303e0     	mov	x0, x19
    893c: f9405108     	ldr	x8, [x8, #0xa0]
    8940: b85fc110     	ldur	w16, [x8, #-0x4]
    8944: 729bedd1     	movk	w17, #0xdf6e
    8948: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    894c: 6b11021f     	cmp	w16, w17
    8950: 54000040     	b.eq	0x8958 <haptic_init+0x1a4>
    8954: d4304500     	brk	#0x8228
    8958: d63f0100     	blr	x8
    895c: f942e668     	ldr	x8, [x19, #0x5c8]
    8960: aa1303e0     	mov	x0, x19
    8964: 52800021     	mov	w1, #0x1                // =1
    8968: 2a1f03e2     	mov	w2, wzr
    896c: f9406d08     	ldr	x8, [x8, #0xd8]
    8970: b85fc110     	ldur	w16, [x8, #-0x4]
    8974: 728fccb1     	movk	w17, #0x7e65
    8978: 72af70f1     	movk	w17, #0x7b87, lsl #16
    897c: 6b11021f     	cmp	w16, w17
    8980: 54000040     	b.eq	0x8988 <haptic_init+0x1d4>
    8984: d4304500     	brk	#0x8228
    8988: d63f0100     	blr	x8
    898c: f942e668     	ldr	x8, [x19, #0x5c8]
    8990: aa1303e0     	mov	x0, x19
    8994: 2a1f03e1     	mov	w1, wzr
    8998: f9405908     	ldr	x8, [x8, #0xb0]
    899c: b85fc110     	ldur	w16, [x8, #-0x4]
    89a0: 729bedd1     	movk	w17, #0xdf6e
    89a4: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    89a8: 6b11021f     	cmp	w16, w17
    89ac: 54000040     	b.eq	0x89b4 <haptic_init+0x200>
    89b0: d4304500     	brk	#0x8228
    89b4: d63f0100     	blr	x8
    89b8: f942e668     	ldr	x8, [x19, #0x5c8]
    89bc: aa1303e0     	mov	x0, x19
    89c0: f9402908     	ldr	x8, [x8, #0x50]
    89c4: b85fc110     	ldur	w16, [x8, #-0x4]
    89c8: 72810611     	movk	w17, #0x830
    89cc: 72b08f51     	movk	w17, #0x847a, lsl #16
    89d0: 6b11021f     	cmp	w16, w17
    89d4: 54000040     	b.eq	0x89dc <haptic_init+0x228>
    89d8: d4304500     	brk	#0x8228
    89dc: d63f0100     	blr	x8
    89e0: f942e668     	ldr	x8, [x19, #0x5c8]
    89e4: aa1303e0     	mov	x0, x19
    89e8: 52800021     	mov	w1, #0x1                // =1
    89ec: f9405d08     	ldr	x8, [x8, #0xb8]
    89f0: b85fc110     	ldur	w16, [x8, #-0x4]
    89f4: 729bedd1     	movk	w17, #0xdf6e
    89f8: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    89fc: 6b11021f     	cmp	w16, w17
    8a00: 54000040     	b.eq	0x8a08 <haptic_init+0x254>
    8a04: d4304500     	brk	#0x8228
    8a08: d63f0100     	blr	x8
    8a0c: 910bc260     	add	x0, x19, #0x2f0
    8a10: 3900727f     	strb	wzr, [x19, #0x1c]
    8a14: 94000000     	bl	0x8a14 <haptic_init+0x260>
		0000000000008a14:  R_AARCH64_CALL26	mutex_unlock
    8a18: f9400bf3     	ldr	x19, [sp, #0x10]
    8a1c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    8a20: d50323bf     	autiasp
    8a24: d65f03c0     	ret
