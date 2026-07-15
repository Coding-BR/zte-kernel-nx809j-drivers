
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a728 <ufp_mac_init>:
    a728: d503233f     	paciasp
    a72c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    a730: f9000bf3     	str	x19, [sp, #0x10]
    a734: 910003fd     	mov	x29, sp
    a738: 52800141     	mov	w1, #0xa                // =10
    a73c: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a73c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x504a
    a740: 91000000     	add	x0, x0, #0x0
		000000000000a740:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x504a
    a744: 90000003     	adrp	x3, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a744:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6909
    a748: 91000063     	add	x3, x3, #0x0
		000000000000a748:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6909
    a74c: 72a000c1     	movk	w1, #0x6, lsl #16
    a750: 52800022     	mov	w2, #0x1                // =1
    a754: 94000000     	bl	0xa754 <ufp_mac_init+0x2c>
		000000000000a754:  R_AARCH64_CALL26	alloc_workqueue
    a758: 90000013     	adrp	x19, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a758:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
    a75c: 91000273     	add	x19, x19, #0x0
		000000000000a75c:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x8
    a760: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    a764: f9000668     	str	x8, [x19, #0x8]
    a768: 91004268     	add	x8, x19, #0x10
    a76c: 90000001     	adrp	x1, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a76c:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    a770: 91000021     	add	x1, x1, #0x0
		000000000000a770:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    a774: f9003a60     	str	x0, [x19, #0x70]
    a778: 9100a260     	add	x0, x19, #0x28
    a77c: f9000a68     	str	x8, [x19, #0x10]
    a780: 52a00402     	mov	w2, #0x200000           // =2097152
    a784: aa1f03e3     	mov	x3, xzr
    a788: f9000e68     	str	x8, [x19, #0x18]
    a78c: 90000008     	adrp	x8, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a78c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xa804
    a790: 91000108     	add	x8, x8, #0x0
		000000000000a790:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xa804
    a794: aa1f03e4     	mov	x4, xzr
    a798: f9001268     	str	x8, [x19, #0x20]
    a79c: 94000000     	bl	0xa79c <ufp_mac_init+0x74>
		000000000000a79c:  R_AARCH64_CALL26	init_timer_key
    a7a0: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a7a0:  R_AARCH64_ADR_PREL_PG_HI21	tp_wakeup
    a7a4: 91000000     	add	x0, x0, #0x0
		000000000000a7a4:  R_AARCH64_ADD_ABS_LO12_NC	tp_wakeup
    a7a8: b900027f     	str	wzr, [x19]
    a7ac: 94000000     	bl	0xa7ac <ufp_mac_init+0x84>
		000000000000a7ac:  R_AARCH64_CALL26	wakeup_source_add
    a7b0: 90000001     	adrp	x1, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a7b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2aeb
    a7b4: 91000021     	add	x1, x1, #0x0
		000000000000a7b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2aeb
    a7b8: 90000002     	adrp	x2, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a7b8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x731
    a7bc: 91000042     	add	x2, x2, #0x0
		000000000000a7bc:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x731
    a7c0: 91020260     	add	x0, x19, #0x80
    a7c4: b9007a7f     	str	wzr, [x19, #0x78]
    a7c8: 94000000     	bl	0xa7c8 <ufp_mac_init+0xa0>
		000000000000a7c8:  R_AARCH64_CALL26	__init_swait_queue_head
    a7cc: 90000008     	adrp	x8, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a7cc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    a7d0: 7901327f     	strh	wzr, [x19, #0x98]
    a7d4: f9400108     	ldr	x8, [x8]
		000000000000a7d4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    a7d8: 39026a7f     	strb	wzr, [x19, #0x9a]
    a7dc: f946e908     	ldr	x8, [x8, #0xdd0]
    a7e0: b4000068     	cbz	x8, 0xa7ec <ufp_mac_init+0xc4>
    a7e4: 90000009     	adrp	x9, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a7e4:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
    a7e8: f9000128     	str	x8, [x9]
		000000000000a7e8:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
    a7ec: 2a1f03e0     	mov	w0, wzr
    a7f0: f9400bf3     	ldr	x19, [sp, #0x10]
    a7f4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    a7f8: d50323bf     	autiasp
    a7fc: d65f03c0     	ret
