
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000013954 <ufp_mac_init>:
   13954: d503233f     	paciasp
   13958: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1395c: f9000bf3     	str	x19, [sp, #0x10]
   13960: 910003fd     	mov	x29, sp
   13964: 52800141     	mov	w1, #0xa                // =10
   13968: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013968:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19ff4
   1396c: 91000000     	add	x0, x0, #0x0
		000000000001396c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19ff4
   13970: 90000003     	adrp	x3, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013970:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad50
   13974: 91000063     	add	x3, x3, #0x0
		0000000000013974:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad50
   13978: 72a000c1     	movk	w1, #0x6, lsl #16
   1397c: 52800022     	mov	w2, #0x1                // =1
   13980: 94000000     	bl	0x13980 <ufp_mac_init+0x2c>
		0000000000013980:  R_AARCH64_CALL26	alloc_workqueue
   13984: 90000013     	adrp	x19, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013984:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
   13988: 91000273     	add	x19, x19, #0x0
		0000000000013988:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x8
   1398c: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
   13990: f9000668     	str	x8, [x19, #0x8]
   13994: 91004268     	add	x8, x19, #0x10
   13998: 90000001     	adrp	x1, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013998:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
   1399c: 91000021     	add	x1, x1, #0x0
		000000000001399c:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
   139a0: f9003a60     	str	x0, [x19, #0x70]
   139a4: 9100a260     	add	x0, x19, #0x28
   139a8: f9000a68     	str	x8, [x19, #0x10]
   139ac: 52a00402     	mov	w2, #0x200000           // =2097152
   139b0: aa1f03e3     	mov	x3, xzr
   139b4: f9000e68     	str	x8, [x19, #0x18]
   139b8: 90000008     	adrp	x8, 0x13000 <tpd_zlog_record_notify+0x7d0>
		00000000000139b8:  R_AARCH64_ADR_PREL_PG_HI21	ufp_single_tap_work
   139bc: 91000108     	add	x8, x8, #0x0
		00000000000139bc:  R_AARCH64_ADD_ABS_LO12_NC	ufp_single_tap_work
   139c0: aa1f03e4     	mov	x4, xzr
   139c4: f9001268     	str	x8, [x19, #0x20]
   139c8: 94000000     	bl	0x139c8 <ufp_mac_init+0x74>
		00000000000139c8:  R_AARCH64_CALL26	init_timer_key
   139cc: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		00000000000139cc:  R_AARCH64_ADR_PREL_PG_HI21	tp_wakeup
   139d0: 91000000     	add	x0, x0, #0x0
		00000000000139d0:  R_AARCH64_ADD_ABS_LO12_NC	tp_wakeup
   139d4: b900027f     	str	wzr, [x19]
   139d8: 94000000     	bl	0x139d8 <ufp_mac_init+0x84>
		00000000000139d8:  R_AARCH64_CALL26	wakeup_source_add
   139dc: 90000001     	adrp	x1, 0x13000 <tpd_zlog_record_notify+0x7d0>
		00000000000139dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18c00
   139e0: 91000021     	add	x1, x1, #0x0
		00000000000139e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18c00
   139e4: 90000002     	adrp	x2, 0x13000 <tpd_zlog_record_notify+0x7d0>
		00000000000139e4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x26e3
   139e8: 91000042     	add	x2, x2, #0x0
		00000000000139e8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x26e3
   139ec: 91020260     	add	x0, x19, #0x80
   139f0: b9007a7f     	str	wzr, [x19, #0x78]
   139f4: 94000000     	bl	0x139f4 <ufp_mac_init+0xa0>
		00000000000139f4:  R_AARCH64_CALL26	__init_swait_queue_head
   139f8: 90000008     	adrp	x8, 0x13000 <tpd_zlog_record_notify+0x7d0>
		00000000000139f8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   139fc: 7901327f     	strh	wzr, [x19, #0x98]
   13a00: f9400108     	ldr	x8, [x8]
		0000000000013a00:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   13a04: 39026a7f     	strb	wzr, [x19, #0x9a]
   13a08: f946e908     	ldr	x8, [x8, #0xdd0]
   13a0c: b4000068     	cbz	x8, 0x13a18 <ufp_mac_init+0xc4>
   13a10: 90000009     	adrp	x9, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013a10:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
   13a14: f9000128     	str	x8, [x9]
		0000000000013a14:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
   13a18: 2a1f03e0     	mov	w0, wzr
   13a1c: f9400bf3     	ldr	x19, [sp, #0x10]
   13a20: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   13a24: d50323bf     	autiasp
   13a28: d65f03c0     	ret
