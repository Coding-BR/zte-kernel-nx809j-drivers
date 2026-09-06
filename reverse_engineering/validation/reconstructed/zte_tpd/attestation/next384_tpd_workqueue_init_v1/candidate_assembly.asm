
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000022920 <tpd_workqueue_init>:
   22920: d503233f     	paciasp
   22924: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   22928: a9015ff8     	stp	x24, x23, [sp, #0x10]
   2292c: a90257f6     	stp	x22, x21, [sp, #0x20]
   22930: a9034ff4     	stp	x20, x19, [sp, #0x30]
   22934: 910003fd     	mov	x29, sp
   22938: 90000016     	adrp	x22, 0x22000 <tpd_touch_press+0x6b8>
		0000000000022938:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   2293c: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x6b8>
		000000000002293c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30bf
   22940: 91000000     	add	x0, x0, #0x0
		0000000000022940:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30bf
   22944: f94002d5     	ldr	x21, [x22]
		0000000000022944:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   22948: 94000000     	bl	0x22948 <tpd_workqueue_init+0x28>
		0000000000022948:  R_AARCH64_CALL26	_printk
   2294c: 52800141     	mov	w1, #0xa                // =10
   22950: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x6b8>
		0000000000022950:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f6d
   22954: 91000000     	add	x0, x0, #0x0
		0000000000022954:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f6d
   22958: 90000003     	adrp	x3, 0x22000 <tpd_touch_press+0x6b8>
		0000000000022958:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bd6
   2295c: 91000063     	add	x3, x3, #0x0
		000000000002295c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bd6
   22960: 72a000c1     	movk	w1, #0x6, lsl #16
   22964: 52800022     	mov	w2, #0x1                // =1
   22968: 94000000     	bl	0x22968 <tpd_workqueue_init+0x48>
		0000000000022968:  R_AARCH64_CALL26	alloc_workqueue
   2296c: f9025aa0     	str	x0, [x21, #0x4b0]
   22970: b5000100     	cbnz	x0, 0x22990 <tpd_workqueue_init+0x70>
   22974: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x6b8>
		0000000000022974:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4873
   22978: 91000000     	add	x0, x0, #0x0
		0000000000022978:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4873
   2297c: 90000001     	adrp	x1, 0x22000 <tpd_touch_press+0x6b8>
		000000000002297c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30cc
   22980: 91000021     	add	x1, x1, #0x0
		0000000000022980:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30cc
   22984: 94000000     	bl	0x22984 <tpd_workqueue_init+0x64>
		0000000000022984:  R_AARCH64_CALL26	_printk
   22988: 12800160     	mov	w0, #-0xc               // =-12
   2298c: 1400003b     	b	0x22a78 <tpd_workqueue_init+0x158>
   22990: 94000000     	bl	0x22990 <tpd_workqueue_init+0x70>
		0000000000022990:  R_AARCH64_CALL26	tpd_report_work_init
   22994: 350007e0     	cbnz	w0, 0x22a90 <tpd_workqueue_init+0x170>
   22998: 90000013     	adrp	x19, 0x22000 <tpd_touch_press+0x6b8>
		0000000000022998:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x935
   2299c: 91000273     	add	x19, x19, #0x0
		000000000002299c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x935
   229a0: f94002d7     	ldr	x23, [x22]
		00000000000229a0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   229a4: 90000001     	adrp	x1, 0x22000 <tpd_touch_press+0x6b8>
		00000000000229a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7172
   229a8: 91000021     	add	x1, x1, #0x0
		00000000000229a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7172
   229ac: aa1303e0     	mov	x0, x19
   229b0: 94000000     	bl	0x229b0 <tpd_workqueue_init+0x90>
		00000000000229b0:  R_AARCH64_CALL26	_printk
   229b4: b26b7bf8     	mov	x24, #0xfffffffe00000   // =4503599625273344
   229b8: 912362e8     	add	x8, x23, #0x8d8
   229bc: 90000014     	adrp	x20, 0x22000 <tpd_touch_press+0x6b8>
		00000000000229bc:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
   229c0: 91000294     	add	x20, x20, #0x0
		00000000000229c0:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
   229c4: f9046af8     	str	x24, [x23, #0x8d0]
   229c8: 9123c2e0     	add	x0, x23, #0x8f0
   229cc: f9046ee8     	str	x8, [x23, #0x8d8]
   229d0: aa1403e1     	mov	x1, x20
   229d4: 52a00402     	mov	w2, #0x200000           // =2097152
   229d8: f90472e8     	str	x8, [x23, #0x8e0]
   229dc: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x6b8>
		00000000000229dc:  R_AARCH64_ADR_PREL_PG_HI21	ztp_probe_work
   229e0: 91000108     	add	x8, x8, #0x0
		00000000000229e0:  R_AARCH64_ADD_ABS_LO12_NC	ztp_probe_work
   229e4: aa1f03e3     	mov	x3, xzr
   229e8: aa1f03e4     	mov	x4, xzr
   229ec: f90476e8     	str	x8, [x23, #0x8e8]
   229f0: 94000000     	bl	0x229f0 <tpd_workqueue_init+0xd0>
		00000000000229f0:  R_AARCH64_CALL26	init_timer_key
   229f4: 94000000     	bl	0x229f4 <tpd_workqueue_init+0xd4>
		00000000000229f4:  R_AARCH64_CALL26	tpd_resume_work_init
   229f8: f94002d6     	ldr	x22, [x22]
		00000000000229f8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   229fc: 90000001     	adrp	x1, 0x22000 <tpd_touch_press+0x6b8>
		00000000000229fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1969
   22a00: 91000021     	add	x1, x1, #0x0
		0000000000022a00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1969
   22a04: aa1303e0     	mov	x0, x19
   22a08: 94000000     	bl	0x22a08 <tpd_workqueue_init+0xe8>
		0000000000022a08:  R_AARCH64_CALL26	_printk
   22a0c: 912962c8     	add	x8, x22, #0xa58
   22a10: f9052ad8     	str	x24, [x22, #0xa50]
   22a14: 9129c2c0     	add	x0, x22, #0xa70
   22a18: f9052ec8     	str	x8, [x22, #0xa58]
   22a1c: aa1403e1     	mov	x1, x20
   22a20: 52a00402     	mov	w2, #0x200000           // =2097152
   22a24: f90532c8     	str	x8, [x22, #0xa60]
   22a28: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x6b8>
		0000000000022a28:  R_AARCH64_ADR_PREL_PG_HI21	zlog_register_work
   22a2c: 91000108     	add	x8, x8, #0x0
		0000000000022a2c:  R_AARCH64_ADD_ABS_LO12_NC	zlog_register_work
   22a30: aa1f03e3     	mov	x3, xzr
   22a34: aa1f03e4     	mov	x4, xzr
   22a38: f90536c8     	str	x8, [x22, #0xa68]
   22a3c: 94000000     	bl	0x22a3c <tpd_workqueue_init+0x11c>
		0000000000022a3c:  R_AARCH64_CALL26	init_timer_key
   22a40: 912502a8     	add	x8, x21, #0x940
   22a44: f9049eb8     	str	x24, [x21, #0x938]
   22a48: 912562a0     	add	x0, x21, #0x958
   22a4c: f904a2a8     	str	x8, [x21, #0x940]
   22a50: aa1403e1     	mov	x1, x20
   22a54: 52a00402     	mov	w2, #0x200000           // =2097152
   22a58: f904a6a8     	str	x8, [x21, #0x948]
   22a5c: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x6b8>
		0000000000022a5c:  R_AARCH64_ADR_PREL_PG_HI21	tp_ghost_check_work
   22a60: 91000108     	add	x8, x8, #0x0
		0000000000022a60:  R_AARCH64_ADD_ABS_LO12_NC	tp_ghost_check_work
   22a64: aa1f03e3     	mov	x3, xzr
   22a68: aa1f03e4     	mov	x4, xzr
   22a6c: f904aaa8     	str	x8, [x21, #0x950]
   22a70: 94000000     	bl	0x22a70 <tpd_workqueue_init+0x150>
		0000000000022a70:  R_AARCH64_CALL26	init_timer_key
   22a74: 2a1f03e0     	mov	w0, wzr
   22a78: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   22a7c: a94257f6     	ldp	x22, x21, [sp, #0x20]
   22a80: a9415ff8     	ldp	x24, x23, [sp, #0x10]
   22a84: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   22a88: d50323bf     	autiasp
   22a8c: d65f03c0     	ret
   22a90: f9425aa8     	ldr	x8, [x21, #0x4b0]
   22a94: b5fff708     	cbnz	x8, 0x22974 <tpd_workqueue_init+0x54>
   22a98: aa1f03e0     	mov	x0, xzr
   22a9c: 94000000     	bl	0x22a9c <tpd_workqueue_init+0x17c>
		0000000000022a9c:  R_AARCH64_CALL26	destroy_workqueue
   22aa0: 17ffffb5     	b	0x22974 <tpd_workqueue_init+0x54>
