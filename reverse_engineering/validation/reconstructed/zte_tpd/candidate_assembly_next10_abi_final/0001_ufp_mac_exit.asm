
/input/zte_tpd_cycle1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024998 <ufp_mac_exit>:
   24998: d503233f     	paciasp
   2499c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   249a0: f9000bf3     	str	x19, [sp, #0x10]
   249a4: 910003fd     	mov	x29, sp
   249a8: 90000013     	adrp	x19, 0x24000 <tpd_zlog_record_notify+0x3c4>
		00000000000249a8:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
   249ac: 91000273     	add	x19, x19, #0x0
		00000000000249ac:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops
   249b0: 91004260     	add	x0, x19, #0x10
   249b4: 94000000     	bl	0x249b4 <ufp_mac_exit+0x1c>
		00000000000249b4:  R_AARCH64_CALL26	cancel_delayed_work_sync
   249b8: f9403e60     	ldr	x0, [x19, #0x78]
   249bc: 94000000     	bl	0x249bc <ufp_mac_exit+0x24>
		00000000000249bc:  R_AARCH64_CALL26	__flush_workqueue
   249c0: f9403e60     	ldr	x0, [x19, #0x78]
   249c4: 94000000     	bl	0x249c4 <ufp_mac_exit+0x2c>
		00000000000249c4:  R_AARCH64_CALL26	destroy_workqueue
   249c8: 90000000     	adrp	x0, 0x24000 <tpd_zlog_record_notify+0x3c4>
		00000000000249c8:  R_AARCH64_ADR_PREL_PG_HI21	tp_wakeup
   249cc: 91000000     	add	x0, x0, #0x0
		00000000000249cc:  R_AARCH64_ADD_ABS_LO12_NC	tp_wakeup
   249d0: 94000000     	bl	0x249d0 <ufp_mac_exit+0x38>
		00000000000249d0:  R_AARCH64_CALL26	wakeup_source_remove
   249d4: f900027f     	str	xzr, [x19]
   249d8: f9400bf3     	ldr	x19, [sp, #0x10]
   249dc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   249e0: d50323bf     	autiasp
   249e4: d65f03c0     	ret
