
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000266b0 <ufp_report_lcd_state_delayed_work>:
   266b0: d503233f     	paciasp
   266b4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   266b8: a9014ff4     	stp	x20, x19, [sp, #0x10]
   266bc: 910003fd     	mov	x29, sp
   266c0: 90000008     	adrp	x8, 0x26000 <get_tp_noise_show+0xfc>
		00000000000266c0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   266c4: f9400114     	ldr	x20, [x8]
		00000000000266c4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   266c8: f9425a93     	ldr	x19, [x20, #0x4b0]
   266cc: 94000000     	bl	0x266cc <ufp_report_lcd_state_delayed_work+0x1c>
		00000000000266cc:  R_AARCH64_CALL26	__msecs_to_jiffies
   266d0: aa0003e3     	mov	x3, x0
   266d4: 91278282     	add	x2, x20, #0x9e0
   266d8: 52800400     	mov	w0, #0x20               // =32
   266dc: aa1303e1     	mov	x1, x19
   266e0: 94000000     	bl	0x266e0 <ufp_report_lcd_state_delayed_work+0x30>
		00000000000266e0:  R_AARCH64_CALL26	mod_delayed_work_on
   266e4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   266e8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   266ec: d50323bf     	autiasp
   266f0: d65f03c0     	ret
