
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e6dc <zte_touch_shutdown>:
    e6dc: d503233f     	paciasp
    e6e0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    e6e4: a90157f6     	stp	x22, x21, [sp, #0x10]
    e6e8: a9024ff4     	stp	x20, x19, [sp, #0x20]
    e6ec: 910003fd     	mov	x29, sp
    e6f0: 90000014     	adrp	x20, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e6f0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    e6f4: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e6f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a7ec
    e6f8: 91000000     	add	x0, x0, #0x0
		000000000000e6f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a7ec
    e6fc: f9400293     	ldr	x19, [x20]
		000000000000e6fc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    e700: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e700:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b43c
    e704: 91000021     	add	x1, x1, #0x0
		000000000000e704:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b43c
    e708: 52816c02     	mov	w2, #0xb60              // =2912
    e70c: 94000000     	bl	0xe70c <zte_touch_shutdown+0x30>
		000000000000e70c:  R_AARCH64_CALL26	_printk
    e710: f947ca68     	ldr	x8, [x19, #0xf90]
    e714: b4000128     	cbz	x8, 0xe738 <zte_touch_shutdown+0x5c>
    e718: aa1303e0     	mov	x0, x19
    e71c: b85fc110     	ldur	w16, [x8, #-0x4]
    e720: 7281af31     	movk	w17, #0xd79
    e724: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    e728: 6b11021f     	cmp	w16, w17
    e72c: 54000040     	b.eq	0xe734 <zte_touch_shutdown+0x58>
    e730: d4304500     	brk	#0x8228
    e734: d63f0100     	blr	x8
    e738: 90000013     	adrp	x19, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e738:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17875
    e73c: 91000273     	add	x19, x19, #0x0
		000000000000e73c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17875
    e740: f9400295     	ldr	x21, [x20]
		000000000000e740:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    e744: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e744:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19211
    e748: 91000021     	add	x1, x1, #0x0
		000000000000e748:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19211
    e74c: aa1303e0     	mov	x0, x19
    e750: 94000000     	bl	0xe750 <zte_touch_shutdown+0x74>
		000000000000e750:  R_AARCH64_CALL26	_printk
    e754: 94000000     	bl	0xe754 <zte_touch_shutdown+0x78>
		000000000000e754:  R_AARCH64_CALL26	tpd_report_work_deinit
    e758: 94000000     	bl	0xe758 <zte_touch_shutdown+0x7c>
		000000000000e758:  R_AARCH64_CALL26	tpd_resume_work_deinit
    e75c: f9400296     	ldr	x22, [x20]
		000000000000e75c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    e760: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e760:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17894
    e764: 91000021     	add	x1, x1, #0x0
		000000000000e764:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17894
    e768: aa1303e0     	mov	x0, x19
    e76c: 94000000     	bl	0xe76c <zte_touch_shutdown+0x90>
		000000000000e76c:  R_AARCH64_CALL26	_printk
    e770: 912342c0     	add	x0, x22, #0x8d0
    e774: 94000000     	bl	0xe774 <zte_touch_shutdown+0x98>
		000000000000e774:  R_AARCH64_CALL26	cancel_delayed_work_sync
    e778: f9400294     	ldr	x20, [x20]
		000000000000e778:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    e77c: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e77c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b1f1
    e780: 91000021     	add	x1, x1, #0x0
		000000000000e780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b1f1
    e784: aa1303e0     	mov	x0, x19
    e788: 94000000     	bl	0xe788 <zte_touch_shutdown+0xac>
		000000000000e788:  R_AARCH64_CALL26	_printk
    e78c: 91294280     	add	x0, x20, #0xa50
    e790: 94000000     	bl	0xe790 <zte_touch_shutdown+0xb4>
		000000000000e790:  R_AARCH64_CALL26	cancel_delayed_work_sync
    e794: f945f680     	ldr	x0, [x20, #0xbe8]
    e798: 94000000     	bl	0xe798 <zte_touch_shutdown+0xbc>
		000000000000e798:  R_AARCH64_CALL26	vfree
    e79c: 9124e2a0     	add	x0, x21, #0x938
    e7a0: f905f69f     	str	xzr, [x20, #0xbe8]
    e7a4: 94000000     	bl	0xe7a4 <zte_touch_shutdown+0xc8>
		000000000000e7a4:  R_AARCH64_CALL26	cancel_delayed_work_sync
    e7a8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    e7ac: a94157f6     	ldp	x22, x21, [sp, #0x10]
    e7b0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    e7b4: d50323bf     	autiasp
    e7b8: d65f03c0     	ret
