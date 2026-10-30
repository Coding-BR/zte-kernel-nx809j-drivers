
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e2b4 <syna_cdev_create>:
    e2b4: d503233f     	paciasp
    e2b8: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    e2bc: a9015ff8     	stp	x24, x23, [sp, #0x10]
    e2c0: a90257f6     	stp	x22, x21, [sp, #0x20]
    e2c4: a9034ff4     	stp	x20, x19, [sp, #0x30]
    e2c8: 910003fd     	mov	x29, sp
    e2cc: 90000018     	adrp	x24, 0xe000 <syna_mmap+0x9c>
		000000000000e2cc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7c0
    e2d0: 91000318     	add	x24, x24, #0x0
		000000000000e2d0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x7c0
    e2d4: 90000016     	adrp	x22, 0xe000 <syna_mmap+0x9c>
		000000000000e2d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
    e2d8: 910002d6     	add	x22, x22, #0x0
		000000000000e2d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
    e2dc: 90000017     	adrp	x23, 0xe000 <syna_mmap+0x9c>
		000000000000e2dc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x889
    e2e0: 910002f7     	add	x23, x23, #0x0
		000000000000e2e0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x889
    e2e4: aa0003f3     	mov	x19, x0
    e2e8: aa1803f4     	mov	x20, x24
    e2ec: aa1803f5     	mov	x21, x24
    e2f0: aa1803e0     	mov	x0, x24
    e2f4: f9000301     	str	x1, [x24]
    e2f8: aa1603e1     	mov	x1, x22
    e2fc: aa1703e2     	mov	x2, x23
    e300: a90bff1f     	stp	xzr, xzr, [x24, #0xb8]
    e304: a90aff1f     	stp	xzr, xzr, [x24, #0xa8]
    e308: a909ff1f     	stp	xzr, xzr, [x24, #0x98]
    e30c: a908ff1f     	stp	xzr, xzr, [x24, #0x88]
    e310: a9077f1f     	stp	xzr, xzr, [x24, #0x70]
    e314: a9067f1f     	stp	xzr, xzr, [x24, #0x60]
    e318: f9002f1f     	str	xzr, [x24, #0x58]
    e31c: a9047f1f     	stp	xzr, xzr, [x24, #0x40]
    e320: a9037f1f     	stp	xzr, xzr, [x24, #0x30]
    e324: a9027f1f     	stp	xzr, xzr, [x24, #0x20]
    e328: a900ff1f     	stp	xzr, xzr, [x24, #0x8]
    e32c: f8018e9f     	str	xzr, [x20, #0x18]!
    e330: f8080ebf     	str	xzr, [x21, #0x80]!
    e334: f8050c1f     	str	xzr, [x0, #0x50]!
    e338: f901c67f     	str	xzr, [x19, #0x388]
    e33c: f901ca7f     	str	xzr, [x19, #0x390]
    e340: 94000000     	bl	0xe340 <syna_cdev_create+0x8c>
		000000000000e340:  R_AARCH64_CALL26	__mutex_init
    e344: aa1503e0     	mov	x0, x21
    e348: aa1603e1     	mov	x1, x22
    e34c: aa1703e2     	mov	x2, x23
    e350: 94000000     	bl	0xe350 <syna_cdev_create+0x9c>
		000000000000e350:  R_AARCH64_CALL26	__mutex_init
    e354: aa1403e0     	mov	x0, x20
    e358: aa1603e1     	mov	x1, x22
    e35c: aa1703e2     	mov	x2, x23
    e360: 3901231f     	strb	wzr, [x24, #0x48]
    e364: a900ff1f     	stp	xzr, xzr, [x24, #0x8]
    e368: 94000000     	bl	0xe368 <syna_cdev_create+0xb4>
		000000000000e368:  R_AARCH64_CALL26	__mutex_init
    e36c: 90000016     	adrp	x22, 0xe000 <syna_mmap+0x9c>
		000000000000e36c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7b8
    e370: b94002c8     	ldr	w8, [x22]
		000000000000e370:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x7b8
    e374: 34000188     	cbz	w8, 0xe3a4 <syna_cdev_create+0xf0>
    e378: 530c2d00     	lsl	w0, w8, #20
    e37c: 90000002     	adrp	x2, 0xe000 <syna_mmap+0x9c>
		000000000000e37c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3815
    e380: 91000042     	add	x2, x2, #0x0
		000000000000e380:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3815
    e384: 52800021     	mov	w1, #0x1                // =1
    e388: b9038260     	str	w0, [x19, #0x380]
    e38c: 94000000     	bl	0xe38c <syna_cdev_create+0xd8>
		000000000000e38c:  R_AARCH64_CALL26	register_chrdev_region
    e390: 36f80200     	tbz	w0, #0x1f, 0xe3d0 <syna_cdev_create+0x11c>
    e394: 2a0003f4     	mov	w20, w0
    e398: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000e398:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x91b1
    e39c: 91000000     	add	x0, x0, #0x0
		000000000000e39c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x91b1
    e3a0: 1400005f     	b	0xe51c <syna_cdev_create+0x268>
    e3a4: 910e0275     	add	x21, x19, #0x380
    e3a8: 90000003     	adrp	x3, 0xe000 <syna_mmap+0x9c>
		000000000000e3a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3815
    e3ac: 91000063     	add	x3, x3, #0x0
		000000000000e3ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3815
    e3b0: aa1503e0     	mov	x0, x21
    e3b4: 2a1f03e1     	mov	w1, wzr
    e3b8: 52800022     	mov	w2, #0x1                // =1
    e3bc: 94000000     	bl	0xe3bc <syna_cdev_create+0x108>
		000000000000e3bc:  R_AARCH64_CALL26	alloc_chrdev_region
    e3c0: 37f80a80     	tbnz	w0, #0x1f, 0xe510 <syna_cdev_create+0x25c>
    e3c4: b94002a8     	ldr	w8, [x21]
    e3c8: 53147d08     	lsr	w8, w8, #20
    e3cc: b90002c8     	str	w8, [x22]
		000000000000e3cc:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x7b8
    e3d0: 90000001     	adrp	x1, 0xe000 <syna_mmap+0x9c>
		000000000000e3d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x1110
    e3d4: 91000021     	add	x1, x1, #0x0
		000000000000e3d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x1110
    e3d8: 910be260     	add	x0, x19, #0x2f8
    e3dc: 94000000     	bl	0xe3dc <syna_cdev_create+0x128>
		000000000000e3dc:  R_AARCH64_CALL26	cdev_init
    e3e0: b9438261     	ldr	w1, [x19, #0x380]
    e3e4: 90000008     	adrp	x8, 0xe000 <syna_mmap+0x9c>
		000000000000e3e4:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
    e3e8: 91000108     	add	x8, x8, #0x0
		000000000000e3e8:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
    e3ec: 910be260     	add	x0, x19, #0x2f8
    e3f0: 52800022     	mov	w2, #0x1                // =1
    e3f4: f901ae68     	str	x8, [x19, #0x358]
    e3f8: 94000000     	bl	0xe3f8 <syna_cdev_create+0x144>
		000000000000e3f8:  R_AARCH64_CALL26	cdev_add
    e3fc: 37f80540     	tbnz	w0, #0x1f, 0xe4a4 <syna_cdev_create+0x1f0>
    e400: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000e400:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3815
    e404: 91000000     	add	x0, x0, #0x0
		000000000000e404:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3815
    e408: 94000000     	bl	0xe408 <syna_cdev_create+0x154>
		000000000000e408:  R_AARCH64_CALL26	class_create
    e40c: aa0003f4     	mov	x20, x0
    e410: b13ffc1f     	cmn	x0, #0xfff
    e414: 54000562     	b.hs	0xe4c0 <syna_cdev_create+0x20c>
    e418: 90000008     	adrp	x8, 0xe000 <syna_mmap+0x9c>
		000000000000e418:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xe530
    e41c: 91000108     	add	x8, x8, #0x0
		000000000000e41c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xe530
    e420: 90000004     	adrp	x4, 0xe000 <syna_mmap+0x9c>
		000000000000e420:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x268a
    e424: 91000084     	add	x4, x4, #0x0
		000000000000e424:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x268a
    e428: f9001288     	str	x8, [x20, #0x20]
    e42c: aa1403e0     	mov	x0, x20
    e430: b9438262     	ldr	w2, [x19, #0x380]
    e434: aa1f03e1     	mov	x1, xzr
    e438: aa1f03e3     	mov	x3, xzr
    e43c: 12004c45     	and	w5, w2, #0xfffff
    e440: 94000000     	bl	0xe440 <syna_cdev_create+0x18c>
		000000000000e440:  R_AARCH64_CALL26	device_create
    e444: b13ffc1f     	cmn	x0, #0xfff
    e448: 54000482     	b.hs	0xe4d8 <syna_cdev_create+0x224>
    e44c: 90000008     	adrp	x8, 0xe000 <syna_mmap+0x9c>
		000000000000e44c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x874
    e450: f901ca60     	str	x0, [x19, #0x390]
    e454: 90000001     	adrp	x1, 0xe000 <syna_mmap+0x9c>
		000000000000e454:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x335b
    e458: 91000021     	add	x1, x1, #0x0
		000000000000e458:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x335b
    e45c: b900011f     	str	wzr, [x8]
		000000000000e45c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x874
    e460: 9113e268     	add	x8, x19, #0x4f8
    e464: 90000002     	adrp	x2, 0xe000 <syna_mmap+0x9c>
		000000000000e464:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x888
    e468: 91000042     	add	x2, x2, #0x0
		000000000000e468:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x888
    e46c: 91142260     	add	x0, x19, #0x508
    e470: f901c674     	str	x20, [x19, #0x388]
    e474: b903867f     	str	wzr, [x19, #0x384]
    e478: f9027e68     	str	x8, [x19, #0x4f8]
    e47c: f9028268     	str	x8, [x19, #0x500]
    e480: 94000000     	bl	0xe480 <syna_cdev_create+0x1cc>
		000000000000e480:  R_AARCH64_CALL26	__init_waitqueue_head
    e484: 2a1f03f4     	mov	w20, wzr
    e488: 2a1403e0     	mov	w0, w20
    e48c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    e490: a94257f6     	ldp	x22, x21, [sp, #0x20]
    e494: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    e498: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    e49c: d50323bf     	autiasp
    e4a0: d65f03c0     	ret
    e4a4: 2a0003f4     	mov	w20, w0
    e4a8: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000e4a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x97b5
    e4ac: 91000000     	add	x0, x0, #0x0
		000000000000e4ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x97b5
    e4b0: 90000001     	adrp	x1, 0xe000 <syna_mmap+0x9c>
		000000000000e4b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x91dd
    e4b4: 91000021     	add	x1, x1, #0x0
		000000000000e4b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x91dd
    e4b8: 94000000     	bl	0xe4b8 <syna_cdev_create+0x204>
		000000000000e4b8:  R_AARCH64_CALL26	_printk
    e4bc: 14000011     	b	0xe500 <syna_cdev_create+0x24c>
    e4c0: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000e4c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4604
    e4c4: 91000000     	add	x0, x0, #0x0
		000000000000e4c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4604
    e4c8: 90000001     	adrp	x1, 0xe000 <syna_mmap+0x9c>
		000000000000e4c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x91dd
    e4cc: 91000021     	add	x1, x1, #0x0
		000000000000e4cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x91dd
    e4d0: 94000000     	bl	0xe4d0 <syna_cdev_create+0x21c>
		000000000000e4d0:  R_AARCH64_CALL26	_printk
    e4d4: 14000009     	b	0xe4f8 <syna_cdev_create+0x244>
    e4d8: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000e4d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a7
    e4dc: 91000000     	add	x0, x0, #0x0
		000000000000e4dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a7
    e4e0: 90000001     	adrp	x1, 0xe000 <syna_mmap+0x9c>
		000000000000e4e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x91dd
    e4e4: 91000021     	add	x1, x1, #0x0
		000000000000e4e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x91dd
    e4e8: 94000000     	bl	0xe4e8 <syna_cdev_create+0x234>
		000000000000e4e8:  R_AARCH64_CALL26	_printk
    e4ec: aa1403e0     	mov	x0, x20
    e4f0: 94000000     	bl	0xe4f0 <syna_cdev_create+0x23c>
		000000000000e4f0:  R_AARCH64_CALL26	class_destroy
    e4f4: 12800034     	mov	w20, #-0x2              // =-2
    e4f8: 910be260     	add	x0, x19, #0x2f8
    e4fc: 94000000     	bl	0xe4fc <syna_cdev_create+0x248>
		000000000000e4fc:  R_AARCH64_CALL26	cdev_del
    e500: b9438260     	ldr	w0, [x19, #0x380]
    e504: 52800021     	mov	w1, #0x1                // =1
    e508: 94000000     	bl	0xe508 <syna_cdev_create+0x254>
		000000000000e508:  R_AARCH64_CALL26	unregister_chrdev_region
    e50c: 17ffffdf     	b	0xe488 <syna_cdev_create+0x1d4>
    e510: 2a0003f4     	mov	w20, w0
    e514: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000e514:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2029
    e518: 91000000     	add	x0, x0, #0x0
		000000000000e518:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2029
    e51c: 90000001     	adrp	x1, 0xe000 <syna_mmap+0x9c>
		000000000000e51c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x91dd
    e520: 91000021     	add	x1, x1, #0x0
		000000000000e520:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x91dd
    e524: 94000000     	bl	0xe524 <syna_cdev_create+0x270>
		000000000000e524:  R_AARCH64_CALL26	_printk
    e528: 17ffffd8     	b	0xe488 <syna_cdev_create+0x1d4>
