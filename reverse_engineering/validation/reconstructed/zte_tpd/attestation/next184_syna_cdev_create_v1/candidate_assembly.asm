
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004234 <syna_cdev_create>:
    4234: d503233f     	paciasp
    4238: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    423c: a9015ff8     	stp	x24, x23, [sp, #0x10]
    4240: a90257f6     	stp	x22, x21, [sp, #0x20]
    4244: a9034ff4     	stp	x20, x19, [sp, #0x30]
    4248: 910003fd     	mov	x29, sp
    424c: 90000018     	adrp	x24, 0x4000 <suspend_show+0x30>
		000000000000424c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data
    4250: 91000318     	add	x24, x24, #0x0
		0000000000004250:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data
    4254: 90000016     	adrp	x22, 0x4000 <suspend_show+0x30>
		0000000000004254:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62b3
    4258: 910002d6     	add	x22, x22, #0x0
		0000000000004258:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62b3
    425c: 90000017     	adrp	x23, 0x4000 <suspend_show+0x30>
		000000000000425c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1420
    4260: 910002f7     	add	x23, x23, #0x0
		0000000000004260:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1420
    4264: aa0003f3     	mov	x19, x0
    4268: aa1803f4     	mov	x20, x24
    426c: aa1803f5     	mov	x21, x24
    4270: aa1803e0     	mov	x0, x24
    4274: f9000301     	str	x1, [x24]
    4278: aa1603e1     	mov	x1, x22
    427c: aa1703e2     	mov	x2, x23
    4280: a90bff1f     	stp	xzr, xzr, [x24, #0xb8]
    4284: a90aff1f     	stp	xzr, xzr, [x24, #0xa8]
    4288: a909ff1f     	stp	xzr, xzr, [x24, #0x98]
    428c: a908ff1f     	stp	xzr, xzr, [x24, #0x88]
    4290: a9077f1f     	stp	xzr, xzr, [x24, #0x70]
    4294: a9067f1f     	stp	xzr, xzr, [x24, #0x60]
    4298: f9002f1f     	str	xzr, [x24, #0x58]
    429c: a9047f1f     	stp	xzr, xzr, [x24, #0x40]
    42a0: a9037f1f     	stp	xzr, xzr, [x24, #0x30]
    42a4: a9027f1f     	stp	xzr, xzr, [x24, #0x20]
    42a8: a900ff1f     	stp	xzr, xzr, [x24, #0x8]
    42ac: f8018e9f     	str	xzr, [x20, #0x18]!
    42b0: f8080ebf     	str	xzr, [x21, #0x80]!
    42b4: f8050c1f     	str	xzr, [x0, #0x50]!
    42b8: f901c67f     	str	xzr, [x19, #0x388]
    42bc: f901ca7f     	str	xzr, [x19, #0x390]
    42c0: 94000000     	bl	0x42c0 <syna_cdev_create+0x8c>
		00000000000042c0:  R_AARCH64_CALL26	__mutex_init
    42c4: aa1503e0     	mov	x0, x21
    42c8: aa1603e1     	mov	x1, x22
    42cc: aa1703e2     	mov	x2, x23
    42d0: 94000000     	bl	0x42d0 <syna_cdev_create+0x9c>
		00000000000042d0:  R_AARCH64_CALL26	__mutex_init
    42d4: aa1403e0     	mov	x0, x20
    42d8: aa1603e1     	mov	x1, x22
    42dc: aa1703e2     	mov	x2, x23
    42e0: 3901231f     	strb	wzr, [x24, #0x48]
    42e4: a900ff1f     	stp	xzr, xzr, [x24, #0x8]
    42e8: 94000000     	bl	0x42e8 <syna_cdev_create+0xb4>
		00000000000042e8:  R_AARCH64_CALL26	__mutex_init
    42ec: 90000016     	adrp	x22, 0x4000 <suspend_show+0x30>
		00000000000042ec:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x141c
    42f0: b94002c8     	ldr	w8, [x22]
		00000000000042f0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x141c
    42f4: 34000188     	cbz	w8, 0x4324 <syna_cdev_create+0xf0>
    42f8: 530c2d00     	lsl	w0, w8, #20
    42fc: 90000002     	adrp	x2, 0x4000 <suspend_show+0x30>
		00000000000042fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2104
    4300: 91000042     	add	x2, x2, #0x0
		0000000000004300:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2104
    4304: 52800021     	mov	w1, #0x1                // =1
    4308: b9038260     	str	w0, [x19, #0x380]
    430c: 94000000     	bl	0x430c <syna_cdev_create+0xd8>
		000000000000430c:  R_AARCH64_CALL26	register_chrdev_region
    4310: 36f80200     	tbz	w0, #0x1f, 0x4350 <syna_cdev_create+0x11c>
    4314: 2a0003f4     	mov	w20, w0
    4318: 90000000     	adrp	x0, 0x4000 <suspend_show+0x30>
		0000000000004318:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5338
    431c: 91000000     	add	x0, x0, #0x0
		000000000000431c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5338
    4320: 1400005f     	b	0x449c <syna_cdev_create+0x268>
    4324: 910e0275     	add	x21, x19, #0x380
    4328: 90000003     	adrp	x3, 0x4000 <suspend_show+0x30>
		0000000000004328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2104
    432c: 91000063     	add	x3, x3, #0x0
		000000000000432c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2104
    4330: aa1503e0     	mov	x0, x21
    4334: 2a1f03e1     	mov	w1, wzr
    4338: 52800022     	mov	w2, #0x1                // =1
    433c: 94000000     	bl	0x433c <syna_cdev_create+0x108>
		000000000000433c:  R_AARCH64_CALL26	alloc_chrdev_region
    4340: 37f80a80     	tbnz	w0, #0x1f, 0x4490 <syna_cdev_create+0x25c>
    4344: b94002a8     	ldr	w8, [x21]
    4348: 53147d08     	lsr	w8, w8, #20
    434c: b90002c8     	str	w8, [x22]
		000000000000434c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x141c
    4350: 90000001     	adrp	x1, 0x4000 <suspend_show+0x30>
		0000000000004350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x44d0
    4354: 91000021     	add	x1, x1, #0x0
		0000000000004354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x44d0
    4358: 910be260     	add	x0, x19, #0x2f8
    435c: 94000000     	bl	0x435c <syna_cdev_create+0x128>
		000000000000435c:  R_AARCH64_CALL26	cdev_init
    4360: b9438261     	ldr	w1, [x19, #0x380]
    4364: 90000008     	adrp	x8, 0x4000 <suspend_show+0x30>
		0000000000004364:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
    4368: 91000108     	add	x8, x8, #0x0
		0000000000004368:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
    436c: 910be260     	add	x0, x19, #0x2f8
    4370: 52800022     	mov	w2, #0x1                // =1
    4374: f901ae68     	str	x8, [x19, #0x358]
    4378: 94000000     	bl	0x4378 <syna_cdev_create+0x144>
		0000000000004378:  R_AARCH64_CALL26	cdev_add
    437c: 37f80540     	tbnz	w0, #0x1f, 0x4424 <syna_cdev_create+0x1f0>
    4380: 90000000     	adrp	x0, 0x4000 <suspend_show+0x30>
		0000000000004380:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2104
    4384: 91000000     	add	x0, x0, #0x0
		0000000000004384:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2104
    4388: 94000000     	bl	0x4388 <syna_cdev_create+0x154>
		0000000000004388:  R_AARCH64_CALL26	class_create
    438c: aa0003f4     	mov	x20, x0
    4390: b13ffc1f     	cmn	x0, #0xfff
    4394: 54000562     	b.hs	0x4440 <syna_cdev_create+0x20c>
    4398: 90000008     	adrp	x8, 0x4000 <suspend_show+0x30>
		0000000000004398:  R_AARCH64_ADR_PREL_PG_HI21	syna_cdev_devnode
    439c: 91000108     	add	x8, x8, #0x0
		000000000000439c:  R_AARCH64_ADD_ABS_LO12_NC	syna_cdev_devnode
    43a0: 90000004     	adrp	x4, 0x4000 <suspend_show+0x30>
		00000000000043a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14ed
    43a4: 91000084     	add	x4, x4, #0x0
		00000000000043a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14ed
    43a8: f9001288     	str	x8, [x20, #0x20]
    43ac: aa1403e0     	mov	x0, x20
    43b0: b9438262     	ldr	w2, [x19, #0x380]
    43b4: aa1f03e1     	mov	x1, xzr
    43b8: aa1f03e3     	mov	x3, xzr
    43bc: 12004c45     	and	w5, w2, #0xfffff
    43c0: 94000000     	bl	0x43c0 <syna_cdev_create+0x18c>
		00000000000043c0:  R_AARCH64_CALL26	device_create
    43c4: b13ffc1f     	cmn	x0, #0xfff
    43c8: 54000482     	b.hs	0x4458 <syna_cdev_create+0x224>
    43cc: 90000008     	adrp	x8, 0x4000 <suspend_show+0x30>
		00000000000043cc:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb4
    43d0: f901ca60     	str	x0, [x19, #0x390]
    43d4: 90000001     	adrp	x1, 0x4000 <suspend_show+0x30>
		00000000000043d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c23
    43d8: 91000021     	add	x1, x1, #0x0
		00000000000043d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c23
    43dc: b900011f     	str	wzr, [x8]
		00000000000043dc:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
    43e0: 9113e268     	add	x8, x19, #0x4f8
    43e4: 90000002     	adrp	x2, 0x4000 <suspend_show+0x30>
		00000000000043e4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1421
    43e8: 91000042     	add	x2, x2, #0x0
		00000000000043e8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1421
    43ec: 91142260     	add	x0, x19, #0x508
    43f0: f901c674     	str	x20, [x19, #0x388]
    43f4: b903867f     	str	wzr, [x19, #0x384]
    43f8: f9027e68     	str	x8, [x19, #0x4f8]
    43fc: f9028268     	str	x8, [x19, #0x500]
    4400: 94000000     	bl	0x4400 <syna_cdev_create+0x1cc>
		0000000000004400:  R_AARCH64_CALL26	__init_waitqueue_head
    4404: 2a1f03f4     	mov	w20, wzr
    4408: 2a1403e0     	mov	w0, w20
    440c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    4410: a94257f6     	ldp	x22, x21, [sp, #0x20]
    4414: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    4418: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    441c: d50323bf     	autiasp
    4420: d65f03c0     	ret
    4424: 2a0003f4     	mov	w20, w0
    4428: 90000000     	adrp	x0, 0x4000 <suspend_show+0x30>
		0000000000004428:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5625
    442c: 91000000     	add	x0, x0, #0x0
		000000000000442c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5625
    4430: 90000001     	adrp	x1, 0x4000 <suspend_show+0x30>
		0000000000004430:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5364
    4434: 91000021     	add	x1, x1, #0x0
		0000000000004434:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5364
    4438: 94000000     	bl	0x4438 <syna_cdev_create+0x204>
		0000000000004438:  R_AARCH64_CALL26	_printk
    443c: 14000011     	b	0x4480 <syna_cdev_create+0x24c>
    4440: 90000000     	adrp	x0, 0x4000 <suspend_show+0x30>
		0000000000004440:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2810
    4444: 91000000     	add	x0, x0, #0x0
		0000000000004444:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2810
    4448: 90000001     	adrp	x1, 0x4000 <suspend_show+0x30>
		0000000000004448:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5364
    444c: 91000021     	add	x1, x1, #0x0
		000000000000444c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5364
    4450: 94000000     	bl	0x4450 <syna_cdev_create+0x21c>
		0000000000004450:  R_AARCH64_CALL26	_printk
    4454: 14000009     	b	0x4478 <syna_cdev_create+0x244>
    4458: 90000000     	adrp	x0, 0x4000 <suspend_show+0x30>
		0000000000004458:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ea7
    445c: 91000000     	add	x0, x0, #0x0
		000000000000445c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ea7
    4460: 90000001     	adrp	x1, 0x4000 <suspend_show+0x30>
		0000000000004460:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5364
    4464: 91000021     	add	x1, x1, #0x0
		0000000000004464:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5364
    4468: 94000000     	bl	0x4468 <syna_cdev_create+0x234>
		0000000000004468:  R_AARCH64_CALL26	_printk
    446c: aa1403e0     	mov	x0, x20
    4470: 94000000     	bl	0x4470 <syna_cdev_create+0x23c>
		0000000000004470:  R_AARCH64_CALL26	class_destroy
    4474: 12800034     	mov	w20, #-0x2              // =-2
    4478: 910be260     	add	x0, x19, #0x2f8
    447c: 94000000     	bl	0x447c <syna_cdev_create+0x248>
		000000000000447c:  R_AARCH64_CALL26	cdev_del
    4480: b9438260     	ldr	w0, [x19, #0x380]
    4484: 52800021     	mov	w1, #0x1                // =1
    4488: 94000000     	bl	0x4488 <syna_cdev_create+0x254>
		0000000000004488:  R_AARCH64_CALL26	unregister_chrdev_region
    448c: 17ffffdf     	b	0x4408 <syna_cdev_create+0x1d4>
    4490: 2a0003f4     	mov	w20, w0
    4494: 90000000     	adrp	x0, 0x4000 <suspend_show+0x30>
		0000000000004494:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x119f
    4498: 91000000     	add	x0, x0, #0x0
		0000000000004498:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x119f
    449c: 90000001     	adrp	x1, 0x4000 <suspend_show+0x30>
		000000000000449c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5364
    44a0: 91000021     	add	x1, x1, #0x0
		00000000000044a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5364
    44a4: 94000000     	bl	0x44a4 <syna_cdev_create+0x270>
		00000000000044a4:  R_AARCH64_CALL26	_printk
    44a8: 17ffffd8     	b	0x4408 <syna_cdev_create+0x1d4>
