
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002525c <zte_touch_deinit>:
   2525c: d503233f     	paciasp
   25260: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   25264: f9000bf9     	str	x25, [sp, #0x10]
   25268: a9025ff8     	stp	x24, x23, [sp, #0x20]
   2526c: a90357f6     	stp	x22, x21, [sp, #0x30]
   25270: a9044ff4     	stp	x20, x19, [sp, #0x40]
   25274: 910003fd     	mov	x29, sp
   25278: 90000016     	adrp	x22, 0x25000 <tp_frame_data_write+0x6c>
		0000000000025278:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   2527c: f94002d7     	ldr	x23, [x22]
		000000000002527c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25280: b40000b7     	cbz	x23, 0x25294 <zte_touch_deinit+0x38>
   25284: 90000015     	adrp	x21, 0x25000 <tp_frame_data_write+0x6c>
		0000000000025284:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1474
   25288: 394002a8     	ldrb	w8, [x21]
		0000000000025288:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x1474
   2528c: 7100051f     	cmp	w8, #0x1
   25290: 540000a1     	b.ne	0x252a4 <zte_touch_deinit+0x48>
   25294: 90000000     	adrp	x0, 0x25000 <tp_frame_data_write+0x6c>
		0000000000025294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12888
   25298: 91000000     	add	x0, x0, #0x0
		0000000000025298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12888
   2529c: 94000000     	bl	0x2529c <zte_touch_deinit+0x40>
		000000000002529c:  R_AARCH64_CALL26	_printk
   252a0: 14000046     	b	0x253b8 <zte_touch_deinit+0x15c>
   252a4: 94000000     	bl	0x252a4 <zte_touch_deinit+0x48>
		00000000000252a4:  R_AARCH64_CALL26	ufp_mac_exit
   252a8: 90000013     	adrp	x19, 0x25000 <tp_frame_data_write+0x6c>
		00000000000252a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1272e
   252ac: 91000273     	add	x19, x19, #0x0
		00000000000252ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1272e
   252b0: 90000014     	adrp	x20, 0x25000 <tp_frame_data_write+0x6c>
		00000000000252b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a836
   252b4: 91000294     	add	x20, x20, #0x0
		00000000000252b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a836
   252b8: f94002d8     	ldr	x24, [x22]
		00000000000252b8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   252bc: aa1303e0     	mov	x0, x19
   252c0: aa1403e1     	mov	x1, x20
   252c4: 94000000     	bl	0x252c4 <zte_touch_deinit+0x68>
		00000000000252c4:  R_AARCH64_CALL26	_printk
   252c8: 91294300     	add	x0, x24, #0xa50
   252cc: 94000000     	bl	0x252cc <zte_touch_deinit+0x70>
		00000000000252cc:  R_AARCH64_CALL26	cancel_delayed_work_sync
   252d0: f945f700     	ldr	x0, [x24, #0xbe8]
   252d4: 94000000     	bl	0x252d4 <zte_touch_deinit+0x78>
		00000000000252d4:  R_AARCH64_CALL26	vfree
   252d8: f905f71f     	str	xzr, [x24, #0xbe8]
   252dc: 94000000     	bl	0x252dc <zte_touch_deinit+0x80>
		00000000000252dc:  R_AARCH64_CALL26	tpd_proc_deinit
   252e0: f94002d8     	ldr	x24, [x22]
		00000000000252e0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   252e4: 90000001     	adrp	x1, 0x25000 <tp_frame_data_write+0x6c>
		00000000000252e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x160a2
   252e8: 91000021     	add	x1, x1, #0x0
		00000000000252e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x160a2
   252ec: aa1303e0     	mov	x0, x19
   252f0: 94000000     	bl	0x252f0 <zte_touch_deinit+0x94>
		00000000000252f0:  R_AARCH64_CALL26	_printk
   252f4: 94000000     	bl	0x252f4 <zte_touch_deinit+0x98>
		00000000000252f4:  R_AARCH64_CALL26	tpd_report_work_deinit
   252f8: 94000000     	bl	0x252f8 <zte_touch_deinit+0x9c>
		00000000000252f8:  R_AARCH64_CALL26	tpd_resume_work_deinit
   252fc: f94002d9     	ldr	x25, [x22]
		00000000000252fc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25300: 90000001     	adrp	x1, 0x25000 <tp_frame_data_write+0x6c>
		0000000000025300:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x127a0
   25304: 91000021     	add	x1, x1, #0x0
		0000000000025304:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x127a0
   25308: aa1303e0     	mov	x0, x19
   2530c: 94000000     	bl	0x2530c <zte_touch_deinit+0xb0>
		000000000002530c:  R_AARCH64_CALL26	_printk
   25310: 91234320     	add	x0, x25, #0x8d0
   25314: 94000000     	bl	0x25314 <zte_touch_deinit+0xb8>
		0000000000025314:  R_AARCH64_CALL26	cancel_delayed_work_sync
   25318: f94002d9     	ldr	x25, [x22]
		0000000000025318:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   2531c: aa1303e0     	mov	x0, x19
   25320: aa1403e1     	mov	x1, x20
   25324: 94000000     	bl	0x25324 <zte_touch_deinit+0xc8>
		0000000000025324:  R_AARCH64_CALL26	_printk
   25328: 91294320     	add	x0, x25, #0xa50
   2532c: 94000000     	bl	0x2532c <zte_touch_deinit+0xd0>
		000000000002532c:  R_AARCH64_CALL26	cancel_delayed_work_sync
   25330: f945f720     	ldr	x0, [x25, #0xbe8]
   25334: 94000000     	bl	0x25334 <zte_touch_deinit+0xd8>
		0000000000025334:  R_AARCH64_CALL26	vfree
   25338: 9124e300     	add	x0, x24, #0x938
   2533c: f905f73f     	str	xzr, [x25, #0xbe8]
   25340: 94000000     	bl	0x25340 <zte_touch_deinit+0xe4>
		0000000000025340:  R_AARCH64_CALL26	cancel_delayed_work_sync
   25344: f9425ae8     	ldr	x8, [x23, #0x4b0]
   25348: b5000068     	cbnz	x8, 0x25354 <zte_touch_deinit+0xf8>
   2534c: aa1f03e0     	mov	x0, xzr
   25350: 94000000     	bl	0x25350 <zte_touch_deinit+0xf4>
		0000000000025350:  R_AARCH64_CALL26	destroy_workqueue
   25354: f94002d3     	ldr	x19, [x22]
		0000000000025354:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25358: f9462a60     	ldr	x0, [x19, #0xc50]
   2535c: b40000e0     	cbz	x0, 0x25378 <zte_touch_deinit+0x11c>
   25360: 90000001     	adrp	x1, 0x25000 <tp_frame_data_write+0x6c>
		0000000000025360:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x5780
   25364: 91000021     	add	x1, x1, #0x0
		0000000000025364:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x5780
   25368: 94000000     	bl	0x25368 <zte_touch_deinit+0x10c>
		0000000000025368:  R_AARCH64_CALL26	sysfs_remove_bin_file
   2536c: f9462a60     	ldr	x0, [x19, #0xc50]
   25370: 94000000     	bl	0x25370 <zte_touch_deinit+0x114>
		0000000000025370:  R_AARCH64_CALL26	kobject_put
   25374: f94002d3     	ldr	x19, [x22]
		0000000000025374:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25378: f946ea68     	ldr	x8, [x19, #0xdd0]
   2537c: b50001a8     	cbnz	x8, 0x253b0 <zte_touch_deinit+0x154>
   25380: 52806708     	mov	w8, #0x338              // =824
   25384: 52800200     	mov	w0, #0x10               // =16
   25388: f9400108     	ldr	x8, [x8]
   2538c: b85fc110     	ldur	w16, [x8, #-0x4]
   25390: 72971911     	movk	w17, #0xb8c8
   25394: 72ad9031     	movk	w17, #0x6c81, lsl #16
   25398: 6b11021f     	cmp	w16, w17
   2539c: 54000040     	b.eq	0x253a4 <zte_touch_deinit+0x148>
   253a0: d4304500     	brk	#0x8228
   253a4: d63f0100     	blr	x8
   253a8: f946ea60     	ldr	x0, [x19, #0xdd0]
   253ac: 94000000     	bl	0x253ac <zte_touch_deinit+0x150>
		00000000000253ac:  R_AARCH64_CALL26	platform_device_unregister
   253b0: 52800028     	mov	w8, #0x1                // =1
   253b4: 390002a8     	strb	w8, [x21]
		00000000000253b4:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x1474
   253b8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   253bc: f9400bf9     	ldr	x25, [sp, #0x10]
   253c0: a94357f6     	ldp	x22, x21, [sp, #0x30]
   253c4: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   253c8: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   253cc: d50323bf     	autiasp
   253d0: d65f03c0     	ret
