
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e680 <zte_touch_shutdown>:
    e680: d503233f     	paciasp
    e684: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    e688: a90157f6     	stp	x22, x21, [sp, #0x10]
    e68c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    e690: 910003fd     	mov	x29, sp
    e694: 90000014     	adrp	x20, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e694:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    e698: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e698:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a7ec
    e69c: 91000000     	add	x0, x0, #0x0
		000000000000e69c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a7ec
    e6a0: f9400293     	ldr	x19, [x20]
		000000000000e6a0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    e6a4: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e6a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b43c
    e6a8: 91000021     	add	x1, x1, #0x0
		000000000000e6a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b43c
    e6ac: 52816c02     	mov	w2, #0xb60              // =2912
    e6b0: 94000000     	bl	0xe6b0 <zte_touch_shutdown+0x30>
		000000000000e6b0:  R_AARCH64_CALL26	_printk
    e6b4: f947ca68     	ldr	x8, [x19, #0xf90]
    e6b8: b4000128     	cbz	x8, 0xe6dc <zte_touch_shutdown+0x5c>
    e6bc: aa1303e0     	mov	x0, x19
    e6c0: b85fc110     	ldur	w16, [x8, #-0x4]
    e6c4: 7281af31     	movk	w17, #0xd79
    e6c8: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    e6cc: 6b11021f     	cmp	w16, w17
    e6d0: 54000040     	b.eq	0xe6d8 <zte_touch_shutdown+0x58>
    e6d4: d4304500     	brk	#0x8228
    e6d8: d63f0100     	blr	x8
    e6dc: 90000013     	adrp	x19, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e6dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17875
    e6e0: 91000273     	add	x19, x19, #0x0
		000000000000e6e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17875
    e6e4: f9400295     	ldr	x21, [x20]
		000000000000e6e4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    e6e8: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e6e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19211
    e6ec: 91000021     	add	x1, x1, #0x0
		000000000000e6ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19211
    e6f0: aa1303e0     	mov	x0, x19
    e6f4: 94000000     	bl	0xe6f4 <zte_touch_shutdown+0x74>
		000000000000e6f4:  R_AARCH64_CALL26	_printk
    e6f8: 94000000     	bl	0xe6f8 <zte_touch_shutdown+0x78>
		000000000000e6f8:  R_AARCH64_CALL26	tpd_report_work_deinit
    e6fc: 94000000     	bl	0xe6fc <zte_touch_shutdown+0x7c>
		000000000000e6fc:  R_AARCH64_CALL26	tpd_resume_work_deinit
    e700: f9400296     	ldr	x22, [x20]
		000000000000e700:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    e704: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e704:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17894
    e708: 91000021     	add	x1, x1, #0x0
		000000000000e708:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17894
    e70c: aa1303e0     	mov	x0, x19
    e710: 94000000     	bl	0xe710 <zte_touch_shutdown+0x90>
		000000000000e710:  R_AARCH64_CALL26	_printk
    e714: 912342c0     	add	x0, x22, #0x8d0
    e718: 94000000     	bl	0xe718 <zte_touch_shutdown+0x98>
		000000000000e718:  R_AARCH64_CALL26	cancel_delayed_work_sync
    e71c: f9400294     	ldr	x20, [x20]
		000000000000e71c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    e720: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e720:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b1f1
    e724: 91000021     	add	x1, x1, #0x0
		000000000000e724:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b1f1
    e728: aa1303e0     	mov	x0, x19
    e72c: 94000000     	bl	0xe72c <zte_touch_shutdown+0xac>
		000000000000e72c:  R_AARCH64_CALL26	_printk
    e730: 91294280     	add	x0, x20, #0xa50
    e734: 94000000     	bl	0xe734 <zte_touch_shutdown+0xb4>
		000000000000e734:  R_AARCH64_CALL26	cancel_delayed_work_sync
    e738: f945f680     	ldr	x0, [x20, #0xbe8]
    e73c: 94000000     	bl	0xe73c <zte_touch_shutdown+0xbc>
		000000000000e73c:  R_AARCH64_CALL26	vfree
    e740: 9124e2a0     	add	x0, x21, #0x938
    e744: f905f69f     	str	xzr, [x20, #0xbe8]
    e748: 94000000     	bl	0xe748 <zte_touch_shutdown+0xc8>
		000000000000e748:  R_AARCH64_CALL26	cancel_delayed_work_sync
    e74c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    e750: a94157f6     	ldp	x22, x21, [sp, #0x10]
    e754: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    e758: d50323bf     	autiasp
    e75c: d65f03c0     	ret
