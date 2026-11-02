
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026668 <tpd_probe_work_deinit>:
   26668: d503233f     	paciasp
   2666c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   26670: f9000bf3     	str	x19, [sp, #0x10]
   26674: 910003fd     	mov	x29, sp
   26678: 90000008     	adrp	x8, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026678:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   2667c: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		000000000002667c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb5c
   26680: 91000000     	add	x0, x0, #0x0
		0000000000026680:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb5c
   26684: f9400113     	ldr	x19, [x8]
		0000000000026684:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   26688: 90000001     	adrp	x1, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026688:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbce
   2668c: 91000021     	add	x1, x1, #0x0
		000000000002668c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbce
   26690: 94000000     	bl	0x26690 <tpd_probe_work_deinit+0x28>
		0000000000026690:  R_AARCH64_CALL26	_printk
   26694: 91234260     	add	x0, x19, #0x8d0
   26698: 94000000     	bl	0x26698 <tpd_probe_work_deinit+0x30>
		0000000000026698:  R_AARCH64_CALL26	cancel_delayed_work_sync
   2669c: f9400bf3     	ldr	x19, [sp, #0x10]
   266a0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   266a4: d50323bf     	autiasp
   266a8: d65f03c0     	ret
