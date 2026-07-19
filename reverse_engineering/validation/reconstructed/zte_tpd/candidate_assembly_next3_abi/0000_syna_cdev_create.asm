
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000043dc <syna_cdev_create>:
    43dc: d503233f     	paciasp
    43e0: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    43e4: a90167fa     	stp	x26, x25, [sp, #0x10]
    43e8: a9025ff8     	stp	x24, x23, [sp, #0x20]
    43ec: a90357f6     	stp	x22, x21, [sp, #0x30]
    43f0: a9044ff4     	stp	x20, x19, [sp, #0x40]
    43f4: 910003fd     	mov	x29, sp
    43f8: 90000008     	adrp	x8, 0x4000 <sub_309E4+0x4>
		00000000000043f8:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data
    43fc: 90000016     	adrp	x22, 0x4000 <sub_309E4+0x4>
		00000000000043fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x409f
    4400: 910002d6     	add	x22, x22, #0x0
		0000000000004400:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x409f
    4404: f9000101     	str	x1, [x8]
		0000000000004404:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data
    4408: 90000008     	adrp	x8, 0x4000 <sub_309E4+0x4>
		0000000000004408:  R_AARCH64_ADR_PREL_PG_HI21	qword_31710
    440c: 90000017     	adrp	x23, 0x4000 <sub_309E4+0x4>
		000000000000440c:  R_AARCH64_ADR_PREL_PG_HI21	dummy_lock_key
    4410: 910002f7     	add	x23, x23, #0x0
		0000000000004410:  R_AARCH64_ADD_ABS_LO12_NC	dummy_lock_key
    4414: f900011f     	str	xzr, [x8]
		0000000000004414:  R_AARCH64_LDST64_ABS_LO12_NC	qword_31710
    4418: 90000008     	adrp	x8, 0x4000 <sub_309E4+0x4>
		0000000000004418:  R_AARCH64_ADR_PREL_PG_HI21	qword_316F8
    441c: f900011f     	str	xzr, [x8]
		000000000000441c:  R_AARCH64_LDST64_ABS_LO12_NC	qword_316F8
    4420: 90000008     	adrp	x8, 0x4000 <sub_309E4+0x4>
		0000000000004420:  R_AARCH64_ADR_PREL_PG_HI21	qword_31700
    4424: aa0003f3     	mov	x19, x0
    4428: f900011f     	str	xzr, [x8]
		0000000000004428:  R_AARCH64_LDST64_ABS_LO12_NC	qword_31700
    442c: 90000008     	adrp	x8, 0x4000 <sub_309E4+0x4>
		000000000000442c:  R_AARCH64_ADR_PREL_PG_HI21	qword_316E8
    4430: 90000009     	adrp	x9, 0x4000 <sub_309E4+0x4>
		0000000000004430:  R_AARCH64_ADR_PREL_PG_HI21	qword_31708
    4434: f900011f     	str	xzr, [x8]
		0000000000004434:  R_AARCH64_LDST64_ABS_LO12_NC	qword_316E8
    4438: 90000008     	adrp	x8, 0x4000 <sub_309E4+0x4>
		0000000000004438:  R_AARCH64_ADR_PREL_PG_HI21	qword_316F0
    443c: 90000018     	adrp	x24, 0x4000 <sub_309E4+0x4>
		000000000000443c:  R_AARCH64_ADR_PREL_PG_HI21	qword_31698
    4440: f900011f     	str	xzr, [x8]
		0000000000004440:  R_AARCH64_LDST64_ABS_LO12_NC	qword_316F0
    4444: 90000008     	adrp	x8, 0x4000 <sub_309E4+0x4>
		0000000000004444:  R_AARCH64_ADR_PREL_PG_HI21	qword_316D8
    4448: 90000019     	adrp	x25, 0x4000 <sub_309E4+0x4>
		0000000000004448:  R_AARCH64_ADR_PREL_PG_HI21	qword_31658
    444c: f900011f     	str	xzr, [x8]
		000000000000444c:  R_AARCH64_LDST64_ABS_LO12_NC	qword_316D8
    4450: 90000008     	adrp	x8, 0x4000 <sub_309E4+0x4>
		0000000000004450:  R_AARCH64_ADR_PREL_PG_HI21	qword_316E0
    4454: 9000001a     	adrp	x26, 0x4000 <sub_309E4+0x4>
		0000000000004454:  R_AARCH64_ADR_PREL_PG_HI21	qword_31660
    4458: f900011f     	str	xzr, [x8]
		0000000000004458:  R_AARCH64_LDST64_ABS_LO12_NC	qword_316E0
    445c: 90000008     	adrp	x8, 0x4000 <sub_309E4+0x4>
		000000000000445c:  R_AARCH64_ADR_PREL_PG_HI21	qword_316C0
    4460: 90000014     	adrp	x20, 0x4000 <sub_309E4+0x4>
		0000000000004460:  R_AARCH64_ADR_PREL_PG_HI21	qword_31668
    4464: 91000294     	add	x20, x20, #0x0
		0000000000004464:  R_AARCH64_ADD_ABS_LO12_NC	qword_31668
    4468: f900011f     	str	xzr, [x8]
		0000000000004468:  R_AARCH64_LDST64_ABS_LO12_NC	qword_316C0
    446c: 90000008     	adrp	x8, 0x4000 <sub_309E4+0x4>
		000000000000446c:  R_AARCH64_ADR_PREL_PG_HI21	qword_316C8
    4470: f900011f     	str	xzr, [x8]
		0000000000004470:  R_AARCH64_LDST64_ABS_LO12_NC	qword_316C8
    4474: 90000008     	adrp	x8, 0x4000 <sub_309E4+0x4>
		0000000000004474:  R_AARCH64_ADR_PREL_PG_HI21	qword_316B0
    4478: 90000015     	adrp	x21, 0x4000 <sub_309E4+0x4>
		0000000000004478:  R_AARCH64_ADR_PREL_PG_HI21	qword_316D0
    447c: 910002b5     	add	x21, x21, #0x0
		000000000000447c:  R_AARCH64_ADD_ABS_LO12_NC	qword_316D0
    4480: f900011f     	str	xzr, [x8]
		0000000000004480:  R_AARCH64_LDST64_ABS_LO12_NC	qword_316B0
    4484: 90000008     	adrp	x8, 0x4000 <sub_309E4+0x4>
		0000000000004484:  R_AARCH64_ADR_PREL_PG_HI21	qword_316B8
    4488: f900011f     	str	xzr, [x8]
		0000000000004488:  R_AARCH64_LDST64_ABS_LO12_NC	qword_316B8
    448c: 90000008     	adrp	x8, 0x4000 <sub_309E4+0x4>
		000000000000448c:  R_AARCH64_ADR_PREL_PG_HI21	qword_316A8
    4490: 90000000     	adrp	x0, 0x4000 <sub_309E4+0x4>
		0000000000004490:  R_AARCH64_ADR_PREL_PG_HI21	qword_316A0
    4494: 91000000     	add	x0, x0, #0x0
		0000000000004494:  R_AARCH64_ADD_ABS_LO12_NC	qword_316A0
    4498: f900011f     	str	xzr, [x8]
		0000000000004498:  R_AARCH64_LDST64_ABS_LO12_NC	qword_316A8
    449c: 90000008     	adrp	x8, 0x4000 <sub_309E4+0x4>
		000000000000449c:  R_AARCH64_ADR_PREL_PG_HI21	qword_31690
    44a0: f900011f     	str	xzr, [x8]
		00000000000044a0:  R_AARCH64_LDST64_ABS_LO12_NC	qword_31690
    44a4: 90000008     	adrp	x8, 0x4000 <sub_309E4+0x4>
		00000000000044a4:  R_AARCH64_ADR_PREL_PG_HI21	qword_31680
    44a8: aa1603e1     	mov	x1, x22
    44ac: f900011f     	str	xzr, [x8]
		00000000000044ac:  R_AARCH64_LDST64_ABS_LO12_NC	qword_31680
    44b0: 90000008     	adrp	x8, 0x4000 <sub_309E4+0x4>
		00000000000044b0:  R_AARCH64_ADR_PREL_PG_HI21	qword_31688
    44b4: aa1703e2     	mov	x2, x23
    44b8: f900011f     	str	xzr, [x8]
		00000000000044b8:  R_AARCH64_LDST64_ABS_LO12_NC	qword_31688
    44bc: 90000008     	adrp	x8, 0x4000 <sub_309E4+0x4>
		00000000000044bc:  R_AARCH64_ADR_PREL_PG_HI21	qword_31670
    44c0: f900011f     	str	xzr, [x8]
		00000000000044c0:  R_AARCH64_LDST64_ABS_LO12_NC	qword_31670
    44c4: 90000008     	adrp	x8, 0x4000 <sub_309E4+0x4>
		00000000000044c4:  R_AARCH64_ADR_PREL_PG_HI21	qword_31678
    44c8: f900013f     	str	xzr, [x9]
		00000000000044c8:  R_AARCH64_LDST64_ABS_LO12_NC	qword_31708
    44cc: f900031f     	str	xzr, [x24]
		00000000000044cc:  R_AARCH64_LDST64_ABS_LO12_NC	qword_31698
    44d0: f900011f     	str	xzr, [x8]
		00000000000044d0:  R_AARCH64_LDST64_ABS_LO12_NC	qword_31678
    44d4: f900033f     	str	xzr, [x25]
		00000000000044d4:  R_AARCH64_LDST64_ABS_LO12_NC	qword_31658
    44d8: f900035f     	str	xzr, [x26]
		00000000000044d8:  R_AARCH64_LDST64_ABS_LO12_NC	qword_31660
    44dc: f900029f     	str	xzr, [x20]
    44e0: f90002bf     	str	xzr, [x21]
    44e4: f900001f     	str	xzr, [x0]
    44e8: f901c67f     	str	xzr, [x19, #0x388]
    44ec: f901ca7f     	str	xzr, [x19, #0x390]
    44f0: 94000000     	bl	0x44f0 <syna_cdev_create+0x114>
		00000000000044f0:  R_AARCH64_CALL26	__mutex_init
    44f4: aa1503e0     	mov	x0, x21
    44f8: aa1603e1     	mov	x1, x22
    44fc: aa1703e2     	mov	x2, x23
    4500: 94000000     	bl	0x4500 <syna_cdev_create+0x124>
		0000000000004500:  R_AARCH64_CALL26	__mutex_init
    4504: aa1403e0     	mov	x0, x20
    4508: aa1603e1     	mov	x1, x22
    450c: aa1703e2     	mov	x2, x23
    4510: 3900031f     	strb	wzr, [x24]
		0000000000004510:  R_AARCH64_LDST8_ABS_LO12_NC	qword_31698
    4514: f900033f     	str	xzr, [x25]
		0000000000004514:  R_AARCH64_LDST64_ABS_LO12_NC	qword_31658
    4518: f900035f     	str	xzr, [x26]
		0000000000004518:  R_AARCH64_LDST64_ABS_LO12_NC	qword_31660
    451c: 94000000     	bl	0x451c <syna_cdev_create+0x140>
		000000000000451c:  R_AARCH64_CALL26	__mutex_init
    4520: 90000016     	adrp	x22, 0x4000 <sub_309E4+0x4>
		0000000000004520:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1ee4
    4524: b94002c8     	ldr	w8, [x22]
		0000000000004524:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x1ee4
    4528: 34000148     	cbz	w8, 0x4550 <syna_cdev_create+0x174>
    452c: 530c2d00     	lsl	w0, w8, #20
    4530: 90000002     	adrp	x2, 0x4000 <sub_309E4+0x4>
		0000000000004530:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17a9
    4534: 91000042     	add	x2, x2, #0x0
		0000000000004534:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17a9
    4538: 52800021     	mov	w1, #0x1                // =1
    453c: b9038260     	str	w0, [x19, #0x380]
    4540: 94000000     	bl	0x4540 <syna_cdev_create+0x164>
		0000000000004540:  R_AARCH64_CALL26	register_chrdev_region
    4544: 37f80be0     	tbnz	w0, #0x1f, 0x46c0 <syna_cdev_create+0x2e4>
    4548: 910e0274     	add	x20, x19, #0x380
    454c: 1400000c     	b	0x457c <syna_cdev_create+0x1a0>
    4550: 910e0274     	add	x20, x19, #0x380
    4554: 90000003     	adrp	x3, 0x4000 <sub_309E4+0x4>
		0000000000004554:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17a9
    4558: 91000063     	add	x3, x3, #0x0
		0000000000004558:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17a9
    455c: aa1403e0     	mov	x0, x20
    4560: 2a1f03e1     	mov	w1, wzr
    4564: 52800022     	mov	w2, #0x1                // =1
    4568: 94000000     	bl	0x4568 <syna_cdev_create+0x18c>
		0000000000004568:  R_AARCH64_CALL26	alloc_chrdev_region
    456c: 37f80b20     	tbnz	w0, #0x1f, 0x46d0 <syna_cdev_create+0x2f4>
    4570: b9400288     	ldr	w8, [x20]
    4574: 53147d08     	lsr	w8, w8, #20
    4578: b90002c8     	str	w8, [x22]
		0000000000004578:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x1ee4
    457c: 90000001     	adrp	x1, 0x4000 <sub_309E4+0x4>
		000000000000457c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x12c0
    4580: 91000021     	add	x1, x1, #0x0
		0000000000004580:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x12c0
    4584: 910be260     	add	x0, x19, #0x2f8
    4588: 94000000     	bl	0x4588 <syna_cdev_create+0x1ac>
		0000000000004588:  R_AARCH64_CALL26	cdev_init
    458c: b9438261     	ldr	w1, [x19, #0x380]
    4590: 90000008     	adrp	x8, 0x4000 <sub_309E4+0x4>
		0000000000004590:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
    4594: 91000108     	add	x8, x8, #0x0
		0000000000004594:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
    4598: 910be260     	add	x0, x19, #0x2f8
    459c: 52800022     	mov	w2, #0x1                // =1
    45a0: f901ae68     	str	x8, [x19, #0x358]
    45a4: 94000000     	bl	0x45a4 <syna_cdev_create+0x1c8>
		00000000000045a4:  R_AARCH64_CALL26	cdev_add
    45a8: 37f80520     	tbnz	w0, #0x1f, 0x464c <syna_cdev_create+0x270>
    45ac: 90000000     	adrp	x0, 0x4000 <sub_309E4+0x4>
		00000000000045ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17a9
    45b0: 91000000     	add	x0, x0, #0x0
		00000000000045b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17a9
    45b4: 94000000     	bl	0x45b4 <syna_cdev_create+0x1d8>
		00000000000045b4:  R_AARCH64_CALL26	class_create
    45b8: aa0003f5     	mov	x21, x0
    45bc: b13ffc1f     	cmn	x0, #0xfff
    45c0: 54000542     	b.hs	0x4668 <syna_cdev_create+0x28c>
    45c4: 90000008     	adrp	x8, 0x4000 <sub_309E4+0x4>
		00000000000045c4:  R_AARCH64_ADR_PREL_PG_HI21	syna_cdev_devnode
    45c8: 91000108     	add	x8, x8, #0x0
		00000000000045c8:  R_AARCH64_ADD_ABS_LO12_NC	syna_cdev_devnode
    45cc: 90000004     	adrp	x4, 0x4000 <sub_309E4+0x4>
		00000000000045cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1042
    45d0: 91000084     	add	x4, x4, #0x0
		00000000000045d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1042
    45d4: f90012a8     	str	x8, [x21, #0x20]
    45d8: aa1503e0     	mov	x0, x21
    45dc: b9400282     	ldr	w2, [x20]
    45e0: aa1f03e1     	mov	x1, xzr
    45e4: aa1f03e3     	mov	x3, xzr
    45e8: 12004c45     	and	w5, w2, #0xfffff
    45ec: 94000000     	bl	0x45ec <syna_cdev_create+0x210>
		00000000000045ec:  R_AARCH64_CALL26	device_create
    45f0: b13ffc1f     	cmn	x0, #0xfff
    45f4: 54000462     	b.hs	0x4680 <syna_cdev_create+0x2a4>
    45f8: f901ca60     	str	x0, [x19, #0x390]
    45fc: 9113e268     	add	x8, x19, #0x4f8
    4600: 90000001     	adrp	x1, 0x4000 <sub_309E4+0x4>
		0000000000004600:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14f8
    4604: 91000021     	add	x1, x1, #0x0
		0000000000004604:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14f8
    4608: 90000002     	adrp	x2, 0x4000 <sub_309E4+0x4>
		0000000000004608:  R_AARCH64_ADR_PREL_PG_HI21	dummy_lock_key
    460c: 91000042     	add	x2, x2, #0x0
		000000000000460c:  R_AARCH64_ADD_ABS_LO12_NC	dummy_lock_key
    4610: 91142260     	add	x0, x19, #0x508
    4614: f901c675     	str	x21, [x19, #0x388]
    4618: b903867f     	str	wzr, [x19, #0x384]
    461c: f9027e68     	str	x8, [x19, #0x4f8]
    4620: f9028268     	str	x8, [x19, #0x500]
    4624: 94000000     	bl	0x4624 <syna_cdev_create+0x248>
		0000000000004624:  R_AARCH64_CALL26	__init_waitqueue_head
    4628: 2a1f03f5     	mov	w21, wzr
    462c: 2a1503e0     	mov	w0, w21
    4630: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    4634: a94357f6     	ldp	x22, x21, [sp, #0x30]
    4638: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    463c: a94167fa     	ldp	x26, x25, [sp, #0x10]
    4640: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    4644: d50323bf     	autiasp
    4648: d65f03c0     	ret
    464c: 2a0003f5     	mov	w21, w0
    4650: 90000000     	adrp	x0, 0x4000 <sub_309E4+0x4>
		0000000000004650:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x345b
    4654: 91000000     	add	x0, x0, #0x0
		0000000000004654:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x345b
    4658: 90000001     	adrp	x1, 0x4000 <sub_309E4+0x4>
		0000000000004658:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x391e
    465c: 91000021     	add	x1, x1, #0x0
		000000000000465c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x391e
    4660: 94000000     	bl	0x4660 <syna_cdev_create+0x284>
		0000000000004660:  R_AARCH64_CALL26	_printk
    4664: 14000013     	b	0x46b0 <syna_cdev_create+0x2d4>
    4668: 90000000     	adrp	x0, 0x4000 <sub_309E4+0x4>
		0000000000004668:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x242f
    466c: 91000000     	add	x0, x0, #0x0
		000000000000466c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x242f
    4670: 90000001     	adrp	x1, 0x4000 <sub_309E4+0x4>
		0000000000004670:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x391e
    4674: 91000021     	add	x1, x1, #0x0
		0000000000004674:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x391e
    4678: 94000000     	bl	0x4678 <syna_cdev_create+0x29c>
		0000000000004678:  R_AARCH64_CALL26	_printk
    467c: 1400000b     	b	0x46a8 <syna_cdev_create+0x2cc>
    4680: 90000008     	adrp	x8, 0x4000 <sub_309E4+0x4>
		0000000000004680:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb3
    4684: 91000108     	add	x8, x8, #0x0
		0000000000004684:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb3
    4688: 90000001     	adrp	x1, 0x4000 <sub_309E4+0x4>
		0000000000004688:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x391e
    468c: 91000021     	add	x1, x1, #0x0
		000000000000468c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x391e
    4690: aa0003f6     	mov	x22, x0
    4694: aa0803e0     	mov	x0, x8
    4698: 94000000     	bl	0x4698 <syna_cdev_create+0x2bc>
		0000000000004698:  R_AARCH64_CALL26	_printk
    469c: aa1503e0     	mov	x0, x21
    46a0: 94000000     	bl	0x46a0 <syna_cdev_create+0x2c4>
		00000000000046a0:  R_AARCH64_CALL26	class_destroy
    46a4: aa1603f5     	mov	x21, x22
    46a8: 910be260     	add	x0, x19, #0x2f8
    46ac: 94000000     	bl	0x46ac <syna_cdev_create+0x2d0>
		00000000000046ac:  R_AARCH64_CALL26	cdev_del
    46b0: b9400280     	ldr	w0, [x20]
    46b4: 52800021     	mov	w1, #0x1                // =1
    46b8: 94000000     	bl	0x46b8 <syna_cdev_create+0x2dc>
		00000000000046b8:  R_AARCH64_CALL26	unregister_chrdev_region
    46bc: 17ffffdc     	b	0x462c <syna_cdev_create+0x250>
    46c0: 2a0003f5     	mov	w21, w0
    46c4: 90000000     	adrp	x0, 0x4000 <sub_309E4+0x4>
		00000000000046c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x40b3
    46c8: 91000000     	add	x0, x0, #0x0
		00000000000046c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x40b3
    46cc: 14000004     	b	0x46dc <syna_cdev_create+0x300>
    46d0: 2a0003f5     	mov	w21, w0
    46d4: 90000000     	adrp	x0, 0x4000 <sub_309E4+0x4>
		00000000000046d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2402
    46d8: 91000000     	add	x0, x0, #0x0
		00000000000046d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2402
    46dc: 90000001     	adrp	x1, 0x4000 <sub_309E4+0x4>
		00000000000046dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x391e
    46e0: 91000021     	add	x1, x1, #0x0
		00000000000046e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x391e
    46e4: 94000000     	bl	0x46e4 <syna_cdev_create+0x308>
		00000000000046e4:  R_AARCH64_CALL26	_printk
    46e8: 17ffffd1     	b	0x462c <syna_cdev_create+0x250>
