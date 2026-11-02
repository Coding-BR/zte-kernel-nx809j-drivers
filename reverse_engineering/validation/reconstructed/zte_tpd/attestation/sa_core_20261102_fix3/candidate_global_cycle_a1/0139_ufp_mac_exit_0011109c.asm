
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026aec <ufp_mac_exit>:
   26aec: d503233f     	paciasp
   26af0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   26af4: f9000bf3     	str	x19, [sp, #0x10]
   26af8: 910003fd     	mov	x29, sp
   26afc: 90000013     	adrp	x19, 0x26000 <get_tp_noise_show+0xfc>
		0000000000026afc:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
   26b00: 91000273     	add	x19, x19, #0x0
		0000000000026b00:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops
   26b04: 91004260     	add	x0, x19, #0x10
   26b08: 94000000     	bl	0x26b08 <ufp_mac_exit+0x1c>
		0000000000026b08:  R_AARCH64_CALL26	cancel_delayed_work_sync
   26b0c: f9403e60     	ldr	x0, [x19, #0x78]
   26b10: 94000000     	bl	0x26b10 <ufp_mac_exit+0x24>
		0000000000026b10:  R_AARCH64_CALL26	__flush_workqueue
   26b14: f9403e60     	ldr	x0, [x19, #0x78]
   26b18: 94000000     	bl	0x26b18 <ufp_mac_exit+0x2c>
		0000000000026b18:  R_AARCH64_CALL26	destroy_workqueue
   26b1c: 90000000     	adrp	x0, 0x26000 <get_tp_noise_show+0xfc>
		0000000000026b1c:  R_AARCH64_ADR_PREL_PG_HI21	tp_wakeup
   26b20: 91000000     	add	x0, x0, #0x0
		0000000000026b20:  R_AARCH64_ADD_ABS_LO12_NC	tp_wakeup
   26b24: 94000000     	bl	0x26b24 <ufp_mac_exit+0x38>
		0000000000026b24:  R_AARCH64_CALL26	wakeup_source_remove
   26b28: f900027f     	str	xzr, [x19]
   26b2c: f9400bf3     	ldr	x19, [sp, #0x10]
   26b30: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   26b34: d50323bf     	autiasp
   26b38: d65f03c0     	ret
