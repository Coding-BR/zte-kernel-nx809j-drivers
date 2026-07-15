
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009d9c <ufp_report_lcd_state_delayed_work>:
    9d9c: d503233f     	paciasp
    9da0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    9da4: a9014ff4     	stp	x20, x19, [sp, #0x10]
    9da8: 910003fd     	mov	x29, sp
    9dac: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009dac:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    9db0: f9400114     	ldr	x20, [x8]
		0000000000009db0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    9db4: f9425a93     	ldr	x19, [x20, #0x4b0]
    9db8: 94000000     	bl	0x9db8 <ufp_report_lcd_state_delayed_work+0x1c>
		0000000000009db8:  R_AARCH64_CALL26	__msecs_to_jiffies
    9dbc: aa0003e3     	mov	x3, x0
    9dc0: 91278282     	add	x2, x20, #0x9e0
    9dc4: 52800400     	mov	w0, #0x20               // =32
    9dc8: aa1303e1     	mov	x1, x19
    9dcc: 94000000     	bl	0x9dcc <ufp_report_lcd_state_delayed_work+0x30>
		0000000000009dcc:  R_AARCH64_CALL26	mod_delayed_work_on
    9dd0: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    9dd4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    9dd8: d50323bf     	autiasp
    9ddc: d65f03c0     	ret
