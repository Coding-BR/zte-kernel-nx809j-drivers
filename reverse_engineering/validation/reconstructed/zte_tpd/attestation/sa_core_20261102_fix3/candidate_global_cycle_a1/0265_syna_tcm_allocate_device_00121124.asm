
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000012288 <syna_tcm_allocate_device>:
   12288: d503233f     	paciasp
   1228c: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   12290: f9000bf7     	str	x23, [sp, #0x10]
   12294: a90257f6     	stp	x22, x21, [sp, #0x20]
   12298: a9034ff4     	stp	x20, x19, [sp, #0x30]
   1229c: 910003fd     	mov	x29, sp
   122a0: b5000081     	cbnz	x1, 0x122b0 <syna_tcm_allocate_device+0x28>
   122a4: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000122a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9cdc
   122a8: 91000000     	add	x0, x0, #0x0
		00000000000122a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9cdc
   122ac: 1400000a     	b	0x122d4 <syna_tcm_allocate_device+0x4c>
   122b0: f9401028     	ldr	x8, [x1, #0x20]
   122b4: b5000088     	cbnz	x8, 0x122c4 <syna_tcm_allocate_device+0x3c>
   122b8: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000122b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7328
   122bc: 91000000     	add	x0, x0, #0x0
		00000000000122bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7328
   122c0: 14000005     	b	0x122d4 <syna_tcm_allocate_device+0x4c>
   122c4: f9401428     	ldr	x8, [x1, #0x28]
   122c8: b50001a8     	cbnz	x8, 0x122fc <syna_tcm_allocate_device+0x74>
   122cc: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000122cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2eca
   122d0: 91000000     	add	x0, x0, #0x0
		00000000000122d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2eca
   122d4: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000122d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5472
   122d8: 91000021     	add	x1, x1, #0x0
		00000000000122d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5472
   122dc: 94000000     	bl	0x122dc <syna_tcm_allocate_device+0x54>
		00000000000122dc:  R_AARCH64_CALL26	_printk
   122e0: 12801e00     	mov	w0, #-0xf1              // =-241
   122e4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   122e8: f9400bf7     	ldr	x23, [sp, #0x10]
   122ec: a94257f6     	ldp	x22, x21, [sp, #0x20]
   122f0: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   122f4: d50323bf     	autiasp
   122f8: d65f03c0     	ret
   122fc: 90000008     	adrp	x8, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000122fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x548c
   12300: 91000108     	add	x8, x8, #0x0
		0000000000012300:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x548c
   12304: aa0103f6     	mov	x22, x1
   12308: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012308:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5472
   1230c: 91000021     	add	x1, x1, #0x0
		000000000001230c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5472
   12310: aa0003f3     	mov	x19, x0
   12314: aa0803e0     	mov	x0, x8
   12318: aa0203f4     	mov	x20, x2
   1231c: 94000000     	bl	0x1231c <syna_tcm_allocate_device+0x94>
		000000000001231c:  R_AARCH64_CALL26	_printk
   12320: aa1303f7     	mov	x23, x19
   12324: f900027f     	str	xzr, [x19]
   12328: 94000000     	bl	0x12328 <syna_tcm_allocate_device+0xa0>
		0000000000012328:  R_AARCH64_CALL26	syna_request_managed_device
   1232c: b50000e0     	cbnz	x0, 0x12348 <syna_tcm_allocate_device+0xc0>
   12330: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   12334: 91000000     	add	x0, x0, #0x0
		0000000000012334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   12338: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
   1233c: 91000021     	add	x1, x1, #0x0
		000000000001233c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
   12340: 94000000     	bl	0x12340 <syna_tcm_allocate_device+0xb8>
		0000000000012340:  R_AARCH64_CALL26	_printk
   12344: 14000005     	b	0x12358 <syna_tcm_allocate_device+0xd0>
   12348: 52847d01     	mov	w1, #0x23e8             // =9192
   1234c: 5281b802     	mov	w2, #0xdc0              // =3520
   12350: 94000000     	bl	0x12350 <syna_tcm_allocate_device+0xc8>
		0000000000012350:  R_AARCH64_CALL26	devm_kmalloc
   12354: b5000100     	cbnz	x0, 0x12374 <syna_tcm_allocate_device+0xec>
   12358: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012358:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48da
   1235c: 91000000     	add	x0, x0, #0x0
		000000000001235c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48da
   12360: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012360:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5472
   12364: 91000021     	add	x1, x1, #0x0
		0000000000012364:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5472
   12368: 94000000     	bl	0x12368 <syna_tcm_allocate_device+0xe0>
		0000000000012368:  R_AARCH64_CALL26	_printk
   1236c: 12801e40     	mov	w0, #-0xf3              // =-243
   12370: 17ffffdd     	b	0x122e4 <syna_tcm_allocate_device+0x5c>
   12374: 2941a2c9     	ldp	w9, w8, [x22, #0xc]
   12378: f9000014     	str	x20, [x0]
   1237c: 90000014     	adrp	x20, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		000000000001237c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb000
   12380: 91000294     	add	x20, x20, #0x0
		0000000000012380:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb000
   12384: 90000015     	adrp	x21, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012384:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x91d
   12388: 910002b5     	add	x21, x21, #0x0
		0000000000012388:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x91d
   1238c: aa0003f3     	mov	x19, x0
   12390: f9002416     	str	x22, [x0, #0x48]
   12394: aa1403e1     	mov	x1, x20
   12398: aa1503e2     	mov	x2, x21
   1239c: f901c81f     	str	xzr, [x0, #0x390]
   123a0: f901cc1f     	str	xzr, [x0, #0x398]
   123a4: f901d01f     	str	xzr, [x0, #0x3a0]
   123a8: f901d41f     	str	xzr, [x0, #0x3a8]
   123ac: 29082408     	stp	w8, w9, [x0, #0x40]
   123b0: 29072408     	stp	w8, w9, [x0, #0x38]
   123b4: 91014000     	add	x0, x0, #0x50
   123b8: 94000000     	bl	0x123b8 <syna_tcm_allocate_device+0x130>
		00000000000123b8:  R_AARCH64_CALL26	__mutex_init
   123bc: 91044260     	add	x0, x19, #0x110
   123c0: aa1403e1     	mov	x1, x20
   123c4: aa1503e2     	mov	x2, x21
   123c8: 3905027f     	strb	wzr, [x19, #0x140]
   123cc: a9107e7f     	stp	xzr, xzr, [x19, #0x100]
   123d0: 94000000     	bl	0x123d0 <syna_tcm_allocate_device+0x148>
		00000000000123d0:  R_AARCH64_CALL26	__mutex_init
   123d4: 91056260     	add	x0, x19, #0x158
   123d8: aa1403e1     	mov	x1, x20
   123dc: aa1503e2     	mov	x2, x21
   123e0: 3906227f     	strb	wzr, [x19, #0x188]
   123e4: a914fe7f     	stp	xzr, xzr, [x19, #0x148]
   123e8: 94000000     	bl	0x123e8 <syna_tcm_allocate_device+0x160>
		00000000000123e8:  R_AARCH64_CALL26	__mutex_init
   123ec: 91068260     	add	x0, x19, #0x1a0
   123f0: aa1403e1     	mov	x1, x20
   123f4: aa1503e2     	mov	x2, x21
   123f8: 3907427f     	strb	wzr, [x19, #0x1d0]
   123fc: a9197e7f     	stp	xzr, xzr, [x19, #0x190]
   12400: 94000000     	bl	0x12400 <syna_tcm_allocate_device+0x178>
		0000000000012400:  R_AARCH64_CALL26	__mutex_init
   12404: 91094260     	add	x0, x19, #0x250
   12408: aa1403e1     	mov	x1, x20
   1240c: aa1503e2     	mov	x2, x21
   12410: 390a027f     	strb	wzr, [x19, #0x280]
   12414: f901227f     	str	xzr, [x19, #0x240]
   12418: f901267f     	str	xzr, [x19, #0x248]
   1241c: 94000000     	bl	0x1241c <syna_tcm_allocate_device+0x194>
		000000000001241c:  R_AARCH64_CALL26	__mutex_init
   12420: 910a6260     	add	x0, x19, #0x298
   12424: aa1403e1     	mov	x1, x20
   12428: aa1503e2     	mov	x2, x21
   1242c: 390b227f     	strb	wzr, [x19, #0x2c8]
   12430: f901467f     	str	xzr, [x19, #0x288]
   12434: f9014a7f     	str	xzr, [x19, #0x290]
   12438: 94000000     	bl	0x12438 <syna_tcm_allocate_device+0x1b0>
		0000000000012438:  R_AARCH64_CALL26	__mutex_init
   1243c: 910b8260     	add	x0, x19, #0x2e0
   12440: aa1403e1     	mov	x1, x20
   12444: aa1503e2     	mov	x2, x21
   12448: 390c427f     	strb	wzr, [x19, #0x310]
   1244c: f9016a7f     	str	xzr, [x19, #0x2d0]
   12450: f9016e7f     	str	xzr, [x19, #0x2d8]
   12454: 94000000     	bl	0x12454 <syna_tcm_allocate_device+0x1cc>
		0000000000012454:  R_AARCH64_CALL26	__mutex_init
   12458: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012458:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b8a
   1245c: 91000021     	add	x1, x1, #0x0
		000000000001245c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b8a
   12460: 90000002     	adrp	x2, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012460:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x91e
   12464: 91000042     	add	x2, x2, #0x0
		0000000000012464:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x91e
   12468: 9108a260     	add	x0, x19, #0x228
   1246c: b902227f     	str	wzr, [x19, #0x220]
   12470: 94000000     	bl	0x12470 <syna_tcm_allocate_device+0x1e8>
		0000000000012470:  R_AARCH64_CALL26	__init_swait_queue_head
   12474: 910c6260     	add	x0, x19, #0x318
   12478: aa1403e1     	mov	x1, x20
   1247c: aa1503e2     	mov	x2, x21
   12480: 94000000     	bl	0x12480 <syna_tcm_allocate_device+0x1f8>
		0000000000012480:  R_AARCH64_CALL26	__mutex_init
   12484: 910d2260     	add	x0, x19, #0x348
   12488: aa1403e1     	mov	x1, x20
   1248c: aa1503e2     	mov	x2, x21
   12490: 94000000     	bl	0x12490 <syna_tcm_allocate_device+0x208>
		0000000000012490:  R_AARCH64_CALL26	__mutex_init
   12494: b901fa7f     	str	wzr, [x19, #0x1f8]
   12498: 394a0262     	ldrb	w2, [x19, #0x280]
   1249c: 7903fa7f     	strh	wzr, [x19, #0x1fc]
   124a0: b902027f     	str	wzr, [x19, #0x200]
   124a4: 3908127f     	strb	wzr, [x19, #0x204]
   124a8: 340000c2     	cbz	w2, 0x124c0 <syna_tcm_allocate_device+0x238>
   124ac: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000124ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   124b0: 91000000     	add	x0, x0, #0x0
		00000000000124b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   124b4: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000124b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   124b8: 91000021     	add	x1, x1, #0x0
		00000000000124b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   124bc: 94000000     	bl	0x124bc <syna_tcm_allocate_device+0x234>
		00000000000124bc:  R_AARCH64_CALL26	_printk
   124c0: 91094260     	add	x0, x19, #0x250
   124c4: 94000000     	bl	0x124c4 <syna_tcm_allocate_device+0x23c>
		00000000000124c4:  R_AARCH64_CALL26	mutex_lock
   124c8: 394a0268     	ldrb	w8, [x19, #0x280]
   124cc: b9424a75     	ldr	w21, [x19, #0x248]
   124d0: f9412260     	ldr	x0, [x19, #0x240]
   124d4: 11000508     	add	w8, w8, #0x1
   124d8: 71000ebf     	cmp	w21, #0x3
   124dc: 390a0268     	strb	w8, [x19, #0x280]
   124e0: 54000c88     	b.hi	0x12670 <syna_tcm_allocate_device+0x3e8>
   124e4: b4000180     	cbz	x0, 0x12514 <syna_tcm_allocate_device+0x28c>
   124e8: aa0003f4     	mov	x20, x0
   124ec: 94000000     	bl	0x124ec <syna_tcm_allocate_device+0x264>
		00000000000124ec:  R_AARCH64_CALL26	syna_request_managed_device
   124f0: b50000e0     	cbnz	x0, 0x1250c <syna_tcm_allocate_device+0x284>
   124f4: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000124f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   124f8: 91000000     	add	x0, x0, #0x0
		00000000000124f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   124fc: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000124fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   12500: 91000021     	add	x1, x1, #0x0
		0000000000012500:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   12504: 94000000     	bl	0x12504 <syna_tcm_allocate_device+0x27c>
		0000000000012504:  R_AARCH64_CALL26	_printk
   12508: 14000003     	b	0x12514 <syna_tcm_allocate_device+0x28c>
   1250c: aa1403e1     	mov	x1, x20
   12510: 94000000     	bl	0x12510 <syna_tcm_allocate_device+0x288>
		0000000000012510:  R_AARCH64_CALL26	devm_kfree
   12514: 91090274     	add	x20, x19, #0x240
   12518: 94000000     	bl	0x12518 <syna_tcm_allocate_device+0x290>
		0000000000012518:  R_AARCH64_CALL26	syna_request_managed_device
   1251c: b5000100     	cbnz	x0, 0x1253c <syna_tcm_allocate_device+0x2b4>
   12520: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012520:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   12524: 91000000     	add	x0, x0, #0x0
		0000000000012524:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   12528: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012528:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
   1252c: 91000021     	add	x1, x1, #0x0
		000000000001252c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
   12530: 94000000     	bl	0x12530 <syna_tcm_allocate_device+0x2a8>
		0000000000012530:  R_AARCH64_CALL26	_printk
   12534: f900029f     	str	xzr, [x20]
   12538: 14000007     	b	0x12554 <syna_tcm_allocate_device+0x2cc>
   1253c: 52800081     	mov	w1, #0x4                // =4
   12540: 5281b802     	mov	w2, #0xdc0              // =3520
   12544: 52800095     	mov	w21, #0x4               // =4
   12548: 94000000     	bl	0x12548 <syna_tcm_allocate_device+0x2c0>
		0000000000012548:  R_AARCH64_CALL26	devm_kmalloc
   1254c: f9000280     	str	x0, [x20]
   12550: b50008e0     	cbnz	x0, 0x1266c <syna_tcm_allocate_device+0x3e4>
   12554: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012554:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d74
   12558: 91000000     	add	x0, x0, #0x0
		0000000000012558:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d74
   1255c: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		000000000001255c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77fc
   12560: 91000021     	add	x1, x1, #0x0
		0000000000012560:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77fc
   12564: 52800082     	mov	w2, #0x4                // =4
   12568: 94000000     	bl	0x12568 <syna_tcm_allocate_device+0x2e0>
		0000000000012568:  R_AARCH64_CALL26	_printk
   1256c: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		000000000001256c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x490a
   12570: 91000000     	add	x0, x0, #0x0
		0000000000012570:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x490a
   12574: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012574:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9dca
   12578: 91000021     	add	x1, x1, #0x0
		0000000000012578:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9dca
   1257c: 52800082     	mov	w2, #0x4                // =4
   12580: f901267f     	str	xzr, [x19, #0x248]
   12584: 94000000     	bl	0x12584 <syna_tcm_allocate_device+0x2fc>
		0000000000012584:  R_AARCH64_CALL26	_printk
   12588: 394a0262     	ldrb	w2, [x19, #0x280]
   1258c: f901267f     	str	xzr, [x19, #0x248]
   12590: 7100045f     	cmp	w2, #0x1
   12594: 54000061     	b.ne	0x125a0 <syna_tcm_allocate_device+0x318>
   12598: 2a1f03e8     	mov	w8, wzr
   1259c: 14000008     	b	0x125bc <syna_tcm_allocate_device+0x334>
   125a0: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000125a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   125a4: 91000000     	add	x0, x0, #0x0
		00000000000125a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   125a8: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000125a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   125ac: 91000021     	add	x1, x1, #0x0
		00000000000125ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   125b0: 94000000     	bl	0x125b0 <syna_tcm_allocate_device+0x328>
		00000000000125b0:  R_AARCH64_CALL26	_printk
   125b4: 394a0268     	ldrb	w8, [x19, #0x280]
   125b8: 51000508     	sub	w8, w8, #0x1
   125bc: 91094260     	add	x0, x19, #0x250
   125c0: 390a0268     	strb	w8, [x19, #0x280]
   125c4: 94000000     	bl	0x125c4 <syna_tcm_allocate_device+0x33c>
		00000000000125c4:  R_AARCH64_CALL26	mutex_unlock
   125c8: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000125c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa432
   125cc: 91000000     	add	x0, x0, #0x0
		00000000000125cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa432
   125d0: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000125d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5472
   125d4: 91000021     	add	x1, x1, #0x0
		00000000000125d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5472
   125d8: 94000000     	bl	0x125d8 <syna_tcm_allocate_device+0x350>
		00000000000125d8:  R_AARCH64_CALL26	_printk
   125dc: 39474262     	ldrb	w2, [x19, #0x1d0]
   125e0: 35000d62     	cbnz	w2, 0x1278c <syna_tcm_allocate_device+0x504>
   125e4: f940ca74     	ldr	x20, [x19, #0x190]
   125e8: 94000000     	bl	0x125e8 <syna_tcm_allocate_device+0x360>
		00000000000125e8:  R_AARCH64_CALL26	syna_request_managed_device
   125ec: b4000dc0     	cbz	x0, 0x127a4 <syna_tcm_allocate_device+0x51c>
   125f0: b4000074     	cbz	x20, 0x125fc <syna_tcm_allocate_device+0x374>
   125f4: aa1403e1     	mov	x1, x20
   125f8: 94000000     	bl	0x125f8 <syna_tcm_allocate_device+0x370>
		00000000000125f8:  R_AARCH64_CALL26	devm_kfree
   125fc: 39450262     	ldrb	w2, [x19, #0x140]
   12600: f900ce7f     	str	xzr, [x19, #0x198]
   12604: 3907427f     	strb	wzr, [x19, #0x1d0]
   12608: 35000da2     	cbnz	w2, 0x127bc <syna_tcm_allocate_device+0x534>
   1260c: f9408274     	ldr	x20, [x19, #0x100]
   12610: 94000000     	bl	0x12610 <syna_tcm_allocate_device+0x388>
		0000000000012610:  R_AARCH64_CALL26	syna_request_managed_device
   12614: b4000e00     	cbz	x0, 0x127d4 <syna_tcm_allocate_device+0x54c>
   12618: b4000074     	cbz	x20, 0x12624 <syna_tcm_allocate_device+0x39c>
   1261c: aa1403e1     	mov	x1, x20
   12620: 94000000     	bl	0x12620 <syna_tcm_allocate_device+0x398>
		0000000000012620:  R_AARCH64_CALL26	devm_kfree
   12624: 39462262     	ldrb	w2, [x19, #0x188]
   12628: f900867f     	str	xzr, [x19, #0x108]
   1262c: 3905027f     	strb	wzr, [x19, #0x140]
   12630: 35000de2     	cbnz	w2, 0x127ec <syna_tcm_allocate_device+0x564>
   12634: f940a674     	ldr	x20, [x19, #0x148]
   12638: 94000000     	bl	0x12638 <syna_tcm_allocate_device+0x3b0>
		0000000000012638:  R_AARCH64_CALL26	syna_request_managed_device
   1263c: b4000e40     	cbz	x0, 0x12804 <syna_tcm_allocate_device+0x57c>
   12640: b4000074     	cbz	x20, 0x1264c <syna_tcm_allocate_device+0x3c4>
   12644: aa1403e1     	mov	x1, x20
   12648: 94000000     	bl	0x12648 <syna_tcm_allocate_device+0x3c0>
		0000000000012648:  R_AARCH64_CALL26	devm_kfree
   1264c: f900aa7f     	str	xzr, [x19, #0x150]
   12650: 3906227f     	strb	wzr, [x19, #0x188]
   12654: f900267f     	str	xzr, [x19, #0x48]
   12658: 94000000     	bl	0x12658 <syna_tcm_allocate_device+0x3d0>
		0000000000012658:  R_AARCH64_CALL26	syna_request_managed_device
   1265c: b4000e00     	cbz	x0, 0x1281c <syna_tcm_allocate_device+0x594>
   12660: aa1303e1     	mov	x1, x19
   12664: 94000000     	bl	0x12664 <syna_tcm_allocate_device+0x3dc>
		0000000000012664:  R_AARCH64_CALL26	devm_kfree
   12668: 17ffff41     	b	0x1236c <syna_tcm_allocate_device+0xe4>
   1266c: b9024a75     	str	w21, [x19, #0x248]
   12670: 2a1503e2     	mov	w2, w21
   12674: 2a1f03e1     	mov	w1, wzr
   12678: 94000000     	bl	0x12678 <syna_tcm_allocate_device+0x3f0>
		0000000000012678:  R_AARCH64_CALL26	memset
   1267c: 394a0262     	ldrb	w2, [x19, #0x280]
   12680: 2a1f03e8     	mov	w8, wzr
   12684: 52800089     	mov	w9, #0x4                // =4
   12688: f9012669     	str	x9, [x19, #0x248]
   1268c: 7100045f     	cmp	w2, #0x1
   12690: 54000100     	b.eq	0x126b0 <syna_tcm_allocate_device+0x428>
   12694: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012694:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   12698: 91000000     	add	x0, x0, #0x0
		0000000000012698:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   1269c: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		000000000001269c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   126a0: 91000021     	add	x1, x1, #0x0
		00000000000126a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   126a4: 94000000     	bl	0x126a4 <syna_tcm_allocate_device+0x41c>
		00000000000126a4:  R_AARCH64_CALL26	_printk
   126a8: 394a0268     	ldrb	w8, [x19, #0x280]
   126ac: 51000508     	sub	w8, w8, #0x1
   126b0: 91094260     	add	x0, x19, #0x250
   126b4: 390a0268     	strb	w8, [x19, #0x280]
   126b8: 94000000     	bl	0x126b8 <syna_tcm_allocate_device+0x430>
		00000000000126b8:  R_AARCH64_CALL26	mutex_unlock
   126bc: 910e0a68     	add	x8, x19, #0x382
   126c0: 390dea7f     	strb	wzr, [x19, #0x37a]
   126c4: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000126c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaac4
   126c8: 91000000     	add	x0, x0, #0x0
		00000000000126c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaac4
   126cc: b900011f     	str	wzr, [x8]
   126d0: d2817708     	mov	x8, #0xbb8              // =3000
   126d4: f2c00288     	movk	x8, #0x14, lsl #32
   126d8: b9037e7f     	str	wzr, [x19, #0x37c]
   126dc: 52800042     	mov	w2, #0x2                // =2
   126e0: f9010668     	str	x8, [x19, #0x208]
   126e4: d2800648     	mov	x8, #0x32               // =50
   126e8: 52800183     	mov	w3, #0xc                // =12
   126ec: f2c00c88     	movk	x8, #0x64, lsl #32
   126f0: 390e027f     	strb	wzr, [x19, #0x380]
   126f4: 2a1f03e4     	mov	w4, wzr
   126f8: f9010a68     	str	x8, [x19, #0x210]
   126fc: 52800148     	mov	w8, #0xa                // =10
   12700: b9021a68     	str	w8, [x19, #0x218]
   12704: d2800c88     	mov	x8, #0x64               // =100
   12708: f2c00c88     	movk	x8, #0x64, lsl #32
   1270c: 3900267f     	strb	wzr, [x19, #0x9]
   12710: f900f668     	str	x8, [x19, #0x1e8]
   12714: f90002f3     	str	x19, [x23]
   12718: 90000013     	adrp	x19, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012718:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5472
   1271c: 91000273     	add	x19, x19, #0x0
		000000000001271c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5472
   12720: aa1303e1     	mov	x1, x19
   12724: 94000000     	bl	0x12724 <syna_tcm_allocate_device+0x49c>
		0000000000012724:  R_AARCH64_CALL26	_printk
   12728: 394052c8     	ldrb	w8, [x22, #0x14]
   1272c: 90000014     	adrp	x20, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		000000000001272c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8886
   12730: 91000294     	add	x20, x20, #0x0
		0000000000012730:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8886
   12734: 90000015     	adrp	x21, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012734:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x468c
   12738: 910002b5     	add	x21, x21, #0x0
		0000000000012738:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x468c
   1273c: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		000000000001273c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5922
   12740: 91000000     	add	x0, x0, #0x0
		0000000000012740:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5922
   12744: 7100011f     	cmp	w8, #0x0
   12748: aa1303e1     	mov	x1, x19
   1274c: 9a9412a2     	csel	x2, x21, x20, ne
   12750: 94000000     	bl	0x12750 <syna_tcm_allocate_device+0x4c8>
		0000000000012750:  R_AARCH64_CALL26	_printk
   12754: 394056c9     	ldrb	w9, [x22, #0x15]
   12758: 2a1f03e0     	mov	w0, wzr
   1275c: 7100053f     	cmp	w9, #0x1
   12760: 54ffdc21     	b.ne	0x122e4 <syna_tcm_allocate_device+0x5c>
   12764: 294312c3     	ldp	w3, w4, [x22, #0x18]
   12768: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012768:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbeea
   1276c: 91000000     	add	x0, x0, #0x0
		000000000001276c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbeea
   12770: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012770:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5472
   12774: 91000021     	add	x1, x1, #0x0
		0000000000012774:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5472
   12778: 7100007f     	cmp	w3, #0x0
   1277c: 9a950282     	csel	x2, x20, x21, eq
   12780: 94000000     	bl	0x12780 <syna_tcm_allocate_device+0x4f8>
		0000000000012780:  R_AARCH64_CALL26	_printk
   12784: 2a1f03e0     	mov	w0, wzr
   12788: 17fffed7     	b	0x122e4 <syna_tcm_allocate_device+0x5c>
   1278c: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		000000000001278c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
   12790: 91000000     	add	x0, x0, #0x0
		0000000000012790:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
   12794: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012794:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
   12798: 91000021     	add	x1, x1, #0x0
		0000000000012798:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
   1279c: 94000000     	bl	0x1279c <syna_tcm_allocate_device+0x514>
		000000000001279c:  R_AARCH64_CALL26	_printk
   127a0: 17ffff91     	b	0x125e4 <syna_tcm_allocate_device+0x35c>
   127a4: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000127a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   127a8: 91000000     	add	x0, x0, #0x0
		00000000000127a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   127ac: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000127ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   127b0: 91000021     	add	x1, x1, #0x0
		00000000000127b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   127b4: 94000000     	bl	0x127b4 <syna_tcm_allocate_device+0x52c>
		00000000000127b4:  R_AARCH64_CALL26	_printk
   127b8: 17ffff91     	b	0x125fc <syna_tcm_allocate_device+0x374>
   127bc: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000127bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
   127c0: 91000000     	add	x0, x0, #0x0
		00000000000127c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
   127c4: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000127c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
   127c8: 91000021     	add	x1, x1, #0x0
		00000000000127c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
   127cc: 94000000     	bl	0x127cc <syna_tcm_allocate_device+0x544>
		00000000000127cc:  R_AARCH64_CALL26	_printk
   127d0: 17ffff8f     	b	0x1260c <syna_tcm_allocate_device+0x384>
   127d4: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000127d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   127d8: 91000000     	add	x0, x0, #0x0
		00000000000127d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   127dc: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000127dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   127e0: 91000021     	add	x1, x1, #0x0
		00000000000127e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   127e4: 94000000     	bl	0x127e4 <syna_tcm_allocate_device+0x55c>
		00000000000127e4:  R_AARCH64_CALL26	_printk
   127e8: 17ffff8f     	b	0x12624 <syna_tcm_allocate_device+0x39c>
   127ec: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000127ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
   127f0: 91000000     	add	x0, x0, #0x0
		00000000000127f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
   127f4: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000127f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
   127f8: 91000021     	add	x1, x1, #0x0
		00000000000127f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
   127fc: 94000000     	bl	0x127fc <syna_tcm_allocate_device+0x574>
		00000000000127fc:  R_AARCH64_CALL26	_printk
   12800: 17ffff8d     	b	0x12634 <syna_tcm_allocate_device+0x3ac>
   12804: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012804:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   12808: 91000000     	add	x0, x0, #0x0
		0000000000012808:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   1280c: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		000000000001280c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   12810: 91000021     	add	x1, x1, #0x0
		0000000000012810:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   12814: 94000000     	bl	0x12814 <syna_tcm_allocate_device+0x58c>
		0000000000012814:  R_AARCH64_CALL26	_printk
   12818: 17ffff8d     	b	0x1264c <syna_tcm_allocate_device+0x3c4>
   1281c: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		000000000001281c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   12820: 91000000     	add	x0, x0, #0x0
		0000000000012820:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   12824: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012824:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   12828: 91000021     	add	x1, x1, #0x0
		0000000000012828:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   1282c: 17fffecf     	b	0x12368 <syna_tcm_allocate_device+0xe0>
