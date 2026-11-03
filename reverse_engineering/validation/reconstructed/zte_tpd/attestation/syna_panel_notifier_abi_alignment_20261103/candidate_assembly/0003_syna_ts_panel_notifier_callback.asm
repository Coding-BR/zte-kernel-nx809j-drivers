
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000028e38 <syna_ts_panel_notifier_callback>:
   28e38: d503233f     	paciasp
   28e3c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   28e40: f9000bf3     	str	x19, [sp, #0x10]
   28e44: 910003fd     	mov	x29, sp
   28e48: b4000621     	cbz	x1, 0x28f0c <syna_ts_panel_notifier_callback+0xd4>
   28e4c: b9400028     	ldr	w8, [x1]
   28e50: 7100091f     	cmp	w8, #0x2
   28e54: 5400028c     	b.gt	0x28ea4 <syna_ts_panel_notifier_callback+0x6c>
   28e58: 7100051f     	cmp	w8, #0x1
   28e5c: 54000360     	b.eq	0x28ec8 <syna_ts_panel_notifier_callback+0x90>
   28e60: 7100091f     	cmp	w8, #0x2
   28e64: 54000281     	b.ne	0x28eb4 <syna_ts_panel_notifier_callback+0x7c>
   28e68: 90000008     	adrp	x8, 0x28000 <get_tp_noise_show+0xb8>
		0000000000028e68:  R_AARCH64_ADR_PREL_PG_HI21	panel_enter_low_power
   28e6c: 39400109     	ldrb	w9, [x8]
		0000000000028e6c:  R_AARCH64_LDST8_ABS_LO12_NC	panel_enter_low_power
   28e70: 7100053f     	cmp	w9, #0x1
   28e74: 540000c1     	b.ne	0x28e8c <syna_ts_panel_notifier_callback+0x54>
   28e78: 2a1f03e0     	mov	w0, wzr
   28e7c: 3900011f     	strb	wzr, [x8]
		0000000000028e7c:  R_AARCH64_LDST8_ABS_LO12_NC	panel_enter_low_power
   28e80: aa0103f3     	mov	x19, x1
   28e84: 94000000     	bl	0x28e84 <syna_ts_panel_notifier_callback+0x4c>
		0000000000028e84:  R_AARCH64_CALL26	ufp_notifier_cb
   28e88: aa1303e1     	mov	x1, x19
   28e8c: 39403028     	ldrb	w8, [x1, #0xc]
   28e90: 7100051f     	cmp	w8, #0x1
   28e94: 540004a0     	b.eq	0x28f28 <syna_ts_panel_notifier_callback+0xf0>
   28e98: 52800040     	mov	w0, #0x2                // =2
   28e9c: 94000000     	bl	0x28e9c <syna_ts_panel_notifier_callback+0x64>
		0000000000028e9c:  R_AARCH64_CALL26	change_tp_state
   28ea0: 1400001e     	b	0x28f18 <syna_ts_panel_notifier_callback+0xe0>
   28ea4: 71000d1f     	cmp	w8, #0x3
   28ea8: 54000240     	b.eq	0x28ef0 <syna_ts_panel_notifier_callback+0xb8>
   28eac: 7100111f     	cmp	w8, #0x4
   28eb0: 54000340     	b.eq	0x28f18 <syna_ts_panel_notifier_callback+0xe0>
   28eb4: 90000000     	adrp	x0, 0x28000 <get_tp_noise_show+0xb8>
		0000000000028eb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb67a
   28eb8: 91000000     	add	x0, x0, #0x0
		0000000000028eb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb67a
   28ebc: 2a0803e1     	mov	w1, w8
   28ec0: 94000000     	bl	0x28ec0 <syna_ts_panel_notifier_callback+0x88>
		0000000000028ec0:  R_AARCH64_CALL26	_printk
   28ec4: 14000015     	b	0x28f18 <syna_ts_panel_notifier_callback+0xe0>
   28ec8: 90000008     	adrp	x8, 0x28000 <get_tp_noise_show+0xb8>
		0000000000028ec8:  R_AARCH64_ADR_PREL_PG_HI21	panel_enter_low_power
   28ecc: 39400109     	ldrb	w9, [x8]
		0000000000028ecc:  R_AARCH64_LDST8_ABS_LO12_NC	panel_enter_low_power
   28ed0: 7100053f     	cmp	w9, #0x1
   28ed4: 54000300     	b.eq	0x28f34 <syna_ts_panel_notifier_callback+0xfc>
   28ed8: 39403028     	ldrb	w8, [x1, #0xc]
   28edc: 7100051f     	cmp	w8, #0x1
   28ee0: 540003c1     	b.ne	0x28f58 <syna_ts_panel_notifier_callback+0x120>
   28ee4: 52800060     	mov	w0, #0x3                // =3
   28ee8: 94000000     	bl	0x28ee8 <syna_ts_panel_notifier_callback+0xb0>
		0000000000028ee8:  R_AARCH64_CALL26	change_tp_state
   28eec: 1400000b     	b	0x28f18 <syna_ts_panel_notifier_callback+0xe0>
   28ef0: 90000008     	adrp	x8, 0x28000 <get_tp_noise_show+0xb8>
		0000000000028ef0:  R_AARCH64_ADR_PREL_PG_HI21	panel_enter_low_power
   28ef4: 52800029     	mov	w9, #0x1                // =1
   28ef8: 52800020     	mov	w0, #0x1                // =1
   28efc: 39000109     	strb	w9, [x8]
		0000000000028efc:  R_AARCH64_LDST8_ABS_LO12_NC	panel_enter_low_power
   28f00: 94000000     	bl	0x28f00 <syna_ts_panel_notifier_callback+0xc8>
		0000000000028f00:  R_AARCH64_CALL26	ufp_notifier_cb
   28f04: 94000000     	bl	0x28f04 <syna_ts_panel_notifier_callback+0xcc>
		0000000000028f04:  R_AARCH64_CALL26	ufp_report_lcd_state
   28f08: 14000004     	b	0x28f18 <syna_ts_panel_notifier_callback+0xe0>
   28f0c: 90000000     	adrp	x0, 0x28000 <get_tp_noise_show+0xb8>
		0000000000028f0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e8
   28f10: 91000000     	add	x0, x0, #0x0
		0000000000028f10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e8
   28f14: 94000000     	bl	0x28f14 <syna_ts_panel_notifier_callback+0xdc>
		0000000000028f14:  R_AARCH64_CALL26	_printk
   28f18: f9400bf3     	ldr	x19, [sp, #0x10]
   28f1c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   28f20: d50323bf     	autiasp
   28f24: d65f03c0     	ret
   28f28: 90000000     	adrp	x0, 0x28000 <get_tp_noise_show+0xb8>
		0000000000028f28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x336a
   28f2c: 91000000     	add	x0, x0, #0x0
		0000000000028f2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x336a
   28f30: 17fffff9     	b	0x28f14 <syna_ts_panel_notifier_callback+0xdc>
   28f34: 2a1f03e0     	mov	w0, wzr
   28f38: 3900011f     	strb	wzr, [x8]
		0000000000028f38:  R_AARCH64_LDST8_ABS_LO12_NC	panel_enter_low_power
   28f3c: aa0103f3     	mov	x19, x1
   28f40: 94000000     	bl	0x28f40 <syna_ts_panel_notifier_callback+0x108>
		0000000000028f40:  R_AARCH64_CALL26	ufp_notifier_cb
   28f44: 90000000     	adrp	x0, 0x28000 <get_tp_noise_show+0xb8>
		0000000000028f44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x46b8
   28f48: 91000000     	add	x0, x0, #0x0
		0000000000028f48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x46b8
   28f4c: 94000000     	bl	0x28f4c <syna_ts_panel_notifier_callback+0x114>
		0000000000028f4c:  R_AARCH64_CALL26	_printk
   28f50: aa1303e1     	mov	x1, x19
   28f54: 17ffffe1     	b	0x28ed8 <syna_ts_panel_notifier_callback+0xa0>
   28f58: 90000000     	adrp	x0, 0x28000 <get_tp_noise_show+0xb8>
		0000000000028f58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d4
   28f5c: 91000000     	add	x0, x0, #0x0
		0000000000028f5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d4
   28f60: 17ffffed     	b	0x28f14 <syna_ts_panel_notifier_callback+0xdc>
