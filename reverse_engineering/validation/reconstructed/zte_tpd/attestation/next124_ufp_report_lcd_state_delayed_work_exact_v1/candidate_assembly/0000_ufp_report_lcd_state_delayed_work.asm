
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000013e60 <ufp_report_lcd_state_delayed_work>:
   13e60: d503233f     	paciasp
   13e64: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   13e68: a9014ff4     	stp	x20, x19, [sp, #0x10]
   13e6c: 910003fd     	mov	x29, sp
   13e70: 90000008     	adrp	x8, 0x13000 <tpd_zlog_record_notify+0x5e0>
		0000000000013e70:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   13e74: f9400114     	ldr	x20, [x8]
		0000000000013e74:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   13e78: f9425a93     	ldr	x19, [x20, #0x4b0]
   13e7c: 94000000     	bl	0x13e7c <ufp_report_lcd_state_delayed_work+0x1c>
		0000000000013e7c:  R_AARCH64_CALL26	__msecs_to_jiffies
   13e80: aa0003e3     	mov	x3, x0
   13e84: 91278282     	add	x2, x20, #0x9e0
   13e88: 52800400     	mov	w0, #0x20               // =32
   13e8c: aa1303e1     	mov	x1, x19
   13e90: 94000000     	bl	0x13e90 <ufp_report_lcd_state_delayed_work+0x30>
		0000000000013e90:  R_AARCH64_CALL26	mod_delayed_work_on
   13e94: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   13e98: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   13e9c: d50323bf     	autiasp
   13ea0: d65f03c0     	ret
