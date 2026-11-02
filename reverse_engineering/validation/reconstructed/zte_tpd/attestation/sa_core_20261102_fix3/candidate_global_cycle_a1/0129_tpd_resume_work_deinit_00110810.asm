
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026a94 <tpd_resume_work_deinit>:
   26a94: d503233f     	paciasp
   26a98: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   26a9c: f9000bf3     	str	x19, [sp, #0x10]
   26aa0: 910003fd     	mov	x29, sp
   26aa4: 90000008     	adrp	x8, 0x26000 <get_tp_noise_show+0xfc>
		0000000000026aa4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   26aa8: 90000000     	adrp	x0, 0x26000 <get_tp_noise_show+0xfc>
		0000000000026aa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb5c
   26aac: 91000000     	add	x0, x0, #0x0
		0000000000026aac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb5c
   26ab0: f9400113     	ldr	x19, [x8]
		0000000000026ab0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   26ab4: 90000001     	adrp	x1, 0x26000 <get_tp_noise_show+0xfc>
		0000000000026ab4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b52
   26ab8: 91000021     	add	x1, x1, #0x0
		0000000000026ab8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b52
   26abc: 94000000     	bl	0x26abc <tpd_resume_work_deinit+0x28>
		0000000000026abc:  R_AARCH64_CALL26	_printk
   26ac0: 91270260     	add	x0, x19, #0x9c0
   26ac4: 94000000     	bl	0x26ac4 <tpd_resume_work_deinit+0x30>
		0000000000026ac4:  R_AARCH64_CALL26	cancel_work_sync
   26ac8: 91268260     	add	x0, x19, #0x9a0
   26acc: 94000000     	bl	0x26acc <tpd_resume_work_deinit+0x38>
		0000000000026acc:  R_AARCH64_CALL26	cancel_work_sync
   26ad0: 91278260     	add	x0, x19, #0x9e0
   26ad4: 94000000     	bl	0x26ad4 <tpd_resume_work_deinit+0x40>
		0000000000026ad4:  R_AARCH64_CALL26	cancel_delayed_work_sync
   26ad8: f9400bf3     	ldr	x19, [sp, #0x10]
   26adc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   26ae0: d50323bf     	autiasp
   26ae4: d65f03c0     	ret
