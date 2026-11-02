
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001b388 <syna_tcm_buf_copy>:
   1b388: d503233f     	paciasp
   1b38c: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   1b390: f9000bf7     	str	x23, [sp, #0x10]
   1b394: a90257f6     	stp	x22, x21, [sp, #0x20]
   1b398: a9034ff4     	stp	x20, x19, [sp, #0x30]
   1b39c: 910003fd     	mov	x29, sp
   1b3a0: 39410002     	ldrb	w2, [x0, #0x40]
   1b3a4: aa0003f3     	mov	x19, x0
   1b3a8: aa0103f4     	mov	x20, x1
   1b3ac: 35000a42     	cbnz	w2, 0x1b4f4 <syna_tcm_buf_copy+0x16c>
   1b3b0: 91004260     	add	x0, x19, #0x10
   1b3b4: 94000000     	bl	0x1b3b4 <syna_tcm_buf_copy+0x2c>
		000000000001b3b4:  R_AARCH64_CALL26	mutex_lock
   1b3b8: 39410268     	ldrb	w8, [x19, #0x40]
   1b3bc: 11000508     	add	w8, w8, #0x1
   1b3c0: 39010268     	strb	w8, [x19, #0x40]
   1b3c4: 39410282     	ldrb	w2, [x20, #0x40]
   1b3c8: 35000a22     	cbnz	w2, 0x1b50c <syna_tcm_buf_copy+0x184>
   1b3cc: 91004280     	add	x0, x20, #0x10
   1b3d0: 94000000     	bl	0x1b3d0 <syna_tcm_buf_copy+0x48>
		000000000001b3d0:  R_AARCH64_CALL26	mutex_lock
   1b3d4: 39410288     	ldrb	w8, [x20, #0x40]
   1b3d8: b9400e95     	ldr	w21, [x20, #0xc]
   1b3dc: 11000508     	add	w8, w8, #0x1
   1b3e0: 39010288     	strb	w8, [x20, #0x40]
   1b3e4: b9400a63     	ldr	w3, [x19, #0x8]
   1b3e8: 6b15007f     	cmp	w3, w21
   1b3ec: 540003e2     	b.hs	0x1b468 <syna_tcm_buf_copy+0xe0>
   1b3f0: b4000df3     	cbz	x19, 0x1b5ac <syna_tcm_buf_copy+0x224>
   1b3f4: 110006b6     	add	w22, w21, #0x1
   1b3f8: f9400260     	ldr	x0, [x19]
   1b3fc: 6b16007f     	cmp	w3, w22
   1b400: 54000262     	b.hs	0x1b44c <syna_tcm_buf_copy+0xc4>
   1b404: b40000c0     	cbz	x0, 0x1b41c <syna_tcm_buf_copy+0x94>
   1b408: aa0003f7     	mov	x23, x0
   1b40c: 94000000     	bl	0x1b40c <syna_tcm_buf_copy+0x84>
		000000000001b40c:  R_AARCH64_CALL26	syna_request_managed_device
   1b410: b4000e00     	cbz	x0, 0x1b5d0 <syna_tcm_buf_copy+0x248>
   1b414: aa1703e1     	mov	x1, x23
   1b418: 94000000     	bl	0x1b418 <syna_tcm_buf_copy+0x90>
		000000000001b418:  R_AARCH64_CALL26	devm_kfree
   1b41c: 94000000     	bl	0x1b41c <syna_tcm_buf_copy+0x94>
		000000000001b41c:  R_AARCH64_CALL26	syna_request_managed_device
   1b420: b4000e60     	cbz	x0, 0x1b5ec <syna_tcm_buf_copy+0x264>
   1b424: 12b00008     	mov	w8, #0x7fffffff         // =2147483647
   1b428: 6b0802bf     	cmp	w21, w8
   1b42c: 54000cc2     	b.hs	0x1b5c4 <syna_tcm_buf_copy+0x23c>
   1b430: aa1603e1     	mov	x1, x22
   1b434: 5281b802     	mov	w2, #0xdc0              // =3520
   1b438: 94000000     	bl	0x1b438 <syna_tcm_buf_copy+0xb0>
		000000000001b438:  R_AARCH64_CALL26	devm_kmalloc
   1b43c: f9000260     	str	x0, [x19]
   1b440: b4000e20     	cbz	x0, 0x1b604 <syna_tcm_buf_copy+0x27c>
   1b444: b9000a76     	str	w22, [x19, #0x8]
   1b448: 14000002     	b	0x1b450 <syna_tcm_buf_copy+0xc8>
   1b44c: aa0303f6     	mov	x22, x3
   1b450: 2a1f03e1     	mov	w1, wzr
   1b454: aa1603e2     	mov	x2, x22
   1b458: 94000000     	bl	0x1b458 <syna_tcm_buf_copy+0xd0>
		000000000001b458:  R_AARCH64_CALL26	memset
   1b45c: b9000e7f     	str	wzr, [x19, #0xc]
   1b460: b9400a63     	ldr	w3, [x19, #0x8]
   1b464: b9400e95     	ldr	w21, [x20, #0xc]
   1b468: f9400260     	ldr	x0, [x19]
   1b46c: b40006a0     	cbz	x0, 0x1b540 <syna_tcm_buf_copy+0x1b8>
   1b470: f9400281     	ldr	x1, [x20]
   1b474: b4000661     	cbz	x1, 0x1b540 <syna_tcm_buf_copy+0x1b8>
   1b478: b9400a82     	ldr	w2, [x20, #0x8]
   1b47c: 6b0302bf     	cmp	w21, w3
   1b480: 54000528     	b.hi	0x1b524 <syna_tcm_buf_copy+0x19c>
   1b484: 6b0202bf     	cmp	w21, w2
   1b488: 540004e8     	b.hi	0x1b524 <syna_tcm_buf_copy+0x19c>
   1b48c: 2a1503e2     	mov	w2, w21
   1b490: 94000000     	bl	0x1b490 <syna_tcm_buf_copy+0x108>
		000000000001b490:  R_AARCH64_CALL26	memcpy
   1b494: b9400e88     	ldr	w8, [x20, #0xc]
   1b498: b9000e68     	str	w8, [x19, #0xc]
   1b49c: 39410282     	ldrb	w2, [x20, #0x40]
   1b4a0: 7100045f     	cmp	w2, #0x1
   1b4a4: 54000741     	b.ne	0x1b58c <syna_tcm_buf_copy+0x204>
   1b4a8: 2a1f03e8     	mov	w8, wzr
   1b4ac: 91004280     	add	x0, x20, #0x10
   1b4b0: 39010288     	strb	w8, [x20, #0x40]
   1b4b4: 94000000     	bl	0x1b4b4 <syna_tcm_buf_copy+0x12c>
		000000000001b4b4:  R_AARCH64_CALL26	mutex_unlock
   1b4b8: 39410262     	ldrb	w2, [x19, #0x40]
   1b4bc: 2a1f03f4     	mov	w20, wzr
   1b4c0: 7100045f     	cmp	w2, #0x1
   1b4c4: 54000d21     	b.ne	0x1b668 <syna_tcm_buf_copy+0x2e0>
   1b4c8: 2a1403e8     	mov	w8, w20
   1b4cc: 91004260     	add	x0, x19, #0x10
   1b4d0: 39010268     	strb	w8, [x19, #0x40]
   1b4d4: 94000000     	bl	0x1b4d4 <syna_tcm_buf_copy+0x14c>
		000000000001b4d4:  R_AARCH64_CALL26	mutex_unlock
   1b4d8: 2a1403e0     	mov	w0, w20
   1b4dc: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   1b4e0: f9400bf7     	ldr	x23, [sp, #0x10]
   1b4e4: a94257f6     	ldp	x22, x21, [sp, #0x20]
   1b4e8: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   1b4ec: d50323bf     	autiasp
   1b4f0: d65f03c0     	ret
   1b4f4: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b4f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1b4f8: 91000000     	add	x0, x0, #0x0
		000000000001b4f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1b4fc: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b4fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   1b500: 91000021     	add	x1, x1, #0x0
		000000000001b500:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   1b504: 94000000     	bl	0x1b504 <syna_tcm_buf_copy+0x17c>
		000000000001b504:  R_AARCH64_CALL26	_printk
   1b508: 17ffffaa     	b	0x1b3b0 <syna_tcm_buf_copy+0x28>
   1b50c: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b50c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1b510: 91000000     	add	x0, x0, #0x0
		000000000001b510:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1b514: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b514:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   1b518: 91000021     	add	x1, x1, #0x0
		000000000001b518:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   1b51c: 94000000     	bl	0x1b51c <syna_tcm_buf_copy+0x194>
		000000000001b51c:  R_AARCH64_CALL26	_printk
   1b520: 17ffffab     	b	0x1b3cc <syna_tcm_buf_copy+0x44>
   1b524: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b524:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   1b528: 91000000     	add	x0, x0, #0x0
		000000000001b528:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   1b52c: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b52c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   1b530: 91000021     	add	x1, x1, #0x0
		000000000001b530:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   1b534: 2a1503e4     	mov	w4, w21
   1b538: 94000000     	bl	0x1b538 <syna_tcm_buf_copy+0x1b0>
		000000000001b538:  R_AARCH64_CALL26	_printk
   1b53c: b9400e95     	ldr	w21, [x20, #0xc]
   1b540: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b540:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a49
   1b544: 91000000     	add	x0, x0, #0x0
		000000000001b544:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a49
   1b548: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b548:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13bf
   1b54c: 91000021     	add	x1, x1, #0x0
		000000000001b54c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13bf
   1b550: 2a1503e2     	mov	w2, w21
   1b554: 94000000     	bl	0x1b554 <syna_tcm_buf_copy+0x1cc>
		000000000001b554:  R_AARCH64_CALL26	_printk
   1b558: 39410282     	ldrb	w2, [x20, #0x40]
   1b55c: 7100045f     	cmp	w2, #0x1
   1b560: 54000941     	b.ne	0x1b688 <syna_tcm_buf_copy+0x300>
   1b564: 2a1f03e8     	mov	w8, wzr
   1b568: 91004280     	add	x0, x20, #0x10
   1b56c: 39010288     	strb	w8, [x20, #0x40]
   1b570: 94000000     	bl	0x1b570 <syna_tcm_buf_copy+0x1e8>
		000000000001b570:  R_AARCH64_CALL26	mutex_unlock
   1b574: 39410262     	ldrb	w2, [x19, #0x40]
   1b578: 128002b4     	mov	w20, #-0x16             // =-22
   1b57c: 7100045f     	cmp	w2, #0x1
   1b580: 54000741     	b.ne	0x1b668 <syna_tcm_buf_copy+0x2e0>
   1b584: 2a1f03e8     	mov	w8, wzr
   1b588: 17ffffd1     	b	0x1b4cc <syna_tcm_buf_copy+0x144>
   1b58c: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b58c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1b590: 91000000     	add	x0, x0, #0x0
		000000000001b590:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1b594: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   1b598: 91000021     	add	x1, x1, #0x0
		000000000001b598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   1b59c: 94000000     	bl	0x1b59c <syna_tcm_buf_copy+0x214>
		000000000001b59c:  R_AARCH64_CALL26	_printk
   1b5a0: 39410288     	ldrb	w8, [x20, #0x40]
   1b5a4: 51000508     	sub	w8, w8, #0x1
   1b5a8: 17ffffc1     	b	0x1b4ac <syna_tcm_buf_copy+0x124>
   1b5ac: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b5ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa913
   1b5b0: 91000000     	add	x0, x0, #0x0
		000000000001b5b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa913
   1b5b4: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b5b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   1b5b8: 91000021     	add	x1, x1, #0x0
		000000000001b5b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   1b5bc: 94000000     	bl	0x1b5bc <syna_tcm_buf_copy+0x234>
		000000000001b5bc:  R_AARCH64_CALL26	_printk
   1b5c0: 14000018     	b	0x1b620 <syna_tcm_buf_copy+0x298>
   1b5c4: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b5c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   1b5c8: 91000000     	add	x0, x0, #0x0
		000000000001b5c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   1b5cc: 1400000a     	b	0x1b5f4 <syna_tcm_buf_copy+0x26c>
   1b5d0: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b5d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1b5d4: 91000000     	add	x0, x0, #0x0
		000000000001b5d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1b5d8: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b5d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1b5dc: 91000021     	add	x1, x1, #0x0
		000000000001b5dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1b5e0: 94000000     	bl	0x1b5e0 <syna_tcm_buf_copy+0x258>
		000000000001b5e0:  R_AARCH64_CALL26	_printk
   1b5e4: 94000000     	bl	0x1b5e4 <syna_tcm_buf_copy+0x25c>
		000000000001b5e4:  R_AARCH64_CALL26	syna_request_managed_device
   1b5e8: b5fff1e0     	cbnz	x0, 0x1b424 <syna_tcm_buf_copy+0x9c>
   1b5ec: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b5ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1b5f0: 91000000     	add	x0, x0, #0x0
		000000000001b5f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1b5f4: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b5f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   1b5f8: 91000021     	add	x1, x1, #0x0
		000000000001b5f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   1b5fc: 94000000     	bl	0x1b5fc <syna_tcm_buf_copy+0x274>
		000000000001b5fc:  R_AARCH64_CALL26	_printk
   1b600: f900027f     	str	xzr, [x19]
   1b604: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   1b608: 91000000     	add	x0, x0, #0x0
		000000000001b608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   1b60c: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b60c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   1b610: 91000021     	add	x1, x1, #0x0
		000000000001b610:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   1b614: 2a1603e2     	mov	w2, w22
   1b618: 94000000     	bl	0x1b618 <syna_tcm_buf_copy+0x290>
		000000000001b618:  R_AARCH64_CALL26	_printk
   1b61c: f900067f     	str	xzr, [x19, #0x8]
   1b620: b9400e88     	ldr	w8, [x20, #0xc]
   1b624: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b624:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x64e5
   1b628: 91000000     	add	x0, x0, #0x0
		000000000001b628:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x64e5
   1b62c: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b62c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13bf
   1b630: 91000021     	add	x1, x1, #0x0
		000000000001b630:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13bf
   1b634: 11000502     	add	w2, w8, #0x1
   1b638: 94000000     	bl	0x1b638 <syna_tcm_buf_copy+0x2b0>
		000000000001b638:  R_AARCH64_CALL26	_printk
   1b63c: 39410282     	ldrb	w2, [x20, #0x40]
   1b640: 7100045f     	cmp	w2, #0x1
   1b644: 54000321     	b.ne	0x1b6a8 <syna_tcm_buf_copy+0x320>
   1b648: 2a1f03e8     	mov	w8, wzr
   1b64c: 91004280     	add	x0, x20, #0x10
   1b650: 39010288     	strb	w8, [x20, #0x40]
   1b654: 94000000     	bl	0x1b654 <syna_tcm_buf_copy+0x2cc>
		000000000001b654:  R_AARCH64_CALL26	mutex_unlock
   1b658: 39410262     	ldrb	w2, [x19, #0x40]
   1b65c: 12801e54     	mov	w20, #-0xf3             // =-243
   1b660: 7100045f     	cmp	w2, #0x1
   1b664: 54fff900     	b.eq	0x1b584 <syna_tcm_buf_copy+0x1fc>
   1b668: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b668:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1b66c: 91000000     	add	x0, x0, #0x0
		000000000001b66c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1b670: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b670:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   1b674: 91000021     	add	x1, x1, #0x0
		000000000001b674:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   1b678: 94000000     	bl	0x1b678 <syna_tcm_buf_copy+0x2f0>
		000000000001b678:  R_AARCH64_CALL26	_printk
   1b67c: 39410268     	ldrb	w8, [x19, #0x40]
   1b680: 51000508     	sub	w8, w8, #0x1
   1b684: 17ffff92     	b	0x1b4cc <syna_tcm_buf_copy+0x144>
   1b688: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b688:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1b68c: 91000000     	add	x0, x0, #0x0
		000000000001b68c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1b690: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b690:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   1b694: 91000021     	add	x1, x1, #0x0
		000000000001b694:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   1b698: 94000000     	bl	0x1b698 <syna_tcm_buf_copy+0x310>
		000000000001b698:  R_AARCH64_CALL26	_printk
   1b69c: 39410288     	ldrb	w8, [x20, #0x40]
   1b6a0: 51000508     	sub	w8, w8, #0x1
   1b6a4: 17ffffb1     	b	0x1b568 <syna_tcm_buf_copy+0x1e0>
   1b6a8: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b6a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1b6ac: 91000000     	add	x0, x0, #0x0
		000000000001b6ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1b6b0: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b6b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   1b6b4: 91000021     	add	x1, x1, #0x0
		000000000001b6b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   1b6b8: 94000000     	bl	0x1b6b8 <syna_tcm_buf_copy+0x330>
		000000000001b6b8:  R_AARCH64_CALL26	_printk
   1b6bc: 39410288     	ldrb	w8, [x20, #0x40]
   1b6c0: 51000508     	sub	w8, w8, #0x1
   1b6c4: 17ffffe2     	b	0x1b64c <syna_tcm_buf_copy+0x2c4>
