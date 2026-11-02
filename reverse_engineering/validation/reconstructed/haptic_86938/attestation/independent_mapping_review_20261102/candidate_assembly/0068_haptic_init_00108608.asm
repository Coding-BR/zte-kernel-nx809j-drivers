
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000087e4 <haptic_init>:
    87e4: d503233f     	paciasp
    87e8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    87ec: f9000bf3     	str	x19, [sp, #0x10]
    87f0: 910003fd     	mov	x29, sp
    87f4: aa0003f3     	mov	x19, x0
    87f8: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x12c>
		00000000000087f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x270a
    87fc: 91000000     	add	x0, x0, #0x0
		00000000000087fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x270a
    8800: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008800:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    8804: 91000021     	add	x1, x1, #0x0
		0000000000008804:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    8808: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008808:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44ac
    880c: 91000063     	add	x3, x3, #0x0
		000000000000880c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44ac
    8810: 5281fd62     	mov	w2, #0xfeb              // =4075
    8814: 94000000     	bl	0x8814 <haptic_init+0x30>
		0000000000008814:  R_AARCH64_CALL26	_printk
    8818: d2800028     	mov	x8, #0x1                // =1
    881c: 91164269     	add	x9, x19, #0x590
    8820: 91148260     	add	x0, x19, #0x520
    8824: f2ca68c8     	movk	x8, #0x5346, lsl #32
    8828: 52800021     	mov	w1, #0x1                // =1
    882c: 52800022     	mov	w2, #0x1                // =1
    8830: f9026e68     	str	x8, [x19, #0x4d8]
    8834: f902ca69     	str	x9, [x19, #0x590]
    8838: f902ce69     	str	x9, [x19, #0x598]
    883c: 94000000     	bl	0x883c <haptic_init+0x58>
		000000000000883c:  R_AARCH64_CALL26	hrtimer_init
    8840: 90000008     	adrp	x8, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008840:  R_AARCH64_ADR_PREL_PG_HI21	audio_timer_func
    8844: 91000108     	add	x8, x8, #0x0
		0000000000008844:  R_AARCH64_ADD_ABS_LO12_NC	audio_timer_func
    8848: 9115a269     	add	x9, x19, #0x568
    884c: f902a668     	str	x8, [x19, #0x548]
    8850: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    8854: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008854:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ec2
    8858: 91000021     	add	x1, x1, #0x0
		0000000000008858:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ec2
    885c: f902b268     	str	x8, [x19, #0x560]
    8860: 90000008     	adrp	x8, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008860:  R_AARCH64_ADR_PREL_PG_HI21	audio_work_routine
    8864: 91000108     	add	x8, x8, #0x0
		0000000000008864:  R_AARCH64_ADD_ABS_LO12_NC	audio_work_routine
    8868: 90000002     	adrp	x2, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008868:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xcc
    886c: 91000042     	add	x2, x2, #0x0
		000000000000886c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0xcc
    8870: 9113c260     	add	x0, x19, #0x4f0
    8874: f902b669     	str	x9, [x19, #0x568]
    8878: f902ba69     	str	x9, [x19, #0x570]
    887c: f902be68     	str	x8, [x19, #0x578]
    8880: 94000000     	bl	0x8880 <haptic_init+0x9c>
		0000000000008880:  R_AARCH64_CALL26	__mutex_init
    8884: 91160268     	add	x8, x19, #0x580
    8888: 910bc260     	add	x0, x19, #0x2f0
    888c: f902c268     	str	x8, [x19, #0x580]
    8890: f902c668     	str	x8, [x19, #0x588]
    8894: 94000000     	bl	0x8894 <haptic_init+0xb0>
		0000000000008894:  R_AARCH64_CALL26	mutex_lock
    8898: 52801fe8     	mov	w8, #0xff               // =255
    889c: 39518269     	ldrb	w9, [x19, #0x460]
    88a0: f942e66a     	ldr	x10, [x19, #0x5c8]
    88a4: f807c268     	stur	x8, [x19, #0x7c]
    88a8: 528000a8     	mov	w8, #0x5                // =5
    88ac: aa1303e0     	mov	x0, x19
    88b0: 39004e7f     	strb	wzr, [x19, #0x13]
    88b4: 2a1f03e1     	mov	w1, wzr
    88b8: 3900767f     	strb	wzr, [x19, #0x1d]
    88bc: 39006e69     	strb	w9, [x19, #0x1b]
    88c0: b906e268     	str	w8, [x19, #0x6e0]
    88c4: f9404d48     	ldr	x8, [x10, #0x98]
    88c8: b85fc110     	ldur	w16, [x8, #-0x4]
    88cc: 729bedd1     	movk	w17, #0xdf6e
    88d0: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    88d4: 6b11021f     	cmp	w16, w17
    88d8: 54000040     	b.eq	0x88e0 <haptic_init+0xfc>
    88dc: d4304500     	brk	#0x8228
    88e0: d63f0100     	blr	x8
    88e4: f942e668     	ldr	x8, [x19, #0x5c8]
    88e8: aa1303e0     	mov	x0, x19
    88ec: 52800021     	mov	w1, #0x1                // =1
    88f0: f9404108     	ldr	x8, [x8, #0x80]
    88f4: b85fc110     	ldur	w16, [x8, #-0x4]
    88f8: 729bedd1     	movk	w17, #0xdf6e
    88fc: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    8900: 6b11021f     	cmp	w16, w17
    8904: 54000040     	b.eq	0x890c <haptic_init+0x128>
    8908: d4304500     	brk	#0x8228
    890c: d63f0100     	blr	x8
    8910: f942e668     	ldr	x8, [x19, #0x5c8]
    8914: aa1303e0     	mov	x0, x19
    8918: f9408108     	ldr	x8, [x8, #0x100]
    891c: b85fc110     	ldur	w16, [x8, #-0x4]
    8920: 72810611     	movk	w17, #0x830
    8924: 72b08f51     	movk	w17, #0x847a, lsl #16
    8928: 6b11021f     	cmp	w16, w17
    892c: 54000040     	b.eq	0x8934 <haptic_init+0x150>
    8930: d4304500     	brk	#0x8228
    8934: d63f0100     	blr	x8
    8938: f942e668     	ldr	x8, [x19, #0x5c8]
    893c: aa1303e0     	mov	x0, x19
    8940: f9403908     	ldr	x8, [x8, #0x70]
    8944: b85fc110     	ldur	w16, [x8, #-0x4]
    8948: 72810611     	movk	w17, #0x830
    894c: 72b08f51     	movk	w17, #0x847a, lsl #16
    8950: 6b11021f     	cmp	w16, w17
    8954: 54000040     	b.eq	0x895c <haptic_init+0x178>
    8958: d4304500     	brk	#0x8228
    895c: d63f0100     	blr	x8
    8960: f942e668     	ldr	x8, [x19, #0x5c8]
    8964: b9403261     	ldr	w1, [x19, #0x30]
    8968: aa1303e0     	mov	x0, x19
    896c: f9405108     	ldr	x8, [x8, #0xa0]
    8970: b85fc110     	ldur	w16, [x8, #-0x4]
    8974: 729bedd1     	movk	w17, #0xdf6e
    8978: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    897c: 6b11021f     	cmp	w16, w17
    8980: 54000040     	b.eq	0x8988 <haptic_init+0x1a4>
    8984: d4304500     	brk	#0x8228
    8988: d63f0100     	blr	x8
    898c: f942e668     	ldr	x8, [x19, #0x5c8]
    8990: aa1303e0     	mov	x0, x19
    8994: 52800021     	mov	w1, #0x1                // =1
    8998: 2a1f03e2     	mov	w2, wzr
    899c: f9406d08     	ldr	x8, [x8, #0xd8]
    89a0: b85fc110     	ldur	w16, [x8, #-0x4]
    89a4: 728fccb1     	movk	w17, #0x7e65
    89a8: 72af70f1     	movk	w17, #0x7b87, lsl #16
    89ac: 6b11021f     	cmp	w16, w17
    89b0: 54000040     	b.eq	0x89b8 <haptic_init+0x1d4>
    89b4: d4304500     	brk	#0x8228
    89b8: d63f0100     	blr	x8
    89bc: f942e668     	ldr	x8, [x19, #0x5c8]
    89c0: aa1303e0     	mov	x0, x19
    89c4: 2a1f03e1     	mov	w1, wzr
    89c8: f9405908     	ldr	x8, [x8, #0xb0]
    89cc: b85fc110     	ldur	w16, [x8, #-0x4]
    89d0: 729bedd1     	movk	w17, #0xdf6e
    89d4: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    89d8: 6b11021f     	cmp	w16, w17
    89dc: 54000040     	b.eq	0x89e4 <haptic_init+0x200>
    89e0: d4304500     	brk	#0x8228
    89e4: d63f0100     	blr	x8
    89e8: f942e668     	ldr	x8, [x19, #0x5c8]
    89ec: aa1303e0     	mov	x0, x19
    89f0: f9402908     	ldr	x8, [x8, #0x50]
    89f4: b85fc110     	ldur	w16, [x8, #-0x4]
    89f8: 72810611     	movk	w17, #0x830
    89fc: 72b08f51     	movk	w17, #0x847a, lsl #16
    8a00: 6b11021f     	cmp	w16, w17
    8a04: 54000040     	b.eq	0x8a0c <haptic_init+0x228>
    8a08: d4304500     	brk	#0x8228
    8a0c: d63f0100     	blr	x8
    8a10: f942e668     	ldr	x8, [x19, #0x5c8]
    8a14: aa1303e0     	mov	x0, x19
    8a18: 52800021     	mov	w1, #0x1                // =1
    8a1c: f9405d08     	ldr	x8, [x8, #0xb8]
    8a20: b85fc110     	ldur	w16, [x8, #-0x4]
    8a24: 729bedd1     	movk	w17, #0xdf6e
    8a28: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    8a2c: 6b11021f     	cmp	w16, w17
    8a30: 54000040     	b.eq	0x8a38 <haptic_init+0x254>
    8a34: d4304500     	brk	#0x8228
    8a38: d63f0100     	blr	x8
    8a3c: 910bc260     	add	x0, x19, #0x2f0
    8a40: 3900727f     	strb	wzr, [x19, #0x1c]
    8a44: 94000000     	bl	0x8a44 <haptic_init+0x260>
		0000000000008a44:  R_AARCH64_CALL26	mutex_unlock
    8a48: f9400bf3     	ldr	x19, [sp, #0x10]
    8a4c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    8a50: d50323bf     	autiasp
    8a54: d65f03c0     	ret
