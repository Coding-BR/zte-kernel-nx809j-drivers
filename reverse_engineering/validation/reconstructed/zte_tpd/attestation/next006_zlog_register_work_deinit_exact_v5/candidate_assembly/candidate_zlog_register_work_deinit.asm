
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000267dc <zlog_register_work_deinit>:
   267dc: d503233f     	paciasp
   267e0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   267e4: f9000bf3     	str	x19, [sp, #0x10]
   267e8: 910003fd     	mov	x29, sp
   267ec: 90000008     	adrp	x8, 0x26000 <get_tp_noise_store+0x3c>
		00000000000267ec:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   267f0: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		00000000000267f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb5c
   267f4: 91000000     	add	x0, x0, #0x0
		00000000000267f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb5c
   267f8: f9400113     	ldr	x19, [x8]
		00000000000267f8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   267fc: 90000001     	adrp	x1, 0x26000 <get_tp_noise_store+0x3c>
		00000000000267fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8c8c
   26800: 91000021     	add	x1, x1, #0x0
		0000000000026800:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8c8c
   26804: 94000000     	bl	0x26804 <zlog_register_work_deinit+0x28>
		0000000000026804:  R_AARCH64_CALL26	_printk
   26808: 91294260     	add	x0, x19, #0xa50
   2680c: 94000000     	bl	0x2680c <zlog_register_work_deinit+0x30>
		000000000002680c:  R_AARCH64_CALL26	cancel_delayed_work_sync
   26810: f945f660     	ldr	x0, [x19, #0xbe8]
   26814: 94000000     	bl	0x26814 <zlog_register_work_deinit+0x38>
		0000000000026814:  R_AARCH64_CALL26	vfree
   26818: f905f67f     	str	xzr, [x19, #0xbe8]
   2681c: f9400bf3     	ldr	x19, [sp, #0x10]
   26820: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   26824: d50323bf     	autiasp
   26828: d65f03c0     	ret
