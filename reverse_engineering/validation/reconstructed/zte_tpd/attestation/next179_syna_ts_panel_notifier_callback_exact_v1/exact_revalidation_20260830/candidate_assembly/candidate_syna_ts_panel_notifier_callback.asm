
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026e58 <syna_ts_panel_notifier_callback>:
   26e58: d503233f     	paciasp
   26e5c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   26e60: f9000bf3     	str	x19, [sp, #0x10]
   26e64: 910003fd     	mov	x29, sp
   26e68: b4000621     	cbz	x1, 0x26f2c <syna_ts_panel_notifier_callback+0xd4>
   26e6c: b9400028     	ldr	w8, [x1]
   26e70: 7100091f     	cmp	w8, #0x2
   26e74: 5400028c     	b.gt	0x26ec4 <syna_ts_panel_notifier_callback+0x6c>
   26e78: 7100051f     	cmp	w8, #0x1
   26e7c: 54000360     	b.eq	0x26ee8 <syna_ts_panel_notifier_callback+0x90>
   26e80: 7100091f     	cmp	w8, #0x2
   26e84: 54000281     	b.ne	0x26ed4 <syna_ts_panel_notifier_callback+0x7c>
   26e88: 90000008     	adrp	x8, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026e88:  R_AARCH64_ADR_PREL_PG_HI21	panel_enter_low_power
   26e8c: 39400109     	ldrb	w9, [x8]
		0000000000026e8c:  R_AARCH64_LDST8_ABS_LO12_NC	panel_enter_low_power
   26e90: 7100053f     	cmp	w9, #0x1
   26e94: 540000c1     	b.ne	0x26eac <syna_ts_panel_notifier_callback+0x54>
   26e98: 2a1f03e0     	mov	w0, wzr
   26e9c: 3900011f     	strb	wzr, [x8]
		0000000000026e9c:  R_AARCH64_LDST8_ABS_LO12_NC	panel_enter_low_power
   26ea0: aa0103f3     	mov	x19, x1
   26ea4: 94000000     	bl	0x26ea4 <syna_ts_panel_notifier_callback+0x4c>
		0000000000026ea4:  R_AARCH64_CALL26	ufp_notifier_cb
   26ea8: aa1303e1     	mov	x1, x19
   26eac: 39403028     	ldrb	w8, [x1, #0xc]
   26eb0: 7100051f     	cmp	w8, #0x1
   26eb4: 540004a0     	b.eq	0x26f48 <syna_ts_panel_notifier_callback+0xf0>
   26eb8: 52800040     	mov	w0, #0x2                // =2
   26ebc: 94000000     	bl	0x26ebc <syna_ts_panel_notifier_callback+0x64>
		0000000000026ebc:  R_AARCH64_CALL26	change_tp_state
   26ec0: 1400001e     	b	0x26f38 <syna_ts_panel_notifier_callback+0xe0>
   26ec4: 71000d1f     	cmp	w8, #0x3
   26ec8: 54000240     	b.eq	0x26f10 <syna_ts_panel_notifier_callback+0xb8>
   26ecc: 7100111f     	cmp	w8, #0x4
   26ed0: 54000340     	b.eq	0x26f38 <syna_ts_panel_notifier_callback+0xe0>
   26ed4: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026ed4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb67a
   26ed8: 91000000     	add	x0, x0, #0x0
		0000000000026ed8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb67a
   26edc: 2a0803e1     	mov	w1, w8
   26ee0: 94000000     	bl	0x26ee0 <syna_ts_panel_notifier_callback+0x88>
		0000000000026ee0:  R_AARCH64_CALL26	_printk
   26ee4: 14000015     	b	0x26f38 <syna_ts_panel_notifier_callback+0xe0>
   26ee8: 90000008     	adrp	x8, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026ee8:  R_AARCH64_ADR_PREL_PG_HI21	panel_enter_low_power
   26eec: 39400109     	ldrb	w9, [x8]
		0000000000026eec:  R_AARCH64_LDST8_ABS_LO12_NC	panel_enter_low_power
   26ef0: 7100053f     	cmp	w9, #0x1
   26ef4: 54000300     	b.eq	0x26f54 <syna_ts_panel_notifier_callback+0xfc>
   26ef8: 39403028     	ldrb	w8, [x1, #0xc]
   26efc: 7100051f     	cmp	w8, #0x1
   26f00: 540003c1     	b.ne	0x26f78 <syna_ts_panel_notifier_callback+0x120>
   26f04: 52800060     	mov	w0, #0x3                // =3
   26f08: 94000000     	bl	0x26f08 <syna_ts_panel_notifier_callback+0xb0>
		0000000000026f08:  R_AARCH64_CALL26	change_tp_state
   26f0c: 1400000b     	b	0x26f38 <syna_ts_panel_notifier_callback+0xe0>
   26f10: 90000008     	adrp	x8, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026f10:  R_AARCH64_ADR_PREL_PG_HI21	panel_enter_low_power
   26f14: 52800029     	mov	w9, #0x1                // =1
   26f18: 52800020     	mov	w0, #0x1                // =1
   26f1c: 39000109     	strb	w9, [x8]
		0000000000026f1c:  R_AARCH64_LDST8_ABS_LO12_NC	panel_enter_low_power
   26f20: 94000000     	bl	0x26f20 <syna_ts_panel_notifier_callback+0xc8>
		0000000000026f20:  R_AARCH64_CALL26	ufp_notifier_cb
   26f24: 94000000     	bl	0x26f24 <syna_ts_panel_notifier_callback+0xcc>
		0000000000026f24:  R_AARCH64_CALL26	ufp_report_lcd_state
   26f28: 14000004     	b	0x26f38 <syna_ts_panel_notifier_callback+0xe0>
   26f2c: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026f2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e8
   26f30: 91000000     	add	x0, x0, #0x0
		0000000000026f30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e8
   26f34: 94000000     	bl	0x26f34 <syna_ts_panel_notifier_callback+0xdc>
		0000000000026f34:  R_AARCH64_CALL26	_printk
   26f38: f9400bf3     	ldr	x19, [sp, #0x10]
   26f3c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   26f40: d50323bf     	autiasp
   26f44: d65f03c0     	ret
   26f48: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026f48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x336a
   26f4c: 91000000     	add	x0, x0, #0x0
		0000000000026f4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x336a
   26f50: 17fffff9     	b	0x26f34 <syna_ts_panel_notifier_callback+0xdc>
   26f54: 2a1f03e0     	mov	w0, wzr
   26f58: 3900011f     	strb	wzr, [x8]
		0000000000026f58:  R_AARCH64_LDST8_ABS_LO12_NC	panel_enter_low_power
   26f5c: aa0103f3     	mov	x19, x1
   26f60: 94000000     	bl	0x26f60 <syna_ts_panel_notifier_callback+0x108>
		0000000000026f60:  R_AARCH64_CALL26	ufp_notifier_cb
   26f64: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026f64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x46b8
   26f68: 91000000     	add	x0, x0, #0x0
		0000000000026f68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x46b8
   26f6c: 94000000     	bl	0x26f6c <syna_ts_panel_notifier_callback+0x114>
		0000000000026f6c:  R_AARCH64_CALL26	_printk
   26f70: aa1303e1     	mov	x1, x19
   26f74: 17ffffe1     	b	0x26ef8 <syna_ts_panel_notifier_callback+0xa0>
   26f78: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026f78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d4
   26f7c: 91000000     	add	x0, x0, #0x0
		0000000000026f7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d4
   26f80: 17ffffed     	b	0x26f34 <syna_ts_panel_notifier_callback+0xdc>
