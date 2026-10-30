
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025294 <ufp_report_lcd_state_delayed_work>:
   25294: d503233f     	paciasp
   25298: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   2529c: a9014ff4     	stp	x20, x19, [sp, #0x10]
   252a0: 910003fd     	mov	x29, sp
   252a4: 90000008     	adrp	x8, 0x25000 <ufp_mac_init+0x14>
		00000000000252a4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   252a8: f9400114     	ldr	x20, [x8]
		00000000000252a8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   252ac: f9425a93     	ldr	x19, [x20, #0x4b0]
   252b0: 94000000     	bl	0x252b0 <ufp_report_lcd_state_delayed_work+0x1c>
		00000000000252b0:  R_AARCH64_CALL26	__msecs_to_jiffies
   252b4: aa0003e3     	mov	x3, x0
   252b8: 91278282     	add	x2, x20, #0x9e0
   252bc: 52800400     	mov	w0, #0x20               // =32
   252c0: aa1303e1     	mov	x1, x19
   252c4: 94000000     	bl	0x252c4 <ufp_report_lcd_state_delayed_work+0x30>
		00000000000252c4:  R_AARCH64_CALL26	mod_delayed_work_on
   252c8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   252cc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   252d0: d50323bf     	autiasp
   252d4: d65f03c0     	ret
