
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e438 <ufp_mac_init>:
    e438: d503233f     	paciasp
    e43c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    e440: f9000bf3     	str	x19, [sp, #0x10]
    e444: 910003fd     	mov	x29, sp
    e448: 52800141     	mov	w1, #0xa                // =10
    e44c: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e44c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x197a3
    e450: 91000000     	add	x0, x0, #0x0
		000000000000e450:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x197a3
    e454: 90000003     	adrp	x3, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e454:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a185
    e458: 91000063     	add	x3, x3, #0x0
		000000000000e458:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a185
    e45c: 72a000c1     	movk	w1, #0x6, lsl #16
    e460: 52800022     	mov	w2, #0x1                // =1
    e464: 94000000     	bl	0xe464 <ufp_mac_init+0x2c>
		000000000000e464:  R_AARCH64_CALL26	alloc_workqueue
    e468: 90000013     	adrp	x19, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e468:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
    e46c: 91000273     	add	x19, x19, #0x0
		000000000000e46c:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x8
    e470: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    e474: f9000668     	str	x8, [x19, #0x8]
    e478: 91004268     	add	x8, x19, #0x10
    e47c: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e47c:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    e480: 91000021     	add	x1, x1, #0x0
		000000000000e480:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    e484: f9003a60     	str	x0, [x19, #0x70]
    e488: 9100a260     	add	x0, x19, #0x28
    e48c: f9000a68     	str	x8, [x19, #0x10]
    e490: 52a00402     	mov	w2, #0x200000           // =2097152
    e494: aa1f03e3     	mov	x3, xzr
    e498: f9000e68     	str	x8, [x19, #0x18]
    e49c: 90000008     	adrp	x8, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e49c:  R_AARCH64_ADR_PREL_PG_HI21	ufp_single_tap_work
    e4a0: 91000108     	add	x8, x8, #0x0
		000000000000e4a0:  R_AARCH64_ADD_ABS_LO12_NC	ufp_single_tap_work
    e4a4: aa1f03e4     	mov	x4, xzr
    e4a8: f9001268     	str	x8, [x19, #0x20]
    e4ac: 94000000     	bl	0xe4ac <ufp_mac_init+0x74>
		000000000000e4ac:  R_AARCH64_CALL26	init_timer_key
    e4b0: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e4b0:  R_AARCH64_ADR_PREL_PG_HI21	tp_wakeup
    e4b4: 91000000     	add	x0, x0, #0x0
		000000000000e4b4:  R_AARCH64_ADD_ABS_LO12_NC	tp_wakeup
    e4b8: b900027f     	str	wzr, [x19]
    e4bc: 94000000     	bl	0xe4bc <ufp_mac_init+0x84>
		000000000000e4bc:  R_AARCH64_CALL26	wakeup_source_add
    e4c0: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e4c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x186d2
    e4c4: 91000021     	add	x1, x1, #0x0
		000000000000e4c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x186d2
    e4c8: 90000002     	adrp	x2, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e4c8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x26df
    e4cc: 91000042     	add	x2, x2, #0x0
		000000000000e4cc:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x26df
    e4d0: 91020260     	add	x0, x19, #0x80
    e4d4: b9007a7f     	str	wzr, [x19, #0x78]
    e4d8: 94000000     	bl	0xe4d8 <ufp_mac_init+0xa0>
		000000000000e4d8:  R_AARCH64_CALL26	__init_swait_queue_head
    e4dc: 90000008     	adrp	x8, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e4dc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    e4e0: 7901327f     	strh	wzr, [x19, #0x98]
    e4e4: f9400108     	ldr	x8, [x8]
		000000000000e4e4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    e4e8: 39026a7f     	strb	wzr, [x19, #0x9a]
    e4ec: f946e908     	ldr	x8, [x8, #0xdd0]
    e4f0: b4000068     	cbz	x8, 0xe4fc <ufp_mac_init+0xc4>
    e4f4: 90000009     	adrp	x9, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e4f4:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
    e4f8: f9000128     	str	x8, [x9]
		000000000000e4f8:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
    e4fc: 2a1f03e0     	mov	w0, wzr
    e500: f9400bf3     	ldr	x19, [sp, #0x10]
    e504: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    e508: d50323bf     	autiasp
    e50c: d65f03c0     	ret
