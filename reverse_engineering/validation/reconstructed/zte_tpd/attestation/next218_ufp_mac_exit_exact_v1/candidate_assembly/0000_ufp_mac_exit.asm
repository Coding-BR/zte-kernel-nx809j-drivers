
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000252ac <ufp_mac_exit>:
   252ac: d503233f     	paciasp
   252b0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   252b4: f9000bf3     	str	x19, [sp, #0x10]
   252b8: 910003fd     	mov	x29, sp
   252bc: 90000013     	adrp	x19, 0x25000 <tpfwupgrade_store+0xf4>
		00000000000252bc:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
   252c0: 91000273     	add	x19, x19, #0x0
		00000000000252c0:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops
   252c4: 91004260     	add	x0, x19, #0x10
   252c8: 94000000     	bl	0x252c8 <ufp_mac_exit+0x1c>
		00000000000252c8:  R_AARCH64_CALL26	cancel_delayed_work_sync
   252cc: f9403e60     	ldr	x0, [x19, #0x78]
   252d0: 94000000     	bl	0x252d0 <ufp_mac_exit+0x24>
		00000000000252d0:  R_AARCH64_CALL26	__flush_workqueue
   252d4: f9403e60     	ldr	x0, [x19, #0x78]
   252d8: 94000000     	bl	0x252d8 <ufp_mac_exit+0x2c>
		00000000000252d8:  R_AARCH64_CALL26	destroy_workqueue
   252dc: 90000000     	adrp	x0, 0x25000 <tpfwupgrade_store+0xf4>
		00000000000252dc:  R_AARCH64_ADR_PREL_PG_HI21	tp_wakeup
   252e0: 91000000     	add	x0, x0, #0x0
		00000000000252e0:  R_AARCH64_ADD_ABS_LO12_NC	tp_wakeup
   252e4: 94000000     	bl	0x252e4 <ufp_mac_exit+0x38>
		00000000000252e4:  R_AARCH64_CALL26	wakeup_source_remove
   252e8: f900027f     	str	xzr, [x19]
   252ec: f9400bf3     	ldr	x19, [sp, #0x10]
   252f0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   252f4: d50323bf     	autiasp
   252f8: d65f03c0     	ret
