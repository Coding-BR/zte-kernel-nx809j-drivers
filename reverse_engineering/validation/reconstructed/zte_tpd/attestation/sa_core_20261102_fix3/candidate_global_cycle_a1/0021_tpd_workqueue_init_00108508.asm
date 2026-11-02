
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d2b8 <tpd_workqueue_init>:
    d2b8: d503233f     	paciasp
    d2bc: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    d2c0: a9015ff8     	stp	x24, x23, [sp, #0x10]
    d2c4: a90257f6     	stp	x22, x21, [sp, #0x20]
    d2c8: a9034ff4     	stp	x20, x19, [sp, #0x30]
    d2cc: 910003fd     	mov	x29, sp
    d2d0: 90000016     	adrp	x22, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d2d0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    d2d4: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d2d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19796
    d2d8: 91000000     	add	x0, x0, #0x0
		000000000000d2d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19796
    d2dc: f94002d5     	ldr	x21, [x22]
		000000000000d2dc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d2e0: 94000000     	bl	0xd2e0 <tpd_workqueue_init+0x28>
		000000000000d2e0:  R_AARCH64_CALL26	_printk
    d2e4: 52800141     	mov	w1, #0xa                // =10
    d2e8: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d2e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x197a3
    d2ec: 91000000     	add	x0, x0, #0x0
		000000000000d2ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x197a3
    d2f0: 90000003     	adrp	x3, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d2f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19e2b
    d2f4: 91000063     	add	x3, x3, #0x0
		000000000000d2f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19e2b
    d2f8: 72a000c1     	movk	w1, #0x6, lsl #16
    d2fc: 52800022     	mov	w2, #0x1                // =1
    d300: 94000000     	bl	0xd300 <tpd_workqueue_init+0x48>
		000000000000d300:  R_AARCH64_CALL26	alloc_workqueue
    d304: f9025aa0     	str	x0, [x21, #0x4b0]
    d308: b5000100     	cbnz	x0, 0xd328 <tpd_workqueue_init+0x70>
    d30c: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d30c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a9bd
    d310: 91000000     	add	x0, x0, #0x0
		000000000000d310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a9bd
    d314: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d314:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x197a6
    d318: 91000021     	add	x1, x1, #0x0
		000000000000d318:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x197a6
    d31c: 94000000     	bl	0xd31c <tpd_workqueue_init+0x64>
		000000000000d31c:  R_AARCH64_CALL26	_printk
    d320: 12800160     	mov	w0, #-0xc               // =-12
    d324: 1400003b     	b	0xd410 <tpd_workqueue_init+0x158>
    d328: 94000000     	bl	0xd328 <tpd_workqueue_init+0x70>
		000000000000d328:  R_AARCH64_CALL26	tpd_report_work_init
    d32c: 350007e0     	cbnz	w0, 0xd428 <tpd_workqueue_init+0x170>
    d330: 90000013     	adrp	x19, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17875
    d334: 91000273     	add	x19, x19, #0x0
		000000000000d334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17875
    d338: f94002d7     	ldr	x23, [x22]
		000000000000d338:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d33c: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d33c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c759
    d340: 91000021     	add	x1, x1, #0x0
		000000000000d340:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c759
    d344: aa1303e0     	mov	x0, x19
    d348: 94000000     	bl	0xd348 <tpd_workqueue_init+0x90>
		000000000000d348:  R_AARCH64_CALL26	_printk
    d34c: b26b7bf8     	mov	x24, #0xfffffffe00000   // =4503599625273344
    d350: 912362e8     	add	x8, x23, #0x8d8
    d354: 90000014     	adrp	x20, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d354:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    d358: 91000294     	add	x20, x20, #0x0
		000000000000d358:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    d35c: f9046af8     	str	x24, [x23, #0x8d0]
    d360: 9123c2e0     	add	x0, x23, #0x8f0
    d364: f9046ee8     	str	x8, [x23, #0x8d8]
    d368: aa1403e1     	mov	x1, x20
    d36c: 52a00402     	mov	w2, #0x200000           // =2097152
    d370: f90472e8     	str	x8, [x23, #0x8e0]
    d374: 90000008     	adrp	x8, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d374:  R_AARCH64_ADR_PREL_PG_HI21	ztp_probe_work
    d378: 91000108     	add	x8, x8, #0x0
		000000000000d378:  R_AARCH64_ADD_ABS_LO12_NC	ztp_probe_work
    d37c: aa1f03e3     	mov	x3, xzr
    d380: aa1f03e4     	mov	x4, xzr
    d384: f90476e8     	str	x8, [x23, #0x8e8]
    d388: 94000000     	bl	0xd388 <tpd_workqueue_init+0xd0>
		000000000000d388:  R_AARCH64_CALL26	init_timer_key
    d38c: 94000000     	bl	0xd38c <tpd_workqueue_init+0xd4>
		000000000000d38c:  R_AARCH64_CALL26	tpd_resume_work_init
    d390: f94002d6     	ldr	x22, [x22]
		000000000000d390:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d394: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d394:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18492
    d398: 91000021     	add	x1, x1, #0x0
		000000000000d398:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18492
    d39c: aa1303e0     	mov	x0, x19
    d3a0: 94000000     	bl	0xd3a0 <tpd_workqueue_init+0xe8>
		000000000000d3a0:  R_AARCH64_CALL26	_printk
    d3a4: 912962c8     	add	x8, x22, #0xa58
    d3a8: f9052ad8     	str	x24, [x22, #0xa50]
    d3ac: 9129c2c0     	add	x0, x22, #0xa70
    d3b0: f9052ec8     	str	x8, [x22, #0xa58]
    d3b4: aa1403e1     	mov	x1, x20
    d3b8: 52a00402     	mov	w2, #0x200000           // =2097152
    d3bc: f90532c8     	str	x8, [x22, #0xa60]
    d3c0: 90000008     	adrp	x8, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d3c0:  R_AARCH64_ADR_PREL_PG_HI21	zlog_register_work
    d3c4: 91000108     	add	x8, x8, #0x0
		000000000000d3c4:  R_AARCH64_ADD_ABS_LO12_NC	zlog_register_work
    d3c8: aa1f03e3     	mov	x3, xzr
    d3cc: aa1f03e4     	mov	x4, xzr
    d3d0: f90536c8     	str	x8, [x22, #0xa68]
    d3d4: 94000000     	bl	0xd3d4 <tpd_workqueue_init+0x11c>
		000000000000d3d4:  R_AARCH64_CALL26	init_timer_key
    d3d8: 912502a8     	add	x8, x21, #0x940
    d3dc: f9049eb8     	str	x24, [x21, #0x938]
    d3e0: 912562a0     	add	x0, x21, #0x958
    d3e4: f904a2a8     	str	x8, [x21, #0x940]
    d3e8: aa1403e1     	mov	x1, x20
    d3ec: 52a00402     	mov	w2, #0x200000           // =2097152
    d3f0: f904a6a8     	str	x8, [x21, #0x948]
    d3f4: 90000008     	adrp	x8, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d3f4:  R_AARCH64_ADR_PREL_PG_HI21	tp_ghost_check_work
    d3f8: 91000108     	add	x8, x8, #0x0
		000000000000d3f8:  R_AARCH64_ADD_ABS_LO12_NC	tp_ghost_check_work
    d3fc: aa1f03e3     	mov	x3, xzr
    d400: aa1f03e4     	mov	x4, xzr
    d404: f904aaa8     	str	x8, [x21, #0x950]
    d408: 94000000     	bl	0xd408 <tpd_workqueue_init+0x150>
		000000000000d408:  R_AARCH64_CALL26	init_timer_key
    d40c: 2a1f03e0     	mov	w0, wzr
    d410: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    d414: a94257f6     	ldp	x22, x21, [sp, #0x20]
    d418: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    d41c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    d420: d50323bf     	autiasp
    d424: d65f03c0     	ret
    d428: f9425aa8     	ldr	x8, [x21, #0x4b0]
    d42c: b5fff708     	cbnz	x8, 0xd30c <tpd_workqueue_init+0x54>
    d430: aa1f03e0     	mov	x0, xzr
    d434: 94000000     	bl	0xd434 <tpd_workqueue_init+0x17c>
		000000000000d434:  R_AARCH64_CALL26	destroy_workqueue
    d438: 17ffffb5     	b	0xd30c <tpd_workqueue_init+0x54>
