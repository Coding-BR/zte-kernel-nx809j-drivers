
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026508 <cancel_report_lcd_state_delayed_work>:
   26508: d503233f     	paciasp
   2650c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   26510: 910003fd     	mov	x29, sp
   26514: 90000008     	adrp	x8, 0x26000 <get_tp_noise_show+0xfc>
		0000000000026514:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   26518: f9400108     	ldr	x8, [x8]
		0000000000026518:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   2651c: 91278100     	add	x0, x8, #0x9e0
   26520: 94000000     	bl	0x26520 <cancel_report_lcd_state_delayed_work+0x18>
		0000000000026520:  R_AARCH64_CALL26	cancel_delayed_work_sync
   26524: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   26528: d50323bf     	autiasp
   2652c: d65f03c0     	ret
