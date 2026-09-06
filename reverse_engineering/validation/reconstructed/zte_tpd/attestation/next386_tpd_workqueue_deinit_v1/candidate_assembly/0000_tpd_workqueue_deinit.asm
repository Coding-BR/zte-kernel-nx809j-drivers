
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000228a4 <tpd_workqueue_deinit>:
   228a4: d503233f     	paciasp
   228a8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   228ac: a90157f6     	stp	x22, x21, [sp, #0x10]
   228b0: a9024ff4     	stp	x20, x19, [sp, #0x20]
   228b4: 910003fd     	mov	x29, sp
   228b8: 90000014     	adrp	x20, 0x22000 <tpd_touch_press+0x6b8>
		00000000000228b8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   228bc: 90000013     	adrp	x19, 0x22000 <tpd_touch_press+0x6b8>
		00000000000228bc:  R_AARCH64_ADR_PREL_PG_HI21	unk_322AA
   228c0: 91000273     	add	x19, x19, #0x0
		00000000000228c0:  R_AARCH64_ADD_ABS_LO12_NC	unk_322AA
   228c4: f9400295     	ldr	x21, [x20]
		00000000000228c4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   228c8: 90000001     	adrp	x1, 0x22000 <tpd_touch_press+0x6b8>
		00000000000228c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c3e
   228cc: 91000021     	add	x1, x1, #0x0
		00000000000228cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c3e
   228d0: aa1303e0     	mov	x0, x19
   228d4: 94000000     	bl	0x228d4 <tpd_workqueue_deinit+0x30>
		00000000000228d4:  R_AARCH64_CALL26	_printk
   228d8: 94000000     	bl	0x228d8 <tpd_workqueue_deinit+0x34>
		00000000000228d8:  R_AARCH64_CALL26	tpd_report_work_deinit
   228dc: 94000000     	bl	0x228dc <tpd_workqueue_deinit+0x38>
		00000000000228dc:  R_AARCH64_CALL26	tpd_resume_work_deinit
   228e0: f9400296     	ldr	x22, [x20]
		00000000000228e0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   228e4: 90000001     	adrp	x1, 0x22000 <tpd_touch_press+0x6b8>
		00000000000228e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x945
   228e8: 91000021     	add	x1, x1, #0x0
		00000000000228e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x945
   228ec: aa1303e0     	mov	x0, x19
   228f0: 94000000     	bl	0x228f0 <tpd_workqueue_deinit+0x4c>
		00000000000228f0:  R_AARCH64_CALL26	_printk
   228f4: 912342c0     	add	x0, x22, #0x8d0
   228f8: 94000000     	bl	0x228f8 <tpd_workqueue_deinit+0x54>
		00000000000228f8:  R_AARCH64_CALL26	cancel_delayed_work_sync
   228fc: f9400294     	ldr	x20, [x20]
		00000000000228fc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   22900: 90000001     	adrp	x1, 0x22000 <tpd_touch_press+0x6b8>
		0000000000022900:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5416
   22904: 91000021     	add	x1, x1, #0x0
		0000000000022904:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5416
   22908: aa1303e0     	mov	x0, x19
   2290c: 94000000     	bl	0x2290c <tpd_workqueue_deinit+0x68>
		000000000002290c:  R_AARCH64_CALL26	_printk
   22910: 91294280     	add	x0, x20, #0xa50
   22914: 94000000     	bl	0x22914 <tpd_workqueue_deinit+0x70>
		0000000000022914:  R_AARCH64_CALL26	cancel_delayed_work_sync
   22918: f945f680     	ldr	x0, [x20, #0xbe8]
   2291c: 94000000     	bl	0x2291c <tpd_workqueue_deinit+0x78>
		000000000002291c:  R_AARCH64_CALL26	vfree
   22920: 9124e2a0     	add	x0, x21, #0x938
   22924: f905f69f     	str	xzr, [x20, #0xbe8]
   22928: 94000000     	bl	0x22928 <tpd_workqueue_deinit+0x84>
		0000000000022928:  R_AARCH64_CALL26	cancel_delayed_work_sync
   2292c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   22930: a94157f6     	ldp	x22, x21, [sp, #0x10]
   22934: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   22938: d50323bf     	autiasp
   2293c: d65f03c0     	ret
