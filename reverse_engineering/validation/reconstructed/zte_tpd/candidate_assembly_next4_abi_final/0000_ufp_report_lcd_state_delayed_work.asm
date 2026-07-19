
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024ea0 <ufp_report_lcd_state_delayed_work>:
   24ea0: d503233f     	paciasp
   24ea4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   24ea8: a9014ff4     	stp	x20, x19, [sp, #0x10]
   24eac: 910003fd     	mov	x29, sp
   24eb0: 90000008     	adrp	x8, 0x24000 <tpd_zlog_record_notify+0x1f0>
		0000000000024eb0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   24eb4: f9400114     	ldr	x20, [x8]
		0000000000024eb4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   24eb8: f9425a93     	ldr	x19, [x20, #0x4b0]
   24ebc: 94000000     	bl	0x24ebc <ufp_report_lcd_state_delayed_work+0x1c>
		0000000000024ebc:  R_AARCH64_CALL26	__msecs_to_jiffies
   24ec0: aa0003e3     	mov	x3, x0
   24ec4: 91278282     	add	x2, x20, #0x9e0
   24ec8: 52800400     	mov	w0, #0x20               // =32
   24ecc: aa1303e1     	mov	x1, x19
   24ed0: 94000000     	bl	0x24ed0 <ufp_report_lcd_state_delayed_work+0x30>
		0000000000024ed0:  R_AARCH64_CALL26	mod_delayed_work_on
   24ed4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   24ed8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   24edc: d50323bf     	autiasp
   24ee0: d65f03c0     	ret
