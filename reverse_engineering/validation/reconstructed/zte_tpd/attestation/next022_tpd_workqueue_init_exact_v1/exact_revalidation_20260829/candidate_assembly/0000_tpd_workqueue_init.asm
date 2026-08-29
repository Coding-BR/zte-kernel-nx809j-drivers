
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d25c <tpd_workqueue_init>:
    d25c: d503233f     	paciasp
    d260: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    d264: a9015ff8     	stp	x24, x23, [sp, #0x10]
    d268: a90257f6     	stp	x22, x21, [sp, #0x20]
    d26c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    d270: 910003fd     	mov	x29, sp
    d274: 90000016     	adrp	x22, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d274:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    d278: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19796
    d27c: 91000000     	add	x0, x0, #0x0
		000000000000d27c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19796
    d280: f94002d5     	ldr	x21, [x22]
		000000000000d280:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d284: 94000000     	bl	0xd284 <tpd_workqueue_init+0x28>
		000000000000d284:  R_AARCH64_CALL26	_printk
    d288: 52800141     	mov	w1, #0xa                // =10
    d28c: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d28c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x197a3
    d290: 91000000     	add	x0, x0, #0x0
		000000000000d290:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x197a3
    d294: 90000003     	adrp	x3, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19e2b
    d298: 91000063     	add	x3, x3, #0x0
		000000000000d298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19e2b
    d29c: 72a000c1     	movk	w1, #0x6, lsl #16
    d2a0: 52800022     	mov	w2, #0x1                // =1
    d2a4: 94000000     	bl	0xd2a4 <tpd_workqueue_init+0x48>
		000000000000d2a4:  R_AARCH64_CALL26	alloc_workqueue
    d2a8: f9025aa0     	str	x0, [x21, #0x4b0]
    d2ac: b5000100     	cbnz	x0, 0xd2cc <tpd_workqueue_init+0x70>
    d2b0: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d2b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a9bd
    d2b4: 91000000     	add	x0, x0, #0x0
		000000000000d2b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a9bd
    d2b8: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d2b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x197a6
    d2bc: 91000021     	add	x1, x1, #0x0
		000000000000d2bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x197a6
    d2c0: 94000000     	bl	0xd2c0 <tpd_workqueue_init+0x64>
		000000000000d2c0:  R_AARCH64_CALL26	_printk
    d2c4: 12800160     	mov	w0, #-0xc               // =-12
    d2c8: 1400003b     	b	0xd3b4 <tpd_workqueue_init+0x158>
    d2cc: 94000000     	bl	0xd2cc <tpd_workqueue_init+0x70>
		000000000000d2cc:  R_AARCH64_CALL26	tpd_report_work_init
    d2d0: 350007e0     	cbnz	w0, 0xd3cc <tpd_workqueue_init+0x170>
    d2d4: 90000013     	adrp	x19, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d2d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17875
    d2d8: 91000273     	add	x19, x19, #0x0
		000000000000d2d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17875
    d2dc: f94002d7     	ldr	x23, [x22]
		000000000000d2dc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d2e0: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d2e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c740
    d2e4: 91000021     	add	x1, x1, #0x0
		000000000000d2e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c740
    d2e8: aa1303e0     	mov	x0, x19
    d2ec: 94000000     	bl	0xd2ec <tpd_workqueue_init+0x90>
		000000000000d2ec:  R_AARCH64_CALL26	_printk
    d2f0: b26b7bf8     	mov	x24, #0xfffffffe00000   // =4503599625273344
    d2f4: 912362e8     	add	x8, x23, #0x8d8
    d2f8: 90000014     	adrp	x20, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d2f8:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    d2fc: 91000294     	add	x20, x20, #0x0
		000000000000d2fc:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    d300: f9046af8     	str	x24, [x23, #0x8d0]
    d304: 9123c2e0     	add	x0, x23, #0x8f0
    d308: f9046ee8     	str	x8, [x23, #0x8d8]
    d30c: aa1403e1     	mov	x1, x20
    d310: 52a00402     	mov	w2, #0x200000           // =2097152
    d314: f90472e8     	str	x8, [x23, #0x8e0]
    d318: 90000008     	adrp	x8, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d318:  R_AARCH64_ADR_PREL_PG_HI21	ztp_probe_work
    d31c: 91000108     	add	x8, x8, #0x0
		000000000000d31c:  R_AARCH64_ADD_ABS_LO12_NC	ztp_probe_work
    d320: aa1f03e3     	mov	x3, xzr
    d324: aa1f03e4     	mov	x4, xzr
    d328: f90476e8     	str	x8, [x23, #0x8e8]
    d32c: 94000000     	bl	0xd32c <tpd_workqueue_init+0xd0>
		000000000000d32c:  R_AARCH64_CALL26	init_timer_key
    d330: 94000000     	bl	0xd330 <tpd_workqueue_init+0xd4>
		000000000000d330:  R_AARCH64_CALL26	tpd_resume_work_init
    d334: f94002d6     	ldr	x22, [x22]
		000000000000d334:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d338: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18492
    d33c: 91000021     	add	x1, x1, #0x0
		000000000000d33c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18492
    d340: aa1303e0     	mov	x0, x19
    d344: 94000000     	bl	0xd344 <tpd_workqueue_init+0xe8>
		000000000000d344:  R_AARCH64_CALL26	_printk
    d348: 912962c8     	add	x8, x22, #0xa58
    d34c: f9052ad8     	str	x24, [x22, #0xa50]
    d350: 9129c2c0     	add	x0, x22, #0xa70
    d354: f9052ec8     	str	x8, [x22, #0xa58]
    d358: aa1403e1     	mov	x1, x20
    d35c: 52a00402     	mov	w2, #0x200000           // =2097152
    d360: f90532c8     	str	x8, [x22, #0xa60]
    d364: 90000008     	adrp	x8, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d364:  R_AARCH64_ADR_PREL_PG_HI21	zlog_register_work
    d368: 91000108     	add	x8, x8, #0x0
		000000000000d368:  R_AARCH64_ADD_ABS_LO12_NC	zlog_register_work
    d36c: aa1f03e3     	mov	x3, xzr
    d370: aa1f03e4     	mov	x4, xzr
    d374: f90536c8     	str	x8, [x22, #0xa68]
    d378: 94000000     	bl	0xd378 <tpd_workqueue_init+0x11c>
		000000000000d378:  R_AARCH64_CALL26	init_timer_key
    d37c: 912502a8     	add	x8, x21, #0x940
    d380: f9049eb8     	str	x24, [x21, #0x938]
    d384: 912562a0     	add	x0, x21, #0x958
    d388: f904a2a8     	str	x8, [x21, #0x940]
    d38c: aa1403e1     	mov	x1, x20
    d390: 52a00402     	mov	w2, #0x200000           // =2097152
    d394: f904a6a8     	str	x8, [x21, #0x948]
    d398: 90000008     	adrp	x8, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d398:  R_AARCH64_ADR_PREL_PG_HI21	tp_ghost_check_work
    d39c: 91000108     	add	x8, x8, #0x0
		000000000000d39c:  R_AARCH64_ADD_ABS_LO12_NC	tp_ghost_check_work
    d3a0: aa1f03e3     	mov	x3, xzr
    d3a4: aa1f03e4     	mov	x4, xzr
    d3a8: f904aaa8     	str	x8, [x21, #0x950]
    d3ac: 94000000     	bl	0xd3ac <tpd_workqueue_init+0x150>
		000000000000d3ac:  R_AARCH64_CALL26	init_timer_key
    d3b0: 2a1f03e0     	mov	w0, wzr
    d3b4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    d3b8: a94257f6     	ldp	x22, x21, [sp, #0x20]
    d3bc: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    d3c0: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    d3c4: d50323bf     	autiasp
    d3c8: d65f03c0     	ret
    d3cc: f9425aa8     	ldr	x8, [x21, #0x4b0]
    d3d0: b5fff708     	cbnz	x8, 0xd2b0 <tpd_workqueue_init+0x54>
    d3d4: aa1f03e0     	mov	x0, xzr
    d3d8: 94000000     	bl	0xd3d8 <tpd_workqueue_init+0x17c>
		000000000000d3d8:  R_AARCH64_CALL26	destroy_workqueue
    d3dc: 17ffffb5     	b	0xd2b0 <tpd_workqueue_init+0x54>
