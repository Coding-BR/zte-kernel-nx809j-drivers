
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000028e0c <syna_ts_panel_notifier_callback>:
   28e0c: d503233f     	paciasp
   28e10: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   28e14: f9000bf3     	str	x19, [sp, #0x10]
   28e18: 910003fd     	mov	x29, sp
   28e1c: b4000621     	cbz	x1, 0x28ee0 <syna_ts_panel_notifier_callback+0xd4>
   28e20: b9400028     	ldr	w8, [x1]
   28e24: 7100091f     	cmp	w8, #0x2
   28e28: 5400028c     	b.gt	0x28e78 <syna_ts_panel_notifier_callback+0x6c>
   28e2c: 7100051f     	cmp	w8, #0x1
   28e30: 54000360     	b.eq	0x28e9c <syna_ts_panel_notifier_callback+0x90>
   28e34: 7100091f     	cmp	w8, #0x2
   28e38: 54000281     	b.ne	0x28e88 <syna_ts_panel_notifier_callback+0x7c>
   28e3c: 90000008     	adrp	x8, 0x28000 <get_tp_noise_show+0xe4>
		0000000000028e3c:  R_AARCH64_ADR_PREL_PG_HI21	panel_enter_low_power
   28e40: 39400109     	ldrb	w9, [x8]
		0000000000028e40:  R_AARCH64_LDST8_ABS_LO12_NC	panel_enter_low_power
   28e44: 7100053f     	cmp	w9, #0x1
   28e48: 540000c1     	b.ne	0x28e60 <syna_ts_panel_notifier_callback+0x54>
   28e4c: 2a1f03e0     	mov	w0, wzr
   28e50: 3900011f     	strb	wzr, [x8]
		0000000000028e50:  R_AARCH64_LDST8_ABS_LO12_NC	panel_enter_low_power
   28e54: aa0103f3     	mov	x19, x1
   28e58: 94000000     	bl	0x28e58 <syna_ts_panel_notifier_callback+0x4c>
		0000000000028e58:  R_AARCH64_CALL26	ufp_notifier_cb
   28e5c: aa1303e1     	mov	x1, x19
   28e60: 39403028     	ldrb	w8, [x1, #0xc]
   28e64: 7100051f     	cmp	w8, #0x1
   28e68: 540004a0     	b.eq	0x28efc <syna_ts_panel_notifier_callback+0xf0>
   28e6c: 52800040     	mov	w0, #0x2                // =2
   28e70: 94000000     	bl	0x28e70 <syna_ts_panel_notifier_callback+0x64>
		0000000000028e70:  R_AARCH64_CALL26	change_tp_state
   28e74: 1400001e     	b	0x28eec <syna_ts_panel_notifier_callback+0xe0>
   28e78: 71000d1f     	cmp	w8, #0x3
   28e7c: 54000240     	b.eq	0x28ec4 <syna_ts_panel_notifier_callback+0xb8>
   28e80: 7100111f     	cmp	w8, #0x4
   28e84: 54000340     	b.eq	0x28eec <syna_ts_panel_notifier_callback+0xe0>
   28e88: 90000000     	adrp	x0, 0x28000 <get_tp_noise_show+0xe4>
		0000000000028e88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb67a
   28e8c: 91000000     	add	x0, x0, #0x0
		0000000000028e8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb67a
   28e90: 2a0803e1     	mov	w1, w8
   28e94: 94000000     	bl	0x28e94 <syna_ts_panel_notifier_callback+0x88>
		0000000000028e94:  R_AARCH64_CALL26	_printk
   28e98: 14000015     	b	0x28eec <syna_ts_panel_notifier_callback+0xe0>
   28e9c: 90000008     	adrp	x8, 0x28000 <get_tp_noise_show+0xe4>
		0000000000028e9c:  R_AARCH64_ADR_PREL_PG_HI21	panel_enter_low_power
   28ea0: 39400109     	ldrb	w9, [x8]
		0000000000028ea0:  R_AARCH64_LDST8_ABS_LO12_NC	panel_enter_low_power
   28ea4: 7100053f     	cmp	w9, #0x1
   28ea8: 54000300     	b.eq	0x28f08 <syna_ts_panel_notifier_callback+0xfc>
   28eac: 39403028     	ldrb	w8, [x1, #0xc]
   28eb0: 7100051f     	cmp	w8, #0x1
   28eb4: 540003c1     	b.ne	0x28f2c <syna_ts_panel_notifier_callback+0x120>
   28eb8: 52800060     	mov	w0, #0x3                // =3
   28ebc: 94000000     	bl	0x28ebc <syna_ts_panel_notifier_callback+0xb0>
		0000000000028ebc:  R_AARCH64_CALL26	change_tp_state
   28ec0: 1400000b     	b	0x28eec <syna_ts_panel_notifier_callback+0xe0>
   28ec4: 90000008     	adrp	x8, 0x28000 <get_tp_noise_show+0xe4>
		0000000000028ec4:  R_AARCH64_ADR_PREL_PG_HI21	panel_enter_low_power
   28ec8: 52800029     	mov	w9, #0x1                // =1
   28ecc: 52800020     	mov	w0, #0x1                // =1
   28ed0: 39000109     	strb	w9, [x8]
		0000000000028ed0:  R_AARCH64_LDST8_ABS_LO12_NC	panel_enter_low_power
   28ed4: 94000000     	bl	0x28ed4 <syna_ts_panel_notifier_callback+0xc8>
		0000000000028ed4:  R_AARCH64_CALL26	ufp_notifier_cb
   28ed8: 94000000     	bl	0x28ed8 <syna_ts_panel_notifier_callback+0xcc>
		0000000000028ed8:  R_AARCH64_CALL26	ufp_report_lcd_state
   28edc: 14000004     	b	0x28eec <syna_ts_panel_notifier_callback+0xe0>
   28ee0: 90000000     	adrp	x0, 0x28000 <get_tp_noise_show+0xe4>
		0000000000028ee0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e8
   28ee4: 91000000     	add	x0, x0, #0x0
		0000000000028ee4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e8
   28ee8: 94000000     	bl	0x28ee8 <syna_ts_panel_notifier_callback+0xdc>
		0000000000028ee8:  R_AARCH64_CALL26	_printk
   28eec: f9400bf3     	ldr	x19, [sp, #0x10]
   28ef0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   28ef4: d50323bf     	autiasp
   28ef8: d65f03c0     	ret
   28efc: 90000000     	adrp	x0, 0x28000 <get_tp_noise_show+0xe4>
		0000000000028efc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x336a
   28f00: 91000000     	add	x0, x0, #0x0
		0000000000028f00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x336a
   28f04: 17fffff9     	b	0x28ee8 <syna_ts_panel_notifier_callback+0xdc>
   28f08: 2a1f03e0     	mov	w0, wzr
   28f0c: 3900011f     	strb	wzr, [x8]
		0000000000028f0c:  R_AARCH64_LDST8_ABS_LO12_NC	panel_enter_low_power
   28f10: aa0103f3     	mov	x19, x1
   28f14: 94000000     	bl	0x28f14 <syna_ts_panel_notifier_callback+0x108>
		0000000000028f14:  R_AARCH64_CALL26	ufp_notifier_cb
   28f18: 90000000     	adrp	x0, 0x28000 <get_tp_noise_show+0xe4>
		0000000000028f18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x46b8
   28f1c: 91000000     	add	x0, x0, #0x0
		0000000000028f1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x46b8
   28f20: 94000000     	bl	0x28f20 <syna_ts_panel_notifier_callback+0x114>
		0000000000028f20:  R_AARCH64_CALL26	_printk
   28f24: aa1303e1     	mov	x1, x19
   28f28: 17ffffe1     	b	0x28eac <syna_ts_panel_notifier_callback+0xa0>
   28f2c: 90000000     	adrp	x0, 0x28000 <get_tp_noise_show+0xe4>
		0000000000028f2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d4
   28f30: 91000000     	add	x0, x0, #0x0
		0000000000028f30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d4
   28f34: 17ffffed     	b	0x28ee8 <syna_ts_panel_notifier_callback+0xdc>
