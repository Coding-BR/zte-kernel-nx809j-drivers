
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000242e4 <zte_touch_deinit>:
   242e4: d503233f     	paciasp
   242e8: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   242ec: f9000bf9     	str	x25, [sp, #0x10]
   242f0: a9025ff8     	stp	x24, x23, [sp, #0x20]
   242f4: a90357f6     	stp	x22, x21, [sp, #0x30]
   242f8: a9044ff4     	stp	x20, x19, [sp, #0x40]
   242fc: 910003fd     	mov	x29, sp
   24300: 90000016     	adrp	x22, 0x24000 <ufp_report_gesture_uevent+0x9c>
		0000000000024300:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   24304: f94002d7     	ldr	x23, [x22]
		0000000000024304:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   24308: b4000a17     	cbz	x23, 0x24448 <zte_touch_deinit+0x164>
   2430c: 90000015     	adrp	x21, 0x24000 <ufp_report_gesture_uevent+0x9c>
		000000000002430c:  R_AARCH64_ADR_PREL_PG_HI21	zte_touch_deinit_ztp_release
   24310: b94002a8     	ldr	w8, [x21]
		0000000000024310:  R_AARCH64_LDST32_ABS_LO12_NC	zte_touch_deinit_ztp_release
   24314: 7100051f     	cmp	w8, #0x1
   24318: 54000980     	b.eq	0x24448 <zte_touch_deinit+0x164>
   2431c: 94000000     	bl	0x2431c <zte_touch_deinit+0x38>
		000000000002431c:  R_AARCH64_CALL26	ufp_mac_exit
   24320: 90000013     	adrp	x19, 0x24000 <ufp_report_gesture_uevent+0x9c>
		0000000000024320:  R_AARCH64_ADR_PREL_PG_HI21	unk_322AA
   24324: 91000273     	add	x19, x19, #0x0
		0000000000024324:  R_AARCH64_ADD_ABS_LO12_NC	unk_322AA
   24328: 90000014     	adrp	x20, 0x24000 <ufp_report_gesture_uevent+0x9c>
		0000000000024328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5430
   2432c: 91000294     	add	x20, x20, #0x0
		000000000002432c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5430
   24330: f94002d8     	ldr	x24, [x22]
		0000000000024330:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   24334: aa1303e0     	mov	x0, x19
   24338: aa1403e1     	mov	x1, x20
   2433c: 94000000     	bl	0x2433c <zte_touch_deinit+0x58>
		000000000002433c:  R_AARCH64_CALL26	_printk
   24340: 91294300     	add	x0, x24, #0xa50
   24344: 94000000     	bl	0x24344 <zte_touch_deinit+0x60>
		0000000000024344:  R_AARCH64_CALL26	cancel_delayed_work_sync
   24348: f945f700     	ldr	x0, [x24, #0xbe8]
   2434c: 94000000     	bl	0x2434c <zte_touch_deinit+0x68>
		000000000002434c:  R_AARCH64_CALL26	vfree
   24350: f905f71f     	str	xzr, [x24, #0xbe8]
   24354: 94000000     	bl	0x24354 <zte_touch_deinit+0x70>
		0000000000024354:  R_AARCH64_CALL26	tpd_proc_deinit
   24358: f94002d8     	ldr	x24, [x22]
		0000000000024358:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   2435c: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0x9c>
		000000000002435c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c3e
   24360: 91000021     	add	x1, x1, #0x0
		0000000000024360:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c3e
   24364: aa1303e0     	mov	x0, x19
   24368: 94000000     	bl	0x24368 <zte_touch_deinit+0x84>
		0000000000024368:  R_AARCH64_CALL26	_printk
   2436c: 94000000     	bl	0x2436c <zte_touch_deinit+0x88>
		000000000002436c:  R_AARCH64_CALL26	tpd_report_work_deinit
   24370: 94000000     	bl	0x24370 <zte_touch_deinit+0x8c>
		0000000000024370:  R_AARCH64_CALL26	tpd_resume_work_deinit
   24374: f94002d9     	ldr	x25, [x22]
		0000000000024374:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   24378: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0x9c>
		0000000000024378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x935
   2437c: 91000021     	add	x1, x1, #0x0
		000000000002437c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x935
   24380: aa1303e0     	mov	x0, x19
   24384: 94000000     	bl	0x24384 <zte_touch_deinit+0xa0>
		0000000000024384:  R_AARCH64_CALL26	_printk
   24388: 91234320     	add	x0, x25, #0x8d0
   2438c: 94000000     	bl	0x2438c <zte_touch_deinit+0xa8>
		000000000002438c:  R_AARCH64_CALL26	cancel_delayed_work_sync
   24390: f94002d9     	ldr	x25, [x22]
		0000000000024390:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   24394: aa1303e0     	mov	x0, x19
   24398: aa1403e1     	mov	x1, x20
   2439c: 94000000     	bl	0x2439c <zte_touch_deinit+0xb8>
		000000000002439c:  R_AARCH64_CALL26	_printk
   243a0: 91294320     	add	x0, x25, #0xa50
   243a4: 94000000     	bl	0x243a4 <zte_touch_deinit+0xc0>
		00000000000243a4:  R_AARCH64_CALL26	cancel_delayed_work_sync
   243a8: f945f720     	ldr	x0, [x25, #0xbe8]
   243ac: 94000000     	bl	0x243ac <zte_touch_deinit+0xc8>
		00000000000243ac:  R_AARCH64_CALL26	vfree
   243b0: 9124e300     	add	x0, x24, #0x938
   243b4: f905f73f     	str	xzr, [x25, #0xbe8]
   243b8: 94000000     	bl	0x243b8 <zte_touch_deinit+0xd4>
		00000000000243b8:  R_AARCH64_CALL26	cancel_delayed_work_sync
   243bc: f9425ae8     	ldr	x8, [x23, #0x4b0]
   243c0: b5000068     	cbnz	x8, 0x243cc <zte_touch_deinit+0xe8>
   243c4: aa1f03e0     	mov	x0, xzr
   243c8: 94000000     	bl	0x243c8 <zte_touch_deinit+0xe4>
		00000000000243c8:  R_AARCH64_CALL26	destroy_workqueue
   243cc: f94002d3     	ldr	x19, [x22]
		00000000000243cc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   243d0: f9462a60     	ldr	x0, [x19, #0xc50]
   243d4: b40000e0     	cbz	x0, 0x243f0 <zte_touch_deinit+0x10c>
   243d8: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0x9c>
		00000000000243d8:  R_AARCH64_ADR_PREL_PG_HI21	fwimage_attr
   243dc: 91000021     	add	x1, x1, #0x0
		00000000000243dc:  R_AARCH64_ADD_ABS_LO12_NC	fwimage_attr
   243e0: 94000000     	bl	0x243e0 <zte_touch_deinit+0xfc>
		00000000000243e0:  R_AARCH64_CALL26	sysfs_remove_bin_file
   243e4: f9462a60     	ldr	x0, [x19, #0xc50]
   243e8: 94000000     	bl	0x243e8 <zte_touch_deinit+0x104>
		00000000000243e8:  R_AARCH64_CALL26	kobject_put
   243ec: f94002d3     	ldr	x19, [x22]
		00000000000243ec:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   243f0: f946ea68     	ldr	x8, [x19, #0xdd0]
   243f4: b5000248     	cbnz	x8, 0x2443c <zte_touch_deinit+0x158>
   243f8: 90000008     	adrp	x8, 0x24000 <ufp_report_gesture_uevent+0x9c>
		00000000000243f8:  R_AARCH64_ADR_PREL_PG_HI21	off_338
   243fc: 52971909     	mov	w9, #0xb8c8             // =47304
   24400: f9400114     	ldr	x20, [x8]
		0000000000024400:  R_AARCH64_LDST64_ABS_LO12_NC	off_338
   24404: 72ad9029     	movk	w9, #0x6c81, lsl #16
   24408: b85fc288     	ldur	w8, [x20, #-0x4]
   2440c: 6b09011f     	cmp	w8, w9
   24410: 54000301     	b.ne	0x24470 <zte_touch_deinit+0x18c>
   24414: 52800200     	mov	w0, #0x10               // =16
   24418: b85fc290     	ldur	w16, [x20, #-0x4]
   2441c: 72810691     	movk	w17, #0x834
   24420: 72a094f1     	movk	w17, #0x4a7, lsl #16
   24424: 6b11021f     	cmp	w16, w17
   24428: 54000040     	b.eq	0x24430 <zte_touch_deinit+0x14c>
   2442c: d4304680     	brk	#0x8234
   24430: d63f0280     	blr	x20
   24434: f946ea60     	ldr	x0, [x19, #0xdd0]
   24438: 94000000     	bl	0x24438 <zte_touch_deinit+0x154>
		0000000000024438:  R_AARCH64_CALL26	platform_device_unregister
   2443c: 52800028     	mov	w8, #0x1                // =1
   24440: b90002a8     	str	w8, [x21]
		0000000000024440:  R_AARCH64_LDST32_ABS_LO12_NC	zte_touch_deinit_ztp_release
   24444: 14000004     	b	0x24454 <zte_touch_deinit+0x170>
   24448: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x9c>
		0000000000024448:  R_AARCH64_ADR_PREL_PG_HI21	unk_323A0
   2444c: 91000000     	add	x0, x0, #0x0
		000000000002444c:  R_AARCH64_ADD_ABS_LO12_NC	unk_323A0
   24450: 94000000     	bl	0x24450 <zte_touch_deinit+0x16c>
		0000000000024450:  R_AARCH64_CALL26	_printk
   24454: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   24458: f9400bf9     	ldr	x25, [sp, #0x10]
   2445c: a94357f6     	ldp	x22, x21, [sp, #0x30]
   24460: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   24464: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   24468: d50323bf     	autiasp
   2446c: d65f03c0     	ret
   24470: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x9c>
		0000000000024470:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24
   24474: 91000000     	add	x0, x0, #0x0
		0000000000024474:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24
   24478: 90000002     	adrp	x2, 0x24000 <ufp_report_gesture_uevent+0x9c>
		0000000000024478:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3131
   2447c: 91000042     	add	x2, x2, #0x0
		000000000002447c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3131
   24480: 52904501     	mov	w1, #0x8228             // =33320
   24484: 52800603     	mov	w3, #0x30               // =48
   24488: 94000000     	bl	0x24488 <zte_touch_deinit+0x1a4>
		0000000000024488:  R_AARCH64_CALL26	_printk
   2448c: 17ffffe2     	b	0x24414 <zte_touch_deinit+0x130>
