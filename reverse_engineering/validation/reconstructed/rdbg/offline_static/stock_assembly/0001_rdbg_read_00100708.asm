
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000260 <rdbg_read>:
     260: d503233f     	paciasp
     264: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     268: f9000bf7     	str	x23, [sp, #0x10]
     26c: a90257f6     	stp	x22, x21, [sp, #0x20]
     270: a9034ff4     	stp	x20, x19, [sp, #0x30]
     274: 910003fd     	mov	x29, sp
     278: f9401016     	ldr	x22, [x0, #0x20]
     27c: b4001916     	cbz	x22, 0x59c <rdbg_read+0x33c>
     280: 910022c0     	add	x0, x22, #0x8
     284: aa0203f4     	mov	x20, x2
     288: aa0103f3     	mov	x19, x1
     28c: 94000000     	bl	0x28c <rdbg_read+0x2c>
		000000000000028c:  R_AARCH64_CALL26	wait_for_completion_interruptible
     290: 35001900     	cbnz	w0, 0x5b0 <rdbg_read+0x350>
     294: b94112c8     	ldr	w8, [x22, #0x110]
     298: 529fe037     	mov	w23, #0xff01            // =65281
     29c: 72bfe017     	movk	w23, #0xff00, lsl #16
     2a0: 7100091f     	cmp	w8, #0x2
     2a4: 54000861     	b.ne	0x3b0 <rdbg_read+0x150>
     2a8: f9406ac8     	ldr	x8, [x22, #0xd0]
     2ac: b9400109     	ldr	w9, [x8]
     2b0: 6b17013f     	cmp	w9, w23
     2b4: 540007e1     	b.ne	0x3b0 <rdbg_read+0x150>
     2b8: f94066c9     	ldr	x9, [x22, #0xc8]
     2bc: 39400129     	ldrb	w9, [x9]
     2c0: 7100053f     	cmp	w9, #0x1
     2c4: 54000761     	b.ne	0x3b0 <rdbg_read+0x150>
     2c8: f9406ec9     	ldr	x9, [x22, #0xd8]
     2cc: b9400515     	ldr	w21, [x8, #0x4]
     2d0: b9400528     	ldr	w8, [x9, #0x4]
     2d4: 6b15011f     	cmp	w8, w21
     2d8: 540006c0     	b.eq	0x3b0 <rdbg_read+0x150>
     2dc: b9000535     	str	w21, [x9, #0x4]
     2e0: b940eac8     	ldr	w8, [x22, #0xe8]
     2e4: 34000168     	cbz	w8, 0x310 <rdbg_read+0xb0>
     2e8: aa1f03e8     	mov	x8, xzr
     2ec: 52800209     	mov	w9, #0x10               // =16
     2f0: 529fffea     	mov	w10, #0xffff            // =65535
     2f4: f9406ecb     	ldr	x11, [x22, #0xd8]
     2f8: 91000508     	add	x8, x8, #0x1
     2fc: 7829696a     	strh	w10, [x11, x9]
     300: 91001129     	add	x9, x9, #0x4
     304: b940eacb     	ldr	w11, [x22, #0xe8]
     308: eb0b011f     	cmp	x8, x11
     30c: 54ffff43     	b.lo	0x2f4 <rdbg_read+0x94>
     310: f9406ec8     	ldr	x8, [x22, #0xd8]
     314: b900091f     	str	wzr, [x8, #0x8]
     318: f9406ec8     	ldr	x8, [x22, #0xd8]
     31c: b9000d1f     	str	wzr, [x8, #0xc]
     320: b940c2c8     	ldr	w8, [x22, #0xc0]
     324: 7100051f     	cmp	w8, #0x1
     328: 54000441     	b.ne	0x3b0 <rdbg_read+0x150>
     32c: f94052c0     	ldr	x0, [x22, #0xa0]
     330: 94000000     	bl	0x330 <rdbg_read+0xd0>
		0000000000000330:  R_AARCH64_CALL26	mutex_lock
     334: f94042c8     	ldr	x8, [x22, #0x80]
     338: b9400509     	ldr	w9, [x8, #0x4]
     33c: 6b15013f     	cmp	w9, w21
     340: 54000340     	b.eq	0x3a8 <rdbg_read+0x148>
     344: b9000515     	str	w21, [x8, #0x4]
     348: b9409ac8     	ldr	w8, [x22, #0x98]
     34c: 34000168     	cbz	w8, 0x378 <rdbg_read+0x118>
     350: aa1f03e8     	mov	x8, xzr
     354: 52800209     	mov	w9, #0x10               // =16
     358: 529fffea     	mov	w10, #0xffff            // =65535
     35c: f94042cb     	ldr	x11, [x22, #0x80]
     360: 91000508     	add	x8, x8, #0x1
     364: 7829696a     	strh	w10, [x11, x9]
     368: 91001129     	add	x9, x9, #0x4
     36c: b9409acb     	ldr	w11, [x22, #0x98]
     370: eb0b011f     	cmp	x8, x11
     374: 54ffff43     	b.lo	0x35c <rdbg_read+0xfc>
     378: f9405ec8     	ldr	x8, [x22, #0xb8]
     37c: b40000e8     	cbz	x8, 0x398 <rdbg_read+0x138>
     380: b940b6c8     	ldr	w8, [x22, #0xb4]
     384: f9405ec0     	ldr	x0, [x22, #0xb8]
     388: 2a1f03e1     	mov	w1, wzr
     38c: 11000502     	add	w2, w8, #0x1
     390: 94000000     	bl	0x390 <rdbg_read+0x130>
		0000000000000390:  R_AARCH64_CALL26	memset
     394: b900b2df     	str	wzr, [x22, #0xb0]
     398: f94042c8     	ldr	x8, [x22, #0x80]
     39c: b900091f     	str	wzr, [x8, #0x8]
     3a0: f94042c8     	ldr	x8, [x22, #0x80]
     3a4: b9000d1f     	str	wzr, [x8, #0xc]
     3a8: f94052c0     	ldr	x0, [x22, #0xa0]
     3ac: 94000000     	bl	0x3ac <rdbg_read+0x14c>
		00000000000003ac:  R_AARCH64_CALL26	mutex_unlock
     3b0: a94ca6c8     	ldp	x8, x9, [x22, #0xc8]
     3b4: 39400108     	ldrb	w8, [x8]
     3b8: 7100051f     	cmp	w8, #0x1
     3bc: 54000080     	b.eq	0x3cc <rdbg_read+0x16c>
     3c0: b9400128     	ldr	w8, [x9]
     3c4: 6b17011f     	cmp	w8, w23
     3c8: 54000dc1     	b.ne	0x580 <rdbg_read+0x320>
     3cc: f9406ec8     	ldr	x8, [x22, #0xd8]
     3d0: b940092b     	ldr	w11, [x9, #0x8]
     3d4: b940090a     	ldr	w10, [x8, #0x8]
     3d8: 6b0b015f     	cmp	w10, w11
     3dc: 54000d20     	b.eq	0x580 <rdbg_read+0x320>
     3e0: 8b0a0929     	add	x9, x9, x10, lsl #2
     3e4: b940eacb     	ldr	w11, [x22, #0xe8]
     3e8: 78410d2c     	ldrh	w12, [x9, #0x10]!
     3ec: 6b0c017f     	cmp	w11, w12
     3f0: 54000c89     	b.ls	0x580 <rdbg_read+0x320>
     3f4: 1100054a     	add	w10, w10, #0x1
     3f8: 52800022     	mov	w2, #0x1                // =1
     3fc: 1acb094c     	udiv	w12, w10, w11
     400: 1b0ba98a     	msub	w10, w12, w11, w10
     404: b900090a     	str	w10, [x8, #0x8]
     408: 79400528     	ldrh	w8, [x9, #0x2]
     40c: f94072ca     	ldr	x10, [x22, #0xe0]
     410: 79400129     	ldrh	w9, [x9]
     414: d5033d9f     	dsb	ld
     418: d379e108     	lsl	x8, x8, #7
     41c: 8b091d55     	add	x21, x10, x9, lsl #7
     420: eb14011f     	cmp	x8, x20
     424: aa1503e0     	mov	x0, x21
     428: 9a943114     	csel	x20, x8, x20, lo
     42c: aa1403e1     	mov	x1, x20
     430: 94000000     	bl	0x430 <rdbg_read+0x1d0>
		0000000000000430:  R_AARCH64_CALL26	__check_object_size
     434: d5384108     	mrs	x8, SP_EL0
     438: 39411909     	ldrb	w9, [x8, #0x46]
     43c: 37280089     	tbnz	w9, #0x5, 0x44c <rdbg_read+0x1ec>
     440: f940010a     	ldr	x10, [x8]
     444: aa1303e9     	mov	x9, x19
     448: 36d0006a     	tbz	w10, #0x1a, 0x454 <rdbg_read+0x1f4>
     44c: d378de69     	lsl	x9, x19, #8
     450: 8a892269     	and	x9, x19, x9, asr #8
     454: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
     458: aa1403e3     	mov	x3, x20
     45c: cb14014a     	sub	x10, x10, x20
     460: eb09015f     	cmp	x10, x9
     464: 54000363     	b.lo	0x4d0 <rdbg_read+0x270>
     468: d503201f     	nop
     46c: d53b4229     	mrs	x9, DAIF
     470: d50343df     	msr	DAIFSet, #0x3
     474: f9400508     	ldr	x8, [x8, #0x8]
     478: d538202a     	mrs	x10, TTBR1_EL1
     47c: aa0803eb     	mov	x11, x8
     480: b340bd4b     	bfxil	x11, x10, #0, #48
     484: d518202b     	msr	TTBR1_EL1, x11
     488: d5182008     	msr	TTBR0_EL1, x8
     48c: d5033fdf     	isb
     490: d51b4229     	msr	DAIF, x9
     494: 9248fa60     	and	x0, x19, #0xff7fffffffffffff
     498: aa1503e1     	mov	x1, x21
     49c: aa1403e2     	mov	x2, x20
     4a0: 94000000     	bl	0x4a0 <rdbg_read+0x240>
		00000000000004a0:  R_AARCH64_CALL26	__arch_copy_to_user
     4a4: aa0003e3     	mov	x3, x0
     4a8: d503201f     	nop
     4ac: d53b4228     	mrs	x8, DAIF
     4b0: d50343df     	msr	DAIFSet, #0x3
     4b4: d5382029     	mrs	x9, TTBR1_EL1
     4b8: 9240bd29     	and	x9, x9, #0xffffffffffff
     4bc: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
     4c0: d518200a     	msr	TTBR0_EL1, x10
     4c4: d5182029     	msr	TTBR1_EL1, x9
     4c8: d5033fdf     	isb
     4cc: d51b4228     	msr	DAIF, x8
     4d0: 35000803     	cbnz	w3, 0x5d0 <rdbg_read+0x370>
     4d4: f9407ac0     	ldr	x0, [x22, #0xf0]
     4d8: b4000040     	cbz	x0, 0x4e0 <rdbg_read+0x280>
     4dc: 94000000     	bl	0x4dc <rdbg_read+0x27c>
		00000000000004dc:  R_AARCH64_CALL26	mutex_lock
     4e0: f94066c8     	ldr	x8, [x22, #0xc8]
     4e4: 39400108     	ldrb	w8, [x8]
     4e8: 7100051f     	cmp	w8, #0x1
     4ec: 540000a0     	b.eq	0x500 <rdbg_read+0x2a0>
     4f0: f9406ac8     	ldr	x8, [x22, #0xd0]
     4f4: b9400108     	ldr	w8, [x8]
     4f8: 6b17011f     	cmp	w8, w23
     4fc: 540002c1     	b.ne	0x554 <rdbg_read+0x2f4>
     500: f94072c8     	ldr	x8, [x22, #0xe0]
     504: cb0802a8     	sub	x8, x21, x8
     508: 9101fd09     	add	x9, x8, #0x7f
     50c: f100011f     	cmp	x8, #0x0
     510: 9a88b128     	csel	x8, x9, x8, lt
     514: b940eac9     	ldr	w9, [x22, #0xe8]
     518: 9347fd08     	asr	x8, x8, #7
     51c: 6b08013f     	cmp	w9, w8
     520: 540001a9     	b.ls	0x554 <rdbg_read+0x2f4>
     524: f9406ec9     	ldr	x9, [x22, #0xd8]
     528: b9400d2a     	ldr	w10, [x9, #0xc]
     52c: 8b0a0929     	add	x9, x9, x10, lsl #2
     530: 79002128     	strh	w8, [x9, #0x10]
     534: 7900253f     	strh	wzr, [x9, #0x12]
     538: f9406ec8     	ldr	x8, [x22, #0xd8]
     53c: b940eaca     	ldr	w10, [x22, #0xe8]
     540: b9400d09     	ldr	w9, [x8, #0xc]
     544: 11000529     	add	w9, w9, #0x1
     548: 1aca092b     	udiv	w11, w9, w10
     54c: 1b0aa569     	msub	w9, w11, w10, w9
     550: b9000d09     	str	w9, [x8, #0xc]
     554: f9407ac0     	ldr	x0, [x22, #0xf0]
     558: b4000040     	cbz	x0, 0x560 <rdbg_read+0x300>
     55c: 94000000     	bl	0x55c <rdbg_read+0x2fc>
		000000000000055c:  R_AARCH64_CALL26	mutex_unlock
     560: 2a1403f5     	mov	w21, w20
     564: 93407ea0     	sxtw	x0, w21
     568: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     56c: f9400bf7     	ldr	x23, [sp, #0x10]
     570: a94257f6     	ldp	x22, x21, [sp, #0x20]
     574: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     578: d50323bf     	autiasp
     57c: d65f03c0     	ret
     580: f94002c0     	ldr	x0, [x22]
     584: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000584:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f1
     588: 91000021     	add	x1, x1, #0x0
		0000000000000588:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f1
     58c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000058c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24d
     590: 91000042     	add	x2, x2, #0x0
		0000000000000590:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24d
     594: 2a1f03e3     	mov	w3, wzr
     598: 14000013     	b	0x5e4 <rdbg_read+0x384>
     59c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000059c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x236
     5a0: 91000000     	add	x0, x0, #0x0
		00000000000005a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x236
     5a4: 94000000     	bl	0x5a4 <rdbg_read+0x344>
		00000000000005a4:  R_AARCH64_CALL26	_printk
     5a8: 128002b5     	mov	w21, #-0x16             // =-22
     5ac: 17ffffee     	b	0x564 <rdbg_read+0x304>
     5b0: 2a0003f5     	mov	w21, w0
     5b4: f94002c0     	ldr	x0, [x22]
     5b8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27
     5bc: 91000021     	add	x1, x1, #0x0
		00000000000005bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27
     5c0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000005c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24d
     5c4: 91000042     	add	x2, x2, #0x0
		00000000000005c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24d
     5c8: 94000000     	bl	0x5c8 <rdbg_read+0x368>
		00000000000005c8:  R_AARCH64_CALL26	_dev_err
     5cc: 17ffffe6     	b	0x564 <rdbg_read+0x304>
     5d0: f94002c0     	ldr	x0, [x22]
     5d4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x441
     5d8: 91000021     	add	x1, x1, #0x0
		00000000000005d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x441
     5dc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000005dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24d
     5e0: 91000042     	add	x2, x2, #0x0
		00000000000005e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24d
     5e4: 94000000     	bl	0x5e4 <rdbg_read+0x384>
		00000000000005e4:  R_AARCH64_CALL26	_dev_err
     5e8: 12800795     	mov	w21, #-0x3d             // =-61
     5ec: 17ffffde     	b	0x564 <rdbg_read+0x304>
