
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000c27c <syna_dev_disconnect>:
    c27c: d503233f     	paciasp
    c280: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    c284: a90157f6     	stp	x22, x21, [sp, #0x10]
    c288: a9024ff4     	stp	x20, x19, [sp, #0x20]
    c28c: 910003fd     	mov	x29, sp
    c290: 39560808     	ldrb	w8, [x0, #0x582]
    c294: 35000088     	cbnz	w8, 0xc2a4 <syna_dev_disconnect+0x28>
    c298: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c298:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3266
    c29c: 91000000     	add	x0, x0, #0x0
		000000000000c29c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3266
    c2a0: 1400004e     	b	0xc3d8 <syna_dev_disconnect+0x15c>
    c2a4: b9457c08     	ldr	w8, [x0, #0x57c]
    c2a8: f9413814     	ldr	x20, [x0, #0x270]
    c2ac: aa0003f3     	mov	x19, x0
    c2b0: 71000d1f     	cmp	w8, #0x3
    c2b4: 54000121     	b.ne	0xc2d8 <syna_dev_disconnect+0x5c>
    c2b8: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c2b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8666
    c2bc: 91000000     	add	x0, x0, #0x0
		000000000000c2bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8666
    c2c0: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000c2c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19e
    c2c4: 91000021     	add	x1, x1, #0x0
		000000000000c2c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19e
    c2c8: 94000000     	bl	0xc2c8 <syna_dev_disconnect+0x4c>
		000000000000c2c8:  R_AARCH64_CALL26	_printk
    c2cc: f940c288     	ldr	x8, [x20, #0x180]
    c2d0: b50006a8     	cbnz	x8, 0xc3a4 <syna_dev_disconnect+0x128>
    c2d4: 1400003d     	b	0xc3c8 <syna_dev_disconnect+0x14c>
    c2d8: f9421a68     	ldr	x8, [x19, #0x430]
    c2dc: b4000108     	cbz	x8, 0xc2fc <syna_dev_disconnect+0x80>
    c2e0: 910f2260     	add	x0, x19, #0x3c8
    c2e4: 94000000     	bl	0xc2e4 <syna_dev_disconnect+0x68>
		000000000000c2e4:  R_AARCH64_CALL26	cancel_delayed_work_sync
    c2e8: f9421a60     	ldr	x0, [x19, #0x430]
    c2ec: 94000000     	bl	0xc2ec <syna_dev_disconnect+0x70>
		000000000000c2ec:  R_AARCH64_CALL26	__flush_workqueue
    c2f0: f9421a60     	ldr	x0, [x19, #0x430]
    c2f4: 94000000     	bl	0xc2f4 <syna_dev_disconnect+0x78>
		000000000000c2f4:  R_AARCH64_CALL26	destroy_workqueue
    c2f8: f9021a7f     	str	xzr, [x19, #0x430]
    c2fc: b940ba88     	ldr	w8, [x20, #0xb8]
    c300: 34000428     	cbz	w8, 0xc384 <syna_dev_disconnect+0x108>
    c304: f9413a75     	ldr	x21, [x19, #0x270]
    c308: 94000000     	bl	0xc308 <syna_dev_disconnect+0x8c>
		000000000000c308:  R_AARCH64_CALL26	syna_request_managed_device
    c30c: b5000080     	cbnz	x0, 0xc31c <syna_dev_disconnect+0xa0>
    c310: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c310:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
    c314: 91000000     	add	x0, x0, #0x0
		000000000000c314:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
    c318: 14000018     	b	0xc378 <syna_dev_disconnect+0xfc>
    c31c: b940baa1     	ldr	w1, [x21, #0xb8]
    c320: 7100043f     	cmp	w1, #0x1
    c324: 5400030b     	b.lt	0xc384 <syna_dev_disconnect+0x108>
    c328: f94022a8     	ldr	x8, [x21, #0x40]
    c32c: b40001a8     	cbz	x8, 0xc360 <syna_dev_disconnect+0xe4>
    c330: aa0003f6     	mov	x22, x0
    c334: 910022a0     	add	x0, x21, #0x8
    c338: 2a1f03e1     	mov	w1, wzr
    c33c: b85fc110     	ldur	w16, [x8, #-0x4]
    c340: 728c3631     	movk	w17, #0x61b1
    c344: 72a685d1     	movk	w17, #0x342e, lsl #16
    c348: 6b11021f     	cmp	w16, w17
    c34c: 54000040     	b.eq	0xc354 <syna_dev_disconnect+0xd8>
    c350: d4304500     	brk	#0x8228
    c354: d63f0100     	blr	x8
    c358: b940baa1     	ldr	w1, [x21, #0xb8]
    c35c: aa1603e0     	mov	x0, x22
    c360: aa1303e2     	mov	x2, x19
    c364: 94000000     	bl	0xc364 <syna_dev_disconnect+0xe8>
		000000000000c364:  R_AARCH64_CALL26	devm_free_irq
    c368: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c368:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bd9
    c36c: 91000000     	add	x0, x0, #0x0
		000000000000c36c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bd9
    c370: b900babf     	str	wzr, [x21, #0xb8]
    c374: 3902f2bf     	strb	wzr, [x21, #0xbc]
    c378: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000c378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8108
    c37c: 91000021     	add	x1, x1, #0x0
		000000000000c37c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8108
    c380: 94000000     	bl	0xc380 <syna_dev_disconnect+0x104>
		000000000000c380:  R_AARCH64_CALL26	_printk
    c384: f941da60     	ldr	x0, [x19, #0x3b0]
    c388: b4000060     	cbz	x0, 0xc394 <syna_dev_disconnect+0x118>
    c38c: 94000000     	bl	0xc38c <syna_dev_disconnect+0x110>
		000000000000c38c:  R_AARCH64_CALL26	input_unregister_device
    c390: f901da7f     	str	xzr, [x19, #0x3b0]
    c394: f901de7f     	str	xzr, [x19, #0x3b8]
    c398: b903c27f     	str	wzr, [x19, #0x3c0]
    c39c: f940c288     	ldr	x8, [x20, #0x180]
    c3a0: b4000148     	cbz	x8, 0xc3c8 <syna_dev_disconnect+0x14c>
    c3a4: aa1403e0     	mov	x0, x20
    c3a8: 2a1f03e1     	mov	w1, wzr
    c3ac: b85fc110     	ldur	w16, [x8, #-0x4]
    c3b0: 72850571     	movk	w17, #0x282b
    c3b4: 72abe611     	movk	w17, #0x5f30, lsl #16
    c3b8: 6b11021f     	cmp	w16, w17
    c3bc: 54000040     	b.eq	0xc3c4 <syna_dev_disconnect+0x148>
    c3c0: d4304500     	brk	#0x8228
    c3c4: d63f0100     	blr	x8
    c3c8: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c3c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bb3
    c3cc: 91000000     	add	x0, x0, #0x0
		000000000000c3cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bb3
    c3d0: b9057e7f     	str	wzr, [x19, #0x57c]
    c3d4: 39160a7f     	strb	wzr, [x19, #0x582]
    c3d8: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000c3d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19e
    c3dc: 91000021     	add	x1, x1, #0x0
		000000000000c3dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19e
    c3e0: 90000002     	adrp	x2, 0xc000 <syna_dev_connect+0x174>
		000000000000c3e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3815
    c3e4: 91000042     	add	x2, x2, #0x0
		000000000000c3e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3815
    c3e8: 94000000     	bl	0xc3e8 <syna_dev_disconnect+0x16c>
		000000000000c3e8:  R_AARCH64_CALL26	_printk
    c3ec: 2a1f03e0     	mov	w0, wzr
    c3f0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    c3f4: a94157f6     	ldp	x22, x21, [sp, #0x10]
    c3f8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    c3fc: d50323bf     	autiasp
    c400: d65f03c0     	ret
