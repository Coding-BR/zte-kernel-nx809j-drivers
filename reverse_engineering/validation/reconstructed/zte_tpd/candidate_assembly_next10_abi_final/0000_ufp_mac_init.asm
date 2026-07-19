
/input/zte_tpd_cycle1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000249ec <ufp_mac_init>:
   249ec: d503233f     	paciasp
   249f0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   249f4: f9000bf3     	str	x19, [sp, #0x10]
   249f8: 910003fd     	mov	x29, sp
   249fc: 52800141     	mov	w1, #0xa                // =10
   24a00: 90000000     	adrp	x0, 0x24000 <tpd_zlog_record_notify+0x3c4>
		0000000000024a00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25ee
   24a04: 91000000     	add	x0, x0, #0x0
		0000000000024a04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25ee
   24a08: 90000003     	adrp	x3, 0x24000 <tpd_zlog_record_notify+0x3c4>
		0000000000024a08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32ac
   24a0c: 91000063     	add	x3, x3, #0x0
		0000000000024a0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32ac
   24a10: 72a000c1     	movk	w1, #0x6, lsl #16
   24a14: 52800022     	mov	w2, #0x1                // =1
   24a18: 94000000     	bl	0x24a18 <ufp_mac_init+0x2c>
		0000000000024a18:  R_AARCH64_CALL26	alloc_workqueue
   24a1c: 90000013     	adrp	x19, 0x24000 <tpd_zlog_record_notify+0x3c4>
		0000000000024a1c:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
   24a20: 91000273     	add	x19, x19, #0x0
		0000000000024a20:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x8
   24a24: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
   24a28: f9000668     	str	x8, [x19, #0x8]
   24a2c: 91004268     	add	x8, x19, #0x10
   24a30: 90000001     	adrp	x1, 0x24000 <tpd_zlog_record_notify+0x3c4>
		0000000000024a30:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
   24a34: 91000021     	add	x1, x1, #0x0
		0000000000024a34:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
   24a38: f9003a60     	str	x0, [x19, #0x70]
   24a3c: 9100a260     	add	x0, x19, #0x28
   24a40: f9000a68     	str	x8, [x19, #0x10]
   24a44: 52a00402     	mov	w2, #0x200000           // =2097152
   24a48: aa1f03e3     	mov	x3, xzr
   24a4c: f9000e68     	str	x8, [x19, #0x18]
   24a50: 90000008     	adrp	x8, 0x24000 <tpd_zlog_record_notify+0x3c4>
		0000000000024a50:  R_AARCH64_ADR_PREL_PG_HI21	ufp_single_tap_work
   24a54: 91000108     	add	x8, x8, #0x0
		0000000000024a54:  R_AARCH64_ADD_ABS_LO12_NC	ufp_single_tap_work
   24a58: aa1f03e4     	mov	x4, xzr
   24a5c: f9001268     	str	x8, [x19, #0x20]
   24a60: 94000000     	bl	0x24a60 <ufp_mac_init+0x74>
		0000000000024a60:  R_AARCH64_CALL26	init_timer_key
   24a64: 90000000     	adrp	x0, 0x24000 <tpd_zlog_record_notify+0x3c4>
		0000000000024a64:  R_AARCH64_ADR_PREL_PG_HI21	tp_wakeup
   24a68: 91000000     	add	x0, x0, #0x0
		0000000000024a68:  R_AARCH64_ADD_ABS_LO12_NC	tp_wakeup
   24a6c: b900027f     	str	wzr, [x19]
   24a70: 94000000     	bl	0x24a70 <ufp_mac_init+0x84>
		0000000000024a70:  R_AARCH64_CALL26	wakeup_source_add
   24a74: 90000001     	adrp	x1, 0x24000 <tpd_zlog_record_notify+0x3c4>
		0000000000024a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14db
   24a78: 91000021     	add	x1, x1, #0x0
		0000000000024a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14db
   24a7c: 90000002     	adrp	x2, 0x24000 <tpd_zlog_record_notify+0x3c4>
		0000000000024a7c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f15
   24a80: 91000042     	add	x2, x2, #0x0
		0000000000024a80:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1f15
   24a84: 91020260     	add	x0, x19, #0x80
   24a88: b9007a7f     	str	wzr, [x19, #0x78]
   24a8c: 94000000     	bl	0x24a8c <ufp_mac_init+0xa0>
		0000000000024a8c:  R_AARCH64_CALL26	__init_swait_queue_head
   24a90: 90000008     	adrp	x8, 0x24000 <tpd_zlog_record_notify+0x3c4>
		0000000000024a90:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   24a94: 7901327f     	strh	wzr, [x19, #0x98]
   24a98: f9400108     	ldr	x8, [x8]
		0000000000024a98:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   24a9c: 39026a7f     	strb	wzr, [x19, #0x9a]
   24aa0: f946e908     	ldr	x8, [x8, #0xdd0]
   24aa4: b4000068     	cbz	x8, 0x24ab0 <ufp_mac_init+0xc4>
   24aa8: 90000009     	adrp	x9, 0x24000 <tpd_zlog_record_notify+0x3c4>
		0000000000024aa8:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
   24aac: f9000128     	str	x8, [x9]
		0000000000024aac:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
   24ab0: 2a1f03e0     	mov	w0, wzr
   24ab4: f9400bf3     	ldr	x19, [sp, #0x10]
   24ab8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   24abc: d50323bf     	autiasp
   24ac0: d65f03c0     	ret
