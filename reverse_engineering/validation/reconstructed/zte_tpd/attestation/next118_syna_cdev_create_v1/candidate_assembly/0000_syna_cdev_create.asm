
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000042e0 <syna_cdev_create>:
    42e0: d503233f     	paciasp
    42e4: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    42e8: a9015ff8     	stp	x24, x23, [sp, #0x10]
    42ec: a90257f6     	stp	x22, x21, [sp, #0x20]
    42f0: a9034ff4     	stp	x20, x19, [sp, #0x30]
    42f4: 910003fd     	mov	x29, sp
    42f8: 90000018     	adrp	x24, 0x4000 <sub_30D90+0x10>
		00000000000042f8:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data
    42fc: 91000318     	add	x24, x24, #0x0
		00000000000042fc:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data
    4300: 90000016     	adrp	x22, 0x4000 <sub_30D90+0x10>
		0000000000004300:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bbf
    4304: 910002d6     	add	x22, x22, #0x0
		0000000000004304:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bbf
    4308: 90000017     	adrp	x23, 0x4000 <sub_30D90+0x10>
		0000000000004308:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1420
    430c: 910002f7     	add	x23, x23, #0x0
		000000000000430c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1420
    4310: aa0003f3     	mov	x19, x0
    4314: aa1803f4     	mov	x20, x24
    4318: aa1803f5     	mov	x21, x24
    431c: aa1803e0     	mov	x0, x24
    4320: f9000301     	str	x1, [x24]
    4324: aa1603e1     	mov	x1, x22
    4328: aa1703e2     	mov	x2, x23
    432c: a90bff1f     	stp	xzr, xzr, [x24, #0xb8]
    4330: a90aff1f     	stp	xzr, xzr, [x24, #0xa8]
    4334: a909ff1f     	stp	xzr, xzr, [x24, #0x98]
    4338: a908ff1f     	stp	xzr, xzr, [x24, #0x88]
    433c: a9077f1f     	stp	xzr, xzr, [x24, #0x70]
    4340: a9067f1f     	stp	xzr, xzr, [x24, #0x60]
    4344: f9002f1f     	str	xzr, [x24, #0x58]
    4348: a9047f1f     	stp	xzr, xzr, [x24, #0x40]
    434c: a9037f1f     	stp	xzr, xzr, [x24, #0x30]
    4350: a9027f1f     	stp	xzr, xzr, [x24, #0x20]
    4354: a900ff1f     	stp	xzr, xzr, [x24, #0x8]
    4358: f8018e9f     	str	xzr, [x20, #0x18]!
    435c: f8080ebf     	str	xzr, [x21, #0x80]!
    4360: f8050c1f     	str	xzr, [x0, #0x50]!
    4364: f901c67f     	str	xzr, [x19, #0x388]
    4368: f901ca7f     	str	xzr, [x19, #0x390]
    436c: 94000000     	bl	0x436c <syna_cdev_create+0x8c>
		000000000000436c:  R_AARCH64_CALL26	__mutex_init
    4370: aa1503e0     	mov	x0, x21
    4374: aa1603e1     	mov	x1, x22
    4378: aa1703e2     	mov	x2, x23
    437c: 94000000     	bl	0x437c <syna_cdev_create+0x9c>
		000000000000437c:  R_AARCH64_CALL26	__mutex_init
    4380: aa1403e0     	mov	x0, x20
    4384: aa1603e1     	mov	x1, x22
    4388: aa1703e2     	mov	x2, x23
    438c: 3901231f     	strb	wzr, [x24, #0x48]
    4390: a900ff1f     	stp	xzr, xzr, [x24, #0x8]
    4394: 94000000     	bl	0x4394 <syna_cdev_create+0xb4>
		0000000000004394:  R_AARCH64_CALL26	__mutex_init
    4398: 90000016     	adrp	x22, 0x4000 <sub_30D90+0x10>
		0000000000004398:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x141c
    439c: b94002c8     	ldr	w8, [x22]
		000000000000439c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x141c
    43a0: 34000188     	cbz	w8, 0x43d0 <syna_cdev_create+0xf0>
    43a4: 530c2d00     	lsl	w0, w8, #20
    43a8: 90000002     	adrp	x2, 0x4000 <sub_30D90+0x10>
		00000000000043a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a99
    43ac: 91000042     	add	x2, x2, #0x0
		00000000000043ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a99
    43b0: 52800021     	mov	w1, #0x1                // =1
    43b4: b9038260     	str	w0, [x19, #0x380]
    43b8: 94000000     	bl	0x43b8 <syna_cdev_create+0xd8>
		00000000000043b8:  R_AARCH64_CALL26	register_chrdev_region
    43bc: 36f80200     	tbz	w0, #0x1f, 0x43fc <syna_cdev_create+0x11c>
    43c0: 2a0003f4     	mov	w20, w0
    43c4: 90000000     	adrp	x0, 0x4000 <sub_30D90+0x10>
		00000000000043c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4021
    43c8: 91000000     	add	x0, x0, #0x0
		00000000000043c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4021
    43cc: 1400005f     	b	0x4548 <syna_cdev_create+0x268>
    43d0: 910e0275     	add	x21, x19, #0x380
    43d4: 90000003     	adrp	x3, 0x4000 <sub_30D90+0x10>
		00000000000043d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a99
    43d8: 91000063     	add	x3, x3, #0x0
		00000000000043d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a99
    43dc: aa1503e0     	mov	x0, x21
    43e0: 2a1f03e1     	mov	w1, wzr
    43e4: 52800022     	mov	w2, #0x1                // =1
    43e8: 94000000     	bl	0x43e8 <syna_cdev_create+0x108>
		00000000000043e8:  R_AARCH64_CALL26	alloc_chrdev_region
    43ec: 37f80a80     	tbnz	w0, #0x1f, 0x453c <syna_cdev_create+0x25c>
    43f0: b94002a8     	ldr	w8, [x21]
    43f4: 53147d08     	lsr	w8, w8, #20
    43f8: b90002c8     	str	w8, [x22]
		00000000000043f8:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x141c
    43fc: 90000001     	adrp	x1, 0x4000 <sub_30D90+0x10>
		00000000000043fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x44d0
    4400: 91000021     	add	x1, x1, #0x0
		0000000000004400:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x44d0
    4404: 910be260     	add	x0, x19, #0x2f8
    4408: 94000000     	bl	0x4408 <syna_cdev_create+0x128>
		0000000000004408:  R_AARCH64_CALL26	cdev_init
    440c: b9438261     	ldr	w1, [x19, #0x380]
    4410: 90000008     	adrp	x8, 0x4000 <sub_30D90+0x10>
		0000000000004410:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
    4414: 91000108     	add	x8, x8, #0x0
		0000000000004414:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
    4418: 910be260     	add	x0, x19, #0x2f8
    441c: 52800022     	mov	w2, #0x1                // =1
    4420: f901ae68     	str	x8, [x19, #0x358]
    4424: 94000000     	bl	0x4424 <syna_cdev_create+0x144>
		0000000000004424:  R_AARCH64_CALL26	cdev_add
    4428: 37f80540     	tbnz	w0, #0x1f, 0x44d0 <syna_cdev_create+0x1f0>
    442c: 90000000     	adrp	x0, 0x4000 <sub_30D90+0x10>
		000000000000442c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a99
    4430: 91000000     	add	x0, x0, #0x0
		0000000000004430:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a99
    4434: 94000000     	bl	0x4434 <syna_cdev_create+0x154>
		0000000000004434:  R_AARCH64_CALL26	class_create
    4438: aa0003f4     	mov	x20, x0
    443c: b13ffc1f     	cmn	x0, #0xfff
    4440: 54000562     	b.hs	0x44ec <syna_cdev_create+0x20c>
    4444: 90000008     	adrp	x8, 0x4000 <sub_30D90+0x10>
		0000000000004444:  R_AARCH64_ADR_PREL_PG_HI21	syna_cdev_devnode
    4448: 91000108     	add	x8, x8, #0x0
		0000000000004448:  R_AARCH64_ADD_ABS_LO12_NC	syna_cdev_devnode
    444c: 90000004     	adrp	x4, 0x4000 <sub_30D90+0x10>
		000000000000444c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x120b
    4450: 91000084     	add	x4, x4, #0x0
		0000000000004450:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x120b
    4454: f9001288     	str	x8, [x20, #0x20]
    4458: aa1403e0     	mov	x0, x20
    445c: b9438262     	ldr	w2, [x19, #0x380]
    4460: aa1f03e1     	mov	x1, xzr
    4464: aa1f03e3     	mov	x3, xzr
    4468: 12004c45     	and	w5, w2, #0xfffff
    446c: 94000000     	bl	0x446c <syna_cdev_create+0x18c>
		000000000000446c:  R_AARCH64_CALL26	device_create
    4470: b13ffc1f     	cmn	x0, #0xfff
    4474: 54000482     	b.hs	0x4504 <syna_cdev_create+0x224>
    4478: 90000008     	adrp	x8, 0x4000 <sub_30D90+0x10>
		0000000000004478:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb4
    447c: f901ca60     	str	x0, [x19, #0x390]
    4480: 90000001     	adrp	x1, 0x4000 <sub_30D90+0x10>
		0000000000004480:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1712
    4484: 91000021     	add	x1, x1, #0x0
		0000000000004484:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1712
    4488: b900011f     	str	wzr, [x8]
		0000000000004488:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
    448c: 9113e268     	add	x8, x19, #0x4f8
    4490: 90000002     	adrp	x2, 0x4000 <sub_30D90+0x10>
		0000000000004490:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1421
    4494: 91000042     	add	x2, x2, #0x0
		0000000000004494:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1421
    4498: 91142260     	add	x0, x19, #0x508
    449c: f901c674     	str	x20, [x19, #0x388]
    44a0: b903867f     	str	wzr, [x19, #0x384]
    44a4: f9027e68     	str	x8, [x19, #0x4f8]
    44a8: f9028268     	str	x8, [x19, #0x500]
    44ac: 94000000     	bl	0x44ac <syna_cdev_create+0x1cc>
		00000000000044ac:  R_AARCH64_CALL26	__init_waitqueue_head
    44b0: 2a1f03f4     	mov	w20, wzr
    44b4: 2a1403e0     	mov	w0, w20
    44b8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    44bc: a94257f6     	ldp	x22, x21, [sp, #0x20]
    44c0: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    44c4: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    44c8: d50323bf     	autiasp
    44cc: d65f03c0     	ret
    44d0: 2a0003f4     	mov	w20, w0
    44d4: 90000000     	adrp	x0, 0x4000 <sub_30D90+0x10>
		00000000000044d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4227
    44d8: 91000000     	add	x0, x0, #0x0
		00000000000044d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4227
    44dc: 90000001     	adrp	x1, 0x4000 <sub_30D90+0x10>
		00000000000044dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x404d
    44e0: 91000021     	add	x1, x1, #0x0
		00000000000044e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x404d
    44e4: 94000000     	bl	0x44e4 <syna_cdev_create+0x204>
		00000000000044e4:  R_AARCH64_CALL26	_printk
    44e8: 14000011     	b	0x452c <syna_cdev_create+0x24c>
    44ec: 90000000     	adrp	x0, 0x4000 <sub_30D90+0x10>
		00000000000044ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c6
    44f0: 91000000     	add	x0, x0, #0x0
		00000000000044f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c6
    44f4: 90000001     	adrp	x1, 0x4000 <sub_30D90+0x10>
		00000000000044f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x404d
    44f8: 91000021     	add	x1, x1, #0x0
		00000000000044f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x404d
    44fc: 94000000     	bl	0x44fc <syna_cdev_create+0x21c>
		00000000000044fc:  R_AARCH64_CALL26	_printk
    4500: 14000009     	b	0x4524 <syna_cdev_create+0x244>
    4504: 90000000     	adrp	x0, 0x4000 <sub_30D90+0x10>
		0000000000004504:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4831
    4508: 91000000     	add	x0, x0, #0x0
		0000000000004508:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4831
    450c: 90000001     	adrp	x1, 0x4000 <sub_30D90+0x10>
		000000000000450c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x404d
    4510: 91000021     	add	x1, x1, #0x0
		0000000000004510:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x404d
    4514: 94000000     	bl	0x4514 <syna_cdev_create+0x234>
		0000000000004514:  R_AARCH64_CALL26	_printk
    4518: aa1403e0     	mov	x0, x20
    451c: 94000000     	bl	0x451c <syna_cdev_create+0x23c>
		000000000000451c:  R_AARCH64_CALL26	class_destroy
    4520: 12800034     	mov	w20, #-0x2              // =-2
    4524: 910be260     	add	x0, x19, #0x2f8
    4528: 94000000     	bl	0x4528 <syna_cdev_create+0x248>
		0000000000004528:  R_AARCH64_CALL26	cdev_del
    452c: b9438260     	ldr	w0, [x19, #0x380]
    4530: 52800021     	mov	w1, #0x1                // =1
    4534: 94000000     	bl	0x4534 <syna_cdev_create+0x254>
		0000000000004534:  R_AARCH64_CALL26	unregister_chrdev_region
    4538: 17ffffdf     	b	0x44b4 <syna_cdev_create+0x1d4>
    453c: 2a0003f4     	mov	w20, w0
    4540: 90000000     	adrp	x0, 0x4000 <sub_30D90+0x10>
		0000000000004540:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdee
    4544: 91000000     	add	x0, x0, #0x0
		0000000000004544:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdee
    4548: 90000001     	adrp	x1, 0x4000 <sub_30D90+0x10>
		0000000000004548:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x404d
    454c: 91000021     	add	x1, x1, #0x0
		000000000000454c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x404d
    4550: 94000000     	bl	0x4550 <syna_cdev_create+0x270>
		0000000000004550:  R_AARCH64_CALL26	_printk
    4554: 17ffffd8     	b	0x44b4 <syna_cdev_create+0x1d4>
